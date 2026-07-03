#ifndef _XC_PORT_HPP_
#define _XC_PORT_HPP_

#include "XC_conf.hpp"

#include "XC_helpers.hpp"

#include "XC_types_enums.hpp"

#include "XC_ressource.hpp"

#include "XC_time_us_ms.hpp"

class XCClock;

// object representing a physical port 1,4,8,16 or 32 bits
// when port is writen with outd(), the data is shadowed in its "d" register
class XCPort : public XCResourceID {
    XC_UNUSED const XC::TileID_t tileID;
public:
    //possibility to use XC::portmode or XCPort::portmode
    typedef XC::PortMode_t PortMode_t;
    //gives possibility to declare a port object without giving its address yet.
    XCPort() : XCResourceID(0), tileID(XC::tileNull) { }

    //defines a port with its adress using predefined XS1_PORT_xx
    XCPort(unsigned p) : XCResourceID(p), tileID(XC::tileNull) { }
        
    //defines a port with its adress and the operating mode, no tile specified
    XCPort(unsigned p, PortMode_t mode_) : XCResourceID(p), tileID(XC::tileNull) {  
        if (XC::tileMainStarted == 0) __builtin_trap(); //cannot initialize a global port defined without specific tile
        setMode(mode_);
    }
    //defines a port with its adress and the operating mode and the initial value
    //should be used only after main() is started, not in global definition
    XCPort(unsigned p, PortMode_t mode_, unsigned initial) : XCResourceID(p), tileID(XC::tileNull) { 
        if (XC::tileMainStarted == 0) __builtin_trap(); //cannot initialize a global port defined without specific tile
        setMode(mode_,initial); 
    }
    //defines a port with its adress using XS1_PORT_xx
    XCPort( XC::TileID_t t, unsigned p) : XCResourceID(p), tileID(t) { 
        if ( XC::tileMainStarted ) {
            //check if a local port declaration is done with same tileID
            if (t != XC::tileMainStarted) __builtin_trap();
        } else {
            //this is a global declaration. check if compatible with this tileID
            if (t != XC::local_tile_id()) this->addr = 0; //cannot be used on this tile, addr set to 0 will trigger an exception if used anyway
        }
    }

    //defines a port with its tile adress and the operating mode
    XCPort(XC::TileID_t t, unsigned p, PortMode_t mode_) : XCPort(t,p) { 
        if (addr) setMode(mode_); 
    }

    XCPort(XC::TileID_t t, unsigned p, PortMode_t mode_, unsigned initial) : XCPort(t,p) { 
        if (addr) setMode(mode_, initial); 
    }

    //destructor    
    //not needed, create double entry on both tile without reason ~XCPort() { if (addr) { free(); } }

    //sets the port mode.
    XCPort&  setMode(PortMode_t mode_) {
        switch (mode_) {
            case XC::UNUSED:            setInUseOff(); break;
            default :               //fallthrough
            case XC::UNDEFINED :    //fallthrough    
            case XC::INPUT:             enable(); break;
            case XC::INPUT_PULLUP :     enable().setPullUp();   break;
            case XC::INPUT_PULLDOWN :   enable().setPullDown(); break;
            case XC::OUTPUT_DRIVE:      enable().setDrive();    break;
            case XC::OUTPUT_PULLUP :    enable().set().setPullUp();   break;    //port is set to 1 by default so the pull up is seen on the output
            case XC::OUTPUT_PULLDOWN :  enable().clr().setPullDown(); break;    //port is set to 0 by default so the pull down is seen on the output
        }
        return *this;
    }
    //sets the port mode with an initial value
    XCPort&  setMode(PortMode_t mode_, unsigned initial) {
        switch (mode_) {
            case XC::UNUSED:            setInUseOff(); break;
            default :               //fallthrough
            case XC::UNDEFINED :    //fallthrough
            case XC::INPUT:             enable().setd(initial); break;   //should do "in" to place it in input mode, but not sure if clk is started
            case XC::INPUT_PULLUP :     enable().setd(initial).setPullUp();   break;
            case XC::INPUT_PULLDOWN :   enable().setd(initial).setPullDown(); break;
            case XC::OUTPUT_DRIVE:      enable().outd(initial).setDrive();    break;
            case XC::OUTPUT_PULLUP :    enable().outd(initial).setPullUp();   break;
            case XC::OUTPUT_PULLDOWN :  enable().outd(initial).setPullDown(); break;
        }
        return *this;
    }
    //same syntax function names as in standard xcore library, just removing _ and introducing capital letters for other terms

