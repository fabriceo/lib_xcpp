#ifndef _XC_SPI_BASE_HPP_
#define _XC_SPI_BASE_HPP_

#include "XC_core.hpp"

class XC_SPI {
//see https://en.wikipedia.org/wiki/Serial_Peripheral_Interface
//for the 4 modes of operations
int         mode;     //cpol bit 1, cpha bit 0   00 01 10 11
XCPortBit   &clk;
XCPortBit   &mosi;
XCPortBit   &miso;
public:
int         period;

    XC_SPI(unsigned m, XCPortBit &cl, XCPortBit &mo, XCPortBit &mi, int p = 100) :
    mode(m),clk(cl), mosi(mo), miso(mi),period(p) { }

    void init() { 
        const unsigned cpol = (mode >> 1) & 1; //clock polarity
        clk.set( cpol );
    }

    unsigned transfer(unsigned val, unsigned size) {
        const unsigned cpha = mode & 1; //clock phase
        val <<= (32-size);  //MSB first
        asm("bitrev %0,%1":"=r"(val):"r"(val));
        XCTimer timer; timer.getLocal();
        int time = timer();
        unsigned res = 0;
        for (unsigned i=0; i<size; i++, res<<=1, val>>=1) {
            if (cpha==0) mosi = val & 1; 
            timer.waitAfter(time+period/2);
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

#endif //_XC_SPI_BASE_HPP_