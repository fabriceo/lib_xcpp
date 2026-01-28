#ifndef _XC_I2C_MASTER_HPP_
#define _XC_I2C_MASTER_HPP_

#include <stdlib.h>         //for malloc and free
#include "XC_core.hpp"
#undef  DEBUG_UNIT
#define DEBUG_UNIT XC_I2C
#include "debug_print.h"

//this XCTrace class is used to verify the I2C class with fast printing signal
//if debug_printf is not defined then the compiler should remove unutilized code
template<int size = 256> class XCTrace {
private:
static_assert(size>=2,"invalid size for XCTrace< >");
    char trace[size];
    int  count;
public:
    XCTrace()  { traceClear(); }
    void traceClear() { 
        count = 0; trace[0] = '\n'; trace[1] = 0; }
    void tracePut(char ch) {
        if (count < (size-2)) { 
            trace[count++]=ch; 
            trace[count]='\n'; 
            trace[count+1]=0; } }
    void tracePutHex(char ch) {
        if (count < (size-3)) { 
            trace[count++]=(ch>>4)+(((ch>>4)<10)?'0':'A'-10); 
            trace[count++]=(ch&15)+(((ch&15)<10)?'0':'A'-10); 
            trace[count]='\n'; 
            trace[count+1]=0; } }
    void tracePrint() { 
        debug_printf(trace); 
        if (size>2) traceClear(); }
};

#ifndef XCTraceSize
#if defined(debug_printf)
#define XCTraceSize 256
#else
#define XCTraceSize 2
#endif
#endif

typedef enum { NACK=0, ACK=1 } I2Cres_t;    //the device may NACK or ACK the last byte.

class XC_I2Cmaster : public XCTrace< XCTraceSize > {
public:
private:
    enum local{ 
        BUF_SIZE  = 16,           //max number of values sent/received over channel
        TO_I2C_SERVER = 0x40,     //unique ID for shared chanend to recognize I2C transactions
        TO_I2C_CLIENT = 0x41 };   //unique ID for shared chanend to recognize I2C transactions

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
    //list of supported request sent over the chanel from any client to the server
    typedef enum { 
        I2C_INIT = 0, I2C_TEST_DEVICE, I2C_WRITE_REG, I2C_WRITE_REGS, I2C_READ_REG, I2C_READ_REGS 
    } I2Crequest_t;
    //temporary buffer to store bytes transfered across client-server
    char buf[BUF_SIZE];

public:
    XC_I2Cmaster(XCPortBit& pinscl, XCPortBit& pinsda) : 
        scl(pinscl),sda(pinsda), clientMode(false), C(XCChanendPortUndefined) { }

    XC_I2Cmaster(XCPortBit& pinscl, XCPort& portsda) : 
        scl(pinscl),sda(portsda), clientMode(false), C(XCChanendPortUndefined) {  }

    XC_I2Cmaster(XCPort& portscl, XCPort& portsda) : 
        scl(portscl), sda(portsda), clientMode(false), C(XCChanendPortUndefined) { }

    XC_I2Cmaster(XCPort& portscl, XCPortBit& pinsda) : 
        scl(portscl), sda(pinsda), clientMode(false), C(XCChanendPortUndefined) { }

