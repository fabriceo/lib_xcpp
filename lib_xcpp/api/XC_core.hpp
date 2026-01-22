#ifndef _XC_CORE_HPP_
#define _XC_CORE_HPP_

//author: fabriceo 
//date:   december 2025
//inspired from https://github.com/xcore/tool_axe 
//and from XMOS xcore standard library

// Object Class to be used by user program start with XC and the first letter in capital
// example : XCPort p; XCTimer t; XCLock l; XCChanend c;

#include <xs1.h>
#include <stdint.h>
#include <stdio.h>

#ifndef XC_UNUSED
#define XC_UNUSED __attribute__ ((unused))
#endif
#ifndef XC_NOINLINE
#define XC_NOINLINE __attribute__ ((noinline))
#endif
#ifndef XC_NAKED
#define XC_NAKED __attribute__ ((naked))
#endif
#ifndef XC_DUAL_ISSUE
#define XC_DUAL_ISSUE __attribute__ ((dual_issue))
#endif
#ifndef XC_SINGLE_ISSUE
#define XC_SINGLE_ISSUE __attribute__ ((single_issue))
#endif

#ifndef XC_ALIGNED
#define XC_ALIGNED(_X) __attribute__ ((aligned(_X)))
#endif

//concat 2 parameters
#ifndef XC_JOIN0
#define XC_JOIN0(x,y) x ## y
#define XC_JOIN(x,y) XC_JOIN0(x,y)
#endif

//generate a string for the given parameter with surrounding ""
#define XC_STRINGIFY_I(...) #__VA_ARGS__
#define XC_STRINGIFY(_S) XC_STRINGIFY_I(_S)

//provide a unique label by adding the compiler unique counter value
#define XC_UNIQUE_LABEL_II(_BNAME, _CNT) _BNAME ## _CNT
#define XC_UNIQUE_LABEL_I(_BNAME, _CNT) XC_UNIQUE_LABEL_II(_BNAME, _CNT)
#define XC_UNIQUE_LABEL(_BNAME) XC_UNIQUE_LABEL_I(_BNAME, __COUNTER__)

#define XC_FUNC_ADDRESS(_f,_n)     do { register unsigned _r asm("r11"); asm ("ldap %0," #_f : "=r"(_r)); _n=r; } while(0)
#define XC_FUNC_NSTACKWORDS(_f,_n) do { asm ("ldc %0,  " #_f ".nstackwords"  : "=r"(_n) ); } while (0)

#ifdef __cplusplus
#if __cplusplus < 201103L
#warning missing -std=c++11 in compiler options
#endif

//some basic types used in XC classes
namespace XC {

  typedef unsigned Resource_t;
  typedef enum  {
    TYPE_PORT    = 0, TYPE_TIMER   = 1, TYPE_CHANEND = 2, TYPE_SYNC    = 3,          //dynamic allocation
    TYPE_THREAD  = 4, TYPE_LOCK    = 5, TYPE_CLKBLK  = 6,
  } ResourceType_t;

  typedef enum { 
    CLK_REF    = 0x001, CLK_XCORE = 0x101,
    CLKBLK_REF = 0x006, CLKBLK_1  = XS1_CLKBLK_1, CLKBLK_2 = XS1_CLKBLK_2, CLKBLK_3 = XS1_CLKBLK_3, CLKBLK_4 = XS1_CLKBLK_4, CLKBLK_5 = XS1_CLKBLK_5,
  } Clock_t;

