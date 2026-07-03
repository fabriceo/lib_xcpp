#ifndef _XC_PORTBIT_HPP_
#define _XC_PORTBIT_HPP_

#include "XC_conf.hpp"

#include "XC_asm.hpp"

#include "XC_port.hpp"

extern XCPort XCPortUndefined; 

// a pin is a port associated with a binary mask (default 1)
// for one-bit port , the concept of pin is useless but does not hurt thanks to compiler optimization
class XCPortBit {
#if XCResourceID_USE_LOCALID
public:
#else
private:
#endif
    XCPort & port;    //by reference as multiple XCPortBits can share the same port information and use its unique shadow value
    const unsigned bitMask;
    //const unsigned sizePort;
public:
    XCPortBit() : port(XCPortUndefined),bitMask(0) {}
    XCPortBit(XCPort& p) : port(p), bitMask(1) { }
    XCPortBit(XCPort& p, const unsigned bit) : port(p), bitMask(1UL<<bit) { }
    XCPortBit(XCPortBit& pbit) : port(pbit.port), bitMask(pbit.bitMask) { }

    XCPortBit& set()  { port.setMask(bitMask); return *this; }
    XCPortBit& clr()  { port.clrMask(bitMask); return *this; }
    XCPortBit& flip() { port.outdXor(bitMask); return *this; }
    XCPortBit& set(const unsigned x) { if (x) set(); else clr(); return *this; }
    unsigned in() const  { return (port.in() & bitMask) != 0; }
    unsigned peek() { return (port.peek() & bitMask) != 0; }
    //returns the port (eventual) last out value, otherwise in())
    unsigned getd() const { return (port.getd() & bitMask) != 0; }
    unsigned getBitNum() const { return 31-XC::clz(bitMask); }
    unsigned getMask()   const { return bitMask; }
    XCPort&  getPort()  { return port; }
    //default operator , using a pin name will return value stored in shadow memory
    operator unsigned () const { return getd(); }
    //XCPortBit& operator = (const XCPortBit&) = default;
    XCPortBit& operator = (const XCPortBit& rhs) { 
        if (rhs != *this) { set(rhs.getd()); } return *this; };
    XCPortBit& operator = (XCPortBit&&) noexcept = default;
    XCPortBit& operator = (unsigned rhs) { set(rhs); return *this; }
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


#endif //_XC_PORTBIT_HPP_