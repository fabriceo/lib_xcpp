#ifndef _XC_I2C_MASTER_HPP_
#define _XC_I2C_MASTER_HPP_

#include <stdlib.h>         //for malloc and free
#include <string.h>         //for memset
#include <stdarg.h>         //for va_start, va_arg, va_end
#include "XC_core.hpp"
//#undef  DEBUG_UNIT
//#define DEBUG_UNIT XC_I2C
#include "debug_print.h"

typedef enum { NACK=0, ACK=1 } I2Cres_t;    //the device may NACK or ACK the last byte.
typedef enum { 
        TO_I2C_SERVER = 0x40,     //unique ID for shared chanend to recognize I2C transactions
        TO_I2C_CLIENT = 0x41      //unique ID for shared chanend to recognize I2C transactions}
        } I2Cport_t;
//list of supported request sent over the chanel from any client to the server
typedef enum { 
        I2C_INIT = 0, I2C_TEST_DEVICE, I2C_WRITE_REG, I2C_WRITE_REGS, I2C_WRITE_MULTIBYTE, I2C_READ_REG, I2C_READ_REGS 
        } I2Crequest_t;

class XC_I2Cserver;
class XC_I2Cmaster : public XCTrace< XCTraceSize > { 
private:
    friend XC_I2Cserver;
    //physical pins for the I2C bus
    XCPortBit scl, sda;
    //must be initialized with getLocal or getResource before use
    XCTimer timer;
    //mutex to manage reentrant calls from other cores on same tile. not used yet
    XCSWLock lock;
    //used to define an I2C object being client of a remote object (over XCChanendPort)
    //compiler will optimize code to remove unused section when clientmode is false
    bool clientMode;    
    //chanend used for communcation client/server
    XCChanendPort &C;

public:

    XC_I2Cmaster() : clientMode(true), C(XCChanendPortUndefined) { }    //used for client mode

    XC_I2Cmaster(XCChanendPort &C_) : clientMode(true), C(C_) { }       //used for client mode


    XC_I2Cmaster(XCPortBit& pinscl, XCPortBit& pinsda) : 
        scl(pinscl),sda(pinsda), clientMode(false), C(XCChanendPortUndefined) { }

    XC_I2Cmaster(XCPortBit& pinscl, XCPort& portsda) : 
        scl(pinscl),sda(portsda), clientMode(false), C(XCChanendPortUndefined) {  }

    XC_I2Cmaster(XCPort& portscl, XCPort& portsda) : 
        scl(portscl), sda(portsda), clientMode(false), C(XCChanendPortUndefined) { }

    XC_I2Cmaster(XCPort& portscl, XCPortBit& pinsda) : 
        scl(portscl), sda(pinsda), clientMode(false), C(XCChanendPortUndefined) { }

    unsigned lastReg;

private:
    void sclHigh() { scl.set(); }
    void sclLow()  { scl.clr(); }
    void sdaHigh() { sda.set(); }
    void sdaLow()  { sda.clr(); }

    unsigned kbits_per_second;       // eg 100 or 400
    unsigned sclLow_time;            //timer value last time SCL was falling down to zero
    unsigned sda_time;               //timer value last time SDA whas changed
    unsigned rise_ticks;             // potential rise time for scl or sda
    unsigned one_bit_ticks;          // store the 1 bit duration in number of core ticks
    unsigned half_bit_ticks;         // store the half bit duration in number of core ticks
    unsigned quarter_bit_ticks;      // store the quarter bit duration in number of core ticks
    unsigned sclLow_min_ticks;       // store the minimum time for a valid signal
    unsigned sclHigh_min_ticks;      // store the minimum time for a valid signal
    unsigned bus_off_ticks;          // minimum time required before considering bus free
    volatile unsigned bus_busy;      // set to 1 when a a start bit is sent, reset to 0 when stop bit is sent
    
    //wait timer to reach a target value, unless time already passed. return actual time;
    inline int waitTarget(int target) {
        int time = XC::getTime();
        int delta = target - time;
        if (delta < 10) return time;    //time already passed or just about to be passed
        return timer.waitAfter(target);
    }