  // list of all XMOS ports
typedef enum {
    PORT_UNDEFINED = 0,
    PORT_1A = XS1_PORT_1A,  PORT_1B = XS1_PORT_1B,  PORT_1C = XS1_PORT_1C,  PORT_1D = XS1_PORT_1D,
    PORT_1E = XS1_PORT_1E,  PORT_1F = XS1_PORT_1F,  PORT_1G = XS1_PORT_1G,  PORT_1H = XS1_PORT_1H,
    PORT_1I = XS1_PORT_1I,  PORT_1J = XS1_PORT_1J,  PORT_1K = XS1_PORT_1K,  PORT_1L = XS1_PORT_1L,
    PORT_1M = XS1_PORT_1M,  PORT_1N = XS1_PORT_1N,  PORT_1O = XS1_PORT_1O,  PORT_1P = XS1_PORT_1P,
    PORT_4A = XS1_PORT_4A,  PORT_4B = XS1_PORT_4B,  PORT_4C = XS1_PORT_4C,  PORT_4D = XS1_PORT_4D, 
    PORT_4E = XS1_PORT_4E,  PORT_4F = XS1_PORT_4F,
    PORT_8A = XS1_PORT_8A,  PORT_8B = XS1_PORT_8B,  PORT_8C = XS1_PORT_8C,  PORT_8D = XS1_PORT_8D,
    PORT_16A= XS1_PORT_16A, PORT_16B= XS1_PORT_16B, PORT_16C= XS1_PORT_16C, PORT_16D= XS1_PORT_16D,
    PORT_32A= XS1_PORT_32A, PORT_32B= XS1_PORT_32B,
  } Port_t;

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
};

//some inline functions specific to xcore architecture
namespace XC {
  inline unsigned getid() { register unsigned thread asm("r11"); asm volatile("get %0,id":"=r"(thread)); return thread; }
  inline unsigned getThreadID() { return getid(); }
  inline unsigned gettime() { unsigned time; asm volatile("gettime %0":"=r"(time)); return time; }
  inline unsigned getTime() { return gettime();  }
  inline unsigned getRessource(const ResourceType_t t) { unsigned r; asm volatile("getr %0,%1":"=r"(r):"n"(t)); return r; }
  inline unsigned getsr() { register unsigned sr asm("r11"); asm("get %0,sr":"=r"(sr)); return sr; }
  inline void     setsr(const unsigned sr)     { asm volatile("setsr %0" ::"n"(sr)); } //immediate value (constant only)
  inline void     clrsr(const unsigned sr)     { asm volatile("clrsr %0" ::"n"(sr)); } //immediate value (constant only)
  inline void     ecallFalse(const unsigned x) { asm volatile("ecallf %0" ::"r"(x)); }
  inline void     ecallTrue(const unsigned x)  { asm volatile("ecallt %0" ::"r"(x)); }
  inline void     clre() { asm volatile("clre"); }
  inline void     clrEvents()     { clre();   }
  inline void     enableEvents()  { clrsr(1); }
  inline void     disableEvents() { setsr(1); }
  inline void     setInterrupts() { setsr(2); }
  inline void     clrInterrupts() { clrsr(2); }
  inline void     ssync()   { asm volatile("ssync"); }
  inline void     msync(const unsigned sy) { asm volatile("msync res[%0]"::"r"(sy)); }
  inline void     mjoin(const unsigned sy) { asm volatile("mjoin res[%0]"::"r"(sy)); }
  inline void     nop()     { asm volatile("nop"); }
  inline void     barrier() { asm volatile("":::"memory"); }//,"r0","r1","r2","r3","r4","r5","r6","r7","r8","r9","r10","r11");
};

//partial support of select statement without needing <xcore.h>
namespace XC {
  //this function is expected to return an interger to be used within a switch statement
  //the return will be done via an event set with a vector defined by &XC::selectVector
  static __attribute__ ((noinline,naked,unused)) unsigned selectWait() { 
      asm volatile("waiteu":::"r11"); };
  //same but do not wait for the event : 
  //if no event raised then the value returned will be the one given as default
  static __attribute__ ((noinline,naked,unused))  unsigned selectNoWait(unsigned def) { 
      asm volatile("setsr 1 ; clrsr 1 ; retsp 0":::"r11"); }
  //this code is the entry point for event vector's
  static __attribute__ ((noinline,naked,dual_issue)) void selectVector() {
      asm volatile( //this code is compatible with both dual and single issue calls
        "get r11,ed ; { add r0,r11,0 ; retsp 0 }"); }

};

