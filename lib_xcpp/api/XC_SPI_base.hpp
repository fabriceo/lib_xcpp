#ifndef _XC_SPI_BASE_HPP_
#define _XC_SPI_BASE_HPP_

#include "XC_core.hpp"

class SPI_soft {
public:
int         mode;     //cpol-cpha   00 01 10 11
XCPin       &clk;
XCPin       &mosi;
XCPin       &miso;
int         period;
    SPI_soft(unsigned m, XCPin &cl, XCPin &mo, XCPin &mi, int p = 100) :
    mode(m),clk(cl), mosi(mo), miso(mi),period(p) { }

    void init() { if (mode <2) clk.clr(); else clk.set(); }

    template < int size >
    unsigned out(unsigned val) {
        XCTimerLocal timer;
        unsigned res = 0;
        for (unsigned i=0; i<size; i++, res<<=1, val>>=1) {
            if ((mode & 1)==0) mosi = val & 1; 
            timer.waitTicks(period);
            clk = !clk; 
            if (mode & 1) mosi = val & 1; 
            res |= (miso?1:0);
            timer.waitTicks(period);
            clk = !clk; 
        }
        timer.waitTicks(period);
        res <<= (32-size);
        asm("bitrev %0,%0":"=r"(res):"0"(res));
        return res;
    }
};

#endif //_XC_SPI_BASE_HPP_