	.text
	.globl	XCSchedulerYield
	.align	4
	.type	XCSchedulerYield,@function
	.cc_top XCSchedulerYield.function,XCSchedulerYield

	//space to save all registers + lr + allignement
	#define STACKWORDS 10

#include "XC_scheduler.h"

	//define register alias for readability
	#define current  r4
	#define context  r5
	#define maintask r6
	#define thread   r7

	.align	4
	.issue_mode single

XCSchedulerYield:

	ENTSP_lu6	STACKWORDS			//extend stack to save register and store return adress (lr) in SP[0]
	get  r11, id					//get_logic_core_id()
	ldaw r1, dp[ threadArray ]
	ldw  r2,r1[r11]					//check if there is at least one task in the list
	bt   r2,XCSchedulerYield_entry	//jump if there is one task in the list
	retsp STACKWORDS
//WIP : treat timer
	gettime r3
	bf   r0, .L_quickExist
	add  r3,r3,r0
	ldaw r0, dp[ __timers]
	ldw  r1,r0[r11]
	bt   r1, .L_saveTimer
	getr r1,2
.L_saveTimer:
	stw r1,r0[r11]
	setc res[r1], 9					//cond after
	setd res[r1],r3
	in r3, res[r1]
	stw r3,r2[_timeAfter]
.L_quickExist:
	retsp STACKWORDS

	.align	16
XCSchedulerYield_entry:

	std  r5, r4, sp[1]				//save all registrs r4..r10, full context, not only those used here!
	std  r7, r6, sp[2]
	ldaw thread,r1[r11]
	stw  r10,    sp[4*2]
	std  r9, r8, sp[3]
	add  current,r2,0

#if defined(XC_SCHEDULER_ROBIN_MODE) && (XC_SCHEDULER_ROBIN_MODE==0)

	ldaw maintask, dp[ mainTcbArray ]
	ldc r0, _tcbsize
	mul r0,r11,r0
	ldaw maintask,maintask[r0]

	ldc	 r1, 1
	and  r0, current, r1			//check if we come from a forced main task (flag in bit0)
	bt	 r0, .L_from_forced_main

	eq	 r0, current, maintask		//no, but check if we already come from a main task
	bt	 r0, .L_next				//then continue with normal steps

	ldw	 r0, current[_next]			//no, but check if next task is main
	eq	 r0, r0, maintask
	bt	 r0, .L_next				//if so, continue to next task as normal

	//we come from a task which is not main for sure, so lets return to main
	ldaw r0, sp[0]					//get actual stack pointer
	stw	 r0, current[_sp]			//save it in actual task context //TODO check if bit0 == 1

	or	 r0, current, r1			//lets force going into the main task 
	stw	 r0, thread[0]		//comit

	mov	 current, maintask
	bu	 .L_move_to_current

.L_from_forced_main:
	mov	 context, maintask
	andnot current, r1				//clear flag (bit0) and continue as normal behaviour
	ldaw r0, sp[0]					//get actual stack pointer
	stw	 r0, current[_sp]			//save it in actual task context //TODO check if bit0 == 1
//  end of this specific task handling
#endif

.L_next:
	ldaw r0, sp[0]					//get actual stack pointer
	stw	 r0, current[_sp]			//save it in actual task context //TODO check if bit0 == 1

	ldw  current, current[_next]	//move to next one : current = current->next
	eq   r0,current,r2				//r2 contains orriginal "current"
	bf   r0, .L_commit_next
//for sure we are in the main task and there are no more task in list
	ldc  r0, 0
	stw  r0, thread[0]				//clean up for next yield 
	bu	 .L_return					//no need to restore SP

.L_commit_next:
	stw  current, thread[0]			//commit next task: thread->current = current

.L_move_to_current:

	ldw	r3, current[_pc]			//load task adress
	bf	r3, .L_yieldToNext			//check if task is executed for first time (current->pc != 0)

	ldc	r0, 0						//if yes then reset this pc flag
	stw	r0, current[_pc]			//current->pc = 0

	ldw	r0, current[_sp]			//load new task stack pointer
	set	sp, r0						//set stack pointer to current->sp

	ldw	r0, current[_param]			//load optional task param
	ldw	r1, current[_name]			//load optional task name
	mov	r2, current					//load task context adress into 3rd optional param

	bla	r3							//indirect call to task adress for the first time
	
//back here ONLY when task is finished!
//remove task from the list
	ldw  r1, current[_next]			//r1 = current->next
	ldw  r0, current[_prev]			//r0 = current->prev

	stw  r1, r0[_next]				//current->prev->next = r1 = current->next
	stw  r0, r1[_prev]				//current->next->prev = r0 = current->prev

	mov	 r0, current				//prepare register for pointer deallocation
	mov  current, r1				//move to next one : current = r1 = current->next

	bl   free						//deallocate r0

	stw current, thread[0]			//commit next one (maybe main)

.L_yieldToNext:
	ldw	r0, current[_sp]			//load target task stack pointer for this task
	set	sp, r0						//set stack pointer to current->sp

	mov	r0, current					//this will give back the current tcb

.L_return:

	ldw	r10,    sp[4*2]
	ldd	r9, r8, sp[3]
	ldd	r7, r6, sp[2]
	ldd r5, r4, sp[1]
	retsp STACKWORDS

	.cc_bottom XCSchedulerYield.function
	.set	XCSchedulerYield.nstackwords,(free.nstackwords + STACKWORDS)
	.globl	XCSchedulerYield.nstackwords
	.set	XCSchedulerYield.maxcores,free.maxcores $M 1
	.globl	XCSchedulerYield.maxcores
	.set	XCSchedulerYield.maxtimers,free.maxtimers $M 0
	.globl	XCSchedulerYield.maxtimers
	.set	XCSchedulerYield.maxchanends,free.maxchanends $M 0
	.globl	XCSchedulerYield.maxchanends
.Ltmp0:
	.size	XCSchedulerYield, .Ltmp0-XCSchedulerYield

//	.typestring XCSchedulerYield, "f{p(0)}()"	//TODO should show returning a pointer on TCB
	.typestring free, "f{0}(p(0))"