namespace XC {
  //imediately switch to next task in round robin list (if any)
  XC_UNUSED static void yield() { };
  //same but return here after a delay (in cpu ticks)
  XC_UNUSED static void yieldDelay(unsigned delayticks) { };
  XC_UNUSED static void yieldDelaySync(int &localTime, unsigned delayticks) { };
}

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
  inline void ldd(LongLong_t * x,const void * base, const unsigned index) {
      asm("ldd %0,%1,%2[idx]":"=r"(x->lh.hi),"=r"(x->lh.lo):"r"(base), [idx] "r"(index));
  }
  inline void ldd(long long * x,const void * base, const unsigned index) { ldd((LongLong_t*)x,base,index); }
  inline LongLong_t ldd(const void * base, const unsigned index) { LongLong_t res; ldd(&res,base,index); return res; }

  inline void lddi(LongLong_t * x,const void * base, const unsigned index) {
      if (__builtin_constant_p(index) && (index<12))
        asm("ldd %0,%1,%2[idx]":"=r"(x->lh.hi),"=r"(x->lh.lo):"r"(base), [idx] "n"(index));
      else ldd(x,base,index);
  }
  inline void lddi(long long * x,const void * base, const unsigned index) { lddi((LongLong_t*)x, base, index); }
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

};

//cpp version of the xmos software lock library.
//a lock object can be instanciated anywhere as it can be shared by multiple tasks.
class XCSWLock {
    volatile unsigned lock;
public:
    XCSWLock() : lock(0) { }
    //wait and set the lock
    void acquire() {
        unsigned myID = XC::getid()+1;
        do { while ( lock ) { }; lock = myID;
        //waiting some cpu cycle due to potential non-priority task having set the lock
        asm volatile("nop;nop;nop;nop;nop;nop;nop"); } 
        while( lock != myID ); } 

    //release the previously aquired lock
    void release() { lock = 0; }

    //try to acquire, return 0 if failed otherwise thread ID + 1 (non zero)
    unsigned tryAcquire() {
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

    void setReferenceHz(unsigned refhz);

    unsigned getReferenceHz();

    //this needs to be called from any core at least every 10 seconds otherwise will loose 31bit overflow
    long long getTime64();

    //return the real time 64 bits timer value divided by 100.
    //return as "signed long long" is a choice in order to be abble to compare futur and actual easily
    //the number will never reach 63 bit overflow as this would represent 2900 years of continuous execution
    long long micros();

    //same for milliseconds
    long long millis();

    void delayMicros(unsigned delaymicros);

    int delaySyncMicros(int &timeLast, unsigned delaymicros);
};

//basic object to hold the ressource identifier (=address) and some basic member function 
class XCResourceID {
private:
  enum ressource_e {
    TYPE_SHIFT = 0,  TYPE_SIZE = 8, TYPE_MASK = (1 << TYPE_SIZE) - 1,
    NUM_SHIFT  = 8,  NUM_SIZE  = 8, NUM_MASK  = (1 << NUM_SIZE)  - 1,
    SIZE_SHIFT = 16, SIZE_SIZE = 8, SIZE_MASK = (1 << SIZE_SIZE) - 1
  };

public:
  XC::Resource_t addr;
  
  XCResourceID() { }
  XCResourceID(XC::Resource_t val) : addr(val) { }

  //return the type of the ressource
  XC::ResourceType_t type() { return (XC::ResourceType_t)((addr >> TYPE_SHIFT) & TYPE_MASK); }
  unsigned num()  { return (addr >> NUM_SHIFT) & NUM_MASK; }
  unsigned size() { return (addr >> SIZE_SHIFT) & SIZE_MASK; }

  void inline setc(const unsigned c)  { asm volatile("setc res[%0],%1"::"r"(addr),"r"(c)); }
  void inline setci(const unsigned i) { 
    asm volatile("setc res[%0],%1"::"r"(addr),"n"(i)); }
  void inline setd(const unsigned d)  { asm volatile("setd res[%0],%1"::"r"(addr),"r"(d)); }
  unsigned inline getd() { unsigned v;  asm("getd %0,res[%1]":"=r"(v):"r"(addr)); return v; }
  void inline eeu() { asm volatile("eeu res[%0]"::"r"(addr)); }
  void inline edu() { asm volatile("edu res[%0]"::"r"(addr)); }
  bool isPort()    { return type() == XC::TYPE_PORT;    }
  bool isTimer()   { return type() == XC::TYPE_TIMER;   }
  bool isChanend() { return type() == XC::TYPE_CHANEND; }
  bool isSync()    { return type() == XC::TYPE_SYNC;    }
  bool isThread()  { return type() == XC::TYPE_THREAD;  }
  bool isLock()    { return type() == XC::TYPE_LOCK;    }
  bool isClkBlk()  { return type() == XC::TYPE_CLKBLK;  }

