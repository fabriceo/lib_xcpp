#ifndef _XC_CORE_HPP_
#define _XC_CORE_HPP_

//author: fabriceo 
//date:   december 2025
//inspired from https://github.com/xcore/tool_axe 
//and from XMOS xcore standard library

#include <stdint.h>
#include <stdio.h>

#include "XC_conf.hpp"

#ifdef __cplusplus

#include "XC_types_enums.hpp"
#include "XC_externs.hpp"
#include "XC_helpers.hpp"
#include "XC_tracer.hpp"
#include "XC_asm.hpp"
#include "XC_select.hpp"
#include "XC_swlock.hpp"
#include "XC_time_us_ms.hpp"
#include "XC_bitset.hpp"
#include "XC_ressource.hpp"
#include "XC_port.hpp"
#include "XC_portbit.hpp"
#include "XC_swtimer.hpp"
#include "XC_hwtimer.hpp"
#include "XC_chanend.hpp"
#include "XC_chanendport.hpp"
#include "XC_lock.hpp"
#include "XC_clock.hpp"
#include "XC_portremote.hpp"
#include "XC_pllref.hpp"
#include "XC_jobs.hpp"
#include "XC_calccrc32.hpp"

namespace XC {
  //imediately switch to next task in round robin list (if any)
  XC_UNUSED static void yield() { 
#ifdef XC_SCHEDULER_H
    XCSchedulerYield();
#endif
  };
  //imediately switch to next task in round robin list (if any) and return here only after a delay (in cpu ticks)
  XC_UNUSED static void yieldDelay(unsigned delayticks) { 
#ifdef XC_SCHEDULER_H
    XCSchedulerYieldDelay(delayticks);
#endif
  };
  //imediately switch to next task in round robin list (if any) and return here only after a delay (in cpu ticks) with no jitter
  XC_UNUSED static void yieldDelaySync(int &localTime, unsigned delayticks) { 
#ifdef XC_SCHEDULER_H
    XCStaskPtr_t res;
    localTime = XCS_SET_TIME(delayticks);
    do  res  = XCSchedulerYield();
    while  ( ! XCS_END_TIME(localTime) );
    return ;
#endif
  };
};


#endif //__cplusplus

//prototypes compatible with C calls.
extern "C" { 
    //use the local timer to perform a delay
    int XCwaitTimeAfter(const int target);
    int XCdelayTicks(const unsigned ticks);
    //int XCdelaySyncTicks(int * timer, const unsigned ticks);

    long long XCgetTime64();
    long long XCmicros();
    long long XCmillis();
    void XCdelayMicros(unsigned delaymicros);
    int  XCdelaySyncMicros(int &timeLast, unsigned delaymicros);

    unsigned XCgetReferenceHz();
    void XCsetReferenceHz(unsigned refhz);
    int XCPLLwriteValue(const unsigned pll);
    unsigned XCPLLreadValue();
    unsigned XCPLLreadTicks();
    void XCPLLstabilize();
    void XCPLLreset();

    void XCyield();

};


#endif //_XC_CORE_HPP_