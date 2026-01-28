#ifndef _XC_SPI_BASE_HPP_
#define _XC_SPI_BASE_HPP_

#include "XC_core.hpp"

class XC_SPI {
//see https://en.wikipedia.org/wiki/Serial_Peripheral_Interface
//for the 4 modes of operations
int         mode;     //cpol-cpha   00 01 10 11
XCPortBit       &clk;
XCPortBit       &mosi;
XCPortBit       &miso;
int         period;
public:
    XC_SPI(unsigned m, XCPortBit &cl, XCPortBit &mo, XCPortBit &mi, int p = 100) :
    mode(m),clk(cl), mosi(mo), miso(mi),period(p) { init(); }

    void init() { if (mode <2) clk.clr(); else clk.set(); }

    template < int size >
    unsigned transfer(unsigned val) {
        val <<= (32-size);  //MSB first
        asm("bitrev %0,%0":"=r"(val):"0"(val));
        XCTimer timer; timer.getLocal();
        int time = timer();
        unsigned res = 0;
        for (unsigned i=0; i<size; i++, res<<=1, val>>=1) {
            timer.waitAfter(time+period/2);
            clk = !clk; 
            if ((mode==0)||(mode==3)) mosi = val & 1; 
            else res |= miso;
            time = timer.waitAfter(time+period);
            clk = !clk; 
            if ((mode==1)||(mode==2)) mosi = val & 1; 
            else res |= miso;
        }
        timer.waitAfter(time+period/2);
        return res;
    }
    unsigned transfer8(unsigned val)  { return transfer<8>(val);  }
    unsigned transfer16(unsigned val) { return transfer<16>(val); }
    unsigned transfer24(unsigned val) { return transfer<24>(val); }
    unsigned transfer32(unsigned val) { return transfer<32>(val); }
};

#endif //_XC_SPI_BASE_HPP_