  XCResourceID& setInUseOn()        { setci(8);   return *this; }
  XCResourceID& setInUseOff()       { setci(0);   return *this; }
  XCResourceID& setCond(const unsigned x) { setc(x); return *this; }
  XCResourceID& setCondNone()       { setci(1);   return *this; }
  XCResourceID& setModeEvent()      { setci(2);   return *this; }
  XCResourceID& setModeInterrupt()  { setci(0xA); return *this; }
  XCResourceID& setEvent()          { eeu();      return *this; }
  XCResourceID& clrEvent()          { edu();      return *this; }
  XCResourceID& setVector(unsigned x) { 
    register unsigned r11 asm("r11") = x;
    asm volatile("setv res[%0],%1"::"r"(addr),"r"(r11));  return *this; }
  XCResourceID& setVector(unsigned (* x)()) { return setVector((unsigned)x); }
  XCResourceID& setVector(void (* x)())     { return setVector((unsigned)x); }
  XCResourceID& setSelect(const unsigned s) { 
    setVector(&XC::selectVector); return setEnvironment(s); }
  XCResourceID& setEnvironment(unsigned x)  { 
    register unsigned r11 asm("r11") = x;
    asm volatile("setev res[%0],%1"::"r"(addr),"r"(r11)); return *this; }
  XCResourceID& out(const unsigned x) { 
    asm volatile("out res[%0],%1"::"r"(addr),"r"(x));   return *this; }
  XCResourceID&  outOut(const unsigned x, const unsigned y)  {
    asm volatile("out res[%0],%1 ; out res[%0],%2"::"r"(addr),"r"(x),"r"(y)); return *this; }
  unsigned in() const { unsigned val; 
    asm ("in %0,res[%1]":"=r"(val):"r"(addr));  return val; }
  //will generate "in" instruction, event if not used
  unsigned in_() const { unsigned val; 
    asm volatile("in %0,res[%1]":"=r"(val):"r"(addr));  return val; }
  void freeResource() { 
    asm volatile("freer res[%0]"::"r"(addr)); addr = 0; }
  operator XC::Resource_t () { return addr; } //default operator will return the ID (=address) of the resource
  XCResourceID& operator = (XC::Resource_t rhs) { addr = rhs; return *this; }
  XCResourceID& operator = (XCResourceID& rhs)  { if (rhs != *this) addr = rhs.addr; return *this; }
};

class XCClock;

// object representing a physical port 1,4,8,16 or 32 bits
class XCPort : public XCResourceID {
private:
    unsigned val;   //port last value (shadow)
    void init(XC::Port_t p) { setInUseOn(); peek(); }
public:
    typedef enum { INPUT, OUTPUT_DRIVE, OUTPUT_PULLUP, OUTPUT_PULLDOWN } PortMode_t;

    //gives possibility to declare a port object without giving its address yet.
    XCPort() : XCResourceID(XC::PORT_UNDEFINED), val(0) { }

    XCPort(XC::Port_t p) : XCResourceID(p) { init(p); }
    XCPort(unsigned p)   : XCPort((XC::Port_t) p) {  }

    XCPort(XC::Port_t p, PortMode_t mode) : XCResourceID(p) { 
        init(p); 
        if (mode == OUTPUT_DRIVE)    clr().setDrive();
        else 
        if (mode == OUTPUT_PULLUP)   set().setPullUp();
        else 
        if (mode == OUTPUT_PULLDOWN) clr().setPullDown();
        else in_();
    }
    XCPort(unsigned p, PortMode_t mode) : XCPort((XC::Port_t)p, mode) { }
    XCPort(XC::Port_t p, PortMode_t mode, unsigned initial) : XCResourceID(p) { 
        init(p); 
        if (mode == OUTPUT_DRIVE)    set(initial).setDrive();
        else 
        if (mode == OUTPUT_PULLUP)   set(initial).setPullUp();
        else 
        if (mode == OUTPUT_PULLDOWN) set(initial).setPullDown();
        else in_();
    }
    XCPort(unsigned p, PortMode_t mode, unsigned initial) : XCPort((XC::Port_t)p, mode, initial) { }
            
