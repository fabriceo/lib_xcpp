#ifndef _XC_CHANENDPORT_HPP_
#define _XC_CHANENDPORT_HPP_

#include "XC_conf.hpp"
#include "XC_types_enums.hpp"
#include "XC_asm.hpp"
#include "XC_swlock.hpp"
#include "XC_chanend.hpp"
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
    XCChanendPort& outFloat(const float f)      { XCChanend::outFloat(f);     return *this; }
    XCChanendPort& outLongLong(const long long ll) { outWord(ll & 0xFFFFFFFF); outWord(ll >> 32); return *this; }
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
    XCChanendPort& setPortReceived(unsigned value) { portValue = value; portReceived = true; return *this; }
    XCChanendPort& rxacquire()                  { lockRx.acquire(); return *this; }
    XCChanendPort& txacquire()                  { lockTx.acquire(); return *this; }
    XCChanendPort& rxrelease()                  { lockRx.release(); return *this; }
    XCChanendPort& txrelease()                  { lockTx.release(); return *this; }
    long long inLongLong()                      { return XCChanend::inLongLong(); }

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
        return res;
    }

    //take any byte or token from the chanel and cancel it.
    //stop and comes back when receiving a CT_END
    XCChanendPort& flushEND() {
        while(1) {
            if (testCT()) {
                char ct = inCT();
                if (ct == XC::CT_END) break;
            } else {
                XC_UNUSED char ch = inByte();
            }
        }
        lockRx.release();
        return *this;
    }

};

extern XCChanendPort XCChanendPortUndefined;



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

#endif //_XC_CHANENDPORT_HPP_