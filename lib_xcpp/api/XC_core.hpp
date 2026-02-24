#ifndef _XC_CORE_HPP_
#define _XC_CORE_HPP_

//author: fabriceo 
//date:   december 2025
//inspired from https://github.com/xcore/tool_axe 
//and from XMOS xcore standard library

// Object Class to be used by user program, start with XC and the first letter in capital
// example : XCPort p; XCTimer t; XCLock l; XCChanend c;

#include <xs1.h>
#include <platform.h>
#include <stdint.h>
#include <stdio.h>

//various helpers macros

#ifndef XC_UNUSED
#define XC_UNUSED       __attribute__ ((unused))
#endif
#ifndef XC_NOINLINE
#define XC_NOINLINE     __attribute__ ((noinline))
#endif
#ifndef XC_NAKED
#define XC_NAKED        __attribute__ ((naked))
#endif
#ifndef XC_DUAL_ISSUE
#define XC_DUAL_ISSUE   __attribute__ ((dual_issue))
#endif
#ifndef XC_SINGLE_ISSUE
#define XC_SINGLE_ISSUE __attribute__ ((single_issue))
#endif

#ifndef XC_ALIGNED
#define XC_ALIGNED(_X)  __attribute__ ((aligned(_X)))
#endif

#ifndef XC_JOIN0
#define XC_JOIN0(x,y)   x ## y
//concat 2 parameters
#define XC_JOIN(x,y)    XC_JOIN0(x,y)
#endif

#ifndef XC_STRINGIFY
#define XC_STRINGIFY_I(...) #__VA_ARGS__
//generate a string for the given parameter with surrounding ""
#define XC_STRINGIFY(_S)    XC_STRINGIFY_I(_S)
#endif

#ifndef XC_UNIQUE_LABEL
#define XC_UNIQUE_LABEL_II(_BNAME, _CNT)    _BNAME ## _CNT
#define XC_UNIQUE_LABEL_I(_BNAME, _CNT)     XC_UNIQUE_LABEL_II(_BNAME, _CNT)
//provide a unique label by adding the compiler unique counter value
#define XC_UNIQUE_LABEL(_BNAME)             XC_UNIQUE_LABEL_I(_BNAME, __COUNTER__)
#endif

//set the adress of a function in a variable
#define XC_FUNC_ADDRESS(_f,_n)     do { register unsigned _r asm("r11"); asm ("ldap %0," #_f : "=r"(_r)); _n=r; } while(0)
//set the stacksize of a function in a variable (only for extern "c" linkage)
#define XC_FUNC_NSTACKWORDS(_f,_n) do { asm ("ldc %0,  " #_f ".nstackwords"  : "=r"(_n) ); } while (0)

//check for minimum c++11
#ifdef __cplusplus
#if __cplusplus < 201103L
#warning missing -std=c++11 in compiler options
#endif


//this XCTrace class is used to verify the I2C class with fast printing signal
//if debug_printf is not defined then the compiler should remove unutilized code
template<int size = 256> class XCTrace {
private:
static_assert(size>=2,"invalid size for XCTrace< >");
    char trace[size];
    int  count;

public:
    unsigned printOn;
    XCTrace() : printOn(0) { traceClear(); }
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
        if (printOn>=3) debug_printf(trace); 
        if (size>2) traceClear(); }
};

#ifndef XCTraceSize
#if defined(debug_printf)
#define XCTraceSize 256
#else
#define XCTraceSize 2
#endif
#endif

namespace XC {
//some basic types used in XC classes

    //resource type as unsigend integer representing resource adress in the processor
    typedef unsigned Resource_t;
    //xcore identifier to allocate a resource type with getr instruction
    typedef enum  {
        TYPE_PORT    = 0, //non allocatable
        TYPE_TIMER   = 1, TYPE_CHANEND = 2, TYPE_SYNC    = 3, TYPE_THREAD  = 4, TYPE_LOCK    = 5, 
        TYPE_CLKBLK  = 6, TYPE_SWMEM   = 8, TYPE_PS      =11, TYPE_CONFIG  =12 //non allocatable
    } ResourceType_t;

    //xcore identifier for each clock block
    typedef enum { 
        CLK_REF    = 0x001, CLK_XCORE = 0x101,
        CLKBLK_REF = 0x006, CLKBLK_1  = XS1_CLKBLK_1, CLKBLK_2 = XS1_CLKBLK_2, CLKBLK_3 = XS1_CLKBLK_3, CLKBLK_4 = XS1_CLKBLK_4, CLKBLK_5 = XS1_CLKBLK_5,
    } Clock_t;

    // list of all XMOS ports, not realy used
    typedef enum {
        PORT_1A = XS1_PORT_1A,  PORT_1B = XS1_PORT_1B,  PORT_1C = XS1_PORT_1C,  PORT_1D = XS1_PORT_1D,  //one bit ports
        PORT_1E = XS1_PORT_1E,  PORT_1F = XS1_PORT_1F,  PORT_1G = XS1_PORT_1G,  PORT_1H = XS1_PORT_1H,  //one bit ports
        PORT_1I = XS1_PORT_1I,  PORT_1J = XS1_PORT_1J,  PORT_1K = XS1_PORT_1K,  PORT_1L = XS1_PORT_1L,  //one bit ports
        PORT_1M = XS1_PORT_1M,  PORT_1N = XS1_PORT_1N,  PORT_1O = XS1_PORT_1O,  PORT_1P = XS1_PORT_1P,  //one bit ports

        PORT_4A = XS1_PORT_4A,  PORT_4B = XS1_PORT_4B,  PORT_4C = XS1_PORT_4C,  PORT_4D = XS1_PORT_4D,  //4 bits ports
        PORT_4E = XS1_PORT_4E,  PORT_4F = XS1_PORT_4F,                                                  //4 bits ports

        PORT_8A = XS1_PORT_8A,  PORT_8B = XS1_PORT_8B,  PORT_8C = XS1_PORT_8C,  PORT_8D = XS1_PORT_8D,  //8 bits ports

        PORT_16A= XS1_PORT_16A, PORT_16B= XS1_PORT_16B, PORT_16C= XS1_PORT_16C, PORT_16D= XS1_PORT_16D, //16 bits ports

        PORT_32A= XS1_PORT_32A, PORT_32B= XS1_PORT_32B,                                                 //32 bits ports
  } Port_t;

    //this function returns a number between 0..31 corresponding to each of the above ports
    //max 16 cpu instructions in single issue. not used yet
    constexpr unsigned portCompact(const unsigned x) { 
    //1->0, 4-> x10, 8-> x16, 10 -> x1A, 20 -> x1E,
        return ((x >> 8) & 0xf) + (((x>>16)==4)? 0x10 :(((x>>16)==8)? 0x16 : (((x>>16)==16)? 0x1A : (((x>>16)==32)? 0x1E : 0))));
    }
    //predefined and reserved tokens values
    typedef enum {
        CT_START  = 0,
        CT_END    = 1,      //End - free up interconnect and inform target
        CT_PAUSE  = 2,      //Pause - free up interconnect but do not inform target
        CT_ACK    = 3,      //Acknowledge operation completed successfully
        CT_NACK   = 4,      //Acknowledge that there was an error
        CT_READN  = 0x80, CT_READ1, CT_READ2, CT_READ4, CT_READ8, WT_WRITEN, CT_WRITE1, CT_WRITE2, CT_WRITE4, CT_WRITE8, CT_CALL,
        //priviledged tokens
        CT_WRITEC = 0xc0, CT_READC, CT_PSCTRL, CT_SSCTRL,
        //link-level token (not stored in chanend buffer)
        CT_CREDIT8 = 0xE0, CT_CREDIT64, CT_LRESET, CT_CREDIT_RESET, CT_CREDIT16, CT_HELLO = 0xE6,
  } CTValue_t ;

  //token used to communicate across tiles between client and server. Experimental
  typedef enum {
        PORT_SERVER = 0x40, PORT_CLIENT = 0x41, //used for communicating across core/tile between Port client/server
        I2C_SERVER  = 0x50, I2C_CLIENT  = 0x51, //used for communicating across core/tile between I2C client/server
  } PortClientServer_t;
};