    ~XCPort() { if (addr) { setInUseOff(); } }

    //same function names as in xcore library, just removing _ and introducing capital leters
    bool     oneBit()       { return size() == 1; }
    XCPort&  enable()       { setInUseOn();  return *this; }  
    XCPort&  reset()        { setInUseOn();  return *this; }
    XCPort&  free()         { setInUseOff(); return *this; }
    XCPort&  setTransferWidth(const unsigned w) { asm volatile("settw res[%0],%1"::"r"(addr),"r"(w)); return *this; }
    XCPort&  setBuffered()  { setci(0x200F); return *this; }
    XCPort&  setUnbuffered(){ setci(0x2007); return *this; } 
    XCPort&  setClock(XCClock& clk); //defined later as we dont know class XCClock content
    XCPort&  setInOutData() { setci(0x5007); return *this; }
    XCPort&  setOutClock()  { setci(0x500F); return *this; }
    XCPort&  setReadyport() { setci(0x5017); return *this; }
    XCPort&  setOutReady(XCPort& p) { setReadyport(); asm volatile("setrdy res[%0],%1"::"r"(addr),"r"(p.addr));  return *this;}
    XCPort&  setInvert()    { setci(0x600F); return *this; }
    XCPort&  setNoInvert()  { setci(0x6007);  return *this; }
    XCPort&  setSampleFallingEdge() { setci(0x400F); return *this; }
    XCPort&  setSampleRisingEdge()  { setci(0x4007); return *this; }
    XCPort&  setMaster()    { setci(0x1007); return *this; }
    XCPort&  setSlave ()    { setci(0x100F); return *this; }
    XCPort&  setNoReady()   { setci(0x3007); return *this; }
    XCPort&  setReadyStrobed()   { setci(0x300F); return *this; }
    XCPort&  setReadyHandshake() { setci(0x3017); return *this; }
    XCPort&  setTriggerTime(unsigned t) { asm volatile("setpt res[%0],%1"::"r"(addr),"r"(t)); return *this; }
    XCPort&  clrTriggerTime() { asm volatile("clrpt res[%0]"::"r"(addr));     return *this; }
    XCPort&  setTriggerValue(const unsigned v) { setd(v); return *this; }
    XCPort&  setTriggerInEqual(const unsigned v) { setd(v); setci(0x11); return *this; }
    XCPort&  setTriggerInNotEqual(const unsigned v) { setd(v); setci(0x19); return *this; }
    XCPort&  clrTriggerIn() { setCondNone(); return *this; }
    XCPort&  out(const unsigned x) { val=x; XCResourceID::out(x); return *this; }
    XCPort&  outOut(const unsigned x, const unsigned y) { val=y; XCResourceID::outOut(x,y); return *this; }
    XCPort&  outShiftRight(const unsigned x) { val=x; asm volatile("outshr res[%0],%1":"=r"(addr):"r"(x)); return *this; }
    XCPort&  clrBuffer() { setci(0x17);   return *this; }
    XCPort&  sync()  { asm volatile("syncr res[%0]"::"r"(addr)); return *this; }
    XCPort&  setShiftCount(const unsigned c) { asm volatile("setpsc res[%0],%1"::"r"(addr),"r"(c)); return *this; }
    XCPort&  outPartialWord(const unsigned x,const unsigned bits) { val=x; asm volatile("outpw res[%0],%1,%2"::"r"(addr),"r"(x),"r"(bits)); return *this; } //could be specialized with imediate instruction
    XCPort&  set(const unsigned x) { out(x); return *this; }
    XCPort&  set() { if (oneBit()) out(1); else out(0xFFFFFFFF); return *this; }
    XCPort&  clr() { out(0); return *this; }
    XCPort&  outAndOr(unsigned and_, unsigned or_) { val |= or_; val &= and_; XCResourceID::out(val); return *this; }
    XCPort&  outAnd(unsigned and_) { val &= and_; XCResourceID::out(val); return *this; }
    XCPort&  outOr(unsigned or_)   { val |= or_;  XCResourceID::out(val); return *this; }
    XCPort&  outXor(unsigned xor_) { val ^= xor_; XCResourceID::out(val); return *this; }
    XCPort&  setMask(const unsigned x) { out(val | x);  return *this; }
    XCPort&  clrMask(const unsigned x) { out(val & ~x); return *this; }
    XCPort&  setBit( const unsigned x) { out(val |  (1UL << x)); return *this; }
    XCPort&  clrBit( const unsigned x) { out(val & ~(1UL << x)); return *this; }
    //getPortTimestamp voluntary returns a 32bit integer type but the value inside is 16bit only, sign not extended.
    //to measure difference between 2 , it is suggested to make 32bit substraction and then "and 0xFFFF" to get the exact difference
    XCPort&  setDrive()    { setci(0x03);   return *this; }
    XCPort&  setPullUp()   { setci(0x13);   return *this; }
    XCPort&  setPullDown() { setci(0x0B);   return *this; }
    //the value for PadCtrl parameters is expected in bit 23..18 according to datasheet
    XCPort&  setPadCtrl(const unsigned x)  { setc((x & 0x7FFC0000) | 6); return *this; }
    XCPort&  setPadDelay(const unsigned x) { setc(0x7007 | ((((x<5)?x:4)<<3)));  return *this; }
    XCPort&  setCondEqual(const unsigned x)    { setTriggerInEqual(x);       return *this; }
    XCPort&  setCondNotEqual(const unsigned x) { setTriggerInNotEqual(x);    return *this; }
    unsigned waitEqual(const unsigned mask)    { setTriggerInEqual(mask);    return in_();  }
    unsigned waitNotEqual(const unsigned mask) { setTriggerInNotEqual(mask); return in_();  }
    unsigned inShiftRight() { asm("inshr %0,res[%1]":"=r"(val):"r"(addr)); return val; }
    unsigned endin() { unsigned res; asm("endin %0,res[%1]":"=r"(res):"r"(addr)); return res; }
    unsigned getTriggerTime() { int time; asm("getts %0,res[%1]":"=r"(time):"r"(addr)); return time; }
    unsigned peek()   { asm("peek %0,res[%1]":"=r"(val):"r"(addr)); return val; } //not volatile, as the resulting value may not be used by subsequent code
    unsigned in()     { return val = XCResourceID::in(); }
    unsigned in_()     { return val = XCResourceID::in_(); }
    unsigned getVal() { return val; }
    XCPort& operator= (unsigned rhs) { set(rhs);   return *this; }
    XCPort& operator= (XCPort& p)    { if (p != *this) addr = p.addr; return *this; }
    //having a port name inside an expression will return the port value by peek routine
    operator unsigned ()   { return peek(); }
    //a portname with brackets will return the peek value
    unsigned operator() () { return peek(); }
    //a portname with brackets and integer will return the bit value of peek 
    unsigned operator() (unsigned bit) { return peek() & (1UL << bit); }

