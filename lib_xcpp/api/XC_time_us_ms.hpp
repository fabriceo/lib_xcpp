#ifndef _XC_TIME_US_MS_HPP_
#define _XC_TIME_US_MS_HPP_

#include "XC_conf.hpp"

#include "XC_types_enums.hpp"
#include "XC_externs.hpp"
#include "XC_asm.hpp"

//extend the XC 32bits timer to 64bits, and manage reference_hz depending on real pll value
namespace XC {

    static inline TileID_t local_tile_id() { 
        TileID_t res; asm("ldc %0,_local_tile_id":"=r"(res)); return res; }

    extern TileID_t tileMainStarted;
    extern unsigned afterMain;
    static inline unsigned setTileMainStarted() {
        tileMainStarted = XC::local_tile_id();
        return (afterMain = tileMainStarted);
    }
    static inline unsigned setTileAppStarted() { return setTileMainStarted(); }


    extern unsigned randomBase;
    const static unsigned randomPoly = 0xEDB88320;   //0xEB31D82E seems better ?

    inline void randomInit() { randomBase = getTime(); }
    inline void randomInit(const unsigned val) { randomBase = val; }
    inline int randomWhite() {
        unsigned  rnd = randomBase;
        // sugested in xmos application note, here : https://xcore.github.io/doc_tips_and_tricks/pseudo-random-numbers.html
        asm ("crc32 %0,%1,%2":"=r"(rnd):"r"(-1),"r"(randomPoly),"0"(rnd));
        return (randomBase = rnd);
    }
    inline int randomTpdf() {
        unsigned  rnd1 = randomBase;
        // sugested in xmos application note, here : https://xcore.github.io/doc_tips_and_tricks/pseudo-random-numbers.html
        asm ("crc32 %0,%1,%2":"=r"(rnd1):"r"(-1),"r"(randomPoly),"0"(rnd1));
        unsigned  rnd2 = rnd1;
        asm ("crc32 %0,%1,%2":"=r"(rnd2):"r"(-1),"r"(randomPoly),"0"(rnd2));
        randomBase = rnd2;
        // better to use unsigned on XS2A due to instruction set for shr able to run on dual lane vs ashr single lane
        int rnd = ( rnd1 >> 1 ) - ( rnd2 >> 1 ); // same as (rnd1>>1)+(rnd2>>1) on signed int (verified :)
        return rnd;
     }

    //this is used to store the time stamp of the tile when a first task is launched, calling resetTimeTile()
    extern int tileTimeStamp;
    extern unsigned cmdLineSize;
    extern char * cmdLinePtr;


    inline int resetTimeTile() { return (tileTimeStamp = getTime()); }
    inline int getTimeTile() { return getTime()-tileTimeStamp; }
    inline int getTimeTile(int gottime) { return gottime-tileTimeStamp; }

    //this will store the latest 64 bit time computed
    extern volatile LongLong_t getTime64Ticks;
    //returns a global timer value in 64 bits by extending internal gettime instruction
    //needs to be called from any core at least every 10 seconds otherwise will loose 31bit overflow
    //this needs to be called at least every 10 seconds otherwise will loose 31bit overflow
    //return 64 bits value representing more than 5000 years so will never rollout (always positive)
    inline long long getTime64() { asm volatile("### getTime64()");
        
        //load time in intermediate registers with 64bits LDD instruction
        LongLong_t previous = { .ll = getTime64Ticks.ll };
        //maccu used as a single instruction to perform 64 bits addition of elapsed time
        unsigned elapsed = gettime() - previous.ulh.lo;
        maccu(&previous.ull,elapsed,1);
        //store 64bit result in a single STD instruction
        getTime64Ticks.ll = previous.ull;
        return previous.ll;
    }


    //return the real time 64 bits timer value divided by a computed factor to represent microseconds.
    //return as "signed long long" is a choice in order to be abble to compare futur and actual easily
    //the number will never reach 63 bit as this would represent 2900 years of continuous execution
    long long micros();

    //return the real time 64 bits timer value divided by a computed factor to represent milliseconds.
    //return as "signed long long" is a choice in order to be abble to compare futur and actual easily
    //the number will never reach 63 bit as this would represent thousands of years of continuous execution
    long long millis();

    //use the local thread timer to provide a blocking delay in microseconds. 
    //Maximum 10seconds
    void delayMicros(unsigned delaymicros);

    //use the local thread timer to provide a blocking delay in microseconds. 
    //Maximum 10seconds, synchronizing with a given variable to avoid jitter
    int delaySyncMicros(int &timeLast, unsigned delaymicros);

        //sets the number of ticks for 1 seconds. To be used after PLL changes to compte micros and millis factors
    void setReferenceHz(unsigned refhz);

    extern unsigned referenceHz;
    //returns number of ticks within 1 second
    inline unsigned getReferenceHz() { 
        if (referenceHz) return referenceHz;
    //this ifdef is just to avoid an error by Intellisense due to unseen PLATFORM_REFERENCE_HZ
    #ifdef PLATFORM_REFERENCE_HZ
        else return referenceHz = PLATFORM_REFERENCE_HZ; 
    #endif
    }

};


#endif