
#define DEBUG_UNIT XC_I2C
#include "debug_print.h"
#include "XC_I2C_master.hpp"


I2Cres_t XC_I2Cmaster :: write( unsigned device,
                                const unsigned n, char buf[],
                                unsigned &num_bytes_sent,
                                bool send_stop_bit ) 
{
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


I2Cres_t XC_I2Cmaster :: read(  unsigned device, 
                                const unsigned m, char buf[], 
                                bool send_stop_bit) 
{
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


void XC_I2Cmaster :: measure() { 
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
    debug_printf("time scl rise = %dns, t scl fall = %dns\n",thigh,tlow);
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
    debug_printf("time sda rise = %dns, t sda fall = %dns\n",thigh,tlow);

}


//very first method to call
void XC_I2Cmaster :: masterInit(unsigned kbitsps, bool measure_) {
    if (clientSend(I2C_INIT)) { 
        C.outWord(kbitsps).outPortEND();
        clientWaitAnswer(); clientEND();
        kbits_per_second = kbitsps;
        lock.release(); //in case it was locked
        return; 
    }
    printOn = measure_;
    debug_printf("XC_I2C_masterInit(%dkbps)\n",kbitsps);
    timer.getLocal();   //use a timer allocated to the current task, not a specific one.
    compute_ticks(kbitsps);
    bus_busy = 0;
    sda.getPort().enable().setMode(XCPort::OUTPUT_PULLUP); sdaHigh();
    scl.getPort().enable().setMode(XCPort::OUTPUT_PULLUP); sclHigh();
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
    kbits_per_second  = kbitsps;
    lock.release(); //in case it was locked
}

//just send the device adress on the bus and return the answer ack/nack
I2Cres_t XC_I2Cmaster :: testDevice( unsigned device ) {
    if (clientSend(I2C_TEST_DEVICE)) {
        C.outByte(device).outPortEND();
        clientWaitAnswer(); 
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

I2Cres_t XC_I2Cmaster :: writeReg( unsigned device, unsigned reg, unsigned val) {
    if (clientSend(I2C_WRITE_REG)) {
        C.outByte(device).outByte(reg).outByte(val).outPortEND();
        clientWaitAnswer();
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

I2Cres_t XC_I2Cmaster :: readReg( unsigned device, unsigned reg, unsigned &val) {
    if (clientSend(I2C_READ_REG)) { 
        C.outByte(device).outByte(reg).outPortEND();
        clientWaitAnswer();
        val = C.inByte();
        clientEND(); 
        return ACK; 
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

I2Cres_t XC_I2Cmaster :: writeMultiBytes(unsigned device, unsigned n, ...)
{
    if (0==kbits_per_second) return NACK;
    lock.acquire();
    unsigned int uintArg;
    va_list args;
    va_start(args,n);
    start_bit();
    int res = tx8((device << 1) | 0); //aka "write=0"
    
    for (int j = 0; j < n; j++) {
      if (res != 0) break; // break if not Acknowledged ?
      uintArg = va_arg(args, unsigned int);
      res = tx8((char)uintArg);
    }
    va_end(args);
    stop_bit();
    lock.release();
    tracePrint();
    return (res == 0) ? ACK : NACK;
}

I2Cres_t XC_I2Cmaster :: writeRegs( unsigned device, unsigned reg, const unsigned n, const char buf[], unsigned &num_bytes_sent ) {
    if (clientSend(I2C_WRITE_REGS)) { 
        C.outByte(device).outByte(reg).outByte(n);
        for (int i=0; i<n; i++ ) C.outByte(buf[i]);
        C.outPortEND();
        clientWaitAnswer();
        I2Cres_t res = (I2Cres_t)C.inByte(); 
        clientEND(); 
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

I2Cres_t XC_I2Cmaster :: readRegs( unsigned device, unsigned reg, const unsigned n, char buf[] ) {
    if (clientSend(I2C_READ_REGS)) { 
        C.outByte(device).outByte(reg).outByte(n).outPortEND();
        clientWaitAnswer();
        for (int i=0; i<n; i++) buf[i] = C.inByte();
        clientEND(); return ACK; 
    }
    if (0==kbits_per_second) return NACK;
    lock.acquire();
    char dummy[1] = { (char)reg };
    unsigned m;
    I2Cres_t res = write(device,1,dummy,m,false);
    if (res == NACK) sendStopBit();
    else res = read(device,n,buf,true);
    tracePrint();
    lock.release();
    return res;
}

I2Cres_t XC_I2Cmaster :: writeRegsList( unsigned device, unsigned reg, unsigned size, char buf[], bool multi) {
    I2Cres_t res = ACK;
    if (multi == false) {
        for (int i=0; i<size; i++) 
            if ((res = writeReg(device, reg+i, buf[i])) == NACK) break;
    } else {
        unsigned n;
        res = write(device,size,buf,n,true);
        tracePrint();
        if (n != size) res = NACK;
    }
    return res;
}

    //write a list of value in successive registers.
    //first value is the start register, second is the number of following bytes
    //next are the values. This sequence can be repeated, otherwise ended with a 0
    //if second value is 0 then this is replaced by a delay instruction in milliseconds of 10 times first value.
I2Cres_t XC_I2Cmaster :: writeRegsTable( unsigned device, const char table[], bool multi) {
    const char *p = table;
    I2Cres_t res = ACK;
    while(*p) {
        char first = *(p++);
        char tot   = *(p++);
        if (tot == 0) { 
            res = ACK;
            XC::delayMicros(1000*(unsigned)first);   //can be replaced by Yield
        } else {
            if (multi == false) {
                for (unsigned i=0; i<tot; i++) 
                    if ((res = writeReg( device, first+i,  p[i] )) == NACK) break;
            } else {
                res = writeRegsList( device, first,tot,(char*)p);
            }
        }
        p += tot;
        if (res==NACK) break;
    } //while
    return res;
}

//listen tokens on the chanend and process I2C related requests
bool XC_I2Cserver :: processServer() {
    if (0==I2C.kbits_per_second) return false;
    if (C.tryInPort(TO_I2C_SERVER)) {    //check and extract token for us otherwise do nothing
        C.setGetDest();                 //receive client adress for providing an answer
        I2Crequest_t req = (I2Crequest_t)C.inByte();    //receive codified request
        switch (req) {
        case I2C_INIT : { 
            unsigned kbps = C.in(); 
            C.checkPortEND();
            I2C.masterInit(kbps);
            C.outPort(TO_I2C_CLIENT).outPortEND();
            break; }
        case I2C_TEST_DEVICE: {
            char slave = C.inByte();
            C.checkPortEND();
            unsigned res = I2C.testDevice(slave);
            C.outPort(TO_I2C_CLIENT).outByte(res).outPortEND();
            break; }
        case I2C_WRITE_REG: {
            char slave = C.inByte();
            char reg = C.inByte();
            char val = C.inByte();
            C.checkPortEND();
            I2Cres_t res = I2C.writeReg(slave, reg , val);
            C.outPort(TO_I2C_CLIENT).outByte(res).outPortEND();
            break; }
        case I2C_WRITE_REGS: {
            char slave = C.inByte();
            char reg = C.inByte();
            char num = C.inByte();
            for (int i=0; i<num; i++) buf[i] = C.inByte();
            C.checkPortEND();
            unsigned numByte;
            I2Cres_t res = I2C.writeRegs(slave, reg , num, buf, numByte);
            C.outPort(TO_I2C_CLIENT).outByte(res).outPortEND();
            break; }
        case I2C_WRITE_MULTIBYTE: {
            char slave = C.inByte();
            char reg = C.inByte();
            unsigned num = 0;
            while(1) 
                if (C.testCT()) break;
                else buf[num++] = (char)C.inByte();
            C.checkPortEND();
            unsigned numByte;
            I2Cres_t res = I2C.writeRegs(slave, reg , num, buf, numByte);
            C.outPort(TO_I2C_CLIENT).outByte(res).outPortEND();
            break; }
        case I2C_READ_REG: {
            char slave = C.inByte();
            char reg = C.inByte();
            C.checkPortEND();
            unsigned val;
            I2Cres_t res = I2C.readReg(slave, reg , val);
            C.outPort(TO_I2C_CLIENT).outByte(res);
            if (res == ACK) C.outByte(val);
            C.outPortEND();
            break; }
        case I2C_READ_REGS: {
            char slave = C.inByte();
            char reg = C.inByte();
            char num = C.inByte();
            C.checkPortEND();
            buf[0] = reg;   //TODO
            for (int i=1; i<num; i++) buf[i]=255;
            I2Cres_t res = I2C.readRegs(slave,reg,num,buf);
            C.outPort(TO_I2C_CLIENT).outByte(res);
            if (res == ACK) for (int i=0; i<num; i++) C.outByte(buf[i]);
            C.outPortEND();
            break; }
        } //switch
        return true;
    }
    return false; 
} 



#if 0
namespace TESTS {

XCPort p4a( XC::PORT_4A );
XCPortBit  scl(p4a, 0b0001);
XCPortBit  sda(p4a, 0b0010);

XC_I2Cmaster I2CM( scl, sda );

XC_I2Cmaster I2Cclient;

static XC_UNUSED void i2C_master_test() {

    I2CM.masterInit(100);
    I2CM.initServer();

    if (I2CM.testDevice(0x20)) {
        unsigned r1; 
        unsigned res = I2CM.readReg(0x20,1,r1);
        (void)res;
    }

    while (1) I2CM.processServer();

}


static XC_UNUSED void i2C_client_test() {

    I2Cclient.initClient();

    if (I2Cclient.testDevice(0x21)) {
        I2Cclient.writeReg(0x21,1,0);
    }
    
}

//only as an example : multiple register configuration array:
static XC_UNUSED const uint8_t regs_18_19_and_15_17[] ={
        18, 19, 1,2,
        15, 17, 3,4,5,
        0 }; //sequence ends with a Zero


};
#endif