    //returns true if the port size is one bit
    bool     oneBit() const { return size() == 1; }
    //same as setInUseOn and attach the clkbck_ref clock to it
    XCPort&  enable()       { setInUseOn(); setClock(XC::CLKBLK_REF); return *this; }  
    //same as setInUseOn 
    XCPort&  reset()        { setInUseOn();   return *this; }
    //same as setInUseOff
    void free()             { setInUseOff(); }
    //set the port transfer width
    XCPort&  setTransferWidth(const unsigned w) { asm volatile("settw res[%0],%1"::"r"(addr),"r"(w)); return *this; }
    //sets the port as buffered
    XCPort&  setBuffered()  { setc(0x200F); return *this; }
    //sets the port as unbuffered (default)
    XCPort&  setUnbuffered(){ setc(0x2007); return *this; } 
    //attach a clock to a port (default is refclock). defined later as we dont know class XCClock content
    XCPort&  setClock(XCClock& clk); 
    //reset the port in standard mode to be used either as in out
    XCPort&  setClock(unsigned clkAddr)  { 
        asm volatile("setclk res[%0],%1"::"r"(addr),"r"(clkAddr)); return *this; }
    XCPort&  setInOutData() { setc(0x5007); return *this; }
    XCPort&  setOutClock()  { setc(0x500F); return *this; }
    XCPort&  setReadyport() { setc(0x5017); return *this; }
    XCPort&  setOutReady(XCPort& p) { setReadyport(); asm volatile("setrdy res[%0],%1"::"r"(addr),"r"(p.addr));  return *this;}
    //physical port is inverted compared to in/out value
    XCPort&  setInvert()    { setc(0x600F); return *this; }
    //physical port is not inverted compared to in/out value (default)
    XCPort&  setNoInvert()  { setc(0x6007);  return *this; }
    XCPort&  setSampleFallingEdge() { setc(0x400F); return *this; }
    XCPort&  setSampleRisingEdge()  { setc(0x4007); return *this; }
    XCPort&  setMaster()    { setc(0x1007); return *this; }
    XCPort&  setSlave ()    { setc(0x100F); return *this; }
    XCPort&  setNoReady()   { setc(0x3007); return *this; }
    XCPort&  setReadyStrobed()   { setc(0x300F); return *this; }
    XCPort&  setReadyHandshake() { setc(0x3017); return *this; }
    //setpt instruction to set the port trigger time in the future
    XCPort&  setTriggerTime(unsigned t) { asm volatile("setpt res[%0],%1"::"r"(addr),"r"(t)); return *this; }
    //clrpt : clear port trigger time
    XCPort&  clrTriggerTime() { asm volatile("clrpt res[%0]"::"r"(addr));   return *this; }
    //sets the port data register to define an expected value for triggering the port
    XCPort&  setTriggerValue(const unsigned v)      { setd(v); return *this; }
    //sets the port data register and the trigger condition to "equal". in() will wait until condition is met
    XCPort&  setTriggerInEqual(const unsigned v)    { setci(0x11); setd(v); return *this; }
    //sets the port data register and the trigger condition to "not equal". in() will wait until value is different
    XCPort&  setTriggerInNotEqual(const unsigned v) { setci(0x19); setd(v); return *this; }
    //removes trigger condition.
    XCPort&  clrTriggerIn() { setCondNone(); return *this; }
    //tbd setci(0x17)
    XCPort&  clrBuffer()    { setc(0x17);   return *this; }
    //sets the port in drive mode : any 0 or 1 will be outputed straight on the pin
    XCPort&  setDrive()     { setci(0x03);   return *this; }
    //sets the port in pullup mode, only 0 will be outputed straight
    XCPort&  setPullUp()    { setc(0x13);   return *this; }
    //sets the port in pulldown mode, only 1 will be outputed straight
    XCPort&  setPullDown()  { setci(0x0B);   return *this; }
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