    //https://www.analog.com/en/_/media/analog/en/landing-pages/technical-articles/i2c-timing-definition-and-specification-guide-part-2-/figure-8.jpg?la=en&w=900&rev=d748780716f04fb9877c5b5f850a4a0b
    //also page 44 of https://www.nxp.com/docs/en/user-guide/UM10204.pdf
    inline void compute_ticks(unsigned kbitsps) {
        unsigned int refHZ = XC::getReferenceHz();
        one_bit_ticks     = refHZ / (1000*kbitsps);
        half_bit_ticks    = one_bit_ticks  / 2;
        quarter_bit_ticks = half_bit_ticks / 2;
        if (kbits_per_second <= 100) {
            sclLow_min_ticks  = (refHZ * 47 )/10000000; //4.7us
            sclHigh_min_ticks = (refHZ * 40 )/10000000; //4.0us
            rise_ticks        = (refHZ * 10 )/10000000; //1000ns
        } else if (kbits_per_second <= 400) {
            sclLow_min_ticks  = (refHZ * 13 )/10000000; //1.3us
            sclHigh_min_ticks = (refHZ *  6 )/10000000; //600ns
            rise_ticks        = (refHZ *  3 )/10000000; //300ns 
        } else if (kbits_per_second <= 1000) {
            sclLow_min_ticks  = (refHZ *  4 )/10000000; //400ns
            sclHigh_min_ticks = (refHZ *  4 )/10000000; //400ns
            rise_ticks        = (refHZ *  1 )/10000000; //100ns
        } else {
            static_assert(1,"Fast-mode Plus not implemented");
        }
        // There is some jitter on the falling edges of the clock. In order to ensure
        // that the low period is respected we need to extend the minimum low period.
        const unsigned jitter_ticks = 3;
        sclLow_min_ticks  += jitter_ticks;
        sclHigh_min_ticks += jitter_ticks;
        bus_off_ticks = half_bit_ticks/2 + one_bit_ticks/16;
        debug_printf("accepted rise ticks = %dns\n",rise_ticks*10);
    }

    /** Releases the SCL line, reads it back and waits until it goes high (in
     *  case the slave is clock stretching).
     *  Since the line going high may be delayed, the sclLow_time value may
     *  need to be adjusted
     */
    void sclHigh_and_wait(unsigned delay) {
        int tot = 0;
        int stat = 0;
        sclHigh();
        while(1) {
            timer.waitTicks(rise_ticks);              
            if (scl.peek()) break;              //test status of SCL, after a maximum rise delay.
            tot += rise_ticks;
            if (tot > one_bit_ticks) {
                tot -= one_bit_ticks;
                stat |= 2;
                tracePut('_');                  //show one bit clock delay stretch
            } else stat |= 1;
            sclLow_time += rise_ticks;          //adjust reference time if the clock was strectched
        }
        if (stat == 1) tracePut('.');           //show rise time issue or small clock stretching
        timer.waitAfter(sclLow_time + delay);   //garantee that the expected time for SCL high before leaving corresponds to required value
    }

    //assuming scl is low, wait up to halfbit, raise scl high, wait up to one full bit and restore scl low
    void inline high_pulse(unsigned last) {
        //scl expected to be low from start bit or previous transmission
        //wait the minimum time low since last scl fall
        timer.waitAfter(sclLow_time + sclLow_min_ticks);
        //will wait 3 quarter bits since last scl low, so leave in the middle of the high state
        sclHigh_and_wait(half_bit_ticks + quarter_bit_ticks);
        int sample_value = sda.peek();  //get sda pin value
        if (bus_busy == 1) {
            if (sample_value == 0) tracePut(last?'w':'0'); else tracePut(last?'r':'1');
        } else {
            if (sample_value == 0) tracePut(last?'a':'0'); else tracePut(last?'n':'1');
        }
        //synchronize timing for one full clock cycle
        sclLow_time = timer.waitAfter(sclLow_time + one_bit_ticks);
        sclLow();
    }

    //last scl transition with sampling ack/nack answer from slave
    int inline high_pulse_sample(unsigned last) {
        int sample_value = 0;
        sdaHigh(); //release sda line immediately (allowed by hold-time specification)
        timer.waitAfter(sclLow_time + sclLow_min_ticks);
        sclHigh_and_wait(half_bit_ticks + quarter_bit_ticks);
        sample_value = sda.peek();
        if (sample_value == 0) tracePut(last?'a':'0'); else tracePut(last?'n':'1');
        sclLow_time = timer.waitAfter(sclLow_time + one_bit_ticks);
        sclLow();   //sclLow_time contains timer value at the time of scl going low.
        return sample_value;
    }

