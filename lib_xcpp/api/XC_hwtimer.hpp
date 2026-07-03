#ifndef _XC_HWTIMER_HPP_
#define _XC_HWTIMER_HPP_

#include "XC_conf.hpp"

#include "XC_types_enums.hpp"
#include "XC_externs.hpp"
#include "XC_asm.hpp"
#include "XC_ressource.hpp"

/*
  when using "in" on a timer, the return value is exact same as gettime
  if setCondAfter() was done then "in" will block until the timer reach the value put with setd(x)
  after this, doing multiple "in" will not block, unless another setd(x) is made. 
  so setCondAfter() is permanent but armed by setd(x)
*/

#if defined(XC_REPORT_RESOURCES) && (XC_REPORT_RESOURCES == 1)
extern "C" void XC_USE_TIMER();
#define XC_USE_TIMER() XC_USE_TIMER()
#else
#define XC_USE_TIMER()
#endif

//point on a table of preallocated timer ressource (only for xC programs)


//class to declare timer objects.
//once an object is instanciated, the getLocal() or getRessource should be called 
//from the task using it, before using it.
class XCTimer : public XCResourceID {
public:
    //allocate a timer ressource from the pool
    inline XCTimer& getResource() { 
        XC_USE_TIMER(); //call an empty code to register usage of 1 timer
        addr = XC::getRessource(XC::TYPE_TIMER); setCondNone(); setd(0); 
        return *this;  }
    //store the object ressource ID in the table of local timers for xc thread
    inline XCTimer& setLocal(unsigned ID) { __timers[ ID ] = addr; return *this;  }
    inline XCTimer& setLocal() { return setLocal( XC::getThreadID() ); }
    inline void clrLocal() { 
        if (addr) { freeResource(); setLocal(); } }
    //retreive the timer ressource ID automatically allocated by the xC compiler (only for xC programs)
    //otherwise allocate a new one
    inline XCTimer& getLocal(unsigned ID) {
        addr = __timers[ ID ];
        if (addr == 0) { getResource(); setLocal(ID); } 
        else { setCondNone(); setd(0); }
        return *this;  }
    inline XCTimer& getLocal() { return getLocal( XC::getThreadID() ); }
    int in()  { return XCResourceID::in(); }
    int getTriggerTime() { return getd(); }
    XCTimer& clrTriggerTime() { setCondNone(); return *this; }
    XCTimer& setTriggerTime(const int x) {  setCondAfter().setd(x); return *this;  }
    XCTimer& setCondAfter() { setci(0x09); return *this; }
    XCTimer& setCondAfter(const int x) { return setTriggerTime(x); }

    //set of methods to use the timer with a predefined ofset stored in the "d" register attached to it

    //reset any timer offset. eventually return gettime value
    int resetTimer() { asm volatile("### int resetTimer()");
        setd(0); 
        int time; asm("gettime %0":"=r"(time)); return time; } //compiler will generate this code or not depending on usage
    //set a timer ofset (can be zero) which helps to measure absolute time since this was set 
    int setTimer(const int t) { asm volatile("### int setTimer(const int x)");
        int time = t + XC::getTime(); setd(time);  return time; }
    //clear timer offset.
    int clrTimer() { asm volatile("### int clrTimer()");
        return setTimer(0);  }
    //returns time spent since setTimer
    int getTimer() { asm volatile("### int getTimer()");
        return XC::getTime() - getd(); }      
    //return remaining time or Zero if time elapsed
    int getTimerLeft() { asm volatile("### int getTimerLeft()");
        int time = getd() - XC::getTime(); 
        if (time < 0) time = 0; return time; }  

    int getTime() { asm volatile("### int getTime()"); 
        return XC::getTime(); }
    int waitAfter(const int x) { asm volatile("### int waitAfter(const int x)"); 
        return setCondAfter(x).in(); }
    int waitTicks(const int x) { asm volatile("### int waitTicks(const int x)"); 
        return waitAfter( XC::getTime() + x ); }
    //return time value when using a timer with operator ()
    int operator () () { asm volatile("### operator () ()");
        return in(); }
    //return time value augmented by x when using a timer with operator (int x)
    int operator () (const int x) { asm volatile("### operator () (x)");
        return in() + x; }

    /* using timeout requires carefull attention to compiler side effect, especially in O3
      example :     
          if (tmr.timeout(2000)) goto err;
          c.checkCT_END(); tmr.clrTimeout();
    */
    void clrTimeout() { clrEvent(); }
    XCTimer& setTimeout(const int ticks) { setTriggerTime( getTime() + ticks ); return *this; }
    //used to create an event with result 0 when a timeout occurs
    //to be used carrefuly in a x?y:z statement for monitoring a blocking I/O or channel access 
    int timeout() {
        register int result asm("r11");
        asm volatile (
            "\n\t   ldap %0, .Levent%="           // get address of temporary label below
            "\n\t   setv res[%1], %0 "            // set resource vector address
            "\n\t   ldc %0, 0"                     // result forced to 0 to jump in the optional "else" section
            "\n\t   eeu  res[%1]"                  // enable timer resource event
            "\n\t   setsr 1"                       // enable any events in our thread
            "\n\t   bu .Lexit%="                   // end ( go back to "if" statement )
          "\n .Levent%=:"                          // event entry point
            "\n\t   ldc %0, 1"                     // result forced to 0 to jump in the optional "else" section
          "\n .Lexit%=:"                           // exit point
            : "=r"(result) : "r"(addr) );         //return result
        return result;
    }
    int timeout(const int ticks) { setTimeout(ticks); return timeout(); }
};


namespace XC {

    inline int waitTimeAfter(const int target) {
        // use task ressource timer
        XCTimer rtimer;
        return rtimer.getLocal().waitAfter(target); }

    inline int delayTicks(const unsigned ticks) { asm volatile("###delayTicks:");
        // use thread ressource timer
        XCTimer rtimer;
        return rtimer.getLocal().waitTicks(ticks); }

    inline int delaySyncTicks(int &timer, const unsigned ticks) {
        // use thread ressource timer
        XCTimer rtimer;
        timer += ticks;
        if ((timer - getTime())<10) return 0;
        //return non zero value
        return 1 | rtimer.getLocal().waitAfter(timer); }
};


#endif //_XC_HWTIMER_HPP_