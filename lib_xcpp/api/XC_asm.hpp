#ifndef _XC_ASM_HPP_
#define _XC_ASM_HPP_

#include <xs1.h>

#include "XC_conf.hpp"

#include "XC_types_enums.hpp"

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
    #if defined(_OPT_) && (_OPT_>1)
    inline unsigned getRessource(const XC::ResourceType_t t) { unsigned r; asm volatile("getr %0,%1":"=r"(r):"n"(t)); return r; }
    #else
    inline unsigned getRessource(const XC::ResourceType_t t) { unsigned r; 
        switch (t) {
            case TYPE_TIMER: asm volatile("getr %0, 1":"=r"(r)); break;
            case TYPE_CHANEND: asm volatile("getr %0, 2":"=r"(r)); break;
            case TYPE_SYNC: asm volatile("getr %0, 3":"=r"(r)); break;
            case TYPE_THREAD: asm volatile("getr %0, 4":"=r"(r)); break;
            case TYPE_LOCK: asm volatile("getr %0, 5":"=r"(r)); break;
            default : r=0; break;
        }
        return r; }
    #endif
    inline void freerr(const unsigned res) { asm volatile("freer res[%0]"::"r"(res)); }
    //gets the value of the thread SR register
    inline unsigned getsr() { register unsigned sr asm("r11"); asm volatile("get %0,sr":"=r"(sr)); return sr; }
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
    inline void     barrier() { asm volatile("":::"memory"); } //,"r0","r1","r2","r3","r4","r5","r6","r7","r8","r9","r10","r11");
    inline void     barrier_r0r1r2r3r11() { asm volatile("":::"memory","r0","r1","r2","r3","r11"); } //,"r4","r5","r6","r7","r8","r9","r10");
    inline unsigned peek(unsigned p) { unsigned res; asm volatile("peek %0,res[ %1 ]":"=r"(res):"r"(p)); return res; }


    inline void crc32(unsigned int &crc, unsigned data, unsigned poly) { 
        asm("crc32 %0,%1,%2":"+r"(crc):"r"(data),"r"(poly));
  }

    inline unsigned clz(const unsigned x) {
        unsigned res; 
        asm("clz %0,%1":"=r"(res):"r"(x));
        return res;
    }

};

//some 64bits related instructions
namespace XC {

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
  inline void std(const long long x,const void * base, const unsigned index) { 
    LongLong_t ll = { .ll = x }; std(ll, base, index); }

  inline void stdi(LongLong_t x,const void * base, const unsigned index) {
      if (__builtin_constant_p(index) && (index<12))
        asm("std %0,%1,%2[idx]"::"r"(x.lh.hi),"r"(x.lh.lo),"r"(base), [idx] "n"(index));
      else std(x,base,index);
  }
  inline void stdi(long long x,const void * base, const unsigned index) { 
    LongLong_t ll = { .ll = x }; stdi(ll, base, index);}

  inline void lsats(long long * x,const unsigned mant) {
      LongLong_t * ll = (LongLong_t *)x;
      asm("lsats %0,%1,%2":"=r"(ll->lh.hi),"=r"(ll->lh.lo):"r"(mant),"0"(ll->lh.hi),"1"(ll->lh.lo));
  }
  inline LongLong_t lsats(long long x,const unsigned mant) {
      LongLong_t res; LongLong_t ll = { .ll = x }; 
      asm("lsats %0,%1,%2":"=r"(res.lh.hi),"=r"(res.lh.lo):"r"(mant),"0"(ll.lh.hi),"1"(ll.lh.lo));
      return res;
  }

  inline int lextract(const long long x,const unsigned mant) {
      LongLong_t ll = { .ll = x };
      int res;
      asm("lextract %0,%1,%2,%3,32":"=r"(res):"r"(ll.lh.hi),"r"(ll.lh.lo),"r"(mant));
      return res;
  }