    unsigned countClock(XCClock& clk, unsigned ticks);
    XCPort&  protocolInHandshake(XCPort& readyIn, XCPort& readyOut, XCClock& clk);
    XCPort&  protocolOutHandshake(XCPort& readyIn, XCPort& readyOut, XCClock& clk, unsigned initial);
    XCPort&  protocolInStrobedMaster(XCPort& readyOut, XCClock& clk);
    XCPort&  protocolOutStrobedMaster(XCPort& readyOut, XCClock& clk, unsigned initial);
    XCPort&  protocolInStrobedSlave(XCPort& readyIn, XCClock& clk);
    XCPort&  protocolOutStrobedSlave(XCPort& readyIn, XCClock& clk, unsigned initial);

};

extern XCPort portUndefined; 

// a pin is a port associated with a binary mask (default 1)
// for one-bit port , the concept of pin is useless but does not hurt thanks to compiler optimization
class XCPin {
public:
    XCPort &port;    //by reference as multiple XCPins can share the same port information and expose their shadow value
    unsigned mask;  
    XCPin() : port(portUndefined), mask(0) { }
    XCPin(XCPin& p)  : port(p.port), mask(p.mask) { }
    XCPin(XCPort& p) : port(p), mask(1) { }
    XCPin(XCPort& p, unsigned mask_) : port(p), mask(mask_) { }
    XCPin&   set() { if (port.oneBit()) port.set(); else port.outOr(mask);   return *this; }
    XCPin&   clr() { if (port.oneBit()) port.clr(); else port.outAnd(~mask); return *this; }
    XCPin&   set(const unsigned x) { if (x) set(); else clr(); return *this; }
    unsigned in()   { if (port.oneBit()) return port.in();   else return (port.in() & mask) != 0; }
    unsigned peek() { if (port.oneBit()) return port.peek(); else return (port.peek() & mask) != 0; }
    operator unsigned () { return peek(); }
    operator XCPort& ()  { return port; }
    XCPin& operator = (unsigned rhs) { set(rhs); return *this; }
    XCPin& operator = (XCPin& p) { if (p != *this) { port = p.port; mask = p.mask; }; return *this; }
    XCPin& operator = (XCPort& p) { port = p; mask = 1; return *this; }
    unsigned operator () () { return peek(); }
    unsigned waitPinEqual(const unsigned x)  {
        if (port.oneBit()) return port.waitEqual(x);
        else {
            unsigned v = x ? mask : 0;
            unsigned p = port.in();
            while (1) {
                if ((p & mask) == v ) return 1;
                p = port.waitNotEqual(p);
            }
        }
    }
    unsigned waitPinNotEqual(unsigned x) { return waitPinEqual(x?0:1); }
};

/*
simple timer object using gettime instruction.
can be used when waiting doesnt require to hold the task to give corresponding mips to other tasks.
*/
class XCTimerMicros {
private:
    long long ofset;
public:
    XCTimerMicros() { clr(); }
    XCTimerMicros(const long long t) { set(t); }
    XCTimerMicros& clr() { ofset = XC::micros(); return *this; }
    XCTimerMicros& set(const long long t) { ofset = XC::micros() + t; return *this; }
    long long get() { return XC::micros() - ofset; }
    long long getLeft() { 
        long long remain = ofset - XC::micros(); 
        if (remain < 0) remain = 0;
        return remain;
    }
    long long remains() { return getLeft(); }
    XCTimerMicros& wait() { while (remains()) {} ; return *this; }
    XCTimerMicros& wait(const long long t) { 
        long long target = XC::micros() + t;
        while( (XC::micros() - target)< 0) {} ; return *this; }
    XCTimerMicros& operator =  (long long rhs) { set(rhs);     return *this; }
    XCTimerMicros& operator += (long long rhs) { ofset += rhs; return *this; }
    XCTimerMicros& operator -= (long long rhs) { ofset -= rhs; return *this; }
    XCTimerMicros& operator = (XCTimerMicros& rhs) { 
        if (&rhs != this) ofset = rhs.ofset; return *this; }
    long long operator () () { return get(); }
    operator long long ()    { return get(); }

};


/*
  when using "in" on a timer, the return value is exact same as gettime
  if setCondAfter() was done then "in" will block until the timer reach the value put with setd(x)
  after this, doing multiple "in" will not block, unless another setd(x) is made. 
  so setCondAfter() is permanent but armed by setd(x)
*/

//point on a table of preallocated timer ressource (only for xC programs)
extern volatile XC::Resource_t __timers[8];   

//class to declare timer objects.
//once an object is instanciated, the getLocal() or getRessource should be called 
//from the task using it, before using it.
class XCTimer : public XCResourceID {
public:
    //allocate a timer ressource from the pool
    inline XCTimer& getResource() { addr = XC::getRessource(XC::TYPE_TIMER); setCondNone(); setd(0); return *this;  }
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
    XCTimer& setTriggerTime(const int x) { setd(x); return setCondAfter(); }
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
        return waitAfter( in() + x ); }
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

/* 
timer class to be used to access the predefined timer in the current core
the object should be declared within a function, not globaly 
as the constructor should be launched from within the core using it.
The timer ressource is not freed when the objects comes out of scope
but the resource address is stored in the __timers table, for reuse
*/
class XCTimerLocal : public XCTimer {
public:
    XCTimerLocal() { XCTimer::getLocal(); }
    XCTimerLocal(unsigned ID) { XCTimer::getLocal(ID); }
    XCTimer& getResource() = delete;
};

/*
this timer class will allocate a dynamic timer ressource
the object should be declared within a function, not globaly 
as the constructor should be launched from within the sole core using it.
timer ressource is freed when object comes out of scope
*/
class XCTimerNew : public XCTimer {
public:
    XCTimerNew() { XCTimer::getResource(); }
    XCTimer& getLocal() = delete;
    XCTimer& getLocal(unsigned ID) = delete;
    XCTimer& setLocal() = delete;
    XCTimer& setLocal(unsigned ID) = delete;
    XCTimer& clrLocal() = delete;
    ~XCTimerNew() { freeResource(); }
};

namespace XC {

