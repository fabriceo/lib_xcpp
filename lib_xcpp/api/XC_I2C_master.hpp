#ifndef _XC_I2C_MASTER_HPP_
#define _XC_I2C_MASTER_HPP_

#include "XC_core.hpp"

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
#if defined(debug_printf)
        debug_printf(trace); 
#endif
        if (size>2) traceClear(); }
};

#ifndef XCTraceSize
#if defined(debug_printf)
#define XCTraceSize 256
#else
#define XCTraceSize 2
#endif
#endif

typedef enum { NACK, ACK } I2Cres_t;    //the device may NACK or ACK the last byte.

class XC_I2Cmaster : public XCTrace< XCTraceSize > {
public:
private:
    enum local{ 
        BUF_SIZE  = 16,           //max number of values sent/received over channel
        TO_I2C_SERVER = 0x40,     //unique ID for shared chanend to recognize I2C transactions
        TO_I2C_CLIENT = 0x41 };   //unique ID for shared chanend to recognize I2C transactions

    //used to define potiential client or server mode
    bool clientMode;
    XCPin scl, sda;
    //local reference to the core allocated timer. must be initialized with getLocal
    XCTimer timer;
    //chanend used for communcation client/server
    XCChanendPort C;
    //mutex to manage reentrant calls from other cores on same tile. not used yet
    XCSWLock lock;
    //list of supported request sent over the chanel from any client to the server
    typedef enum { 
        I2C_INIT = 0, I2C_TEST_DEVICE, I2C_WRITE_REG, I2C_WRITE_REGS, I2C_READ_REG, I2C_READ_REGS 
    } I2Crequest_t;
    //temporary buffer to store bytes transfered across client-server
    char buf[BUF_SIZE];  
public:
    XC_I2Cmaster(XCPin& pinscl, XCPin& pinsda) : clientMode(false),
        scl(pinscl),sda(pinsda) { }

    XC_I2Cmaster(XCPin& pinscl, XCPort& portsda) : clientMode(false),
        scl(pinscl),sda(portsda) {  }

    XC_I2Cmaster(XCPort& portscl, XCPort& portsda) : clientMode(false),
        scl(portscl), sda(portsda) { }

    XC_I2Cmaster(XCPort& portscl, XCPin& pinsda) : clientMode(false),
        scl(portscl), sda(pinsda) { }

    XC_I2Cmaster() : clientMode(true) { } //used for client mode

private:
    void sclhigh() {  scl.set(); }
    void scllow() {   scl.clr(); }
    void sdahigh() {  sda.set(); }
    void sdalow() {   sda.clr(); }