  inline void maccu(const unsigned long long * x, const unsigned a, const unsigned b) {
      LongLong_t * ull = (LongLong_t *)x;
      asm ("maccu %0,%1,%2,%3"
            : "=r"(ull->ulh.hi),"=r"(ull->ulh.lo)
            : "r"(a),"r"(b),"0"(ull->ulh.hi),"1"(ull->ulh.lo) );
  }
  inline LongLong_t maccu(const unsigned long long x, const unsigned a, const unsigned b) {
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
  inline void maccs2(long long * x, const int a, const int b) {
      LongLong_t * ll = (LongLong_t *)x;
      asm ("maccs %0,%1,%2,%3 ; maccs %0,%1,%2,%3"
            : "=r"(ll->ulh.hi),"=r"(ll->ulh.lo)
            : "r"(a),"r"(b),"0"(ll->ulh.hi),"1"(ll->ulh.lo) );
  }
  inline LongLong_t maccs(const long long x, const int a, const int b) {
      LongLong_t ll = { .ll = x };
      LongLong_t res;
      asm ("maccs %0,%1,%2,%3"
            : "=r"(res.ulh.hi),"=r"(res.ulh.lo)
            : "r"(a),"r"(b),"0"(ll.ulh.hi),"1"(ll.ulh.lo) );
      return res;
  }
  inline LongLong_t maccs2(const long long x, const int a, const int b) {
      LongLong_t ll = { .ll = x };
      LongLong_t res;
      asm ("maccs %0,%1,%2,%3 ; maccs %0,%1,%2,%3"
            : "=r"(res.ulh.hi),"=r"(res.ulh.lo)
            : "r"(a),"r"(b),"0"(ll.ulh.hi),"1"(ll.ulh.lo) );
      return res;
  }

  inline unsigned ldivu(const unsigned long long x, const unsigned d, unsigned * remainder) {
      LongLong_t ull = { .ull = x };
      unsigned div; unsigned rem;
      asm ("ldivu %0,%1,%2,%3,%4"
            : "=r"(div),"=r"(rem)
            : "r"(ull.ulh.hi),"r"(ull.lh.lo),"r"(d) );
      *remainder = rem;
      return div;

  }
  inline unsigned ldivu(const unsigned long long x, const unsigned d) { 
      LongLong_t ull = { .ull = x };
      unsigned div; unsigned rem;
      asm ("ldivu %0,%1,%2,%3,%4"
            : "=r"(div),"=r"(rem)
            : "r"(ull.ulh.hi),"r"(ull.lh.lo),"r"(d) );
      return div;
}

  inline LongLong_t lmulu(const unsigned a, const unsigned b, const unsigned c=0, const unsigned d=0) {
      LongLong_t res;
      asm("lmul %0,%1,%2,%3,%4,%5" : "=r"(res.ulh.hi),"=r"(res.lh.lo):"r"(a),"r"(b),"r"(c),"r"(d));
      return res;
  }

};

//related to VPU, not all as they are most used in assembly
namespace XC {

  inline void vsetc(unsigned ctrl) { 
    register unsigned _r11 asm("r11") = ctrl;
    asm ("vsetc %0"::"r"(_r11)); }
  inline void vldd(void * source) { asm ("vldd %0 [ 0 ]"::"r"(source)); }
  inline void vstd(void * dest)   { asm ("vstd %0 [ 0 ]"::"r"(dest)); }
  inline void vldr(void * source)   { 
    register void * _r11 asm("r11") = source;
    asm ("vldr %0 [ 0 ]"::"r"(_r11)); }
  inline void vstr(void * dest)   { asm ("vstr %0 [ 0 ]"::"r"(dest)); }
  inline void vldc(void * source) { asm ("vldc %0 [ 0 ]"::"r"(source)); }
  inline void vstc(void * dest)   { 
    register void * _r11 asm("r11") = dest;
    asm ("vstc %0 [ 0 ]"::"r"(_r11)); }
  inline void vstrpv(void * dest, unsigned mask) { asm ("vstrpv %0 [ 0 ],%1"::"r"(dest),"r"(mask)); }
  inline void vlashr(void * source, unsigned sr) { asm ("vlashr %0 [ 0 ],%1"::"r"(source),"r"(sr)); }
  inline void vlsub(void * source) { asm ("vlsub %0 [ 0 ]"::"r"(source)); }
  inline void vlmul(void * source) { asm ("vlmul %0 [ 0 ]"::"r"(source)); }
  inline void vlmacc(void * source){ asm ("vlmacc %0 [ 0 ]"::"r"(source)); }
  inline void vlsat(void * source) { asm ("vlsat %0 [ 0 ]"::"r"(source)); }
  inline void vpos()  { asm ("vpos"); }
  inline void vsign() { asm ("vsign"); }

};


  namespace XC {
//used to convert a float coded IEEE as a 32 bits integer, and opposite.
  inline unsigned FloatAsUL(float f) {
    union { float f; unsigned i; } u = {f};
    return u.i; }

  inline float ULAsFloat (unsigned i) {
    union { unsigned i; float f; } u = {i};
    return u.f; }

};



#endif //_XC_ASM_HPP_