//some inline functions specific to xcore architecture
namespace XC {
    //returns current thread identifier (0..7)
    inline unsigned getid() { register unsigned thread asm("r11"); asm volatile("get %0,id":"=r"(thread)); return thread; }
    //returns current thread identifier (0..7)
    inline unsigned getThreadID() { return getid(); }
    //returns value of the CPU 32 bits timer, always volatile access
    inline unsigned gettime() { unsigned time; asm volatile("gettime %0":"=r"(time)); return time; }
    //returns value of the CPU 32 bits timer
    inline unsigned getTime() { return gettime();  }
    //reserves a resource from the CPU
    inline unsigned getRessource(const ResourceType_t t) { unsigned r; asm volatile("getr %0,%1":"=r"(r):"n"(t)); return r; }
    //gets the value of the thread SR register
    inline unsigned getsr() { register unsigned sr asm("r11"); asm("get %0,sr":"=r"(sr)); return sr; }
    //sets the value of the thread SR register
    inline void     setsr(const unsigned sr)     { asm volatile("setsr %0" ::"n"(sr)); } //immediate value (constant only)
    //clears the value of the thread SR register
    inline void     clrsr(const unsigned sr)     { asm volatile("clrsr %0" ::"n"(sr)); } //immediate value (constant only)
    //exception raised if the provided parameter is false (0)
    inline void     ecallFalse(const unsigned x) { asm volatile("ecallf %0" ::"r"(x)); }
    //exception raised if the provided parameter is true (non zero)
    inline void     ecallTrue(const unsigned x)  { asm volatile("ecallt %0" ::"r"(x)); }
    //clears the threads eeble event flag. also disable each resource's event
    inline void     clre() { asm volatile("clre"); }
    //clears the threads eeble event flag. also disable each resource's event
    inline void     clrEvents()     { clre();   }
    //sets the EEBLE bit in the thread SR register, which enables events to be processed
    inline void     enableEvents()  { setsr(1); }
    //clears the EEBLE bit in the thread SR register, which disable events processing
    inline void     disableEvents() { clrsr(1); }
    //sets the IEBLE bit in the thread SR register, which enables interrupts to be processed
    inline void     setInterrupts() { setsr(2); }
    //clears the IEBLE bit in the thread SR register, which disable interrupts processing
    inline void     clrInterrupts() { clrsr(2); }
    //synchronize a slave thread with a master thread (wait an MSYNC instruction) 
    inline void     ssync()   { asm volatile("ssync"); }
    //start all slave tasks attached to the provided synchronizer (they should wait with SSYNC)
    inline void     msync(const unsigned sy) { asm volatile("msync res[%0]"::"r"(sy)); }
    //frees all slave tasks attached to the provided synchronizer (they should wait with SSYNC)
    inline void     mjoin(const unsigned sy) { asm volatile("mjoin res[%0]"::"r"(sy)); }
    //no-operation
    inline void     nop()     { asm volatile("nop"); }
    //force compiler to reload any variable, considering registers might have been corrupted.
    inline void     barrier() { asm volatile("":::"memory"); }//,"r0","r1","r2","r3","r4","r5","r6","r7","r8","r9","r10","r11");
};

//partial support of "select" statement without needing <xcore.h>
namespace XC {
  //this function will return an interger to be used within a switch statement
  //the return will be done via an event set with a vector defined by &XC::selectVector
  static __attribute__ ((noinline,naked,unused)) unsigned selectWait() { 
      asm volatile("waiteu":::"r11"); };
  //same as selectWait but do not wait for the event : 
  //if no event raised then the value returned will be the one given as default
  static __attribute__ ((noinline,naked,unused))  unsigned selectNoWait(unsigned def) { 
      asm volatile("setsr 1 ; clrsr 1 ; retsp 0":::"r11"); }
  //code used the entry point for event vector's providing selector in their ED register
  static __attribute__ ((noinline,naked,dual_issue)) void selectVector() {
      asm volatile( //this code is compatible with both dual and single issue calls
        "get r11,ed ; { add r0,r11,0 ; retsp 0 }"); }

};

namespace XC {
  //imediately switch to next task in round robin list (if any)
  XC_UNUSED static void yield() { 
#ifdef XC_SCHEDULER_H
    XCSchedulerYield();
#endif
  };
  //imediately switch to next task in round robin list (if any) and return here only after a delay (in cpu ticks)
  XC_UNUSED static void yieldDelay(unsigned delayticks) { 
#ifdef XC_SCHEDULER_H
    XCSchedulerYieldDelay(delayticks);
#endif
  };
  //imediately switch to next task in round robin list (if any) and return here only after a delay (in cpu ticks) with no jitter
  XC_UNUSED static void yieldDelaySync(int &localTime, unsigned delayticks) { 
#ifdef XC_SCHEDULER_H
    XCStaskPtr_t res;
    localTime = XCS_SET_TIME(delayticks);
    do  res  = XCSchedulerYield();
    while  ( ! XCS_END_TIME(localTime) );
    return ;
#endif
  };
};

//some 64bits instructions
namespace XC {

  //union to represent 64 bit number in different forms
  typedef XC_ALIGNED(8) union LongLong_u  {
      long long ll; unsigned long long ull;
      struct lh_s  {  long lo; long hi; } lh;
      struct ulh_s {  unsigned lo; unsigned hi; } ulh;
      unsigned u[2]; int i[2]; char ch[8]; short s[4];
  } LongLong_t;

  //assembly routine to optimze code requiring double size access

  //loads a target LongLong_t with 64bits value stored at base[index]
  inline void ldd(LongLong_t * x,const void * base, const unsigned index) {
      asm("ldd %0,%1,%2[idx]":"=r"(x->lh.hi),"=r"(x->lh.lo):"r"(base), [idx] "r"(index));
  }
  //loads a target Long Long with 64bits value stored at base[index]
  inline void ldd(long long * x,const void * base, const unsigned index) { ldd((LongLong_t*)x,base,index); }
  //returns a LongLong_t with 64bits value stored at base[index]
  inline LongLong_t ldd(const void * base, const unsigned index) { LongLong_t res; ldd(&res,base,index); return res; }

  //loads a target Long Long with 64bits value stored at base[ immediate 0..11 ]
  inline void lddi(LongLong_t * x,const void * base, const unsigned index) {
      if (__builtin_constant_p(index) && (index<12))
        asm("ldd %0,%1,%2[idx]":"=r"(x->lh.hi),"=r"(x->lh.lo):"r"(base), [idx] "n"(index));
      else ldd(x,base,index);
  }
  //loads a target Long Long with 64bits value stored at base[ immediate 0..11 ]
  inline void lddi(long long * x,const void * base, const unsigned index) { lddi((LongLong_t*)x, base, index); }
  //returns a LongLong_t with 64bits value stored at base[ immediate 0..11 ]
  inline LongLong_t lddi(const void * base, const unsigned index) { 
      LongLong_t res; lddi(&res,base,index); return res;  }

  inline void std(LongLong_t x,const void * base, const unsigned index) {
      asm("std %0,%1,%2[idx]"::"r"(x.lh.hi),"r"(x.lh.lo),"r"(base), [idx] "r"(index));
  }
  inline void std(long long x,const void * base, const unsigned index) { 
    LongLong_t ll = { .ll = x }; std(ll, base, index); }

  inline void stdi(LongLong_t x,const void * base, const unsigned index) {
      if (__builtin_constant_p(index) && (index<12))
        asm("std %0,%1,%2[idx]"::"r"(x.lh.hi),"r"(x.lh.lo),"r"(base), [idx] "n"(index));
      else std(x,base,index);
  }
  inline void stdi(long long x,const void * base, const unsigned index) { 
    LongLong_t ll = { .ll = x }; stdi(ll, base, index);}

  inline void lsat(long long * x,const unsigned mant) {
      LongLong_t * ll = (LongLong_t *)x;
      asm("lsat %0,%1,%2":"=r"(ll->lh.hi),"=r"(ll->lh.lo):"r"(mant),"0"(ll->lh.hi),"1"(ll->lh.lo));
  }
  inline LongLong_t lsat(long long x,const unsigned mant) {
      LongLong_t res; LongLong_t ll = { .ll = x }; 
      asm("lsat %0,%1,%2":"=r"(res.lh.hi),"=r"(res.lh.lo):"r"(mant),"0"(ll.lh.hi),"1"(ll.lh.lo));
      return res;
  }

  inline int lextract(long long x,const unsigned mant) {
      LongLong_t ll = { .ll = x };
      int res;
      asm("lextract %0,%1,%2,%3,32":"=r"(res):"r"(ll.lh.hi),"r"(ll.lh.lo),"r"(mant));
      return res;
  }

  inline void maccu(unsigned long long * x, const unsigned a, const unsigned b) {
      LongLong_t * ull = (LongLong_t *)x;
      asm ("maccu %0,%1,%2,%3"
            : "=r"(ull->ulh.hi),"=r"(ull->ulh.lo)
            : "r"(a),"r"(b),"0"(ull->ulh.hi),"1"(ull->ulh.lo) );
  }
  inline LongLong_t maccu(unsigned long long x, const unsigned a, const unsigned b) {
      LongLong_t ll = { .ull = x };
      LongLong_t res;
      asm ("maccu %0,%1,%2,%3"
            : "=r"(res.ulh.hi),"=r"(res.ulh.lo)
            : "r"(a),"r"(b),"0"(ll.ulh.hi),"1"(ll.ulh.lo) );
      return res;
  }

  inline void maccs(long long * x, const int a, const int b) {
      LongLong_t * ll = (LongLong_t *)x;
      asm ("maccs %0,%1,%2,%3"
            : "=r"(ll->ulh.hi),"=r"(ll->ulh.lo)
            : "r"(a),"r"(b),"0"(ll->ulh.hi),"1"(ll->ulh.lo) );
  }
  inline LongLong_t maccs(long long x, const int a, const int b) {
      LongLong_t ll = { .ll = x };
      LongLong_t res;
      asm ("maccs %0,%1,%2,%3"
            : "=r"(res.ulh.hi),"=r"(res.ulh.lo)
            : "r"(a),"r"(b),"0"(ll.ulh.hi),"1"(ll.ulh.lo) );
      return res;
  }

  inline unsigned ldivu(unsigned long long x, const unsigned d, unsigned * remainder) {
      LongLong_t ull = { .ull = x };
      unsigned div; unsigned rem;
      asm ("ldivu %0,%1,%2,%3,%4"
            : "=r"(div),"=r"(rem)
            : "r"(ull.ulh.hi),"r"(ull.lh.lo),"r"(d) );
      *remainder = rem;
      return div;

  }
  inline unsigned ldivu(unsigned long long x, const unsigned d) { XC_UNUSED unsigned rem; return ldivu(x,d,&rem); }