    unsigned scllow_time;            //timer value last time SCL was falling down to zero
    unsigned sda_time;               //timer value last time SDA whas changed
    unsigned kbits_per_second;       // eg 100 or 400
    unsigned rise_ticks;             // maximum rise time for scl or sda
    unsigned one_bit_ticks;          // store the 1 bit duration in number of core ticks
    unsigned half_bit_ticks;         // store the half bit duration in number of core ticks
    unsigned quarter_bit_ticks;      // store the quarter bit duration in number of core ticks
    unsigned scllow_min_ticks;       // store the minimum time for a valid signal
    unsigned sclhigh_min_ticks;      // store the minimum time for a valid signal
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
            scllow_min_ticks  = (refHZ * 47 )/10000000; //4.7us
            sclhigh_min_ticks = (refHZ * 40 )/10000000; //4.0us
            rise_ticks        = (refHZ * 10 )/10000000; //1000ns
        } else if (kbits_per_second <= 400) {
            scllow_min_ticks  = (refHZ * 13 )/10000000; //1.3us
            sclhigh_min_ticks = (refHZ * 06 )/10000000; //600ns
            rise_ticks        = (refHZ * 03 )/10000000; //300ns
        } else if (kbits_per_second <= 1000) {
            scllow_min_ticks  = (refHZ * 04 )/10000000; //400ns
            sclhigh_min_ticks = (refHZ * 04 )/10000000; //400ns
            rise_ticks        = (refHZ * 01 )/10000000; //100ns
        } else {
            static_assert(1,"Fast-mode Plus not implemented");
        }
        // There is some jitter on the falling edges of the clock. In order to ensure
        // that the low period is respected we need to extend the minimum low period.
        const unsigned jitter_ticks = 3;
        scllow_min_ticks  += jitter_ticks;
        sclhigh_min_ticks += jitter_ticks;
        bus_off_ticks = half_bit_ticks/2 + one_bit_ticks/16;
    }

    /** Releases the SCL line, reads it back and waits until it goes high (in
     *  case the slave is clock stretching).
     *  Since the line going high may be delayed, the scllow_time value may
     *  need to be adjusted
     */
    void sclhigh_and_wait(unsigned delay) {
        int time = timer();
        sclhigh();
        while(1) {
            time += rise_ticks;
            timer.waitAfter(time);              
            if (scl()) break;                   //test status of SCL, after a maximum rise delay.
            tracePut('_');
            scllow_time += rise_ticks;          //adjust reference time if the clock was strectched
        }
        timer.waitAfter(scllow_time + delay);   //garantee that the expected time for SCL high correspond to required value
    }

    //assuming scl is low, wait up to halfbit, raise scl high, wait up to one full bit and restore scl low
    void inline high_pulse(unsigned last) {
        timer.waitAfter(scllow_time + scllow_min_ticks);
        sclhigh_and_wait(half_bit_ticks + quarter_bit_ticks);
        int sample_value = sda();
        if (bus_busy == 1) {
            if (sample_value == 0) tracePut(last?'w':'0'); else tracePut(last?'r':'1');
        } else {
            if (sample_value == 0) tracePut(last?'a':'0'); else tracePut(last?'n':'1');
        }
        scllow_time = timer.waitAfter(scllow_time + one_bit_ticks);
        scllow();
    }

    //last scl transition with sampling ack/nack answer from slave
    int inline high_pulse_sample(unsigned last) {
        int sample_value = 0;
        sdahigh(); //release sda line immediately (allowed by hold-time specification)
        timer.waitAfter(scllow_time + scllow_min_ticks);
        sclhigh_and_wait(half_bit_ticks + quarter_bit_ticks);
        sample_value = sda();
        if (sample_value == 0) tracePut(last?'a':'0'); else tracePut(last?'n':'1');
        scllow_time = timer.waitAfter(scllow_time + one_bit_ticks);
        scllow();   //scllow_time contains timer value at the time of scl going low.
        return sample_value != 0;
    }

    //after start bit, both sda and scl are low
    void start_bit(){
        if (bus_busy) {
            // repeated startbit
            // assume scl is already low and fall time represent timer at the time of falling low
            // potentially resynch scllow_time in case user program has geopardized timing
            scllow_time = waitTarget(scllow_time + scllow_min_ticks) - scllow_min_ticks;
            sclhigh_and_wait(one_bit_ticks);
        } else {
            //assume scl is high and sda is high for at least "compute_bus_off_ticks"
        }
        bus_busy = 1;
        sda_time = timer();
        sdalow();
        scllow_time = timer.waitAfter(sda_time + half_bit_ticks);
        scllow();
        tracePut('S'); tracePut(' ');
    }

    /* Output a stop bit. assume scl is low.
       after both scl and sda are high */
    void stop_bit() {
        sdalow();
        timer.waitTicks(half_bit_ticks);
        sclhigh();
        timer.waitTicks(half_bit_ticks);
        sdahigh();
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
        for (int i = 8; i != 0; i--) {
            sda_time = waitTarget(scllow_time + quarter_bit_ticks);
            if (data & 1) sdahigh(); else sdalow();
            data >>= 1;
            high_pulse((bus_busy==1) && (i == 1));
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
#if defined(debug_printf)
    //debug_printf("write %d, %d bytes\n",device,n);
#endif
    start_bit();
    int ack = tx8((device << 1));
    int j = 0;
    for (; j < n; j++) {
      if (ack != 0) break; //NACK ?
      ack = tx8(buf[j]);
    }
    if (send_stop_bit) stop_bit();
    num_bytes_sent = j;
#if defined(debug_printf)
    //debug_printf("write done %d bytes, res = %d\n",j,ack);
#endif
    return (ack == 0) ? ACK : NACK;
}


I2Cres_t read(  unsigned device, 
                const unsigned m, char buf[], 
                bool send_stop_bit) {
    if (0==kbits_per_second) return NACK;
    start_bit();
    int ack = tx8((device << 1) | 1);

    if (ack == 0) {
      for (int j = 0; j < m; j++) {
        unsigned char data = 0;
        for (int i = 8; i != 0; i--) {
          int temp = high_pulse_sample(0);
          data = (data << 1) | temp;
        }
        buf[j] = data;

        timer.waitAfter(scllow_time + quarter_bit_ticks);
        // ACK after every read byte until the final byte then NACK.
        if (j == m-1) sdahigh();    //sdahigh means not Acknowledge for the last byte only
        else sdalow();              //sdalow means Acknowledge )

        timer.waitAfter(scllow_time + scllow_min_ticks);
        high_pulse(1);
        sdahigh();
        tracePut(' ');
      }
    }
    if (send_stop_bit) stop_bit();

    return (ack == 0) ? ACK : NACK;
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

void masterInit(unsigned kbitsps) {
    if (clientSend(I2C_INIT)) { 
        C.out(kbitsps/100).outPortEND();
        clientEND();
        kbits_per_second = kbitsps;
        return; 
    }
#if defined(debug_printf)
    debug_printf("masterInit(%d)\n",kbitsps);
#endif
    timer.getLocal();   //use a timer allocated to the current task, not a specific one.
    compute_ticks(kbitsps);
    bus_busy = 0;
    //force ports in pullup mode if one bit, otherwise expected to be done before calling master init
    if (sda.port.oneBit()) sda.port.set().setPullUp(); else sdahigh();
    if (scl.port.oneBit()) scl.port.set().setPullUp(); else sclhigh();
    for (int i=0; i< 10; i++) {
        sclhigh(); timer.waitTicks(half_bit_ticks);
        scllow();  timer.waitTicks(half_bit_ticks); 
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
    unsigned sent;
    char dummy[1] = { 0 };
    I2Cres_t res = write(device, 0, dummy, sent, true);
    tracePrint();
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
    char dummy[2] = { (char)reg, (char)val };
    unsigned n;
    //debug_printf((char*)"xc_i2c_write_reg device = %x, reg = %x, val = %x\n", device, reg, val);
    I2Cres_t res = write(device,2,dummy,n,true);
    tracePrint();
    return res;
}

I2Cres_t readReg( unsigned device, unsigned reg, unsigned &val) {
    if (clientSend(I2C_READ_REG)) { 
        C.outByte(device).outByte(reg).outPortEND();
        val = C.inByte();
        clientEND(); return ACK; 
    }
    if (0==kbits_per_second) return NACK;
    char dummy[2] = { (char)reg, 0 };
    unsigned n;
    I2Cres_t res = write(device,1,dummy,n,false);
    if (res == NACK) sendStopBit();
    else {
        res = read(device,1,dummy,true);
        val = dummy[0];
    }
    tracePrint();
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
    start_bit();
    int ack = tx8((device << 1));
    if (ack == 0) ack = tx8(reg);
    int j = 0;
    for (; j < n; j++) {
      if (ack != 0) break;
      ack = tx8(buf[j]);
    }
    stop_bit();
    num_bytes_sent = j;

    tracePrint();
    return (ack == 0) ? ACK : NACK;
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
        C.setGetDest();              //receive client adress
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
            unsigned n;
            write(slave,1,buf,n,false);   //write register adress, no stop bits
            read(slave,num,buf,true);
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
    SINGLE = 0,
    MULTIPLE = 1
} i2c_reg_access_mode_t;

//status of a device on the i2c bus
typedef enum i2c_device_status_e {
    I2C_DEVICE_NOTTESTED,   //never talked to it yet
    I2C_DEVICE_NOTFOUND,    //seems not responding
    I2C_DEVICE_NOTMATCH,    //cannot be recognized
    I2C_DEVICE_ERROR,       //communication error has happened
    I2C_DEVICE_EXIST,       //seen on the bus
    I2C_DEVICE_MATCH,       //recognized as expecter
    I2C_DEVICE_INITIALISED, //properly initialized
} i2c_device_status_t;


//template parameter gives the possibility to define an optional table of shadow registers
template< XC_I2Cmaster &I2C, i2c_reg_access_mode_t mode = SINGLE, int size = 0 >
class XC_I2CmasterExtended {
public:
    char regs[size+(size==0)];      //shadow register bank eventually
    unsigned addr;                   //device address kept in memory
    i2c_device_status_t status;
    unsigned ofset;

    void clrShadowReg(){
        //clear all shadow registers
        for (unsigned i=0; i<size; i++) regs[i] = 0;
        ofset = 0;
    }
    //constructor always requiring an address parameter
    XC_I2CmasterExtended(uint8_t addr_) {
        //printf("i2c_class(%x,%d)\n",addr_,mode_);
        addr = addr_; status = I2C_DEVICE_NOTTESTED;
        clrShadowReg();  }

    //test if a device is available at the given adress
    i2c_device_status_t deviceTest() {
        unsigned res = I2C.testDevice(addr);
        if (res == ACK) status = ((status > I2C_DEVICE_EXIST) ? status : I2C_DEVICE_EXIST);
        else status = I2C_DEVICE_NOTFOUND;
        return status;
    }

    //write a 8 bit value in a 8bit register. Keep copy in shadow register
    unsigned write(unsigned num, unsigned val) {
        if (status < I2C_DEVICE_EXIST) return ACK;
        //keep copy of the value in shadow register
        if ((ofset+num) < size) regs[ofset+num] = (char)val;
        return I2C.writeReg(addr,num,val);
    }
    //write a list of value in successive registers.
    //first value of the list is the start register
    //second is the last register (included)
    //next are the values
    //this sequence can be repeated, otherwise ended with a 0
    unsigned writeList(const char list[]) {
        if (status < I2C_DEVICE_EXIST) return ACK;
        const char *p = list;
        unsigned res = NACK;
        while(*p) {
            char first = *(p++);
            char last  = *(p++);
            if (mode == SINGLE)
                for (unsigned i=first; i<= last; i++) res = write( i, *(p++) );
            else if (mode == MULTIPLE) {
                char tot = last - first +1;
                unsigned n;
                res = I2C.writeRegs(addr,first,tot,p,&n);
                p += tot;
            }
         } //while
        return res;
    }
    //write a 16 bit value in 2 consecutive register (lsb first)
    unsigned write2(unsigned num, unsigned val) {
        if (status < I2C_DEVICE_EXIST) return ACK;
        unsigned res = NACK;
        char dummy[2] = { (char)val , (char)(val >> 8) };
        if ((ofset+num+1) < size) { regs[ofset+num] = dummy[0]; regs[ofset+num+1] = dummy[1]; }
        if (mode == SINGLE) {
            write(num,dummy[0]);
            res = write(num+1,dummy[1]);
        } else
        if (mode == MULTIPLE) {
            unsigned n;
            res = I2C.writeRegs(addr,num,2,dummy,&n);
        }
        return res;
    }
    //write a 32 bit value in 4 consecutive register (lsb first)
    unsigned write4(unsigned num, unsigned val) {
        if (status < I2C_DEVICE_EXIST) return ACK;
        unsigned res = NACK;
        char dummy[4] = { (char)val , (char)(val >> 8), (char)(val >>16), (char)(val >> 24) };
        if ((ofset+num+3) < size) {
            regs[ofset+num] = dummy[0]; regs[ofset+num+1] = dummy[1]; regs[ofset+num+2] = dummy[2]; regs[ofset+num+3] = dummy[3]; }
        if (mode == SINGLE) {
            write(num,dummy[0]);
            write(num+1,dummy[1]);
            write(num+2,dummy[2]);
            res = write(num+3,dummy[3]);
        } else
        if (mode == MULTIPLE) {
            unsigned n;
            res = writeRegs(addr,num,4,dummy,&n);
        }
        return res;
    }
    //read a 8 bit value from a register
    unsigned read(unsigned num) {
        if (status < I2C_DEVICE_EXIST) return 0;
        char dummy[1] = { (char)num };
        unsigned n=0;
        I2C.write(addr,1,dummy,n,false);   //write register adress, no stop bits
        I2C.read(addr,1,dummy,true);
        I2C.tracePrint();
        if ((ofset+num) < size) regs[ofset+num] = dummy[0];
        return dummy[0];
    }
    //read a 16 bit value from 2 consecutive registers (lsb first)
    unsigned read2(unsigned num) {
        if (status < I2C_DEVICE_EXIST) return 0;
        char dummy[2] = { (char)num, 0 };
        if (mode == SINGLE) {
            dummy[0] = read(num);
            dummy[1] = read(num+1);
        } else
        if (mode == MULTIPLE ) {
            unsigned n;
            I2C.write(addr,1,dummy,&n,false);   //write register adress, no stop bits
            I2C.read(addr,2,dummy,true);
        }
        if ((ofset+num+1) < size) { regs[ofset+num] = dummy[0]; regs[ofset+num+1] = dummy[1]; }
        return dummy[0] | (dummy[1] << 8);
    }
    //read a 32 bit value from 4 consecutive registers (lsb first)
    unsigned read4(unsigned num) {
        if (status < I2C_DEVICE_EXIST) return 0;
        char dummy[4] = { (char)num, 0, 0, 0 };
        if (mode == SINGLE) {
            dummy[0] = read(num);
            dummy[1] = read(num+1);
            dummy[2] = read(num+2);
            dummy[3] = read(num+3);
        } else
        if (mode == MULTIPLE ) {
            unsigned n;
            I2C.write(addr,1,dummy,&n,false);   //write register adress, no stop bits
            I2C.read(addr,4,dummy,true);
        }
        if ((ofset+num+3) < size) {
            regs[ofset+num] = dummy[0]; regs[ofset+num+1] = dummy[1]; regs[ofset+num+2] = dummy[2]; regs[ofset+num+3] = dummy[3]; }
        return dummy[0] | (dummy[1] << 8) | (dummy[2] << 16) | (dummy[3] << 24);
    }
    //update a register by setting some bits according to 8bit mask given
    unsigned set(unsigned num, unsigned mask) {
        if (status < I2C_DEVICE_EXIST) return ACK;
        char val = ((ofset+num) < size) ? regs[ofset+num] : read(num);
        val |= (char)mask;
        return write(num,val);
    }
    //update a register by clearing some bits according to 8bit mask given (a "not" instruction is used)
    unsigned clr(unsigned num, unsigned mask) {
        if (status < I2C_DEVICE_EXIST) return ACK;
        char val = ((ofset+num) < size) ? regs[ofset+num] : read(num);
        val &= (char)(~mask);
        return write(num,val);
    }
    //update a register by doing a bitwise "and", and then a bitwise "or"
    //with the 2 provided 8 bits parameters
    unsigned regAndOr(unsigned num, unsigned and_, unsigned or_) {
        if (status < I2C_DEVICE_EXIST) return ACK;
        char val = ((ofset+num) < size) ? regs[ofset+num] : read(num);
        val = (val & (char)and_) | (char)or_;
        return write(num, val);
    }
};

#endif //_XC_I2C_MASTER_HPP_