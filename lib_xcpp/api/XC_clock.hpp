#ifndef _XC_CLOCK_HPP_
#define _XC_CLOCK_HPP_

#include "XC_conf.hpp"
#include "XC_ressource.hpp"
#include "XC_port.hpp"
#include "XC_hwtimer.hpp"

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
    setInOutData(); setBuffered(); in(); 
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
    setInOutData(); setBuffered(); in();
    setClock(clk); setReadyStrobed(); setMaster();
    clrBuffer(); readyOut.setOutReady(*this);
    return *this; }

inline XCPort& XCPort::protocolOutStrobedMaster(XCPort& readyOut, XCClock& clk, unsigned initial) {
    setInOutData(); setBuffered(); out(initial);
    setClock(clk); setReadyStrobed(); setMaster();
    clrBuffer(); readyOut.setOutReady(*this);
    return *this; }

inline XCPort& XCPort::protocolInStrobedSlave(XCPort& readyIn, XCClock& clk) {
    setInOutData(); setBuffered(); in();
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



#endif //_XC_CLOCK_HPP_