  inline LongLong_t lmulu(const unsigned a, const unsigned b, const unsigned c=0, const unsigned d=0) {
      LongLong_t res;
      asm("lmul %0,%1,%2,%3,%4,%5" : "=r"(res.ulh.hi),"=r"(res.lh.lo):"r"(a),"r"(b),"r"(c),"r"(d));
      return res;
  }

  inline void crc32(unsigned int &crc, unsigned data, unsigned poly) { 
    unsigned crcin = crc; unsigned int crcout;
    asm volatile("crc32 %0,%1,%2":"=r"(crcout):"r"(data),"r"(poly),"0"(crcin));
    crc = crcout;
  }

};

//cpp version of the xmos software lock library.
//a lock object can be instanciated anywhere as it can be shared by multiple tasks.
class XCSWLock {
    volatile unsigned lock;
public:
    XCSWLock() : lock(0) { }
    //wait and set the lock
    inline void acquire() {
        unsigned myID = XC::getid()+1;
        do { while ( lock ) { }; lock = myID;
        //waiting some cpu cycle due to potential non-priority task having set the lock
        asm volatile("nop;nop;nop;nop;nop;nop;nop"); } 
        while( lock != myID ); } 

    //release the previously aquired lock
    inline void release() { lock = 0; }

    //try to acquire, return 0 if failed otherwise thread ID + 1 (non zero)
    inline unsigned tryAcquire() {
        unsigned myID = XC::getid()+1;
        if (lock == 0) {
            lock = myID;
            asm volatile("nop;nop;nop;nop;nop;nop;nop");
            return (lock == myID);
        }
        return 0;
    }
};

//extend the XC 32bits timer to 64bits, and manage reference_hz depending on real pll value
namespace XC {

    //software lock is used to protect this code from simultaneous multi core attempt
    //NONEED extern XCSWLock getTime64Lock;
    //this will store the latest 64 bit time computed
    extern volatile LongLong_t getTime64Ticks;

