/**
 * @file XC_scheduler.h
 *
 * @section License
 * Copyright (C) 2023, fabrice oudert
 * https://github.com/fabriceo
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 */

#ifndef XC_SCHEDULER_H
#define XC_SCHEDULER_H

//this flag can be overloaded in compiler flag to force a systematic return to main task 
//after each yield from a child task. other wise a round robin cycle 
//is performed across all tasks created before returning to main task
#ifndef XC_SCHEDULER_ROBIN_MODE
#define XC_SCHEDULER_ROBIN_MODE 1
#endif

#ifndef __ASSEMBLER__
//provide the function adress into the given variable
#define XCS_GET_FUNC_ADDRESS(_f,_n)     asm ("ldap r11," #_f " ; mov %0,r11" : "=r"(_n) :: "r11")
//provide the function stack size into the given variable
#define XCS_GET_FUNC_NSTACKWORDS(_f,_n) asm ("ldc %0,  " #_f ".nstackwords"  : "=r"(_n) )

#ifdef __XC__
#define XCS_UNSAFE unsafe
#else
#define XCS_UNSAFE
#endif

typedef struct XCStask_s {
//dont change the structure order, some offset are used in assembly routines
/* 0 */    unsigned       sp;      //latest Stack pointer in tcb[0]. if null, task will be deallocated
/* 1 */    unsigned       pc;      //adress of the task entrypoint, set during initialization, then always 0
/* 2 */    unsigned       param;   //value of the 32bit param given at task entry in r0
/* 3 */    char * XCS_UNSAFE name; //name of the task given at task entry in r1
/* 4 */    struct XCStask_s* XCS_UNSAFE next;   //point on next task in queue
/* 5 */    struct XCStask_s* XCS_UNSAFE prev;   //point on previous task in que
/* 6 */    int timeAfter;          //contains a time after current time when the scheduler should come back
} XCStask_t;
typedef XCStask_t * XCS_UNSAFE XCStaskPtr_t;

typedef struct XCSthread_s {
//dont change the structure order, some offset are used in assembly routines
/* 0 */    XCStaskPtr_t current;  //point on the current task tcb (one which is running)
/* 1 */    XCStaskPtr_t main;     //point on the main task tcb (the one which created the first second task)
} XCSthread_t;

//helper macros to automatically get the address of the task function AND its stack size.
//works in both XC and cpp. For cpp task, the name of the task function MUST be declared "extern C"
//second parameter is used to pass a value to the task.
//the task name is stored and also passed to the task as an optional parameter
#define XCSchedulerCreateTaskParam(_x,_y) \
        { const char name[] = #_x; \
          unsigned addr;  XCS_GET_FUNC_ADDRESS(_x,addr); \
          unsigned stack; XCS_GET_FUNC_NSTACKWORDS(_x,stack); \
          XCSchedulerCreateTask_( addr, stack, (unsigned)&name, (_y) ); }

#define XCSchedulerCreateTask(_x) XCSchedulerCreateTaskParam(_x,0)

#define XCSchedulerCreateTCBParam(_x,_y) \
        ({ const char name[] = #_x; \
          unsigned addr;  XCS_GET_FUNC_ADDRESS(_x,addr); \
          unsigned stack; XCS_GET_FUNC_NSTACKWORDS(_x,stack); \
          XCSchedulerCreateTCB_( addr, stack, (unsigned)&name, (_y) ); })


#define XCSchedulerCreateTCB(_x) XCSchedulerCreateTCBParam(_x,0)

#ifdef __cplusplus
extern "C" {
#endif

//prototypes
//add a task function in the list for the current thread, and allocate a stack
XCStaskPtr_t XCSchedulerCreateTask_(const unsigned taskAddress, const unsigned stackSize, const unsigned name, const unsigned param);
//switch to the next task into the list
XCStaskPtr_t XCSchedulerYield();
//switch to the next task into the list during max ticks 
XCStaskPtr_t XCSchedulerYieldDelay(const int max);
//switch to the next task into the list while no data or token presence in a channel
XCStaskPtr_t XCSchedulerYieldChanend(unsigned ch);

#ifdef __cplusplus
}
#endif

// helpers function related to global timer.
// typical usage for doing something during 100us would be:
// int time = XCS_SET_TIME(10000); do  something(); while  ( ! XCS_END_TIME(time) );
static inline int XCS_GET_TIME()            { int time; asm volatile("gettime %0":"=r"(time)); return time; }
//return time in the future by adding the given value to internal xcore timer
static inline int XCS_SET_TIME(const int x) { int time = XCS_GET_TIME() + x; return time; }
//return true if current time is after the given value
static inline int XCS_END_TIME(const int t) { int time = XCS_GET_TIME() - t; return ( time >= 0 ); }

//test presence of a token or data in a given channel, non blocking code
static inline unsigned XCStestChan(unsigned ch) {
    unsigned result;
    asm volatile (
        "\n\t   ldap r11, .Levent%= "          //get address of temporary label below
        "\n\t   setv res[%1], r11 "            //set resource vector
        "\n\t   eeu  res[%1]"                  //enable resource event
        "\n\t   ldc %0, 1"                     //default result to 1
        "\n\t   setsr 1"                       //enable events in our thread
        "\n\t   nop"                           //same as in XC select default case
        "\n\t   ldc %0, 0"                     //result forced to 0 if no events
        "\n\t   clre"                          //clear enable flags in status register
        "\n  .Levent%=:"                       //event entry point
        : "=r"(result) : "r"(ch): "r11" );     //return result
    return result; 
}

#ifdef __XC__
//special versions to differentiate normal or streaming chanend types
static inline unsigned XCStestStreamingChanend( streaming chanend ch ) { unsafe { return XCStestChan((unsigned)ch); } }
static inline unsigned XCStestChanend( chanend ch ) { unsafe { return XCStestChan((unsigned)ch); } }
#else //ndef __XC__

#define XCStestStreamingChanend( _ch )  XCStestChan( _ch )
#define XCStestChanend( _ch )           XCStestChan( _ch )

#ifdef __cplusplus
extern "C" {
#endif

//prototypes voluntary not available for .XC programs, par { } shall be used instead
//create a task TCB, and allocate a stack. to be used inside a xcore thread
XCStaskPtr_t XCSchedulerCreateTCB_(const unsigned taskAddress, const unsigned stackSize, const unsigned name, const unsigned param);

#ifdef __cplusplus
}
#endif

#define XCSchedulerCreateTcbParam(_x,_y) \
        ({ const char name[] = #_x; \
          unsigned addr;  XCS_GET_FUNC_ADDRESS(_x,addr); \
          unsigned stack; XCS_GET_FUNC_NSTACKWORDS(_x,stack); \
          XCSchedulerCreateTCB_( addr, stack, (unsigned)&name, (_y) ); })

#define XCSchedulerCreateTcb(_x) XCSchedulerCreateTcbParam(_x,0)

#endif //__XC__

#else //def __ASSEMBLER__

	//offset for type XCStask_t
	#define _sp 0
	#define _pc 1
	#define _param 2
	#define _name 3
	#define _next 4
	#define _prev 5
  #define _timeAfter 6
  #define _tcbsize 7

#endif //__ASSEMBLER__

#endif //XC_SCHEDULER_H

