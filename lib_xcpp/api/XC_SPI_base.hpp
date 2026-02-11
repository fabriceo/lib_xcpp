#ifndef _XCSpi_BASE_HPP_
#define _XCSpi_BASE_HPP_

#include "XC_core.hpp"

class XCSpi {
//see https://en.wikipedia.org/wiki/Serial_Peripheral_Interface
//for the 4 modes of operations
public:
    XCPortBit   &clk;
    XCPortBit   &mosi;
    XCPortBit   &miso;
    int         mode;     //cpol bit1, cpha bit0   00 01 10 11
    int         period;

    //constructor
    XCSpi( XCPortBit &cl, XCPortBit &mo, XCPortBit &mi, unsigned m = 0, int p = 100) :
    clk(cl), mosi(mo), miso(mi),mode(m),period(p) { }

    //set the clock pin according to polarity 
    void init() { 
        const unsigned cpol = (mode >> 1) & 1; //clock polarity
        clk.set( cpol );
    }

    //to be used to change SPI mode
    void init(unsigned m) { 
        mode = m; init();
    }
    //to be used to change SPI mode and speed
    void init(unsigned m, int p) { 
        mode = m; period = p; init();
    }

    unsigned transfer(unsigned val, unsigned size) {
        const unsigned cpha = mode & 1; //clock phase
        val <<= (32-size);  //MSB first
        asm("bitrev %0,%1":"=r"(val):"r"(val));
        XCTimer timer; timer.getLocal();
        int time = timer();
        unsigned res = 0;
        for (unsigned i=0; i<size; i++, res<<=1, val>>=1) {
            if (cpha ==0 ) mosi = val & 1; 
            time = timer.waitAfter(time+period/2);
            clk = !clk; 
            if (cpha == 1) mosi = val & 1;
            if (cpha == 0) res |= miso;
            time = timer.waitAfter(time+period/2);
            clk = !clk; 
            if (cpha == 1) res |= miso;
        }
        timer.waitAfter(time+period/2);
        return res;
    }
};


//object class to structure access to latches and shift registers on the SPI bus.
//rck is the port corresponding to the "latch" pin.
//nbits is multiple of 8 and represents number of bits shiffted
//type T gives the possibility to limit the value of bits according to an enum declaration
template< XCSpi & SPI, XCPortBit &rck, unsigned nbits, typename T = unsigned >
class XCSpiLatch {
private:
    unsigned reg;       //hold up to 32bits of informations to be latched
    unsigned oldReg;    //previous value from last update
    bool needUpdate_;
    XCTimer timer;
public:
    //initialize the 32bits register with provided value and clear SPI_RCK line
    XCSpiLatch& init(unsigned val) { 
        reg = oldReg = val;
        needUpdate_ = true;
        timer.getLocal();
        rck.clr();
        timer.waitTicks(SPI.period); 
        return *this; 
    }
    bool needUpdate() { return needUpdate_; }
    XCSpiLatch& checkUpdate() { needUpdate_ = (reg != oldReg); return *this; }  
    //modify the 32bits register by setting some bits according to mask parameter
    XCSpiLatch&  set(unsigned val)      { reg = val; return *this; }
    //modify the 32bits register by setting some bits according to mask parameter
    XCSpiLatch&  setMask(unsigned mask) { return set( reg | mask); }
    //modify the 32bits register by setting a specific bits
    XCSpiLatch&  setBit(T bit)   { return setMask(1UL << bit);  }
    //modify the 32bits register by setting a specific bits
    XCSpiLatch&  setBit(T bit, unsigned val)   { 
        if (val) return setMask(1UL << bit);
        else return clrMask(1UL << bit);  }
    //modify the 32bits register by clearing some bits according to mask parameter
    XCSpiLatch&  clr() { return set(0); }
    //modify the 32bits register by clearing some bits according to mask parameter
    XCSpiLatch&  clrMask(unsigned mask) { return set(reg & ~mask); }
    //modify the 32bits register by clearing some bits according to mask parameter
    XCSpiLatch&  clrBit(T bit)   { return clrMask(1UL << bit); }
    //modify the 32bits register with a bitwise "and" and "or"
    XCSpiLatch&  andOrMask(unsigned and_, unsigned or_) { return set((reg & and_)| or_); }
    //return the value of the shadow register representing the physical latch
    unsigned get() const { return reg; }
    //return the value of the shadow register of a given bit
    unsigned getBit(T bit) { return (reg >> bit) & 1UL; }
    //return the value of the shadow register of a given bit
    unsigned get(T bit) { return getBit(bit); }
    operator unsigned () const { return get(); }
    //send the value of the 32bit register on the SPI bus
    XCSpiLatch&  update() {
        SPI.transfer( reg, nbits);
        rck.set();                      //set SPI_RCKx to 1 to latch output
        timer.waitTicks(SPI.period/2);
        rck.clr();                      //set SPI_RCKx to 0
        timer.waitTicks(SPI.period/2);
        needUpdate_ = false; oldReg = reg;
        return *this;
    }
};


#endif //_XCSpi_BASE_HPP_