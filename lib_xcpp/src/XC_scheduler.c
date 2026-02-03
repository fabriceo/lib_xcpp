/**
 * @file XC_scheduler.c
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

#include <xs1.h>            //for get_logical_core_id()
#include <stdlib.h>         //for malloc
#if defined(DEBUG_PRINT_ENABLE) && (DEBUG_PRINT_ENABLE == 1)
#include "debug_print.h"    //xmos standard library
#else
#define debug_printf(...)
#endif
#include "XC_scheduler.h"


//one task-list per thread/core id, predefined for max 8 core-id
XCSthread_t threadArray[8] = {
        {0, 0}, {0, 0}, {0, 0}, {0, 0}, {0, 0}, {0, 0}, {0, 0}, {0, 0} };

//create a TCB containing task information (SP,PC,param,name...) and allocate stack size
XCStaskPtr_t XCSchedulerCreateTCB_(const unsigned taskAddress, const unsigned stackSize, const unsigned name, const unsigned param)
{
    //convert stacksize to bytes and add tcb size
    int alloc = (stackSize+1) * 4 + sizeof(XCStask_t);
    XCStaskPtr_t tcb = (XCStask_t *)malloc( alloc + 4);    //add 4 as SP points on the highest word where lr is stored before stack pointer is changed
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
XCStaskPtr_t XCSchedulerCreateTask_(const unsigned taskAddress, const unsigned stackSize, const unsigned name, const unsigned param)
{
    XCSthread_t * thread = &threadArray[ get_logical_core_id() ];
    if ( thread->main == 0 ) {    //first task creation for this thread ?
            //allocate a standard task context for the main task
            XCStaskPtr_t tcb = (XCStaskPtr_t)malloc(sizeof(XCStask_t));
            if (tcb == 0) __builtin_trap();
            //initialize main task to point on itself
            thread->main = tcb->next = tcb->prev = tcb;
            tcb->param = tcb->pc = 0; tcb->name = "main";
            debug_printf("%d main task creation @ %x = %d\n",XCS_GET_TIME(),(unsigned)thread->main,(unsigned)thread->main);
    }
    XCStaskPtr_t tcb =  XCSchedulerCreateTCB_(taskAddress,stackSize,name,param);
    //add new task at the end of the thread list
    tcb->next = thread->main;
    tcb->prev = thread->main->prev; //equivalent to last
    thread->main->prev = tcb;       //update equivalent to last
    tcb->prev->next = tcb;          //set previous task to point on this one
    if (thread->current == 0) thread->current = tcb;
    return tcb;
}


XCStaskPtr_t XCSchedulerYieldDelay(const int max) {
    XCStaskPtr_t res;
    int time = XCS_SET_TIME(max);
    do  res  = XCSchedulerYield();
    while  ( ! XCS_END_TIME(time) );
    return res;
}

XCStaskPtr_t XCSchedulerYieldChanend(unsigned ch) {
    XCStaskPtr_t res;
    while (!XCStestChan(ch)) res = XCSchedulerYield(); 
    return res;
}