    //set the value of the port (value NOT store in shadow register)
    XCPort&  out(const unsigned x)           { XCResourceID::out(x); return *this; }
    //set the value of the port and copy it to its "d" register as shadow memory
    XCPort&  outd(const unsigned x)          { XCResourceID::outd(x); return *this; }
    XCPort&  outdOr(const unsigned mask)     { XCResourceID::outdOr(mask); return *this; }
    XCPort&  outdAnd(const unsigned mask)    { XCResourceID::outdAnd(mask); return *this; }
    XCPort&  outdAndNot(const unsigned mask) { XCResourceID::outdAndNot(mask); return *this; }
    XCPort&  outdAndOr(const unsigned and_, const unsigned or_) { 
                                               XCResourceID::outdAndOr(and_,or_); return *this; }
    XCPort&  outdXor(const unsigned mask)    { XCResourceID::outdXor(mask); return *this; }
    //output the lsb part of the provided number (according to buffer size) and return the new shifted value
    unsigned outShiftRight(const unsigned x) { unsigned temp;
        asm volatile("outshr res[%1],%0":"=r"(temp):"r"(addr),"0"(x)); return temp; }
    XCPort&  outPartialWord(const unsigned x,const unsigned bits) { 
        asm volatile("outpw res[%0],%1,%2"::"r"(addr),"r"(x),"r"(bits)); return *this; }
    //sets the value of the port (including its shadow variable).
    XCPort&  set(const unsigned x)           { outd(x); return *this; }
    //sets the value of the shadow register. port unchanged
    XCPort&  setd(const unsigned x)          { XCResourceID::setd(x); return *this; }
    //sets the value of the port (including its shadow variable). all bits sets to 1
    XCPort&  set()                           { unsigned mask = (1u << size())-1; outd(mask); return *this; }
    //clears the value of the port (including its shadow variable). all bits sets to 0
    XCPort&  clr()                           { set(0); return *this; }
    //applies an AND and a OR to the port (based on its shadow value), same as outdAndOr
    XCPort&  outAndOr(unsigned and_, unsigned or_) { return outdAndOr(and_,or_);}
    //applies an AND to the port (based on its shadow value)
    XCPort&  outAndNot(unsigned and_)        { return outdAndNot(and_); }
    //applies an AND to the port (based on its shadow value)
    XCPort&  outAnd(unsigned and_)           { return outdAnd(and_);}
    //applies an OR to the port (based on its shadow value)
    XCPort&  outOr(unsigned or_)             { return outdOr(or_);}
    //applies a XOR to the port (based on its shadow value)
    XCPort&  outXor(unsigned xor_)           { return outdXor(xor_);}
    //sets the port with the mask, using outOr(x) and shadow value
    XCPort&  setMask(const unsigned x)       { return outOr(x); }
    //clears the port with the mask, using outAnd(x) and shadow value
    XCPort&  clrMask(const unsigned x)       { return outAndNot(x); }
    //sets the port with given bit set to one
    XCPort&  setBit( const unsigned x)       { return outOr(1UL << x); }
    //sets the port with given bit cleared
    XCPort&  clrBit( const unsigned x)       { return outAndNot(1UL << x); }
    //use setTriggerInEqual(mask) to define the condition and in() to wait for it
    unsigned waitEqual(const unsigned mask)    { setTriggerInEqual(mask);    return in();  }
    //use setTriggerInNotEqual(mask) to define the condition and in_() to wait for it
    unsigned waitNotEqual(const unsigned mask) { setTriggerInNotEqual(mask); return in();  }
    //inserts the n bits of an in() instruction in the lsb parts of the shadow value
    unsigned inShiftRight(const unsigned x) { unsigned res; asm volatile("inshr %0,res[%1]":"=r"(res):"r"(addr),"0"(x)); return res; }
    //returns number of bits remaining in the port
    unsigned endin() { unsigned res; asm volatile("endin %0,res[%1]":"=r"(res):"r"(addr)); return res; }
    //getTriggerTime voluntary returns a 32bit integer type but the value inside is 16bit only, sign not extended.
    //to measure difference between 2 , it is suggested to make 32bit substraction and then "and 0xFFFF" to get the exact difference
    unsigned getTriggerTime() const { int time; asm volatile("getts %0,res[%1]":"=r"(time):"r"(addr)); return time; }
    //return real value of the port pins, (not stored in local shadow value)
    unsigned peek() const { unsigned res; asm volatile("peek %0,res[%1]":"=r"(res):"r"(addr)); return res; } 
    //return real value of a port pin, (not stored in local shadow value)
    unsigned peekBit(const unsigned x) const { unsigned res; 
        asm volatile("peek %0,res[%1]":"=r"(res):"r"(addr)); return (res >> x) & 1; }
    //return result of in() instruction.
    unsigned in() const { return XCResourceID::in(); } 
     //return a single bit result of in() instruction. 
    unsigned inBit(const unsigned x) const { return (in() >> x) & 1;}
    //returns the port last out value
    unsigned getd() const { return XCResourceID::getd(); }
    //returns the port single bit (eventual) last out value, otherwise in())
    unsigned getdBit(const unsigned x) const { return (getd() >> x) & 1; }
    //keep default operator=
    XCPort& operator =  (const XCPort&)     = default;
    XCPort& operator =  (XCPort&&) noexcept = default;
    //set a port value when an assignement is made with a integer value. also stored in shadow memory
    XCPort& operator =  (unsigned rhs) { return set(rhs); }
    XCPort& operator |= (unsigned rhs) { return outdOr(rhs); }
    XCPort& operator &= (unsigned rhs) { return outdAnd(rhs); }
    XCPort& operator ^= (unsigned rhs) { return outdXor(rhs); }

