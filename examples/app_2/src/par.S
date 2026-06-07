#if __INTELLISENSE__

//reverse engineering of XMOS par { task1(); task2(); }

par.desc.1:
	.long	__main__main_tile_0_task_main01_1
	.long	__main__main_tile_0_task_main0_2.nstackwords
	.long	0
	.long	__main__main_tile_0_task_main0_2


	ldaw r1, dp[par.desc.1]
	ldaw r0, sp[2]
	bl __start_other_cores

<__start_other_cores>:
             0x00080868: 00 f0 44 77: entsp (lu6)     0x4
             0x0008086c: 01 55:       stw (ru6)       r4, sp[0x1]
             0x0008086e: 42 55:       stw (ru6)       r5, sp[0x2]
             0x00080870: ed 07:       clre (0r)       
             0x00080872: 07 87:       getr (rus)      r5, 0x3                   //get synchronizer
             0x00080874: 44 08:       ldw (2rus)      r4, r1[0x0]               //@__main__main_tile_0_task_main01_1
             0x00080876: 80 64:       ldaw (ru6)      r2, sp[0x0]
.label68     0x00080878: 00 f0 ce d9: ldap (lu10)     r11, 0x1ce <__start_core>
             0x0008087c: 9d 07:       getst (2r)      r3, res[r5]               //get synchronized thread
             0x0008087e: 5f ff ec 07: init (l2r)      t[r3]:pc, r11
             0x00080882: 03 f8 ec b7: set (l3r)       t[r3]:r0, r0              //adress of stack available
             0x00080886: d3 f8 ec b7: set (l3r)       t[r3]:r1, r4              //r1 = target adress
             0x0008088a: 45 08:       ldw (2rus)      r4, r1[0x1]               //__main__main_tile_0_task_main0_2.nstackwords
             0x0008088c: 01 91:       add (2rus)      r4, r4, 0x1
             0x0008088e: c1 6a:       ldc (ru6)       r11, 0x1
             0x00080890: f3 3d:       and (3r)        r11, r4, r11
             0x00080892: 83 15:       add (3r)        r4, r4, r11               //round up to even
             0x00080894: 02 a1:       shl (2rus)      r4, r4, 0x2               //multiplyb y4
             0x00080896: 68 1a:       sub (3r)        r2, r2, r4                //compute task stack adress
             0x00080898: cb fe ec 07: init (l2r)      t[r3]:sp, r2
             0x0008089c: 94 94:       add (2rus)      r1, r1, 0x8
             0x0008089e: 44 08:       ldw (2rus)      r4, r1[0x0]               // 0 here
             0x000808a0: 15 75:       bt (ru6)        r4, -0x15 <.label68>      //loop
             0x000808a2: f5 1f:       msync (1r)      res[r5]                   //start al tasks at __start_core
             0x000808a4: b5 08:       ldw (2rus)      r11, r1[0x1]              //__main__main_tile_0_task_main0_2
             0x000808a6: eb 27:       bla (1r)        r11                       //launch last task ("master")
             0x000808a8: f5 17:       mjoin (1r)      res[r5]                   //wait end
             0x000808aa: e5 17:       freer (1r)      res[r5]                   //free synchronizer
             0x000808ac: 01 5d:       ldw (ru6)       r4, sp[0x1]
             0x000808ae: 42 5d:       ldw (ru6)       r5, sp[0x2]
             0x000808b0: c4 77:       retsp (u6)      0x4
             0x000808b2: 00 00:       stw (2rus)      r0, r0[0x0]


<__start_core>:
             0x00080c18: 00 f0 40 77: entsp (lu6)     0x0
             0x00080c1c: 40 90:       add (2rus)      r4, r0, 0x0
             0x00080c1e: 34 90:       add (2rus)      r3, r1, 0x0               //r1 = start adress
             0x00080c20: 00 f0 e8 d6: bl (lu10)       -0x2e8 <__init_threadlocal_timer>
             0x00080c24: c0 90:       add (2rus)      r0, r4, 0x0
             0x00080c26: e3 27:       bla (1r)        r3
             0x00080c28: 00 f0 e2 d6: bl (lu10)       -0x2e2 <__free_threadlocal_timer>
             0x00080c2c: ee 07:       ssync (0r)                                //wait for mjoin   
             0x00080c2e: 00 00:       stw (2rus)      r0, r0[0x0]

<__init_threadlocal_timer>:
.label3      0x000802f0: 00 f0 40 77: entsp (lu6)     0x0
             0x000802f4: c9 86:       getr (rus)      r2, 0x1
             0x000802f6: 00 f0 40 60: ldaw (lru6)     r1, dp[0x0]
             0x000802fa: ee 17:       get (0r)        r11, id
             0x000802fc: a7 fc ec 07: stw (l3r)       r2, r1[r11]
             0x00080300: c0 77:       retsp (u6)      0x0
             0x00080302: 00 00:       stw (2rus)      r0, r0[0x0]

<__free_threadlocal_timer>:
.label13     0x00080304: 00 f0 40 77: entsp (lu6)     0x0
             0x00080308: 00 f0 80 60: ldaw (lru6)     r2, dp[0x0]
             0x0008030c: ee 17:       get (0r)        r11, id
             0x0008030e: ab 4c:       ldw (3r)        r2, r2[r11]
             0x00080310: e2 17:       freer (1r)      res[r2]
             0x00080312: c0 77:       retsp (u6)      0x0


#endif