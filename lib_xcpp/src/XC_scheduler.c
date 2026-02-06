/**
 * @file XC_scheduler.c
 * @version 2.0
 * Copyright (C) 2026, fabrice oudert
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


//a task-list per thread/core id, predefined for max 8 core-id
XCStask_t    mainTcbArray[8];
XCStaskPtr_t threadArray[8] = { 0, 0, 0, 0, 0, 0, 0, 0 };

//create a TCB record containing task information (SP,PC,param,name...) and allocate stack size
XCStaskPtr_t XCSchedulerCreateTCB_(const unsigned taskAddress, const unsigned stackSize, const unsigned name, const unsigned param)
{
    //convert stacksize to bytes and add tcb size
    int alloc = (stackSize+1) * 4 + sizeof(XCStask_t);      //compute number of bytes required
    XCStaskPtr_t tcb = (XCStask_t *)malloc( alloc + 4);     //add 4 as SP points on the highest word where lr is stored before stack pointer is changed
    if (tcb == 0) __builtin_trap();
    tcb->name = (char*)name;
    tcb->param= param;
    tcb->pc   = taskAddress;
    tcb->next = tcb->prev = 0;
    //compute top of the stack address, pointing on the last word allocated
    unsigned SP = (unsigned)tcb + alloc;
    tcb->sp = SP & ~7;   //force allignement 8. this may reduce SP by one but alloc includs one more
    debug_printf("Create task %s(%d), tcb @ %xh (%d)\n",tcb->name,tcb->param,(unsigned)tcb,(unsigned)tcb);
    return tcb;
}

//create a task by allocating stack and context and adding context at the end of main thread list
XCStaskPtr_t XCSchedulerCreateTask_(const unsigned taskAddress, const unsigned stackSize, const unsigned name, const unsigned param)
{
    unsigned ID = get_logical_core_id();
    XCStaskPtr_t  mainTcb = &mainTcbArray[ ID ];
    if (threadArray[ ID ] == 0) { 
        //main tcb table not yet initialized
        mainTcb->next = mainTcb->prev = mainTcb;
        mainTcb->name = "main";
        mainTcb->param = mainTcb->pc = mainTcb->timeAfter = 0;
        threadArray[ ID ] = mainTcb;
    }
    XCStaskPtr_t current = threadArray[ ID ];
    XCStaskPtr_t tcb =  XCSchedulerCreateTCB_(taskAddress,stackSize,name,param);
    //insert this task just after the one creating it
    tcb->next = current->next;          //point on main task to create a loop
    current->next->prev  = tcb;          //update equivalent to "last"
    tcb->prev = current;                //equivalent to "last"
    current->next = tcb;              //set previous task to point on this one
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
