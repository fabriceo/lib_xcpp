/**
 * @file XCScheduler.c
 * @version 2.0
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

#include <xs1.h>        //for get_logical_core_id()
#include <stdlib.h>     //for malloc
#if defined(DEBUG_PRINT_ENABLE) && (DEBUG_PRINT_ENABLE == 1)
#include "debug_print.h"
#else
#define debug_printf(...)
#endif
#include "XC_scheduler.h"


//one task-list per thread/core id, predefined for max 8 core-id
thread_t threadArray[8] = {
        {0, 0}, {0, 0}, {0, 0}, {0, 0}, {0, 0}, {0, 0}, {0, 0}, {0, 0} };

task_t *  XCSchedulerCreate_(const unsigned taskAddress, const unsigned stackSize, const unsigned name, const unsigned param)
{
    //convert stacksize to bytes and add tcb size
    int alloc = (stackSize+1) * 4 + sizeof(task_t);
    task_t * tcb = (task_t *)malloc( alloc + 4);    //add 4 as SP points on the highest word where lr is stored before stack pointer is changed
    if (tcb == 0) __builtin_trap();
    //add new task at the end of the thread list
    tcb->name = (char*)name;
    tcb->param= param;
    tcb->pc   = taskAddress;
    tcb->next = tcb->prev = 0;
    //compute top of the stack address, pointing on the last word allocated
    unsigned SP = (unsigned)tcb + alloc;
    tcb->sp = SP & ~7;   //force allignement 8. this may reduce SP by one but alloc includs one more
    debug_printf("%d create %s, tcb @ %x = %d\n",XCS_GET_TIME(),tcb->name,(unsigned)tcb,(unsigned)tcb);
    return tcb;
}

//create a task by allocating stack and context and adding context at the end of main thread list
unsigned XCSchedulerCreate(const unsigned taskAddress, const unsigned stackSize, const unsigned name, const unsigned param)
{
    thread_t * thread = &threadArray[ get_logical_core_id() ];
    if ( thread->main == 0 ) {    //first task creation for this thread ?
            //allocate a standard task context for the main task
            task_t * tcb = (task_t*)malloc(sizeof(task_t));
            if (tcb == 0) __builtin_trap();
            //initialize main task to point on itself
            thread->main = tcb->next = tcb->prev = tcb;
            tcb->param = tcb->pc = 0; tcb->name = "main";
            debug_printf("%d main task creation @ %x = %d\n",XCS_GET_TIME(),(unsigned)thread->main,(unsigned)thread->main);
    }
    task_t * tcb =  XCSchedulerCreate_(taskAddress,stackSize,name,param);
    //add new task at the end of the thread list
    tcb->next = thread->main;
    tcb->prev = thread->main->prev; //equivalent to last
    thread->main->prev = tcb;       //update equivalent to last
    tcb->prev->next = tcb;          //set previous task to point on this one
    if (thread->current == 0) thread->current = tcb;
    return (unsigned)tcb;
}


unsigned XCSchedulerYieldDelay(const int max) {
    unsigned res;
    int time = XCS_SET_TIME(max);
    do  res  = XCSchedulerYield();
    while  ( ! XCS_END_TIME(time) );
    return res;
}

void XCSchedulerYieldChanend(unsigned ch) {
    while (!XCStestChan(ch)) XCSchedulerYield();
}
#if 0
inline unsigned yield();
inline unsigned yieldDelay(const int max);
inline unsigned yield_microseconds(const int us);
inline unsigned yield_milliseconds(const int ms);
inline unsigned yield_seconds(const int s);
inline void yieldChanend(unsigned ch);
#endif