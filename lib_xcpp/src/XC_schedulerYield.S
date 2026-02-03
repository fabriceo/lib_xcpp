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

	ENTSP_lu6 0						//do not extend stack yet (provide faster return)

	get  r11, id					//get_logic_core_id()
	shl  r0, r11, 3					//multiply by 8 as threadArray contains 2 words
	ldaw r1, dp[ threadArray ]
	add  r1, r1, r0
	ldw  r0,r1[_current]			//check if there is at least one task in the list
	bt   r0,XCSchedulerYield_		//jump if there is one task
	retsp 0							//nothing to do, no tasks in list, return value 0

	.align	16
XCSchedulerYield_:
	ENTSP_lu6	STACKWORDS			//extend stack to save register and store return adress (lr) in SP[0]

	std  r5, r4, sp[1]				//save all registrs r4..r10, full context, not only those used here!
	std  r7, r6, sp[2]
	add  thread,r1, 0				//reload pipeline to avoid fetch no op
	stw  r10,    sp[4*2]
	std  r9, r8, sp[3]

	ldaw r0, sp[0]					//load actual stack pointer
	ldd maintask,current,thread[0]	//double load context <- current (lo), maintask(hi)
	stw	r0, current[_sp]			//save it in actual task context

.L_yieldNext:

#if defined(XC_SCHEDULER_ROBIN_MODE) && (XC_SCHEDULER_ROBIN_MODE==0)
	ldc	 r1, 1
	and  r0, current, r1			//check if we come from a forced main task (flag in bit0)
	bt	 r0, .L_from_forced_main

	eq	 r0, current, maintask		//no, but check if we already come from a main task
	bt	 r0, .L_normal				//then continue with normal steps

	ldw	 r0, current[_next]			//no, but check if next task is main
	eq	 r0, r0, maintask
	bt	 r0, .L_normal				//if so, continue to next task as normal

	//we come from a task which is not main for sure, so lets return to main
	or	 r0, current, r1			//lets force going into the main task 
	stw	 r0, thread[_current]		//comit
	mov	 current, maintask
	bu	 .L_move_to_current

.L_from_forced_main:
	mov	 context, maintask
	andnot current, r1				//clear flag (bit0) and continue as normal behaviour
//  end of this specific task handling
#endif

.L_normal:
	ldw  current, current[_next]	//move to next one : current = current->next
	bu   .L_test_sp

.L_task_delete:						//move current to next task and free allocated memory
	ldw  r1, current[_next]			//r1 = current->next
	ldw  r0, current[_prev]			//r0 = current->prev

	stw  r1, r0[_next]				//current->prev->next = r1 = current->next
	stw  r0, r1[_prev]				//current->next->prev = r0 = current->prev

	mov	 r0, current				//prepare register for pointer deallocation
	mov  current, r1				//move to next one : current = r1 = current->next

	bl   free						//deallocate r0

	ldw r0,maintask[_prev]			//check if there are still some tasks in the queue
	eq  r0,r0,maintask
	bf r0,.L_test_sp				//jump if yes

	ldc current,0					//no more tasks : clear current
	stw current,thread[_current]	
	bu .L_return					// obviously we are in the main one : just return !

.L_test_sp:							//check if next task is flagged for deletion (_SP == 0)
	ldw	r0, current[_sp]			//load current->sp
	bf	r0, .L_task_delete			//jump to remove-deallocate

	stw  current, thread[_current]	//commit next task: thread->current = current

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
	
	//back here ONLY when task is reaching end
	ldc	r0, 0						//we limit operation here as we dont know what stack size permit
	stw	r0, current[_sp]			//clear current->sp to flag it for further deletion

	bu  .L_yieldNext				//move to next one
	ldw	current, thread[_main]		//move to main task, as next one might be also marked for deletion...
	stw	current, thread[_current]	//commit : thread->current = current = thread->main

.L_yieldToNext:
	ldw	r0, current[_sp]			//load target task stack pointer for this task
	set	sp, r0						//set stack pointer to current->sp

.L_return:

	ldw	r10,    sp[4*2]
	ldd	r9, r8, sp[3]
	mov	r0, current					//this will give back the current tcb
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

