#ifndef _XC_LOCK_HPP_
#define _XC_LOCK_HPP_

#include "XC_conf.hpp"

#include "XC_asm.hpp"
#include "XC_ressource.hpp"

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
    //from ISA architecture : input register is not impacted and can be reused
    void acquire() { asm volatile("in %0,res[%0]"::"r"(addr):"memory"); }
    void release() { asm volatile("out res[%0],%0"::"r"(addr):"memory"); }
};


#endif //_XC_LOCK_HPP_