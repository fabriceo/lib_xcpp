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
//after each yield from a child task. other wise a round robin cycle is performed
#ifndef XC_SCHEDULER_ROBIN_MODE
#define XC_SCHEDULER_ROBIN_MODE 1
#endif

#ifndef __ASSEMBLER__

#define XCS_GET_FUNC_ADDRESS(_f,_n)     asm ("ldap r11," #_f " ; mov %0,r11" : "=r"(_n) :: "r11")
#define XCS_GET_FUNC_NSTACKWORDS(_f,_n) asm ("ldc %0,  " #_f ".nstackwords"  : "=r"(_n) )

//helper macros to automatically get the address of the task function AND its stack size.
//works in both XC and cpp. For cpp task, the name of the task function MUST be declared "extern C"
//second parameter is used to pass a value to the task.
//the task name is stored and also passed to the task as an optional parameter
#define XCSchedulerCreateTaskParam(_x,_y) \
        { const char name[] = #_x; \
          unsigned addr;  XCS_GET_FUNC_ADDRESS(_x,addr); \
          unsigned stack; XCS_GET_FUNC_NSTACKWORDS(_x,stack); \
          XCSchedulerCreate( addr, stack, (unsigned)&name, (_y) ); }


#define XCSchedulerCreateTask(_x) XCSchedulerCreateTaskParam(_x,0)

#define XCSchedulerCreateParParam(_x,_y) \
        { const char name[] = #_x; \
          unsigned addr;  XCS_GET_FUNC_ADDRESS(_x,addr); \
          unsigned stack; XCS_GET_FUNC_NSTACKWORDS(_x,stack); \
          XCSchedulerCreate_( addr, stack, (unsigned)&name, (_y) ); }


#define XCSchedulerCreatePar(_x) XCSchedulerCreateTaskParam(_x,0)

#ifdef __cplusplus
extern "C" {
#endif

//prototypes
//add a task function in the list for the current thread, and allocate a stack
unsigned XCSchedulerCreate(const unsigned taskAddress, const unsigned stackSize, const unsigned name, const unsigned param);
//switch to the next task into the list
unsigned XCSchedulerYield();
//switch to the next task into the list during max ticks 
unsigned XCSchedulerYieldDelay(const int max);
//switch to the next task into the list while no data or token presence in a channel
void XCSchedulerYieldChanend(unsigned ch);

#ifdef __cplusplus
}
#endif

#if 0
//shortcuts
static inline unsigned yield()                   {  return XCSchedulerYield(); }
static inline unsigned yieldDelay(const int max) {  return XCSchedulerYieldDelay(max); }
static inline unsigned yield_milliseconds(const int ms) { return XCSchedulerYieldDelay(ms*100000); }
static inline unsigned yield_microseconds(const int us) { return XCSchedulerYieldDelay(us*100); }
static inline unsigned yield_seconds(const int s) { return XCSchedulerYieldDelay(s*100000000); }
#endif
// helpers function related to global timer.
// typical usage for doing something during 100us would be:
// int time = XCS_SET_TIME(10000); do  something(); while  ( ! XCS_END_TIME(time) );
//
static inline int XCS_GET_TIME()            { int time; asm volatile("gettime %0":"=r"(time)); return time; }
static inline int XCS_SET_TIME(const int x) { int time = XCS_GET_TIME() + x; return time; }
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
        "\n\t   clre"                          //clear all enable flags is status register
        "\n  .Levent%=:"                       //event entry point
        : "=r"(result) : "r"(ch): "r11" );                //return result
    return result; 
}

#ifdef __XC__
static inline unsigned XCStestStreamingChanend( streaming chanend ch ) { unsafe { return XCStestChan((unsigned)ch); } }
static inline unsigned XCStestChanend( chanend ch ) { unsafe { return XCStestChan((unsigned)ch); } }
static inline void yieldStreamingChanend( streaming chanend ch ) { unsafe {  XCSchedulerYieldChanend((unsigned)ch);} }
static inline void yieldChanend( chanend ch )  {  unsafe { XCSchedulerYieldChanend((unsigned)ch);} }
#else //ndef __XC__

#define XCStestStreamingChanend( _ch )  XCStestChan( _ch )
#define XCStestChanend( _ch )           XCStestChan( _ch )
static inline void yieldChanend(unsigned ch) { return XCSchedulerYieldChanend(ch); }

typedef struct s_task {
//dont change the structure order, some offset are used in assembly routines
/* 0 */    unsigned       sp;      //latest Stack pointer in tcb[0]. if null, task will be deallocated
/* 1 */    unsigned       pc;      //adress of the task entrypoint, set during initialization, then always 0
/* 2 */    unsigned       param;   //value of the 32bit param given at task entry in r0
/* 3 */    char *         name;    //name of the task given at task entry in r1
/* 4 */    struct s_task* next;
/* 5 */    struct s_task* prev;
} task_t;

typedef struct s_thread {
//dont change the structure order, some offset are used in assembly routines
/* 0 */    task_t*        current;  //point on the current task tcb (one which is running)
/* 1 */    task_t*        main;     //point on the main task tcb (the one which created the first second task)
} thread_t;

#ifdef __cplusplus
extern "C" 
#endif
task_t * XCSchedulerCreate_(const unsigned taskAddress, const unsigned stackSize, const unsigned name, const unsigned param);

#define XCSchedulerCreateParParam(_x,_y) \
        { const char name[] = #_x; \
          unsigned addr;  XCS_GET_FUNC_ADDRESS(_x,addr); \
          unsigned stack; XCS_GET_FUNC_NSTACKWORDS(_x,stack); \
          XCSchedulerCreate_( addr, stack, (unsigned)&name, (_y) ); }


#define XCSchedulerCreatePar(_x) XCSchedulerCreateTaskParam(_x,0)


#endif

#else //def __ASSEMBLER__

	//offset for type task_t
	#define _sp 0
	#define _pc 1
	#define _param 2
	#define _name 3
	#define _next 4
	#define _prev 5

	//offset for type thread_t
	#define _current 0
	#define _main 1

#endif //__ASSEMBLER__

#endif //XC_SCHEDULER_H

