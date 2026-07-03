#ifndef _XC_SWTIMER_HPP_
#define _XC_SWTIMER_HPP_


#include "XC_conf.hpp"

#include "XC_time_us_ms.hpp"

/*
simple timer object using gettime instruction.
can be used when waiting doesnt require to hold the task to give corresponding mips to other tasks.
set(x) will set the timer in the future by x ticks. 
get() will then provide a negative value of remaining time till 0; then increasing value
getLeft() returns a positive value represnting remaning time tile future value set. then fixed to zero
set(0) or clr() just reset the timer to the current time. then get() is always increasing. and getleft() is always zero
rearm() just set the timer to the last set(x) value
*/

class XCTimerMicros {
private:
    long long ofset;
    long long srearm;
public:
    XCTimerMicros() : ofset(0), srearm(0) { }
    XCTimerMicros(const long long future) { set(future); }
    XCTimerMicros(const long long future, const long long initial) { set(future,initial); }
    //set the timer in the future and use the given value as a potential rearm value
    XCTimerMicros& set(const long long future) { srearm=future; ofset = XC::micros()+future; return *this; }
    //set the timer in the future and use the given value as a potential rearm value
    XCTimerMicros& set(const long long future, const long long initial) { srearm=future; ofset = XC::micros()+initial; return *this; }
    //clear the timer but do not change its (potential) rearm value
    XCTimerMicros& clr() { ofset = XC::micros(); return *this; }
    //returns the time spend (positive) since last set(0) or clr().
    long long get() const { return XC::micros() - ofset; }
    //return the remaining time (positive) till set(time) is reached
    long long getLeft() { 
        long long remain = ofset - XC::micros(); 
        if (remain < 0) remain = 0;
        return remain;
    }
    //set timer in the future with same value as last set()
    XCTimerMicros& rearm() { return set(srearm); }
    //set timer in the future to produce regular time (no drift) as last set()
    XCTimerMicros& rearmSync() { if (ofset) ofset += srearm; else set(srearm); return *this; }
    //test if timer set in the future is now finished.
    bool finished() { return (ofset==0) || (get() >= 0); }
    bool notSetYet() { return (ofset == 0); }
    //test if timer set in the future is now finished. if so then rearm it for same period as last
    bool finishedRearm() { bool res = finished(); if (res) rearm(); return res; }
    //test if timer set in the future is now finished. if so then rearm it for same regular period as last
    bool finishedRearmSync() { bool res = finished(); if (res) rearmSync(); return res; }
    //test if timer set in the future is still not finished
    bool ongoing()  { return (ofset && (get() < 0)); }
    bool notFinished()  { return ongoing(); }
    XCTimerMicros& wait() { while (ongoing()) {} ; return *this; }
    XCTimerMicros& wait(const long long t) { 
        long long target = XC::micros() + t;
        while( (XC::micros() - target) < 0) {} ; return *this; }
    XCTimerMicros& operator =  (long long rhs) { set(rhs);     return *this; }
    XCTimerMicros& operator += (long long rhs) { ofset += rhs; return *this; }
    XCTimerMicros& operator -= (long long rhs) { ofset -= rhs; return *this; }
    XCTimerMicros& operator ++ () { return rearm(); }
    XCTimerMicros& operator = (XCTimerMicros& rhs) { 
        if (&rhs != this) { ofset = rhs.ofset; srearm=rhs.srearm; } return *this; }
    long long operator () () const { return get(); }
    operator long long () const    { return get(); }
};


template< long long TIME() = XC::getTime64 >
class XCSWTimer {
private:
    long long ofset;
    long long srearm;
public:
    XCSWTimer() : ofset(0),srearm(0) { }
    XCSWTimer(const long long future) { set(future); }
    //set the timer in the future and use the given value as a potential rearm value
    XCSWTimer& set(const long long future) { srearm=future; ofset = TIME()+future; return *this; }
    //clear the timer but do not change its (potential) rearm value
    XCSWTimer& clr() { ofset = TIME(); return *this; }
    //returns the time spend since last set(0) or clr().
    long long get() const { return TIME() - ofset; }
    //return the remaining time (positive) till set(time) is reached
    long long getLeft() { 
        long long remain = ofset - TIME(); 
        if (remain < 0) remain = 0;
        return remain;
    }
    //set timer in the future with same value as last set()
    XCSWTimer& rearm() { return set(srearm); }
    //set timer in the future to produce regular time (no drift) as last set()
    XCSWTimer& rearmSync() { ofset += srearm; return *this; }
    //test if timer set in the future is now finished.
    bool finished() { return (ofset==0)||(get() >= 0); }
    //test if timer set in the future is now finished. if so then rearm it for same period as last
    bool finishedRearm() { bool res = (get() >= 0); if (res) rearm(); return res; }
    //test if timer set in the future is now finished. if so then rearm it for same regular period as last
    bool finishedRearmSync() { bool res = finished(); if (res) rearmSync(); return res; }
    //test if timer set in the future is still not finished
    bool ongoing()  { return (ofset && (get() < 0)); }
    bool notFinished()  { return ongoing(); }
    XCSWTimer& wait() { while (ongoing()) {} ; return *this; }
    XCSWTimer& wait(const long long t) { 
        long long target = TIME() + t;
        while( (TIME() - target) < 0) {} ; return *this; }
    XCSWTimer& operator =  (long long rhs) { set(rhs);     return *this; }
    XCSWTimer& operator += (long long rhs) { ofset += rhs; return *this; }
    XCSWTimer& operator -= (long long rhs) { ofset -= rhs; return *this; }
    XCSWTimer& operator ++ () { return rearm(); }
    XCSWTimer& operator = (XCSWTimer& rhs) { 
        if (&rhs != this) { ofset = rhs.ofset; srearm=rhs.srearm; } return *this; }
    long long operator () () const { return get(); }
    operator long long () const    { return get(); }
};
//create a class using XC::micros as the timebase
class XCSWTimerMicros : public XCSWTimer<XC::micros> { };
//create a class using XC::millis as the timebase
class XCSWTimerMillis : public XCSWTimer<XC::millis> { };


#endif //_XC_SWTIMER_HPP_