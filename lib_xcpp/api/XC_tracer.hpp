#ifndef _XC_TRACER_HPP_
#define _XC_TRACER_HPP_


#include "XC_conf.hpp"

//this XCTrace class is used to verify the I2C class with fast printing signal
//if debug_printf is not defined then the compiler should remove unutilized code
template<int size = 256> class XCTrace {
private:
static_assert(size>=2,"invalid size for XCTrace< >");
    char trace[size];
    int  count;

public:
    unsigned printOn;
    XCTrace() : printOn(0) { traceClear(); }
    void traceClear() { 
        count = 0; trace[0] = '\n'; trace[1] = 0; }
    void tracePut(char ch) {
        if (count < (size-2)) { 
            trace[count++]=ch; 
            trace[count]='\n'; 
            trace[count+1]=0; } }
    void tracePutHex(char ch) {
        if (count < (size-3)) { 
            trace[count++]=(ch>>4)+(((ch>>4)<10)?'0':'A'-10); 
            trace[count++]=(ch&15)+(((ch&15)<10)?'0':'A'-10); 
            trace[count]='\n'; 
            trace[count+1]=0; } }
    void tracePrint() { 
        if (printOn>=3) debug_printf(trace); 
        if (size>2) traceClear(); }
};

#ifndef XCTraceSize
#if defined(debug_printf)
#define XCTraceSize 256
#else
#define XCTraceSize 2
#endif
#endif


#endif //_XC_TRACER_HPP_