    //after start bit, both sda and scl are low
    void start_bit(){
        tracePut('S'); 
        if (bus_busy) {
            tracePut('r'); //repeated start
            // repeated startbit
            // assume scl is already low and fall time represent timer at the time of falling low
            // potentially resynch sclLow_time in case user program has geopardized timing
            sclLow_time = waitTarget(sclLow_time + sclLow_min_ticks) - sclLow_min_ticks;
            sclHigh_and_wait(one_bit_ticks);
        } else {
            //assume scl is high and sda is high for at least "compute_bus_off_ticks"
            tracePut(' ');
        }
        bus_busy = 1;
        sda_time = timer();
        sdaLow();
        sclLow_time = timer.waitAfter(sda_time + half_bit_ticks);
        sclLow();
    }

    /* Output a stop bit. assume scl is low.
       after both scl and sda are high */
    void stop_bit() {
        sdaLow();
        timer.waitTicks(half_bit_ticks);
        sclHigh();
        timer.waitTicks(half_bit_ticks);
        sdaHigh();
        tracePut('P'); tracePut(' ');
        timer.waitTicks(bus_off_ticks);
        bus_busy = 0;
    }

    /** Transmit 8 bits of data, then read the ack/nack status from the slave and return
     *  that value.
     */
    int tx8(unsigned data) {
        // Data is transmitted MSB first
        asm("bitrev %0,%0 ; byterev %0,%0":"=r"(data):"0"(data));
        //scl is expected to be low from startbit sequence or previous transmission
        for (int i = 8; i != 0; i--) {
            sda_time = timer.waitAfter(sclLow_time + quarter_bit_ticks);
            sda.set(data & 1);
            data >>= 1;
            high_pulse((bus_busy==1) && (i == 1));  //parameter will give possibility to print "r" or "w" instead of last bit
        }
        int res = high_pulse_sample(1); //get ACK or not ACK result
        bus_busy++;
        tracePut(' ');
        return res;
    }

//eventually send a request to the I2C server, providing our chanend address for the answer
bool clientSend(I2Crequest_t request) {
    if (clientMode) {
        tracePut('<');
        C.outPort(TO_I2C_SERVER).outAddr().outByte(request); 
    } 
    return clientMode;
}

void clientEND() { 
    C.checkPortEND(); tracePut('>'); tracePrint(); }

XCChanendPort& clientWaitAnswer() { return C.inPort(TO_I2C_CLIENT); }

public:

void sendStopBit(void) {
    if (0==kbits_per_second) return ;
    if (bus_busy) stop_bit();     //verify scl being already low   
}

bool stopMe() {
    if (lock.tryAcquire()) {
        if (bus_busy) { 
            lock.release();
            return true;
        }
        kbits_per_second = 0;
        //keep locked
        return false;
    }
    return true;
}

I2Cres_t write( unsigned device,
                const unsigned n, char buf[],
                unsigned &num_bytes_sent,
                bool send_stop_bit);

I2Cres_t read(  unsigned device, 
                const unsigned m, char buf[], 
                bool send_stop_bit);
 
void measure();                

void masterInit( unsigned kbitsps, bool measure_ = false);

I2Cres_t testDevice( unsigned device );

I2Cres_t writeReg( unsigned device, unsigned reg, unsigned val);

I2Cres_t readReg( unsigned device, unsigned reg, unsigned &val);

I2Cres_t writeMultiBytes( unsigned device, unsigned n, ...);

I2Cres_t writeRegs( unsigned device, unsigned reg, const unsigned n, const char buf[], unsigned &num_bytes_sent );

I2Cres_t readRegs( unsigned device, unsigned reg, const unsigned n, char buf[] );

I2Cres_t writeRegsList( unsigned device, unsigned reg, unsigned size, char buf[], bool multi = false);

I2Cres_t writeRegsTable( unsigned device, const char table[], bool multi = false);


public:
    void initClient() {     //prepare our channel to receive and send data.
        if (C.addr == 0) C.getResource();
    }



}; // class XC_I2Cmaster