    //returns a global timer value in 64 bits by extending internal gettime instruction
    //needs to be called from any core at least every 10 seconds otherwise will loose 31bit overflow
    //this needs to be called at least every 10 seconds otherwise will loose 31bit overflow
    //return 64 bits value representing more than 5000 years so will never rollout (always positive)
    inline long long getTime64() { asm volatile("### getTime64()");
        
        //finally no need for lock due to very fast routine
        //getTime64Lock.acquire();
        //load time in intermediate registers with 64bits LDD instruction
        LongLong_t previous = { .ll = getTime64Ticks.ll };
        //maccu used as a single instruction to perform 64 bits addition of elapsed time
        int elapsed = gettime() - previous.ulh.lo;
        maccu(&previous.ull,elapsed,1);
        //store 64bit result in a single STD instruction
        getTime64Ticks.ll = previous.ull;
        //getTime64Lock.release();
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

namespace XC {
    //helper object, to access bits from a given word with operator [x] 
    //ex : unsigned word; XC::bitSet w(word); w = 2; w[2] = w[1]; -> w = 6
    class bitSet {
        unsigned & word;
    public:
        explicit bitSet(unsigned & word_) : word(word_) {}

            class proxy {
                unsigned & word;
                unsigned bit;
            public:
                proxy(unsigned & word_, unsigned bit_) : word(word_), bit(bit_) {}
                proxy& operator = (const unsigned v) {
                    if (v) word |= (1u << bit); else word &= ~(1u << bit);
                    return *this;
                }
                proxy& operator = (const proxy& rhs) {
                    return *this = static_cast<unsigned>(rhs);
                }
                operator unsigned () const { return (word >> bit) & 1; }    
            };
        bitSet&  set(const unsigned w) { word = w; return *this; }
        unsigned get() const { return word; }
        unsigned get(const unsigned bit) const { return (word >> bit) & 1; }
        operator unsigned () const { return get(); }
        bitSet&  operator = (const unsigned rhs) { set(rhs); return *this; }
        proxy    operator[] (const unsigned i) { return proxy(word,i); }
    };

    char * bitFieldToStr(const char * str[], unsigned val, unsigned max, unsigned invert = 0);
};

//basic object to hold the ressource identifier (=address) and some basis member function 
class XCResourceID {
private:
  enum ressource_e {
    TYPE_SHIFT = 0,  TYPE_SIZE = 8, TYPE_MASK = (1 << TYPE_SIZE) - 1,
    NUM_SHIFT  = 8,  NUM_SIZE  = 8, NUM_MASK  = (1 << NUM_SIZE)  - 1,
    SIZE_SHIFT = 16, SIZE_SIZE = 8, SIZE_MASK = (1 << SIZE_SIZE) - 1
  };

public:
  XC::Resource_t addr;      //ressource address
  
  XCResourceID() : addr(0) { }
  //create the resource object and allocate an adress
  XCResourceID(XC::Resource_t val) : addr(val) { }

  //return the type of the ressource
  XC::ResourceType_t type() const { return (XC::ResourceType_t)((addr >> TYPE_SHIFT) & TYPE_MASK); }
  //return the ressource number
  unsigned num() const { return (addr >> NUM_SHIFT) & NUM_MASK; }
  //return the size of the ressource 1/4/8/16/32 bits
  unsigned size() const { return (addr >> SIZE_SHIFT) & SIZE_MASK; }
  //sets a condition on the ressource
  void inline setc(const unsigned c)  { asm volatile("setc res[%0],%1"::"r"(addr),"r"(c)); }
  //sets a condition on the ressource (immediate 0..11)
  //WILL NOT COMPILE IF OPTIMIZATION IS BELOW 2 !!!
  void inline setci(const unsigned i) {  asm volatile("setc res[%0],%1"::"r"(addr),"n"(i)); }
  //sets the data register attached to a resource
  void inline setd(const unsigned d)  { asm volatile("setd res[%0],%1"::"r"(addr),"r"(d)); }
  //returns the value of the data register attached to a resource
  unsigned inline getd() const { unsigned v;  asm("getd %0,res[%1]":"=r"(v):"r"(addr)); return v; }
  //enables the event capability for the ressource
  void inline eeu() { asm volatile("eeu res[%0]"::"r"(addr)); }
  //disables the event capability for the ressource
  void inline edu() { asm volatile("edu res[%0]"::"r"(addr)); }
  //return true if the resource is a PORT
  bool isPort()    const { return type() == XC::TYPE_PORT;    }
  //return true if the resource is a TIMER
  bool isTimer()   const { return type() == XC::TYPE_TIMER;   }
  //return true if the resource is a CHANEND
  bool isChanend() const { return type() == XC::TYPE_CHANEND; }
  //return true if the resource is a SYNCHRONIZER
  bool isSync()    const { return type() == XC::TYPE_SYNC;    }
  //return true if the resource is a THREAD
  bool isThread()  const { return type() == XC::TYPE_THREAD;  }
  //return true if the resource is a LOCK
  bool isLock()    const { return type() == XC::TYPE_LOCK;    }
  //return true if the resource is a CLOCK BLOCK
  bool isClkBlk()  const { return type() == XC::TYPE_CLKBLK;  }
  //sets the resource being in use by a thread
  XCResourceID& setInUseOn()        { asm volatile("### setInUseOn()");
    setci(8);   return *this; }
  //clears the resource being used by a thread. no more in use
  XCResourceID& setInUseOff()       { asm volatile("### setInUseOff()");
    setci(0);   return *this; }
  //sets a condition on the resource
  XCResourceID& setCond(const unsigned x) { asm volatile("### setCond(const unsigned x)");
    setc(x); return *this; }
  //remove any condition on the resource
  XCResourceID& setCondNone()       {  asm volatile("### setCondNone()");
    setci(1);   return *this; }
  //sets the resource event capability
  XCResourceID& setModeEvent()      { setci(2);   return *this; }
  //sets the resource interrupt capability
  XCResourceID& setModeInterrupt()  { setci(0xA); return *this; }
  //enables resource event. the resource can generate an event
  XCResourceID& setEvent()          { eeu();      return *this; }
  //disables resource event. the resource can not generate an event
  XCResourceID& clrEvent()          { edu();      return *this; }
  //sets the event vector for the resource. an event will change the CPU program counter to this dress
  XCResourceID& setVector(unsigned x) { 
    register unsigned r11 asm("r11") = x;
    asm volatile("setv res[%0],%1"::"r"(addr),"r"(r11));  return *this; }
  //sets the event vector for the resource with a function. an event will change the CPU program counter to this function
  XCResourceID& setVector(unsigned (* x)()) { return setVector((unsigned)x); }
  //sets the event vector for the resource with a function. an event will change the CPU program counter to this function
  XCResourceID& setVector(void (* x)())     { return setVector((unsigned)x); }
  //sets the event vector to the predefined selectVector routine and define the value of the selector in the EV register
  XCResourceID& setSelect(const unsigned s) { 
    setVector(&XC::selectVector); return setEnvironment(s); }
  //set the resource EV register which can be read later with geted when an event or an interrupt will be raised
  XCResourceID& setEnvironment(unsigned x)  { 
    register unsigned r11 asm("r11") = x;
    asm volatile("setev res[%0],%1"::"r"(addr),"r"(r11)); return *this; }
  //output a value to the resource
  XCResourceID& out(const unsigned x) { 
    asm volatile("out res[%0],%1"::"r"(addr),"r"(x));   return *this; }
  //output a value to a resource and save the value in the resource data register
  XCResourceID& outd(const unsigned x)  {
    asm volatile("setd res[%0], %1 ; out res[%0],%1"::"r"(addr),"r"(x)); return *this; }
  //output the actual ressource data register or-ed with the provided mask
  XCResourceID& outdOr(const unsigned mask)  { unsigned temp; asm("# %0":"=r"(temp));
    asm volatile("getd %2,res[%0] ; or %2,%2,%1 ; setd res[%0],%2 ; out res[%0],%2"::"r"(addr),"r"(mask),"r"(temp)); return *this; }
  //output the actual ressource data register and-ed with the provided mask
  XCResourceID& outdAnd(const unsigned mask)  { unsigned temp; asm("# %0":"=r"(temp));
    asm volatile("getd %2,res[%0] ; and %2,%2,%1 ; setd res[%0],%2 ; out res[%0],%2"::"r"(addr),"r"(mask),"r"(temp)); return *this; }
  //output the actual ressource data register andnot-ed with the provided mask
  XCResourceID& outdAndNot(const unsigned mask)  { unsigned temp; asm("# %0":"=r"(temp));
    asm volatile("getd %2,res[%0] ; andnot %2,%1 ; setd res[%0],%2 ; out res[%0],%2"::"r"(addr),"r"(mask),"r"(temp)); return *this; }
  //output the actual ressource data register andnot-ed and or-ed with the provided mask
  XCResourceID& outdAndOr(const unsigned and_, const unsigned or_)  { unsigned temp; asm("# %0":"=r"(temp));
    asm volatile("getd %3,res[%0] ; and %3,%3,%1 ; or %3,%3,%2, setd res[%0],%3 ; out res[%0],%3"::"r"(addr),"r"(and_),"r"(or_),"r"(temp)); return *this; }
  //output the actual ressource data register and-ed with the provided mask
  XCResourceID& outdXor(const unsigned mask)  { unsigned temp; asm("# %0":"=r"(temp));
    asm volatile("getd %2,res[%0] ; xor %2,%2,%1 ; setd res[%0],%2 ; out res[%0],%2"::"r"(addr),"r"(mask),"r"(temp)); return *this; }
  //input a value from the resource. the compiler will discard this instruction if the value is unused
  unsigned in() const { unsigned res; 
    asm ("in %0,res[%1]":"=r"(res):"r"(addr));  return res; }
  //input a value from the resource. the compiler will force generating this instruction even if the value is unused
  unsigned in_() const { unsigned res; 
    asm volatile("in %0,res[%1]":"=r"(res):"r"(addr));  return res; }
  //frees the resource
  void freeResource() { 
    asm volatile("freer res[%0]"::"r"(addr)); addr = 0; }
  operator XC::Resource_t () { return addr; } //default operator will return the ID (=address) of the resource
  XCResourceID& operator=(const XCResourceID&) = default;
  XCResourceID& operator=(XCResourceID&&) noexcept = default;
  //providing an adress as an un/signed integer will assign it to the ressource.addr
  XCResourceID& operator = (XC::Resource_t rhs) { addr = rhs; return *this; }
};

class XCClock;

// object representing a physical port 1,4,8,16 or 32 bits
class XCPort : public XCResourceID {
public:
    //port configuration
    typedef enum { UNDEFINED, INPUT, INPUT_PULLUP, INPUT_PULLDOWN, OUTPUT, OUTPUT_DRIVE = OUTPUT, OUTPUT_PULLUP, OUTPUT_PULLDOWN  } PortMode_t;

    //gives possibility to declare a port object without giving its address yet.
    XCPort() { }

    //defines a port with its adress using XS1_PORT_xx
    XCPort(unsigned p) : XCResourceID(p) { 
        setMode(XCPort::UNDEFINED); }
    //defines a port with its adress and the operating mode
    XCPort(unsigned p, PortMode_t mode_) : XCResourceID(p) {  
        setMode(mode_); }
    //defines a port with its adress and the operating mode and the initial value
    //should be used only after main() is started, not in global definition
    XCPort(unsigned p, PortMode_t mode_, unsigned initial) : XCResourceID(p) { 
        setMode(mode_, initial); }
    //destructor    
    ~XCPort() { if (addr) { free(); } }
    //sets the port mode.
    XCPort&  setMode(PortMode_t mode_) {
        asm volatile("### setMode(PortMode_t mode_)");
        switch (mode_) {
            case UNDEFINED :        reset(); break;
            case INPUT:             reset(); break;
            case INPUT_PULLUP :     reset().setPullUp();   break;
            case INPUT_PULLDOWN :   reset().setPullDown(); break;
            case OUTPUT_DRIVE:      reset().setDrive();    break;
            case OUTPUT_PULLUP :    reset().set().setPullUp();   break;
            case OUTPUT_PULLDOWN :  reset().clr().setPullDown(); break;
        }
        return *this;
    }
    //sets the port mode with an initial value
    XCPort&  setMode(PortMode_t mode_, unsigned initial) {
        asm volatile("### setMode(PortMode_t mode_, unsigned initial)");
        switch (mode_) {
            case UNDEFINED :        reset(); break;
            case INPUT:             reset().setd(initial); break;
            case INPUT_PULLUP :     reset().setd(initial); setPullUp();   break;
            case INPUT_PULLDOWN :   reset().setd(initial); setPullDown(); break;
            case OUTPUT_DRIVE:      reset().set(initial).setDrive();    break;
            case OUTPUT_PULLUP :    reset().set(initial).setPullUp();   break;
            case OUTPUT_PULLDOWN :  reset().set(initial).setPullDown(); break;
        }
        return *this;
    }
    //same syntax function names as in standard xcore library, just removing _ and introducing capital letters for other terms

    //returns true if the port size is one bit
    bool     oneBit() const { return size() == 1; }
    //same as setInUseOn
    XCPort&  enable()       { setInUseOn();  return *this; }  
    //same as setInUseOn
    XCPort&  reset()        { setInUseOn();  return *this; }
    //same as setInUseOff
    void free()             { setInUseOff(); }
    //set the port transfer width
    XCPort&  setTransferWidth(const unsigned w) { asm volatile("settw res[%0],%1"::"r"(addr),"r"(w)); return *this; }
    //sets the port as buffered
    XCPort&  setBuffered()  { setci(0x200F); return *this; }
    //sets the port as unbuffered (default)
    XCPort&  setUnbuffered(){ setci(0x2007); return *this; } 
    //attach a clock to a port (default is refclock). defined later as we dont know class XCClock content
    XCPort&  setClock(XCClock& clk); 
    //reset the port in standard mode to be used either as in out
    XCPort&  setClock(unsigned clkAddr)  { 
        asm volatile("setclk res[%0],%1"::"r"(addr),"r"(clkAddr)); return *this; }
    XCPort&  setInOutData() { setci(0x5007); return *this; }
    XCPort&  setOutClock()  { setci(0x500F); return *this; }
    XCPort&  setReadyport() { setci(0x5017); return *this; }
    XCPort&  setOutReady(XCPort& p) { setReadyport(); asm volatile("setrdy res[%0],%1"::"r"(addr),"r"(p.addr));  return *this;}
    //physical port is inverted compared to in/out value
    XCPort&  setInvert()    { setci(0x600F); return *this; }
    //physical port is not inverted compared to in/out value (default)
    XCPort&  setNoInvert()  { setci(0x6007);  return *this; }
    XCPort&  setSampleFallingEdge() { setci(0x400F); return *this; }
    XCPort&  setSampleRisingEdge()  { setci(0x4007); return *this; }
    XCPort&  setMaster()    { setci(0x1007); return *this; }
    XCPort&  setSlave ()    { setci(0x100F); return *this; }
    XCPort&  setNoReady()   { setci(0x3007); return *this; }
    XCPort&  setReadyStrobed()   { setci(0x300F); return *this; }
    XCPort&  setReadyHandshake() { setci(0x3017); return *this; }
    //setpt instruction to set the port trigger time in the future
    XCPort&  setTriggerTime(unsigned t) { asm volatile("setpt res[%0],%1"::"r"(addr),"r"(t)); return *this; }
    //clrpt : clear port trigger time
    XCPort&  clrTriggerTime() { asm volatile("clrpt res[%0]"::"r"(addr));   return *this; }
    //sets the port data register to define an expected value for triggering the port
    XCPort&  setTriggerValue(const unsigned v)      { setd(v); return *this; }
    //sets the port data register and the trigger condition to "equal". in_() will wait until condition is met
    XCPort&  setTriggerInEqual(const unsigned v)    { setci(0x11); setd(v); return *this; }
    //sets the port data register and the trigger condition to "not equal". in_() will wait until value is different
    XCPort&  setTriggerInNotEqual(const unsigned v) { setci(0x19); setd(v); return *this; }
    //removes trigger condition.
    XCPort&  clrTriggerIn() { setCondNone(); return *this; }
    //tbd setci(0x17)
    XCPort&  clrBuffer()    { setci(0x17);   return *this; }
    //sets the port in drive mode : any 0 or 1 will be outputed straight on the pin
    XCPort&  setDrive()    { setci(0x03);   return *this; }
    //sets the port in pullup mode, only 0 will be outputed straight
    XCPort&  setPullUp()   { setci(0x13);   return *this; }
    //sets the port in pulldown mode, only 1 will be outputed straight
    XCPort&  setPullDown() { setci(0x0B);   return *this; }
    //Synchronise with a port to ensure all data has been output. 
    //This instruction completes once all data has been shifted out of the port, 
    // and the last port width of data has been held for one clock period.
    XCPort&  sync()  { asm volatile("syncr res[%0]"::"r"(addr)); return *this; }
    //Sets the port shift count for normal input and output operations. can be replace by using INPW or OUTPW
    XCPort&  setShiftCount(const unsigned c) { asm volatile("setpsc res[%0],%1"::"r"(addr),"r"(c)); return *this; }
    //the value for PadCtrl parameters is expected in bit 23..18 according to datasheet:
    //Mode bits 0x0006. Sets the pad options according to the value of bits 23..18.
    //Bits 19 and 18 set the pull resistor (00 for none; 01 for weak pull-up; 10 for weak pull-down; or 11 for weak bus-keep.).
    //Bits 21 and 20 set the drive strength (00 for 2mA; 01 for 4mA; 10 for 8mA; or 11 for 12mA).
    //Bit 22 enables slew-rate control.
    //Bit 23 enables the Schmitt-Trigger.
    XCPort&  setPadCtrl(const unsigned x)  { setc((x & 0x7FFC0000) | 6); return *this; }
    XCPort&  setPadDelay(const unsigned x) { setc(0x7007 | ((((x<5)?x:4)<<3)));  return *this; }
    //define a conditional input based on equality. same as setTriggerInEqual(x)
    XCPort&  setCondEqual(const unsigned x)    { setTriggerInEqual(x);    return *this; }
    //define a conditional input based on inequality. same as setTriggerInNotEqual(x)
    XCPort&  setCondNotEqual(const unsigned x) { setTriggerInNotEqual(x); return *this; }

    XCPort&  outd(const unsigned x)          { XCResourceID::outd(x); return *this; }
    XCPort&  outdOr(const unsigned mask)     { XCResourceID::outdOr(mask); return *this; }
    XCPort&  outdAnd(const unsigned mask)    { XCResourceID::outdAnd(mask); return *this; }
    XCPort&  outdAndNot(const unsigned mask) { XCResourceID::outdAndNot(mask); return *this; }
    XCPort&  outdAndOr(const unsigned and_, const unsigned or_) { XCResourceID::outdAndOr(and_,or_); return *this; }
    XCPort&  outdXor(const unsigned mask)  { XCResourceID::outdXor(mask); return *this; }
    //set the value of the port (value NOT store in shadow register)
    XCPort&  out(const unsigned x) { XCResourceID::out(x); return *this; }
    //output the lsb part of the provided number (according to buffer size) and return the new shifted value
    unsigned outShiftRight(const unsigned x) { unsigned temp;
        asm volatile("outshr res[%1],%0":"=r"(temp):"r"(addr),"0"(x)); return temp; }
    XCPort&  outPartialWord(const unsigned x,const unsigned bits) { 
        asm volatile("outpw res[%0],%1,%2"::"r"(addr),"r"(x),"r"(bits)); return *this; }
    //sets the value of the port (including its shadow variable). same as out(x)
    XCPort&  set(const unsigned x) { outd(x); return *this; }
    //sets the value of the shadow register. port unchanged
    XCPort&  setd(const unsigned x) { XCResourceID::setd(x); return *this; }
    //sets the value of the port (including its shadow variable). all bits sets to 1
    XCPort&  set() { unsigned mask = (1u << size())-1; outd(mask); return *this; }
    //clears the value of the port (including its shadow variable). all bits sets to 0
    XCPort&  clr() { set(0); return *this; }
    //applies an AND and a OR to the port (based on its shadow value)
    XCPort&  outAndOr(unsigned and_, unsigned or_) { return outdAndOr(and_,or_);}
    //applies an AND to the port (based on its shadow value)
    XCPort&  outAndNot(unsigned and_) { return outdAndNot(and_);}
    //applies an AND to the port (based on its shadow value)
    XCPort&  outAnd(unsigned and_) { return outdAnd(and_);}
    //applies an OR to the port (based on its shadow value)
    XCPort&  outOr(unsigned or_)   { return outdOr(or_);}
    //applies a XOR to the port (based on its shadow value)
    XCPort&  outXor(unsigned xor_) { return outdXor(xor_);}
    //sets the port with the mask, using outOr(x) and shadow value
    XCPort&  setMask(const unsigned x) { outOr(x);  return *this; }
    //clears the port with the mask, using outAnd(x) and shadow value
    XCPort&  clrMask(const unsigned x) { outAndNot(x); return *this; }
    //sets the port with given bit set to one
    XCPort&  setBit( const unsigned x) { outOr(1UL << x); return *this; }
    //sets the port with given bit cleared
    XCPort&  clrBit( const unsigned x) { outAndNot(1UL << x); return *this; }
    //use setTriggerInEqual(mask) to define the condition and in_() to wait for it
    unsigned waitEqual(const unsigned mask)    { setTriggerInEqual(mask);    return in_();  }
    //use setTriggerInNotEqual(mask) to define the condition and in_() to wait for it
    unsigned waitNotEqual(const unsigned mask) { setTriggerInNotEqual(mask); return in_();  }
    //inserts the n bits of an in() instruction in the lsb parts of the shadow value
    unsigned inShiftRight(const unsigned x) { unsigned res; asm("inshr %0,res[%1]":"=r"(res):"r"(addr),"0"(x)); return res; }
    //returns number of bits remaining in the port
    unsigned endin() { unsigned res; asm("endin %0,res[%1]":"=r"(res):"r"(addr)); return res; }
    //getTriggerTime voluntary returns a 32bit integer type but the value inside is 16bit only, sign not extended.
    //to measure difference between 2 , it is suggested to make 32bit substraction and then "and 0xFFFF" to get the exact difference
    unsigned getTriggerTime() const { int time; asm("getts %0,res[%1]":"=r"(time):"r"(addr)); return time; }
    //return real value of the port pins, (not stored in local shadow value)
    unsigned peek() const { unsigned res; asm("peek %0,res[%1]":"=r"(res):"r"(addr)); return res; } //non volatile, as the resulting value may not be used by subsequent code
    //return real value of a port pin, (not stored in local shadow value)
    unsigned peek(const unsigned x) const { unsigned res; 
        asm("peek %0,res[%1]":"=r"(res):"r"(addr)); return (res >> x) & 1; }
    //return result of in() instruction. result NOT stored in shadow register
    unsigned in() const { return XCResourceID::in(); }  //non volatile
     //return a single bit result of in() instruction. result NOT stored in shadow register
    unsigned in(const unsigned x) const { return (in() >> x) & 1;}
    //return result of in(volatile) instruction. result NOT stored in shadow register
    unsigned in_() const { return XCResourceID::in_(); } //volatile
    //return a single bit result of in(volatile) instruction. result NOT stored in shadow register
    unsigned in_(const unsigned x) const { return (in_() >> x) & 1;}
    //returns the port (eventual) last out value, otherwise in())
    unsigned getd() const { return XCResourceID::getd(); }
    //returns the port single bit (eventual) last out value, otherwise in())
    unsigned getd(const unsigned x) const { return (getd() >> x) & 1; }
    //keep default operator=
    XCPort& operator =  (const XCPort&)     = default;
    XCPort& operator =  (XCPort&&) noexcept = default;
    //set a port value when an assignement is made with a integer value. also stored in shadow memory
    XCPort& operator =  (unsigned rhs) { set(rhs);     return *this; }
    XCPort& operator |= (unsigned rhs) { outdOr(rhs);   return *this; }
    XCPort& operator &= (unsigned rhs) { outdAnd(rhs);  return *this; }
    XCPort& operator ^= (unsigned rhs) { outdXor(rhs);  return *this; }

    //having a port name inside an expression will return the port shadow value (last output)
    operator unsigned ()  const { 
        asm volatile("### XCPort::operator unsigned ()");
        return getd(); }
    //having a port name with braket () inside an expression will return the in() value (not touching shadow value)
    unsigned operator() () { return in(); }

    class bitproxy {
        XCPort & port;
        unsigned bit;
    public:
        bitproxy(XCPort & p, unsigned bit_) : port(p),bit(bit_) { 
            asm volatile("### bitproxy(XCPort & p, unsigned bit_)");
        }
        bitproxy& operator = (unsigned v) {
            asm volatile("### bitproxy::bitproxy& operator = (unsigned v)");
            if (v) port.setBit(bit); else port.clrBit(bit);
            return *this;
        }
        bitproxy& operator = (bitproxy& rhs) {
            asm volatile("### bitproxy::bitproxy& operator = (bitproxy& rhs)");
            return *this = static_cast<unsigned>(rhs);
        }
        // reading: implicit convert to unsigned
        operator unsigned () const { 
            asm volatile("### bitproxy::operator unsigned ()");
            return port.getd(bit); }

    };
    //this proxy operator is used to provide a braket assignement to one bit of the port
    bitproxy operator [] (unsigned i) { asm volatile("### XCPort::bitproxy operator [] (unsigned i)");
        return bitproxy(*this, i); }
    //braket operator [] return a bit from the shadow memory
    //unsigned operator [] (unsigned i) const { return getVal(i); }
    //braket operator () return a bit from the in() value
    unsigned operator () (unsigned i) const { return in(i); }

    unsigned countClock(XCClock& clk, unsigned ticks);
    XCPort&  protocolInHandshake(XCPort& readyIn, XCPort& readyOut, XCClock& clk);
    XCPort&  protocolOutHandshake(XCPort& readyIn, XCPort& readyOut, XCClock& clk, unsigned initial);
    XCPort&  protocolInStrobedMaster(XCPort& readyOut, XCClock& clk);
    XCPort&  protocolOutStrobedMaster(XCPort& readyOut, XCClock& clk, unsigned initial);
    XCPort&  protocolInStrobedSlave(XCPort& readyIn, XCClock& clk);
    XCPort&  protocolOutStrobedSlave(XCPort& readyIn, XCClock& clk, unsigned initial);

};


extern XCPort XCPortUndefined; 

// a pin is a port associated with a binary mask (default 1)
// for one-bit port , the concept of pin is useless but does not hurt thanks to compiler optimization
class XCPortBit {
private:
    XCPort& port;    //by reference as multiple XCPortBits can share the same port information and use its unique shadow value
    const unsigned bit;  
    //const unsigned sizePort;
public:
    XCPortBit() : port(XCPortUndefined),bit(0) {}
    XCPortBit(XCPort& p) : port(p), bit(0) { }
    XCPortBit(XCPort& p, const unsigned bit_) : port(p), bit(bit_) { }
    XCPortBit(XCPortBit& pbit) : port(pbit.port), bit(pbit.bit) { }

    XCPortBit& set() { port.setBit(bit); return *this; }
    XCPortBit& clr() { port.clrBit(bit); return *this; }
    XCPortBit& set(const unsigned x) { if (x) set(); else clr(); return *this; }
    unsigned in() const  { return (port.in()  >> bit) & 1; }
    unsigned in_() const { return (port.in_() >> bit) & 1; }
    unsigned peek() { return (port.peek() >> bit) & 1; }
    //returns the port (eventual) last out value, otherwise in())
    unsigned getd() const { return port.getd(bit); }
    unsigned getBit()    { return bit; }
    unsigned getMask()   { return 1UL << bit; }
    XCPort&  getPort()   { return port; }
    //default operator , using a pin name will return value stored in shadow memory
    operator unsigned () const { asm volatile("### XCPortBit::operator unsigned ()");
        return getd(); }
    //XCPortBit& operator = (const XCPortBit&) = default;
    XCPortBit& operator = (const XCPortBit& rhs) { asm volatile("### XCPortBit::operator = (const XCPortBit& rhs)");
        if (rhs != *this) { set(rhs.getd()); } return *this; };
    XCPortBit& operator = (XCPortBit&&) noexcept = default;
    XCPortBit& operator = (unsigned rhs) { asm volatile("### XCPortBit::operator = (unsigned rhs)");
        set(rhs); return *this; }
    unsigned operator () () { return in(); }
    unsigned waitPinEqual(const unsigned x)  {
        if (port.oneBit()) return port.waitEqual(x ? 1 : 0);
        else {
            unsigned v = x ? getMask() : 0;
            unsigned p = port.in();
            while (1) {
                if ((p & getMask()) == v ) return v != 0;
                p = port.waitNotEqual(p);
            }
        }
    }
    unsigned waitPinNotEqual(unsigned x) { return waitPinEqual(x?0:1); }
};

extern XCPortBit  XCPortBitUndefined; 

/*
simple timer object using gettime instruction.
can be used when waiting doesnt require to hold the task to give corresponding mips to other tasks.
*/
class XCTimerMicros {
private:
    long long ofset;
public:
    XCTimerMicros() { }
    XCTimerMicros(const long long t) { set(t); }
    XCTimerMicros& clr() { ofset = XC::micros(); return *this; }
    XCTimerMicros& set(const long long t) { ofset = XC::micros() + t; return *this; }
    long long get() const { return XC::micros() - ofset; }
    long long getLeft() { 
        long long remain = ofset - XC::micros(); 
        if (remain < 0) remain = 0;
        return remain;
    }
    long long remains() { return getLeft(); }
    XCTimerMicros& wait() { while (remains()) {} ; return *this; }
    XCTimerMicros& wait(const long long t) { 
        long long target = XC::micros() + t;
        while( (XC::micros() - target) < 0) {} ; return *this; }
    XCTimerMicros& operator =  (long long rhs) { set(rhs);     return *this; }
    XCTimerMicros& operator += (long long rhs) { ofset += rhs; return *this; }
    XCTimerMicros& operator -= (long long rhs) { ofset -= rhs; return *this; }
    XCTimerMicros& operator = (XCTimerMicros& rhs) { 
        if (&rhs != this) ofset = rhs.ofset; return *this; }
    long long operator () () const { return get(); }
    operator long long () const    { return get(); }

};


/*
  when using "in" on a timer, the return value is exact same as gettime
  if setCondAfter() was done then "in" will block until the timer reach the value put with setd(x)
  after this, doing multiple "in" will not block, unless another setd(x) is made. 
  so setCondAfter() is permanent but armed by setd(x)
*/

#if defined(XC_REPORT_RESOURCES) && (XC_REPORT_RESOURCES == 1)
extern "C" void XC_USE_TIMER();
#define XC_USE_TIMER() XC_USE_TIMER()
#else
#define XC_USE_TIMER()
#endif

//point on a table of preallocated timer ressource (only for xC programs)
extern volatile XC::Resource_t __timers[8];   

//class to declare timer objects.
//once an object is instanciated, the getLocal() or getRessource should be called 
//from the task using it, before using it.
class XCTimer : public XCResourceID {
public:
    //allocate a timer ressource from the pool
    inline XCTimer& getResource() { 
        XC_USE_TIMER(); //call an empty code to register usage of 1 timer
        addr = XC::getRessource(XC::TYPE_TIMER); setCondNone(); setd(0); 
        return *this;  }
    //store the object ressource ID in the table of local timers for xc thread
    inline XCTimer& setLocal(unsigned ID) { __timers[ ID ] = addr; return *this;  }
    inline XCTimer& setLocal() { return setLocal( XC::getThreadID() ); }
    inline void clrLocal() { 
        if (addr) { freeResource(); setLocal(); } }
    //retreive the timer ressource ID automatically allocated by the xC compiler (only for xC programs)
    //otherwise allocate a new one
    inline XCTimer& getLocal(unsigned ID) {
        addr = __timers[ ID ];
        if (addr == 0) { getResource(); setLocal(ID); } 
        else { setCondNone(); setd(0); }
        return *this;  }
    inline XCTimer& getLocal() { return getLocal( XC::getThreadID() ); }
    int in()  { return XCResourceID::in(); }
    int in_() { return XCResourceID::in_(); }
    int getTriggerTime() { return getd(); }
    XCTimer& clrTriggerTime() { setCondNone(); return *this; }
    XCTimer& setTriggerTime(const int x) {  setCondAfter().setd(x); return *this;  }
    XCTimer& setCondAfter() { setci(0x09); return *this; }
    XCTimer& setCondAfter(const int x) { return setTriggerTime(x); }

    //set of methods to use the timer with a predefined ofset stored in the "d" register attached to it

    //reset any timer offset. eventually return gettime value
    int resetTimer() { asm volatile("### int resetTimer()");
        setd(0); 
        int time; asm("gettime %0":"=r"(time)); return time; } //compiler will generate this code or not depending on usage
    //set a timer ofset (can be zero) which helps to measure absolute time since this was set 
    int setTimer(const int t) { asm volatile("### int setTimer(const int x)");
        int time = t + XC::getTime(); setd(time);  return time; }
    //clear timer offset.
    int clrTimer() { asm volatile("### int clrTimer()");
        return setTimer(0);  }
    //returns time spent since setTimer
    int getTimer() { asm volatile("### int getTimer()");
        return XC::getTime() - getd(); }      
    //return remaining time or Zero if time elapsed
    int getTimerLeft() { asm volatile("### int getTimerLeft()");
        int time = getd() - XC::getTime(); 
        if (time < 0) time = 0; return time; }  

    int getTime() { asm volatile("### int getTime()"); 
        return XC::getTime(); }
    int waitAfter(const int x) { asm volatile("### int waitAfter(const int x)"); 
        return setCondAfter(x).in_(); }
    int waitTicks(const int x) { asm volatile("### int waitTicks(const int x)"); 
        return waitAfter( XC::getTime() + x ); }
    //return time value when using a timer with operator ()
    int operator () () { asm volatile("### operator () ()");
        return in(); }
    //return time value augmented by x when using a timer with operator (int x)
    int operator () (const int x) { asm volatile("### operator () (x)");
        return in() + x; }

    /* using timeout requires carefull attention to compiler side effect, especially in O3
      example :     
          if (tmr.timeout(2000)) goto err;
          c.checkCT_END(); tmr.clrTimeout();
    */
    void clrTimeout() { clrEvent(); }
    XCTimer& setTimeout(const int ticks) { setTriggerTime( getTime() + ticks ); return *this; }
    //used to create an event with result 0 when a timeout occurs
    //to be used carrefuly in a x?y:z statement for monitoring a blocking I/O or channel access 
    int timeout() {
        register int result asm("r11");
        asm volatile (
            "\n\t   ldap %0, .Levent%="           // get address of temporary label below
            "\n\t   setv res[%1], %0 "            // set resource vector address
            "\n\t   ldc %0, 0"                     // result forced to 0 to jump in the optional "else" section
            "\n\t   eeu  res[%1]"                  // enable timer resource event
            "\n\t   setsr 1"                       // enable any events in our thread
            "\n\t   bu .Lexit%="                   // end ( go back to "if" statement )
          "\n .Levent%=:"                          // event entry point
            "\n\t   ldc %0, 1"                     // result forced to 0 to jump in the optional "else" section
          "\n .Lexit%=:"                           // exit point
            : "=r"(result) : "r"(addr) );         //return result
        return result;
    }
    int timeout(const int ticks) { setTimeout(ticks); return timeout(); }
};

namespace XC {

    inline int waitTimeAfter(const int target) {
        // use task ressource timer
        XCTimer rtimer;
        return rtimer.getLocal().waitAfter(target); }

    inline int delayTicks(const unsigned ticks) {
        // use thread ressource timer
        XCTimer rtimer;
        return rtimer.getLocal().waitTicks(ticks); }

    inline int delaySyncTicks(int &timer, const unsigned ticks) {
        // use thread ressource timer
        XCTimer rtimer;
        timer += ticks;
        if ((timer - getTime())<10) return 0;
        //return non zero value
        return 1 | rtimer.getLocal().waitAfter(timer); }
};

#if defined(XC_REPORT_RESOURCES) && (XC_REPORT_RESOURCES == 1)
extern "C" void XC_USE_CHANEND();
//used to record usage of 1 chanend resource, only if -DXC_REPORT_RESOURCES exist in compiler falg
#define XC_USE_CHANEND() XC_USE_CHANEND()
#else
//used to record usage of 1 chanend resource, only if -DXC_REPORT_RESOURCES exist in compiler falg
#define XC_USE_CHANEND()
#endif

//used to handle communication across cores/tiles
class XCChanend : public XCResourceID {
public:

    //XCChanend() {}
    //resource allocated manually, so no destructor for this object
    XCChanend& getResource() { 
        XC_USE_CHANEND();
        addr = XC::getRessource(XC::TYPE_CHANEND); 
        return *this;  }
    XCChanend& setDest(const unsigned x) { XCResourceID::setd(x); return *this; }
    unsigned   getDest()     { return XCResourceID::getd(); }
    XCChanend& setGetDest()  { setDest(in()); return *this; }
    unsigned   getNodeID()   { return (addr >> 24) & 0xFF; }
    unsigned   getCoreID()   { return (addr >> 16) & 0xFF; }
    XCChanend& out(const unsigned x) { XCResourceID::out(x); return *this; }
    XCChanend& outWord(const unsigned w) { return out(w); }
    XCChanend& outByte(const char t) {
      asm volatile("outt res[%0],%1"::"r"(addr),"r"(t)); return *this; }
    XCChanend& outCT(const char ct) {
      asm volatile("outct res[%0],%1"::"r"(addr),"r"(ct)); return *this; }
    XCChanend& outCTi(const char ct) { //ct <=11
      asm volatile("outct res[%0],%1"::"r"(addr),"n"(ct)); return *this; }
    XCChanend& out(const XC::CTValue_t ct) { return outCT(ct); }  
    XCChanend& outCT_START() { return outCTi(XC::CT_START); }
    XCChanend& outCT_END()   { return outCTi(XC::CT_END);   }
    XCChanend& outCT_PAUSE() { return outCTi(XC::CT_PAUSE); }
    XCChanend& outCT_ACK()   { return outCTi(XC::CT_ACK);   }
    XCChanend& outCT_NACK()  { return outCTi(XC::CT_NACK);  }
    XCChanend& outAddr()     { out(addr); return *this;     }
    XCChanend& outTime()     { out(XC::getTime()); return *this; }
    unsigned   inByte() const { unsigned t;
      asm volatile("int %0,res[%1]":"=r"(t):"r"(addr)); return t; }
    unsigned   inCT() const { unsigned ct; 
      asm volatile("inct %0,res[%1]":"=r"(ct):"r"(addr)); return ct; }
    unsigned   in() const { return XCResourceID::in_(); } //always use volatile version
    XCChanend& inDest() { setDest(in()); return *this; }
    XCChanend& setNetwork(const unsigned n) {
      asm volatile("setn res[%0],%1"::"r"(addr),"r"(n)); return *this; }
    unsigned   getNetwork() const { unsigned n;
      asm("getn %0,res[%1]":"=r"(n):"r"(addr)); return n; } 
    XCChanend& checkCT(const char ct) { 
      asm volatile("chkct res[%0],%1"::"r"(addr),"r"(ct)); return *this; }
    XCChanend& checkCTi(const char ct) { //ct <=11
      asm volatile("chkct res[%0],%1"::"r"(addr),"n"(ct)); return *this; }
    XCChanend& checkCT_START() { return checkCTi(XC::CT_START); }
    XCChanend& checkCT_END()   { return checkCTi(XC::CT_END);   }
    XCChanend& checkCT_ACK()   { return checkCTi(XC::CT_ACK);   }
    XCChanend& checkCT_NACK()  { return checkCTi(XC::CT_NACK);  }
    bool   testCT() const  { unsigned t;
      asm volatile("testct %0,res[%1]":"=r"(t):"r"(addr)); return t; }
    unsigned   testCTWord() const { unsigned t;
      asm volatile("testwct %0,res[%1]":"=r"(t):"r"(addr)); return t; }
    unsigned   testDestLocal(unsigned ch) const { 
      asm("testlcl %0,res[%1]":"=r"(ch):"r"(addr),"0"(ch)); return ch; }
    unsigned testPresence() {
      register unsigned result asm("r11");
      asm(  "\n   ldap %0, .Levent%="          // get address of temporary label below
            "\n   setv res[%1], %0 "           // set resource vector address
            "\n   eeu  res[%1]"                 // enable resource event
            "\n   setsr 1"                      // enable any events in our thread
            "\n   clrsr 1"                      // stop any event
            "\n   ldc %0, 0"                    // result forced to 0 to jump in the optional "else" section
            "\n.Levent%=:"                      // event entry point
        :"=r"(result):"r"(addr));
        return result;
    }
};

extern XCChanend XCChanendUndefined;

/*

process : client want to send a request to a listening Port:

while (1) {
    if (C.tryOutPort(CT_DRIVER)) { 
        C.outByte(0x1).outAddr().out(0x12345678)
        C.outPortEND();
        //waiting answer
        while (!tryInPort(CT_DRIVER+1)) { XC::yield(); }
        char cmd = C.inByte();//response
        C.checkPortEND();
    }
}


//server

While (1) {
    if (C.tryInPort(CT_DRIVER)) {
        req_t req = C.inByte(); 
        switch(req) {
        case 0x1 : {
            C.setGetDest();     //address for answer
            unsigned w = in(); // param
            C.checkPortEND();
            //action
            while (!C.trySend(CT_DRIVER+1)) { XC::yield(); }
            C.outByte(0);
            C.outPortEND();
            break; }
        }
    }
    
}

*/

/*
use this agreagated class to use a channel across multiple origin and multiple dest.
A driver should listen a "port" value (any control token between 0x04 and 0x7F)
A return adress might be sent after the port control token when an answer is required.
Locks are managed to protect the chanend access until CT_END is sent
*/
class XCChanendPort : public XCChanend {
private:
    XCSWLock lockTx;    //protect for tranmission
    XCSWLock lockRx;    //protect for reception
    volatile unsigned portReceived;    //true when a contol token has been extracted from the chanend
    volatile unsigned portValue;       //pending value of this control token

public:
    XCChanendPort() : XCChanend(), portReceived(0)  {}
    //from XCChanend, recreated here just to return XCChanendPort& type instead of XCChanend& 
    XCChanendPort& setDest(const unsigned x)    { XCChanend::setDest(x); return *this; }
    XCChanendPort& setGetDest()                 { return setDest(in()); }
    XCChanendPort& out(const unsigned x)        { XCChanend::out(x);     return *this; }
    XCChanendPort& outWord(const unsigned w)    { XCChanend::out(w);     return *this; }
    XCChanendPort& outByte(const char t)        { XCChanend::outByte(t); return *this; }
    XCChanendPort& outCT(const char ct)         { XCChanend::outCT(ct);  return *this; }
    XCChanendPort& outCTi(const char ct)        { XCChanend::outCTi(ct); return *this; }
    XCChanendPort& out(const XC::CTValue_t ct)  { XCChanend::outCT(ct);  return *this; }  
    XCChanendPort& outAddr()                    { out(addr);             return *this; }
    XCChanendPort& outTime()                    { out(XC::getTime());    return *this; }
    XCChanendPort& checkCT(const char ct)       { XCChanend::checkCT(ct);  return *this; }
    XCChanendPort& checkCT(const XC::CTValue_t ct) { XCChanend::checkCT(ct);  return *this; }
    XCChanendPort& checkCTi(const char ct)      { XCChanend::checkCTi(ct); return *this; }
    XCChanendPort& outCT_START()                { return outCTi(XC::CT_START); }
    XCChanendPort& outCT_END()                  { return outCTi(XC::CT_END);   }
    XCChanendPort& outCT_PAUSE()                { return outCTi(XC::CT_PAUSE); }
    XCChanendPort& outCT_ACK()                  { return outCTi(XC::CT_ACK);   }
    XCChanendPort& outCT_NACK()                 { return outCTi(XC::CT_NACK);  }
    XCChanendPort& checkCT_START()              { return checkCTi(XC::CT_START); }
    XCChanendPort& checkCT_END()                { return checkCTi(XC::CT_END);   }
    XCChanendPort& checkCT_ACK()                { return checkCTi(XC::CT_ACK);   }
    XCChanendPort& checkCT_NACK()               { return checkCTi(XC::CT_NACK);  }

//Sending data to a Port listener:

    //send a token if the channel is not locked by another sender. return true if sent.
    bool tryOutPort(unsigned ct) {
        if (lockTx.tryAcquire()) {
            outCT(ct);
            return true;            //keep locked status
        }
        return false;
    }

    //acquire and lock the channel, and send a token
    XCChanendPort& outPort(unsigned ct) {
        lockTx.acquire();
        outCT(ct);
        return *this;
    }

    //send a CT_END and release the Tx lock for the chanend
    XCChanendPort& outPortEND() { 
        outCT_END(); lockTx.release(); return * this; }

//listening a Port

    //just check if the channel contains a token, if yes extract it in shadow memory for comparaison
    inline bool testPort() {
        if (portReceived) return true;
        if ( (testPresence()) ) {
            if (testCT()) {
                portValue = inCT();
                return portReceived = true;
            } 
        }
      return false;
    }

    //try acquire the rx lock and test if any token received corresponding to the given port
    bool tryInPort(unsigned ct) {
        if (lockRx.tryAcquire()) {
            if (testPort()) {
                if (portValue == ct) {
                    portReceived = false;   //clear token from the shadow memory
                    return true;            //keep lock acquired
                }
            }
            lockRx.release();
        }
        return false;
    }

    // acquire the rx lock and wait if any token received corresponding to the given port
    XCChanendPort& inPort(unsigned ct) {
        while (tryInPort(ct) == false) { }
        return *this;
    }

    //execute a checkCTEND and release the Rx lock for the chanend
    XCChanendPort& checkPortEND() { 
        checkCT_END(); lockRx.release(); return *this; }

    //retreive token form shadow memory otherwise from chanend itself
    unsigned getPort() {
        unsigned res;
        lockRx.acquire();
        if (portReceived) {
            portReceived = false;
            res = portValue;
        } else
            res = inCT();   //assuming next token in chanend will be a port identifier
        lockRx.release();
        return res;
    }

    //take any byte or token from the chanel and cancel it.
    //stop and comes back when receiving a CT_END
    XCChanendPort& flushEND() {
        while(1) {
            if (testCT()) {
                char ct = inCT();
                if (ct==XC::CT_END) {
                    lockRx.release();
                    return *this;
                }
            } else {
                XC_UNUSED char ch = inByte();
            }
        }
        return *this;
    }

};

extern XCChanendPort XCChanendPortUndefined;

/*
used to create, aquire and release hardware (ultra fast) locks
the corresponding object instance must be global and visible from all potential thread using it
the ressource will be allocated by the XC runtime (using constructor)
*/
class XCLock : public XCResourceID {
public:
    XCLock()  { addr = XC::getRessource(XC::TYPE_LOCK); }
    ~XCLock() { XCResourceID::freeResource(); }
    //not needed for Locks
    XCResourceID& out(const unsigned x) = delete;
    unsigned      in()                  = delete;
    unsigned      in_()                 = delete;
    //from ISA architecture : input register is not impacted and can be reused
    void acquire() { asm volatile("in %0,res[%0]"::"r"(addr):"memory"); }
    void release() { asm volatile("out res[%0],%0"::"r"(addr):"memory"); }
};


//object used to manage clock blocks
class XCClock : public XCResourceID {
  public:
    XCClock() : XCResourceID(XC::CLK_REF) {}    //default to ref clock
    XCClock(XC::Clock_t c) : XCResourceID(c) {}
    XCClock& enable()  { setInUseOn();  return *this; }
    XCClock& disable() { setInUseOff(); return *this; }
    XCClock& start()   { setci(0x0F);   return *this; }
    XCClock& stop()    { setci(0x07);   return *this; }
    XCClock& setSourcePort(XCPort & p) { 
        asm volatile("setclk res[%0],%1"::"r"(addr),"r"(p.addr)); return *this; }
    XCClock& setReadySrc(XCPort & p) { 
        asm volatile("setrdy res[%0],%1"::"r"(addr),"r"(p.addr)); return *this; }
    XCClock& setDivide(const unsigned n) { setd(n); return *this; }
    XCClock& setSourceClkRef() { 
        asm volatile("setclk res[%0],%1"::"r"(addr),"r"(XC::CLK_REF));   return *this; }
    XCClock& setSourceClkXCore() { 
        asm volatile("setclk res[%0],%1"::"r"(addr),"r"(XC::CLK_XCORE)); return *this; }
    XCClock& setFallDelay(const unsigned x) { setc(0x8007 | ((x & 511)<<3)); return *this; }
    XCClock& setRiseDelay(const unsigned x) { setc(0x9007 | ((x & 511)<<3)); return *this; }
};


inline XCPort& XCPort::setClock(XCClock& clk) { return setClock(clk.addr); }
//helper to set protocols
inline XCPort& XCPort::protocolInHandshake(XCPort& readyIn, XCPort& readyOut, XCClock& clk) {
    setInOutData(); setBuffered(); in_(); 
    clk.setSourcePort(readyIn); setClock(clk); setReadyHandshake(); 
    clrBuffer(); readyOut.setOutReady(*this);
    return *this; }

inline XCPort& XCPort::protocolOutHandshake(XCPort& readyIn, XCPort& readyOut, XCClock& clk, unsigned initial) {
    setInOutData(); setBuffered(); out(initial);
    clk.setReadySrc(readyIn); setClock(clk);
    setReadyHandshake(); clrBuffer();
    readyOut.setOutReady(*this);
    return *this; }

inline XCPort& XCPort::protocolInStrobedMaster(XCPort& readyOut, XCClock& clk) {
    setInOutData(); setBuffered(); in_();
    setClock(clk); setReadyStrobed(); setMaster();
    clrBuffer(); readyOut.setOutReady(*this);
    return *this; }

inline XCPort& XCPort::protocolOutStrobedMaster(XCPort& readyOut, XCClock& clk, unsigned initial) {
    setInOutData(); setBuffered(); out(initial);
    setClock(clk); setReadyStrobed(); setMaster();
    clrBuffer(); readyOut.setOutReady(*this);
    return *this; }

inline XCPort& XCPort::protocolInStrobedSlave(XCPort& readyIn, XCClock& clk) {
    setInOutData(); setBuffered(); in_();
    clk.setReadySrc(readyIn); setClock(clk);
    setReadyStrobed(); setSlave();
    clrBuffer(); 
    return *this; }

inline XCPort& XCPort::protocolOutStrobedSlave(XCPort& readyIn, XCClock& clk, unsigned initial) {
    setInOutData(); setBuffered(); out(initial);
    clk.setReadySrc(readyIn); setClock(clk);
    setReadyStrobed(); setSlave();
    return *this; }

inline unsigned XCPort::countClock(XCClock& clk, unsigned ticks) {
    setClock(clk);
    int ts1 = getTriggerTime();
    XC::delayTicks(ticks);
    int ts2 = getTriggerTime();
    ts2 -= ts1; ts2 &= 0xFFFF;
    return ts2;
}

//used to manage remote GPIO port access
class XCPortRemote {
    unsigned addr;
    unsigned val;
    XCChanendPort & C;
    typedef enum {
        PORT_SERVER = 0x50, PORT_CLIENT = 0x51,
        C_SET = 1, C_AND, C_OR, C_XOR, C_AND_OR, C_IN, C_PEEK, C_DRIVE, C_PULLUP, C_PULLDOWN,
    } commands_t;
public:
    XCPortRemote() : addr(0), val(0), C(XCChanendPortUndefined) {}
    XCPortRemote(XCChanendPort & C_, unsigned x) : addr(x), val(0), C(C_) {}
    XCPortRemote& set(unsigned v) { 
        C.outPort(PORT_SERVER).outByte(C_SET).outWord(addr).outWord(v);
        val = C.in();
        C.checkCT_END();
        C.outPortEND();
        return *this;
    }
    XCPortRemote& peek() { 
        C.outPort(PORT_SERVER).outByte(C_PEEK).outWord(addr);
        val = C.in();
        C.checkPortEND().outPortEND();
        return *this;
    }
};



namespace XC {
  namespace PLL {
    //PROTOTYPES defined in XC_core.cpp

    //compute number of ticks per seconds based on the pll register value
    unsigned computeTicks(const unsigned pll);
    //simply return register value
    unsigned readValue();
    //return register value converted into ticks.
    unsigned readTicks();
    //write the PLL register with the codified provided value
    int writeValue(const unsigned pll);
    //wait 15ms
    void stabilize();
    //reset the processor by updating PLL register
    void reset();
  };
};

#endif //__cplusplus

//prototypes compatible with C calls.
extern "C" { 
    //use the local timer to perform a delay
    int XCwaitTimeAfter(const int target);
    int XCdelayTicks(const unsigned ticks);
    //int XCdelaySyncTicks(int * timer, const unsigned ticks);

    long long XCgetTime64();
    long long XCmicros();
    long long XCmillis();
    void XCdelayMicros(unsigned delaymicros);
    int  XCdelaySyncMicros(int &timeLast, unsigned delaymicros);

    unsigned XCgetReferenceHz();
    void XCsetReferenceHz(unsigned refhz);
    int XCPLLwriteValue(const unsigned pll);
    unsigned XCPLLreadValue();
    unsigned XCPLLreadTicks();
    void XCPLLstabilize();
    void XCPLLreset();

    void XCyield();

};

namespace xc = XC;
namespace xC = XC;


#endif //_XC_CORE_HPP_