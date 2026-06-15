#ifndef _XC_SWLOCK_HPP_
#define _XC_SWLOCK_HPP_

#include "XC_conf.hpp"

#include "XC_asm.hpp"

//cpp version of the xmos software lock library.
//a lock object can be instanciated anywhere as it can be shared by multiple tasks.
class XCSWLock {
    volatile unsigned lock;
public:
    XCSWLock() : lock(0) { }
    //wait and set the lock
    inline void acquire() {
        unsigned myID = XC::getid()+1;
        do { while ( lock ) { }; lock = myID;
        //waiting some cpu cycle due to potential non-priority task having set the lock
        asm volatile("nop;nop;nop;nop;nop;nop;nop"); } 
        while( lock != myID ); } 

    //release the previously aquired lock
    inline void release() { lock = 0; }

    //try to acquire, return 0 if failed otherwise thread ID + 1 (non zero)
    inline unsigned tryAcquire() {
        unsigned myID = XC::getid()+1;
        if (lock == 0) {
            lock = myID;
            asm volatile("nop;nop;nop;nop;nop;nop;nop");
            return (lock == myID);
        }
        return 0;
    }
};


#endif //_XC_SWLOCK_HPP_