class XC_I2Cserver {
    //temporary buffer to store bytes transfered across client-server
    char buf[16];

    XCChanendPort &C;
    XC_I2Cmaster &I2C;

    XC_I2Cserver(XCChanendPort &c, XC_I2Cmaster &i2c ) : C(c),I2C(i2c) {}

    //listen tokens on the chanend and process I2C related requests
    bool processServer();
};

//gives the possibility to select an access mode with this param
//just after the device adress in constructor
typedef enum i2c_reg_access_mode_e {
    I2C_SINGLE = 0,
    I2C_MULTIPLE = 1,
    I2C_MULTIPLE_LSB_FIRST = 2,
    I2C_MULTIPLE_MSB_FIRST = 3
} i2c_reg_access_mode_t;

//status of a device on the i2c bus
typedef enum i2c_device_status_e {
    I2C_DEVICE_NOTTESTED,   //never talked to it yet
    I2C_DEVICE_NOTFOUND,    //seems not responding
    I2C_DEVICE_NOTMATCH,    //device answer but does not provide clear authentication (like chip-ID)
    I2C_DEVICE_ERROR,       //communication error has happened (no answer or strange NACK)
    I2C_DEVICE_EXIST,       //exists on the bus
    I2C_DEVICE_MATCH,       //recognized as expected according to a chip ID or deterministic answer
    I2C_DEVICE_INITIALISED, //properly initialized (basic register initialization)
    I2C_DEVICE_CONFIGURED   //ready for the expected functions.
} I2CdeviceStatus_t;


//STILL WORK IN PROGRESS

//template parameter gives the possibility to define base I2C object 
//and SINGLE or MULTIPLE byte access when writing or reading
//this class also provides register buffering and possibility to read/write 16/32 bits data
template< XC_I2Cmaster &I2C, i2c_reg_access_mode_t mode = I2C_SINGLE >
class XC_I2CmasterExtended {
private:
    unsigned regSize;               //size of the shadow register array (stored in heap)
public:
    unsigned addr;                  //device address kept in memory, defined in constructor
    unsigned ofset;                 //used when shadow register has big size or device has multiple pages
    char * pregs;                   //point on shadow registers (stored in heap)
    I2CdeviceStatus_t status;       //real time device status
    unsigned errors;                //number of errors since device initialisation

    //I2C constructor (device address, shadow register size)
    XC_I2CmasterExtended(uint8_t addr_, unsigned size_) : regSize(size_),addr(addr_) {
        pregs = nullptr; //malloc wil be done later 
        status = I2C_DEVICE_NOTTESTED;
        errors = 0;
    }

    //I2C constructor (device address)
    XC_I2CmasterExtended(uint8_t addr_) : XC_I2CmasterExtended(addr_,0) { }

    //destructor (free shadow registers)
    ~XC_I2CmasterExtended() { if (pregs) free(pregs); }

    //clear all shadow registers
    void clrShadowReg(){
        memset(pregs, 0, regSize);
        ofset = 0;
    }
    //initialize shadow registers if any
    void init() {
        regSize = 0; pregs = nullptr; return;
        if (regSize && (pregs == nullptr)) {
            pregs = (char*)malloc(regSize);
            if (pregs == nullptr) regSize = 0; //potential problem (never expected)
            else clrShadowReg();
        }
    }
    //set device data as in reset mode (clear status, error and shadow registers)
    void reset() {
        init();
        status = I2C_DEVICE_NOTTESTED;
        errors = 0;
    }
    //test if a device is available at the given adress
    I2CdeviceStatus_t testDevice() {
        init();
        I2Cres_t res = I2C.testDevice(addr);
        if (res == ACK) status = I2C_DEVICE_EXIST;
        else status = I2C_DEVICE_NOTFOUND;
        errors = 0;
        return status;
    }

    //write a 8 bit value in a 8bit register. eventually Keep copy in shadow register
    I2Cres_t writeReg(unsigned num, unsigned val) {
        if (status < I2C_DEVICE_EXIST) return NACK;
        //keep copy of the value in shadow register
        if (pregs && ((ofset+num) < regSize)) pregs[ofset+num] = (char)val;
        I2Cres_t res = I2C.writeReg(addr,num,val);
        if (res == NACK) errors++;
        return res;
    }
    
