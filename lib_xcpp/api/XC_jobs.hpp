#ifndef _XC_JOBS_HPP_
#define _XC_JOBS_HPP_

#include <stdlib.h>     //for malloc (used in onejob)

#include "XC_conf.hpp"

#include "XC_helpers.hpp"
#include "XC_asm.hpp"

namespace XC {

//create a task linked to the given synchronizer, for launching a function with a potential parameter
//noinline because registers will be modified by the indirect call "bla r1"
static XC_NOINLINE void getCoreSyncStart(unsigned sync, void * addr, void * stack, void * param = nullptr) {
    asm volatile(
        "getst r11, res[ %3 ]        \n\t"     //get synchronized task
        "set t[ r11 ]:r0, %0         \n\t"
        "set t[ r11 ]:r1, %1         \n\t"
        "init t[ r11 ]:sp, %2        \n\t"      //this is top of the stack
        "add %2,r11,0                \n\t"
        "ldap r11, .L%=start         \n\t"
        "init t[ %2 ]:pc, r11        \n\t"      //set the task entry point
        "bu .L%=end                  \n"
    ".align 4                        \n"
    ".L%=start:                      \n\t"
        "bla r1                      \n"        //call at original function address
    ".L%=loop:                       \n\t"
        "ssync                       \n\t"      //wait the master mjoin instruction
        "bu .L%=loop                 \n"
    ".L%=end:"
        ::"r"(param),"r"(addr),"r"(stack),"r"(sync):"r11");
}

typedef void voidFuncVoid_t(void * );
typedef void voidFuncUnsigned_t(unsigned);

//object used to decalre a job, as a task (function) with a stack size, e.g.
//XC::onejob t1( task1, XC_NSTACKWORDS(task1), 1234 ); 
//stack is allocated on heap by constructor, and freed by destructor when object comes out of scope
#if 0
void example() {
    XC::onejob t1( task1, XC_NSTACKWORDS(task1), 1234 ); 
    XC::onejob t2( task2, XC_NSTACKWORDS(task2), 4567 ); 
    unsigned sync = XC::getRessource(XC::TYPE_SYNC);
    t1.start(sync); t2.start(sync); XC::msync(sync);
    /* t3 here */
    XC::mjoin(sync); XC::freerr(sync);
}
#endif
struct onejob { 
    void * param;           //value of the optional parameter for the function
    XC::voidFuncUnsigned_t *t;  //pointer on the target function to launch
    void * pstack;          //point on top of the stack (rounded down 8 bytes)
    unsigned stackBytes;    //number of bytes allocated
    void * stackPtr;        //point on allocated buffer
    void init() {
        stackPtr = malloc(stackBytes);          //get a buffer in heap
        unsigned addr = (unsigned)stackPtr + stackBytes;  //point just after the given buffer
        pstack = (void*)( addr & ~7 );          //round down to ensure 8 bytes alligenment
    }
    onejob(XC::voidFuncUnsigned_t t_, unsigned size, void * p = nullptr) :  
        param(p),t(t_),stackBytes((size+1)*4) { init(); }
    onejob(XC::voidFuncUnsigned_t t_, unsigned size, unsigned p) :  onejob(t_,size,(void*)p) { }
    void start(unsigned sync) { XC::getCoreSyncStart(sync, (void *)t, pstack, param); }
    void clear() { if (stackPtr) free(stackPtr); stackPtr = nullptr; }
    ~onejob() { clear(); }
};

//structure used to host a group of tasks and link them to a synchonizer and to launch them.
#if 0
void example() {
    XC::jobs JOBS;
    XC::onejob t1( task1, XC_NSTACKWORDS(task1), 1234 ); 
    XC::onejob t2( task2, XC_NSTACKWORDS(task2), 4567 ); 
    JOBS( t1, t2 );
    /* t3 here */
}
#endif
struct jobs {
    unsigned synchronizer;
    unsigned started;
    void getSynchronizer() { synchronizer = XC::getRessource(XC::TYPE_SYNC); }
    jobs() : started(0) { getSynchronizer(); }
    void msync() { 
        if (synchronizer && (started == 0)) {
            XC::msync(synchronizer); 
            started = 1; }
    }
    void mjoin() {
        if (started) XC::mjoin(synchronizer);
        started = 0; 
    }

    jobs& operator()(XC::onejob &t1) { 
        if (started == 0) {
            if (synchronizer == 0) getSynchronizer();
            t1.start(synchronizer); 
            msync(); }
        return *this;
    }
    jobs& operator()(XC::onejob &t1,XC::onejob &t2) {
        if (started == 0) {
            t1.start(synchronizer); 
            (*this)(t2); } 
        return *this;
    }
    jobs& operator()(XC::onejob &t1,XC::onejob &t2,XC::onejob &t3) { 
        if (started == 0) {
            t1.start(synchronizer); 
            (*this)(t2,t3); } 
        return *this;
    }
    jobs& operator()(XC::onejob &t1,XC::onejob &t2,XC::onejob &t3,XC::onejob &t4) { 
        if (started == 0) {
            t1.start(synchronizer); 
            (*this)(t2,t3,t4); } 
        return *this;
    }
    jobs& operator()(XC::onejob &t1,XC::onejob &t2,XC::onejob &t3,XC::onejob &t4,XC::onejob &t5) { 
        if (started == 0) {
            t1.start(synchronizer); 
            (*this)(t2,t3,t4,t5); } 
        return *this;
    }
    jobs& operator()(XC::onejob &t1,XC::onejob &t2,XC::onejob &t3,XC::onejob &t4,XC::onejob &t5,XC::onejob &t6) { 
        if (started == 0) {
            t1.start(synchronizer); 
            (*this)(t2,t3,t4,t5,t6); } 
        return *this;
    }
    jobs& operator()(XC::onejob &t1,XC::onejob &t2,XC::onejob &t3,XC::onejob &t4,XC::onejob &t5,XC::onejob &t6,XC::onejob &t7) { 
        if (started == 0) {
            t1.start(synchronizer); 
            (*this)(t2,t3,t4,t5,t6,t7); } 
        return *this;
    }

    ~jobs() { 
        mjoin(); 
        if (synchronizer) XC::freerr(synchronizer);
        synchronizer = 0;
    }
};
};

#endif //_XC_JOBS_HPP_