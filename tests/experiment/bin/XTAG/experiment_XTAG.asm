/Users/fabrice/github/NAX1/lib_xcpp/tests/experiment/bin/XTAG/experiment_XTAG.xe: file format: xcore-xe

Loadable 1 for tile[0] (node "0", tile 0):

Disassembly of section .text (size: 304)

<_start>:
             0x00080000: 00 68:       ldc (ru6)       r0, 0x0
             0x00080002: 40 68:       ldc (ru6)       r1, 0x0
             0x00080004: 80 68:       ldc (ru6)       r2, 0x0
             0x00080006: c0 68:       ldc (ru6)       r3, 0x0
             0x00080008: 00 69:       ldc (ru6)       r4, 0x0
             0x0008000a: 40 69:       ldc (ru6)       r5, 0x0
             0x0008000c: 80 69:       ldc (ru6)       r6, 0x0
             0x0008000e: c0 69:       ldc (ru6)       r7, 0x0
             0x00080010: 00 6a:       ldc (ru6)       r8, 0x0
             0x00080012: 40 6a:       ldc (ru6)       r9, 0x0
             0x00080014: 00 f0 8c d8: ldap (lu10)     r11, 0x8c <.label0>
             0x00080018: fb 37:       set (1r)        cp, r11
             0x0008001a: 00 f0 95 d8: ldap (lu10)     r11, 0x95 <.label1>
             0x0008001e: eb 37:       set (1r)        dp, r11
             0x00080020: cb 6a:       ldc (ru6)       r11, 0xb
             0x00080022: bb ff ec 17: get (l2r)       r10, ps[r11]
             0x00080026: 80 f0 c0 6a: ldc (lru6)      r11, 0x2000
             0x0008002a: be 16:       add (3r)        r11, r11, r10
             0x0008002c: fb 2f:       set (1r)        sp, r11
             0x0008002e: c2 86:       getr (rus)      r0, 0x2
             0x00080030: 00 68:       ldc (ru6)       r0, 0x0
             0x00080032: 47 68:       ldc (ru6)       r1, 0x7
             0x00080034: 80 68:       ldc (ru6)       r2, 0x0
             0x00080036: 00 f0 43 d0: bl (lu10)       0x43 <write_sswitch_reg>
             0x0008003a: 02 f0 40 69: ldc (lru6)      r5, 0x80
             0x0008003e: 02 f0 88 69: ldc (lru6)      r6, 0x88

<disableLinks>:
             0x00080042: 00 68:       ldc (ru6)       r0, 0x0
             0x00080044: d4 90:       add (2rus)      r1, r5, 0x0
             0x00080046: 80 68:       ldc (ru6)       r2, 0x0
             0x00080048: 00 f0 3a d0: bl (lu10)       0x3a <write_sswitch_reg>
             0x0008004c: 15 91:       add (2rus)      r5, r5, 0x1
             0x0008004e: 06 33:       eq (3r)         r0, r5, r6
             0x00080050: 08 7c:       bf (ru6)        r0, -0x8 <disableLinks>
             0x00080052: 00 68:       ldc (ru6)       r0, 0x0
             0x00080054: 45 68:       ldc (ru6)       r1, 0x5
             0x00080056: 00 f2 82 68: ldc (lru6)      r2, 0x8002
             0x0008005a: 00 f0 36 d0: bl (lu10)       0x36 <write_sswitch_reg_no_ack>

<nodeIdLoop>:
             0x0008005e: 00 f2 42 68: ldc (lru6)      r1, 0x8002
             0x00080062: c2 86:       getr (rus)      r0, 0x2
             0x00080064: e0 17:       freer (1r)      res[r0]
             0x00080066: 81 ac:       shr (2rus)      r0, r0, 0x10
             0x00080068: 01 30:       eq (3r)         r0, r0, r1
             0x0008006a: 07 7c:       bf (ru6)        r0, -0x7 <nodeIdLoop>
             0x0008006c: 00 f2 02 68: ldc (lru6)      r0, 0x8002
             0x00080070: 60 68:       ldc (ru6)       r1, 0x20
             0x00080072: 80 68:       ldc (ru6)       r2, 0x0
             0x00080074: 00 f0 24 d0: bl (lu10)       0x24 <write_sswitch_reg>
             0x00080078: 00 f2 02 68: ldc (lru6)      r0, 0x8002
             0x0008007c: 02 f0 40 68: ldc (lru6)      r1, 0x80
             0x00080080: 00 f0 80 58: ldw (lru6)      r2, dp[0x0]
             0x00080084: 00 f0 1c d0: bl (lu10)       0x1c <write_sswitch_reg>

<setDimensionReg>:
             0x00080088: 00 f2 02 68: ldc (lru6)      r0, 0x8002
             0x0008008c: 4c 68:       ldc (ru6)       r1, 0xc
             0x0008008e: 00 f0 81 58: ldw (lru6)      r2, dp[0x1]
             0x00080092: 00 f0 15 d0: bl (lu10)       0x15 <write_sswitch_reg>
             0x00080096: 00 f2 02 68: ldc (lru6)      r0, 0x8002
             0x0008009a: 4d 68:       ldc (ru6)       r1, 0xd
             0x0008009c: 00 f0 82 58: ldw (lru6)      r2, dp[0x2]
             0x000800a0: 00 f0 0e d0: bl (lu10)       0xe <write_sswitch_reg>

<sayHello0>:
             0x000800a4: 00 f2 02 68: ldc (lru6)      r0, 0x8002
             0x000800a8: 02 f0 40 68: ldc (lru6)      r1, 0x80
             0x000800ac: 00 f0 80 58: ldw (lru6)      r2, dp[0x0]
             0x000800b0: dd a6:       mkmsk (rus)     r3, 0x1
             0x000800b2: 58 69:       ldc (ru6)       r5, 0x18
             0x000800b4: 7d 22:       shl (3r)        r3, r3, r5
             0x000800b6: 2b 40:       or (3r)         r2, r2, r3
             0x000800b8: 00 f0 02 d0: bl (lu10)       0x2 <write_sswitch_reg>
             0x000800bc: 00 f0 32 d0: bl (lu10)       0x32 <_done>

<write_sswitch_reg>:
             0x000800c0: 0c f3 cc 68: ldc (lru6)      r3, 0xc30c
             0x000800c4: c1 6a:       ldc (ru6)       r11, 0x1
             0x000800c6: 00 f0 05 73: bu (lu6)        0x5 <write_switch_reg>

<write_sswitch_reg_no_ack>:
             0x000800ca: 0c f3 cc 68: ldc (lru6)      r3, 0xc30c
             0x000800ce: c0 6a:       ldc (ru6)       r11, 0x0
             0x000800d0: 00 f0 00 73: bu (lu6)        0x0 <write_switch_reg>

<write_switch_reg>:
             0x000800d4: 00 55:       stw (ru6)       r4, sp[0x0]
             0x000800d6: c1 ac:       shr (2rus)      r4, r0, 0x10
             0x000800d8: 1e 71:       bt (ru6)        r4, 0x1e <write_switch_reg_return_0>
             0x000800da: c5 ac:       shr (2rus)      r4, r1, 0x10
             0x000800dc: 1c 71:       bt (ru6)        r4, 0x1c <write_switch_reg_return_0>
             0x000800de: 81 a4:       shl (2rus)      r0, r0, 0x10
             0x000800e0: 03 40:       or (3r)         r0, r0, r3
             0x000800e2: 02 87:       getr (rus)      r4, 0x2
             0x000800e4: 90 17:       setd (r2r)      res[r4], r0
             0x000800e6: 03 f0 c0 68: ldc (lru6)      r3, 0xc0
             0x000800ea: 03 4f:       outct (2r)      res[r4], r3
             0x000800ec: c3 7a:       bf (ru6)        r11, 0x3 <build_return_no_ack>
             0x000800ee: 40 ad:       shr (2rus)      r0, r4, 0x8
             0x000800f0: 80 a4:       shl (2rus)      r0, r0, 0x8
             0x000800f2: 04 73:       bu (u6)         0x4 <write_switch_reg_send>

<build_return_no_ack>:
             0x000800f4: 80 ac:       shr (2rus)      r0, r0, 0x8
             0x000800f6: 3c a7:       mkmsk (rus)     r3, 0x8
             0x000800f8: 03 40:       or (3r)         r0, r0, r3
             0x000800fa: 80 a4:       shl (2rus)      r0, r0, 0x8

<write_switch_reg_send>:
             0x000800fc: b4 ac:       shr (2rus)      r3, r1, 0x8
             0x000800fe: 03 40:       or (3r)         r0, r0, r3
             0x00080100: 80 af:       out (r2r)       res[r4], r0
             0x00080102: 94 0f:       outt (r2r)      res[r4], r1
             0x00080104: 88 af:       out (r2r)       res[r4], r2
             0x00080106: 11 4f:       outct (rus)     res[r4], 0x1
             0x00080108: c9 7a:       bf (ru6)        r11, 0x9 <write_switch_reg_free_and_return_1>
             0x0008010a: 90 87:       inct (2r)       r0, res[r4]
             0x0008010c: 03 b0:       eq (2rus)       r0, r0, 0x3
             0x0008010e: 11 cf:       chkct (rus)     res[r4], 0x1
             0x00080110: e4 17:       freer (1r)      res[r4]
             0x00080112: 00 5d:       ldw (ru6)       r4, sp[0x0]
             0x00080114: c0 77:       retsp (u6)      0x0

<write_switch_reg_return_0>:
             0x00080116: 00 68:       ldc (ru6)       r0, 0x0
             0x00080118: 00 5d:       ldw (ru6)       r4, sp[0x0]
             0x0008011a: c0 77:       retsp (u6)      0x0

<write_switch_reg_free_and_return_1>:
             0x0008011c: e4 17:       freer (1r)      res[r4]
             0x0008011e: 01 68:       ldc (ru6)       r0, 0x1
             0x00080120: 00 5d:       ldw (ru6)       r4, sp[0x0]
             0x00080122: c0 77:       retsp (u6)      0x0

<_done>:
             0x00080124: 07 68:       ldc (ru6)       r0, 0x7
             0x00080126: 00 f0 01 d0: bl (lu10)       0x1 <_DoSyscall>
.label2      0x0008012a: 01 77:       bu (u6)         -0x1 <.label2>

<_DoSyscall>:
             0x0008012c: d0 a6:       mkmsk (rus)     r0, 0x20
             0x0008012e: c0 77:       retsp (u6)      0x0

Disassembly of section .cp.rodata (size: 24)

<_cp>:
<.cp.rodata>:
<xs1g_link_ports>:
.label0      0x00080130: 00 00 01 00: 
             0x00080134: 00 00 20 00: 
             0x00080138: 00 01 01 00: 
             0x0008013c: 00 04 01 00: 
             0x00080140: 00 00 10 00: 
             0x00080144: 00 05 01 00: 

Disassembly of section .dp.data (size: 20)

<_dp>:
<.dp.data>:
<xlink0RegVal>:
.label1      0x00080148: 04 20 00 80: 

<dirBits0>:
             0x0008014c: 01 11 11 11: 

<dirBits1>:
             0x00080150: 11 11 11 11: 

<.dp.data>:
<__sodFlag>:
             0x00080154: 00 00 00 00: 

<__sodEnd>:
             0x00080158: 02 01 00 80: 

Loadable 1 for tile[1] (node "0", tile 1):

Disassembly of section .text (size: 64)

<_start>:
             0x00080000: 00 68:       ldc (ru6)       r0, 0x0
             0x00080002: 40 68:       ldc (ru6)       r1, 0x0
             0x00080004: 80 68:       ldc (ru6)       r2, 0x0
             0x00080006: c0 68:       ldc (ru6)       r3, 0x0
             0x00080008: 00 69:       ldc (ru6)       r4, 0x0
             0x0008000a: 40 69:       ldc (ru6)       r5, 0x0
             0x0008000c: 80 69:       ldc (ru6)       r6, 0x0
             0x0008000e: c0 69:       ldc (ru6)       r7, 0x0
             0x00080010: 00 6a:       ldc (ru6)       r8, 0x0
             0x00080012: 40 6a:       ldc (ru6)       r9, 0x0
             0x00080014: 00 f0 14 d8: ldap (lu10)     r11, 0x14 <.label0>
             0x00080018: fb 37:       set (1r)        cp, r11
             0x0008001a: 00 f0 1d d8: ldap (lu10)     r11, 0x1d <.label1>
             0x0008001e: eb 37:       set (1r)        dp, r11
             0x00080020: cb 6a:       ldc (ru6)       r11, 0xb
             0x00080022: bb ff ec 17: get (l2r)       r10, ps[r11]
             0x00080026: 80 f0 c0 6a: ldc (lru6)      r11, 0x2000
             0x0008002a: be 16:       add (3r)        r11, r11, r10
             0x0008002c: fb 2f:       set (1r)        sp, r11
             0x0008002e: c2 86:       getr (rus)      r0, 0x2
             0x00080030: 00 f0 00 d0: bl (lu10)       0x0 <_done>

<_done>:
             0x00080034: 07 68:       ldc (ru6)       r0, 0x7
             0x00080036: 00 f0 01 d0: bl (lu10)       0x1 <_DoSyscall>
.label2      0x0008003a: 01 77:       bu (u6)         -0x1 <.label2>

<_DoSyscall>:
             0x0008003c: d0 a6:       mkmsk (rus)     r0, 0x20
             0x0008003e: c0 77:       retsp (u6)      0x0

Disassembly of section .cp.rodata (size: 24)

<_cp>:
<.cp.rodata>:
<xs1g_link_ports>:
.label0      0x00080040: 00 00 01 00: 
             0x00080044: 00 00 20 00: 
             0x00080048: 00 01 01 00: 
             0x0008004c: 00 04 01 00: 
             0x00080050: 00 00 10 00: 
             0x00080054: 00 05 01 00: 

Disassembly of section .dp.data (size: 8)

<_dp>:
<.dp.data>:
<__sodFlag>:
.label1      0x00080058: 00 00 00 00: 

<__sodEnd>:
             0x0008005c: 02 01 00 80: 

Loadable 2 for tile[0] (node "0", tile 0):

Disassembly of section .crt (size: 204)

<.crt>:
<_start>:
             0x00080000: 4b 68:       ldc (ru6)       r1, 0xb
             0x00080002: 40 77:       entsp (u6)      0x0
             0x00080004: d1 fe ec 17: get (l2r)       r0, ps[r1]
             0x00080008: 04 f0 8b 68: ldc (lru6)      r2, 0x10b
             0x0008000c: c2 fe ec 1f: set (lr2r)      ps[r2], r0
             0x00080010: c3 86:       getr (rus)      r0, 0x3
             0x00080012: 4b d8:       ldap (u10)      r11, 0x4b <_InitChildThread>
             0x00080014: 02 73:       bu (u6)         0x2 <.label0>
.label1      0x00080016: 5d ff ec 07: init (l2r)      t[r1]:pc, r11
.label0      0x0008001a: d4 06:       getst (2r)      r1, res[r0]
             0x0008001c: 44 74:       bt (ru6)        r1, -0x4 <.label1>
             0x0008001e: f0 1f:       msync (1r)      res[r0]
             0x00080020: 46 d0:       bl (u10)        0x46 <_SetupThread>
             0x00080022: 02 f0 9e 6f: ldw (lru6)      sp, cp[0x9e]
             0x00080026: f0 17:       mjoin (1r)      res[r0]
             0x00080028: e0 17:       freer (1r)      res[r0]
             0x0008002a: 08 f0 0b 68: ldc (lru6)      r0, 0x20b
             0x0008002e: 00 f0 58 58: ldw (lru6)      r1, dp[0x18]
             0x00080032: c4 fe ec 1f: set (lr2r)      ps[r0], r1
             0x00080036: 00 f0 1a 60: ldaw (lru6)     r0, dp[0x1a]
             0x0008003a: 40 68:       ldc (ru6)       r1, 0x0
             0x0008003c: 02 f0 9f 6c: ldw (lru6)      r2, cp[0x9f]
             0x00080040: 01 f0 5c d1: bl (lu10)       0x55c <.label2>
             0x00080044: 02 f0 1a 6c: ldw (lru6)      r0, cp[0x9a]
             0x00080048: 40 68:       ldc (ru6)       r1, 0x0
             0x0008004a: 02 f0 a0 6c: ldw (lru6)      r2, cp[0xa0]
             0x0008004e: 01 f0 55 d1: bl (lu10)       0x555 <.label2>
             0x00080052: 02 f0 1b 6c: ldw (lru6)      r0, cp[0x9b]
             0x00080056: 40 68:       ldc (ru6)       r1, 0x0
             0x00080058: 02 f0 a1 6c: ldw (lru6)      r2, cp[0xa1]
             0x0008005c: 01 f0 4e d1: bl (lu10)       0x54e <.label2>
             0x00080060: 01 f0 50 d1: bl (lu10)       0x550 <.label3>
             0x00080064: 00 f0 32 d0: bl (lu10)       0x32 <.label4>
             0x00080068: 00 f0 c6 6a: ldc (lru6)      r11, 0x6
             0x0008006c: c8 ea:       setc (ru6)      res[r11], 0x8
             0x0008006e: cf ea:       setc (ru6)      res[r11], 0xf
             0x00080070: 00 68:       ldc (ru6)       r0, 0x0
             0x00080072: 01 54:       stw (ru6)       r0, sp[0x1]
             0x00080074: 03 f0 48 68: ldc (lru6)      r1, 0xc8
             0x00080078: 07 73:       bu (u6)         0x7 <_startExit>
             0x0008007a: ff 17:       nop (0r)        
             0x0008007c: ff 17:       nop (0r)        
             0x0008007e: ff 17:       nop (0r)        

<_TrapHandler>:
             0x00080080: 00 f0 40 77: entsp (lu6)     0x0
             0x00080084: 00 f0 1e 73: bu (lu6)        0x1e <_DoException> <.crt>

<_startExit>:
             0x00080088: 48 78:       bf (ru6)        r1, 0x8 <.label5>
             0x0008008a: 01 64:       ldaw (ru6)      r0, sp[0x1]
             0x0008008c: 01 f0 14 d1: bl (lu10)       0x514 <.label6>
             0x00080090: b0 f8 ec 97: ashr (l2rus)    r11, r0, 0x20
             0x00080094: c2 7a:       bf (ru6)        r11, 0x2 <.label5>
             0x00080096: 01 90:       add (2rus)      r0, r0, 0x1
             0x00080098: f0 4f:       ecallt (1r)     r0
.label5      0x0008009a: 41 64:       ldaw (ru6)      r1, sp[0x1]
             0x0008009c: 00 f0 6e d0: bl (lu10)       0x6e <.label7>
             0x000800a0: 02 70:       bt (ru6)        r0, 0x2 <.label8>
             0x000800a2: 01 f0 11 d1: bl (lu10)       0x511 <.label9>
.label8      0x000800a6: 01 f0 1b d1: bl (lu10)       0x51b <.label10>

<_InitChildThread>:
             0x000800aa: 01 d0:       bl (u10)        0x1 <_SetupThread>
             0x000800ac: ee 07:       ssync (0r)      

<_SetupThread>:
             0x000800ae: 18 dc:       ldap (u10)      r11, -0x18 <_TrapHandler>
             0x000800b0: ff 07:       set (0r)        kep, r11
             0x000800b2: 0b f0 a5 d8: ldap (lu10)     r11, 0x2ca5 <.label11>
             0x000800b6: fb 37:       set (1r)        cp, r11
             0x000800b8: 02 f0 59 6f: ldw (lru6)      dp, cp[0x99]
             0x000800bc: c0 6a:       ldc (ru6)       r11, 0x0
             0x000800be: fb 2f:       set (1r)        sp, r11
             0x000800c0: c0 77:       retsp (u6)      0x0

<__register_frame_info_bases>:
             0x000800c2: c0 77:       retsp (u6)      0x0

<_DoException>:
<.crt>:
             0x000800c4: 00 f0 40 77: entsp (lu6)     0x0
             0x000800c8: ed 07:       clre (0r)       
             0x000800ca: ec 07:       waiteu (0r)     

Disassembly of section .init (size: 26)

<_init>:
<.init>:
.label4      0x000800cc: 42 77:       entsp (u6)      0x2

<.init>:
             0x000800ce: 01 f0 57 d3: bl (lu10)       0x757 <.label12>
             0x000800d2: 02 f0 23 6d: ldw (lru6)      r4, cp[0xa3]
             0x000800d6: 06 79:       bf (ru6)        r4, 0x6 <do_ctors_end> <.init>
             0x000800d8: 02 f0 5c 6d: ldw (lru6)      r5, cp[0x9c]

<do_ctors_loop>:
             0x000800dc: 01 99:       sub (2rus)      r4, r4, 0x1
             0x000800de: 04 4b:       ldw (3r)        r0, r5[r4]
             0x000800e0: e0 27:       bla (1r)        r0
             0x000800e2: 04 75:       bt (ru6)        r4, -0x4 <do_ctors_loop>

<do_ctors_end>:
<.init>:
             0x000800e4: c2 77:       retsp (u6)      0x2

Disassembly of section .fini (size: 46)

<.fini>:
<_fini>:
.label72     0x000800e6: 42 77:       entsp (u6)      0x2

<.fini>:
             0x000800e8: 84 77:       extsp (u6)      0x4
             0x000800ea: 01 55:       stw (ru6)       r4, sp[0x1]
             0x000800ec: 42 55:       stw (ru6)       r5, sp[0x2]
             0x000800ee: 83 55:       stw (ru6)       r6, sp[0x3]
             0x000800f0: 02 f0 a2 6d: ldw (lru6)      r6, cp[0xa2]
             0x000800f4: 88 79:       bf (ru6)        r6, 0x8 <do_dtors_end>
             0x000800f6: 00 69:       ldc (ru6)       r4, 0x0
             0x000800f8: 02 f0 5d 6d: ldw (lru6)      r5, cp[0x9d]

<do_dtors_loop>:
             0x000800fc: 04 4b:       ldw (3r)        r0, r5[r4]
             0x000800fe: e0 27:       bla (1r)        r0
             0x00080100: 01 91:       add (2rus)      r4, r4, 0x1
             0x00080102: b2 cb:       lsu (3r)        r11, r4, r6
             0x00080104: c5 76:       bt (ru6)        r11, -0x5 <do_dtors_loop>

<do_dtors_end>:
             0x00080106: 01 f0 07 d1: bl (lu10)       0x507 <.label13>
             0x0008010a: 01 5d:       ldw (ru6)       r4, sp[0x1]
             0x0008010c: 42 5d:       ldw (ru6)       r5, sp[0x2]
             0x0008010e: 83 5d:       ldw (ru6)       r6, sp[0x3]
             0x00080110: 84 67:       ldaw (ru6)      sp, sp[0x4]

<.fini>:
             0x00080112: c2 77:       retsp (u6)      0x2

Disassembly of section .text (size: 22760)

<_write>:
             0x00080114: ff 17:       nop (0r)        
             0x00080116: 86 7f:       dualentsp (u6)  0x6
             0x00080118: 05 f9 ec f7: std (l2rus)     r5, r4, sp[0x1]
             0x0008011c: 48 90:       add (2rus)      r4, r2, 0x0
             0x0008011e: 84 55:       stw (ru6)       r6, sp[0x4]
             0x00080120: 54 90:       add (2rus)      r5, r1, 0x0
             0x00080122: 60 90:       add (2rus)      r6, r0, 0x0
             0x00080124: 00 f0 91 d2: bl (lu10)       0x291 <xscope_get_io_config>
             0x00080128: 00 f0 04 78: bf (lru6)       r0, 0x4 <.label14>
             0x0008012c: 12 b0:       eq (2rus)       r1, r0, 0x2
             0x0008012e: ff 17:       nop (0r)        
             0x00080130: 00 f0 47 78: bf (lru6)       r1, 0x7 <.label15>
             0x00080134: 03 f0 13 68: ldc (lru6)      r0, 0xd3
             0x00080138: 00 f0 08 73: bu (lu6)        0x8 <.label16>
.label14     0x0008013c: c8 90:       add (2rus)      r0, r6, 0x0
             0x0008013e: d4 90:       add (2rus)      r1, r5, 0x0
             0x00080140: e0 90:       add (2rus)      r2, r4, 0x0
             0x00080142: ff 17:       nop (0r)        
             0x00080144: 00 f0 8c d2: bl (lu10)       0x28c <xscope_syscall_write>
             0x00080148: 40 90:       add (2rus)      r4, r0, 0x0
             0x0008014a: ff 17:       nop (0r)        
             0x0008014c: 00 f0 08 73: bu (lu6)        0x8 <.label17>
.label15     0x00080150: 01 b0:       eq (2rus)       r0, r0, 0x1
             0x00080152: ff 17:       nop (0r)        
             0x00080154: 00 f0 05 78: bf (lru6)       r0, 0x5 <.label18>
             0x00080158: 03 f0 12 68: ldc (lru6)      r0, 0xd2
.label16     0x0008015c: d8 90:       add (2rus)      r1, r6, 0x0
             0x0008015e: e0 90:       add (2rus)      r2, r4, 0x0
             0x00080160: f4 90:       add (2rus)      r3, r5, 0x0
             0x00080162: ff 17:       nop (0r)        
             0x00080164: 00 f0 c2 d2: bl (lu10)       0x2c2 <xscope_syscall_data_write>
             0x00080168: 00 f0 01 73: bu (lu6)        0x1 <.label17>
.label18     0x0008016c: 10 a7:       mkmsk (rus)     r4, 0x20
             0x0008016e: ff 17:       nop (0r)        
.label17     0x00080170: c0 90:       add (2rus)      r0, r4, 0x0
             0x00080172: 84 5d:       ldw (ru6)       r6, sp[0x4]
             0x00080174: 05 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x1]
             0x00080178: ff 17:       nop (0r)        
             0x0008017a: c6 77:       retsp (u6)      0x6

<main>:
.label7      0x0008017c: 00 f0 4a 77: entsp (lu6)     0xa
             0x00080180: 24 90:       add (2rus)      r2, r1, 0x0
             0x00080182: 30 90:       add (2rus)      r3, r0, 0x0
             0x00080184: c0 6a:       ldc (ru6)       r11, 0x0
             0x00080186: c9 56:       stw (ru6)       r11, sp[0x9]
             0x00080188: 08 54:       stw (ru6)       r0, sp[0x8]
             0x0008018a: 47 54:       stw (ru6)       r1, sp[0x7]
             0x0008018c: c6 56:       stw (ru6)       r11, sp[0x6]
             0x0008018e: c5 54:       stw (ru6)       r3, sp[0x5]
             0x00080190: 84 54:       stw (ru6)       r2, sp[0x4]
             0x00080192: 00 73:       bu (u6)         0x0 <.label19>
.label19     0x00080194: 06 5c:       ldw (ru6)       r0, sp[0x6]
             0x00080196: 48 5c:       ldw (ru6)       r1, sp[0x8]
             0x00080198: 01 c0:       lss (3r)        r0, r0, r1
             0x0008019a: 11 78:       bf (ru6)        r0, 0x11 <.label20>
             0x0008019c: 00 73:       bu (u6)         0x0 <.label21>
.label21     0x0008019e: 06 5c:       ldw (ru6)       r0, sp[0x6]
             0x000801a0: 47 5c:       ldw (ru6)       r1, sp[0x7]
             0x000801a2: 24 48:       ldw (3r)        r2, r1[r0]
             0x000801a4: 03 f0 67 7f: ldaw (lu6)      r11, cp[0xe7]
             0x000801a8: 03 54:       stw (ru6)       r0, sp[0x3]
             0x000801aa: 8c 91:       add (2rus)      r0, r11, 0x0
             0x000801ac: 43 5c:       ldw (ru6)       r1, sp[0x3]
             0x000801ae: 01 f0 9d d1: bl (lu10)       0x59d <printf>
             0x000801b2: 02 54:       stw (ru6)       r0, sp[0x2]
             0x000801b4: 00 73:       bu (u6)         0x0 <.label22>
.label22     0x000801b6: 06 5c:       ldw (ru6)       r0, sp[0x6]
             0x000801b8: 01 90:       add (2rus)      r0, r0, 0x1
             0x000801ba: 06 54:       stw (ru6)       r0, sp[0x6]
             0x000801bc: 15 77:       bu (u6)         -0x15 <.label19>
.label20     0x000801be: 00 f0 bf d0: bl (lu10)       0xbf <_Z8initPortv>
             0x000801c2: 00 68:       ldc (ru6)       r0, 0x0
             0x000801c4: ca 77:       retsp (u6)      0xa
             0x000801c6: 00 00:       stw (2rus)      r0, r0[0x0]

<__cxx_global_var_init>:
             0x000801c8: 00 f0 42 77: entsp (lu6)     0x2
             0x000801cc: 00 f0 27 60: ldaw (lru6)     r0, dp[0x27]
             0x000801d0: 00 f2 42 68: ldc (lru6)      r1, 0x8002
             0x000801d4: 02 f0 b9 6c: ldw (lru6)      r2, cp[0xb9]
             0x000801d8: c5 68:       ldc (ru6)       r3, 0x5
             0x000801da: 00 f0 07 d0: bl (lu10)       0x7 <_ZN6XCPortC2EN2XC8TileID_tEjNS_10PortMode_tE>
             0x000801de: 00 f0 3f d8: ldap (lu10)     r11, 0x3f <__dtor_P8C>
             0x000801e2: 8c 91:       add (2rus)      r0, r11, 0x0
             0x000801e4: 01 f0 94 d1: bl (lu10)       0x594 <atexit>
             0x000801e8: 01 54:       stw (ru6)       r0, sp[0x1]
             0x000801ea: c2 77:       retsp (u6)      0x2

<_ZN6XCPortC2EN2XC8TileID_tEjNS_10PortMode_tE>:
             0x000801ec: 00 f0 50 77: entsp (lu6)     0x10
             0x000801f0: 46 fb ec f7: std (l2rus)     r5, r4, sp[0x6]
             0x000801f4: 8e 55:       stw (ru6)       r6, sp[0xe]
             0x000801f6: bc 90:       add (2rus)      r11, r3, 0x0
             0x000801f8: 48 90:       add (2rus)      r4, r2, 0x0
             0x000801fa: 54 90:       add (2rus)      r5, r1, 0x0
             0x000801fc: 60 90:       add (2rus)      r6, r0, 0x0
             0x000801fe: 0b 54:       stw (ru6)       r0, sp[0xb]
             0x00080200: 4a 54:       stw (ru6)       r1, sp[0xa]
             0x00080202: 89 54:       stw (ru6)       r2, sp[0x9]
             0x00080204: c8 54:       stw (ru6)       r3, sp[0x8]
             0x00080206: 0b 5c:       ldw (ru6)       r0, sp[0xb]
             0x00080208: 4a 5c:       ldw (ru6)       r1, sp[0xa]
             0x0008020a: 89 5c:       ldw (ru6)       r2, sp[0x9]
             0x0008020c: 07 54:       stw (ru6)       r0, sp[0x7]
             0x0008020e: c6 56:       stw (ru6)       r11, sp[0x6]
             0x00080210: 05 55:       stw (ru6)       r4, sp[0x5]
             0x00080212: 44 55:       stw (ru6)       r5, sp[0x4]
             0x00080214: 83 55:       stw (ru6)       r6, sp[0x3]
             0x00080216: 00 f0 03 d2: bl (lu10)       0x203 <_ZN6XCPortC2EN2XC8TileID_tEj>
             0x0008021a: 0a 5c:       ldw (ru6)       r0, sp[0xa]
             0x0008021c: 02 54:       stw (ru6)       r0, sp[0x2]
             0x0008021e: 00 f0 1f d2: bl (lu10)       0x21f <_ZN2XCL13local_tile_idEv>
             0x00080222: 42 5c:       ldw (ru6)       r1, sp[0x2]
             0x00080224: 04 30:       eq (3r)         r0, r1, r0
             0x00080226: 07 78:       bf (ru6)        r0, 0x7 <.label23>
             0x00080228: 00 73:       bu (u6)         0x0 <.label24>
.label24     0x0008022a: 48 5c:       ldw (ru6)       r1, sp[0x8]
             0x0008022c: 07 5c:       ldw (ru6)       r0, sp[0x7]
             0x0008022e: 00 f0 1d d2: bl (lu10)       0x21d <_ZN6XCPort7setModeENS_10PortMode_tE>
             0x00080232: 01 54:       stw (ru6)       r0, sp[0x1]
             0x00080234: 00 73:       bu (u6)         0x0 <.label23>
.label23     0x00080236: 8e 5d:       ldw (ru6)       r6, sp[0xe]
             0x00080238: 46 fb ec ef: ldd (l2rus)     r5, r4, sp[0x6]
             0x0008023c: d0 77:       retsp (u6)      0x10
             0x0008023e: 00 00:       stw (2rus)      r0, r0[0x0]

<_ZN6XCPortD2Ev>:
             0x00080240: 00 f0 44 77: entsp (lu6)     0x4
             0x00080244: 10 90:       add (2rus)      r1, r0, 0x0
             0x00080246: 03 54:       stw (ru6)       r0, sp[0x3]
             0x00080248: 20 90:       add (2rus)      r2, r0, 0x0
             0x0008024a: 00 08:       ldw (2rus)      r0, r0[0x0]
             0x0008024c: 82 54:       stw (ru6)       r2, sp[0x2]
             0x0008024e: 41 54:       stw (ru6)       r1, sp[0x1]
             0x00080250: 05 78:       bf (ru6)        r0, 0x5 <.label25>
             0x00080252: 00 73:       bu (u6)         0x0 <.label26>
.label26     0x00080254: 02 5c:       ldw (ru6)       r0, sp[0x2]
             0x00080256: 00 f0 bf d1: bl (lu10)       0x1bf <_ZN6XCPort4freeEv>
             0x0008025a: 00 73:       bu (u6)         0x0 <.label25>
.label25     0x0008025c: c4 77:       retsp (u6)      0x4
             0x0008025e: 00 00:       stw (2rus)      r0, r0[0x0]

<__dtor_P8C>:
             0x00080260: 00 f0 42 77: entsp (lu6)     0x2
             0x00080264: 00 f0 27 60: ldaw (lru6)     r0, dp[0x27]
             0x00080268: 00 f0 16 d4: bl (lu10)       -0x16 <_ZN6XCPortD2Ev>
             0x0008026c: c2 77:       retsp (u6)      0x2
             0x0008026e: 00 00:       stw (2rus)      r0, r0[0x0]

<__cxx_global_var_init1>:
             0x00080270: 00 f0 42 77: entsp (lu6)     0x2
             0x00080274: 00 f0 1a 60: ldaw (lru6)     r0, dp[0x1a]
             0x00080278: 00 f0 67 60: ldaw (lru6)     r1, dp[0x27]
             0x0008027c: 82 68:       ldc (ru6)       r2, 0x2
             0x0008027e: 00 f0 01 d0: bl (lu10)       0x1 <_ZN9XCPortBitC2ER6XCPortj>
             0x00080282: c2 77:       retsp (u6)      0x2

<_ZN9XCPortBitC2ER6XCPortj>:
             0x00080284: 00 f0 48 77: entsp (lu6)     0x8
             0x00080288: 06 55:       stw (ru6)       r4, sp[0x6]
             0x0008028a: 38 90:       add (2rus)      r3, r2, 0x0
             0x0008028c: b4 90:       add (2rus)      r11, r1, 0x0
             0x0008028e: 40 90:       add (2rus)      r4, r0, 0x0
             0x00080290: 05 54:       stw (ru6)       r0, sp[0x5]
             0x00080292: 44 54:       stw (ru6)       r1, sp[0x4]
             0x00080294: 83 54:       stw (ru6)       r2, sp[0x3]
             0x00080296: 05 5c:       ldw (ru6)       r0, sp[0x5]
             0x00080298: 44 5c:       ldw (ru6)       r1, sp[0x4]
             0x0008029a: 10 00:       stw (2rus)      r1, r0[0x0]
             0x0008029c: 43 5c:       ldw (ru6)       r1, sp[0x3]
             0x0008029e: d9 a6:       mkmsk (rus)     r2, 0x1
             0x000802a0: 19 20:       shl (3r)        r1, r2, r1
             0x000802a2: 11 00:       stw (2rus)      r1, r0[0x1]
             0x000802a4: c2 54:       stw (ru6)       r3, sp[0x2]
             0x000802a6: c1 56:       stw (ru6)       r11, sp[0x1]
             0x000802a8: 00 55:       stw (ru6)       r4, sp[0x0]
             0x000802aa: 06 5d:       ldw (ru6)       r4, sp[0x6]
             0x000802ac: c8 77:       retsp (u6)      0x8
             0x000802ae: 00 00:       stw (2rus)      r0, r0[0x0]

<_Z5task1R4tparj>:
             0x000802b0: 00 f0 46 77: entsp (lu6)     0x6
             0x000802b4: 24 90:       add (2rus)      r2, r1, 0x0
             0x000802b6: 30 90:       add (2rus)      r3, r0, 0x0
             0x000802b8: 05 54:       stw (ru6)       r0, sp[0x5]
             0x000802ba: 44 54:       stw (ru6)       r1, sp[0x4]
             0x000802bc: 05 5c:       ldw (ru6)       r0, sp[0x5]
             0x000802be: 83 54:       stw (ru6)       r2, sp[0x3]
             0x000802c0: c2 54:       stw (ru6)       r3, sp[0x2]
             0x000802c2: 00 f0 09 d0: bl (lu10)       0x9 <_ZN4tpar10registermeEv>
             0x000802c6: 02 78:       bf (ru6)        r0, 0x2 <.label27>
             0x000802c8: 00 73:       bu (u6)         0x0 <.label28>
.label28     0x000802ca: c6 77:       retsp (u6)      0x6
.label27     0x000802cc: 05 5c:       ldw (ru6)       r0, sp[0x5]
             0x000802ce: 00 f0 0b d0: bl (lu10)       0xb <_ZN4tpar8waitsyncEv>
             0x000802d2: 00 73:       bu (u6)         0x0 <.label29>
.label29     0x000802d4: 01 77:       bu (u6)         -0x1 <.label29>
             0x000802d6: 00 00:       stw (2rus)      r0, r0[0x0]

<_ZN4tpar10registermeEv>:
             0x000802d8: 00 f0 42 77: entsp (lu6)     0x2
             0x000802dc: 10 90:       add (2rus)      r1, r0, 0x0
             0x000802de: 01 54:       stw (ru6)       r0, sp[0x1]
             0x000802e0: d1 a6:       mkmsk (rus)     r0, 0x1
             0x000802e2: 40 54:       stw (ru6)       r1, sp[0x0]
             0x000802e4: c2 77:       retsp (u6)      0x2
             0x000802e6: 00 00:       stw (2rus)      r0, r0[0x0]

<_ZN4tpar8waitsyncEv>:
             0x000802e8: 00 f0 42 77: entsp (lu6)     0x2
             0x000802ec: 10 90:       add (2rus)      r1, r0, 0x0
             0x000802ee: 01 54:       stw (ru6)       r0, sp[0x1]
             0x000802f0: 40 54:       stw (ru6)       r1, sp[0x0]
             0x000802f2: c2 77:       retsp (u6)      0x2

<_Z8maintaskv>:
             0x000802f4: 00 f0 44 77: entsp (lu6)     0x4
             0x000802f8: 02 64:       ldaw (ru6)      r0, sp[0x2]
             0x000802fa: 01 54:       stw (ru6)       r0, sp[0x1]
             0x000802fc: 00 f0 0e d0: bl (lu10)       0xe <_ZN4tpar7getsyncEv>
             0x00080300: d5 a6:       mkmsk (rus)     r1, 0x1
             0x00080302: 01 5c:       ldw (ru6)       r0, sp[0x1]
             0x00080304: 00 f0 2c d4: bl (lu10)       -0x2c <_Z5task1R4tparj>
             0x00080308: 42 68:       ldc (ru6)       r1, 0x2
             0x0008030a: 01 5c:       ldw (ru6)       r0, sp[0x1]
             0x0008030c: 00 f0 30 d4: bl (lu10)       -0x30 <_Z5task1R4tparj>
             0x00080310: 01 5c:       ldw (ru6)       r0, sp[0x1]
             0x00080312: 00 f0 0f d0: bl (lu10)       0xf <_ZN4tpar5msyncEv>
             0x00080316: 00 73:       bu (u6)         0x0 <.label30>
.label30     0x00080318: 01 77:       bu (u6)         -0x1 <.label30>
             0x0008031a: 00 00:       stw (2rus)      r0, r0[0x0]

<_ZN4tpar7getsyncEv>:
             0x0008031c: 00 f0 42 77: entsp (lu6)     0x2
             0x00080320: 10 90:       add (2rus)      r1, r0, 0x0
             0x00080322: 01 54:       stw (ru6)       r0, sp[0x1]
             0x00080324: 80 68:       ldc (ru6)       r2, 0x0
             0x00080326: 21 00:       stw (2rus)      r2, r0[0x1]
             0x00080328: 08 f0 83 68: ldc (lru6)      r2, 0x203
             0x0008032c: 20 00:       stw (2rus)      r2, r0[0x0]
             0x0008032e: 40 54:       stw (ru6)       r1, sp[0x0]
             0x00080330: c2 77:       retsp (u6)      0x2
             0x00080332: 00 00:       stw (2rus)      r0, r0[0x0]

<_ZN4tpar5msyncEv>:
             0x00080334: 00 f0 42 77: entsp (lu6)     0x2
             0x00080338: 10 90:       add (2rus)      r1, r0, 0x0
             0x0008033a: 01 54:       stw (ru6)       r0, sp[0x1]
             0x0008033c: 40 54:       stw (ru6)       r1, sp[0x0]
             0x0008033e: c2 77:       retsp (u6)      0x2

<_Z8initPortv>:
             0x00080340: 00 f0 46 77: entsp (lu6)     0x6
             0x00080344: 00 f0 27 60: ldaw (lru6)     r0, dp[0x27]
             0x00080348: d5 a6:       mkmsk (rus)     r1, 0x1
             0x0008034a: 05 54:       stw (ru6)       r0, sp[0x5]
             0x0008034c: 44 54:       stw (ru6)       r1, sp[0x4]
             0x0008034e: 00 f0 17 d0: bl (lu10)       0x17 <_ZN6XCPortaSEj>
             0x00080352: 00 f0 5a 60: ldaw (lru6)     r1, dp[0x1a]
             0x00080356: 03 54:       stw (ru6)       r0, sp[0x3]
             0x00080358: 04 90:       add (2rus)      r0, r1, 0x0
             0x0008035a: 44 5c:       ldw (ru6)       r1, sp[0x4]
             0x0008035c: 00 f0 20 d0: bl (lu10)       0x20 <_ZN9XCPortBitaSEj>
             0x00080360: 45 5c:       ldw (ru6)       r1, sp[0x5]
             0x00080362: 02 54:       stw (ru6)       r0, sp[0x2]
             0x00080364: 04 90:       add (2rus)      r0, r1, 0x0
             0x00080366: 00 f0 2d d0: bl (lu10)       0x2d <_ZNK6XCPortcvjEv>
             0x0008036a: 03 f0 70 7f: ldaw (lu6)      r11, cp[0xf0]
             0x0008036e: 01 54:       stw (ru6)       r0, sp[0x1]
             0x00080370: 8c 91:       add (2rus)      r0, r11, 0x0
             0x00080372: 41 5c:       ldw (ru6)       r1, sp[0x1]
             0x00080374: 00 f0 64 d2: bl (lu10)       0x264 <debug_printf>
             0x00080378: 00 f0 44 d4: bl (lu10)       -0x44 <_Z8maintaskv>
             0x0008037c: c6 77:       retsp (u6)      0x6
             0x0008037e: 00 00:       stw (2rus)      r0, r0[0x0]

<_ZN6XCPortaSEj>:
             0x00080380: 00 f0 48 77: entsp (lu6)     0x8
             0x00080384: 24 90:       add (2rus)      r2, r1, 0x0
             0x00080386: 30 90:       add (2rus)      r3, r0, 0x0
             0x00080388: 07 54:       stw (ru6)       r0, sp[0x7]
             0x0008038a: 46 54:       stw (ru6)       r1, sp[0x6]
             0x0008038c: 07 5c:       ldw (ru6)       r0, sp[0x7]
             0x0008038e: 05 54:       stw (ru6)       r0, sp[0x5]
             0x00080390: 84 54:       stw (ru6)       r2, sp[0x4]
             0x00080392: c3 54:       stw (ru6)       r3, sp[0x3]
             0x00080394: 00 f0 00 d1: bl (lu10)       0x100 <_ZN6XCPort3setEj>
             0x00080398: 45 5c:       ldw (ru6)       r1, sp[0x5]
             0x0008039a: 02 54:       stw (ru6)       r0, sp[0x2]
             0x0008039c: 04 90:       add (2rus)      r0, r1, 0x0
             0x0008039e: c8 77:       retsp (u6)      0x8

<_ZN9XCPortBitaSEj>:
             0x000803a0: 00 f0 48 77: entsp (lu6)     0x8
             0x000803a4: 24 90:       add (2rus)      r2, r1, 0x0
             0x000803a6: 30 90:       add (2rus)      r3, r0, 0x0
             0x000803a8: 07 54:       stw (ru6)       r0, sp[0x7]
             0x000803aa: 46 54:       stw (ru6)       r1, sp[0x6]
             0x000803ac: 07 5c:       ldw (ru6)       r0, sp[0x7]
             0x000803ae: 46 5c:       ldw (ru6)       r1, sp[0x6]
             0x000803b0: 05 54:       stw (ru6)       r0, sp[0x5]
             0x000803b2: 84 54:       stw (ru6)       r2, sp[0x4]
             0x000803b4: c3 54:       stw (ru6)       r3, sp[0x3]
             0x000803b6: 00 f0 1f d0: bl (lu10)       0x1f <_ZN9XCPortBit3setEj>
             0x000803ba: 45 5c:       ldw (ru6)       r1, sp[0x5]
             0x000803bc: 02 54:       stw (ru6)       r0, sp[0x2]
             0x000803be: 04 90:       add (2rus)      r0, r1, 0x0
             0x000803c0: c8 77:       retsp (u6)      0x8
             0x000803c2: 00 00:       stw (2rus)      r0, r0[0x0]

<_ZNK6XCPortcvjEv>:
             0x000803c4: 00 f0 44 77: entsp (lu6)     0x4
             0x000803c8: 10 90:       add (2rus)      r1, r0, 0x0
             0x000803ca: 03 54:       stw (ru6)       r0, sp[0x3]
             0x000803cc: 42 54:       stw (ru6)       r1, sp[0x2]
             0x000803ce: 00 f0 01 d0: bl (lu10)       0x1 <_ZNK6XCPort4getdEv>
             0x000803d2: c4 77:       retsp (u6)      0x4

<_ZNK6XCPort4getdEv>:
             0x000803d4: 00 f0 44 77: entsp (lu6)     0x4
             0x000803d8: 10 90:       add (2rus)      r1, r0, 0x0
             0x000803da: 03 54:       stw (ru6)       r0, sp[0x3]
             0x000803dc: 42 54:       stw (ru6)       r1, sp[0x2]
             0x000803de: 00 f0 01 d0: bl (lu10)       0x1 <_ZNK12XCResourceID4getdEv>
             0x000803e2: c4 77:       retsp (u6)      0x4

<_ZNK12XCResourceID4getdEv>:
             0x000803e4: 00 f0 44 77: entsp (lu6)     0x4
             0x000803e8: 10 90:       add (2rus)      r1, r0, 0x0
             0x000803ea: 03 54:       stw (ru6)       r0, sp[0x3]
             0x000803ec: 00 08:       ldw (2rus)      r0, r0[0x0]
             0x000803ee: d0 fe ec 1f: getd (l2r)      r0, res[r0]
             0x000803f2: 02 54:       stw (ru6)       r0, sp[0x2]
             0x000803f4: 41 54:       stw (ru6)       r1, sp[0x1]
             0x000803f6: c4 77:       retsp (u6)      0x4

<_ZN9XCPortBit3setEj>:
             0x000803f8: 00 f0 48 77: entsp (lu6)     0x8
             0x000803fc: 24 90:       add (2rus)      r2, r1, 0x0
             0x000803fe: 30 90:       add (2rus)      r3, r0, 0x0
             0x00080400: 07 54:       stw (ru6)       r0, sp[0x7]
             0x00080402: 46 54:       stw (ru6)       r1, sp[0x6]
             0x00080404: 07 5c:       ldw (ru6)       r0, sp[0x7]
             0x00080406: 05 54:       stw (ru6)       r0, sp[0x5]
             0x00080408: c4 54:       stw (ru6)       r3, sp[0x4]
             0x0008040a: 83 54:       stw (ru6)       r2, sp[0x3]
             0x0008040c: 46 78:       bf (ru6)        r1, 0x6 <.label31>
             0x0008040e: 00 73:       bu (u6)         0x0 <.label32>
.label32     0x00080410: 05 5c:       ldw (ru6)       r0, sp[0x5]
             0x00080412: 00 f0 09 d0: bl (lu10)       0x9 <_ZN9XCPortBit3setEv>
             0x00080416: 02 54:       stw (ru6)       r0, sp[0x2]
             0x00080418: 05 73:       bu (u6)         0x5 <.label33>
.label31     0x0008041a: 05 5c:       ldw (ru6)       r0, sp[0x5]
             0x0008041c: 00 f0 14 d0: bl (lu10)       0x14 <_ZN9XCPortBit3clrEv>
             0x00080420: 01 54:       stw (ru6)       r0, sp[0x1]
             0x00080422: 00 73:       bu (u6)         0x0 <.label33>
.label33     0x00080424: 05 5c:       ldw (ru6)       r0, sp[0x5]
             0x00080426: c8 77:       retsp (u6)      0x8

<_ZN9XCPortBit3setEv>:
             0x00080428: 00 f0 46 77: entsp (lu6)     0x6
             0x0008042c: 10 90:       add (2rus)      r1, r0, 0x0
             0x0008042e: 05 54:       stw (ru6)       r0, sp[0x5]
             0x00080430: 20 08:       ldw (2rus)      r2, r0[0x0]
             0x00080432: 31 08:       ldw (2rus)      r3, r0[0x1]
             0x00080434: 04 54:       stw (ru6)       r0, sp[0x4]
             0x00080436: 08 90:       add (2rus)      r0, r2, 0x0
             0x00080438: 43 54:       stw (ru6)       r1, sp[0x3]
             0x0008043a: 1c 90:       add (2rus)      r1, r3, 0x0
             0x0008043c: 00 f0 64 d0: bl (lu10)       0x64 <_ZN6XCPort7setMaskEj>
             0x00080440: 44 5c:       ldw (ru6)       r1, sp[0x4]
             0x00080442: 02 54:       stw (ru6)       r0, sp[0x2]
             0x00080444: 04 90:       add (2rus)      r0, r1, 0x0
             0x00080446: c6 77:       retsp (u6)      0x6

<_ZN9XCPortBit3clrEv>:
             0x00080448: 00 f0 46 77: entsp (lu6)     0x6
             0x0008044c: 10 90:       add (2rus)      r1, r0, 0x0
             0x0008044e: 05 54:       stw (ru6)       r0, sp[0x5]
             0x00080450: 20 08:       ldw (2rus)      r2, r0[0x0]
             0x00080452: 31 08:       ldw (2rus)      r3, r0[0x1]
             0x00080454: 04 54:       stw (ru6)       r0, sp[0x4]
             0x00080456: 08 90:       add (2rus)      r0, r2, 0x0
             0x00080458: 43 54:       stw (ru6)       r1, sp[0x3]
             0x0008045a: 1c 90:       add (2rus)      r1, r3, 0x0
             0x0008045c: 00 f0 04 d0: bl (lu10)       0x4 <_ZN6XCPort7clrMaskEj>
             0x00080460: 44 5c:       ldw (ru6)       r1, sp[0x4]
             0x00080462: 02 54:       stw (ru6)       r0, sp[0x2]
             0x00080464: 04 90:       add (2rus)      r0, r1, 0x0
             0x00080466: c6 77:       retsp (u6)      0x6

<_ZN6XCPort7clrMaskEj>:
             0x00080468: 00 f0 48 77: entsp (lu6)     0x8
             0x0008046c: 24 90:       add (2rus)      r2, r1, 0x0
             0x0008046e: 30 90:       add (2rus)      r3, r0, 0x0
             0x00080470: 07 54:       stw (ru6)       r0, sp[0x7]
             0x00080472: 46 54:       stw (ru6)       r1, sp[0x6]
             0x00080474: 07 5c:       ldw (ru6)       r0, sp[0x7]
             0x00080476: 05 54:       stw (ru6)       r0, sp[0x5]
             0x00080478: 84 54:       stw (ru6)       r2, sp[0x4]
             0x0008047a: c3 54:       stw (ru6)       r3, sp[0x3]
             0x0008047c: 00 f0 04 d0: bl (lu10)       0x4 <_ZN6XCPort9outAndNotEj>
             0x00080480: 45 5c:       ldw (ru6)       r1, sp[0x5]
             0x00080482: 02 54:       stw (ru6)       r0, sp[0x2]
             0x00080484: 04 90:       add (2rus)      r0, r1, 0x0
             0x00080486: c8 77:       retsp (u6)      0x8

<_ZN6XCPort9outAndNotEj>:
             0x00080488: 00 f0 46 77: entsp (lu6)     0x6
             0x0008048c: 24 90:       add (2rus)      r2, r1, 0x0
             0x0008048e: 30 90:       add (2rus)      r3, r0, 0x0
             0x00080490: 05 54:       stw (ru6)       r0, sp[0x5]
             0x00080492: 44 54:       stw (ru6)       r1, sp[0x4]
             0x00080494: 05 5c:       ldw (ru6)       r0, sp[0x5]
             0x00080496: 83 54:       stw (ru6)       r2, sp[0x3]
             0x00080498: c2 54:       stw (ru6)       r3, sp[0x2]
             0x0008049a: 00 f0 01 d0: bl (lu10)       0x1 <_ZN6XCPort10outdAndNotEj>
             0x0008049e: c6 77:       retsp (u6)      0x6

<_ZN6XCPort10outdAndNotEj>:
             0x000804a0: 00 f0 48 77: entsp (lu6)     0x8
             0x000804a4: 24 90:       add (2rus)      r2, r1, 0x0
             0x000804a6: 30 90:       add (2rus)      r3, r0, 0x0
             0x000804a8: 07 54:       stw (ru6)       r0, sp[0x7]
             0x000804aa: 46 54:       stw (ru6)       r1, sp[0x6]
             0x000804ac: 07 5c:       ldw (ru6)       r0, sp[0x7]
             0x000804ae: 05 54:       stw (ru6)       r0, sp[0x5]
             0x000804b0: 84 54:       stw (ru6)       r2, sp[0x4]
             0x000804b2: c3 54:       stw (ru6)       r3, sp[0x3]
             0x000804b4: 00 f0 04 d0: bl (lu10)       0x4 <_ZN12XCResourceID10outdAndNotEj>
             0x000804b8: 45 5c:       ldw (ru6)       r1, sp[0x5]
             0x000804ba: 02 54:       stw (ru6)       r0, sp[0x2]
             0x000804bc: 04 90:       add (2rus)      r0, r1, 0x0
             0x000804be: c8 77:       retsp (u6)      0x8

<_ZN12XCResourceID10outdAndNotEj>:
             0x000804c0: 00 f0 48 77: entsp (lu6)     0x8
             0x000804c4: 24 90:       add (2rus)      r2, r1, 0x0
             0x000804c6: 30 90:       add (2rus)      r3, r0, 0x0
             0x000804c8: 07 54:       stw (ru6)       r0, sp[0x7]
             0x000804ca: 46 54:       stw (ru6)       r1, sp[0x6]
             0x000804cc: 07 5c:       ldw (ru6)       r0, sp[0x7]
             0x000804ce: 04 54:       stw (ru6)       r0, sp[0x4]
             0x000804d0: 83 54:       stw (ru6)       r2, sp[0x3]
             0x000804d2: c2 54:       stw (ru6)       r3, sp[0x2]
             0x000804d4: 00 f0 7a d4: bl (lu10)       -0x7a <_ZNK12XCResourceID4getdEv>
             0x000804d8: 46 5c:       ldw (ru6)       r1, sp[0x6]
             0x000804da: c1 2e:       andnot (2r)     r0, r1
             0x000804dc: 05 54:       stw (ru6)       r0, sp[0x5]
             0x000804de: 44 5c:       ldw (ru6)       r1, sp[0x4]
             0x000804e0: 01 54:       stw (ru6)       r0, sp[0x1]
             0x000804e2: 04 90:       add (2rus)      r0, r1, 0x0
             0x000804e4: 41 5c:       ldw (ru6)       r1, sp[0x1]
             0x000804e6: 00 f0 01 d0: bl (lu10)       0x1 <_ZN12XCResourceID4outdEj>
             0x000804ea: c8 77:       retsp (u6)      0x8

<_ZN12XCResourceID4outdEj>:
             0x000804ec: 00 f0 44 77: entsp (lu6)     0x4
             0x000804f0: 24 90:       add (2rus)      r2, r1, 0x0
             0x000804f2: 30 90:       add (2rus)      r3, r0, 0x0
             0x000804f4: 03 54:       stw (ru6)       r0, sp[0x3]
             0x000804f6: 42 54:       stw (ru6)       r1, sp[0x2]
             0x000804f8: 03 5c:       ldw (ru6)       r0, sp[0x3]
             0x000804fa: b0 08:       ldw (2rus)      r11, r0[0x0]
             0x000804fc: 37 17:       setd (r2r)      res[r11], r1
             0x000804fe: 27 af:       out (r2r)       res[r11], r1
             0x00080500: 81 54:       stw (ru6)       r2, sp[0x1]
             0x00080502: c0 54:       stw (ru6)       r3, sp[0x0]
             0x00080504: c4 77:       retsp (u6)      0x4
             0x00080506: 00 00:       stw (2rus)      r0, r0[0x0]

<_ZN6XCPort7setMaskEj>:
             0x00080508: 00 f0 48 77: entsp (lu6)     0x8
             0x0008050c: 24 90:       add (2rus)      r2, r1, 0x0
             0x0008050e: 30 90:       add (2rus)      r3, r0, 0x0
             0x00080510: 07 54:       stw (ru6)       r0, sp[0x7]
             0x00080512: 46 54:       stw (ru6)       r1, sp[0x6]
             0x00080514: 07 5c:       ldw (ru6)       r0, sp[0x7]
             0x00080516: 46 5c:       ldw (ru6)       r1, sp[0x6]
             0x00080518: 05 54:       stw (ru6)       r0, sp[0x5]
             0x0008051a: 84 54:       stw (ru6)       r2, sp[0x4]
             0x0008051c: c3 54:       stw (ru6)       r3, sp[0x3]
             0x0008051e: 00 f0 05 d0: bl (lu10)       0x5 <_ZN6XCPort5outOrEj>
             0x00080522: 45 5c:       ldw (ru6)       r1, sp[0x5]
             0x00080524: 02 54:       stw (ru6)       r0, sp[0x2]
             0x00080526: 04 90:       add (2rus)      r0, r1, 0x0
             0x00080528: c8 77:       retsp (u6)      0x8
             0x0008052a: 00 00:       stw (2rus)      r0, r0[0x0]

<_ZN6XCPort5outOrEj>:
             0x0008052c: 00 f0 46 77: entsp (lu6)     0x6
             0x00080530: 24 90:       add (2rus)      r2, r1, 0x0
             0x00080532: 30 90:       add (2rus)      r3, r0, 0x0
             0x00080534: 05 54:       stw (ru6)       r0, sp[0x5]
             0x00080536: 44 54:       stw (ru6)       r1, sp[0x4]
             0x00080538: 05 5c:       ldw (ru6)       r0, sp[0x5]
             0x0008053a: 44 5c:       ldw (ru6)       r1, sp[0x4]
             0x0008053c: 83 54:       stw (ru6)       r2, sp[0x3]
             0x0008053e: c2 54:       stw (ru6)       r3, sp[0x2]
             0x00080540: 00 f0 02 d0: bl (lu10)       0x2 <_ZN6XCPort6outdOrEj>
             0x00080544: c6 77:       retsp (u6)      0x6
             0x00080546: 00 00:       stw (2rus)      r0, r0[0x0]

<_ZN6XCPort6outdOrEj>:
             0x00080548: 00 f0 48 77: entsp (lu6)     0x8
             0x0008054c: 24 90:       add (2rus)      r2, r1, 0x0
             0x0008054e: 30 90:       add (2rus)      r3, r0, 0x0
             0x00080550: 07 54:       stw (ru6)       r0, sp[0x7]
             0x00080552: 46 54:       stw (ru6)       r1, sp[0x6]
             0x00080554: 07 5c:       ldw (ru6)       r0, sp[0x7]
             0x00080556: 46 5c:       ldw (ru6)       r1, sp[0x6]
             0x00080558: 05 54:       stw (ru6)       r0, sp[0x5]
             0x0008055a: 84 54:       stw (ru6)       r2, sp[0x4]
             0x0008055c: c3 54:       stw (ru6)       r3, sp[0x3]
             0x0008055e: 00 f0 05 d0: bl (lu10)       0x5 <_ZN12XCResourceID6outdOrEj>
             0x00080562: 45 5c:       ldw (ru6)       r1, sp[0x5]
             0x00080564: 02 54:       stw (ru6)       r0, sp[0x2]
             0x00080566: 04 90:       add (2rus)      r0, r1, 0x0
             0x00080568: c8 77:       retsp (u6)      0x8
             0x0008056a: 00 00:       stw (2rus)      r0, r0[0x0]

<_ZN12XCResourceID6outdOrEj>:
             0x0008056c: 00 f0 48 77: entsp (lu6)     0x8
             0x00080570: 24 90:       add (2rus)      r2, r1, 0x0
             0x00080572: 30 90:       add (2rus)      r3, r0, 0x0
             0x00080574: 07 54:       stw (ru6)       r0, sp[0x7]
             0x00080576: 46 54:       stw (ru6)       r1, sp[0x6]
             0x00080578: 07 5c:       ldw (ru6)       r0, sp[0x7]
             0x0008057a: 04 54:       stw (ru6)       r0, sp[0x4]
             0x0008057c: 83 54:       stw (ru6)       r2, sp[0x3]
             0x0008057e: c2 54:       stw (ru6)       r3, sp[0x2]
             0x00080580: 00 f0 d0 d4: bl (lu10)       -0xd0 <_ZNK12XCResourceID4getdEv>
             0x00080584: 46 5c:       ldw (ru6)       r1, sp[0x6]
             0x00080586: 01 40:       or (3r)         r0, r0, r1
             0x00080588: 05 54:       stw (ru6)       r0, sp[0x5]
             0x0008058a: 44 5c:       ldw (ru6)       r1, sp[0x4]
             0x0008058c: 01 54:       stw (ru6)       r0, sp[0x1]
             0x0008058e: 04 90:       add (2rus)      r0, r1, 0x0
             0x00080590: 41 5c:       ldw (ru6)       r1, sp[0x1]
             0x00080592: 00 f0 55 d4: bl (lu10)       -0x55 <_ZN12XCResourceID4outdEj>
             0x00080596: c8 77:       retsp (u6)      0x8

<_ZN6XCPort3setEj>:
             0x00080598: 00 f0 48 77: entsp (lu6)     0x8
             0x0008059c: 24 90:       add (2rus)      r2, r1, 0x0
             0x0008059e: 30 90:       add (2rus)      r3, r0, 0x0
             0x000805a0: 07 54:       stw (ru6)       r0, sp[0x7]
             0x000805a2: 46 54:       stw (ru6)       r1, sp[0x6]
             0x000805a4: 07 5c:       ldw (ru6)       r0, sp[0x7]
             0x000805a6: 05 54:       stw (ru6)       r0, sp[0x5]
             0x000805a8: 84 54:       stw (ru6)       r2, sp[0x4]
             0x000805aa: c3 54:       stw (ru6)       r3, sp[0x3]
             0x000805ac: 00 f0 04 d0: bl (lu10)       0x4 <_ZN6XCPort4outdEj>
             0x000805b0: 45 5c:       ldw (ru6)       r1, sp[0x5]
             0x000805b2: 02 54:       stw (ru6)       r0, sp[0x2]
             0x000805b4: 04 90:       add (2rus)      r0, r1, 0x0
             0x000805b6: c8 77:       retsp (u6)      0x8

<_ZN6XCPort4outdEj>:
             0x000805b8: 00 f0 48 77: entsp (lu6)     0x8
             0x000805bc: 24 90:       add (2rus)      r2, r1, 0x0
             0x000805be: 30 90:       add (2rus)      r3, r0, 0x0
             0x000805c0: 07 54:       stw (ru6)       r0, sp[0x7]
             0x000805c2: 46 54:       stw (ru6)       r1, sp[0x6]
             0x000805c4: 07 5c:       ldw (ru6)       r0, sp[0x7]
             0x000805c6: 05 54:       stw (ru6)       r0, sp[0x5]
             0x000805c8: 84 54:       stw (ru6)       r2, sp[0x4]
             0x000805ca: c3 54:       stw (ru6)       r3, sp[0x3]
             0x000805cc: 00 f0 72 d4: bl (lu10)       -0x72 <_ZN12XCResourceID4outdEj>
             0x000805d0: 45 5c:       ldw (ru6)       r1, sp[0x5]
             0x000805d2: 02 54:       stw (ru6)       r0, sp[0x2]
             0x000805d4: 04 90:       add (2rus)      r0, r1, 0x0
             0x000805d6: c8 77:       retsp (u6)      0x8

<_ZN6XCPort4freeEv>:
             0x000805d8: 00 f0 44 77: entsp (lu6)     0x4
             0x000805dc: 10 90:       add (2rus)      r1, r0, 0x0
             0x000805de: 03 54:       stw (ru6)       r0, sp[0x3]
             0x000805e0: 42 54:       stw (ru6)       r1, sp[0x2]
             0x000805e2: 00 f0 03 d0: bl (lu10)       0x3 <_ZN12XCResourceID11setInUseOffEv>
             0x000805e6: 01 54:       stw (ru6)       r0, sp[0x1]
             0x000805e8: c4 77:       retsp (u6)      0x4
             0x000805ea: 00 00:       stw (2rus)      r0, r0[0x0]

<_ZN12XCResourceID11setInUseOffEv>:
             0x000805ec: 00 f0 44 77: entsp (lu6)     0x4
             0x000805f0: 10 90:       add (2rus)      r1, r0, 0x0
             0x000805f2: 03 54:       stw (ru6)       r0, sp[0x3]
             0x000805f4: 80 68:       ldc (ru6)       r2, 0x0
             0x000805f6: 02 54:       stw (ru6)       r0, sp[0x2]
             0x000805f8: 41 54:       stw (ru6)       r1, sp[0x1]
             0x000805fa: 18 90:       add (2rus)      r1, r2, 0x0
             0x000805fc: 00 f0 02 d0: bl (lu10)       0x2 <_ZN12XCResourceID5setciEj>
             0x00080600: 02 5c:       ldw (ru6)       r0, sp[0x2]
             0x00080602: c4 77:       retsp (u6)      0x4

<_ZN12XCResourceID5setciEj>:
             0x00080604: 00 f0 44 77: entsp (lu6)     0x4
             0x00080608: 24 90:       add (2rus)      r2, r1, 0x0
             0x0008060a: 30 90:       add (2rus)      r3, r0, 0x0
             0x0008060c: 03 54:       stw (ru6)       r0, sp[0x3]
             0x0008060e: 42 54:       stw (ru6)       r1, sp[0x2]
             0x00080610: 03 5c:       ldw (ru6)       r0, sp[0x3]
             0x00080612: 00 08:       ldw (2rus)      r0, r0[0x0]
             0x00080614: d1 fe ec 2f: setc (l2r)      res[r0], r1
             0x00080618: 81 54:       stw (ru6)       r2, sp[0x1]
             0x0008061a: c0 54:       stw (ru6)       r3, sp[0x0]
             0x0008061c: c4 77:       retsp (u6)      0x4
             0x0008061e: 00 00:       stw (2rus)      r0, r0[0x0]

<_ZN6XCPortC2EN2XC8TileID_tEj>:
             0x00080620: 00 f0 4a 77: entsp (lu6)     0xa
             0x00080624: 08 55:       stw (ru6)       r4, sp[0x8]
             0x00080626: 38 90:       add (2rus)      r3, r2, 0x0
             0x00080628: b4 90:       add (2rus)      r11, r1, 0x0
             0x0008062a: 40 90:       add (2rus)      r4, r0, 0x0
             0x0008062c: 07 54:       stw (ru6)       r0, sp[0x7]
             0x0008062e: 46 54:       stw (ru6)       r1, sp[0x6]
             0x00080630: 85 54:       stw (ru6)       r2, sp[0x5]
             0x00080632: 07 5c:       ldw (ru6)       r0, sp[0x7]
             0x00080634: 18 90:       add (2rus)      r1, r2, 0x0
             0x00080636: c4 54:       stw (ru6)       r3, sp[0x4]
             0x00080638: c3 56:       stw (ru6)       r11, sp[0x3]
             0x0008063a: 02 55:       stw (ru6)       r4, sp[0x2]
             0x0008063c: 00 f0 ec d0: bl (lu10)       0xec <_ZN12XCResourceIDC2Ej>
             0x00080640: 00 f0 28 58: ldw (lru6)      r0, dp[0x28]
             0x00080644: 0a 78:       bf (ru6)        r0, 0xa <.label34>
             0x00080646: 00 73:       bu (u6)         0x0 <.label35>
.label35     0x00080648: 06 5c:       ldw (ru6)       r0, sp[0x6]
             0x0008064a: 00 f0 68 58: ldw (lru6)      r1, dp[0x28]
             0x0008064e: 01 30:       eq (3r)         r0, r0, r1
             0x00080650: e0 4f:       ecallf (1r)     r0
             0x00080652: 03 73:       bu (u6)         0x3 <.label34>
             0x00080654: 00 68:       ldc (ru6)       r0, 0x0
             0x00080656: e0 4f:       ecallf (1r)     r0
             0x00080658: 00 73:       bu (u6)         0x0 <.label34>
.label34     0x0008065a: 08 5d:       ldw (ru6)       r4, sp[0x8]
             0x0008065c: ca 77:       retsp (u6)      0xa
             0x0008065e: 00 00:       stw (2rus)      r0, r0[0x0]

<_ZN2XCL13local_tile_idEv>:
             0x00080660: 00 f0 42 77: entsp (lu6)     0x2
             0x00080664: 00 f2 02 68: ldc (lru6)      r0, 0x8002
             0x00080668: 01 54:       stw (ru6)       r0, sp[0x1]
             0x0008066a: c2 77:       retsp (u6)      0x2

<_ZN6XCPort7setModeENS_10PortMode_tE>:
             0x0008066c: 00 f0 4e 77: entsp (lu6)     0xe
             0x00080670: 24 90:       add (2rus)      r2, r1, 0x0
             0x00080672: 30 90:       add (2rus)      r3, r0, 0x0
             0x00080674: 0d 54:       stw (ru6)       r0, sp[0xd]
             0x00080676: 4c 54:       stw (ru6)       r1, sp[0xc]
             0x00080678: 0d 5c:       ldw (ru6)       r0, sp[0xd]
             0x0008067a: 4c 5c:       ldw (ru6)       r1, sp[0xc]
             0x0008067c: 5f a7:       mkmsk (rus)     r11, 0x3
             0x0008067e: 3d ca:       lsu (3r)        r11, r11, r1
             0x00080680: 8b 54:       stw (ru6)       r2, sp[0xb]
             0x00080682: ca 54:       stw (ru6)       r3, sp[0xa]
             0x00080684: 09 54:       stw (ru6)       r0, sp[0x9]
             0x00080686: 48 54:       stw (ru6)       r1, sp[0x8]
             0x00080688: cf 72:       bt (ru6)        r11, 0xf <.label36>
             0x0008068a: 08 5c:       ldw (ru6)       r0, sp[0x8]
             0x0008068c: e0 2f:       bru (1r)        r0
             0x0008068e: 07 73:       bu (u6)         0x7 <.label37>
             0x00080690: 0c 73:       bu (u6)         0xc <.label38>
             0x00080692: 0b 73:       bu (u6)         0xb <.label38>
             0x00080694: 0f 73:       bu (u6)         0xf <.label39>
             0x00080696: 15 73:       bu (u6)         0x15 <.label40>
             0x00080698: 1b 73:       bu (u6)         0x1b <.label41>
             0x0008069a: 21 73:       bu (u6)         0x21 <.label42>
             0x0008069c: 29 73:       bu (u6)         0x29 <.label43>
.label37     0x0008069e: 09 5c:       ldw (ru6)       r0, sp[0x9]
             0x000806a0: 00 f0 5c d4: bl (lu10)       -0x5c <_ZN12XCResourceID11setInUseOffEv>
             0x000806a4: 07 54:       stw (ru6)       r0, sp[0x7]
             0x000806a6: 2d 73:       bu (u6)         0x2d <.label44>
.label36     0x000806a8: 00 73:       bu (u6)         0x0 <.label38>
.label38     0x000806aa: 09 5c:       ldw (ru6)       r0, sp[0x9]
             0x000806ac: 00 f0 2c d0: bl (lu10)       0x2c <_ZN6XCPort6enableEv>
             0x000806b0: 06 54:       stw (ru6)       r0, sp[0x6]
             0x000806b2: 27 73:       bu (u6)         0x27 <.label44>
.label39     0x000806b4: 09 5c:       ldw (ru6)       r0, sp[0x9]
             0x000806b6: 00 f0 27 d0: bl (lu10)       0x27 <_ZN6XCPort6enableEv>
             0x000806ba: 00 f0 37 d0: bl (lu10)       0x37 <_ZN6XCPort9setPullUpEv>
             0x000806be: 05 54:       stw (ru6)       r0, sp[0x5]
             0x000806c0: 20 73:       bu (u6)         0x20 <.label44>
.label40     0x000806c2: 09 5c:       ldw (ru6)       r0, sp[0x9]
             0x000806c4: 00 f0 20 d0: bl (lu10)       0x20 <_ZN6XCPort6enableEv>
             0x000806c8: 00 f0 3c d0: bl (lu10)       0x3c <_ZN6XCPort11setPullDownEv>
             0x000806cc: 04 54:       stw (ru6)       r0, sp[0x4]
             0x000806ce: 19 73:       bu (u6)         0x19 <.label44>
.label41     0x000806d0: 09 5c:       ldw (ru6)       r0, sp[0x9]
             0x000806d2: 00 f0 19 d0: bl (lu10)       0x19 <_ZN6XCPort6enableEv>
             0x000806d6: 00 f0 41 d0: bl (lu10)       0x41 <_ZN6XCPort8setDriveEv>
             0x000806da: 03 54:       stw (ru6)       r0, sp[0x3]
             0x000806dc: 12 73:       bu (u6)         0x12 <.label44>
.label42     0x000806de: 09 5c:       ldw (ru6)       r0, sp[0x9]
             0x000806e0: 00 f0 12 d0: bl (lu10)       0x12 <_ZN6XCPort6enableEv>
             0x000806e4: 00 f0 46 d0: bl (lu10)       0x46 <_ZN6XCPort3setEv>
             0x000806e8: 00 f0 20 d0: bl (lu10)       0x20 <_ZN6XCPort9setPullUpEv>
             0x000806ec: 02 54:       stw (ru6)       r0, sp[0x2]
             0x000806ee: 09 73:       bu (u6)         0x9 <.label44>
.label43     0x000806f0: 09 5c:       ldw (ru6)       r0, sp[0x9]
             0x000806f2: 00 f0 09 d0: bl (lu10)       0x9 <_ZN6XCPort6enableEv>
             0x000806f6: 00 f0 51 d0: bl (lu10)       0x51 <_ZN6XCPort3clrEv>
             0x000806fa: 00 f0 23 d0: bl (lu10)       0x23 <_ZN6XCPort11setPullDownEv>
             0x000806fe: 01 54:       stw (ru6)       r0, sp[0x1]
             0x00080700: 00 73:       bu (u6)         0x0 <.label44>
.label44     0x00080702: 09 5c:       ldw (ru6)       r0, sp[0x9]
             0x00080704: ce 77:       retsp (u6)      0xe
             0x00080706: 00 00:       stw (2rus)      r0, r0[0x0]

<_ZN6XCPort6enableEv>:
             0x00080708: 00 f0 46 77: entsp (lu6)     0x6
             0x0008070c: 10 90:       add (2rus)      r1, r0, 0x0
             0x0008070e: 05 54:       stw (ru6)       r0, sp[0x5]
             0x00080710: 04 54:       stw (ru6)       r0, sp[0x4]
             0x00080712: 43 54:       stw (ru6)       r1, sp[0x3]
             0x00080714: 00 f0 66 d0: bl (lu10)       0x66 <_ZN12XCResourceID10setInUseOnEv>
             0x00080718: 46 68:       ldc (ru6)       r1, 0x6
             0x0008071a: 84 5c:       ldw (ru6)       r2, sp[0x4]
             0x0008071c: 02 54:       stw (ru6)       r0, sp[0x2]
             0x0008071e: 08 90:       add (2rus)      r0, r2, 0x0
             0x00080720: 00 f0 6c d0: bl (lu10)       0x6c <_ZN6XCPort8setClockEj>
             0x00080724: 44 5c:       ldw (ru6)       r1, sp[0x4]
             0x00080726: 01 54:       stw (ru6)       r0, sp[0x1]
             0x00080728: 04 90:       add (2rus)      r0, r1, 0x0
             0x0008072a: c6 77:       retsp (u6)      0x6

<_ZN6XCPort9setPullUpEv>:
             0x0008072c: 00 f0 44 77: entsp (lu6)     0x4
             0x00080730: 10 90:       add (2rus)      r1, r0, 0x0
             0x00080732: 03 54:       stw (ru6)       r0, sp[0x3]
             0x00080734: 93 68:       ldc (ru6)       r2, 0x13
             0x00080736: 02 54:       stw (ru6)       r0, sp[0x2]
             0x00080738: 41 54:       stw (ru6)       r1, sp[0x1]
             0x0008073a: 18 90:       add (2rus)      r1, r2, 0x0
             0x0008073c: 00 f0 44 d0: bl (lu10)       0x44 <_ZN12XCResourceID4setcEj>
             0x00080740: 02 5c:       ldw (ru6)       r0, sp[0x2]
             0x00080742: c4 77:       retsp (u6)      0x4

<_ZN6XCPort11setPullDownEv>:
             0x00080744: 00 f0 44 77: entsp (lu6)     0x4
             0x00080748: 10 90:       add (2rus)      r1, r0, 0x0
             0x0008074a: 03 54:       stw (ru6)       r0, sp[0x3]
             0x0008074c: 8b 68:       ldc (ru6)       r2, 0xb
             0x0008074e: 02 54:       stw (ru6)       r0, sp[0x2]
             0x00080750: 41 54:       stw (ru6)       r1, sp[0x1]
             0x00080752: 18 90:       add (2rus)      r1, r2, 0x0
             0x00080754: 00 f0 aa d4: bl (lu10)       -0xaa <_ZN12XCResourceID5setciEj>
             0x00080758: 02 5c:       ldw (ru6)       r0, sp[0x2]
             0x0008075a: c4 77:       retsp (u6)      0x4

<_ZN6XCPort8setDriveEv>:
             0x0008075c: 00 f0 44 77: entsp (lu6)     0x4
             0x00080760: 10 90:       add (2rus)      r1, r0, 0x0
             0x00080762: 03 54:       stw (ru6)       r0, sp[0x3]
             0x00080764: da a6:       mkmsk (rus)     r2, 0x2
             0x00080766: 02 54:       stw (ru6)       r0, sp[0x2]
             0x00080768: 41 54:       stw (ru6)       r1, sp[0x1]
             0x0008076a: 18 90:       add (2rus)      r1, r2, 0x0
             0x0008076c: 00 f0 b6 d4: bl (lu10)       -0xb6 <_ZN12XCResourceID5setciEj>
             0x00080770: 02 5c:       ldw (ru6)       r0, sp[0x2]
             0x00080772: c4 77:       retsp (u6)      0x4

<_ZN6XCPort3setEv>:
             0x00080774: 00 f0 48 77: entsp (lu6)     0x8
             0x00080778: 10 90:       add (2rus)      r1, r0, 0x0
             0x0008077a: 07 54:       stw (ru6)       r0, sp[0x7]
             0x0008077c: 05 54:       stw (ru6)       r0, sp[0x5]
             0x0008077e: 44 54:       stw (ru6)       r1, sp[0x4]
             0x00080780: 00 f0 1a d0: bl (lu10)       0x1a <_ZNK12XCResourceID4sizeEv>
             0x00080784: c0 a6:       mkmsk (2r)      r0, r0
             0x00080786: 06 54:       stw (ru6)       r0, sp[0x6]
             0x00080788: 45 5c:       ldw (ru6)       r1, sp[0x5]
             0x0008078a: 03 54:       stw (ru6)       r0, sp[0x3]
             0x0008078c: 04 90:       add (2rus)      r0, r1, 0x0
             0x0008078e: 43 5c:       ldw (ru6)       r1, sp[0x3]
             0x00080790: 00 f0 ee d4: bl (lu10)       -0xee <_ZN6XCPort4outdEj>
             0x00080794: 45 5c:       ldw (ru6)       r1, sp[0x5]
             0x00080796: 02 54:       stw (ru6)       r0, sp[0x2]
             0x00080798: 04 90:       add (2rus)      r0, r1, 0x0
             0x0008079a: c8 77:       retsp (u6)      0x8

<_ZN6XCPort3clrEv>:
             0x0008079c: 00 f0 46 77: entsp (lu6)     0x6
             0x000807a0: 10 90:       add (2rus)      r1, r0, 0x0
             0x000807a2: 05 54:       stw (ru6)       r0, sp[0x5]
             0x000807a4: 80 68:       ldc (ru6)       r2, 0x0
             0x000807a6: 04 54:       stw (ru6)       r0, sp[0x4]
             0x000807a8: 43 54:       stw (ru6)       r1, sp[0x3]
             0x000807aa: 18 90:       add (2rus)      r1, r2, 0x0
             0x000807ac: 00 f0 0c d5: bl (lu10)       -0x10c <_ZN6XCPort3setEj>
             0x000807b0: 44 5c:       ldw (ru6)       r1, sp[0x4]
             0x000807b2: 02 54:       stw (ru6)       r0, sp[0x2]
             0x000807b4: 04 90:       add (2rus)      r0, r1, 0x0
             0x000807b6: c6 77:       retsp (u6)      0x6

<_ZNK12XCResourceID4sizeEv>:
             0x000807b8: 00 f0 42 77: entsp (lu6)     0x2
             0x000807bc: 10 90:       add (2rus)      r1, r0, 0x0
             0x000807be: 01 54:       stw (ru6)       r0, sp[0x1]
             0x000807c0: 82 68:       ldc (ru6)       r2, 0x2
             0x000807c2: 02 88:       ld8u (3r)       r0, r0[r2]
             0x000807c4: 40 54:       stw (ru6)       r1, sp[0x0]
             0x000807c6: c2 77:       retsp (u6)      0x2

<_ZN12XCResourceID4setcEj>:
             0x000807c8: 00 f0 44 77: entsp (lu6)     0x4
             0x000807cc: 24 90:       add (2rus)      r2, r1, 0x0
             0x000807ce: 30 90:       add (2rus)      r3, r0, 0x0
             0x000807d0: 03 54:       stw (ru6)       r0, sp[0x3]
             0x000807d2: 42 54:       stw (ru6)       r1, sp[0x2]
             0x000807d4: 03 5c:       ldw (ru6)       r0, sp[0x3]
             0x000807d6: 00 08:       ldw (2rus)      r0, r0[0x0]
             0x000807d8: d1 fe ec 2f: setc (l2r)      res[r0], r1
             0x000807dc: 81 54:       stw (ru6)       r2, sp[0x1]
             0x000807de: c0 54:       stw (ru6)       r3, sp[0x0]
             0x000807e0: c4 77:       retsp (u6)      0x4
             0x000807e2: 00 00:       stw (2rus)      r0, r0[0x0]

<_ZN12XCResourceID10setInUseOnEv>:
             0x000807e4: 00 f0 44 77: entsp (lu6)     0x4
             0x000807e8: 10 90:       add (2rus)      r1, r0, 0x0
             0x000807ea: 03 54:       stw (ru6)       r0, sp[0x3]
             0x000807ec: 88 68:       ldc (ru6)       r2, 0x8
             0x000807ee: 02 54:       stw (ru6)       r0, sp[0x2]
             0x000807f0: 41 54:       stw (ru6)       r1, sp[0x1]
             0x000807f2: 18 90:       add (2rus)      r1, r2, 0x0
             0x000807f4: 00 f0 fa d4: bl (lu10)       -0xfa <_ZN12XCResourceID5setciEj>
             0x000807f8: 02 5c:       ldw (ru6)       r0, sp[0x2]
             0x000807fa: c4 77:       retsp (u6)      0x4

<_ZN6XCPort8setClockEj>:
             0x000807fc: 00 f0 44 77: entsp (lu6)     0x4
             0x00080800: 24 90:       add (2rus)      r2, r1, 0x0
             0x00080802: 30 90:       add (2rus)      r3, r0, 0x0
             0x00080804: 03 54:       stw (ru6)       r0, sp[0x3]
             0x00080806: 42 54:       stw (ru6)       r1, sp[0x2]
             0x00080808: 03 5c:       ldw (ru6)       r0, sp[0x3]
             0x0008080a: b0 08:       ldw (2rus)      r11, r0[0x0]
             0x0008080c: 37 ff ec 0f: setclk (lr2r)   res[r11], r1
             0x00080810: 81 54:       stw (ru6)       r2, sp[0x1]
             0x00080812: c0 54:       stw (ru6)       r3, sp[0x0]
             0x00080814: c4 77:       retsp (u6)      0x4
             0x00080816: 00 00:       stw (2rus)      r0, r0[0x0]

<_ZN12XCResourceIDC2Ej>:
             0x00080818: 00 f0 44 77: entsp (lu6)     0x4
             0x0008081c: 24 90:       add (2rus)      r2, r1, 0x0
             0x0008081e: 30 90:       add (2rus)      r3, r0, 0x0
             0x00080820: 03 54:       stw (ru6)       r0, sp[0x3]
             0x00080822: 42 54:       stw (ru6)       r1, sp[0x2]
             0x00080824: 03 5c:       ldw (ru6)       r0, sp[0x3]
             0x00080826: 10 00:       stw (2rus)      r1, r0[0x0]
             0x00080828: 81 54:       stw (ru6)       r2, sp[0x1]
             0x0008082a: c0 54:       stw (ru6)       r3, sp[0x0]
             0x0008082c: c4 77:       retsp (u6)      0x4
             0x0008082e: 00 00:       stw (2rus)      r0, r0[0x0]

<_GLOBAL__sub_I_sometests.cpp>:
             0x00080830: 00 f0 42 77: entsp (lu6)     0x2
             0x00080834: 00 f0 38 d7: bl (lu10)       -0x338 <__cxx_global_var_init>
             0x00080838: 00 f0 e6 d6: bl (lu10)       -0x2e6 <__cxx_global_var_init1>
             0x0008083c: c2 77:       retsp (u6)      0x2
             0x0008083e: 00 00:       stw (2rus)      r0, r0[0x0]

<debug_printf>:
             0x00080840: 00 f0 40 77: entsp (lu6)     0x0
             0x00080844: b2 77:       extsp (u6)      0x32
             0x00080846: c1 57:       stw (ru6)       lr, sp[0x1]
             0x00080848: 28 55:       stw (ru6)       r4, sp[0x28]
             0x0008084a: 69 55:       stw (ru6)       r5, sp[0x29]
             0x0008084c: aa 55:       stw (ru6)       r6, sp[0x2a]
             0x0008084e: eb 55:       stw (ru6)       r7, sp[0x2b]
             0x00080850: 2c 56:       stw (ru6)       r8, sp[0x2c]
             0x00080852: 6d 56:       stw (ru6)       r9, sp[0x2d]
             0x00080854: ae 56:       stw (ru6)       r10, sp[0x2e]
             0x00080856: a0 90:       add (2rus)      r10, r0, 0x0
             0x00080858: 70 54:       stw (ru6)       r1, sp[0x30]
             0x0008085a: b1 54:       stw (ru6)       r2, sp[0x31]
             0x0008085c: f2 54:       stw (ru6)       r3, sp[0x32]
             0x0008085e: 47 66:       ldaw (ru6)      r9, sp[0x7]
             0x00080860: 30 64:       ldaw (ru6)      r0, sp[0x30]
             0x00080862: 06 54:       stw (ru6)       r0, sp[0x6]
             0x00080864: 00 6a:       ldc (ru6)       r8, 0x0
             0x00080866: 08 8e:       ld8u (3r)       r0, r10[r8]
             0x00080868: 02 f0 36 78: bf (lru6)       r0, 0xb6 <.label45>
             0x0008086c: 01 f0 b7 68: ldc (lru6)      r2, 0x77
             0x00080870: 47 64:       ldaw (ru6)      r1, sp[0x7]
             0x00080872: 26 10:       add (3r)        r2, r1, r2
             0x00080874: 85 54:       stw (ru6)       r2, sp[0x5]
             0x00080876: 19 a7:       mkmsk (rus)     r6, 0x1
             0x00080878: 03 f0 4c 6d: ldw (lru6)      r5, cp[0xcc]
             0x0008087c: ca 69:       ldc (ru6)       r7, 0xa
             0x0008087e: 94 90:       add (2rus)      r9, r1, 0x0
.label63     0x00080880: 45 5c:       ldw (ru6)       r1, sp[0x5]
             0x00080882: 95 cc:       lsu (3r)        r1, r1, r9
             0x00080884: 48 78:       bf (ru6)        r1, 0x8 <.label46>
             0x00080886: 07 65:       ldaw (ru6)      r4, sp[0x7]
             0x00080888: e4 1b:       sub (3r)        r2, r9, r4
             0x0008088a: c8 90:       add (2rus)      r0, r6, 0x0
             0x0008088c: d0 90:       add (2rus)      r1, r4, 0x0
             0x0008088e: 00 f0 bf d7: bl (lu10)       -0x3bf <_write>
             0x00080892: 08 8e:       ld8u (3r)       r0, r10[r8]
             0x00080894: 50 91:       add (2rus)      r9, r4, 0x0
.label46     0x00080896: 10 90:       add (2rus)      r1, r0, 0x0
             0x00080898: 34 47:       zext (rus)      r1, 0x8
             0x0008089a: a5 68:       ldc (ru6)       r2, 0x25
             0x0008089c: 16 30:       eq (3r)         r1, r1, r2
             0x0008089e: 71 78:       bf (ru6)        r1, 0x31 <.label47>
             0x000808a0: 89 91:       add (2rus)      r0, r10, 0x1
             0x000808a2: da 8b:       ld8u (3r)       r1, r10[r6]
             0x000808a4: 94 fc ec a7: ldaw (l2rus)    r1, r1[-0x8]
             0x000808a8: 34 47:       zext (rus)      r1, 0x8
             0x000808aa: 25 a8:       shr (2rus)      r2, r1, 0x1
             0x000808ac: c6 68:       ldc (ru6)       r3, 0x6
             0x000808ae: 2e c8:       lsu (3r)        r2, r3, r2
             0x000808b0: 86 70:       bt (ru6)        r2, 0x6 <.label48>
             0x000808b2: d9 20:       shl (3r)        r1, r6, r1
             0x000808b4: a0 f0 89 68: ldc (lru6)      r2, 0x2809
             0x000808b8: 16 38:       and (3r)        r1, r1, r2
             0x000808ba: 41 78:       bf (ru6)        r1, 0x1 <.label48>
             0x000808bc: 8a 91:       add (2rus)      r0, r10, 0x2
.label48     0x000808be: 11 98:       sub (2rus)      r1, r0, 0x1
.label49     0x000808c0: 45 90:       add (2rus)      r4, r1, 0x1
             0x000808c2: 46 8a:       ld8u (3r)       r0, r1[r6]
             0x000808c4: 51 12:       add (3r)        r1, r0, r5
             0x000808c6: 34 47:       zext (rus)      r1, 0x8
             0x000808c8: 67 ca:       lsu (3r)        r2, r1, r7
             0x000808ca: d0 90:       add (2rus)      r1, r4, 0x0
             0x000808cc: 87 74:       bt (ru6)        r2, -0x7 <.label49>
             0x000808ce: 00 f0 4c 58: ldw (lru6)      r1, dp[0xc]
             0x000808d2: 11 10:       add (3r)        r1, r0, r1
             0x000808d4: 56 8a:       ld8u (3r)       r1, r1[r6]
             0x000808d6: d5 46:       zext (rus)      r1, 0x1
             0x000808d8: 42 78:       bf (ru6)        r1, 0x2 <.label50>
             0x000808da: 80 fc ec 9f: ldaw (l2rus)    r0, r0[0x8]
.label50     0x000808de: 01 f0 6f 68: ldc (lru6)      r1, 0x6f
             0x000808e2: 14 c0:       lss (3r)        r1, r1, r0
             0x000808e4: 55 70:       bt (ru6)        r1, 0x15 <.label51>
             0x000808e6: 01 f0 63 68: ldc (lru6)      r1, 0x63
             0x000808ea: 11 30:       eq (3r)         r1, r0, r1
             0x000808ec: 6b 78:       bf (ru6)        r1, 0x2b <.label52>
             0x000808ee: 06 5c:       ldw (ru6)       r0, sp[0x6]
             0x000808f0: 50 92:       add (2rus)      r1, r0, 0x4
             0x000808f2: 46 54:       stw (ru6)       r1, sp[0x6]
             0x000808f4: 00 08:       ldw (2rus)      r0, r0[0x0]
             0x000808f6: 95 91:       add (2rus)      r1, r9, 0x1
             0x000808f8: 04 fe ec 8f: st8 (l3r)       r0, r9[r8]
             0x000808fc: 94 90:       add (2rus)      r9, r1, 0x0
             0x000808fe: 01 f0 27 73: bu (lu6)        0x67 <.label53>
.label47     0x00080902: 95 91:       add (2rus)      r1, r9, 0x1
             0x00080904: 04 fe ec 8f: st8 (l3r)       r0, r9[r8]
             0x00080908: 94 90:       add (2rus)      r9, r1, 0x0
             0x0008090a: c8 91:       add (2rus)      r4, r10, 0x0
             0x0008090c: 01 f0 20 73: bu (lu6)        0x60 <.label53>
.label51     0x00080910: 03 f0 45 6c: ldw (lru6)      r1, cp[0xc5]
             0x00080914: 01 10:       add (3r)        r0, r0, r1
             0x00080916: 48 68:       ldc (ru6)       r1, 0x8
             0x00080918: 14 c8:       lsu (3r)        r1, r1, r0
             0x0008091a: 01 f0 59 70: bt (lru6)       r1, 0x59 <.label53>
             0x0008091e: e0 2f:       bru (1r)        r0
             0x00080920: 0a 73:       bu (u6)         0xa <.label54>
             0x00080922: 07 73:       bu (u6)         0x7 <.label55>
             0x00080924: 06 73:       bu (u6)         0x6 <.label55>
             0x00080926: 1d 73:       bu (u6)         0x1d <.label56>
             0x00080928: 04 73:       bu (u6)         0x4 <.label55>
             0x0008092a: 3d 73:       bu (u6)         0x3d <.label57>
             0x0008092c: 02 73:       bu (u6)         0x2 <.label55>
             0x0008092e: 01 73:       bu (u6)         0x1 <.label55>
             0x00080930: 02 73:       bu (u6)         0x2 <.label54>
.label55     0x00080932: 01 f0 0d 73: bu (lu6)        0x4d <.label53>
.label54     0x00080936: 06 5c:       ldw (ru6)       r0, sp[0x6]
             0x00080938: 50 92:       add (2rus)      r1, r0, 0x4
             0x0008093a: 46 54:       stw (ru6)       r1, sp[0x6]
             0x0008093c: 00 08:       ldw (2rus)      r0, r0[0x0]
             0x0008093e: 94 91:       add (2rus)      r1, r9, 0x0
             0x00080940: 90 68:       ldc (ru6)       r2, 0x10
             0x00080942: 37 73:       bu (u6)         0x37 <.label58>
.label52     0x00080944: 01 f0 64 68: ldc (lru6)      r1, 0x64
             0x00080948: 01 30:       eq (3r)         r0, r0, r1
             0x0008094a: 01 f0 01 78: bf (lru6)       r0, 0x41 <.label53>
             0x0008094e: 20 92:       add (2rus)      r10, r8, 0x0
             0x00080950: 06 5c:       ldw (ru6)       r0, sp[0x6]
             0x00080952: 50 92:       add (2rus)      r1, r0, 0x4
             0x00080954: 46 54:       stw (ru6)       r1, sp[0x6]
             0x00080956: 00 08:       ldw (2rus)      r0, r0[0x0]
             0x00080958: 10 f8 ec 97: ashr (l2rus)    r1, r0, 0x20
             0x0008095c: 6e 70:       bt (ru6)        r1, 0x2e <.label59>
             0x0008095e: 04 92:       add (2rus)      r8, r9, 0x0
             0x00080960: 31 73:       bu (u6)         0x31 <.label60>
.label56     0x00080962: 06 5c:       ldw (ru6)       r0, sp[0x6]
             0x00080964: 50 92:       add (2rus)      r1, r0, 0x4
             0x00080966: 46 54:       stw (ru6)       r1, sp[0x6]
             0x00080968: 00 08:       ldw (2rus)      r0, r0[0x0]
             0x0008096a: 04 54:       stw (ru6)       r0, sp[0x4]
             0x0008096c: 00 f0 da d1: bl (lu10)       0x1da <strlen>
             0x00080970: 80 90:       add (2rus)      r8, r0, 0x0
             0x00080972: 01 f0 38 68: ldc (lru6)      r0, 0x78
             0x00080976: 80 c1:       lss (3r)        r0, r8, r0
             0x00080978: 07 70:       bt (ru6)        r0, 0x7 <.label61>
             0x0008097a: 87 66:       ldaw (ru6)      r10, sp[0x7]
             0x0008097c: 26 1e:       sub (3r)        r2, r9, r10
             0x0008097e: c8 90:       add (2rus)      r0, r6, 0x0
             0x00080980: 98 91:       add (2rus)      r1, r10, 0x0
             0x00080982: 01 f0 39 d4: bl (lu10)       -0x439 <_write>
             0x00080986: 18 92:       add (2rus)      r9, r10, 0x0
.label61     0x00080988: 01 f0 37 68: ldc (lru6)      r0, 0x77
             0x0008098c: 10 90:       add (2rus)      r1, r0, 0x0
             0x0008098e: 84 c4:       lss (3r)        r0, r1, r8
             0x00080990: a4 90:       add (2rus)      r10, r1, 0x0
             0x00080992: 01 70:       bt (ru6)        r0, 0x1 <.label62>
             0x00080994: 20 92:       add (2rus)      r10, r8, 0x0
.label62     0x00080996: 84 91:       add (2rus)      r0, r9, 0x0
             0x00080998: 44 5c:       ldw (ru6)       r1, sp[0x4]
             0x0008099a: a8 91:       add (2rus)      r2, r10, 0x0
             0x0008099c: 00 f0 cc d1: bl (lu10)       0x1cc <memcpy> <__memcpy_4>
             0x000809a0: 96 16:       add (3r)        r9, r9, r10
             0x000809a2: 00 6a:       ldc (ru6)       r8, 0x0
             0x000809a4: 15 73:       bu (u6)         0x15 <.label53>
.label57     0x000809a6: 06 5c:       ldw (ru6)       r0, sp[0x6]
             0x000809a8: 50 92:       add (2rus)      r1, r0, 0x4
             0x000809aa: 46 54:       stw (ru6)       r1, sp[0x6]
             0x000809ac: 00 08:       ldw (2rus)      r0, r0[0x0]
             0x000809ae: 94 91:       add (2rus)      r1, r9, 0x0
             0x000809b0: ec 90:       add (2rus)      r2, r7, 0x0
.label58     0x000809b2: 00 f0 21 d0: bl (lu10)       0x21 <itoa>
             0x000809b6: 14 12:       add (3r)        r9, r9, r0
             0x000809b8: 0b 73:       bu (u6)         0xb <.label53>
.label59     0x000809ba: 05 92:       add (2rus)      r8, r9, 0x1
             0x000809bc: 6d 68:       ldc (ru6)       r1, 0x2d
             0x000809be: 16 fe ec 8f: st8 (l3r)       r1, r9[r10]
             0x000809c2: c0 96:       neg (2r)        r0, r0
.label60     0x000809c4: 90 91:       add (2rus)      r1, r8, 0x0
             0x000809c6: ec 90:       add (2rus)      r2, r7, 0x0
             0x000809c8: 00 f0 16 d0: bl (lu10)       0x16 <itoa>
             0x000809cc: 10 12:       add (3r)        r9, r8, r0
             0x000809ce: 08 92:       add (2rus)      r8, r10, 0x0
.label53     0x000809d0: 61 91:       add (2rus)      r10, r4, 0x1
             0x000809d2: 02 8b:       ld8u (3r)       r0, r4[r6]
             0x000809d4: 02 f0 2c 74: bt (lru6)       r0, -0xac <.label63>
.label45     0x000809d8: 47 64:       ldaw (ru6)      r1, sp[0x7]
             0x000809da: a5 19:       sub (3r)        r2, r9, r1
             0x000809dc: d1 a6:       mkmsk (rus)     r0, 0x1
             0x000809de: 01 f0 67 d4: bl (lu10)       -0x467 <_write>
             0x000809e2: ae 5e:       ldw (ru6)       r10, sp[0x2e]
             0x000809e4: 2c 5e:       ldw (ru6)       r8, sp[0x2c]
             0x000809e6: 6d 5e:       ldw (ru6)       r9, sp[0x2d]
             0x000809e8: aa 5d:       ldw (ru6)       r6, sp[0x2a]
             0x000809ea: eb 5d:       ldw (ru6)       r7, sp[0x2b]
             0x000809ec: 28 5d:       ldw (ru6)       r4, sp[0x28]
             0x000809ee: 69 5d:       ldw (ru6)       r5, sp[0x29]
             0x000809f0: c1 5f:       ldw (ru6)       lr, sp[0x1]
             0x000809f2: b2 67:       ldaw (ru6)      sp, sp[0x32]
             0x000809f4: c0 77:       retsp (u6)      0x0
             0x000809f6: 00 00:       stw (2rus)      r0, r0[0x0]

<itoa>:
             0x000809f8: 00 f0 46 77: entsp (lu6)     0x6
             0x000809fc: 05 f9 ec f7: std (l2rus)     r5, r4, sp[0x1]
             0x00080a00: 84 55:       stw (ru6)       r6, sp[0x4]
             0x00080a02: 44 90:       add (2rus)      r4, r1, 0x0
             0x00080a04: 40 68:       ldc (ru6)       r1, 0x0
             0x00080a06: 10 78:       bf (ru6)        r0, 0x10 <.label64>
             0x00080a08: 30 90:       add (2rus)      r3, r0, 0x0
.label65     0x00080a0a: 5e f8 ec 4f: divu (l3r)      r5, r3, r2
             0x00080a0e: 3e f8 ec cf: remu (l3r)      r3, r3, r2
             0x00080a12: 03 f0 5d 7f: ldaw (lu6)      r11, cp[0xdd]
             0x00080a16: bf 89:       ld8u (3r)       r3, r11[r3]
             0x00080a18: f1 f8 ec 8f: st8 (l3r)       r3, r4[r1]
             0x00080a1c: 15 90:       add (2rus)      r1, r1, 0x1
             0x00080a1e: f4 90:       add (2rus)      r3, r5, 0x0
             0x00080a20: 4c 75:       bt (ru6)        r5, -0xc <.label65>
             0x00080a22: 00 b0:       eq (2rus)       r0, r0, 0x0
             0x00080a24: 21 18:       sub (3r)        r2, r0, r1
             0x00080a26: 01 73:       bu (u6)         0x1 <.label66>
.label64     0x00080a28: 20 b0:       eq (2rus)       r2, r0, 0x0
.label66     0x00080a2a: 19 a7:       mkmsk (rus)     r6, 0x1
             0x00080a2c: 4a c2:       lss (3r)        r0, r2, r6
             0x00080a2e: 06 70:       bt (ru6)        r0, 0x6 <.label67>
             0x00080a30: 59 10:       add (3r)        r5, r2, r1
             0x00080a32: c1 10:       add (3r)        r0, r4, r1
             0x00080a34: 70 68:       ldc (ru6)       r1, 0x30
             0x00080a36: 00 f0 61 d0: bl (lu10)       0x61 <memset>
             0x00080a3a: 01 73:       bu (u6)         0x1 <.label68>
.label67     0x00080a3c: 54 90:       add (2rus)      r5, r1, 0x0
.label68     0x00080a3e: c5 98:       sub (2rus)      r0, r5, 0x1
             0x00080a40: 52 c2:       lss (3r)        r1, r0, r6
             0x00080a42: 4d 70:       bt (ru6)        r1, 0xd <.label69>
             0x00080a44: d4 a6:       mkmsk (rus)     r1, 0x20
.label70     0x00080a46: 22 13:       add (3r)        r2, r4, r6
             0x00080a48: 39 88:       ld8u (3r)       r3, r2[r1]
             0x00080a4a: 70 89:       ld8u (3r)       r11, r4[r0]
             0x00080a4c: b9 f8 ec 8f: st8 (l3r)       r11, r2[r1]
             0x00080a50: f0 f8 ec 8f: st8 (l3r)       r3, r4[r0]
             0x00080a54: 01 98:       sub (2rus)      r0, r0, 0x1
             0x00080a56: e9 90:       add (2rus)      r2, r6, 0x1
             0x00080a58: f8 c0:       lss (3r)        r3, r6, r0
             0x00080a5a: 68 90:       add (2rus)      r6, r2, 0x0
             0x00080a5c: cc 74:       bt (ru6)        r3, -0xc <.label70>
.label69     0x00080a5e: c4 90:       add (2rus)      r0, r5, 0x0
             0x00080a60: 84 5d:       ldw (ru6)       r6, sp[0x4]
             0x00080a62: 05 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x1]
             0x00080a66: c6 77:       retsp (u6)      0x6

<__dtor_XCPortUndefined>:
             0x00080a68: 00 f0 40 77: entsp (lu6)     0x0
             0x00080a6c: 00 f0 29 58: ldw (lru6)      r0, dp[0x29]
             0x00080a70: 01 78:       bf (ru6)        r0, 0x1 <.label71>
             0x00080a72: 00 e8:       setc (ru6)      res[r0], 0x0
.label71     0x00080a74: c0 77:       retsp (u6)      0x0
             0x00080a76: 00 00:       stw (2rus)      r0, r0[0x0]

<_GLOBAL__sub_I_XC_core.cpp>:
             0x00080a78: 00 f0 44 77: entsp (lu6)     0x4
             0x00080a7c: 05 f9 ec f7: std (l2rus)     r5, r4, sp[0x1]
             0x00080a80: 00 69:       ldc (ru6)       r4, 0x0
             0x00080a82: 00 f0 29 51: stw (lru6)      r4, dp[0x29]
             0x00080a86: 00 f0 69 61: ldaw (lru6)     r5, dp[0x29]
             0x00080a8a: 00 f0 13 dc: ldap (lu10)     r11, -0x13 <__dtor_XCPortUndefined>
             0x00080a8e: 8c 91:       add (2rus)      r0, r11, 0x0
             0x00080a90: 00 f0 3e d1: bl (lu10)       0x13e <atexit>
             0x00080a94: 00 f0 5c 51: stw (lru6)      r5, dp[0x1c]
             0x00080a98: 00 f0 1d 51: stw (lru6)      r4, dp[0x1d]
             0x00080a9c: 00 f0 2a 51: stw (lru6)      r4, dp[0x2a]
             0x00080aa0: 00 f0 1e 51: stw (lru6)      r4, dp[0x1e]
             0x00080aa4: 00 f0 1f 51: stw (lru6)      r4, dp[0x1f]
             0x00080aa8: 00 f0 20 51: stw (lru6)      r4, dp[0x20]
             0x00080aac: 00 f0 21 51: stw (lru6)      r4, dp[0x21]
             0x00080ab0: 05 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x1]
             0x00080ab4: c4 77:       retsp (u6)      0x4
             0x00080ab6: 00 00:       stw (2rus)      r0, r0[0x0]

<_get_cmdline>:
.label6      0x00080ab8: 00 f0 40 77: entsp (lu6)     0x0
             0x00080abc: 24 90:       add (2rus)      r2, r1, 0x0
             0x00080abe: 10 90:       add (2rus)      r1, r0, 0x0
             0x00080ac0: 0d 68:       ldc (ru6)       r0, 0xd
             0x00080ac2: 00 f0 3d da: ldap (lu10)     r11, 0x23d <_DoSyscall>
             0x00080ac6: fb 27:       bau (1r)        r11

<__libc_done>:
.label9      0x00080ac8: 00 f0 42 77: entsp (lu6)     0x2
             0x00080acc: 00 68:       ldc (ru6)       r0, 0x0
             0x00080ace: 10 90:       add (2rus)      r1, r0, 0x0
             0x00080ad0: 00 f0 3a d2: bl (lu10)       0x23a <__call_exitprocs>
             0x00080ad4: 00 f0 3e d2: bl (lu10)       0x23e <_cleanup>
             0x00080ad8: 01 f0 fb d4: bl (lu10)       -0x4fb <.label72>
             0x00080adc: 00 f0 40 d2: bl (lu10)       0x240 <_done>

<_exit_unlocked>:
.label10     0x00080ae0: 00 f0 44 77: entsp (lu6)     0x4
             0x00080ae4: 02 55:       stw (ru6)       r4, sp[0x2]
             0x00080ae6: 40 90:       add (2rus)      r4, r0, 0x0
             0x00080ae8: 40 68:       ldc (ru6)       r1, 0x0
             0x00080aea: 00 f0 2d d2: bl (lu10)       0x22d <__call_exitprocs>
             0x00080aee: 00 f0 31 d2: bl (lu10)       0x231 <_cleanup>
             0x00080af2: 01 f0 08 d5: bl (lu10)       -0x508 <.label72>
             0x00080af6: c0 90:       add (2rus)      r0, r4, 0x0
             0x00080af8: 00 f0 3a d2: bl (lu10)       0x23a <_exit>

<memset>:
.label2      0x00080afc: 00 f0 c0 6e: ldw (lru6)      r11, cp[0x0]
             0x00080b00: ff 17:       nop (0r)        
             0x00080b02: fb 27:       bau (1r)        r11

<__init_threadlocal_timer>:
.label3      0x00080b04: 00 f0 40 77: entsp (lu6)     0x0
             0x00080b08: c9 86:       getr (rus)      r2, 0x1
             0x00080b0a: 00 f0 40 60: ldaw (lru6)     r1, dp[0x0]
             0x00080b0e: ee 17:       get (0r)        r11, id
             0x00080b10: a7 fc ec 07: stw (l3r)       r2, r1[r11]
             0x00080b14: c0 77:       retsp (u6)      0x0
             0x00080b16: 00 00:       stw (2rus)      r0, r0[0x0]

<__free_threadlocal_timer>:
.label13     0x00080b18: 00 f0 40 77: entsp (lu6)     0x0
             0x00080b1c: 00 f0 80 60: ldaw (lru6)     r2, dp[0x0]
             0x00080b20: ee 17:       get (0r)        r11, id
             0x00080b22: ab 4c:       ldw (3r)        r2, r2[r11]
             0x00080b24: e2 17:       freer (1r)      res[r2]
             0x00080b26: c0 77:       retsp (u6)      0x0

<xscope_lock_init>:
             0x00080b28: ff 17:       nop (0r)        
             0x00080b2a: 80 7f:       dualentsp (u6)  0x0
             0x00080b2c: 81 87:       getr (rus)      r0, 0x5
             0x00080b2e: ff 17:       nop (0r)        
             0x00080b30: 00 f0 2b 50: stw (lru6)      r0, dp[0x2b]
             0x00080b34: ff 17:       nop (0r)        
             0x00080b36: c0 77:       retsp (u6)      0x0

<xscope_lock_deinit>:
             0x00080b38: ff 17:       nop (0r)        
             0x00080b3a: 80 7f:       dualentsp (u6)  0x0
             0x00080b3c: ff 17:       nop (0r)        
             0x00080b3e: c0 77:       retsp (u6)      0x0

<xscope_lock_acquire>:
             0x00080b40: ff 17:       nop (0r)        
             0x00080b42: 80 7f:       dualentsp (u6)  0x0
             0x00080b44: 00 f0 6b 58: ldw (lru6)      r1, dp[0x2b]
             0x00080b48: 00 f0 42 70: bt (lru6)       r1, 0x2 <.label73>
             0x00080b4c: 85 87:       getr (rus)      r1, 0x5
             0x00080b4e: ff 17:       nop (0r)        
             0x00080b50: 00 f0 6b 50: stw (lru6)      r1, dp[0x2b]
.label73     0x00080b54: c5 b6:       in (2r)         r1, res[r1]
             0x00080b56: ff 17:       nop (0r)        
             0x00080b58: ff 17:       nop (0r)        
             0x00080b5a: c0 77:       retsp (u6)      0x0

<xscope_lock_release>:
             0x00080b5c: ff 17:       nop (0r)        
             0x00080b5e: 80 7f:       dualentsp (u6)  0x0
             0x00080b60: 00 f0 2b 58: ldw (lru6)      r0, dp[0x2b]
             0x00080b64: c0 ae:       out (r2r)       res[r0], r0
             0x00080b66: ff 17:       nop (0r)        
             0x00080b68: ff 17:       nop (0r)        
             0x00080b6a: c0 77:       retsp (u6)      0x0

<xscope_get_io_config>:
             0x00080b6c: ff 17:       nop (0r)        
             0x00080b6e: 80 7f:       dualentsp (u6)  0x0
             0x00080b70: 00 f0 08 58: ldw (lru6)      r0, dp[0x8]
             0x00080b74: ff 17:       nop (0r)        
             0x00080b76: c0 77:       retsp (u6)      0x0

<xscope_syscall_write>:
             0x00080b78: 00 f0 40 77: entsp (lu6)     0x0
             0x00080b7c: 38 90:       add (2rus)      r3, r2, 0x0
             0x00080b7e: 24 90:       add (2rus)      r2, r1, 0x0
             0x00080b80: 10 90:       add (2rus)      r1, r0, 0x0
             0x00080b82: 06 68:       ldc (ru6)       r0, 0x6
             0x00080b84: 09 f0 0e 73: bu (lu6)        0x24e <_DoSyscallErrno>

<xscope_user_init>:
             0x00080b88: ff 17:       nop (0r)        
             0x00080b8a: 80 7f:       dualentsp (u6)  0x0
             0x00080b8c: ff 17:       nop (0r)        
             0x00080b8e: c0 77:       retsp (u6)      0x0

<xscope_constructor>:
             0x00080b90: ff 17:       nop (0r)        
             0x00080b92: 86 7f:       dualentsp (u6)  0x6
             0x00080b94: 05 f9 ec f7: std (l2rus)     r5, r4, sp[0x1]
             0x00080b98: ff 17:       nop (0r)        
             0x00080b9a: 84 55:       stw (ru6)       r6, sp[0x4]
             0x00080b9c: 00 f0 8e d0: bl (lu10)       0x8e <get_local_tile_id>
             0x00080ba0: 40 90:       add (2rus)      r4, r0, 0x0
             0x00080ba2: ff 17:       nop (0r)        
             0x00080ba4: 00 f0 29 d1: bl (lu10)       0x129 <xscope_gettime_local_timer>
             0x00080ba8: 60 90:       add (2rus)      r6, r0, 0x0
             0x00080baa: ff 17:       nop (0r)        
             0x00080bac: 00 f0 30 d1: bl (lu10)       0x130 <xscope_start_ref_clock>
             0x00080bb0: 00 f0 23 d4: bl (lu10)       -0x23 <xscope_lock_init>
             0x00080bb4: 00 f0 50 d1: bl (lu10)       0x150 <xscope_tx_init>
             0x00080bb8: 00 f0 12 78: bf (lru6)       r0, 0x12 <.label74>
             0x00080bbc: 03 f0 09 68: ldc (lru6)      r0, 0xc9
             0x00080bc0: 00 f0 39 d1: bl (lu10)       0x139 <xscope_tx_char>
             0x00080bc4: 71 47:       zext (rus)      r4, 0x10
             0x00080bc6: ff 17:       nop (0r)        
             0x00080bc8: c4 07:       byterev (2r)    r5, r4
             0x00080bca: ff 17:       nop (0r)        
             0x00080bcc: c4 90:       add (2rus)      r0, r5, 0x0
             0x00080bce: ff 17:       nop (0r)        
             0x00080bd0: 00 f0 38 d1: bl (lu10)       0x138 <xscope_tx_int>
             0x00080bd4: 82 07:       byterev (2r)    r0, r6
             0x00080bd6: ff 17:       nop (0r)        
             0x00080bd8: 00 f0 36 d1: bl (lu10)       0x136 <xscope_tx_int>
             0x00080bdc: 00 f0 43 d1: bl (lu10)       0x143 <xscope_tx_end>
             0x00080be0: 00 f0 17 d4: bl (lu10)       -0x17 <xscope_user_init>
             0x00080be4: 00 f0 0a 58: ldw (lru6)      r0, dp[0xa]
             0x00080be8: 00 f0 0a 78: bf (lru6)       r0, 0xa <.label75>
             0x00080bec: 67 68:       ldc (ru6)       r1, 0x27
             0x00080bee: ff 17:       nop (0r)        
             0x00080bf0: 03 f0 81 6c: ldw (lru6)      r2, cp[0xc1]
             0x00080bf4: c0 90:       add (2rus)      r0, r4, 0x0
             0x00080bf6: ff 17:       nop (0r)        
             0x00080bf8: 00 f0 5e d0: bl (lu10)       0x5e <write_pswitch_reg>
             0x00080bfc: 11 a7:       mkmsk (rus)     r4, 0x1
             0x00080bfe: ff 17:       nop (0r)        
             0x00080c00: 00 f0 05 73: bu (lu6)        0x5 <.label76>
.label74     0x00080c04: 00 f0 40 d1: bl (lu10)       0x140 <xscope_tx_deinit>
             0x00080c08: 00 f0 20 d1: bl (lu10)       0x120 <xscope_stop_ref_clock>
             0x00080c0c: 00 f0 36 d4: bl (lu10)       -0x36 <xscope_lock_deinit>
             0x00080c10: 00 f0 14 73: bu (lu6)        0x14 <.label77>
.label75     0x00080c14: 00 69:       ldc (ru6)       r4, 0x0
             0x00080c16: ff 17:       nop (0r)        
.label76     0x00080c18: 03 f0 0b 68: ldc (lru6)      r0, 0xcb
             0x00080c1c: 00 f0 22 d1: bl (lu10)       0x122 <xscope_tx_char>
             0x00080c20: c4 90:       add (2rus)      r0, r5, 0x0
             0x00080c22: ff 17:       nop (0r)        
             0x00080c24: 00 f0 23 d1: bl (lu10)       0x123 <xscope_tx_int>
             0x00080c28: 00 68:       ldc (ru6)       r0, 0x0
             0x00080c2a: ff 17:       nop (0r)        
             0x00080c2c: 00 f0 21 d1: bl (lu10)       0x121 <xscope_tx_int>
             0x00080c30: 02 f0 24 6c: ldw (lru6)      r0, cp[0xa4]
             0x00080c34: 00 f0 1f d1: bl (lu10)       0x11f <xscope_tx_int>
             0x00080c38: 00 f0 2c d1: bl (lu10)       0x12c <xscope_tx_end>
             0x00080c3c: 00 f0 32 d1: bl (lu10)       0x132 <xscope_tx_deinit>
             0x00080c40: 00 f0 0a 58: ldw (lru6)      r0, dp[0xa]
             0x00080c44: 00 f0 04 78: bf (lru6)       r0, 0x4 <.label78>
             0x00080c48: 00 f0 03 79: bf (lru6)       r4, 0x3 <.label78>
             0x00080c4c: 9c f0 0b 68: ldc (lru6)      r0, 0x270b
.label79     0x00080c50: d4 fe ec 17: get (l2r)       r1, ps[r0]
             0x00080c54: 00 f0 42 74: bt (lru6)       r1, -0x2 <.label79>
.label78     0x00080c58: 0f f0 28 68: ldc (lru6)      r0, 0x3e8
             0x00080c5c: 00 f0 fd d0: bl (lu10)       0xfd <xscope_wait>
             0x00080c60: 00 f0 0a d1: bl (lu10)       0x10a <xscope_stop_ref_clock>
.label77     0x00080c64: ff 17:       nop (0r)        
             0x00080c66: 84 5d:       ldw (ru6)       r6, sp[0x4]
             0x00080c68: 05 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x1]
             0x00080c6c: ff 17:       nop (0r)        
             0x00080c6e: c6 77:       retsp (u6)      0x6

<xscope_syscall_data_write>:
             0x00080c70: ff 17:       nop (0r)        
             0x00080c72: 88 7f:       dualentsp (u6)  0x8
             0x00080c74: 05 f9 ec f7: std (l2rus)     r5, r4, sp[0x1]
             0x00080c78: 2e f9 ec f7: std (l2rus)     r7, r6, sp[0x2]
             0x00080c7c: 4c 90:       add (2rus)      r4, r3, 0x0
             0x00080c7e: 06 56:       stw (ru6)       r8, sp[0x6]
             0x00080c80: 58 90:       add (2rus)      r5, r2, 0x0
             0x00080c82: 64 90:       add (2rus)      r6, r1, 0x0
             0x00080c84: 70 90:       add (2rus)      r7, r0, 0x0
             0x00080c86: ff 17:       nop (0r)        
             0x00080c88: 00 f0 53 d4: bl (lu10)       -0x53 <xscope_lock_acquire>
             0x00080c8c: 00 f0 ed d0: bl (lu10)       0xed <xscope_gettime>
             0x00080c90: 80 90:       add (2rus)      r8, r0, 0x0
             0x00080c92: cc 90:       add (2rus)      r0, r7, 0x0
             0x00080c94: 00 f0 04 d1: bl (lu10)       0x104 <xscope_tx_char>
             0x00080c98: 90 a7:       mkmsk (rus)     r0, 0x4
             0x00080c9a: ff 17:       nop (0r)        
             0x00080c9c: 00 f0 02 d1: bl (lu10)       0x102 <xscope_tx_char>
             0x00080ca0: 20 07:       byterev (2r)    r0, r8
             0x00080ca2: ff 17:       nop (0r)        
             0x00080ca4: 00 f0 03 d1: bl (lu10)       0x103 <xscope_tx_int>
             0x00080ca8: 04 93:       add (2rus)      r0, r5, 0x4
             0x00080caa: ff 17:       nop (0r)        
             0x00080cac: c0 06:       byterev (2r)    r0, r0
             0x00080cae: ff 17:       nop (0r)        
             0x00080cb0: 00 f0 00 d1: bl (lu10)       0x100 <xscope_tx_int>
             0x00080cb4: 82 07:       byterev (2r)    r0, r6
             0x00080cb6: ff 17:       nop (0r)        
             0x00080cb8: 00 f0 fe d0: bl (lu10)       0xfe <xscope_tx_int>
             0x00080cbc: 00 f0 45 79: bf (lru6)       r5, 0x5 <.label80>
             0x00080cc0: 80 69:       ldc (ru6)       r6, 0x0
             0x00080cc2: ff 17:       nop (0r)        
.label81     0x00080cc4: ff 17:       nop (0r)        
             0x00080cc6: 02 8b:       ld8u (3r)       r0, r4[r6]
             0x00080cc8: 00 f0 f7 d0: bl (lu10)       0xf7 <xscope_tx_char>
             0x00080ccc: 15 99:       sub (2rus)      r5, r5, 0x1
             0x00080cce: 01 91:       add (2rus)      r4, r4, 0x1
             0x00080cd0: 00 f0 44 75: bt (lru6)       r5, -0x4 <.label81>
.label80     0x00080cd4: 00 f0 05 d1: bl (lu10)       0x105 <xscope_tx_end>
             0x00080cd8: 00 f0 60 d4: bl (lu10)       -0x60 <xscope_lock_release>
             0x00080cdc: ff 17:       nop (0r)        
             0x00080cde: 06 5e:       ldw (ru6)       r8, sp[0x6]
             0x00080ce0: 2e f9 ec ef: ldd (l2rus)     r7, r6, sp[0x2]
             0x00080ce4: 05 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x1]
             0x00080ce8: ff 17:       nop (0r)        
             0x00080cea: c8 77:       retsp (u6)      0x8

<printf>:
             0x00080cec: 00 f0 40 77: entsp (lu6)     0x0
             0x00080cf0: 86 77:       extsp (u6)      0x6
             0x00080cf2: c2 57:       stw (ru6)       lr, sp[0x2]
             0x00080cf4: b0 90:       add (2rus)      r11, r0, 0x0
             0x00080cf6: 44 54:       stw (ru6)       r1, sp[0x4]
             0x00080cf8: 85 54:       stw (ru6)       r2, sp[0x5]
             0x00080cfa: c6 54:       stw (ru6)       r3, sp[0x6]
             0x00080cfc: 84 64:       ldaw (ru6)      r2, sp[0x4]
             0x00080cfe: 83 54:       stw (ru6)       r2, sp[0x3]
             0x00080d00: 00 f0 11 58: ldw (lru6)      r0, dp[0x11]
             0x00080d04: 9c 91:       add (2rus)      r1, r11, 0x0
             0x00080d06: 00 f0 05 d2: bl (lu10)       0x205 <vfprintf>
             0x00080d0a: c2 5f:       ldw (ru6)       lr, sp[0x2]
             0x00080d0c: 86 67:       ldaw (ru6)      sp, sp[0x6]
             0x00080d0e: c0 77:       retsp (u6)      0x0

<atexit>:
             0x00080d10: 00 f0 42 77: entsp (lu6)     0x2
             0x00080d14: 10 90:       add (2rus)      r1, r0, 0x0
             0x00080d16: 00 68:       ldc (ru6)       r0, 0x0
             0x00080d18: 20 90:       add (2rus)      r2, r0, 0x0
             0x00080d1a: 30 90:       add (2rus)      r3, r0, 0x0
             0x00080d1c: 03 f0 f0 d2: bl (lu10)       0xef0 <__register_exitproc>
             0x00080d20: c2 77:       retsp (u6)      0x2
             0x00080d22: 00 00:       stw (2rus)      r0, r0[0x0]

<strlen>:
             0x00080d24: 00 f0 40 77: entsp (lu6)     0x0
             0x00080d28: 21 98:       sub (2rus)      r2, r0, 0x1
             0x00080d2a: d5 a6:       mkmsk (rus)     r1, 0x1
.label82     0x00080d2c: 39 90:       add (2rus)      r3, r2, 0x1
             0x00080d2e: b9 88:       ld8u (3r)       r11, r2[r1]
             0x00080d30: 2c 90:       add (2rus)      r2, r3, 0x0
             0x00080d32: c4 76:       bt (ru6)        r11, -0x4 <.label82>
             0x00080d34: 0c 18:       sub (3r)        r0, r3, r0
             0x00080d36: c0 77:       retsp (u6)      0x0

<memcpy>:
<__memcpy_4>:
             0x00080d38: 00 f0 c1 6e: ldw (lru6)      r11, cp[0x1]
             0x00080d3c: ff 17:       nop (0r)        
             0x00080d3e: fb 27:       bau (1r)        r11

<memmove>:
             0x00080d40: 00 f0 40 77: entsp (lu6)     0x0
             0x00080d44: 31 c8:       lsu (3r)        r3, r0, r1
             0x00080d46: 00 f0 c9 7c: bf (lru6)       r3, -0x9 <memcpy> <__memcpy_4>
             0x00080d4a: 32 10:       add (3r)        r3, r0, r2
             0x00080d4c: 33 c8:       lsu (3r)        r3, r0, r3
             0x00080d4e: 00 f0 cd 7c: bf (lru6)       r3, -0xd <memcpy> <__memcpy_4>
             0x00080d52: 87 78:       bf (ru6)        r2, 0x7 <.label83>
             0x00080d54: c0 68:       ldc (ru6)       r3, 0x0
.label84     0x00080d56: b7 88:       ld8u (3r)       r11, r1[r3]
             0x00080d58: b3 f8 ec 8f: st8 (l3r)       r11, r0[r3]
             0x00080d5c: 3d 90:       add (2rus)      r3, r3, 0x1
             0x00080d5e: be 30:       eq (3r)         r11, r3, r2
             0x00080d60: c6 7e:       bf (ru6)        r11, -0x6 <.label84>
.label83     0x00080d62: c0 77:       retsp (u6)      0x0

<__udivdi3>:
             0x00080d64: 00 f0 42 77: entsp (lu6)     0x2
             0x00080d68: c0 6a:       ldc (ru6)       r11, 0x0
             0x00080d6a: c1 56:       stw (ru6)       r11, sp[0x1]
             0x00080d6c: 03 f0 7e d3: bl (lu10)       0xf7e <__udivmoddi4>
             0x00080d70: c2 77:       retsp (u6)      0x2
             0x00080d72: 00 00:       stw (2rus)      r0, r0[0x0]

<write_pswitch_reg>:
             0x00080d74: 00 f0 40 77: entsp (lu6)     0x0
             0x00080d78: 08 f3 cc 68: ldc (lru6)      r3, 0xc20c
             0x00080d7c: c1 6a:       ldc (ru6)       r11, 0x1
             0x00080d7e: 00 f0 01 73: bu (lu6)        0x1 <write_switch_reg>
             0x00080d82: 00 00:       stw (2rus)      r0, r0[0x0]

<write_switch_reg>:
             0x00080d84: 00 f0 40 77: entsp (lu6)     0x0
             0x00080d88: 00 55:       stw (ru6)       r4, sp[0x0]
             0x00080d8a: c1 ac:       shr (2rus)      r4, r0, 0x10
             0x00080d8c: 1e 71:       bt (ru6)        r4, 0x1e <write_switch_reg_return_0>
             0x00080d8e: c5 ac:       shr (2rus)      r4, r1, 0x10
             0x00080d90: 1c 71:       bt (ru6)        r4, 0x1c <write_switch_reg_return_0>
             0x00080d92: 81 a4:       shl (2rus)      r0, r0, 0x10
             0x00080d94: 03 40:       or (3r)         r0, r0, r3
             0x00080d96: 02 87:       getr (rus)      r4, 0x2
             0x00080d98: 90 17:       setd (r2r)      res[r4], r0
             0x00080d9a: 03 f0 c0 68: ldc (lru6)      r3, 0xc0
             0x00080d9e: 03 4f:       outct (2r)      res[r4], r3
             0x00080da0: c3 7a:       bf (ru6)        r11, 0x3 <build_return_no_ack>
             0x00080da2: 40 ad:       shr (2rus)      r0, r4, 0x8
             0x00080da4: 80 a4:       shl (2rus)      r0, r0, 0x8
             0x00080da6: 04 73:       bu (u6)         0x4 <write_switch_reg_send>

<build_return_no_ack>:
             0x00080da8: 80 ac:       shr (2rus)      r0, r0, 0x8
             0x00080daa: 3c a7:       mkmsk (rus)     r3, 0x8
             0x00080dac: 03 40:       or (3r)         r0, r0, r3
             0x00080dae: 80 a4:       shl (2rus)      r0, r0, 0x8

<write_switch_reg_send>:
             0x00080db0: b4 ac:       shr (2rus)      r3, r1, 0x8
             0x00080db2: 03 40:       or (3r)         r0, r0, r3
             0x00080db4: 80 af:       out (r2r)       res[r4], r0
             0x00080db6: 94 0f:       outt (r2r)      res[r4], r1
             0x00080db8: 88 af:       out (r2r)       res[r4], r2
             0x00080dba: 11 4f:       outct (rus)     res[r4], 0x1
             0x00080dbc: c9 7a:       bf (ru6)        r11, 0x9 <write_switch_reg_free_and_return_1>
             0x00080dbe: 90 87:       inct (2r)       r0, res[r4]
             0x00080dc0: 03 b0:       eq (2rus)       r0, r0, 0x3
             0x00080dc2: 11 cf:       chkct (rus)     res[r4], 0x1
             0x00080dc4: e4 17:       freer (1r)      res[r4]
             0x00080dc6: 00 5d:       ldw (ru6)       r4, sp[0x0]
             0x00080dc8: c0 77:       retsp (u6)      0x0

<write_switch_reg_return_0>:
             0x00080dca: 00 68:       ldc (ru6)       r0, 0x0
             0x00080dcc: 00 5d:       ldw (ru6)       r4, sp[0x0]
             0x00080dce: c0 77:       retsp (u6)      0x0

<write_switch_reg_free_and_return_1>:
             0x00080dd0: e4 17:       freer (1r)      res[r4]
             0x00080dd2: 01 68:       ldc (ru6)       r0, 0x1
             0x00080dd4: 00 5d:       ldw (ru6)       r4, sp[0x0]
             0x00080dd6: c0 77:       retsp (u6)      0x0

<get_local_tile_id>:
             0x00080dd8: 00 f0 40 77: entsp (lu6)     0x0
             0x00080ddc: 00 f2 02 68: ldc (lru6)      r0, 0x8002
             0x00080de0: c0 77:       retsp (u6)      0x0
             0x00080de2: 00 00:       stw (2rus)      r0, r0[0x0]

<__free>:
             0x00080de4: 00 f0 40 77: entsp (lu6)     0x0
             0x00080de8: 84 77:       extsp (u6)      0x4
             0x00080dea: 04 f9 ec f7: std (l2rus)     r5, r4, sp[0x0]
             0x00080dee: 82 55:       stw (ru6)       r6, sp[0x2]
             0x00080df0: 2e 78:       bf (ru6)        r0, 0x2e <.label85>
             0x00080df2: 40 9a:       sub (2rus)      r0, r0, 0x4
             0x00080df4: 00 f0 6c 58: ldw (lru6)      r1, dp[0x2c]
             0x00080df8: c0 68:       ldc (ru6)       r3, 0x0
             0x00080dfa: 50 78:       bf (ru6)        r1, 0x10 <.label86>
             0x00080dfc: b0 08:       ldw (2rus)      r11, r0[0x0]
             0x00080dfe: cc 11:       add (3r)        r4, r11, r0
             0x00080e00: 00 f0 ac 60: ldaw (lru6)     r2, dp[0x2c]
.label90     0x00080e04: 54 08:       ldw (2rus)      r5, r1[0x0]
             0x00080e06: 25 11:       add (3r)        r6, r5, r1
             0x00080e08: 28 31:       eq (3r)         r6, r6, r0
             0x00080e0a: 8b 71:       bt (ru6)        r6, 0xb <.label87>
             0x00080e0c: a4 32:       eq (3r)         r6, r1, r4
             0x00080e0e: 97 71:       bt (ru6)        r6, 0x17 <.label88>
             0x00080e10: 51 c8:       lsu (3r)        r5, r0, r1
             0x00080e12: 5a 71:       bt (ru6)        r5, 0x1a <.label89>
             0x00080e14: 64 92:       add (2rus)      r2, r1, 0x4
             0x00080e16: 18 08:       ldw (2rus)      r1, r2[0x0]
             0x00080e18: 4b 74:       bt (ru6)        r1, -0xb <.label90>
             0x00080e1a: 17 73:       bu (u6)         0x17 <.label91>
.label86     0x00080e1c: 00 f0 ac 60: ldaw (lru6)     r2, dp[0x2c]
             0x00080e20: 14 73:       bu (u6)         0x14 <.label91>
.label87     0x00080e22: ed 13:       add (3r)        r2, r11, r5
             0x00080e24: 24 00:       stw (2rus)      r2, r1[0x0]
             0x00080e26: 35 08:       ldw (2rus)      r3, r1[0x1]
             0x00080e28: d2 78:       bf (ru6)        r3, 0x12 <.label85>
             0x00080e2a: b0 08:       ldw (2rus)      r11, r0[0x0]
             0x00080e2c: 8c 11:       add (3r)        r0, r11, r0
             0x00080e2e: 03 30:       eq (3r)         r0, r0, r3
             0x00080e30: 0e 78:       bf (ru6)        r0, 0xe <.label85>
             0x00080e32: 0c 08:       ldw (2rus)      r0, r3[0x0]
             0x00080e34: 02 10:       add (3r)        r0, r0, r2
             0x00080e36: 04 00:       stw (2rus)      r0, r1[0x0]
             0x00080e38: 0d 08:       ldw (2rus)      r0, r3[0x1]
             0x00080e3a: 05 00:       stw (2rus)      r0, r1[0x1]
             0x00080e3c: 08 73:       bu (u6)         0x8 <.label85>
.label88     0x00080e3e: fd 13:       add (3r)        r3, r11, r5
             0x00080e40: 30 00:       stw (2rus)      r3, r0[0x0]
             0x00080e42: 15 08:       ldw (2rus)      r1, r1[0x1]
             0x00080e44: 11 00:       stw (2rus)      r1, r0[0x1]
             0x00080e46: 02 73:       bu (u6)         0x2 <.label92>
.label89     0x00080e48: 34 90:       add (2rus)      r3, r1, 0x0
.label91     0x00080e4a: 31 00:       stw (2rus)      r3, r0[0x1]
.label92     0x00080e4c: 08 00:       stw (2rus)      r0, r2[0x0]
.label85     0x00080e4e: 82 5d:       ldw (ru6)       r6, sp[0x2]
             0x00080e50: 04 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x0]
             0x00080e54: 84 67:       ldaw (ru6)      sp, sp[0x4]
             0x00080e56: c0 77:       retsp (u6)      0x0

<free>:
             0x00080e58: 00 f0 44 77: entsp (lu6)     0x4
             0x00080e5c: 02 55:       stw (ru6)       r4, sp[0x2]
             0x00080e5e: 40 90:       add (2rus)      r4, r0, 0x0
             0x00080e60: 04 f0 06 d0: bl (lu10)       0x1006 <__malloc_lock>
             0x00080e64: c0 90:       add (2rus)      r0, r4, 0x0
             0x00080e66: 00 f0 43 d4: bl (lu10)       -0x43 <__free>
             0x00080e6a: 04 f0 09 d0: bl (lu10)       0x1009 <__malloc_unlock>
             0x00080e6e: 02 5d:       ldw (ru6)       r4, sp[0x2]
             0x00080e70: c4 77:       retsp (u6)      0x4
             0x00080e72: 00 00:       stw (2rus)      r0, r0[0x0]

<__malloc>:
             0x00080e74: 00 f0 40 77: entsp (lu6)     0x0
             0x00080e78: 84 77:       extsp (u6)      0x4
             0x00080e7a: 04 f9 ec f7: std (l2rus)     r5, r4, sp[0x0]
             0x00080e7e: 82 55:       stw (ru6)       r6, sp[0x2]
             0x00080e80: 44 68:       ldc (ru6)       r1, 0x4
             0x00080e82: 11 c8:       lsu (3r)        r1, r0, r1
             0x00080e84: 42 78:       bf (ru6)        r1, 0x2 <.label93>
             0x00080e86: 48 68:       ldc (ru6)       r1, 0x8
             0x00080e88: 06 73:       bu (u6)         0x6 <.label94>
.label93     0x00080e8a: 03 f0 53 6c: ldw (lru6)      r1, cp[0xd3]
             0x00080e8e: 14 18:       sub (3r)        r1, r1, r0
             0x00080e90: d7 46:       zext (rus)      r1, 0x3
             0x00080e92: 11 10:       add (3r)        r1, r0, r1
             0x00080e94: 54 92:       add (2rus)      r1, r1, 0x4
.label94     0x00080e96: 24 c8:       lsu (3r)        r2, r1, r0
             0x00080e98: 00 68:       ldc (ru6)       r0, 0x0
             0x00080e9a: bc 70:       bt (ru6)        r2, 0x3c <.label95>
             0x00080e9c: 00 f0 6c 59: ldw (lru6)      r5, dp[0x2c]
             0x00080ea0: 00 f0 ce 5a: ldw (lru6)      r11, dp[0xe]
             0x00080ea4: 4d 79:       bf (ru6)        r5, 0xd <.label96>
             0x00080ea6: 00 f0 ac 61: ldaw (lru6)     r6, dp[0x2c]
.label98     0x00080eaa: f8 90:       add (2rus)      r3, r6, 0x0
             0x00080eac: e4 90:       add (2rus)      r2, r5, 0x0
             0x00080eae: 48 08:       ldw (2rus)      r4, r2[0x0]
             0x00080eb0: 11 c9:       lsu (3r)        r5, r4, r1
             0x00080eb2: 52 79:       bf (ru6)        r5, 0x12 <.label97>
             0x00080eb4: a8 92:       add (2rus)      r6, r2, 0x4
             0x00080eb6: 59 08:       ldw (2rus)      r5, r2[0x1]
             0x00080eb8: 48 75:       bt (ru6)        r5, -0x8 <.label98>
             0x00080eba: 12 11:       add (3r)        r5, r4, r2
             0x00080ebc: 1d 34:       eq (3r)         r5, r11, r5
             0x00080ebe: 5a 71:       bt (ru6)        r5, 0x1a <.label99>
.label96     0x00080ec0: 00 f0 8d 58: ldw (lru6)      r2, dp[0xd]
             0x00080ec4: a8 fc ec a7: ldaw (l2rus)    r2, r2[-0x8]
             0x00080ec8: ab 1c:       sub (3r)        r2, r2, r11
             0x00080eca: 29 c8:       lsu (3r)        r2, r2, r1
             0x00080ecc: a3 70:       bt (ru6)        r2, 0x23 <.label95>
             0x00080ece: 8d 11:       add (3r)        r0, r11, r1
             0x00080ed0: 00 f0 0e 50: stw (lru6)      r0, dp[0xe]
             0x00080ed4: ac 91:       add (2rus)      r2, r11, 0x0
             0x00080ed6: 1c 73:       bu (u6)         0x1c <.label100>
.label97     0x00080ed8: 84 94:       add (2rus)      r0, r1, 0x8
             0x00080eda: c0 c8:       lsu (3r)        r0, r4, r0
             0x00080edc: 04 78:       bf (ru6)        r0, 0x4 <.label101>
             0x00080ede: 48 92:       add (2rus)      r0, r2, 0x4
             0x00080ee0: 19 08:       ldw (2rus)      r1, r2[0x1]
             0x00080ee2: 1c 00:       stw (2rus)      r1, r3[0x0]
             0x00080ee4: 17 73:       bu (u6)         0x17 <.label95>
.label101    0x00080ee6: c1 18:       sub (3r)        r0, r4, r1
             0x00080ee8: b9 08:       ldw (2rus)      r11, r2[0x1]
             0x00080eea: 49 10:       add (3r)        r4, r2, r1
             0x00080eec: 4c 00:       stw (2rus)      r4, r3[0x0]
             0x00080eee: c0 00:       stw (2rus)      r0, r4[0x0]
             0x00080ef0: 71 01:       stw (2rus)      r11, r4[0x1]
             0x00080ef2: 0e 73:       bu (u6)         0xe <.label100>
.label99     0x00080ef4: 84 1a:       sub (3r)        r4, r1, r4
             0x00080ef6: 00 f0 4d 59: ldw (lru6)      r5, dp[0xd]
             0x00080efa: 03 f0 8e 6d: ldw (lru6)      r6, cp[0xce]
             0x00080efe: fb 1d:       sub (3r)        r11, r6, r11
             0x00080f00: 7d 14:       add (3r)        r11, r11, r5
             0x00080f02: 7c cc:       lsu (3r)        r11, r11, r4
             0x00080f04: c7 72:       bt (ru6)        r11, 0x7 <.label95>
             0x00080f06: 00 68:       ldc (ru6)       r0, 0x0
             0x00080f08: 0c 00:       stw (2rus)      r0, r3[0x0]
             0x00080f0a: 09 10:       add (3r)        r0, r2, r1
             0x00080f0c: 00 f0 0e 50: stw (lru6)      r0, dp[0xe]
.label100    0x00080f10: 18 00:       stw (2rus)      r1, r2[0x0]
             0x00080f12: 48 92:       add (2rus)      r0, r2, 0x4
.label95     0x00080f14: 82 5d:       ldw (ru6)       r6, sp[0x2]
             0x00080f16: 04 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x0]
             0x00080f1a: 84 67:       ldaw (ru6)      sp, sp[0x4]
             0x00080f1c: c0 77:       retsp (u6)      0x0
             0x00080f1e: 00 00:       stw (2rus)      r0, r0[0x0]

<malloc>:
             0x00080f20: 00 f0 44 77: entsp (lu6)     0x4
             0x00080f24: 02 55:       stw (ru6)       r4, sp[0x2]
             0x00080f26: 40 90:       add (2rus)      r4, r0, 0x0
             0x00080f28: 03 f0 a2 d3: bl (lu10)       0xfa2 <__malloc_lock>
             0x00080f2c: c0 90:       add (2rus)      r0, r4, 0x0
             0x00080f2e: 00 f0 5f d4: bl (lu10)       -0x5f <__malloc>
             0x00080f32: 40 90:       add (2rus)      r4, r0, 0x0
             0x00080f34: 03 f0 a4 d3: bl (lu10)       0xfa4 <__malloc_unlock>
             0x00080f38: c0 90:       add (2rus)      r0, r4, 0x0
             0x00080f3a: 02 5d:       ldw (ru6)       r4, sp[0x2]
             0x00080f3c: c4 77:       retsp (u6)      0x4
             0x00080f3e: 00 00:       stw (2rus)      r0, r0[0x0]

<_DoSyscall>:
             0x00080f40: 00 f0 40 77: entsp (lu6)     0x0
             0x00080f44: d0 a6:       mkmsk (rus)     r0, 0x20
             0x00080f46: c0 77:       retsp (u6)      0x0

<__call_exitprocs>:
             0x00080f48: 00 f0 42 77: entsp (lu6)     0x2
             0x00080f4c: 03 f0 28 d2: bl (lu10)       0xe28 <__call_exitprocs_impl>
             0x00080f50: c2 77:       retsp (u6)      0x2
             0x00080f52: 00 00:       stw (2rus)      r0, r0[0x0]

<_cleanup>:
             0x00080f54: 00 f0 42 77: entsp (lu6)     0x2
             0x00080f58: 03 f0 ca d1: bl (lu10)       0xdca <_cleanup_impl>
             0x00080f5c: c2 77:       retsp (u6)      0x2
             0x00080f5e: 00 00:       stw (2rus)      r0, r0[0x0]

<_done>:
             0x00080f60: 00 f0 40 77: entsp (lu6)     0x0
             0x00080f64: 07 68:       ldc (ru6)       r0, 0x7
             0x00080f66: 00 f0 15 d4: bl (lu10)       -0x15 <_DoSyscall>
             0x00080f6a: ed 07:       clre (0r)       
             0x00080f6c: ec 07:       waiteu (0r)     
             0x00080f6e: 00 00:       stw (2rus)      r0, r0[0x0]

<_exit>:
             0x00080f70: 00 f0 40 77: entsp (lu6)     0x0
             0x00080f74: 10 90:       add (2rus)      r1, r0, 0x0
             0x00080f76: 00 68:       ldc (ru6)       r0, 0x0
             0x00080f78: 00 f0 1e d4: bl (lu10)       -0x1e <_DoSyscall>
             0x00080f7c: ed 07:       clre (0r)       
             0x00080f7e: ec 07:       waiteu (0r)     

<__alloc_libc_hwlock>:
.label12     0x00080f80: 00 f0 40 77: entsp (lu6)     0x0
             0x00080f84: 81 87:       getr (rus)      r0, 0x5
             0x00080f86: 00 f0 2d 50: stw (lru6)      r0, dp[0x2d]
             0x00080f8a: c0 77:       retsp (u6)      0x0

<__lock_fair_acquire>:
             0x00080f8c: 00 f0 40 77: entsp (lu6)     0x0
             0x00080f90: 00 f0 6d 58: ldw (lru6)      r1, dp[0x2d]
             0x00080f94: c5 b6:       in (2r)         r1, res[r1]
             0x00080f96: 10 08:       ldw (2rus)      r1, r0[0x0]
             0x00080f98: 25 90:       add (2rus)      r2, r1, 0x1
             0x00080f9a: 20 00:       stw (2rus)      r2, r0[0x0]
             0x00080f9c: 00 f0 ad 58: ldw (lru6)      r2, dp[0x2d]
             0x00080fa0: ca ae:       out (r2r)       res[r2], r2
.label102    0x00080fa2: 21 08:       ldw (2rus)      r2, r0[0x1]
             0x00080fa4: 29 30:       eq (3r)         r2, r2, r1
             0x00080fa6: 83 7c:       bf (ru6)        r2, -0x3 <.label102>
             0x00080fa8: c0 77:       retsp (u6)      0x0
             0x00080faa: 00 00:       stw (2rus)      r0, r0[0x0]

<__lock_fair_release>:
             0x00080fac: 00 f0 40 77: entsp (lu6)     0x0
             0x00080fb0: 11 08:       ldw (2rus)      r1, r0[0x1]
             0x00080fb2: 15 90:       add (2rus)      r1, r1, 0x1
             0x00080fb4: 11 00:       stw (2rus)      r1, r0[0x1]
             0x00080fb6: c0 77:       retsp (u6)      0x0

<__lock_recursive_init>:
             0x00080fb8: 00 f0 40 77: entsp (lu6)     0x0
             0x00080fbc: d4 a6:       mkmsk (rus)     r1, 0x20
             0x00080fbe: 10 00:       stw (2rus)      r1, r0[0x0]
             0x00080fc0: 40 68:       ldc (ru6)       r1, 0x0
             0x00080fc2: 11 00:       stw (2rus)      r1, r0[0x1]
             0x00080fc4: c0 77:       retsp (u6)      0x0
             0x00080fc6: 00 00:       stw (2rus)      r0, r0[0x0]

<__lock_recursive_acquire>:
             0x00080fc8: 00 f0 40 77: entsp (lu6)     0x0
             0x00080fcc: ee 17:       get (0r)        r11, id
             0x00080fce: 10 08:       ldw (2rus)      r1, r0[0x0]
             0x00080fd0: 97 34:       eq (3r)         r1, r1, r11
             0x00080fd2: 53 70:       bt (ru6)        r1, 0x13 <.label103>
             0x00080fd4: 00 f0 6d 58: ldw (lru6)      r1, dp[0x2d]
             0x00080fd8: c5 b6:       in (2r)         r1, res[r1]
             0x00080fda: 20 08:       ldw (2rus)      r2, r0[0x0]
             0x00080fdc: d4 a6:       mkmsk (rus)     r1, 0x20
             0x00080fde: 07 73:       bu (u6)         0x7 <.label104>
.label105    0x00080fe0: 00 f0 ad 58: ldw (lru6)      r2, dp[0x2d]
             0x00080fe4: ca ae:       out (r2r)       res[r2], r2
             0x00080fe6: 00 f0 ad 58: ldw (lru6)      r2, dp[0x2d]
             0x00080fea: ca b6:       in (2r)         r2, res[r2]
             0x00080fec: 20 08:       ldw (2rus)      r2, r0[0x0]
.label104    0x00080fee: 29 30:       eq (3r)         r2, r2, r1
             0x00080ff0: 89 7c:       bf (ru6)        r2, -0x9 <.label105>
             0x00080ff2: b0 00:       stw (2rus)      r11, r0[0x0]
             0x00080ff4: 00 f0 6d 58: ldw (lru6)      r1, dp[0x2d]
             0x00080ff8: c5 ae:       out (r2r)       res[r1], r1
.label103    0x00080ffa: 11 08:       ldw (2rus)      r1, r0[0x1]
             0x00080ffc: 15 90:       add (2rus)      r1, r1, 0x1
             0x00080ffe: 11 00:       stw (2rus)      r1, r0[0x1]
             0x00081000: c0 77:       retsp (u6)      0x0
             0x00081002: 00 00:       stw (2rus)      r0, r0[0x0]

<__lock_recursive_release>:
             0x00081004: 00 f0 40 77: entsp (lu6)     0x0
             0x00081008: 11 08:       ldw (2rus)      r1, r0[0x1]
             0x0008100a: 15 98:       sub (2rus)      r1, r1, 0x1
             0x0008100c: 11 00:       stw (2rus)      r1, r0[0x1]
             0x0008100e: 48 70:       bt (ru6)        r1, 0x8 <.label106>
             0x00081010: 00 f0 6d 58: ldw (lru6)      r1, dp[0x2d]
             0x00081014: c5 b6:       in (2r)         r1, res[r1]
             0x00081016: d4 a6:       mkmsk (rus)     r1, 0x20
             0x00081018: 10 00:       stw (2rus)      r1, r0[0x0]
             0x0008101a: 00 f0 2d 58: ldw (lru6)      r0, dp[0x2d]
             0x0008101e: c0 ae:       out (r2r)       res[r0], r0
.label106    0x00081020: c0 77:       retsp (u6)      0x0
             0x00081022: 00 00:       stw (2rus)      r0, r0[0x0]

<_DoSyscallErrno>:
             0x00081024: 00 f0 42 77: entsp (lu6)     0x2
             0x00081028: 00 f0 76 d4: bl (lu10)       -0x76 <_DoSyscall>
             0x0008102c: c4 8e:       not (2r)        r1, r0
             0x0008102e: 57 aa:       shr (2rus)      r1, r1, 0x7
             0x00081030: 41 78:       bf (ru6)        r1, 0x1 <.label107>
             0x00081032: c2 77:       retsp (u6)      0x2
.label107    0x00081034: c4 96:       neg (2r)        r1, r0
             0x00081036: 41 54:       stw (ru6)       r1, sp[0x1]
             0x00081038: 03 f0 2a d3: bl (lu10)       0xf2a <__errno>
             0x0008103c: 41 5c:       ldw (ru6)       r1, sp[0x1]
             0x0008103e: 10 00:       stw (2rus)      r1, r0[0x0]
             0x00081040: d0 a6:       mkmsk (rus)     r0, 0x20
             0x00081042: c2 77:       retsp (u6)      0x2

<xscope_gettime>:
             0x00081044: e0 8f:       gettime (1r)    r0
             0x00081046: 80 7f:       dualentsp (u6)  0x0
             0x00081048: ff 17:       nop (0r)        
             0x0008104a: c0 77:       retsp (u6)      0x0

<xscope_gettime_local_timer>:
             0x0008104c: e0 8f:       gettime (1r)    r0
             0x0008104e: 80 7f:       dualentsp (u6)  0x0
             0x00081050: ff 17:       nop (0r)        
             0x00081052: c0 77:       retsp (u6)      0x0

<xscope_wait>:
             0x00081054: c5 86:       getr (rus)      r1, 0x1
             0x00081056: 80 7f:       dualentsp (u6)  0x0
             0x00081058: e2 8f:       gettime (1r)    r2
             0x0008105a: ff 17:       nop (0r)        
             0x0008105c: 08 10:       add (3r)        r0, r2, r0
             0x0008105e: ff 17:       nop (0r)        
             0x00081060: d1 16:       setd (r2r)      res[r1], r0
             0x00081062: ff 17:       nop (0r)        
             0x00081064: 49 e8:       setc (ru6)      res[r1], 0x9
             0x00081066: ff 17:       nop (0r)        
             0x00081068: c1 b6:       in (2r)         r0, res[r1]
             0x0008106a: ff 17:       nop (0r)        
             0x0008106c: e1 17:       freer (1r)      res[r1]
             0x0008106e: c0 77:       retsp (u6)      0x0

<xscope_start_ref_clock>:
             0x00081070: ff 17:       nop (0r)        
             0x00081072: 80 7f:       dualentsp (u6)  0x0
             0x00081074: 00 f0 0f 58: ldw (lru6)      r0, dp[0xf]
             0x00081078: 48 68:       ldc (ru6)       r1, 0x8
             0x0008107a: ff 17:       nop (0r)        
             0x0008107c: d1 fe ec 2f: setc (l2r)      res[r0], r1
             0x00081080: 94 a7:       mkmsk (rus)     r1, 0x4
             0x00081082: ff 17:       nop (0r)        
             0x00081084: d1 fe ec 2f: setc (l2r)      res[r0], r1
             0x00081088: 00 68:       ldc (ru6)       r0, 0x0
             0x0008108a: c0 77:       retsp (u6)      0x0

<xscope_stop_ref_clock>:
             0x0008108c: ff 17:       nop (0r)        
             0x0008108e: 80 7f:       dualentsp (u6)  0x0
             0x00081090: 00 f0 4f 58: ldw (lru6)      r1, dp[0xf]
             0x00081094: d3 a6:       mkmsk (rus)     r0, 0x3
             0x00081096: ff 17:       nop (0r)        
             0x00081098: d4 fe ec 2f: setc (l2r)      res[r1], r0
             0x0008109c: 00 68:       ldc (ru6)       r0, 0x0
             0x0008109e: ff 17:       nop (0r)        
             0x000810a0: d4 fe ec 2f: setc (l2r)      res[r1], r0
             0x000810a4: ff 17:       nop (0r)        
             0x000810a6: c0 77:       retsp (u6)      0x0

<xscope_tx_char>:
             0x000810a8: ff 17:       nop (0r)        
             0x000810aa: 82 7f:       dualentsp (u6)  0x2
             0x000810ac: 01 f0 7c d3: bl (lu10)       0x77c <xscope_xlink_put_ch>
             0x000810b0: ff 17:       nop (0r)        
             0x000810b2: c2 77:       retsp (u6)      0x2

<xscope_tx_int>:
             0x000810b4: ff 17:       nop (0r)        
             0x000810b6: 84 7f:       dualentsp (u6)  0x4
             0x000810b8: 40 90:       add (2rus)      r4, r0, 0x0
             0x000810ba: 02 55:       stw (ru6)       r4, sp[0x2]
             0x000810bc: 30 47:       zext (rus)      r0, 0x8
             0x000810be: ff 17:       nop (0r)        
             0x000810c0: 01 f0 77 d3: bl (lu10)       0x777 <xscope_xlink_put_ch>
             0x000810c4: 40 ad:       shr (2rus)      r0, r4, 0x8
             0x000810c6: ff 17:       nop (0r)        
             0x000810c8: 30 47:       zext (rus)      r0, 0x8
             0x000810ca: ff 17:       nop (0r)        
             0x000810cc: 01 f0 74 d3: bl (lu10)       0x774 <xscope_xlink_put_ch>
             0x000810d0: 41 ad:       shr (2rus)      r0, r4, 0x10
             0x000810d2: ff 17:       nop (0r)        
             0x000810d4: 30 47:       zext (rus)      r0, 0x8
             0x000810d6: ff 17:       nop (0r)        
             0x000810d8: 01 f0 71 d3: bl (lu10)       0x771 <xscope_xlink_put_ch>
             0x000810dc: 42 ad:       shr (2rus)      r0, r4, 0x18
             0x000810de: ff 17:       nop (0r)        
             0x000810e0: 01 f0 6f d3: bl (lu10)       0x76f <xscope_xlink_put_ch>
             0x000810e4: ff 17:       nop (0r)        
             0x000810e6: 02 5d:       ldw (ru6)       r4, sp[0x2]
             0x000810e8: ff 17:       nop (0r)        
             0x000810ea: c4 77:       retsp (u6)      0x4

<xscope_tx_end>:
             0x000810ec: ff 17:       nop (0r)        
             0x000810ee: 82 7f:       dualentsp (u6)  0x2
             0x000810f0: 01 f0 80 d3: bl (lu10)       0x780 <xscope_xlink_put_ct>
             0x000810f4: ff 17:       nop (0r)        
             0x000810f6: c2 77:       retsp (u6)      0x2

<xscope_tx_init>:
             0x000810f8: ff 17:       nop (0r)        
             0x000810fa: 82 7f:       dualentsp (u6)  0x2
             0x000810fc: 01 f0 71 d3: bl (lu10)       0x771 <xscope_xlink_init>
             0x00081100: 01 f0 81 d3: bl (lu10)       0x781 <xscope_xlink_start_token>
             0x00081104: d1 a6:       mkmsk (rus)     r0, 0x1
             0x00081106: c2 77:       retsp (u6)      0x2

<xscope_tx_deinit>:
             0x00081108: ff 17:       nop (0r)        
             0x0008110a: 82 7f:       dualentsp (u6)  0x2
             0x0008110c: 01 f0 73 d3: bl (lu10)       0x773 <xscope_xlink_deinit>
             0x00081110: ff 17:       nop (0r)        
             0x00081112: c2 77:       retsp (u6)      0x2

<vfprintf>:
             0x00081114: 01 f0 58 77: entsp (lu6)     0x58
             0x00081118: 01 f0 10 55: stw (lru6)      r4, sp[0x50]
             0x0008111c: 01 f0 51 55: stw (lru6)      r5, sp[0x51]
             0x00081120: 01 f0 92 55: stw (lru6)      r6, sp[0x52]
             0x00081124: 01 f0 d3 55: stw (lru6)      r7, sp[0x53]
             0x00081128: 01 f0 14 56: stw (lru6)      r8, sp[0x54]
             0x0008112c: 01 f0 55 56: stw (lru6)      r9, sp[0x55]
             0x00081130: 01 f0 96 56: stw (lru6)      r10, sp[0x56]
             0x00081134: 58 90:       add (2rus)      r5, r2, 0x0
             0x00081136: a4 90:       add (2rus)      r10, r1, 0x0
             0x00081138: 70 90:       add (2rus)      r7, r0, 0x0
             0x0008113a: e3 55:       stw (ru6)       r7, sp[0x23]
             0x0008113c: 03 f0 f2 d2: bl (lu10)       0xef2 <localeconv>
             0x00081140: 40 08:       ldw (2rus)      r4, r0[0x0]
             0x00081142: 00 f0 2e 58: ldw (lru6)      r0, dp[0x2e]
             0x00081146: 02 70:       bt (ru6)        r0, 0x2 <.label108>
             0x00081148: 03 f0 78 d0: bl (lu10)       0xc78 <__sinit>
.label108    0x0008114c: 4f f9 ec 9f: ldaw (l2rus)    r8, r7[0x3]
             0x00081150: 27 56:       stw (ru6)       r8, sp[0x27]
             0x00081152: 80 69:       ldc (ru6)       r6, 0x0
             0x00081154: c2 83:       ld16s (3r)      r0, r8[r6]
             0x00081156: 08 f0 40 68: ldc (lru6)      r1, 0x200
             0x0008115a: 11 38:       and (3r)        r1, r0, r1
             0x0008115c: 42 78:       bf (ru6)        r1, 0x2 <.label109>
             0x0008115e: 31 47:       zext (rus)      r0, 0x10
             0x00081160: 07 73:       bu (u6)         0x7 <.label110>
.label109    0x00081162: 01 f0 14 68: ldc (lru6)      r0, 0x54
             0x00081166: cc 10:       add (3r)        r0, r7, r0
             0x00081168: 00 f0 d2 d4: bl (lu10)       -0xd2 <__lock_recursive_acquire>
             0x0008116c: 00 68:       ldc (ru6)       r0, 0x0
             0x0008116e: 80 81:       ld16s (3r)      r0, r8[r0]
.label110    0x00081170: 48 68:       ldc (ru6)       r1, 0x8
             0x00081172: 01 38:       and (3r)        r0, r0, r1
             0x00081174: 02 78:       bf (ru6)        r0, 0x2 <.label111>
             0x00081176: 0c 0b:       ldw (2rus)      r0, r7[0x4]
             0x00081178: 12 70:       bt (ru6)        r0, 0x12 <.label112>
.label111    0x0008117a: cc 90:       add (2rus)      r0, r7, 0x0
             0x0008117c: 03 f0 d8 d2: bl (lu10)       0xed8 <__swsetup>
             0x00081180: 0e 78:       bf (ru6)        r0, 0xe <.label112>
             0x00081182: 50 a7:       mkmsk (rus)     r8, 0x20
             0x00081184: 0d 68:       ldc (ru6)       r0, 0xd
             0x00081186: cc 88:       ld8u (3r)       r0, r7[r0]
             0x00081188: 42 68:       ldc (ru6)       r1, 0x2
             0x0008118a: 01 38:       and (3r)        r0, r0, r1
             0x0008118c: 30 f0 1f 70: bt (lru6)       r0, 0xc1f <.label113>
             0x00081190: 01 f0 14 68: ldc (lru6)      r0, 0x54
             0x00081194: cc 10:       add (3r)        r0, r7, r0
             0x00081196: 00 f0 cb d4: bl (lu10)       -0xcb <__lock_recursive_release>
             0x0008119a: 30 f0 18 73: bu (lu6)        0xc18 <.label113>
.label112    0x0008119e: 27 56:       stw (ru6)       r8, sp[0x27]
             0x000811a0: 5d 55:       stw (ru6)       r5, sp[0x1d]
             0x000811a2: 1b 55:       stw (ru6)       r4, sp[0x1b]
             0x000811a4: 76 65:       ldaw (ru6)      r5, sp[0x36]
             0x000811a6: 01 f0 46 55: stw (lru6)      r5, sp[0x46]
             0x000811aa: e8 90:       add (2rus)      r2, r6, 0x0
             0x000811ac: 01 f0 88 54: stw (lru6)      r2, sp[0x48]
             0x000811b0: 01 f0 87 54: stw (lru6)      r2, sp[0x47]
             0x000811b4: 27 68:       ldc (ru6)       r0, 0x27
             0x000811b6: 6c 64:       ldaw (ru6)      r1, sp[0x2c]
             0x000811b8: 04 10:       add (3r)        r0, r1, r0
             0x000811ba: 18 54:       stw (ru6)       r0, sp[0x18]
             0x000811bc: 02 68:       ldc (ru6)       r0, 0x2
             0x000811be: 01 f0 49 64: ldaw (lru6)     r1, sp[0x49]
             0x000811c2: 04 40:       or (3r)         r0, r1, r0
             0x000811c4: 15 54:       stw (ru6)       r0, sp[0x15]
             0x000811c6: 01 f0 0e 64: ldaw (lru6)     r0, sp[0x4e]
             0x000811ca: 43 92:       add (2rus)      r0, r0, 0x7
             0x000811cc: 17 54:       stw (ru6)       r0, sp[0x17]
             0x000811ce: d2 a6:       mkmsk (rus)     r0, 0x2
             0x000811d0: 04 40:       or (3r)         r0, r1, r0
             0x000811d2: 16 54:       stw (ru6)       r0, sp[0x16]
             0x000811d4: 53 a7:       mkmsk (rus)     r8, 0x3
             0x000811d6: 65 6a:       ldc (ru6)       r9, 0x25
             0x000811d8: a2 54:       stw (ru6)       r2, sp[0x22]
             0x000811da: 9f 54:       stw (ru6)       r2, sp[0x1f]
             0x000811dc: 9e 54:       stw (ru6)       r2, sp[0x1e]
             0x000811de: 9a 54:       stw (ru6)       r2, sp[0x1a]
             0x000811e0: 99 54:       stw (ru6)       r2, sp[0x19]
             0x000811e2: a9 54:       stw (ru6)       r2, sp[0x29]
             0x000811e4: 04 73:       bu (u6)         0x4 <.label114>
.label277    0x000811e6: 48 90:       add (2rus)      r4, r2, 0x0
             0x000811e8: 00 f0 ca d5: bl (lu10)       -0x1ca <free>
             0x000811ec: e0 90:       add (2rus)      r2, r4, 0x0
.label114    0x000811ee: 24 91:       add (2rus)      r6, r5, 0x0
             0x000811f0: 02 73:       bu (u6)         0x2 <.label115>
.label168    0x000811f2: 7c 92:       add (2rus)      r3, r3, 0x4
             0x000811f4: dd 54:       stw (ru6)       r3, sp[0x1d]
.label115    0x000811f6: 58 90:       add (2rus)      r5, r2, 0x0
             0x000811f8: 01 73:       bu (u6)         0x1 <.label116>
.label118    0x000811fa: 15 91:       add (2rus)      r5, r5, 0x1
.label116    0x000811fc: c9 8b:       ld8u (3r)       r0, r10[r5]
             0x000811fe: 02 78:       bf (ru6)        r0, 0x2 <.label117>
             0x00081200: 91 34:       eq (3r)         r1, r0, r9
             0x00081202: 45 7c:       bf (ru6)        r1, -0x5 <.label118>
.label117    0x00081204: 59 79:       bf (ru6)        r5, 0x19 <.label119>
             0x00081206: 68 01:       stw (2rus)      r10, r6[0x0]
             0x00081208: 19 01:       stw (2rus)      r5, r6[0x1]
             0x0008120a: 01 f0 08 5c: ldw (lru6)      r0, sp[0x48]
             0x0008120e: 41 12:       add (3r)        r0, r0, r5
             0x00081210: 01 f0 08 54: stw (lru6)      r0, sp[0x48]
             0x00081214: 01 f0 07 5c: ldw (lru6)      r0, sp[0x47]
             0x00081218: 11 90:       add (2rus)      r1, r0, 0x1
             0x0008121a: 01 f0 47 54: stw (lru6)      r1, sp[0x47]
             0x0008121e: 48 90:       add (2rus)      r4, r2, 0x0
             0x00081220: 80 c4:       lss (3r)        r0, r0, r8
             0x00081222: 0d 70:       bt (ru6)        r0, 0xd <.label120>
             0x00081224: cc 90:       add (2rus)      r0, r7, 0x0
             0x00081226: 01 f0 46 64: ldaw (lru6)     r1, sp[0x46]
             0x0008122a: 02 f0 eb d3: bl (lu10)       0xbeb <__sprint>
             0x0008122e: b6 65:       ldaw (ru6)      r6, sp[0x36]
             0x00081230: 29 5e:       ldw (ru6)       r8, sp[0x29]
             0x00081232: 07 78:       bf (ru6)        r0, 0x7 <.label121>
             0x00081234: 2e f0 25 73: bu (lu6)        0xba5 <.label122>
.label119    0x00081238: a8 56:       stw (ru6)       r10, sp[0x28]
             0x0008123a: 48 90:       add (2rus)      r4, r2, 0x0
             0x0008123c: 06 73:       bu (u6)         0x6 <.label123>
.label120    0x0008123e: a8 95:       add (2rus)      r6, r6, 0x8
             0x00081240: 29 5e:       ldw (ru6)       r8, sp[0x29]
.label121    0x00081242: c4 15:       add (3r)        r8, r5, r8
             0x00081244: 29 56:       stw (ru6)       r8, sp[0x29]
             0x00081246: c9 8b:       ld8u (3r)       r0, r10[r5]
             0x00081248: a8 56:       stw (ru6)       r10, sp[0x28]
.label123    0x0008124a: 50 91:       add (2rus)      r9, r4, 0x0
             0x0008124c: 2e f0 0c 78: bf (lru6)       r0, 0xb8c <.label124>
             0x00081250: 01 f0 0c 64: ldaw (lru6)     r0, sp[0x4c]
             0x00081254: 11 fd ec 8f: st8 (l3r)       r9, r0[r9]
             0x00081258: 28 5c:       ldw (ru6)       r0, sp[0x28]
             0x0008125a: 41 12:       add (3r)        r0, r0, r5
             0x0008125c: a1 90:       add (2rus)      r10, r0, 0x1
             0x0008125e: 84 91:       add (2rus)      r0, r9, 0x0
             0x00081260: d4 a6:       mkmsk (rus)     r1, 0x20
             0x00081262: 65 54:       stw (ru6)       r1, sp[0x25]
             0x00081264: d4 91:       add (2rus)      r5, r9, 0x0
             0x00081266: 6a 56:       stw (ru6)       r9, sp[0x2a]
             0x00081268: 03 73:       bu (u6)         0x3 <.label125>
.label161    0x0008126a: aa 5c:       ldw (ru6)       r2, sp[0x2a]
             0x0008126c: 29 40:       or (3r)         r2, r2, r1
             0x0008126e: aa 54:       stw (ru6)       r2, sp[0x2a]
.label125    0x00081270: 99 91:       add (2rus)      r1, r10, 0x1
             0x00081272: 89 8e:       ld8u (3r)       r8, r10[r9]
             0x00081274: c4 91:       add (2rus)      r4, r9, 0x0
             0x00081276: e4 90:       add (2rus)      r2, r5, 0x0
             0x00081278: 01 73:       bu (u6)         0x1 <.label126>
.label159    0x0008127a: a6 5c:       ldw (ru6)       r2, sp[0x26]
.label126    0x0008127c: 50 91:       add (2rus)      r9, r4, 0x0
             0x0008127e: 0d 73:       bu (u6)         0xd <.label127>
.label128    0x00081280: ca 68:       ldc (ru6)       r3, 0xa
             0x00081282: 1b f8 ec 3f: mul (l3r)       r1, r2, r3
             0x00081286: 91 11:       add (3r)        r1, r8, r1
             0x00081288: 03 f0 cc 6e: ldw (lru6)      r11, cp[0xcc]
             0x0008128c: a7 14:       add (3r)        r2, r1, r11
             0x0008128e: 99 91:       add (2rus)      r1, r10, 0x1
             0x00081290: 89 8e:       ld8u (3r)       r8, r10[r9]
             0x00081292: b3 16:       add (3r)        r11, r8, r11
             0x00081294: bf c9:       lsu (3r)        r3, r11, r3
             0x00081296: a4 90:       add (2rus)      r10, r1, 0x0
             0x00081298: cd 74:       bt (ru6)        r3, -0xd <.label128>
.label127    0x0008129a: a4 90:       add (2rus)      r10, r1, 0x0
             0x0008129c: 58 90:       add (2rus)      r5, r2, 0x0
             0x0008129e: 03 f0 62 7f: ldaw (lu6)      r11, cp[0xe2]
             0x000812a2: 95 a7:       mkmsk (rus)     r1, 0x5
             0x000812a4: 94 c4:       lss (3r)        r1, r1, r8
             0x000812a6: 05 f0 73 78: bf (lru6)       r1, 0x173 <.label129>
             0x000812aa: 10 fe ec a7: ldaw (l2rus)    r1, r8[-0x8]
             0x000812ae: 01 f0 9a 68: ldc (lru6)      r2, 0x5a
             0x000812b2: 29 c8:       lsu (3r)        r2, r2, r1
             0x000812b4: 05 f0 ae 70: bt (lru6)       r2, 0x16e <.label130>
             0x000812b8: 35 a0:       shl (2rus)      r3, r1, 0x1
             0x000812ba: a4 91:       add (2rus)      r2, r9, 0x0
             0x000812bc: 01 f0 6f 68: ldc (lru6)      r1, 0x6f
             0x000812c0: 44 90:       add (2rus)      r4, r1, 0x0
             0x000812c2: 01 f0 75 68: ldc (lru6)      r1, 0x75
             0x000812c6: e3 2f:       bru (1r)        r3
             0x000812c8: 03 f0 1c 73: bu (lu6)        0xdc <.label131>
             0x000812cc: 05 f0 22 73: bu (lu6)        0x162 <.label130>
             0x000812d0: 05 f0 20 73: bu (lu6)        0x160 <.label130>
             0x000812d4: 03 f0 1d 73: bu (lu6)        0xdd <.label132>
             0x000812d8: 05 f0 1c 73: bu (lu6)        0x15c <.label130>
             0x000812dc: 05 f0 1a 73: bu (lu6)        0x15a <.label130>
             0x000812e0: 05 f0 18 73: bu (lu6)        0x158 <.label130>
             0x000812e4: 00 f0 3c 77: bu (lu6)        -0x3c <.label125>
             0x000812e8: 05 f0 14 73: bu (lu6)        0x154 <.label130>
             0x000812ec: 05 f0 12 73: bu (lu6)        0x152 <.label130>
             0x000812f0: 03 f0 12 73: bu (lu6)        0xd2 <.label133>
             0x000812f4: 03 f0 1d 73: bu (lu6)        0xdd <.label134>
             0x000812f8: 05 f0 0c 73: bu (lu6)        0x14c <.label130>
             0x000812fc: 03 f0 16 73: bu (lu6)        0xd6 <.label135>
             0x00081300: 02 f0 18 73: bu (lu6)        0x98 <.label136>
             0x00081304: 05 f0 06 73: bu (lu6)        0x146 <.label130>
             0x00081308: 03 f0 1b 73: bu (lu6)        0xdb <.label137>
             0x0008130c: 01 f0 08 77: bu (lu6)        -0x48 <.label128>
             0x00081310: 01 f0 0a 77: bu (lu6)        -0x4a <.label128>
             0x00081314: 01 f0 0c 77: bu (lu6)        -0x4c <.label128>
             0x00081318: 01 f0 0e 77: bu (lu6)        -0x4e <.label128>
             0x0008131c: 01 f0 10 77: bu (lu6)        -0x50 <.label128>
             0x00081320: 01 f0 12 77: bu (lu6)        -0x52 <.label128>
             0x00081324: 01 f0 14 77: bu (lu6)        -0x54 <.label128>
             0x00081328: 01 f0 16 77: bu (lu6)        -0x56 <.label128>
             0x0008132c: 01 f0 18 77: bu (lu6)        -0x58 <.label128>
             0x00081330: 04 f0 30 73: bu (lu6)        0x130 <.label130>
             0x00081334: 04 f0 2e 73: bu (lu6)        0x12e <.label130>
             0x00081338: 04 f0 2c 73: bu (lu6)        0x12c <.label130>
             0x0008133c: 04 f0 2a 73: bu (lu6)        0x12a <.label130>
             0x00081340: 04 f0 28 73: bu (lu6)        0x128 <.label130>
             0x00081344: 04 f0 26 73: bu (lu6)        0x126 <.label130>
             0x00081348: 04 f0 24 73: bu (lu6)        0x124 <.label130>
             0x0008134c: 0d f0 30 73: bu (lu6)        0x370 <.label138>
             0x00081350: 04 f0 20 73: bu (lu6)        0x120 <.label130>
             0x00081354: 13 f0 19 73: bu (lu6)        0x4d9 <.label139>
             0x00081358: 1a f0 09 73: bu (lu6)        0x689 <.label140>
             0x0008135c: 0d f0 28 73: bu (lu6)        0x368 <.label138>
             0x00081360: 0d f0 26 73: bu (lu6)        0x366 <.label138>
             0x00081364: 0d f0 24 73: bu (lu6)        0x364 <.label138>
             0x00081368: 04 f0 14 73: bu (lu6)        0x114 <.label130>
             0x0008136c: 04 f0 12 73: bu (lu6)        0x112 <.label130>
             0x00081370: 04 f0 10 73: bu (lu6)        0x110 <.label130>
             0x00081374: 04 f0 0e 73: bu (lu6)        0x10e <.label130>
             0x00081378: 02 f0 27 73: bu (lu6)        0xa7 <.label141>
             0x0008137c: 04 f0 0a 73: bu (lu6)        0x10a <.label130>
             0x00081380: 04 f0 08 73: bu (lu6)        0x108 <.label130>
             0x00081384: 1a f0 11 73: bu (lu6)        0x691 <.label142>
             0x00081388: 04 f0 04 73: bu (lu6)        0x104 <.label130>
             0x0008138c: 04 f0 02 73: bu (lu6)        0x102 <.label130>
             0x00081390: 04 f0 00 73: bu (lu6)        0x100 <.label130>
             0x00081394: 13 f0 0e 73: bu (lu6)        0x4ce <.label143>
             0x00081398: 03 f0 3c 73: bu (lu6)        0xfc <.label130>
             0x0008139c: 1a f0 1a 73: bu (lu6)        0x69a <.label144>
             0x000813a0: 03 f0 38 73: bu (lu6)        0xf8 <.label130>
             0x000813a4: 03 f0 36 73: bu (lu6)        0xf6 <.label130>
             0x000813a8: 1a f0 29 73: bu (lu6)        0x6a9 <.label145>
             0x000813ac: 03 f0 32 73: bu (lu6)        0xf2 <.label130>
             0x000813b0: 03 f0 30 73: bu (lu6)        0xf0 <.label130>
             0x000813b4: 03 f0 2e 73: bu (lu6)        0xee <.label130>
             0x000813b8: 03 f0 2c 73: bu (lu6)        0xec <.label130>
             0x000813bc: 03 f0 2a 73: bu (lu6)        0xea <.label130>
             0x000813c0: 03 f0 28 73: bu (lu6)        0xe8 <.label130>
             0x000813c4: 03 f0 26 73: bu (lu6)        0xe6 <.label130>
             0x000813c8: 03 f0 24 73: bu (lu6)        0xe4 <.label130>
             0x000813cc: 0c f0 30 73: bu (lu6)        0x330 <.label138>
             0x000813d0: 03 f0 20 73: bu (lu6)        0xe0 <.label130>
             0x000813d4: 12 f0 19 73: bu (lu6)        0x499 <.label139>
             0x000813d8: 19 f0 0f 73: bu (lu6)        0x64f <.label146>
             0x000813dc: 0c f0 28 73: bu (lu6)        0x328 <.label138>
             0x000813e0: 0c f0 26 73: bu (lu6)        0x326 <.label138>
             0x000813e4: 0c f0 24 73: bu (lu6)        0x324 <.label138>
             0x000813e8: 01 f0 32 73: bu (lu6)        0x72 <.label147>
             0x000813ec: 19 f0 05 73: bu (lu6)        0x645 <.label146>
             0x000813f0: 02 f0 00 73: bu (lu6)        0x80 <.label148>
             0x000813f4: 03 f0 0e 73: bu (lu6)        0xce <.label130>
             0x000813f8: 01 f0 35 73: bu (lu6)        0x75 <.label149>
             0x000813fc: 03 f0 0a 73: bu (lu6)        0xca <.label130>
             0x00081400: 02 f0 10 73: bu (lu6)        0x90 <.label150>
             0x00081404: 19 f0 17 73: bu (lu6)        0x657 <.label151>
             0x00081408: 1a f0 09 73: bu (lu6)        0x689 <.label152>
             0x0008140c: 01 f0 32 73: bu (lu6)        0x72 <.label148>
             0x00081410: 03 f0 00 73: bu (lu6)        0xc0 <.label130>
             0x00081414: 12 f0 0e 73: bu (lu6)        0x48e <.label143>
             0x00081418: 03 f0 16 77: bu (lu6)        -0xd6 <.label125>
             0x0008141c: 19 f0 20 73: bu (lu6)        0x660 <.label153>
             0x00081420: 02 f0 38 73: bu (lu6)        0xb8 <.label130>
             0x00081424: 02 f0 36 73: bu (lu6)        0xb6 <.label130>
             0x00081428: 19 f0 2b 73: bu (lu6)        0x66b <.label154>
             0x0008142c: 02 f0 32 73: bu (lu6)        0xb2 <.label130>
             0x00081430: 03 f0 22 77: bu (lu6)        -0xe2 <.label125>
.label136    0x00081434: c4 91:       add (2rus)      r4, r9, 0x0
             0x00081436: 99 91:       add (2rus)      r1, r10, 0x1
             0x00081438: c0 6a:       ldc (ru6)       r11, 0x0
             0x0008143a: 8b 8e:       ld8u (3r)       r8, r10[r11]
             0x0008143c: ea 68:       ldc (ru6)       r3, 0x2a
             0x0008143e: b3 31:       eq (3r)         r3, r8, r3
             0x00081440: 01 f0 e2 70: bt (lru6)       r3, 0x62 <.label155>
             0x00081444: 24 54:       stw (ru6)       r0, sp[0x24]
             0x00081446: 66 55:       stw (ru6)       r5, sp[0x26]
             0x00081448: 03 f0 cc 6c: ldw (lru6)      r3, cp[0xcc]
             0x0008144c: d3 11:       add (3r)        r5, r8, r3
             0x0008144e: 0a 68:       ldc (ru6)       r0, 0xa
             0x00081450: 34 c9:       lsu (3r)        r7, r5, r0
             0x00081452: ac 91:       add (2rus)      r2, r11, 0x0
             0x00081454: cb 79:       bf (ru6)        r7, 0xb <.label156>
.label157    0x00081456: 74 90:       add (2rus)      r7, r1, 0x0
             0x00081458: 18 f8 ec 3f: mul (l3r)       r1, r2, r0
             0x0008145c: 65 12:       add (3r)        r2, r1, r5
             0x0008145e: 9a 91:       add (2rus)      r1, r10, 0x2
             0x00081460: cf 8d:       ld8u (3r)       r8, r7[r11]
             0x00081462: d3 11:       add (3r)        r5, r8, r3
             0x00081464: 54 c9:       lsu (3r)        r9, r5, r0
             0x00081466: 6c 91:       add (2rus)      r10, r7, 0x0
             0x00081468: 4a 76:       bt (ru6)        r9, -0xa <.label157>
             0x0008146a: 01 73:       bu (u6)         0x1 <.label158>
.label156    0x0008146c: ac 91:       add (2rus)      r2, r11, 0x0
.label158    0x0008146e: a5 54:       stw (ru6)       r2, sp[0x25]
             0x00081470: 28 f8 ec 97: ashr (l2rus)    r2, r2, 0x20
             0x00081474: e3 5d:       ldw (ru6)       r7, sp[0x23]
             0x00081476: 24 5c:       ldw (ru6)       r0, sp[0x24]
             0x00081478: 04 f0 81 7c: bf (lru6)       r2, -0x101 <.label159>
             0x0008147c: d8 a6:       mkmsk (rus)     r2, 0x20
             0x0008147e: a5 54:       stw (ru6)       r2, sp[0x25]
             0x00081480: 04 f0 05 77: bu (lu6)        -0x105 <.label159>
.label131    0x00081484: 10 90:       add (2rus)      r1, r0, 0x0
             0x00081486: 34 47:       zext (rus)      r1, 0x8
             0x00081488: 04 f0 4e 74: bt (lru6)       r1, -0x10e <.label125>
             0x0008148c: 40 68:       ldc (ru6)       r1, 0x0
             0x0008148e: 20 68:       ldc (ru6)       r0, 0x20
             0x00081490: 12 73:       bu (u6)         0x12 <.label160>
.label132    0x00081492: d5 a6:       mkmsk (rus)     r1, 0x1
             0x00081494: 04 f0 17 77: bu (lu6)        -0x117 <.label161>
.label133    0x00081498: 9d 5c:       ldw (ru6)       r2, sp[0x1d]
             0x0008149a: 58 92:       add (2rus)      r1, r2, 0x4
             0x0008149c: 58 08:       ldw (2rus)      r5, r2[0x0]
             0x0008149e: e4 f8 ec 97: ashr (l2rus)    r2, r5, 0x20
             0x000814a2: 5d 54:       stw (ru6)       r1, sp[0x1d]
             0x000814a4: 04 f0 9c 7c: bf (lru6)       r2, -0x11c <.label125>
             0x000814a8: c5 97:       neg (2r)        r5, r5
             0x000814aa: 5d 54:       stw (ru6)       r1, sp[0x1d]
.label135    0x000814ac: 44 68:       ldc (ru6)       r1, 0x4
             0x000814ae: 04 f0 24 77: bu (lu6)        -0x124 <.label161>
.label134    0x000814b2: 40 68:       ldc (ru6)       r1, 0x0
             0x000814b4: 2b 68:       ldc (ru6)       r0, 0x2b
.label160    0x000814b6: 01 f0 8c 64: ldaw (lru6)     r2, sp[0x4c]
             0x000814ba: 09 f8 ec 8f: st8 (l3r)       r0, r2[r1]
             0x000814be: 04 f0 29 77: bu (lu6)        -0x129 <.label125>
.label137    0x000814c2: 02 f0 40 68: ldc (lru6)      r1, 0x80
             0x000814c6: 04 f0 30 77: bu (lu6)        -0x130 <.label161>
.label141    0x000814ca: 48 68:       ldc (ru6)       r1, 0x8
             0x000814cc: 04 f0 33 77: bu (lu6)        -0x133 <.label161>
.label147    0x000814d0: 40 68:       ldc (ru6)       r1, 0x0
             0x000814d2: 99 89:       ld8u (3r)       r1, r10[r1]
             0x000814d4: 01 f0 a8 68: ldc (lru6)      r2, 0x68
             0x000814d8: 16 30:       eq (3r)         r1, r1, r2
             0x000814da: 4f 78:       bf (ru6)        r1, 0xf <.label162>
             0x000814dc: 29 92:       add (2rus)      r10, r10, 0x1
             0x000814de: 08 f0 40 68: ldc (lru6)      r1, 0x200
             0x000814e2: 04 f0 3e 77: bu (lu6)        -0x13e <.label161>
.label149    0x000814e6: 40 68:       ldc (ru6)       r1, 0x0
             0x000814e8: 99 89:       ld8u (3r)       r1, r10[r1]
             0x000814ea: 01 f0 ac 68: ldc (lru6)      r2, 0x6c
             0x000814ee: 16 30:       eq (3r)         r1, r1, r2
             0x000814f0: 48 78:       bf (ru6)        r1, 0x8 <.label163>
             0x000814f2: 29 92:       add (2rus)      r10, r10, 0x1
.label148    0x000814f4: 60 68:       ldc (ru6)       r1, 0x20
             0x000814f6: 05 f0 08 77: bu (lu6)        -0x148 <.label161>
.label162    0x000814fa: 01 f0 40 68: ldc (lru6)      r1, 0x40
             0x000814fe: 05 f0 0c 77: bu (lu6)        -0x14c <.label161>
.label163    0x00081502: 50 68:       ldc (ru6)       r1, 0x10
             0x00081504: 05 f0 0f 77: bu (lu6)        -0x14f <.label161>
.label155    0x00081508: dd 5c:       ldw (ru6)       r3, sp[0x1d]
             0x0008150a: 2c 08:       ldw (2rus)      r2, r3[0x0]
             0x0008150c: a5 54:       stw (ru6)       r2, sp[0x25]
             0x0008150e: 28 f8 ec 97: ashr (l2rus)    r2, r2, 0x20
             0x00081512: 82 78:       bf (ru6)        r2, 0x2 <.label164>
             0x00081514: d8 a6:       mkmsk (rus)     r2, 0x20
             0x00081516: a5 54:       stw (ru6)       r2, sp[0x25]
.label164    0x00081518: 7c 92:       add (2rus)      r3, r3, 0x4
             0x0008151a: dd 54:       stw (ru6)       r3, sp[0x1d]
             0x0008151c: a4 90:       add (2rus)      r10, r1, 0x0
             0x0008151e: 50 91:       add (2rus)      r9, r4, 0x0
             0x00081520: 05 f0 1a 77: bu (lu6)        -0x15a <.label125>
.label150    0x00081524: 20 68:       ldc (ru6)       r0, 0x20
             0x00081526: 6a 5c:       ldw (ru6)       r1, sp[0x2a]
             0x00081528: 04 38:       and (3r)        r0, r1, r0
             0x0008152a: 09 78:       bf (ru6)        r0, 0x9 <.label165>
             0x0008152c: a9 5c:       ldw (ru6)       r2, sp[0x29]
             0x0008152e: 08 f8 ec 97: ashr (l2rus)    r0, r2, 0x20
             0x00081532: dd 5c:       ldw (ru6)       r3, sp[0x1d]
             0x00081534: 1c 08:       ldw (2rus)      r1, r3[0x0]
             0x00081536: 24 f8 f0 17: std (l3rus)     r0, r2, r1[0x0]
             0x0008153a: a4 91:       add (2rus)      r2, r9, 0x0
             0x0008153c: 08 73:       bu (u6)         0x8 <.label166>
.label165    0x0008153e: 10 68:       ldc (ru6)       r0, 0x10
             0x00081540: 04 38:       and (3r)        r0, r1, r0
             0x00081542: e9 5e:       ldw (ru6)       r11, sp[0x29]
             0x00081544: a4 91:       add (2rus)      r2, r9, 0x0
             0x00081546: dd 5c:       ldw (ru6)       r3, sp[0x1d]
             0x00081548: 06 78:       bf (ru6)        r0, 0x6 <.label167>
             0x0008154a: 0c 08:       ldw (2rus)      r0, r3[0x0]
             0x0008154c: b0 00:       stw (2rus)      r11, r0[0x0]
.label166    0x0008154e: 53 a7:       mkmsk (rus)     r8, 0x3
             0x00081550: 65 6a:       ldc (ru6)       r9, 0x25
             0x00081552: 06 f0 32 77: bu (lu6)        -0x1b2 <.label168>
.label167    0x00081556: 01 f0 00 68: ldc (lru6)      r0, 0x40
             0x0008155a: 04 38:       and (3r)        r0, r1, r0
             0x0008155c: 53 a7:       mkmsk (rus)     r8, 0x3
             0x0008155e: 65 6a:       ldc (ru6)       r9, 0x25
             0x00081560: 07 78:       bf (ru6)        r0, 0x7 <.label169>
             0x00081562: 0c 08:       ldw (2rus)      r0, r3[0x0]
             0x00081564: 40 68:       ldc (ru6)       r1, 0x0
             0x00081566: e9 5e:       ldw (ru6)       r11, sp[0x29]
             0x00081568: b1 f8 ec 87: st16 (l3r)      r11, r0[r1]
             0x0008156c: 06 f0 3f 77: bu (lu6)        -0x1bf <.label168>
.label169    0x00081570: 08 f0 00 68: ldc (lru6)      r0, 0x200
             0x00081574: 04 38:       and (3r)        r0, r1, r0
             0x00081576: 07 78:       bf (ru6)        r0, 0x7 <.label170>
             0x00081578: 0c 08:       ldw (2rus)      r0, r3[0x0]
             0x0008157a: 40 68:       ldc (ru6)       r1, 0x0
             0x0008157c: e9 5e:       ldw (ru6)       r11, sp[0x29]
             0x0008157e: b1 f8 ec 8f: st8 (l3r)       r11, r0[r1]
             0x00081582: 07 f0 0a 77: bu (lu6)        -0x1ca <.label168>
.label170    0x00081586: 0c 08:       ldw (2rus)      r0, r3[0x0]
             0x00081588: 69 5c:       ldw (ru6)       r1, sp[0x29]
             0x0008158a: 10 00:       stw (2rus)      r1, r0[0x0]
             0x0008158c: 07 f0 0f 77: bu (lu6)        -0x1cf <.label168>
.label129    0x00081590: 27 f0 2a 7a: bf (lru6)       r8, 0x9ea <.label124>
.label130    0x00081594: 66 55:       stw (ru6)       r5, sp[0x26]
             0x00081596: 2c 64:       ldaw (ru6)      r0, sp[0x2c]
             0x00081598: 01 fd ec 8f: st8 (l3r)       r8, r0[r9]
             0x0008159c: 01 f0 0c 65: ldaw (lru6)     r4, sp[0x4c]
             0x000815a0: d1 fd ec 8f: st8 (l3r)       r9, r4[r9]
             0x000815a4: a4 91:       add (2rus)      r2, r9, 0x0
             0x000815a6: d5 a6:       mkmsk (rus)     r1, 0x1
             0x000815a8: 54 90:       add (2rus)      r5, r1, 0x0
             0x000815aa: 64 56:       stw (ru6)       r9, sp[0x24]
             0x000815ac: 28 54:       stw (ru6)       r0, sp[0x28]
             0x000815ae: 1c 56:       stw (ru6)       r8, sp[0x1c]
.label252    0x000815b0: 34 92:       add (2rus)      r11, r9, 0x0
.label256    0x000815b2: ea 5c:       ldw (ru6)       r3, sp[0x2a]
.label229    0x000815b4: a0 54:       stw (ru6)       r2, sp[0x20]
             0x000815b6: 5c 91:       add (2rus)      r9, r7, 0x0
             0x000815b8: d6 c0:       lss (3r)        r1, r5, r2
             0x000815ba: 08 90:       add (2rus)      r0, r2, 0x0
             0x000815bc: 41 70:       bt (ru6)        r1, 0x1 <.label171>
             0x000815be: c4 90:       add (2rus)      r0, r5, 0x0
.label171    0x000815c0: 53 8d:       ld8u (3r)       r1, r4[r11]
             0x000815c2: 14 b0:       eq (2rus)       r1, r1, 0x0
             0x000815c4: 14 b0:       eq (2rus)       r1, r1, 0x0
             0x000815c6: 14 10:       add (3r)        r1, r1, r0
             0x000815c8: 02 68:       ldc (ru6)       r0, 0x2
             0x000815ca: 7c 38:       and (3r)        r7, r3, r0
             0x000815cc: cd a8:       shr (2rus)      r0, r7, 0x1
             0x000815ce: 90 68:       ldc (ru6)       r2, 0x10
             0x000815d0: 01 78:       bf (ru6)        r0, 0x1 <.label172>
             0x000815d2: 16 90:       add (2rus)      r1, r1, 0x2
.label172    0x000815d4: 65 54:       stw (ru6)       r1, sp[0x25]
             0x000815d6: 61 55:       stw (ru6)       r5, sp[0x21]
             0x000815d8: 02 f0 04 68: ldc (lru6)      r0, 0x84
             0x000815dc: 8c 38:       and (3r)        r8, r3, r0
             0x000815de: ea 54:       stw (ru6)       r3, sp[0x2a]
             0x000815e0: 03 7a:       bf (ru6)        r8, 0x3 <.label173>
             0x000815e2: 58 90:       add (2rus)      r5, r2, 0x0
             0x000815e4: 01 f0 15 73: bu (lu6)        0x55 <.label174>
.label173    0x000815e8: 36 65:       ldaw (ru6)      r4, sp[0x36]
             0x000815ea: 26 5c:       ldw (ru6)       r0, sp[0x26]
             0x000815ec: 65 5c:       ldw (ru6)       r1, sp[0x25]
             0x000815ee: 51 18:       sub (3r)        r5, r0, r1
             0x000815f0: d1 a6:       mkmsk (rus)     r0, 0x1
             0x000815f2: c4 c0:       lss (3r)        r0, r5, r0
             0x000815f4: 01 f0 05 70: bt (lru6)       r0, 0x45 <.label175>
             0x000815f8: 02 f0 40 7f: ldaw (lu6)      r11, cp[0x80]
             0x000815fc: 78 01:       stw (2rus)      r11, r6[0x0]
             0x000815fe: 08 93:       add (2rus)      r0, r6, 0x4
             0x00081600: 51 68:       ldc (ru6)       r1, 0x11
             0x00081602: d5 c0:       lss (3r)        r1, r5, r1
             0x00081604: 63 70:       bt (ru6)        r1, 0x23 <.label176>
.label180    0x00081606: 20 00:       stw (2rus)      r2, r0[0x0]
             0x00081608: 01 f0 08 5c: ldw (lru6)      r0, sp[0x48]
             0x0008160c: 40 fa ec 9f: ldaw (l2rus)    r0, r0[0x4]
             0x00081610: 01 f0 08 54: stw (lru6)      r0, sp[0x48]
             0x00081614: 01 f0 07 5c: ldw (lru6)      r0, sp[0x47]
             0x00081618: 11 90:       add (2rus)      r1, r0, 0x1
             0x0008161a: 01 f0 47 54: stw (lru6)      r1, sp[0x47]
             0x0008161e: d7 a6:       mkmsk (rus)     r1, 0x3
             0x00081620: 01 c0:       lss (3r)        r0, r0, r1
             0x00081622: 0b 70:       bt (ru6)        r0, 0xb <.label177>
             0x00081624: 84 91:       add (2rus)      r0, r9, 0x0
             0x00081626: 01 f0 46 64: ldaw (lru6)     r1, sp[0x46]
             0x0008162a: 68 90:       add (2rus)      r6, r2, 0x0
             0x0008162c: 02 f0 ea d1: bl (lu10)       0x9ea <__sprint>
             0x00081630: e8 90:       add (2rus)      r2, r6, 0x0
             0x00081632: 20 91:       add (2rus)      r6, r4, 0x0
             0x00081634: 03 78:       bf (ru6)        r0, 0x3 <.label178>
             0x00081636: 26 f0 2f 73: bu (lu6)        0x9af <.label179>
.label177    0x0008163a: a8 95:       add (2rus)      r6, r6, 0x8
.label178    0x0008163c: 54 fb ec a7: ldaw (l2rus)    r5, r5[-0x4]
             0x00081640: 02 f0 40 7f: ldaw (lu6)      r11, cp[0x80]
             0x00081644: 78 01:       stw (2rus)      r11, r6[0x0]
             0x00081646: 08 93:       add (2rus)      r0, r6, 0x4
             0x00081648: 59 c2:       lss (3r)        r1, r2, r5
             0x0008164a: 63 74:       bt (ru6)        r1, -0x23 <.label180>
.label176    0x0008164c: 50 00:       stw (2rus)      r5, r0[0x0]
             0x0008164e: 01 f0 08 5c: ldw (lru6)      r0, sp[0x48]
             0x00081652: 41 12:       add (3r)        r0, r0, r5
             0x00081654: 01 f0 08 54: stw (lru6)      r0, sp[0x48]
             0x00081658: 01 f0 07 5c: ldw (lru6)      r0, sp[0x47]
             0x0008165c: 11 90:       add (2rus)      r1, r0, 0x1
             0x0008165e: 01 f0 47 54: stw (lru6)      r1, sp[0x47]
             0x00081662: d7 a6:       mkmsk (rus)     r1, 0x3
             0x00081664: 58 90:       add (2rus)      r5, r2, 0x0
             0x00081666: 01 c0:       lss (3r)        r0, r0, r1
             0x00081668: 10 70:       bt (ru6)        r0, 0x10 <.label181>
             0x0008166a: 84 91:       add (2rus)      r0, r9, 0x0
             0x0008166c: 01 f0 46 64: ldaw (lru6)     r1, sp[0x46]
             0x00081670: 02 f0 c8 d1: bl (lu10)       0x9c8 <__sprint>
             0x00081674: 20 91:       add (2rus)      r6, r4, 0x0
             0x00081676: c0 6a:       ldc (ru6)       r11, 0x0
             0x00081678: 01 f0 0c 65: ldaw (lru6)     r4, sp[0x4c]
             0x0008167c: 0a 78:       bf (ru6)        r0, 0xa <.label174>
             0x0008167e: 26 f0 0b 73: bu (lu6)        0x98b <.label179>
.label175    0x00081682: 58 90:       add (2rus)      r5, r2, 0x0
             0x00081684: 01 f0 0c 65: ldaw (lru6)     r4, sp[0x4c]
             0x00081688: 04 73:       bu (u6)         0x4 <.label174>
.label181    0x0008168a: a8 95:       add (2rus)      r6, r6, 0x8
             0x0008168c: c0 6a:       ldc (ru6)       r11, 0x0
             0x0008168e: 01 f0 0c 65: ldaw (lru6)     r4, sp[0x4c]
.label174    0x00081692: 43 8d:       ld8u (3r)       r0, r4[r11]
             0x00081694: e4 90:       add (2rus)      r2, r5, 0x0
             0x00081696: 1d 78:       bf (ru6)        r0, 0x1d <.label182>
             0x00081698: 58 90:       add (2rus)      r5, r2, 0x0
             0x0008169a: 08 01:       stw (2rus)      r4, r6[0x0]
             0x0008169c: d1 a6:       mkmsk (rus)     r0, 0x1
             0x0008169e: c9 00:       stw (2rus)      r0, r6[0x1]
             0x000816a0: 01 f0 08 5c: ldw (lru6)      r0, sp[0x48]
             0x000816a4: 01 90:       add (2rus)      r0, r0, 0x1
             0x000816a6: 01 f0 08 54: stw (lru6)      r0, sp[0x48]
             0x000816aa: 01 f0 07 5c: ldw (lru6)      r0, sp[0x47]
             0x000816ae: 11 90:       add (2rus)      r1, r0, 0x1
             0x000816b0: 01 f0 47 54: stw (lru6)      r1, sp[0x47]
             0x000816b4: d7 a6:       mkmsk (rus)     r1, 0x3
             0x000816b6: 01 c0:       lss (3r)        r0, r0, r1
             0x000816b8: 0a 70:       bt (ru6)        r0, 0xa <.label183>
             0x000816ba: 84 91:       add (2rus)      r0, r9, 0x0
             0x000816bc: 01 f0 46 64: ldaw (lru6)     r1, sp[0x46]
             0x000816c0: 02 f0 a0 d1: bl (lu10)       0x9a0 <__sprint>
             0x000816c4: b6 65:       ldaw (ru6)      r6, sp[0x36]
             0x000816c6: e4 90:       add (2rus)      r2, r5, 0x0
             0x000816c8: 04 78:       bf (ru6)        r0, 0x4 <.label182>
             0x000816ca: 25 f0 25 73: bu (lu6)        0x965 <.label179>
.label183    0x000816ce: a8 95:       add (2rus)      r6, r6, 0x8
             0x000816d0: e4 90:       add (2rus)      r2, r5, 0x0
.label182    0x000816d2: df 79:       bf (ru6)        r7, 0x1f <.label184>
             0x000816d4: 2b 64:       ldaw (ru6)      r0, sp[0x2b]
             0x000816d6: c8 00:       stw (2rus)      r0, r6[0x0]
             0x000816d8: 02 68:       ldc (ru6)       r0, 0x2
             0x000816da: c9 00:       stw (2rus)      r0, r6[0x1]
             0x000816dc: 01 f0 08 5c: ldw (lru6)      r0, sp[0x48]
             0x000816e0: 02 90:       add (2rus)      r0, r0, 0x2
             0x000816e2: 01 f0 08 54: stw (lru6)      r0, sp[0x48]
             0x000816e6: 01 f0 07 5c: ldw (lru6)      r0, sp[0x47]
             0x000816ea: 11 90:       add (2rus)      r1, r0, 0x1
             0x000816ec: 01 f0 47 54: stw (lru6)      r1, sp[0x47]
             0x000816f0: d7 a6:       mkmsk (rus)     r1, 0x3
             0x000816f2: 01 c0:       lss (3r)        r0, r0, r1
             0x000816f4: 0d 70:       bt (ru6)        r0, 0xd <.label185>
             0x000816f6: f4 91:       add (2rus)      r7, r9, 0x0
             0x000816f8: cc 90:       add (2rus)      r0, r7, 0x0
             0x000816fa: 01 f0 46 64: ldaw (lru6)     r1, sp[0x46]
             0x000816fe: 58 90:       add (2rus)      r5, r2, 0x0
             0x00081700: 02 f0 80 d1: bl (lu10)       0x980 <__sprint>
             0x00081704: e4 90:       add (2rus)      r2, r5, 0x0
             0x00081706: b6 65:       ldaw (ru6)      r6, sp[0x36]
             0x00081708: 66 5c:       ldw (ru6)       r1, sp[0x26]
             0x0008170a: 05 78:       bf (ru6)        r0, 0x5 <.label186>
             0x0008170c: 25 f0 05 73: bu (lu6)        0x945 <.label187>
.label185    0x00081710: a8 95:       add (2rus)      r6, r6, 0x8
.label184    0x00081712: f4 91:       add (2rus)      r7, r9, 0x0
             0x00081714: 66 5c:       ldw (ru6)       r1, sp[0x26]
.label186    0x00081716: 36 65:       ldaw (ru6)      r4, sp[0x36]
             0x00081718: 50 91:       add (2rus)      r9, r4, 0x0
             0x0008171a: 02 f0 00 68: ldc (lru6)      r0, 0x80
             0x0008171e: 80 31:       eq (3r)         r0, r8, r0
             0x00081720: 01 f0 09 78: bf (lru6)       r0, 0x49 <.label188>
             0x00081724: 25 5c:       ldw (ru6)       r0, sp[0x25]
             0x00081726: 54 18:       sub (3r)        r5, r1, r0
             0x00081728: d1 a6:       mkmsk (rus)     r0, 0x1
             0x0008172a: c4 c0:       lss (3r)        r0, r5, r0
             0x0008172c: 01 f0 03 70: bt (lru6)       r0, 0x43 <.label188>
             0x00081730: 02 f0 44 7f: ldaw (lu6)      r11, cp[0x84]
             0x00081734: 78 01:       stw (2rus)      r11, r6[0x0]
             0x00081736: 08 93:       add (2rus)      r0, r6, 0x4
             0x00081738: 51 68:       ldc (ru6)       r1, 0x11
             0x0008173a: d5 c0:       lss (3r)        r1, r5, r1
             0x0008173c: 53 a7:       mkmsk (rus)     r8, 0x3
             0x0008173e: 62 70:       bt (ru6)        r1, 0x22 <.label189>
.label193    0x00081740: 20 00:       stw (2rus)      r2, r0[0x0]
             0x00081742: 01 f0 08 5c: ldw (lru6)      r0, sp[0x48]
             0x00081746: 40 fa ec 9f: ldaw (l2rus)    r0, r0[0x4]
             0x0008174a: 01 f0 08 54: stw (lru6)      r0, sp[0x48]
             0x0008174e: 01 f0 07 5c: ldw (lru6)      r0, sp[0x47]
             0x00081752: 11 90:       add (2rus)      r1, r0, 0x1
             0x00081754: 01 f0 47 54: stw (lru6)      r1, sp[0x47]
             0x00081758: 80 c4:       lss (3r)        r0, r0, r8
             0x0008175a: 0b 70:       bt (ru6)        r0, 0xb <.label190>
             0x0008175c: cc 90:       add (2rus)      r0, r7, 0x0
             0x0008175e: 01 f0 46 64: ldaw (lru6)     r1, sp[0x46]
             0x00081762: 68 90:       add (2rus)      r6, r2, 0x0
             0x00081764: 02 f0 4e d1: bl (lu10)       0x94e <__sprint>
             0x00081768: e8 90:       add (2rus)      r2, r6, 0x0
             0x0008176a: e4 91:       add (2rus)      r6, r9, 0x0
             0x0008176c: 03 78:       bf (ru6)        r0, 0x3 <.label191>
             0x0008176e: 24 f0 0a 73: bu (lu6)        0x90a <.label192>
.label190    0x00081772: a8 95:       add (2rus)      r6, r6, 0x8
.label191    0x00081774: 54 fb ec a7: ldaw (l2rus)    r5, r5[-0x4]
             0x00081778: 02 f0 44 7f: ldaw (lu6)      r11, cp[0x84]
             0x0008177c: 78 01:       stw (2rus)      r11, r6[0x0]
             0x0008177e: 08 93:       add (2rus)      r0, r6, 0x4
             0x00081780: 59 c2:       lss (3r)        r1, r2, r5
             0x00081782: 62 74:       bt (ru6)        r1, -0x22 <.label193>
.label189    0x00081784: 50 00:       stw (2rus)      r5, r0[0x0]
             0x00081786: 01 f0 08 5c: ldw (lru6)      r0, sp[0x48]
             0x0008178a: 41 12:       add (3r)        r0, r0, r5
             0x0008178c: 01 f0 08 54: stw (lru6)      r0, sp[0x48]
             0x00081790: 01 f0 07 5c: ldw (lru6)      r0, sp[0x47]
             0x00081794: 11 90:       add (2rus)      r1, r0, 0x1
             0x00081796: 01 f0 47 54: stw (lru6)      r1, sp[0x47]
             0x0008179a: 80 c4:       lss (3r)        r0, r0, r8
             0x0008179c: 03 f0 2e 70: bt (lru6)       r0, 0xee <.label194>
             0x000817a0: 88 90:       add (2rus)      r8, r2, 0x0
             0x000817a2: cc 90:       add (2rus)      r0, r7, 0x0
             0x000817a4: 01 f0 46 64: ldaw (lru6)     r1, sp[0x46]
             0x000817a8: 02 f0 2c d1: bl (lu10)       0x92c <__sprint>
             0x000817ac: e4 91:       add (2rus)      r6, r9, 0x0
             0x000817ae: 61 5c:       ldw (ru6)       r1, sp[0x21]
             0x000817b0: 04 78:       bf (ru6)        r0, 0x4 <.label195>
             0x000817b2: 23 f0 28 73: bu (lu6)        0x8e8 <.label192>
.label188    0x000817b6: 88 90:       add (2rus)      r8, r2, 0x0
             0x000817b8: 61 5c:       ldw (ru6)       r1, sp[0x21]
.label195    0x000817ba: 0c 91:       add (2rus)      r4, r7, 0x0
             0x000817bc: 20 5c:       ldw (ru6)       r0, sp[0x20]
             0x000817be: 51 18:       sub (3r)        r5, r0, r1
             0x000817c0: 74 90:       add (2rus)      r7, r1, 0x0
             0x000817c2: d1 a6:       mkmsk (rus)     r0, 0x1
             0x000817c4: c4 c0:       lss (3r)        r0, r5, r0
             0x000817c6: b0 91:       add (2rus)      r3, r8, 0x0
             0x000817c8: 01 f0 04 70: bt (lru6)       r0, 0x44 <.label196>
             0x000817cc: 02 f0 44 7f: ldaw (lu6)      r11, cp[0x84]
             0x000817d0: 78 01:       stw (2rus)      r11, r6[0x0]
             0x000817d2: 08 93:       add (2rus)      r0, r6, 0x4
             0x000817d4: 51 68:       ldc (ru6)       r1, 0x11
             0x000817d6: d5 c0:       lss (3r)        r1, r5, r1
             0x000817d8: 53 a7:       mkmsk (rus)     r8, 0x3
             0x000817da: 62 70:       bt (ru6)        r1, 0x22 <.label197>
.label201    0x000817dc: 30 00:       stw (2rus)      r3, r0[0x0]
             0x000817de: 01 f0 08 5c: ldw (lru6)      r0, sp[0x48]
             0x000817e2: 40 fa ec 9f: ldaw (l2rus)    r0, r0[0x4]
             0x000817e6: 01 f0 08 54: stw (lru6)      r0, sp[0x48]
             0x000817ea: 01 f0 07 5c: ldw (lru6)      r0, sp[0x47]
             0x000817ee: 11 90:       add (2rus)      r1, r0, 0x1
             0x000817f0: 01 f0 47 54: stw (lru6)      r1, sp[0x47]
             0x000817f4: 80 c4:       lss (3r)        r0, r0, r8
             0x000817f6: 0b 70:       bt (ru6)        r0, 0xb <.label198>
             0x000817f8: c0 90:       add (2rus)      r0, r4, 0x0
             0x000817fa: 01 f0 46 64: ldaw (lru6)     r1, sp[0x46]
             0x000817fe: 6c 90:       add (2rus)      r6, r3, 0x0
             0x00081800: 02 f0 00 d1: bl (lu10)       0x900 <__sprint>
             0x00081804: f8 90:       add (2rus)      r3, r6, 0x0
             0x00081806: e4 91:       add (2rus)      r6, r9, 0x0
             0x00081808: 03 78:       bf (ru6)        r0, 0x3 <.label199>
             0x0008180a: 23 f0 00 73: bu (lu6)        0x8c0 <.label200>
.label198    0x0008180e: a8 95:       add (2rus)      r6, r6, 0x8
.label199    0x00081810: 54 fb ec a7: ldaw (l2rus)    r5, r5[-0x4]
             0x00081814: 02 f0 44 7f: ldaw (lu6)      r11, cp[0x84]
             0x00081818: 78 01:       stw (2rus)      r11, r6[0x0]
             0x0008181a: 08 93:       add (2rus)      r0, r6, 0x4
             0x0008181c: 5d c2:       lss (3r)        r1, r3, r5
             0x0008181e: 62 74:       bt (ru6)        r1, -0x22 <.label201>
.label197    0x00081820: 50 00:       stw (2rus)      r5, r0[0x0]
             0x00081822: 01 f0 08 5c: ldw (lru6)      r0, sp[0x48]
             0x00081826: 41 12:       add (3r)        r0, r0, r5
             0x00081828: 01 f0 08 54: stw (lru6)      r0, sp[0x48]
             0x0008182c: 01 f0 07 5c: ldw (lru6)      r0, sp[0x47]
             0x00081830: 11 90:       add (2rus)      r1, r0, 0x1
             0x00081832: 01 f0 47 54: stw (lru6)      r1, sp[0x47]
             0x00081836: 80 c4:       lss (3r)        r0, r0, r8
             0x00081838: 11 70:       bt (ru6)        r0, 0x11 <.label202>
             0x0008183a: c0 90:       add (2rus)      r0, r4, 0x0
             0x0008183c: 01 f0 46 64: ldaw (lru6)     r1, sp[0x46]
             0x00081840: 5c 90:       add (2rus)      r5, r3, 0x0
             0x00081842: 02 f0 df d0: bl (lu10)       0x8df <__sprint>
             0x00081846: f4 90:       add (2rus)      r3, r5, 0x0
             0x00081848: d4 91:       add (2rus)      r5, r9, 0x0
             0x0008184a: 24 91:       add (2rus)      r6, r5, 0x0
             0x0008184c: 80 68:       ldc (ru6)       r2, 0x0
             0x0008184e: 09 78:       bf (ru6)        r0, 0x9 <.label203>
             0x00081850: 22 f0 1d 73: bu (lu6)        0x89d <.label200>
.label196    0x00081854: d4 91:       add (2rus)      r5, r9, 0x0
             0x00081856: 80 68:       ldc (ru6)       r2, 0x0
             0x00081858: 53 a7:       mkmsk (rus)     r8, 0x3
             0x0008185a: 03 73:       bu (u6)         0x3 <.label203>
.label202    0x0008185c: a8 95:       add (2rus)      r6, r6, 0x8
             0x0008185e: d4 91:       add (2rus)      r5, r9, 0x0
             0x00081860: 80 68:       ldc (ru6)       r2, 0x0
.label203    0x00081862: 04 f0 00 68: ldc (lru6)      r0, 0x100
             0x00081866: 6a 5c:       ldw (ru6)       r1, sp[0x2a]
             0x00081868: 9c 90:       add (2rus)      r9, r3, 0x0
             0x0008186a: 04 38:       and (3r)        r0, r1, r0
             0x0008186c: 2b 78:       bf (ru6)        r0, 0x2b <.label204>
             0x0008186e: 01 f0 26 68: ldc (lru6)      r0, 0x66
             0x00081872: 5c 5c:       ldw (ru6)       r1, sp[0x1c]
             0x00081874: 04 c0:       lss (3r)        r0, r1, r0
             0x00081876: 30 91:       add (2rus)      r7, r4, 0x0
             0x00081878: 37 70:       bt (ru6)        r0, 0x37 <.label205>
             0x0008187a: 1f 5c:       ldw (ru6)       r0, sp[0x1f]
             0x0008187c: 5e 5c:       ldw (ru6)       r1, sp[0x1e]
             0x0008187e: 38 90:       add (2rus)      r3, r2, 0x0
             0x00081880: 48 90:       add (2rus)      r4, r2, 0x0
             0x00081882: 03 f0 69 d0: bl (lu10)       0xc69 <__nedf2>
             0x00081886: 01 f0 3e 70: bt (lru6)       r0, 0x7e <.label206>
             0x0008188a: 03 f0 5c 7f: ldaw (lu6)      r11, cp[0xdc]
             0x0008188e: 78 01:       stw (2rus)      r11, r6[0x0]
             0x00081890: d1 a6:       mkmsk (rus)     r0, 0x1
             0x00081892: c9 00:       stw (2rus)      r0, r6[0x1]
             0x00081894: 01 f0 08 5c: ldw (lru6)      r0, sp[0x48]
             0x00081898: 01 90:       add (2rus)      r0, r0, 0x1
             0x0008189a: 01 f0 08 54: stw (lru6)      r0, sp[0x48]
             0x0008189e: 01 f0 07 5c: ldw (lru6)      r0, sp[0x47]
             0x000818a2: 11 90:       add (2rus)      r1, r0, 0x1
             0x000818a4: 01 f0 47 54: stw (lru6)      r1, sp[0x47]
             0x000818a8: 80 c4:       lss (3r)        r0, r0, r8
             0x000818aa: 02 f0 18 70: bt (lru6)       r0, 0x98 <.label207>
             0x000818ae: cc 90:       add (2rus)      r0, r7, 0x0
             0x000818b0: 01 f0 46 64: ldaw (lru6)     r1, sp[0x46]
             0x000818b4: 02 f0 a6 d0: bl (lu10)       0x8a6 <__sprint>
             0x000818b8: d4 90:       add (2rus)      r1, r5, 0x0
             0x000818ba: b4 91:       add (2rus)      r3, r9, 0x0
             0x000818bc: 02 f0 11 78: bf (lru6)       r0, 0x91 <.label208>
             0x000818c0: 21 f0 21 73: bu (lu6)        0x861 <.label192>
.label204    0x000818c4: 28 5c:       ldw (ru6)       r0, sp[0x28]
             0x000818c6: c8 00:       stw (2rus)      r0, r6[0x0]
             0x000818c8: 39 01:       stw (2rus)      r7, r6[0x1]
             0x000818ca: 01 f0 08 5c: ldw (lru6)      r0, sp[0x48]
             0x000818ce: 43 12:       add (3r)        r0, r0, r7
             0x000818d0: 01 f0 08 54: stw (lru6)      r0, sp[0x48]
             0x000818d4: 01 f0 07 5c: ldw (lru6)      r0, sp[0x47]
             0x000818d8: 11 90:       add (2rus)      r1, r0, 0x1
             0x000818da: 01 f0 47 54: stw (lru6)      r1, sp[0x47]
             0x000818de: 80 c4:       lss (3r)        r0, r0, r8
             0x000818e0: 1e 70:       bt (ru6)        r0, 0x1e <.label209>
             0x000818e2: 30 91:       add (2rus)      r7, r4, 0x0
             0x000818e4: 0b f0 28 73: bu (lu6)        0x2e8 <.label210>
.label205    0x000818e8: 28 5c:       ldw (ru6)       r0, sp[0x28]
             0x000818ea: c8 00:       stw (2rus)      r0, r6[0x0]
             0x000818ec: d1 a6:       mkmsk (rus)     r0, 0x1
             0x000818ee: 30 90:       add (2rus)      r3, r0, 0x0
             0x000818f0: f9 00:       stw (2rus)      r3, r6[0x1]
             0x000818f2: 01 f0 08 5c: ldw (lru6)      r0, sp[0x48]
             0x000818f6: 01 90:       add (2rus)      r0, r0, 0x1
             0x000818f8: 01 f0 08 54: stw (lru6)      r0, sp[0x48]
             0x000818fc: 88 95:       add (2rus)      r4, r6, 0x8
             0x000818fe: 01 f0 c7 5e: ldw (lru6)      r11, sp[0x47]
             0x00081902: 9d 91:       add (2rus)      r1, r11, 0x1
             0x00081904: 01 f0 47 54: stw (lru6)      r1, sp[0x47]
             0x00081908: a2 5d:       ldw (ru6)       r6, sp[0x22]
             0x0008190a: 7e c2:       lss (3r)        r3, r3, r6
             0x0008190c: ce 70:       bt (ru6)        r3, 0xe <.label211>
             0x0008190e: ea 5c:       ldw (ru6)       r3, sp[0x2a]
             0x00081910: dd 46:       zext (rus)      r3, 0x1
             0x00081912: cb 70:       bt (ru6)        r3, 0xb <.label211>
             0x00081914: 0c c6:       lss (3r)        r0, r11, r8
             0x00081916: 03 f0 26 78: bf (lru6)       r0, 0xe6 <.label212>
             0x0008191a: 0a f0 3c 73: bu (lu6)        0x2bc <.label213>
.label209    0x0008191e: 58 95:       add (2rus)      r1, r6, 0x8
             0x00081920: b4 91:       add (2rus)      r3, r9, 0x0
             0x00081922: 65 6a:       ldc (ru6)       r9, 0x25
             0x00081924: 30 91:       add (2rus)      r7, r4, 0x0
             0x00081926: 0b f0 15 73: bu (lu6)        0x2d5 <.label214>
.label211    0x0008192a: 3c c6:       lss (3r)        r3, r11, r8
             0x0008192c: ce 70:       bt (ru6)        r3, 0xe <.label215>
             0x0008192e: 68 90:       add (2rus)      r6, r2, 0x0
             0x00081930: cc 90:       add (2rus)      r0, r7, 0x0
             0x00081932: 01 f0 46 64: ldaw (lru6)     r1, sp[0x46]
             0x00081936: 02 f0 65 d0: bl (lu10)       0x865 <__sprint>
             0x0008193a: 20 f0 24 70: bt (lru6)       r0, 0x824 <.label192>
             0x0008193e: 01 f0 08 5c: ldw (lru6)      r0, sp[0x48]
             0x00081942: 01 f0 47 5c: ldw (lru6)      r1, sp[0x47]
             0x00081946: 04 91:       add (2rus)      r4, r5, 0x0
             0x00081948: e8 90:       add (2rus)      r2, r6, 0x0
.label215    0x0008194a: 68 90:       add (2rus)      r6, r2, 0x0
             0x0008194c: 9b 5c:       ldw (ru6)       r2, sp[0x1b]
             0x0008194e: e0 00:       stw (2rus)      r2, r4[0x0]
             0x00081950: d9 a6:       mkmsk (rus)     r2, 0x1
             0x00081952: e1 00:       stw (2rus)      r2, r4[0x1]
             0x00081954: 01 90:       add (2rus)      r0, r0, 0x1
             0x00081956: 01 f0 08 54: stw (lru6)      r0, sp[0x48]
             0x0008195a: 05 90:       add (2rus)      r0, r1, 0x1
             0x0008195c: 01 f0 07 54: stw (lru6)      r0, sp[0x47]
             0x00081960: 84 c4:       lss (3r)        r0, r1, r8
             0x00081962: 02 f0 25 70: bt (lru6)       r0, 0xa5 <.label216>
             0x00081966: cc 90:       add (2rus)      r0, r7, 0x0
             0x00081968: 01 f0 46 64: ldaw (lru6)     r1, sp[0x46]
             0x0008196c: 02 f0 4a d0: bl (lu10)       0x84a <__sprint>
             0x00081970: 04 91:       add (2rus)      r4, r5, 0x0
             0x00081972: e8 90:       add (2rus)      r2, r6, 0x0
             0x00081974: 02 f0 1e 78: bf (lru6)       r0, 0x9e <.label217>
             0x00081978: 20 f0 05 73: bu (lu6)        0x805 <.label192>
.label194    0x0008197c: 88 90:       add (2rus)      r8, r2, 0x0
             0x0008197e: a8 95:       add (2rus)      r6, r6, 0x8
             0x00081980: 61 5c:       ldw (ru6)       r1, sp[0x21]
             0x00081982: 03 f0 26 77: bu (lu6)        -0xe6 <.label195>
.label206    0x00081986: 01 f0 0b 5c: ldw (lru6)      r0, sp[0x4b]
             0x0008198a: d0 c0:       lss (3r)        r1, r4, r0
             0x0008198c: 04 f0 79 78: bf (lru6)       r1, 0x139 <.label218>
             0x00081990: a2 5c:       ldw (ru6)       r2, sp[0x22]
             0x00081992: 12 c0:       lss (3r)        r1, r0, r2
             0x00081994: e8 5c:       ldw (ru6)       r3, sp[0x28]
             0x00081996: f8 00:       stw (2rus)      r3, r6[0x0]
             0x00081998: 05 f0 50 78: bf (lru6)       r1, 0x150 <.label219>
             0x0008199c: 04 91:       add (2rus)      r4, r5, 0x0
             0x0008199e: c9 00:       stw (2rus)      r0, r6[0x1]
             0x000819a0: 01 f0 4b 5d: ldw (lru6)      r5, sp[0x4b]
             0x000819a4: 01 f0 08 5c: ldw (lru6)      r0, sp[0x48]
             0x000819a8: 41 12:       add (3r)        r0, r0, r5
             0x000819aa: 01 f0 08 54: stw (lru6)      r0, sp[0x48]
             0x000819ae: 01 f0 47 5c: ldw (lru6)      r1, sp[0x47]
             0x000819b2: 25 90:       add (2rus)      r2, r1, 0x1
             0x000819b4: 01 f0 87 54: stw (lru6)      r2, sp[0x47]
             0x000819b8: 94 c4:       lss (3r)        r1, r1, r8
             0x000819ba: 07 f0 62 70: bt (lru6)       r1, 0x1e2 <.label220>
             0x000819be: cc 90:       add (2rus)      r0, r7, 0x0
             0x000819c0: 01 f0 46 64: ldaw (lru6)     r1, sp[0x46]
             0x000819c4: 02 f0 1e d0: bl (lu10)       0x81e <__sprint>
             0x000819c8: 1f f0 1d 70: bt (lru6)       r0, 0x7dd <.label192>
             0x000819cc: 01 f0 4b 5d: ldw (lru6)      r5, sp[0x4b]
             0x000819d0: 01 f0 08 5c: ldw (lru6)      r0, sp[0x48]
             0x000819d4: 01 f0 87 5c: ldw (lru6)      r2, sp[0x47]
             0x000819d8: f0 90:       add (2rus)      r3, r4, 0x0
             0x000819da: 07 f0 13 73: bu (lu6)        0x1d3 <.label221>
.label207    0x000819de: 58 95:       add (2rus)      r1, r6, 0x8
             0x000819e0: b4 91:       add (2rus)      r3, r9, 0x0
.label208    0x000819e2: 01 f0 0b 5c: ldw (lru6)      r0, sp[0x4b]
             0x000819e6: a2 5c:       ldw (ru6)       r2, sp[0x22]
             0x000819e8: 02 c0:       lss (3r)        r0, r0, r2
             0x000819ea: 04 70:       bt (ru6)        r0, 0x4 <.label222>
             0x000819ec: 2a 5c:       ldw (ru6)       r0, sp[0x2a]
             0x000819ee: d1 46:       zext (rus)      r0, 0x1
             0x000819f0: 09 f0 2f 78: bf (lru6)       r0, 0x26f <.label223>
.label222    0x000819f4: 1b 5c:       ldw (ru6)       r0, sp[0x1b]
             0x000819f6: 04 00:       stw (2rus)      r0, r1[0x0]
             0x000819f8: d1 a6:       mkmsk (rus)     r0, 0x1
             0x000819fa: 05 00:       stw (2rus)      r0, r1[0x1]
             0x000819fc: 01 f0 08 5c: ldw (lru6)      r0, sp[0x48]
             0x00081a00: 01 90:       add (2rus)      r0, r0, 0x1
             0x00081a02: 01 f0 08 54: stw (lru6)      r0, sp[0x48]
             0x00081a06: 01 f0 07 5c: ldw (lru6)      r0, sp[0x47]
             0x00081a0a: 21 90:       add (2rus)      r2, r0, 0x1
             0x00081a0c: 01 f0 87 54: stw (lru6)      r2, sp[0x47]
             0x00081a10: 80 c4:       lss (3r)        r0, r0, r8
             0x00081a12: 65 6a:       ldc (ru6)       r9, 0x25
             0x00081a14: 02 f0 3c 70: bt (lru6)       r0, 0xbc <.label224>
             0x00081a18: cc 90:       add (2rus)      r0, r7, 0x0
             0x00081a1a: 01 f0 46 64: ldaw (lru6)     r1, sp[0x46]
             0x00081a1e: 4c 90:       add (2rus)      r4, r3, 0x0
             0x00081a20: 01 f0 f0 d3: bl (lu10)       0x7f0 <__sprint>
             0x00081a24: f0 90:       add (2rus)      r3, r4, 0x0
             0x00081a26: d4 90:       add (2rus)      r1, r5, 0x0
             0x00081a28: 02 f0 33 78: bf (lru6)       r0, 0xb3 <.label225>
             0x00081a2c: 1e f0 2b 73: bu (lu6)        0x7ab <.label192>
.label138    0x00081a30: 66 55:       stw (ru6)       r5, sp[0x26]
             0x00081a32: 5d 5d:       ldw (ru6)       r5, sp[0x1d]
             0x00081a34: 05 09:       ldw (2rus)      r4, r5[0x1]
             0x00081a36: 54 09:       ldw (2rus)      r9, r5[0x0]
             0x00081a38: 94 95:       add (2rus)      r5, r5, 0x8
             0x00081a3a: 84 91:       add (2rus)      r0, r9, 0x0
             0x00081a3c: d0 90:       add (2rus)      r1, r4, 0x0
             0x00081a3e: 02 f0 97 d3: bl (lu10)       0xb97 <__isinfd>
             0x00081a42: 04 f0 16 78: bf (lru6)       r0, 0x116 <.label226>
             0x00081a46: 5d 55:       stw (ru6)       r5, sp[0x1d]
             0x00081a48: d4 91:       add (2rus)      r5, r9, 0x0
             0x00081a4a: 40 6a:       ldc (ru6)       r9, 0x0
             0x00081a4c: c4 90:       add (2rus)      r0, r5, 0x0
             0x00081a4e: d0 90:       add (2rus)      r1, r4, 0x0
             0x00081a50: a4 91:       add (2rus)      r2, r9, 0x0
             0x00081a52: b4 91:       add (2rus)      r3, r9, 0x0
             0x00081a54: 02 f0 16 d3: bl (lu10)       0xb16 <__gedf2>
             0x00081a58: 00 f8 ec 97: ashr (l2rus)    r0, r0, 0x20
             0x00081a5c: d0 90:       add (2rus)      r1, r4, 0x0
             0x00081a5e: 5e 54:       stw (ru6)       r1, sp[0x1e]
             0x00081a60: 40 b0:       eq (2rus)       r4, r0, 0x0
             0x00081a62: c4 90:       add (2rus)      r0, r5, 0x0
             0x00081a64: a4 91:       add (2rus)      r2, r9, 0x0
             0x00081a66: b4 91:       add (2rus)      r3, r9, 0x0
             0x00081a68: 02 f0 4c d3: bl (lu10)       0xb4c <__unorddf2>
             0x00081a6c: 00 b0:       eq (2rus)       r0, r0, 0x0
             0x00081a6e: 00 b0:       eq (2rus)       r0, r0, 0x0
             0x00081a70: 40 42:       or (3r)         r0, r0, r4
             0x00081a72: 01 f0 0c 65: ldaw (lru6)     r4, sp[0x4c]
             0x00081a76: 04 70:       bt (ru6)        r0, 0x4 <.label227>
             0x00081a78: 00 68:       ldc (ru6)       r0, 0x0
             0x00081a7a: 6d 68:       ldc (ru6)       r1, 0x2d
             0x00081a7c: d0 f8 ec 8f: st8 (l3r)       r1, r4[r0]
.label227    0x00081a80: 5f 55:       stw (ru6)       r5, sp[0x1f]
             0x00081a82: 83 a9:       shr (2rus)      r0, r8, 0x3
             0x00081a84: 49 68:       ldc (ru6)       r1, 0x9
             0x00081a86: 11 c8:       lsu (3r)        r1, r0, r1
             0x00081a88: 03 f0 7a 7f: ldaw (lu6)      r11, cp[0xfa]
             0x00081a8c: 8c 91:       add (2rus)      r0, r11, 0x0
             0x00081a8e: 03 f0 6a 7f: ldaw (lu6)      r11, cp[0xea]
             0x00081a92: e8 56:       stw (ru6)       r11, sp[0x28]
             0x00081a94: 41 70:       bt (ru6)        r1, 0x1 <.label228>
             0x00081a96: 28 54:       stw (ru6)       r0, sp[0x28]
.label228    0x00081a98: 03 f0 04 6c: ldw (lru6)      r0, cp[0xc4]
             0x00081a9c: ea 5c:       ldw (ru6)       r3, sp[0x2a]
             0x00081a9e: 3c 38:       and (3r)        r3, r3, r0
             0x00081aa0: d2 a6:       mkmsk (rus)     r0, 0x2
             0x00081aa2: 50 90:       add (2rus)      r5, r0, 0x0
             0x00081aa4: a4 91:       add (2rus)      r2, r9, 0x0
             0x00081aa6: a4 54:       stw (ru6)       r2, sp[0x24]
             0x00081aa8: 1c 56:       stw (ru6)       r8, sp[0x1c]
             0x00081aaa: c0 6a:       ldc (ru6)       r11, 0x0
             0x00081aac: 09 f0 3e 77: bu (lu6)        -0x27e <.label229>
.label216    0x00081ab0: 80 95:       add (2rus)      r4, r4, 0x8
             0x00081ab2: e8 90:       add (2rus)      r2, r6, 0x0
.label217    0x00081ab4: 1f 5c:       ldw (ru6)       r0, sp[0x1f]
             0x00081ab6: 5e 5c:       ldw (ru6)       r1, sp[0x1e]
             0x00081ab8: 38 90:       add (2rus)      r3, r2, 0x0
             0x00081aba: 02 f0 41 d3: bl (lu10)       0xb41 <__eqdf2>
             0x00081abe: 1d 78:       bf (ru6)        r0, 0x1d <.label230>
             0x00081ac0: 28 5c:       ldw (ru6)       r0, sp[0x28]
             0x00081ac2: 01 90:       add (2rus)      r0, r0, 0x1
             0x00081ac4: c0 00:       stw (2rus)      r0, r4[0x0]
             0x00081ac6: 22 5c:       ldw (ru6)       r0, sp[0x22]
             0x00081ac8: 01 98:       sub (2rus)      r0, r0, 0x1
             0x00081aca: c1 00:       stw (2rus)      r0, r4[0x1]
             0x00081acc: 01 f0 48 5c: ldw (lru6)      r1, sp[0x48]
             0x00081ad0: 04 10:       add (3r)        r0, r1, r0
             0x00081ad2: 01 f0 08 54: stw (lru6)      r0, sp[0x48]
             0x00081ad6: 01 f0 07 5c: ldw (lru6)      r0, sp[0x47]
             0x00081ada: 11 90:       add (2rus)      r1, r0, 0x1
             0x00081adc: 01 f0 47 54: stw (lru6)      r1, sp[0x47]
             0x00081ae0: 80 c4:       lss (3r)        r0, r0, r8
             0x00081ae2: 02 f0 0b 70: bt (lru6)       r0, 0x8b <.label231>
.label212    0x00081ae6: cc 90:       add (2rus)      r0, r7, 0x0
             0x00081ae8: 01 f0 46 64: ldaw (lru6)     r1, sp[0x46]
             0x00081aec: 01 f0 8a d3: bl (lu10)       0x78a <__sprint>
.label238    0x00081af0: 04 91:       add (2rus)      r4, r5, 0x0
             0x00081af2: 07 f0 10 78: bf (lru6)       r0, 0x1d0 <.label213>
             0x00081af6: 1d f0 06 73: bu (lu6)        0x746 <.label192>
.label230    0x00081afa: 22 5c:       ldw (ru6)       r0, sp[0x22]
             0x00081afc: 51 98:       sub (2rus)      r5, r0, 0x1
             0x00081afe: d1 a6:       mkmsk (rus)     r0, 0x1
             0x00081b00: c4 c0:       lss (3r)        r0, r5, r0
             0x00081b02: 07 f0 07 70: bt (lru6)       r0, 0x1c7 <.label232>
             0x00081b06: 02 f0 44 7f: ldaw (lu6)      r11, cp[0x84]
             0x00081b0a: 70 01:       stw (2rus)      r11, r4[0x0]
             0x00081b0c: 00 93:       add (2rus)      r0, r4, 0x4
             0x00081b0e: 51 68:       ldc (ru6)       r1, 0x11
             0x00081b10: d5 c0:       lss (3r)        r1, r5, r1
             0x00081b12: 01 f0 89 64: ldaw (lru6)     r2, sp[0x49]
             0x00081b16: b4 91:       add (2rus)      r3, r9, 0x0
             0x00081b18: 64 70:       bt (ru6)        r1, 0x24 <.label233>
.label236    0x00081b1a: 30 00:       stw (2rus)      r3, r0[0x0]
             0x00081b1c: 01 f0 08 5c: ldw (lru6)      r0, sp[0x48]
             0x00081b20: 40 fa ec 9f: ldaw (l2rus)    r0, r0[0x4]
             0x00081b24: 01 f0 08 54: stw (lru6)      r0, sp[0x48]
             0x00081b28: 01 f0 07 5c: ldw (lru6)      r0, sp[0x47]
             0x00081b2c: 11 90:       add (2rus)      r1, r0, 0x1
             0x00081b2e: 01 f0 47 54: stw (lru6)      r1, sp[0x47]
             0x00081b32: 80 c4:       lss (3r)        r0, r0, r8
             0x00081b34: 0d 70:       bt (ru6)        r0, 0xd <.label234>
             0x00081b36: cc 90:       add (2rus)      r0, r7, 0x0
             0x00081b38: 01 f0 46 64: ldaw (lru6)     r1, sp[0x46]
             0x00081b3c: 48 90:       add (2rus)      r4, r2, 0x0
             0x00081b3e: 6c 90:       add (2rus)      r6, r3, 0x0
             0x00081b40: 01 f0 60 d3: bl (lu10)       0x760 <__sprint>
             0x00081b44: f8 90:       add (2rus)      r3, r6, 0x0
             0x00081b46: e0 90:       add (2rus)      r2, r4, 0x0
             0x00081b48: 36 65:       ldaw (ru6)      r4, sp[0x36]
             0x00081b4a: 03 78:       bf (ru6)        r0, 0x3 <.label235>
             0x00081b4c: 1c f0 1b 73: bu (lu6)        0x71b <.label192>
.label234    0x00081b50: 80 95:       add (2rus)      r4, r4, 0x8
.label235    0x00081b52: 54 fb ec a7: ldaw (l2rus)    r5, r5[-0x4]
             0x00081b56: 02 f0 44 7f: ldaw (lu6)      r11, cp[0x84]
             0x00081b5a: 70 01:       stw (2rus)      r11, r4[0x0]
             0x00081b5c: 00 93:       add (2rus)      r0, r4, 0x4
             0x00081b5e: 5d c2:       lss (3r)        r1, r3, r5
             0x00081b60: 64 74:       bt (ru6)        r1, -0x24 <.label236>
.label233    0x00081b62: 9c 90:       add (2rus)      r9, r3, 0x0
             0x00081b64: 50 00:       stw (2rus)      r5, r0[0x0]
             0x00081b66: 01 f0 08 5c: ldw (lru6)      r0, sp[0x48]
             0x00081b6a: 41 12:       add (3r)        r0, r0, r5
             0x00081b6c: 01 f0 08 54: stw (lru6)      r0, sp[0x48]
             0x00081b70: 01 f0 07 5c: ldw (lru6)      r0, sp[0x47]
             0x00081b74: 11 90:       add (2rus)      r1, r0, 0x1
             0x00081b76: 01 f0 47 54: stw (lru6)      r1, sp[0x47]
             0x00081b7a: 80 c4:       lss (3r)        r0, r0, r8
             0x00081b7c: 06 f0 09 70: bt (lru6)       r0, 0x189 <.label237>
             0x00081b80: cc 90:       add (2rus)      r0, r7, 0x0
             0x00081b82: 01 f0 46 64: ldaw (lru6)     r1, sp[0x46]
             0x00081b86: 01 f0 3d d3: bl (lu10)       0x73d <__sprint>
             0x00081b8a: 76 65:       ldaw (ru6)      r5, sp[0x36]
             0x00081b8c: 01 f0 10 77: bu (lu6)        -0x50 <.label238>
.label224    0x00081b90: 94 94:       add (2rus)      r1, r1, 0x8
.label225    0x00081b92: 22 5c:       ldw (ru6)       r0, sp[0x22]
             0x00081b94: 41 98:       sub (2rus)      r4, r0, 0x1
             0x00081b96: d1 a6:       mkmsk (rus)     r0, 0x1
             0x00081b98: c0 c0:       lss (3r)        r0, r4, r0
             0x00081b9a: 06 f0 1b 70: bt (lru6)       r0, 0x19b <.label214>
             0x00081b9e: 02 f0 44 7f: ldaw (lu6)      r11, cp[0x84]
             0x00081ba2: b4 00:       stw (2rus)      r11, r1[0x0]
             0x00081ba4: 44 92:       add (2rus)      r0, r1, 0x4
             0x00081ba6: 91 68:       ldc (ru6)       r2, 0x11
             0x00081ba8: e2 c0:       lss (3r)        r2, r4, r2
             0x00081baa: a2 70:       bt (ru6)        r2, 0x22 <.label239>
.label242    0x00081bac: 30 00:       stw (2rus)      r3, r0[0x0]
             0x00081bae: 01 f0 08 5c: ldw (lru6)      r0, sp[0x48]
             0x00081bb2: 40 fa ec 9f: ldaw (l2rus)    r0, r0[0x4]
             0x00081bb6: 01 f0 08 54: stw (lru6)      r0, sp[0x48]
             0x00081bba: 01 f0 07 5c: ldw (lru6)      r0, sp[0x47]
             0x00081bbe: 21 90:       add (2rus)      r2, r0, 0x1
             0x00081bc0: 01 f0 87 54: stw (lru6)      r2, sp[0x47]
             0x00081bc4: 80 c4:       lss (3r)        r0, r0, r8
             0x00081bc6: 0b 70:       bt (ru6)        r0, 0xb <.label240>
             0x00081bc8: cc 90:       add (2rus)      r0, r7, 0x0
             0x00081bca: 01 f0 46 64: ldaw (lru6)     r1, sp[0x46]
             0x00081bce: 6c 90:       add (2rus)      r6, r3, 0x0
             0x00081bd0: 01 f0 18 d3: bl (lu10)       0x718 <__sprint>
             0x00081bd4: f8 90:       add (2rus)      r3, r6, 0x0
             0x00081bd6: d4 90:       add (2rus)      r1, r5, 0x0
             0x00081bd8: 03 78:       bf (ru6)        r0, 0x3 <.label241>
             0x00081bda: 1b f0 14 73: bu (lu6)        0x6d4 <.label192>
.label240    0x00081bde: 94 94:       add (2rus)      r1, r1, 0x8
.label241    0x00081be0: 40 fb ec a7: ldaw (l2rus)    r4, r4[-0x4]
             0x00081be4: 02 f0 44 7f: ldaw (lu6)      r11, cp[0x84]
             0x00081be8: b4 00:       stw (2rus)      r11, r1[0x0]
             0x00081bea: 44 92:       add (2rus)      r0, r1, 0x4
             0x00081bec: 6c c2:       lss (3r)        r2, r3, r4
             0x00081bee: a2 74:       bt (ru6)        r2, -0x22 <.label242>
.label239    0x00081bf0: 40 00:       stw (2rus)      r4, r0[0x0]
             0x00081bf2: 01 f0 08 5c: ldw (lru6)      r0, sp[0x48]
             0x00081bf6: 40 12:       add (3r)        r0, r0, r4
             0x00081bf8: 0c f0 10 73: bu (lu6)        0x310 <.label243>
.label231    0x00081bfc: 80 95:       add (2rus)      r4, r4, 0x8
             0x00081bfe: 05 f0 0a 73: bu (lu6)        0x14a <.label213>
.label218    0x00081c02: 03 f0 5c 7f: ldaw (lu6)      r11, cp[0xdc]
             0x00081c06: 78 01:       stw (2rus)      r11, r6[0x0]
             0x00081c08: d1 a6:       mkmsk (rus)     r0, 0x1
             0x00081c0a: c9 00:       stw (2rus)      r0, r6[0x1]
             0x00081c0c: 01 f0 08 5c: ldw (lru6)      r0, sp[0x48]
             0x00081c10: 01 90:       add (2rus)      r0, r0, 0x1
             0x00081c12: 01 f0 08 54: stw (lru6)      r0, sp[0x48]
             0x00081c16: 01 f0 07 5c: ldw (lru6)      r0, sp[0x47]
             0x00081c1a: 11 90:       add (2rus)      r1, r0, 0x1
             0x00081c1c: 01 f0 47 54: stw (lru6)      r1, sp[0x47]
             0x00081c20: 80 c4:       lss (3r)        r0, r0, r8
             0x00081c22: 01 f0 09 70: bt (lru6)       r0, 0x49 <.label244>
             0x00081c26: cc 90:       add (2rus)      r0, r7, 0x0
             0x00081c28: 01 f0 46 64: ldaw (lru6)     r1, sp[0x46]
             0x00081c2c: 01 f0 ea d2: bl (lu10)       0x6ea <__sprint>
             0x00081c30: d4 90:       add (2rus)      r1, r5, 0x0
             0x00081c32: b4 91:       add (2rus)      r3, r9, 0x0
             0x00081c34: 01 f0 02 78: bf (lru6)       r0, 0x42 <.label245>
             0x00081c38: 1a f0 25 73: bu (lu6)        0x6a5 <.label192>
.label219    0x00081c3c: e9 00:       stw (2rus)      r2, r6[0x1]
             0x00081c3e: 01 f0 08 5c: ldw (lru6)      r0, sp[0x48]
             0x00081c42: 02 10:       add (3r)        r0, r0, r2
             0x00081c44: 01 f0 08 54: stw (lru6)      r0, sp[0x48]
             0x00081c48: 01 f0 07 5c: ldw (lru6)      r0, sp[0x47]
             0x00081c4c: 11 90:       add (2rus)      r1, r0, 0x1
             0x00081c4e: 01 f0 47 54: stw (lru6)      r1, sp[0x47]
             0x00081c52: 80 c4:       lss (3r)        r0, r0, r8
             0x00081c54: 02 f0 31 70: bt (lru6)       r0, 0xb1 <.label246>
             0x00081c58: cc 90:       add (2rus)      r0, r7, 0x0
             0x00081c5a: 01 f0 46 64: ldaw (lru6)     r1, sp[0x46]
             0x00081c5e: 48 90:       add (2rus)      r4, r2, 0x0
             0x00081c60: 01 f0 d0 d2: bl (lu10)       0x6d0 <__sprint>
             0x00081c64: e0 90:       add (2rus)      r2, r4, 0x0
             0x00081c66: d4 90:       add (2rus)      r1, r5, 0x0
             0x00081c68: b4 91:       add (2rus)      r3, r9, 0x0
             0x00081c6a: 02 f0 28 78: bf (lru6)       r0, 0xa8 <.label247>
             0x00081c6e: 1a f0 0a 73: bu (lu6)        0x68a <.label192>
.label226    0x00081c72: 84 91:       add (2rus)      r0, r9, 0x0
             0x00081c74: d0 90:       add (2rus)      r1, r4, 0x0
             0x00081c76: 02 f0 8f d2: bl (lu10)       0xa8f <__isnand>
             0x00081c7a: 07 f0 20 78: bf (lru6)       r0, 0x1e0 <.label248>
             0x00081c7e: 5d 55:       stw (ru6)       r5, sp[0x1d]
             0x00081c80: 1e 55:       stw (ru6)       r4, sp[0x1e]
             0x00081c82: 5f 56:       stw (ru6)       r9, sp[0x1f]
             0x00081c84: 83 a9:       shr (2rus)      r0, r8, 0x3
             0x00081c86: 49 68:       ldc (ru6)       r1, 0x9
             0x00081c88: 11 c8:       lsu (3r)        r1, r0, r1
             0x00081c8a: 03 f0 7b 7f: ldaw (lu6)      r11, cp[0xfb]
             0x00081c8e: 8c 91:       add (2rus)      r0, r11, 0x0
             0x00081c90: 03 f0 6e 7f: ldaw (lu6)      r11, cp[0xee]
             0x00081c94: e8 56:       stw (ru6)       r11, sp[0x28]
             0x00081c96: 41 70:       bt (ru6)        r1, 0x1 <.label249>
             0x00081c98: 28 54:       stw (ru6)       r0, sp[0x28]
.label249    0x00081c9a: 03 f0 04 6c: ldw (lru6)      r0, cp[0xc4]
             0x00081c9e: 6a 5c:       ldw (ru6)       r1, sp[0x2a]
             0x00081ca0: 14 38:       and (3r)        r1, r1, r0
             0x00081ca2: 80 68:       ldc (ru6)       r2, 0x0
             0x00081ca4: d2 a6:       mkmsk (rus)     r0, 0x2
             0x00081ca6: 50 90:       add (2rus)      r5, r0, 0x0
             0x00081ca8: a4 54:       stw (ru6)       r2, sp[0x24]
             0x00081caa: 1c 56:       stw (ru6)       r8, sp[0x1c]
             0x00081cac: 34 90:       add (2rus)      r3, r1, 0x0
             0x00081cae: c0 6a:       ldc (ru6)       r11, 0x0
             0x00081cb0: 01 f0 0c 65: ldaw (lru6)     r4, sp[0x4c]
             0x00081cb4: 0e f0 02 77: bu (lu6)        -0x382 <.label229>
.label244    0x00081cb8: 58 95:       add (2rus)      r1, r6, 0x8
             0x00081cba: b4 91:       add (2rus)      r3, r9, 0x0
.label245    0x00081cbc: 01 f0 0b 5c: ldw (lru6)      r0, sp[0x4b]
             0x00081cc0: aa 5c:       ldw (ru6)       r2, sp[0x2a]
             0x00081cc2: d9 46:       zext (rus)      r2, 0x1
             0x00081cc4: e2 5e:       ldw (ru6)       r11, sp[0x22]
             0x00081cc6: ab 44:       or (3r)         r2, r2, r11
             0x00081cc8: 08 40:       or (3r)         r0, r2, r0
             0x00081cca: 04 f0 02 78: bf (lru6)       r0, 0x102 <.label223>
             0x00081cce: 1b 5c:       ldw (ru6)       r0, sp[0x1b]
             0x00081cd0: 04 00:       stw (2rus)      r0, r1[0x0]
             0x00081cd2: d1 a6:       mkmsk (rus)     r0, 0x1
             0x00081cd4: 05 00:       stw (2rus)      r0, r1[0x1]
             0x00081cd6: 01 f0 08 5c: ldw (lru6)      r0, sp[0x48]
             0x00081cda: 01 90:       add (2rus)      r0, r0, 0x1
             0x00081cdc: 01 f0 08 54: stw (lru6)      r0, sp[0x48]
             0x00081ce0: 01 f0 07 5c: ldw (lru6)      r0, sp[0x47]
             0x00081ce4: 21 90:       add (2rus)      r2, r0, 0x1
             0x00081ce6: 01 f0 87 54: stw (lru6)      r2, sp[0x47]
             0x00081cea: 80 c4:       lss (3r)        r0, r0, r8
             0x00081cec: 65 6a:       ldc (ru6)       r9, 0x25
             0x00081cee: 05 f0 16 70: bt (lru6)       r0, 0x156 <.label250>
             0x00081cf2: cc 90:       add (2rus)      r0, r7, 0x0
             0x00081cf4: 01 f0 46 64: ldaw (lru6)     r1, sp[0x46]
             0x00081cf8: 4c 90:       add (2rus)      r4, r3, 0x0
             0x00081cfa: 01 f0 83 d2: bl (lu10)       0x683 <__sprint>
             0x00081cfe: f0 90:       add (2rus)      r3, r4, 0x0
             0x00081d00: d4 90:       add (2rus)      r1, r5, 0x0
             0x00081d02: 05 f0 0d 78: bf (lru6)       r0, 0x14d <.label251>
             0x00081d06: 18 f0 3e 73: bu (lu6)        0x63e <.label192>
.label139    0x00081d0a: 66 55:       stw (ru6)       r5, sp[0x26]
             0x00081d0c: ac 64:       ldaw (ru6)      r2, sp[0x2c]
             0x00081d0e: a8 54:       stw (ru6)       r2, sp[0x28]
             0x00081d10: 5d 5c:       ldw (ru6)       r1, sp[0x1d]
             0x00081d12: 44 92:       add (2rus)      r0, r1, 0x4
             0x00081d14: 14 08:       ldw (2rus)      r1, r1[0x0]
             0x00081d16: c0 68:       ldc (ru6)       r3, 0x0
             0x00081d18: 1b f8 ec 8f: st8 (l3r)       r1, r2[r3]
             0x00081d1c: 2c 90:       add (2rus)      r2, r3, 0x0
             0x00081d1e: 01 f0 0c 65: ldaw (lru6)     r4, sp[0x4c]
             0x00081d22: e2 f8 ec 8f: st8 (l3r)       r2, r4[r2]
             0x00081d26: d5 a6:       mkmsk (rus)     r1, 0x1
             0x00081d28: 54 90:       add (2rus)      r5, r1, 0x0
             0x00081d2a: a4 54:       stw (ru6)       r2, sp[0x24]
             0x00081d2c: 1c 56:       stw (ru6)       r8, sp[0x1c]
             0x00081d2e: 1d 54:       stw (ru6)       r0, sp[0x1d]
             0x00081d30: 0f f0 02 77: bu (lu6)        -0x3c2 <.label252>
.label143    0x00081d34: 66 55:       stw (ru6)       r5, sp[0x26]
             0x00081d36: e3 55:       stw (ru6)       r7, sp[0x23]
             0x00081d38: 40 68:       ldc (ru6)       r1, 0x0
             0x00081d3a: 01 f0 0c 65: ldaw (lru6)     r4, sp[0x4c]
             0x00081d3e: d1 f8 ec 8f: st8 (l3r)       r1, r4[r1]
             0x00081d42: 1d 5c:       ldw (ru6)       r0, sp[0x1d]
             0x00081d44: d0 92:       add (2rus)      r9, r0, 0x4
             0x00081d46: 50 08:       ldw (2rus)      r5, r0[0x0]
             0x00081d48: e5 5d:       ldw (ru6)       r7, sp[0x25]
             0x00081d4a: cc f8 ec 97: ashr (l2rus)    r0, r7, 0x20
             0x00081d4e: 08 f0 12 70: bt (lru6)       r0, 0x212 <.label253>
             0x00081d52: 61 56:       stw (ru6)       r9, sp[0x21]
             0x00081d54: 40 6a:       ldc (ru6)       r9, 0x0
             0x00081d56: c4 90:       add (2rus)      r0, r5, 0x0
             0x00081d58: 94 91:       add (2rus)      r1, r9, 0x0
             0x00081d5a: ec 90:       add (2rus)      r2, r7, 0x0
             0x00081d5c: 04 f0 ce d3: bl (lu10)       0x13ce <memchr>
             0x00081d60: 09 f0 07 78: bf (lru6)       r0, 0x247 <.label254>
             0x00081d64: 41 1a:       sub (3r)        r0, r0, r5
             0x00081d66: 68 55:       stw (ru6)       r5, sp[0x28]
             0x00081d68: dc c0:       lss (3r)        r1, r7, r0
             0x00081d6a: c0 6a:       ldc (ru6)       r11, 0x0
             0x00081d6c: e1 5c:       ldw (ru6)       r3, sp[0x21]
             0x00081d6e: 41 70:       bt (ru6)        r1, 0x1 <.label255>
             0x00081d70: 70 90:       add (2rus)      r7, r0, 0x0
.label255    0x00081d72: 80 68:       ldc (ru6)       r2, 0x0
             0x00081d74: 1c 91:       add (2rus)      r5, r7, 0x0
             0x00081d76: a4 54:       stw (ru6)       r2, sp[0x24]
             0x00081d78: 1c 56:       stw (ru6)       r8, sp[0x1c]
             0x00081d7a: dd 54:       stw (ru6)       r3, sp[0x1d]
             0x00081d7c: e3 5d:       ldw (ru6)       r7, sp[0x23]
             0x00081d7e: 0f f0 28 77: bu (lu6)        -0x3e8 <.label256>
.label220    0x00081d82: 78 95:       add (2rus)      r3, r6, 0x8
.label221    0x00081d84: 5b 5c:       ldw (ru6)       r1, sp[0x1b]
             0x00081d86: 1c 00:       stw (2rus)      r1, r3[0x0]
             0x00081d88: d5 a6:       mkmsk (rus)     r1, 0x1
             0x00081d8a: 1d 00:       stw (2rus)      r1, r3[0x1]
             0x00081d8c: 11 90:       add (2rus)      r1, r0, 0x1
             0x00081d8e: 01 f0 48 54: stw (lru6)      r1, sp[0x48]
             0x00081d92: 09 90:       add (2rus)      r0, r2, 0x1
             0x00081d94: 01 f0 07 54: stw (lru6)      r0, sp[0x47]
             0x00081d98: a8 c4:       lss (3r)        r2, r2, r8
             0x00081d9a: 01 f0 9c 70: bt (lru6)       r2, 0x5c <.label257>
             0x00081d9e: cc 90:       add (2rus)      r0, r7, 0x0
             0x00081da0: 01 f0 46 64: ldaw (lru6)     r1, sp[0x46]
             0x00081da4: 01 f0 2e d2: bl (lu10)       0x62e <__sprint>
             0x00081da8: 17 f0 2d 70: bt (lru6)       r0, 0x5ed <.label192>
             0x00081dac: 01 f0 48 5c: ldw (lru6)      r1, sp[0x48]
             0x00081db0: 01 f0 07 5c: ldw (lru6)      r0, sp[0x47]
             0x00081db4: e0 90:       add (2rus)      r2, r4, 0x0
             0x00081db6: 01 f0 0f 73: bu (lu6)        0x4f <.label258>
.label246    0x00081dba: 58 95:       add (2rus)      r1, r6, 0x8
             0x00081dbc: b4 91:       add (2rus)      r3, r9, 0x0
.label247    0x00081dbe: 01 f0 0b 5c: ldw (lru6)      r0, sp[0x4b]
             0x00081dc2: 42 18:       sub (3r)        r4, r0, r2
             0x00081dc4: d1 a6:       mkmsk (rus)     r0, 0x1
             0x00081dc6: c0 c0:       lss (3r)        r0, r4, r0
             0x00081dc8: 04 f0 36 70: bt (lru6)       r0, 0x136 <.label259>
             0x00081dcc: 02 f0 44 7f: ldaw (lu6)      r11, cp[0x84]
             0x00081dd0: b4 00:       stw (2rus)      r11, r1[0x0]
             0x00081dd2: 44 92:       add (2rus)      r0, r1, 0x4
             0x00081dd4: 91 68:       ldc (ru6)       r2, 0x11
             0x00081dd6: e2 c0:       lss (3r)        r2, r4, r2
             0x00081dd8: 65 6a:       ldc (ru6)       r9, 0x25
             0x00081dda: a2 70:       bt (ru6)        r2, 0x22 <.label260>
.label263    0x00081ddc: 30 00:       stw (2rus)      r3, r0[0x0]
             0x00081dde: 01 f0 08 5c: ldw (lru6)      r0, sp[0x48]
             0x00081de2: 40 fa ec 9f: ldaw (l2rus)    r0, r0[0x4]
             0x00081de6: 01 f0 08 54: stw (lru6)      r0, sp[0x48]
             0x00081dea: 01 f0 07 5c: ldw (lru6)      r0, sp[0x47]
             0x00081dee: 21 90:       add (2rus)      r2, r0, 0x1
             0x00081df0: 01 f0 87 54: stw (lru6)      r2, sp[0x47]
             0x00081df4: 80 c4:       lss (3r)        r0, r0, r8
             0x00081df6: 0b 70:       bt (ru6)        r0, 0xb <.label261>
             0x00081df8: cc 90:       add (2rus)      r0, r7, 0x0
             0x00081dfa: 01 f0 46 64: ldaw (lru6)     r1, sp[0x46]
             0x00081dfe: 6c 90:       add (2rus)      r6, r3, 0x0
             0x00081e00: 01 f0 00 d2: bl (lu10)       0x600 <__sprint>
             0x00081e04: f8 90:       add (2rus)      r3, r6, 0x0
             0x00081e06: d4 90:       add (2rus)      r1, r5, 0x0
             0x00081e08: 03 78:       bf (ru6)        r0, 0x3 <.label262>
             0x00081e0a: 16 f0 3c 73: bu (lu6)        0x5bc <.label192>
.label261    0x00081e0e: 94 94:       add (2rus)      r1, r1, 0x8
.label262    0x00081e10: 40 fb ec a7: ldaw (l2rus)    r4, r4[-0x4]
             0x00081e14: 02 f0 44 7f: ldaw (lu6)      r11, cp[0x84]
             0x00081e18: b4 00:       stw (2rus)      r11, r1[0x0]
             0x00081e1a: 44 92:       add (2rus)      r0, r1, 0x4
             0x00081e1c: 6c c2:       lss (3r)        r2, r3, r4
             0x00081e1e: a2 74:       bt (ru6)        r2, -0x22 <.label263>
.label260    0x00081e20: 40 00:       stw (2rus)      r4, r0[0x0]
             0x00081e22: 01 f0 08 5c: ldw (lru6)      r0, sp[0x48]
             0x00081e26: 40 12:       add (3r)        r0, r0, r4
             0x00081e28: 01 f0 08 54: stw (lru6)      r0, sp[0x48]
             0x00081e2c: 01 f0 07 5c: ldw (lru6)      r0, sp[0x47]
             0x00081e30: 21 90:       add (2rus)      r2, r0, 0x1
             0x00081e32: 01 f0 87 54: stw (lru6)      r2, sp[0x47]
             0x00081e36: 80 c4:       lss (3r)        r0, r0, r8
             0x00081e38: 06 f0 0d 70: bt (lru6)       r0, 0x18d <.label264>
             0x00081e3c: cc 90:       add (2rus)      r0, r7, 0x0
             0x00081e3e: 01 f0 46 64: ldaw (lru6)     r1, sp[0x46]
             0x00081e42: 4c 90:       add (2rus)      r4, r3, 0x0
             0x00081e44: 01 f0 de d1: bl (lu10)       0x5de <__sprint>
             0x00081e48: f0 90:       add (2rus)      r3, r4, 0x0
             0x00081e4a: d4 90:       add (2rus)      r1, r5, 0x0
             0x00081e4c: a2 5c:       ldw (ru6)       r2, sp[0x22]
             0x00081e4e: 06 f0 04 78: bf (lru6)       r0, 0x184 <.label265>
             0x00081e52: 16 f0 18 73: bu (lu6)        0x598 <.label192>
.label257    0x00081e56: ac 94:       add (2rus)      r2, r3, 0x8
.label258    0x00081e58: e8 5c:       ldw (ru6)       r3, sp[0x28]
             0x00081e5a: 7d 12:       add (3r)        r3, r3, r5
             0x00081e5c: 38 00:       stw (2rus)      r3, r2[0x0]
             0x00081e5e: 01 f0 cb 5c: ldw (lru6)      r3, sp[0x4b]
             0x00081e62: e2 5e:       ldw (ru6)       r11, sp[0x22]
             0x00081e64: bf 19:       sub (3r)        r3, r11, r3
             0x00081e66: 39 00:       stw (2rus)      r3, r2[0x1]
             0x00081e68: 01 f0 cb 5c: ldw (lru6)      r3, sp[0x4b]
             0x00081e6c: bf 19:       sub (3r)        r3, r11, r3
             0x00081e6e: 1d 10:       add (3r)        r1, r3, r1
             0x00081e70: 01 f0 48 54: stw (lru6)      r1, sp[0x48]
             0x00081e74: 11 90:       add (2rus)      r1, r0, 0x1
             0x00081e76: 01 f0 47 54: stw (lru6)      r1, sp[0x47]
             0x00081e7a: 80 c4:       lss (3r)        r0, r0, r8
             0x00081e7c: 07 70:       bt (ru6)        r0, 0x7 <.label266>
             0x00081e7e: cc 90:       add (2rus)      r0, r7, 0x0
             0x00081e80: 01 f0 46 64: ldaw (lru6)     r1, sp[0x46]
             0x00081e84: 01 f0 be d1: bl (lu10)       0x5be <__sprint>
             0x00081e88: 10 91:       add (2rus)      r5, r4, 0x0
             0x00081e8a: 1b 73:       bu (u6)         0x1b <.label267>
.label266    0x00081e8c: 98 94:       add (2rus)      r1, r2, 0x8
             0x00081e8e: 10 91:       add (2rus)      r5, r4, 0x0
             0x00081e90: 1f 73:       bu (u6)         0x1f <.label268>
.label237    0x00081e92: 80 95:       add (2rus)      r4, r4, 0x8
.label232    0x00081e94: 76 65:       ldaw (ru6)      r5, sp[0x36]
.label213    0x00081e96: 01 f0 09 64: ldaw (lru6)     r0, sp[0x49]
             0x00081e9a: c0 00:       stw (2rus)      r0, r4[0x0]
             0x00081e9c: 5a 5c:       ldw (ru6)       r1, sp[0x1a]
             0x00081e9e: d1 00:       stw (2rus)      r1, r4[0x1]
             0x00081ea0: 01 f0 08 5c: ldw (lru6)      r0, sp[0x48]
             0x00081ea4: 01 10:       add (3r)        r0, r0, r1
             0x00081ea6: 01 f0 08 54: stw (lru6)      r0, sp[0x48]
             0x00081eaa: 01 f0 07 5c: ldw (lru6)      r0, sp[0x47]
             0x00081eae: 11 90:       add (2rus)      r1, r0, 0x1
             0x00081eb0: 01 f0 47 54: stw (lru6)      r1, sp[0x47]
             0x00081eb4: 80 c4:       lss (3r)        r0, r0, r8
             0x00081eb6: 0b 70:       bt (ru6)        r0, 0xb <.label269>
.label210    0x00081eb8: cc 90:       add (2rus)      r0, r7, 0x0
             0x00081eba: 01 f0 46 64: ldaw (lru6)     r1, sp[0x46]
             0x00081ebe: 01 f0 a1 d1: bl (lu10)       0x5a1 <__sprint>
.label267    0x00081ec2: d4 90:       add (2rus)      r1, r5, 0x0
             0x00081ec4: b4 91:       add (2rus)      r3, r9, 0x0
             0x00081ec6: 65 6a:       ldc (ru6)       r9, 0x25
             0x00081ec8: 05 78:       bf (ru6)        r0, 0x5 <.label214>
             0x00081eca: 15 f0 1c 73: bu (lu6)        0x55c <.label192>
.label269    0x00081ece: 50 95:       add (2rus)      r1, r4, 0x8
.label268    0x00081ed0: b4 91:       add (2rus)      r3, r9, 0x0
.label223    0x00081ed2: 65 6a:       ldc (ru6)       r9, 0x25
.label214    0x00081ed4: 04 68:       ldc (ru6)       r0, 0x4
             0x00081ed6: aa 5c:       ldw (ru6)       r2, sp[0x2a]
             0x00081ed8: 08 38:       and (3r)        r0, r2, r0
             0x00081eda: a5 5c:       ldw (ru6)       r2, sp[0x25]
             0x00081edc: 01 f0 06 78: bf (lru6)       r0, 0x46 <.label270>
             0x00081ee0: 26 5c:       ldw (ru6)       r0, sp[0x26]
             0x00081ee2: 42 18:       sub (3r)        r4, r0, r2
             0x00081ee4: d1 a6:       mkmsk (rus)     r0, 0x1
             0x00081ee6: c0 c0:       lss (3r)        r0, r4, r0
             0x00081ee8: 01 f0 00 70: bt (lru6)       r0, 0x40 <.label270>
             0x00081eec: 02 f0 40 7f: ldaw (lu6)      r11, cp[0x80]
             0x00081ef0: b4 00:       stw (2rus)      r11, r1[0x0]
             0x00081ef2: 44 92:       add (2rus)      r0, r1, 0x4
             0x00081ef4: 91 68:       ldc (ru6)       r2, 0x11
             0x00081ef6: e2 c0:       lss (3r)        r2, r4, r2
             0x00081ef8: a2 70:       bt (ru6)        r2, 0x22 <.label271>
.label274    0x00081efa: 30 00:       stw (2rus)      r3, r0[0x0]
             0x00081efc: 01 f0 08 5c: ldw (lru6)      r0, sp[0x48]
             0x00081f00: 40 fa ec 9f: ldaw (l2rus)    r0, r0[0x4]
             0x00081f04: 01 f0 08 54: stw (lru6)      r0, sp[0x48]
             0x00081f08: 01 f0 07 5c: ldw (lru6)      r0, sp[0x47]
             0x00081f0c: 21 90:       add (2rus)      r2, r0, 0x1
             0x00081f0e: 01 f0 87 54: stw (lru6)      r2, sp[0x47]
             0x00081f12: 80 c4:       lss (3r)        r0, r0, r8
             0x00081f14: 0b 70:       bt (ru6)        r0, 0xb <.label272>
             0x00081f16: cc 90:       add (2rus)      r0, r7, 0x0
             0x00081f18: 01 f0 46 64: ldaw (lru6)     r1, sp[0x46]
             0x00081f1c: 6c 90:       add (2rus)      r6, r3, 0x0
             0x00081f1e: 01 f0 71 d1: bl (lu10)       0x571 <__sprint>
             0x00081f22: f8 90:       add (2rus)      r3, r6, 0x0
             0x00081f24: d4 90:       add (2rus)      r1, r5, 0x0
             0x00081f26: 03 78:       bf (ru6)        r0, 0x3 <.label273>
             0x00081f28: 14 f0 2d 73: bu (lu6)        0x52d <.label192>
.label272    0x00081f2c: 94 94:       add (2rus)      r1, r1, 0x8
.label273    0x00081f2e: 40 fb ec a7: ldaw (l2rus)    r4, r4[-0x4]
             0x00081f32: 02 f0 40 7f: ldaw (lu6)      r11, cp[0x80]
             0x00081f36: b4 00:       stw (2rus)      r11, r1[0x0]
             0x00081f38: 44 92:       add (2rus)      r0, r1, 0x4
             0x00081f3a: 6c c2:       lss (3r)        r2, r3, r4
             0x00081f3c: a2 74:       bt (ru6)        r2, -0x22 <.label274>
.label271    0x00081f3e: 40 00:       stw (2rus)      r4, r0[0x0]
             0x00081f40: 01 f0 08 5c: ldw (lru6)      r0, sp[0x48]
             0x00081f44: 40 12:       add (3r)        r0, r0, r4
             0x00081f46: 01 f0 08 54: stw (lru6)      r0, sp[0x48]
             0x00081f4a: 01 f0 07 5c: ldw (lru6)      r0, sp[0x47]
             0x00081f4e: 11 90:       add (2rus)      r1, r0, 0x1
             0x00081f50: 01 f0 47 54: stw (lru6)      r1, sp[0x47]
             0x00081f54: 80 c4:       lss (3r)        r0, r0, r8
             0x00081f56: a5 5c:       ldw (ru6)       r2, sp[0x25]
             0x00081f58: 09 70:       bt (ru6)        r0, 0x9 <.label270>
             0x00081f5a: cc 90:       add (2rus)      r0, r7, 0x0
             0x00081f5c: 01 f0 46 64: ldaw (lru6)     r1, sp[0x46]
             0x00081f60: 48 90:       add (2rus)      r4, r2, 0x0
             0x00081f62: 01 f0 4f d1: bl (lu10)       0x54f <__sprint>
             0x00081f66: e0 90:       add (2rus)      r2, r4, 0x0
             0x00081f68: 14 f0 0d 70: bt (lru6)       r0, 0x50d <.label192>
.label270    0x00081f6c: 66 5c:       ldw (ru6)       r1, sp[0x26]
             0x00081f6e: 09 c0:       lss (3r)        r0, r2, r1
             0x00081f70: 01 70:       bt (ru6)        r0, 0x1 <.label275>
             0x00081f72: 18 90:       add (2rus)      r1, r2, 0x0
.label275    0x00081f74: 29 5c:       ldw (ru6)       r0, sp[0x29]
             0x00081f76: 04 10:       add (3r)        r0, r1, r0
             0x00081f78: 29 54:       stw (ru6)       r0, sp[0x29]
             0x00081f7a: 01 f0 08 5c: ldw (lru6)      r0, sp[0x48]
             0x00081f7e: 07 78:       bf (ru6)        r0, 0x7 <.label276>
             0x00081f80: cc 90:       add (2rus)      r0, r7, 0x0
             0x00081f82: 01 f0 46 64: ldaw (lru6)     r1, sp[0x46]
             0x00081f86: 01 f0 3d d1: bl (lu10)       0x53d <__sprint>
             0x00081f8a: 13 f0 3c 70: bt (lru6)       r0, 0x4fc <.label192>
.label276    0x00081f8e: 80 68:       ldc (ru6)       r2, 0x0
             0x00081f90: 01 f0 87 54: stw (lru6)      r2, sp[0x47]
             0x00081f94: 24 5c:       ldw (ru6)       r0, sp[0x24]
             0x00081f96: 1b f0 16 7c: bf (lru6)       r0, -0x6d6 <.label114>
             0x00081f9a: 1b f0 1c 77: bu (lu6)        -0x6dc <.label277>
.label250    0x00081f9e: 94 94:       add (2rus)      r1, r1, 0x8
.label251    0x00081fa0: 01 f0 8b 5c: ldw (lru6)      r2, sp[0x4b]
             0x00081fa4: 08 f8 ec 97: ashr (l2rus)    r0, r2, 0x20
             0x00081fa8: 04 f0 30 78: bf (lru6)       r0, 0x130 <.label278>
             0x00081fac: 02 97:       neg (2r)        r4, r2
             0x00081fae: 02 f0 44 7f: ldaw (lu6)      r11, cp[0x84]
             0x00081fb2: b4 00:       stw (2rus)      r11, r1[0x0]
             0x00081fb4: 44 92:       add (2rus)      r0, r1, 0x4
             0x00081fb6: 03 f0 d1 6e: ldw (lru6)      r11, cp[0xd1]
             0x00081fba: ae c1:       lss (3r)        r2, r11, r2
             0x00081fbc: a2 70:       bt (ru6)        r2, 0x22 <.label279>
.label282    0x00081fbe: 30 00:       stw (2rus)      r3, r0[0x0]
             0x00081fc0: 01 f0 08 5c: ldw (lru6)      r0, sp[0x48]
             0x00081fc4: 40 fa ec 9f: ldaw (l2rus)    r0, r0[0x4]
             0x00081fc8: 01 f0 08 54: stw (lru6)      r0, sp[0x48]
             0x00081fcc: 01 f0 07 5c: ldw (lru6)      r0, sp[0x47]
             0x00081fd0: 21 90:       add (2rus)      r2, r0, 0x1
             0x00081fd2: 01 f0 87 54: stw (lru6)      r2, sp[0x47]
             0x00081fd6: 80 c4:       lss (3r)        r0, r0, r8
             0x00081fd8: 0b 70:       bt (ru6)        r0, 0xb <.label280>
             0x00081fda: cc 90:       add (2rus)      r0, r7, 0x0
             0x00081fdc: 01 f0 46 64: ldaw (lru6)     r1, sp[0x46]
             0x00081fe0: 6c 90:       add (2rus)      r6, r3, 0x0
             0x00081fe2: 01 f0 0f d1: bl (lu10)       0x50f <__sprint>
             0x00081fe6: f8 90:       add (2rus)      r3, r6, 0x0
             0x00081fe8: d4 90:       add (2rus)      r1, r5, 0x0
             0x00081fea: 03 78:       bf (ru6)        r0, 0x3 <.label281>
             0x00081fec: 13 f0 0b 73: bu (lu6)        0x4cb <.label192>
.label280    0x00081ff0: 94 94:       add (2rus)      r1, r1, 0x8
.label281    0x00081ff2: 40 fb ec a7: ldaw (l2rus)    r4, r4[-0x4]
             0x00081ff6: 02 f0 44 7f: ldaw (lu6)      r11, cp[0x84]
             0x00081ffa: b4 00:       stw (2rus)      r11, r1[0x0]
             0x00081ffc: 44 92:       add (2rus)      r0, r1, 0x4
             0x00081ffe: 6c c2:       lss (3r)        r2, r3, r4
             0x00082000: a2 74:       bt (ru6)        r2, -0x22 <.label282>
.label279    0x00082002: 40 00:       stw (2rus)      r4, r0[0x0]
             0x00082004: 01 f0 08 5c: ldw (lru6)      r0, sp[0x48]
             0x00082008: 40 12:       add (3r)        r0, r0, r4
             0x0008200a: 01 f0 08 54: stw (lru6)      r0, sp[0x48]
             0x0008200e: 01 f0 07 5c: ldw (lru6)      r0, sp[0x47]
             0x00082012: 21 90:       add (2rus)      r2, r0, 0x1
             0x00082014: 01 f0 87 54: stw (lru6)      r2, sp[0x47]
             0x00082018: 80 c4:       lss (3r)        r0, r0, r8
             0x0008201a: 03 f0 36 70: bt (lru6)       r0, 0xf6 <.label283>
             0x0008201e: cc 90:       add (2rus)      r0, r7, 0x0
             0x00082020: 01 f0 46 64: ldaw (lru6)     r1, sp[0x46]
             0x00082024: 4c 90:       add (2rus)      r4, r3, 0x0
             0x00082026: 01 f0 ed d0: bl (lu10)       0x4ed <__sprint>
             0x0008202a: f0 90:       add (2rus)      r3, r4, 0x0
             0x0008202c: d4 90:       add (2rus)      r1, r5, 0x0
             0x0008202e: a2 5c:       ldw (ru6)       r2, sp[0x22]
             0x00082030: 03 f0 2d 78: bf (lru6)       r0, 0xed <.label284>
             0x00082034: 12 f0 27 73: bu (lu6)        0x4a7 <.label192>
.label259    0x00082038: 65 6a:       ldc (ru6)       r9, 0x25
             0x0008203a: 02 f0 0e 73: bu (lu6)        0x8e <.label265>
.label248    0x0008203e: 5d 55:       stw (ru6)       r5, sp[0x1d]
             0x00082040: 03 f0 1f 68: ldc (lru6)      r0, 0xdf
             0x00082044: 30 3a:       and (3r)        r11, r8, r0
             0x00082046: 01 f0 01 68: ldc (lru6)      r0, 0x41
             0x0008204a: 8c 31:       eq (3r)         r0, r11, r0
             0x0008204c: 02 f0 3e 78: bf (lru6)       r0, 0xbe <.label285>
             0x00082050: 24 54:       stw (ru6)       r0, sp[0x24]
             0x00082052: 01 f0 21 68: ldc (lru6)      r0, 0x61
             0x00082056: 80 31:       eq (3r)         r0, r8, r0
             0x00082058: c0 68:       ldc (ru6)       r3, 0x0
             0x0008205a: 70 68:       ldc (ru6)       r1, 0x30
             0x0008205c: ab 64:       ldaw (ru6)      r2, sp[0x2b]
             0x0008205e: 1b f8 ec 8f: st8 (l3r)       r1, r2[r3]
             0x00082062: 04 f0 01 70: bt (lru6)       r0, 0x101 <.label286>
             0x00082066: 01 f0 18 68: ldc (lru6)      r0, 0x58
             0x0008206a: 03 f0 3f 73: bu (lu6)        0xff <.label287>
.label140    0x0008206e: 10 68:       ldc (ru6)       r0, 0x10
             0x00082070: 6a 5c:       ldw (ru6)       r1, sp[0x2a]
             0x00082072: 14 40:       or (3r)         r1, r1, r0
             0x00082074: 6a 54:       stw (ru6)       r1, sp[0x2a]
             0x00082076: 01 f0 04 6a: ldc (lru6)      r8, 0x44
.label146    0x0008207a: 20 68:       ldc (ru6)       r0, 0x20
             0x0008207c: 6a 5c:       ldw (ru6)       r1, sp[0x2a]
             0x0008207e: 04 38:       and (3r)        r0, r1, r0
             0x00082080: 08 78:       bf (ru6)        r0, 0x8 <.label288>
             0x00082082: 66 55:       stw (ru6)       r5, sp[0x26]
             0x00082084: 1d 5c:       ldw (ru6)       r0, sp[0x1d]
             0x00082086: 41 08:       ldw (2rus)      r4, r0[0x1]
             0x00082088: 70 08:       ldw (2rus)      r7, r0[0x0]
             0x0008208a: 90 94:       add (2rus)      r1, r0, 0x8
             0x0008208c: 34 92:       add (2rus)      r11, r9, 0x0
             0x0008208e: 08 f0 27 73: bu (lu6)        0x227 <.label289>
.label288    0x00082092: 66 55:       stw (ru6)       r5, sp[0x26]
             0x00082094: 10 68:       ldc (ru6)       r0, 0x10
             0x00082096: 04 38:       and (3r)        r0, r1, r0
             0x00082098: 9d 5c:       ldw (ru6)       r2, sp[0x1d]
             0x0008209a: 34 90:       add (2rus)      r3, r1, 0x0
             0x0008209c: 03 f0 16 78: bf (lru6)       r0, 0xd6 <.label290>
             0x000820a0: 58 92:       add (2rus)      r1, r2, 0x4
             0x000820a2: 78 08:       ldw (2rus)      r7, r2[0x0]
             0x000820a4: 34 92:       add (2rus)      r11, r9, 0x0
             0x000820a6: 08 f0 19 73: bu (lu6)        0x219 <.label291>
.label142    0x000820aa: 10 68:       ldc (ru6)       r0, 0x10
             0x000820ac: 6a 5c:       ldw (ru6)       r1, sp[0x2a]
             0x000820ae: 14 40:       or (3r)         r1, r1, r0
             0x000820b0: 6a 54:       stw (ru6)       r1, sp[0x2a]
             0x000820b2: 01 f0 0f 69: ldc (lru6)      r4, 0x4f
.label151    0x000820b6: 20 68:       ldc (ru6)       r0, 0x20
             0x000820b8: aa 5c:       ldw (ru6)       r2, sp[0x2a]
             0x000820ba: 08 38:       and (3r)        r0, r2, r0
             0x000820bc: 01 f0 29 78: bf (lru6)       r0, 0x69 <.label292>
             0x000820c0: 1c 55:       stw (ru6)       r4, sp[0x1c]
             0x000820c2: 66 55:       stw (ru6)       r5, sp[0x26]
             0x000820c4: 1d 5c:       ldw (ru6)       r0, sp[0x1d]
             0x000820c6: 41 08:       ldw (2rus)      r4, r0[0x1]
             0x000820c8: 70 08:       ldw (2rus)      r7, r0[0x0]
             0x000820ca: 80 94:       add (2rus)      r0, r0, 0x8
             0x000820cc: 1d 54:       stw (ru6)       r0, sp[0x1d]
             0x000820ce: 00 68:       ldc (ru6)       r0, 0x0
             0x000820d0: 09 f0 31 73: bu (lu6)        0x271 <.label293>
.label144    0x000820d4: 10 68:       ldc (ru6)       r0, 0x10
             0x000820d6: 6a 5c:       ldw (ru6)       r1, sp[0x2a]
             0x000820d8: 14 40:       or (3r)         r1, r1, r0
             0x000820da: 6a 54:       stw (ru6)       r1, sp[0x2a]
             0x000820dc: 01 f0 55 68: ldc (lru6)      r1, 0x55
.label153    0x000820e0: 20 68:       ldc (ru6)       r0, 0x20
             0x000820e2: ea 5c:       ldw (ru6)       r3, sp[0x2a]
             0x000820e4: 0c 38:       and (3r)        r0, r3, r0
             0x000820e6: 01 f0 1e 78: bf (lru6)       r0, 0x5e <.label294>
             0x000820ea: 66 55:       stw (ru6)       r5, sp[0x26]
             0x000820ec: 1d 5c:       ldw (ru6)       r0, sp[0x1d]
             0x000820ee: 41 08:       ldw (2rus)      r4, r0[0x1]
             0x000820f0: 70 08:       ldw (2rus)      r7, r0[0x0]
             0x000820f2: 80 94:       add (2rus)      r0, r0, 0x8
             0x000820f4: 1d 54:       stw (ru6)       r0, sp[0x1d]
             0x000820f6: d1 a6:       mkmsk (rus)     r0, 0x1
             0x000820f8: 5c 54:       stw (ru6)       r1, sp[0x1c]
             0x000820fa: 09 f0 1c 73: bu (lu6)        0x25c <.label293>
.label145    0x000820fe: 03 f0 5d 7f: ldaw (lu6)      r11, cp[0xdd]
.label154    0x00082102: 20 68:       ldc (ru6)       r0, 0x20
             0x00082104: aa 5c:       ldw (ru6)       r2, sp[0x2a]
             0x00082106: 08 38:       and (3r)        r0, r2, r0
             0x00082108: 01 f0 16 78: bf (lru6)       r0, 0x56 <.label295>
             0x0008210c: 66 55:       stw (ru6)       r5, sp[0x26]
             0x0008210e: 1d 5c:       ldw (ru6)       r0, sp[0x1d]
             0x00082110: 41 08:       ldw (2rus)      r4, r0[0x1]
             0x00082112: 70 08:       ldw (2rus)      r7, r0[0x0]
             0x00082114: 80 94:       add (2rus)      r0, r0, 0x8
             0x00082116: 1d 54:       stw (ru6)       r0, sp[0x1d]
             0x00082118: 38 90:       add (2rus)      r3, r2, 0x0
             0x0008211a: 08 f0 36 73: bu (lu6)        0x236 <.label296>
.label152    0x0008211e: 66 55:       stw (ru6)       r5, sp[0x26]
             0x00082120: 1d 5c:       ldw (ru6)       r0, sp[0x1d]
             0x00082122: 50 92:       add (2rus)      r1, r0, 0x4
             0x00082124: 70 08:       ldw (2rus)      r7, r0[0x0]
             0x00082126: 00 69:       ldc (ru6)       r4, 0x0
             0x00082128: 02 68:       ldc (ru6)       r0, 0x2
             0x0008212a: 20 90:       add (2rus)      r2, r0, 0x0
             0x0008212c: 2a 5c:       ldw (ru6)       r0, sp[0x2a]
             0x0008212e: 02 40:       or (3r)         r0, r0, r2
             0x00082130: 2a 54:       stw (ru6)       r0, sp[0x2a]
             0x00082132: 30 68:       ldc (ru6)       r0, 0x30
             0x00082134: eb 64:       ldaw (ru6)      r3, sp[0x2b]
             0x00082136: 4c fa ec 8f: st8 (l3r)       r0, r3[r4]
             0x0008213a: d1 a6:       mkmsk (rus)     r0, 0x1
             0x0008213c: 0c 40:       or (3r)         r0, r3, r0
             0x0008213e: 01 f0 f8 68: ldc (lru6)      r3, 0x78
             0x00082142: dc 54:       stw (ru6)       r3, sp[0x1c]
             0x00082144: 70 fa ec 8f: st8 (l3r)       r3, r0[r4]
             0x00082148: 03 f0 62 7f: ldaw (lu6)      r11, cp[0xe2]
             0x0008214c: d9 56:       stw (ru6)       r11, sp[0x19]
             0x0008214e: 08 90:       add (2rus)      r0, r2, 0x0
             0x00082150: 5d 54:       stw (ru6)       r1, sp[0x1d]
             0x00082152: 08 f0 30 73: bu (lu6)        0x230 <.label293>
.label264    0x00082156: 94 94:       add (2rus)      r1, r1, 0x8
             0x00082158: a2 5c:       ldw (ru6)       r2, sp[0x22]
.label265    0x0008215a: a2 54:       stw (ru6)       r2, sp[0x22]
             0x0008215c: 2a 5c:       ldw (ru6)       r0, sp[0x2a]
             0x0008215e: d1 46:       zext (rus)      r0, 0x1
             0x00082160: 05 f0 08 7c: bf (lru6)       r0, -0x148 <.label214>
             0x00082164: 1b 5c:       ldw (ru6)       r0, sp[0x1b]
             0x00082166: 04 00:       stw (2rus)      r0, r1[0x0]
             0x00082168: d1 a6:       mkmsk (rus)     r0, 0x1
             0x0008216a: 05 00:       stw (2rus)      r0, r1[0x1]
             0x0008216c: 01 f0 08 5c: ldw (lru6)      r0, sp[0x48]
             0x00082170: 01 90:       add (2rus)      r0, r0, 0x1
             0x00082172: 01 f0 13 73: bu (lu6)        0x53 <.label243>
.label253    0x00082176: c4 90:       add (2rus)      r0, r5, 0x0
             0x00082178: 68 55:       stw (ru6)       r5, sp[0x28]
             0x0008217a: 54 90:       add (2rus)      r5, r1, 0x0
             0x0008217c: 02 f0 2e d6: bl (lu10)       -0xa2e <strlen>
             0x00082180: e4 90:       add (2rus)      r2, r5, 0x0
             0x00082182: 50 90:       add (2rus)      r5, r0, 0x0
             0x00082184: a4 54:       stw (ru6)       r2, sp[0x24]
             0x00082186: 1c 56:       stw (ru6)       r8, sp[0x1c]
             0x00082188: 5d 56:       stw (ru6)       r9, sp[0x1d]
             0x0008218a: e3 5d:       ldw (ru6)       r7, sp[0x23]
             0x0008218c: c0 6a:       ldc (ru6)       r11, 0x0
             0x0008218e: 17 f0 30 77: bu (lu6)        -0x5f0 <.label256>
.label292    0x00082192: 66 55:       stw (ru6)       r5, sp[0x26]
             0x00082194: 10 68:       ldc (ru6)       r0, 0x10
             0x00082196: 08 38:       and (3r)        r0, r2, r0
             0x00082198: 5d 5c:       ldw (ru6)       r1, sp[0x1d]
             0x0008219a: 01 f0 3e 78: bf (lru6)       r0, 0x7e <.label297>
             0x0008219e: 1c 55:       stw (ru6)       r4, sp[0x1c]
             0x000821a0: 74 08:       ldw (2rus)      r7, r1[0x0]
             0x000821a2: 07 f0 15 73: bu (lu6)        0x1d5 <.label298>
.label294    0x000821a6: 66 55:       stw (ru6)       r5, sp[0x26]
             0x000821a8: 10 68:       ldc (ru6)       r0, 0x10
             0x000821aa: 0c 38:       and (3r)        r0, r3, r0
             0x000821ac: 9d 5c:       ldw (ru6)       r2, sp[0x1d]
             0x000821ae: 01 f0 3f 78: bf (lru6)       r0, 0x7f <.label299>
             0x000821b2: 78 08:       ldw (2rus)      r7, r2[0x0]
             0x000821b4: 07 f0 18 73: bu (lu6)        0x1d8 <.label300>
.label295    0x000821b8: 66 55:       stw (ru6)       r5, sp[0x26]
             0x000821ba: 10 68:       ldc (ru6)       r0, 0x10
             0x000821bc: 08 38:       and (3r)        r0, r2, r0
             0x000821be: 5d 5c:       ldw (ru6)       r1, sp[0x1d]
             0x000821c0: 02 f0 00 78: bf (lru6)       r0, 0x80 <.label301>
             0x000821c4: 74 08:       ldw (2rus)      r7, r1[0x0]
             0x000821c6: 38 90:       add (2rus)      r3, r2, 0x0
             0x000821c8: 07 f0 1c 73: bu (lu6)        0x1dc <.label302>
.label285    0x000821cc: 24 54:       stw (ru6)       r0, sp[0x24]
             0x000821ce: d0 a6:       mkmsk (rus)     r0, 0x20
             0x000821d0: a5 5c:       ldw (ru6)       r2, sp[0x25]
             0x000821d2: 08 30:       eq (3r)         r0, r2, r0
             0x000821d4: c0 68:       ldc (ru6)       r3, 0x0
             0x000821d6: 02 f0 04 70: bt (lru6)       r0, 0x84 <.label303>
             0x000821da: 01 f0 07 68: ldc (lru6)      r0, 0x47
             0x000821de: 8c 31:       eq (3r)         r0, r11, r0
             0x000821e0: dc 56:       stw (ru6)       r11, sp[0x1c]
             0x000821e2: 18 b0:       eq (2rus)       r1, r2, 0x0
             0x000821e4: 58 90:       add (2rus)      r5, r2, 0x0
             0x000821e6: 01 38:       and (3r)        r0, r0, r1
             0x000821e8: 01 f0 3d 78: bf (lru6)       r0, 0x7d <.label304>
             0x000821ec: 15 a7:       mkmsk (rus)     r5, 0x1
             0x000821ee: 01 f0 3a 73: bu (lu6)        0x7a <.label304>
.label254    0x000821f2: 68 55:       stw (ru6)       r5, sp[0x28]
             0x000821f4: 1c 91:       add (2rus)      r5, r7, 0x0
             0x000821f6: 64 56:       stw (ru6)       r9, sp[0x24]
             0x000821f8: 1c 56:       stw (ru6)       r8, sp[0x1c]
             0x000821fa: 21 5c:       ldw (ru6)       r0, sp[0x21]
             0x000821fc: 1d 54:       stw (ru6)       r0, sp[0x1d]
             0x000821fe: e3 5d:       ldw (ru6)       r7, sp[0x23]
             0x00082200: c0 6a:       ldc (ru6)       r11, 0x0
             0x00082202: ea 5c:       ldw (ru6)       r3, sp[0x2a]
             0x00082204: a4 91:       add (2rus)      r2, r9, 0x0
             0x00082206: 18 f0 2b 77: bu (lu6)        -0x62b <.label229>
.label283    0x0008220a: 94 94:       add (2rus)      r1, r1, 0x8
.label278    0x0008220c: a2 5c:       ldw (ru6)       r2, sp[0x22]
.label284    0x0008220e: a2 54:       stw (ru6)       r2, sp[0x22]
             0x00082210: 28 5c:       ldw (ru6)       r0, sp[0x28]
             0x00082212: 04 00:       stw (2rus)      r0, r1[0x0]
             0x00082214: 25 00:       stw (2rus)      r2, r1[0x1]
             0x00082216: 01 f0 08 5c: ldw (lru6)      r0, sp[0x48]
             0x0008221a: 02 10:       add (3r)        r0, r0, r2
.label243    0x0008221c: 01 f0 08 54: stw (lru6)      r0, sp[0x48]
             0x00082220: 01 f0 07 5c: ldw (lru6)      r0, sp[0x47]
             0x00082224: 21 90:       add (2rus)      r2, r0, 0x1
             0x00082226: 01 f0 87 54: stw (lru6)      r2, sp[0x47]
             0x0008222a: 80 c4:       lss (3r)        r0, r0, r8
             0x0008222c: 0c 70:       bt (ru6)        r0, 0xc <.label305>
             0x0008222e: cc 90:       add (2rus)      r0, r7, 0x0
             0x00082230: 01 f0 46 64: ldaw (lru6)     r1, sp[0x46]
             0x00082234: 4c 90:       add (2rus)      r4, r3, 0x0
             0x00082236: 00 f0 e5 d3: bl (lu10)       0x3e5 <__sprint>
             0x0008223a: f0 90:       add (2rus)      r3, r4, 0x0
             0x0008223c: d4 90:       add (2rus)      r1, r5, 0x0
             0x0008223e: 06 f0 37 7c: bf (lru6)       r0, -0x1b7 <.label214>
             0x00082242: 0e f0 20 73: bu (lu6)        0x3a0 <.label192>
.label305    0x00082246: 94 94:       add (2rus)      r1, r1, 0x8
             0x00082248: 06 f0 3c 77: bu (lu6)        -0x1bc <.label214>
.label290    0x0008224c: 18 90:       add (2rus)      r1, r2, 0x0
             0x0008224e: 01 f0 00 68: ldc (lru6)      r0, 0x40
             0x00082252: 0c 38:       and (3r)        r0, r3, r0
             0x00082254: 2c 90:       add (2rus)      r2, r3, 0x0
             0x00082256: 04 f0 38 78: bf (lru6)       r0, 0x138 <.label306>
             0x0008225a: 24 90:       add (2rus)      r2, r1, 0x0
             0x0008225c: 58 92:       add (2rus)      r1, r2, 0x4
             0x0008225e: 00 68:       ldc (ru6)       r0, 0x0
             0x00082260: 78 80:       ld16s (3r)      r7, r2[r0]
             0x00082262: 34 92:       add (2rus)      r11, r9, 0x0
             0x00082264: 04 f0 3a 73: bu (lu6)        0x13a <.label291>
.label286    0x00082268: 01 f0 38 68: ldc (lru6)      r0, 0x78
.label287    0x0008226c: dc 56:       stw (ru6)       r11, sp[0x1c]
             0x0008226e: d5 a6:       mkmsk (rus)     r1, 0x1
             0x00082270: ab 64:       ldaw (ru6)      r2, sp[0x2b]
             0x00082272: 19 40:       or (3r)         r1, r2, r1
             0x00082274: 07 f8 ec 8f: st8 (l3r)       r0, r1[r3]
             0x00082278: 02 68:       ldc (ru6)       r0, 0x2
             0x0008227a: 6a 5c:       ldw (ru6)       r1, sp[0x2a]
             0x0008227c: 14 40:       or (3r)         r1, r1, r0
             0x0008227e: 6a 54:       stw (ru6)       r1, sp[0x2a]
             0x00082280: 28 68:       ldc (ru6)       r0, 0x28
             0x00082282: 65 5c:       ldw (ru6)       r1, sp[0x25]
             0x00082284: 04 c0:       lss (3r)        r0, r1, r0
             0x00082286: 29 70:       bt (ru6)        r0, 0x29 <.label307>
             0x00082288: 05 90:       add (2rus)      r0, r1, 0x1
             0x0008228a: 54 90:       add (2rus)      r5, r1, 0x0
             0x0008228c: 02 f0 b8 d5: bl (lu10)       -0x9b8 <malloc>
             0x00082290: 30 90:       add (2rus)      r3, r0, 0x0
             0x00082292: e8 54:       stw (ru6)       r3, sp[0x28]
             0x00082294: e8 70:       bt (ru6)        r3, 0x28 <.label304>
             0x00082296: 0e f0 2b 73: bu (lu6)        0x3ab <.label308>
.label297    0x0008229a: 01 f0 00 68: ldc (lru6)      r0, 0x40
             0x0008229e: 08 38:       and (3r)        r0, r2, r0
             0x000822a0: 05 f0 0f 78: bf (lru6)       r0, 0x14f <.label309>
             0x000822a4: 1c 55:       stw (ru6)       r4, sp[0x1c]
             0x000822a6: 00 68:       ldc (ru6)       r0, 0x0
             0x000822a8: 74 80:       ld16s (3r)      r7, r1[r0]
             0x000822aa: 7d 47:       zext (rus)      r7, 0x10
             0x000822ac: 05 f0 10 73: bu (lu6)        0x150 <.label298>
.label299    0x000822b0: 01 f0 00 68: ldc (lru6)      r0, 0x40
             0x000822b4: 0c 38:       and (3r)        r0, r3, r0
             0x000822b6: 05 f0 11 78: bf (lru6)       r0, 0x151 <.label310>
             0x000822ba: 00 68:       ldc (ru6)       r0, 0x0
             0x000822bc: 78 80:       ld16s (3r)      r7, r2[r0]
             0x000822be: 7d 47:       zext (rus)      r7, 0x10
             0x000822c0: 05 f0 12 73: bu (lu6)        0x152 <.label300>
.label301    0x000822c4: 01 f0 00 68: ldc (lru6)      r0, 0x40
             0x000822c8: 08 38:       and (3r)        r0, r2, r0
             0x000822ca: 05 f0 14 78: bf (lru6)       r0, 0x154 <.label311>
             0x000822ce: 00 68:       ldc (ru6)       r0, 0x0
             0x000822d0: 74 80:       ld16s (3r)      r7, r1[r0]
             0x000822d2: 7d 47:       zext (rus)      r7, 0x10
             0x000822d4: 38 90:       add (2rus)      r3, r2, 0x0
             0x000822d6: 05 f0 15 73: bu (lu6)        0x155 <.label302>
.label307    0x000822da: 54 90:       add (2rus)      r5, r1, 0x0
             0x000822dc: 2c 64:       ldaw (ru6)      r0, sp[0x2c]
             0x000822de: 28 54:       stw (ru6)       r0, sp[0x28]
             0x000822e0: 02 73:       bu (u6)         0x2 <.label304>
.label303    0x000822e2: dc 56:       stw (ru6)       r11, sp[0x1c]
             0x000822e4: 46 69:       ldc (ru6)       r5, 0x6
.label304    0x000822e6: c0 f8 ec 97: ashr (l2rus)    r0, r4, 0x20
             0x000822ea: 05 70:       bt (ru6)        r0, 0x5 <.label312>
             0x000822ec: 00 68:       ldc (ru6)       r0, 0x0
             0x000822ee: 13 54:       stw (ru6)       r0, sp[0x13]
             0x000822f0: 30 91:       add (2rus)      r7, r4, 0x0
             0x000822f2: 1e 55:       stw (ru6)       r4, sp[0x1e]
             0x000822f4: 07 73:       bu (u6)         0x7 <.label313>
.label312    0x000822f6: 02 f0 26 6c: ldw (lru6)      r0, cp[0xa6]
             0x000822fa: 30 f9 ec 0f: xor (l3r)       r7, r4, r0
             0x000822fe: 1e 55:       stw (ru6)       r4, sp[0x1e]
             0x00082300: 2d 68:       ldc (ru6)       r0, 0x2d
             0x00082302: 13 54:       stw (ru6)       r0, sp[0x13]
.label313    0x00082304: 5f 56:       stw (ru6)       r9, sp[0x1f]
             0x00082306: 04 f0 00 68: ldc (lru6)      r0, 0x100
             0x0008230a: 6a 5c:       ldw (ru6)       r1, sp[0x2a]
             0x0008230c: 04 40:       or (3r)         r0, r1, r0
             0x0008230e: 04 91:       add (2rus)      r4, r5, 0x0
             0x00082310: 64 5c:       ldw (ru6)       r1, sp[0x24]
             0x00082312: 02 f0 44 78: bf (lru6)       r1, 0x84 <.label314>
             0x00082316: 14 54:       stw (ru6)       r0, sp[0x14]
             0x00082318: e4 54:       stw (ru6)       r3, sp[0x24]
             0x0008231a: 01 f0 8b 64: ldaw (lru6)     r2, sp[0x4b]
             0x0008231e: 1f 5c:       ldw (ru6)       r0, sp[0x1f]
             0x00082320: dc 90:       add (2rus)      r1, r7, 0x0
             0x00082322: 01 f0 49 d3: bl (lu10)       0x749 <frexp>
             0x00082326: c0 69:       ldc (ru6)       r7, 0x0
             0x00082328: e2 55:       stw (ru6)       r7, sp[0x22]
             0x0008232a: 02 f0 f2 6c: ldw (lru6)      r3, cp[0xb2]
             0x0008232e: ec 90:       add (2rus)      r2, r7, 0x0
             0x00082330: 01 f0 70 d3: bl (lu10)       0x770 <__muldf3>
             0x00082334: 90 90:       add (2rus)      r9, r0, 0x0
             0x00082336: 54 90:       add (2rus)      r5, r1, 0x0
             0x00082338: ec 90:       add (2rus)      r2, r7, 0x0
             0x0008233a: fc 90:       add (2rus)      r3, r7, 0x0
             0x0008233c: 01 f0 0c d3: bl (lu10)       0x70c <__nedf2>
             0x00082340: 03 70:       bt (ru6)        r0, 0x3 <.label315>
             0x00082342: d1 a6:       mkmsk (rus)     r0, 0x1
             0x00082344: 01 f0 0b 54: stw (lru6)      r0, sp[0x4b]
.label315    0x00082348: 25 55:       stw (ru6)       r4, sp[0x25]
             0x0008234a: 01 f0 21 68: ldc (lru6)      r0, 0x61
             0x0008234e: 90 31:       eq (3r)         r1, r8, r0
             0x00082350: 03 f0 5d 7f: ldaw (lu6)      r11, cp[0xdd]
             0x00082354: 8c 91:       add (2rus)      r0, r11, 0x0
             0x00082356: 03 f0 62 7f: ldaw (lu6)      r11, cp[0xe2]
             0x0008235a: e1 56:       stw (ru6)       r11, sp[0x21]
             0x0008235c: 41 70:       bt (ru6)        r1, 0x1 <.label316>
             0x0008235e: 21 54:       stw (ru6)       r0, sp[0x21]
.label316    0x00082360: 22 5d:       ldw (ru6)       r4, sp[0x22]
             0x00082362: 20 55:       stw (ru6)       r4, sp[0x20]
             0x00082364: 80 68:       ldc (ru6)       r2, 0x0
             0x00082366: 02 f0 ee 6c: ldw (lru6)      r3, cp[0xae]
             0x0008236a: 84 91:       add (2rus)      r0, r9, 0x0
             0x0008236c: d4 90:       add (2rus)      r1, r5, 0x0
             0x0008236e: 01 f0 51 d3: bl (lu10)       0x751 <__muldf3>
             0x00082372: 50 90:       add (2rus)      r5, r0, 0x0
             0x00082374: 94 90:       add (2rus)      r9, r1, 0x0
             0x00082376: 02 f0 93 d0: bl (lu10)       0x893 <__fixdfsi>
             0x0008237a: 70 90:       add (2rus)      r7, r0, 0x0
             0x0008237c: 02 f0 be d0: bl (lu10)       0x8be <__floatsidf>
             0x00082380: 20 90:       add (2rus)      r2, r0, 0x0
             0x00082382: 34 90:       add (2rus)      r3, r1, 0x0
             0x00082384: c4 90:       add (2rus)      r0, r5, 0x0
             0x00082386: 94 91:       add (2rus)      r1, r9, 0x0
             0x00082388: 02 f0 e4 d0: bl (lu10)       0x8e4 <__subdf3>
             0x0008238c: 90 90:       add (2rus)      r9, r0, 0x0
             0x0008238e: 54 90:       add (2rus)      r5, r1, 0x0
             0x00082390: 21 5c:       ldw (ru6)       r0, sp[0x21]
             0x00082392: 43 8a:       ld8u (3r)       r0, r0[r7]
             0x00082394: 68 5c:       ldw (ru6)       r1, sp[0x28]
             0x00082396: 44 fa ec 8f: st8 (l3r)       r0, r1[r4]
             0x0008239a: c1 90:       add (2rus)      r0, r4, 0x1
             0x0008239c: 22 54:       stw (ru6)       r0, sp[0x22]
             0x0008239e: 25 5c:       ldw (ru6)       r0, sp[0x25]
             0x000823a0: 40 32:       eq (3r)         r0, r0, r4
             0x000823a2: 07 70:       bt (ru6)        r0, 0x7 <.label317>
             0x000823a4: 80 68:       ldc (ru6)       r2, 0x0
             0x000823a6: 84 91:       add (2rus)      r0, r9, 0x0
             0x000823a8: d4 90:       add (2rus)      r1, r5, 0x0
             0x000823aa: 38 90:       add (2rus)      r3, r2, 0x0
             0x000823ac: 01 f0 d4 d2: bl (lu10)       0x6d4 <__nedf2>
             0x000823b0: 29 74:       bt (ru6)        r0, -0x29 <.label316>
.label317    0x000823b2: 02 f0 f4 6c: ldw (lru6)      r3, cp[0xb4]
             0x000823b6: 84 91:       add (2rus)      r0, r9, 0x0
             0x000823b8: d4 90:       add (2rus)      r1, r5, 0x0
             0x000823ba: 80 68:       ldc (ru6)       r2, 0x0
             0x000823bc: 48 90:       add (2rus)      r4, r2, 0x0
             0x000823be: 01 f0 d1 d2: bl (lu10)       0x6d1 <__gtdf2>
             0x000823c2: c0 c0:       lss (3r)        r0, r4, r0
             0x000823c4: 68 5c:       ldw (ru6)       r1, sp[0x28]
             0x000823c6: a2 5c:       ldw (ru6)       r2, sp[0x22]
             0x000823c8: 16 10:       add (3r)        r1, r1, r2
             0x000823ca: 52 54:       stw (ru6)       r1, sp[0x12]
             0x000823cc: 35 98:       sub (2rus)      r3, r1, 0x1
             0x000823ce: 0f 70:       bt (ru6)        r0, 0xf <.label318>
             0x000823d0: 80 68:       ldc (ru6)       r2, 0x0
             0x000823d2: d1 54:       stw (ru6)       r3, sp[0x11]
             0x000823d4: 02 f0 f4 6c: ldw (lru6)      r3, cp[0xb4]
             0x000823d8: 84 91:       add (2rus)      r0, r9, 0x0
             0x000823da: d4 90:       add (2rus)      r1, r5, 0x0
             0x000823dc: 58 90:       add (2rus)      r5, r2, 0x0
             0x000823de: 01 f0 bb d2: bl (lu10)       0x6bb <__nedf2>
             0x000823e2: d1 5c:       ldw (ru6)       r3, sp[0x11]
             0x000823e4: 02 f0 0e 70: bt (lru6)       r0, 0x8e <.label319>
             0x000823e8: 1d 47:       zext (rus)      r7, 0x1
             0x000823ea: 02 f0 cb 79: bf (lru6)       r7, 0x8b <.label319>
.label318    0x000823ee: 01 f0 cd 54: stw (lru6)      r3, sp[0x4d]
             0x000823f2: 4c 8a:       ld8u (3r)       r0, r3[r4]
             0x000823f4: 94 a7:       mkmsk (rus)     r1, 0x4
             0x000823f6: a1 5c:       ldw (ru6)       r2, sp[0x21]
             0x000823f8: 19 88:       ld8u (3r)       r1, r2[r1]
             0x000823fa: 11 30:       eq (3r)         r1, r0, r1
             0x000823fc: 01 f0 4f 78: bf (lru6)       r1, 0x4f <.label320>
.label321    0x00082400: 70 68:       ldc (ru6)       r1, 0x30
             0x00082402: 5c fa ec 8f: st8 (l3r)       r1, r3[r4]
             0x00082406: 01 f0 4d 5c: ldw (lru6)      r1, sp[0x4d]
             0x0008240a: 35 98:       sub (2rus)      r3, r1, 0x1
             0x0008240c: 01 f0 cd 54: stw (lru6)      r3, sp[0x4d]
             0x00082410: d8 a6:       mkmsk (rus)     r2, 0x20
             0x00082412: 16 88:       ld8u (3r)       r1, r1[r2]
             0x00082414: 24 30:       eq (3r)         r2, r1, r0
             0x00082416: 8c 74:       bt (ru6)        r2, -0xc <.label321>
             0x00082418: e0 90:       add (2rus)      r2, r4, 0x0
             0x0008241a: 01 f0 02 73: bu (lu6)        0x42 <.label322>
.label314    0x0008241e: 14 54:       stw (ru6)       r0, sp[0x14]
             0x00082420: 01 f0 06 68: ldc (lru6)      r0, 0x46
             0x00082424: 9c 5c:       ldw (ru6)       r2, sp[0x1c]
             0x00082426: 98 30:       eq (3r)         r9, r2, r0
             0x00082428: 01 f0 4e 64: ldaw (lru6)     r1, sp[0x4e]
             0x0008242c: 44 7a:       bf (ru6)        r9, 0x4 <.label323>
             0x0008242e: e4 54:       stw (ru6)       r3, sp[0x24]
             0x00082430: da a6:       mkmsk (rus)     r2, 0x2
             0x00082432: 10 91:       add (2rus)      r5, r4, 0x0
             0x00082434: 06 73:       bu (u6)         0x6 <.label324>
.label323    0x00082436: e4 54:       stw (ru6)       r3, sp[0x24]
             0x00082438: 01 f0 05 68: ldc (lru6)      r0, 0x45
             0x0008243c: 08 30:       eq (3r)         r0, r2, r0
             0x0008243e: 10 11:       add (3r)        r5, r4, r0
             0x00082440: 82 68:       ldc (ru6)       r2, 0x2
.label324    0x00082442: 01 f0 0d 64: ldaw (lru6)     r0, sp[0x4d]
             0x00082446: 11 f8 ec f7: std (l2rus)     r0, r1, sp[0x1]
             0x0008244a: 01 f0 0b 64: ldaw (lru6)     r0, sp[0x4b]
             0x0008244e: 01 54:       stw (ru6)       r0, sp[0x1]
             0x00082450: 1f 5c:       ldw (ru6)       r0, sp[0x1f]
             0x00082452: dc 90:       add (2rus)      r1, r7, 0x0
             0x00082454: f4 90:       add (2rus)      r3, r5, 0x0
             0x00082456: 02 f0 87 d0: bl (lu10)       0x887 <dtoa>
             0x0008245a: 28 54:       stw (ru6)       r0, sp[0x28]
             0x0008245c: 20 68:       ldc (ru6)       r0, 0x20
             0x0008245e: 80 41:       or (3r)         r0, r8, r0
             0x00082460: 01 f0 67 68: ldc (lru6)      r1, 0x67
             0x00082464: 01 30:       eq (3r)         r0, r0, r1
             0x00082466: 04 78:       bf (ru6)        r0, 0x4 <.label325>
             0x00082468: 2a 5c:       ldw (ru6)       r0, sp[0x2a]
             0x0008246a: d1 46:       zext (rus)      r0, 0x1
             0x0008246c: 01 f0 24 78: bf (lru6)       r0, 0x64 <.label326>
.label325    0x00082470: 63 7a:       bf (ru6)        r9, 0x23 <.label327>
             0x00082472: 00 68:       ldc (ru6)       r0, 0x0
             0x00082474: 68 5c:       ldw (ru6)       r1, sp[0x28]
             0x00082476: 04 88:       ld8u (3r)       r0, r1[r0]
             0x00082478: 70 68:       ldc (ru6)       r1, 0x30
             0x0008247a: 11 30:       eq (3r)         r1, r0, r1
             0x0008247c: 1f 5c:       ldw (ru6)       r0, sp[0x1f]
             0x0008247e: 05 f0 44 78: bf (lru6)       r1, 0x144 <.label328>
             0x00082482: 80 68:       ldc (ru6)       r2, 0x0
             0x00082484: dc 90:       add (2rus)      r1, r7, 0x0
             0x00082486: 38 90:       add (2rus)      r3, r2, 0x0
             0x00082488: 01 f0 66 d2: bl (lu10)       0x666 <__nedf2>
             0x0008248c: 04 f0 3d 78: bf (lru6)       r0, 0x13d <.label328>
             0x00082490: 25 55:       stw (ru6)       r4, sp[0x25]
             0x00082492: d1 a6:       mkmsk (rus)     r0, 0x1
             0x00082494: 41 1a:       sub (3r)        r0, r0, r5
             0x00082496: 01 f0 0b 54: stw (lru6)      r0, sp[0x4b]
             0x0008249a: 04 f0 39 73: bu (lu6)        0x139 <.label329>
.label320    0x0008249e: e0 90:       add (2rus)      r2, r4, 0x0
             0x000824a0: 10 90:       add (2rus)      r1, r0, 0x0
.label322    0x000824a2: 4c 90:       add (2rus)      r4, r3, 0x0
             0x000824a4: 39 68:       ldc (ru6)       r0, 0x39
             0x000824a6: 04 30:       eq (3r)         r0, r1, r0
             0x000824a8: e3 5d:       ldw (ru6)       r7, sp[0x23]
             0x000824aa: c0 6a:       ldc (ru6)       r11, 0x0
             0x000824ac: dc 5c:       ldw (ru6)       r3, sp[0x1c]
             0x000824ae: 07 78:       bf (ru6)        r0, 0x7 <.label330>
             0x000824b0: 0a 68:       ldc (ru6)       r0, 0xa
             0x000824b2: 61 5c:       ldw (ru6)       r1, sp[0x21]
             0x000824b4: 04 88:       ld8u (3r)       r0, r1[r0]
             0x000824b6: 04 73:       bu (u6)         0x4 <.label331>
.label327    0x000824b8: 25 55:       stw (ru6)       r4, sp[0x25]
             0x000824ba: 04 f0 2a 73: bu (lu6)        0x12a <.label332>
.label330    0x000824be: 05 90:       add (2rus)      r0, r1, 0x1
.label331    0x000824c0: c2 f8 ec 8f: st8 (l3r)       r0, r4[r2]
             0x000824c4: 52 5c:       ldw (ru6)       r1, sp[0x12]
             0x000824c6: 05 f0 0f 73: bu (lu6)        0x14f <.label333>
.label306    0x000824ca: 08 f0 00 68: ldc (lru6)      r0, 0x200
             0x000824ce: 08 38:       and (3r)        r0, r2, r0
             0x000824d0: 24 90:       add (2rus)      r2, r1, 0x0
             0x000824d2: 58 92:       add (2rus)      r1, r2, 0x4
             0x000824d4: 78 08:       ldw (2rus)      r7, r2[0x0]
             0x000824d6: 34 92:       add (2rus)      r11, r9, 0x0
             0x000824d8: 01 78:       bf (ru6)        r0, 0x1 <.label291>
             0x000824da: 7c 37:       sext (rus)      r7, 0x8
.label291    0x000824dc: 0c f9 ec 97: ashr (l2rus)    r4, r7, 0x20
.label289    0x000824e0: d1 a6:       mkmsk (rus)     r0, 0x1
             0x000824e2: e0 f8 ec 97: ashr (l2rus)    r2, r4, 0x20
             0x000824e6: 8a 78:       bf (ru6)        r2, 0xa <.label334>
             0x000824e8: 80 68:       ldc (ru6)       r2, 0x0
             0x000824ea: bb fa ce 0e: lsub (l5r)      r3, r7, r2, r7, r2
             0x000824ee: 88 fa cf 0e: lsub (l5r)      r3, r4, r2, r4, r3
             0x000824f2: ed 68:       ldc (ru6)       r3, 0x2d
             0x000824f4: 01 f0 4c 66: ldaw (lru6)     r9, sp[0x4c]
             0x000824f8: b6 f9 ec 8f: st8 (l3r)       r3, r9[r2]
.label334    0x000824fc: 1c 56:       stw (ru6)       r8, sp[0x1c]
             0x000824fe: 5d 54:       stw (ru6)       r1, sp[0x1d]
             0x00082500: 01 f0 1f 73: bu (lu6)        0x5f <.label335>
.label319    0x00082504: a5 5c:       ldw (ru6)       r2, sp[0x25]
             0x00082506: 22 5c:       ldw (ru6)       r0, sp[0x22]
             0x00082508: 08 18:       sub (3r)        r0, r2, r0
             0x0008250a: 01 90:       add (2rus)      r0, r0, 0x1
             0x0008250c: d5 a6:       mkmsk (rus)     r1, 0x1
             0x0008250e: 01 c0:       lss (3r)        r0, r0, r1
             0x00082510: 04 f0 26 70: bt (lru6)       r0, 0x126 <.label336>
             0x00082514: 20 5c:       ldw (ru6)       r0, sp[0x20]
             0x00082516: 08 18:       sub (3r)        r0, r2, r0
             0x00082518: e3 5d:       ldw (ru6)       r7, sp[0x23]
             0x0008251a: c0 6a:       ldc (ru6)       r11, 0x0
             0x0008251c: 9c 90:       add (2rus)      r9, r3, 0x0
             0x0008251e: dc 5c:       ldw (ru6)       r3, sp[0x1c]
             0x00082520: 52 5c:       ldw (ru6)       r1, sp[0x12]
.label337    0x00082522: c6 91:       add (2rus)      r4, r9, 0x2
             0x00082524: b0 68:       ldc (ru6)       r2, 0x30
             0x00082526: 65 fa ec 8f: st8 (l3r)       r2, r1[r5]
             0x0008252a: 01 98:       sub (2rus)      r0, r0, 0x1
             0x0008252c: e4 c0:       lss (3r)        r2, r5, r0
             0x0008252e: 94 90:       add (2rus)      r9, r1, 0x0
             0x00082530: d0 90:       add (2rus)      r1, r4, 0x0
             0x00082532: 89 74:       bt (ru6)        r2, -0x9 <.label337>
             0x00082534: 04 f0 18 73: bu (lu6)        0x118 <.label333>
.label326    0x00082538: 25 55:       stw (ru6)       r4, sp[0x25]
             0x0008253a: 01 f0 0d 5c: ldw (lru6)      r0, sp[0x4d]
             0x0008253e: 03 f0 35 73: bu (lu6)        0xf5 <.label338>
.label309    0x00082542: 1c 55:       stw (ru6)       r4, sp[0x1c]
             0x00082544: 08 f0 00 68: ldc (lru6)      r0, 0x200
             0x00082548: 08 38:       and (3r)        r0, r2, r0
             0x0008254a: 74 08:       ldw (2rus)      r7, r1[0x0]
             0x0008254c: 01 78:       bf (ru6)        r0, 0x1 <.label298>
             0x0008254e: 7c 47:       zext (rus)      r7, 0x8
.label298    0x00082550: 34 92:       add (2rus)      r11, r9, 0x0
             0x00082552: 54 92:       add (2rus)      r1, r1, 0x4
             0x00082554: 5d 54:       stw (ru6)       r1, sp[0x1d]
             0x00082556: 00 69:       ldc (ru6)       r4, 0x0
             0x00082558: c0 90:       add (2rus)      r0, r4, 0x0
             0x0008255a: 2e 73:       bu (u6)         0x2e <.label339>
.label310    0x0008255c: 08 f0 00 68: ldc (lru6)      r0, 0x200
             0x00082560: 0c 38:       and (3r)        r0, r3, r0
             0x00082562: 78 08:       ldw (2rus)      r7, r2[0x0]
             0x00082564: 01 78:       bf (ru6)        r0, 0x1 <.label300>
             0x00082566: 7c 47:       zext (rus)      r7, 0x8
.label300    0x00082568: 34 92:       add (2rus)      r11, r9, 0x0
             0x0008256a: 68 92:       add (2rus)      r2, r2, 0x4
             0x0008256c: 9d 54:       stw (ru6)       r2, sp[0x1d]
             0x0008256e: 00 69:       ldc (ru6)       r4, 0x0
             0x00082570: d1 a6:       mkmsk (rus)     r0, 0x1
             0x00082572: 5c 54:       stw (ru6)       r1, sp[0x1c]
             0x00082574: 21 73:       bu (u6)         0x21 <.label339>
.label311    0x00082576: 08 f0 00 68: ldc (lru6)      r0, 0x200
             0x0008257a: 08 38:       and (3r)        r0, r2, r0
             0x0008257c: 74 08:       ldw (2rus)      r7, r1[0x0]
             0x0008257e: 38 90:       add (2rus)      r3, r2, 0x0
             0x00082580: 01 78:       bf (ru6)        r0, 0x1 <.label302>
             0x00082582: 7c 47:       zext (rus)      r7, 0x8
.label302    0x00082584: 54 92:       add (2rus)      r1, r1, 0x4
             0x00082586: 5d 54:       stw (ru6)       r1, sp[0x1d]
             0x00082588: 00 69:       ldc (ru6)       r4, 0x0
.label296    0x0008258a: 0c 90:       add (2rus)      r0, r3, 0x0
             0x0008258c: d1 46:       zext (rus)      r0, 0x1
             0x0008258e: 0f 78:       bf (ru6)        r0, 0xf <.label340>
             0x00082590: 0c 43:       or (3r)         r0, r7, r4
             0x00082592: 0d 78:       bf (ru6)        r0, 0xd <.label340>
             0x00082594: 00 68:       ldc (ru6)       r0, 0x0
             0x00082596: 70 68:       ldc (ru6)       r1, 0x30
             0x00082598: ab 64:       ldaw (ru6)      r2, sp[0x2b]
             0x0008259a: 18 f8 ec 8f: st8 (l3r)       r1, r2[r0]
             0x0008259e: d5 a6:       mkmsk (rus)     r1, 0x1
             0x000825a0: 19 40:       or (3r)         r1, r2, r1
             0x000825a2: 84 f8 ec 8f: st8 (l3r)       r8, r1[r0]
             0x000825a6: 02 68:       ldc (ru6)       r0, 0x2
             0x000825a8: 3c 40:       or (3r)         r3, r3, r0
             0x000825aa: ea 54:       stw (ru6)       r3, sp[0x2a]
             0x000825ac: 02 73:       bu (u6)         0x2 <.label341>
.label340    0x000825ae: ea 54:       stw (ru6)       r3, sp[0x2a]
             0x000825b0: 02 68:       ldc (ru6)       r0, 0x2
.label341    0x000825b2: d9 56:       stw (ru6)       r11, sp[0x19]
             0x000825b4: 1c 56:       stw (ru6)       r8, sp[0x1c]
.label293    0x000825b6: 34 92:       add (2rus)      r11, r9, 0x0
.label339    0x000825b8: 40 68:       ldc (ru6)       r1, 0x0
             0x000825ba: 01 f0 8c 64: ldaw (lru6)     r2, sp[0x4c]
             0x000825be: 19 f8 ec 8f: st8 (l3r)       r1, r2[r1]
.label335    0x000825c2: 65 5c:       ldw (ru6)       r1, sp[0x25]
             0x000825c4: 14 f8 ec 97: ashr (l2rus)    r1, r1, 0x20
             0x000825c8: 45 70:       bt (ru6)        r1, 0x5 <.label342>
             0x000825ca: 03 f0 44 6c: ldw (lru6)      r1, cp[0xc4]
             0x000825ce: aa 5c:       ldw (ru6)       r2, sp[0x2a]
             0x000825d0: 29 38:       and (3r)        r2, r2, r1
             0x000825d2: aa 54:       stw (ru6)       r2, sp[0x2a]
.label342    0x000825d4: 59 5d:       ldw (ru6)       r5, sp[0x19]
             0x000825d6: 1c 43:       or (3r)         r1, r7, r4
             0x000825d8: 54 70:       bt (ru6)        r1, 0x14 <.label343>
             0x000825da: 65 5c:       ldw (ru6)       r1, sp[0x25]
             0x000825dc: 52 70:       bt (ru6)        r1, 0x12 <.label343>
             0x000825de: 76 64:       ldaw (ru6)      r1, sp[0x36]
             0x000825e0: 94 90:       add (2rus)      r9, r1, 0x0
             0x000825e2: 02 f0 06 70: bt (lru6)       r0, 0x86 <.label344>
             0x000825e6: 2a 5c:       ldw (ru6)       r0, sp[0x2a]
             0x000825e8: d1 46:       zext (rus)      r0, 0x1
             0x000825ea: 76 64:       ldaw (ru6)      r1, sp[0x36]
             0x000825ec: 94 90:       add (2rus)      r9, r1, 0x0
             0x000825ee: 02 f0 00 78: bf (lru6)       r0, 0x80 <.label344>
             0x000825f2: 00 68:       ldc (ru6)       r0, 0x0
             0x000825f4: 70 68:       ldc (ru6)       r1, 0x30
             0x000825f6: 98 5c:       ldw (ru6)       r2, sp[0x18]
             0x000825f8: 18 f8 ec 8f: st8 (l3r)       r1, r2[r0]
             0x000825fc: 98 90:       add (2rus)      r9, r2, 0x0
             0x000825fe: 01 f0 38 73: bu (lu6)        0x78 <.label344>
.label343    0x00082602: 13 78:       bf (ru6)        r0, 0x13 <.label345>
             0x00082604: 12 b0:       eq (2rus)       r1, r0, 0x2
             0x00082606: 71 78:       bf (ru6)        r1, 0x31 <.label346>
             0x00082608: 36 64:       ldaw (ru6)      r0, sp[0x36]
.label347    0x0008260a: 1c ab:       shr (2rus)      r1, r7, 0x4
             0x0008260c: dc 47:       zext (rus)      r7, 0x4
             0x0008260e: 27 8b:       ld8u (3r)       r2, r5[r7]
             0x00082610: 91 98:       sub (2rus)      r9, r0, 0x1
             0x00082612: dc a6:       mkmsk (rus)     r3, 0x20
             0x00082614: 23 f8 ec 8f: st8 (l3r)       r2, r0[r3]
             0x00082618: 1c 68:       ldc (ru6)       r0, 0x1c
             0x0008261a: c0 20:       shl (3r)        r0, r4, r0
             0x0008261c: 74 40:       or (3r)         r7, r1, r0
             0x0008261e: 40 ab:       shr (2rus)      r4, r4, 0x4
             0x00082620: 1c 43:       or (3r)         r1, r7, r4
             0x00082622: 84 91:       add (2rus)      r0, r9, 0x0
             0x00082624: 4e 74:       bt (ru6)        r1, -0xe <.label347>
             0x00082626: 01 f0 24 73: bu (lu6)        0x64 <.label344>
.label345    0x0008262a: 0c 92:       add (2rus)      r8, r11, 0x0
             0x0008262c: 18 5c:       ldw (ru6)       r0, sp[0x18]
.label348    0x0008262e: 7f a9:       shr (2rus)      r11, r7, 0x3
             0x00082630: 1f 47:       zext (rus)      r7, 0x3
             0x00082632: 70 68:       ldc (ru6)       r1, 0x30
             0x00082634: fd 40:       or (3r)         r3, r7, r1
             0x00082636: 80 68:       ldc (ru6)       r2, 0x0
             0x00082638: 32 f8 ec 8f: st8 (l3r)       r3, r0[r2]
             0x0008263c: 5d 69:       ldc (ru6)       r5, 0x1d
             0x0008263e: 51 23:       shl (3r)        r5, r4, r5
             0x00082640: 3d 44:       or (3r)         r7, r11, r5
             0x00082642: 03 a9:       shr (2rus)      r4, r4, 0x3
             0x00082644: 01 98:       sub (2rus)      r0, r0, 0x1
             0x00082646: bc 43:       or (3r)         r11, r7, r4
             0x00082648: ce 76:       bt (ru6)        r11, -0xe <.label348>
             0x0008264a: ea 5e:       ldw (ru6)       r11, sp[0x2a]
             0x0008264c: 5d 47:       zext (rus)      r11, 0x1
             0x0008264e: 41 90:       add (2rus)      r4, r0, 0x1
             0x00082650: e0 7a:       bf (ru6)        r11, 0x20 <.label349>
             0x00082652: 3d f8 ec 0f: xor (l3r)       r3, r3, r1
             0x00082656: 30 92:       add (2rus)      r11, r8, 0x0
             0x00082658: 59 5d:       ldw (ru6)       r5, sp[0x19]
             0x0008265a: 50 91:       add (2rus)      r9, r4, 0x0
             0x0008265c: 01 f0 c9 78: bf (lru6)       r3, 0x49 <.label344>
             0x00082660: 12 f8 ec 8f: st8 (l3r)       r1, r0[r2]
             0x00082664: 90 90:       add (2rus)      r9, r0, 0x0
             0x00082666: 01 f0 04 73: bu (lu6)        0x44 <.label344>
.label346    0x0008266a: 01 b0:       eq (2rus)       r0, r0, 0x1
             0x0008266c: 04 78:       bf (ru6)        r0, 0x4 <.label350>
             0x0008266e: 15 71:       bt (ru6)        r4, 0x15 <.label351>
             0x00082670: 09 68:       ldc (ru6)       r0, 0x9
             0x00082672: 43 ca:       lsu (3r)        r0, r0, r7
             0x00082674: 14 73:       bu (u6)         0x14 <.label352>
.label350    0x00082676: 59 55:       stw (ru6)       r5, sp[0x19]
             0x00082678: 03 f0 73 7f: ldaw (lu6)      r11, cp[0xf3]
             0x0008267c: e8 56:       stw (ru6)       r11, sp[0x28]
             0x0008267e: 8c 91:       add (2rus)      r0, r11, 0x0
             0x00082680: 03 f0 b0 d4: bl (lu10)       -0xcb0 <strlen>
             0x00082684: 50 90:       add (2rus)      r5, r0, 0x0
             0x00082686: 00 68:       ldc (ru6)       r0, 0x0
             0x00082688: 24 54:       stw (ru6)       r0, sp[0x24]
             0x0008268a: a5 5c:       ldw (ru6)       r2, sp[0x25]
             0x0008268c: e3 5d:       ldw (ru6)       r7, sp[0x23]
             0x0008268e: c0 6a:       ldc (ru6)       r11, 0x0
             0x00082690: 38 73:       bu (u6)         0x38 <.label353>
.label349    0x00082692: 30 92:       add (2rus)      r11, r8, 0x0
             0x00082694: 59 5d:       ldw (ru6)       r5, sp[0x19]
             0x00082696: 50 91:       add (2rus)      r9, r4, 0x0
             0x00082698: 2c 73:       bu (u6)         0x2c <.label344>
.label351    0x0008269a: c0 b0:       eq (2rus)       r0, r4, 0x0
             0x0008269c: 00 b0:       eq (2rus)       r0, r0, 0x0
.label352    0x0008269e: 36 66:       ldaw (ru6)      r8, sp[0x36]
             0x000826a0: 1e 78:       bf (ru6)        r0, 0x1e <.label354>
.label357    0x000826a2: 4a 6a:       ldc (ru6)       r9, 0xa
             0x000826a4: c0 68:       ldc (ru6)       r3, 0x0
             0x000826a6: cc 90:       add (2rus)      r0, r7, 0x0
             0x000826a8: d0 90:       add (2rus)      r1, r4, 0x0
             0x000826aa: a4 91:       add (2rus)      r2, r9, 0x0
             0x000826ac: 5c 90:       add (2rus)      r5, r3, 0x0
             0x000826ae: 03 f0 1b d3: bl (lu10)       0xf1b <__umoddi3>
             0x000826b2: 70 68:       ldc (ru6)       r1, 0x30
             0x000826b4: 01 40:       or (3r)         r0, r0, r1
             0x000826b6: d4 a6:       mkmsk (rus)     r1, 0x20
             0x000826b8: 81 f9 ec 8f: st8 (l3r)       r0, r8[r1]
             0x000826bc: cc 90:       add (2rus)      r0, r7, 0x0
             0x000826be: d0 90:       add (2rus)      r1, r4, 0x0
             0x000826c0: a4 91:       add (2rus)      r2, r9, 0x0
             0x000826c2: f4 90:       add (2rus)      r3, r5, 0x0
             0x000826c4: 03 f0 b2 d4: bl (lu10)       -0xcb2 <__udivdi3>
             0x000826c8: 04 71:       bt (ru6)        r4, 0x4 <.label355>
             0x000826ca: 01 f0 a3 68: ldc (lru6)      r2, 0x63
             0x000826ce: 6b ca:       lsu (3r)        r2, r2, r7
             0x000826d0: 02 73:       bu (u6)         0x2 <.label356>
.label355    0x000826d2: e0 b0:       eq (2rus)       r2, r4, 0x0
             0x000826d4: 28 b0:       eq (2rus)       r2, r2, 0x0
.label356    0x000826d6: 01 9a:       sub (2rus)      r8, r8, 0x1
             0x000826d8: 70 90:       add (2rus)      r7, r0, 0x0
             0x000826da: 44 90:       add (2rus)      r4, r1, 0x0
             0x000826dc: 9e 74:       bt (ru6)        r2, -0x1e <.label357>
.label354    0x000826de: 00 68:       ldc (ru6)       r0, 0x0
             0x000826e0: 70 68:       ldc (ru6)       r1, 0x30
             0x000826e2: cd f8 d4 06: ladd (l5r)      r1, r0, r7, r1, r0
             0x000826e6: 11 9a:       sub (2rus)      r9, r8, 0x1
             0x000826e8: d4 a6:       mkmsk (rus)     r1, 0x20
             0x000826ea: 81 f9 ec 8f: st8 (l3r)       r0, r8[r1]
             0x000826ee: c0 6a:       ldc (ru6)       r11, 0x0
             0x000826f0: 59 5d:       ldw (ru6)       r5, sp[0x19]
.label344    0x000826f2: 68 56:       stw (ru6)       r9, sp[0x28]
             0x000826f4: 59 55:       stw (ru6)       r5, sp[0x19]
             0x000826f6: 36 64:       ldaw (ru6)      r0, sp[0x36]
             0x000826f8: d1 1c:       sub (3r)        r5, r0, r9
             0x000826fa: 00 68:       ldc (ru6)       r0, 0x0
             0x000826fc: 24 54:       stw (ru6)       r0, sp[0x24]
             0x000826fe: a5 5c:       ldw (ru6)       r2, sp[0x25]
             0x00082700: e3 5d:       ldw (ru6)       r7, sp[0x23]
.label353    0x00082702: 01 f0 0c 65: ldaw (lru6)     r4, sp[0x4c]
             0x00082706: 22 f0 2c 77: bu (lu6)        -0x8ac <.label256>
.label328    0x0008270a: 25 55:       stw (ru6)       r4, sp[0x25]
             0x0008270c: 01 f0 0b 5c: ldw (lru6)      r0, sp[0x4b]
.label329    0x00082710: 91 12:       add (3r)        r5, r0, r5
.label332    0x00082712: 28 5c:       ldw (ru6)       r0, sp[0x28]
             0x00082714: d1 12:       add (3r)        r9, r0, r5
             0x00082716: 40 69:       ldc (ru6)       r5, 0x0
             0x00082718: 1f 5c:       ldw (ru6)       r0, sp[0x1f]
             0x0008271a: dc 90:       add (2rus)      r1, r7, 0x0
             0x0008271c: e4 90:       add (2rus)      r2, r5, 0x0
             0x0008271e: f4 90:       add (2rus)      r3, r5, 0x0
             0x00082720: 01 f0 1a d1: bl (lu10)       0x51a <__nedf2>
             0x00082724: 0c 70:       bt (ru6)        r0, 0xc <.label358>
             0x00082726: 01 f0 4d 56: stw (lru6)      r9, sp[0x4d]
             0x0008272a: 84 91:       add (2rus)      r0, r9, 0x0
.label338    0x0008272c: e3 5d:       ldw (ru6)       r7, sp[0x23]
             0x0008272e: c0 6a:       ldc (ru6)       r11, 0x0
.label360    0x00082730: 68 5c:       ldw (ru6)       r1, sp[0x28]
             0x00082732: 21 18:       sub (3r)        r2, r0, r1
             0x00082734: 17 5d:       ldw (ru6)       r4, sp[0x17]
             0x00082736: 56 5e:       ldw (ru6)       r9, sp[0x16]
             0x00082738: 6a 5d:       ldw (ru6)       r5, sp[0x2a]
             0x0008273a: dc 5c:       ldw (ru6)       r3, sp[0x1c]
             0x0008273c: 1a 73:       bu (u6)         0x1a <.label359>
.label358    0x0008273e: 01 f0 0d 5c: ldw (lru6)      r0, sp[0x4d]
             0x00082742: 91 cc:       lsu (3r)        r1, r0, r9
             0x00082744: e3 5d:       ldw (ru6)       r7, sp[0x23]
             0x00082746: c0 6a:       ldc (ru6)       r11, 0x0
             0x00082748: 4d 7c:       bf (ru6)        r1, -0xd <.label360>
.label361    0x0008274a: 11 90:       add (2rus)      r1, r0, 0x1
             0x0008274c: 01 f0 4d 54: stw (lru6)      r1, sp[0x4d]
             0x00082750: 70 68:       ldc (ru6)       r1, 0x30
             0x00082752: 51 fa ec 8f: st8 (l3r)       r1, r0[r5]
             0x00082756: 01 f0 0d 5c: ldw (lru6)      r0, sp[0x4d]
             0x0008275a: 91 cc:       lsu (3r)        r1, r0, r9
             0x0008275c: 4a 74:       bt (ru6)        r1, -0xa <.label361>
             0x0008275e: 18 77:       bu (u6)         -0x18 <.label360>
.label336    0x00082760: e3 5d:       ldw (ru6)       r7, sp[0x23]
             0x00082762: c0 6a:       ldc (ru6)       r11, 0x0
             0x00082764: dc 5c:       ldw (ru6)       r3, sp[0x1c]
             0x00082766: 52 5c:       ldw (ru6)       r1, sp[0x12]
.label333    0x00082768: 28 5c:       ldw (ru6)       r0, sp[0x28]
             0x0008276a: 24 18:       sub (3r)        r2, r1, r0
             0x0008276c: 17 5d:       ldw (ru6)       r4, sp[0x17]
             0x0008276e: 56 5e:       ldw (ru6)       r9, sp[0x16]
             0x00082770: 6a 5d:       ldw (ru6)       r5, sp[0x2a]
.label359    0x00082772: 01 f0 07 68: ldc (lru6)      r0, 0x47
             0x00082776: 0c 30:       eq (3r)         r0, r3, r0
             0x00082778: 0d 78:       bf (ru6)        r0, 0xd <.label362>
             0x0008277a: 01 f0 0b 5c: ldw (lru6)      r0, sp[0x4b]
             0x0008277e: 03 f0 54 6c: ldw (lru6)      r1, cp[0xd4]
             0x00082782: 11 c0:       lss (3r)        r1, r0, r1
             0x00082784: 02 9a:       sub (2rus)      r8, r8, 0x2
             0x00082786: 4d 70:       bt (ru6)        r1, 0xd <.label363>
             0x00082788: 65 5c:       ldw (ru6)       r1, sp[0x25]
             0x0008278a: 14 c0:       lss (3r)        r1, r1, r0
             0x0008278c: 4a 70:       bt (ru6)        r1, 0xa <.label363>
             0x0008278e: 01 f0 27 6a: ldc (lru6)      r8, 0x67
             0x00082792: 2f 73:       bu (u6)         0x2f <.label364>
.label362    0x00082794: 01 f0 06 68: ldc (lru6)      r0, 0x46
             0x00082798: 80 31:       eq (3r)         r0, r8, r0
             0x0008279a: 03 78:       bf (ru6)        r0, 0x3 <.label363>
             0x0008279c: 01 f0 0b 5c: ldw (lru6)      r0, sp[0x4b]
             0x000827a0: 18 73:       bu (u6)         0x18 <.label365>
.label363    0x000827a2: 01 f0 25 68: ldc (lru6)      r0, 0x65
             0x000827a6: 80 c4:       lss (3r)        r0, r0, r8
             0x000827a8: 0e 70:       bt (ru6)        r0, 0xe <.label366>
             0x000827aa: 01 f0 cb 5e: ldw (lru6)      r11, sp[0x4b]
             0x000827ae: 9d 99:       sub (2rus)      r1, r11, 0x1
             0x000827b0: 01 f0 4b 54: stw (lru6)      r1, sp[0x4b]
             0x000827b4: 03 f0 0d 6c: ldw (lru6)      r0, cp[0xcd]
             0x000827b8: 80 39:       and (3r)        r0, r8, r0
             0x000827ba: 01 f0 c1 68: ldc (lru6)      r3, 0x41
             0x000827be: 33 30:       eq (3r)         r3, r0, r3
             0x000827c0: f0 70:       bt (ru6)        r3, 0x30 <.label367>
             0x000827c2: 80 91:       add (2rus)      r0, r8, 0x0
             0x000827c4: 30 73:       bu (u6)         0x30 <.label368>
.label366    0x000827c6: 01 f0 0b 5c: ldw (lru6)      r0, sp[0x4b]
             0x000827ca: 01 f0 66 68: ldc (lru6)      r1, 0x66
             0x000827ce: 91 31:       eq (3r)         r1, r8, r1
             0x000827d0: 50 78:       bf (ru6)        r1, 0x10 <.label364>
.label365    0x000827d2: a2 54:       stw (ru6)       r2, sp[0x22]
             0x000827d4: 15 47:       zext (rus)      r5, 0x1
             0x000827d6: 65 5c:       ldw (ru6)       r1, sp[0x25]
             0x000827d8: d5 40:       or (3r)         r1, r5, r1
             0x000827da: 15 a7:       mkmsk (rus)     r5, 0x1
             0x000827dc: 61 c2:       lss (3r)        r2, r0, r5
             0x000827de: 98 70:       bt (ru6)        r2, 0x18 <.label369>
             0x000827e0: 02 f0 47 78: bf (lru6)       r1, 0x87 <.label370>
             0x000827e4: 65 5c:       ldw (ru6)       r1, sp[0x25]
             0x000827e6: 04 10:       add (3r)        r0, r1, r0
             0x000827e8: 51 90:       add (2rus)      r5, r0, 0x1
             0x000827ea: 01 f0 26 6a: ldc (lru6)      r8, 0x66
             0x000827ee: 02 f0 27 73: bu (lu6)        0xa7 <.label371>
.label364    0x000827f2: 12 c0:       lss (3r)        r1, r0, r2
             0x000827f4: 48 78:       bf (ru6)        r1, 0x8 <.label372>
             0x000827f6: 40 68:       ldc (ru6)       r1, 0x0
             0x000827f8: 14 c0:       lss (3r)        r1, r1, r0
             0x000827fa: 01 f0 76 70: bt (lru6)       r1, 0x76 <.label373>
             0x000827fe: 42 68:       ldc (ru6)       r1, 0x2
             0x00082800: 04 18:       sub (3r)        r0, r1, r0
             0x00082802: 01 f0 33 73: bu (lu6)        0x73 <.label374>
.label372    0x00082806: a2 54:       stw (ru6)       r2, sp[0x22]
             0x00082808: 15 47:       zext (rus)      r5, 0x1
             0x0008280a: 91 12:       add (3r)        r5, r0, r5
             0x0008280c: 02 f0 18 73: bu (lu6)        0x98 <.label371>
.label369    0x00082810: 42 78:       bf (ru6)        r1, 0x2 <.label375>
             0x00082812: 25 5c:       ldw (ru6)       r0, sp[0x25]
             0x00082814: 52 90:       add (2rus)      r5, r0, 0x2
.label375    0x00082816: d4 5c:       ldw (ru6)       r3, sp[0x14]
             0x00082818: 13 5c:       ldw (ru6)       r0, sp[0x13]
             0x0008281a: 01 f0 26 6a: ldc (lru6)      r8, 0x66
             0x0008281e: 02 f0 11 73: bu (lu6)        0x91 <.label376>
.label367    0x00082822: 90 a7:       mkmsk (rus)     r0, 0x4
             0x00082824: 80 11:       add (3r)        r0, r8, r0
.label368    0x00082826: 40 6a:       ldc (ru6)       r9, 0x0
             0x00082828: 01 f0 49 65: ldaw (lru6)     r5, sp[0x49]
             0x0008282c: 45 fd ec 8f: st8 (l3r)       r0, r5[r9]
             0x00082830: 11 a7:       mkmsk (rus)     r4, 0x1
             0x00082832: 3c c4:       lss (3r)        r7, r11, r4
             0x00082834: c2 71:       bt (ru6)        r7, 0x2 <.label377>
             0x00082836: 6b 69:       ldc (ru6)       r5, 0x2b
             0x00082838: 01 73:       bu (u6)         0x1 <.label378>
.label377    0x0008283a: 6d 69:       ldc (ru6)       r5, 0x2d
.label378    0x0008283c: c1 79:       bf (ru6)        r7, 0x1 <.label379>
             0x0008283e: 53 1d:       sub (3r)        r1, r4, r11
.label379    0x00082840: 01 f0 09 64: ldaw (lru6)     r0, sp[0x49]
             0x00082844: f0 42:       or (3r)         r11, r0, r4
             0x00082846: 5d fe ec 8f: st8 (l3r)       r5, r11[r9]
             0x0008284a: 34 92:       add (2rus)      r11, r9, 0x0
             0x0008284c: 0a 68:       ldc (ru6)       r0, 0xa
             0x0008284e: 54 c0:       lss (3r)        r5, r1, r0
             0x00082850: e3 5d:       ldw (ru6)       r7, sp[0x23]
             0x00082852: 01 f0 41 71: bt (lru6)       r5, 0x41 <.label380>
             0x00082856: a2 54:       stw (ru6)       r2, sp[0x22]
             0x00082858: bc 91:       add (2rus)      r3, r11, 0x0
             0x0008285a: 20 90:       add (2rus)      r2, r0, 0x0
.label381    0x0008285c: 03 f0 43 6d: ldw (lru6)      r5, cp[0xc3]
             0x00082860: fc 91:       add (2rus)      r7, r11, 0x0
             0x00082862: 1c 92:       add (2rus)      r9, r11, 0x0
             0x00082864: b5 fa e9 0f: maccs (l4r)     r7, r9, r1, r5
             0x00082868: 91 a7:       mkmsk (rus)     r0, 0x5
             0x0008286a: 1c 29:       shr (3r)        r5, r7, r0
             0x0008286c: 3e f9 ec 97: ashr (l2rus)    r7, r7, 0x2
             0x00082870: 5d 13:       add (3r)        r5, r7, r5
             0x00082872: 36 f9 ec 3f: mul (l3r)       r7, r5, r2
             0x00082876: d7 1a:       sub (3r)        r9, r1, r7
             0x00082878: f0 69:       ldc (ru6)       r7, 0x30
             0x0008287a: c7 13:       add (3r)        r0, r9, r7
             0x0008287c: cc 91:       add (2rus)      r4, r11, 0x0
             0x0008287e: 01 f0 ce 66: ldaw (lru6)     r11, sp[0x4e]
             0x00082882: 3f 12:       add (3r)        r11, r11, r3
             0x00082884: 46 6a:       ldc (ru6)       r9, 0x6
             0x00082886: 0d fe ec 8f: st8 (l3r)       r0, r11[r9]
             0x0008288a: 70 91:       add (2rus)      r11, r4, 0x0
             0x0008288c: 01 f0 23 68: ldc (lru6)      r0, 0x63
             0x00082890: 01 c0:       lss (3r)        r0, r0, r1
             0x00082892: 3d 98:       sub (2rus)      r3, r3, 0x1
             0x00082894: d4 90:       add (2rus)      r1, r5, 0x0
             0x00082896: 1e 74:       bt (ru6)        r0, -0x1e <.label381>
             0x00082898: b7 13:       add (3r)        r11, r5, r7
             0x0008289a: 01 f0 0e 64: ldaw (lru6)     r0, sp[0x4e]
             0x0008289e: 03 10:       add (3r)        r0, r0, r3
             0x000828a0: 52 92:       add (2rus)      r1, r0, 0x6
             0x000828a2: 31 fd ec 8f: st8 (l3r)       r11, r0[r9]
             0x000828a6: 17 5d:       ldw (ru6)       r4, sp[0x17]
             0x000828a8: 44 ca:       lsu (3r)        r0, r1, r4
             0x000828aa: 95 5c:       ldw (ru6)       r2, sp[0x15]
             0x000828ac: e3 5d:       ldw (ru6)       r7, sp[0x23]
             0x000828ae: 56 5e:       ldw (ru6)       r9, sp[0x16]
             0x000828b0: 6a 5d:       ldw (ru6)       r5, sp[0x2a]
             0x000828b2: 36 78:       bf (ru6)        r0, 0x36 <.label382>
             0x000828b4: 02 68:       ldc (ru6)       r0, 0x2
             0x000828b6: 01 f0 49 64: ldaw (lru6)     r1, sp[0x49]
             0x000828ba: 04 40:       or (3r)         r0, r1, r0
             0x000828bc: 40 68:       ldc (ru6)       r1, 0x0
             0x000828be: b1 f8 ec 8f: st8 (l3r)       r11, r0[r1]
             0x000828c2: a4 91:       add (2rus)      r2, r9, 0x0
             0x000828c4: ed 78:       bf (ru6)        r3, 0x2d <.label382>
.label383    0x000828c6: c1 10:       add (3r)        r0, r4, r1
             0x000828c8: 03 88:       ld8u (3r)       r0, r0[r3]
             0x000828ca: 85 f9 ec 8f: st8 (l3r)       r0, r9[r1]
             0x000828ce: 15 90:       add (2rus)      r1, r1, 0x1
             0x000828d0: 0d 10:       add (3r)        r0, r3, r1
             0x000828d2: 07 74:       bt (ru6)        r0, -0x7 <.label383>
             0x000828d4: a5 11:       add (3r)        r2, r9, r1
             0x000828d6: 24 73:       bu (u6)         0x24 <.label382>
.label380    0x000828d8: a2 54:       stw (ru6)       r2, sp[0x22]
             0x000828da: cf 78:       bf (ru6)        r3, 0xf <.label384>
             0x000828dc: da a6:       mkmsk (rus)     r2, 0x2
             0x000828de: d5 5c:       ldw (ru6)       r3, sp[0x15]
             0x000828e0: 01 f0 c9 66: ldaw (lru6)     r11, sp[0x49]
             0x000828e4: 17 5d:       ldw (ru6)       r4, sp[0x17]
             0x000828e6: 56 5e:       ldw (ru6)       r9, sp[0x16]
             0x000828e8: 14 73:       bu (u6)         0x14 <.label385>
.label373    0x000828ea: d1 a6:       mkmsk (rus)     r0, 0x1
.label374    0x000828ec: 52 10:       add (3r)        r5, r0, r2
             0x000828ee: a2 54:       stw (ru6)       r2, sp[0x22]
             0x000828f0: 27 73:       bu (u6)         0x27 <.label371>
.label370    0x000828f2: 01 f0 26 6a: ldc (lru6)      r8, 0x66
             0x000828f6: 50 90:       add (2rus)      r5, r0, 0x0
             0x000828f8: 23 73:       bu (u6)         0x23 <.label371>
.label384    0x000828fa: 02 68:       ldc (ru6)       r0, 0x2
             0x000828fc: 01 f0 c9 66: ldaw (lru6)     r11, sp[0x49]
             0x00082900: 8c 41:       or (3r)         r0, r11, r0
             0x00082902: 80 68:       ldc (ru6)       r2, 0x0
             0x00082904: f0 68:       ldc (ru6)       r3, 0x30
             0x00082906: 32 f8 ec 8f: st8 (l3r)       r3, r0[r2]
             0x0008290a: 84 68:       ldc (ru6)       r2, 0x4
             0x0008290c: 56 5e:       ldw (ru6)       r9, sp[0x16]
             0x0008290e: b4 91:       add (2rus)      r3, r9, 0x0
             0x00082910: 17 5d:       ldw (ru6)       r4, sp[0x17]
.label385    0x00082912: 30 68:       ldc (ru6)       r0, 0x30
             0x00082914: 04 10:       add (3r)        r0, r1, r0
             0x00082916: ae 11:       add (3r)        r2, r11, r2
             0x00082918: 40 68:       ldc (ru6)       r1, 0x0
             0x0008291a: 0d f8 ec 8f: st8 (l3r)       r0, r3[r1]
             0x0008291e: 6a 5d:       ldw (ru6)       r5, sp[0x2a]
.label382    0x00082920: 01 f0 09 64: ldaw (lru6)     r0, sp[0x49]
             0x00082924: 28 18:       sub (3r)        r2, r2, r0
             0x00082926: 9a 54:       stw (ru6)       r2, sp[0x1a]
             0x00082928: 02 68:       ldc (ru6)       r0, 0x2
             0x0008292a: e2 5c:       ldw (ru6)       r3, sp[0x22]
             0x0008292c: 0c c0:       lss (3r)        r0, r3, r0
             0x0008292e: 15 47:       zext (rus)      r5, 0x1
             0x00082930: d4 b0:       eq (2rus)       r1, r5, 0x0
             0x00082932: 01 38:       and (3r)        r0, r0, r1
             0x00082934: d5 a6:       mkmsk (rus)     r1, 0x1
             0x00082936: 01 f8 ec 0f: xor (l3r)       r0, r0, r1
             0x0008293a: 03 10:       add (3r)        r0, r0, r3
             0x0008293c: 52 10:       add (3r)        r5, r0, r2
             0x0008293e: c0 6a:       ldc (ru6)       r11, 0x0
.label371    0x00082940: d4 5c:       ldw (ru6)       r3, sp[0x14]
             0x00082942: 13 5c:       ldw (ru6)       r0, sp[0x13]
.label376    0x00082944: 56 56:       stw (ru6)       r9, sp[0x16]
             0x00082946: 17 55:       stw (ru6)       r4, sp[0x17]
             0x00082948: 80 68:       ldc (ru6)       r2, 0x0
             0x0008294a: 30 47:       zext (rus)      r0, 0x8
             0x0008294c: 08 78:       bf (ru6)        r0, 0x8 <.label386>
             0x0008294e: 2d 68:       ldc (ru6)       r0, 0x2d
             0x00082950: 01 f0 0c 65: ldaw (lru6)     r4, sp[0x4c]
             0x00082954: c2 f8 ec 8f: st8 (l3r)       r0, r4[r2]
             0x00082958: 1c 56:       stw (ru6)       r8, sp[0x1c]
             0x0008295a: 27 f0 15 77: bu (lu6)        -0x9d5 <.label229>
.label386    0x0008295e: 1c 56:       stw (ru6)       r8, sp[0x1c]
             0x00082960: 01 f0 0c 65: ldaw (lru6)     r4, sp[0x4c]
             0x00082964: 27 f0 1a 77: bu (lu6)        -0x9da <.label229>
.label124    0x00082968: 01 f0 08 5c: ldw (lru6)      r0, sp[0x48]
             0x0008296c: 06 78:       bf (ru6)        r0, 0x6 <.label387>
             0x0008296e: 01 f0 46 64: ldaw (lru6)     r1, sp[0x46]
             0x00082972: cc 90:       add (2rus)      r0, r7, 0x0
             0x00082974: 00 f0 46 d0: bl (lu10)       0x46 <__sprint>
             0x00082978: 03 70:       bt (ru6)        r0, 0x3 <.label388>
.label387    0x0008297a: 00 68:       ldc (ru6)       r0, 0x0
             0x0008297c: 01 f0 07 54: stw (lru6)      r0, sp[0x47]
.label388    0x00082980: 29 5e:       ldw (ru6)       r8, sp[0x29]
.label122    0x00082982: 67 5d:       ldw (ru6)       r5, sp[0x27]
             0x00082984: 10 73:       bu (u6)         0x10 <.label389>
.label192    0x00082986: 24 5c:       ldw (ru6)       r0, sp[0x24]
             0x00082988: 67 5d:       ldw (ru6)       r5, sp[0x27]
             0x0008298a: 29 5e:       ldw (ru6)       r8, sp[0x29]
             0x0008298c: 09 73:       bu (u6)         0x9 <.label390>
.label200    0x0008298e: 24 5c:       ldw (ru6)       r0, sp[0x24]
             0x00082990: 67 5d:       ldw (ru6)       r5, sp[0x27]
             0x00082992: 29 5e:       ldw (ru6)       r8, sp[0x29]
             0x00082994: 30 91:       add (2rus)      r7, r4, 0x0
             0x00082996: 04 73:       bu (u6)         0x4 <.label390>
.label179    0x00082998: f4 91:       add (2rus)      r7, r9, 0x0
.label187    0x0008299a: 67 5d:       ldw (ru6)       r5, sp[0x27]
             0x0008299c: 29 5e:       ldw (ru6)       r8, sp[0x29]
             0x0008299e: 24 5c:       ldw (ru6)       r0, sp[0x24]
.label390    0x000829a0: 02 78:       bf (ru6)        r0, 0x2 <.label389>
             0x000829a2: 03 f0 a7 d5: bl (lu10)       -0xda7 <free>
.label389    0x000829a6: 00 69:       ldc (ru6)       r4, 0x0
             0x000829a8: 04 83:       ld16s (3r)      r0, r5[r4]
             0x000829aa: 08 f0 40 68: ldc (lru6)      r1, 0x200
             0x000829ae: 11 38:       and (3r)        r1, r0, r1
             0x000829b0: 42 78:       bf (ru6)        r1, 0x2 <.label391>
             0x000829b2: 31 47:       zext (rus)      r0, 0x10
             0x000829b4: 06 73:       bu (u6)         0x6 <.label392>
.label391    0x000829b6: 01 f0 14 68: ldc (lru6)      r0, 0x54
             0x000829ba: cc 10:       add (3r)        r0, r7, r0
             0x000829bc: 03 f0 de d4: bl (lu10)       -0xcde <__lock_recursive_release>
             0x000829c0: 04 83:       ld16s (3r)      r0, r5[r4]
.label392    0x000829c2: 01 f0 40 68: ldc (lru6)      r1, 0x40
             0x000829c6: 01 38:       and (3r)        r0, r0, r1
             0x000829c8: 42 aa:       shr (2rus)      r0, r0, 0x6
             0x000829ca: 01 78:       bf (ru6)        r0, 0x1 <.label113>
             0x000829cc: 50 a7:       mkmsk (rus)     r8, 0x20
.label113    0x000829ce: 80 91:       add (2rus)      r0, r8, 0x0
             0x000829d0: 01 f0 96 5e: ldw (lru6)      r10, sp[0x56]
             0x000829d4: 01 f0 14 5e: ldw (lru6)      r8, sp[0x54]
             0x000829d8: 01 f0 55 5e: ldw (lru6)      r9, sp[0x55]
             0x000829dc: 01 f0 92 5d: ldw (lru6)      r6, sp[0x52]
             0x000829e0: 01 f0 d3 5d: ldw (lru6)      r7, sp[0x53]
             0x000829e4: 01 f0 10 5d: ldw (lru6)      r4, sp[0x50]
             0x000829e8: 01 f0 51 5d: ldw (lru6)      r5, sp[0x51]
             0x000829ec: 01 f0 d8 77: retsp (lu6)     0x58
.label308    0x000829f0: 00 68:       ldc (ru6)       r0, 0x0
             0x000829f2: 67 5d:       ldw (ru6)       r5, sp[0x27]
             0x000829f4: d4 80:       ld16s (3r)      r1, r5[r0]
             0x000829f6: 01 f0 80 68: ldc (lru6)      r2, 0x40
             0x000829fa: 16 40:       or (3r)         r1, r1, r2
             0x000829fc: d4 f8 ec 87: st16 (l3r)      r1, r5[r0]
             0x00082a00: 29 5e:       ldw (ru6)       r8, sp[0x29]
             0x00082a02: 2f 77:       bu (u6)         -0x2f <.label389>

<__sprint>:
             0x00082a04: 00 f0 44 77: entsp (lu6)     0x4
             0x00082a08: 05 f9 ec f7: std (l2rus)     r5, r4, sp[0x1]
             0x00082a0c: 44 90:       add (2rus)      r4, r1, 0x0
             0x00082a0e: 10 90:       add (2rus)      r1, r0, 0x0
             0x00082a10: e2 08:       ldw (2rus)      r2, r4[0x2]
             0x00082a12: 40 69:       ldc (ru6)       r5, 0x0
             0x00082a14: c4 90:       add (2rus)      r0, r5, 0x0
             0x00082a16: 86 78:       bf (ru6)        r2, 0x6 <.label393>
             0x00082a18: 04 90:       add (2rus)      r0, r1, 0x0
             0x00082a1a: d0 90:       add (2rus)      r1, r4, 0x0
             0x00082a1c: 03 f0 7e d1: bl (lu10)       0xd7e <__sfvwrite>
             0x00082a20: 40 68:       ldc (ru6)       r1, 0x0
             0x00082a22: d2 00:       stw (2rus)      r1, r4[0x2]
.label393    0x00082a24: 11 01:       stw (2rus)      r5, r4[0x1]
             0x00082a26: 05 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x1]
             0x00082a2a: c4 77:       retsp (u6)      0x4

<__sfp_lock_acquire>:
             0x00082a2c: 00 f0 42 77: entsp (lu6)     0x2
             0x00082a30: 00 f0 13 60: ldaw (lru6)     r0, dp[0x13]
             0x00082a34: 03 f0 38 d5: bl (lu10)       -0xd38 <__lock_recursive_acquire>
             0x00082a38: c2 77:       retsp (u6)      0x2
             0x00082a3a: 00 00:       stw (2rus)      r0, r0[0x0]

<__sinit>:
             0x00082a3c: 00 f0 44 77: entsp (lu6)     0x4
             0x00082a40: 02 55:       stw (ru6)       r4, sp[0x2]
             0x00082a42: 00 f0 15 60: ldaw (lru6)     r0, dp[0x15]
             0x00082a46: 03 f0 41 d5: bl (lu10)       -0xd41 <__lock_recursive_acquire>
             0x00082a4a: 00 f0 2e 58: ldw (lru6)      r0, dp[0x2e]
             0x00082a4e: 1e 70:       bt (ru6)        r0, 0x1e <.label394>
             0x00082a50: 80 68:       ldc (ru6)       r2, 0x0
             0x00082a52: 00 f0 a4 50: stw (lru6)      r2, dp[0x24]
             0x00082a56: d2 a6:       mkmsk (rus)     r0, 0x2
             0x00082a58: 00 f0 25 50: stw (lru6)      r0, dp[0x25]
             0x00082a5c: 00 f0 2f 60: ldaw (lru6)     r0, dp[0x2f]
             0x00082a60: 00 f0 26 50: stw (lru6)      r0, dp[0x26]
             0x00082a64: 00 f0 10 58: ldw (lru6)      r0, dp[0x10]
             0x00082a68: 44 68:       ldc (ru6)       r1, 0x4
             0x00082a6a: 00 f0 1d d0: bl (lu10)       0x1d <std>
             0x00082a6e: 00 f0 11 58: ldw (lru6)      r0, dp[0x11]
             0x00082a72: 49 68:       ldc (ru6)       r1, 0x9
             0x00082a74: 11 a7:       mkmsk (rus)     r4, 0x1
             0x00082a76: e0 90:       add (2rus)      r2, r4, 0x0
             0x00082a78: 00 f0 16 d0: bl (lu10)       0x16 <std>
             0x00082a7c: 00 f0 12 58: ldw (lru6)      r0, dp[0x12]
             0x00082a80: 52 68:       ldc (ru6)       r1, 0x12
             0x00082a82: 82 68:       ldc (ru6)       r2, 0x2
             0x00082a84: 00 f0 10 d0: bl (lu10)       0x10 <std>
             0x00082a88: 00 f0 2e 51: stw (lru6)      r4, dp[0x2e]
.label394    0x00082a8c: 00 f0 15 60: ldaw (lru6)     r0, dp[0x15]
             0x00082a90: 03 f0 48 d5: bl (lu10)       -0xd48 <__lock_recursive_release>
             0x00082a94: 02 5d:       ldw (ru6)       r4, sp[0x2]
             0x00082a96: c4 77:       retsp (u6)      0x4

<__sfp_lock_release>:
             0x00082a98: 00 f0 42 77: entsp (lu6)     0x2
             0x00082a9c: 00 f0 13 60: ldaw (lru6)     r0, dp[0x13]
             0x00082aa0: 03 f0 50 d5: bl (lu10)       -0xd50 <__lock_recursive_release>
             0x00082aa4: c2 77:       retsp (u6)      0x2
             0x00082aa6: 00 00:       stw (2rus)      r0, r0[0x0]

<std>:
             0x00082aa8: 00 f0 42 77: entsp (lu6)     0x2
             0x00082aac: c0 68:       ldc (ru6)       r3, 0x0
             0x00082aae: 30 00:       stw (2rus)      r3, r0[0x0]
             0x00082ab0: 31 00:       stw (2rus)      r3, r0[0x1]
             0x00082ab2: 32 00:       stw (2rus)      r3, r0[0x2]
             0x00082ab4: b3 f8 ec 9f: ldaw (l2rus)    r11, r0[0x3]
             0x00082ab8: 9f f9 ec 87: st16 (l3r)      r1, r11[r3]
             0x00082abc: 4e 68:       ldc (ru6)       r1, 0xe
             0x00082abe: 11 10:       add (3r)        r1, r0, r1
             0x00082ac0: 27 f8 ec 87: st16 (l3r)      r2, r1[r3]
             0x00082ac4: 70 02:       stw (2rus)      r3, r0[0x4]
             0x00082ac6: 71 02:       stw (2rus)      r3, r0[0x5]
             0x00082ac8: 72 02:       stw (2rus)      r3, r0[0x6]
             0x00082aca: 43 02:       stw (2rus)      r0, r0[0x7]
             0x00082acc: 03 f0 ca db: ldap (lu10)     r11, 0xfca <__sread>
             0x00082ad0: 30 05:       stw (2rus)      r11, r0[0x8]
             0x00082ad2: 03 f0 e9 db: ldap (lu10)     r11, 0xfe9 <__swrite>
             0x00082ad6: 31 05:       stw (2rus)      r11, r0[0x9]
             0x00082ad8: 04 f0 14 d8: ldap (lu10)     r11, 0x1014 <__sseek>
             0x00082adc: 32 05:       stw (2rus)      r11, r0[0xa]
             0x00082ade: 04 f0 37 d8: ldap (lu10)     r11, 0x1037 <__sclose>
             0x00082ae2: 33 05:       stw (2rus)      r11, r0[0xb]
             0x00082ae4: 01 f0 54 68: ldc (lru6)      r1, 0x54
             0x00082ae8: 01 10:       add (3r)        r0, r0, r1
             0x00082aea: 03 f0 9b d5: bl (lu10)       -0xd9b <__lock_recursive_init>
             0x00082aee: c2 77:       retsp (u6)      0x2

<_cleanup_impl>:
             0x00082af0: 00 f0 42 77: entsp (lu6)     0x2
             0x00082af4: 03 f0 d8 da: ldap (lu10)     r11, 0xed8 <_fflush>
             0x00082af8: 8c 91:       add (2rus)      r0, r11, 0x0
             0x00082afa: 03 f0 85 d2: bl (lu10)       0xe85 <_fwalk>
             0x00082afe: c2 77:       retsp (u6)      0x2

<__register_exitproc>:
             0x00082b00: 00 f0 48 77: entsp (lu6)     0x8
             0x00082b04: 05 f9 ec f7: std (l2rus)     r5, r4, sp[0x1]
             0x00082b08: 2e f9 ec f7: std (l2rus)     r7, r6, sp[0x2]
             0x00082b0c: 06 56:       stw (ru6)       r8, sp[0x6]
             0x00082b0e: 5c 90:       add (2rus)      r5, r3, 0x0
             0x00082b10: 78 90:       add (2rus)      r7, r2, 0x0
             0x00082b12: 44 90:       add (2rus)      r4, r1, 0x0
             0x00082b14: 60 90:       add (2rus)      r6, r0, 0x0
             0x00082b16: 02 f0 57 7f: ldaw (lu6)      r11, cp[0x97]
             0x00082b1a: 9c 91:       add (2rus)      r1, r11, 0x0
             0x00082b1c: 02 f0 59 7f: ldaw (lu6)      r11, cp[0x99]
             0x00082b20: c0 90:       add (2rus)      r0, r4, 0x0
             0x00082b22: ac 91:       add (2rus)      r2, r11, 0x0
             0x00082b24: 04 f0 1e d0: bl (lu10)       0x101e <__checkFptrGroup>
             0x00082b28: e0 4f:       ecallf (1r)     r0
             0x00082b2a: 03 f0 18 60: ldaw (lru6)     r0, dp[0xd8]
             0x00082b2e: 03 f0 d3 d5: bl (lu10)       -0xdd3 <__lock_fair_acquire>
             0x00082b32: 00 f0 17 58: ldw (lru6)      r0, dp[0x17]
             0x00082b36: 11 08:       ldw (2rus)      r1, r0[0x1]
             0x00082b38: 99 a7:       mkmsk (rus)     r2, 0x5
             0x00082b3a: 29 c0:       lss (3r)        r2, r2, r1
             0x00082b3c: 82 78:       bf (ru6)        r2, 0x2 <.label395>
             0x00082b3e: d0 a6:       mkmsk (rus)     r0, 0x20
             0x00082b40: 29 73:       bu (u6)         0x29 <.label396>
.label395    0x00082b42: 9e 79:       bf (ru6)        r6, 0x1e <.label397>
             0x00082b44: 02 f0 88 68: ldc (lru6)      r2, 0x88
             0x00082b48: 32 10:       add (3r)        r3, r0, r2
             0x00082b4a: 7d f8 ec 07: stw (l3r)       r7, r3[r1]
             0x00082b4e: 11 08:       ldw (2rus)      r1, r0[0x1]
             0x00082b50: d9 a6:       mkmsk (rus)     r2, 0x1
             0x00082b52: b9 20:       shl (3r)        r11, r2, r1
             0x00082b54: 06 f0 c8 69: ldc (lru6)      r7, 0x188
             0x00082b58: b3 12:       add (3r)        r7, r0, r7
             0x00082b5a: 4c 09:       ldw (2rus)      r8, r7[0x0]
             0x00082b5c: b3 46:       or (3r)         r11, r8, r11
             0x00082b5e: 7c 01:       stw (2rus)      r11, r7[0x0]
             0x00082b60: 1d f8 ec 1f: ldaw (l3r)      r1, r3[r1]
             0x00082b64: 02 f0 c0 68: ldc (lru6)      r3, 0x80
             0x00082b68: 17 10:       add (3r)        r1, r1, r3
             0x00082b6a: 54 00:       stw (2rus)      r5, r1[0x0]
             0x00082b6c: 11 08:       ldw (2rus)      r1, r0[0x1]
             0x00082b6e: fa b0:       eq (2rus)       r3, r6, 0x2
             0x00082b70: c7 78:       bf (ru6)        r3, 0x7 <.label397>
             0x00082b72: 29 20:       shl (3r)        r2, r2, r1
             0x00082b74: 06 f0 cc 68: ldc (lru6)      r3, 0x18c
             0x00082b78: 33 10:       add (3r)        r3, r0, r3
             0x00082b7a: bc 08:       ldw (2rus)      r11, r3[0x0]
             0x00082b7c: ae 41:       or (3r)         r2, r11, r2
             0x00082b7e: 2c 00:       stw (2rus)      r2, r3[0x0]
.label397    0x00082b80: 25 90:       add (2rus)      r2, r1, 0x1
             0x00082b82: 21 00:       stw (2rus)      r2, r0[0x1]
             0x00082b84: 01 f8 ec 1f: ldaw (l3r)      r0, r0[r1]
             0x00082b88: 42 00:       stw (2rus)      r4, r0[0x2]
             0x00082b8a: 03 f0 18 60: ldaw (lru6)     r0, dp[0xd8]
             0x00082b8e: 03 f0 f3 d5: bl (lu10)       -0xdf3 <__lock_fair_release>
             0x00082b92: 00 68:       ldc (ru6)       r0, 0x0
.label396    0x00082b94: 06 5e:       ldw (ru6)       r8, sp[0x6]
             0x00082b96: 2e f9 ec ef: ldd (l2rus)     r7, r6, sp[0x2]
             0x00082b9a: 05 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x1]
             0x00082b9e: c8 77:       retsp (u6)      0x8

<__call_exitprocs_impl>:
             0x00082ba0: 00 f0 4e 77: entsp (lu6)     0xe
             0x00082ba4: 07 f9 ec f7: std (l2rus)     r5, r4, sp[0x3]
             0x00082ba8: 6c fb ec f7: std (l2rus)     r7, r6, sp[0x4]
             0x00082bac: 45 fc ec f7: std (l2rus)     r9, r8, sp[0x5]
             0x00082bb0: 8c 56:       stw (ru6)       r10, sp[0xc]
             0x00082bb2: 44 90:       add (2rus)      r4, r1, 0x0
             0x00082bb4: 01 54:       stw (ru6)       r0, sp[0x1]
             0x00082bb6: 00 f0 17 58: ldw (lru6)      r0, dp[0x17]
             0x00082bba: 01 f0 0f 78: bf (lru6)       r0, 0x4f <.label398>
             0x00082bbe: 80 6a:       ldc (ru6)       r10, 0x0
.label408    0x00082bc0: 80 90:       add (2rus)      r8, r0, 0x0
             0x00082bc2: 11 0a:       ldw (2rus)      r9, r8[0x1]
             0x00082bc4: d1 a6:       mkmsk (rus)     r0, 0x1
             0x00082bc6: 84 c1:       lss (3r)        r0, r9, r0
             0x00082bc8: 01 f0 08 70: bt (lru6)       r0, 0x48 <.label398>
             0x00082bcc: 06 f0 08 68: ldc (lru6)      r0, 0x188
             0x00082bd0: 80 11:       add (3r)        r0, r8, r0
             0x00082bd2: 04 54:       stw (ru6)       r0, sp[0x4]
             0x00082bd4: 06 f0 0c 68: ldc (lru6)      r0, 0x18c
             0x00082bd8: 80 11:       add (3r)        r0, r8, r0
             0x00082bda: 03 54:       stw (ru6)       r0, sp[0x3]
             0x00082bdc: 01 fe ec 1f: ldaw (l3r)      r0, r8[r9]
             0x00082be0: 02 f0 44 68: ldc (lru6)      r1, 0x84
             0x00082be4: 11 10:       add (3r)        r1, r0, r1
             0x00082be6: 42 54:       stw (ru6)       r1, sp[0x2]
             0x00082be8: 04 f0 44 68: ldc (lru6)      r1, 0x104
             0x00082bec: 11 10:       add (3r)        r1, r0, r1
             0x00082bee: 45 54:       stw (ru6)       r1, sp[0x5]
             0x00082bf0: a0 92:       add (2rus)      r6, r0, 0x4
             0x00082bf2: f8 91:       add (2rus)      r7, r10, 0x0
.label407    0x00082bf4: 04 79:       bf (ru6)        r4, 0x4 <.label399>
             0x00082bf6: 05 5c:       ldw (ru6)       r0, sp[0x5]
             0x00082bf8: 43 4a:       ldw (3r)        r0, r0[r7]
             0x00082bfa: 40 32:       eq (3r)         r0, r0, r4
             0x00082bfc: 28 78:       bf (ru6)        r0, 0x28 <.label400>
.label399    0x00082bfe: f7 13:       add (3r)        r3, r9, r7
             0x00082c00: 1d 98:       sub (2rus)      r1, r3, 0x1
             0x00082c02: d1 a6:       mkmsk (rus)     r0, 0x1
             0x00082c04: 01 20:       shl (3r)        r0, r0, r1
             0x00082c06: 2b 4b:       ldw (3r)        r2, r6[r7]
             0x00082c08: 31 0a:       ldw (2rus)      r11, r8[0x1]
             0x00082c0a: bf 34:       eq (3r)         r3, r3, r11
             0x00082c0c: c2 78:       bf (ru6)        r3, 0x2 <.label401>
             0x00082c0e: 91 01:       stw (2rus)      r1, r8[0x1]
             0x00082c10: 02 73:       bu (u6)         0x2 <.label402>
.label401    0x00082c12: ab fb ec 07: stw (l3r)       r10, r6[r7]
.label402    0x00082c16: 9b 78:       bf (ru6)        r2, 0x1b <.label400>
             0x00082c18: d8 91:       add (2rus)      r5, r10, 0x0
             0x00082c1a: 21 0a:       ldw (2rus)      r10, r8[0x1]
             0x00082c1c: 44 5c:       ldw (ru6)       r1, sp[0x4]
             0x00082c1e: 14 08:       ldw (2rus)      r1, r1[0x0]
             0x00082c20: 14 38:       and (3r)        r1, r1, r0
             0x00082c22: 49 78:       bf (ru6)        r1, 0x9 <.label403>
             0x00082c24: 43 5c:       ldw (ru6)       r1, sp[0x3]
             0x00082c26: 14 08:       ldw (2rus)      r1, r1[0x0]
             0x00082c28: 04 38:       and (3r)        r0, r1, r0
             0x00082c2a: 42 5c:       ldw (ru6)       r1, sp[0x2]
             0x00082c2c: 57 4a:       ldw (3r)        r1, r1[r7]
             0x00082c2e: 05 78:       bf (ru6)        r0, 0x5 <.label404>
             0x00082c30: 04 90:       add (2rus)      r0, r1, 0x0
             0x00082c32: e2 27:       bla (1r)        r2
             0x00082c34: 04 73:       bu (u6)         0x4 <.label405>
.label403    0x00082c36: e2 27:       bla (1r)        r2
             0x00082c38: 02 73:       bu (u6)         0x2 <.label405>
.label404    0x00082c3a: 01 5c:       ldw (ru6)       r0, sp[0x1]
             0x00082c3c: e2 27:       bla (1r)        r2
.label405    0x00082c3e: 91 09:       ldw (2rus)      r1, r8[0x1]
             0x00082c40: 00 f0 17 58: ldw (lru6)      r0, dp[0x17]
             0x00082c44: 99 31:       eq (3r)         r1, r10, r1
             0x00082c46: 64 91:       add (2rus)      r10, r5, 0x0
             0x00082c48: 47 78:       bf (ru6)        r1, 0x7 <.label406>
             0x00082c4a: 90 34:       eq (3r)         r1, r0, r8
             0x00082c4c: 45 78:       bf (ru6)        r1, 0x5 <.label406>
.label400    0x00082c4e: 3d 99:       sub (2rus)      r7, r7, 0x1
             0x00082c50: c7 13:       add (3r)        r0, r9, r7
             0x00082c52: 88 c1:       lss (3r)        r0, r10, r0
             0x00082c54: 31 74:       bt (ru6)        r0, -0x31 <.label407>
             0x00082c56: 02 73:       bu (u6)         0x2 <.label398>
.label406    0x00082c58: 01 f0 0e 74: bt (lru6)       r0, -0x4e <.label408>
.label398    0x00082c5c: 8c 5e:       ldw (ru6)       r10, sp[0xc]
             0x00082c5e: 45 fc ec ef: ldd (l2rus)     r9, r8, sp[0x5]
             0x00082c62: 6c fb ec ef: ldd (l2rus)     r7, r6, sp[0x4]
             0x00082c66: 07 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x3]
             0x00082c6a: ce 77:       retsp (u6)      0xe

<__udivmoddi4>:
             0x00082c6c: 00 f0 4c 77: entsp (lu6)     0xc
             0x00082c70: 06 f9 ec f7: std (l2rus)     r5, r4, sp[0x2]
             0x00082c74: 2f f9 ec f7: std (l2rus)     r7, r6, sp[0x3]
             0x00082c78: 44 fc ec f7: std (l2rus)     r9, r8, sp[0x4]
             0x00082c7c: 8a 56:       stw (ru6)       r10, sp[0xa]
             0x00082c7e: 4d 5e:       ldw (ru6)       r9, sp[0xd]
             0x00082c80: 52 78:       bf (ru6)        r1, 0x12 <.label409>
             0x00082c82: 9c 78:       bf (ru6)        r2, 0x1c <.label410>
             0x00082c84: f3 78:       bf (ru6)        r3, 0x33 <.label411>
             0x00082c86: 4f 0f:       clz (2r)        r11, r3
             0x00082c88: 01 0f:       clz (2r)        r4, r1
             0x00082c8a: 7c 1c:       sub (3r)        r11, r11, r4
             0x00082c8c: 0d ac:       shr (2rus)      r4, r11, 0x5
             0x00082c8e: 24 71:       bt (ru6)        r4, 0x24 <.label412>
             0x00082c90: dd 91:       add (2rus)      r5, r11, 0x1
             0x00082c92: 20 69:       ldc (ru6)       r4, 0x20
             0x00082c94: 64 33:       eq (3r)         r6, r5, r4
             0x00082c96: c0 69:       ldc (ru6)       r7, 0x0
             0x00082c98: 01 f0 8e 79: bf (lru6)       r6, 0x4e <.label413>
             0x00082c9c: 10 91:       add (2rus)      r5, r4, 0x0
             0x00082c9e: 7c 91:       add (2rus)      r11, r7, 0x0
             0x00082ca0: 60 90:       add (2rus)      r6, r0, 0x0
             0x00082ca2: 02 f0 20 73: bu (lu6)        0xa0 <.label414>
.label409    0x00082ca6: f4 78:       bf (ru6)        r3, 0x34 <.label415>
             0x00082ca8: c0 68:       ldc (ru6)       r3, 0x0
             0x00082caa: bc 90:       add (2rus)      r11, r3, 0x0
             0x00082cac: 03 f0 55 7a: bf (lru6)       r9, 0xd5 <.label416>
             0x00082cb0: c0 68:       ldc (ru6)       r3, 0x0
             0x00082cb2: 84 f9 f3 17: std (l3rus)     r3, r0, r9[0x0]
             0x00082cb6: bc 90:       add (2rus)      r11, r3, 0x0
             0x00082cb8: 03 f0 0f 73: bu (lu6)        0xcf <.label416>
.label410    0x00082cbc: f4 78:       bf (ru6)        r3, 0x34 <.label417>
             0x00082cbe: 01 f0 04 78: bf (lru6)       r0, 0x44 <.label418>
             0x00082cc2: bd 98:       sub (2rus)      r11, r3, 0x1
             0x00082cc4: cf 39:       and (3r)        r4, r11, r3
             0x00082cc6: 01 f0 2f 79: bf (lru6)       r4, 0x6f <.label419>
             0x00082cca: 4f 0f:       clz (2r)        r11, r3
             0x00082ccc: 01 0f:       clz (2r)        r4, r1
             0x00082cce: 7c 1c:       sub (3r)        r11, r11, r4
             0x00082cd0: d1 a7:       mkmsk (rus)     r4, 0x5
             0x00082cd2: 1c cc:       lsu (3r)        r5, r11, r4
             0x00082cd4: 01 f0 72 71: bt (lru6)       r5, 0x72 <.label420>
.label412    0x00082cd8: c0 68:       ldc (ru6)       r3, 0x0
             0x00082cda: bc 90:       add (2rus)      r11, r3, 0x0
             0x00082cdc: 02 f0 7d 7a: bf (lru6)       r9, 0xbd <.label416>
             0x00082ce0: 84 f9 f1 17: std (l3rus)     r1, r0, r9[0x0]
             0x00082ce4: c0 68:       ldc (ru6)       r3, 0x0
             0x00082ce6: bc 90:       add (2rus)      r11, r3, 0x0
             0x00082ce8: 02 f0 37 73: bu (lu6)        0xb7 <.label416>
.label411    0x00082cec: b9 98:       sub (2rus)      r11, r2, 0x1
             0x00082cee: ce 39:       and (3r)        r4, r11, r2
             0x00082cf0: 37 79:       bf (ru6)        r4, 0x37 <.label421>
             0x00082cf2: 4e 0f:       clz (2r)        r11, r2
             0x00082cf4: 21 69:       ldc (ru6)       r4, 0x21
             0x00082cf6: 0c 14:       add (3r)        r4, r11, r4
             0x00082cf8: 0d 0f:       clz (2r)        r7, r1
             0x00082cfa: 53 1b:       sub (3r)        r5, r4, r7
             0x00082cfc: a0 69:       ldc (ru6)       r6, 0x20
             0x00082cfe: 86 33:       eq (3r)         r8, r5, r6
             0x00082d00: c0 6a:       ldc (ru6)       r11, 0x0
             0x00082d02: 01 f0 01 7a: bf (lru6)       r8, 0x41 <.label422>
             0x00082d06: 18 91:       add (2rus)      r5, r6, 0x0
             0x00082d08: fc 91:       add (2rus)      r7, r11, 0x0
             0x00082d0a: 60 90:       add (2rus)      r6, r0, 0x0
             0x00082d0c: 01 f0 2b 73: bu (lu6)        0x6b <.label414>
.label415    0x00082d10: 45 7a:       bf (ru6)        r9, 0x5 <.label423>
             0x00082d12: 12 f8 ec cf: remu (l3r)      r1, r0, r2
             0x00082d16: c0 68:       ldc (ru6)       r3, 0x0
             0x00082d18: 94 f9 f3 17: std (l3rus)     r3, r1, r9[0x0]
.label423    0x00082d1c: 32 f8 ec 4f: divu (l3r)      r3, r0, r2
             0x00082d20: c0 6a:       ldc (ru6)       r11, 0x0
             0x00082d22: 02 f0 1a 73: bu (lu6)        0x9a <.label416>
.label417    0x00082d26: 43 7a:       bf (ru6)        r9, 0x3 <.label424>
             0x00082d28: 00 68:       ldc (ru6)       r0, 0x0
             0x00082d2a: 84 f9 f0 17: std (l3rus)     r0, r0, r9[0x0]
.label424    0x00082d2e: c0 6a:       ldc (ru6)       r11, 0x0
             0x00082d30: b7 fc ec 4f: divu (l3r)      r3, r1, r11
             0x00082d34: 02 f0 11 73: bu (lu6)        0x91 <.label416>
.label413    0x00082d38: d1 a7:       mkmsk (rus)     r4, 0x5
             0x00082d3a: 83 1d:       sub (3r)        r4, r4, r11
             0x00082d3c: a0 22:       shl (3r)        r6, r0, r4
             0x00082d3e: f5 2a:       shr (3r)        r11, r1, r5
             0x00082d40: 54 22:       shl (3r)        r1, r1, r4
             0x00082d42: 41 2a:       shr (3r)        r0, r0, r5
             0x00082d44: 14 40:       or (3r)         r1, r1, r0
             0x00082d46: 01 f0 0e 73: bu (lu6)        0x4e <.label414>
.label418    0x00082d4a: 45 7a:       bf (ru6)        r9, 0x5 <.label425>
             0x00082d4c: 07 f8 ec cf: remu (l3r)      r0, r1, r3
             0x00082d50: 80 68:       ldc (ru6)       r2, 0x0
             0x00082d52: a4 f9 f0 17: std (l3rus)     r0, r2, r9[0x0]
.label425    0x00082d56: 37 f8 ec 4f: divu (l3r)      r3, r1, r3
             0x00082d5a: c0 6a:       ldc (ru6)       r11, 0x0
             0x00082d5c: 01 f0 3d 73: bu (lu6)        0x7d <.label416>
.label421    0x00082d60: 44 7a:       bf (ru6)        r9, 0x4 <.label426>
             0x00082d62: bc 39:       and (3r)        r3, r11, r0
             0x00082d64: c0 6a:       ldc (ru6)       r11, 0x0
             0x00082d66: b4 f9 fb 17: std (l3rus)     r11, r3, r9[0x0]
.label426    0x00082d6a: 49 b0:       eq (2rus)       r4, r2, 0x1
             0x00082d6c: 30 90:       add (2rus)      r3, r0, 0x0
             0x00082d6e: b4 90:       add (2rus)      r11, r1, 0x0
             0x00082d70: 01 f0 33 71: bt (lru6)       r4, 0x73 <.label416>
             0x00082d74: ca 16:       bitrev (2r)     r2, r2
             0x00082d76: ca 0e:       clz (2r)        r2, r2
             0x00082d78: b6 28:       shr (3r)        r11, r1, r2
             0x00082d7a: e0 68:       ldc (ru6)       r3, 0x20
             0x00082d7c: 3e 18:       sub (3r)        r3, r3, r2
             0x00082d7e: 17 20:       shl (3r)        r1, r1, r3
             0x00082d80: 02 28:       shr (3r)        r0, r0, r2
             0x00082d82: 34 40:       or (3r)         r3, r1, r0
             0x00082d84: 01 f0 29 73: bu (lu6)        0x69 <.label416>
.label422    0x00082d88: 65 ab:       shr (2rus)      r6, r5, 0x5
             0x00082d8a: a1 71:       bt (ru6)        r6, 0x21 <.label427>
             0x00082d8c: e0 6a:       ldc (ru6)       r11, 0x20
             0x00082d8e: 4d 1c:       sub (3r)        r8, r11, r5
             0x00082d90: e0 24:       shl (3r)        r6, r0, r8
             0x00082d92: f5 2a:       shr (3r)        r11, r1, r5
             0x00082d94: 94 24:       shl (3r)        r1, r1, r8
             0x00082d96: 41 2a:       shr (3r)        r0, r0, r5
             0x00082d98: 14 40:       or (3r)         r1, r1, r0
             0x00082d9a: 43 33:       eq (3r)         r4, r4, r7
             0x00082d9c: 00 68:       ldc (ru6)       r0, 0x0
             0x00082d9e: 22 79:       bf (ru6)        r4, 0x22 <.label428>
             0x00082da0: 20 90:       add (2rus)      r2, r0, 0x0
             0x00082da2: 70 90:       add (2rus)      r7, r0, 0x0
             0x00082da4: 01 f0 0b 73: bu (lu6)        0x4b <.label429>
.label419    0x00082da8: 43 7a:       bf (ru6)        r9, 0x3 <.label430>
             0x00082daa: ad 39:       and (3r)        r2, r11, r1
             0x00082dac: 84 f9 f2 17: std (l3rus)     r2, r0, r9[0x0]
.label430    0x00082db0: c3 16:       bitrev (2r)     r0, r3
             0x00082db2: c0 0e:       clz (2r)        r0, r0
             0x00082db4: 34 28:       shr (3r)        r3, r1, r0
             0x00082db6: c0 6a:       ldc (ru6)       r11, 0x0
             0x00082db8: 01 f0 0f 73: bu (lu6)        0x4f <.label416>
.label420    0x00082dbc: dd 91:       add (2rus)      r5, r11, 0x1
             0x00082dbe: 83 1d:       sub (3r)        r4, r4, r11
             0x00082dc0: a0 22:       shl (3r)        r6, r0, r4
             0x00082dc2: f5 2a:       shr (3r)        r11, r1, r5
             0x00082dc4: 54 22:       shl (3r)        r1, r1, r4
             0x00082dc6: 41 2a:       shr (3r)        r0, r0, r5
             0x00082dc8: 14 40:       or (3r)         r1, r1, r0
             0x00082dca: c0 69:       ldc (ru6)       r7, 0x0
             0x00082dcc: 0c 73:       bu (u6)         0xc <.label414>
.label427    0x00082dce: 01 f0 00 69: ldc (lru6)      r4, 0x40
             0x00082dd2: 41 1b:       sub (3r)        r4, r4, r5
             0x00082dd4: b0 22:       shl (3r)        r7, r0, r4
             0x00082dd6: 84 22:       shl (3r)        r4, r1, r4
             0x00082dd8: c4 fd ec a7: ldaw (l2rus)    r8, r5[-0x8]
             0x00082ddc: 80 2c:       shr (3r)        r0, r0, r8
             0x00082dde: 20 41:       or (3r)         r6, r4, r0
             0x00082de0: 94 2c:       shr (3r)        r1, r1, r8
             0x00082de2: 01 73:       bu (u6)         0x1 <.label414>
.label428    0x00082de4: 70 90:       add (2rus)      r7, r0, 0x0
.label414    0x00082de6: 00 6a:       ldc (ru6)       r8, 0x0
             0x00082de8: d0 a6:       mkmsk (rus)     r0, 0x20
             0x00082dea: 98 f8 70 07: ladd (l5r)      r4, r9, r2, r0, r8
             0x00082dee: 43 56:       stw (ru6)       r9, sp[0x3]
             0x00082df0: 4c f8 90 07: ladd (l5r)      r0, r4, r3, r0, r4
             0x00082df4: 02 55:       stw (ru6)       r4, sp[0x2]
             0x00082df6: d1 a7:       mkmsk (rus)     r4, 0x5
             0x00082df8: 80 91:       add (2rus)      r0, r8, 0x0
             0x00082dfa: 20 92:       add (2rus)      r10, r8, 0x0
             0x00082dfc: 9c 90:       add (2rus)      r9, r3, 0x0
             0x00082dfe: 38 90:       add (2rus)      r3, r2, 0x0
.label431    0x00082e00: 3d a2:       shl (2rus)      r11, r11, 0x1
             0x00082e02: c4 2a:       shr (3r)        r8, r1, r4
             0x00082e04: b3 46:       or (3r)         r11, r8, r11
             0x00082e06: 15 a0:       shl (2rus)      r1, r1, 0x1
             0x00082e08: 88 2b:       shr (3r)        r8, r6, r4
             0x00082e0a: 94 44:       or (3r)         r1, r1, r8
             0x00082e0c: 29 a1:       shl (2rus)      r6, r6, 0x1
             0x00082e0e: 8c 2b:       shr (3r)        r8, r7, r4
             0x00082e10: 22 44:       or (3r)         r6, r8, r6
             0x00082e12: 3d a1:       shl (2rus)      r7, r7, 0x1
             0x00082e14: b3 42:       or (3r)         r7, r0, r7
             0x00082e16: 03 5c:       ldw (ru6)       r0, sp[0x3]
             0x00082e18: 01 f8 a2 0f: lsub (l5r)      r8, r0, r0, r1, r10
             0x00082e1c: 02 5c:       ldw (ru6)       r0, sp[0x2]
             0x00082e1e: 83 fc a0 0f: lsub (l5r)      r8, r0, r0, r11, r8
             0x00082e22: 80 f8 ec 97: ashr (l2rus)    r8, r0, 0x20
             0x00082e26: 80 91:       add (2rus)      r0, r8, 0x0
             0x00082e28: d1 46:       zext (rus)      r0, 0x1
             0x00082e2a: 21 3e:       and (3r)        r2, r8, r9
             0x00082e2c: 03 3a:       and (3r)        r8, r8, r3
             0x00082e2e: 94 fc a2 0f: lsub (l5r)      r8, r1, r1, r8, r10
             0x00082e32: 3e fa 28 0f: lsub (l5r)      r2, r11, r11, r2, r8
             0x00082e36: 15 99:       sub (2rus)      r5, r5, 0x1
             0x00082e38: 5d 75:       bt (ru6)        r5, -0x1d <.label431>
             0x00082e3a: 80 68:       ldc (ru6)       r2, 0x0
             0x00082e3c: 4d 5e:       ldw (ru6)       r9, sp[0xd]
.label429    0x00082e3e: 0a 41:       or (3r)         r4, r6, r2
             0x00082e40: 9d a7:       mkmsk (rus)     r3, 0x5
             0x00082e42: 1f 29:       shr (3r)        r5, r7, r3
             0x00082e44: fd a0:       shl (2rus)      r3, r7, 0x1
             0x00082e46: 01 a1:       shl (2rus)      r4, r4, 0x1
             0x00082e48: 44 43:       or (3r)         r4, r5, r4
             0x00082e4a: 42 7a:       bf (ru6)        r9, 0x2 <.label432>
             0x00082e4c: 94 f9 fb 17: std (l3rus)     r11, r1, r9[0x0]
.label432    0x00082e50: 03 f0 55 6c: ldw (lru6)      r1, cp[0xd5]
             0x00082e54: 1d 38:       and (3r)        r1, r3, r1
             0x00082e56: 34 40:       or (3r)         r3, r1, r0
             0x00082e58: 72 41:       or (3r)         r11, r4, r2
.label416    0x00082e5a: 0c 90:       add (2rus)      r0, r3, 0x0
             0x00082e5c: 9c 91:       add (2rus)      r1, r11, 0x0
             0x00082e5e: 8a 5e:       ldw (ru6)       r10, sp[0xa]
             0x00082e60: 44 fc ec ef: ldd (l2rus)     r9, r8, sp[0x4]
             0x00082e64: 2f f9 ec ef: ldd (l2rus)     r7, r6, sp[0x3]
             0x00082e68: 06 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x2]
             0x00082e6c: cc 77:       retsp (u6)      0xc
             0x00082e6e: 00 00:       stw (2rus)      r0, r0[0x0]

<__malloc_lock>:
             0x00082e70: 00 f0 42 77: entsp (lu6)     0x2
             0x00082e74: 03 f0 1a 60: ldaw (lru6)     r0, dp[0xda]
             0x00082e78: 03 f0 78 d7: bl (lu10)       -0xf78 <__lock_fair_acquire>
             0x00082e7c: c2 77:       retsp (u6)      0x2
             0x00082e7e: 00 00:       stw (2rus)      r0, r0[0x0]

<__malloc_unlock>:
             0x00082e80: 00 f0 42 77: entsp (lu6)     0x2
             0x00082e84: 03 f0 1a 60: ldaw (lru6)     r0, dp[0xda]
             0x00082e88: 03 f0 70 d7: bl (lu10)       -0xf70 <__lock_fair_release>
             0x00082e8c: c2 77:       retsp (u6)      0x2
             0x00082e8e: 00 00:       stw (2rus)      r0, r0[0x0]

<__errno>:
             0x00082e90: 00 f0 40 77: entsp (lu6)     0x0
             0x00082e94: ee 17:       get (0r)        r11, id
             0x00082e96: 03 f0 1c 60: ldaw (lru6)     r0, dp[0xdc]
             0x00082e9a: 83 fc ec 1f: ldaw (l3r)      r0, r0[r11]
             0x00082e9e: c0 77:       retsp (u6)      0x0

<xscope_xlink_put_ch>:
             0x00082ea0: 00 f0 40 77: entsp (lu6)     0x0
             0x00082ea4: 00 f0 4a 58: ldw (lru6)      r1, dp[0xa]
             0x00082ea8: 4b 78:       bf (ru6)        r1, 0xb <xscope_xlink_put_ch_ret>
             0x00082eaa: 00 f0 89 58: ldw (lru6)      r2, dp[0x9]
             0x00082eae: 87 70:       bt (ru6)        r2, 0x7 <xscope_xlink_outt>
             0x00082eb0: 00 f0 4b 58: ldw (lru6)      r1, dp[0xb]
             0x00082eb4: 45 78:       bf (ru6)        r1, 0x5 <xscope_xlink_put_ch_ret>
             0x00082eb6: ca 86:       getr (rus)      r2, 0x2
             0x00082eb8: d6 16:       setd (r2r)      res[r2], r1
             0x00082eba: 00 f0 89 50: stw (lru6)      r2, dp[0x9]

<xscope_xlink_outt>:
             0x00082ebe: d2 0e:       outt (r2r)      res[r2], r0

<xscope_xlink_put_ch_ret>:
             0x00082ec0: c0 77:       retsp (u6)      0x0
             0x00082ec2: 00 00:       stw (2rus)      r0, r0[0x0]

<xscope_xlink_init>:
             0x00082ec4: 00 f0 40 77: entsp (lu6)     0x0
             0x00082ec8: 00 f0 4b 58: ldw (lru6)      r1, dp[0xb]
             0x00082ecc: 00 f0 48 7c: bf (lru6)       r1, -0x8 <xscope_xlink_put_ch_ret>
             0x00082ed0: ca 86:       getr (rus)      r2, 0x2
             0x00082ed2: d6 16:       setd (r2r)      res[r2], r1
             0x00082ed4: 00 f0 89 50: stw (lru6)      r2, dp[0x9]
             0x00082ed8: c0 77:       retsp (u6)      0x0
             0x00082eda: 00 00:       stw (2rus)      r0, r0[0x0]

<xscope_xlink_deinit>:
             0x00082edc: 00 f0 40 77: entsp (lu6)     0x0
             0x00082ee0: 00 f0 49 58: ldw (lru6)      r1, dp[0x9]
             0x00082ee4: 00 f0 54 7c: bf (lru6)       r1, -0x14 <xscope_xlink_put_ch_ret>
             0x00082ee8: e1 17:       freer (1r)      res[r1]
             0x00082eea: 80 68:       ldc (ru6)       r2, 0x0
             0x00082eec: 00 f0 89 50: stw (lru6)      r2, dp[0x9]
             0x00082ef0: c0 77:       retsp (u6)      0x0
             0x00082ef2: 00 00:       stw (2rus)      r0, r0[0x0]

<xscope_xlink_put_ct>:
             0x00082ef4: 00 f0 40 77: entsp (lu6)     0x0
             0x00082ef8: 00 f0 4a 58: ldw (lru6)      r1, dp[0xa]
             0x00082efc: 44 78:       bf (ru6)        r1, 0x4 <xscope_xlink_put_ct_ret>
             0x00082efe: 00 f0 89 58: ldw (lru6)      r2, dp[0x9]
             0x00082f02: 81 78:       bf (ru6)        r2, 0x1 <xscope_xlink_put_ct_ret>
             0x00082f04: d9 4e:       outct (rus)     res[r2], 0x1

<xscope_xlink_put_ct_ret>:
             0x00082f06: c0 77:       retsp (u6)      0x0

<xscope_xlink_start_token>:
             0x00082f08: 00 f0 40 77: entsp (lu6)     0x0
             0x00082f0c: 00 f0 4a 58: ldw (lru6)      r1, dp[0xa]
             0x00082f10: 48 78:       bf (ru6)        r1, 0x8 <xscope_xlink_start_token_ret>
             0x00082f12: 00 f0 89 58: ldw (lru6)      r2, dp[0x9]
             0x00082f16: 85 78:       bf (ru6)        r2, 0x5 <xscope_xlink_start_token_ret>
             0x00082f18: d9 4e:       outct (rus)     res[r2], 0x1
             0x00082f1a: 01 f0 d5 6a: ldc (lru6)      r11, 0x55
             0x00082f1e: 2b 4f:       outct (2r)      res[r2], r11
             0x00082f20: d9 4e:       outct (rus)     res[r2], 0x1

<xscope_xlink_start_token_ret>:
             0x00082f22: c0 77:       retsp (u6)      0x0

<localeconv>:
             0x00082f24: 00 f0 40 77: entsp (lu6)     0x0
             0x00082f28: 02 f0 48 7f: ldaw (lu6)      r11, cp[0x88]
             0x00082f2c: 8c 91:       add (2rus)      r0, r11, 0x0
             0x00082f2e: c0 77:       retsp (u6)      0x0

<__swsetup>:
             0x00082f30: 00 f0 48 77: entsp (lu6)     0x8
             0x00082f34: 05 f9 ec f7: std (l2rus)     r5, r4, sp[0x1]
             0x00082f38: 2e f9 ec f7: std (l2rus)     r7, r6, sp[0x2]
             0x00082f3c: 06 56:       stw (ru6)       r8, sp[0x6]
             0x00082f3e: 50 90:       add (2rus)      r5, r0, 0x0
             0x00082f40: 00 f0 2e 58: ldw (lru6)      r0, dp[0x2e]
             0x00082f44: 02 70:       bt (ru6)        r0, 0x2 <.label433>
             0x00082f46: 00 f0 87 d6: bl (lu10)       -0x287 <__sinit>
.label433    0x00082f4a: 27 f9 ec 9f: ldaw (l2rus)    r6, r5[0x3]
             0x00082f4e: 00 69:       ldc (ru6)       r4, 0x0
             0x00082f50: 18 83:       ld16s (3r)      r1, r6[r4]
             0x00082f52: c8 69:       ldc (ru6)       r7, 0x8
             0x00082f54: 47 3a:       and (3r)        r0, r1, r7
             0x00082f56: 23 70:       bt (ru6)        r0, 0x23 <.label434>
             0x00082f58: 10 68:       ldc (ru6)       r0, 0x10
             0x00082f5a: 04 38:       and (3r)        r0, r1, r0
             0x00082f5c: 3d 78:       bf (ru6)        r0, 0x3d <.label435>
             0x00082f5e: 04 68:       ldc (ru6)       r0, 0x4
             0x00082f60: 04 38:       and (3r)        r0, r1, r0
             0x00082f62: 18 78:       bf (ru6)        r0, 0x18 <.label436>
             0x00082f64: 30 68:       ldc (ru6)       r0, 0x30
             0x00082f66: 44 11:       add (3r)        r8, r5, r0
             0x00082f68: 80 09:       ldw (2rus)      r0, r8[0x0]
             0x00082f6a: 0b 78:       bf (ru6)        r0, 0xb <.label437>
             0x00082f6c: 01 f0 80 68: ldc (lru6)      r2, 0x40
             0x00082f70: e6 10:       add (3r)        r2, r5, r2
             0x00082f72: 22 30:       eq (3r)         r2, r0, r2
             0x00082f74: 84 70:       bt (ru6)        r2, 0x4 <.label438>
             0x00082f76: 04 f0 91 d4: bl (lu10)       -0x1091 <free>
             0x00082f7a: 00 68:       ldc (ru6)       r0, 0x0
             0x00082f7c: d8 80:       ld16s (3r)      r1, r6[r0]
.label438    0x00082f7e: 00 68:       ldc (ru6)       r0, 0x0
             0x00082f80: 80 01:       stw (2rus)      r0, r8[0x0]
.label437    0x00082f82: ff f3 1b 68: ldc (lru6)      r0, 0xffdb
             0x00082f86: 14 38:       and (3r)        r1, r1, r0
             0x00082f88: 00 68:       ldc (ru6)       r0, 0x0
             0x00082f8a: d8 f8 ec 87: st16 (l3r)      r1, r6[r0]
             0x00082f8e: c5 00:       stw (2rus)      r0, r5[0x1]
             0x00082f90: 04 0b:       ldw (2rus)      r0, r5[0x4]
             0x00082f92: c4 00:       stw (2rus)      r0, r5[0x0]
.label436    0x00082f94: 57 42:       or (3r)         r1, r1, r7
             0x00082f96: 35 47:       zext (rus)      r1, 0x10
             0x00082f98: 00 68:       ldc (ru6)       r0, 0x0
             0x00082f9a: d8 f8 ec 87: st16 (l3r)      r1, r6[r0]
.label434    0x00082f9e: 04 0b:       ldw (2rus)      r0, r5[0x4]
             0x00082fa0: 0c 70:       bt (ru6)        r0, 0xc <.label439>
             0x00082fa2: 0a f0 00 68: ldc (lru6)      r0, 0x280
             0x00082fa6: 04 38:       and (3r)        r0, r1, r0
             0x00082fa8: 31 47:       zext (rus)      r0, 0x10
             0x00082faa: 08 f0 80 68: ldc (lru6)      r2, 0x200
             0x00082fae: 02 30:       eq (3r)         r0, r0, r2
             0x00082fb0: 04 70:       bt (ru6)        r0, 0x4 <.label439>
             0x00082fb2: c4 90:       add (2rus)      r0, r5, 0x0
             0x00082fb4: 03 f0 e2 d1: bl (lu10)       0xde2 <__smakebuf>
             0x00082fb8: 18 83:       ld16s (3r)      r1, r6[r4]
.label439    0x00082fba: 04 90:       add (2rus)      r0, r1, 0x0
             0x00082fbc: 31 37:       sext (rus)      r0, 0x10
             0x00082fbe: 20 90:       add (2rus)      r2, r0, 0x0
             0x00082fc0: d9 46:       zext (rus)      r2, 0x1
             0x00082fc2: 85 78:       bf (ru6)        r2, 0x5 <.label440>
             0x00082fc4: 06 01:       stw (2rus)      r4, r5[0x2]
             0x00082fc6: 05 0b:       ldw (2rus)      r0, r5[0x5]
             0x00082fc8: c0 96:       neg (2r)        r0, r0
             0x00082fca: 06 03:       stw (2rus)      r0, r5[0x6]
             0x00082fcc: 09 73:       bu (u6)         0x9 <.label441>
.label440    0x00082fce: 82 68:       ldc (ru6)       r2, 0x2
             0x00082fd0: 02 38:       and (3r)        r0, r0, r2
             0x00082fd2: 04 78:       bf (ru6)        r0, 0x4 <.label442>
             0x00082fd4: 00 68:       ldc (ru6)       r0, 0x0
             0x00082fd6: 03 73:       bu (u6)         0x3 <.label443>
.label435    0x00082fd8: 10 a7:       mkmsk (rus)     r4, 0x20
             0x00082fda: 09 73:       bu (u6)         0x9 <.label444>
.label442    0x00082fdc: 05 0b:       ldw (2rus)      r0, r5[0x5]
.label443    0x00082fde: c6 00:       stw (2rus)      r0, r5[0x2]
.label441    0x00082fe0: 04 0b:       ldw (2rus)      r0, r5[0x4]
             0x00082fe2: 04 70:       bt (ru6)        r0, 0x4 <.label445>
             0x00082fe4: 02 f0 00 68: ldc (lru6)      r0, 0x80
             0x00082fe8: 04 38:       and (3r)        r0, r1, r0
             0x00082fea: 83 aa:       shr (2rus)      r4, r0, 0x7
.label445    0x00082fec: 11 37:       sext (rus)      r4, 0x1
.label444    0x00082fee: c0 90:       add (2rus)      r0, r4, 0x0
             0x00082ff0: 06 5e:       ldw (ru6)       r8, sp[0x6]
             0x00082ff2: 2e f9 ec ef: ldd (l2rus)     r7, r6, sp[0x2]
             0x00082ff6: 05 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x1]
             0x00082ffa: c8 77:       retsp (u6)      0x8

<__ledf2>:
             0x00082ffc: 00 f0 40 77: entsp (lu6)     0x0
             0x00083000: 84 77:       extsp (u6)      0x4
             0x00083002: 04 f9 ec f7: std (l2rus)     r5, r4, sp[0x0]
             0x00083006: 2d f9 ec f7: std (l2rus)     r7, r6, sp[0x1]
             0x0008300a: 03 f0 99 6d: ldw (lru6)      r6, cp[0xd9]
             0x0008300e: 86 3a:       and (3r)        r4, r1, r6
             0x00083010: 02 f0 76 6d: ldw (lru6)      r5, cp[0xb6]
             0x00083014: b1 33:       eq (3r)         r11, r4, r5
             0x00083016: c2 72:       bt (ru6)        r11, 0x2 <.label446>
             0x00083018: 74 cb:       lsu (3r)        r7, r5, r4
             0x0008301a: 02 73:       bu (u6)         0x2 <.label447>
.label446    0x0008301c: b0 b0:       eq (2rus)       r11, r0, 0x0
             0x0008301e: fc b1:       eq (2rus)       r7, r11, 0x0
.label447    0x00083020: 5d a7:       mkmsk (rus)     r11, 0x1
             0x00083022: e8 71:       bt (ru6)        r7, 0x28 <.label448>
             0x00083024: ae 3a:       and (3r)        r6, r3, r6
             0x00083026: 79 33:       eq (3r)         r7, r6, r5
             0x00083028: c2 71:       bt (ru6)        r7, 0x2 <.label449>
             0x0008302a: 56 cb:       lsu (3r)        r5, r5, r6
             0x0008302c: 02 73:       bu (u6)         0x2 <.label450>
.label449    0x0008302e: 58 b0:       eq (2rus)       r5, r2, 0x0
             0x00083030: 14 b1:       eq (2rus)       r5, r5, 0x0
.label450    0x00083032: 60 71:       bt (ru6)        r5, 0x20 <.label448>
             0x00083034: b8 40:       or (3r)         r11, r2, r0
             0x00083036: 48 43:       or (3r)         r4, r6, r4
             0x00083038: 7c 44:       or (3r)         r11, r11, r4
             0x0008303a: c8 7a:       bf (ru6)        r11, 0x8 <.label451>
             0x0008303c: bd 38:       and (3r)        r11, r3, r1
             0x0008303e: 3c fa ec 97: ashr (l2rus)    r11, r11, 0x20
             0x00083042: c6 72:       bt (ru6)        r11, 0x6 <.label452>
             0x00083044: b7 30:       eq (3r)         r11, r1, r3
             0x00083046: c8 72:       bt (ru6)        r11, 0x8 <.label453>
             0x00083048: b7 c0:       lss (3r)        r11, r1, r3
             0x0008304a: 07 73:       bu (u6)         0x7 <.label454>
.label451    0x0008304c: c0 6a:       ldc (ru6)       r11, 0x0
             0x0008304e: 12 73:       bu (u6)         0x12 <.label448>
.label452    0x00083050: b7 30:       eq (3r)         r11, r1, r3
             0x00083052: c5 72:       bt (ru6)        r11, 0x5 <.label455>
             0x00083054: bd c0:       lss (3r)        r11, r3, r1
             0x00083056: 04 73:       bu (u6)         0x4 <.label456>
.label453    0x00083058: b2 c8:       lsu (3r)        r11, r0, r2
.label454    0x0008305a: c5 7a:       bf (ru6)        r11, 0x5 <.label457>
             0x0008305c: 02 73:       bu (u6)         0x2 <.label458>
.label455    0x0008305e: b8 c8:       lsu (3r)        r11, r2, r0
.label456    0x00083060: c2 7a:       bf (ru6)        r11, 0x2 <.label457>
.label458    0x00083062: 5c a7:       mkmsk (rus)     r11, 0x20
             0x00083064: 07 73:       bu (u6)         0x7 <.label448>
.label457    0x00083066: 02 f8 ec 0f: xor (l3r)       r0, r0, r2
             0x0008306a: 17 f8 ec 0f: xor (l3r)       r1, r1, r3
             0x0008306e: 01 40:       or (3r)         r0, r0, r1
             0x00083070: 00 b0:       eq (2rus)       r0, r0, 0x0
             0x00083072: b0 b0:       eq (2rus)       r11, r0, 0x0
.label448    0x00083074: 8c 91:       add (2rus)      r0, r11, 0x0
             0x00083076: 2d f9 ec ef: ldd (l2rus)     r7, r6, sp[0x1]
             0x0008307a: 04 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x0]
             0x0008307e: 84 67:       ldaw (ru6)      sp, sp[0x4]
             0x00083080: c0 77:       retsp (u6)      0x0
             0x00083082: 00 00:       stw (2rus)      r0, r0[0x0]

<__gedf2>:
             0x00083084: 00 f0 40 77: entsp (lu6)     0x0
             0x00083088: 84 77:       extsp (u6)      0x4
             0x0008308a: 04 f9 ec f7: std (l2rus)     r5, r4, sp[0x0]
             0x0008308e: 2d f9 ec f7: std (l2rus)     r7, r6, sp[0x1]
             0x00083092: 03 f0 99 6d: ldw (lru6)      r6, cp[0xd9]
             0x00083096: 86 3a:       and (3r)        r4, r1, r6
             0x00083098: 02 f0 76 6d: ldw (lru6)      r5, cp[0xb6]
             0x0008309c: b1 33:       eq (3r)         r11, r4, r5
             0x0008309e: c2 72:       bt (ru6)        r11, 0x2 <.label459>
             0x000830a0: 74 cb:       lsu (3r)        r7, r5, r4
             0x000830a2: 02 73:       bu (u6)         0x2 <.label460>
.label459    0x000830a4: b0 b0:       eq (2rus)       r11, r0, 0x0
             0x000830a6: fc b1:       eq (2rus)       r7, r11, 0x0
.label460    0x000830a8: 5c a7:       mkmsk (rus)     r11, 0x20
             0x000830aa: e5 71:       bt (ru6)        r7, 0x25 <.label461>
             0x000830ac: ae 3a:       and (3r)        r6, r3, r6
             0x000830ae: 79 33:       eq (3r)         r7, r6, r5
             0x000830b0: c2 71:       bt (ru6)        r7, 0x2 <.label462>
             0x000830b2: 56 cb:       lsu (3r)        r5, r5, r6
             0x000830b4: 02 73:       bu (u6)         0x2 <.label463>
.label462    0x000830b6: 58 b0:       eq (2rus)       r5, r2, 0x0
             0x000830b8: 14 b1:       eq (2rus)       r5, r5, 0x0
.label463    0x000830ba: 5d 71:       bt (ru6)        r5, 0x1d <.label461>
             0x000830bc: 58 40:       or (3r)         r5, r2, r0
             0x000830be: 48 43:       or (3r)         r4, r6, r4
             0x000830c0: 44 43:       or (3r)         r4, r5, r4
             0x000830c2: 08 79:       bf (ru6)        r4, 0x8 <.label464>
             0x000830c4: 4d 38:       and (3r)        r4, r3, r1
             0x000830c6: 00 f9 ec 97: ashr (l2rus)    r4, r4, 0x20
             0x000830ca: 06 71:       bt (ru6)        r4, 0x6 <.label465>
             0x000830cc: 47 30:       eq (3r)         r4, r1, r3
             0x000830ce: 08 71:       bt (ru6)        r4, 0x8 <.label466>
             0x000830d0: 47 c0:       lss (3r)        r4, r1, r3
             0x000830d2: 09 73:       bu (u6)         0x9 <.label467>
.label464    0x000830d4: c0 6a:       ldc (ru6)       r11, 0x0
             0x000830d6: 0f 73:       bu (u6)         0xf <.label461>
.label465    0x000830d8: 47 30:       eq (3r)         r4, r1, r3
             0x000830da: 04 71:       bt (ru6)        r4, 0x4 <.label468>
             0x000830dc: 4d c0:       lss (3r)        r4, r3, r1
             0x000830de: 03 73:       bu (u6)         0x3 <.label467>
.label466    0x000830e0: 42 c8:       lsu (3r)        r4, r0, r2
             0x000830e2: 01 73:       bu (u6)         0x1 <.label467>
.label468    0x000830e4: 48 c8:       lsu (3r)        r4, r2, r0
.label467    0x000830e6: 07 71:       bt (ru6)        r4, 0x7 <.label461>
             0x000830e8: 02 f8 ec 0f: xor (l3r)       r0, r0, r2
             0x000830ec: 17 f8 ec 0f: xor (l3r)       r1, r1, r3
             0x000830f0: 01 40:       or (3r)         r0, r0, r1
             0x000830f2: 00 b0:       eq (2rus)       r0, r0, 0x0
             0x000830f4: b0 b0:       eq (2rus)       r11, r0, 0x0
.label461    0x000830f6: 8c 91:       add (2rus)      r0, r11, 0x0
             0x000830f8: 2d f9 ec ef: ldd (l2rus)     r7, r6, sp[0x1]
             0x000830fc: 04 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x0]
             0x00083100: 84 67:       ldaw (ru6)      sp, sp[0x4]
             0x00083102: c0 77:       retsp (u6)      0x0

<__unorddf2>:
             0x00083104: 00 f0 40 77: entsp (lu6)     0x0
             0x00083108: 82 77:       extsp (u6)      0x2
             0x0008310a: 04 f9 ec f7: std (l2rus)     r5, r4, sp[0x0]
             0x0008310e: 03 f0 d9 6e: ldw (lru6)      r11, cp[0xd9]
             0x00083112: c7 3c:       and (3r)        r4, r1, r11
             0x00083114: 02 f0 76 6c: ldw (lru6)      r1, cp[0xb6]
             0x00083118: 11 31:       eq (3r)         r5, r4, r1
             0x0008311a: 42 71:       bt (ru6)        r5, 0x2 <.label469>
             0x0008311c: 44 ca:       lsu (3r)        r0, r1, r4
             0x0008311e: 02 73:       bu (u6)         0x2 <.label470>
.label469    0x00083120: 00 b0:       eq (2rus)       r0, r0, 0x0
             0x00083122: 00 b0:       eq (2rus)       r0, r0, 0x0
.label470    0x00083124: 02 78:       bf (ru6)        r0, 0x2 <.label471>
             0x00083126: d1 a6:       mkmsk (rus)     r0, 0x1
             0x00083128: 07 73:       bu (u6)         0x7 <.label472>
.label471    0x0008312a: 8f 3c:       and (3r)        r0, r3, r11
             0x0008312c: 31 30:       eq (3r)         r3, r0, r1
             0x0008312e: c2 70:       bt (ru6)        r3, 0x2 <.label473>
             0x00083130: 04 c8:       lsu (3r)        r0, r1, r0
             0x00083132: 02 73:       bu (u6)         0x2 <.label472>
.label473    0x00083134: 08 b0:       eq (2rus)       r0, r2, 0x0
             0x00083136: 00 b0:       eq (2rus)       r0, r0, 0x0
.label472    0x00083138: 04 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x0]
             0x0008313c: 82 67:       ldaw (ru6)      sp, sp[0x2]
             0x0008313e: c0 77:       retsp (u6)      0x0

<__eqdf2>:
             0x00083140: 00 f0 42 77: entsp (lu6)     0x2
             0x00083144: 00 f0 a6 d4: bl (lu10)       -0xa6 <__ledf2>
             0x00083148: c2 77:       retsp (u6)      0x2
             0x0008314a: 00 00:       stw (2rus)      r0, r0[0x0]

<__ltdf2>:
             0x0008314c: 00 f0 42 77: entsp (lu6)     0x2
             0x00083150: 00 f0 ac d4: bl (lu10)       -0xac <__ledf2>
             0x00083154: c2 77:       retsp (u6)      0x2
             0x00083156: 00 00:       stw (2rus)      r0, r0[0x0]

<__nedf2>:
             0x00083158: 00 f0 42 77: entsp (lu6)     0x2
             0x0008315c: 00 f0 b2 d4: bl (lu10)       -0xb2 <__ledf2>
             0x00083160: c2 77:       retsp (u6)      0x2
             0x00083162: 00 00:       stw (2rus)      r0, r0[0x0]

<__gtdf2>:
             0x00083164: 00 f0 42 77: entsp (lu6)     0x2
             0x00083168: 00 f0 74 d4: bl (lu10)       -0x74 <__gedf2>
             0x0008316c: c2 77:       retsp (u6)      0x2
             0x0008316e: 00 00:       stw (2rus)      r0, r0[0x0]

<__isinfd>:
             0x00083170: 00 f0 40 77: entsp (lu6)     0x0
             0x00083174: 03 f0 99 6c: ldw (lru6)      r2, cp[0xd9]
             0x00083178: 16 38:       and (3r)        r1, r1, r2
             0x0008317a: c8 96:       neg (2r)        r2, r0
             0x0008317c: 02 40:       or (3r)         r0, r0, r2
             0x0008317e: 99 a7:       mkmsk (rus)     r2, 0x5
             0x00083180: 02 28:       shr (3r)        r0, r0, r2
             0x00083182: 04 40:       or (3r)         r0, r1, r0
             0x00083184: 02 f0 76 6c: ldw (lru6)      r1, cp[0xb6]
             0x00083188: 04 18:       sub (3r)        r0, r1, r0
             0x0008318a: c4 96:       neg (2r)        r1, r0
             0x0008318c: 01 40:       or (3r)         r0, r0, r1
             0x0008318e: 02 28:       shr (3r)        r0, r0, r2
             0x00083190: d5 a6:       mkmsk (rus)     r1, 0x1
             0x00083192: 01 f8 ec 0f: xor (l3r)       r0, r0, r1
             0x00083196: c0 77:       retsp (u6)      0x0

<__isnand>:
             0x00083198: 00 f0 40 77: entsp (lu6)     0x0
             0x0008319c: 03 f0 99 6c: ldw (lru6)      r2, cp[0xd9]
             0x000831a0: 16 38:       and (3r)        r1, r1, r2
             0x000831a2: c8 96:       neg (2r)        r2, r0
             0x000831a4: 02 40:       or (3r)         r0, r0, r2
             0x000831a6: 99 a7:       mkmsk (rus)     r2, 0x5
             0x000831a8: 02 28:       shr (3r)        r0, r0, r2
             0x000831aa: 04 40:       or (3r)         r0, r1, r0
             0x000831ac: 02 f0 76 6c: ldw (lru6)      r1, cp[0xb6]
             0x000831b0: 04 18:       sub (3r)        r0, r1, r0
             0x000831b2: 02 28:       shr (3r)        r0, r0, r2
             0x000831b4: c0 77:       retsp (u6)      0x0
             0x000831b6: 00 00:       stw (2rus)      r0, r0[0x0]

<frexp>:
             0x000831b8: 00 f0 46 77: entsp (lu6)     0x6
             0x000831bc: 05 f9 ec f7: std (l2rus)     r5, r4, sp[0x1]
             0x000831c0: 84 55:       stw (ru6)       r6, sp[0x4]
             0x000831c2: 48 90:       add (2rus)      r4, r2, 0x0
             0x000831c4: 03 f0 99 6d: ldw (lru6)      r6, cp[0xd9]
             0x000831c8: 66 3a:       and (3r)        r2, r1, r6
             0x000831ca: c0 68:       ldc (ru6)       r3, 0x0
             0x000831cc: f0 00:       stw (2rus)      r3, r4[0x0]
             0x000831ce: 03 f0 d8 6e: ldw (lru6)      r11, cp[0xd8]
             0x000831d2: 3e ca:       lsu (3r)        r11, r11, r2
             0x000831d4: da 72:       bt (ru6)        r11, 0x1a <.label474>
             0x000831d6: b8 40:       or (3r)         r11, r2, r0
             0x000831d8: d8 7a:       bf (ru6)        r11, 0x18 <.label474>
             0x000831da: 54 69:       ldc (ru6)       r5, 0x14
             0x000831dc: f9 2a:       shr (3r)        r11, r2, r5
             0x000831de: c9 72:       bt (ru6)        r11, 0x9 <.label475>
             0x000831e0: 80 68:       ldc (ru6)       r2, 0x0
             0x000831e2: 02 f0 f0 6c: ldw (lru6)      r3, cp[0xb0]
             0x000831e6: 00 f0 15 d0: bl (lu10)       0x15 <__muldf3>
             0x000831ea: 66 3a:       and (3r)        r2, r1, r6
             0x000831ec: 03 f0 c8 6c: ldw (lru6)      r3, cp[0xc8]
             0x000831f0: f0 00:       stw (2rus)      r3, r4[0x0]
.label475    0x000831f2: 69 2a:       shr (3r)        r2, r2, r5
             0x000831f4: 2b 10:       add (3r)        r2, r2, r3
             0x000831f6: 02 f0 fc 6c: ldw (lru6)      r3, cp[0xbc]
             0x000831fa: 2b 10:       add (3r)        r2, r2, r3
             0x000831fc: e0 00:       stw (2rus)      r2, r4[0x0]
             0x000831fe: 03 f0 97 6c: ldw (lru6)      r2, cp[0xd7]
             0x00083202: 16 38:       and (3r)        r1, r1, r2
             0x00083204: 02 f0 b4 6c: ldw (lru6)      r2, cp[0xb4]
             0x00083208: 16 40:       or (3r)         r1, r1, r2
.label474    0x0008320a: 84 5d:       ldw (ru6)       r6, sp[0x4]
             0x0008320c: 05 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x1]
             0x00083210: c6 77:       retsp (u6)      0x6
             0x00083212: 00 00:       stw (2rus)      r0, r0[0x0]

<__muldf3>:
             0x00083214: 00 f0 50 77: entsp (lu6)     0x10
             0x00083218: 44 fb ec f7: std (l2rus)     r5, r4, sp[0x4]
             0x0008321c: 6d fb ec f7: std (l2rus)     r7, r6, sp[0x5]
             0x00083220: 46 fc ec f7: std (l2rus)     r9, r8, sp[0x6]
             0x00083224: 8e 56:       stw (ru6)       r10, sp[0xe]
             0x00083226: 68 90:       add (2rus)      r6, r2, 0x0
             0x00083228: 50 90:       add (2rus)      r5, r0, 0x0
             0x0008322a: 94 6a:       ldc (ru6)       r10, 0x14
             0x0008322c: 86 2c:       shr (3r)        r0, r1, r10
             0x0008322e: 1f f0 bf 68: ldc (lru6)      r2, 0x7ff
             0x00083232: 92 38:       and (3r)        r9, r0, r2
             0x00083234: 8e 2c:       shr (3r)        r0, r3, r10
             0x00083236: 42 38:       and (3r)        r4, r0, r2
             0x00083238: 0d f8 ec 0f: xor (l3r)       r0, r3, r1
             0x0008323c: 02 f0 a6 6c: ldw (lru6)      r2, cp[0xa6]
             0x00083240: 02 38:       and (3r)        r0, r0, r2
             0x00083242: 07 54:       stw (ru6)       r0, sp[0x7]
             0x00083244: c0 6a:       ldc (ru6)       r11, 0x0
             0x00083246: 03 f0 16 6c: ldw (lru6)      r0, cp[0xd6]
             0x0008324a: 74 38:       and (3r)        r7, r1, r0
             0x0008324c: 8c 38:       and (3r)        r8, r3, r0
             0x0008324e: 85 99:       sub (2rus)      r0, r9, 0x1
             0x00083250: 1f f0 bd 68: ldc (lru6)      r2, 0x7fd
             0x00083254: 08 c8:       lsu (3r)        r0, r2, r0
             0x00083256: 37 70:       bt (ru6)        r0, 0x37 <.label476>
             0x00083258: c1 98:       sub (2rus)      r0, r4, 0x1
             0x0008325a: 1f f0 be 68: ldc (lru6)      r2, 0x7fe
             0x0008325e: 02 c8:       lsu (3r)        r0, r0, r2
             0x00083260: 32 78:       bf (ru6)        r0, 0x32 <.label476>
             0x00083262: 45 56:       stw (ru6)       r9, sp[0x5]
             0x00083264: 06 55:       stw (ru6)       r4, sp[0x6]
             0x00083266: c4 56:       stw (ru6)       r11, sp[0x4]
.label505    0x00083268: 15 68:       ldc (ru6)       r0, 0x15
             0x0008326a: c8 28:       shr (3r)        r0, r6, r0
             0x0008326c: 4b 68:       ldc (ru6)       r1, 0xb
             0x0008326e: a1 21:       shl (3r)        r2, r8, r1
             0x00083270: d9 20:       shl (3r)        r1, r6, r1
             0x00083272: 2c 92:       add (2rus)      r10, r11, 0x0
             0x00083274: 75 fa ba 06: lmul (l6r)      r3, r11, r1, r5, r10, r10
             0x00083278: 02 40:       or (3r)         r0, r0, r2
             0x0008327a: 02 f0 a6 6c: ldw (lru6)      r2, cp[0xa6]
             0x0008327e: 02 40:       or (3r)         r0, r0, r2
             0x00083280: 61 fa 5a 06: lmul (l6r)      r2, r5, r0, r5, r10, r10
             0x00083284: 02 f0 a8 6d: ldw (lru6)      r6, cp[0xa8]
             0x00083288: 8e 43:       or (3r)         r8, r7, r6
             0x0008328a: 94 fc 7a 06: lmul (l6r)      r1, r7, r1, r8, r10, r10
             0x0008328e: 02 f0 3a 6d: ldw (lru6)      r4, cp[0xba]
             0x00083292: 5c 3c:       and (3r)        r9, r11, r4
             0x00083294: bc 3b:       and (3r)        r11, r7, r4
             0x00083296: bf f9 be 07: ladd (l5r)      r11, r3, r11, r3, r10
             0x0008329a: bd fa 3e 07: ladd (l5r)      r3, r7, r3, r5, r10
             0x0008329e: bf 11:       add (3r)        r3, r11, r3
             0x000832a0: 38 92:       add (2rus)      r11, r10, 0x0
             0x000832a2: 80 fc 16 00: lmul (l6r)      r0, r1, r0, r8, r1, r2
             0x000832a6: 57 f8 37 07: ladd (l5r)      r1, r5, r1, r3, r11
             0x000832aa: 81 10:       add (3r)        r8, r0, r1
             0x000832ac: 06 5c:       ldw (ru6)       r0, sp[0x6]
             0x000832ae: 45 5c:       ldw (ru6)       r1, sp[0x5]
             0x000832b0: 04 10:       add (3r)        r0, r1, r0
             0x000832b2: 44 5c:       ldw (ru6)       r1, sp[0x4]
             0x000832b4: 01 10:       add (3r)        r0, r0, r1
             0x000832b6: 02 f0 7b 6c: ldw (lru6)      r1, cp[0xbb]
             0x000832ba: 01 10:       add (3r)        r0, r0, r1
             0x000832bc: d2 3b:       and (3r)        r1, r8, r6
             0x000832be: 59 78:       bf (ru6)        r1, 0x19 <.label477>
             0x000832c0: b4 91:       add (2rus)      r3, r9, 0x0
             0x000832c2: 01 90:       add (2rus)      r0, r0, 0x1
             0x000832c4: 22 73:       bu (u6)         0x22 <.label478>
.label476    0x000832c6: 06 55:       stw (ru6)       r4, sp[0x6]
             0x000832c8: 03 f0 d9 6e: ldw (lru6)      r11, cp[0xd9]
             0x000832cc: 87 3c:       and (3r)        r0, r1, r11
             0x000832ce: 02 f0 b6 6c: ldw (lru6)      r2, cp[0xb6]
             0x000832d2: 42 30:       eq (3r)         r4, r0, r2
             0x000832d4: 02 71:       bt (ru6)        r4, 0x2 <.label479>
             0x000832d6: 42 c8:       lsu (3r)        r4, r0, r2
             0x000832d8: 01 73:       bu (u6)         0x1 <.label480>
.label479    0x000832da: 04 b1:       eq (2rus)       r4, r5, 0x0
.label480    0x000832dc: 05 71:       bt (ru6)        r4, 0x5 <.label481>
             0x000832de: 02 f0 27 6c: ldw (lru6)      r0, cp[0xa7]
             0x000832e2: 14 40:       or (3r)         r1, r1, r0
             0x000832e4: 02 f0 25 73: bu (lu6)        0xa5 <.label482>
.label481    0x000832e8: cf 3c:       and (3r)        r4, r3, r11
             0x000832ea: 72 31:       eq (3r)         r11, r4, r2
             0x000832ec: e5 72:       bt (ru6)        r11, 0x25 <.label483>
             0x000832ee: 72 c9:       lsu (3r)        r11, r4, r2
             0x000832f0: 24 73:       bu (u6)         0x24 <.label484>
.label477    0x000832f2: 95 a7:       mkmsk (rus)     r1, 0x5
             0x000832f4: e5 28:       shr (3r)        r2, r5, r1
             0x000832f6: b1 a1:       shl (2rus)      r3, r8, 0x1
             0x000832f8: 8e 40:       or (3r)         r8, r3, r2
             0x000832fa: e5 a0:       shl (2rus)      r2, r5, 0x1
             0x000832fc: fd 28:       shr (3r)        r3, r7, r1
             0x000832fe: 5b 40:       or (3r)         r5, r2, r3
             0x00083300: 95 29:       shr (3r)        r1, r9, r1
             0x00083302: ed a0:       shl (2rus)      r2, r7, 0x1
             0x00083304: 79 40:       or (3r)         r7, r2, r1
             0x00083306: 15 a2:       shl (2rus)      r9, r9, 0x1
             0x00083308: b4 91:       add (2rus)      r3, r9, 0x0
.label478    0x0008330a: 94 68:       ldc (ru6)       r2, 0x14
             0x0008330c: 1f f0 7f 68: ldc (lru6)      r1, 0x7ff
             0x00083310: 11 c0:       lss (3r)        r1, r0, r1
             0x00083312: 47 70:       bt (ru6)        r1, 0x7 <.label485>
             0x00083314: 02 f0 36 6c: ldw (lru6)      r0, cp[0xb6]
             0x00083318: 47 5c:       ldw (ru6)       r1, sp[0x7]
             0x0008331a: 14 40:       or (3r)         r1, r1, r0
             0x0008331c: dc 91:       add (2rus)      r5, r11, 0x0
             0x0008331e: 02 f0 08 73: bu (lu6)        0x88 <.label482>
.label485    0x00083322: 9c c1:       lss (3r)        r1, r11, r0
             0x00083324: 60 78:       bf (ru6)        r1, 0x20 <.label486>
             0x00083326: ec 91:       add (2rus)      r6, r11, 0x0
             0x00083328: 03 f0 56 6c: ldw (lru6)      r1, cp[0xd6]
             0x0008332c: 91 39:       and (3r)        r1, r8, r1
             0x0008332e: 02 20:       shl (3r)        r0, r0, r2
             0x00083330: 11 40:       or (3r)         r1, r0, r1
             0x00083332: 4c 90:       add (2rus)      r4, r3, 0x0
             0x00083334: 01 f0 01 73: bu (lu6)        0x41 <.label487>
.label483    0x00083338: 78 b1:       eq (2rus)       r11, r6, 0x0
.label484    0x0008333a: c6 72:       bt (ru6)        r11, 0x6 <.label488>
             0x0008333c: 02 f0 27 6c: ldw (lru6)      r0, cp[0xa7]
             0x00083340: 1c 40:       or (3r)         r1, r3, r0
             0x00083342: 18 91:       add (2rus)      r5, r6, 0x0
             0x00083344: 01 f0 35 73: bu (lu6)        0x75 <.label482>
.label488    0x00083348: b2 f8 ec 0f: xor (l3r)       r11, r0, r2
             0x0008334c: f7 45:       or (3r)         r11, r5, r11
             0x0008334e: 01 f0 cf 72: bt (lru6)       r11, 0x4f <.label489>
             0x00083352: 08 43:       or (3r)         r0, r6, r4
             0x00083354: 01 f0 19 78: bf (lru6)       r0, 0x59 <.label490>
             0x00083358: 02 f0 26 6c: ldw (lru6)      r0, cp[0xa6]
             0x0008335c: 0c 38:       and (3r)        r0, r3, r0
             0x0008335e: 11 f8 ec 0f: xor (l3r)       r1, r0, r1
             0x00083362: 01 f0 26 73: bu (lu6)        0x66 <.label482>
.label486    0x00083366: d5 a6:       mkmsk (rus)     r1, 0x1
             0x00083368: 94 18:       sub (3r)        r9, r1, r0
             0x0008336a: c6 ab:       shr (2rus)      r0, r9, 0x6
             0x0008336c: 01 f0 1c 70: bt (lru6)       r0, 0x5c <.label491>
             0x00083370: ec 91:       add (2rus)      r6, r11, 0x0
             0x00083372: 01 f0 00 68: ldc (lru6)      r0, 0x40
             0x00083376: a1 1c:       sub (3r)        r2, r0, r9
             0x00083378: ac 90:       add (2rus)      r10, r3, 0x0
             0x0008337a: 88 91:       add (2rus)      r0, r10, 0x0
             0x0008337c: dc 90:       add (2rus)      r1, r7, 0x0
             0x0008337e: 48 90:       add (2rus)      r4, r2, 0x0
             0x00083380: 03 f0 2c d0: bl (lu10)       0xc2c <__ashldi3>
             0x00083384: 01 40:       or (3r)         r0, r0, r1
             0x00083386: 00 b0:       eq (2rus)       r0, r0, 0x0
             0x00083388: 00 b0:       eq (2rus)       r0, r0, 0x0
             0x0008338a: 06 54:       stw (ru6)       r0, sp[0x6]
             0x0008338c: c4 90:       add (2rus)      r0, r5, 0x0
             0x0008338e: 90 91:       add (2rus)      r1, r8, 0x0
             0x00083390: e0 90:       add (2rus)      r2, r4, 0x0
             0x00083392: 03 f0 23 d0: bl (lu10)       0xc23 <__ashldi3>
             0x00083396: 40 90:       add (2rus)      r4, r0, 0x0
             0x00083398: 45 54:       stw (ru6)       r1, sp[0x5]
             0x0008339a: 88 91:       add (2rus)      r0, r10, 0x0
             0x0008339c: dc 90:       add (2rus)      r1, r7, 0x0
             0x0008339e: a4 91:       add (2rus)      r2, r9, 0x0
             0x000833a0: 03 f0 32 d0: bl (lu10)       0xc32 <__lshrdi3>
             0x000833a4: 85 5c:       ldw (ru6)       r2, sp[0x5]
             0x000833a6: 79 40:       or (3r)         r7, r2, r1
             0x000833a8: c0 40:       or (3r)         r0, r4, r0
             0x000833aa: 46 5c:       ldw (ru6)       r1, sp[0x6]
             0x000833ac: 41 40:       or (3r)         r4, r0, r1
             0x000833ae: c4 90:       add (2rus)      r0, r5, 0x0
             0x000833b0: 90 91:       add (2rus)      r1, r8, 0x0
             0x000833b2: a4 91:       add (2rus)      r2, r9, 0x0
             0x000833b4: 03 f0 28 d0: bl (lu10)       0xc28 <__lshrdi3>
             0x000833b8: 50 90:       add (2rus)      r5, r0, 0x0
.label487    0x000833ba: 02 f0 26 6c: ldw (lru6)      r0, cp[0xa6]
             0x000833be: cc 30:       eq (3r)         r0, r7, r0
             0x000833c0: 04 70:       bt (ru6)        r0, 0x4 <.label492>
             0x000833c2: cc f8 ec 97: ashr (l2rus)    r0, r7, 0x20
             0x000833c6: 00 b0:       eq (2rus)       r0, r0, 0x0
             0x000833c8: 01 73:       bu (u6)         0x1 <.label493>
.label492    0x000833ca: c0 b0:       eq (2rus)       r0, r4, 0x0
.label493    0x000833cc: 87 5c:       ldw (ru6)       r2, sp[0x7]
             0x000833ce: 26 40:       or (3r)         r2, r1, r2
             0x000833d0: 18 90:       add (2rus)      r1, r2, 0x0
             0x000833d2: 02 70:       bt (ru6)        r0, 0x2 <.label494>
             0x000833d4: d1 a6:       mkmsk (rus)     r0, 0x1
             0x000833d6: 08 73:       bu (u6)         0x8 <.label495>
.label494    0x000833d8: 02 f0 26 6c: ldw (lru6)      r0, cp[0xa6]
             0x000833dc: cc f8 ec 0f: xor (l3r)       r0, r7, r0
             0x000833e0: c0 40:       or (3r)         r0, r4, r0
             0x000833e2: 27 70:       bt (ru6)        r0, 0x27 <.label482>
             0x000833e4: c4 90:       add (2rus)      r0, r5, 0x0
             0x000833e6: d1 46:       zext (rus)      r0, 0x1
.label495    0x000833e8: 14 f9 92 07: ladd (l5r)      r0, r5, r5, r0, r6
             0x000833ec: 14 10:       add (3r)        r1, r1, r0
             0x000833ee: 21 73:       bu (u6)         0x21 <.label482>
.label489    0x000833f0: e2 f8 ec 0f: xor (l3r)       r2, r4, r2
             0x000833f4: ea 40:       or (3r)         r2, r6, r2
             0x000833f6: 8d 70:       bt (ru6)        r2, 0xd <.label496>
             0x000833f8: c4 40:       or (3r)         r0, r5, r0
             0x000833fa: 07 78:       bf (ru6)        r0, 0x7 <.label490>
             0x000833fc: 02 f0 26 6c: ldw (lru6)      r0, cp[0xa6]
             0x00083400: 04 38:       and (3r)        r0, r1, r0
             0x00083402: 13 f8 ec 0f: xor (l3r)       r1, r0, r3
             0x00083406: 18 91:       add (2rus)      r5, r6, 0x0
             0x00083408: 14 73:       bu (u6)         0x14 <.label482>
.label490    0x0008340a: 02 f0 77 6c: ldw (lru6)      r1, cp[0xb7]
             0x0008340e: 40 69:       ldc (ru6)       r5, 0x0
             0x00083410: 10 73:       bu (u6)         0x10 <.label482>
.label496    0x00083412: d4 40:       or (3r)         r1, r5, r0
             0x00083414: 4c 78:       bf (ru6)        r1, 0xc <.label497>
             0x00083416: 18 43:       or (3r)         r1, r6, r4
             0x00083418: c0 6a:       ldc (ru6)       r11, 0x0
             0x0008341a: 46 78:       bf (ru6)        r1, 0x6 <.label491>
             0x0008341c: 82 2c:       shr (3r)        r0, r0, r10
             0x0008341e: 12 70:       bt (ru6)        r0, 0x12 <.label498>
             0x00083420: 05 55:       stw (ru6)       r4, sp[0x5]
             0x00083422: d2 79:       bf (ru6)        r7, 0x12 <.label499>
             0x00083424: c3 0f:       clz (2r)        r4, r7
             0x00083426: 13 73:       bu (u6)         0x13 <.label500>
.label491    0x00083428: dc 91:       add (2rus)      r5, r11, 0x0
             0x0008342a: 47 5c:       ldw (ru6)       r1, sp[0x7]
             0x0008342c: 02 73:       bu (u6)         0x2 <.label482>
.label497    0x0008342e: 40 69:       ldc (ru6)       r5, 0x0
             0x00083430: 47 5c:       ldw (ru6)       r1, sp[0x7]
.label482    0x00083432: c4 90:       add (2rus)      r0, r5, 0x0
             0x00083434: 8e 5e:       ldw (ru6)       r10, sp[0xe]
             0x00083436: 46 fc ec ef: ldd (l2rus)     r9, r8, sp[0x6]
             0x0008343a: 6d fb ec ef: ldd (l2rus)     r7, r6, sp[0x5]
             0x0008343e: 44 fb ec ef: ldd (l2rus)     r5, r4, sp[0x4]
             0x00083442: d0 77:       retsp (u6)      0x10
.label498    0x00083444: 40 68:       ldc (ru6)       r1, 0x0
             0x00083446: 0e 73:       bu (u6)         0xe <.label501>
.label499    0x00083448: 81 0f:       clz (2r)        r0, r5
             0x0008344a: c0 fc ec 9f: ldaw (l2rus)    r4, r0[0x8]
.label500    0x0008344e: 63 9d:       sub (2rus)      r2, r4, 0xb
             0x00083450: c4 90:       add (2rus)      r0, r5, 0x0
             0x00083452: dc 90:       add (2rus)      r1, r7, 0x0
             0x00083454: 02 f0 c2 d3: bl (lu10)       0xbc2 <__ashldi3>
             0x00083458: 50 90:       add (2rus)      r5, r0, 0x0
             0x0008345a: 74 90:       add (2rus)      r7, r1, 0x0
             0x0008345c: 0c 68:       ldc (ru6)       r0, 0xc
             0x0008345e: 50 1a:       sub (3r)        r1, r0, r4
             0x00083460: c0 6a:       ldc (ru6)       r11, 0x0
             0x00083462: 05 5d:       ldw (ru6)       r4, sp[0x5]
.label501    0x00083464: 42 2d:       shr (3r)        r0, r4, r10
             0x00083466: 05 70:       bt (ru6)        r0, 0x5 <.label502>
             0x00083468: a4 90:       add (2rus)      r10, r1, 0x0
             0x0008346a: cc 91:       add (2rus)      r4, r11, 0x0
             0x0008346c: 06 7a:       bf (ru6)        r8, 0x6 <.label503>
             0x0008346e: 20 0f:       clz (2r)        r0, r8
             0x00083470: 07 73:       bu (u6)         0x7 <.label504>
.label502    0x00083472: 45 56:       stw (ru6)       r9, sp[0x5]
             0x00083474: 44 54:       stw (ru6)       r1, sp[0x4]
             0x00083476: 04 f0 09 77: bu (lu6)        -0x109 <.label505>
.label503    0x0008347a: 82 0f:       clz (2r)        r0, r6
             0x0008347c: 80 fc ec 9f: ldaw (l2rus)    r0, r0[0x8]
.label504    0x00083480: 45 56:       stw (ru6)       r9, sp[0x5]
             0x00083482: a3 9c:       sub (2rus)      r2, r0, 0xb
             0x00083484: 90 90:       add (2rus)      r9, r0, 0x0
             0x00083486: c8 90:       add (2rus)      r0, r6, 0x0
             0x00083488: 90 91:       add (2rus)      r1, r8, 0x0
             0x0008348a: 02 f0 a7 d3: bl (lu10)       0xba7 <__ashldi3>
             0x0008348e: 60 90:       add (2rus)      r6, r0, 0x0
             0x00083490: 84 90:       add (2rus)      r8, r1, 0x0
             0x00083492: 8b f9 ec 9f: ldaw (l2rus)    r0, r10[0x3]
             0x00083496: 81 1c:       sub (3r)        r0, r0, r9
             0x00083498: 04 54:       stw (ru6)       r0, sp[0x4]
             0x0008349a: 70 91:       add (2rus)      r11, r4, 0x0
             0x0008349c: 04 f0 1c 77: bu (lu6)        -0x11c <.label505>

<__fixdfsi>:
             0x000834a0: 00 f0 44 77: entsp (lu6)     0x4
             0x000834a4: 02 55:       stw (ru6)       r4, sp[0x2]
             0x000834a6: 24 f8 ec 97: ashr (l2rus)    r2, r1, 0x20
             0x000834aa: 82 70:       bt (ru6)        r2, 0x2 <.label506>
             0x000834ac: 11 a7:       mkmsk (rus)     r4, 0x1
             0x000834ae: 01 73:       bu (u6)         0x1 <.label507>
.label506    0x000834b0: 10 a7:       mkmsk (rus)     r4, 0x20
.label507    0x000834b2: 94 68:       ldc (ru6)       r2, 0x14
             0x000834b4: 26 28:       shr (3r)        r2, r1, r2
             0x000834b6: 1f f0 ff 68: ldc (lru6)      r3, 0x7ff
             0x000834ba: 3b 38:       and (3r)        r3, r2, r3
             0x000834bc: 80 68:       ldc (ru6)       r2, 0x0
             0x000834be: 02 f0 fb 6e: ldw (lru6)      r11, cp[0xbb]
             0x000834c2: bf fc 5e 07: ladd (l5r)      r11, r3, r3, r11, r2
             0x000834c6: 03 f0 d6 6e: ldw (lru6)      r11, cp[0xd6]
             0x000834ca: 97 3c:       and (3r)        r1, r1, r11
             0x000834cc: 02 f0 e8 6e: ldw (lru6)      r11, cp[0xa8]
             0x000834d0: 97 44:       or (3r)         r1, r1, r11
             0x000834d2: f3 6a:       ldc (ru6)       r11, 0x33
             0x000834d4: 3f ca:       lsu (3r)        r11, r11, r3
             0x000834d6: c5 72:       bt (ru6)        r11, 0x5 <.label508>
             0x000834d8: b4 68:       ldc (ru6)       r2, 0x34
             0x000834da: 2b 18:       sub (3r)        r2, r2, r3
             0x000834dc: 02 f0 94 d3: bl (lu10)       0xb94 <__lshrdi3>
             0x000834e0: 08 73:       bu (u6)         0x8 <.label509>
.label508    0x000834e2: bc f8 ec 97: ashr (l2rus)    r11, r3, 0x20
             0x000834e6: c7 72:       bt (ru6)        r11, 0x7 <.label510>
             0x000834e8: 03 f0 89 6c: ldw (lru6)      r2, cp[0xc9]
             0x000834ec: 2e 10:       add (3r)        r2, r3, r2
             0x000834ee: 02 f0 75 d3: bl (lu10)       0xb75 <__ashldi3>
.label509    0x000834f2: 60 fa ec 3f: mul (l3r)       r2, r0, r4
.label510    0x000834f6: 08 90:       add (2rus)      r0, r2, 0x0
             0x000834f8: 02 5d:       ldw (ru6)       r4, sp[0x2]
             0x000834fa: c4 77:       retsp (u6)      0x4

<__floatsidf>:
             0x000834fc: 00 f0 46 77: entsp (lu6)     0x6
             0x00083500: 05 f9 ec f7: std (l2rus)     r5, r4, sp[0x1]
             0x00083504: 84 55:       stw (ru6)       r6, sp[0x4]
             0x00083506: 20 90:       add (2rus)      r2, r0, 0x0
             0x00083508: 00 68:       ldc (ru6)       r0, 0x0
             0x0008350a: 10 90:       add (2rus)      r1, r0, 0x0
             0x0008350c: 9e 78:       bf (ru6)        r2, 0x1e <.label511>
             0x0008350e: 08 f8 ec 97: ashr (l2rus)    r0, r2, 0x20
             0x00083512: 18 10:       add (3r)        r1, r2, r0
             0x00083514: 00 69:       ldc (ru6)       r4, 0x0
             0x00083516: 68 c2:       lss (3r)        r2, r2, r4
             0x00083518: 9d a7:       mkmsk (rus)     r3, 0x5
             0x0008351a: 5b 20:       shl (3r)        r5, r2, r3
             0x0008351c: 04 f8 ec 0f: xor (l3r)       r0, r1, r0
             0x00083520: 08 0f:       clz (2r)        r6, r0
             0x00083522: 5e 1a:       sub (3r)        r1, r3, r6
             0x00083524: b4 68:       ldc (ru6)       r2, 0x34
             0x00083526: 29 18:       sub (3r)        r2, r2, r1
             0x00083528: d0 90:       add (2rus)      r1, r4, 0x0
             0x0008352a: 02 f0 57 d3: bl (lu10)       0xb57 <__ashldi3>
             0x0008352e: 02 f0 a8 6c: ldw (lru6)      r2, cp[0xa8]
             0x00083532: 16 f8 ec 0f: xor (l3r)       r1, r1, r2
             0x00083536: 10 f0 9e 68: ldc (lru6)      r2, 0x41e
             0x0008353a: 6a 1a:       sub (3r)        r2, r2, r6
             0x0008353c: d4 68:       ldc (ru6)       r3, 0x14
             0x0008353e: 2b 20:       shl (3r)        r2, r2, r3
             0x00083540: 40 fa 9c 07: ladd (l5r)      r3, r0, r0, r4, r4
             0x00083544: 16 f8 db 06: ladd (l5r)      r2, r1, r1, r2, r3
             0x00083548: 55 42:       or (3r)         r1, r1, r5
.label511    0x0008354a: 84 5d:       ldw (ru6)       r6, sp[0x4]
             0x0008354c: 05 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x1]
             0x00083550: c6 77:       retsp (u6)      0x6
             0x00083552: 00 00:       stw (2rus)      r0, r0[0x0]

<__subdf3>:
             0x00083554: 00 f0 42 77: entsp (lu6)     0x2
             0x00083558: 02 f0 e6 6e: ldw (lru6)      r11, cp[0xa6]
             0x0008355c: bf fc ec 0f: xor (l3r)       r3, r3, r11
             0x00083560: 02 f0 68 d3: bl (lu10)       0xb68 <__adddf3>
             0x00083564: c2 77:       retsp (u6)      0x2
             0x00083566: 00 00:       stw (2rus)      r0, r0[0x0]

<dtoa>:
             0x00083568: 00 f0 64 77: entsp (lu6)     0x24
             0x0008356c: 1c 55:       stw (ru6)       r4, sp[0x1c]
             0x0008356e: 5d 55:       stw (ru6)       r5, sp[0x1d]
             0x00083570: 9e 55:       stw (ru6)       r6, sp[0x1e]
             0x00083572: df 55:       stw (ru6)       r7, sp[0x1f]
             0x00083574: 20 56:       stw (ru6)       r8, sp[0x20]
             0x00083576: 61 56:       stw (ru6)       r9, sp[0x21]
             0x00083578: a2 56:       stw (ru6)       r10, sp[0x22]
             0x0008357a: d9 54:       stw (ru6)       r3, sp[0x19]
             0x0008357c: 98 54:       stw (ru6)       r2, sp[0x18]
             0x0008357e: 64 90:       add (2rus)      r6, r1, 0x0
             0x00083580: a0 90:       add (2rus)      r10, r0, 0x0
             0x00083582: 66 5d:       ldw (ru6)       r5, sp[0x26]
             0x00083584: 67 5e:       ldw (ru6)       r9, sp[0x27]
             0x00083586: ee 17:       get (0r)        r11, id
             0x00083588: 03 f0 24 62: ldaw (lru6)     r8, dp[0xe4]
             0x0008358c: 13 4e:       ldw (3r)        r1, r8[r11]
             0x0008358e: 50 78:       bf (ru6)        r1, 0x10 <.label512>
             0x00083590: ee 17:       get (0r)        r11, id
             0x00083592: cc 91:       add (2rus)      r4, r11, 0x0
             0x00083594: 03 f0 2c 60: ldaw (lru6)     r0, dp[0xec]
             0x00083598: 60 4a:       ldw (3r)        r2, r0[r4]
             0x0008359a: 25 00:       stw (2rus)      r2, r1[0x1]
             0x0008359c: 40 4a:       ldw (3r)        r0, r0[r4]
             0x0008359e: d9 a6:       mkmsk (rus)     r2, 0x1
             0x000835a0: 08 20:       shl (3r)        r0, r2, r0
             0x000835a2: 06 00:       stw (2rus)      r0, r1[0x2]
             0x000835a4: c0 69:       ldc (ru6)       r7, 0x0
             0x000835a6: cc 90:       add (2rus)      r0, r7, 0x0
             0x000835a8: 03 f0 d4 d0: bl (lu10)       0xcd4 <_Bfree>
             0x000835ac: 30 fc ec 07: stw (l3r)       r7, r8[r4]
.label512    0x000835b0: 25 5d:       ldw (ru6)       r4, sp[0x25]
             0x000835b2: c8 f8 ec 97: ashr (l2rus)    r0, r6, 0x20
             0x000835b6: 03 70:       bt (ru6)        r0, 0x3 <.label513>
             0x000835b8: 00 68:       ldc (ru6)       r0, 0x0
             0x000835ba: c4 00:       stw (2rus)      r0, r5[0x0]
             0x000835bc: 05 73:       bu (u6)         0x5 <.label514>
.label513    0x000835be: d1 a6:       mkmsk (rus)     r0, 0x1
             0x000835c0: c4 00:       stw (2rus)      r0, r5[0x0]
             0x000835c2: 03 f0 19 6c: ldw (lru6)      r0, cp[0xd9]
             0x000835c6: 28 39:       and (3r)        r6, r6, r0
.label514    0x000835c8: 02 f0 36 6c: ldw (lru6)      r0, cp[0xb6]
             0x000835cc: 18 39:       and (3r)        r5, r6, r0
             0x000835ce: c4 30:       eq (3r)         r0, r5, r0
             0x000835d0: 19 78:       bf (ru6)        r0, 0x19 <.label515>
             0x000835d2: 9c f0 0f 68: ldc (lru6)      r0, 0x270f
             0x000835d6: c0 00:       stw (2rus)      r0, r4[0x0]
             0x000835d8: 03 f0 6f 7f: ldaw (lu6)      r11, cp[0xef]
             0x000835dc: 8c 91:       add (2rus)      r0, r11, 0x0
             0x000835de: 8b 72:       bt (ru6)        r10, 0xb <.label516>
             0x000835e0: 03 f0 16 6c: ldw (lru6)      r0, cp[0xd6]
             0x000835e4: d8 38:       and (3r)        r1, r6, r0
             0x000835e6: 03 f0 6b 7f: ldaw (lu6)      r11, cp[0xeb]
             0x000835ea: ac 91:       add (2rus)      r2, r11, 0x0
             0x000835ec: 03 f0 6f 7f: ldaw (lu6)      r11, cp[0xef]
             0x000835f0: 8c 91:       add (2rus)      r0, r11, 0x0
             0x000835f2: 41 70:       bt (ru6)        r1, 0x1 <.label516>
             0x000835f4: 08 90:       add (2rus)      r0, r2, 0x0
.label516    0x000835f6: 1a f0 70 7a: bf (lru6)       r9, 0x6b0 <.label517>
             0x000835fa: d6 a6:       mkmsk (rus)     r1, 0x2
             0x000835fc: 11 88:       ld8u (3r)       r1, r0[r1]
             0x000835fe: 75 70:       bt (ru6)        r1, 0x35 <.label518>
             0x00083600: 13 90:       add (2rus)      r1, r0, 0x3
             0x00083602: 34 73:       bu (u6)         0x34 <.label519>
.label515    0x00083604: 80 68:       ldc (ru6)       r2, 0x0
             0x00083606: 88 91:       add (2rus)      r0, r10, 0x0
             0x00083608: d8 90:       add (2rus)      r1, r6, 0x0
             0x0008360a: 38 90:       add (2rus)      r3, r2, 0x0
             0x0008360c: 00 f0 5c d6: bl (lu10)       -0x25c <__nedf2>
             0x00083610: 20 78:       bf (ru6)        r0, 0x20 <.label520>
             0x00083612: 1b 64:       ldaw (ru6)      r0, sp[0x1b]
             0x00083614: 01 54:       stw (ru6)       r0, sp[0x1]
             0x00083616: 00 69:       ldc (ru6)       r4, 0x0
             0x00083618: da 64:       ldaw (ru6)      r3, sp[0x1a]
             0x0008361a: c0 90:       add (2rus)      r0, r4, 0x0
             0x0008361c: 98 91:       add (2rus)      r1, r10, 0x0
             0x0008361e: e8 90:       add (2rus)      r2, r6, 0x0
             0x00083620: 03 f0 98 d3: bl (lu10)       0xf98 <__d2b>
             0x00083624: 17 54:       stw (ru6)       r0, sp[0x17]
             0x00083626: 14 68:       ldc (ru6)       r0, 0x14
             0x00083628: c8 28:       shr (3r)        r0, r6, r0
             0x0008362a: 1f f0 7f 68: ldc (lru6)      r1, 0x7ff
             0x0008362e: 01 38:       and (3r)        r0, r0, r1
             0x00083630: 20 78:       bf (ru6)        r0, 0x20 <.label521>
             0x00083632: 47 55:       stw (ru6)       r5, sp[0x7]
             0x00083634: 50 56:       stw (ru6)       r9, sp[0x10]
             0x00083636: 03 f0 56 6c: ldw (lru6)      r1, cp[0xd6]
             0x0008363a: d9 38:       and (3r)        r1, r6, r1
             0x0008363c: 93 55:       stw (ru6)       r6, sp[0x13]
             0x0008363e: 02 f0 b5 6c: ldw (lru6)      r2, cp[0xb5]
             0x00083642: 16 40:       or (3r)         r1, r1, r2
             0x00083644: 02 f0 bb 6c: ldw (lru6)      r2, cp[0xbb]
             0x00083648: 92 10:       add (3r)        r9, r0, r2
             0x0008364a: 88 91:       add (2rus)      r0, r10, 0x0
             0x0008364c: 96 56:       stw (ru6)       r10, sp[0x16]
             0x0008364e: 06 55:       stw (ru6)       r4, sp[0x6]
             0x00083650: 36 73:       bu (u6)         0x36 <.label522>
.label520    0x00083652: d1 a6:       mkmsk (rus)     r0, 0x1
             0x00083654: c0 00:       stw (2rus)      r0, r4[0x0]
             0x00083656: 03 f0 5c 7f: ldaw (lu6)      r11, cp[0xdc]
             0x0008365a: 8c 91:       add (2rus)      r0, r11, 0x0
             0x0008365c: 19 f0 7d 7a: bf (lru6)       r9, 0x67d <.label517>
             0x00083660: 03 f0 5c 7f: ldaw (lu6)      r11, cp[0xdc]
             0x00083664: 8c 91:       add (2rus)      r0, r11, 0x0
             0x00083666: 11 90:       add (2rus)      r1, r0, 0x1
             0x00083668: 01 73:       bu (u6)         0x1 <.label519>
.label518    0x0008366a: 90 94:       add (2rus)      r1, r0, 0x8
.label519    0x0008366c: 94 01:       stw (2rus)      r1, r9[0x0]
             0x0008366e: 19 f0 34 73: bu (lu6)        0x674 <.label517>
.label521    0x00083672: 47 55:       stw (ru6)       r5, sp[0x7]
             0x00083674: 1b 5c:       ldw (ru6)       r0, sp[0x1b]
             0x00083676: 5a 5c:       ldw (ru6)       r1, sp[0x1a]
             0x00083678: 54 10:       add (3r)        r5, r1, r0
             0x0008367a: 10 f0 32 68: ldc (lru6)      r0, 0x432
             0x0008367e: c4 10:       add (3r)        r0, r5, r0
             0x00083680: 61 68:       ldc (ru6)       r1, 0x21
             0x00083682: 01 c0:       lss (3r)        r0, r0, r1
             0x00083684: 0d 70:       bt (ru6)        r0, 0xd <.label523>
             0x00083686: 50 56:       stw (ru6)       r9, sp[0x10]
             0x00083688: 02 f0 3d 6c: ldw (lru6)      r0, cp[0xbd]
             0x0008368c: 41 1a:       sub (3r)        r0, r0, r5
             0x0008368e: c8 20:       shl (3r)        r0, r6, r0
             0x00083690: 93 55:       stw (ru6)       r6, sp[0x13]
             0x00083692: 10 f0 52 68: ldc (lru6)      r1, 0x412
             0x00083696: d5 10:       add (3r)        r1, r5, r1
             0x00083698: 99 29:       shr (3r)        r1, r10, r1
             0x0008369a: 96 56:       stw (ru6)       r10, sp[0x16]
             0x0008369c: 01 40:       or (3r)         r0, r0, r1
             0x0008369e: 07 73:       bu (u6)         0x7 <.label524>
.label523    0x000836a0: 93 55:       stw (ru6)       r6, sp[0x13]
             0x000836a2: 50 56:       stw (ru6)       r9, sp[0x10]
             0x000836a4: 03 f0 10 6c: ldw (lru6)      r0, cp[0xd0]
             0x000836a8: 41 1a:       sub (3r)        r0, r0, r5
             0x000836aa: 88 21:       shl (3r)        r0, r10, r0
             0x000836ac: 96 56:       stw (ru6)       r10, sp[0x16]
.label524    0x000836ae: 03 f0 ad d3: bl (lu10)       0xfad <__floatunsidf>
             0x000836b2: 02 f0 a9 6c: ldw (lru6)      r2, cp[0xa9]
             0x000836b6: 16 10:       add (3r)        r1, r1, r2
             0x000836b8: 55 99:       sub (2rus)      r9, r5, 0x1
             0x000836ba: d9 a6:       mkmsk (rus)     r2, 0x1
             0x000836bc: 86 54:       stw (ru6)       r2, sp[0x6]
.label522    0x000836be: 02 f0 f8 6c: ldw (lru6)      r3, cp[0xb8]
             0x000836c2: e0 90:       add (2rus)      r2, r4, 0x0
             0x000836c4: 02 f0 b6 d2: bl (lu10)       0xab6 <__adddf3>
             0x000836c8: 03 f0 82 6c: ldw (lru6)      r2, cp[0xc2]
             0x000836cc: 03 f0 c6 6c: ldw (lru6)      r3, cp[0xc6]
             0x000836d0: 00 f0 60 d6: bl (lu10)       -0x260 <__muldf3>
             0x000836d4: 03 f0 87 6c: ldw (lru6)      r2, cp[0xc7]
             0x000836d8: 02 f0 ff 6c: ldw (lru6)      r3, cp[0xbf]
             0x000836dc: 02 f0 aa d2: bl (lu10)       0xaaa <__adddf3>
             0x000836e0: 70 90:       add (2rus)      r7, r0, 0x0
             0x000836e2: a4 90:       add (2rus)      r10, r1, 0x0
             0x000836e4: 84 91:       add (2rus)      r0, r9, 0x0
             0x000836e6: 00 f0 f7 d4: bl (lu10)       -0xf7 <__floatsidf>
             0x000836ea: 03 f0 92 6c: ldw (lru6)      r2, cp[0xd2]
             0x000836ee: 02 f0 fe 6c: ldw (lru6)      r3, cp[0xbe]
             0x000836f2: 00 f0 71 d6: bl (lu10)       -0x271 <__muldf3>
             0x000836f6: ec 90:       add (2rus)      r2, r7, 0x0
             0x000836f8: b8 91:       add (2rus)      r3, r10, 0x0
             0x000836fa: 02 f0 9b d2: bl (lu10)       0xa9b <__adddf3>
             0x000836fe: a0 90:       add (2rus)      r10, r0, 0x0
             0x00083700: 54 90:       add (2rus)      r5, r1, 0x0
             0x00083702: 00 f0 33 d5: bl (lu10)       -0x133 <__fixdfsi>
             0x00083706: 70 90:       add (2rus)      r7, r0, 0x0
             0x00083708: 88 91:       add (2rus)      r0, r10, 0x0
             0x0008370a: d4 90:       add (2rus)      r1, r5, 0x0
             0x0008370c: e0 90:       add (2rus)      r2, r4, 0x0
             0x0008370e: f0 90:       add (2rus)      r3, r4, 0x0
             0x00083710: 00 f0 e4 d6: bl (lu10)       -0x2e4 <__ltdf2>
             0x00083714: 80 c2:       lss (3r)        r4, r0, r4
             0x00083716: cc 90:       add (2rus)      r0, r7, 0x0
             0x00083718: 00 f0 10 d5: bl (lu10)       -0x110 <__floatsidf>
             0x0008371c: 20 90:       add (2rus)      r2, r0, 0x0
             0x0008371e: 34 90:       add (2rus)      r3, r1, 0x0
             0x00083720: 88 91:       add (2rus)      r0, r10, 0x0
             0x00083722: d4 90:       add (2rus)      r1, r5, 0x0
             0x00083724: 00 f0 e8 d6: bl (lu10)       -0x2e8 <__nedf2>
             0x00083728: 00 b0:       eq (2rus)       r0, r0, 0x0
             0x0008372a: 00 b0:       eq (2rus)       r0, r0, 0x0
             0x0008372c: c0 38:       and (3r)        r0, r4, r0
             0x0008372e: 6c 19:       sub (3r)        r10, r7, r0
             0x00083730: 11 a7:       mkmsk (rus)     r4, 0x1
             0x00083732: 16 68:       ldc (ru6)       r0, 0x16
             0x00083734: 82 cc:       lsu (3r)        r0, r0, r10
             0x00083736: 23 70:       bt (ru6)        r0, 0x23 <.label525>
             0x00083738: 8b a1:       shl (2rus)      r0, r10, 0x3
             0x0008373a: 01 f0 44 7f: ldaw (lu6)      r11, cp[0x44]
             0x0008373e: 8c 11:       add (3r)        r0, r11, r0
             0x00083740: 40 f8 f5 27: ldd (l3rus)     r5, r4, r0[0x0]
             0x00083744: 00 68:       ldc (ru6)       r0, 0x0
             0x00083746: 0d 54:       stw (ru6)       r0, sp[0xd]
             0x00083748: 96 5d:       ldw (ru6)       r6, sp[0x16]
             0x0008374a: c8 90:       add (2rus)      r0, r6, 0x0
             0x0008374c: 13 5e:       ldw (ru6)       r8, sp[0x13]
             0x0008374e: 90 91:       add (2rus)      r1, r8, 0x0
             0x00083750: e0 90:       add (2rus)      r2, r4, 0x0
             0x00083752: f4 90:       add (2rus)      r3, r5, 0x0
             0x00083754: 00 f0 6a d7: bl (lu10)       -0x36a <__gedf2>
             0x00083758: 00 f8 ec 97: ashr (l2rus)    r0, r0, 0x20
             0x0008375c: 70 b0:       eq (2rus)       r7, r0, 0x0
             0x0008375e: c8 90:       add (2rus)      r0, r6, 0x0
             0x00083760: 90 91:       add (2rus)      r1, r8, 0x0
             0x00083762: e0 90:       add (2rus)      r2, r4, 0x0
             0x00083764: f4 90:       add (2rus)      r3, r5, 0x0
             0x00083766: 00 f0 33 d7: bl (lu10)       -0x333 <__unorddf2>
             0x0008376a: 00 b0:       eq (2rus)       r0, r0, 0x0
             0x0008376c: 00 b0:       eq (2rus)       r0, r0, 0x0
             0x0008376e: 43 42:       or (3r)         r0, r0, r7
             0x00083770: 01 70:       bt (ru6)        r0, 0x1 <.label526>
             0x00083772: 29 9a:       sub (2rus)      r10, r10, 0x1
.label526    0x00083774: 03 f0 24 62: ldaw (lru6)     r8, dp[0xe4]
             0x00083778: d8 5e:       ldw (ru6)       r11, sp[0x18]
             0x0008377a: 11 a7:       mkmsk (rus)     r4, 0x1
             0x0008377c: 02 73:       bu (u6)         0x2 <.label527>
.label525    0x0008377e: 0d 55:       stw (ru6)       r4, sp[0xd]
             0x00083780: d8 5e:       ldw (ru6)       r11, sp[0x18]
.label527    0x00083782: 1b 5c:       ldw (ru6)       r0, sp[0x1b]
             0x00083784: 81 1c:       sub (3r)        r0, r0, r9
             0x00083786: c0 68:       ldc (ru6)       r3, 0x0
             0x00083788: 1c c0:       lss (3r)        r1, r3, r0
             0x0008378a: 42 70:       bt (ru6)        r1, 0x2 <.label528>
             0x0008378c: 2c 90:       add (2rus)      r2, r3, 0x0
             0x0008378e: 01 73:       bu (u6)         0x1 <.label529>
.label528    0x00083790: 21 98:       sub (2rus)      r2, r0, 0x1
.label529    0x00083792: 41 70:       bt (ru6)        r1, 0x1 <.label530>
             0x00083794: f0 18:       sub (3r)        r3, r4, r0
.label530    0x00083796: 88 f9 ec 97: ashr (l2rus)    r0, r10, 0x20
             0x0008379a: 05 70:       bt (ru6)        r0, 0x5 <.label531>
             0x0008379c: aa 14:       add (3r)        r2, r2, r10
             0x0008379e: 91 54:       stw (ru6)       r2, sp[0x11]
             0x000837a0: 80 69:       ldc (ru6)       r6, 0x0
             0x000837a2: a8 91:       add (2rus)      r2, r10, 0x0
             0x000837a4: 04 73:       bu (u6)         0x4 <.label532>
.label531    0x000837a6: 91 54:       stw (ru6)       r2, sp[0x11]
             0x000837a8: be 1c:       sub (3r)        r3, r3, r10
             0x000837aa: 6a 97:       neg (2r)        r6, r10
             0x000837ac: 80 68:       ldc (ru6)       r2, 0x0
.label532    0x000837ae: 09 68:       ldc (ru6)       r0, 0x9
             0x000837b0: 83 cc:       lsu (3r)        r0, r0, r11
             0x000837b2: 40 68:       ldc (ru6)       r1, 0x0
             0x000837b4: 44 90:       add (2rus)      r4, r1, 0x0
             0x000837b6: 01 70:       bt (ru6)        r0, 0x1 <.label533>
             0x000837b8: cc 91:       add (2rus)      r4, r11, 0x0
.label533    0x000837ba: c5 6a:       ldc (ru6)       r11, 0x5
             0x000837bc: f0 91:       add (2rus)      r7, r8, 0x0
             0x000837be: cc c3:       lss (3r)        r0, r11, r4
             0x000837c0: 03 70:       bt (ru6)        r0, 0x3 <.label534>
             0x000837c2: 88 54:       stw (ru6)       r2, sp[0x8]
             0x000837c4: e0 90:       add (2rus)      r2, r4, 0x0
             0x000837c6: 02 73:       bu (u6)         0x2 <.label535>
.label534    0x000837c8: 88 54:       stw (ru6)       r2, sp[0x8]
             0x000837ca: 20 9b:       sub (2rus)      r2, r4, 0x4
.label535    0x000837cc: 15 a7:       mkmsk (rus)     r5, 0x1
             0x000837ce: 50 a7:       mkmsk (rus)     r8, 0x20
             0x000837d0: 8e c9:       lsu (3r)        r0, r11, r2
             0x000837d2: 04 78:       bf (ru6)        r0, 0x4 <.label536>
             0x000837d4: cf 54:       stw (ru6)       r3, sp[0xf]
             0x000837d6: 92 54:       stw (ru6)       r2, sp[0x12]
             0x000837d8: b0 91:       add (2rus)      r3, r8, 0x0
             0x000837da: 20 73:       bu (u6)         0x20 <.label537>
.label536    0x000837dc: cf 54:       stw (ru6)       r3, sp[0xf]
             0x000837de: c4 90:       add (2rus)      r0, r5, 0x0
             0x000837e0: b0 91:       add (2rus)      r3, r8, 0x0
             0x000837e2: b4 90:       add (2rus)      r11, r1, 0x0
             0x000837e4: 92 54:       stw (ru6)       r2, sp[0x12]
             0x000837e6: e2 2f:       bru (1r)        r2
             0x000837e8: 3a 73:       bu (u6)         0x3a <.label538>
             0x000837ea: 39 73:       bu (u6)         0x39 <.label538>
             0x000837ec: 03 73:       bu (u6)         0x3 <.label539>
             0x000837ee: 0d 73:       bu (u6)         0xd <.label540>
             0x000837f0: 02 73:       bu (u6)         0x2 <.label541>
             0x000837f2: 0c 73:       bu (u6)         0xc <.label542>
.label539    0x000837f4: 00 68:       ldc (ru6)       r0, 0x0
.label541    0x000837f6: 99 5c:       ldw (ru6)       r2, sp[0x19]
             0x000837f8: 59 c2:       lss (3r)        r1, r2, r5
             0x000837fa: 41 70:       bt (ru6)        r1, 0x1 <.label543>
             0x000837fc: 58 90:       add (2rus)      r5, r2, 0x0
.label543    0x000837fe: 54 91:       add (2rus)      r9, r5, 0x0
             0x00083800: 04 92:       add (2rus)      r8, r9, 0x0
             0x00083802: b4 91:       add (2rus)      r3, r9, 0x0
             0x00083804: 50 90:       add (2rus)      r5, r0, 0x0
             0x00083806: 59 56:       stw (ru6)       r9, sp[0x19]
             0x00083808: 09 73:       bu (u6)         0x9 <.label537>
.label540    0x0008380a: 40 69:       ldc (ru6)       r5, 0x0
.label542    0x0008380c: 99 5c:       ldw (ru6)       r2, sp[0x19]
             0x0008380e: ba 11:       add (3r)        r3, r10, r2
             0x00083810: 8d 90:       add (2rus)      r8, r3, 0x1
             0x00083812: 0c f8 ec 97: ashr (l2rus)    r0, r3, 0x20
             0x00083816: b8 90:       add (2rus)      r11, r2, 0x0
             0x00083818: 10 92:       add (2rus)      r9, r8, 0x0
             0x0008381a: 21 70:       bt (ru6)        r0, 0x21 <.label538>
.label537    0x0008381c: cb 54:       stw (ru6)       r3, sp[0xb]
             0x0008381e: ee 17:       get (0r)        r11, id
             0x00083820: 03 f0 2c 60: ldaw (lru6)     r0, dp[0xec]
             0x00083824: 40 68:       ldc (ru6)       r1, 0x0
             0x00083826: 93 fc ec 07: stw (l3r)       r1, r0[r11]
             0x0008382a: a7 a9:       shr (2rus)      r2, r9, 0x3
             0x0008382c: de a6:       mkmsk (rus)     r3, 0x2
             0x0008382e: 2b c8:       lsu (3r)        r2, r2, r3
             0x00083830: 84 78:       bf (ru6)        r2, 0x4 <.label544>
             0x00083832: 8a 55:       stw (ru6)       r6, sp[0xa]
             0x00083834: 4e 55:       stw (ru6)       r5, sp[0xe]
             0x00083836: 98 56:       stw (ru6)       r10, sp[0x18]
             0x00083838: 0f 73:       bu (u6)         0xf <.label545>
.label544    0x0008383a: 8a 55:       stw (ru6)       r6, sp[0xa]
             0x0008383c: 98 56:       stw (ru6)       r10, sp[0x18]
             0x0008383e: 84 68:       ldc (ru6)       r2, 0x4
             0x00083840: 94 69:       ldc (ru6)       r6, 0x14
.label546    0x00083842: 15 90:       add (2rus)      r1, r1, 0x1
             0x00083844: 39 a0:       shl (2rus)      r3, r2, 0x1
             0x00083846: ea f8 ec 2f: lda16 (l3r)     r2, r6[r2]
             0x0008384a: 36 ca:       lsu (3r)        r11, r9, r2
             0x0008384c: 2c 90:       add (2rus)      r2, r3, 0x0
             0x0008384e: c7 7e:       bf (ru6)        r11, -0x7 <.label546>
             0x00083850: 4e 55:       stw (ru6)       r5, sp[0xe]
             0x00083852: ee 17:       get (0r)        r11, id
             0x00083854: 93 fc ec 07: stw (l3r)       r1, r0[r11]
.label545    0x00083858: 19 5c:       ldw (ru6)       r0, sp[0x19]
             0x0008385a: 09 54:       stw (ru6)       r0, sp[0x9]
             0x0008385c: 0a 73:       bu (u6)         0xa <.label547>
.label538    0x0008385e: 8a 55:       stw (ru6)       r6, sp[0xa]
             0x00083860: 4e 55:       stw (ru6)       r5, sp[0xe]
             0x00083862: c9 56:       stw (ru6)       r11, sp[0x9]
             0x00083864: cb 54:       stw (ru6)       r3, sp[0xb]
             0x00083866: 98 56:       stw (ru6)       r10, sp[0x18]
             0x00083868: ee 17:       get (0r)        r11, id
             0x0008386a: 03 f0 2c 60: ldaw (lru6)     r0, dp[0xec]
             0x0008386e: 93 fc ec 07: stw (l3r)       r1, r0[r11]
.label547    0x00083872: 14 56:       stw (ru6)       r8, sp[0x14]
             0x00083874: 00 68:       ldc (ru6)       r0, 0x0
             0x00083876: 02 f0 41 d3: bl (lu10)       0xb41 <_Balloc>
             0x0008387a: 19 54:       stw (ru6)       r0, sp[0x19]
             0x0008387c: ee 17:       get (0r)        r11, id
             0x0008387e: 4f fd ec 07: stw (l3r)       r0, r7[r11]
             0x00083882: 0e 68:       ldc (ru6)       r0, 0xe
             0x00083884: 80 cc:       lsu (3r)        r0, r0, r8
             0x00083886: 07 f0 37 70: bt (lru6)       r0, 0x1f7 <.label548>
             0x0008388a: 06 68:       ldc (ru6)       r0, 0x6
             0x0008388c: c0 c0:       lss (3r)        r0, r4, r0
             0x0008388e: 07 f0 33 78: bf (lru6)       r0, 0x1f3 <.label548>
             0x00083892: d1 a6:       mkmsk (rus)     r0, 0x1
             0x00083894: 98 5e:       ldw (ru6)       r10, sp[0x18]
             0x00083896: 88 c1:       lss (3r)        r0, r10, r0
             0x00083898: 1a 70:       bt (ru6)        r0, 0x1a <.label549>
             0x0008389a: 88 91:       add (2rus)      r0, r10, 0x0
             0x0008389c: 90 47:       zext (rus)      r0, 0x4
             0x0008389e: 03 a0:       shl (2rus)      r0, r0, 0x3
             0x000838a0: 01 f0 44 7f: ldaw (lu6)      r11, cp[0x44]
             0x000838a4: 8c 11:       add (3r)        r0, r11, r0
             0x000838a6: 70 f8 f4 27: ldd (l3rus)     r4, r7, r0[0x0]
             0x000838aa: 48 fc ec 97: ashr (l2rus)    r8, r10, 0x4
             0x000838ae: 10 68:       ldc (ru6)       r0, 0x10
             0x000838b0: 80 39:       and (3r)        r0, r8, r0
             0x000838b2: 53 5c:       ldw (ru6)       r1, sp[0x13]
             0x000838b4: 35 78:       bf (ru6)        r0, 0x35 <.label550>
             0x000838b6: f0 46:       zext (rus)      r8, 0x4
             0x000838b8: 01 f0 7e 7f: ldaw (lu6)      r11, cp[0x7e]
             0x000838bc: ac f9 f3 27: ldd (l3rus)     r3, r2, r11[0x0]
             0x000838c0: 16 5c:       ldw (ru6)       r0, sp[0x16]
             0x000838c2: 03 f0 c5 d2: bl (lu10)       0xec5 <__divdf3>
             0x000838c6: 50 90:       add (2rus)      r5, r0, 0x0
             0x000838c8: 94 90:       add (2rus)      r9, r1, 0x0
             0x000838ca: 1a a7:       mkmsk (rus)     r6, 0x2
             0x000838cc: 2c 73:       bu (u6)         0x2c <.label551>
.label549    0x000838ce: 53 5c:       ldw (ru6)       r1, sp[0x13]
             0x000838d0: 01 f0 87 7a: bf (lru6)       r10, 0x47 <.label552>
             0x000838d4: 66 97:       neg (2r)        r5, r10
             0x000838d6: c4 90:       add (2rus)      r0, r5, 0x0
             0x000838d8: 90 47:       zext (rus)      r0, 0x4
             0x000838da: 03 a0:       shl (2rus)      r0, r0, 0x3
             0x000838dc: 01 f0 44 7f: ldaw (lu6)      r11, cp[0x44]
             0x000838e0: 8c 11:       add (3r)        r0, r11, r0
             0x000838e2: 20 f8 f3 27: ldd (l3rus)     r3, r2, r0[0x0]
             0x000838e6: 16 5c:       ldw (ru6)       r0, sp[0x16]
             0x000838e8: 00 f0 6c d7: bl (lu10)       -0x36c <__muldf3>
             0x000838ec: 90 90:       add (2rus)      r9, r0, 0x0
             0x000838ee: 44 90:       add (2rus)      r4, r1, 0x0
             0x000838f0: 74 fb ec 97: ashr (l2rus)    r7, r5, 0x4
             0x000838f4: 01 f0 76 7f: ldaw (lu6)      r11, cp[0x76]
             0x000838f8: dc 91:       add (2rus)      r5, r11, 0x0
             0x000838fa: 82 69:       ldc (ru6)       r6, 0x2
             0x000838fc: f5 79:       bf (ru6)        r7, 0x35 <.label553>
.label555    0x000838fe: cc 90:       add (2rus)      r0, r7, 0x0
             0x00083900: d1 46:       zext (rus)      r0, 0x1
             0x00083902: 09 78:       bf (ru6)        r0, 0x9 <.label554>
             0x00083904: 29 91:       add (2rus)      r6, r6, 0x1
             0x00083906: e4 f8 f3 27: ldd (l3rus)     r3, r2, r5[0x0]
             0x0008390a: 84 91:       add (2rus)      r0, r9, 0x0
             0x0008390c: d0 90:       add (2rus)      r1, r4, 0x0
             0x0008390e: 00 f0 7f d7: bl (lu10)       -0x37f <__muldf3>
             0x00083912: 90 90:       add (2rus)      r9, r0, 0x0
             0x00083914: 44 90:       add (2rus)      r4, r1, 0x0
.label554    0x00083916: 3d f9 ec 97: ashr (l2rus)    r7, r7, 0x1
             0x0008391a: 94 95:       add (2rus)      r5, r5, 0x8
             0x0008391c: d0 75:       bt (ru6)        r7, -0x10 <.label555>
             0x0008391e: 24 73:       bu (u6)         0x24 <.label553>
.label550    0x00083920: 82 69:       ldc (ru6)       r6, 0x2
             0x00083922: 56 5d:       ldw (ru6)       r5, sp[0x16]
             0x00083924: 94 90:       add (2rus)      r9, r1, 0x0
.label551    0x00083926: 01 f0 76 7f: ldaw (lu6)      r11, cp[0x76]
             0x0008392a: 2c 92:       add (2rus)      r10, r11, 0x0
             0x0008392c: 10 7a:       bf (ru6)        r8, 0x10 <.label556>
.label558    0x0008392e: 80 91:       add (2rus)      r0, r8, 0x0
             0x00083930: d1 46:       zext (rus)      r0, 0x1
             0x00083932: 09 78:       bf (ru6)        r0, 0x9 <.label557>
             0x00083934: 29 91:       add (2rus)      r6, r6, 0x1
             0x00083936: a8 f9 f3 27: ldd (l3rus)     r3, r2, r10[0x0]
             0x0008393a: cc 90:       add (2rus)      r0, r7, 0x0
             0x0008393c: d0 90:       add (2rus)      r1, r4, 0x0
             0x0008393e: 00 f0 97 d7: bl (lu10)       -0x397 <__muldf3>
             0x00083942: 70 90:       add (2rus)      r7, r0, 0x0
             0x00083944: 44 90:       add (2rus)      r4, r1, 0x0
.label557    0x00083946: 01 fa ec 97: ashr (l2rus)    r8, r8, 0x1
             0x0008394a: a8 96:       add (2rus)      r10, r10, 0x8
             0x0008394c: 10 76:       bt (ru6)        r8, -0x10 <.label558>
.label556    0x0008394e: c4 90:       add (2rus)      r0, r5, 0x0
             0x00083950: 94 91:       add (2rus)      r1, r9, 0x0
             0x00083952: ec 90:       add (2rus)      r2, r7, 0x0
             0x00083954: f0 90:       add (2rus)      r3, r4, 0x0
             0x00083956: 03 f0 7b d2: bl (lu10)       0xe7b <__divdf3>
             0x0008395a: 90 90:       add (2rus)      r9, r0, 0x0
             0x0008395c: 44 90:       add (2rus)      r4, r1, 0x0
             0x0008395e: 98 5e:       ldw (ru6)       r10, sp[0x18]
             0x00083960: 03 73:       bu (u6)         0x3 <.label553>
.label552    0x00083962: 82 69:       ldc (ru6)       r6, 0x2
             0x00083964: 56 5e:       ldw (ru6)       r9, sp[0x16]
             0x00083966: 44 90:       add (2rus)      r4, r1, 0x0
.label553    0x00083968: 0d 5c:       ldw (ru6)       r0, sp[0xd]
             0x0008396a: 2f 78:       bf (ru6)        r0, 0x2f <.label559>
             0x0008396c: 40 69:       ldc (ru6)       r5, 0x0
             0x0008396e: 02 f0 f5 6d: ldw (lru6)      r7, cp[0xb5]
             0x00083972: 84 91:       add (2rus)      r0, r9, 0x0
             0x00083974: d0 90:       add (2rus)      r1, r4, 0x0
             0x00083976: e4 90:       add (2rus)      r2, r5, 0x0
             0x00083978: fc 90:       add (2rus)      r3, r7, 0x0
             0x0008397a: 01 f0 7d d4: bl (lu10)       -0x47d <__gedf2>
             0x0008397e: 00 f8 ec 97: ashr (l2rus)    r0, r0, 0x20
             0x00083982: 80 b0:       eq (2rus)       r8, r0, 0x0
             0x00083984: 84 91:       add (2rus)      r0, r9, 0x0
             0x00083986: d0 90:       add (2rus)      r1, r4, 0x0
             0x00083988: e4 90:       add (2rus)      r2, r5, 0x0
             0x0008398a: fc 90:       add (2rus)      r3, r7, 0x0
             0x0008398c: 01 f0 46 d4: bl (lu10)       -0x446 <__unorddf2>
             0x00083990: 00 b0:       eq (2rus)       r0, r0, 0x0
             0x00083992: 00 b0:       eq (2rus)       r0, r0, 0x0
             0x00083994: 80 44:       or (3r)         r0, r0, r8
             0x00083996: 19 70:       bt (ru6)        r0, 0x19 <.label559>
             0x00083998: 14 5e:       ldw (ru6)       r8, sp[0x14]
             0x0008399a: d5 a6:       mkmsk (rus)     r1, 0x1
             0x0008399c: 81 c1:       lss (3r)        r0, r8, r1
             0x0008399e: 16 70:       bt (ru6)        r0, 0x16 <.label560>
             0x000839a0: 98 56:       stw (ru6)       r10, sp[0x18]
             0x000839a2: 0b 5c:       ldw (ru6)       r0, sp[0xb]
             0x000839a4: 01 c0:       lss (3r)        r0, r0, r1
             0x000839a6: 05 f0 27 70: bt (lru6)       r0, 0x167 <.label548>
             0x000839aa: 18 5c:       ldw (ru6)       r0, sp[0x18]
             0x000839ac: 01 98:       sub (2rus)      r0, r0, 0x1
             0x000839ae: 04 54:       stw (ru6)       r0, sp[0x4]
             0x000839b0: 80 68:       ldc (ru6)       r2, 0x0
             0x000839b2: 02 f0 ed 6c: ldw (lru6)      r3, cp[0xad]
             0x000839b6: 84 91:       add (2rus)      r0, r9, 0x0
             0x000839b8: d0 90:       add (2rus)      r1, r4, 0x0
             0x000839ba: 00 f0 d5 d7: bl (lu10)       -0x3d5 <__muldf3>
             0x000839be: 90 90:       add (2rus)      r9, r0, 0x0
             0x000839c0: 44 90:       add (2rus)      r4, r1, 0x0
             0x000839c2: 29 91:       add (2rus)      r6, r6, 0x1
             0x000839c4: 4b 5d:       ldw (ru6)       r5, sp[0xb]
             0x000839c6: 14 5e:       ldw (ru6)       r8, sp[0x14]
             0x000839c8: 03 73:       bu (u6)         0x3 <.label561>
.label559    0x000839ca: 14 5e:       ldw (ru6)       r8, sp[0x14]
.label560    0x000839cc: d0 91:       add (2rus)      r5, r8, 0x0
             0x000839ce: 84 56:       stw (ru6)       r10, sp[0x4]
.label561    0x000839d0: c8 90:       add (2rus)      r0, r6, 0x0
             0x000839d2: 00 f0 6d d6: bl (lu10)       -0x26d <__floatsidf>
             0x000839d6: a4 91:       add (2rus)      r2, r9, 0x0
             0x000839d8: f0 90:       add (2rus)      r3, r4, 0x0
             0x000839da: 00 f0 e5 d7: bl (lu10)       -0x3e5 <__muldf3>
             0x000839de: 80 68:       ldc (ru6)       r2, 0x0
             0x000839e0: 02 f0 ec 6c: ldw (lru6)      r3, cp[0xac]
             0x000839e4: a8 90:       add (2rus)      r10, r2, 0x0
             0x000839e6: 02 f0 25 d1: bl (lu10)       0x925 <__adddf3>
             0x000839ea: 60 90:       add (2rus)      r6, r0, 0x0
             0x000839ec: 02 f0 33 6c: ldw (lru6)      r0, cp[0xb3]
             0x000839f0: 74 10:       add (3r)        r7, r1, r0
             0x000839f2: 7f 79:       bf (ru6)        r5, 0x3f <.label562>
             0x000839f4: c7 a0:       shl (2rus)      r0, r5, 0x3
             0x000839f6: 01 f0 44 7f: ldaw (lu6)      r11, cp[0x44]
             0x000839fa: 83 14:       add (3r)        r0, r0, r11
             0x000839fc: 80 9c:       sub (2rus)      r0, r0, 0x8
             0x000839fe: 20 f8 f3 27: ldd (l3rus)     r3, r2, r0[0x0]
             0x00083a02: 0e 5c:       ldw (ru6)       r0, sp[0xe]
             0x00083a04: 01 f0 0f 78: bf (lru6)       r0, 0x4f <.label563>
             0x00083a08: 45 55:       stw (ru6)       r5, sp[0x5]
             0x00083a0a: 14 56:       stw (ru6)       r8, sp[0x14]
             0x00083a0c: 02 f0 74 6c: ldw (lru6)      r1, cp[0xb4]
             0x00083a10: d8 91:       add (2rus)      r5, r10, 0x0
             0x00083a12: c4 90:       add (2rus)      r0, r5, 0x0
             0x00083a14: 03 f0 1c d2: bl (lu10)       0xe1c <__divdf3>
             0x00083a18: e8 90:       add (2rus)      r2, r6, 0x0
             0x00083a1a: fc 90:       add (2rus)      r3, r7, 0x0
             0x00083a1c: 00 f0 66 d6: bl (lu10)       -0x266 <__subdf3>
             0x00083a20: 70 90:       add (2rus)      r7, r0, 0x0
             0x00083a22: 24 91:       add (2rus)      r6, r5, 0x0
             0x00083a24: 95 55:       stw (ru6)       r6, sp[0x15]
             0x00083a26: 4c 54:       stw (ru6)       r1, sp[0xc]
             0x00083a28: 84 91:       add (2rus)      r0, r9, 0x0
             0x00083a2a: d0 90:       add (2rus)      r1, r4, 0x0
             0x00083a2c: 00 f0 c8 d6: bl (lu10)       -0x2c8 <__fixdfsi>
             0x00083a30: a0 90:       add (2rus)      r10, r0, 0x0
             0x00083a32: 00 f0 9d d6: bl (lu10)       -0x29d <__floatsidf>
             0x00083a36: 20 90:       add (2rus)      r2, r0, 0x0
             0x00083a38: 34 90:       add (2rus)      r3, r1, 0x0
             0x00083a3a: 84 91:       add (2rus)      r0, r9, 0x0
             0x00083a3c: d0 90:       add (2rus)      r1, r4, 0x0
             0x00083a3e: 00 f0 77 d6: bl (lu10)       -0x277 <__subdf3>
             0x00083a42: 80 90:       add (2rus)      r8, r0, 0x0
             0x00083a44: 54 90:       add (2rus)      r5, r1, 0x0
             0x00083a46: 30 68:       ldc (ru6)       r0, 0x30
             0x00083a48: 88 11:       add (3r)        r0, r10, r0
             0x00083a4a: 19 5d:       ldw (ru6)       r4, sp[0x19]
             0x00083a4c: 61 91:       add (2rus)      r10, r4, 0x1
             0x00083a4e: 02 fb ec 8f: st8 (l3r)       r0, r4[r6]
             0x00083a52: 80 91:       add (2rus)      r0, r8, 0x0
             0x00083a54: d4 90:       add (2rus)      r1, r5, 0x0
             0x00083a56: ec 90:       add (2rus)      r2, r7, 0x0
             0x00083a58: cc 5c:       ldw (ru6)       r3, sp[0xc]
             0x00083a5a: 6c 90:       add (2rus)      r6, r3, 0x0
             0x00083a5c: 01 f0 8a d4: bl (lu10)       -0x48a <__ltdf2>
             0x00083a60: 00 f8 ec 97: ashr (l2rus)    r0, r0, 0x20
             0x00083a64: 01 f0 03 78: bf (lru6)       r0, 0x43 <.label564>
             0x00083a68: 04 5c:       ldw (ru6)       r0, sp[0x4]
             0x00083a6a: f8 91:       add (2rus)      r7, r10, 0x0
             0x00083a6c: a0 90:       add (2rus)      r10, r0, 0x0
             0x00083a6e: 03 f0 3e 73: bu (lu6)        0xfe <.label565>
.label562    0x00083a72: 40 69:       ldc (ru6)       r5, 0x0
             0x00083a74: 02 f0 eb 6c: ldw (lru6)      r3, cp[0xab]
             0x00083a78: 84 91:       add (2rus)      r0, r9, 0x0
             0x00083a7a: d0 90:       add (2rus)      r1, r4, 0x0
             0x00083a7c: e4 90:       add (2rus)      r2, r5, 0x0
             0x00083a7e: 02 f0 d9 d0: bl (lu10)       0x8d9 <__adddf3>
             0x00083a82: 40 90:       add (2rus)      r4, r0, 0x0
             0x00083a84: 94 90:       add (2rus)      r9, r1, 0x0
             0x00083a86: e8 90:       add (2rus)      r2, r6, 0x0
             0x00083a88: fc 90:       add (2rus)      r3, r7, 0x0
             0x00083a8a: 01 f0 95 d4: bl (lu10)       -0x495 <__gtdf2>
             0x00083a8e: c4 c0:       lss (3r)        r0, r5, r0
             0x00083a90: e8 90:       add (2rus)      r2, r6, 0x0
             0x00083a92: 01 f0 3b 78: bf (lru6)       r0, 0x7b <.label566>
             0x00083a96: 84 5e:       ldw (ru6)       r10, sp[0x4]
             0x00083a98: 55 55:       stw (ru6)       r5, sp[0x15]
             0x00083a9a: 53 55:       stw (ru6)       r5, sp[0x13]
             0x00083a9c: 50 5e:       ldw (ru6)       r9, sp[0x10]
             0x00083a9e: 97 5d:       ldw (ru6)       r6, sp[0x17]
             0x00083aa0: 19 5d:       ldw (ru6)       r4, sp[0x19]
             0x00083aa2: 0b f0 28 73: bu (lu6)        0x2e8 <.label567>
.label563    0x00083aa6: 14 56:       stw (ru6)       r8, sp[0x14]
             0x00083aa8: c8 90:       add (2rus)      r0, r6, 0x0
             0x00083aaa: dc 90:       add (2rus)      r1, r7, 0x0
             0x00083aac: 01 f0 4e d4: bl (lu10)       -0x44e <__muldf3>
             0x00083ab0: 15 54:       stw (ru6)       r0, sp[0x15]
             0x00083ab2: 4c 54:       stw (ru6)       r1, sp[0xc]
             0x00083ab4: 84 91:       add (2rus)      r0, r9, 0x0
             0x00083ab6: d0 90:       add (2rus)      r1, r4, 0x0
             0x00083ab8: 00 f0 0e d7: bl (lu10)       -0x30e <__fixdfsi>
             0x00083abc: 80 90:       add (2rus)      r8, r0, 0x0
             0x00083abe: 00 f0 e3 d6: bl (lu10)       -0x2e3 <__floatsidf>
             0x00083ac2: 20 90:       add (2rus)      r2, r0, 0x0
             0x00083ac4: 34 90:       add (2rus)      r3, r1, 0x0
             0x00083ac6: 84 91:       add (2rus)      r0, r9, 0x0
             0x00083ac8: d0 90:       add (2rus)      r1, r4, 0x0
             0x00083aca: 00 f0 bd d6: bl (lu10)       -0x2bd <__subdf3>
             0x00083ace: 40 90:       add (2rus)      r4, r0, 0x0
             0x00083ad0: e4 90:       add (2rus)      r2, r5, 0x0
             0x00083ad2: 54 90:       add (2rus)      r5, r1, 0x0
             0x00083ad4: 30 68:       ldc (ru6)       r0, 0x30
             0x00083ad6: 80 11:       add (3r)        r0, r8, r0
             0x00083ad8: 59 5c:       ldw (ru6)       r1, sp[0x19]
             0x00083ada: 75 90:       add (2rus)      r7, r1, 0x1
             0x00083adc: 00 6a:       ldc (ru6)       r8, 0x0
             0x00083ade: 84 fc ec 8f: st8 (l3r)       r0, r1[r8]
             0x00083ae2: 09 b0:       eq (2rus)       r0, r2, 0x1
             0x00083ae4: 01 f0 24 78: bf (lru6)       r0, 0x64 <.label568>
             0x00083ae8: 6c 91:       add (2rus)      r10, r7, 0x0
             0x00083aea: 02 f0 04 73: bu (lu6)        0x84 <.label569>
.label564    0x00083aee: 40 6a:       ldc (ru6)       r9, 0x0
             0x00083af0: d0 90:       add (2rus)      r1, r4, 0x0
             0x00083af2: 0c 91:       add (2rus)      r4, r7, 0x0
.label571    0x00083af4: 74 90:       add (2rus)      r7, r1, 0x0
             0x00083af6: 84 91:       add (2rus)      r0, r9, 0x0
             0x00083af8: 02 f0 75 6c: ldw (lru6)      r1, cp[0xb5]
             0x00083afc: a0 91:       add (2rus)      r2, r8, 0x0
             0x00083afe: f4 90:       add (2rus)      r3, r5, 0x0
             0x00083b00: 00 f0 d8 d6: bl (lu10)       -0x2d8 <__subdf3>
             0x00083b04: e0 90:       add (2rus)      r2, r4, 0x0
             0x00083b06: f8 90:       add (2rus)      r3, r6, 0x0
             0x00083b08: 01 f0 e0 d4: bl (lu10)       -0x4e0 <__ltdf2>
             0x00083b0c: 00 f8 ec 97: ashr (l2rus)    r0, r0, 0x20
             0x00083b10: d8 90:       add (2rus)      r1, r6, 0x0
             0x00083b12: e4 91:       add (2rus)      r6, r9, 0x0
             0x00083b14: 02 f0 01 70: bt (lru6)       r0, 0x81 <.label570>
             0x00083b18: 95 5c:       ldw (ru6)       r2, sp[0x15]
             0x00083b1a: 29 90:       add (2rus)      r2, r2, 0x1
             0x00083b1c: 05 5c:       ldw (ru6)       r0, sp[0x5]
             0x00083b1e: 08 c0:       lss (3r)        r0, r2, r0
             0x00083b20: 02 f0 2a 78: bf (lru6)       r0, 0xaa <.label548>
             0x00083b24: 95 54:       stw (ru6)       r2, sp[0x15]
             0x00083b26: c0 90:       add (2rus)      r0, r4, 0x0
             0x00083b28: e8 90:       add (2rus)      r2, r6, 0x0
             0x00083b2a: 02 f0 2d 6d: ldw (lru6)      r4, cp[0xad]
             0x00083b2e: f0 90:       add (2rus)      r3, r4, 0x0
             0x00083b30: 01 f0 90 d4: bl (lu10)       -0x490 <__muldf3>
             0x00083b34: 58 91:       add (2rus)      r9, r6, 0x0
             0x00083b36: 0c 54:       stw (ru6)       r0, sp[0xc]
             0x00083b38: 64 90:       add (2rus)      r6, r1, 0x0
             0x00083b3a: 80 91:       add (2rus)      r0, r8, 0x0
             0x00083b3c: d4 90:       add (2rus)      r1, r5, 0x0
             0x00083b3e: a4 91:       add (2rus)      r2, r9, 0x0
             0x00083b40: f0 90:       add (2rus)      r3, r4, 0x0
             0x00083b42: 01 f0 99 d4: bl (lu10)       -0x499 <__muldf3>
             0x00083b46: 50 90:       add (2rus)      r5, r0, 0x0
             0x00083b48: 84 90:       add (2rus)      r8, r1, 0x0
             0x00083b4a: 00 f0 57 d7: bl (lu10)       -0x357 <__fixdfsi>
             0x00083b4e: 40 90:       add (2rus)      r4, r0, 0x0
             0x00083b50: 00 f0 2c d7: bl (lu10)       -0x32c <__floatsidf>
             0x00083b54: 20 90:       add (2rus)      r2, r0, 0x0
             0x00083b56: 34 90:       add (2rus)      r3, r1, 0x0
             0x00083b58: c4 90:       add (2rus)      r0, r5, 0x0
             0x00083b5a: 90 91:       add (2rus)      r1, r8, 0x0
             0x00083b5c: 00 f0 06 d7: bl (lu10)       -0x306 <__subdf3>
             0x00083b60: 80 90:       add (2rus)      r8, r0, 0x0
             0x00083b62: 54 90:       add (2rus)      r5, r1, 0x0
             0x00083b64: 30 68:       ldc (ru6)       r0, 0x30
             0x00083b66: c0 10:       add (3r)        r0, r4, r0
             0x00083b68: 0c 5d:       ldw (ru6)       r4, sp[0xc]
             0x00083b6a: 3e 91:       add (2rus)      r7, r7, 0x2
             0x00083b6c: 09 fe ec 8f: st8 (l3r)       r0, r10[r9]
             0x00083b70: 80 91:       add (2rus)      r0, r8, 0x0
             0x00083b72: d4 90:       add (2rus)      r1, r5, 0x0
             0x00083b74: e0 90:       add (2rus)      r2, r4, 0x0
             0x00083b76: f8 90:       add (2rus)      r3, r6, 0x0
             0x00083b78: 01 f0 18 d5: bl (lu10)       -0x518 <__ltdf2>
             0x00083b7c: 00 f8 ec 97: ashr (l2rus)    r0, r0, 0x20
             0x00083b80: 98 91:       add (2rus)      r1, r10, 0x0
             0x00083b82: 6c 91:       add (2rus)      r10, r7, 0x0
             0x00083b84: 01 f0 0a 7c: bf (lru6)       r0, -0x4a <.label571>
             0x00083b88: 01 f0 30 73: bu (lu6)        0x70 <.label572>
.label566    0x00083b8c: 02 f0 26 6c: ldw (lru6)      r0, cp[0xa6]
             0x00083b90: fc f8 ec 0f: xor (l3r)       r3, r7, r0
             0x00083b94: c0 90:       add (2rus)      r0, r4, 0x0
             0x00083b96: 94 91:       add (2rus)      r1, r9, 0x0
             0x00083b98: 01 f0 28 d5: bl (lu10)       -0x528 <__ltdf2>
             0x00083b9c: 00 f8 ec 97: ashr (l2rus)    r0, r0, 0x20
             0x00083ba0: 01 f0 2a 78: bf (lru6)       r0, 0x6a <.label548>
             0x00083ba4: 00 68:       ldc (ru6)       r0, 0x0
             0x00083ba6: 15 54:       stw (ru6)       r0, sp[0x15]
             0x00083ba8: 13 54:       stw (ru6)       r0, sp[0x13]
             0x00083baa: 50 5e:       ldw (ru6)       r9, sp[0x10]
             0x00083bac: 05 f0 33 73: bu (lu6)        0x173 <.label573>
.label568    0x00083bb0: 69 98:       sub (2rus)      r6, r2, 0x1
             0x00083bb2: 94 90:       add (2rus)      r9, r1, 0x0
.label574    0x00083bb4: c0 90:       add (2rus)      r0, r4, 0x0
             0x00083bb6: d4 90:       add (2rus)      r1, r5, 0x0
             0x00083bb8: a0 91:       add (2rus)      r2, r8, 0x0
             0x00083bba: 02 f0 ed 6c: ldw (lru6)      r3, cp[0xad]
             0x00083bbe: 01 f0 d7 d4: bl (lu10)       -0x4d7 <__muldf3>
             0x00083bc2: 40 90:       add (2rus)      r4, r0, 0x0
             0x00083bc4: 54 90:       add (2rus)      r5, r1, 0x0
             0x00083bc6: 00 f0 95 d7: bl (lu10)       -0x395 <__fixdfsi>
             0x00083bca: 20 92:       add (2rus)      r10, r8, 0x0
             0x00083bcc: 80 90:       add (2rus)      r8, r0, 0x0
             0x00083bce: 00 f0 6b d7: bl (lu10)       -0x36b <__floatsidf>
             0x00083bd2: 20 90:       add (2rus)      r2, r0, 0x0
             0x00083bd4: 34 90:       add (2rus)      r3, r1, 0x0
             0x00083bd6: c0 90:       add (2rus)      r0, r4, 0x0
             0x00083bd8: d4 90:       add (2rus)      r1, r5, 0x0
             0x00083bda: 00 f0 45 d7: bl (lu10)       -0x345 <__subdf3>
             0x00083bde: 40 90:       add (2rus)      r4, r0, 0x0
             0x00083be0: 54 90:       add (2rus)      r5, r1, 0x0
             0x00083be2: 30 68:       ldc (ru6)       r0, 0x30
             0x00083be4: 80 11:       add (3r)        r0, r8, r0
             0x00083be6: 08 92:       add (2rus)      r8, r10, 0x0
             0x00083be8: 26 92:       add (2rus)      r10, r9, 0x2
             0x00083bea: 4c fd ec 8f: st8 (l3r)       r0, r7[r8]
             0x00083bee: 29 99:       sub (2rus)      r6, r6, 0x1
             0x00083bf0: 5c 91:       add (2rus)      r9, r7, 0x0
             0x00083bf2: f8 91:       add (2rus)      r7, r10, 0x0
             0x00083bf4: a1 75:       bt (ru6)        r6, -0x21 <.label574>
.label569    0x00083bf6: 70 6a:       ldc (ru6)       r9, 0x30
             0x00083bf8: 02 f0 f4 6c: ldw (lru6)      r3, cp[0xb4]
             0x00083bfc: 95 5d:       ldw (ru6)       r6, sp[0x15]
             0x00083bfe: c8 90:       add (2rus)      r0, r6, 0x0
             0x00083c00: cc 5d:       ldw (ru6)       r7, sp[0xc]
             0x00083c02: dc 90:       add (2rus)      r1, r7, 0x0
             0x00083c04: a0 91:       add (2rus)      r2, r8, 0x0
             0x00083c06: 02 f0 15 d0: bl (lu10)       0x815 <__adddf3>
             0x00083c0a: 20 90:       add (2rus)      r2, r0, 0x0
             0x00083c0c: 34 90:       add (2rus)      r3, r1, 0x0
             0x00083c0e: c0 90:       add (2rus)      r0, r4, 0x0
             0x00083c10: d4 90:       add (2rus)      r1, r5, 0x0
             0x00083c12: 01 f0 59 d5: bl (lu10)       -0x559 <__gtdf2>
             0x00083c16: 80 c1:       lss (3r)        r0, r8, r0
             0x00083c18: 06 78:       bf (ru6)        r0, 0x6 <.label575>
.label570    0x00083c1a: 04 5c:       ldw (ru6)       r0, sp[0x4]
             0x00083c1c: 18 54:       stw (ru6)       r0, sp[0x18]
             0x00083c1e: 65 5d:       ldw (ru6)       r5, sp[0x25]
             0x00083c20: 97 5d:       ldw (ru6)       r6, sp[0x17]
             0x00083c22: 04 f0 08 73: bu (lu6)        0x108 <.label576>
.label575    0x00083c26: 00 68:       ldc (ru6)       r0, 0x0
             0x00083c28: 02 f0 74 6c: ldw (lru6)      r1, cp[0xb4]
             0x00083c2c: e8 90:       add (2rus)      r2, r6, 0x0
             0x00083c2e: fc 90:       add (2rus)      r3, r7, 0x0
             0x00083c30: 00 f0 70 d7: bl (lu10)       -0x370 <__subdf3>
             0x00083c34: 60 90:       add (2rus)      r6, r0, 0x0
             0x00083c36: 74 90:       add (2rus)      r7, r1, 0x0
             0x00083c38: c0 90:       add (2rus)      r0, r4, 0x0
             0x00083c3a: d4 90:       add (2rus)      r1, r5, 0x0
             0x00083c3c: e8 90:       add (2rus)      r2, r6, 0x0
             0x00083c3e: fc 90:       add (2rus)      r3, r7, 0x0
             0x00083c40: 01 f0 e0 d5: bl (lu10)       -0x5e0 <__gedf2>
             0x00083c44: 00 f8 ec 97: ashr (l2rus)    r0, r0, 0x20
             0x00083c48: 80 b0:       eq (2rus)       r8, r0, 0x0
             0x00083c4a: c0 90:       add (2rus)      r0, r4, 0x0
             0x00083c4c: d4 90:       add (2rus)      r1, r5, 0x0
             0x00083c4e: e8 90:       add (2rus)      r2, r6, 0x0
             0x00083c50: fc 90:       add (2rus)      r3, r7, 0x0
             0x00083c52: 01 f0 a9 d5: bl (lu10)       -0x5a9 <__unorddf2>
             0x00083c56: 00 b0:       eq (2rus)       r0, r0, 0x0
             0x00083c58: 00 b0:       eq (2rus)       r0, r0, 0x0
             0x00083c5a: 80 44:       or (3r)         r0, r0, r8
             0x00083c5c: 0d 70:       bt (ru6)        r0, 0xd <.label548>
             0x00083c5e: f9 91:       add (2rus)      r7, r10, 0x1
             0x00083c60: 03 f0 15 6c: ldw (lru6)      r0, cp[0xd5]
.label577    0x00083c64: dc 88:       ld8u (3r)       r1, r7[r0]
             0x00083c66: 95 34:       eq (3r)         r1, r1, r9
             0x00083c68: 3d 99:       sub (2rus)      r7, r7, 0x1
             0x00083c6a: 44 74:       bt (ru6)        r1, -0x4 <.label577>
.label572    0x00083c6c: 84 5e:       ldw (ru6)       r10, sp[0x4]
.label565    0x00083c6e: 50 5e:       ldw (ru6)       r9, sp[0x10]
             0x00083c70: 65 5d:       ldw (ru6)       r5, sp[0x25]
             0x00083c72: 97 5d:       ldw (ru6)       r6, sp[0x17]
             0x00083c74: 0d f0 25 73: bu (lu6)        0x365 <.label578>
.label548    0x00083c78: 1a 5c:       ldw (ru6)       r0, sp[0x1a]
             0x00083c7a: 10 f8 ec 97: ashr (l2rus)    r1, r0, 0x20
             0x00083c7e: 98 5e:       ldw (ru6)       r10, sp[0x18]
             0x00083c80: 78 70:       bt (ru6)        r1, 0x38 <.label579>
             0x00083c82: 4e 68:       ldc (ru6)       r1, 0xe
             0x00083c84: 96 c4:       lss (3r)        r1, r1, r10
             0x00083c86: 75 70:       bt (ru6)        r1, 0x35 <.label579>
             0x00083c88: 8b a1:       shl (2rus)      r0, r10, 0x3
             0x00083c8a: 01 f0 44 7f: ldaw (lu6)      r11, cp[0x44]
             0x00083c8e: 8c 11:       add (3r)        r0, r11, r0
             0x00083c90: 10 f8 f5 27: ldd (l3rus)     r5, r1, r0[0x0]
             0x00083c94: 09 5c:       ldw (ru6)       r0, sp[0x9]
             0x00083c96: 00 f8 ec 97: ashr (l2rus)    r0, r0, 0x20
             0x00083c9a: 93 5d:       ldw (ru6)       r6, sp[0x13]
             0x00083c9c: 14 5e:       ldw (ru6)       r8, sp[0x14]
             0x00083c9e: 3a 78:       bf (ru6)        r0, 0x3a <.label580>
             0x00083ca0: d1 a6:       mkmsk (rus)     r0, 0x1
             0x00083ca2: 80 c1:       lss (3r)        r0, r8, r0
             0x00083ca4: 37 78:       bf (ru6)        r0, 0x37 <.label580>
             0x00083ca6: c0 69:       ldc (ru6)       r7, 0x0
             0x00083ca8: 02 f0 ea 6c: ldw (lru6)      r3, cp[0xaa]
             0x00083cac: 04 90:       add (2rus)      r0, r1, 0x0
             0x00083cae: d4 90:       add (2rus)      r1, r5, 0x0
             0x00083cb0: ec 90:       add (2rus)      r2, r7, 0x0
             0x00083cb2: 01 f0 51 d5: bl (lu10)       -0x551 <__muldf3>
             0x00083cb6: 40 90:       add (2rus)      r4, r0, 0x0
             0x00083cb8: 54 90:       add (2rus)      r5, r1, 0x0
             0x00083cba: 80 f9 ec 97: ashr (l2rus)    r0, r8, 0x20
             0x00083cbe: 50 5e:       ldw (ru6)       r9, sp[0x10]
             0x00083cc0: 03 f0 27 70: bt (lru6)       r0, 0xe7 <.label581>
             0x00083cc4: 16 5e:       ldw (ru6)       r8, sp[0x16]
             0x00083cc6: 80 91:       add (2rus)      r0, r8, 0x0
             0x00083cc8: d8 90:       add (2rus)      r1, r6, 0x0
             0x00083cca: e0 90:       add (2rus)      r2, r4, 0x0
             0x00083ccc: f4 90:       add (2rus)      r3, r5, 0x0
             0x00083cce: 01 f0 b7 d5: bl (lu10)       -0x5b7 <__gtdf2>
             0x00083cd2: 80 68:       ldc (ru6)       r2, 0x0
             0x00083cd4: d8 90:       add (2rus)      r1, r6, 0x0
             0x00083cd6: 68 c0:       lss (3r)        r6, r2, r0
             0x00083cd8: 80 91:       add (2rus)      r0, r8, 0x0
             0x00083cda: e0 90:       add (2rus)      r2, r4, 0x0
             0x00083cdc: f4 90:       add (2rus)      r3, r5, 0x0
             0x00083cde: 01 f0 ef d5: bl (lu10)       -0x5ef <__unorddf2>
             0x00083ce2: 00 b0:       eq (2rus)       r0, r0, 0x0
             0x00083ce4: 00 b0:       eq (2rus)       r0, r0, 0x0
             0x00083ce6: 42 42:       or (3r)         r0, r0, r6
             0x00083ce8: d3 55:       stw (ru6)       r7, sp[0x13]
             0x00083cea: d5 55:       stw (ru6)       r7, sp[0x15]
             0x00083cec: 97 5d:       ldw (ru6)       r6, sp[0x17]
             0x00083cee: 07 f0 00 73: bu (lu6)        0x1c0 <.label582>
.label579    0x00083cf2: 4e 5d:       ldw (ru6)       r5, sp[0xe]
             0x00083cf4: 76 79:       bf (ru6)        r5, 0x36 <.label583>
             0x00083cf6: d5 a6:       mkmsk (rus)     r1, 0x1
             0x00083cf8: 92 5c:       ldw (ru6)       r2, sp[0x12]
             0x00083cfa: 16 c0:       lss (3r)        r1, r1, r2
             0x00083cfc: 79 70:       bt (ru6)        r1, 0x39 <.label584>
             0x00083cfe: cf 5c:       ldw (ru6)       r3, sp[0xf]
             0x00083d00: 8a 5d:       ldw (ru6)       r6, sp[0xa]
             0x00083d02: 46 5c:       ldw (ru6)       r1, sp[0x6]
             0x00083d04: 14 5e:       ldw (ru6)       r8, sp[0x14]
             0x00083d06: 03 f0 4a 78: bf (lru6)       r1, 0xca <.label585>
             0x00083d0a: 10 f0 73 68: ldc (lru6)      r1, 0x433
             0x00083d0e: 01 10:       add (3r)        r0, r0, r1
             0x00083d10: 03 f0 08 73: bu (lu6)        0xc8 <.label586>
.label580    0x00083d14: 16 5d:       ldw (ru6)       r4, sp[0x16]
             0x00083d16: c0 90:       add (2rus)      r0, r4, 0x0
             0x00083d18: 74 90:       add (2rus)      r7, r1, 0x0
             0x00083d1a: d8 90:       add (2rus)      r1, r6, 0x0
             0x00083d1c: ec 90:       add (2rus)      r2, r7, 0x0
             0x00083d1e: f4 90:       add (2rus)      r3, r5, 0x0
             0x00083d20: 03 f0 96 d0: bl (lu10)       0xc96 <__divdf3>
             0x00083d24: 01 f0 44 d4: bl (lu10)       -0x444 <__fixdfsi>
             0x00083d28: a0 90:       add (2rus)      r10, r0, 0x0
             0x00083d2a: 01 f0 19 d4: bl (lu10)       -0x419 <__floatsidf>
             0x00083d2e: 20 90:       add (2rus)      r2, r0, 0x0
             0x00083d30: 34 90:       add (2rus)      r3, r1, 0x0
             0x00083d32: cc 90:       add (2rus)      r0, r7, 0x0
             0x00083d34: 5c 91:       add (2rus)      r9, r7, 0x0
             0x00083d36: d4 90:       add (2rus)      r1, r5, 0x0
             0x00083d38: 01 f0 94 d5: bl (lu10)       -0x594 <__muldf3>
             0x00083d3c: 20 90:       add (2rus)      r2, r0, 0x0
             0x00083d3e: 34 90:       add (2rus)      r3, r1, 0x0
             0x00083d40: c0 90:       add (2rus)      r0, r4, 0x0
             0x00083d42: d8 90:       add (2rus)      r1, r6, 0x0
             0x00083d44: 00 f0 fa d7: bl (lu10)       -0x3fa <__subdf3>
             0x00083d48: b0 68:       ldc (ru6)       r2, 0x30
             0x00083d4a: aa 11:       add (3r)        r2, r10, r2
             0x00083d4c: d9 5c:       ldw (ru6)       r3, sp[0x19]
             0x00083d4e: 7d 90:       add (2rus)      r7, r3, 0x1
             0x00083d50: c0 6a:       ldc (ru6)       r11, 0x0
             0x00083d52: af fc ec 8f: st8 (l3r)       r2, r3[r11]
             0x00083d56: a1 b1:       eq (2rus)       r2, r8, 0x1
             0x00083d58: 9a 78:       bf (ru6)        r2, 0x1a <.label587>
             0x00083d5a: c8 91:       add (2rus)      r4, r10, 0x0
             0x00083d5c: 6c 91:       add (2rus)      r10, r7, 0x0
             0x00083d5e: 01 f0 0a 73: bu (lu6)        0x4a <.label588>
.label583    0x00083d62: 4f 5e:       ldw (ru6)       r9, sp[0xf]
             0x00083d64: 8a 5d:       ldw (ru6)       r6, sp[0xa]
             0x00083d66: 68 91:       add (2rus)      r10, r6, 0x0
             0x00083d68: c0 69:       ldc (ru6)       r7, 0x0
             0x00083d6a: 14 5e:       ldw (ru6)       r8, sp[0x14]
             0x00083d6c: 02 f0 26 73: bu (lu6)        0xa6 <.label589>
.label584    0x00083d70: 14 5e:       ldw (ru6)       r8, sp[0x14]
             0x00083d72: 81 99:       sub (2rus)      r0, r8, 0x1
             0x00083d74: 8a 5d:       ldw (ru6)       r6, sp[0xa]
             0x00083d76: d8 c0:       lss (3r)        r1, r6, r0
             0x00083d78: cf 5c:       ldw (ru6)       r3, sp[0xf]
             0x00083d7a: 01 f0 79 78: bf (lru6)       r1, 0x79 <.label590>
             0x00083d7e: 48 5c:       ldw (ru6)       r1, sp[0x8]
             0x00083d80: 56 1a:       sub (3r)        r1, r1, r6
             0x00083d82: 14 10:       add (3r)        r1, r1, r0
             0x00083d84: 48 54:       stw (ru6)       r1, sp[0x8]
             0x00083d86: 80 6a:       ldc (ru6)       r10, 0x0
             0x00083d88: 60 90:       add (2rus)      r6, r0, 0x0
             0x00083d8a: 01 f0 32 73: bu (lu6)        0x72 <.label591>
.label587    0x00083d8e: a1 99:       sub (2rus)      r2, r8, 0x1
.label593    0x00083d90: d5 54:       stw (ru6)       r3, sp[0x15]
             0x00083d92: 96 54:       stw (ru6)       r2, sp[0x16]
             0x00083d94: ac 91:       add (2rus)      r2, r11, 0x0
             0x00083d96: 02 f0 ed 6c: ldw (lru6)      r3, cp[0xad]
             0x00083d9a: ec 91:       add (2rus)      r6, r11, 0x0
             0x00083d9c: 01 f0 c6 d5: bl (lu10)       -0x5c6 <__muldf3>
             0x00083da0: 80 90:       add (2rus)      r8, r0, 0x0
             0x00083da2: a4 90:       add (2rus)      r10, r1, 0x0
             0x00083da4: e8 90:       add (2rus)      r2, r6, 0x0
             0x00083da6: f8 90:       add (2rus)      r3, r6, 0x0
             0x00083da8: 01 f0 2a d6: bl (lu10)       -0x62a <__nedf2>
             0x00083dac: 01 f0 2b 78: bf (lru6)       r0, 0x6b <.label592>
             0x00083db0: 80 91:       add (2rus)      r0, r8, 0x0
             0x00083db2: 98 91:       add (2rus)      r1, r10, 0x0
             0x00083db4: a4 91:       add (2rus)      r2, r9, 0x0
             0x00083db6: f4 90:       add (2rus)      r3, r5, 0x0
             0x00083db8: 03 f0 4a d0: bl (lu10)       0xc4a <__divdf3>
             0x00083dbc: 01 f0 90 d4: bl (lu10)       -0x490 <__fixdfsi>
             0x00083dc0: 40 90:       add (2rus)      r4, r0, 0x0
             0x00083dc2: 01 f0 65 d4: bl (lu10)       -0x465 <__floatsidf>
             0x00083dc6: 20 90:       add (2rus)      r2, r0, 0x0
             0x00083dc8: 34 90:       add (2rus)      r3, r1, 0x0
             0x00083dca: 84 91:       add (2rus)      r0, r9, 0x0
             0x00083dcc: d4 90:       add (2rus)      r1, r5, 0x0
             0x00083dce: 01 f0 df d5: bl (lu10)       -0x5df <__muldf3>
             0x00083dd2: 20 90:       add (2rus)      r2, r0, 0x0
             0x00083dd4: 34 90:       add (2rus)      r3, r1, 0x0
             0x00083dd6: 80 91:       add (2rus)      r0, r8, 0x0
             0x00083dd8: 98 91:       add (2rus)      r1, r10, 0x0
             0x00083dda: 01 f0 45 d4: bl (lu10)       -0x445 <__subdf3>
             0x00083dde: b0 68:       ldc (ru6)       r2, 0x30
             0x00083de0: e2 10:       add (3r)        r2, r4, r2
             0x00083de2: d5 5c:       ldw (ru6)       r3, sp[0x15]
             0x00083de4: ae 90:       add (2rus)      r10, r3, 0x2
             0x00083de6: 2e fb ec 8f: st8 (l3r)       r2, r7[r6]
             0x00083dea: 96 5c:       ldw (ru6)       r2, sp[0x16]
             0x00083dec: 29 98:       sub (2rus)      r2, r2, 0x1
             0x00083dee: fc 90:       add (2rus)      r3, r7, 0x0
             0x00083df0: f8 91:       add (2rus)      r7, r10, 0x0
             0x00083df2: 78 91:       add (2rus)      r11, r6, 0x0
             0x00083df4: b3 74:       bt (ru6)        r2, -0x33 <.label593>
.label588    0x00083df6: 15 55:       stw (ru6)       r4, sp[0x15]
             0x00083df8: 20 90:       add (2rus)      r2, r0, 0x0
             0x00083dfa: 34 90:       add (2rus)      r3, r1, 0x0
             0x00083dfc: ec 91:       add (2rus)      r6, r11, 0x0
             0x00083dfe: 01 f0 19 d3: bl (lu10)       0x719 <__adddf3>
             0x00083e02: 16 54:       stw (ru6)       r0, sp[0x16]
             0x00083e04: 84 90:       add (2rus)      r8, r1, 0x0
             0x00083e06: f4 91:       add (2rus)      r7, r9, 0x0
             0x00083e08: ec 90:       add (2rus)      r2, r7, 0x0
             0x00083e0a: 04 91:       add (2rus)      r4, r5, 0x0
             0x00083e0c: f0 90:       add (2rus)      r3, r4, 0x0
             0x00083e0e: 01 f0 57 d6: bl (lu10)       -0x657 <__gtdf2>
             0x00083e12: c8 c0:       lss (3r)        r0, r6, r0
             0x00083e14: 97 5d:       ldw (ru6)       r6, sp[0x17]
             0x00083e16: 02 78:       bf (ru6)        r0, 0x2 <.label594>
             0x00083e18: 65 5d:       ldw (ru6)       r5, sp[0x25]
             0x00083e1a: 0d 73:       bu (u6)         0xd <.label576>
.label594    0x00083e1c: 16 5c:       ldw (ru6)       r0, sp[0x16]
             0x00083e1e: 90 91:       add (2rus)      r1, r8, 0x0
             0x00083e20: ec 90:       add (2rus)      r2, r7, 0x0
             0x00083e22: f0 90:       add (2rus)      r3, r4, 0x0
             0x00083e24: 01 f0 68 d6: bl (lu10)       -0x668 <__nedf2>
             0x00083e28: 09 f0 1a 70: bt (lru6)       r0, 0x25a <.label595>
             0x00083e2c: 15 5c:       ldw (ru6)       r0, sp[0x15]
             0x00083e2e: d1 46:       zext (rus)      r0, 0x1
             0x00083e30: 65 5d:       ldw (ru6)       r5, sp[0x25]
             0x00083e32: 09 f0 1a 78: bf (lru6)       r0, 0x25a <.label596>
.label576    0x00083e36: d0 a6:       mkmsk (rus)     r0, 0x20
             0x00083e38: 79 68:       ldc (ru6)       r1, 0x39
             0x00083e3a: d9 5e:       ldw (ru6)       r11, sp[0x19]
.label598    0x00083e3c: f8 91:       add (2rus)      r7, r10, 0x0
             0x00083e3e: ec 88:       ld8u (3r)       r2, r7[r0]
             0x00083e40: 39 30:       eq (3r)         r3, r2, r1
             0x00083e42: cd 78:       bf (ru6)        r3, 0xd <.label597>
             0x00083e44: 6d 99:       sub (2rus)      r10, r7, 0x1
             0x00083e46: 2e 36:       eq (3r)         r2, r11, r10
             0x00083e48: 87 7c:       bf (ru6)        r2, -0x7 <.label598>
             0x00083e4a: 98 5e:       ldw (ru6)       r10, sp[0x18]
             0x00083e4c: 29 92:       add (2rus)      r10, r10, 0x1
             0x00083e4e: 30 68:       ldc (ru6)       r0, 0x30
             0x00083e50: 80 68:       ldc (ru6)       r2, 0x0
             0x00083e52: 8e f9 ec 8f: st8 (l3r)       r0, r11[r2]
             0x00083e56: 31 68:       ldc (ru6)       r0, 0x31
             0x00083e58: 9c 91:       add (2rus)      r1, r11, 0x0
             0x00083e5a: 50 5e:       ldw (ru6)       r9, sp[0x10]
             0x00083e5c: 05 73:       bu (u6)         0x5 <.label599>
.label597    0x00083e5e: 09 90:       add (2rus)      r0, r2, 0x1
             0x00083e60: dd 98:       sub (2rus)      r1, r7, 0x1
             0x00083e62: 50 5e:       ldw (ru6)       r9, sp[0x10]
             0x00083e64: 98 5e:       ldw (ru6)       r10, sp[0x18]
             0x00083e66: 80 68:       ldc (ru6)       r2, 0x0
.label599    0x00083e68: 06 f8 ec 8f: st8 (l3r)       r0, r1[r2]
             0x00083e6c: 09 f0 29 73: bu (lu6)        0x269 <.label578>
.label590    0x00083e70: 68 19:       sub (3r)        r10, r6, r0
.label591    0x00083e72: 90 f9 ec 97: ashr (l2rus)    r1, r8, 0x20
             0x00083e76: 91 5c:       ldw (ru6)       r2, sp[0x11]
             0x00083e78: 42 70:       bt (ru6)        r1, 0x2 <.label600>
             0x00083e7a: 80 91:       add (2rus)      r0, r8, 0x0
             0x00083e7c: 01 73:       bu (u6)         0x1 <.label601>
.label600    0x00083e7e: 00 68:       ldc (ru6)       r0, 0x0
.label601    0x00083e80: 94 3c:       and (3r)        r1, r1, r8
             0x00083e82: 9d 18:       sub (3r)        r9, r3, r1
             0x00083e84: 12 73:       bu (u6)         0x12 <.label602>
.label592    0x00083e86: 50 5e:       ldw (ru6)       r9, sp[0x10]
             0x00083e88: 65 5d:       ldw (ru6)       r5, sp[0x25]
             0x00083e8a: 97 5d:       ldw (ru6)       r6, sp[0x17]
             0x00083e8c: 98 5e:       ldw (ru6)       r10, sp[0x18]
             0x00083e8e: 09 f0 18 73: bu (lu6)        0x258 <.label578>
.label581    0x00083e92: d3 55:       stw (ru6)       r7, sp[0x13]
             0x00083e94: d5 55:       stw (ru6)       r7, sp[0x15]
.label573    0x00083e96: 97 5d:       ldw (ru6)       r6, sp[0x17]
             0x00083e98: 19 5d:       ldw (ru6)       r4, sp[0x19]
             0x00083e9a: 04 f0 07 73: bu (lu6)        0x107 <.label603>
.label585    0x00083e9e: 1b 5c:       ldw (ru6)       r0, sp[0x1b]
             0x00083ea0: 76 68:       ldc (ru6)       r1, 0x36
             0x00083ea2: 04 18:       sub (3r)        r0, r1, r0
.label586    0x00083ea4: 9c 90:       add (2rus)      r9, r3, 0x0
             0x00083ea6: 68 91:       add (2rus)      r10, r6, 0x0
             0x00083ea8: 91 5c:       ldw (ru6)       r2, sp[0x11]
.label602    0x00083eaa: 33 10:       add (3r)        r3, r0, r3
             0x00083eac: cf 54:       stw (ru6)       r3, sp[0xf]
             0x00083eae: 22 10:       add (3r)        r2, r0, r2
             0x00083eb0: 91 54:       stw (ru6)       r2, sp[0x11]
             0x00083eb2: 00 68:       ldc (ru6)       r0, 0x0
             0x00083eb4: d5 a6:       mkmsk (rus)     r1, 0x1
             0x00083eb6: 02 f0 f9 d0: bl (lu10)       0x8f9 <__i2b>
             0x00083eba: 70 90:       add (2rus)      r7, r0, 0x0
.label589    0x00083ebc: 11 a7:       mkmsk (rus)     r4, 0x1
             0x00083ebe: c4 c3:       lss (3r)        r0, r9, r4
             0x00083ec0: 0e 70:       bt (ru6)        r0, 0xe <.label604>
             0x00083ec2: d1 a6:       mkmsk (rus)     r0, 0x1
             0x00083ec4: 91 5c:       ldw (ru6)       r2, sp[0x11]
             0x00083ec6: 08 c0:       lss (3r)        r0, r2, r0
             0x00083ec8: cf 5c:       ldw (ru6)       r3, sp[0xf]
             0x00083eca: 0a 70:       bt (ru6)        r0, 0xa <.label605>
             0x00083ecc: 96 c1:       lss (3r)        r1, r9, r2
             0x00083ece: 84 91:       add (2rus)      r0, r9, 0x0
             0x00083ed0: 41 70:       bt (ru6)        r1, 0x1 <.label606>
             0x00083ed2: 08 90:       add (2rus)      r0, r2, 0x0
.label606    0x00083ed4: 3c 18:       sub (3r)        r3, r3, r0
             0x00083ed6: 14 1a:       sub (3r)        r9, r9, r0
             0x00083ed8: 28 18:       sub (3r)        r2, r2, r0
             0x00083eda: 91 54:       stw (ru6)       r2, sp[0x11]
             0x00083edc: 01 73:       bu (u6)         0x1 <.label605>
.label604    0x00083ede: cf 5c:       ldw (ru6)       r3, sp[0xf]
.label605    0x00083ee0: 08 c3:       lss (3r)        r0, r6, r4
             0x00083ee2: 1c 70:       bt (ru6)        r0, 0x1c <.label607>
             0x00083ee4: 5f 79:       bf (ru6)        r5, 0x1f <.label608>
             0x00083ee6: d1 a6:       mkmsk (rus)     r0, 0x1
             0x00083ee8: 88 c1:       lss (3r)        r0, r10, r0
             0x00083eea: 22 70:       bt (ru6)        r0, 0x22 <.label609>
             0x00083eec: 4f 56:       stw (ru6)       r9, sp[0xf]
             0x00083eee: 8a 55:       stw (ru6)       r6, sp[0xa]
             0x00083ef0: 9c 90:       add (2rus)      r9, r3, 0x0
             0x00083ef2: 14 56:       stw (ru6)       r8, sp[0x14]
             0x00083ef4: 40 69:       ldc (ru6)       r5, 0x0
             0x00083ef6: c4 90:       add (2rus)      r0, r5, 0x0
             0x00083ef8: dc 90:       add (2rus)      r1, r7, 0x0
             0x00083efa: a8 91:       add (2rus)      r2, r10, 0x0
             0x00083efc: 02 f0 b0 d1: bl (lu10)       0x9b0 <__pow5mult>
             0x00083f00: 10 90:       add (2rus)      r1, r0, 0x0
             0x00083f02: c4 90:       add (2rus)      r0, r5, 0x0
             0x00083f04: 24 91:       add (2rus)      r6, r5, 0x0
             0x00083f06: 74 90:       add (2rus)      r7, r1, 0x0
             0x00083f08: 17 5e:       ldw (ru6)       r8, sp[0x17]
             0x00083f0a: a0 91:       add (2rus)      r2, r8, 0x0
             0x00083f0c: 02 f0 dc d0: bl (lu10)       0x8dc <__multiply>
             0x00083f10: 50 90:       add (2rus)      r5, r0, 0x0
             0x00083f12: c8 90:       add (2rus)      r0, r6, 0x0
             0x00083f14: 90 91:       add (2rus)      r1, r8, 0x0
             0x00083f16: 02 f0 1d d0: bl (lu10)       0x81d <_Bfree>
             0x00083f1a: 0f 73:       bu (u6)         0xf <.label610>
.label607    0x00083f1c: 4f 56:       stw (ru6)       r9, sp[0xf]
             0x00083f1e: 9c 90:       add (2rus)      r9, r3, 0x0
             0x00083f20: 97 5d:       ldw (ru6)       r6, sp[0x17]
             0x00083f22: 17 73:       bu (u6)         0x17 <.label611>
.label608    0x00083f24: 4f 56:       stw (ru6)       r9, sp[0xf]
             0x00083f26: 9c 90:       add (2rus)      r9, r3, 0x0
             0x00083f28: 00 68:       ldc (ru6)       r0, 0x0
             0x00083f2a: 57 5c:       ldw (ru6)       r1, sp[0x17]
             0x00083f2c: e8 90:       add (2rus)      r2, r6, 0x0
             0x00083f2e: 0e 73:       bu (u6)         0xe <.label612>
.label609    0x00083f30: 4f 56:       stw (ru6)       r9, sp[0xf]
             0x00083f32: 8a 55:       stw (ru6)       r6, sp[0xa]
             0x00083f34: 9c 90:       add (2rus)      r9, r3, 0x0
             0x00083f36: 14 56:       stw (ru6)       r8, sp[0x14]
             0x00083f38: 57 5d:       ldw (ru6)       r5, sp[0x17]
.label610    0x00083f3a: 8a 5d:       ldw (ru6)       r6, sp[0xa]
             0x00083f3c: 4a 35:       eq (3r)         r0, r6, r10
             0x00083f3e: 14 5e:       ldw (ru6)       r8, sp[0x14]
             0x00083f40: 02 78:       bf (ru6)        r0, 0x2 <.label613>
             0x00083f42: 24 91:       add (2rus)      r6, r5, 0x0
             0x00083f44: 06 73:       bu (u6)         0x6 <.label611>
.label613    0x00083f46: 6a 1d:       sub (3r)        r2, r6, r10
             0x00083f48: 00 68:       ldc (ru6)       r0, 0x0
             0x00083f4a: d4 90:       add (2rus)      r1, r5, 0x0
.label612    0x00083f4c: 02 f0 88 d1: bl (lu10)       0x988 <__pow5mult>
             0x00083f50: 60 90:       add (2rus)      r6, r0, 0x0
.label611    0x00083f52: 98 5e:       ldw (ru6)       r10, sp[0x18]
             0x00083f54: 40 69:       ldc (ru6)       r5, 0x0
             0x00083f56: c4 90:       add (2rus)      r0, r5, 0x0
             0x00083f58: d0 90:       add (2rus)      r1, r4, 0x0
             0x00083f5a: 02 f0 a7 d0: bl (lu10)       0x8a7 <__i2b>
             0x00083f5e: 10 90:       add (2rus)      r1, r0, 0x0
             0x00083f60: 88 5c:       ldw (ru6)       r2, sp[0x8]
             0x00083f62: 48 c2:       lss (3r)        r0, r2, r4
             0x00083f64: 08 70:       bt (ru6)        r0, 0x8 <.label614>
             0x00083f66: 57 55:       stw (ru6)       r5, sp[0x17]
             0x00083f68: d5 55:       stw (ru6)       r7, sp[0x15]
             0x00083f6a: 00 68:       ldc (ru6)       r0, 0x0
             0x00083f6c: 78 90:       add (2rus)      r7, r2, 0x0
             0x00083f6e: 02 f0 77 d1: bl (lu10)       0x977 <__pow5mult>
             0x00083f72: 50 90:       add (2rus)      r5, r0, 0x0
             0x00083f74: 04 73:       bu (u6)         0x4 <.label615>
.label614    0x00083f76: 57 55:       stw (ru6)       r5, sp[0x17]
             0x00083f78: d5 55:       stw (ru6)       r7, sp[0x15]
             0x00083f7a: 54 90:       add (2rus)      r5, r1, 0x0
             0x00083f7c: 78 90:       add (2rus)      r7, r2, 0x0
.label615    0x00083f7e: 12 5c:       ldw (ru6)       r0, sp[0x12]
             0x00083f80: c0 c0:       lss (3r)        r0, r4, r0
             0x00083f82: 0e 70:       bt (ru6)        r0, 0xe <.label616>
             0x00083f84: 03 f0 16 6c: ldw (lru6)      r0, cp[0xd6]
             0x00083f88: 53 5c:       ldw (ru6)       r1, sp[0x13]
             0x00083f8a: 04 38:       and (3r)        r0, r1, r0
             0x00083f8c: 56 5c:       ldw (ru6)       r1, sp[0x16]
             0x00083f8e: 01 40:       or (3r)         r0, r0, r1
             0x00083f90: 07 70:       bt (ru6)        r0, 0x7 <.label616>
             0x00083f92: 07 5c:       ldw (ru6)       r0, sp[0x7]
             0x00083f94: 05 78:       bf (ru6)        r0, 0x5 <.label616>
             0x00083f96: 15 92:       add (2rus)      r9, r9, 0x1
             0x00083f98: 11 5c:       ldw (ru6)       r0, sp[0x11]
             0x00083f9a: 01 90:       add (2rus)      r0, r0, 0x1
             0x00083f9c: 11 54:       stw (ru6)       r0, sp[0x11]
             0x00083f9e: 17 55:       stw (ru6)       r4, sp[0x17]
.label616    0x00083fa0: c8 79:       bf (ru6)        r7, 0x8 <.label617>
             0x00083fa2: 04 0b:       ldw (2rus)      r0, r5[0x4]
             0x00083fa4: c4 f8 ec 1f: ldaw (l3r)      r0, r5[r0]
             0x00083fa8: 40 0a:       ldw (2rus)      r0, r0[0x4]
             0x00083faa: 02 f0 25 d0: bl (lu10)       0x825 <__hi0bits>
             0x00083fae: 60 68:       ldc (ru6)       r1, 0x20
             0x00083fb0: 44 18:       sub (3r)        r4, r1, r0
.label617    0x00083fb2: 51 5c:       ldw (ru6)       r1, sp[0x11]
             0x00083fb4: c1 10:       add (3r)        r0, r4, r1
             0x00083fb6: 44 90:       add (2rus)      r4, r1, 0x0
             0x00083fb8: 91 47:       zext (rus)      r0, 0x5
             0x00083fba: 02 70:       bt (ru6)        r0, 0x2 <.label618>
             0x00083fbc: 00 68:       ldc (ru6)       r0, 0x0
             0x00083fbe: 02 73:       bu (u6)         0x2 <.label619>
.label618    0x00083fc0: 60 68:       ldc (ru6)       r1, 0x20
             0x00083fc2: 04 18:       sub (3r)        r0, r1, r0
.label619    0x00083fc4: a4 91:       add (2rus)      r2, r9, 0x0
             0x00083fc6: 45 68:       ldc (ru6)       r1, 0x5
             0x00083fc8: 11 c8:       lsu (3r)        r1, r0, r1
             0x00083fca: 34 91:       add (2rus)      r7, r5, 0x0
             0x00083fcc: 4f 5e:       ldw (ru6)       r9, sp[0xf]
             0x00083fce: 42 70:       bt (ru6)        r1, 0x2 <.label620>
             0x00083fd0: 40 9a:       sub (2rus)      r0, r0, 0x4
             0x00083fd2: 05 73:       bu (u6)         0x5 <.label621>
.label620    0x00083fd4: d6 a6:       mkmsk (rus)     r1, 0x2
             0x00083fd6: 14 c8:       lsu (3r)        r1, r1, r0
             0x00083fd8: 45 70:       bt (ru6)        r1, 0x5 <.label622>
             0x00083fda: 43 fa ec 9f: ldaw (l2rus)    r0, r0[0x7]
.label621    0x00083fde: 22 10:       add (3r)        r2, r0, r2
             0x00083fe0: 11 15:       add (3r)        r9, r0, r9
             0x00083fe2: 80 12:       add (3r)        r4, r0, r4
.label622    0x00083fe4: d1 a6:       mkmsk (rus)     r0, 0x1
             0x00083fe6: 08 c0:       lss (3r)        r0, r2, r0
             0x00083fe8: 05 70:       bt (ru6)        r0, 0x5 <.label623>
             0x00083fea: 00 68:       ldc (ru6)       r0, 0x0
             0x00083fec: d8 90:       add (2rus)      r1, r6, 0x0
             0x00083fee: 02 f0 81 d1: bl (lu10)       0x981 <__lshift>
             0x00083ff2: 60 90:       add (2rus)      r6, r0, 0x0
.label623    0x00083ff4: d1 a6:       mkmsk (rus)     r0, 0x1
             0x00083ff6: c0 c0:       lss (3r)        r0, r4, r0
             0x00083ff8: 06 70:       bt (ru6)        r0, 0x6 <.label624>
             0x00083ffa: 00 68:       ldc (ru6)       r0, 0x0
             0x00083ffc: dc 90:       add (2rus)      r1, r7, 0x0
             0x00083ffe: e0 90:       add (2rus)      r2, r4, 0x0
             0x00084000: 02 f0 78 d1: bl (lu10)       0x978 <__lshift>
             0x00084004: 70 90:       add (2rus)      r7, r0, 0x0
.label624    0x00084006: 0d 5c:       ldw (ru6)       r0, sp[0xd]
             0x00084008: 07 78:       bf (ru6)        r0, 0x7 <.label625>
             0x0008400a: c8 90:       add (2rus)      r0, r6, 0x0
             0x0008400c: dc 90:       add (2rus)      r1, r7, 0x0
             0x0008400e: 02 f0 e5 d1: bl (lu10)       0x9e5 <__mcmp>
             0x00084012: 00 f8 ec 97: ashr (l2rus)    r0, r0, 0x20
             0x00084016: 03 70:       bt (ru6)        r0, 0x3 <.label626>
.label625    0x00084018: 90 91:       add (2rus)      r1, r8, 0x0
             0x0008401a: 52 5d:       ldw (ru6)       r5, sp[0x12]
             0x0008401c: 13 73:       bu (u6)         0x13 <.label627>
.label626    0x0008401e: 29 9a:       sub (2rus)      r10, r10, 0x1
             0x00084020: 8a 68:       ldc (ru6)       r2, 0xa
             0x00084022: 00 68:       ldc (ru6)       r0, 0x0
             0x00084024: d8 90:       add (2rus)      r1, r6, 0x0
             0x00084026: 30 90:       add (2rus)      r3, r0, 0x0
             0x00084028: 01 f0 a2 d3: bl (lu10)       0x7a2 <__multadd>
             0x0008402c: 60 90:       add (2rus)      r6, r0, 0x0
             0x0008402e: 0e 5c:       ldw (ru6)       r0, sp[0xe]
             0x00084030: 07 78:       bf (ru6)        r0, 0x7 <.label628>
             0x00084032: 8a 68:       ldc (ru6)       r2, 0xa
             0x00084034: 00 68:       ldc (ru6)       r0, 0x0
             0x00084036: 55 5c:       ldw (ru6)       r1, sp[0x15]
             0x00084038: 30 90:       add (2rus)      r3, r0, 0x0
             0x0008403a: 01 f0 99 d3: bl (lu10)       0x799 <__multadd>
             0x0008403e: 15 54:       stw (ru6)       r0, sp[0x15]
.label628    0x00084040: 52 5d:       ldw (ru6)       r5, sp[0x12]
             0x00084042: 4b 5c:       ldw (ru6)       r1, sp[0xb]
.label627    0x00084044: 00 6a:       ldc (ru6)       r8, 0x0
             0x00084046: 81 c1:       lss (3r)        r0, r8, r1
             0x00084048: 1e 70:       bt (ru6)        r0, 0x1e <.label629>
             0x0008404a: d2 a6:       mkmsk (rus)     r0, 0x2
             0x0008404c: c4 c0:       lss (3r)        r0, r5, r0
             0x0008404e: 1b 70:       bt (ru6)        r0, 0x1b <.label629>
             0x00084050: 04 f8 ec 97: ashr (l2rus)    r0, r1, 0x20
             0x00084054: 28 70:       bt (ru6)        r0, 0x28 <.label630>
             0x00084056: 85 68:       ldc (ru6)       r2, 0x5
             0x00084058: 00 69:       ldc (ru6)       r4, 0x0
             0x0008405a: c0 90:       add (2rus)      r0, r4, 0x0
             0x0008405c: dc 90:       add (2rus)      r1, r7, 0x0
             0x0008405e: f0 90:       add (2rus)      r3, r4, 0x0
             0x00084060: 01 f0 86 d3: bl (lu10)       0x786 <__multadd>
             0x00084064: 10 90:       add (2rus)      r1, r0, 0x0
             0x00084066: 53 54:       stw (ru6)       r1, sp[0x13]
             0x00084068: c8 90:       add (2rus)      r0, r6, 0x0
             0x0008406a: 02 f0 b7 d1: bl (lu10)       0x9b7 <__mcmp>
             0x0008406e: c0 c0:       lss (3r)        r0, r4, r0
             0x00084070: 50 5e:       ldw (ru6)       r9, sp[0x10]
.label582    0x00084072: 19 5d:       ldw (ru6)       r4, sp[0x19]
             0x00084074: 1b 78:       bf (ru6)        r0, 0x1b <.label603>
.label567    0x00084076: 31 91:       add (2rus)      r7, r4, 0x1
             0x00084078: 00 6a:       ldc (ru6)       r8, 0x0
             0x0008407a: 31 68:       ldc (ru6)       r0, 0x31
             0x0008407c: 40 fd ec 8f: st8 (l3r)       r0, r4[r8]
             0x00084080: 29 92:       add (2rus)      r10, r10, 0x1
             0x00084082: 05 f0 08 73: bu (lu6)        0x148 <.label631>
.label629    0x00084086: 4b 54:       stw (ru6)       r1, sp[0xb]
             0x00084088: 19 5d:       ldw (ru6)       r4, sp[0x19]
             0x0008408a: 0e 5c:       ldw (ru6)       r0, sp[0xe]
             0x0008408c: 15 78:       bf (ru6)        r0, 0x15 <.label632>
             0x0008408e: d1 a6:       mkmsk (rus)     r0, 0x1
             0x00084090: 84 c1:       lss (3r)        r0, r9, r0
             0x00084092: 01 f0 02 70: bt (lru6)       r0, 0x42 <.label633>
             0x00084096: d3 55:       stw (ru6)       r7, sp[0x13]
             0x00084098: 00 68:       ldc (ru6)       r0, 0x0
             0x0008409a: 55 5c:       ldw (ru6)       r1, sp[0x15]
             0x0008409c: a4 91:       add (2rus)      r2, r9, 0x0
             0x0008409e: 02 f0 29 d1: bl (lu10)       0x929 <__lshift>
             0x000840a2: 80 90:       add (2rus)      r8, r0, 0x0
             0x000840a4: 3c 73:       bu (u6)         0x3c <.label634>
.label630    0x000840a6: d3 55:       stw (ru6)       r7, sp[0x13]
             0x000840a8: 50 5e:       ldw (ru6)       r9, sp[0x10]
             0x000840aa: 19 5d:       ldw (ru6)       r4, sp[0x19]
.label603    0x000840ac: 09 5c:       ldw (ru6)       r0, sp[0x9]
             0x000840ae: 48 8f:       not (2r)        r10, r0
             0x000840b0: 00 6a:       ldc (ru6)       r8, 0x0
             0x000840b2: 30 91:       add (2rus)      r7, r4, 0x0
             0x000840b4: 04 f0 2f 73: bu (lu6)        0x12f <.label631>
.label632    0x000840b8: c8 90:       add (2rus)      r0, r6, 0x0
             0x000840ba: 97 55:       stw (ru6)       r6, sp[0x17]
             0x000840bc: dc 90:       add (2rus)      r1, r7, 0x0
             0x000840be: 00 f0 5f d1: bl (lu10)       0x15f <quorem>
             0x000840c2: b0 68:       ldc (ru6)       r2, 0x30
             0x000840c4: 62 10:       add (3r)        r6, r0, r2
             0x000840c6: 11 91:       add (2rus)      r5, r4, 0x1
             0x000840c8: a0 fd ec 8f: st8 (l3r)       r6, r4[r8]
             0x000840cc: 02 68:       ldc (ru6)       r0, 0x2
             0x000840ce: 4b 5c:       ldw (ru6)       r1, sp[0xb]
             0x000840d0: 04 c0:       lss (3r)        r0, r1, r0
             0x000840d2: 03 f0 01 70: bt (lru6)       r0, 0xc1 <.label635>
             0x000840d6: 98 56:       stw (ru6)       r10, sp[0x18]
             0x000840d8: 95 98:       sub (2rus)      r9, r1, 0x1
             0x000840da: c0 90:       add (2rus)      r0, r4, 0x0
             0x000840dc: 00 6a:       ldc (ru6)       r8, 0x0
             0x000840de: a0 90:       add (2rus)      r10, r0, 0x0
             0x000840e0: 0c 91:       add (2rus)      r4, r7, 0x0
             0x000840e2: d7 5d:       ldw (ru6)       r7, sp[0x17]
.label636    0x000840e4: 80 91:       add (2rus)      r0, r8, 0x0
             0x000840e6: dc 90:       add (2rus)      r1, r7, 0x0
             0x000840e8: 68 90:       add (2rus)      r6, r2, 0x0
             0x000840ea: 8a 68:       ldc (ru6)       r2, 0xa
             0x000840ec: b0 91:       add (2rus)      r3, r8, 0x0
             0x000840ee: 01 f0 3f d3: bl (lu10)       0x73f <__multadd>
             0x000840f2: 70 90:       add (2rus)      r7, r0, 0x0
             0x000840f4: d0 90:       add (2rus)      r1, r4, 0x0
             0x000840f6: 00 f0 43 d1: bl (lu10)       0x143 <quorem>
             0x000840fa: e8 90:       add (2rus)      r2, r6, 0x0
             0x000840fc: 62 10:       add (3r)        r6, r0, r2
             0x000840fe: 8a 91:       add (2rus)      r0, r10, 0x2
             0x00084100: a4 fd ec 8f: st8 (l3r)       r6, r5[r8]
             0x00084104: 15 9a:       sub (2rus)      r9, r9, 0x1
             0x00084106: 64 91:       add (2rus)      r10, r5, 0x0
             0x00084108: 50 90:       add (2rus)      r5, r0, 0x0
             0x0008410a: 54 76:       bt (ru6)        r9, -0x14 <.label636>
             0x0008410c: d7 55:       stw (ru6)       r7, sp[0x17]
             0x0008410e: 50 90:       add (2rus)      r5, r0, 0x0
             0x00084110: 50 5e:       ldw (ru6)       r9, sp[0x10]
             0x00084112: 98 5e:       ldw (ru6)       r10, sp[0x18]
             0x00084114: 30 91:       add (2rus)      r7, r4, 0x0
             0x00084116: 02 f0 3e 73: bu (lu6)        0xbe <.label637>
.label633    0x0008411a: d3 55:       stw (ru6)       r7, sp[0x13]
             0x0008411c: 15 5e:       ldw (ru6)       r8, sp[0x15]
.label634    0x0008411e: 17 5c:       ldw (ru6)       r0, sp[0x17]
             0x00084120: 98 56:       stw (ru6)       r10, sp[0x18]
             0x00084122: f0 91:       add (2rus)      r7, r8, 0x0
             0x00084124: 16 78:       bf (ru6)        r0, 0x16 <.label638>
             0x00084126: 91 09:       ldw (2rus)      r1, r8[0x1]
             0x00084128: 00 69:       ldc (ru6)       r4, 0x0
             0x0008412a: c0 90:       add (2rus)      r0, r4, 0x0
             0x0008412c: 01 f0 e6 d2: bl (lu10)       0x6e6 <_Balloc>
             0x00084130: 50 90:       add (2rus)      r5, r0, 0x0
             0x00084132: c7 f8 ec 9f: ldaw (l2rus)    r0, r5[0x3]
             0x00084136: 93 f9 ec 9f: ldaw (l2rus)    r1, r8[0x3]
             0x0008413a: e0 0b:       ldw (2rus)      r2, r8[0x4]
             0x0008413c: c8 68:       ldc (ru6)       r3, 0x8
             0x0008413e: 2e f8 ec 1f: ldaw (l3r)      r2, r3[r2]
             0x00084142: 06 f0 07 d6: bl (lu10)       -0x1a07 <memcpy> <__memcpy_4>
             0x00084146: d9 a6:       mkmsk (rus)     r2, 0x1
             0x00084148: c0 90:       add (2rus)      r0, r4, 0x0
             0x0008414a: d4 90:       add (2rus)      r1, r5, 0x0
             0x0008414c: 02 f0 d2 d0: bl (lu10)       0x8d2 <__lshift>
             0x00084150: 70 90:       add (2rus)      r7, r0, 0x0
.label638    0x00084152: 16 5c:       ldw (ru6)       r0, sp[0x16]
             0x00084154: d1 46:       zext (rus)      r0, 0x1
             0x00084156: 16 54:       stw (ru6)       r0, sp[0x16]
             0x00084158: 0b 5c:       ldw (ru6)       r0, sp[0xb]
             0x0008415a: 01 98:       sub (2rus)      r0, r0, 0x1
             0x0008415c: 14 54:       stw (ru6)       r0, sp[0x14]
             0x0008415e: 00 69:       ldc (ru6)       r4, 0x0
             0x00084160: 19 5c:       ldw (ru6)       r0, sp[0x19]
             0x00084162: 11 54:       stw (ru6)       r0, sp[0x11]
             0x00084164: 08 73:       bu (u6)         0x8 <.label639>
.label647    0x00084166: 29 92:       add (2rus)      r10, r10, 0x1
             0x00084168: 91 56:       stw (ru6)       r10, sp[0x11]
             0x0008416a: 54 5c:       ldw (ru6)       r1, sp[0x14]
             0x0008416c: 15 98:       sub (2rus)      r1, r1, 0x1
             0x0008416e: 54 54:       stw (ru6)       r1, sp[0x14]
             0x00084170: 70 90:       add (2rus)      r7, r0, 0x0
             0x00084172: 20 91:       add (2rus)      r6, r4, 0x0
             0x00084174: c4 91:       add (2rus)      r4, r9, 0x0
.label639    0x00084176: d5 55:       stw (ru6)       r7, sp[0x15]
             0x00084178: c8 90:       add (2rus)      r0, r6, 0x0
             0x0008417a: 93 5e:       ldw (ru6)       r10, sp[0x13]
             0x0008417c: 98 91:       add (2rus)      r1, r10, 0x0
             0x0008417e: 00 f0 ff d0: bl (lu10)       0xff <quorem>
             0x00084182: 90 90:       add (2rus)      r9, r0, 0x0
             0x00084184: c8 90:       add (2rus)      r0, r6, 0x0
             0x00084186: 90 91:       add (2rus)      r1, r8, 0x0
             0x00084188: 02 f0 28 d1: bl (lu10)       0x928 <__mcmp>
             0x0008418c: 50 90:       add (2rus)      r5, r0, 0x0
             0x0008418e: c0 90:       add (2rus)      r0, r4, 0x0
             0x00084190: 98 91:       add (2rus)      r1, r10, 0x0
             0x00084192: ec 90:       add (2rus)      r2, r7, 0x0
             0x00084194: 02 f0 48 d1: bl (lu10)       0x948 <__mdiff>
             0x00084198: 70 90:       add (2rus)      r7, r0, 0x0
             0x0008419a: cf 08:       ldw (2rus)      r0, r7[0x3]
             0x0008419c: 59 a7:       mkmsk (rus)     r10, 0x1
             0x0008419e: 05 70:       bt (ru6)        r0, 0x5 <.label640>
             0x000841a0: c8 90:       add (2rus)      r0, r6, 0x0
             0x000841a2: dc 90:       add (2rus)      r1, r7, 0x0
             0x000841a4: 02 f0 1a d1: bl (lu10)       0x91a <__mcmp>
             0x000841a8: a0 90:       add (2rus)      r10, r0, 0x0
.label640    0x000841aa: 97 55:       stw (ru6)       r6, sp[0x17]
             0x000841ac: 30 68:       ldc (ru6)       r0, 0x30
             0x000841ae: e4 11:       add (3r)        r6, r9, r0
             0x000841b0: c0 90:       add (2rus)      r0, r4, 0x0
             0x000841b2: dc 90:       add (2rus)      r1, r7, 0x0
             0x000841b4: 01 f0 ce d2: bl (lu10)       0x6ce <_Bfree>
             0x000841b8: 52 5c:       ldw (ru6)       r1, sp[0x12]
             0x000841ba: 89 41:       or (3r)         r0, r10, r1
             0x000841bc: 03 70:       bt (ru6)        r0, 0x3 <.label641>
             0x000841be: 16 5c:       ldw (ru6)       r0, sp[0x16]
             0x000841c0: 01 f0 0d 78: bf (lru6)       r0, 0x4d <.label642>
.label641    0x000841c4: c4 f8 ec 97: ashr (l2rus)    r0, r5, 0x20
             0x000841c8: 2a 70:       bt (ru6)        r0, 0x2a <.label643>
             0x000841ca: c5 40:       or (3r)         r0, r5, r1
             0x000841cc: 02 70:       bt (ru6)        r0, 0x2 <.label644>
             0x000841ce: 16 5c:       ldw (ru6)       r0, sp[0x16]
             0x000841d0: 26 78:       bf (ru6)        r0, 0x26 <.label643>
.label644    0x000841d2: d1 a6:       mkmsk (rus)     r0, 0x1
             0x000841d4: 88 c1:       lss (3r)        r0, r10, r0
             0x000841d6: 01 f0 0d 78: bf (lru6)       r0, 0x4d <.label645>
             0x000841da: 91 5e:       ldw (ru6)       r10, sp[0x11]
             0x000841dc: 28 fc ec 8f: st8 (l3r)       r6, r10[r4]
             0x000841e0: 14 5c:       ldw (ru6)       r0, sp[0x14]
             0x000841e2: 01 f0 14 78: bf (lru6)       r0, 0x54 <.label646>
             0x000841e6: c0 90:       add (2rus)      r0, r4, 0x0
             0x000841e8: 57 5c:       ldw (ru6)       r1, sp[0x17]
             0x000841ea: 8a 69:       ldc (ru6)       r6, 0xa
             0x000841ec: e8 90:       add (2rus)      r2, r6, 0x0
             0x000841ee: f0 90:       add (2rus)      r3, r4, 0x0
             0x000841f0: 01 f0 be d2: bl (lu10)       0x6be <__multadd>
             0x000841f4: 50 91:       add (2rus)      r9, r4, 0x0
             0x000841f6: 40 90:       add (2rus)      r4, r0, 0x0
             0x000841f8: d5 5d:       ldw (ru6)       r7, sp[0x15]
             0x000841fa: 13 34:       eq (3r)         r5, r8, r7
             0x000841fc: 84 91:       add (2rus)      r0, r9, 0x0
             0x000841fe: 90 91:       add (2rus)      r1, r8, 0x0
             0x00084200: e8 90:       add (2rus)      r2, r6, 0x0
             0x00084202: b4 91:       add (2rus)      r3, r9, 0x0
             0x00084204: 01 f0 b4 d2: bl (lu10)       0x6b4 <__multadd>
             0x00084208: 80 90:       add (2rus)      r8, r0, 0x0
             0x0008420a: 01 f0 54 75: bt (lru6)       r5, -0x54 <.label647>
             0x0008420e: 84 91:       add (2rus)      r0, r9, 0x0
             0x00084210: dc 90:       add (2rus)      r1, r7, 0x0
             0x00084212: e8 90:       add (2rus)      r2, r6, 0x0
             0x00084214: b4 91:       add (2rus)      r3, r9, 0x0
             0x00084216: 01 f0 ab d2: bl (lu10)       0x6ab <__multadd>
             0x0008421a: 01 f0 1c 77: bu (lu6)        -0x5c <.label647>
.label643    0x0008421e: d1 a6:       mkmsk (rus)     r0, 0x1
             0x00084220: 88 c1:       lss (3r)        r0, r10, r0
             0x00084222: 24 70:       bt (ru6)        r0, 0x24 <.label648>
             0x00084224: d4 91:       add (2rus)      r5, r9, 0x0
             0x00084226: d9 a6:       mkmsk (rus)     r2, 0x1
             0x00084228: c0 90:       add (2rus)      r0, r4, 0x0
             0x0008422a: 57 5c:       ldw (ru6)       r1, sp[0x17]
             0x0008422c: 02 f0 62 d0: bl (lu10)       0x862 <__lshift>
             0x00084230: 17 54:       stw (ru6)       r0, sp[0x17]
             0x00084232: 53 5c:       ldw (ru6)       r1, sp[0x13]
             0x00084234: 02 f0 d2 d0: bl (lu10)       0x8d2 <__mcmp>
             0x00084238: d0 c0:       lss (3r)        r1, r4, r0
             0x0008423a: 50 5e:       ldw (ru6)       r9, sp[0x10]
             0x0008423c: 98 5e:       ldw (ru6)       r10, sp[0x18]
             0x0008423e: 46 70:       bt (ru6)        r1, 0x6 <.label649>
             0x00084240: 01 f0 23 70: bt (lru6)       r0, 0x63 <.label650>
             0x00084244: c8 90:       add (2rus)      r0, r6, 0x0
             0x00084246: d1 46:       zext (rus)      r0, 0x1
             0x00084248: 01 f0 1f 78: bf (lru6)       r0, 0x5f <.label650>
.label649    0x0008424c: 39 68:       ldc (ru6)       r0, 0x39
             0x0008424e: c8 30:       eq (3r)         r0, r6, r0
             0x00084250: 01 f0 19 78: bf (lru6)       r0, 0x59 <.label651>
             0x00084254: 97 5d:       ldw (ru6)       r6, sp[0x17]
             0x00084256: 15 73:       bu (u6)         0x15 <.label652>
.label635    0x00084258: c0 91:       add (2rus)      r4, r8, 0x0
             0x0008425a: 50 5e:       ldw (ru6)       r9, sp[0x10]
             0x0008425c: 1d 73:       bu (u6)         0x1d <.label653>
.label642    0x0008425e: 39 68:       ldc (ru6)       r0, 0x39
             0x00084260: c8 30:       eq (3r)         r0, r6, r0
             0x00084262: 0c 70:       bt (ru6)        r0, 0xc <.label654>
             0x00084264: 01 c3:       lss (3r)        r0, r4, r5
             0x00084266: 02 78:       bf (ru6)        r0, 0x2 <.label648>
             0x00084268: 31 68:       ldc (ru6)       r0, 0x31
             0x0008426a: e4 11:       add (3r)        r6, r9, r0
.label648    0x0008426c: 50 5e:       ldw (ru6)       r9, sp[0x10]
             0x0008426e: 98 5e:       ldw (ru6)       r10, sp[0x18]
             0x00084270: 01 f0 0b 73: bu (lu6)        0x4b <.label650>
.label645    0x00084274: 39 68:       ldc (ru6)       r0, 0x39
             0x00084276: c8 30:       eq (3r)         r0, r6, r0
             0x00084278: 01 f0 37 78: bf (lru6)       r0, 0x77 <.label655>
.label654    0x0008427c: 50 5e:       ldw (ru6)       r9, sp[0x10]
             0x0008427e: 97 5d:       ldw (ru6)       r6, sp[0x17]
             0x00084280: 98 5e:       ldw (ru6)       r10, sp[0x18]
.label652    0x00084282: 39 68:       ldc (ru6)       r0, 0x39
             0x00084284: 51 5c:       ldw (ru6)       r1, sp[0x11]
             0x00084286: 44 fa ec 8f: st8 (l3r)       r0, r1[r4]
             0x0008428a: 55 90:       add (2rus)      r5, r1, 0x1
             0x0008428c: 15 73:       bu (u6)         0x15 <.label656>
.label646    0x0008428e: d9 91:       add (2rus)      r5, r10, 0x1
             0x00084290: 50 5e:       ldw (ru6)       r9, sp[0x10]
             0x00084292: 98 5e:       ldw (ru6)       r10, sp[0x18]
             0x00084294: d3 5d:       ldw (ru6)       r7, sp[0x13]
.label637    0x00084296: 00 69:       ldc (ru6)       r4, 0x0
.label653    0x00084298: d9 a6:       mkmsk (rus)     r2, 0x1
             0x0008429a: c0 90:       add (2rus)      r0, r4, 0x0
             0x0008429c: 57 5c:       ldw (ru6)       r1, sp[0x17]
             0x0008429e: 02 f0 29 d0: bl (lu10)       0x829 <__lshift>
             0x000842a2: 17 54:       stw (ru6)       r0, sp[0x17]
             0x000842a4: dc 90:       add (2rus)      r1, r7, 0x0
             0x000842a6: 02 f0 99 d0: bl (lu10)       0x899 <__mcmp>
             0x000842aa: d0 c0:       lss (3r)        r1, r4, r0
             0x000842ac: 43 70:       bt (ru6)        r1, 0x3 <.label657>
             0x000842ae: 21 70:       bt (ru6)        r0, 0x21 <.label658>
             0x000842b0: 19 47:       zext (rus)      r6, 0x1
             0x000842b2: 9f 79:       bf (ru6)        r6, 0x1f <.label658>
.label657    0x000842b4: d3 55:       stw (ru6)       r7, sp[0x13]
             0x000842b6: 97 5d:       ldw (ru6)       r6, sp[0x17]
.label656    0x000842b8: 19 5d:       ldw (ru6)       r4, sp[0x19]
             0x000842ba: d0 a6:       mkmsk (rus)     r0, 0x20
             0x000842bc: 79 68:       ldc (ru6)       r1, 0x39
.label660    0x000842be: 34 91:       add (2rus)      r7, r5, 0x0
             0x000842c0: ec 88:       ld8u (3r)       r2, r7[r0]
             0x000842c2: 39 30:       eq (3r)         r3, r2, r1
             0x000842c4: c9 78:       bf (ru6)        r3, 0x9 <.label659>
             0x000842c6: 1d 99:       sub (2rus)      r5, r7, 0x1
             0x000842c8: 21 33:       eq (3r)         r2, r4, r5
             0x000842ca: 87 7c:       bf (ru6)        r2, -0x7 <.label660>
             0x000842cc: 29 92:       add (2rus)      r10, r10, 0x1
             0x000842ce: 00 68:       ldc (ru6)       r0, 0x0
             0x000842d0: 71 68:       ldc (ru6)       r1, 0x31
             0x000842d2: d0 f8 ec 8f: st8 (l3r)       r1, r4[r0]
             0x000842d6: 1f 73:       bu (u6)         0x1f <.label631>
.label659    0x000842d8: 19 90:       add (2rus)      r1, r2, 0x1
             0x000842da: dc f8 ec 8f: st8 (l3r)       r1, r7[r0]
             0x000842de: 1b 73:       bu (u6)         0x1b <.label631>
.label595    0x000842e0: f8 91:       add (2rus)      r7, r10, 0x0
             0x000842e2: 50 5e:       ldw (ru6)       r9, sp[0x10]
             0x000842e4: 65 5d:       ldw (ru6)       r5, sp[0x25]
             0x000842e6: 98 5e:       ldw (ru6)       r10, sp[0x18]
             0x000842e8: 2c 73:       bu (u6)         0x2c <.label578>
.label596    0x000842ea: f8 91:       add (2rus)      r7, r10, 0x0
             0x000842ec: 50 5e:       ldw (ru6)       r9, sp[0x10]
             0x000842ee: 98 5e:       ldw (ru6)       r10, sp[0x18]
             0x000842f0: 28 73:       bu (u6)         0x28 <.label578>
.label658    0x000842f2: d3 55:       stw (ru6)       r7, sp[0x13]
             0x000842f4: 35 91:       add (2rus)      r7, r5, 0x1
             0x000842f6: 03 f0 15 6c: ldw (lru6)      r0, cp[0xd5]
             0x000842fa: 70 68:       ldc (ru6)       r1, 0x30
.label661    0x000842fc: ec 88:       ld8u (3r)       r2, r7[r0]
             0x000842fe: 29 30:       eq (3r)         r2, r2, r1
             0x00084300: 3d 99:       sub (2rus)      r7, r7, 0x1
             0x00084302: 84 74:       bt (ru6)        r2, -0x4 <.label661>
             0x00084304: 06 73:       bu (u6)         0x6 <.label662>
.label651    0x00084306: 31 68:       ldc (ru6)       r0, 0x31
             0x00084308: 24 11:       add (3r)        r6, r5, r0
.label650    0x0008430a: 11 5c:       ldw (ru6)       r0, sp[0x11]
             0x0008430c: a0 fa ec 8f: st8 (l3r)       r6, r0[r4]
             0x00084310: 71 90:       add (2rus)      r7, r0, 0x1
.label662    0x00084312: 97 5d:       ldw (ru6)       r6, sp[0x17]
.label666    0x00084314: 19 5d:       ldw (ru6)       r4, sp[0x19]
.label631    0x00084316: 00 68:       ldc (ru6)       r0, 0x0
             0x00084318: 53 5c:       ldw (ru6)       r1, sp[0x13]
             0x0008431a: 01 f0 1b d2: bl (lu10)       0x61b <_Bfree>
             0x0008431e: 15 5c:       ldw (ru6)       r0, sp[0x15]
             0x00084320: 0e 78:       bf (ru6)        r0, 0xe <.label663>
             0x00084322: 19 55:       stw (ru6)       r4, sp[0x19]
             0x00084324: 07 7a:       bf (ru6)        r8, 0x7 <.label664>
             0x00084326: 15 5c:       ldw (ru6)       r0, sp[0x15]
             0x00084328: 80 31:       eq (3r)         r0, r8, r0
             0x0008432a: 04 70:       bt (ru6)        r0, 0x4 <.label664>
             0x0008432c: 00 68:       ldc (ru6)       r0, 0x0
             0x0008432e: 90 91:       add (2rus)      r1, r8, 0x0
             0x00084330: 01 f0 10 d2: bl (lu10)       0x610 <_Bfree>
.label664    0x00084334: 00 68:       ldc (ru6)       r0, 0x0
             0x00084336: 55 5c:       ldw (ru6)       r1, sp[0x15]
             0x00084338: 01 f0 0c d2: bl (lu10)       0x60c <_Bfree>
             0x0008433c: 01 73:       bu (u6)         0x1 <.label665>
.label663    0x0008433e: 19 55:       stw (ru6)       r4, sp[0x19]
.label665    0x00084340: 65 5d:       ldw (ru6)       r5, sp[0x25]
.label578    0x00084342: 00 69:       ldc (ru6)       r4, 0x0
             0x00084344: c0 90:       add (2rus)      r0, r4, 0x0
             0x00084346: d8 90:       add (2rus)      r1, r6, 0x0
             0x00084348: 01 f0 04 d2: bl (lu10)       0x604 <_Bfree>
             0x0008434c: 4c fb ec 8f: st8 (l3r)       r4, r7[r4]
             0x00084350: 89 91:       add (2rus)      r0, r10, 0x1
             0x00084352: c4 00:       stw (2rus)      r0, r5[0x0]
             0x00084354: 19 5c:       ldw (ru6)       r0, sp[0x19]
             0x00084356: 41 7a:       bf (ru6)        r9, 0x1 <.label517>
             0x00084358: f4 01:       stw (2rus)      r7, r9[0x0]
.label517    0x0008435a: a2 5e:       ldw (ru6)       r10, sp[0x22]
             0x0008435c: 20 5e:       ldw (ru6)       r8, sp[0x20]
             0x0008435e: 61 5e:       ldw (ru6)       r9, sp[0x21]
             0x00084360: 9e 5d:       ldw (ru6)       r6, sp[0x1e]
             0x00084362: df 5d:       ldw (ru6)       r7, sp[0x1f]
             0x00084364: 1c 5d:       ldw (ru6)       r4, sp[0x1c]
             0x00084366: 5d 5d:       ldw (ru6)       r5, sp[0x1d]
             0x00084368: e4 77:       retsp (u6)      0x24
.label655    0x0008436a: 31 68:       ldc (ru6)       r0, 0x31
             0x0008436c: 84 11:       add (3r)        r0, r9, r0
             0x0008436e: 51 5c:       ldw (ru6)       r1, sp[0x11]
             0x00084370: 44 fa ec 8f: st8 (l3r)       r0, r1[r4]
             0x00084374: 75 90:       add (2rus)      r7, r1, 0x1
             0x00084376: 50 5e:       ldw (ru6)       r9, sp[0x10]
             0x00084378: 97 5d:       ldw (ru6)       r6, sp[0x17]
             0x0008437a: 98 5e:       ldw (ru6)       r10, sp[0x18]
             0x0008437c: 35 77:       bu (u6)         -0x35 <.label666>
             0x0008437e: 00 00:       stw (2rus)      r0, r0[0x0]

<quorem>:
             0x00084380: 00 f0 4e 77: entsp (lu6)     0xe
             0x00084384: 07 f9 ec f7: std (l2rus)     r5, r4, sp[0x3]
             0x00084388: 6c fb ec f7: std (l2rus)     r7, r6, sp[0x4]
             0x0008438c: 45 fc ec f7: std (l2rus)     r9, r8, sp[0x5]
             0x00084390: 8c 56:       stw (ru6)       r10, sp[0xc]
             0x00084392: 40 90:       add (2rus)      r4, r0, 0x0
             0x00084394: 44 0a:       ldw (2rus)      r0, r1[0x4]
             0x00084396: 20 0b:       ldw (2rus)      r2, r4[0x4]
             0x00084398: 28 c0:       lss (3r)        r2, r2, r0
             0x0008439a: 83 78:       bf (ru6)        r2, 0x3 <.label667>
             0x0008439c: 40 69:       ldc (ru6)       r5, 0x0
             0x0008439e: 02 f0 19 73: bu (lu6)        0x99 <.label668>
.label667    0x000843a2: d5 fa ec 9f: ldaw (l2rus)    r9, r1[0x5]
             0x000843a6: 61 98:       sub (2rus)      r6, r0, 0x1
             0x000843a8: 46 fc ec 1f: ldaw (l3r)      r8, r9[r6]
             0x000843ac: 71 fb ec 9f: ldaw (l2rus)    r7, r4[0x5]
             0x000843b0: 2e 4b:       ldw (3r)        r2, r7[r6]
             0x000843b2: f6 4b:       ldw (3r)        r3, r9[r6]
             0x000843b4: 3d 90:       add (2rus)      r3, r3, 0x1
             0x000843b6: 5b f8 ec 4f: divu (l3r)      r5, r2, r3
             0x000843ba: 01 f0 49 79: bf (lru6)       r5, 0x49 <.label669>
             0x000843be: 01 54:       stw (ru6)       r0, sp[0x1]
             0x000843c0: 42 54:       stw (ru6)       r1, sp[0x2]
             0x000843c2: 05 55:       stw (ru6)       r4, sp[0x5]
             0x000843c4: 0e fb ec 1f: ldaw (l3r)      r0, r7[r6]
             0x000843c8: 03 54:       stw (ru6)       r0, sp[0x3]
             0x000843ca: c0 68:       ldc (ru6)       r3, 0x0
             0x000843cc: bc 90:       add (2rus)      r11, r3, 0x0
             0x000843ce: c4 55:       stw (ru6)       r7, sp[0x4]
             0x000843d0: 6c 91:       add (2rus)      r10, r7, 0x0
             0x000843d2: a4 91:       add (2rus)      r2, r9, 0x0
.label670    0x000843d4: 88 92:       add (2rus)      r4, r2, 0x4
             0x000843d6: 28 08:       ldw (2rus)      r2, r2[0x0]
             0x000843d8: f9 ac:       shr (2rus)      r7, r2, 0x10
             0x000843da: 39 47:       zext (rus)      r2, 0x10
             0x000843dc: 69 fa ec 3f: mul (l3r)       r2, r2, r5
             0x000843e0: ab 14:       add (3r)        r2, r2, r11
             0x000843e2: bd fb ec 3f: mul (l3r)       r11, r7, r5
             0x000843e6: f9 ac:       shr (2rus)      r7, r2, 0x10
             0x000843e8: bf 15:       add (3r)        r7, r7, r11
             0x000843ea: fd ad:       shr (2rus)      r11, r7, 0x10
             0x000843ec: 88 09:       ldw (2rus)      r0, r10[0x0]
             0x000843ee: 91 ac:       shr (2rus)      r1, r0, 0x10
             0x000843f0: 31 47:       zext (rus)      r0, 0x10
             0x000843f2: 39 47:       zext (rus)      r2, 0x10
             0x000843f4: 02 18:       sub (3r)        r0, r0, r2
             0x000843f6: 03 10:       add (3r)        r0, r0, r3
             0x000843f8: a1 fc ec 97: ashr (l2rus)    r2, r0, 0x10
             0x000843fc: 7d 47:       zext (rus)      r7, 0x10
             0x000843fe: 57 1a:       sub (3r)        r1, r1, r7
             0x00084400: 16 10:       add (3r)        r1, r1, r2
             0x00084402: b5 fc ec 97: ashr (l2rus)    r3, r1, 0x10
             0x00084406: 95 a4:       shl (2rus)      r1, r1, 0x10
             0x00084408: 31 47:       zext (rus)      r0, 0x10
             0x0008440a: 04 40:       or (3r)         r0, r1, r0
             0x0008440c: d8 93:       add (2rus)      r1, r10, 0x4
             0x0008440e: 88 01:       stw (2rus)      r0, r10[0x0]
             0x00084410: c0 cb:       lsu (3r)        r0, r8, r4
             0x00084412: a4 90:       add (2rus)      r10, r1, 0x0
             0x00084414: e0 90:       add (2rus)      r2, r4, 0x0
             0x00084416: 22 7c:       bf (ru6)        r0, -0x22 <.label670>
             0x00084418: 03 5c:       ldw (ru6)       r0, sp[0x3]
             0x0008441a: 00 08:       ldw (2rus)      r0, r0[0x0]
             0x0008441c: 03 78:       bf (ru6)        r0, 0x3 <.label671>
             0x0008441e: 05 5d:       ldw (ru6)       r4, sp[0x5]
             0x00084420: c4 5d:       ldw (ru6)       r7, sp[0x4]
             0x00084422: 15 73:       bu (u6)         0x15 <.label672>
.label671    0x00084424: 01 5c:       ldw (ru6)       r0, sp[0x1]
             0x00084426: 02 98:       sub (2rus)      r0, r0, 0x2
             0x00084428: d5 a6:       mkmsk (rus)     r1, 0x1
             0x0008442a: 11 c0:       lss (3r)        r1, r0, r1
             0x0008442c: 4d 70:       bt (ru6)        r1, 0xd <.label673>
             0x0008442e: 05 5d:       ldw (ru6)       r4, sp[0x5]
             0x00084430: c0 f8 ec 1f: ldaw (l3r)      r0, r4[r0]
             0x00084434: 41 fa ec 9f: ldaw (l2rus)    r0, r0[0x5]
             0x00084438: c4 5d:       ldw (ru6)       r7, sp[0x4]
.label675    0x0008443a: 10 08:       ldw (2rus)      r1, r0[0x0]
             0x0008443c: 47 70:       bt (ru6)        r1, 0x7 <.label674>
             0x0008443e: 29 99:       sub (2rus)      r6, r6, 0x1
             0x00084440: 40 9a:       sub (2rus)      r0, r0, 0x4
             0x00084442: dc c8:       lsu (3r)        r1, r7, r0
             0x00084444: 46 74:       bt (ru6)        r1, -0x6 <.label675>
             0x00084446: 02 73:       bu (u6)         0x2 <.label674>
.label673    0x00084448: 05 5d:       ldw (ru6)       r4, sp[0x5]
             0x0008444a: c4 5d:       ldw (ru6)       r7, sp[0x4]
.label674    0x0008444c: 60 03:       stw (2rus)      r6, r4[0x4]
.label672    0x0008444e: 42 5c:       ldw (ru6)       r1, sp[0x2]
.label669    0x00084450: c0 90:       add (2rus)      r0, r4, 0x0
             0x00084452: 01 f0 c3 d3: bl (lu10)       0x7c3 <__mcmp>
             0x00084456: 00 f8 ec 97: ashr (l2rus)    r0, r0, 0x20
             0x0008445a: 3c 70:       bt (ru6)        r0, 0x3c <.label668>
             0x0008445c: 05 55:       stw (ru6)       r4, sp[0x5]
             0x0008445e: 00 68:       ldc (ru6)       r0, 0x0
             0x00084460: 30 90:       add (2rus)      r3, r0, 0x0
             0x00084462: dc 90:       add (2rus)      r1, r7, 0x0
             0x00084464: c4 55:       stw (ru6)       r7, sp[0x4]
.label676    0x00084466: e4 93:       add (2rus)      r2, r9, 0x4
             0x00084468: 34 0a:       ldw (2rus)      r11, r9[0x0]
             0x0008446a: cc 91:       add (2rus)      r4, r11, 0x0
             0x0008446c: 71 47:       zext (rus)      r4, 0x10
             0x0008446e: 03 11:       add (3r)        r4, r4, r3
             0x00084470: 7d ae:       shr (2rus)      r7, r11, 0x10
             0x00084472: 81 ad:       shr (2rus)      r4, r4, 0x10
             0x00084474: 43 13:       add (3r)        r4, r4, r7
             0x00084476: b1 ad:       shr (2rus)      r7, r4, 0x10
             0x00084478: 94 08:       ldw (2rus)      r9, r1[0x0]
             0x0008447a: a5 ae:       shr (2rus)      r10, r9, 0x10
             0x0008447c: b5 47:       zext (rus)      r9, 0x10
             0x0008447e: bf 11:       add (3r)        r3, r11, r3
             0x00084480: 3d 47:       zext (rus)      r3, 0x10
             0x00084482: b7 19:       sub (3r)        r3, r9, r3
             0x00084484: 3c 10:       add (3r)        r3, r3, r0
             0x00084486: 8d fc ec 97: ashr (l2rus)    r0, r3, 0x10
             0x0008448a: 71 47:       zext (rus)      r4, 0x10
             0x0008448c: 78 1c:       sub (3r)        r11, r10, r4
             0x0008448e: 3c 12:       add (3r)        r11, r11, r0
             0x00084490: 0d fe ec 97: ashr (l2rus)    r0, r11, 0x10
             0x00084494: bd a6:       shl (2rus)      r11, r11, 0x10
             0x00084496: 3d 47:       zext (rus)      r3, 0x10
             0x00084498: bf 41:       or (3r)         r3, r11, r3
             0x0008449a: f4 92:       add (2rus)      r11, r1, 0x4
             0x0008449c: 34 00:       stw (2rus)      r3, r1[0x0]
             0x0008449e: c2 c9:       lsu (3r)        r4, r8, r2
             0x000844a0: fc 90:       add (2rus)      r3, r7, 0x0
             0x000844a2: 9c 91:       add (2rus)      r1, r11, 0x0
             0x000844a4: 98 90:       add (2rus)      r9, r2, 0x0
             0x000844a6: 21 7d:       bf (ru6)        r4, -0x21 <.label676>
             0x000844a8: 15 91:       add (2rus)      r5, r5, 0x1
             0x000844aa: 85 5c:       ldw (ru6)       r2, sp[0x5]
             0x000844ac: 4a fa ec 1f: ldaw (l3r)      r0, r2[r6]
             0x000844b0: 41 0a:       ldw (2rus)      r0, r0[0x5]
             0x000844b2: 10 70:       bt (ru6)        r0, 0x10 <.label668>
             0x000844b4: c9 98:       sub (2rus)      r0, r6, 0x1
             0x000844b6: d5 a6:       mkmsk (rus)     r1, 0x1
             0x000844b8: 11 c0:       lss (3r)        r1, r0, r1
             0x000844ba: 4b 70:       bt (ru6)        r1, 0xb <.label677>
             0x000844bc: 08 f8 ec 1f: ldaw (l3r)      r0, r2[r0]
             0x000844c0: 41 fa ec 9f: ldaw (l2rus)    r0, r0[0x5]
             0x000844c4: c4 5c:       ldw (ru6)       r3, sp[0x4]
.label678    0x000844c6: 10 08:       ldw (2rus)      r1, r0[0x0]
             0x000844c8: 44 70:       bt (ru6)        r1, 0x4 <.label677>
             0x000844ca: 29 99:       sub (2rus)      r6, r6, 0x1
             0x000844cc: 40 9a:       sub (2rus)      r0, r0, 0x4
             0x000844ce: 1c c8:       lsu (3r)        r1, r3, r0
             0x000844d0: 46 74:       bt (ru6)        r1, -0x6 <.label678>
.label677    0x000844d2: a8 02:       stw (2rus)      r6, r2[0x4]
.label668    0x000844d4: c4 90:       add (2rus)      r0, r5, 0x0
             0x000844d6: 8c 5e:       ldw (ru6)       r10, sp[0xc]
             0x000844d8: 45 fc ec ef: ldd (l2rus)     r9, r8, sp[0x5]
             0x000844dc: 6c fb ec ef: ldd (l2rus)     r7, r6, sp[0x4]
             0x000844e0: 07 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x3]
             0x000844e4: ce 77:       retsp (u6)      0xe
             0x000844e6: 00 00:       stw (2rus)      r0, r0[0x0]

<__umoddi3>:
             0x000844e8: 00 f0 44 77: entsp (lu6)     0x4
             0x000844ec: c2 66:       ldaw (ru6)      r11, sp[0x2]
             0x000844ee: c1 56:       stw (ru6)       r11, sp[0x1]
             0x000844f0: 03 f0 44 d4: bl (lu10)       -0xc44 <__udivmoddi4>
             0x000844f4: 05 f8 ec ef: ldd (l2rus)     r1, r0, sp[0x1]
             0x000844f8: c4 77:       retsp (u6)      0x4
             0x000844fa: 00 00:       stw (2rus)      r0, r0[0x0]

<memchr>:
             0x000844fc: 00 f0 40 77: entsp (lu6)     0x0
             0x00084500: 8a 78:       bf (ru6)        r2, 0xa <.label679>
             0x00084502: 34 47:       zext (rus)      r1, 0x8
             0x00084504: c0 68:       ldc (ru6)       r3, 0x0
.label681    0x00084506: b3 88:       ld8u (3r)       r11, r0[r3]
             0x00084508: 3d 32:       eq (3r)         r11, r11, r1
             0x0008450a: c6 72:       bt (ru6)        r11, 0x6 <.label680>
             0x0008450c: 29 98:       sub (2rus)      r2, r2, 0x1
             0x0008450e: 01 90:       add (2rus)      r0, r0, 0x1
             0x00084510: 86 74:       bt (ru6)        r2, -0x6 <.label681>
             0x00084512: 0c 90:       add (2rus)      r0, r3, 0x0
             0x00084514: 01 73:       bu (u6)         0x1 <.label680>
.label679    0x00084516: 00 68:       ldc (ru6)       r0, 0x0
.label680    0x00084518: c0 77:       retsp (u6)      0x0
             0x0008451a: 00 00:       stw (2rus)      r0, r0[0x0]

<__sfvwrite>:
             0x0008451c: 00 f0 4e 77: entsp (lu6)     0xe
             0x00084520: 07 f9 ec f7: std (l2rus)     r5, r4, sp[0x3]
             0x00084524: 6c fb ec f7: std (l2rus)     r7, r6, sp[0x4]
             0x00084528: 45 fc ec f7: std (l2rus)     r9, r8, sp[0x5]
             0x0008452c: 8c 56:       stw (ru6)       r10, sp[0xc]
             0x0008452e: 64 90:       add (2rus)      r6, r1, 0x0
             0x00084530: 83 55:       stw (ru6)       r6, sp[0x3]
             0x00084532: 50 90:       add (2rus)      r5, r0, 0x0
             0x00084534: ca 08:       ldw (2rus)      r0, r6[0x2]
             0x00084536: 02 f0 2b 78: bf (lru6)       r0, 0xab <.label682>
             0x0008453a: 07 f9 ec 9f: ldaw (l2rus)    r4, r5[0x3]
             0x0008453e: 80 6a:       ldc (ru6)       r10, 0x0
             0x00084540: 52 85:       ld16s (3r)      r1, r4[r10]
             0x00084542: 08 68:       ldc (ru6)       r0, 0x8
             0x00084544: 04 38:       and (3r)        r0, r1, r0
             0x00084546: 04 78:       bf (ru6)        r0, 0x4 <.label683>
             0x00084548: 04 0b:       ldw (2rus)      r0, r5[0x4]
             0x0008454a: 02 78:       bf (ru6)        r0, 0x2 <.label683>
             0x0008454c: 35 47:       zext (rus)      r1, 0x10
             0x0008454e: 11 73:       bu (u6)         0x11 <.label684>
.label683    0x00084550: c4 90:       add (2rus)      r0, r5, 0x0
             0x00084552: 02 f0 13 d7: bl (lu10)       -0xb13 <__swsetup>
             0x00084556: 80 68:       ldc (ru6)       r2, 0x0
             0x00084558: d2 80:       ld16s (3r)      r1, r4[r2]
             0x0008455a: 0b 78:       bf (ru6)        r0, 0xb <.label684>
             0x0008455c: 01 f0 00 68: ldc (lru6)      r0, 0x40
             0x00084560: 04 40:       or (3r)         r0, r1, r0
             0x00084562: c2 f8 ec 87: st16 (l3r)      r0, r4[r2]
             0x00084566: 02 f0 6d d7: bl (lu10)       -0xb6d <__errno>
             0x0008456a: 49 68:       ldc (ru6)       r1, 0x9
             0x0008456c: 10 00:       stw (2rus)      r1, r0[0x0]
             0x0008456e: 05 f0 00 73: bu (lu6)        0x140 <.label685>
.label684    0x00084572: c8 08:       ldw (2rus)      r0, r6[0x0]
             0x00084574: 02 54:       stw (ru6)       r0, sp[0x2]
             0x00084576: 35 37:       sext (rus)      r1, 0x10
             0x00084578: 02 68:       ldc (ru6)       r0, 0x2
             0x0008457a: 04 38:       and (3r)        r0, r1, r0
             0x0008457c: 07 78:       bf (ru6)        r0, 0x7 <.label686>
             0x0008457e: 05 55:       stw (ru6)       r4, sp[0x5]
             0x00084580: 01 f0 00 69: ldc (lru6)      r4, 0x40
             0x00084584: 51 a7:       mkmsk (rus)     r8, 0x1
             0x00084586: f8 91:       add (2rus)      r7, r10, 0x0
             0x00084588: 18 92:       add (2rus)      r9, r10, 0x0
             0x0008458a: 0d 73:       bu (u6)         0xd <.label687>
.label686    0x0008458c: d5 46:       zext (rus)      r1, 0x1
             0x0008458e: 61 78:       bf (ru6)        r1, 0x21 <.label688>
             0x00084590: 05 55:       stw (ru6)       r4, sp[0x5]
             0x00084592: 00 68:       ldc (ru6)       r0, 0x0
             0x00084594: 80 90:       add (2rus)      r8, r0, 0x0
             0x00084596: 90 90:       add (2rus)      r9, r0, 0x0
             0x00084598: 40 90:       add (2rus)      r4, r0, 0x0
             0x0008459a: 26 73:       bu (u6)         0x26 <.label689>
.label690    0x0008459c: 02 5c:       ldw (ru6)       r0, sp[0x2]
             0x0008459e: 70 08:       ldw (2rus)      r7, r0[0x0]
             0x000845a0: 91 08:       ldw (2rus)      r9, r0[0x1]
             0x000845a2: 80 94:       add (2rus)      r0, r0, 0x8
             0x000845a4: 02 54:       stw (ru6)       r0, sp[0x2]
.label687    0x000845a6: 46 7e:       bf (ru6)        r9, -0x6 <.label690>
             0x000845a8: f5 0d:       ldw (2rus)      r11, r5[0x9]
             0x000845aa: 17 0b:       ldw (2rus)      r1, r5[0x7]
             0x000845ac: c6 ab:       shr (2rus)      r0, r9, 0x6
             0x000845ae: f0 90:       add (2rus)      r3, r4, 0x0
             0x000845b0: 01 70:       bt (ru6)        r0, 0x1 <.label691>
             0x000845b2: b4 91:       add (2rus)      r3, r9, 0x0
.label691    0x000845b4: 88 91:       add (2rus)      r0, r10, 0x0
             0x000845b6: ec 90:       add (2rus)      r2, r7, 0x0
             0x000845b8: eb 27:       bla (1r)        r11
             0x000845ba: 90 c4:       lss (3r)        r1, r0, r8
             0x000845bc: 04 f0 51 70: bt (lru6)       r1, 0x111 <.label692>
             0x000845c0: 3c 11:       add (3r)        r7, r7, r0
             0x000845c2: 14 1a:       sub (3r)        r9, r9, r0
             0x000845c4: da 08:       ldw (2rus)      r1, r6[0x2]
             0x000845c6: 24 18:       sub (3r)        r2, r1, r0
             0x000845c8: ea 00:       stw (2rus)      r2, r6[0x2]
             0x000845ca: 04 30:       eq (3r)         r0, r1, r0
             0x000845cc: 14 7c:       bf (ru6)        r0, -0x14 <.label687>
             0x000845ce: 04 f0 11 73: bu (lu6)        0x111 <.label693>
.label688    0x000845d2: 80 6a:       ldc (ru6)       r10, 0x0
             0x000845d4: f8 91:       add (2rus)      r7, r10, 0x0
             0x000845d6: 08 92:       add (2rus)      r8, r10, 0x0
             0x000845d8: 01 f0 22 73: bu (lu6)        0x62 <.label694>
.label695    0x000845dc: 02 5c:       ldw (ru6)       r0, sp[0x2]
             0x000845de: 80 08:       ldw (2rus)      r8, r0[0x0]
             0x000845e0: 91 08:       ldw (2rus)      r9, r0[0x1]
             0x000845e2: 80 94:       add (2rus)      r0, r0, 0x8
             0x000845e4: 02 54:       stw (ru6)       r0, sp[0x2]
             0x000845e6: 00 68:       ldc (ru6)       r0, 0x0
.label689    0x000845e8: 04 54:       stw (ru6)       r0, sp[0x4]
.label704    0x000845ea: 48 7e:       bf (ru6)        r9, -0x8 <.label695>
             0x000845ec: 04 5c:       ldw (ru6)       r0, sp[0x4]
             0x000845ee: 0c 70:       bt (ru6)        r0, 0xc <.label696>
             0x000845f0: 80 91:       add (2rus)      r0, r8, 0x0
             0x000845f2: 4a 68:       ldc (ru6)       r1, 0xa
             0x000845f4: a4 91:       add (2rus)      r2, r9, 0x0
             0x000845f6: 00 f0 7f d4: bl (lu10)       -0x7f <memchr>
             0x000845fa: 03 78:       bf (ru6)        r0, 0x3 <.label697>
             0x000845fc: 01 90:       add (2rus)      r0, r0, 0x1
             0x000845fe: c0 1c:       sub (3r)        r4, r0, r8
             0x00084600: 01 73:       bu (u6)         0x1 <.label698>
.label697    0x00084602: c5 91:       add (2rus)      r4, r9, 0x1
.label698    0x00084604: d1 a6:       mkmsk (rus)     r0, 0x1
             0x00084606: 04 54:       stw (ru6)       r0, sp[0x4]
.label696    0x00084608: c4 cb:       lsu (3r)        r0, r9, r4
             0x0008460a: f4 91:       add (2rus)      r7, r9, 0x0
             0x0008460c: 01 70:       bt (ru6)        r0, 0x1 <.label699>
             0x0008460e: 30 91:       add (2rus)      r7, r4, 0x0
.label699    0x00084610: 35 0b:       ldw (2rus)      r3, r5[0x5]
             0x00084612: c4 08:       ldw (2rus)      r0, r5[0x0]
             0x00084614: 14 0b:       ldw (2rus)      r1, r5[0x4]
             0x00084616: 14 c8:       lsu (3r)        r1, r1, r0
             0x00084618: 51 78:       bf (ru6)        r1, 0x11 <.label700>
             0x0008461a: d6 08:       ldw (2rus)      r1, r5[0x2]
             0x0008461c: ad 10:       add (3r)        r10, r3, r1
             0x0008461e: db c3:       lss (3r)        r1, r10, r7
             0x00084620: 4d 78:       bf (ru6)        r1, 0xd <.label700>
             0x00084622: 90 91:       add (2rus)      r1, r8, 0x0
             0x00084624: a8 91:       add (2rus)      r2, r10, 0x0
             0x00084626: 07 f0 75 d4: bl (lu10)       -0x1c75 <memmove>
             0x0008462a: c4 08:       ldw (2rus)      r0, r5[0x0]
             0x0008462c: 82 14:       add (3r)        r0, r0, r10
             0x0008462e: c4 00:       stw (2rus)      r0, r5[0x0]
             0x00084630: c4 90:       add (2rus)      r0, r5, 0x0
             0x00084632: 00 f0 39 d1: bl (lu10)       0x139 <_fflush>
             0x00084636: 1a 78:       bf (ru6)        r0, 0x1a <.label701>
             0x00084638: 03 f0 13 73: bu (lu6)        0xd3 <.label692>
.label700    0x0008463c: df c0:       lss (3r)        r1, r7, r3
             0x0008463e: 4c 78:       bf (ru6)        r1, 0xc <.label702>
             0x00084640: 90 91:       add (2rus)      r1, r8, 0x0
             0x00084642: ec 90:       add (2rus)      r2, r7, 0x0
             0x00084644: 07 f0 84 d4: bl (lu10)       -0x1c84 <memmove>
             0x00084648: c6 08:       ldw (2rus)      r0, r5[0x2]
             0x0008464a: 43 1a:       sub (3r)        r0, r0, r7
             0x0008464c: c6 00:       stw (2rus)      r0, r5[0x2]
             0x0008464e: c4 08:       ldw (2rus)      r0, r5[0x0]
             0x00084650: 43 12:       add (3r)        r0, r0, r7
             0x00084652: c4 00:       stw (2rus)      r0, r5[0x0]
             0x00084654: 6c 91:       add (2rus)      r10, r7, 0x0
             0x00084656: 0a 73:       bu (u6)         0xa <.label701>
.label702    0x00084658: f5 0d:       ldw (2rus)      r11, r5[0x9]
             0x0008465a: 17 0b:       ldw (2rus)      r1, r5[0x7]
             0x0008465c: 00 68:       ldc (ru6)       r0, 0x0
             0x0008465e: a0 91:       add (2rus)      r2, r8, 0x0
             0x00084660: eb 27:       bla (1r)        r11
             0x00084662: a0 90:       add (2rus)      r10, r0, 0x0
             0x00084664: d1 a6:       mkmsk (rus)     r0, 0x1
             0x00084666: 88 c1:       lss (3r)        r0, r10, r0
             0x00084668: 02 f0 3b 70: bt (lru6)       r0, 0xbb <.label692>
.label701    0x0008466c: 42 35:       eq (3r)         r0, r4, r10
             0x0008466e: 07 78:       bf (ru6)        r0, 0x7 <.label703>
             0x00084670: c4 90:       add (2rus)      r0, r5, 0x0
             0x00084672: 00 f0 19 d1: bl (lu10)       0x119 <_fflush>
             0x00084676: 40 68:       ldc (ru6)       r1, 0x0
             0x00084678: 44 54:       stw (ru6)       r1, sp[0x4]
             0x0008467a: 02 f0 32 70: bt (lru6)       r0, 0xb2 <.label692>
.label703    0x0008467e: 82 1d:       sub (3r)        r4, r4, r10
             0x00084680: 82 16:       add (3r)        r8, r8, r10
             0x00084682: 96 1e:       sub (3r)        r9, r9, r10
             0x00084684: ca 08:       ldw (2rus)      r0, r6[0x2]
             0x00084686: 92 1c:       sub (3r)        r1, r0, r10
             0x00084688: da 00:       stw (2rus)      r1, r6[0x2]
             0x0008468a: 82 34:       eq (3r)         r0, r0, r10
             0x0008468c: 01 f0 13 7c: bf (lru6)       r0, -0x53 <.label704>
.label682    0x00084690: 80 6a:       ldc (ru6)       r10, 0x0
             0x00084692: 02 f0 2f 73: bu (lu6)        0xaf <.label693>
.label705    0x00084696: 02 5c:       ldw (ru6)       r0, sp[0x2]
             0x00084698: 70 08:       ldw (2rus)      r7, r0[0x0]
             0x0008469a: 81 08:       ldw (2rus)      r8, r0[0x1]
             0x0008469c: 80 94:       add (2rus)      r0, r0, 0x8
             0x0008469e: 02 54:       stw (ru6)       r0, sp[0x2]
.label694    0x000846a0: 06 7e:       bf (ru6)        r8, -0x6 <.label705>
             0x000846a2: 56 09:       ldw (2rus)      r9, r5[0x2]
             0x000846a4: 62 85:       ld16s (3r)      r2, r4[r10]
             0x000846a6: 08 f0 00 68: ldc (lru6)      r0, 0x200
             0x000846aa: 08 38:       and (3r)        r0, r2, r0
             0x000846ac: 36 78:       bf (ru6)        r0, 0x36 <.label706>
             0x000846ae: 11 ce:       lsu (3r)        r1, r8, r9
             0x000846b0: c4 08:       ldw (2rus)      r0, r5[0x0]
             0x000846b2: 01 f0 46 70: bt (lru6)       r1, 0x46 <.label707>
             0x000846b6: 12 f0 40 68: ldc (lru6)      r1, 0x480
             0x000846ba: 19 38:       and (3r)        r1, r2, r1
             0x000846bc: 01 f0 41 78: bf (lru6)       r1, 0x41 <.label707>
             0x000846c0: 14 0b:       ldw (2rus)      r1, r5[0x4]
             0x000846c2: 91 18:       sub (3r)        r9, r0, r1
             0x000846c4: 05 0b:       ldw (2rus)      r0, r5[0x5]
             0x000846c6: 00 f8 ec 2f: lda16 (l3r)     r0, r0[r0]
             0x000846ca: 9d a7:       mkmsk (rus)     r3, 0x5
             0x000846cc: 33 28:       shr (3r)        r3, r0, r3
             0x000846ce: 03 10:       add (3r)        r0, r0, r3
             0x000846d0: 01 f8 ec 97: ashr (l2rus)    r0, r0, 0x1
             0x000846d4: 31 16:       add (3r)        r3, r8, r9
             0x000846d6: bd 90:       add (2rus)      r11, r3, 0x1
             0x000846d8: b3 cc:       lsu (3r)        r3, r0, r11
             0x000846da: c1 70:       bt (ru6)        r3, 0x1 <.label708>
             0x000846dc: b0 90:       add (2rus)      r11, r0, 0x0
.label708    0x000846de: 10 f0 00 68: ldc (lru6)      r0, 0x400
             0x000846e2: 08 38:       and (3r)        r0, r2, r0
             0x000846e4: 3e 78:       bf (ru6)        r0, 0x3e <.label709>
             0x000846e6: 24 92:       add (2rus)      r10, r9, 0x0
             0x000846e8: 8c 91:       add (2rus)      r0, r11, 0x0
             0x000846ea: c5 56:       stw (ru6)       r11, sp[0x5]
             0x000846ec: 06 f0 e8 d7: bl (lu10)       -0x1be8 <malloc>
             0x000846f0: 90 90:       add (2rus)      r9, r0, 0x0
             0x000846f2: 01 f0 6c 7a: bf (lru6)       r9, 0x6c <.label710>
             0x000846f6: 14 0b:       ldw (2rus)      r1, r5[0x4]
             0x000846f8: 84 91:       add (2rus)      r0, r9, 0x0
             0x000846fa: a8 91:       add (2rus)      r2, r10, 0x0
             0x000846fc: 07 f0 e4 d4: bl (lu10)       -0x1ce4 <memcpy> <__memcpy_4>
             0x00084700: 00 68:       ldc (ru6)       r0, 0x0
             0x00084702: 10 90:       add (2rus)      r1, r0, 0x0
             0x00084704: c1 80:       ld16s (3r)      r0, r4[r1]
             0x00084706: ed f3 bf 68: ldc (lru6)      r2, 0xfb7f
             0x0008470a: 02 38:       and (3r)        r0, r0, r2
             0x0008470c: 02 f0 80 68: ldc (lru6)      r2, 0x80
             0x00084710: 02 40:       or (3r)         r0, r0, r2
             0x00084712: c1 f8 ec 87: st16 (l3r)      r0, r4[r1]
             0x00084716: 85 5d:       ldw (ru6)       r6, sp[0x5]
             0x00084718: 2c 73:       bu (u6)         0x2c <.label711>
.label706    0x0008471a: c4 08:       ldw (2rus)      r0, r5[0x0]
             0x0008471c: 14 0b:       ldw (2rus)      r1, r5[0x4]
             0x0008471e: 14 c8:       lsu (3r)        r1, r1, r0
             0x00084720: 52 78:       bf (ru6)        r1, 0x12 <.label712>
             0x00084722: 14 ce:       lsu (3r)        r1, r9, r8
             0x00084724: 50 78:       bf (ru6)        r1, 0x10 <.label712>
             0x00084726: 05 55:       stw (ru6)       r4, sp[0x5]
             0x00084728: dc 90:       add (2rus)      r1, r7, 0x0
             0x0008472a: a4 91:       add (2rus)      r2, r9, 0x0
             0x0008472c: 07 f0 f8 d4: bl (lu10)       -0x1cf8 <memmove>
             0x00084730: c4 08:       ldw (2rus)      r0, r5[0x0]
             0x00084732: 81 14:       add (3r)        r0, r0, r9
             0x00084734: c4 00:       stw (2rus)      r0, r5[0x0]
             0x00084736: c4 90:       add (2rus)      r0, r5, 0x0
             0x00084738: 00 f0 b6 d0: bl (lu10)       0xb6 <_fflush>
             0x0008473c: 32 78:       bf (ru6)        r0, 0x32 <.label713>
             0x0008473e: 01 f0 10 73: bu (lu6)        0x50 <.label692>
.label707    0x00084742: 05 55:       stw (ru6)       r4, sp[0x5]
             0x00084744: 1f 73:       bu (u6)         0x1f <.label714>
.label712    0x00084746: 35 0b:       ldw (2rus)      r3, r5[0x5]
             0x00084748: 93 c9:       lsu (3r)        r1, r8, r3
             0x0008474a: 76 78:       bf (ru6)        r1, 0x36 <.label715>
             0x0008474c: 05 55:       stw (ru6)       r4, sp[0x5]
             0x0008474e: dc 90:       add (2rus)      r1, r7, 0x0
             0x00084750: a0 91:       add (2rus)      r2, r8, 0x0
             0x00084752: 07 f0 0b d5: bl (lu10)       -0x1d0b <memmove>
             0x00084756: c6 08:       ldw (2rus)      r0, r5[0x2]
             0x00084758: 80 1c:       sub (3r)        r0, r0, r8
             0x0008475a: c6 00:       stw (2rus)      r0, r5[0x2]
             0x0008475c: c4 08:       ldw (2rus)      r0, r5[0x0]
             0x0008475e: 80 14:       add (3r)        r0, r0, r8
             0x00084760: 1e 73:       bu (u6)         0x1e <.label716>
.label709    0x00084762: 04 90:       add (2rus)      r0, r1, 0x0
             0x00084764: 9c 91:       add (2rus)      r1, r11, 0x0
             0x00084766: ec 91:       add (2rus)      r6, r11, 0x0
             0x00084768: 02 f0 d2 d0: bl (lu10)       0x8d2 <realloc>
             0x0008476c: 24 92:       add (2rus)      r10, r9, 0x0
             0x0008476e: 90 90:       add (2rus)      r9, r0, 0x0
             0x00084770: 70 7a:       bf (ru6)        r9, 0x30 <.label717>
.label711    0x00084772: 05 55:       stw (ru6)       r4, sp[0x5]
             0x00084774: 94 03:       stw (2rus)      r9, r5[0x4]
             0x00084776: 06 16:       add (3r)        r0, r9, r10
             0x00084778: c4 00:       stw (2rus)      r0, r5[0x0]
             0x0008477a: 65 03:       stw (2rus)      r6, r5[0x5]
             0x0008477c: 5a 1d:       sub (3r)        r1, r6, r10
             0x0008477e: d6 00:       stw (2rus)      r1, r5[0x2]
             0x00084780: 10 92:       add (2rus)      r9, r8, 0x0
             0x00084782: 83 5d:       ldw (ru6)       r6, sp[0x3]
.label714    0x00084784: 11 ce:       lsu (3r)        r1, r8, r9
             0x00084786: 20 92:       add (2rus)      r10, r8, 0x0
             0x00084788: 41 70:       bt (ru6)        r1, 0x1 <.label718>
             0x0008478a: 24 92:       add (2rus)      r10, r9, 0x0
.label718    0x0008478c: dc 90:       add (2rus)      r1, r7, 0x0
             0x0008478e: a8 91:       add (2rus)      r2, r10, 0x0
             0x00084790: 07 f0 2a d5: bl (lu10)       -0x1d2a <memmove>
             0x00084794: c6 08:       ldw (2rus)      r0, r5[0x2]
             0x00084796: 82 1c:       sub (3r)        r0, r0, r10
             0x00084798: c6 00:       stw (2rus)      r0, r5[0x2]
             0x0008479a: c4 08:       ldw (2rus)      r0, r5[0x0]
             0x0008479c: 82 14:       add (3r)        r0, r0, r10
.label716    0x0008479e: c4 00:       stw (2rus)      r0, r5[0x0]
             0x000847a0: 10 92:       add (2rus)      r9, r8, 0x0
.label713    0x000847a2: bd 15:       add (3r)        r7, r7, r9
             0x000847a4: 81 1e:       sub (3r)        r8, r8, r9
             0x000847a6: ca 08:       ldw (2rus)      r0, r6[0x2]
             0x000847a8: 91 1c:       sub (3r)        r1, r0, r9
             0x000847aa: da 00:       stw (2rus)      r1, r6[0x2]
             0x000847ac: 81 34:       eq (3r)         r0, r0, r9
             0x000847ae: 05 5d:       ldw (ru6)       r4, sp[0x5]
             0x000847b0: 80 6a:       ldc (ru6)       r10, 0x0
             0x000847b2: 02 f0 0b 7c: bf (lru6)       r0, -0x8b <.label694>
             0x000847b6: 1e 73:       bu (u6)         0x1e <.label693>
.label715    0x000847b8: 05 55:       stw (ru6)       r4, sp[0x5]
             0x000847ba: f5 0d:       ldw (2rus)      r11, r5[0x9]
             0x000847bc: 17 0b:       ldw (2rus)      r1, r5[0x7]
             0x000847be: 88 91:       add (2rus)      r0, r10, 0x0
             0x000847c0: ec 90:       add (2rus)      r2, r7, 0x0
             0x000847c2: eb 27:       bla (1r)        r11
             0x000847c4: 90 90:       add (2rus)      r9, r0, 0x0
             0x000847c6: d1 a6:       mkmsk (rus)     r0, 0x1
             0x000847c8: 84 c1:       lss (3r)        r0, r9, r0
             0x000847ca: 15 7c:       bf (ru6)        r0, -0x15 <.label713>
             0x000847cc: 0a 73:       bu (u6)         0xa <.label692>
.label710    0x000847ce: 05 55:       stw (ru6)       r4, sp[0x5]
             0x000847d0: 04 73:       bu (u6)         0x4 <.label719>
.label717    0x000847d2: 05 55:       stw (ru6)       r4, sp[0x5]
             0x000847d4: 04 0b:       ldw (2rus)      r0, r5[0x4]
             0x000847d6: 07 f0 c1 d4: bl (lu10)       -0x1cc1 <free>
.label719    0x000847da: 03 f0 a7 d4: bl (lu10)       -0xca7 <__errno>
             0x000847de: 4c 68:       ldc (ru6)       r1, 0xc
             0x000847e0: 10 00:       stw (2rus)      r1, r0[0x0]
.label692    0x000847e2: 00 68:       ldc (ru6)       r0, 0x0
             0x000847e4: c5 5c:       ldw (ru6)       r3, sp[0x5]
             0x000847e6: 1c 80:       ld16s (3r)      r1, r3[r0]
             0x000847e8: 01 f0 80 68: ldc (lru6)      r2, 0x40
             0x000847ec: 16 40:       or (3r)         r1, r1, r2
             0x000847ee: 1c f8 ec 87: st16 (l3r)      r1, r3[r0]
.label685    0x000847f2: 58 a7:       mkmsk (rus)     r10, 0x20
.label693    0x000847f4: 88 91:       add (2rus)      r0, r10, 0x0
             0x000847f6: 8c 5e:       ldw (ru6)       r10, sp[0xc]
             0x000847f8: 45 fc ec ef: ldd (l2rus)     r9, r8, sp[0x5]
             0x000847fc: 6c fb ec ef: ldd (l2rus)     r7, r6, sp[0x4]
             0x00084800: 07 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x3]
             0x00084804: ce 77:       retsp (u6)      0xe
             0x00084806: 00 00:       stw (2rus)      r0, r0[0x0]

<_fwalk>:
             0x00084808: 00 f0 4c 77: entsp (lu6)     0xc
             0x0008480c: 06 f9 ec f7: std (l2rus)     r5, r4, sp[0x2]
             0x00084810: 2f f9 ec f7: std (l2rus)     r7, r6, sp[0x3]
             0x00084814: 44 fc ec f7: std (l2rus)     r9, r8, sp[0x4]
             0x00084818: 8a 56:       stw (ru6)       r10, sp[0xa]
             0x0008481a: 03 54:       stw (ru6)       r0, sp[0x3]
             0x0008481c: 03 f0 fa d6: bl (lu10)       -0xefa <__sfp_lock_acquire>
             0x00084820: c0 69:       ldc (ru6)       r7, 0x0
             0x00084822: 00 f0 64 60: ldaw (lru6)     r1, dp[0x24]
             0x00084826: 01 f0 9c 6a: ldc (lru6)      r10, 0x5c
             0x0008482a: 08 f0 40 6a: ldc (lru6)      r9, 0x200
             0x0008482e: 1c 91:       add (2rus)      r5, r7, 0x0
.label727    0x00084830: 45 08:       ldw (2rus)      r4, r1[0x1]
             0x00084832: d1 a6:       mkmsk (rus)     r0, 0x1
             0x00084834: c0 c0:       lss (3r)        r0, r4, r0
             0x00084836: 29 70:       bt (ru6)        r0, 0x29 <.label720>
             0x00084838: 42 54:       stw (ru6)       r1, sp[0x2]
             0x0008483a: 66 08:       ldw (2rus)      r6, r1[0x2]
.label725    0x0008483c: 01 99:       sub (2rus)      r4, r4, 0x1
             0x0008483e: 4b f9 ec 9f: ldaw (l2rus)    r8, r6[0x3]
             0x00084842: c3 83:       ld16s (3r)      r0, r8[r7]
             0x00084844: 31 47:       zext (rus)      r0, 0x10
             0x00084846: 1d 78:       bf (ru6)        r0, 0x1d <.label721>
             0x00084848: 91 3c:       and (3r)        r1, r0, r9
             0x0008484a: 48 70:       bt (ru6)        r1, 0x8 <.label722>
             0x0008484c: 01 f0 14 68: ldc (lru6)      r0, 0x54
             0x00084850: c8 10:       add (3r)        r0, r6, r0
             0x00084852: 07 f0 47 d4: bl (lu10)       -0x1c47 <__lock_recursive_acquire>
             0x00084856: c3 83:       ld16s (3r)      r0, r8[r7]
             0x00084858: 31 47:       zext (rus)      r0, 0x10
             0x0008485a: 0e 78:       bf (ru6)        r0, 0xe <.label723>
.label722    0x0008485c: 4e 68:       ldc (ru6)       r1, 0xe
             0x0008485e: d9 10:       add (3r)        r1, r6, r1
             0x00084860: 57 82:       ld16s (3r)      r1, r1[r7]
             0x00084862: 35 47:       zext (rus)      r1, 0x10
             0x00084864: 39 a7:       mkmsk (rus)     r2, 0x10
             0x00084866: 16 30:       eq (3r)         r1, r1, r2
             0x00084868: 45 70:       bt (ru6)        r1, 0x5 <.label724>
             0x0008486a: c8 90:       add (2rus)      r0, r6, 0x0
             0x0008486c: 43 5c:       ldw (ru6)       r1, sp[0x3]
             0x0008486e: e1 27:       bla (1r)        r1
             0x00084870: 91 42:       or (3r)         r5, r0, r5
             0x00084872: c3 83:       ld16s (3r)      r0, r8[r7]
.label724    0x00084874: 81 3c:       and (3r)        r0, r0, r9
             0x00084876: 05 70:       bt (ru6)        r0, 0x5 <.label721>
.label723    0x00084878: 01 f0 14 68: ldc (lru6)      r0, 0x54
             0x0008487c: c8 10:       add (3r)        r0, r6, r0
             0x0008487e: 07 f0 3f d4: bl (lu10)       -0x1c3f <__lock_recursive_release>
.label721    0x00084882: aa 15:       add (3r)        r6, r6, r10
             0x00084884: 0c c3:       lss (3r)        r0, r7, r4
             0x00084886: 26 74:       bt (ru6)        r0, -0x26 <.label725>
             0x00084888: 01 73:       bu (u6)         0x1 <.label726>
.label720    0x0008488a: 42 54:       stw (ru6)       r1, sp[0x2]
.label726    0x0008488c: 42 5c:       ldw (ru6)       r1, sp[0x2]
             0x0008488e: 14 08:       ldw (2rus)      r1, r1[0x0]
             0x00084890: 71 74:       bt (ru6)        r1, -0x31 <.label727>
             0x00084892: 03 f0 ff d6: bl (lu10)       -0xeff <__sfp_lock_release>
             0x00084896: c4 90:       add (2rus)      r0, r5, 0x0
             0x00084898: 8a 5e:       ldw (ru6)       r10, sp[0xa]
             0x0008489a: 44 fc ec ef: ldd (l2rus)     r9, r8, sp[0x4]
             0x0008489e: 2f f9 ec ef: ldd (l2rus)     r7, r6, sp[0x3]
             0x000848a2: 06 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x2]
             0x000848a6: cc 77:       retsp (u6)      0xc

<_fflush>:
             0x000848a8: 00 f0 4a 77: entsp (lu6)     0xa
             0x000848ac: 05 f9 ec f7: std (l2rus)     r5, r4, sp[0x1]
             0x000848b0: 2e f9 ec f7: std (l2rus)     r7, r6, sp[0x2]
             0x000848b4: 07 fa ec f7: std (l2rus)     r9, r8, sp[0x3]
             0x000848b8: 88 56:       stw (ru6)       r10, sp[0x8]
             0x000848ba: 40 90:       add (2rus)      r4, r0, 0x0
             0x000848bc: 00 f0 2e 58: ldw (lru6)      r0, dp[0x2e]
             0x000848c0: 02 70:       bt (ru6)        r0, 0x2 <.label728>
             0x000848c2: 03 f0 45 d7: bl (lu10)       -0xf45 <__sinit>
.label728    0x000848c6: 53 f9 ec 9f: ldaw (l2rus)    r9, r4[0x3]
             0x000848ca: c0 69:       ldc (ru6)       r7, 0x0
             0x000848cc: c7 83:       ld16s (3r)      r0, r9[r7]
             0x000848ce: 08 f0 00 6a: ldc (lru6)      r8, 0x200
             0x000848d2: 90 3c:       and (3r)        r1, r0, r8
             0x000848d4: 42 78:       bf (ru6)        r1, 0x2 <.label729>
             0x000848d6: 31 47:       zext (rus)      r0, 0x10
             0x000848d8: 07 73:       bu (u6)         0x7 <.label730>
.label729    0x000848da: 01 f0 14 68: ldc (lru6)      r0, 0x54
             0x000848de: c0 10:       add (3r)        r0, r4, r0
             0x000848e0: 07 f0 8e d4: bl (lu10)       -0x1c8e <__lock_recursive_acquire>
             0x000848e4: 00 68:       ldc (ru6)       r0, 0x0
             0x000848e6: 84 81:       ld16s (3r)      r0, r9[r0]
.label730    0x000848e8: 10 90:       add (2rus)      r1, r0, 0x0
             0x000848ea: 35 37:       sext (rus)      r1, 0x10
             0x000848ec: 88 68:       ldc (ru6)       r2, 0x8
             0x000848ee: 26 38:       and (3r)        r2, r1, r2
             0x000848f0: 9c 78:       bf (ru6)        r2, 0x1c <.label731>
             0x000848f2: 50 0b:       ldw (2rus)      r5, r4[0x4]
             0x000848f4: 76 79:       bf (ru6)        r5, 0x36 <.label732>
             0x000848f6: e0 08:       ldw (2rus)      r2, r4[0x0]
             0x000848f8: a9 1a:       sub (3r)        r6, r2, r5
             0x000848fa: 10 01:       stw (2rus)      r5, r4[0x0]
             0x000848fc: d6 46:       zext (rus)      r1, 0x2
             0x000848fe: 41 70:       bt (ru6)        r1, 0x1 <.label733>
             0x00084900: 71 0b:       ldw (2rus)      r7, r4[0x5]
.label733    0x00084902: 32 01:       stw (2rus)      r7, r4[0x2]
             0x00084904: d5 a6:       mkmsk (rus)     r1, 0x1
             0x00084906: d9 c0:       lss (3r)        r1, r6, r1
             0x00084908: 4e 70:       bt (ru6)        r1, 0xe <.label734>
             0x0008490a: c0 69:       ldc (ru6)       r7, 0x0
.label736    0x0008490c: f1 0d:       ldw (2rus)      r11, r4[0x9]
             0x0008490e: 13 0b:       ldw (2rus)      r1, r4[0x7]
             0x00084910: cc 90:       add (2rus)      r0, r7, 0x0
             0x00084912: e4 90:       add (2rus)      r2, r5, 0x0
             0x00084914: f8 90:       add (2rus)      r3, r6, 0x0
             0x00084916: eb 27:       bla (1r)        r11
             0x00084918: dc c0:       lss (3r)        r1, r7, r0
             0x0008491a: 69 78:       bf (ru6)        r1, 0x29 <.label735>
             0x0008491c: 14 11:       add (3r)        r5, r5, r0
             0x0008491e: 28 19:       sub (3r)        r6, r6, r0
             0x00084920: 0e c3:       lss (3r)        r0, r7, r6
             0x00084922: 0c 74:       bt (ru6)        r0, -0xc <.label736>
             0x00084924: c7 83:       ld16s (3r)      r0, r9[r7]
.label734    0x00084926: 80 3c:       and (3r)        r0, r0, r8
             0x00084928: 1d 73:       bu (u6)         0x1d <.label737>
.label731    0x0008492a: 20 f0 00 68: ldc (lru6)      r0, 0x800
             0x0008492e: 14 40:       or (3r)         r1, r1, r0
             0x00084930: 80 6a:       ldc (ru6)       r10, 0x0
             0x00084932: 16 fe ec 87: st16 (l3r)      r1, r9[r10]
             0x00084936: c1 08:       ldw (2rus)      r0, r4[0x1]
             0x00084938: 88 c1:       lss (3r)        r0, r10, r0
             0x0008493a: 07 70:       bt (ru6)        r0, 0x7 <.label738>
             0x0008493c: 3c 68:       ldc (ru6)       r0, 0x3c
             0x0008493e: c0 10:       add (3r)        r0, r4, r0
             0x00084940: 00 08:       ldw (2rus)      r0, r0[0x0]
             0x00084942: d9 a6:       mkmsk (rus)     r2, 0x1
             0x00084944: 02 c0:       lss (3r)        r0, r0, r2
             0x00084946: 01 f0 1b 70: bt (lru6)       r0, 0x5b <.label739>
.label738    0x0008494a: 92 0d:       ldw (2rus)      r5, r4[0xa]
             0x0008494c: 01 f0 58 79: bf (lru6)       r5, 0x58 <.label739>
             0x00084950: 40 f0 c0 69: ldc (lru6)      r7, 0x1000
             0x00084954: 47 3a:       and (3r)        r0, r1, r7
             0x00084956: 14 78:       bf (ru6)        r0, 0x14 <.label740>
             0x00084958: 01 f0 10 68: ldc (lru6)      r0, 0x50
             0x0008495c: c0 10:       add (3r)        r0, r4, r0
             0x0008495e: 60 08:       ldw (2rus)      r6, r0[0x0]
             0x00084960: 1d 73:       bu (u6)         0x1d <.label741>
.label732    0x00084962: 84 3c:       and (3r)        r0, r1, r8
.label737    0x00084964: 40 69:       ldc (ru6)       r5, 0x0
             0x00084966: 01 f0 34 70: bt (lru6)       r0, 0x74 <.label742>
             0x0008496a: 01 f0 2d 73: bu (lu6)        0x6d <.label743>
.label735    0x0008496e: c7 83:       ld16s (3r)      r0, r9[r7]
             0x00084970: 01 f0 40 68: ldc (lru6)      r1, 0x40
             0x00084974: 11 40:       or (3r)         r1, r0, r1
             0x00084976: d7 fb ec 87: st16 (l3r)      r1, r9[r7]
             0x0008497a: 80 3c:       and (3r)        r0, r0, r8
             0x0008497c: 01 f0 0f 73: bu (lu6)        0x4f <.label744>
.label740    0x00084980: 13 0b:       ldw (2rus)      r1, r4[0x7]
             0x00084982: c0 69:       ldc (ru6)       r7, 0x0
             0x00084984: dd a6:       mkmsk (rus)     r3, 0x1
             0x00084986: cc 90:       add (2rus)      r0, r7, 0x0
             0x00084988: ec 90:       add (2rus)      r2, r7, 0x0
             0x0008498a: e5 27:       bla (1r)        r5
             0x0008498c: 60 90:       add (2rus)      r6, r0, 0x0
             0x0008498e: 14 a7:       mkmsk (rus)     r5, 0x20
             0x00084990: 09 33:       eq (3r)         r0, r6, r5
             0x00084992: 01 f0 07 70: bt (lru6)       r0, 0x47 <.label745>
             0x00084996: d7 83:       ld16s (3r)      r1, r9[r7]
             0x00084998: 40 f0 c0 69: ldc (lru6)      r7, 0x1000
.label741    0x0008499c: 04 68:       ldc (ru6)       r0, 0x4
             0x0008499e: 04 38:       and (3r)        r0, r1, r0
             0x000849a0: 0a 78:       bf (ru6)        r0, 0xa <.label746>
             0x000849a2: c1 08:       ldw (2rus)      r0, r4[0x1]
             0x000849a4: 28 19:       sub (3r)        r6, r6, r0
             0x000849a6: 30 68:       ldc (ru6)       r0, 0x30
             0x000849a8: c0 10:       add (3r)        r0, r4, r0
             0x000849aa: 00 08:       ldw (2rus)      r0, r0[0x0]
             0x000849ac: 04 78:       bf (ru6)        r0, 0x4 <.label746>
             0x000849ae: 3c 68:       ldc (ru6)       r0, 0x3c
             0x000849b0: c0 10:       add (3r)        r0, r4, r0
             0x000849b2: 00 08:       ldw (2rus)      r0, r0[0x0]
             0x000849b4: 28 19:       sub (3r)        r6, r6, r0
.label746    0x000849b6: f2 0d:       ldw (2rus)      r11, r4[0xa]
             0x000849b8: 13 0b:       ldw (2rus)      r1, r4[0x7]
             0x000849ba: 40 69:       ldc (ru6)       r5, 0x0
             0x000849bc: c4 90:       add (2rus)      r0, r5, 0x0
             0x000849be: e8 90:       add (2rus)      r2, r6, 0x0
             0x000849c0: f4 90:       add (2rus)      r3, r5, 0x0
             0x000849c2: eb 27:       bla (1r)        r11
             0x000849c4: e5 83:       ld16s (3r)      r2, r9[r5]
             0x000849c6: 42 32:       eq (3r)         r0, r0, r6
             0x000849c8: 24 78:       bf (ru6)        r0, 0x24 <.label747>
             0x000849ca: df f3 3f 68: ldc (lru6)      r0, 0xf7ff
             0x000849ce: 18 38:       and (3r)        r1, r2, r0
             0x000849d0: d5 fb ec 87: st16 (l3r)      r1, r9[r5]
             0x000849d4: 11 01:       stw (2rus)      r5, r4[0x1]
             0x000849d6: 00 0b:       ldw (2rus)      r0, r4[0x4]
             0x000849d8: c0 00:       stw (2rus)      r0, r4[0x0]
             0x000849da: 4b 3a:       and (3r)        r0, r2, r7
             0x000849dc: 04 78:       bf (ru6)        r0, 0x4 <.label748>
             0x000849de: 01 f0 10 68: ldc (lru6)      r0, 0x50
             0x000849e2: c0 10:       add (3r)        r0, r4, r0
             0x000849e4: 60 00:       stw (2rus)      r6, r0[0x0]
.label748    0x000849e6: 30 68:       ldc (ru6)       r0, 0x30
             0x000849e8: 20 11:       add (3r)        r6, r4, r0
             0x000849ea: c8 08:       ldw (2rus)      r0, r6[0x0]
             0x000849ec: 09 78:       bf (ru6)        r0, 0x9 <.label739>
             0x000849ee: 01 f0 80 68: ldc (lru6)      r2, 0x40
             0x000849f2: e2 10:       add (3r)        r2, r4, r2
             0x000849f4: 22 30:       eq (3r)         r2, r0, r2
             0x000849f6: 83 70:       bt (ru6)        r2, 0x3 <.label749>
             0x000849f8: 07 f0 d2 d5: bl (lu10)       -0x1dd2 <free>
             0x000849fc: d5 83:       ld16s (3r)      r1, r9[r5]
.label749    0x000849fe: 18 01:       stw (2rus)      r5, r6[0x0]
.label739    0x00084a00: 84 3c:       and (3r)        r0, r1, r8
             0x00084a02: 05 70:       bt (ru6)        r0, 0x5 <.label750>
             0x00084a04: 01 f0 14 68: ldc (lru6)      r0, 0x54
             0x00084a08: c0 10:       add (3r)        r0, r4, r0
             0x00084a0a: 07 f0 05 d5: bl (lu10)       -0x1d05 <__lock_recursive_release>
.label750    0x00084a0e: d8 91:       add (2rus)      r5, r10, 0x0
             0x00084a10: 20 73:       bu (u6)         0x20 <.label742>
.label747    0x00084a12: 01 f0 00 68: ldc (lru6)      r0, 0x40
             0x00084a16: 08 40:       or (3r)         r0, r2, r0
             0x00084a18: c5 fb ec 87: st16 (l3r)      r0, r9[r5]
             0x00084a1c: 88 3c:       and (3r)        r0, r2, r8
.label744    0x00084a1e: 14 a7:       mkmsk (rus)     r5, 0x20
             0x00084a20: 18 70:       bt (ru6)        r0, 0x18 <.label742>
             0x00084a22: 12 73:       bu (u6)         0x12 <.label743>
.label745    0x00084a24: 03 f0 cc d5: bl (lu10)       -0xdcc <__errno>
             0x00084a28: 00 08:       ldw (2rus)      r0, r0[0x0]
             0x00084a2a: 5d 68:       ldc (ru6)       r1, 0x1d
             0x00084a2c: 11 30:       eq (3r)         r1, r0, r1
             0x00084a2e: c7 83:       ld16s (3r)      r0, r9[r7]
             0x00084a30: 42 78:       bf (ru6)        r1, 0x2 <.label751>
             0x00084a32: 1c 91:       add (2rus)      r5, r7, 0x0
             0x00084a34: 07 73:       bu (u6)         0x7 <.label752>
.label751    0x00084a36: 01 f0 40 68: ldc (lru6)      r1, 0x40
             0x00084a3a: 01 40:       or (3r)         r0, r0, r1
             0x00084a3c: 31 47:       zext (rus)      r0, 0x10
             0x00084a3e: 40 68:       ldc (ru6)       r1, 0x0
             0x00084a40: 85 f9 ec 87: st16 (l3r)      r0, r9[r1]
.label752    0x00084a44: 80 3c:       and (3r)        r0, r0, r8
             0x00084a46: 05 70:       bt (ru6)        r0, 0x5 <.label742>
.label743    0x00084a48: 01 f0 14 68: ldc (lru6)      r0, 0x54
             0x00084a4c: c0 10:       add (3r)        r0, r4, r0
             0x00084a4e: 07 f0 27 d5: bl (lu10)       -0x1d27 <__lock_recursive_release>
.label742    0x00084a52: c4 90:       add (2rus)      r0, r5, 0x0
             0x00084a54: 88 5e:       ldw (ru6)       r10, sp[0x8]
             0x00084a56: 07 fa ec ef: ldd (l2rus)     r9, r8, sp[0x3]
             0x00084a5a: 2e f9 ec ef: ldd (l2rus)     r7, r6, sp[0x2]
             0x00084a5e: 05 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x1]
             0x00084a62: ca 77:       retsp (u6)      0xa

<__sread>:
             0x00084a64: 00 f0 44 77: entsp (lu6)     0x4
             0x00084a68: 05 f9 ec f7: std (l2rus)     r5, r4, sp[0x1]
             0x00084a6c: 44 90:       add (2rus)      r4, r1, 0x0
             0x00084a6e: 0e 68:       ldc (ru6)       r0, 0xe
             0x00084a70: c0 10:       add (3r)        r0, r4, r0
             0x00084a72: 40 69:       ldc (ru6)       r5, 0x0
             0x00084a74: 41 82:       ld16s (3r)      r0, r0[r5]
             0x00084a76: 18 90:       add (2rus)      r1, r2, 0x0
             0x00084a78: 2c 90:       add (2rus)      r2, r3, 0x0
             0x00084a7a: 01 f0 8f d3: bl (lu10)       0x78f <_read>
             0x00084a7e: 10 f8 ec 97: ashr (l2rus)    r1, r0, 0x20
             0x00084a82: 47 70:       bt (ru6)        r1, 0x7 <.label753>
             0x00084a84: 01 f0 50 68: ldc (lru6)      r1, 0x50
             0x00084a88: d1 10:       add (3r)        r1, r4, r1
             0x00084a8a: 24 08:       ldw (2rus)      r2, r1[0x0]
             0x00084a8c: 28 10:       add (3r)        r2, r2, r0
             0x00084a8e: 24 00:       stw (2rus)      r2, r1[0x0]
             0x00084a90: 08 73:       bu (u6)         0x8 <.label754>
.label753    0x00084a92: d3 f8 ec 9f: ldaw (l2rus)    r1, r4[0x3]
             0x00084a96: 65 82:       ld16s (3r)      r2, r1[r5]
             0x00084a98: bf f3 ff 68: ldc (lru6)      r3, 0xefff
             0x00084a9c: 2b 38:       and (3r)        r2, r2, r3
             0x00084a9e: 65 fa ec 87: st16 (l3r)      r2, r1[r5]
.label754    0x00084aa2: 05 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x1]
             0x00084aa6: c4 77:       retsp (u6)      0x4

<__swrite>:
             0x00084aa8: 00 f0 48 77: entsp (lu6)     0x8
             0x00084aac: 05 f9 ec f7: std (l2rus)     r5, r4, sp[0x1]
             0x00084ab0: 2e f9 ec f7: std (l2rus)     r7, r6, sp[0x2]
             0x00084ab4: 06 56:       stw (ru6)       r8, sp[0x6]
             0x00084ab6: 4c 90:       add (2rus)      r4, r3, 0x0
             0x00084ab8: 58 90:       add (2rus)      r5, r2, 0x0
             0x00084aba: 64 90:       add (2rus)      r6, r1, 0x0
             0x00084abc: 4b f9 ec 9f: ldaw (l2rus)    r8, r6[0x3]
             0x00084ac0: c0 69:       ldc (ru6)       r7, 0x0
             0x00084ac2: c3 83:       ld16s (3r)      r0, r8[r7]
             0x00084ac4: 04 f0 40 68: ldc (lru6)      r1, 0x100
             0x00084ac8: 11 38:       and (3r)        r1, r0, r1
             0x00084aca: 49 78:       bf (ru6)        r1, 0x9 <.label755>
             0x00084acc: 0e 68:       ldc (ru6)       r0, 0xe
             0x00084ace: c8 10:       add (3r)        r0, r6, r0
             0x00084ad0: 43 82:       ld16s (3r)      r0, r0[r7]
             0x00084ad2: 82 68:       ldc (ru6)       r2, 0x2
             0x00084ad4: dc 90:       add (2rus)      r1, r7, 0x0
             0x00084ad6: 01 f0 6b d3: bl (lu10)       0x76b <_lseek>
             0x00084ada: c3 83:       ld16s (3r)      r0, r8[r7]
             0x00084adc: 01 73:       bu (u6)         0x1 <.label756>
.label755    0x00084ade: 31 47:       zext (rus)      r0, 0x10
.label756    0x00084ae0: bf f3 7f 68: ldc (lru6)      r1, 0xefff
             0x00084ae4: 01 38:       and (3r)        r0, r0, r1
             0x00084ae6: c3 fb ec 87: st16 (l3r)      r0, r8[r7]
             0x00084aea: 0e 68:       ldc (ru6)       r0, 0xe
             0x00084aec: c8 10:       add (3r)        r0, r6, r0
             0x00084aee: 43 82:       ld16s (3r)      r0, r0[r7]
             0x00084af0: d4 90:       add (2rus)      r1, r5, 0x0
             0x00084af2: e0 90:       add (2rus)      r2, r4, 0x0
             0x00084af4: 09 f0 f2 d4: bl (lu10)       -0x24f2 <_write>
             0x00084af8: 06 5e:       ldw (ru6)       r8, sp[0x6]
             0x00084afa: 2e f9 ec ef: ldd (l2rus)     r7, r6, sp[0x2]
             0x00084afe: 05 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x1]
             0x00084b02: c8 77:       retsp (u6)      0x8

<__sseek>:
             0x00084b04: 00 f0 44 77: entsp (lu6)     0x4
             0x00084b08: 05 f9 ec f7: std (l2rus)     r5, r4, sp[0x1]
             0x00084b0c: 44 90:       add (2rus)      r4, r1, 0x0
             0x00084b0e: 0e 68:       ldc (ru6)       r0, 0xe
             0x00084b10: c0 10:       add (3r)        r0, r4, r0
             0x00084b12: 40 69:       ldc (ru6)       r5, 0x0
             0x00084b14: 41 82:       ld16s (3r)      r0, r0[r5]
             0x00084b16: 18 90:       add (2rus)      r1, r2, 0x0
             0x00084b18: 2c 90:       add (2rus)      r2, r3, 0x0
             0x00084b1a: 01 f0 49 d3: bl (lu10)       0x749 <_lseek>
             0x00084b1e: d3 f8 ec 9f: ldaw (l2rus)    r1, r4[0x3]
             0x00084b22: 65 82:       ld16s (3r)      r2, r1[r5]
             0x00084b24: dc a6:       mkmsk (rus)     r3, 0x20
             0x00084b26: 33 30:       eq (3r)         r3, r0, r3
             0x00084b28: ca 70:       bt (ru6)        r3, 0xa <.label757>
             0x00084b2a: 40 f0 c0 68: ldc (lru6)      r3, 0x1000
             0x00084b2e: 2b 40:       or (3r)         r2, r2, r3
             0x00084b30: 65 fa ec 87: st16 (l3r)      r2, r1[r5]
             0x00084b34: 01 f0 50 68: ldc (lru6)      r1, 0x50
             0x00084b38: d1 10:       add (3r)        r1, r4, r1
             0x00084b3a: 04 00:       stw (2rus)      r0, r1[0x0]
             0x00084b3c: 05 73:       bu (u6)         0x5 <.label758>
.label757    0x00084b3e: bf f3 ff 68: ldc (lru6)      r3, 0xefff
             0x00084b42: 2b 38:       and (3r)        r2, r2, r3
             0x00084b44: 65 fa ec 87: st16 (l3r)      r2, r1[r5]
.label758    0x00084b48: 05 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x1]
             0x00084b4c: c4 77:       retsp (u6)      0x4
             0x00084b4e: 00 00:       stw (2rus)      r0, r0[0x0]

<__sclose>:
             0x00084b50: 00 f0 42 77: entsp (lu6)     0x2
             0x00084b54: 0e 68:       ldc (ru6)       r0, 0xe
             0x00084b56: 04 10:       add (3r)        r0, r1, r0
             0x00084b58: 40 68:       ldc (ru6)       r1, 0x0
             0x00084b5a: 01 80:       ld16s (3r)      r0, r0[r1]
             0x00084b5c: 01 f0 32 d3: bl (lu10)       0x732 <_close>
             0x00084b60: c2 77:       retsp (u6)      0x2
             0x00084b62: 00 00:       stw (2rus)      r0, r0[0x0]

<__checkFptrGroup>:
             0x00084b64: 00 f0 40 77: entsp (lu6)     0x0
             0x00084b68: 30 90:       add (2rus)      r3, r0, 0x0
.label760    0x00084b6a: 06 c8:       lsu (3r)        r0, r1, r2
             0x00084b6c: 05 78:       bf (ru6)        r0, 0x5 <.label759>
             0x00084b6e: 04 08:       ldw (2rus)      r0, r1[0x0]
             0x00084b70: 03 30:       eq (3r)         r0, r0, r3
             0x00084b72: 02 70:       bt (ru6)        r0, 0x2 <.label759>
             0x00084b74: 54 92:       add (2rus)      r1, r1, 0x4
             0x00084b76: 07 77:       bu (u6)         -0x7 <.label760>
.label759    0x00084b78: c0 77:       retsp (u6)      0x0
             0x00084b7a: 00 00:       stw (2rus)      r0, r0[0x0]

<__smakebuf>:
             0x00084b7c: 00 f0 46 77: entsp (lu6)     0x6
             0x00084b80: 05 f9 ec f7: std (l2rus)     r5, r4, sp[0x1]
             0x00084b84: 84 55:       stw (ru6)       r6, sp[0x4]
             0x00084b86: 40 90:       add (2rus)      r4, r0, 0x0
             0x00084b88: 0c 68:       ldc (ru6)       r0, 0xc
             0x00084b8a: c0 88:       ld8u (3r)       r0, r4[r0]
             0x00084b8c: 82 69:       ldc (ru6)       r6, 0x2
             0x00084b8e: 42 3a:       and (3r)        r0, r0, r6
             0x00084b90: 1a 70:       bt (ru6)        r0, 0x1a <.label761>
             0x00084b92: 01 f0 40 69: ldc (lru6)      r5, 0x40
             0x00084b96: c4 90:       add (2rus)      r0, r5, 0x0
             0x00084b98: 07 f0 3e d6: bl (lu10)       -0x1e3e <malloc>
             0x00084b9c: d3 f8 ec 9f: ldaw (l2rus)    r1, r4[0x3]
             0x00084ba0: 80 68:       ldc (ru6)       r2, 0x0
             0x00084ba2: 36 80:       ld16s (3r)      r3, r1[r2]
             0x00084ba4: 09 78:       bf (ru6)        r0, 0x9 <.label762>
             0x00084ba6: 02 f0 c0 6a: ldc (lru6)      r11, 0x80
             0x00084baa: bf 44:       or (3r)         r3, r3, r11
             0x00084bac: 36 f8 ec 87: st16 (l3r)      r3, r1[r2]
             0x00084bb0: c0 00:       stw (2rus)      r0, r4[0x0]
             0x00084bb2: 00 03:       stw (2rus)      r0, r4[0x4]
             0x00084bb4: 51 03:       stw (2rus)      r5, r4[0x5]
             0x00084bb6: 0e 73:       bu (u6)         0xe <.label763>
.label762    0x00084bb8: 08 f0 00 68: ldc (lru6)      r0, 0x200
             0x00084bbc: 0c 38:       and (3r)        r0, r3, r0
             0x00084bbe: 0a 70:       bt (ru6)        r0, 0xa <.label763>
             0x00084bc0: 4e 42:       or (3r)         r0, r3, r6
             0x00084bc2: 06 f8 ec 87: st16 (l3r)      r0, r1[r2]
.label761    0x00084bc6: 01 f0 03 68: ldc (lru6)      r0, 0x43
             0x00084bca: c0 10:       add (3r)        r0, r4, r0
             0x00084bcc: c0 00:       stw (2rus)      r0, r4[0x0]
             0x00084bce: 00 03:       stw (2rus)      r0, r4[0x4]
             0x00084bd0: d1 a6:       mkmsk (rus)     r0, 0x1
             0x00084bd2: 01 03:       stw (2rus)      r0, r4[0x5]
.label763    0x00084bd4: 84 5d:       ldw (ru6)       r6, sp[0x4]
             0x00084bd6: 05 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x1]
             0x00084bda: c6 77:       retsp (u6)      0x6

<__ashldi3>:
             0x00084bdc: 00 f0 40 77: entsp (lu6)     0x0
             0x00084be0: e0 68:       ldc (ru6)       r3, 0x20
             0x00084be2: bb 38:       and (3r)        r11, r2, r3
             0x00084be4: c6 7a:       bf (ru6)        r11, 0x6 <.label764>
             0x00084be6: 98 fc ec a7: ldaw (l2rus)    r1, r2[-0x8]
             0x00084bea: 11 20:       shl (3r)        r1, r0, r1
             0x00084bec: 00 68:       ldc (ru6)       r0, 0x0
             0x00084bee: 20 90:       add (2rus)      r2, r0, 0x0
             0x00084bf0: 08 73:       bu (u6)         0x8 <.label765>
.label764    0x00084bf2: 88 78:       bf (ru6)        r2, 0x8 <.label766>
             0x00084bf4: b2 20:       shl (3r)        r11, r0, r2
             0x00084bf6: 16 20:       shl (3r)        r1, r1, r2
             0x00084bf8: 2e 18:       sub (3r)        r2, r3, r2
             0x00084bfa: 02 28:       shr (3r)        r0, r0, r2
             0x00084bfc: 14 40:       or (3r)         r1, r1, r0
             0x00084bfe: 80 68:       ldc (ru6)       r2, 0x0
             0x00084c00: 8c 91:       add (2rus)      r0, r11, 0x0
.label765    0x00084c02: 16 40:       or (3r)         r1, r1, r2
.label766    0x00084c04: c0 77:       retsp (u6)      0x0
             0x00084c06: 00 00:       stw (2rus)      r0, r0[0x0]

<__lshrdi3>:
             0x00084c08: 00 f0 40 77: entsp (lu6)     0x0
             0x00084c0c: e0 68:       ldc (ru6)       r3, 0x20
             0x00084c0e: bb 38:       and (3r)        r11, r2, r3
             0x00084c10: c6 7a:       bf (ru6)        r11, 0x6 <.label767>
             0x00084c12: 88 fc ec a7: ldaw (l2rus)    r0, r2[-0x8]
             0x00084c16: 04 28:       shr (3r)        r0, r1, r0
             0x00084c18: 80 68:       ldc (ru6)       r2, 0x0
             0x00084c1a: 18 90:       add (2rus)      r1, r2, 0x0
             0x00084c1c: 08 73:       bu (u6)         0x8 <.label768>
.label767    0x00084c1e: 88 78:       bf (ru6)        r2, 0x8 <.label769>
             0x00084c20: b6 28:       shr (3r)        r11, r1, r2
             0x00084c22: 3e 18:       sub (3r)        r3, r3, r2
             0x00084c24: 17 20:       shl (3r)        r1, r1, r3
             0x00084c26: 02 28:       shr (3r)        r0, r0, r2
             0x00084c28: 04 40:       or (3r)         r0, r1, r0
             0x00084c2a: 80 68:       ldc (ru6)       r2, 0x0
             0x00084c2c: 9c 91:       add (2rus)      r1, r11, 0x0
.label768    0x00084c2e: 02 40:       or (3r)         r0, r0, r2
.label769    0x00084c30: c0 77:       retsp (u6)      0x0
             0x00084c32: 00 00:       stw (2rus)      r0, r0[0x0]

<__adddf3>:
             0x00084c34: 00 f0 4e 77: entsp (lu6)     0xe
             0x00084c38: 07 f9 ec f7: std (l2rus)     r5, r4, sp[0x3]
             0x00084c3c: 6c fb ec f7: std (l2rus)     r7, r6, sp[0x4]
             0x00084c40: 45 fc ec f7: std (l2rus)     r9, r8, sp[0x5]
             0x00084c44: 8c 56:       stw (ru6)       r10, sp[0xc]
             0x00084c46: 4c 90:       add (2rus)      r4, r3, 0x0
             0x00084c48: 58 90:       add (2rus)      r5, r2, 0x0
             0x00084c4a: 03 f0 99 6c: ldw (lru6)      r2, cp[0xd9]
             0x00084c4e: 76 38:       and (3r)        r7, r1, r2
             0x00084c50: 72 39:       and (3r)        r11, r4, r2
             0x00084c52: 80 69:       ldc (ru6)       r6, 0x0
             0x00084c54: d8 a6:       mkmsk (rus)     r2, 0x20
             0x00084c56: 82 f8 9e 07: ladd (l5r)      r3, r8, r0, r2, r6
             0x00084c5a: 5e f9 df 06: ladd (l5r)      r3, r9, r7, r2, r3
             0x00084c5e: 03 f0 d8 6c: ldw (lru6)      r3, cp[0xd8]
             0x00084c62: 27 32:       eq (3r)         r10, r9, r3
             0x00084c64: 82 72:       bt (ru6)        r10, 0x2 <.label770>
             0x00084c66: 0d cd:       lsu (3r)        r8, r3, r9
             0x00084c68: 01 73:       bu (u6)         0x1 <.label771>
.label770    0x00084c6a: 02 32:       eq (3r)         r8, r8, r2
.label771    0x00084c6c: 56 f9 fa 06: ladd (l5r)      r10, r9, r5, r2, r6
             0x00084c70: 85 55:       stw (ru6)       r6, sp[0x5]
             0x00084c72: 2e fa 7a 07: ladd (l5r)      r6, r10, r11, r2, r10
             0x00084c76: 08 72:       bt (ru6)        r8, 0x8 <.label772>
             0x00084c78: eb 31:       eq (3r)         r6, r10, r3
             0x00084c7a: 82 71:       bt (ru6)        r6, 0x2 <.label773>
             0x00084c7c: ab c9:       lsu (3r)        r2, r10, r3
             0x00084c7e: 02 73:       bu (u6)         0x2 <.label774>
.label773    0x00084c80: a6 31:       eq (3r)         r2, r9, r2
             0x00084c82: 28 b0:       eq (2rus)       r2, r2, 0x0
.label774    0x00084c84: 01 f0 80 70: bt (lru6)       r2, 0x40 <.label775>
.label772    0x00084c88: 02 f0 b6 6c: ldw (lru6)      r2, cp[0xb6]
             0x00084c8c: fe 30:       eq (3r)         r3, r7, r2
             0x00084c8e: c2 70:       bt (ru6)        r3, 0x2 <.label776>
             0x00084c90: fe c8:       lsu (3r)        r3, r7, r2
             0x00084c92: 01 73:       bu (u6)         0x1 <.label777>
.label776    0x00084c94: 30 b0:       eq (2rus)       r3, r0, 0x0
.label777    0x00084c96: c6 70:       bt (ru6)        r3, 0x6 <.label778>
             0x00084c98: 02 f0 a7 6c: ldw (lru6)      r2, cp[0xa7]
             0x00084c9c: 36 40:       or (3r)         r3, r1, r2
             0x00084c9e: 20 90:       add (2rus)      r2, r0, 0x0
             0x00084ca0: 04 f0 1a 73: bu (lu6)        0x11a <.label779>
.label778    0x00084ca4: be 31:       eq (3r)         r3, r11, r2
             0x00084ca6: c2 70:       bt (ru6)        r3, 0x2 <.label780>
             0x00084ca8: be c9:       lsu (3r)        r3, r11, r2
             0x00084caa: 01 73:       bu (u6)         0x1 <.label781>
.label780    0x00084cac: f4 b0:       eq (2rus)       r3, r5, 0x0
.label781    0x00084cae: c6 70:       bt (ru6)        r3, 0x6 <.label782>
             0x00084cb0: 02 f0 27 6c: ldw (lru6)      r0, cp[0xa7]
             0x00084cb4: f0 40:       or (3r)         r3, r4, r0
             0x00084cb6: e4 90:       add (2rus)      r2, r5, 0x0
             0x00084cb8: 04 f0 0e 73: bu (lu6)        0x10e <.label779>
.label782    0x00084cbc: fe f8 ec 0f: xor (l3r)       r3, r7, r2
             0x00084cc0: 33 40:       or (3r)         r3, r0, r3
             0x00084cc2: d2 70:       bt (ru6)        r3, 0x12 <.label783>
             0x00084cc4: e4 f8 ec 0f: xor (l3r)       r2, r5, r0
             0x00084cc8: f1 f8 ec 0f: xor (l3r)       r3, r4, r1
             0x00084ccc: 02 f0 e6 6e: ldw (lru6)      r11, cp[0xa6]
             0x00084cd0: bf fc ec 0f: xor (l3r)       r3, r3, r11
             0x00084cd4: 2b 40:       or (3r)         r2, r2, r3
             0x00084cd6: 82 70:       bt (ru6)        r2, 0x2 <.label784>
             0x00084cd8: 02 f0 77 6c: ldw (lru6)      r1, cp[0xb7]
.label784    0x00084cdc: 81 70:       bt (ru6)        r2, 0x1 <.label785>
             0x00084cde: 00 68:       ldc (ru6)       r0, 0x0
.label785    0x00084ce0: 20 90:       add (2rus)      r2, r0, 0x0
             0x00084ce2: 34 90:       add (2rus)      r3, r1, 0x0
             0x00084ce4: 03 f0 38 73: bu (lu6)        0xf8 <.label779>
.label783    0x00084ce8: ae f9 ec 0f: xor (l3r)       r2, r11, r2
             0x00084cec: e6 40:       or (3r)         r2, r5, r2
             0x00084cee: 84 70:       bt (ru6)        r2, 0x4 <.label786>
             0x00084cf0: e4 90:       add (2rus)      r2, r5, 0x0
             0x00084cf2: f0 90:       add (2rus)      r3, r4, 0x0
             0x00084cf4: 03 f0 30 73: bu (lu6)        0xf0 <.label779>
.label786    0x00084cf8: 63 42:       or (3r)         r2, r0, r7
             0x00084cfa: 03 f0 b7 78: bf (lru6)       r2, 0xf7 <.label787>
             0x00084cfe: a7 45:       or (3r)         r6, r5, r11
             0x00084d00: 20 90:       add (2rus)      r2, r0, 0x0
             0x00084d02: 34 90:       add (2rus)      r3, r1, 0x0
             0x00084d04: 03 f0 a8 79: bf (lru6)       r6, 0xe8 <.label779>
.label775    0x00084d08: ef 33:       eq (3r)         r2, r11, r7
             0x00084d0a: 82 70:       bt (ru6)        r2, 0x2 <.label788>
             0x00084d0c: 6f cd:       lsu (3r)        r2, r7, r11
             0x00084d0e: 01 73:       bu (u6)         0x1 <.label789>
.label788    0x00084d10: 61 ca:       lsu (3r)        r2, r0, r5
.label789    0x00084d12: 70 90:       add (2rus)      r7, r0, 0x0
             0x00084d14: 81 70:       bt (ru6)        r2, 0x1 <.label790>
             0x00084d16: 34 91:       add (2rus)      r7, r5, 0x0
.label790    0x00084d18: 94 90:       add (2rus)      r9, r1, 0x0
             0x00084d1a: 81 70:       bt (ru6)        r2, 0x1 <.label791>
             0x00084d1c: 50 91:       add (2rus)      r9, r4, 0x0
.label791    0x00084d1e: 81 70:       bt (ru6)        r2, 0x1 <.label792>
             0x00084d20: 50 90:       add (2rus)      r5, r0, 0x0
.label792    0x00084d22: 81 70:       bt (ru6)        r2, 0x1 <.label793>
             0x00084d24: 44 90:       add (2rus)      r4, r1, 0x0
.label793    0x00084d26: 54 68:       ldc (ru6)       r1, 0x14
             0x00084d28: c1 28:       shr (3r)        r0, r4, r1
             0x00084d2a: 1f f0 bf 68: ldc (lru6)      r2, 0x7ff
             0x00084d2e: 32 38:       and (3r)        r3, r0, r2
             0x00084d30: 85 29:       shr (3r)        r0, r9, r1
             0x00084d32: a2 38:       and (3r)        r10, r0, r2
             0x00084d34: 03 f0 96 6d: ldw (lru6)      r6, cp[0xd6]
             0x00084d38: 82 3b:       and (3r)        r8, r4, r6
             0x00084d3a: d2 70:       bt (ru6)        r3, 0x12 <.label794>
             0x00084d3c: 02 7a:       bf (ru6)        r8, 0x2 <.label795>
             0x00084d3e: 20 0f:       clz (2r)        r0, r8
             0x00084d40: 03 73:       bu (u6)         0x3 <.label796>
.label795    0x00084d42: 81 0f:       clz (2r)        r0, r5
             0x00084d44: 80 fc ec 9f: ldaw (l2rus)    r0, r0[0x8]
.label796    0x00084d48: a3 9c:       sub (2rus)      r2, r0, 0xb
             0x00084d4a: 60 90:       add (2rus)      r6, r0, 0x0
             0x00084d4c: c4 90:       add (2rus)      r0, r5, 0x0
             0x00084d4e: 90 91:       add (2rus)      r1, r8, 0x0
             0x00084d50: 00 f0 bc d4: bl (lu10)       -0xbc <__ashldi3>
             0x00084d54: 50 90:       add (2rus)      r5, r0, 0x0
             0x00084d56: 84 90:       add (2rus)      r8, r1, 0x0
             0x00084d58: 0c 68:       ldc (ru6)       r0, 0xc
             0x00084d5a: 72 1a:       sub (3r)        r3, r0, r6
             0x00084d5c: 03 f0 96 6d: ldw (lru6)      r6, cp[0xd6]
.label794    0x00084d60: d6 3b:       and (3r)        r1, r9, r6
             0x00084d62: 90 72:       bt (ru6)        r10, 0x10 <.label797>
             0x00084d64: 43 78:       bf (ru6)        r1, 0x3 <.label798>
             0x00084d66: c4 54:       stw (ru6)       r3, sp[0x4]
             0x00084d68: 49 0f:       clz (2r)        r10, r1
             0x00084d6a: 04 73:       bu (u6)         0x4 <.label799>
.label798    0x00084d6c: c4 54:       stw (ru6)       r3, sp[0x4]
             0x00084d6e: 83 0f:       clz (2r)        r0, r7
             0x00084d70: 20 fd ec 9f: ldaw (l2rus)    r10, r0[0x8]
.label799    0x00084d74: 2b 9e:       sub (2rus)      r2, r10, 0xb
             0x00084d76: cc 90:       add (2rus)      r0, r7, 0x0
             0x00084d78: 00 f0 d0 d4: bl (lu10)       -0xd0 <__ashldi3>
             0x00084d7c: 70 90:       add (2rus)      r7, r0, 0x0
             0x00084d7e: 0c 68:       ldc (ru6)       r0, 0xc
             0x00084d80: 22 1d:       sub (3r)        r10, r0, r10
             0x00084d82: c4 5c:       ldw (ru6)       r3, sp[0x4]
.label797    0x00084d84: 41 fd ec 0f: xor (l3r)       r0, r4, r9
             0x00084d88: 04 54:       stw (ru6)       r0, sp[0x4]
             0x00084d8a: dd 6a:       ldc (ru6)       r11, 0x1d
             0x00084d8c: 47 2d:       shr (3r)        r0, r5, r11
             0x00084d8e: a3 a1:       shl (2rus)      r2, r8, 0x3
             0x00084d90: 28 40:       or (3r)         r2, r2, r0
             0x00084d92: 02 f0 31 6e: ldw (lru6)      r8, cp[0xb1]
             0x00084d96: 4f 2d:       shr (3r)        r0, r7, r11
             0x00084d98: 17 a0:       shl (2rus)      r1, r1, 0x3
             0x00084d9a: 04 40:       or (3r)         r0, r1, r0
             0x00084d9c: 3f a1:       shl (2rus)      r7, r7, 0x3
             0x00084d9e: 00 45:       or (3r)         r8, r0, r8
             0x00084da0: 8e 34:       eq (3r)         r0, r3, r10
             0x00084da2: 02 78:       bf (ru6)        r0, 0x2 <.label800>
             0x00084da4: 05 56:       stw (ru6)       r8, sp[0x5]
             0x00084da6: 1c 73:       bu (u6)         0x1c <.label801>
.label800    0x00084da8: 83 54:       stw (ru6)       r2, sp[0x3]
             0x00084daa: 1e 1d:       sub (3r)        r9, r3, r10
             0x00084dac: c6 ab:       shr (2rus)      r0, r9, 0x6
             0x00084dae: 16 70:       bt (ru6)        r0, 0x16 <.label802>
             0x00084db0: 01 f0 00 68: ldc (lru6)      r0, 0x40
             0x00084db4: a1 1c:       sub (3r)        r2, r0, r9
             0x00084db6: cc 90:       add (2rus)      r0, r7, 0x0
             0x00084db8: 90 91:       add (2rus)      r1, r8, 0x0
             0x00084dba: ac 90:       add (2rus)      r10, r3, 0x0
             0x00084dbc: 00 f0 f2 d4: bl (lu10)       -0xf2 <__ashldi3>
             0x00084dc0: 01 40:       or (3r)         r0, r0, r1
             0x00084dc2: 00 b0:       eq (2rus)       r0, r0, 0x0
             0x00084dc4: 60 b0:       eq (2rus)       r6, r0, 0x0
             0x00084dc6: cc 90:       add (2rus)      r0, r7, 0x0
             0x00084dc8: 90 91:       add (2rus)      r1, r8, 0x0
             0x00084dca: a4 91:       add (2rus)      r2, r9, 0x0
             0x00084dcc: 00 f0 e4 d4: bl (lu10)       -0xe4 <__lshrdi3>
             0x00084dd0: b8 91:       add (2rus)      r3, r10, 0x0
             0x00084dd2: 45 54:       stw (ru6)       r1, sp[0x5]
             0x00084dd4: 38 41:       or (3r)         r7, r6, r0
             0x00084dd6: 03 f0 96 6d: ldw (lru6)      r6, cp[0xd6]
             0x00084dda: 01 73:       bu (u6)         0x1 <.label803>
.label802    0x00084ddc: 1d a7:       mkmsk (rus)     r7, 0x1
.label803    0x00084dde: 83 5c:       ldw (ru6)       r2, sp[0x3]
.label801    0x00084de0: 9c 90:       add (2rus)      r9, r3, 0x0
             0x00084de2: c7 a0:       shl (2rus)      r0, r5, 0x3
             0x00084de4: 02 f0 66 6c: ldw (lru6)      r1, cp[0xa6]
             0x00084de8: 41 39:       and (3r)        r8, r4, r1
             0x00084dea: 02 f0 71 6c: ldw (lru6)      r1, cp[0xb1]
             0x00084dee: 19 40:       or (3r)         r1, r2, r1
             0x00084df0: 84 5c:       ldw (ru6)       r2, sp[0x4]
             0x00084df2: 28 f8 ec 97: ashr (l2rus)    r2, r2, 0x20
             0x00084df6: 95 70:       bt (ru6)        r2, 0x15 <.label804>
             0x00084df8: 80 68:       ldc (ru6)       r2, 0x0
             0x00084dfa: 0c f9 de 06: ladd (l5r)      r3, r4, r7, r0, r2
             0x00084dfe: c5 5e:       ldw (ru6)       r11, sp[0x5]
             0x00084e00: dd f9 d7 06: ladd (l5r)      r1, r5, r11, r1, r3
             0x00084e04: 02 f0 64 6c: ldw (lru6)      r1, cp[0xa4]
             0x00084e08: d5 38:       and (3r)        r1, r5, r1
             0x00084e0a: 6e 78:       bf (ru6)        r1, 0x2e <.label805>
             0x00084e0c: dc f8 d2 06: ladd (l5r)      r0, r1, r7, r0, r2
             0x00084e10: d5 46:       zext (rus)      r1, 0x1
             0x00084e12: 91 a7:       mkmsk (rus)     r0, 0x5
             0x00084e14: c4 20:       shl (3r)        r0, r5, r0
             0x00084e16: e1 a8:       shr (2rus)      r2, r4, 0x1
             0x00084e18: 08 40:       or (3r)         r0, r2, r0
             0x00084e1a: 15 a9:       shr (2rus)      r5, r5, 0x1
             0x00084e1c: 41 40:       or (3r)         r4, r0, r1
             0x00084e1e: 15 92:       add (2rus)      r9, r9, 0x1
             0x00084e20: 23 73:       bu (u6)         0x23 <.label805>
.label804    0x00084e22: 80 68:       ldc (ru6)       r2, 0x0
             0x00084e24: 83 fa ce 0e: lsub (l5r)      r3, r4, r0, r7, r2
             0x00084e28: c5 5e:       ldw (ru6)       r11, sp[0x5]
             0x00084e2a: d7 fc cf 0e: lsub (l5r)      r3, r5, r1, r11, r3
             0x00084e2e: 43 fa ec 0f: xor (l3r)       r0, r0, r7
             0x00084e32: 97 fc ec 0f: xor (l3r)       r1, r1, r11
             0x00084e36: 01 40:       or (3r)         r0, r0, r1
             0x00084e38: 38 90:       add (2rus)      r3, r2, 0x0
             0x00084e3a: 01 f0 0d 78: bf (lru6)       r0, 0x4d <.label779>
             0x00084e3e: 17 68:       ldc (ru6)       r0, 0x17
             0x00084e40: c4 28:       shr (3r)        r0, r5, r0
             0x00084e42: 12 70:       bt (ru6)        r0, 0x12 <.label805>
             0x00084e44: 43 79:       bf (ru6)        r5, 0x3 <.label806>
             0x00084e46: 38 91:       add (2rus)      r7, r6, 0x0
             0x00084e48: 81 0f:       clz (2r)        r0, r5
             0x00084e4a: 04 73:       bu (u6)         0x4 <.label807>
.label806    0x00084e4c: 38 91:       add (2rus)      r7, r6, 0x0
             0x00084e4e: 80 0f:       clz (2r)        r0, r4
             0x00084e50: 80 fc ec 9f: ldaw (l2rus)    r0, r0[0x8]
.label807    0x00084e54: e0 9c:       sub (2rus)      r6, r0, 0x8
             0x00084e56: c0 90:       add (2rus)      r0, r4, 0x0
             0x00084e58: d4 90:       add (2rus)      r1, r5, 0x0
             0x00084e5a: e8 90:       add (2rus)      r2, r6, 0x0
             0x00084e5c: 00 f0 42 d5: bl (lu10)       -0x142 <__ashldi3>
             0x00084e60: 40 90:       add (2rus)      r4, r0, 0x0
             0x00084e62: 54 90:       add (2rus)      r5, r1, 0x0
             0x00084e64: 56 1c:       sub (3r)        r9, r9, r6
             0x00084e66: 2c 91:       add (2rus)      r6, r7, 0x0
.label805    0x00084e68: 1f f0 3f 68: ldc (lru6)      r0, 0x7ff
             0x00084e6c: 84 c1:       lss (3r)        r0, r9, r0
             0x00084e6e: 05 70:       bt (ru6)        r0, 0x5 <.label808>
             0x00084e70: 02 f0 36 6c: ldw (lru6)      r0, cp[0xb6]
             0x00084e74: b0 41:       or (3r)         r3, r8, r0
             0x00084e76: 80 68:       ldc (ru6)       r2, 0x0
             0x00084e78: 2f 73:       bu (u6)         0x2f <.label779>
.label808    0x00084e7a: 68 91:       add (2rus)      r10, r6, 0x0
             0x00084e7c: c0 69:       ldc (ru6)       r7, 0x0
             0x00084e7e: 4d c5:       lss (3r)        r0, r7, r9
             0x00084e80: 14 70:       bt (ru6)        r0, 0x14 <.label809>
             0x00084e82: d1 a6:       mkmsk (rus)     r0, 0x1
             0x00084e84: e1 1c:       sub (3r)        r6, r0, r9
             0x00084e86: 01 f0 00 68: ldc (lru6)      r0, 0x40
             0x00084e8a: 62 1a:       sub (3r)        r2, r0, r6
             0x00084e8c: c0 90:       add (2rus)      r0, r4, 0x0
             0x00084e8e: d4 90:       add (2rus)      r1, r5, 0x0
             0x00084e90: 00 f0 5c d5: bl (lu10)       -0x15c <__ashldi3>
             0x00084e94: 01 40:       or (3r)         r0, r0, r1
             0x00084e96: 00 b0:       eq (2rus)       r0, r0, 0x0
             0x00084e98: 90 b0:       eq (2rus)       r9, r0, 0x0
             0x00084e9a: c0 90:       add (2rus)      r0, r4, 0x0
             0x00084e9c: d4 90:       add (2rus)      r1, r5, 0x0
             0x00084e9e: e8 90:       add (2rus)      r2, r6, 0x0
             0x00084ea0: 00 f0 4e d5: bl (lu10)       -0x14e <__lshrdi3>
             0x00084ea4: 54 90:       add (2rus)      r5, r1, 0x0
             0x00084ea6: c4 41:       or (3r)         r4, r9, r0
             0x00084ea8: 5c 91:       add (2rus)      r9, r7, 0x0
.label809    0x00084eaa: 1d 68:       ldc (ru6)       r0, 0x1d
             0x00084eac: c4 20:       shl (3r)        r0, r5, r0
             0x00084eae: d3 a8:       shr (2rus)      r1, r4, 0x3
             0x00084eb0: 13 47:       zext (rus)      r4, 0x3
             0x00084eb2: 04 40:       or (3r)         r0, r1, r0
             0x00084eb4: d7 a8:       shr (2rus)      r1, r5, 0x3
             0x00084eb6: 96 3c:       and (3r)        r1, r1, r10
             0x00084eb8: 94 68:       ldc (ru6)       r2, 0x14
             0x00084eba: a6 21:       shl (3r)        r2, r9, r2
             0x00084ebc: 94 44:       or (3r)         r1, r1, r8
             0x00084ebe: 16 40:       or (3r)         r1, r1, r2
             0x00084ec0: 84 68:       ldc (ru6)       r2, 0x4
             0x00084ec2: 68 ca:       lsu (3r)        r2, r2, r4
             0x00084ec4: 22 f8 93 07: ladd (l5r)      r0, r2, r0, r2, r7
             0x00084ec8: 34 10:       add (3r)        r3, r1, r0
             0x00084eca: 00 b3:       eq (2rus)       r0, r4, 0x4
             0x00084ecc: 05 78:       bf (ru6)        r0, 0x5 <.label779>
             0x00084ece: 08 90:       add (2rus)      r0, r2, 0x0
             0x00084ed0: d1 46:       zext (rus)      r0, 0x1
             0x00084ed2: 22 f8 93 07: ladd (l5r)      r0, r2, r0, r2, r7
             0x00084ed6: 3c 10:       add (3r)        r3, r3, r0
.label779    0x00084ed8: 08 90:       add (2rus)      r0, r2, 0x0
             0x00084eda: 1c 90:       add (2rus)      r1, r3, 0x0
             0x00084edc: 8c 5e:       ldw (ru6)       r10, sp[0xc]
             0x00084ede: 45 fc ec ef: ldd (l2rus)     r9, r8, sp[0x5]
             0x00084ee2: 6c fb ec ef: ldd (l2rus)     r7, r6, sp[0x4]
             0x00084ee6: 07 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x3]
             0x00084eea: ce 77:       retsp (u6)      0xe
.label787    0x00084eec: f7 45:       or (3r)         r11, r5, r11
             0x00084eee: e4 90:       add (2rus)      r2, r5, 0x0
             0x00084ef0: f0 90:       add (2rus)      r3, r4, 0x0
             0x00084ef2: ce 76:       bt (ru6)        r11, -0xe <.label779>
             0x00084ef4: e4 38:       and (3r)        r2, r5, r0
             0x00084ef6: f1 38:       and (3r)        r3, r4, r1
             0x00084ef8: 11 77:       bu (u6)         -0x11 <.label779>
             0x00084efa: 00 00:       stw (2rus)      r0, r0[0x0]

<_Balloc>:
             0x00084efc: 00 f0 44 77: entsp (lu6)     0x4
             0x00084f00: 05 f9 ec f7: std (l2rus)     r5, r4, sp[0x1]
             0x00084f04: 44 90:       add (2rus)      r4, r1, 0x0
             0x00084f06: ee 17:       get (0r)        r11, id
             0x00084f08: 03 f0 74 61: ldaw (lru6)     r5, dp[0xf4]
             0x00084f0c: 57 4d:       ldw (3r)        r1, r5[r11]
             0x00084f0e: 49 70:       bt (ru6)        r1, 0x9 <.label810>
             0x00084f10: 04 68:       ldc (ru6)       r0, 0x4
             0x00084f12: 50 68:       ldc (ru6)       r1, 0x10
             0x00084f14: 01 f0 5e d1: bl (lu10)       0x55e <calloc>
             0x00084f18: 10 90:       add (2rus)      r1, r0, 0x0
             0x00084f1a: ee 17:       get (0r)        r11, id
             0x00084f1c: 57 fd ec 07: stw (l3r)       r1, r5[r11]
             0x00084f20: 54 78:       bf (ru6)        r1, 0x14 <.label811>
.label810    0x00084f22: 44 4a:       ldw (3r)        r0, r1[r4]
             0x00084f24: 04 78:       bf (ru6)        r0, 0x4 <.label812>
             0x00084f26: 20 08:       ldw (2rus)      r2, r0[0x0]
             0x00084f28: 64 fa ec 07: stw (l3r)       r2, r1[r4]
             0x00084f2c: 0a 73:       bu (u6)         0xa <.label813>
.label812    0x00084f2e: d1 a6:       mkmsk (rus)     r0, 0x1
             0x00084f30: 90 22:       shl (3r)        r5, r0, r4
             0x00084f32: 54 68:       ldc (ru6)       r1, 0x14
             0x00084f34: 55 fa ec 1f: ldaw (l3r)      r1, r1[r5]
             0x00084f38: 01 f0 4c d1: bl (lu10)       0x54c <calloc>
             0x00084f3c: 06 78:       bf (ru6)        r0, 0x6 <.label811>
             0x00084f3e: 41 00:       stw (2rus)      r4, r0[0x1]
             0x00084f40: 52 00:       stw (2rus)      r5, r0[0x2]
.label813    0x00084f42: 40 68:       ldc (ru6)       r1, 0x0
             0x00084f44: 50 02:       stw (2rus)      r1, r0[0x4]
             0x00084f46: 13 00:       stw (2rus)      r1, r0[0x3]
             0x00084f48: 01 73:       bu (u6)         0x1 <.label814>
.label811    0x00084f4a: 00 68:       ldc (ru6)       r0, 0x0
.label814    0x00084f4c: 05 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x1]
             0x00084f50: c4 77:       retsp (u6)      0x4
             0x00084f52: 00 00:       stw (2rus)      r0, r0[0x0]

<_Bfree>:
             0x00084f54: 00 f0 40 77: entsp (lu6)     0x0
             0x00084f58: 4a 78:       bf (ru6)        r1, 0xa <.label815>
             0x00084f5a: 05 08:       ldw (2rus)      r0, r1[0x1]
             0x00084f5c: ee 17:       get (0r)        r11, id
             0x00084f5e: 03 f0 b4 60: ldaw (lru6)     r2, dp[0xf4]
             0x00084f62: bb 4c:       ldw (3r)        r3, r2[r11]
             0x00084f64: 3c 48:       ldw (3r)        r3, r3[r0]
             0x00084f66: 34 00:       stw (2rus)      r3, r1[0x0]
             0x00084f68: ab 4c:       ldw (3r)        r2, r2[r11]
             0x00084f6a: 18 f8 ec 07: stw (l3r)       r1, r2[r0]
.label815    0x00084f6e: c0 77:       retsp (u6)      0x0

<__multadd>:
             0x00084f70: 00 f0 46 77: entsp (lu6)     0x6
             0x00084f74: 05 f9 ec f7: std (l2rus)     r5, r4, sp[0x1]
             0x00084f78: 2e f9 ec f7: std (l2rus)     r7, r6, sp[0x2]
             0x00084f7c: 4c 90:       add (2rus)      r4, r3, 0x0
             0x00084f7e: 54 90:       add (2rus)      r5, r1, 0x0
             0x00084f80: 74 0b:       ldw (2rus)      r7, r5[0x4]
             0x00084f82: 00 68:       ldc (ru6)       r0, 0x0
.label816    0x00084f84: d4 f8 ec 1f: ldaw (l3r)      r1, r5[r0]
             0x00084f88: 75 0a:       ldw (2rus)      r3, r1[0x5]
             0x00084f8a: 3d ad:       shr (2rus)      r11, r3, 0x10
             0x00084f8c: 3d 47:       zext (rus)      r3, 0x10
             0x00084f8e: 3e f8 ec 3f: mul (l3r)       r3, r3, r2
             0x00084f92: 7c 12:       add (3r)        r3, r3, r4
             0x00084f94: 3e fa ec 3f: mul (l3r)       r11, r11, r2
             0x00084f98: cd ac:       shr (2rus)      r4, r3, 0x10
             0x00084f9a: f3 15:       add (3r)        r11, r4, r11
             0x00084f9c: 4d ae:       shr (2rus)      r4, r11, 0x10
             0x00084f9e: bd a6:       shl (2rus)      r11, r11, 0x10
             0x00084fa0: 3d 47:       zext (rus)      r3, 0x10
             0x00084fa2: bf 41:       or (3r)         r3, r11, r3
             0x00084fa4: 75 02:       stw (2rus)      r3, r1[0x5]
             0x00084fa6: 01 90:       add (2rus)      r0, r0, 0x1
             0x00084fa8: 53 c2:       lss (3r)        r1, r0, r7
             0x00084faa: 54 74:       bt (ru6)        r1, -0x14 <.label816>
             0x00084fac: 05 79:       bf (ru6)        r4, 0x5 <.label817>
             0x00084fae: c6 08:       ldw (2rus)      r0, r5[0x2]
             0x00084fb0: cc c0:       lss (3r)        r0, r7, r0
             0x00084fb2: 04 78:       bf (ru6)        r0, 0x4 <.label818>
             0x00084fb4: 24 91:       add (2rus)      r6, r5, 0x0
             0x00084fb6: 14 73:       bu (u6)         0x14 <.label819>
.label817    0x00084fb8: 24 91:       add (2rus)      r6, r5, 0x0
             0x00084fba: 17 73:       bu (u6)         0x17 <.label820>
.label818    0x00084fbc: c5 08:       ldw (2rus)      r0, r5[0x1]
             0x00084fbe: 11 90:       add (2rus)      r1, r0, 0x1
             0x00084fc0: 00 f0 64 d4: bl (lu10)       -0x64 <_Balloc>
             0x00084fc4: 60 90:       add (2rus)      r6, r0, 0x0
             0x00084fc6: cb f8 ec 9f: ldaw (l2rus)    r0, r6[0x3]
             0x00084fca: d7 f8 ec 9f: ldaw (l2rus)    r1, r5[0x3]
             0x00084fce: 24 0b:       ldw (2rus)      r2, r5[0x4]
             0x00084fd0: c8 68:       ldc (ru6)       r3, 0x8
             0x00084fd2: 2e f8 ec 1f: ldaw (l3r)      r2, r3[r2]
             0x00084fd6: 08 f0 51 d5: bl (lu10)       -0x2151 <memcpy> <__memcpy_4>
             0x00084fda: d4 90:       add (2rus)      r1, r5, 0x0
             0x00084fdc: 00 f0 46 d4: bl (lu10)       -0x46 <_Bfree>
.label819    0x00084fe0: cd 90:       add (2rus)      r0, r7, 0x1
             0x00084fe2: 1b fb ec 1f: ldaw (l3r)      r1, r6[r7]
             0x00084fe6: 85 02:       stw (2rus)      r4, r1[0x5]
             0x00084fe8: 08 03:       stw (2rus)      r0, r6[0x4]
.label820    0x00084fea: c8 90:       add (2rus)      r0, r6, 0x0
             0x00084fec: 2e f9 ec ef: ldd (l2rus)     r7, r6, sp[0x2]
             0x00084ff0: 05 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x1]
             0x00084ff4: c6 77:       retsp (u6)      0x6
             0x00084ff6: 00 00:       stw (2rus)      r0, r0[0x0]

<__hi0bits>:
             0x00084ff8: 00 f0 40 77: entsp (lu6)     0x0
             0x00084ffc: 10 90:       add (2rus)      r1, r0, 0x0
             0x00084ffe: 85 ac:       shr (2rus)      r0, r1, 0x10
             0x00085000: 01 70:       bt (ru6)        r0, 0x1 <.label821>
             0x00085002: 95 a4:       shl (2rus)      r1, r1, 0x10
.label821    0x00085004: 02 70:       bt (ru6)        r0, 0x2 <.label822>
             0x00085006: 10 68:       ldc (ru6)       r0, 0x10
             0x00085008: 01 73:       bu (u6)         0x1 <.label823>
.label822    0x0008500a: 00 68:       ldc (ru6)       r0, 0x0
.label823    0x0008500c: a6 ac:       shr (2rus)      r2, r1, 0x18
             0x0008500e: 83 70:       bt (ru6)        r2, 0x3 <.label824>
             0x00085010: 88 68:       ldc (ru6)       r2, 0x8
             0x00085012: 02 40:       or (3r)         r0, r0, r2
             0x00085014: 94 a4:       shl (2rus)      r1, r1, 0x8
.label824    0x00085016: 9c 68:       ldc (ru6)       r2, 0x1c
             0x00085018: 26 28:       shr (3r)        r2, r1, r2
             0x0008501a: 82 70:       bt (ru6)        r2, 0x2 <.label825>
             0x0008501c: 40 92:       add (2rus)      r0, r0, 0x4
             0x0008501e: 54 a2:       shl (2rus)      r1, r1, 0x4
.label825    0x00085020: 9e 68:       ldc (ru6)       r2, 0x1e
             0x00085022: 26 28:       shr (3r)        r2, r1, r2
             0x00085024: 82 70:       bt (ru6)        r2, 0x2 <.label826>
             0x00085026: 02 90:       add (2rus)      r0, r0, 0x2
             0x00085028: 16 a0:       shl (2rus)      r1, r1, 0x2
.label826    0x0008502a: 24 f8 ec 97: ashr (l2rus)    r2, r1, 0x20
             0x0008502e: 87 70:       bt (ru6)        r2, 0x7 <.label827>
             0x00085030: 02 f0 a5 6c: ldw (lru6)      r2, cp[0xa5]
             0x00085034: 16 38:       and (3r)        r1, r1, r2
             0x00085036: 42 78:       bf (ru6)        r1, 0x2 <.label828>
             0x00085038: 01 90:       add (2rus)      r0, r0, 0x1
             0x0008503a: 01 73:       bu (u6)         0x1 <.label827>
.label828    0x0008503c: 20 68:       ldc (ru6)       r0, 0x20
.label827    0x0008503e: c0 77:       retsp (u6)      0x0

<__lo0bits>:
             0x00085040: 00 f0 40 77: entsp (lu6)     0x0
             0x00085044: 20 08:       ldw (2rus)      r2, r0[0x0]
             0x00085046: 18 90:       add (2rus)      r1, r2, 0x0
             0x00085048: d7 46:       zext (rus)      r1, 0x3
             0x0008504a: 45 78:       bf (ru6)        r1, 0x5 <.label829>
             0x0008504c: 18 90:       add (2rus)      r1, r2, 0x0
             0x0008504e: d5 46:       zext (rus)      r1, 0x1
             0x00085050: 5f 78:       bf (ru6)        r1, 0x1f <.label830>
             0x00085052: 40 68:       ldc (ru6)       r1, 0x0
             0x00085054: 26 73:       bu (u6)         0x26 <.label831>
.label829    0x00085056: 38 90:       add (2rus)      r3, r2, 0x0
             0x00085058: 3d 47:       zext (rus)      r3, 0x10
             0x0008505a: 1c b0:       eq (2rus)       r1, r3, 0x0
             0x0008505c: c1 70:       bt (ru6)        r3, 0x1 <.label832>
             0x0008505e: a9 ac:       shr (2rus)      r2, r2, 0x10
.label832    0x00085060: 54 a2:       shl (2rus)      r1, r1, 0x4
             0x00085062: 38 90:       add (2rus)      r3, r2, 0x0
             0x00085064: 3c 47:       zext (rus)      r3, 0x8
             0x00085066: c3 70:       bt (ru6)        r3, 0x3 <.label833>
             0x00085068: c8 68:       ldc (ru6)       r3, 0x8
             0x0008506a: 17 40:       or (3r)         r1, r1, r3
             0x0008506c: a8 ac:       shr (2rus)      r2, r2, 0x8
.label833    0x0008506e: 38 90:       add (2rus)      r3, r2, 0x0
             0x00085070: 9c 47:       zext (rus)      r3, 0x4
             0x00085072: c2 70:       bt (ru6)        r3, 0x2 <.label834>
             0x00085074: 54 92:       add (2rus)      r1, r1, 0x4
             0x00085076: 68 aa:       shr (2rus)      r2, r2, 0x4
.label834    0x00085078: 38 90:       add (2rus)      r3, r2, 0x0
             0x0008507a: de 46:       zext (rus)      r3, 0x2
             0x0008507c: c2 70:       bt (ru6)        r3, 0x2 <.label835>
             0x0008507e: 16 90:       add (2rus)      r1, r1, 0x2
             0x00085080: 2a a8:       shr (2rus)      r2, r2, 0x2
.label835    0x00085082: 38 90:       add (2rus)      r3, r2, 0x0
             0x00085084: dd 46:       zext (rus)      r3, 0x1
             0x00085086: cc 70:       bt (ru6)        r3, 0xc <.label836>
             0x00085088: 29 a8:       shr (2rus)      r2, r2, 0x1
             0x0008508a: 8d 78:       bf (ru6)        r2, 0xd <.label837>
             0x0008508c: 15 90:       add (2rus)      r1, r1, 0x1
             0x0008508e: 08 73:       bu (u6)         0x8 <.label836>
.label830    0x00085090: 42 68:       ldc (ru6)       r1, 0x2
             0x00085092: 39 38:       and (3r)        r3, r2, r1
             0x00085094: c4 78:       bf (ru6)        r3, 0x4 <.label838>
             0x00085096: 19 a8:       shr (2rus)      r1, r2, 0x1
             0x00085098: 10 00:       stw (2rus)      r1, r0[0x0]
             0x0008509a: d5 a6:       mkmsk (rus)     r1, 0x1
             0x0008509c: 02 73:       bu (u6)         0x2 <.label831>
.label838    0x0008509e: 2a a8:       shr (2rus)      r2, r2, 0x2
.label836    0x000850a0: 20 00:       stw (2rus)      r2, r0[0x0]
.label831    0x000850a2: 04 90:       add (2rus)      r0, r1, 0x0
             0x000850a4: c0 77:       retsp (u6)      0x0
.label837    0x000850a6: 60 68:       ldc (ru6)       r1, 0x20
             0x000850a8: 04 77:       bu (u6)         -0x4 <.label831>
             0x000850aa: 00 00:       stw (2rus)      r0, r0[0x0]

<__i2b>:
             0x000850ac: 00 f0 44 77: entsp (lu6)     0x4
             0x000850b0: 05 f9 ec f7: std (l2rus)     r5, r4, sp[0x1]
             0x000850b4: 44 90:       add (2rus)      r4, r1, 0x0
             0x000850b6: 15 a7:       mkmsk (rus)     r5, 0x1
             0x000850b8: d4 90:       add (2rus)      r1, r5, 0x0
             0x000850ba: 00 f0 e1 d4: bl (lu10)       -0xe1 <_Balloc>
             0x000850be: 81 02:       stw (2rus)      r4, r0[0x5]
             0x000850c0: 90 02:       stw (2rus)      r5, r0[0x4]
             0x000850c2: 05 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x1]
             0x000850c6: c4 77:       retsp (u6)      0x4

<__multiply>:
             0x000850c8: 00 f0 54 77: entsp (lu6)     0x14
             0x000850cc: 46 fb ec f7: std (l2rus)     r5, r4, sp[0x6]
             0x000850d0: 6f fb ec f7: std (l2rus)     r7, r6, sp[0x7]
             0x000850d4: 84 fe ec f7: std (l2rus)     r9, r8, sp[0x8]
             0x000850d8: 92 56:       stw (ru6)       r10, sp[0x12]
             0x000850da: 48 90:       add (2rus)      r4, r2, 0x0
             0x000850dc: 44 0a:       ldw (2rus)      r0, r1[0x4]
             0x000850de: 20 0b:       ldw (2rus)      r2, r4[0x4]
             0x000850e0: 02 c0:       lss (3r)        r0, r0, r2
             0x000850e2: 64 90:       add (2rus)      r6, r1, 0x0
             0x000850e4: 01 70:       bt (ru6)        r0, 0x1 <.label839>
             0x000850e6: 20 91:       add (2rus)      r6, r4, 0x0
.label839    0x000850e8: 01 70:       bt (ru6)        r0, 0x1 <.label840>
             0x000850ea: 44 90:       add (2rus)      r4, r1, 0x0
.label840    0x000850ec: c1 08:       ldw (2rus)      r0, r4[0x1]
             0x000850ee: 10 0b:       ldw (2rus)      r1, r4[0x4]
             0x000850f0: 46 54:       stw (ru6)       r1, sp[0x6]
             0x000850f2: 78 0b:       ldw (2rus)      r7, r6[0x4]
             0x000850f4: 1d 11:       add (3r)        r5, r7, r1
             0x000850f6: d2 08:       ldw (2rus)      r1, r4[0x2]
             0x000850f8: 55 c2:       lss (3r)        r1, r1, r5
             0x000850fa: 14 10:       add (3r)        r1, r1, r0
             0x000850fc: 00 f0 02 d5: bl (lu10)       -0x102 <_Balloc>
             0x00085100: 05 54:       stw (ru6)       r0, sp[0x5]
             0x00085102: c1 fa ec 9f: ldaw (l2rus)    r8, r0[0x5]
             0x00085106: dd a6:       mkmsk (rus)     r3, 0x1
             0x00085108: c7 c0:       lss (3r)        r0, r5, r3
             0x0008510a: 02 54:       stw (ru6)       r0, sp[0x2]
             0x0008510c: 08 70:       bt (ru6)        r0, 0x8 <.label841>
             0x0008510e: c1 fb ec 1f: ldaw (l3r)      r0, r8[r5]
             0x00085112: 40 68:       ldc (ru6)       r1, 0x0
             0x00085114: a0 91:       add (2rus)      r2, r8, 0x0
.label842    0x00085116: 18 00:       stw (2rus)      r1, r2[0x0]
             0x00085118: 68 92:       add (2rus)      r2, r2, 0x4
             0x0008511a: b8 c8:       lsu (3r)        r11, r2, r0
             0x0008511c: c4 76:       bt (ru6)        r11, -0x4 <.label842>
.label841    0x0008511e: 43 55:       stw (ru6)       r5, sp[0x3]
             0x00085120: cf c0:       lss (3r)        r0, r7, r3
             0x00085122: c4 55:       stw (ru6)       r7, sp[0x4]
             0x00085124: b0 91:       add (2rus)      r3, r8, 0x0
             0x00085126: 01 f0 3f 70: bt (lru6)       r0, 0x7f <.label843>
             0x0008512a: 01 fb ec 9f: ldaw (l2rus)    r0, r4[0x5]
             0x0008512e: 07 54:       stw (ru6)       r0, sp[0x7]
             0x00085130: 04 5c:       ldw (ru6)       r0, sp[0x4]
             0x00085132: d8 f8 ec 1f: ldaw (l3r)      r1, r6[r0]
             0x00085136: 06 5c:       ldw (ru6)       r0, sp[0x6]
             0x00085138: c0 f8 ec 1f: ldaw (l3r)      r0, r4[r0]
             0x0008513c: 41 fa ec 9f: ldaw (l2rus)    r0, r0[0x5]
             0x00085140: 22 fb ec 9f: ldaw (l2rus)    r2, r4[0x6]
             0x00085144: b8 c8:       lsu (3r)        r11, r2, r0
             0x00085146: c1 72:       bt (ru6)        r11, 0x1 <.label844>
             0x00085148: 08 90:       add (2rus)      r0, r2, 0x0
.label844    0x0008514a: 86 5c:       ldw (ru6)       r2, sp[0x6]
             0x0008514c: c7 5e:       ldw (ru6)       r11, sp[0x7]
             0x0008514e: 0e fa ec 1f: ldaw (l3r)      r8, r11[r2]
             0x00085152: 55 fa ec 9f: ldaw (l2rus)    r1, r1[0x5]
             0x00085156: 48 54:       stw (ru6)       r1, sp[0x8]
             0x00085158: 29 fb ec 9f: ldaw (l2rus)    r2, r6[0x5]
             0x0008515c: 03 f0 4f 6c: ldw (lru6)      r1, cp[0xcf]
             0x00085160: 54 1a:       sub (3r)        r1, r1, r4
             0x00085162: 01 10:       add (3r)        r0, r0, r1
             0x00085164: 03 f0 53 6c: ldw (lru6)      r1, cp[0xd3]
             0x00085168: 01 38:       and (3r)        r0, r0, r1
             0x0008516a: 45 5c:       ldw (ru6)       r1, sp[0x5]
             0x0008516c: 04 10:       add (3r)        r0, r1, r0
             0x0008516e: 42 fa ec 9f: ldaw (l2rus)    r0, r0[0x6]
             0x00085172: 0b 54:       stw (ru6)       r0, sp[0xb]
             0x00085174: 41 fb ec 9f: ldaw (l2rus)    r4, r4[0x5]
             0x00085178: 40 6a:       ldc (ru6)       r9, 0x0
.label849    0x0008517a: 8a 54:       stw (ru6)       r2, sp[0xa]
             0x0008517c: 08 08:       ldw (2rus)      r0, r2[0x0]
             0x0008517e: 70 90:       add (2rus)      r7, r0, 0x0
             0x00085180: 7d 47:       zext (rus)      r7, 0x10
             0x00085182: e4 91:       add (2rus)      r6, r9, 0x0
             0x00085184: d4 91:       add (2rus)      r5, r9, 0x0
             0x00085186: de 79:       bf (ru6)        r7, 0x1e <.label845>
.label846    0x00085188: 02 13:       add (3r)        r0, r4, r6
             0x0008518a: 00 08:       ldw (2rus)      r0, r0[0x0]
             0x0008518c: 91 ac:       shr (2rus)      r1, r0, 0x10
             0x0008518e: 31 47:       zext (rus)      r0, 0x10
             0x00085190: 43 fa ec 3f: mul (l3r)       r0, r0, r7
             0x00085194: fe 12:       add (3r)        r11, r3, r6
             0x00085196: ac 09:       ldw (2rus)      r2, r11[0x0]
             0x00085198: 29 ad:       shr (2rus)      r10, r2, 0x10
             0x0008519a: 39 47:       zext (rus)      r2, 0x10
             0x0008519c: 69 12:       add (3r)        r2, r2, r5
             0x0008519e: 08 10:       add (3r)        r0, r2, r0
             0x000851a0: a1 ac:       shr (2rus)      r2, r0, 0x10
             0x000851a2: 57 fa ec 3f: mul (l3r)       r1, r1, r7
             0x000851a6: 96 14:       add (3r)        r1, r1, r10
             0x000851a8: 16 10:       add (3r)        r1, r1, r2
             0x000851aa: d5 ac:       shr (2rus)      r5, r1, 0x10
             0x000851ac: 95 a4:       shl (2rus)      r1, r1, 0x10
             0x000851ae: 31 47:       zext (rus)      r0, 0x10
             0x000851b0: 04 40:       or (3r)         r0, r1, r0
             0x000851b2: 8c 01:       stw (2rus)      r0, r11[0x0]
             0x000851b4: 68 93:       add (2rus)      r6, r6, 0x4
             0x000851b6: 02 13:       add (3r)        r0, r4, r6
             0x000851b8: 80 cc:       lsu (3r)        r0, r0, r8
             0x000851ba: 1a 74:       bt (ru6)        r0, -0x1a <.label846>
             0x000851bc: 0b 5c:       ldw (ru6)       r0, sp[0xb]
             0x000851be: 50 00:       stw (2rus)      r5, r0[0x0]
             0x000851c0: 0a 5c:       ldw (ru6)       r0, sp[0xa]
             0x000851c2: 00 08:       ldw (2rus)      r0, r0[0x0]
.label845    0x000851c4: f1 ac:       shr (2rus)      r7, r0, 0x10
             0x000851c6: e6 79:       bf (ru6)        r7, 0x26 <.label847>
             0x000851c8: bc 08:       ldw (2rus)      r11, r3[0x0]
             0x000851ca: 94 91:       add (2rus)      r1, r9, 0x0
             0x000851cc: 07 5c:       ldw (ru6)       r0, sp[0x7]
             0x000851ce: 5c 90:       add (2rus)      r5, r3, 0x0
             0x000851d0: c9 54:       stw (ru6)       r3, sp[0x9]
             0x000851d2: ec 91:       add (2rus)      r6, r11, 0x0
.label848    0x000851d4: a1 84:       ld16s (3r)      r2, r0[r9]
             0x000851d6: 39 47:       zext (rus)      r2, 0x10
             0x000851d8: 6b fa ec 3f: mul (l3r)       r2, r2, r7
             0x000851dc: bd ae:       shr (2rus)      r11, r11, 0x10
             0x000851de: 9d 11:       add (3r)        r1, r11, r1
             0x000851e0: 16 10:       add (3r)        r1, r1, r2
             0x000851e2: a5 ac:       shr (2rus)      r2, r1, 0x10
             0x000851e4: 95 a4:       shl (2rus)      r1, r1, 0x10
             0x000851e6: 79 47:       zext (rus)      r6, 0x10
             0x000851e8: 56 42:       or (3r)         r1, r1, r6
             0x000851ea: a4 93:       add (2rus)      r10, r5, 0x4
             0x000851ec: d4 00:       stw (2rus)      r1, r5[0x0]
             0x000851ee: 70 92:       add (2rus)      r3, r0, 0x4
             0x000851f0: 02 90:       add (2rus)      r0, r0, 0x2
             0x000851f2: 81 84:       ld16s (3r)      r0, r0[r9]
             0x000851f4: 31 47:       zext (rus)      r0, 0x10
             0x000851f6: 43 fa ec 3f: mul (l3r)       r0, r0, r7
             0x000851fa: 75 09:       ldw (2rus)      r11, r5[0x1]
             0x000851fc: 9c 91:       add (2rus)      r1, r11, 0x0
             0x000851fe: 35 47:       zext (rus)      r1, 0x10
             0x00085200: 01 10:       add (3r)        r0, r0, r1
             0x00085202: 62 10:       add (3r)        r6, r0, r2
             0x00085204: 59 ad:       shr (2rus)      r1, r6, 0x10
             0x00085206: ac cc:       lsu (3r)        r2, r3, r8
             0x00085208: 0c 90:       add (2rus)      r0, r3, 0x0
             0x0008520a: d8 91:       add (2rus)      r5, r10, 0x0
             0x0008520c: 9d 74:       bt (ru6)        r2, -0x1d <.label848>
             0x0008520e: 0b 5c:       ldw (ru6)       r0, sp[0xb]
             0x00085210: 60 00:       stw (2rus)      r6, r0[0x0]
             0x00085212: c9 5c:       ldw (ru6)       r3, sp[0x9]
.label847    0x00085214: 8a 5c:       ldw (ru6)       r2, sp[0xa]
             0x00085216: 68 92:       add (2rus)      r2, r2, 0x4
             0x00085218: 7c 92:       add (2rus)      r3, r3, 0x4
             0x0008521a: 0b 5c:       ldw (ru6)       r0, sp[0xb]
             0x0008521c: 40 92:       add (2rus)      r0, r0, 0x4
             0x0008521e: 0b 54:       stw (ru6)       r0, sp[0xb]
             0x00085220: 08 5c:       ldw (ru6)       r0, sp[0x8]
             0x00085222: 08 c8:       lsu (3r)        r0, r2, r0
             0x00085224: 01 f0 17 74: bt (lru6)       r0, -0x57 <.label849>
.label843    0x00085228: 05 5c:       ldw (ru6)       r0, sp[0x5]
             0x0008522a: 43 5c:       ldw (ru6)       r1, sp[0x3]
             0x0008522c: 82 5c:       ldw (ru6)       r2, sp[0x2]
             0x0008522e: 8f 70:       bt (ru6)        r2, 0xf <.label850>
             0x00085230: 46 5c:       ldw (ru6)       r1, sp[0x6]
             0x00085232: 84 5c:       ldw (ru6)       r2, sp[0x4]
             0x00085234: 19 10:       add (3r)        r1, r2, r1
             0x00085236: 74 92:       add (2rus)      r3, r1, 0x4
             0x00085238: 5d a7:       mkmsk (rus)     r11, 0x1
.label852    0x0008523a: 13 48:       ldw (3r)        r1, r0[r3]
             0x0008523c: 47 70:       bt (ru6)        r1, 0x7 <.label851>
             0x0008523e: 1d 98:       sub (2rus)      r1, r3, 0x1
             0x00085240: 6d 9a:       sub (2rus)      r2, r3, 0x5
             0x00085242: ab c4:       lss (3r)        r2, r2, r11
             0x00085244: 34 90:       add (2rus)      r3, r1, 0x0
             0x00085246: 87 7c:       bf (ru6)        r2, -0x7 <.label852>
             0x00085248: 54 9a:       sub (2rus)      r1, r1, 0x4
             0x0008524a: 01 73:       bu (u6)         0x1 <.label850>
.label851    0x0008524c: 5c 9a:       sub (2rus)      r1, r3, 0x4
.label850    0x0008524e: 50 02:       stw (2rus)      r1, r0[0x4]
             0x00085250: 92 5e:       ldw (ru6)       r10, sp[0x12]
             0x00085252: 84 fe ec ef: ldd (l2rus)     r9, r8, sp[0x8]
             0x00085256: 6f fb ec ef: ldd (l2rus)     r7, r6, sp[0x7]
             0x0008525a: 46 fb ec ef: ldd (l2rus)     r5, r4, sp[0x6]
             0x0008525e: d4 77:       retsp (u6)      0x14

<__pow5mult>:
             0x00085260: 00 f0 46 77: entsp (lu6)     0x6
             0x00085264: 05 f9 ec f7: std (l2rus)     r5, r4, sp[0x1]
             0x00085268: 2e f9 ec f7: std (l2rus)     r7, r6, sp[0x2]
             0x0008526c: 58 90:       add (2rus)      r5, r2, 0x0
             0x0008526e: 44 90:       add (2rus)      r4, r1, 0x0
             0x00085270: c4 90:       add (2rus)      r0, r5, 0x0
             0x00085272: d2 46:       zext (rus)      r0, 0x2
             0x00085274: 0b 78:       bf (ru6)        r0, 0xb <.label853>
             0x00085276: 02 f0 54 7f: ldaw (lu6)      r11, cp[0x94]
             0x0008527a: 8c f9 ec 1f: ldaw (l3r)      r0, r11[r0]
             0x0008527e: 40 9a:       sub (2rus)      r0, r0, 0x4
             0x00085280: 20 08:       ldw (2rus)      r2, r0[0x0]
             0x00085282: c0 68:       ldc (ru6)       r3, 0x0
             0x00085284: d0 90:       add (2rus)      r1, r4, 0x0
             0x00085286: 00 f0 8d d5: bl (lu10)       -0x18d <__multadd>
             0x0008528a: 40 90:       add (2rus)      r4, r0, 0x0
.label853    0x0008528c: 36 f9 ec 97: ashr (l2rus)    r7, r5, 0x2
             0x00085290: ea 79:       bf (ru6)        r7, 0x2a <.label854>
             0x00085292: ee 17:       get (0r)        r11, id
             0x00085294: 03 f0 bc 61: ldaw (lru6)     r6, dp[0xfc]
             0x00085298: 4b 4d:       ldw (3r)        r0, r6[r11]
             0x0008529a: 0d 70:       bt (ru6)        r0, 0xd <.label855>
             0x0008529c: 15 a7:       mkmsk (rus)     r5, 0x1
             0x0008529e: d4 90:       add (2rus)      r1, r5, 0x0
             0x000852a0: 00 f0 d4 d5: bl (lu10)       -0x1d4 <_Balloc>
             0x000852a4: 09 f0 71 68: ldc (lru6)      r1, 0x271
             0x000852a8: 51 02:       stw (2rus)      r1, r0[0x5]
             0x000852aa: 90 02:       stw (2rus)      r5, r0[0x4]
             0x000852ac: ee 17:       get (0r)        r11, id
             0x000852ae: 4b fd ec 07: stw (l3r)       r0, r6[r11]
.label857    0x000852b2: 40 68:       ldc (ru6)       r1, 0x0
             0x000852b4: 10 00:       stw (2rus)      r1, r0[0x0]
.label855    0x000852b6: 50 90:       add (2rus)      r5, r0, 0x0
             0x000852b8: cc 90:       add (2rus)      r0, r7, 0x0
             0x000852ba: d1 46:       zext (rus)      r0, 0x1
             0x000852bc: 09 78:       bf (ru6)        r0, 0x9 <.label856>
             0x000852be: d0 90:       add (2rus)      r1, r4, 0x0
             0x000852c0: e4 90:       add (2rus)      r2, r5, 0x0
             0x000852c2: 00 f0 ff d4: bl (lu10)       -0xff <__multiply>
             0x000852c6: 60 90:       add (2rus)      r6, r0, 0x0
             0x000852c8: d0 90:       add (2rus)      r1, r4, 0x0
             0x000852ca: 00 f0 bd d5: bl (lu10)       -0x1bd <_Bfree>
             0x000852ce: 08 91:       add (2rus)      r4, r6, 0x0
.label856    0x000852d0: 3d f9 ec 97: ashr (l2rus)    r7, r7, 0x1
             0x000852d4: c8 79:       bf (ru6)        r7, 0x8 <.label854>
             0x000852d6: c4 08:       ldw (2rus)      r0, r5[0x0]
             0x000852d8: 12 74:       bt (ru6)        r0, -0x12 <.label855>
             0x000852da: d4 90:       add (2rus)      r1, r5, 0x0
             0x000852dc: e4 90:       add (2rus)      r2, r5, 0x0
             0x000852de: 00 f0 0d d5: bl (lu10)       -0x10d <__multiply>
             0x000852e2: c4 00:       stw (2rus)      r0, r5[0x0]
             0x000852e4: 1a 77:       bu (u6)         -0x1a <.label857>
.label854    0x000852e6: c0 90:       add (2rus)      r0, r4, 0x0
             0x000852e8: 2e f9 ec ef: ldd (l2rus)     r7, r6, sp[0x2]
             0x000852ec: 05 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x1]
             0x000852f0: c6 77:       retsp (u6)      0x6
             0x000852f2: 00 00:       stw (2rus)      r0, r0[0x0]

<__lshift>:
             0x000852f4: 00 f0 4c 77: entsp (lu6)     0xc
             0x000852f8: 06 f9 ec f7: std (l2rus)     r5, r4, sp[0x2]
             0x000852fc: 2f f9 ec f7: std (l2rus)     r7, r6, sp[0x3]
             0x00085300: 44 fc ec f7: std (l2rus)     r9, r8, sp[0x4]
             0x00085304: 8a 56:       stw (ru6)       r10, sp[0xa]
             0x00085306: 68 90:       add (2rus)      r6, r2, 0x0
             0x00085308: 44 90:       add (2rus)      r4, r1, 0x0
             0x0008530a: 89 fb ec 97: ashr (l2rus)    r8, r6, 0x5
             0x0008530e: d1 08:       ldw (2rus)      r1, r4[0x1]
             0x00085310: 00 0b:       ldw (2rus)      r0, r4[0x4]
             0x00085312: f0 14:       add (3r)        r7, r0, r8
             0x00085314: c2 08:       ldw (2rus)      r0, r4[0x2]
             0x00085316: 02 73:       bu (u6)         0x2 <.label858>
.label859    0x00085318: 15 90:       add (2rus)      r1, r1, 0x1
             0x0008531a: 01 a0:       shl (2rus)      r0, r0, 0x1
.label858    0x0008531c: ec c0:       lss (3r)        r2, r7, r0
             0x0008531e: 84 7c:       bf (ru6)        r2, -0x4 <.label859>
             0x00085320: 00 f0 14 d6: bl (lu10)       -0x214 <_Balloc>
             0x00085324: 90 90:       add (2rus)      r9, r0, 0x0
             0x00085326: d5 fb ec 9f: ldaw (l2rus)    r1, r9[0x5]
             0x0008532a: d1 a6:       mkmsk (rus)     r0, 0x1
             0x0008532c: 80 c1:       lss (3r)        r0, r8, r0
             0x0008532e: 0b 70:       bt (ru6)        r0, 0xb <.label860>
             0x00085330: 04 fe ec 1f: ldaw (l3r)      r0, r9[r8]
             0x00085334: 41 fa ec 9f: ldaw (l2rus)    r0, r0[0x5]
             0x00085338: 80 68:       ldc (ru6)       r2, 0x0
.label861    0x0008533a: 74 92:       add (2rus)      r3, r1, 0x4
             0x0008533c: 24 00:       stw (2rus)      r2, r1[0x0]
             0x0008533e: 01 9a:       sub (2rus)      r8, r8, 0x1
             0x00085340: 1c 90:       add (2rus)      r1, r3, 0x0
             0x00085342: 05 76:       bt (ru6)        r8, -0x5 <.label861>
             0x00085344: 01 73:       bu (u6)         0x1 <.label862>
.label860    0x00085346: 04 90:       add (2rus)      r0, r1, 0x0
.label862    0x00085348: 4d 91:       add (2rus)      r8, r7, 0x1
             0x0008534a: 31 fb ec 9f: ldaw (l2rus)    r3, r4[0x5]
             0x0008534e: b0 0b:       ldw (2rus)      r11, r4[0x4]
             0x00085350: af fc ec 1f: ldaw (l3r)      r2, r3[r11]
             0x00085354: d9 47:       zext (rus)      r6, 0x5
             0x00085356: a8 79:       bf (ru6)        r6, 0x28 <.label863>
             0x00085358: 01 56:       stw (ru6)       r8, sp[0x1]
             0x0008535a: 43 56:       stw (ru6)       r9, sp[0x3]
             0x0008535c: c3 fd ec 1f: ldaw (l3r)      r8, r4[r11]
             0x00085360: e0 6a:       ldc (ru6)       r11, 0x20
             0x00085362: 41 fc ec 9f: ldaw (l2rus)    r8, r8[0x5]
             0x00085366: 92 fb ec 9f: ldaw (l2rus)    r9, r4[0x6]
             0x0008536a: a4 ce:       lsu (3r)        r10, r9, r8
             0x0008536c: 81 72:       bt (ru6)        r10, 0x1 <.label864>
             0x0008536e: 04 92:       add (2rus)      r8, r9, 0x0
.label864    0x00085370: 7e 1c:       sub (3r)        r11, r11, r6
             0x00085372: 03 f0 4f 6e: ldw (lru6)      r9, cp[0xcf]
             0x00085376: 54 1c:       sub (3r)        r9, r9, r4
             0x00085378: 81 16:       add (3r)        r8, r8, r9
             0x0008537a: 02 aa:       shr (2rus)      r8, r8, 0x2
             0x0008537c: 91 91:       add (2rus)      r1, r8, 0x1
             0x0008537e: 42 54:       stw (ru6)       r1, sp[0x2]
             0x00085380: 40 6a:       ldc (ru6)       r9, 0x0
             0x00085382: a0 90:       add (2rus)      r10, r0, 0x0
.label865    0x00085384: 1c 08:       ldw (2rus)      r1, r3[0x0]
             0x00085386: 56 22:       shl (3r)        r1, r1, r6
             0x00085388: 95 44:       or (3r)         r1, r1, r9
             0x0008538a: 48 94:       add (2rus)      r8, r10, 0x4
             0x0008538c: 98 01:       stw (2rus)      r1, r10[0x0]
             0x0008538e: 5c 92:       add (2rus)      r1, r3, 0x4
             0x00085390: 3c 08:       ldw (2rus)      r3, r3[0x0]
             0x00085392: 1f 2d:       shr (3r)        r9, r3, r11
             0x00085394: 56 c8:       lsu (3r)        r5, r1, r2
             0x00085396: 34 90:       add (2rus)      r3, r1, 0x0
             0x00085398: 20 92:       add (2rus)      r10, r8, 0x0
             0x0008539a: 4c 75:       bt (ru6)        r5, -0xc <.label865>
             0x0008539c: 42 5c:       ldw (ru6)       r1, sp[0x2]
             0x0008539e: 91 f8 ec 07: stw (l3r)       r9, r0[r1]
             0x000853a2: 4b 72:       bt (ru6)        r9, 0xb <.label866>
             0x000853a4: 01 5e:       ldw (ru6)       r8, sp[0x1]
             0x000853a6: 0a 73:       bu (u6)         0xa <.label867>
.label863    0x000853a8: 5c 92:       add (2rus)      r1, r3, 0x4
             0x000853aa: 3c 08:       ldw (2rus)      r3, r3[0x0]
             0x000853ac: f0 92:       add (2rus)      r11, r0, 0x4
             0x000853ae: 30 00:       stw (2rus)      r3, r0[0x0]
             0x000853b0: 56 c8:       lsu (3r)        r5, r1, r2
             0x000853b2: 34 90:       add (2rus)      r3, r1, 0x0
             0x000853b4: 8c 91:       add (2rus)      r0, r11, 0x0
             0x000853b6: 48 75:       bt (ru6)        r5, -0x8 <.label863>
             0x000853b8: 02 73:       bu (u6)         0x2 <.label868>
.label866    0x000853ba: 4e 91:       add (2rus)      r8, r7, 0x2
.label867    0x000853bc: 43 5e:       ldw (ru6)       r9, sp[0x3]
.label868    0x000853be: 81 99:       sub (2rus)      r0, r8, 0x1
             0x000853c0: c4 03:       stw (2rus)      r0, r9[0x4]
             0x000853c2: d0 90:       add (2rus)      r1, r4, 0x0
             0x000853c4: 00 f0 3a d6: bl (lu10)       -0x23a <_Bfree>
             0x000853c8: 84 91:       add (2rus)      r0, r9, 0x0
             0x000853ca: 8a 5e:       ldw (ru6)       r10, sp[0xa]
             0x000853cc: 44 fc ec ef: ldd (l2rus)     r9, r8, sp[0x4]
             0x000853d0: 2f f9 ec ef: ldd (l2rus)     r7, r6, sp[0x3]
             0x000853d4: 06 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x2]
             0x000853d8: cc 77:       retsp (u6)      0xc
             0x000853da: 00 00:       stw (2rus)      r0, r0[0x0]

<__mcmp>:
             0x000853dc: 00 f0 40 77: entsp (lu6)     0x0
             0x000853e0: 82 77:       extsp (u6)      0x2
             0x000853e2: 04 f9 ec f7: std (l2rus)     r5, r4, sp[0x0]
             0x000853e6: 60 0a:       ldw (2rus)      r2, r0[0x4]
             0x000853e8: 74 0a:       ldw (2rus)      r3, r1[0x4]
             0x000853ea: bb 30:       eq (3r)         r11, r2, r3
             0x000853ec: d2 7a:       bf (ru6)        r11, 0x12 <.label869>
             0x000853ee: 36 f8 ec 1f: ldaw (l3r)      r3, r1[r2]
             0x000853f2: 51 fa ec 9f: ldaw (l2rus)    r1, r0[0x5]
             0x000853f6: 26 f8 ec 1f: ldaw (l3r)      r2, r1[r2]
             0x000853fa: 7c fa ec 9f: ldaw (l2rus)    r3, r3[0x4]
             0x000853fe: 00 68:       ldc (ru6)       r0, 0x0
.label871    0x00085400: 68 9a:       sub (2rus)      r2, r2, 0x4
             0x00085402: b8 08:       ldw (2rus)      r11, r2[0x0]
             0x00085404: 4c 08:       ldw (2rus)      r4, r3[0x0]
             0x00085406: 1c 34:       eq (3r)         r5, r11, r4
             0x00085408: 46 79:       bf (ru6)        r5, 0x6 <.label870>
             0x0008540a: 7c 9a:       sub (2rus)      r3, r3, 0x4
             0x0008540c: b6 c8:       lsu (3r)        r11, r1, r2
             0x0008540e: c8 76:       bt (ru6)        r11, -0x8 <.label871>
             0x00085410: 07 73:       bu (u6)         0x7 <.label872>
.label869    0x00085412: 0b 18:       sub (3r)        r0, r2, r3
             0x00085414: 05 73:       bu (u6)         0x5 <.label872>
.label870    0x00085416: cc cb:       lsu (3r)        r0, r11, r4
             0x00085418: 02 70:       bt (ru6)        r0, 0x2 <.label873>
             0x0008541a: d1 a6:       mkmsk (rus)     r0, 0x1
             0x0008541c: 01 73:       bu (u6)         0x1 <.label872>
.label873    0x0008541e: d0 a6:       mkmsk (rus)     r0, 0x20
.label872    0x00085420: 04 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x0]
             0x00085424: 82 67:       ldaw (ru6)      sp, sp[0x2]
             0x00085426: c0 77:       retsp (u6)      0x0

<__mdiff>:
             0x00085428: 00 f0 4c 77: entsp (lu6)     0xc
             0x0008542c: 06 f9 ec f7: std (l2rus)     r5, r4, sp[0x2]
             0x00085430: 2f f9 ec f7: std (l2rus)     r7, r6, sp[0x3]
             0x00085434: 44 fc ec f7: std (l2rus)     r9, r8, sp[0x4]
             0x00085438: 8a 56:       stw (ru6)       r10, sp[0xa]
             0x0008543a: 48 90:       add (2rus)      r4, r2, 0x0
             0x0008543c: 54 90:       add (2rus)      r5, r1, 0x0
             0x0008543e: c4 90:       add (2rus)      r0, r5, 0x0
             0x00085440: d0 90:       add (2rus)      r1, r4, 0x0
             0x00085442: 00 f0 35 d4: bl (lu10)       -0x35 <__mcmp>
             0x00085446: 01 f0 35 78: bf (lru6)       r0, 0x75 <.label874>
             0x0008544a: 99 a7:       mkmsk (rus)     r2, 0x5
             0x0008544c: 10 f8 ec 97: ashr (l2rus)    r1, r0, 0x20
             0x00085450: 24 91:       add (2rus)      r6, r5, 0x0
             0x00085452: 41 70:       bt (ru6)        r1, 0x1 <.label875>
             0x00085454: 20 91:       add (2rus)      r6, r4, 0x0
.label875    0x00085456: 72 28:       shr (3r)        r7, r0, r2
             0x00085458: 41 70:       bt (ru6)        r1, 0x1 <.label876>
             0x0008545a: 04 91:       add (2rus)      r4, r5, 0x0
.label876    0x0008545c: d1 08:       ldw (2rus)      r1, r4[0x1]
             0x0008545e: 00 f0 b3 d6: bl (lu10)       -0x2b3 <_Balloc>
             0x00085462: 73 00:       stw (2rus)      r7, r0[0x3]
             0x00085464: 18 0b:       ldw (2rus)      r1, r6[0x4]
             0x00085466: e9 f8 ec 1f: ldaw (l3r)      r2, r6[r1]
             0x0008546a: 10 0b:       ldw (2rus)      r1, r4[0x4]
             0x0008546c: 43 54:       stw (ru6)       r1, sp[0x3]
             0x0008546e: c9 fa ec 9f: ldaw (l2rus)    r8, r2[0x5]
             0x00085472: 3a fb ec 9f: ldaw (l2rus)    r3, r6[0x6]
             0x00085476: 3c cd:       lsu (3r)        r11, r3, r8
             0x00085478: a0 91:       add (2rus)      r2, r8, 0x0
             0x0008547a: c1 72:       bt (ru6)        r11, 0x1 <.label877>
             0x0008547c: 2c 90:       add (2rus)      r2, r3, 0x0
.label877    0x0008547e: 03 f0 cf 6c: ldw (lru6)      r3, cp[0xcf]
             0x00085482: 7e 1a:       sub (3r)        r3, r3, r6
             0x00085484: 2b 10:       add (3r)        r2, r2, r3
             0x00085486: 2a a8:       shr (2rus)      r2, r2, 0x2
             0x00085488: 32 f8 ec 1f: ldaw (l3r)      r3, r0[r2]
             0x0008548c: 5e fa ec 9f: ldaw (l2rus)    r1, r3[0x6]
             0x00085490: 41 54:       stw (ru6)       r1, sp[0x1]
             0x00085492: f2 f8 ec 1f: ldaw (l3r)      r3, r4[r2]
             0x00085496: 7e fa ec 9f: ldaw (l2rus)    r3, r3[0x6]
             0x0008549a: 54 6a:       ldc (ru6)       r9, 0x14
             0x0008549c: d6 f9 ec 1f: ldaw (l3r)      r5, r9[r2]
             0x000854a0: 51 12:       add (3r)        r1, r0, r5
             0x000854a2: 42 54:       stw (ru6)       r1, sp[0x2]
             0x000854a4: 51 13:       add (3r)        r5, r4, r5
             0x000854a6: c0 69:       ldc (ru6)       r7, 0x0
.label878    0x000854a8: e1 15:       add (3r)        r10, r4, r9
             0x000854aa: 28 0a:       ldw (2rus)      r10, r10[0x0]
             0x000854ac: 19 ae:       shr (2rus)      r1, r10, 0x10
             0x000854ae: b9 47:       zext (rus)      r10, 0x10
             0x000854b0: e0 90:       add (2rus)      r2, r4, 0x0
             0x000854b2: 89 15:       add (3r)        r4, r6, r9
             0x000854b4: 00 09:       ldw (2rus)      r4, r4[0x0]
             0x000854b6: 30 92:       add (2rus)      r11, r8, 0x0
             0x000854b8: c1 ad:       shr (2rus)      r8, r4, 0x10
             0x000854ba: 71 47:       zext (rus)      r4, 0x10
             0x000854bc: 08 1c:       sub (3r)        r4, r10, r4
             0x000854be: 43 13:       add (3r)        r4, r4, r7
             0x000854c0: b1 fd ec 97: ashr (l2rus)    r7, r4, 0x10
             0x000854c4: 94 1c:       sub (3r)        r1, r1, r8
             0x000854c6: 0c 92:       add (2rus)      r8, r11, 0x0
             0x000854c8: dd 10:       add (3r)        r1, r7, r1
             0x000854ca: f5 fc ec 97: ashr (l2rus)    r7, r1, 0x10
             0x000854ce: 95 a4:       shl (2rus)      r1, r1, 0x10
             0x000854d0: 71 47:       zext (rus)      r4, 0x10
             0x000854d2: 54 42:       or (3r)         r1, r1, r4
             0x000854d4: c1 14:       add (3r)        r4, r0, r9
             0x000854d6: d0 00:       stw (2rus)      r1, r4[0x0]
             0x000854d8: 48 90:       add (2rus)      r4, r2, 0x0
             0x000854da: 54 94:       add (2rus)      r9, r9, 0x4
             0x000854dc: 59 15:       add (3r)        r1, r6, r9
             0x000854de: 94 cc:       lsu (3r)        r1, r1, r8
             0x000854e0: 5d 74:       bt (ru6)        r1, -0x1d <.label878>
             0x000854e2: 83 5e:       ldw (ru6)       r10, sp[0x3]
             0x000854e4: 52 fd ec 1f: ldaw (l3r)      r1, r4[r10]
             0x000854e8: 85 fa ec 9f: ldaw (l2rus)    r4, r1[0x5]
             0x000854ec: 5c ca:       lsu (3r)        r1, r3, r4
             0x000854ee: 82 5c:       ldw (ru6)       r2, sp[0x2]
             0x000854f0: c1 5e:       ldw (ru6)       r11, sp[0x1]
             0x000854f2: 58 78:       bf (ru6)        r1, 0x18 <.label879>
.label880    0x000854f4: 9c 90:       add (2rus)      r9, r3, 0x0
             0x000854f6: 9c 91:       add (2rus)      r1, r11, 0x0
             0x000854f8: 34 0a:       ldw (2rus)      r11, r9[0x0]
             0x000854fa: bc 91:       add (2rus)      r3, r11, 0x0
             0x000854fc: 3d 47:       zext (rus)      r3, 0x10
             0x000854fe: 7f 12:       add (3r)        r3, r3, r7
             0x00085500: ed fc ec 97: ashr (l2rus)    r6, r3, 0x10
             0x00085504: 74 95:       add (2rus)      r3, r5, 0x8
             0x00085506: 5d ae:       shr (2rus)      r5, r11, 0x10
             0x00085508: 59 13:       add (3r)        r5, r6, r5
             0x0008550a: a5 fd ec 97: ashr (l2rus)    r6, r5, 0x10
             0x0008550e: 95 a5:       shl (2rus)      r5, r5, 0x10
             0x00085510: 7f 14:       add (3r)        r11, r11, r7
             0x00085512: bd 47:       zext (rus)      r11, 0x10
             0x00085514: 97 45:       or (3r)         r5, r5, r11
             0x00085516: 38 95:       add (2rus)      r11, r2, 0x8
             0x00085518: 54 00:       stw (2rus)      r5, r1[0x0]
             0x0008551a: cc ca:       lsu (3r)        r8, r3, r4
             0x0008551c: 24 90:       add (2rus)      r2, r1, 0x0
             0x0008551e: d4 91:       add (2rus)      r5, r9, 0x0
             0x00085520: 38 91:       add (2rus)      r7, r6, 0x0
             0x00085522: 18 76:       bt (ru6)        r8, -0x18 <.label880>
.label879    0x00085524: 99 91:       add (2rus)      r1, r10, 0x1
             0x00085526: ec 9b:       sub (2rus)      r2, r11, 0x4
.label881    0x00085528: 38 08:       ldw (2rus)      r3, r2[0x0]
             0x0008552a: 15 98:       sub (2rus)      r1, r1, 0x1
             0x0008552c: 68 9a:       sub (2rus)      r2, r2, 0x4
             0x0008552e: c4 7c:       bf (ru6)        r3, -0x4 <.label881>
             0x00085530: 50 02:       stw (2rus)      r1, r0[0x4]
             0x00085532: 07 73:       bu (u6)         0x7 <.label882>
.label874    0x00085534: 00 69:       ldc (ru6)       r4, 0x0
             0x00085536: d0 90:       add (2rus)      r1, r4, 0x0
             0x00085538: 00 f0 20 d7: bl (lu10)       -0x320 <_Balloc>
             0x0008553c: d5 a6:       mkmsk (rus)     r1, 0x1
             0x0008553e: 50 02:       stw (2rus)      r1, r0[0x4]
             0x00085540: 81 02:       stw (2rus)      r4, r0[0x5]
.label882    0x00085542: 8a 5e:       ldw (ru6)       r10, sp[0xa]
             0x00085544: 44 fc ec ef: ldd (l2rus)     r9, r8, sp[0x4]
             0x00085548: 2f f9 ec ef: ldd (l2rus)     r7, r6, sp[0x3]
             0x0008554c: 06 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x2]
             0x00085550: cc 77:       retsp (u6)      0xc
             0x00085552: 00 00:       stw (2rus)      r0, r0[0x0]

<__d2b>:
             0x00085554: 00 f0 4c 77: entsp (lu6)     0xc
             0x00085558: 06 f9 ec f7: std (l2rus)     r5, r4, sp[0x2]
             0x0008555c: 2f f9 ec f7: std (l2rus)     r7, r6, sp[0x3]
             0x00085560: 44 fc ec f7: std (l2rus)     r9, r8, sp[0x4]
             0x00085564: 8a 56:       stw (ru6)       r10, sp[0xa]
             0x00085566: 5c 90:       add (2rus)      r5, r3, 0x0
             0x00085568: 88 90:       add (2rus)      r8, r2, 0x0
             0x0008556a: 74 90:       add (2rus)      r7, r1, 0x0
             0x0008556c: 19 a7:       mkmsk (rus)     r6, 0x1
             0x0008556e: d8 90:       add (2rus)      r1, r6, 0x0
             0x00085570: 00 f0 3c d7: bl (lu10)       -0x33c <_Balloc>
             0x00085574: 40 90:       add (2rus)      r4, r0, 0x0
             0x00085576: 03 f0 16 6c: ldw (lru6)      r0, cp[0xd6]
             0x0008557a: 20 3a:       and (3r)        r10, r8, r0
             0x0008557c: 14 68:       ldc (ru6)       r0, 0x14
             0x0008557e: 80 29:       shr (3r)        r0, r8, r0
             0x00085580: 1f f0 7f 68: ldc (lru6)      r1, 0x7ff
             0x00085584: 91 38:       and (3r)        r9, r0, r1
             0x00085586: 43 7a:       bf (ru6)        r9, 0x3 <.label883>
             0x00085588: 02 f0 28 6c: ldw (lru6)      r0, cp[0xa8]
             0x0008558c: 28 42:       or (3r)         r10, r10, r0
.label883    0x0008558e: 0d 5e:       ldw (ru6)       r8, sp[0xd]
             0x00085590: 82 56:       stw (ru6)       r10, sp[0x2]
             0x00085592: ce 79:       bf (ru6)        r7, 0xe <.label884>
             0x00085594: c3 55:       stw (ru6)       r7, sp[0x3]
             0x00085596: 03 64:       ldaw (ru6)      r0, sp[0x3]
             0x00085598: 00 f0 ae d6: bl (lu10)       -0x2ae <__lo0bits>
             0x0008559c: 43 5c:       ldw (ru6)       r1, sp[0x3]
             0x0008559e: 12 78:       bf (ru6)        r0, 0x12 <.label885>
             0x000855a0: a0 68:       ldc (ru6)       r2, 0x20
             0x000855a2: 28 18:       sub (3r)        r2, r2, r0
             0x000855a4: aa 21:       shl (3r)        r2, r10, r2
             0x000855a6: 19 40:       or (3r)         r1, r2, r1
             0x000855a8: 11 03:       stw (2rus)      r1, r4[0x5]
             0x000855aa: 28 2a:       shr (3r)        r10, r10, r0
             0x000855ac: 82 56:       stw (ru6)       r10, sp[0x2]
             0x000855ae: 0b 73:       bu (u6)         0xb <.label886>
.label884    0x000855b0: 02 64:       ldaw (ru6)      r0, sp[0x2]
             0x000855b2: 00 f0 bb d6: bl (lu10)       -0x2bb <__lo0bits>
             0x000855b6: 42 5c:       ldw (ru6)       r1, sp[0x2]
             0x000855b8: 11 03:       stw (2rus)      r1, r4[0x5]
             0x000855ba: 19 a7:       mkmsk (rus)     r6, 0x1
             0x000855bc: 60 03:       stw (2rus)      r6, r4[0x4]
             0x000855be: 80 fc ec 9f: ldaw (l2rus)    r0, r0[0x8]
             0x000855c2: 05 73:       bu (u6)         0x5 <.label887>
.label885    0x000855c4: 11 03:       stw (2rus)      r1, r4[0x5]
.label886    0x000855c6: a2 03:       stw (2rus)      r10, r4[0x6]
             0x000855c8: 81 7a:       bf (ru6)        r10, 0x1 <.label888>
             0x000855ca: 82 69:       ldc (ru6)       r6, 0x2
.label888    0x000855cc: 60 03:       stw (2rus)      r6, r4[0x4]
.label887    0x000855ce: 48 7a:       bf (ru6)        r9, 0x8 <.label889>
             0x000855d0: 94 11:       add (3r)        r1, r9, r0
             0x000855d2: 03 f0 8a 6c: ldw (lru6)      r2, cp[0xca]
             0x000855d6: 16 10:       add (3r)        r1, r1, r2
             0x000855d8: d4 00:       stw (2rus)      r1, r5[0x0]
             0x000855da: 75 68:       ldc (ru6)       r1, 0x35
             0x000855dc: 04 18:       sub (3r)        r0, r1, r0
             0x000855de: 0b 73:       bu (u6)         0xb <.label890>
.label889    0x000855e0: 03 f0 4b 6c: ldw (lru6)      r1, cp[0xcb]
             0x000855e4: 01 10:       add (3r)        r0, r0, r1
             0x000855e6: c4 00:       stw (2rus)      r0, r5[0x0]
             0x000855e8: 59 a3:       shl (2rus)      r5, r6, 0x5
             0x000855ea: 02 fb ec 1f: ldaw (l3r)      r0, r4[r6]
             0x000855ee: 40 0a:       ldw (2rus)      r0, r0[0x4]
             0x000855f0: 00 f0 fe d6: bl (lu10)       -0x2fe <__hi0bits>
             0x000855f4: c4 18:       sub (3r)        r0, r5, r0
.label890    0x000855f6: 80 01:       stw (2rus)      r0, r8[0x0]
             0x000855f8: c0 90:       add (2rus)      r0, r4, 0x0
             0x000855fa: 8a 5e:       ldw (ru6)       r10, sp[0xa]
             0x000855fc: 44 fc ec ef: ldd (l2rus)     r9, r8, sp[0x4]
             0x00085600: 2f f9 ec ef: ldd (l2rus)     r7, r6, sp[0x3]
             0x00085604: 06 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x2]
             0x00085608: cc 77:       retsp (u6)      0xc
             0x0008560a: 00 00:       stw (2rus)      r0, r0[0x0]

<__floatunsidf>:
             0x0008560c: 00 f0 44 77: entsp (lu6)     0x4
             0x00085610: 05 f9 ec f7: std (l2rus)     r5, r4, sp[0x1]
             0x00085614: 80 68:       ldc (ru6)       r2, 0x0
             0x00085616: 18 90:       add (2rus)      r1, r2, 0x0
             0x00085618: 16 78:       bf (ru6)        r0, 0x16 <.label891>
             0x0008561a: 04 0f:       clz (2r)        r5, r0
             0x0008561c: 95 a7:       mkmsk (rus)     r1, 0x5
             0x0008561e: 55 1a:       sub (3r)        r1, r1, r5
             0x00085620: b4 68:       ldc (ru6)       r2, 0x34
             0x00085622: 29 18:       sub (3r)        r2, r2, r1
             0x00085624: 00 69:       ldc (ru6)       r4, 0x0
             0x00085626: d0 90:       add (2rus)      r1, r4, 0x0
             0x00085628: 01 f0 28 d5: bl (lu10)       -0x528 <__ashldi3>
             0x0008562c: 02 f0 a8 6c: ldw (lru6)      r2, cp[0xa8]
             0x00085630: 16 f8 ec 0f: xor (l3r)       r1, r1, r2
             0x00085634: 10 f0 9e 68: ldc (lru6)      r2, 0x41e
             0x00085638: 69 1a:       sub (3r)        r2, r2, r5
             0x0008563a: d4 68:       ldc (ru6)       r3, 0x14
             0x0008563c: 3b 20:       shl (3r)        r3, r2, r3
             0x0008563e: 60 fa 90 07: ladd (l5r)      r0, r2, r0, r4, r4
             0x00085642: 17 f8 d0 06: ladd (l5r)      r0, r1, r1, r3, r0
.label891    0x00085646: 08 90:       add (2rus)      r0, r2, 0x0
             0x00085648: 05 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x1]
             0x0008564c: c4 77:       retsp (u6)      0x4
             0x0008564e: 00 00:       stw (2rus)      r0, r0[0x0]

<__divdf3>:
             0x00085650: 00 f0 50 77: entsp (lu6)     0x10
             0x00085654: 44 fb ec f7: std (l2rus)     r5, r4, sp[0x4]
             0x00085658: 6d fb ec f7: std (l2rus)     r7, r6, sp[0x5]
             0x0008565c: 46 fc ec f7: std (l2rus)     r9, r8, sp[0x6]
             0x00085660: 8e 56:       stw (ru6)       r10, sp[0xe]
             0x00085662: 60 90:       add (2rus)      r6, r0, 0x0
             0x00085664: d4 6a:       ldc (ru6)       r11, 0x14
             0x00085666: 87 2c:       shr (3r)        r0, r1, r11
             0x00085668: 1f f0 3f 69: ldc (lru6)      r4, 0x7ff
             0x0008566c: e0 3a:       and (3r)        r10, r0, r4
             0x0008566e: 8f 2c:       shr (3r)        r0, r3, r11
             0x00085670: c0 3a:       and (3r)        r8, r0, r4
             0x00085672: bd f8 ec 0f: xor (l3r)       r11, r3, r1
             0x00085676: 02 f0 26 6c: ldw (lru6)      r0, cp[0xa6]
             0x0008567a: dc 39:       and (3r)        r5, r11, r0
             0x0008567c: 40 6a:       ldc (ru6)       r9, 0x0
             0x0008567e: 03 f0 d6 6e: ldw (lru6)      r11, cp[0xd6]
             0x00085682: f7 3c:       and (3r)        r7, r1, r11
             0x00085684: 3f 3d:       and (3r)        r11, r3, r11
             0x00085686: c6 56:       stw (ru6)       r11, sp[0x6]
             0x00085688: c9 99:       sub (2rus)      r4, r10, 0x1
             0x0008568a: 1f f0 fd 6a: ldc (lru6)      r11, 0x7fd
             0x0008568e: 7c cc:       lsu (3r)        r11, r11, r4
             0x00085690: 02 f0 c2 72: bt (lru6)       r11, 0x82 <.label892>
             0x00085694: c1 99:       sub (2rus)      r4, r8, 0x1
             0x00085696: 1f f0 fe 6a: ldc (lru6)      r11, 0x7fe
             0x0008569a: f3 cd:       lsu (3r)        r11, r4, r11
             0x0008569c: 01 f0 fc 7a: bf (lru6)       r11, 0x7c <.label892>
             0x000856a0: 84 55:       stw (ru6)       r6, sp[0x4]
             0x000856a2: 07 56:       stw (ru6)       r8, sp[0x7]
             0x000856a4: 48 90:       add (2rus)      r4, r2, 0x0
             0x000856a6: 45 55:       stw (ru6)       r5, sp[0x5]
             0x000856a8: 04 92:       add (2rus)      r8, r9, 0x0
             0x000856aa: 46 5c:       ldw (ru6)       r1, sp[0x6]
.label919    0x000856ac: 02 f0 28 6c: ldw (lru6)      r0, cp[0xa8]
             0x000856b0: 04 40:       or (3r)         r0, r1, r0
             0x000856b2: 06 54:       stw (ru6)       r0, sp[0x6]
             0x000856b4: 47 5c:       ldw (ru6)       r1, sp[0x7]
             0x000856b6: 99 19:       sub (3r)        r1, r10, r1
             0x000856b8: 91 11:       add (3r)        r1, r8, r1
             0x000856ba: 47 54:       stw (ru6)       r1, sp[0x7]
             0x000856bc: 95 68:       ldc (ru6)       r2, 0x15
             0x000856be: d0 90:       add (2rus)      r1, r4, 0x0
             0x000856c0: 26 28:       shr (3r)        r2, r1, r2
             0x000856c2: cb 6a:       ldc (ru6)       r11, 0xb
             0x000856c4: b3 24:       shl (3r)        r3, r0, r11
             0x000856c6: 3b 40:       or (3r)         r3, r2, r3
             0x000856c8: 03 f0 80 6c: ldw (lru6)      r2, cp[0xc0]
             0x000856cc: 2b 18:       sub (3r)        r2, r2, r3
             0x000856ce: 4b f8 85 06: lmul (l6r)      r4, r8, r2, r3, r9, r9
             0x000856d2: 04 fc a1 0f: lsub (l5r)      r8, r4, r9, r4, r9
             0x000856d6: 02 f9 85 06: lmul (l6r)      r4, r8, r4, r2, r9, r9
             0x000856da: 91 a7:       mkmsk (rus)     r0, 0x5
             0x000856dc: 00 2a:       shr (3r)        r8, r8, r0
             0x000856de: 01 a1:       shl (2rus)      r4, r4, 0x1
             0x000856e0: 00 44:       or (3r)         r4, r8, r4
             0x000856e2: 43 f9 a5 06: lmul (l6r)      r8, r10, r4, r3, r9, r9
             0x000856e6: 84 fe a9 0f: lsub (l5r)      r10, r8, r9, r8, r9
             0x000856ea: 00 fc 85 06: lmul (l6r)      r4, r8, r8, r4, r9, r9
             0x000856ee: 00 2a:       shr (3r)        r8, r8, r0
             0x000856f0: 01 a1:       shl (2rus)      r4, r4, 0x1
             0x000856f2: 00 44:       or (3r)         r4, r8, r4
             0x000856f4: 43 f9 a5 06: lmul (l6r)      r8, r10, r4, r3, r9, r9
             0x000856f8: 84 fe a9 0f: lsub (l5r)      r10, r8, r9, r8, r9
             0x000856fc: 00 fc 85 06: lmul (l6r)      r4, r8, r8, r4, r9, r9
             0x00085700: 00 2a:       shr (3r)        r8, r8, r0
             0x00085702: 01 a1:       shl (2rus)      r4, r4, 0x1
             0x00085704: 00 44:       or (3r)         r4, r8, r4
             0x00085706: 01 99:       sub (2rus)      r4, r4, 0x1
             0x00085708: 37 25:       shl (3r)        r11, r1, r11
             0x0008570a: c3 fd b5 06: lmul (l6r)      r8, r11, r4, r11, r9, r9
             0x0008570e: 34 92:       add (2rus)      r11, r9, 0x0
             0x00085710: 73 f9 f8 07: maccu (l4r)     r11, r8, r4, r3
             0x00085714: 34 fe a1 0f: lsub (l5r)      r8, r3, r9, r8, r9
             0x00085718: b7 fe a0 0f: lsub (l5r)      r8, r11, r9, r11, r8
             0x0008571c: cc fa 35 06: lmul (l6r)      r8, r3, r3, r4, r9, r9
             0x00085720: b4 91:       add (2rus)      r3, r9, 0x0
             0x00085722: fc fb f8 07: maccu (l4r)     r3, r8, r11, r4
             0x00085726: 03 f0 d5 6e: ldw (lru6)      r11, cp[0xd5]
             0x0008572a: b3 fe 71 07: ladd (l5r)      r4, r11, r8, r11, r9
             0x0008572e: 50 a7:       mkmsk (rus)     r8, 0x20
             0x00085730: bc fc d0 07: ladd (l5r)      r4, r3, r3, r8, r4
             0x00085734: 1e 69:       ldc (ru6)       r4, 0x1e
             0x00085736: 84 5d:       ldw (ru6)       r6, sp[0x4]
             0x00085738: 48 2b:       shr (3r)        r4, r6, r4
             0x0008573a: 4e a1:       shl (2rus)      r8, r7, 0x2
             0x0008573c: 6a a1:       shl (2rus)      r10, r6, 0x2
             0x0008573e: 2e fe 75 06: lmul (l6r)      r2, r7, r11, r10, r9, r9
             0x00085742: fe fc a5 06: lmul (l6r)      r7, r10, r3, r10, r9, r9
             0x00085746: 80 45:       or (3r)         r4, r4, r8
             0x00085748: 02 f0 2f 6e: ldw (lru6)      r8, cp[0xaf]
             0x0008574c: 80 45:       or (3r)         r4, r4, r8
             0x0008574e: 7c fc 85 06: lmul (l6r)      r11, r8, r11, r4, r9, r9
             0x00085752: 03 f0 53 6d: ldw (lru6)      r5, cp[0xd3]
             0x00085756: 19 3c:       and (3r)        r5, r10, r5
             0x00085758: 69 fa 75 07: ladd (l5r)      r5, r2, r2, r5, r9
             0x0008575c: a8 fc b1 07: ladd (l5r)      r8, r2, r2, r8, r9
             0x00085760: 64 15:       add (3r)        r2, r5, r8
             0x00085762: fc fa ff 03: lmul (l6r)      r11, r3, r3, r4, r11, r7
             0x00085766: 15 69:       ldc (ru6)       r4, 0x15
             0x00085768: 3e f8 39 07: ladd (l5r)      r2, r3, r3, r2, r9
             0x0008576c: 3e 12:       add (3r)        r11, r11, r2
             0x0008576e: ec 2b:       shr (3r)        r2, r11, r4
             0x00085770: 9e 70:       bt (ru6)        r2, 0x1e <.label893>
             0x00085772: 28 23:       shl (3r)        r2, r6, r4
             0x00085774: 00 69:       ldc (ru6)       r4, 0x0
             0x00085776: 5d f8 60 03: lmul (l6r)      r5, r6, r3, r1, r4, r4
             0x0008577a: 86 5e:       ldw (ru6)       r10, sp[0x6]
             0x0008577c: fe fc ec 3f: mul (l3r)       r7, r3, r10
             0x00085780: 57 13:       add (3r)        r5, r5, r7
             0x00085782: fd f9 ec 3f: mul (l3r)       r7, r11, r1
             0x00085786: 57 13:       add (3r)        r5, r5, r7
             0x00085788: 62 fb c0 0f: lsub (l5r)      r4, r6, r4, r6, r4
             0x0008578c: b9 fa 88 0f: lsub (l5r)      r2, r7, r2, r5, r4
             0x00085790: 07 5c:       ldw (ru6)       r0, sp[0x7]
             0x00085792: 01 98:       sub (2rus)      r0, r0, 0x1
             0x00085794: 84 90:       add (2rus)      r8, r1, 0x0
             0x00085796: 20 73:       bu (u6)         0x20 <.label894>
.label892    0x00085798: 07 56:       stw (ru6)       r8, sp[0x7]
             0x0008579a: c4 55:       stw (ru6)       r7, sp[0x4]
             0x0008579c: 03 f0 19 6e: ldw (lru6)      r8, cp[0xd9]
             0x000857a0: 34 3d:       and (3r)        r11, r1, r8
             0x000857a2: 02 f0 f6 6d: ldw (lru6)      r7, cp[0xb6]
             0x000857a6: 0f 34:       eq (3r)         r4, r11, r7
             0x000857a8: 2f 71:       bt (ru6)        r4, 0x2f <.label895>
             0x000857aa: 0f cc:       lsu (3r)        r4, r11, r7
             0x000857ac: 2e 73:       bu (u6)         0x2e <.label896>
.label893    0x000857ae: ac 21:       shl (3r)        r2, r11, r0
             0x000857b0: 3d a8:       shr (2rus)      r3, r3, 0x1
             0x000857b2: 3e 40:       or (3r)         r3, r3, r2
             0x000857b4: 3d aa:       shr (2rus)      r11, r11, 0x1
             0x000857b6: 94 68:       ldc (ru6)       r2, 0x14
             0x000857b8: ea 20:       shl (3r)        r2, r6, r2
             0x000857ba: 4d f8 55 06: lmul (l6r)      r4, r5, r3, r1, r9, r9
             0x000857be: 86 5e:       ldw (ru6)       r10, sp[0x6]
             0x000857c0: ee fc ec 3f: mul (l3r)       r6, r3, r10
             0x000857c4: 42 13:       add (3r)        r4, r4, r6
             0x000857c6: ed f9 ec 3f: mul (l3r)       r6, r11, r1
             0x000857ca: 42 13:       add (3r)        r4, r4, r6
             0x000857cc: 25 fc 65 0f: lsub (l5r)      r5, r6, r9, r5, r9
             0x000857d0: b8 fa 89 0f: lsub (l5r)      r2, r7, r2, r4, r5
             0x000857d4: 84 90:       add (2rus)      r8, r1, 0x0
             0x000857d6: 07 5c:       ldw (ru6)       r0, sp[0x7]
.label894    0x000857d8: 0f f0 bf 68: ldc (lru6)      r2, 0x3ff
             0x000857dc: 12 10:       add (3r)        r1, r0, r2
             0x000857de: 1f f0 bf 68: ldc (lru6)      r2, 0x7ff
             0x000857e2: 26 c0:       lss (3r)        r2, r1, r2
             0x000857e4: 45 5d:       ldw (ru6)       r5, sp[0x5]
             0x000857e6: 85 70:       bt (ru6)        r2, 0x5 <.label897>
             0x000857e8: 02 f0 36 6c: ldw (lru6)      r0, cp[0xb6]
             0x000857ec: 14 41:       or (3r)         r5, r5, r0
             0x000857ee: 01 f0 19 73: bu (lu6)        0x59 <.label898>
.label897    0x000857f2: a5 c1:       lss (3r)        r2, r9, r1
             0x000857f4: 01 f0 96 78: bf (lru6)       r2, 0x56 <.label898>
             0x000857f8: 91 a7:       mkmsk (rus)     r0, 0x5
             0x000857fa: e8 28:       shr (3r)        r2, r6, r0
             0x000857fc: 0d a1:       shl (2rus)      r4, r7, 0x1
             0x000857fe: e2 40:       or (3r)         r2, r4, r2
             0x00085800: ca 34:       eq (3r)         r4, r2, r10
             0x00085802: 25 71:       bt (ru6)        r4, 0x25 <.label899>
             0x00085804: 8a c9:       lsu (3r)        r0, r10, r2
             0x00085806: 25 73:       bu (u6)         0x25 <.label900>
.label895    0x00085808: 08 b1:       eq (2rus)       r4, r6, 0x0
.label896    0x0008580a: 05 71:       bt (ru6)        r4, 0x5 <.label901>
             0x0008580c: 02 f0 27 6c: ldw (lru6)      r0, cp[0xa7]
             0x00085810: 54 40:       or (3r)         r5, r1, r0
             0x00085812: 01 f0 08 73: bu (lu6)        0x48 <.label902>
.label901    0x00085816: 0c 3d:       and (3r)        r8, r3, r8
             0x00085818: 03 34:       eq (3r)         r4, r8, r7
             0x0008581a: 04 71:       bt (ru6)        r4, 0x4 <.label903>
             0x0008581c: 03 cc:       lsu (3r)        r4, r8, r7
             0x0008581e: 03 56:       stw (ru6)       r8, sp[0x3]
             0x00085820: 88 90:       add (2rus)      r8, r2, 0x0
             0x00085822: 03 73:       bu (u6)         0x3 <.label904>
.label903    0x00085824: 03 56:       stw (ru6)       r8, sp[0x3]
             0x00085826: 88 90:       add (2rus)      r8, r2, 0x0
             0x00085828: c0 b1:       eq (2rus)       r4, r8, 0x0
.label904    0x0008582a: 05 71:       bt (ru6)        r4, 0x5 <.label905>
             0x0008582c: 02 f0 27 6c: ldw (lru6)      r0, cp[0xa7]
             0x00085830: 5c 40:       or (3r)         r5, r3, r0
             0x00085832: e0 91:       add (2rus)      r6, r8, 0x0
             0x00085834: 38 73:       bu (u6)         0x38 <.label902>
.label905    0x00085836: 0f fc ec 0f: xor (l3r)       r4, r11, r7
             0x0008583a: 48 43:       or (3r)         r4, r6, r4
             0x0008583c: 15 71:       bt (ru6)        r4, 0x15 <.label906>
             0x0008583e: 83 5c:       ldw (ru6)       r2, sp[0x3]
             0x00085840: 6b fa ec 0f: xor (l3r)       r2, r2, r7
             0x00085844: a2 41:       or (3r)         r2, r8, r2
             0x00085846: a2 70:       bt (ru6)        r2, 0x22 <.label907>
             0x00085848: 02 f0 77 6d: ldw (lru6)      r5, cp[0xb7]
             0x0008584c: 2b 73:       bu (u6)         0x2b <.label898>
.label899    0x0008584e: c9 a0:       shl (2rus)      r0, r6, 0x1
             0x00085850: 80 c9:       lsu (3r)        r0, r8, r0
.label900    0x00085852: 03 f0 96 6c: ldw (lru6)      r2, cp[0xd6]
             0x00085856: ae 39:       and (3r)        r2, r11, r2
             0x00085858: d4 6a:       ldc (ru6)       r11, 0x14
             0x0008585a: 97 24:       shl (3r)        r1, r1, r11
             0x0008585c: 16 40:       or (3r)         r1, r1, r2
             0x0008585e: 6c f8 31 07: ladd (l5r)      r0, r6, r3, r0, r9
             0x00085862: 04 10:       add (3r)        r0, r1, r0
             0x00085864: 91 42:       or (3r)         r5, r0, r5
             0x00085866: 1f 73:       bu (u6)         0x1f <.label902>
.label906    0x00085868: 03 5c:       ldw (ru6)       r0, sp[0x3]
             0x0008586a: 43 fa ec 0f: xor (l3r)       r0, r0, r7
             0x0008586e: 80 41:       or (3r)         r0, r8, r0
             0x00085870: 19 78:       bf (ru6)        r0, 0x19 <.label898>
             0x00085872: 4b 45:       or (3r)         r0, r6, r11
             0x00085874: 0f 78:       bf (ru6)        r0, 0xf <.label908>
             0x00085876: 03 5c:       ldw (ru6)       r0, sp[0x3]
             0x00085878: 80 41:       or (3r)         r0, r8, r0
             0x0008587a: 13 78:       bf (ru6)        r0, 0x13 <.label909>
             0x0008587c: 14 68:       ldc (ru6)       r0, 0x14
             0x0008587e: c0 91:       add (2rus)      r4, r8, 0x0
             0x00085880: 8c 29:       shr (3r)        r0, r11, r0
             0x00085882: 1b 70:       bt (ru6)        r0, 0x1b <.label910>
             0x00085884: 44 5c:       ldw (ru6)       r1, sp[0x4]
             0x00085886: 5d 78:       bf (ru6)        r1, 0x1d <.label911>
             0x00085888: 41 0f:       clz (2r)        r8, r1
             0x0008588a: 1e 73:       bu (u6)         0x1e <.label912>
.label907    0x0008588c: 0c 38:       and (3r)        r0, r3, r0
             0x0008588e: 51 f8 ec 0f: xor (l3r)       r5, r0, r1
             0x00085892: 09 73:       bu (u6)         0x9 <.label902>
.label908    0x00085894: 03 5c:       ldw (ru6)       r0, sp[0x3]
             0x00085896: 80 41:       or (3r)         r0, r8, r0
             0x00085898: 02 70:       bt (ru6)        r0, 0x2 <.label913>
             0x0008589a: 02 f0 77 6d: ldw (lru6)      r5, cp[0xb7]
.label913    0x0008589e: 00 68:       ldc (ru6)       r0, 0x0
             0x000858a0: 03 73:       bu (u6)         0x3 <.label914>
.label909    0x000858a2: 57 43:       or (3r)         r5, r5, r7
.label898    0x000858a4: e4 91:       add (2rus)      r6, r9, 0x0
.label902    0x000858a6: c8 90:       add (2rus)      r0, r6, 0x0
.label914    0x000858a8: d4 90:       add (2rus)      r1, r5, 0x0
             0x000858aa: 8e 5e:       ldw (ru6)       r10, sp[0xe]
             0x000858ac: 46 fc ec ef: ldd (l2rus)     r9, r8, sp[0x6]
             0x000858b0: 6d fb ec ef: ldd (l2rus)     r7, r6, sp[0x5]
             0x000858b4: 44 fb ec ef: ldd (l2rus)     r5, r4, sp[0x4]
             0x000858b8: d0 77:       retsp (u6)      0x10
.label910    0x000858ba: 45 55:       stw (ru6)       r5, sp[0x5]
             0x000858bc: 00 6a:       ldc (ru6)       r8, 0x0
             0x000858be: c4 5d:       ldw (ru6)       r7, sp[0x4]
             0x000858c0: 0c 73:       bu (u6)         0xc <.label915>
.label911    0x000858c2: 82 0f:       clz (2r)        r0, r6
             0x000858c4: 00 fd ec 9f: ldaw (l2rus)    r8, r0[0x8]
.label912    0x000858c8: 45 55:       stw (ru6)       r5, sp[0x5]
             0x000858ca: 23 9e:       sub (2rus)      r2, r8, 0xb
             0x000858cc: c8 90:       add (2rus)      r0, r6, 0x0
             0x000858ce: 01 f0 7b d6: bl (lu10)       -0x67b <__ashldi3>
             0x000858d2: 60 90:       add (2rus)      r6, r0, 0x0
             0x000858d4: 74 90:       add (2rus)      r7, r1, 0x0
             0x000858d6: 0c 68:       ldc (ru6)       r0, 0xc
             0x000858d8: 00 1d:       sub (3r)        r8, r0, r8
.label915    0x000858da: 46 5c:       ldw (ru6)       r1, sp[0x6]
             0x000858dc: 14 68:       ldc (ru6)       r0, 0x14
             0x000858de: 83 5c:       ldw (ru6)       r2, sp[0x3]
             0x000858e0: 08 28:       shr (3r)        r0, r2, r0
             0x000858e2: 04 70:       bt (ru6)        r0, 0x4 <.label916>
             0x000858e4: 46 78:       bf (ru6)        r1, 0x6 <.label917>
             0x000858e6: 05 0f:       clz (2r)        r5, r1
             0x000858e8: c0 90:       add (2rus)      r0, r4, 0x0
             0x000858ea: 07 73:       bu (u6)         0x7 <.label918>
.label916    0x000858ec: 84 55:       stw (ru6)       r6, sp[0x4]
             0x000858ee: 04 f0 23 77: bu (lu6)        -0x123 <.label919>
.label917    0x000858f2: c0 90:       add (2rus)      r0, r4, 0x0
             0x000858f4: c8 0e:       clz (2r)        r2, r0
             0x000858f6: d8 fc ec 9f: ldaw (l2rus)    r5, r2[0x8]
.label918    0x000858fa: 84 55:       stw (ru6)       r6, sp[0x4]
             0x000858fc: 67 9d:       sub (2rus)      r2, r5, 0xb
             0x000858fe: 01 f0 93 d6: bl (lu10)       -0x693 <__ashldi3>
             0x00085902: 40 90:       add (2rus)      r4, r0, 0x0
             0x00085904: c1 13:       add (3r)        r0, r8, r5
             0x00085906: 83 f8 ec a7: ldaw (l2rus)    r8, r0[-0x3]
             0x0008590a: 04 f0 31 77: bu (lu6)        -0x131 <.label919>
             0x0008590e: 00 00:       stw (2rus)      r0, r0[0x0]

<realloc>:
             0x00085910: 00 f0 46 77: entsp (lu6)     0x6
             0x00085914: 05 f9 ec f7: std (l2rus)     r5, r4, sp[0x1]
             0x00085918: 2e f9 ec f7: std (l2rus)     r7, r6, sp[0x2]
             0x0008591c: 54 90:       add (2rus)      r5, r1, 0x0
             0x0008591e: 40 90:       add (2rus)      r4, r0, 0x0
             0x00085920: 05 f0 5a d5: bl (lu10)       -0x155a <__malloc_lock>
             0x00085924: 04 68:       ldc (ru6)       r0, 0x4
             0x00085926: c4 c8:       lsu (3r)        r0, r5, r0
             0x00085928: 02 78:       bf (ru6)        r0, 0x2 <.label920>
             0x0008592a: 08 68:       ldc (ru6)       r0, 0x8
             0x0008592c: 06 73:       bu (u6)         0x6 <.label921>
.label920    0x0008592e: 03 f0 13 6c: ldw (lru6)      r0, cp[0xd3]
             0x00085932: 41 1a:       sub (3r)        r0, r0, r5
             0x00085934: d3 46:       zext (rus)      r0, 0x3
             0x00085936: c4 10:       add (3r)        r0, r5, r0
             0x00085938: 40 92:       add (2rus)      r0, r0, 0x4
.label921    0x0008593a: 15 79:       bf (ru6)        r4, 0x15 <.label922>
             0x0008593c: 10 9b:       sub (2rus)      r1, r4, 0x4
             0x0008593e: 74 08:       ldw (2rus)      r7, r1[0x0]
             0x00085940: ec c8:       lsu (3r)        r2, r7, r0
             0x00085942: 96 78:       bf (ru6)        r2, 0x16 <.label923>
             0x00085944: c4 90:       add (2rus)      r0, r5, 0x0
             0x00085946: 09 f0 6b d5: bl (lu10)       -0x256b <__malloc>
             0x0008594a: 60 90:       add (2rus)      r6, r0, 0x0
             0x0008594c: 9d 79:       bf (ru6)        r6, 0x1d <.label924>
             0x0008594e: 2c 9b:       sub (2rus)      r2, r7, 0x4
             0x00085950: 49 ca:       lsu (3r)        r0, r2, r5
             0x00085952: 01 70:       bt (ru6)        r0, 0x1 <.label925>
             0x00085954: e4 90:       add (2rus)      r2, r5, 0x0
.label925    0x00085956: c8 90:       add (2rus)      r0, r6, 0x0
             0x00085958: d0 90:       add (2rus)      r1, r4, 0x0
             0x0008595a: 09 f0 13 d6: bl (lu10)       -0x2613 <memcpy> <__memcpy_4>
             0x0008595e: c0 90:       add (2rus)      r0, r4, 0x0
             0x00085960: 09 f0 c0 d5: bl (lu10)       -0x25c0 <__free>
             0x00085964: 12 73:       bu (u6)         0x12 <.label926>
.label922    0x00085966: c4 90:       add (2rus)      r0, r5, 0x0
             0x00085968: 09 f0 7c d5: bl (lu10)       -0x257c <__malloc>
             0x0008596c: 60 90:       add (2rus)      r6, r0, 0x0
             0x0008596e: 0d 73:       bu (u6)         0xd <.label926>
.label923    0x00085970: ec 18:       sub (3r)        r2, r7, r0
             0x00085972: c8 68:       ldc (ru6)       r3, 0x8
             0x00085974: 3b c8:       lsu (3r)        r3, r2, r3
             0x00085976: c6 70:       bt (ru6)        r3, 0x6 <.label927>
             0x00085978: 31 10:       add (3r)        r3, r0, r1
             0x0008597a: 04 00:       stw (2rus)      r0, r1[0x0]
             0x0008597c: 2c 00:       stw (2rus)      r2, r3[0x0]
             0x0008597e: 4c 92:       add (2rus)      r0, r3, 0x4
             0x00085980: 09 f0 d0 d5: bl (lu10)       -0x25d0 <__free>
.label927    0x00085984: 20 91:       add (2rus)      r6, r4, 0x0
             0x00085986: 01 73:       bu (u6)         0x1 <.label926>
.label924    0x00085988: 80 69:       ldc (ru6)       r6, 0x0
.label926    0x0008598a: 05 f0 87 d5: bl (lu10)       -0x1587 <__malloc_unlock>
             0x0008598e: c8 90:       add (2rus)      r0, r6, 0x0
             0x00085990: 2e f9 ec ef: ldd (l2rus)     r7, r6, sp[0x2]
             0x00085994: 05 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x1]
             0x00085998: c6 77:       retsp (u6)      0x6
             0x0008599a: 00 00:       stw (2rus)      r0, r0[0x0]

<_read>:
             0x0008599c: 00 f0 40 77: entsp (lu6)     0x0
             0x000859a0: 38 90:       add (2rus)      r3, r2, 0x0
             0x000859a2: 24 90:       add (2rus)      r2, r1, 0x0
             0x000859a4: 10 90:       add (2rus)      r1, r0, 0x0
             0x000859a6: 05 68:       ldc (ru6)       r0, 0x5
             0x000859a8: 09 f0 c4 dc: ldap (lu10)     r11, -0x24c4 <_DoSyscallErrno>
             0x000859ac: fb 27:       bau (1r)        r11
             0x000859ae: 00 00:       stw (2rus)      r0, r0[0x0]

<_lseek>:
             0x000859b0: 00 f0 40 77: entsp (lu6)     0x0
             0x000859b4: 38 90:       add (2rus)      r3, r2, 0x0
             0x000859b6: 24 90:       add (2rus)      r2, r1, 0x0
             0x000859b8: 10 90:       add (2rus)      r1, r0, 0x0
             0x000859ba: 08 68:       ldc (ru6)       r0, 0x8
             0x000859bc: 09 f0 ce dc: ldap (lu10)     r11, -0x24ce <_DoSyscallErrno>
             0x000859c0: fb 27:       bau (1r)        r11
             0x000859c2: 00 00:       stw (2rus)      r0, r0[0x0]

<_close>:
             0x000859c4: 00 f0 40 77: entsp (lu6)     0x0
             0x000859c8: 10 90:       add (2rus)      r1, r0, 0x0
             0x000859ca: 04 68:       ldc (ru6)       r0, 0x4
             0x000859cc: 09 f0 d6 dc: ldap (lu10)     r11, -0x24d6 <_DoSyscallErrno>
             0x000859d0: fb 27:       bau (1r)        r11
             0x000859d2: 00 00:       stw (2rus)      r0, r0[0x0]

<calloc>:
             0x000859d4: 00 f0 44 77: entsp (lu6)     0x4
             0x000859d8: 05 f9 ec f7: std (l2rus)     r5, r4, sp[0x1]
             0x000859dc: 44 f8 ec 3f: mul (l3r)       r4, r1, r0
             0x000859e0: c0 90:       add (2rus)      r0, r4, 0x0
             0x000859e2: 09 f0 63 d5: bl (lu10)       -0x2563 <malloc>
             0x000859e6: 50 90:       add (2rus)      r5, r0, 0x0
             0x000859e8: 45 79:       bf (ru6)        r5, 0x5 <.label928>
             0x000859ea: 40 68:       ldc (ru6)       r1, 0x0
             0x000859ec: c4 90:       add (2rus)      r0, r5, 0x0
             0x000859ee: e0 90:       add (2rus)      r2, r4, 0x0
             0x000859f0: 09 f0 7c d7: bl (lu10)       -0x277c <memset>
.label928    0x000859f4: c4 90:       add (2rus)      r0, r5, 0x0
             0x000859f6: 05 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x1]
             0x000859fa: c4 77:       retsp (u6)      0x4

Disassembly of section .cp.rodata (size: 512)

<_cp>:
<.cp.rodata>:
.label11     0x00085a00: 30 19 f0 ff: 

<.cp.rodata>:
             0x00085a04: f0 19 f0 ff: 

<.cp.rodata>:
<_ctype_>:
             0x00085a08: 00 20 20 20: 
             0x00085a0c: 20 20 20 20: 
             0x00085a10: 20 20 28 28: 
             0x00085a14: 28 28 28 20: 
             0x00085a18: 20 20 20 20: 
             0x00085a1c: 20 20 20 20: 
             0x00085a20: 20 20 20 20: 
             0x00085a24: 20 20 20 20: 
             0x00085a28: 20 88 10 10: 
             0x00085a2c: 10 10 10 10: 
             0x00085a30: 10 10 10 10: 
             0x00085a34: 10 10 10 10: 
             0x00085a38: 10 04 04 04: 
             0x00085a3c: 04 04 04 04: 
             0x00085a40: 04 04 04 10: 
             0x00085a44: 10 10 10 10: 
             0x00085a48: 10 10 41 41: 
             0x00085a4c: 41 41 41 41: 
             0x00085a50: 01 01 01 01: 
             0x00085a54: 01 01 01 01: 
             0x00085a58: 01 01 01 01: 
             0x00085a5c: 01 01 01 01: 
             0x00085a60: 01 01 01 01: 
             0x00085a64: 10 10 10 10: 
             0x00085a68: 10 10 42 42: 
             0x00085a6c: 42 42 42 42: 
             0x00085a70: 02 02 02 02: 
             0x00085a74: 02 02 02 02: 
             0x00085a78: 02 02 02 02: 
             0x00085a7c: 02 02 02 02: 
             0x00085a80: 02 02 02 02: 
             0x00085a84: 10 10 10 10: 
             0x00085a88: 20 00 00 00: 
             0x00085a8c: 00 00 00 00: 
             0x00085a90: 00 00 00 00: 
             0x00085a94: 00 00 00 00: 
             0x00085a98: 00 00 00 00: 
             0x00085a9c: 00 00 00 00: 
             0x00085aa0: 00 00 00 00: 
             0x00085aa4: 00 00 00 00: 
             0x00085aa8: 00 00 00 00: 
             0x00085aac: 00 00 00 00: 
             0x00085ab0: 00 00 00 00: 
             0x00085ab4: 00 00 00 00: 
             0x00085ab8: 00 00 00 00: 
             0x00085abc: 00 00 00 00: 
             0x00085ac0: 00 00 00 00: 
             0x00085ac4: 00 00 00 00: 
             0x00085ac8: 00 00 00 00: 
             0x00085acc: 00 00 00 00: 
             0x00085ad0: 00 00 00 00: 
             0x00085ad4: 00 00 00 00: 
             0x00085ad8: 00 00 00 00: 
             0x00085adc: 00 00 00 00: 
             0x00085ae0: 00 00 00 00: 
             0x00085ae4: 00 00 00 00: 
             0x00085ae8: 00 00 00 00: 
             0x00085aec: 00 00 00 00: 
             0x00085af0: 00 00 00 00: 
             0x00085af4: 00 00 00 00: 
             0x00085af8: 00 00 00 00: 
             0x00085afc: 00 00 00 00: 
             0x00085b00: 00 00 00 00: 
             0x00085b04: 00 00 00 00: 
             0x00085b08: 00:          

<.cp.rodata>:
             0x00085b09: 00 00 00 00: 
             0x00085b0d: 00 00 00:    

<__mprec_tens>:
             0x00085b10: 00 00 00 00: 
             0x00085b14: 00 00 f0 3f: 
             0x00085b18: 00 00 00 00: 
             0x00085b1c: 00 00 24 40: 
             0x00085b20: 00 00 00 00: 
             0x00085b24: 00 00 59 40: 
             0x00085b28: 00 00 00 00: 
             0x00085b2c: 00 40 8f 40: 
             0x00085b30: 00 00 00 00: 
             0x00085b34: 00 88 c3 40: 
             0x00085b38: 00 00 00 00: 
             0x00085b3c: 00 6a f8 40: 
             0x00085b40: 00 00 00 00: 
             0x00085b44: 80 84 2e 41: 
             0x00085b48: 00 00 00 00: 
             0x00085b4c: d0 12 63 41: 
             0x00085b50: 00 00 00 00: 
             0x00085b54: 84 d7 97 41: 
             0x00085b58: 00 00 00 00: 
             0x00085b5c: 65 cd cd 41: 
             0x00085b60: 00 00 00 20: 
             0x00085b64: 5f a0 02 42: 
             0x00085b68: 00 00 00 e8: 
             0x00085b6c: 76 48 37 42: 
             0x00085b70: 00 00 00 a2: 
             0x00085b74: 94 1a 6d 42: 
             0x00085b78: 00 00 40 e5: 
             0x00085b7c: 9c 30 a2 42: 
             0x00085b80: 00 00 90 1e: 
             0x00085b84: c4 bc d6 42: 
             0x00085b88: 00 00 34 26: 
             0x00085b8c: f5 6b 0c 43: 
             0x00085b90: 00 80 e0 37: 
             0x00085b94: 79 c3 41 43: 
             0x00085b98: 00 a0 d8 85: 
             0x00085b9c: 57 34 76 43: 
             0x00085ba0: 00 c8 4e 67: 
             0x00085ba4: 6d c1 ab 43: 
             0x00085ba8: 00 3d 91 60: 
             0x00085bac: e4 58 e1 43: 
             0x00085bb0: 40 8c b5 78: 
             0x00085bb4: 1d af 15 44: 
             0x00085bb8: 50 ef e2 d6: 
             0x00085bbc: e4 1a 4b 44: 
             0x00085bc0: 92 d5 4d 06: 
             0x00085bc4: cf f0 80 44: 
             0x00085bc8: f6 4a e1 c7: 
             0x00085bcc: 02 2d b5 44: 
             0x00085bd0: b4 9d d9 79: 
             0x00085bd4: 43 78 ea 44: 

<__mprec_bigtens>:
             0x00085bd8: 00 80 e0 37: 
             0x00085bdc: 79 c3 41 43: 
             0x00085be0: 17 6e 05 b5: 
             0x00085be4: b5 b8 93 46: 
             0x00085be8: f5 f9 3f e9: 
             0x00085bec: 03 4f 38 4d: 
             0x00085bf0: 32 1d 30 f9: 
             0x00085bf4: 48 77 82 5a: 
             0x00085bf8: 3c bf 73 7f: 
             0x00085bfc: dd 4f 15 75: 

Disassembly of section .cp.rodata.4 (size: 100)

<.cp.rodata.4>:
<vfprintf.blanks>:
             0x00085c00: 20 20 20 20: 
             0x00085c04: 20 20 20 20: 
             0x00085c08: 20 20 20 20: 
             0x00085c0c: 20 20 20 20: 

<vfprintf.zeroes>:
             0x00085c10: 30 30 30 30: 
             0x00085c14: 30 30 30 30: 
             0x00085c18: 30 30 30 30: 
             0x00085c1c: 30 30 30 30: 

<.cp.rodata.4>:
<lconv>:
             0x00085c20: 6c 5d 08 00: 
             0x00085c24: 68 5d 08 00: 
             0x00085c28: 68 5d 08 00: 
             0x00085c2c: 68 5d 08 00: 
             0x00085c30: 68 5d 08 00: 
             0x00085c34: 68 5d 08 00: 
             0x00085c38: 68 5d 08 00: 
             0x00085c3c: 68 5d 08 00: 
             0x00085c40: 68 5d 08 00: 
             0x00085c44: 68 5d 08 00: 
             0x00085c48: ff ff ff ff: 
             0x00085c4c: ff ff ff ff: 

<.cp.rodata.4>:
<__pow5mult.p05>:
             0x00085c50: 05 00 00 00: 
             0x00085c54: 19 00 00 00: 
             0x00085c58: 7d 00 00 00: 

<_fptrgroup.stdlib_atexit.group.begin>:
             0x00085c5c: 60 02 08 00: 
             0x00085c60: 68 0a 08 00: 

Disassembly of section .cp.const4 (size: 44)

<initial_dp>:
             0x00085c64: 00 5e 08 00: 

<dp_bss_large_start>:
             0x00085c68: 10 62 08 00: 

<extmem_bss_start>:
             0x00085c6c: 00 00 00 10: 

<.cp.const4>:
<ctor_list_ptr>:
             0x00085c70: f0 5d 08 00: 

<.cp.const4>:
<dtor_list_ptr>:
             0x00085c74: fc 5d 08 00: 

<.cp.const4>:
<initial_sp>:
             0x00085c78: b0 fe 0f 00: 

<dp_bss_size>:
             0x00085c7c: a8 03 00 00: 

<dp_bss_large_size>:
             0x00085c80: 00 00 00 00: 

<extmem_bss_size>:
             0x00085c84: 00 00 00 00: 

<dtors_size>:
             0x00085c88: 00 00 00 00: 

<ctors_size>:
             0x00085c8c: 03 00 00 00: 

Disassembly of section .cp.rodata.cst4 (size: 216)

<.cp.rodata.cst4>:
<.cp.rodata.cst4>:
<.cp.rodata.cst4>:
<.cp.rodata.cst4>:
<.cp.rodata.cst4>:
<.cp.rodata.cst4>:
<.cp.rodata.cst4>:
<.cp.rodata.cst4>:
<.cp.rodata.cst4>:
<.cp.rodata.cst4>:
<.cp.rodata.cst4>:
<.cp.rodata.cst4>:
<.cp.rodata.cst4>:
<.cp.rodata.cst4>:
<.cp.rodata.cst4>:
<.cp.rodata.cst4>:
<.cp.rodata.cst4>:
<.cp.rodata.cst4>:
<.cp.rodata.cst4>:
<.cp.rodata.cst4>:
<.cp.rodata.cst4>:
<.cp.rodata.cst4>:
<.cp.rodata.cst4>:
<.cp.rodata.cst4>:
<.cp.rodata.cst4>:
             0x00085c90: 00 00 00 01: 
             0x00085c94: 00 00 00 40: 
             0x00085c98: 00 00 00 80: 
             0x00085c9c: 00 00 08 00: 
             0x00085ca0: 00 00 10 00: 
             0x00085ca4: 00 00 10 fe: 
             0x00085ca8: 00 00 14 40: 
             0x00085cac: 00 00 14 c0: 
             0x00085cb0: 00 00 1c 40: 
             0x00085cb4: 00 00 24 40: 
             0x00085cb8: 00 00 30 40: 
             0x00085cbc: 00 00 40 00: 
             0x00085cc0: 00 00 50 43: 
             0x00085cc4: 00 00 80 00: 
             0x00085cc8: 00 00 c0 3f: 
             0x00085ccc: 00 00 c0 fc: 
             0x00085cd0: 00 00 e0 3f: 
             0x00085cd4: 00 00 f0 3f: 
             0x00085cd8: 00 00 f0 7f: 
             0x00085cdc: 00 00 f8 7f: 
             0x00085ce0: 00 00 f8 bf: 
             0x00085ce4: 00 02 08 00: 
             0x00085ce8: 00 f8 ff ff: 
             0x00085cec: 01 fc ff ff: 
             0x00085cf0: 02 fc ff ff: 
             0x00085cf4: 0e fc ff ff: 
             0x00085cf8: 13 44 d3 3f: 
             0x00085cfc: 28 8a c6 3f: 
             0x00085d00: 33 f3 04 75: 
             0x00085d04: 44 33 22 11: 
             0x00085d08: 61 43 6f 63: 
             0x00085d0c: 67 66 66 66: 
             0x00085d10: 7f ff ff ff: 
             0x00085d14: 90 ff ff ff: 
             0x00085d18: a7 87 d2 3f: 
             0x00085d1c: b3 c8 60 8b: 
             0x00085d20: ca ff ff ff: 
             0x00085d24: cc ff ff ff: 
             0x00085d28: cd fb ff ff: 
             0x00085d2c: ce fb ff ff: 
             0x00085d30: d0 ff ff ff: 
             0x00085d34: df ff ff ff: 
             0x00085d38: e0 ff ff ff: 
             0x00085d3c: eb ff ff ff: 
             0x00085d40: ee fb ff ff: 
             0x00085d44: ef ff ff ff: 
             0x00085d48: fb 79 9f 50: 
             0x00085d4c: fc ff ff ff: 
             0x00085d50: fd ff ff ff: 
             0x00085d54: fe ff ff ff: 
             0x00085d58: ff ff 0f 00: 
             0x00085d5c: ff ff 0f 80: 
             0x00085d60: ff ff ef 7f: 
             0x00085d64: ff ff ff 7f: 

Disassembly of section .cp.rodata.string (size: 136)

<.cp.rodata.string>:
<.cp.rodata.string>:
<.cp.rodata.string>:
<.cp.rodata.string>:
<.cp.rodata.string>:
<.cp.rodata.string>:
<.cp.rodata.string>:
<.cp.rodata.string>:
             0x00085d68: 00 00 00 00: 
             0x00085d6c: 2e 00 00 00: 
             0x00085d70: 30 00 00 00: 

<itoa.digits>:
             0x00085d74: 30 31 32 33: 
             0x00085d78: 34 35 36 37: 
             0x00085d7c: 38 39 41 42: 
             0x00085d80: 43 44 45 46: 
             0x00085d84: 00 00 00 00: 
             0x00085d88: 30 31 32 33: 
             0x00085d8c: 34 35 36 37: 
             0x00085d90: 38 39 61 62: 
             0x00085d94: 63 64 65 66: 
             0x00085d98: 00 00 00 00: 
             0x00085d9c: 41 72 67 20: 
             0x00085da0: 25 64 20 25: 
             0x00085da4: 73 0a 00 00: 
             0x00085da8: 49 4e 46 00: 
             0x00085dac: 49 6e 66 69: 
             0x00085db0: 6e 69 74 79: 
             0x00085db4: 00 00 00 00: 
             0x00085db8: 4e 41 4e 00: 
             0x00085dbc: 4e 61 4e 00: 
             0x00085dc0: 50 38 43 20: 
             0x00085dc4: 3d 20 25 78: 
             0x00085dc8: 0a 00 00 00: 
             0x00085dcc: 62 75 67 20: 
             0x00085dd0: 69 6e 20 76: 
             0x00085dd4: 66 70 72 69: 
             0x00085dd8: 6e 74 66 3a: 
             0x00085ddc: 20 62 61 64: 
             0x00085de0: 20 62 61 73: 
             0x00085de4: 65 00 00 00: 
             0x00085de8: 69 6e 66 00: 
             0x00085dec: 6e 61 6e 00: 

Disassembly of section .ctors (size: 12)

<_CTOR_LIST_>:
<.ctors>:
             0x00085df0: 30 08 08 00: 

<.ctors>:
             0x00085df4: 78 0a 08 00: 

<.ctors>:
             0x00085df8: 90 0b 08 00: 

Disassembly of section .dp.data (size: 48)

<_dp>:
<__timers>:
<.dp.data>:
             0x00085e00: 01 00 00 00: 
             0x00085e04: 00 00 00 00: 
             0x00085e08: 00 00 00 00: 
             0x00085e0c: 00 00 00 00: 
             0x00085e10: 00 00 00 00: 
             0x00085e14: 00 00 00 00: 
             0x00085e18: 00 00 00 00: 
             0x00085e1c: 00 00 00 00: 

<XSCOPE_REDIRECT_IO>:
<.dp.data>:
             0x00085e20: 00 00 00 00: 

<__sodChan>:
<.dp.data>:
             0x00085e24: 00 00 00 00: 

<__sodFlag>:
<.dp.data>:
<.dp.data>:
             0x00085e28: 00 00 00 00: 

<__sodEnd>:
             0x00085e2c: 02 01 00 80: 

Disassembly of section .dp.data.4 (size: 48)

<__ctype_ptr__>:
<.dp.data.4>:
<.dp.data.4>:
             0x00085e30: 08 5a 08 00: 

<.dp.data.4>:
<__malloc_limit>:
             0x00085e34: e0 fb 0f 00: 

<__malloc_end>:
             0x00085e38: 14 62 08 00: 

<xscope_ref_clk>:
<.dp.data.4>:
             0x00085e3c: 06 00 00 00: 

<.dp.data.4>:
<__stdin>:
             0x00085e40: bc 5e 08 00: 

<__stdout>:
             0x00085e44: 18 5f 08 00: 

<__stderr>:
             0x00085e48: 74 5f 08 00: 

<__sfp_lock>:
             0x00085e4c: ff ff ff ff: 
             0x00085e50: 00 00 00 00: 

<__sinit_lock>:
             0x00085e54: ff ff ff ff: 
             0x00085e58: 00 00 00 00: 

<.dp.data.4>:
<_atexit_fns>:
             0x00085e5c: d0 5f 08 00: 

Disassembly of section .dp.data.extmem.setps (size: 4)

<.dp.data.extmem.setps>:
<__extmem_setps_val>:
             0x00085e60: 00 18 00 00: 

Loadable 2 for tile[1] (node "0", tile 1):

Disassembly of section .text (size: 12)

<_start>:
             0x00080000: 07 68:       ldc (ru6)       r0, 0x7
             0x00080002: 02 d0:       bl (u10)        0x2 <_DoSyscall>
             0x00080004: ed 07:       clre (0r)       
             0x00080006: ec 07:       waiteu (0r)     

<_DoSyscall>:
             0x00080008: d0 a6:       mkmsk (rus)     r0, 0x20
             0x0008000a: c0 77:       retsp (u6)      0x0

Disassembly of section .dp.data (size: 8)

<_dp>:
<.dp.data>:
<__sodFlag>:
             0x0008000c: 00 00 00 00: 

<__sodEnd>:
             0x00080010: 02 01 00 80: 