    I2Cres_t writeRegsList(unsigned num, unsigned size, char buf[]) {
        if (status < I2C_DEVICE_EXIST) return NACK;
        I2Cres_t res = ACK;
        if (mode == I2C_SINGLE) {
            for (int i=0; i<size; i++) 
                if ((res = writeReg(num+i, buf[i])) == NACK) break;
        } else {
            unsigned n;
            res = I2C.write(addr,size,buf,n,true);
            I2C.tracePrint();
            if (n != size) res = NACK;
        }
        if (res == NACK) errors++;
        return res;

    }

    //write a list of value in successive registers.
    //first value is the start register, second is the number of following bytes
    //next are the values. This sequence can be repeated, otherwise ended with a 0
    //if second value is 0 then this is replaced by a delay instruction in milliseconds of 10 times first value.
    I2Cres_t writeRegsTable(const char table[]) {
        if (status < I2C_DEVICE_EXIST) return NACK;
        const char *p = table;
        I2Cres_t res = ACK;
        while(*p) {
            char first = *(p++);
            char tot   = *(p++);
            if (tot == 0) { 
                res = ACK;
                XC::delayMicros(10000*(unsigned)first);   //can be replaced by Yield
            } else {
                if (mode == I2C_SINGLE) {
                    for (unsigned i=0; i<tot; i++) 
                        if ((res = writeReg( first+i,  p[i] )) == NACK) break;
                } else {
                    res = writeRegsList(first,tot,(char*)p);
                    if (res == NACK) {
                        //second try
                        res = writeRegsList(first,tot,(char*)p);
                    }
                }
            }
            p += tot;
            if (res==NACK) break;
        } //while
        if (res == NACK) errors++;
        return res;
    }
    //write a 16 bit value in 2 consecutive register (lsb first)
    I2Cres_t writeReg2(unsigned num, unsigned val) {
        if (status < I2C_DEVICE_EXIST) return NACK;
        I2Cres_t res = ACK;
        char dummy[2] = { (char)val , (char)(val >> 8) }; //LSB first
        if (pregs && ((ofset+num+1) < regSize)) { pregs[ofset+num] = dummy[0]; pregs[ofset+num+1] = dummy[1]; }
        if (mode == I2C_SINGLE) {
            res = writeReg(num,dummy[0]);
            if (res == ACK) res = writeReg(num+1,dummy[1]);
        } else
        if (mode == I2C_MULTIPLE) {
            unsigned n;
            res = I2C.writeRegs(addr,num,2,dummy,n);
        }
        if (res == NACK) errors++;
        return res;
    }
    //write a 32 bit value in 4 consecutive register (lsb first)
    I2Cres_t writeReg4(unsigned num, unsigned val) {
        if (status < I2C_DEVICE_EXIST) return NACK;
        I2Cres_t res = ACK;
        char dummy[4] = { (char)val , (char)(val >> 8), (char)(val >>16), (char)(val >> 24) };
        if (pregs && ((ofset+num+3) < regSize)) {
            pregs[ofset+num] = dummy[0]; pregs[ofset+num+1] = dummy[1]; 
            pregs[ofset+num+2] = dummy[2]; pregs[ofset+num+3] = dummy[3]; }
        if (mode == I2C_SINGLE) {
            res = writeReg(num,dummy[0]);
            if (res == ACK) res = writeReg(num+1,dummy[1]);
            if (res == ACK) res = writeReg(num+2,dummy[2]);
            if (res == ACK) res = writeReg(num+3,dummy[3]);
        } else
        if (mode == I2C_MULTIPLE) {
            unsigned n;
            res = writeRegs(addr,num,4,dummy,&n);
        }
        if (res == NACK) errors++;
        return res;
    }