    //having a port name inside an expression will return the port shadow value (last output)
    operator unsigned ()  const { return getd(); }
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
            return port.getdBit(bit); }
    };//bitproxy

    //this proxy operator is used to provide a braket assignement to one bit of the port
    bitproxy operator [] (unsigned i) { asm volatile("### XCPort::bitproxy operator [] (unsigned i)");
        return bitproxy(*this, i); }
    //braket operator [] return a bit from the shadow memory
    //unsigned operator [] (unsigned i) const { return getVal(i); }
    //braket operator () return a bit from the in() value
    unsigned operator () (unsigned i) const { return inBit(i); }

    //count a number of clock ticks (aplied on this port) during a given delay
    unsigned countClock(XCClock& clk, unsigned ticks);

    //extension for protocol handling. See XC_lock.hpp
    XCPort&  protocolInHandshake(XCPort& readyIn, XCPort& readyOut, XCClock& clk);
    XCPort&  protocolOutHandshake(XCPort& readyIn, XCPort& readyOut, XCClock& clk, unsigned initial);
    XCPort&  protocolInStrobedMaster(XCPort& readyOut, XCClock& clk);
    XCPort&  protocolOutStrobedMaster(XCPort& readyOut, XCClock& clk, unsigned initial);
    XCPort&  protocolInStrobedSlave(XCPort& readyIn, XCClock& clk);
    XCPort&  protocolOutStrobedSlave(XCPort& readyIn, XCClock& clk, unsigned initial);

};



#endif //_XC_PORT_HPP_