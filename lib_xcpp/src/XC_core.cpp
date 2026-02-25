#include <xs1.h>
#include <platform.h>
#include "XC_core.hpp"

 unsigned XCtimeStart1;
 unsigned XCtimeStart2;


namespace XC {

    unsigned referenceHz = PLATFORM_REFERENCE_HZ;
    //micros factor is a 32 bit coefficient to be used in a long mul 
    //to convert ticks to microseconds, by taking msb of the 64bit result
    unsigned micros_factor = (1ULL << 32)/100ULL;                       //42949672
    const int micros_ticks_prediv = 24;
    unsigned micros_ticks_factor  = 1UL << micros_ticks_prediv;
    const int millis_prediv = 8;
    unsigned millis_factor = (1ULL << (32+millis_prediv))/100000ULL;    //10995116

    //this must be called to set the referenceHz when PLL is changed dynamically
    void setReferenceHz(unsigned refHz) {
        if (refHz != referenceHz) {
            if (refHz == 0) refHz = PLATFORM_REFERENCE_HZ;
            referenceHz = refHz;
            unsigned long long val = lmulu(PLATFORM_REFERENCE_HZ,(1ULL << 32)/100ULL).ull;
            micros_factor = ldivu(val,refHz);
            val = lmulu(PLATFORM_REFERENCE_HZ,((1ULL << (32+millis_prediv))/100000ULL)).ull;;
            millis_factor = ldivu(val,refHz);
            val = lmulu(PLATFORM_REFERENCE_HZ, 1UL << micros_ticks_prediv).ull;
            micros_ticks_factor = ldivu(val,refHz);
        }
    }

    //software lock is used to protect this code from simultaneous multi core attempt
    //XCSWLock getTime64Lock;
    //this will store the latest 64 bit time computed
    volatile LongLong_t getTime64Ticks;


    //return the real time 64 bits timer value divided by 100 (depending on PLL).
    //return as "signed long long" is a choice in order to be abble to compare futur and actual easily
    //the number will never reach 63 bit overflow as this would represent 5800 years of continuous execution
    long long micros(){ 
        LongLong_t local = { .ll = getTime64() };
        XC_UNUSED unsigned temp;
        asm("lmul %0,%1,%2,%3,%4,%5":"=r"(local.ulh.lo),"=r"(temp):"r"(local.ulh.lo),"r"(micros_factor),"r"(0),"r"(0));
        asm("lmul %0,%1,%2,%3,%4,%5":"=r"(local.ulh.hi),"=r"(local.ulh.lo):"r"(local.ulh.hi),"r"(micros_factor),"r"(0),"r"(local.ulh.lo));
        return local.ll;
    }

    //same for milliseconds
    long long millis() { 
        LongLong_t local = { .ll = getTime64() };
        local.ull >>= millis_prediv;
        XC_UNUSED unsigned temp;
        asm("lmul %0,%1,%2,%3,%4,%5":"=r"(local.ulh.lo),"=r"(temp):"r"(local.ulh.lo),"r"(millis_factor),"r"(0),"r"(0));
        asm("lmul %0,%1,%2,%3,%4,%5":"=r"(local.ulh.hi),"=r"(local.ulh.lo):"r"(local.ulh.hi),"r"(millis_factor),"r"(0),"r"(local.ulh.lo));
        return local.ll;
    }

    int microsToTicks(unsigned us) {
        long long val = lmulu(micros_ticks_factor,us).ll;
        lsat(val,micros_ticks_prediv);
        int ticks = lextract(val,micros_ticks_prediv);
        return ticks;
    }

    void delayMicros(unsigned delaymicros) { 
        delayTicks( microsToTicks(delaymicros) );
    }

    int delaySyncMicros(int &timeLast, unsigned delaymicros) {
        int ticks = microsToTicks(delaymicros);
        return delaySyncTicks(timeLast, ticks);
    }

    namespace PLL {

        unsigned lastValue;

        //compute number of ticks per seconds based on the pll register value
        unsigned computeTicks(const unsigned pll) {
            const unsigned R = pll & 63;
            const unsigned OD = (pll >> 23) & 7;
            const unsigned divider = (R+1)*(OD+1);
            const unsigned F = pll & 0x1FFF00;  //retreive F*256
            const unsigned FOSC = 24000000;
            unsigned long long numerator = FOSC*100/2/256;
            numerator *= (F+256);
            numerator /= divider;
            const unsigned ticks = numerator;
            return ticks;
        }
        unsigned readValue(){
            read_sswitch_reg(get_local_tile_id(), 6, &lastValue);
            return lastValue;
        }
        unsigned readTicks() { return computeTicks(readValue());}

        int writeValue(const unsigned pll) {
            unsigned pllNew = pll & 0x03FFFFFF;
            if (pllNew==0) {    //used to start reset sequence
                pllNew = readValue();
                write_sswitch_reg_no_ack(get_local_tile_id(), 6, pllNew | (0 << 30) );
                while(1) {}
                __builtin_unreachable();
            } else
            if ((lastValue == 0) || (pll != lastValue)) {
                write_sswitch_reg_no_ack(get_local_tile_id(), 6, pllNew | (3 << 30) );
                lastValue = pllNew;
                return computeTicks(pllNew);
            }
            return 0;
        }

        void stabilize() { 
            waitTimeAfter( getReferenceHz() / 64 ); }    //15.6ms

        void reset() { 
            writeValue(0); }
    }