    //read a 8 bit value from a register. value eventually stored in shadow register
    I2Cres_t readReg(unsigned num, unsigned &val) {
        if (status < I2C_DEVICE_EXIST) return NACK;
        char dummy[1] = { (char)num };
        unsigned n=0;
        I2Cres_t res = I2C.write(addr,1,dummy,n,false);   //write register adress, no stop bits
        if (res == ACK) res = I2C.read(addr,1,dummy,true); //read 1 register (repeated start bit) en send stop bit
        else  I2C.sendStopBit();
        I2C.tracePrint();
        if (res == NACK) errors++;
        else {
           val = dummy[0];
           if (pregs && ((ofset+num) < regSize)) pregs[ofset+num] = dummy[0];
        }
        return res;
    }
    //read a 16 bit value from 2 consecutive registers (lsb first)
    I2Cres_t readReg2(unsigned num, unsigned &val) {
        if (status < I2C_DEVICE_EXIST) return NACK;
        char dummy[2] = { (char)num, 0 };
        I2Cres_t res = ACK;
        if (mode == I2C_SINGLE) {
            unsigned v1,v2;
            res = readReg(num,v1);
            if (res == ACK) res = readReg(num+1,v2);
            dummy[0] = v1; dummy[1]=v2;
        } else
        if (mode == I2C_MULTIPLE ) {
            unsigned n;
            res = I2C.write(addr,1,dummy,&n,false);   //write register adress, no stop bits
            if (res == ACK) res = I2C.read(addr,2,dummy,true);
            else I2C.sendStopBit();
        }
        if (res == NACK) errors++;
        else {
            val = (unsigned)dummy[0] | ((unsigned)dummy[1] << 8);
            if (pregs && ((ofset+num+1) < regSize)) { pregs[ofset+num] = dummy[0]; pregs[ofset+num+1] = dummy[1]; }
        }
        return res;
    }
    //read a 32 bit value from 4 consecutive registers (lsb first)
    unsigned readReg4(unsigned num, unsigned &val) {
        if (status < I2C_DEVICE_EXIST) return NACK;
        char dummy[4] = { (char)num, 0, 0, 0 };
        I2Cres_t res = ACK;
        if (mode == I2C_SINGLE) {
            unsigned v1,v2,v3,v4;
            res = readReg(num,v1);
            if (res == ACK) res = readReg(num+1,v2);
            if (res == ACK) res = readReg(num+2,v3);
            if (res == ACK) res = readReg(num+3,v4);
            dummy[0] = v1; dummy[1]=v2; dummy[2] = v3; dummy[3]=v4;
        } else
        if (mode == I2C_MULTIPLE ) {
            unsigned n;
            res = I2C.write(addr,1,dummy,&n,false);   //write register adress, no stop bits
            if (res == ACK) res = I2C.read(addr,4,dummy,true);
            else I2C.sendStopBit();
        }
        if (res == NACK) errors++;
        else {
            if (pregs && ((ofset+num+3) < regSize)) {
                pregs[ofset+num] = dummy[0]; pregs[ofset+num+1] = dummy[1]; 
                pregs[ofset+num+2] = dummy[2]; pregs[ofset+num+3] = dummy[3]; }
            val = (unsigned)dummy[0] | ((unsigned)dummy[1] << 8) | ((unsigned)dummy[2] << 16) | ((unsigned)dummy[3] << 24);
        }
        return res;
    }
    //update a register by doing a bitwise "and", and then a bitwise "or"
    //with the 2 provided 8 bits parameters. eventually use the shadow register as the original value
    I2Cres_t writeRegAndOr(unsigned num, unsigned and_, unsigned or_) {
        if (status < I2C_DEVICE_EXIST) return NACK;
        unsigned val;
        I2Cres_t res = ACK;
        if (pregs && ((ofset+num) < regSize)) val = pregs[ofset+num];
        else res = readReg(num,val);
        if (res == ACK) {
            val = (val & and_) | or_;
            res = writeReg(num, val);
        }
        if (res == NACK) errors++;
        return res;
    }
    //update a register by setting some bits according to 8bit mask given
    I2Cres_t setRegMask(unsigned num, unsigned mask) {
        return writeRegAndOr(num, 0xFFFFFFFF, mask );
    }
    //update a register by clearing some bits according to 8bit mask given (a "not" instruction is used)
    I2Cres_t clrRegMask(unsigned num, unsigned mask) {
        return writeRegAndOr(num, ~mask, 0 );
    }

};
#undef DEBUG_UNIT
#endif //_XC_I2C_MASTER_HPP_