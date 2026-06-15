#ifndef _XC_CHANEND_HPP_
#define _XC_CHANEND_HPP_

#include <stdint.h>

#include "XC_conf.hpp"
#include "XC_asm.hpp"
#include "XC_ressource.hpp"

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

    //XCChanend() {} : inherit copy constructor from XCResourceID()
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
    XCChanend& outFloat(const float f) { return out(XC::FloatAsUL(f)); }
    XCChanend& outByte(const char t) {
      asm volatile("outt res[%0],%1"::"r"(addr),"r"(t)); return *this; }
    XCChanend& outLongLong(const long long ll) { outWord(ll & 0xFFFFFFFF); outWord(ll>>32); return *this; }
    XCChanend& outCT(const char ct) {
      asm volatile("outct res[%0],%1"::"r"(addr),"r"(ct)); return *this; }
    #if defined(_OPT_) && (_OPT_>1)
      XCChanend& outCTi(const char ct) { //ct <=11
      asm volatile("outct res[%0],%1"::"r"(addr),"n"(ct)); return *this; }
    #else
      XCChanend& outCTi(const char ct) { //ct <=11
      asm volatile("outct res[%0],%1"::"r"(addr),"r"(ct)); return *this; }
    #endif
    XCChanend& out(const XC::CTValue_t ct) { return outCT(ct); }  
    XCChanend& outCT_START() { return outCTi(XC::CT_START); }
    XCChanend& outCT_END()   { return outCTi(XC::CT_END);   }
    XCChanend& outCT_PAUSE() { return outCTi(XC::CT_PAUSE); }
    XCChanend& outCT_ACK()   { return outCTi(XC::CT_ACK);   }
    XCChanend& outCT_NACK()  { return outCTi(XC::CT_NACK);  }
    XCChanend& outAddr()     { out(addr); return *this;     }
    XCChanend& outTime()     { out(XC::getTime()); return *this; }
    template<typename T = uint8_t>
    T inByte() const { unsigned t;
      asm volatile("int %0,res[%1]":"=r"(t):"r"(addr)); return static_cast<T>(t); }
    long long  inLongLong() const { unsigned lo,hi;
      asm volatile("in %0,res[  %1 ]":"=r"(lo):"r"(addr)); 
      asm volatile("in %0,res[  %1 ]":"=r"(hi):"r"(addr)); 
      return (((long long)hi)<<32) | lo; }
    unsigned   inCT() const { unsigned ct; 
      asm volatile("inct %0,res[%1]":"=r"(ct):"r"(addr)); return ct; }
    unsigned   in() const { return XCResourceID::in(); } //always use volatile version
    float      inFloat() const { return XC::ULAsFloat(XCResourceID::in()); } //always use volatile version
    XCChanend& inDest() { setDest(in()); return *this; }
    XCChanend& setNetwork(const unsigned n) {
      asm volatile("setn res[%0],%1"::"r"(addr),"r"(n)); return *this; }
    unsigned   getNetwork() const { unsigned n;
      asm("getn %0,res[%1]":"=r"(n):"r"(addr)); return n; } 
    XCChanend& checkCT(const char ct) { 
      asm volatile("chkct res[%0],%1"::"r"(addr),"r"(ct)); return *this; }
    #if defined(_OPT_) && (_OPT_>1)
    XCChanend& checkCTi(const char ct) { //ct <=11
      asm volatile("chkct res[%0],%1"::"r"(addr),"n"(ct)); return *this; }
    #else
    XCChanend& checkCTi(const char ct) { //ct <=11
      asm volatile("chkct res[%0],%1"::"r"(addr),"r"(ct)); return *this; }
    #endif

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


#endif