    const unsigned buff_bitStrSize = 256;
    char buff_bitStr[buff_bitStrSize];

    //return a string made with a array of const char * string[]
    //each bit to 1 will extract a string from the array, otherwise displayed as 0
    //possibility to pass an "invert" value to extract when bit is zero, otherwise displayed at 1
    //typically used to show a comprehensive register content from a chip
    char * bitFieldToStr(const char * str[], unsigned val, unsigned max, unsigned invert) {
        char * p = buff_bitStr;
        char * pmax = p + buff_bitStrSize - 1;
        unsigned index = 0;
        while (max && (p<pmax)) {
            max--;
            if (p != buff_bitStr) { *p=' '; p++; }
            if (((val >> max) ^ (invert >> max)) & 1) {
                char * q = (char*)str[index];
                while (*q && (p<pmax)) { *p=*q; p++; q++; }
            } else {
                if (p<pmax) *(p++)='0'+((invert >> max) & 1);
            }
            index++;
        }
        *p=0;
        return buff_bitStr;
    }


};

XCPort          XCPortUndefined; 
XCPortBit       XCPortBitUndefined;
XCChanend       XCChanendUndefined;
XCChanendPort   XCChanendPortUndefined;

//trampoline C functions using CPP base functions
extern "C" { 
    int XCwaitTimeAfter(const int target)  { return XC::waitTimeAfter(target); }
    int XCdelayTicks(const unsigned ticks) { return XC::delayTicks(ticks); }
    int XCdelaySyncTicks(int & timer, const unsigned ticks) { return XC::delaySyncTicks(timer,ticks); }

    //return 64bit timer value (same for each core on a tile)
    long long XCgetTime64()     { return XC::getTime64(); }
    //return 64bits timer value rounded in microseconds
    long long XCmicros()        { return XC::micros();    }
    //return 64bits timer value rounded in milliseconds
    long long XCmillis()        { return XC::micros();    }
    //provide a delay by stoping the task with help of a dedicated core timer.
    void XCdelayMicros(unsigned delaymicros) { XC::delayMicros(delaymicros); }
    //provide a delay by stoping the task with help of a dedicated core timer. successive coherent delays are managed via the provided variable
    int  XCdelaySyncMicros(int &timeLast, unsigned delaymicros) { return XC::delaySyncMicros(timeLast,delaymicros); }
    //update all time related constant. to be used when updating the CPU PLL
    void XCsetReferenceHz(unsigned refhz)   { XC::setReferenceHz(refhz); }
    unsigned XCgetReferenceHz() { return XC::getReferenceHz(); };
    //set the PLL register
    int XCPLLwriteValue(const unsigned pll) { return XC::PLL::writeValue(pll); }
    //get the PLL register
    unsigned XCPLLreadValue()   { return XC::PLL::readValue(); }
    //get the number of CPU ticks considering the PLL value
    unsigned XCPLLreadTicks()   { return XC::PLL::readTicks(); }
    //wait about 15ms for stabilizing the PLL, when large changes are made
    void XCPLLstabilize()       { XC::PLL::stabilize(); }
    //just reboot/reset the CPU
    void XCPLLreset()           { XC::PLL::reset(); }
    //used to gently pass control to another task running on same core
    __attribute__ ((weak)) 
    void XCyield()              { XC::yield(); }

};

asm (
    "\n	.globl	XC_USE_TIMER"
    "\n	.align	4"
    "\n	.type	XC_USE_TIMER,@function"
    "\n	.cc_top XC_USE_TIMER.function,XC_USE_TIMER"
    "\nXC_USE_TIMER: retsp 0"
    "\nXC_USE_TIMER_END:"
    "\n	.cc_bottom XC_USE_TIMER.function"
    "\n	.set	XC_USE_TIMER.nstackwords,0"
    "\n	.globl	XC_USE_TIMER.nstackwords"
    "\n	.set	XC_USE_TIMER.maxcores,1"
    "\n	.globl	XC_USE_TIMER.maxcores"
    "\n	.set	XC_USE_TIMER.maxtimers,1"
    "\n	.globl	XC_USE_TIMER.maxtimers"
    "\n	.set	XC_USE_TIMER.maxchanends,0"
    "\n	.globl	XC_USE_TIMER.maxchanends"
    "\n	.size	XC_USE_TIMER, XC_USE_TIMER_END-XC_USE_TIMER"
    "\n"
    "\n	.globl	XC_USE_CHANEND"
    "\n	.align	4"
    "\n	.type	XC_USE_CHANEND,@function"
    "\n	.cc_top XC_USE_CHANEND.function,XC_USE_CHANEND"
    "\nXC_USE_CHANEND: retsp 0"
    "\nXC_USE_CHANEND_END:"
    "\n	.cc_bottom XC_USE_CHANEND.function"
    "\n	.set	XC_USE_CHANEND.nstackwords,0"
    "\n	.globl	XC_USE_CHANEND.nstackwords"
    "\n	.set	XC_USE_CHANEND.maxcores,1"
    "\n	.globl	XC_USE_CHANEND.maxcores"
    "\n	.set	XC_USE_CHANEND.maxtimers,0"       
    "\n	.globl	XC_USE_CHANEND.maxtimers"
    "\n	.set	XC_USE_CHANEND.maxchanends,1"
    "\n	.globl	XC_USE_CHANEND.maxchanends"
    "\n	.size	XC_USE_CHANEND, XC_USE_CHANEND_END-XC_USE_CHANEND"
    "\n"
);


