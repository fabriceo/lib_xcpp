#ifndef _XC_SELECT_HPP_
#define _XC_SELECT_HPP_

#include "XC_conf.hpp"


//partial support of "select" statement without needing <xcore.h>
namespace XC {

  //this function will return an interger to be used within a switch statement
  //the return will be done via an event set with a vector defined by &XC::selectVector
  static __attribute__ ((noinline,naked,unused)) unsigned selectWait() { 
      asm volatile("waiteu":::"r11"); };

  //same as selectWait but do not wait for the event : 
  //if no event raised then the value returned will be the one given as default
  static __attribute__ ((noinline,naked,unused))  unsigned selectNoWait(unsigned def) { 
      asm volatile("setsr 1 ; clrsr 1 ; retsp 0":::"r11"); }

  //code used the entry point for event vector's providing selector in their ED register
  static __attribute__ ((noinline,naked,dual_issue)) void selectVector() {
      asm volatile( //this code is compatible with both dual and single issue calls
        "get r11,ed ; { add r0,r11,0 ; retsp 0 }"); }

};


#endif