#ifndef _XC_PORTREMOTE_HPP_
#define _XC_PORTREMOTE_HPP_

#include "XC_conf.hpp"

#include "XC_port.hpp"
#include "XC_chanendport.hpp"

//WORK IN PROGRESS
//used to manage remote GPIO port access . Requires a server !
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



#endif //_XC_PORTREMOTE_HPP_