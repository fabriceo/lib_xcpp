#ifndef _XC_RESSOURCE_HPP_
#define _XC_RESSOURCE_HPP_

#include "XC_conf.hpp"

#include "XC_types_enums.hpp"

#include "XC_select.hpp"

#define XCResourceID_USE_LOCALID 0

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
#if XCResourceID_USE_LOCALID
  unsigned localID;       
#endif
  XCResourceID() : XCResourceID(0) {  }
  //create the resource object and allocate an adress
  XCResourceID(XC::Resource_t val) : addr(val) { 
#if XCResourceID_USE_LOCALID
    localID = 1+XC::getid(); 
#endif
}

  //return the type of the ressource
  XC::ResourceType_t type() const { return (XC::ResourceType_t)((addr >> TYPE_SHIFT) & TYPE_MASK); }
  //return the ressource number
  unsigned num() const { return (addr >> NUM_SHIFT) & NUM_MASK; }
  //return the size of the ressource 1/4/8/16/32 bits
  unsigned size() const { return (addr >> SIZE_SHIFT) & SIZE_MASK; }
  //sets a condition on the ressource
  void inline setc(const unsigned c)  { asm volatile("setc res[%0],%1"::"r"(addr),"r"(c)); }
  //sets a condition on the ressource (immediate 0..11)
  //constrain "n" WILL NOT COMPILE IF OPTIMIZATION IS BELOW 2 !!!
  #if defined(_OPT_) && (_OPT_>1)
  void inline setci(const unsigned i) {  asm volatile("setc res[%0],%1"::"r"(addr),"n"(i)); }
  #else
  void inline setci(const unsigned i) {  asm volatile("setc res[%0],%1"::"r"(addr),"r"(i)); }
  #endif
  //returns the value of the data register attached to a resource
  unsigned inline getd() const { asm volatile("###getd()");unsigned v;  asm("getd %0,res[%1]":"=r"(v):"r"(addr)); return v; }
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
  //sets the data register attached to a resource
  XCResourceID& setd(const unsigned d)  { asm volatile("setd res[%0],%1"::"r"(addr),"r"(d)); return *this; }
  //output a value to the resource
  XCResourceID& out(const unsigned x) { 
    asm volatile("out res[%0],%1"::"r"(addr),"r"(x));   return *this; }
  //output a value to a resource and save the value in the resource data register
  XCResourceID& outd(const unsigned x)  { asm volatile("setd res[%0], %1 ; out res[%0],%1"::"r"(addr),"r"(x)); return *this; }
  //output the actual ressource data register or-ed with the provided mask
  XCResourceID& outdOr(const unsigned mask)  { asm volatile("###outdOr()"); unsigned temp = getd() | mask; return outd(temp); }
  //output the actual ressource data register and-ed with the provided mask
  XCResourceID& outdAnd(const unsigned mask)  { unsigned temp = getd() & mask; return outd(temp); }
  //output the actual ressource data register andnot-ed with the provided mask
  XCResourceID& outdAndNot(const unsigned mask)  { unsigned temp = getd() & ~mask; return outd(temp); }
  //output the actual ressource data register andnot-ed and or-ed with the provided mask
  XCResourceID& outdAndOr(const unsigned and_, const unsigned or_)  { unsigned temp = (getd() & and_) | or_; return outd(temp); }
  //output the actual ressource data register and-ed with the provided mask
  XCResourceID& outdXor(const unsigned mask)  { unsigned temp = getd() ^ mask; return outd(temp); }
  //input a value from the resource. the compiler will discard this instruction if the value is unused
  unsigned in() const { unsigned res; asm volatile ("in %0,res[%1]":"=r"(res):"r"(addr));  return res; }
  //frees the resource
  void freeResource() { 
    asm volatile("freer res[%0]"::"r"(addr)); addr = 0; }
  operator XC::Resource_t () { return addr; } //default operator will return the ID (=address) of the resource
  XCResourceID& operator=(const XCResourceID&) = default;
  XCResourceID& operator=(XCResourceID&&) noexcept = default;
  //providing an adress as an un/signed integer will assign it to the ressource.addr
  XCResourceID& operator = (XC::Resource_t rhs) { addr = rhs; return *this; }
};


#endif //_XC_RESSOURCE_HPP_