    inline int waitTimeAfter(const int target) {
        // use task ressource timer
        XCTimerLocal rtimer;
        return rtimer.waitAfter(target); }

    inline int delayTicks(const unsigned ticks) {
        // use thread ressource timer
        XCTimerLocal rtimer;
        return rtimer.waitTicks(ticks); }

    inline int delaySyncTicks(int &timer, const unsigned ticks) {
        // use thread ressource timer
        XCTimerLocal rtimer;
        timer += ticks;
        return rtimer.waitAfter(timer); }
};

//used to handle communication across cores/tiles
class XCChanend : public XCResourceID {
public:

    XCChanend() {}
    XCChanend& getResource() { addr = XC::getRessource(XC::TYPE_CHANEND); return *this;  }
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
    unsigned   testCT() const  { unsigned t;
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
use this agreagated class to use a channel across multiple origin and multiple dest
a driver should listen a "port" value (any control token between 0x04 and 0x7F)
a return adress can be sent after the port control token to send answer to the sender
locks are managed to protect the chanend until CT_END is sent
*/
class XCChanendPort : public XCChanend {
private:
    XCSWLock lockTx;
    XCSWLock lockRx;
    volatile unsigned portReceived;   //true when a contol token has been extracted from the chanend
    unsigned lastPort;                //pending value of this control token

public:
    XCChanendPort() : portReceived(0)  {}
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

private:
    //just check if the channel contains a token, if yes extract it in shadow memory for comparaison
    inline unsigned testPort() {
        if (portReceived) return true;
        if ( (testPresence()) ) {
            if (testCT()) {
                lastPort = inCT();
                return portReceived = true;
            } 
        }
      return false;
    }
  public:

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

    //try acquire the rx lock and test if any token received corresponding to the given port
    bool tryInPort(unsigned ct) {
        if (lockRx.tryAcquire()) {
            if (testPort()) {
                if (lastPort == ct) {
                    portReceived = false;
                    return true;  //lock kept acquired
                }
            }
            lockRx.release();
        }
        return false;
    }

    //execute a checkCTEND and release the Rx lock for the chanend
    XCChanendPort& checkPortEND() { 
        checkCT_END(); lockRx.release(); return * this; }

    //retreive token form shadow memory otherwise from chanend itself
    unsigned getPort() {
        unsigned res;
        lockRx.acquire();
        if (portReceived) {
            portReceived = false;
            res = lastPort;
        } else
            res = inCT();   //assuming next token in chanend will be a port identifier
        lockRx.release();
        return res;
    }

};

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
    XCClock() {}
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


inline XCPort& XCPort::setClock(XCClock& clk) { 
    asm volatile("setclk res[%0],%1"::"r"(addr),"r"(clk.addr)); return *this; }
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
    int XCdelaySyncTicks(int & timer, const unsigned ticks);

    long long XCgetTime64();
    long long XCmicros();
    long long XCmillis();
    void XCdelayMicros(unsigned delaymicros);
    int  XCdelaySyncMicros(int &timeLast, unsigned delaymicros);

    void XCsetReferenceHz(unsigned refhz);
    int XCPLLwriteValue(const unsigned pll);
    unsigned XCPLLreadValue();
    unsigned XCPLLreadTicks();
    void XCPLLstabilize();
    void XCPLLreset();

    void XCyield();
};


#endif //_XC_CORE_HPP_