    XC_I2Cmaster() : clientMode(true), C(XCChanendPortUndefined) { }    //used for client mode
    XC_I2Cmaster(XCChanendPort &C_) : clientMode(true), C(C_) { }       //used for client mode

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
    unsigned bus_busy;               // set to 1 when a a start bit is sent, reset to 0 when stop bit is sent

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
        kbits_per_second  = kbitsps;
        one_bit_ticks     = refHZ / (1000*kbitsps);
        half_bit_ticks    = one_bit_ticks  / 2;
        quarter_bit_ticks = half_bit_ticks / 2;
        if (kbits_per_second <= 100) {
            sclLow_min_ticks  = (refHZ * 47 )/10000000; //4.7us
            sclHigh_min_ticks = (refHZ * 40 )/10000000; //4.0us
            rise_ticks        = (refHZ * 10 )/10000000; //1000ns
        } else if (kbits_per_second <= 400) {
            sclLow_min_ticks  = (refHZ * 13 )/10000000; //1.3us
            sclHigh_min_ticks = (refHZ * 06 )/10000000; //600ns
            rise_ticks        = (refHZ * 03 )/10000000; //300ns 
        } else if (kbits_per_second <= 1000) {
            sclLow_min_ticks  = (refHZ * 04 )/10000000; //400ns
            sclHigh_min_ticks = (refHZ * 04 )/10000000; //400ns
            rise_ticks        = (refHZ * 01 )/10000000; //100ns
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
        int time = timer();
        int tot = 0;
        int stat = 0;
        sclHigh();
        while(1) {
            time += rise_ticks;
            timer.waitAfter(time);              
            if (scl.peek()) break;              //test status of SCL, after a maximum rise delay.
            tot += rise_ticks;
            if (tot>one_bit_ticks) {
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
        int res = high_pulse_sample(1);
        bus_busy++;
        tracePut(' ');
        return res;
    }

public:

I2Cres_t write( unsigned device,
                const unsigned n, char buf[],
                unsigned &num_bytes_sent,
                bool send_stop_bit) {
    if (0==kbits_per_second) return NACK;
    //debug_printf("write %d, %d bytes\n",device,n);
    start_bit();
    int res;
    res = tx8((device << 1) | 0); //aka "write=0"
    int j = 0;
    for (; j < n; j++) {
      if (res != 0) break; // break if not Acknowledged ?
      res = tx8(buf[j]);
    }
    if (send_stop_bit) stop_bit();
    num_bytes_sent = j;
    //debug_printf("write done %d bytes, res = %d\n",j,ack);
    return (res == 0) ? ACK : NACK;
}


I2Cres_t read(  unsigned device, 
                const unsigned m, char buf[], 
                bool send_stop_bit) {
    if (0==kbits_per_second) return NACK;
    start_bit();
    int res = tx8((device << 1) | 1);   //send address + read=1 flag
    
    if (res == 0)
    for (int j=0; j < m; j++) {
        unsigned char data = 0;
        for (int i = 8; i != 0; i--) {
            int temp = high_pulse_sample(0);
            data = (data << 1) | temp;
        }
        buf[j] = data;

        timer.waitAfter(sclLow_time + quarter_bit_ticks);
        // ACK after every read byte until the final byte then NACK.
        if (j == m-1) sdaHigh();    //sdaHigh means not Acknowledge for the last byte only
        else sdaLow();              //sdaLow means Acknowledge

        timer.waitAfter(sclLow_time + sclLow_min_ticks);
        high_pulse(1);
        sdaHigh();
        tracePut(' ');
    }
    if (send_stop_bit) stop_bit();

    return (res == 0) ? ACK : NACK;
}

void sendStopBit(void) {
    if (0==kbits_per_second) return ;
    if (bus_busy) stop_bit();     //verify scl being already low   
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

void measure() {
    //assuming all signals being high at first
    int thigh = 0;
    int tlow  = 0;
    for (int i=0; i< 10; i++) {
        sclLow();  
        int t = XC::getTime();
        while(scl.peek()) {}
        tlow += XC::getTime() - t;        
        timer.waitTicks(half_bit_ticks); 
        sclHigh(); 
        t = XC::getTime();
        while(scl.peek()==0) {}
        thigh += XC::getTime() - t;
        timer.waitTicks(half_bit_ticks);
    }
    debug_printf("t scl rise = %dns, t scl fall = %dns\n",thigh,tlow);
    thigh = 0;
    tlow  = 0;
    for (int i=0; i< 10; i++) {
        sdaLow();  
        int t = XC::getTime();
        while(sda.peek()) {}
        tlow += XC::getTime() - t;        
        timer.waitTicks(half_bit_ticks); 
        sdaHigh(); 
        t = XC::getTime();
        while(sda.peek()==0) {}
        thigh += XC::getTime() - t;
        timer.waitTicks(half_bit_ticks);
    }
    debug_printf("t sda rise = %dns, t sda fall = %dns\n",thigh,tlow);

}

//very first method to call
void masterInit(unsigned kbitsps, bool measure_ = false) {
    if (clientSend(I2C_INIT)) { 
        C.out(kbitsps/100).outPortEND();
        clientEND();
        kbits_per_second = kbitsps;
        return; 
    }
    debug_printf("XC_I2C_masterInit(%dkbps)\n",kbitsps);
    timer.getLocal();   //use a timer allocated to the current task, not a specific one.
    compute_ticks(kbitsps);
    bus_busy = 0;
    sda.getPort().enable().setMode(XCPort::OUTPUT_PULLUP);
    scl.getPort().enable().setMode(XCPort::OUTPUT_PULLUP);

    timer.waitTicks(one_bit_ticks);
    if (measure_) measure();

    for (int i=0; i< 9; i++) {
        sclHigh(); 
        timer.waitTicks(half_bit_ticks);
        sclLow();  
        timer.waitTicks(half_bit_ticks); 
    }
    stop_bit();
    traceClear();
    timer.waitTicks(bus_off_ticks); 
}

//just send the device adress on the bus and return the answer ack/nack
I2Cres_t testDevice( unsigned device ) {
    if (clientSend(I2C_TEST_DEVICE)) {
        C.outByte(device).outPortEND();
        I2Cres_t res = (I2Cres_t)C.inByte(); 
        clientEND(); 
        return res; 
    }
    if (0==kbits_per_second) return NACK;
    lock.acquire();
    unsigned sent;
    char dummy[1] = { 0 };
    I2Cres_t res = write(device, 0, dummy, sent, true);
    tracePrint();
    lock.release();
    return res;
}

I2Cres_t writeReg( unsigned device, unsigned reg, unsigned val) {
    if (clientSend(I2C_WRITE_REG)) {
        C.outByte(device).outByte(reg).outByte(val).outPortEND();
        I2Cres_t res = (I2Cres_t)C.inByte(); 
        clientEND(); 
        return res; 
    }
    if (0==kbits_per_second) return NACK;
    lock.acquire();
    char dummy[2] = { (char)reg, (char)val };
    unsigned n;
    I2Cres_t res = write(device,2,dummy,n,true);
    tracePrint();
    lock.release();
    return res;
}

I2Cres_t readReg( unsigned device, unsigned reg, unsigned &val) {
    if (clientSend(I2C_READ_REG)) { 
        C.outByte(device).outByte(reg).outPortEND();
        val = C.inByte();
        clientEND(); return ACK; 
    }
    if (0==kbits_per_second) return NACK;
    lock.acquire();
    char dummy[1] = { (char)reg };
    unsigned n;
    I2Cres_t res = write(device,1,dummy,n,false);
    if (res == NACK) sendStopBit();
    else {
        res = read(device,1,dummy,true);
        val = dummy[0];
    }
    tracePrint();
    lock.release();
    return res;
}

I2Cres_t writeRegs( unsigned device, unsigned reg, const unsigned n, const char buf[], unsigned &num_bytes_sent ) {
    if (clientSend(I2C_WRITE_REGS)) { 
        C.outByte(device).outByte(reg).outByte(n);
        for (int i=0; i<n; i++ ) C.outByte(buf[i]);
        C.outPortEND();
        I2Cres_t res = (I2Cres_t)C.inByte(); clientEND(); 
        return res; 
    }
    if (0==kbits_per_second) return NACK;
    lock.acquire();
    start_bit();
    int res = tx8((device << 1));
    if (res == 0) res = tx8(reg);
    int j = 0;
    for (; j < n; j++) {
      if (res != 0) break;
      res = tx8(buf[j]);
    }
    stop_bit();
    num_bytes_sent = j;

    tracePrint();
    lock.release();
    return (res == 0) ? ACK : NACK;
}

I2Cres_t readRegs( unsigned device, unsigned reg, const unsigned n, char buf[] ) {
    if (clientSend(I2C_READ_REGS)) { 
        C.outByte(device).outByte(reg).outByte(n).outPortEND();
        for (int i=0; i<n; i++) buf[i] = C.inByte();
        clientEND(); return ACK; 
    }
    if (0==kbits_per_second) return NACK;
    lock.acquire();
    char dummy[1] = { (char)reg };
    unsigned m;
    I2Cres_t res = write(device,1,dummy,m,false);
    if (res == NACK) sendStopBit();
    else {
        res = read(device,n,buf,true);
    }
    tracePrint();
    lock.release();
    return res;
}

public:
    void initServer() {     //prepare our channel to receive and send data.
        if (C.addr == 0) C.getResource();
    }
    void initClient() {     //prepare our channel to receive and send data.
        if (C.addr == 0) C.getResource();
    }

bool processServer() {
    if (0==kbits_per_second) return false;
    if (C.tryInPort(TO_I2C_SERVER)) {    //check and extract token for us otherwise do nothing
        C.setGetDest();                 //receive client adress
        I2Crequest_t req = (I2Crequest_t)C.inByte();    //receive codified request
        switch (req) {
        case I2C_INIT : { 
            unsigned kbps = C.in(); kbps *= 100;
            C.checkPortEND();
            masterInit(kbps);
            C.outPort(TO_I2C_CLIENT).outPortEND();
            break; }
        case I2C_TEST_DEVICE: {
            char slave = C.inByte();
            C.checkPortEND();
            unsigned res = testDevice(slave);
            C.outPort(TO_I2C_CLIENT).outByte(res).outPortEND();
            break; }
        case I2C_WRITE_REG: {
            char slave = C.inByte();
            char reg = C.inByte();
            char val = C.inByte();
            C.checkPortEND();
            XC_UNUSED I2Cres_t res = writeReg(slave, reg , val);
            C.outPort(TO_I2C_CLIENT).outByte(ACK).outPortEND();
            break; }
        case I2C_WRITE_REGS: {
            char slave = C.inByte();
            char reg = C.inByte();
            char num = C.inByte();
            for (int i=0; i<num; i++) buf[i] = C.inByte();
            C.checkPortEND();
            unsigned numByte;
            writeRegs(slave, reg , num, buf, numByte);
            C.outPort(TO_I2C_CLIENT).outByte(numByte).outPortEND();
            break; }
        case I2C_READ_REG: {
            char slave = C.inByte();
            char reg = C.inByte();
            C.checkPortEND();
            unsigned val;
            readReg(slave, reg , val);
            C.outPort(TO_I2C_CLIENT).outByte(val).outPortEND();
            break; }
        case I2C_READ_REGS: {
            char slave = C.inByte();
            char reg = C.inByte();
            char num = C.inByte();
            C.checkPortEND();
            buf[0] = reg;   //TODO
            for (int i=1; i<num; i++) buf[i]=255;
            readRegs(slave,reg,num,buf);
            C.outPort(TO_I2C_CLIENT).outByte(num);
            for (int i=0; i<num; i++) C.outByte(buf[i]);
            C.outPortEND();
            break; }
        } //switch
        return true;
    }
    return false; 
} 

}; // class XC_I2Cmaster


//gives the possibility to select an access mode with this param
//just after the device adress in constructor
typedef enum i2c_reg_access_mode_e {
    I2C_SINGLE = 0,
    I2C_MULTIPLE = 1
} i2c_reg_access_mode_t;

//status of a device on the i2c bus
typedef enum i2c_device_status_e {
    I2C_DEVICE_NOTTESTED,   //never talked to it yet
    I2C_DEVICE_NOTFOUND,    //seems not responding
    I2C_DEVICE_NOTMATCH,    //device answer but not as expected
    I2C_DEVICE_ERROR,       //communication error has happened
    I2C_DEVICE_EXIST,       //seen on the bus
    I2C_DEVICE_MATCH,       //recognized as expected
    I2C_DEVICE_INITIALISED, //properly initialized
} i2c_device_status_t;


//template parameter gives the possibility to define an optional table of shadow registers
template< XC_I2Cmaster &I2C, i2c_reg_access_mode_t mode = I2C_SINGLE >
class XC_I2CmasterExtended {
private:
    unsigned addr;                  //device address kept in memory
    unsigned regSize;   
public:
    unsigned ofset;                  //used when shadow register has big size or multiple pages
    char * pregs;
    i2c_device_status_t status;     //real time device status
    unsigned errors;

    void clrShadowReg(){
        //clear all shadow registers
        for (unsigned i=0; i<regSize; i++) pregs[i] = 0;
        ofset = 0;
    }
    //constructor always requiring an I2C address parameter
    XC_I2CmasterExtended(uint8_t addr_) {
        //printf("i2c_class(%x,%d)\n",addr_,mode_);
        addr = addr_; 
        pregs = nullptr;
        regSize = 0;
        status = I2C_DEVICE_NOTTESTED;
        errors = 0;
        clrShadowReg();  }

    XC_I2CmasterExtended(uint8_t addr_, unsigned size_) {
        //printf("i2c_class(%x,%d)\n",addr_,mode_);
        addr = addr_; 
        if (size_) {
            regSize = size_;
            pregs = (char*)malloc(size_);
            clrShadowReg();
        } else { 
            pregs = nullptr; regSize = 0; }
        status = I2C_DEVICE_NOTTESTED;
        errors = 0;
        }

    ~XC_I2CmasterExtended() { if (pregs) free(pregs); }

    //test if a device is available at the given adress
    i2c_device_status_t testDevice() {
        I2Cres_t res = I2C.testDevice(addr);
        if (res == ACK) status = I2C_DEVICE_EXIST;
        else status = I2C_DEVICE_NOTFOUND;
        errors = 0;
        return status;
    }

    //write a 8 bit value in a 8bit register. Keep copy in shadow register
    I2Cres_t write(unsigned num, unsigned val) {
        if (status < I2C_DEVICE_EXIST) return NACK;
        //keep copy of the value in shadow register
        if ((ofset+num) < regSize) pregs[ofset+num] = (char)val;
        I2Cres_t res = I2C.writeReg(addr,num,val);
        if (res == NACK) errors++;
        return res;
    }
    //write a list of value in successive registers.
    //first value of the list is the start register
    //second is the last register (included)
    //next are the values
    //this sequence can be repeated, otherwise ended with a 0
    I2Cres_t writeList(const char list[]) {
        if (status < I2C_DEVICE_EXIST) return NACK;
        const char *p = list;
        I2Cres_t res = ACK;
        while(*p) {
            char first = *(p++);
            char last  = *(p++);
            if (mode == I2C_SINGLE) {
                for (unsigned i=first; (i<= last); i++)
                    if ((res = write( i, *(p++) )) == NACK) break;
            } else 
            if (mode == I2C_MULTIPLE) {
                char tot = last - first +1;
                unsigned n;
                res = I2C.writeRegs(addr,first,tot,p,n);
                p += tot;
            }
            if (res==NACK) break;
         } //while
        if (res == NACK) errors++;
        return res;
    }
    //write a 16 bit value in 2 consecutive register (lsb first)
    I2Cres_t write2(unsigned num, unsigned val) {
        if (status < I2C_DEVICE_EXIST) return NACK;
        I2Cres_t res = ACK;
        char dummy[2] = { (char)val , (char)(val >> 8) }; //LSB first
        if ((ofset+num+1) < regSize) { pregs[ofset+num] = dummy[0]; pregs[ofset+num+1] = dummy[1]; }
        if (mode == I2C_SINGLE) {
            res = write(num,dummy[0]);
            if (res == ACK) res = write(num+1,dummy[1]);
        } else
        if (mode == I2C_MULTIPLE) {
            unsigned n;
            res = I2C.writeRegs(addr,num,2,dummy,n);
        }
        if (res == NACK) errors++;
        return res;
    }
    //write a 32 bit value in 4 consecutive register (lsb first)
    I2Cres_t write4(unsigned num, unsigned val) {
        if (status < I2C_DEVICE_EXIST) return NACK;
        I2Cres_t res = ACK;
        char dummy[4] = { (char)val , (char)(val >> 8), (char)(val >>16), (char)(val >> 24) };
        if ((ofset+num+3) < regSize) {
            pregs[ofset+num] = dummy[0]; pregs[ofset+num+1] = dummy[1]; 
            pregs[ofset+num+2] = dummy[2]; pregs[ofset+num+3] = dummy[3]; }
        if (mode == I2C_SINGLE) {
            res = write(num,dummy[0]);
            if (res == ACK) res = write(num+1,dummy[1]);
            if (res == ACK) res = write(num+2,dummy[2]);
            if (res == ACK) res = write(num+3,dummy[3]);
        } else
        if (mode == I2C_MULTIPLE) {
            unsigned n;
            res = writeRegs(addr,num,4,dummy,&n);
        }
        if (res == NACK) errors++;
        return res;
    }
    //read a 8 bit value from a register
    I2Cres_t read(unsigned num, unsigned &val) {
        if (status < I2C_DEVICE_EXIST) return NACK;
        char dummy[1] = { (char)num };
        unsigned n=0;
        I2Cres_t res = I2C.write(addr,1,dummy,n,false);   //write register adress, no stop bits
        if (res == ACK) res = I2C.read(addr,1,dummy,true);
        else  I2C.sendStopBit();
        I2C.tracePrint();
        if (res == ACK) {
           if ((ofset+num) < regSize) pregs[ofset+num] = dummy[0];
           val = dummy[0];
        }
        if (res == NACK) errors++;
        return res;
    }
    //read a 16 bit value from 2 consecutive registers (lsb first)
    I2Cres_t read2(unsigned num, unsigned &val) {
        if (status < I2C_DEVICE_EXIST) return NACK;
        char dummy[2] = { (char)num, 0 };
        I2Cres_t res = ACK;
        if (mode == I2C_SINGLE) {
            unsigned v1,v2;
            res = read(num,v1);
            if (res == ACK) res = read(num+1,v2);
            dummy[0] = v1; dummy[1]=v2;
        } else
        if (mode == I2C_MULTIPLE ) {
            unsigned n;
            res = I2C.write(addr,1,dummy,&n,false);   //write register adress, no stop bits
            if (res == ACK) res = I2C.read(addr,2,dummy,true);
            else I2C.sendStopBit();
        }
        if ((ofset+num+1) < regSize) { pregs[ofset+num] = dummy[0]; pregs[ofset+num+1] = dummy[1]; }
        val = (unsigned)dummy[0] | ((unsigned)dummy[1] << 8);
        if (res == NACK) errors++;
        return res;
    }
    //read a 32 bit value from 4 consecutive registers (lsb first)
    unsigned read4(unsigned num, unsigned &val) {
        if (status < I2C_DEVICE_EXIST) return NACK;
        char dummy[4] = { (char)num, 0, 0, 0 };
        I2Cres_t res = ACK;
        if (mode == I2C_SINGLE) {
            unsigned v1,v2,v3,v4;
            res = read(num,v1);
            if (res == ACK) res = read(num+1,v2);
            if (res == ACK) res = read(num+2,v3);
            if (res == ACK) res = read(num+3,v4);
            dummy[0] = v1; dummy[1]=v2; dummy[2] = v3; dummy[3]=v4;
        } else
        if (mode == I2C_MULTIPLE ) {
            unsigned n;
            res = I2C.write(addr,1,dummy,&n,false);   //write register adress, no stop bits
            if (res == ACK) res = I2C.read(addr,4,dummy,true);
            else I2C.sendStopBit();
        }
        if ((ofset+num+3) < regSize) {
            pregs[ofset+num] = dummy[0]; pregs[ofset+num+1] = dummy[1]; 
            pregs[ofset+num+2] = dummy[2]; pregs[ofset+num+3] = dummy[3]; }
            val = (unsigned)dummy[0] | ((unsigned)dummy[1] << 8) | ((unsigned)dummy[2] << 16) | ((unsigned)dummy[3] << 24);
        if (res == NACK) errors++;
        return res;
    }
    //update a register by setting some bits according to 8bit mask given
    I2Cres_t setMask(unsigned num, unsigned mask) {
        if (status < I2C_DEVICE_EXIST) return NACK;
        unsigned val;
        I2Cres_t res = ACK;
        if ((ofset+num) < regSize) val = pregs[ofset+num];
        else res = read(num,val);
        if (res == ACK) {
            val |= mask;
            res = write(num,val);
        }
        return res;
    }
    //update a register by clearing some bits according to 8bit mask given (a "not" instruction is used)
    I2Cres_t clrMask(unsigned num, unsigned mask) {
        if (status < I2C_DEVICE_EXIST) return NACK;
        unsigned val;
        I2Cres_t res = ACK;
        if ((ofset+num) < regSize) val = pregs[ofset+num];
        else res = read(num,val);
        if (res == ACK) {
            val &= ~mask;
            write(num,val);
        }
        if (res == NACK) errors++;
        return res;
    }
    //update a register by doing a bitwise "and", and then a bitwise "or"
    //with the 2 provided 8 bits parameters
    I2Cres_t writeAndOr(unsigned num, unsigned and_, unsigned or_) {
        if (status < I2C_DEVICE_EXIST) return NACK;
        unsigned val;
        I2Cres_t res = ACK;
        if ((ofset+num) < regSize) val = pregs[ofset+num];
        else res = read(num,val);
        if (res == ACK) {
            val = (val & and_) | or_;
            write(num, val);
        }
        if (res == NACK) errors++;
        return res;
    }
};
#undef DEBUG_UNIT
#endif //_XC_I2C_MASTER_HPP_