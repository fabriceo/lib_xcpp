/Users/fabrice/github/NAX1/lib_xcpp/examples/app_2/bin/XTAG/examples_app_2_XTAG.xe: file format: xcore-xe

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
             0x00080022: 01 f0 90 6f: ldw (lru6)      sp, cp[0x50]
             0x00080026: f0 17:       mjoin (1r)      res[r0]
             0x00080028: e0 17:       freer (1r)      res[r0]
             0x0008002a: 08 f0 0b 68: ldc (lru6)      r0, 0x20b
             0x0008002e: 00 f0 52 58: ldw (lru6)      r1, dp[0x12]
             0x00080032: c4 fe ec 1f: set (lr2r)      ps[r0], r1
             0x00080036: 00 f0 14 60: ldaw (lru6)     r0, dp[0x14]
             0x0008003a: 40 68:       ldc (ru6)       r1, 0x0
             0x0008003c: 01 f0 91 6c: ldw (lru6)      r2, cp[0x51]
             0x00080040: 00 f0 6a d3: bl (lu10)       0x36a <.label2>
             0x00080044: 01 f0 0c 6c: ldw (lru6)      r0, cp[0x4c]
             0x00080048: 40 68:       ldc (ru6)       r1, 0x0
             0x0008004a: 01 f0 92 6c: ldw (lru6)      r2, cp[0x52]
             0x0008004e: 00 f0 63 d3: bl (lu10)       0x363 <.label2>
             0x00080052: 01 f0 0d 6c: ldw (lru6)      r0, cp[0x4d]
             0x00080056: 40 68:       ldc (ru6)       r1, 0x0
             0x00080058: 01 f0 93 6c: ldw (lru6)      r2, cp[0x53]
             0x0008005c: 00 f0 5c d3: bl (lu10)       0x35c <.label2>
             0x00080060: 00 f0 5e d3: bl (lu10)       0x35e <.label3>
             0x00080064: 00 f0 32 d0: bl (lu10)       0x32 <.label4>
             0x00080068: 00 f0 c6 6a: ldc (lru6)      r11, 0x6
             0x0008006c: c8 ea:       setc (ru6)      res[r11], 0x8
             0x0008006e: cf ea:       setc (ru6)      res[r11], 0xf
             0x00080070: 00 68:       ldc (ru6)       r0, 0x0
             0x00080072: 01 54:       stw (ru6)       r0, sp[0x1]
             0x00080074: 00 f0 44 68: ldc (lru6)      r1, 0x4
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
             0x0008008c: 00 f0 ba d2: bl (lu10)       0x2ba <.label6>
             0x00080090: b0 f8 ec 97: ashr (l2rus)    r11, r0, 0x20
             0x00080094: c2 7a:       bf (ru6)        r11, 0x2 <.label5>
             0x00080096: 01 90:       add (2rus)      r0, r0, 0x1
             0x00080098: f0 4f:       ecallt (1r)     r0
.label5      0x0008009a: 41 64:       ldaw (ru6)      r1, sp[0x1]
             0x0008009c: 00 f0 da d2: bl (lu10)       0x2da <.label7>
             0x000800a0: 02 70:       bt (ru6)        r0, 0x2 <.label8>
             0x000800a2: 00 f0 1f d3: bl (lu10)       0x31f <.label9>
.label8      0x000800a6: 00 f0 29 d3: bl (lu10)       0x329 <.label10>

<_InitChildThread>:
             0x000800aa: 01 d0:       bl (u10)        0x1 <_SetupThread>
             0x000800ac: ee 07:       ssync (0r)      

<_SetupThread>:
             0x000800ae: 18 dc:       ldap (u10)      r11, -0x18 <_TrapHandler>
             0x000800b0: ff 07:       set (0r)        kep, r11
             0x000800b2: 01 f0 d5 db: ldap (lu10)     r11, 0x7d5 <.label11>
             0x000800b6: fb 37:       set (1r)        cp, r11
             0x000800b8: 01 f0 4b 6f: ldw (lru6)      dp, cp[0x4b]
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
             0x000800ce: 01 f0 11 d2: bl (lu10)       0x611 <.label12>
             0x000800d2: 01 f0 15 6d: ldw (lru6)      r4, cp[0x55]
             0x000800d6: 06 79:       bf (ru6)        r4, 0x6 <do_ctors_end> <.init>
             0x000800d8: 01 f0 4e 6d: ldw (lru6)      r5, cp[0x4e]

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
.label74     0x000800e6: 42 77:       entsp (u6)      0x2

<.fini>:
             0x000800e8: 84 77:       extsp (u6)      0x4
             0x000800ea: 01 55:       stw (ru6)       r4, sp[0x1]
             0x000800ec: 42 55:       stw (ru6)       r5, sp[0x2]
             0x000800ee: 83 55:       stw (ru6)       r6, sp[0x3]
             0x000800f0: 01 f0 94 6d: ldw (lru6)      r6, cp[0x54]
             0x000800f4: 88 79:       bf (ru6)        r6, 0x8 <do_dtors_end>
             0x000800f6: 00 69:       ldc (ru6)       r4, 0x0
             0x000800f8: 01 f0 4f 6d: ldw (lru6)      r5, cp[0x4f]

<do_dtors_loop>:
             0x000800fc: 04 4b:       ldw (3r)        r0, r5[r4]
             0x000800fe: e0 27:       bla (1r)        r0
             0x00080100: 01 91:       add (2rus)      r4, r4, 0x1
             0x00080102: b2 cb:       lsu (3r)        r11, r4, r6
             0x00080104: c5 76:       bt (ru6)        r11, -0x5 <do_dtors_loop>

<do_dtors_end>:
             0x00080106: 00 f0 15 d3: bl (lu10)       0x315 <.label13>
             0x0008010a: 01 5d:       ldw (ru6)       r4, sp[0x1]
             0x0008010c: 42 5d:       ldw (ru6)       r5, sp[0x2]
             0x0008010e: 83 5d:       ldw (ru6)       r6, sp[0x3]
             0x00080110: 84 67:       ldaw (ru6)      sp, sp[0x4]

<.fini>:
             0x00080112: c2 77:       retsp (u6)      0x2

Disassembly of section .text (size: 3910)

<_write>:
             0x00080114: ff 17:       nop (0r)        
             0x00080116: 86 7f:       dualentsp (u6)  0x6
             0x00080118: 05 f9 ec f7: std (l2rus)     r5, r4, sp[0x1]
             0x0008011c: 48 90:       add (2rus)      r4, r2, 0x0
             0x0008011e: 84 55:       stw (ru6)       r6, sp[0x4]
             0x00080120: 54 90:       add (2rus)      r5, r1, 0x0
             0x00080122: 60 90:       add (2rus)      r6, r0, 0x0
             0x00080124: 00 f0 98 d1: bl (lu10)       0x198 <xscope_get_io_config>
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
             0x00080144: 00 f0 96 d1: bl (lu10)       0x196 <xscope_syscall_write>
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
             0x00080164: 00 f0 2a d2: bl (lu10)       0x22a <xscope_syscall_data_write>
             0x00080168: 00 f0 01 73: bu (lu6)        0x1 <.label17>
.label18     0x0008016c: 10 a7:       mkmsk (rus)     r4, 0x20
             0x0008016e: ff 17:       nop (0r)        
.label17     0x00080170: c0 90:       add (2rus)      r0, r4, 0x0
             0x00080172: 84 5d:       ldw (ru6)       r6, sp[0x4]
             0x00080174: 05 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x1]
             0x00080178: ff 17:       nop (0r)        
             0x0008017a: c6 77:       retsp (u6)      0x6

<xscope_user_init>:
             0x0008017c: 00 f0 42 77: entsp (lu6)     0x2
             0x00080180: 01 f0 48 7f: ldaw (lu6)      r11, cp[0x48]
             0x00080184: c1 56:       stw (ru6)       r11, sp[0x1]
             0x00080186: 01 f0 47 7f: ldaw (lu6)      r11, cp[0x47]
             0x0008018a: 00 68:       ldc (ru6)       r0, 0x0
             0x0008018c: 10 90:       add (2rus)      r1, r0, 0x0
             0x0008018e: ac 91:       add (2rus)      r2, r11, 0x0
             0x00080190: 30 90:       add (2rus)      r3, r0, 0x0
             0x00080192: 00 f0 7d d3: bl (lu10)       0x37d <xscope_register>
             0x00080196: d1 a6:       mkmsk (rus)     r0, 0x1
             0x00080198: 01 f0 34 d0: bl (lu10)       0x434 <xscope_config_io>
             0x0008019c: c2 77:       retsp (u6)      0x2
             0x0008019e: 00 00:       stw (2rus)      r0, r0[0x0]

<__main__main_tile_0>:
             0x000801a0: 00 f0 42 77: entsp (lu6)     0x2
             0x000801a4: 00 f0 0a d0: bl (lu10)       0xa <main0>
             0x000801a8: c2 77:       retsp (u6)      0x2
             0x000801aa: 00 00:       stw (2rus)      r0, r0[0x0]

<__dtor_P8C>:
             0x000801ac: 00 f0 40 77: entsp (lu6)     0x0
             0x000801b0: 00 f0 14 58: ldw (lru6)      r0, dp[0x14]
             0x000801b4: 01 78:       bf (ru6)        r0, 0x1 <.label19>
             0x000801b6: 00 e8:       setc (ru6)      res[r0], 0x0
.label19     0x000801b8: c0 77:       retsp (u6)      0x0
             0x000801ba: 00 00:       stw (2rus)      r0, r0[0x0]

<main0>:
             0x000801bc: 00 f0 44 77: entsp (lu6)     0x4
             0x000801c0: 02 55:       stw (ru6)       r4, sp[0x2]
             0x000801c2: 40 90:       add (2rus)      r4, r0, 0x0
             0x000801c4: 00 f2 02 68: ldc (lru6)      r0, 0x8002
             0x000801c8: 00 f0 22 50: stw (lru6)      r0, dp[0x22]
             0x000801cc: 00 f0 24 50: stw (lru6)      r0, dp[0x24]
             0x000801d0: 00 f0 14 58: ldw (lru6)      r0, dp[0x14]
             0x000801d4: d5 a6:       mkmsk (rus)     r1, 0x1
             0x000801d6: d4 16:       setd (r2r)      res[r0], r1
             0x000801d8: c4 ae:       out (r2r)       res[r0], r1
             0x000801da: 00 f0 56 58: ldw (lru6)      r1, dp[0x16]
             0x000801de: 00 f0 97 58: ldw (lru6)      r2, dp[0x17]
             0x000801e2: 14 08:       ldw (2rus)      r1, r1[0x0]
             0x000801e4: dd fe ec 1f: getd (l2r)      r3, res[r1]
             0x000801e8: 2e f8 ec 0f: xor (l3r)       r2, r3, r2
             0x000801ec: d9 16:       setd (r2r)      res[r1], r2
             0x000801ee: c9 ae:       out (r2r)       res[r1], r2
             0x000801f0: d4 fe ec 1f: getd (l2r)      r1, res[r0]
             0x000801f4: 01 f0 66 7f: ldaw (lu6)      r11, cp[0x66]
             0x000801f8: 8c 91:       add (2rus)      r0, r11, 0x0
             0x000801fa: 00 f0 d5 d0: bl (lu10)       0xd5 <debug_printf>
             0x000801fe: 94 8f:       int (2r)        r1, res[r4]
             0x00080200: 11 cf:       chkct (rus)     res[r4], 0x1
             0x00080202: 34 47:       zext (rus)      r1, 0x8
             0x00080204: 01 f0 69 7f: ldaw (lu6)      r11, cp[0x69]
             0x00080208: 8c 91:       add (2rus)      r0, r11, 0x0
             0x0008020a: 00 f0 cd d0: bl (lu10)       0xcd <debug_printf>
             0x0008020e: 00 f0 4b d0: bl (lu10)       0x4b <_Z8taskTestv>
             0x00080212: 01 f0 74 7f: ldaw (lu6)      r11, cp[0x74]
             0x00080216: 8c 91:       add (2rus)      r0, r11, 0x0
             0x00080218: 00 f0 c6 d0: bl (lu10)       0xc6 <debug_printf>
             0x0008021c: 02 5d:       ldw (ru6)       r4, sp[0x2]
             0x0008021e: c4 77:       retsp (u6)      0x4

<_GLOBAL__sub_I_app2.cpp>:
             0x00080220: 00 f0 42 77: entsp (lu6)     0x2
             0x00080224: 01 f0 19 6c: ldw (lru6)      r0, cp[0x59]
             0x00080228: 00 f0 14 50: stw (lru6)      r0, dp[0x14]
             0x0008022c: 00 f2 42 68: ldc (lru6)      r1, 0x8002
             0x00080230: 00 f0 55 50: stw (lru6)      r1, dp[0x15]
             0x00080234: 00 f0 a2 58: ldw (lru6)      r2, dp[0x22]
             0x00080238: 88 70:       bt (ru6)        r2, 0x8 <.label20>
             0x0008023a: 00 f2 82 68: ldc (lru6)      r2, 0x8002
             0x0008023e: 19 30:       eq (3r)         r1, r2, r1
             0x00080240: 46 70:       bt (ru6)        r1, 0x6 <.label21>
             0x00080242: 00 68:       ldc (ru6)       r0, 0x0
             0x00080244: 00 f0 14 50: stw (lru6)      r0, dp[0x14]
             0x00080248: 0a 73:       bu (u6)         0xa <.label22>
.label20     0x0008024a: 19 30:       eq (3r)         r1, r2, r1
             0x0008024c: e1 4f:       ecallf (1r)     r1
.label21     0x0008024e: 08 e8:       setc (ru6)      res[r0], 0x8
             0x00080250: 46 68:       ldc (ru6)       r1, 0x6
             0x00080252: d4 fe ec 0f: setclk (lr2r)   res[r0], r1
             0x00080256: d5 a6:       mkmsk (rus)     r1, 0x1
             0x00080258: d4 16:       setd (r2r)      res[r0], r1
             0x0008025a: c4 ae:       out (r2r)       res[r0], r1
             0x0008025c: 03 e8:       setc (ru6)      res[r0], 0x3
.label22     0x0008025e: 00 f0 5b dc: ldap (lu10)     r11, -0x5b <__dtor_P8C>
             0x00080262: 8c 91:       add (2rus)      r0, r11, 0x0
             0x00080264: 01 f0 28 d0: bl (lu10)       0x428 <atexit>
             0x00080268: 00 f0 14 60: ldaw (lru6)     r0, dp[0x14]
             0x0008026c: 00 f0 16 50: stw (lru6)      r0, dp[0x16]
             0x00080270: 04 68:       ldc (ru6)       r0, 0x4
             0x00080272: 00 f0 17 50: stw (lru6)      r0, dp[0x17]
             0x00080276: 00 f2 02 68: ldc (lru6)      r0, 0x8002
             0x0008027a: 00 f0 21 50: stw (lru6)      r0, dp[0x21]
             0x0008027e: c2 77:       retsp (u6)      0x2

<task1>:
             0x00080280: 00 f0 42 77: entsp (lu6)     0x2
             0x00080284: 10 90:       add (2rus)      r1, r0, 0x0
             0x00080286: 01 f0 6c 7f: ldaw (lu6)      r11, cp[0x6c]
             0x0008028a: 8c 91:       add (2rus)      r0, r11, 0x0
             0x0008028c: 00 f0 8c d0: bl (lu10)       0x8c <debug_printf>
             0x00080290: c2 77:       retsp (u6)      0x2
             0x00080292: 00 00:       stw (2rus)      r0, r0[0x0]

<task2>:
             0x00080294: 00 f0 42 77: entsp (lu6)     0x2
             0x00080298: 10 90:       add (2rus)      r1, r0, 0x0
             0x0008029a: 01 f0 6f 7f: ldaw (lu6)      r11, cp[0x6f]
             0x0008029e: 8c 91:       add (2rus)      r0, r11, 0x0
             0x000802a0: 00 f0 82 d0: bl (lu10)       0x82 <debug_printf>
             0x000802a4: c2 77:       retsp (u6)      0x2
             0x000802a6: 00 00:       stw (2rus)      r0, r0[0x0]

<_Z8taskTestv>:
             0x000802a8: 00 f0 48 77: entsp (lu6)     0x8
             0x000802ac: 05 f9 ec f7: std (l2rus)     r5, r4, sp[0x1]
             0x000802b0: 2e f9 ec f7: std (l2rus)     r7, r6, sp[0x2]
             0x000802b4: 07 fa ec f7: std (l2rus)     r9, r8, sp[0x3]
             0x000802b8: 0f 87:       getr (rus)      r7, 0x3
             0x000802ba: 01 f0 06 68: ldc (lru6)      r0, 0x46
             0x000802be: 84 69:       ldc (ru6)       r6, 0x4
             0x000802c0: 18 f9 ec 1f: ldaw (l3r)      r5, r6[r0]
             0x000802c4: c4 90:       add (2rus)      r0, r5, 0x0
             0x000802c6: 01 f0 57 d0: bl (lu10)       0x457 <malloc>
             0x000802ca: 40 90:       add (2rus)      r4, r0, 0x0
             0x000802cc: 01 13:       add (3r)        r0, r4, r5
             0x000802ce: 01 f0 1e 6e: ldw (lru6)      r8, cp[0x5e]
             0x000802d2: 10 3d:       and (3r)        r9, r0, r8
             0x000802d4: 01 f0 06 68: ldc (lru6)      r0, 0x46
             0x000802d8: 28 f9 ec 1f: ldaw (l3r)      r6, r6[r0]
             0x000802dc: c8 90:       add (2rus)      r0, r6, 0x0
             0x000802de: 01 f0 4b d0: bl (lu10)       0x44b <malloc>
             0x000802e2: 50 90:       add (2rus)      r5, r0, 0x0
             0x000802e4: 06 13:       add (3r)        r0, r5, r6
             0x000802e6: 90 3c:       and (3r)        r1, r0, r8
             0x000802e8: 00 f0 36 dc: ldap (lu10)     r11, -0x36 <task1>
             0x000802ec: 8c 91:       add (2rus)      r0, r11, 0x0
             0x000802ee: 13 f0 92 68: ldc (lru6)      r2, 0x4d2
             0x000802f2: ff 06:       getst (2r)      r11, res[r7]
             0x000802f4: 8b fc ec b7: set (l3r)       t[r11]:r0, r2
             0x000802f8: 93 fc ec b7: set (l3r)       t[r11]:r1, r0
             0x000802fc: a7 ff ec 07: init (l2r)      t[r11]:sp, r9
             0x00080300: 1c 92:       add (2rus)      r9, r11, 0x0
             0x00080302: 04 d8:       ldap (u10)      r11, 0x4 <.label23>
             0x00080304: bd ff ec 07: init (l2r)      t[r9]:pc, r11
             0x00080308: 04 73:       bu (u6)         0x4 <.label24>
             0x0008030a: ff 17:       nop (0r)        
.label23     0x0008030c: e1 27:       bla (1r)        r1
.label25     0x0008030e: ee 07:       ssync (0r)      
             0x00080310: 02 77:       bu (u6)         -0x2 <.label25>
.label24     0x00080312: d6 79:       bf (ru6)        r7, 0x16 <.label26>
             0x00080314: 00 f0 42 dc: ldap (lu10)     r11, -0x42 <task2>
             0x00080318: 8c 91:       add (2rus)      r0, r11, 0x0
             0x0008031a: 58 f0 ae 68: ldc (lru6)      r2, 0x162e
             0x0008031e: ff 06:       getst (2r)      r11, res[r7]
             0x00080320: 8b fc ec b7: set (l3r)       t[r11]:r0, r2
             0x00080324: 93 fc ec b7: set (l3r)       t[r11]:r1, r0
             0x00080328: 27 ff ec 07: init (l2r)      t[r11]:sp, r1
             0x0008032c: 9c 91:       add (2rus)      r1, r11, 0x0
             0x0008032e: 04 d8:       ldap (u10)      r11, 0x4 <.label27>
             0x00080330: 5d ff ec 07: init (l2r)      t[r1]:pc, r11
             0x00080334: 04 73:       bu (u6)         0x4 <.label28>
             0x00080336: ff 17:       nop (0r)        
.label27     0x00080338: e1 27:       bla (1r)        r1
.label29     0x0008033a: ee 07:       ssync (0r)      
             0x0008033c: 02 77:       bu (u6)         -0x2 <.label29>
.label28     0x0008033e: 16 73:       bu (u6)         0x16 <.label30>
.label26     0x00080340: 0f 87:       getr (rus)      r7, 0x3
             0x00080342: 00 f0 59 dc: ldap (lu10)     r11, -0x59 <task2>
             0x00080346: 8c 91:       add (2rus)      r0, r11, 0x0
             0x00080348: 58 f0 ae 68: ldc (lru6)      r2, 0x162e
             0x0008034c: ff 06:       getst (2r)      r11, res[r7]
             0x0008034e: 8b fc ec b7: set (l3r)       t[r11]:r0, r2
             0x00080352: 93 fc ec b7: set (l3r)       t[r11]:r1, r0
             0x00080356: 27 ff ec 07: init (l2r)      t[r11]:sp, r1
             0x0008035a: 9c 91:       add (2rus)      r1, r11, 0x0
             0x0008035c: 03 d8:       ldap (u10)      r11, 0x3 <.label31>
             0x0008035e: 5d ff ec 07: init (l2r)      t[r1]:pc, r11
             0x00080362: 03 73:       bu (u6)         0x3 <.label32>
.label31     0x00080364: e1 27:       bla (1r)        r1
.label33     0x00080366: ee 07:       ssync (0r)      
             0x00080368: 02 77:       bu (u6)         -0x2 <.label33>
.label32     0x0008036a: da 79:       bf (ru6)        r7, 0x1a <.label34>
.label30     0x0008036c: f7 1f:       msync (1r)      res[r7]
             0x0008036e: 19 a7:       mkmsk (rus)     r6, 0x1
.label39     0x00080370: 01 f0 72 7f: ldaw (lu6)      r11, cp[0x72]
             0x00080374: 8c 91:       add (2rus)      r0, r11, 0x0
             0x00080376: 00 f0 17 d0: bl (lu10)       0x17 <debug_printf>
             0x0008037a: 43 79:       bf (ru6)        r5, 0x3 <.label35>
             0x0008037c: c4 90:       add (2rus)      r0, r5, 0x0
             0x0008037e: 01 f0 45 d0: bl (lu10)       0x445 <free>
.label35     0x00080382: 03 79:       bf (ru6)        r4, 0x3 <.label36>
             0x00080384: c0 90:       add (2rus)      r0, r4, 0x0
             0x00080386: 01 f0 41 d0: bl (lu10)       0x441 <free>
.label36     0x0008038a: 81 79:       bf (ru6)        r6, 0x1 <.label37>
             0x0008038c: f7 17:       mjoin (1r)      res[r7]
.label37     0x0008038e: c1 79:       bf (ru6)        r7, 0x1 <.label38>
             0x00080390: e7 17:       freer (1r)      res[r7]
.label38     0x00080392: 07 fa ec ef: ldd (l2rus)     r9, r8, sp[0x3]
             0x00080396: 2e f9 ec ef: ldd (l2rus)     r7, r6, sp[0x2]
             0x0008039a: 05 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x1]
             0x0008039e: c8 77:       retsp (u6)      0x8
.label34     0x000803a0: c0 69:       ldc (ru6)       r7, 0x0
             0x000803a2: 2c 91:       add (2rus)      r6, r7, 0x0
             0x000803a4: 1b 77:       bu (u6)         -0x1b <.label39>
             0x000803a6: 00 00:       stw (2rus)      r0, r0[0x0]

<debug_printf>:
             0x000803a8: 00 f0 40 77: entsp (lu6)     0x0
             0x000803ac: b2 77:       extsp (u6)      0x32
             0x000803ae: c1 57:       stw (ru6)       lr, sp[0x1]
             0x000803b0: 28 55:       stw (ru6)       r4, sp[0x28]
             0x000803b2: 69 55:       stw (ru6)       r5, sp[0x29]
             0x000803b4: aa 55:       stw (ru6)       r6, sp[0x2a]
             0x000803b6: eb 55:       stw (ru6)       r7, sp[0x2b]
             0x000803b8: 2c 56:       stw (ru6)       r8, sp[0x2c]
             0x000803ba: 6d 56:       stw (ru6)       r9, sp[0x2d]
             0x000803bc: ae 56:       stw (ru6)       r10, sp[0x2e]
             0x000803be: a0 90:       add (2rus)      r10, r0, 0x0
             0x000803c0: 70 54:       stw (ru6)       r1, sp[0x30]
             0x000803c2: b1 54:       stw (ru6)       r2, sp[0x31]
             0x000803c4: f2 54:       stw (ru6)       r3, sp[0x32]
             0x000803c6: 47 66:       ldaw (ru6)      r9, sp[0x7]
             0x000803c8: 30 64:       ldaw (ru6)      r0, sp[0x30]
             0x000803ca: 06 54:       stw (ru6)       r0, sp[0x6]
             0x000803cc: 00 6a:       ldc (ru6)       r8, 0x0
             0x000803ce: 08 8e:       ld8u (3r)       r0, r10[r8]
             0x000803d0: 02 f0 36 78: bf (lru6)       r0, 0xb6 <.label40>
             0x000803d4: 01 f0 b7 68: ldc (lru6)      r2, 0x77
             0x000803d8: 47 64:       ldaw (ru6)      r1, sp[0x7]
             0x000803da: 26 10:       add (3r)        r2, r1, r2
             0x000803dc: 85 54:       stw (ru6)       r2, sp[0x5]
             0x000803de: 19 a7:       mkmsk (rus)     r6, 0x1
             0x000803e0: 01 f0 5c 6d: ldw (lru6)      r5, cp[0x5c]
             0x000803e4: ca 69:       ldc (ru6)       r7, 0xa
             0x000803e6: 94 90:       add (2rus)      r9, r1, 0x0
.label58     0x000803e8: 45 5c:       ldw (ru6)       r1, sp[0x5]
             0x000803ea: 95 cc:       lsu (3r)        r1, r1, r9
             0x000803ec: 48 78:       bf (ru6)        r1, 0x8 <.label41>
             0x000803ee: 07 65:       ldaw (ru6)      r4, sp[0x7]
             0x000803f0: e4 1b:       sub (3r)        r2, r9, r4
             0x000803f2: c8 90:       add (2rus)      r0, r6, 0x0
             0x000803f4: d0 90:       add (2rus)      r1, r4, 0x0
             0x000803f6: 00 f0 73 d5: bl (lu10)       -0x173 <_write>
             0x000803fa: 08 8e:       ld8u (3r)       r0, r10[r8]
             0x000803fc: 50 91:       add (2rus)      r9, r4, 0x0
.label41     0x000803fe: 10 90:       add (2rus)      r1, r0, 0x0
             0x00080400: 34 47:       zext (rus)      r1, 0x8
             0x00080402: a5 68:       ldc (ru6)       r2, 0x25
             0x00080404: 16 30:       eq (3r)         r1, r1, r2
             0x00080406: 71 78:       bf (ru6)        r1, 0x31 <.label42>
             0x00080408: 89 91:       add (2rus)      r0, r10, 0x1
             0x0008040a: da 8b:       ld8u (3r)       r1, r10[r6]
             0x0008040c: 94 fc ec a7: ldaw (l2rus)    r1, r1[-0x8]
             0x00080410: 34 47:       zext (rus)      r1, 0x8
             0x00080412: 25 a8:       shr (2rus)      r2, r1, 0x1
             0x00080414: c6 68:       ldc (ru6)       r3, 0x6
             0x00080416: 2e c8:       lsu (3r)        r2, r3, r2
             0x00080418: 86 70:       bt (ru6)        r2, 0x6 <.label43>
             0x0008041a: d9 20:       shl (3r)        r1, r6, r1
             0x0008041c: a0 f0 89 68: ldc (lru6)      r2, 0x2809
             0x00080420: 16 38:       and (3r)        r1, r1, r2
             0x00080422: 41 78:       bf (ru6)        r1, 0x1 <.label43>
             0x00080424: 8a 91:       add (2rus)      r0, r10, 0x2
.label43     0x00080426: 11 98:       sub (2rus)      r1, r0, 0x1
.label44     0x00080428: 45 90:       add (2rus)      r4, r1, 0x1
             0x0008042a: 46 8a:       ld8u (3r)       r0, r1[r6]
             0x0008042c: 51 12:       add (3r)        r1, r0, r5
             0x0008042e: 34 47:       zext (rus)      r1, 0x8
             0x00080430: 67 ca:       lsu (3r)        r2, r1, r7
             0x00080432: d0 90:       add (2rus)      r1, r4, 0x0
             0x00080434: 87 74:       bt (ru6)        r2, -0x7 <.label44>
             0x00080436: 00 f0 4e 58: ldw (lru6)      r1, dp[0xe]
             0x0008043a: 11 10:       add (3r)        r1, r0, r1
             0x0008043c: 56 8a:       ld8u (3r)       r1, r1[r6]
             0x0008043e: d5 46:       zext (rus)      r1, 0x1
             0x00080440: 42 78:       bf (ru6)        r1, 0x2 <.label45>
             0x00080442: 80 fc ec 9f: ldaw (l2rus)    r0, r0[0x8]
.label45     0x00080446: 01 f0 6f 68: ldc (lru6)      r1, 0x6f
             0x0008044a: 14 c0:       lss (3r)        r1, r1, r0
             0x0008044c: 55 70:       bt (ru6)        r1, 0x15 <.label46>
             0x0008044e: 01 f0 63 68: ldc (lru6)      r1, 0x63
             0x00080452: 11 30:       eq (3r)         r1, r0, r1
             0x00080454: 6b 78:       bf (ru6)        r1, 0x2b <.label47>
             0x00080456: 06 5c:       ldw (ru6)       r0, sp[0x6]
             0x00080458: 50 92:       add (2rus)      r1, r0, 0x4
             0x0008045a: 46 54:       stw (ru6)       r1, sp[0x6]
             0x0008045c: 00 08:       ldw (2rus)      r0, r0[0x0]
             0x0008045e: 95 91:       add (2rus)      r1, r9, 0x1
             0x00080460: 04 fe ec 8f: st8 (l3r)       r0, r9[r8]
             0x00080464: 94 90:       add (2rus)      r9, r1, 0x0
             0x00080466: 01 f0 27 73: bu (lu6)        0x67 <.label48>
.label42     0x0008046a: 95 91:       add (2rus)      r1, r9, 0x1
             0x0008046c: 04 fe ec 8f: st8 (l3r)       r0, r9[r8]
             0x00080470: 94 90:       add (2rus)      r9, r1, 0x0
             0x00080472: c8 91:       add (2rus)      r4, r10, 0x0
             0x00080474: 01 f0 20 73: bu (lu6)        0x60 <.label48>
.label46     0x00080478: 01 f0 5b 6c: ldw (lru6)      r1, cp[0x5b]
             0x0008047c: 01 10:       add (3r)        r0, r0, r1
             0x0008047e: 48 68:       ldc (ru6)       r1, 0x8
             0x00080480: 14 c8:       lsu (3r)        r1, r1, r0
             0x00080482: 01 f0 59 70: bt (lru6)       r1, 0x59 <.label48>
             0x00080486: e0 2f:       bru (1r)        r0
             0x00080488: 0a 73:       bu (u6)         0xa <.label49>
             0x0008048a: 07 73:       bu (u6)         0x7 <.label50>
             0x0008048c: 06 73:       bu (u6)         0x6 <.label50>
             0x0008048e: 1d 73:       bu (u6)         0x1d <.label51>
             0x00080490: 04 73:       bu (u6)         0x4 <.label50>
             0x00080492: 3d 73:       bu (u6)         0x3d <.label52>
             0x00080494: 02 73:       bu (u6)         0x2 <.label50>
             0x00080496: 01 73:       bu (u6)         0x1 <.label50>
             0x00080498: 02 73:       bu (u6)         0x2 <.label49>
.label50     0x0008049a: 01 f0 0d 73: bu (lu6)        0x4d <.label48>
.label49     0x0008049e: 06 5c:       ldw (ru6)       r0, sp[0x6]
             0x000804a0: 50 92:       add (2rus)      r1, r0, 0x4
             0x000804a2: 46 54:       stw (ru6)       r1, sp[0x6]
             0x000804a4: 00 08:       ldw (2rus)      r0, r0[0x0]
             0x000804a6: 94 91:       add (2rus)      r1, r9, 0x0
             0x000804a8: 90 68:       ldc (ru6)       r2, 0x10
             0x000804aa: 37 73:       bu (u6)         0x37 <.label53>
.label47     0x000804ac: 01 f0 64 68: ldc (lru6)      r1, 0x64
             0x000804b0: 01 30:       eq (3r)         r0, r0, r1
             0x000804b2: 01 f0 01 78: bf (lru6)       r0, 0x41 <.label48>
             0x000804b6: 20 92:       add (2rus)      r10, r8, 0x0
             0x000804b8: 06 5c:       ldw (ru6)       r0, sp[0x6]
             0x000804ba: 50 92:       add (2rus)      r1, r0, 0x4
             0x000804bc: 46 54:       stw (ru6)       r1, sp[0x6]
             0x000804be: 00 08:       ldw (2rus)      r0, r0[0x0]
             0x000804c0: 10 f8 ec 97: ashr (l2rus)    r1, r0, 0x20
             0x000804c4: 6e 70:       bt (ru6)        r1, 0x2e <.label54>
             0x000804c6: 04 92:       add (2rus)      r8, r9, 0x0
             0x000804c8: 31 73:       bu (u6)         0x31 <.label55>
.label51     0x000804ca: 06 5c:       ldw (ru6)       r0, sp[0x6]
             0x000804cc: 50 92:       add (2rus)      r1, r0, 0x4
             0x000804ce: 46 54:       stw (ru6)       r1, sp[0x6]
             0x000804d0: 00 08:       ldw (2rus)      r0, r0[0x0]
             0x000804d2: 04 54:       stw (ru6)       r0, sp[0x4]
             0x000804d4: 00 f0 a8 d3: bl (lu10)       0x3a8 <strlen>
             0x000804d8: 80 90:       add (2rus)      r8, r0, 0x0
             0x000804da: 01 f0 38 68: ldc (lru6)      r0, 0x78
             0x000804de: 80 c1:       lss (3r)        r0, r8, r0
             0x000804e0: 07 70:       bt (ru6)        r0, 0x7 <.label56>
             0x000804e2: 87 66:       ldaw (ru6)      r10, sp[0x7]
             0x000804e4: 26 1e:       sub (3r)        r2, r9, r10
             0x000804e6: c8 90:       add (2rus)      r0, r6, 0x0
             0x000804e8: 98 91:       add (2rus)      r1, r10, 0x0
             0x000804ea: 00 f0 ed d5: bl (lu10)       -0x1ed <_write>
             0x000804ee: 18 92:       add (2rus)      r9, r10, 0x0
.label56     0x000804f0: 01 f0 37 68: ldc (lru6)      r0, 0x77
             0x000804f4: 10 90:       add (2rus)      r1, r0, 0x0
             0x000804f6: 84 c4:       lss (3r)        r0, r1, r8
             0x000804f8: a4 90:       add (2rus)      r10, r1, 0x0
             0x000804fa: 01 70:       bt (ru6)        r0, 0x1 <.label57>
             0x000804fc: 20 92:       add (2rus)      r10, r8, 0x0
.label57     0x000804fe: 84 91:       add (2rus)      r0, r9, 0x0
             0x00080500: 44 5c:       ldw (ru6)       r1, sp[0x4]
             0x00080502: a8 91:       add (2rus)      r2, r10, 0x0
             0x00080504: 00 f0 9a d3: bl (lu10)       0x39a <memcpy> <__memcpy_4>
             0x00080508: 96 16:       add (3r)        r9, r9, r10
             0x0008050a: 00 6a:       ldc (ru6)       r8, 0x0
             0x0008050c: 15 73:       bu (u6)         0x15 <.label48>
.label52     0x0008050e: 06 5c:       ldw (ru6)       r0, sp[0x6]
             0x00080510: 50 92:       add (2rus)      r1, r0, 0x4
             0x00080512: 46 54:       stw (ru6)       r1, sp[0x6]
             0x00080514: 00 08:       ldw (2rus)      r0, r0[0x0]
             0x00080516: 94 91:       add (2rus)      r1, r9, 0x0
             0x00080518: ec 90:       add (2rus)      r2, r7, 0x0
.label53     0x0008051a: 00 f0 21 d0: bl (lu10)       0x21 <itoa>
             0x0008051e: 14 12:       add (3r)        r9, r9, r0
             0x00080520: 0b 73:       bu (u6)         0xb <.label48>
.label54     0x00080522: 05 92:       add (2rus)      r8, r9, 0x1
             0x00080524: 6d 68:       ldc (ru6)       r1, 0x2d
             0x00080526: 16 fe ec 8f: st8 (l3r)       r1, r9[r10]
             0x0008052a: c0 96:       neg (2r)        r0, r0
.label55     0x0008052c: 90 91:       add (2rus)      r1, r8, 0x0
             0x0008052e: ec 90:       add (2rus)      r2, r7, 0x0
             0x00080530: 00 f0 16 d0: bl (lu10)       0x16 <itoa>
             0x00080534: 10 12:       add (3r)        r9, r8, r0
             0x00080536: 08 92:       add (2rus)      r8, r10, 0x0
.label48     0x00080538: 61 91:       add (2rus)      r10, r4, 0x1
             0x0008053a: 02 8b:       ld8u (3r)       r0, r4[r6]
             0x0008053c: 02 f0 2c 74: bt (lru6)       r0, -0xac <.label58>
.label40     0x00080540: 47 64:       ldaw (ru6)      r1, sp[0x7]
             0x00080542: a5 19:       sub (3r)        r2, r9, r1
             0x00080544: d1 a6:       mkmsk (rus)     r0, 0x1
             0x00080546: 00 f0 1b d6: bl (lu10)       -0x21b <_write>
             0x0008054a: ae 5e:       ldw (ru6)       r10, sp[0x2e]
             0x0008054c: 2c 5e:       ldw (ru6)       r8, sp[0x2c]
             0x0008054e: 6d 5e:       ldw (ru6)       r9, sp[0x2d]
             0x00080550: aa 5d:       ldw (ru6)       r6, sp[0x2a]
             0x00080552: eb 5d:       ldw (ru6)       r7, sp[0x2b]
             0x00080554: 28 5d:       ldw (ru6)       r4, sp[0x28]
             0x00080556: 69 5d:       ldw (ru6)       r5, sp[0x29]
             0x00080558: c1 5f:       ldw (ru6)       lr, sp[0x1]
             0x0008055a: b2 67:       ldaw (ru6)      sp, sp[0x32]
             0x0008055c: c0 77:       retsp (u6)      0x0
             0x0008055e: 00 00:       stw (2rus)      r0, r0[0x0]

<itoa>:
             0x00080560: 00 f0 46 77: entsp (lu6)     0x6
             0x00080564: 05 f9 ec f7: std (l2rus)     r5, r4, sp[0x1]
             0x00080568: 84 55:       stw (ru6)       r6, sp[0x4]
             0x0008056a: 44 90:       add (2rus)      r4, r1, 0x0
             0x0008056c: 40 68:       ldc (ru6)       r1, 0x0
             0x0008056e: 10 78:       bf (ru6)        r0, 0x10 <.label59>
             0x00080570: 30 90:       add (2rus)      r3, r0, 0x0
.label60     0x00080572: 5e f8 ec 4f: divu (l3r)      r5, r3, r2
             0x00080576: 3e f8 ec cf: remu (l3r)      r3, r3, r2
             0x0008057a: 01 f0 61 7f: ldaw (lu6)      r11, cp[0x61]
             0x0008057e: bf 89:       ld8u (3r)       r3, r11[r3]
             0x00080580: f1 f8 ec 8f: st8 (l3r)       r3, r4[r1]
             0x00080584: 15 90:       add (2rus)      r1, r1, 0x1
             0x00080586: f4 90:       add (2rus)      r3, r5, 0x0
             0x00080588: 4c 75:       bt (ru6)        r5, -0xc <.label60>
             0x0008058a: 00 b0:       eq (2rus)       r0, r0, 0x0
             0x0008058c: 21 18:       sub (3r)        r2, r0, r1
             0x0008058e: 01 73:       bu (u6)         0x1 <.label61>
.label59     0x00080590: 20 b0:       eq (2rus)       r2, r0, 0x0
.label61     0x00080592: 19 a7:       mkmsk (rus)     r6, 0x1
             0x00080594: 4a c2:       lss (3r)        r0, r2, r6
             0x00080596: 06 70:       bt (ru6)        r0, 0x6 <.label62>
             0x00080598: 59 10:       add (3r)        r5, r2, r1
             0x0008059a: c1 10:       add (3r)        r0, r4, r1
             0x0008059c: 70 68:       ldc (ru6)       r1, 0x30
             0x0008059e: 00 f0 bb d0: bl (lu10)       0xbb <memset>
             0x000805a2: 01 73:       bu (u6)         0x1 <.label63>
.label62     0x000805a4: 54 90:       add (2rus)      r5, r1, 0x0
.label63     0x000805a6: c5 98:       sub (2rus)      r0, r5, 0x1
             0x000805a8: 52 c2:       lss (3r)        r1, r0, r6
             0x000805aa: 4d 70:       bt (ru6)        r1, 0xd <.label64>
             0x000805ac: d4 a6:       mkmsk (rus)     r1, 0x20
.label65     0x000805ae: 22 13:       add (3r)        r2, r4, r6
             0x000805b0: 39 88:       ld8u (3r)       r3, r2[r1]
             0x000805b2: 70 89:       ld8u (3r)       r11, r4[r0]
             0x000805b4: b9 f8 ec 8f: st8 (l3r)       r11, r2[r1]
             0x000805b8: f0 f8 ec 8f: st8 (l3r)       r3, r4[r0]
             0x000805bc: 01 98:       sub (2rus)      r0, r0, 0x1
             0x000805be: e9 90:       add (2rus)      r2, r6, 0x1
             0x000805c0: f8 c0:       lss (3r)        r3, r6, r0
             0x000805c2: 68 90:       add (2rus)      r6, r2, 0x0
             0x000805c4: cc 74:       bt (ru6)        r3, -0xc <.label65>
.label64     0x000805c6: c4 90:       add (2rus)      r0, r5, 0x0
             0x000805c8: 84 5d:       ldw (ru6)       r6, sp[0x4]
             0x000805ca: 05 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x1]
             0x000805ce: c6 77:       retsp (u6)      0x6

<__dtor_XCPortUndefined>:
             0x000805d0: 00 f0 40 77: entsp (lu6)     0x0
             0x000805d4: 00 f0 18 58: ldw (lru6)      r0, dp[0x18]
             0x000805d8: 01 78:       bf (ru6)        r0, 0x1 <.label66>
             0x000805da: 00 e8:       setc (ru6)      res[r0], 0x0
.label66     0x000805dc: c0 77:       retsp (u6)      0x0
             0x000805de: 00 00:       stw (2rus)      r0, r0[0x0]

<XCbeforeMain>:
             0x000805e0: 00 f0 40 77: entsp (lu6)     0x0
             0x000805e4: 00 f0 26 50: stw (lru6)      r0, dp[0x26]
             0x000805e8: 00 f0 65 50: stw (lru6)      r1, dp[0x25]
             0x000805ec: 00 f2 02 68: ldc (lru6)      r0, 0x8002
             0x000805f0: 00 f0 22 50: stw (lru6)      r0, dp[0x22]
             0x000805f4: 00 f0 24 50: stw (lru6)      r0, dp[0x24]
             0x000805f8: e0 8f:       gettime (1r)    r0
             0x000805fa: 00 f0 23 50: stw (lru6)      r0, dp[0x23]
             0x000805fe: 00 68:       ldc (ru6)       r0, 0x0
             0x00080600: c0 77:       retsp (u6)      0x0
             0x00080602: 00 00:       stw (2rus)      r0, r0[0x0]

<_get_cmdline>:
.label6      0x00080604: 00 f0 42 77: entsp (lu6)     0x2
             0x00080608: 00 f0 16 d4: bl (lu10)       -0x16 <XCbeforeMain>
             0x0008060c: c2 77:       retsp (u6)      0x2
             0x0008060e: 00 00:       stw (2rus)      r0, r0[0x0]

<_GLOBAL__sub_I_XC_core.cpp>:
             0x00080610: 00 f0 44 77: entsp (lu6)     0x4
             0x00080614: 05 f9 ec f7: std (l2rus)     r5, r4, sp[0x1]
             0x00080618: 00 69:       ldc (ru6)       r4, 0x0
             0x0008061a: 00 f0 18 51: stw (lru6)      r4, dp[0x18]
             0x0008061e: 00 f0 58 61: ldaw (lru6)     r5, dp[0x18]
             0x00080622: 00 f0 19 51: stw (lru6)      r4, dp[0x19]
             0x00080626: 00 f0 2d dc: ldap (lu10)     r11, -0x2d <__dtor_XCPortUndefined>
             0x0008062a: 8c 91:       add (2rus)      r0, r11, 0x0
             0x0008062c: 00 f0 44 d2: bl (lu10)       0x244 <atexit>
             0x00080630: 00 f0 5a 51: stw (lru6)      r5, dp[0x1a]
             0x00080634: 00 f0 1b 51: stw (lru6)      r4, dp[0x1b]
             0x00080638: 00 f0 27 51: stw (lru6)      r4, dp[0x27]
             0x0008063c: 00 f0 1c 51: stw (lru6)      r4, dp[0x1c]
             0x00080640: 00 f0 1d 51: stw (lru6)      r4, dp[0x1d]
             0x00080644: 00 f0 1e 51: stw (lru6)      r4, dp[0x1e]
             0x00080648: 00 f0 1f 51: stw (lru6)      r4, dp[0x1f]
             0x0008064c: 05 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x1]
             0x00080650: c4 77:       retsp (u6)      0x4
             0x00080652: 00 00:       stw (2rus)      r0, r0[0x0]

<main>:
.label7      0x00080654: 42 77:       entsp (u6)      0x2
.label67     0x00080656: c2 86:       getr (rus)      r0, 0x2
             0x00080658: 02 74:       bt (ru6)        r0, -0x2 <.label67>
             0x0008065a: 7c f0 02 68: ldc (lru6)      r0, 0x1f02
             0x0008065e: 01 f0 d7 6e: ldw (lru6)      r11, cp[0x57]
             0x00080662: 5c 17:       setd (r2r)      res[r0], r11
             0x00080664: d1 4e:       outct (rus)     res[r0], 0x1
             0x00080666: d1 ce:       chkct (rus)     res[r0], 0x1
             0x00080668: 00 f0 40 58: ldw (lru6)      r1, dp[0x0]
             0x0008066c: 41 e8:       setc (ru6)      res[r1], 0x1
             0x0008066e: c9 b6:       in (2r)         r2, res[r1]
             0x00080670: ed 07:       clre (0r)       
             0x00080672: ca 6a:       ldc (ru6)       r11, 0xa
             0x00080674: ab 14:       add (3r)        r2, r2, r11
             0x00080676: 49 e8:       setc (ru6)      res[r1], 0x9
             0x00080678: d9 16:       setd (r2r)      res[r1], r2
             0x0008067a: 09 d8:       ldap (u10)      r11, 0x9 <.label68>
             0x0008067c: f1 47:       setv (1r)       res[r1], r11
             0x0008067e: 06 d8:       ldap (u10)      r11, 0x6 <.label69>
             0x00080680: f0 47:       setv (1r)       res[r0], r11
             0x00080682: 41 7b:       setsr (u6)      0x1
             0x00080684: f0 07:       eeu (1r)        res[r0]
             0x00080686: ff 17:       nop (0r)        
             0x00080688: f1 07:       eeu (1r)        res[r1]
             0x0008068a: ec 07:       waiteu (0r)     
.label69     0x0008068c: d1 ce:       chkct (rus)     res[r0], 0x1
.label68     0x0008068e: 02 68:       ldc (ru6)       r0, 0x2
             0x00080690: 41 68:       ldc (ru6)       r1, 0x1
             0x00080692: 00 f0 40 7f: ldaw (lu6)      r11, cp[0x0]
.label70     0x00080696: 15 98:       sub (2rus)      r1, r1, 0x1
             0x00080698: ad 49:       ldw (3r)        r2, r11[r1]
             0x0008069a: d8 16:       setd (r2r)      res[r0], r2
             0x0008069c: d0 0e:       outt (r2r)      res[r0], r0
             0x0008069e: d1 4e:       outct (rus)     res[r0], 0x1
             0x000806a0: 46 74:       bt (ru6)        r1, -0x6 <.label70>
             0x000806a2: 05 68:       ldc (ru6)       r0, 0x5
             0x000806a4: 00 f0 f2 d1: bl (lu10)       0x1f2 <delay_ticks>
             0x000806a8: 00 f0 41 7f: ldaw (lu6)      r11, cp[0x1]
             0x000806ac: 00 68:       ldc (ru6)       r0, 0x0
             0x000806ae: 60 68:       ldc (ru6)       r1, 0x20
             0x000806b0: 02 69:       ldc (ru6)       r4, 0x2
.label73     0x000806b2: ac 09:       ldw (2rus)      r2, r11[0x0]
             0x000806b4: b8 ac:       shr (2rus)      r3, r2, 0x8
             0x000806b6: 38 47:       zext (rus)      r2, 0x8
             0x000806b8: 58 30:       eq (3r)         r5, r2, r0
             0x000806ba: 47 79:       bf (ru6)        r5, 0x7 <.label71>
             0x000806bc: a8 a4:       shl (2rus)      r2, r2, 0x8
             0x000806be: 68 42:       or (3r)         r2, r2, r4
             0x000806c0: bc a4:       shl (2rus)      r3, r3, 0x8
             0x000806c2: 7c 42:       or (3r)         r3, r3, r4
             0x000806c4: de 16:       setd (r2r)      res[r2], r3
             0x000806c6: 7c 94:       add (2rus)      r11, r11, 0x4
             0x000806c8: 03 73:       bu (u6)         0x3 <.label72>
.label71     0x000806ca: a0 a4:       shl (2rus)      r2, r0, 0x8
             0x000806cc: 68 42:       or (3r)         r2, r2, r4
             0x000806ce: e2 17:       freer (1r)      res[r2]
.label72     0x000806d0: 01 90:       add (2rus)      r0, r0, 0x1
             0x000806d2: 21 30:       eq (3r)         r2, r0, r1
             0x000806d4: 92 7c:       bf (ru6)        r2, -0x12 <.label73>
             0x000806d6: 01 f0 16 6c: ldw (lru6)      r0, cp[0x56]
             0x000806da: 00 f0 9f d6: bl (lu10)       -0x29f <__main__main_tile_0>
             0x000806de: 00 68:       ldc (ru6)       r0, 0x0
             0x000806e0: c2 77:       retsp (u6)      0x2
             0x000806e2: 00 00:       stw (2rus)      r0, r0[0x0]

<__libc_done>:
.label9      0x000806e4: 00 f0 42 77: entsp (lu6)     0x2
             0x000806e8: 00 68:       ldc (ru6)       r0, 0x0
             0x000806ea: 10 90:       add (2rus)      r1, r0, 0x0
             0x000806ec: 00 f0 e2 d2: bl (lu10)       0x2e2 <__call_exitprocs>
             0x000806f0: 00 f0 ea d2: bl (lu10)       0x2ea <_cleanup>
             0x000806f4: 00 f0 09 d7: bl (lu10)       -0x309 <.label74>
             0x000806f8: 00 f0 ec d2: bl (lu10)       0x2ec <_done>

<_exit_unlocked>:
.label10     0x000806fc: 00 f0 44 77: entsp (lu6)     0x4
             0x00080700: 02 55:       stw (ru6)       r4, sp[0x2]
             0x00080702: 40 90:       add (2rus)      r4, r0, 0x0
             0x00080704: 40 68:       ldc (ru6)       r1, 0x0
             0x00080706: 00 f0 d5 d2: bl (lu10)       0x2d5 <__call_exitprocs>
             0x0008070a: 00 f0 dd d2: bl (lu10)       0x2dd <_cleanup>
             0x0008070e: 00 f0 16 d7: bl (lu10)       -0x316 <.label74>
             0x00080712: c0 90:       add (2rus)      r0, r4, 0x0
             0x00080714: 00 f0 e6 d2: bl (lu10)       0x2e6 <_exit>

<memset>:
.label2      0x00080718: 00 f0 c3 6e: ldw (lru6)      r11, cp[0x3]
             0x0008071c: ff 17:       nop (0r)        
             0x0008071e: fb 27:       bau (1r)        r11

<__init_threadlocal_timer>:
.label3      0x00080720: 00 f0 40 77: entsp (lu6)     0x0
             0x00080724: c9 86:       getr (rus)      r2, 0x1
             0x00080726: 00 f0 40 60: ldaw (lru6)     r1, dp[0x0]
             0x0008072a: ee 17:       get (0r)        r11, id
             0x0008072c: a7 fc ec 07: stw (l3r)       r2, r1[r11]
             0x00080730: c0 77:       retsp (u6)      0x0
             0x00080732: 00 00:       stw (2rus)      r0, r0[0x0]

<__free_threadlocal_timer>:
.label13     0x00080734: 00 f0 40 77: entsp (lu6)     0x0
             0x00080738: 00 f0 80 60: ldaw (lru6)     r2, dp[0x0]
             0x0008073c: ee 17:       get (0r)        r11, id
             0x0008073e: ab 4c:       ldw (3r)        r2, r2[r11]
             0x00080740: e2 17:       freer (1r)      res[r2]
             0x00080742: c0 77:       retsp (u6)      0x0

<xscope_lock_init>:
             0x00080744: ff 17:       nop (0r)        
             0x00080746: 80 7f:       dualentsp (u6)  0x0
             0x00080748: 81 87:       getr (rus)      r0, 0x5
             0x0008074a: ff 17:       nop (0r)        
             0x0008074c: 00 f0 28 50: stw (lru6)      r0, dp[0x28]
             0x00080750: ff 17:       nop (0r)        
             0x00080752: c0 77:       retsp (u6)      0x0

<xscope_lock_deinit>:
             0x00080754: ff 17:       nop (0r)        
             0x00080756: 80 7f:       dualentsp (u6)  0x0
             0x00080758: ff 17:       nop (0r)        
             0x0008075a: c0 77:       retsp (u6)      0x0

<xscope_lock_acquire>:
             0x0008075c: ff 17:       nop (0r)        
             0x0008075e: 80 7f:       dualentsp (u6)  0x0
             0x00080760: 00 f0 68 58: ldw (lru6)      r1, dp[0x28]
             0x00080764: 00 f0 42 70: bt (lru6)       r1, 0x2 <.label75>
             0x00080768: 85 87:       getr (rus)      r1, 0x5
             0x0008076a: ff 17:       nop (0r)        
             0x0008076c: 00 f0 68 50: stw (lru6)      r1, dp[0x28]
.label75     0x00080770: c5 b6:       in (2r)         r1, res[r1]
             0x00080772: ff 17:       nop (0r)        
             0x00080774: ff 17:       nop (0r)        
             0x00080776: c0 77:       retsp (u6)      0x0

<xscope_lock_release>:
             0x00080778: ff 17:       nop (0r)        
             0x0008077a: 80 7f:       dualentsp (u6)  0x0
             0x0008077c: 00 f0 28 58: ldw (lru6)      r0, dp[0x28]
             0x00080780: c0 ae:       out (r2r)       res[r0], r0
             0x00080782: ff 17:       nop (0r)        
             0x00080784: ff 17:       nop (0r)        
             0x00080786: c0 77:       retsp (u6)      0x0

<xscope_get_io_config>:
             0x00080788: ff 17:       nop (0r)        
             0x0008078a: 80 7f:       dualentsp (u6)  0x0
             0x0008078c: 00 f0 08 58: ldw (lru6)      r0, dp[0x8]
             0x00080790: ff 17:       nop (0r)        
             0x00080792: c0 77:       retsp (u6)      0x0

<xscope_set_io_config>:
             0x00080794: ff 17:       nop (0r)        
             0x00080796: 80 7f:       dualentsp (u6)  0x0
             0x00080798: 00 f0 08 50: stw (lru6)      r0, dp[0x8]
             0x0008079c: 00 68:       ldc (ru6)       r0, 0x0
             0x0008079e: c0 77:       retsp (u6)      0x0

<xscope_syscall_write>:
             0x000807a0: 00 f0 40 77: entsp (lu6)     0x0
             0x000807a4: 38 90:       add (2rus)      r3, r2, 0x0
             0x000807a6: 24 90:       add (2rus)      r2, r1, 0x0
             0x000807a8: 10 90:       add (2rus)      r1, r0, 0x0
             0x000807aa: 06 68:       ldc (ru6)       r0, 0x6
             0x000807ac: 0a f0 3e 73: bu (lu6)        0x2be <_DoSyscallErrno>

<xscope_constructor>:
             0x000807b0: ff 17:       nop (0r)        
             0x000807b2: 86 7f:       dualentsp (u6)  0x6
             0x000807b4: 05 f9 ec f7: std (l2rus)     r5, r4, sp[0x1]
             0x000807b8: ff 17:       nop (0r)        
             0x000807ba: 84 55:       stw (ru6)       r6, sp[0x4]
             0x000807bc: 00 f0 3a d1: bl (lu10)       0x13a <get_local_tile_id>
             0x000807c0: 40 90:       add (2rus)      r4, r0, 0x0
             0x000807c2: ff 17:       nop (0r)        
             0x000807c4: 00 f0 63 d1: bl (lu10)       0x163 <xscope_gettime_local_timer>
             0x000807c8: 60 90:       add (2rus)      r6, r0, 0x0
             0x000807ca: ff 17:       nop (0r)        
             0x000807cc: 00 f0 6a d1: bl (lu10)       0x16a <xscope_start_ref_clock>
             0x000807d0: 00 f0 24 d4: bl (lu10)       -0x24 <xscope_lock_init>
             0x000807d4: 00 f0 8a d1: bl (lu10)       0x18a <xscope_tx_init>
             0x000807d8: 00 f0 12 78: bf (lru6)       r0, 0x12 <.label76>
             0x000807dc: 03 f0 09 68: ldc (lru6)      r0, 0xc9
             0x000807e0: 00 f0 73 d1: bl (lu10)       0x173 <xscope_tx_char>
             0x000807e4: 71 47:       zext (rus)      r4, 0x10
             0x000807e6: ff 17:       nop (0r)        
             0x000807e8: c4 07:       byterev (2r)    r5, r4
             0x000807ea: ff 17:       nop (0r)        
             0x000807ec: c4 90:       add (2rus)      r0, r5, 0x0
             0x000807ee: ff 17:       nop (0r)        
             0x000807f0: 00 f0 72 d1: bl (lu10)       0x172 <xscope_tx_int>
             0x000807f4: 82 07:       byterev (2r)    r0, r6
             0x000807f6: ff 17:       nop (0r)        
             0x000807f8: 00 f0 70 d1: bl (lu10)       0x170 <xscope_tx_int>
             0x000807fc: 00 f0 7d d1: bl (lu10)       0x17d <xscope_tx_end>
             0x00080800: 00 f0 a2 d5: bl (lu10)       -0x1a2 <xscope_user_init>
             0x00080804: 00 f0 0a 58: ldw (lru6)      r0, dp[0xa]
             0x00080808: 00 f0 0a 78: bf (lru6)       r0, 0xa <.label77>
             0x0008080c: 67 68:       ldc (ru6)       r1, 0x27
             0x0008080e: ff 17:       nop (0r)        
             0x00080810: 01 f0 9a 6c: ldw (lru6)      r2, cp[0x5a]
             0x00080814: c0 90:       add (2rus)      r0, r4, 0x0
             0x00080816: ff 17:       nop (0r)        
             0x00080818: 00 f0 0a d1: bl (lu10)       0x10a <write_pswitch_reg>
             0x0008081c: 11 a7:       mkmsk (rus)     r4, 0x1
             0x0008081e: ff 17:       nop (0r)        
             0x00080820: 00 f0 05 73: bu (lu6)        0x5 <.label78>
.label76     0x00080824: 00 f0 7a d1: bl (lu10)       0x17a <xscope_tx_deinit>
             0x00080828: 00 f0 5a d1: bl (lu10)       0x15a <xscope_stop_ref_clock>
             0x0008082c: 00 f0 37 d4: bl (lu10)       -0x37 <xscope_lock_deinit>
             0x00080830: 00 f0 14 73: bu (lu6)        0x14 <.label79>
.label77     0x00080834: 00 69:       ldc (ru6)       r4, 0x0
             0x00080836: ff 17:       nop (0r)        
.label78     0x00080838: 03 f0 0b 68: ldc (lru6)      r0, 0xcb
             0x0008083c: 00 f0 5c d1: bl (lu10)       0x15c <xscope_tx_char>
             0x00080840: c4 90:       add (2rus)      r0, r5, 0x0
             0x00080842: ff 17:       nop (0r)        
             0x00080844: 00 f0 5d d1: bl (lu10)       0x15d <xscope_tx_int>
             0x00080848: 00 68:       ldc (ru6)       r0, 0x0
             0x0008084a: ff 17:       nop (0r)        
             0x0008084c: 00 f0 5b d1: bl (lu10)       0x15b <xscope_tx_int>
             0x00080850: 01 f0 18 6c: ldw (lru6)      r0, cp[0x58]
             0x00080854: 00 f0 59 d1: bl (lu10)       0x159 <xscope_tx_int>
             0x00080858: 00 f0 66 d1: bl (lu10)       0x166 <xscope_tx_end>
             0x0008085c: 00 f0 6c d1: bl (lu10)       0x16c <xscope_tx_deinit>
             0x00080860: 00 f0 0a 58: ldw (lru6)      r0, dp[0xa]
             0x00080864: 00 f0 04 78: bf (lru6)       r0, 0x4 <.label80>
             0x00080868: 00 f0 03 79: bf (lru6)       r4, 0x3 <.label80>
             0x0008086c: 9c f0 0b 68: ldc (lru6)      r0, 0x270b
.label81     0x00080870: d4 fe ec 17: get (l2r)       r1, ps[r0]
             0x00080874: 00 f0 42 74: bt (lru6)       r1, -0x2 <.label81>
.label80     0x00080878: 0f f0 28 68: ldc (lru6)      r0, 0x3e8
             0x0008087c: 00 f0 37 d1: bl (lu10)       0x137 <xscope_wait>
             0x00080880: 00 f0 44 d1: bl (lu10)       0x144 <xscope_stop_ref_clock>
.label79     0x00080884: ff 17:       nop (0r)        
             0x00080886: 84 5d:       ldw (ru6)       r6, sp[0x4]
             0x00080888: 05 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x1]
             0x0008088c: ff 17:       nop (0r)        
             0x0008088e: c6 77:       retsp (u6)      0x6

<xscope_register>:
             0x00080890: ff 17:       nop (0r)        
             0x00080892: 80 7f:       dualentsp (u6)  0x0
             0x00080894: 92 77:       extsp (u6)      0x12
             0x00080896: ff 17:       nop (0r)        
             0x00080898: ff 17:       nop (0r)        
             0x0008089a: c1 57:       stw (ru6)       lr, sp[0x1]
             0x0008089c: 44 fb ec f7: std (l2rus)     r5, r4, sp[0x4]
             0x000808a0: 6d fb ec f7: std (l2rus)     r7, r6, sp[0x5]
             0x000808a4: 46 fc ec f7: std (l2rus)     r9, r8, sp[0x6]
             0x000808a8: 40 90:       add (2rus)      r4, r0, 0x0
             0x000808aa: 8e 56:       stw (ru6)       r10, sp[0xe]
             0x000808ac: ff 17:       nop (0r)        
             0x000808ae: 03 55:       stw (ru6)       r4, sp[0x3]
             0x000808b0: ff 17:       nop (0r)        
             0x000808b2: 50 54:       stw (ru6)       r1, sp[0x10]
             0x000808b4: ff 17:       nop (0r)        
             0x000808b6: 91 54:       stw (ru6)       r2, sp[0x11]
             0x000808b8: ff 17:       nop (0r)        
             0x000808ba: d2 54:       stw (ru6)       r3, sp[0x12]
             0x000808bc: 00 f0 fa d0: bl (lu10)       0xfa <get_local_tile_id>
             0x000808c0: 10 64:       ldaw (ru6)      r0, sp[0x10]
             0x000808c2: 02 54:       stw (ru6)       r0, sp[0x2]
             0x000808c4: ff 17:       nop (0r)        
             0x000808c6: 07 54:       stw (ru6)       r0, sp[0x7]
             0x000808c8: 00 f0 5c d4: bl (lu10)       -0x5c <xscope_lock_acquire>
             0x000808cc: d1 a6:       mkmsk (rus)     r0, 0x1
             0x000808ce: ff 17:       nop (0r)        
             0x000808d0: c0 c0:       lss (3r)        r0, r4, r0
             0x000808d2: ff 17:       nop (0r)        
             0x000808d4: 00 f0 37 70: bt (lru6)       r0, 0x37 <.label82>
             0x000808d8: ff 17:       nop (0r)        
             0x000808da: 02 5c:       ldw (ru6)       r0, sp[0x2]
             0x000808dc: 31 47:       zext (rus)      r0, 0x10
             0x000808de: ff 17:       nop (0r)        
             0x000808e0: c0 06:       byterev (2r)    r0, r0
             0x000808e2: ff 17:       nop (0r)        
             0x000808e4: ff 17:       nop (0r)        
             0x000808e6: 05 54:       stw (ru6)       r0, sp[0x5]
             0x000808e8: ff 17:       nop (0r)        
             0x000808ea: 03 5c:       ldw (ru6)       r0, sp[0x3]
             0x000808ec: 01 98:       sub (2rus)      r0, r0, 0x1
             0x000808ee: ff 17:       nop (0r)        
             0x000808f0: 80 69:       ldc (ru6)       r6, 0x0
             0x000808f2: 04 54:       stw (ru6)       r0, sp[0x4]
             0x000808f4: 18 91:       add (2rus)      r5, r6, 0x0
             0x000808f6: ff 17:       nop (0r)        
.label87     0x000808f8: ff 17:       nop (0r)        
             0x000808fa: 07 5c:       ldw (ru6)       r0, sp[0x7]
             0x000808fc: 50 92:       add (2rus)      r1, r0, 0x4
             0x000808fe: ff 17:       nop (0r)        
             0x00080900: ff 17:       nop (0r)        
             0x00080902: 47 54:       stw (ru6)       r1, sp[0x7]
             0x00080904: 90 94:       add (2rus)      r1, r0, 0x8
             0x00080906: 70 08:       ldw (2rus)      r7, r0[0x0]
             0x00080908: ff 17:       nop (0r)        
             0x0008090a: 47 54:       stw (ru6)       r1, sp[0x7]
             0x0008090c: ff 17:       nop (0r)        
             0x0008090e: a1 08:       ldw (2rus)      r10, r0[0x1]
             0x00080910: 13 f8 ec 9f: ldaw (l2rus)    r1, r0[0x3]
             0x00080914: ff 17:       nop (0r)        
             0x00080916: 47 54:       stw (ru6)       r1, sp[0x7]
             0x00080918: ff 17:       nop (0r)        
             0x0008091a: 12 08:       ldw (2rus)      r1, r0[0x2]
             0x0008091c: ff 17:       nop (0r)        
             0x0008091e: 46 54:       stw (ru6)       r1, sp[0x6]
             0x00080920: 50 fa ec 9f: ldaw (l2rus)    r1, r0[0x4]
             0x00080924: ff 17:       nop (0r)        
             0x00080926: 47 54:       stw (ru6)       r1, sp[0x7]
             0x00080928: 88 91:       add (2rus)      r0, r10, 0x0
             0x0008092a: 83 08:       ldw (2rus)      r8, r0[0x3]
             0x0008092c: 00 f0 be d0: bl (lu10)       0xbe <strlen>
             0x00080930: 41 90:       add (2rus)      r4, r0, 0x1
             0x00080932: 80 91:       add (2rus)      r0, r8, 0x0
             0x00080934: 00 f0 bc d0: bl (lu10)       0xbc <strlen>
             0x00080938: 91 90:       add (2rus)      r9, r0, 0x1
             0x0008093a: ff 17:       nop (0r)        
             0x0008093c: 03 f0 0a 68: ldc (lru6)      r0, 0xca
             0x00080940: 00 f0 1b d1: bl (lu10)       0x11b <xscope_tx_char>
             0x00080944: ff 17:       nop (0r)        
             0x00080946: 05 5c:       ldw (ru6)       r0, sp[0x5]
             0x00080948: 00 f0 1c d1: bl (lu10)       0x11c <xscope_tx_int>
             0x0008094c: cc 90:       add (2rus)      r0, r7, 0x0
             0x0008094e: ff 17:       nop (0r)        
             0x00080950: 00 f0 1a d1: bl (lu10)       0x11a <xscope_tx_int>
             0x00080954: c0 90:       add (2rus)      r0, r4, 0x0
             0x00080956: ff 17:       nop (0r)        
             0x00080958: 00 f0 18 d1: bl (lu10)       0x118 <xscope_tx_int>
             0x0008095c: ff 17:       nop (0r)        
             0x0008095e: 06 5c:       ldw (ru6)       r0, sp[0x6]
             0x00080960: 00 f0 16 d1: bl (lu10)       0x116 <xscope_tx_int>
             0x00080964: 84 91:       add (2rus)      r0, r9, 0x0
             0x00080966: ff 17:       nop (0r)        
             0x00080968: 00 f0 14 d1: bl (lu10)       0x114 <xscope_tx_int>
             0x0008096c: d1 a6:       mkmsk (rus)     r0, 0x1
             0x0008096e: ff 17:       nop (0r)        
             0x00080970: c0 c0:       lss (3r)        r0, r4, r0
             0x00080972: ff 17:       nop (0r)        
             0x00080974: 00 f0 04 70: bt (lru6)       r0, 0x4 <.label83>
.label84     0x00080978: ff 17:       nop (0r)        
             0x0008097a: ca 8b:       ld8u (3r)       r0, r10[r6]
             0x0008097c: 00 f0 0c d1: bl (lu10)       0x10c <xscope_tx_char>
             0x00080980: 01 99:       sub (2rus)      r4, r4, 0x1
             0x00080982: 29 92:       add (2rus)      r10, r10, 0x1
             0x00080984: 00 f0 04 75: bt (lru6)       r4, -0x4 <.label84>
.label83     0x00080988: d1 a6:       mkmsk (rus)     r0, 0x1
             0x0008098a: ff 17:       nop (0r)        
             0x0008098c: 84 c1:       lss (3r)        r0, r9, r0
             0x0008098e: ff 17:       nop (0r)        
             0x00080990: 00 f0 04 70: bt (lru6)       r0, 0x4 <.label85>
.label86     0x00080994: ff 17:       nop (0r)        
             0x00080996: c2 8b:       ld8u (3r)       r0, r8[r6]
             0x00080998: 00 f0 05 d1: bl (lu10)       0x105 <xscope_tx_char>
             0x0008099c: 15 9a:       sub (2rus)      r9, r9, 0x1
             0x0008099e: 01 92:       add (2rus)      r8, r8, 0x1
             0x000809a0: 00 f0 44 76: bt (lru6)       r9, -0x4 <.label86>
.label85     0x000809a4: 00 f0 13 d1: bl (lu10)       0x113 <xscope_tx_end>
             0x000809a8: c5 90:       add (2rus)      r0, r5, 0x1
             0x000809aa: 44 5c:       ldw (ru6)       r1, sp[0x4]
             0x000809ac: d5 30:       eq (3r)         r1, r5, r1
             0x000809ae: 50 90:       add (2rus)      r5, r0, 0x0
             0x000809b0: 00 f0 6f 7c: bf (lru6)       r1, -0x2f <.label87>
.label82     0x000809b4: ff 17:       nop (0r)        
             0x000809b6: 03 5c:       ldw (ru6)       r0, sp[0x3]
             0x000809b8: 00 f0 0b 78: bf (lru6)       r0, 0xb <.label88>
             0x000809bc: 03 f0 0b 68: ldc (lru6)      r0, 0xcb
             0x000809c0: 00 f0 fb d0: bl (lu10)       0xfb <xscope_tx_char>
             0x000809c4: ff 17:       nop (0r)        
             0x000809c6: 02 5c:       ldw (ru6)       r0, sp[0x2]
             0x000809c8: 31 47:       zext (rus)      r0, 0x10
             0x000809ca: ff 17:       nop (0r)        
             0x000809cc: c0 06:       byterev (2r)    r0, r0
             0x000809ce: ff 17:       nop (0r)        
             0x000809d0: 00 f0 fa d0: bl (lu10)       0xfa <xscope_tx_int>
             0x000809d4: 01 f0 18 6c: ldw (lru6)      r0, cp[0x58]
             0x000809d8: 00 f0 f8 d0: bl (lu10)       0xf8 <xscope_tx_int>
             0x000809dc: 00 68:       ldc (ru6)       r0, 0x0
             0x000809de: ff 17:       nop (0r)        
             0x000809e0: 00 f0 f6 d0: bl (lu10)       0xf6 <xscope_tx_int>
             0x000809e4: 00 f0 03 d1: bl (lu10)       0x103 <xscope_tx_end>
.label88     0x000809e8: 00 f0 9d d4: bl (lu10)       -0x9d <xscope_lock_release>
             0x000809ec: ff 17:       nop (0r)        
             0x000809ee: 8e 5e:       ldw (ru6)       r10, sp[0xe]
             0x000809f0: 46 fc ec ef: ldd (l2rus)     r9, r8, sp[0x6]
             0x000809f4: 6d fb ec ef: ldd (l2rus)     r7, r6, sp[0x5]
             0x000809f8: 44 fb ec ef: ldd (l2rus)     r5, r4, sp[0x4]
             0x000809fc: 92 67:       ldaw (ru6)      sp, sp[0x12]
             0x000809fe: c1 5f:       ldw (ru6)       lr, sp[0x1]
             0x00080a00: ff 17:       nop (0r)        
             0x00080a02: c0 77:       retsp (u6)      0x0

<xscope_config_io>:
             0x00080a04: ff 17:       nop (0r)        
             0x00080a06: 82 7f:       dualentsp (u6)  0x2
             0x00080a08: 00 f0 9e d4: bl (lu10)       -0x9e <xscope_set_io_config>
             0x00080a0c: ff 17:       nop (0r)        
             0x00080a0e: c2 77:       retsp (u6)      0x2

<xscope_syscall_data_write>:
             0x00080a10: ff 17:       nop (0r)        
             0x00080a12: 88 7f:       dualentsp (u6)  0x8
             0x00080a14: 05 f9 ec f7: std (l2rus)     r5, r4, sp[0x1]
             0x00080a18: 2e f9 ec f7: std (l2rus)     r7, r6, sp[0x2]
             0x00080a1c: 4c 90:       add (2rus)      r4, r3, 0x0
             0x00080a1e: 06 56:       stw (ru6)       r8, sp[0x6]
             0x00080a20: 58 90:       add (2rus)      r5, r2, 0x0
             0x00080a22: 64 90:       add (2rus)      r6, r1, 0x0
             0x00080a24: 70 90:       add (2rus)      r7, r0, 0x0
             0x00080a26: ff 17:       nop (0r)        
             0x00080a28: 00 f0 b4 d4: bl (lu10)       -0xb4 <xscope_lock_acquire>
             0x00080a2c: 00 f0 c7 d0: bl (lu10)       0xc7 <xscope_gettime>
             0x00080a30: 80 90:       add (2rus)      r8, r0, 0x0
             0x00080a32: cc 90:       add (2rus)      r0, r7, 0x0
             0x00080a34: 00 f0 de d0: bl (lu10)       0xde <xscope_tx_char>
             0x00080a38: 90 a7:       mkmsk (rus)     r0, 0x4
             0x00080a3a: ff 17:       nop (0r)        
             0x00080a3c: 00 f0 dc d0: bl (lu10)       0xdc <xscope_tx_char>
             0x00080a40: 20 07:       byterev (2r)    r0, r8
             0x00080a42: ff 17:       nop (0r)        
             0x00080a44: 00 f0 dd d0: bl (lu10)       0xdd <xscope_tx_int>
             0x00080a48: 04 93:       add (2rus)      r0, r5, 0x4
             0x00080a4a: ff 17:       nop (0r)        
             0x00080a4c: c0 06:       byterev (2r)    r0, r0
             0x00080a4e: ff 17:       nop (0r)        
             0x00080a50: 00 f0 da d0: bl (lu10)       0xda <xscope_tx_int>
             0x00080a54: 82 07:       byterev (2r)    r0, r6
             0x00080a56: ff 17:       nop (0r)        
             0x00080a58: 00 f0 d8 d0: bl (lu10)       0xd8 <xscope_tx_int>
             0x00080a5c: 00 f0 45 79: bf (lru6)       r5, 0x5 <.label89>
             0x00080a60: 80 69:       ldc (ru6)       r6, 0x0
             0x00080a62: ff 17:       nop (0r)        
.label90     0x00080a64: ff 17:       nop (0r)        
             0x00080a66: 02 8b:       ld8u (3r)       r0, r4[r6]
             0x00080a68: 00 f0 d1 d0: bl (lu10)       0xd1 <xscope_tx_char>
             0x00080a6c: 15 99:       sub (2rus)      r5, r5, 0x1
             0x00080a6e: 01 91:       add (2rus)      r4, r4, 0x1
             0x00080a70: 00 f0 44 75: bt (lru6)       r5, -0x4 <.label90>
.label89     0x00080a74: 00 f0 df d0: bl (lu10)       0xdf <xscope_tx_end>
             0x00080a78: 00 f0 c1 d4: bl (lu10)       -0xc1 <xscope_lock_release>
             0x00080a7c: ff 17:       nop (0r)        
             0x00080a7e: 06 5e:       ldw (ru6)       r8, sp[0x6]
             0x00080a80: 2e f9 ec ef: ldd (l2rus)     r7, r6, sp[0x2]
             0x00080a84: 05 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x1]
             0x00080a88: ff 17:       nop (0r)        
             0x00080a8a: c8 77:       retsp (u6)      0x8

<delay_ticks>:
             0x00080a8c: 00 f0 40 77: entsp (lu6)     0x0
             0x00080a90: e1 8f:       gettime (1r)    r1
             0x00080a92: ee 17:       get (0r)        r11, id
             0x00080a94: 00 f0 80 60: ldaw (lru6)     r2, dp[0x0]
             0x00080a98: ab 4c:       ldw (3r)        r2, r2[r11]
             0x00080a9a: 30 f8 ec 97: ashr (l2rus)    r3, r0, 0x20
             0x00080a9e: c6 78:       bf (ru6)        r3, 0x6 <.label91>
             0x00080aa0: 01 f0 e0 6c: ldw (lru6)      r3, cp[0x60]
             0x00080aa4: 37 10:       add (3r)        r3, r1, r3
             0x00080aa6: de 16:       setd (r2r)      res[r2], r3
             0x00080aa8: 89 e8:       setc (ru6)      res[r2], 0x9
             0x00080aaa: ce b6:       in (2r)         r3, res[r2]
.label91     0x00080aac: 04 10:       add (3r)        r0, r1, r0
             0x00080aae: d2 16:       setd (r2r)      res[r2], r0
             0x00080ab0: 89 e8:       setc (ru6)      res[r2], 0x9
             0x00080ab2: c2 b6:       in (2r)         r0, res[r2]
             0x00080ab4: c0 77:       retsp (u6)      0x0
             0x00080ab6: 00 00:       stw (2rus)      r0, r0[0x0]

<atexit>:
             0x00080ab8: 00 f0 42 77: entsp (lu6)     0x2
             0x00080abc: 10 90:       add (2rus)      r1, r0, 0x0
             0x00080abe: 00 68:       ldc (ru6)       r0, 0x0
             0x00080ac0: 20 90:       add (2rus)      r2, r0, 0x0
             0x00080ac2: 30 90:       add (2rus)      r3, r0, 0x0
             0x00080ac4: 00 f0 aa d1: bl (lu10)       0x1aa <__register_exitproc>
             0x00080ac8: c2 77:       retsp (u6)      0x2
             0x00080aca: 00 00:       stw (2rus)      r0, r0[0x0]

<__malloc>:
             0x00080acc: 00 f0 40 77: entsp (lu6)     0x0
             0x00080ad0: 84 77:       extsp (u6)      0x4
             0x00080ad2: 04 f9 ec f7: std (l2rus)     r5, r4, sp[0x0]
             0x00080ad6: 82 55:       stw (ru6)       r6, sp[0x2]
             0x00080ad8: 44 68:       ldc (ru6)       r1, 0x4
             0x00080ada: 11 c8:       lsu (3r)        r1, r0, r1
             0x00080adc: 42 78:       bf (ru6)        r1, 0x2 <.label92>
             0x00080ade: 48 68:       ldc (ru6)       r1, 0x8
             0x00080ae0: 06 73:       bu (u6)         0x6 <.label93>
.label92     0x00080ae2: 01 f0 5f 6c: ldw (lru6)      r1, cp[0x5f]
             0x00080ae6: 14 18:       sub (3r)        r1, r1, r0
             0x00080ae8: d7 46:       zext (rus)      r1, 0x3
             0x00080aea: 11 10:       add (3r)        r1, r0, r1
             0x00080aec: 54 92:       add (2rus)      r1, r1, 0x4
.label93     0x00080aee: 24 c8:       lsu (3r)        r2, r1, r0
             0x00080af0: 00 68:       ldc (ru6)       r0, 0x0
             0x00080af2: bc 70:       bt (ru6)        r2, 0x3c <.label94>
             0x00080af4: 00 f0 69 59: ldw (lru6)      r5, dp[0x29]
             0x00080af8: 00 f0 cd 5a: ldw (lru6)      r11, dp[0xd]
             0x00080afc: 4d 79:       bf (ru6)        r5, 0xd <.label95>
             0x00080afe: 00 f0 a9 61: ldaw (lru6)     r6, dp[0x29]
.label97     0x00080b02: f8 90:       add (2rus)      r3, r6, 0x0
             0x00080b04: e4 90:       add (2rus)      r2, r5, 0x0
             0x00080b06: 48 08:       ldw (2rus)      r4, r2[0x0]
             0x00080b08: 11 c9:       lsu (3r)        r5, r4, r1
             0x00080b0a: 52 79:       bf (ru6)        r5, 0x12 <.label96>
             0x00080b0c: a8 92:       add (2rus)      r6, r2, 0x4
             0x00080b0e: 59 08:       ldw (2rus)      r5, r2[0x1]
             0x00080b10: 48 75:       bt (ru6)        r5, -0x8 <.label97>
             0x00080b12: 12 11:       add (3r)        r5, r4, r2
             0x00080b14: 1d 34:       eq (3r)         r5, r11, r5
             0x00080b16: 5a 71:       bt (ru6)        r5, 0x1a <.label98>
.label95     0x00080b18: 00 f0 8c 58: ldw (lru6)      r2, dp[0xc]
             0x00080b1c: a8 fc ec a7: ldaw (l2rus)    r2, r2[-0x8]
             0x00080b20: ab 1c:       sub (3r)        r2, r2, r11
             0x00080b22: 29 c8:       lsu (3r)        r2, r2, r1
             0x00080b24: a3 70:       bt (ru6)        r2, 0x23 <.label94>
             0x00080b26: 8d 11:       add (3r)        r0, r11, r1
             0x00080b28: 00 f0 0d 50: stw (lru6)      r0, dp[0xd]
             0x00080b2c: ac 91:       add (2rus)      r2, r11, 0x0
             0x00080b2e: 1c 73:       bu (u6)         0x1c <.label99>
.label96     0x00080b30: 84 94:       add (2rus)      r0, r1, 0x8
             0x00080b32: c0 c8:       lsu (3r)        r0, r4, r0
             0x00080b34: 04 78:       bf (ru6)        r0, 0x4 <.label100>
             0x00080b36: 48 92:       add (2rus)      r0, r2, 0x4
             0x00080b38: 19 08:       ldw (2rus)      r1, r2[0x1]
             0x00080b3a: 1c 00:       stw (2rus)      r1, r3[0x0]
             0x00080b3c: 17 73:       bu (u6)         0x17 <.label94>
.label100    0x00080b3e: c1 18:       sub (3r)        r0, r4, r1
             0x00080b40: b9 08:       ldw (2rus)      r11, r2[0x1]
             0x00080b42: 49 10:       add (3r)        r4, r2, r1
             0x00080b44: 4c 00:       stw (2rus)      r4, r3[0x0]
             0x00080b46: c0 00:       stw (2rus)      r0, r4[0x0]
             0x00080b48: 71 01:       stw (2rus)      r11, r4[0x1]
             0x00080b4a: 0e 73:       bu (u6)         0xe <.label99>
.label98     0x00080b4c: 84 1a:       sub (3r)        r4, r1, r4
             0x00080b4e: 00 f0 4c 59: ldw (lru6)      r5, dp[0xc]
             0x00080b52: 01 f0 9d 6d: ldw (lru6)      r6, cp[0x5d]
             0x00080b56: fb 1d:       sub (3r)        r11, r6, r11
             0x00080b58: 7d 14:       add (3r)        r11, r11, r5
             0x00080b5a: 7c cc:       lsu (3r)        r11, r11, r4
             0x00080b5c: c7 72:       bt (ru6)        r11, 0x7 <.label94>
             0x00080b5e: 00 68:       ldc (ru6)       r0, 0x0
             0x00080b60: 0c 00:       stw (2rus)      r0, r3[0x0]
             0x00080b62: 09 10:       add (3r)        r0, r2, r1
             0x00080b64: 00 f0 0d 50: stw (lru6)      r0, dp[0xd]
.label99     0x00080b68: 18 00:       stw (2rus)      r1, r2[0x0]
             0x00080b6a: 48 92:       add (2rus)      r0, r2, 0x4
.label94     0x00080b6c: 82 5d:       ldw (ru6)       r6, sp[0x2]
             0x00080b6e: 04 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x0]
             0x00080b72: 84 67:       ldaw (ru6)      sp, sp[0x4]
             0x00080b74: c0 77:       retsp (u6)      0x0
             0x00080b76: 00 00:       stw (2rus)      r0, r0[0x0]

<malloc>:
             0x00080b78: 00 f0 44 77: entsp (lu6)     0x4
             0x00080b7c: 02 55:       stw (ru6)       r4, sp[0x2]
             0x00080b7e: 40 90:       add (2rus)      r4, r0, 0x0
             0x00080b80: 00 f0 02 d2: bl (lu10)       0x202 <__malloc_lock>
             0x00080b84: c0 90:       add (2rus)      r0, r4, 0x0
             0x00080b86: 00 f0 5f d4: bl (lu10)       -0x5f <__malloc>
             0x00080b8a: 40 90:       add (2rus)      r4, r0, 0x0
             0x00080b8c: 00 f0 04 d2: bl (lu10)       0x204 <__malloc_unlock>
             0x00080b90: c0 90:       add (2rus)      r0, r4, 0x0
             0x00080b92: 02 5d:       ldw (ru6)       r4, sp[0x2]
             0x00080b94: c4 77:       retsp (u6)      0x4
             0x00080b96: 00 00:       stw (2rus)      r0, r0[0x0]

<__free>:
             0x00080b98: 00 f0 40 77: entsp (lu6)     0x0
             0x00080b9c: 84 77:       extsp (u6)      0x4
             0x00080b9e: 04 f9 ec f7: std (l2rus)     r5, r4, sp[0x0]
             0x00080ba2: 82 55:       stw (ru6)       r6, sp[0x2]
             0x00080ba4: 2e 78:       bf (ru6)        r0, 0x2e <.label101>
             0x00080ba6: 40 9a:       sub (2rus)      r0, r0, 0x4
             0x00080ba8: 00 f0 69 58: ldw (lru6)      r1, dp[0x29]
             0x00080bac: c0 68:       ldc (ru6)       r3, 0x0
             0x00080bae: 50 78:       bf (ru6)        r1, 0x10 <.label102>
             0x00080bb0: b0 08:       ldw (2rus)      r11, r0[0x0]
             0x00080bb2: cc 11:       add (3r)        r4, r11, r0
             0x00080bb4: 00 f0 a9 60: ldaw (lru6)     r2, dp[0x29]
.label106    0x00080bb8: 54 08:       ldw (2rus)      r5, r1[0x0]
             0x00080bba: 25 11:       add (3r)        r6, r5, r1
             0x00080bbc: 28 31:       eq (3r)         r6, r6, r0
             0x00080bbe: 8b 71:       bt (ru6)        r6, 0xb <.label103>
             0x00080bc0: a4 32:       eq (3r)         r6, r1, r4
             0x00080bc2: 97 71:       bt (ru6)        r6, 0x17 <.label104>
             0x00080bc4: 51 c8:       lsu (3r)        r5, r0, r1
             0x00080bc6: 5a 71:       bt (ru6)        r5, 0x1a <.label105>
             0x00080bc8: 64 92:       add (2rus)      r2, r1, 0x4
             0x00080bca: 18 08:       ldw (2rus)      r1, r2[0x0]
             0x00080bcc: 4b 74:       bt (ru6)        r1, -0xb <.label106>
             0x00080bce: 17 73:       bu (u6)         0x17 <.label107>
.label102    0x00080bd0: 00 f0 a9 60: ldaw (lru6)     r2, dp[0x29]
             0x00080bd4: 14 73:       bu (u6)         0x14 <.label107>
.label103    0x00080bd6: ed 13:       add (3r)        r2, r11, r5
             0x00080bd8: 24 00:       stw (2rus)      r2, r1[0x0]
             0x00080bda: 35 08:       ldw (2rus)      r3, r1[0x1]
             0x00080bdc: d2 78:       bf (ru6)        r3, 0x12 <.label101>
             0x00080bde: b0 08:       ldw (2rus)      r11, r0[0x0]
             0x00080be0: 8c 11:       add (3r)        r0, r11, r0
             0x00080be2: 03 30:       eq (3r)         r0, r0, r3
             0x00080be4: 0e 78:       bf (ru6)        r0, 0xe <.label101>
             0x00080be6: 0c 08:       ldw (2rus)      r0, r3[0x0]
             0x00080be8: 02 10:       add (3r)        r0, r0, r2
             0x00080bea: 04 00:       stw (2rus)      r0, r1[0x0]
             0x00080bec: 0d 08:       ldw (2rus)      r0, r3[0x1]
             0x00080bee: 05 00:       stw (2rus)      r0, r1[0x1]
             0x00080bf0: 08 73:       bu (u6)         0x8 <.label101>
.label104    0x00080bf2: fd 13:       add (3r)        r3, r11, r5
             0x00080bf4: 30 00:       stw (2rus)      r3, r0[0x0]
             0x00080bf6: 15 08:       ldw (2rus)      r1, r1[0x1]
             0x00080bf8: 11 00:       stw (2rus)      r1, r0[0x1]
             0x00080bfa: 02 73:       bu (u6)         0x2 <.label108>
.label105    0x00080bfc: 34 90:       add (2rus)      r3, r1, 0x0
.label107    0x00080bfe: 31 00:       stw (2rus)      r3, r0[0x1]
.label108    0x00080c00: 08 00:       stw (2rus)      r0, r2[0x0]
.label101    0x00080c02: 82 5d:       ldw (ru6)       r6, sp[0x2]
             0x00080c04: 04 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x0]
             0x00080c08: 84 67:       ldaw (ru6)      sp, sp[0x4]
             0x00080c0a: c0 77:       retsp (u6)      0x0

<free>:
             0x00080c0c: 00 f0 44 77: entsp (lu6)     0x4
             0x00080c10: 02 55:       stw (ru6)       r4, sp[0x2]
             0x00080c12: 40 90:       add (2rus)      r4, r0, 0x0
             0x00080c14: 00 f0 b8 d1: bl (lu10)       0x1b8 <__malloc_lock>
             0x00080c18: c0 90:       add (2rus)      r0, r4, 0x0
             0x00080c1a: 00 f0 43 d4: bl (lu10)       -0x43 <__free>
             0x00080c1e: 00 f0 bb d1: bl (lu10)       0x1bb <__malloc_unlock>
             0x00080c22: 02 5d:       ldw (ru6)       r4, sp[0x2]
             0x00080c24: c4 77:       retsp (u6)      0x4
             0x00080c26: 00 00:       stw (2rus)      r0, r0[0x0]

<strlen>:
             0x00080c28: 00 f0 40 77: entsp (lu6)     0x0
             0x00080c2c: 21 98:       sub (2rus)      r2, r0, 0x1
             0x00080c2e: d5 a6:       mkmsk (rus)     r1, 0x1
.label109    0x00080c30: 39 90:       add (2rus)      r3, r2, 0x1
             0x00080c32: b9 88:       ld8u (3r)       r11, r2[r1]
             0x00080c34: 2c 90:       add (2rus)      r2, r3, 0x0
             0x00080c36: c4 76:       bt (ru6)        r11, -0x4 <.label109>
             0x00080c38: 0c 18:       sub (3r)        r0, r3, r0
             0x00080c3a: c0 77:       retsp (u6)      0x0

<memcpy>:
<__memcpy_4>:
             0x00080c3c: 00 f0 c4 6e: ldw (lru6)      r11, cp[0x4]
             0x00080c40: ff 17:       nop (0r)        
             0x00080c42: fb 27:       bau (1r)        r11

<write_pswitch_reg>:
             0x00080c44: 00 f0 40 77: entsp (lu6)     0x0
             0x00080c48: 08 f3 cc 68: ldc (lru6)      r3, 0xc20c
             0x00080c4c: c1 6a:       ldc (ru6)       r11, 0x1
             0x00080c4e: 00 f0 01 73: bu (lu6)        0x1 <write_switch_reg>
             0x00080c52: 00 00:       stw (2rus)      r0, r0[0x0]

<write_switch_reg>:
             0x00080c54: 00 f0 40 77: entsp (lu6)     0x0
             0x00080c58: 00 55:       stw (ru6)       r4, sp[0x0]
             0x00080c5a: c1 ac:       shr (2rus)      r4, r0, 0x10
             0x00080c5c: 1e 71:       bt (ru6)        r4, 0x1e <write_switch_reg_return_0>
             0x00080c5e: c5 ac:       shr (2rus)      r4, r1, 0x10
             0x00080c60: 1c 71:       bt (ru6)        r4, 0x1c <write_switch_reg_return_0>
             0x00080c62: 81 a4:       shl (2rus)      r0, r0, 0x10
             0x00080c64: 03 40:       or (3r)         r0, r0, r3
             0x00080c66: 02 87:       getr (rus)      r4, 0x2
             0x00080c68: 90 17:       setd (r2r)      res[r4], r0
             0x00080c6a: 03 f0 c0 68: ldc (lru6)      r3, 0xc0
             0x00080c6e: 03 4f:       outct (2r)      res[r4], r3
             0x00080c70: c3 7a:       bf (ru6)        r11, 0x3 <build_return_no_ack>
             0x00080c72: 40 ad:       shr (2rus)      r0, r4, 0x8
             0x00080c74: 80 a4:       shl (2rus)      r0, r0, 0x8
             0x00080c76: 04 73:       bu (u6)         0x4 <write_switch_reg_send>

<build_return_no_ack>:
             0x00080c78: 80 ac:       shr (2rus)      r0, r0, 0x8
             0x00080c7a: 3c a7:       mkmsk (rus)     r3, 0x8
             0x00080c7c: 03 40:       or (3r)         r0, r0, r3
             0x00080c7e: 80 a4:       shl (2rus)      r0, r0, 0x8

<write_switch_reg_send>:
             0x00080c80: b4 ac:       shr (2rus)      r3, r1, 0x8
             0x00080c82: 03 40:       or (3r)         r0, r0, r3
             0x00080c84: 80 af:       out (r2r)       res[r4], r0
             0x00080c86: 94 0f:       outt (r2r)      res[r4], r1
             0x00080c88: 88 af:       out (r2r)       res[r4], r2
             0x00080c8a: 11 4f:       outct (rus)     res[r4], 0x1
             0x00080c8c: c9 7a:       bf (ru6)        r11, 0x9 <write_switch_reg_free_and_return_1>
             0x00080c8e: 90 87:       inct (2r)       r0, res[r4]
             0x00080c90: 03 b0:       eq (2rus)       r0, r0, 0x3
             0x00080c92: 11 cf:       chkct (rus)     res[r4], 0x1
             0x00080c94: e4 17:       freer (1r)      res[r4]
             0x00080c96: 00 5d:       ldw (ru6)       r4, sp[0x0]
             0x00080c98: c0 77:       retsp (u6)      0x0

<write_switch_reg_return_0>:
             0x00080c9a: 00 68:       ldc (ru6)       r0, 0x0
             0x00080c9c: 00 5d:       ldw (ru6)       r4, sp[0x0]
             0x00080c9e: c0 77:       retsp (u6)      0x0

<write_switch_reg_free_and_return_1>:
             0x00080ca0: e4 17:       freer (1r)      res[r4]
             0x00080ca2: 01 68:       ldc (ru6)       r0, 0x1
             0x00080ca4: 00 5d:       ldw (ru6)       r4, sp[0x0]
             0x00080ca6: c0 77:       retsp (u6)      0x0

<get_local_tile_id>:
             0x00080ca8: 00 f0 40 77: entsp (lu6)     0x0
             0x00080cac: 00 f2 02 68: ldc (lru6)      r0, 0x8002
             0x00080cb0: c0 77:       retsp (u6)      0x0
             0x00080cb2: 00 00:       stw (2rus)      r0, r0[0x0]

<__call_exitprocs>:
             0x00080cb4: 00 f0 42 77: entsp (lu6)     0x2
             0x00080cb8: 00 f0 00 d1: bl (lu10)       0x100 <__call_exitprocs_impl>
             0x00080cbc: c2 77:       retsp (u6)      0x2
             0x00080cbe: 00 00:       stw (2rus)      r0, r0[0x0]

<_cleanup_impl>:
             0x00080cc0: 00 f0 40 77: entsp (lu6)     0x0
             0x00080cc4: c0 77:       retsp (u6)      0x0
             0x00080cc6: 00 00:       stw (2rus)      r0, r0[0x0]

<_cleanup>:
             0x00080cc8: 00 f0 42 77: entsp (lu6)     0x2
             0x00080ccc: 00 f0 08 d4: bl (lu10)       -0x8 <_cleanup_impl>
             0x00080cd0: c2 77:       retsp (u6)      0x2
             0x00080cd2: 00 00:       stw (2rus)      r0, r0[0x0]

<_done>:
             0x00080cd4: 00 f0 40 77: entsp (lu6)     0x0
             0x00080cd8: 07 68:       ldc (ru6)       r0, 0x7
             0x00080cda: 00 f0 65 d1: bl (lu10)       0x165 <_DoSyscall>
             0x00080cde: ed 07:       clre (0r)       
             0x00080ce0: ec 07:       waiteu (0r)     
             0x00080ce2: 00 00:       stw (2rus)      r0, r0[0x0]

<_exit>:
             0x00080ce4: 00 f0 40 77: entsp (lu6)     0x0
             0x00080ce8: 10 90:       add (2rus)      r1, r0, 0x0
             0x00080cea: 00 68:       ldc (ru6)       r0, 0x0
             0x00080cec: 00 f0 5c d1: bl (lu10)       0x15c <_DoSyscall>
             0x00080cf0: ed 07:       clre (0r)       
             0x00080cf2: ec 07:       waiteu (0r)     

<__alloc_libc_hwlock>:
.label12     0x00080cf4: 00 f0 40 77: entsp (lu6)     0x0
             0x00080cf8: 81 87:       getr (rus)      r0, 0x5
             0x00080cfa: 00 f0 2a 50: stw (lru6)      r0, dp[0x2a]
             0x00080cfe: c0 77:       retsp (u6)      0x0

<__lock_fair_acquire>:
             0x00080d00: 00 f0 40 77: entsp (lu6)     0x0
             0x00080d04: 00 f0 6a 58: ldw (lru6)      r1, dp[0x2a]
             0x00080d08: c5 b6:       in (2r)         r1, res[r1]
             0x00080d0a: 10 08:       ldw (2rus)      r1, r0[0x0]
             0x00080d0c: 25 90:       add (2rus)      r2, r1, 0x1
             0x00080d0e: 20 00:       stw (2rus)      r2, r0[0x0]
             0x00080d10: 00 f0 aa 58: ldw (lru6)      r2, dp[0x2a]
             0x00080d14: ca ae:       out (r2r)       res[r2], r2
.label110    0x00080d16: 21 08:       ldw (2rus)      r2, r0[0x1]
             0x00080d18: 29 30:       eq (3r)         r2, r2, r1
             0x00080d1a: 83 7c:       bf (ru6)        r2, -0x3 <.label110>
             0x00080d1c: c0 77:       retsp (u6)      0x0
             0x00080d1e: 00 00:       stw (2rus)      r0, r0[0x0]

<__lock_fair_release>:
             0x00080d20: 00 f0 40 77: entsp (lu6)     0x0
             0x00080d24: 11 08:       ldw (2rus)      r1, r0[0x1]
             0x00080d26: 15 90:       add (2rus)      r1, r1, 0x1
             0x00080d28: 11 00:       stw (2rus)      r1, r0[0x1]
             0x00080d2a: c0 77:       retsp (u6)      0x0

<_DoSyscallErrno>:
             0x00080d2c: 00 f0 42 77: entsp (lu6)     0x2
             0x00080d30: 00 f0 3a d1: bl (lu10)       0x13a <_DoSyscall>
             0x00080d34: c4 8e:       not (2r)        r1, r0
             0x00080d36: 57 aa:       shr (2rus)      r1, r1, 0x7
             0x00080d38: 41 78:       bf (ru6)        r1, 0x1 <.label111>
             0x00080d3a: c2 77:       retsp (u6)      0x2
.label111    0x00080d3c: c4 96:       neg (2r)        r1, r0
             0x00080d3e: 41 54:       stw (ru6)       r1, sp[0x1]
             0x00080d40: 00 f0 36 d1: bl (lu10)       0x136 <__errno>
             0x00080d44: 41 5c:       ldw (ru6)       r1, sp[0x1]
             0x00080d46: 10 00:       stw (2rus)      r1, r0[0x0]
             0x00080d48: d0 a6:       mkmsk (rus)     r0, 0x20
             0x00080d4a: c2 77:       retsp (u6)      0x2

<xscope_gettime>:
             0x00080d4c: e0 8f:       gettime (1r)    r0
             0x00080d4e: 80 7f:       dualentsp (u6)  0x0
             0x00080d50: ff 17:       nop (0r)        
             0x00080d52: c0 77:       retsp (u6)      0x0

<xscope_gettime_local_timer>:
             0x00080d54: e0 8f:       gettime (1r)    r0
             0x00080d56: 80 7f:       dualentsp (u6)  0x0
             0x00080d58: ff 17:       nop (0r)        
             0x00080d5a: c0 77:       retsp (u6)      0x0

<xscope_wait>:
             0x00080d5c: c5 86:       getr (rus)      r1, 0x1
             0x00080d5e: 80 7f:       dualentsp (u6)  0x0
             0x00080d60: e2 8f:       gettime (1r)    r2
             0x00080d62: ff 17:       nop (0r)        
             0x00080d64: 08 10:       add (3r)        r0, r2, r0
             0x00080d66: ff 17:       nop (0r)        
             0x00080d68: d1 16:       setd (r2r)      res[r1], r0
             0x00080d6a: ff 17:       nop (0r)        
             0x00080d6c: 49 e8:       setc (ru6)      res[r1], 0x9
             0x00080d6e: ff 17:       nop (0r)        
             0x00080d70: c1 b6:       in (2r)         r0, res[r1]
             0x00080d72: ff 17:       nop (0r)        
             0x00080d74: e1 17:       freer (1r)      res[r1]
             0x00080d76: c0 77:       retsp (u6)      0x0

<xscope_start_ref_clock>:
             0x00080d78: ff 17:       nop (0r)        
             0x00080d7a: 80 7f:       dualentsp (u6)  0x0
             0x00080d7c: 00 f0 0f 58: ldw (lru6)      r0, dp[0xf]
             0x00080d80: 48 68:       ldc (ru6)       r1, 0x8
             0x00080d82: ff 17:       nop (0r)        
             0x00080d84: d1 fe ec 2f: setc (l2r)      res[r0], r1
             0x00080d88: 94 a7:       mkmsk (rus)     r1, 0x4
             0x00080d8a: ff 17:       nop (0r)        
             0x00080d8c: d1 fe ec 2f: setc (l2r)      res[r0], r1
             0x00080d90: 00 68:       ldc (ru6)       r0, 0x0
             0x00080d92: c0 77:       retsp (u6)      0x0

<xscope_stop_ref_clock>:
             0x00080d94: ff 17:       nop (0r)        
             0x00080d96: 80 7f:       dualentsp (u6)  0x0
             0x00080d98: 00 f0 4f 58: ldw (lru6)      r1, dp[0xf]
             0x00080d9c: d3 a6:       mkmsk (rus)     r0, 0x3
             0x00080d9e: ff 17:       nop (0r)        
             0x00080da0: d4 fe ec 2f: setc (l2r)      res[r1], r0
             0x00080da4: 00 68:       ldc (ru6)       r0, 0x0
             0x00080da6: ff 17:       nop (0r)        
             0x00080da8: d4 fe ec 2f: setc (l2r)      res[r1], r0
             0x00080dac: ff 17:       nop (0r)        
             0x00080dae: c0 77:       retsp (u6)      0x0

<xscope_tx_char>:
             0x00080db0: ff 17:       nop (0r)        
             0x00080db2: 82 7f:       dualentsp (u6)  0x2
             0x00080db4: 00 f0 82 d0: bl (lu10)       0x82 <xscope_xlink_put_ch>
             0x00080db8: ff 17:       nop (0r)        
             0x00080dba: c2 77:       retsp (u6)      0x2

<xscope_tx_int>:
             0x00080dbc: ff 17:       nop (0r)        
             0x00080dbe: 84 7f:       dualentsp (u6)  0x4
             0x00080dc0: 40 90:       add (2rus)      r4, r0, 0x0
             0x00080dc2: 02 55:       stw (ru6)       r4, sp[0x2]
             0x00080dc4: 30 47:       zext (rus)      r0, 0x8
             0x00080dc6: ff 17:       nop (0r)        
             0x00080dc8: 00 f0 7d d0: bl (lu10)       0x7d <xscope_xlink_put_ch>
             0x00080dcc: 40 ad:       shr (2rus)      r0, r4, 0x8
             0x00080dce: ff 17:       nop (0r)        
             0x00080dd0: 30 47:       zext (rus)      r0, 0x8
             0x00080dd2: ff 17:       nop (0r)        
             0x00080dd4: 00 f0 7a d0: bl (lu10)       0x7a <xscope_xlink_put_ch>
             0x00080dd8: 41 ad:       shr (2rus)      r0, r4, 0x10
             0x00080dda: ff 17:       nop (0r)        
             0x00080ddc: 30 47:       zext (rus)      r0, 0x8
             0x00080dde: ff 17:       nop (0r)        
             0x00080de0: 00 f0 77 d0: bl (lu10)       0x77 <xscope_xlink_put_ch>
             0x00080de4: 42 ad:       shr (2rus)      r0, r4, 0x18
             0x00080de6: ff 17:       nop (0r)        
             0x00080de8: 00 f0 75 d0: bl (lu10)       0x75 <xscope_xlink_put_ch>
             0x00080dec: ff 17:       nop (0r)        
             0x00080dee: 02 5d:       ldw (ru6)       r4, sp[0x2]
             0x00080df0: ff 17:       nop (0r)        
             0x00080df2: c4 77:       retsp (u6)      0x4

<xscope_tx_end>:
             0x00080df4: ff 17:       nop (0r)        
             0x00080df6: 82 7f:       dualentsp (u6)  0x2
             0x00080df8: 00 f0 86 d0: bl (lu10)       0x86 <xscope_xlink_put_ct>
             0x00080dfc: ff 17:       nop (0r)        
             0x00080dfe: c2 77:       retsp (u6)      0x2

<xscope_tx_init>:
             0x00080e00: ff 17:       nop (0r)        
             0x00080e02: 82 7f:       dualentsp (u6)  0x2
             0x00080e04: 00 f0 77 d0: bl (lu10)       0x77 <xscope_xlink_init>
             0x00080e08: 00 f0 87 d0: bl (lu10)       0x87 <xscope_xlink_start_token>
             0x00080e0c: d1 a6:       mkmsk (rus)     r0, 0x1
             0x00080e0e: c2 77:       retsp (u6)      0x2

<xscope_tx_deinit>:
             0x00080e10: ff 17:       nop (0r)        
             0x00080e12: 82 7f:       dualentsp (u6)  0x2
             0x00080e14: 00 f0 79 d0: bl (lu10)       0x79 <xscope_xlink_deinit>
             0x00080e18: ff 17:       nop (0r)        
             0x00080e1a: c2 77:       retsp (u6)      0x2

<__register_exitproc>:
             0x00080e1c: 00 f0 48 77: entsp (lu6)     0x8
             0x00080e20: 05 f9 ec f7: std (l2rus)     r5, r4, sp[0x1]
             0x00080e24: 2e f9 ec f7: std (l2rus)     r7, r6, sp[0x2]
             0x00080e28: 06 56:       stw (ru6)       r8, sp[0x6]
             0x00080e2a: 5c 90:       add (2rus)      r5, r3, 0x0
             0x00080e2c: 78 90:       add (2rus)      r7, r2, 0x0
             0x00080e2e: 44 90:       add (2rus)      r4, r1, 0x0
             0x00080e30: 60 90:       add (2rus)      r6, r0, 0x0
             0x00080e32: 01 f0 49 7f: ldaw (lu6)      r11, cp[0x49]
             0x00080e36: 9c 91:       add (2rus)      r1, r11, 0x0
             0x00080e38: 01 f0 4b 7f: ldaw (lu6)      r11, cp[0x4b]
             0x00080e3c: c0 90:       add (2rus)      r0, r4, 0x0
             0x00080e3e: ac 91:       add (2rus)      r2, r11, 0x0
             0x00080e40: 00 f0 00 d1: bl (lu10)       0x100 <__checkFptrGroup>
             0x00080e44: e0 4f:       ecallf (1r)     r0
             0x00080e46: 02 f0 0f 60: ldaw (lru6)     r0, dp[0x8f]
             0x00080e4a: 00 f0 a7 d4: bl (lu10)       -0xa7 <__lock_fair_acquire>
             0x00080e4e: 00 f0 10 58: ldw (lru6)      r0, dp[0x10]
             0x00080e52: 11 08:       ldw (2rus)      r1, r0[0x1]
             0x00080e54: 99 a7:       mkmsk (rus)     r2, 0x5
             0x00080e56: 29 c0:       lss (3r)        r2, r2, r1
             0x00080e58: 82 78:       bf (ru6)        r2, 0x2 <.label112>
             0x00080e5a: d0 a6:       mkmsk (rus)     r0, 0x20
             0x00080e5c: 29 73:       bu (u6)         0x29 <.label113>
.label112    0x00080e5e: 9e 79:       bf (ru6)        r6, 0x1e <.label114>
             0x00080e60: 02 f0 88 68: ldc (lru6)      r2, 0x88
             0x00080e64: 32 10:       add (3r)        r3, r0, r2
             0x00080e66: 7d f8 ec 07: stw (l3r)       r7, r3[r1]
             0x00080e6a: 11 08:       ldw (2rus)      r1, r0[0x1]
             0x00080e6c: d9 a6:       mkmsk (rus)     r2, 0x1
             0x00080e6e: b9 20:       shl (3r)        r11, r2, r1
             0x00080e70: 06 f0 c8 69: ldc (lru6)      r7, 0x188
             0x00080e74: b3 12:       add (3r)        r7, r0, r7
             0x00080e76: 4c 09:       ldw (2rus)      r8, r7[0x0]
             0x00080e78: b3 46:       or (3r)         r11, r8, r11
             0x00080e7a: 7c 01:       stw (2rus)      r11, r7[0x0]
             0x00080e7c: 1d f8 ec 1f: ldaw (l3r)      r1, r3[r1]
             0x00080e80: 02 f0 c0 68: ldc (lru6)      r3, 0x80
             0x00080e84: 17 10:       add (3r)        r1, r1, r3
             0x00080e86: 54 00:       stw (2rus)      r5, r1[0x0]
             0x00080e88: 11 08:       ldw (2rus)      r1, r0[0x1]
             0x00080e8a: fa b0:       eq (2rus)       r3, r6, 0x2
             0x00080e8c: c7 78:       bf (ru6)        r3, 0x7 <.label114>
             0x00080e8e: 29 20:       shl (3r)        r2, r2, r1
             0x00080e90: 06 f0 cc 68: ldc (lru6)      r3, 0x18c
             0x00080e94: 33 10:       add (3r)        r3, r0, r3
             0x00080e96: bc 08:       ldw (2rus)      r11, r3[0x0]
             0x00080e98: ae 41:       or (3r)         r2, r11, r2
             0x00080e9a: 2c 00:       stw (2rus)      r2, r3[0x0]
.label114    0x00080e9c: 25 90:       add (2rus)      r2, r1, 0x1
             0x00080e9e: 21 00:       stw (2rus)      r2, r0[0x1]
             0x00080ea0: 01 f8 ec 1f: ldaw (l3r)      r0, r0[r1]
             0x00080ea4: 42 00:       stw (2rus)      r4, r0[0x2]
             0x00080ea6: 02 f0 0f 60: ldaw (lru6)     r0, dp[0x8f]
             0x00080eaa: 00 f0 c7 d4: bl (lu10)       -0xc7 <__lock_fair_release>
             0x00080eae: 00 68:       ldc (ru6)       r0, 0x0
.label113    0x00080eb0: 06 5e:       ldw (ru6)       r8, sp[0x6]
             0x00080eb2: 2e f9 ec ef: ldd (l2rus)     r7, r6, sp[0x2]
             0x00080eb6: 05 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x1]
             0x00080eba: c8 77:       retsp (u6)      0x8

<__call_exitprocs_impl>:
             0x00080ebc: 00 f0 4e 77: entsp (lu6)     0xe
             0x00080ec0: 07 f9 ec f7: std (l2rus)     r5, r4, sp[0x3]
             0x00080ec4: 6c fb ec f7: std (l2rus)     r7, r6, sp[0x4]
             0x00080ec8: 45 fc ec f7: std (l2rus)     r9, r8, sp[0x5]
             0x00080ecc: 8c 56:       stw (ru6)       r10, sp[0xc]
             0x00080ece: 44 90:       add (2rus)      r4, r1, 0x0
             0x00080ed0: 01 54:       stw (ru6)       r0, sp[0x1]
             0x00080ed2: 00 f0 10 58: ldw (lru6)      r0, dp[0x10]
             0x00080ed6: 01 f0 0f 78: bf (lru6)       r0, 0x4f <.label115>
             0x00080eda: 80 6a:       ldc (ru6)       r10, 0x0
.label125    0x00080edc: 80 90:       add (2rus)      r8, r0, 0x0
             0x00080ede: 11 0a:       ldw (2rus)      r9, r8[0x1]
             0x00080ee0: d1 a6:       mkmsk (rus)     r0, 0x1
             0x00080ee2: 84 c1:       lss (3r)        r0, r9, r0
             0x00080ee4: 01 f0 08 70: bt (lru6)       r0, 0x48 <.label115>
             0x00080ee8: 06 f0 08 68: ldc (lru6)      r0, 0x188
             0x00080eec: 80 11:       add (3r)        r0, r8, r0
             0x00080eee: 04 54:       stw (ru6)       r0, sp[0x4]
             0x00080ef0: 06 f0 0c 68: ldc (lru6)      r0, 0x18c
             0x00080ef4: 80 11:       add (3r)        r0, r8, r0
             0x00080ef6: 03 54:       stw (ru6)       r0, sp[0x3]
             0x00080ef8: 01 fe ec 1f: ldaw (l3r)      r0, r8[r9]
             0x00080efc: 02 f0 44 68: ldc (lru6)      r1, 0x84
             0x00080f00: 11 10:       add (3r)        r1, r0, r1
             0x00080f02: 42 54:       stw (ru6)       r1, sp[0x2]
             0x00080f04: 04 f0 44 68: ldc (lru6)      r1, 0x104
             0x00080f08: 11 10:       add (3r)        r1, r0, r1
             0x00080f0a: 45 54:       stw (ru6)       r1, sp[0x5]
             0x00080f0c: a0 92:       add (2rus)      r6, r0, 0x4
             0x00080f0e: f8 91:       add (2rus)      r7, r10, 0x0
.label124    0x00080f10: 04 79:       bf (ru6)        r4, 0x4 <.label116>
             0x00080f12: 05 5c:       ldw (ru6)       r0, sp[0x5]
             0x00080f14: 43 4a:       ldw (3r)        r0, r0[r7]
             0x00080f16: 40 32:       eq (3r)         r0, r0, r4
             0x00080f18: 28 78:       bf (ru6)        r0, 0x28 <.label117>
.label116    0x00080f1a: f7 13:       add (3r)        r3, r9, r7
             0x00080f1c: 1d 98:       sub (2rus)      r1, r3, 0x1
             0x00080f1e: d1 a6:       mkmsk (rus)     r0, 0x1
             0x00080f20: 01 20:       shl (3r)        r0, r0, r1
             0x00080f22: 2b 4b:       ldw (3r)        r2, r6[r7]
             0x00080f24: 31 0a:       ldw (2rus)      r11, r8[0x1]
             0x00080f26: bf 34:       eq (3r)         r3, r3, r11
             0x00080f28: c2 78:       bf (ru6)        r3, 0x2 <.label118>
             0x00080f2a: 91 01:       stw (2rus)      r1, r8[0x1]
             0x00080f2c: 02 73:       bu (u6)         0x2 <.label119>
.label118    0x00080f2e: ab fb ec 07: stw (l3r)       r10, r6[r7]
.label119    0x00080f32: 9b 78:       bf (ru6)        r2, 0x1b <.label117>
             0x00080f34: d8 91:       add (2rus)      r5, r10, 0x0
             0x00080f36: 21 0a:       ldw (2rus)      r10, r8[0x1]
             0x00080f38: 44 5c:       ldw (ru6)       r1, sp[0x4]
             0x00080f3a: 14 08:       ldw (2rus)      r1, r1[0x0]
             0x00080f3c: 14 38:       and (3r)        r1, r1, r0
             0x00080f3e: 49 78:       bf (ru6)        r1, 0x9 <.label120>
             0x00080f40: 43 5c:       ldw (ru6)       r1, sp[0x3]
             0x00080f42: 14 08:       ldw (2rus)      r1, r1[0x0]
             0x00080f44: 04 38:       and (3r)        r0, r1, r0
             0x00080f46: 42 5c:       ldw (ru6)       r1, sp[0x2]
             0x00080f48: 57 4a:       ldw (3r)        r1, r1[r7]
             0x00080f4a: 05 78:       bf (ru6)        r0, 0x5 <.label121>
             0x00080f4c: 04 90:       add (2rus)      r0, r1, 0x0
             0x00080f4e: e2 27:       bla (1r)        r2
             0x00080f50: 04 73:       bu (u6)         0x4 <.label122>
.label120    0x00080f52: e2 27:       bla (1r)        r2
             0x00080f54: 02 73:       bu (u6)         0x2 <.label122>
.label121    0x00080f56: 01 5c:       ldw (ru6)       r0, sp[0x1]
             0x00080f58: e2 27:       bla (1r)        r2
.label122    0x00080f5a: 91 09:       ldw (2rus)      r1, r8[0x1]
             0x00080f5c: 00 f0 10 58: ldw (lru6)      r0, dp[0x10]
             0x00080f60: 99 31:       eq (3r)         r1, r10, r1
             0x00080f62: 64 91:       add (2rus)      r10, r5, 0x0
             0x00080f64: 47 78:       bf (ru6)        r1, 0x7 <.label123>
             0x00080f66: 90 34:       eq (3r)         r1, r0, r8
             0x00080f68: 45 78:       bf (ru6)        r1, 0x5 <.label123>
.label117    0x00080f6a: 3d 99:       sub (2rus)      r7, r7, 0x1
             0x00080f6c: c7 13:       add (3r)        r0, r9, r7
             0x00080f6e: 88 c1:       lss (3r)        r0, r10, r0
             0x00080f70: 31 74:       bt (ru6)        r0, -0x31 <.label124>
             0x00080f72: 02 73:       bu (u6)         0x2 <.label115>
.label123    0x00080f74: 01 f0 0e 74: bt (lru6)       r0, -0x4e <.label125>
.label115    0x00080f78: 8c 5e:       ldw (ru6)       r10, sp[0xc]
             0x00080f7a: 45 fc ec ef: ldd (l2rus)     r9, r8, sp[0x5]
             0x00080f7e: 6c fb ec ef: ldd (l2rus)     r7, r6, sp[0x4]
             0x00080f82: 07 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x3]
             0x00080f86: ce 77:       retsp (u6)      0xe

<__malloc_lock>:
             0x00080f88: 00 f0 42 77: entsp (lu6)     0x2
             0x00080f8c: 02 f0 11 60: ldaw (lru6)     r0, dp[0x91]
             0x00080f90: 00 f0 4a d5: bl (lu10)       -0x14a <__lock_fair_acquire>
             0x00080f94: c2 77:       retsp (u6)      0x2
             0x00080f96: 00 00:       stw (2rus)      r0, r0[0x0]

<__malloc_unlock>:
             0x00080f98: 00 f0 42 77: entsp (lu6)     0x2
             0x00080f9c: 02 f0 11 60: ldaw (lru6)     r0, dp[0x91]
             0x00080fa0: 00 f0 42 d5: bl (lu10)       -0x142 <__lock_fair_release>
             0x00080fa4: c2 77:       retsp (u6)      0x2
             0x00080fa6: 00 00:       stw (2rus)      r0, r0[0x0]

<_DoSyscall>:
             0x00080fa8: 00 f0 40 77: entsp (lu6)     0x0
             0x00080fac: d0 a6:       mkmsk (rus)     r0, 0x20
             0x00080fae: c0 77:       retsp (u6)      0x0

<__errno>:
             0x00080fb0: 00 f0 40 77: entsp (lu6)     0x0
             0x00080fb4: ee 17:       get (0r)        r11, id
             0x00080fb6: 02 f0 13 60: ldaw (lru6)     r0, dp[0x93]
             0x00080fba: 83 fc ec 1f: ldaw (l3r)      r0, r0[r11]
             0x00080fbe: c0 77:       retsp (u6)      0x0

<xscope_xlink_put_ch>:
             0x00080fc0: 00 f0 40 77: entsp (lu6)     0x0
             0x00080fc4: 00 f0 4a 58: ldw (lru6)      r1, dp[0xa]
             0x00080fc8: 4b 78:       bf (ru6)        r1, 0xb <xscope_xlink_put_ch_ret>
             0x00080fca: 00 f0 89 58: ldw (lru6)      r2, dp[0x9]
             0x00080fce: 87 70:       bt (ru6)        r2, 0x7 <xscope_xlink_outt>
             0x00080fd0: 00 f0 4b 58: ldw (lru6)      r1, dp[0xb]
             0x00080fd4: 45 78:       bf (ru6)        r1, 0x5 <xscope_xlink_put_ch_ret>
             0x00080fd6: ca 86:       getr (rus)      r2, 0x2
             0x00080fd8: d6 16:       setd (r2r)      res[r2], r1
             0x00080fda: 00 f0 89 50: stw (lru6)      r2, dp[0x9]

<xscope_xlink_outt>:
             0x00080fde: d2 0e:       outt (r2r)      res[r2], r0

<xscope_xlink_put_ch_ret>:
             0x00080fe0: c0 77:       retsp (u6)      0x0
             0x00080fe2: 00 00:       stw (2rus)      r0, r0[0x0]

<xscope_xlink_init>:
             0x00080fe4: 00 f0 40 77: entsp (lu6)     0x0
             0x00080fe8: 00 f0 4b 58: ldw (lru6)      r1, dp[0xb]
             0x00080fec: 00 f0 48 7c: bf (lru6)       r1, -0x8 <xscope_xlink_put_ch_ret>
             0x00080ff0: ca 86:       getr (rus)      r2, 0x2
             0x00080ff2: d6 16:       setd (r2r)      res[r2], r1
             0x00080ff4: 00 f0 89 50: stw (lru6)      r2, dp[0x9]
             0x00080ff8: c0 77:       retsp (u6)      0x0
             0x00080ffa: 00 00:       stw (2rus)      r0, r0[0x0]

<xscope_xlink_deinit>:
             0x00080ffc: 00 f0 40 77: entsp (lu6)     0x0
             0x00081000: 00 f0 49 58: ldw (lru6)      r1, dp[0x9]
             0x00081004: 00 f0 54 7c: bf (lru6)       r1, -0x14 <xscope_xlink_put_ch_ret>
             0x00081008: e1 17:       freer (1r)      res[r1]
             0x0008100a: 80 68:       ldc (ru6)       r2, 0x0
             0x0008100c: 00 f0 89 50: stw (lru6)      r2, dp[0x9]
             0x00081010: c0 77:       retsp (u6)      0x0
             0x00081012: 00 00:       stw (2rus)      r0, r0[0x0]

<xscope_xlink_put_ct>:
             0x00081014: 00 f0 40 77: entsp (lu6)     0x0
             0x00081018: 00 f0 4a 58: ldw (lru6)      r1, dp[0xa]
             0x0008101c: 44 78:       bf (ru6)        r1, 0x4 <xscope_xlink_put_ct_ret>
             0x0008101e: 00 f0 89 58: ldw (lru6)      r2, dp[0x9]
             0x00081022: 81 78:       bf (ru6)        r2, 0x1 <xscope_xlink_put_ct_ret>
             0x00081024: d9 4e:       outct (rus)     res[r2], 0x1

<xscope_xlink_put_ct_ret>:
             0x00081026: c0 77:       retsp (u6)      0x0

<xscope_xlink_start_token>:
             0x00081028: 00 f0 40 77: entsp (lu6)     0x0
             0x0008102c: 00 f0 4a 58: ldw (lru6)      r1, dp[0xa]
             0x00081030: 48 78:       bf (ru6)        r1, 0x8 <xscope_xlink_start_token_ret>
             0x00081032: 00 f0 89 58: ldw (lru6)      r2, dp[0x9]
             0x00081036: 85 78:       bf (ru6)        r2, 0x5 <xscope_xlink_start_token_ret>
             0x00081038: d9 4e:       outct (rus)     res[r2], 0x1
             0x0008103a: 01 f0 d5 6a: ldc (lru6)      r11, 0x55
             0x0008103e: 2b 4f:       outct (2r)      res[r2], r11
             0x00081040: d9 4e:       outct (rus)     res[r2], 0x1

<xscope_xlink_start_token_ret>:
             0x00081042: c0 77:       retsp (u6)      0x0

<__checkFptrGroup>:
             0x00081044: 00 f0 40 77: entsp (lu6)     0x0
             0x00081048: 30 90:       add (2rus)      r3, r0, 0x0
.label127    0x0008104a: 06 c8:       lsu (3r)        r0, r1, r2
             0x0008104c: 05 78:       bf (ru6)        r0, 0x5 <.label126>
             0x0008104e: 04 08:       ldw (2rus)      r0, r1[0x0]
             0x00081050: 03 30:       eq (3r)         r0, r0, r3
             0x00081052: 02 70:       bt (ru6)        r0, 0x2 <.label126>
             0x00081054: 54 92:       add (2rus)      r1, r1, 0x4
             0x00081056: 07 77:       bu (u6)         -0x7 <.label127>
.label126    0x00081058: c0 77:       retsp (u6)      0x0

Disassembly of section .cp.rodata (size: 281)

<_cp>:
<.cp.rodata>:
<tiles_to_wake>:
.label11     0x00081060: 02 1e 03 80: 

<chanends_to_setup>:
             0x00081064: 00 00 03 80: 
             0x00081068: ff 00 00 00: 

<.cp.rodata>:
             0x0008106c: 30 19 f0 ff: 

<.cp.rodata>:
             0x00081070: f0 19 f0 ff: 

<.cp.rodata>:
             0x00081074: 00 00 00 00: 

<_ctype_>:
             0x00081078: 00 20 20 20: 
             0x0008107c: 20 20 20 20: 
             0x00081080: 20 20 28 28: 
             0x00081084: 28 28 28 20: 
             0x00081088: 20 20 20 20: 
             0x0008108c: 20 20 20 20: 
             0x00081090: 20 20 20 20: 
             0x00081094: 20 20 20 20: 
             0x00081098: 20 88 10 10: 
             0x0008109c: 10 10 10 10: 
             0x000810a0: 10 10 10 10: 
             0x000810a4: 10 10 10 10: 
             0x000810a8: 10 04 04 04: 
             0x000810ac: 04 04 04 04: 
             0x000810b0: 04 04 04 10: 
             0x000810b4: 10 10 10 10: 
             0x000810b8: 10 10 41 41: 
             0x000810bc: 41 41 41 41: 
             0x000810c0: 01 01 01 01: 
             0x000810c4: 01 01 01 01: 
             0x000810c8: 01 01 01 01: 
             0x000810cc: 01 01 01 01: 
             0x000810d0: 01 01 01 01: 
             0x000810d4: 10 10 10 10: 
             0x000810d8: 10 10 42 42: 
             0x000810dc: 42 42 42 42: 
             0x000810e0: 02 02 02 02: 
             0x000810e4: 02 02 02 02: 
             0x000810e8: 02 02 02 02: 
             0x000810ec: 02 02 02 02: 
             0x000810f0: 02 02 02 02: 
             0x000810f4: 10 10 10 10: 
             0x000810f8: 20 00 00 00: 
             0x000810fc: 00 00 00 00: 
             0x00081100: 00 00 00 00: 
             0x00081104: 00 00 00 00: 
             0x00081108: 00 00 00 00: 
             0x0008110c: 00 00 00 00: 
             0x00081110: 00 00 00 00: 
             0x00081114: 00 00 00 00: 
             0x00081118: 00 00 00 00: 
             0x0008111c: 00 00 00 00: 
             0x00081120: 00 00 00 00: 
             0x00081124: 00 00 00 00: 
             0x00081128: 00 00 00 00: 
             0x0008112c: 00 00 00 00: 
             0x00081130: 00 00 00 00: 
             0x00081134: 00 00 00 00: 
             0x00081138: 00 00 00 00: 
             0x0008113c: 00 00 00 00: 
             0x00081140: 00 00 00 00: 
             0x00081144: 00 00 00 00: 
             0x00081148: 00 00 00 00: 
             0x0008114c: 00 00 00 00: 
             0x00081150: 00 00 00 00: 
             0x00081154: 00 00 00 00: 
             0x00081158: 00 00 00 00: 
             0x0008115c: 00 00 00 00: 
             0x00081160: 00 00 00 00: 
             0x00081164: 00 00 00 00: 
             0x00081168: 00 00 00 00: 
             0x0008116c: 00 00 00 00: 
             0x00081170: 00 00 00 00: 
             0x00081174: 00 00 00 00: 
             0x00081178: 00:          

Disassembly of section .cp.rodata.4 (size: 16)

<.cp.rodata.4>:
<.str>:
             0x0008117c: 00 00 00 00: 

<.str3>:
             0x00081180: 00 00 00 00: 

<_fptrgroup.stdlib_atexit.group.begin>:
             0x00081184: ac 01 08 00: 
             0x00081188: d0 05 08 00: 

Disassembly of section .cp.const4 (size: 52)

<initial_dp>:
             0x0008118c: 48 12 08 00: 

<dp_bss_large_start>:
             0x00081190: b4 14 08 00: 

<extmem_bss_start>:
             0x00081194: 00 00 00 10: 

<.cp.const4>:
<ctor_list_ptr>:
             0x00081198: 38 12 08 00: 

<.cp.const4>:
<dtor_list_ptr>:
             0x0008119c: 44 12 08 00: 

<.cp.const4>:
<initial_sp>:
             0x000811a0: 78 ff 0f 00: 

<dp_bss_size>:
             0x000811a4: 1c 02 00 00: 

<dp_bss_large_size>:
             0x000811a8: 00 00 00 00: 

<extmem_bss_size>:
             0x000811ac: 00 00 00 00: 

<dtors_size>:
             0x000811b0: 00 00 00 00: 

<ctors_size>:
             0x000811b4: 03 00 00 00: 
             0x000811b8: 02 00 02 80: 

<.cp.const4>:
             0x000811bc: 02 1e 03 80: 

Disassembly of section .cp.rodata.cst4 (size: 36)

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
             0x000811c0: 00 00 00 01: 
             0x000811c4: 00 02 08 00: 
             0x000811c8: 44 33 22 11: 
             0x000811cc: 90 ff ff ff: 
             0x000811d0: d0 ff ff ff: 
             0x000811d4: e0 ff ff ff: 
             0x000811d8: f8 ff ff ff: 
             0x000811dc: fc ff ff ff: 
             0x000811e0: ff ff ff 7f: 

Disassembly of section .cp.rodata.string (size: 84)

<.cp.rodata.string>:
<.cp.rodata.string>:
<.cp.rodata.string>:
<itoa.digits>:
<.cp.rodata.string>:
<.cp.rodata.string>:
             0x000811e4: 30 31 32 33: 
             0x000811e8: 34 35 36 37: 
             0x000811ec: 38 39 41 42: 
             0x000811f0: 43 44 45 46: 
             0x000811f4: 00 00 00 00: 
             0x000811f8: 50 38 43 20: 
             0x000811fc: 78 25 78 0a: 
             0x00081200: 00 00 00 00: 
             0x00081204: 50 38 44 20: 
             0x00081208: 78 25 78 0a: 
             0x0008120c: 00 00 00 00: 
             0x00081210: 6a 6f 62 20: 
             0x00081214: 74 31 20 25: 
             0x00081218: 64 0a 00 00: 
             0x0008121c: 6a 6f 62 20: 
             0x00081220: 74 32 20 25: 
             0x00081224: 64 0a 00 00: 
             0x00081228: 6a 6f 62 20: 
             0x0008122c: 74 33 0a 00: 
             0x00081230: 6a 6f 62 65: 
             0x00081234: 6e 64 0a 00: 

Disassembly of section .ctors (size: 12)

<_CTOR_LIST_>:
<.ctors>:
             0x00081238: 20 02 08 00: 

<.ctors>:
             0x0008123c: 10 06 08 00: 

<.ctors>:
             0x00081240: b0 07 08 00: 

Disassembly of section .dp.data (size: 48)

<_dp>:
<__timers>:
<.dp.data>:
<.dp.data>:
             0x00081248: 01 00 00 00: 
             0x0008124c: 00 00 00 00: 
             0x00081250: 00 00 00 00: 
             0x00081254: 00 00 00 00: 
             0x00081258: 00 00 00 00: 
             0x0008125c: 00 00 00 00: 
             0x00081260: 00 00 00 00: 
             0x00081264: 00 00 00 00: 

<XSCOPE_REDIRECT_IO>:
<.dp.data>:
             0x00081268: 00 00 00 00: 

<__sodChan>:
<.dp.data>:
             0x0008126c: 00 00 00 00: 

<__sodFlag>:
<.dp.data>:
             0x00081270: 00 00 00 00: 

<__sodEnd>:
             0x00081274: 02 01 00 80: 

Disassembly of section .dp.data.4 (size: 20)

<.dp.data.4>:
<.dp.data.4>:
<__malloc_limit>:
             0x00081278: 2c fe 0f 00: 

<__malloc_end>:
             0x0008127c: b4 14 08 00: 

<__ctype_ptr__>:
<.dp.data.4>:
             0x00081280: 78 10 08 00: 

<xscope_ref_clk>:
<.dp.data.4>:
             0x00081284: 06 00 00 00: 

<.dp.data.4>:
<_atexit_fns>:
             0x00081288: f4 12 08 00: 

Disassembly of section .dp.rodata (size: 4)

<tile>:
             0x0008128c: 00 00 01 00: 

Disassembly of section .dp.data.extmem.setps (size: 4)

<.dp.data.extmem.setps>:
<__extmem_setps_val>:
             0x00081290: 00 18 00 00: 

Loadable 2 for tile[1] (node "0", tile 1):

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
             0x00080022: 00 f0 8b 6f: ldw (lru6)      sp, cp[0xb]
             0x00080026: f0 17:       mjoin (1r)      res[r0]
             0x00080028: e0 17:       freer (1r)      res[r0]
             0x0008002a: 08 f0 0b 68: ldc (lru6)      r0, 0x20b
             0x0008002e: 00 f0 4c 58: ldw (lru6)      r1, dp[0xc]
             0x00080032: c4 fe ec 1f: set (lr2r)      ps[r0], r1
             0x00080036: 00 f0 0e 60: ldaw (lru6)     r0, dp[0xe]
             0x0008003a: 40 68:       ldc (ru6)       r1, 0x0
             0x0008003c: 00 f0 8c 6c: ldw (lru6)      r2, cp[0xc]
             0x00080040: 00 f0 4a d1: bl (lu10)       0x14a <.label2>
             0x00080044: 00 f0 07 6c: ldw (lru6)      r0, cp[0x7]
             0x00080048: 40 68:       ldc (ru6)       r1, 0x0
             0x0008004a: 00 f0 8d 6c: ldw (lru6)      r2, cp[0xd]
             0x0008004e: 00 f0 43 d1: bl (lu10)       0x143 <.label2>
             0x00080052: 00 f0 08 6c: ldw (lru6)      r0, cp[0x8]
             0x00080056: 40 68:       ldc (ru6)       r1, 0x0
             0x00080058: 00 f0 8e 6c: ldw (lru6)      r2, cp[0xe]
             0x0008005c: 00 f0 3c d1: bl (lu10)       0x13c <.label2>
             0x00080060: 00 f0 3e d1: bl (lu10)       0x13e <.label3>
             0x00080064: 00 f0 32 d0: bl (lu10)       0x32 <.label4>
             0x00080068: 00 f0 c6 6a: ldc (lru6)      r11, 0x6
             0x0008006c: c8 ea:       setc (ru6)      res[r11], 0x8
             0x0008006e: cf ea:       setc (ru6)      res[r11], 0xf
             0x00080070: 00 68:       ldc (ru6)       r0, 0x0
             0x00080072: 01 54:       stw (ru6)       r0, sp[0x1]
             0x00080074: 00 f0 44 68: ldc (lru6)      r1, 0x4
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
             0x0008008c: 00 f0 b2 d0: bl (lu10)       0xb2 <.label6>
             0x00080090: b0 f8 ec 97: ashr (l2rus)    r11, r0, 0x20
             0x00080094: c2 7a:       bf (ru6)        r11, 0x2 <.label5>
             0x00080096: 01 90:       add (2rus)      r0, r0, 0x1
             0x00080098: f0 4f:       ecallt (1r)     r0
.label5      0x0008009a: 41 64:       ldaw (ru6)      r1, sp[0x1]
             0x0008009c: 00 f0 d2 d0: bl (lu10)       0xd2 <.label7>
             0x000800a0: 02 70:       bt (ru6)        r0, 0x2 <.label8>
             0x000800a2: 00 f0 ff d0: bl (lu10)       0xff <.label9>
.label8      0x000800a6: 00 f0 09 d1: bl (lu10)       0x109 <.label10>

<_InitChildThread>:
             0x000800aa: 01 d0:       bl (u10)        0x1 <_SetupThread>
             0x000800ac: ee 07:       ssync (0r)      

<_SetupThread>:
             0x000800ae: 18 dc:       ldap (u10)      r11, -0x18 <_TrapHandler>
             0x000800b0: ff 07:       set (0r)        kep, r11
             0x000800b2: 00 f0 49 da: ldap (lu10)     r11, 0x249 <.label11>
             0x000800b6: fb 37:       set (1r)        cp, r11
             0x000800b8: 00 f0 46 6f: ldw (lru6)      dp, cp[0x6]
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
             0x000800ce: 00 f0 59 d1: bl (lu10)       0x159 <.label12>
             0x000800d2: 00 f0 10 6d: ldw (lru6)      r4, cp[0x10]
             0x000800d6: 06 79:       bf (ru6)        r4, 0x6 <do_ctors_end> <.init>
             0x000800d8: 00 f0 49 6d: ldw (lru6)      r5, cp[0x9]

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
.label24     0x000800e6: 42 77:       entsp (u6)      0x2

<.fini>:
             0x000800e8: 84 77:       extsp (u6)      0x4
             0x000800ea: 01 55:       stw (ru6)       r4, sp[0x1]
             0x000800ec: 42 55:       stw (ru6)       r5, sp[0x2]
             0x000800ee: 83 55:       stw (ru6)       r6, sp[0x3]
             0x000800f0: 00 f0 8f 6d: ldw (lru6)      r6, cp[0xf]
             0x000800f4: 88 79:       bf (ru6)        r6, 0x8 <do_dtors_end>
             0x000800f6: 00 69:       ldc (ru6)       r4, 0x0
             0x000800f8: 00 f0 4a 6d: ldw (lru6)      r5, cp[0xa]

<do_dtors_loop>:
             0x000800fc: 04 4b:       ldw (3r)        r0, r5[r4]
             0x000800fe: e0 27:       bla (1r)        r0
             0x00080100: 01 91:       add (2rus)      r4, r4, 0x1
             0x00080102: b2 cb:       lsu (3r)        r11, r4, r6
             0x00080104: c5 76:       bt (ru6)        r11, -0x5 <do_dtors_loop>

<do_dtors_end>:
             0x00080106: 00 f0 f5 d0: bl (lu10)       0xf5 <.label13>
             0x0008010a: 01 5d:       ldw (ru6)       r4, sp[0x1]
             0x0008010c: 42 5d:       ldw (ru6)       r5, sp[0x2]
             0x0008010e: 83 5d:       ldw (ru6)       r6, sp[0x3]
             0x00080110: 84 67:       ldaw (ru6)      sp, sp[0x4]

<.fini>:
             0x00080112: c2 77:       retsp (u6)      0x2

Disassembly of section .text (size: 1074)

<__main__main_tile_1>:
             0x00080114: 00 f0 42 77: entsp (lu6)     0x2
             0x00080118: 00 f0 0a d0: bl (lu10)       0xa <main1>
             0x0008011c: c2 77:       retsp (u6)      0x2
             0x0008011e: 00 00:       stw (2rus)      r0, r0[0x0]

<__dtor_P8C>:
             0x00080120: 00 f0 40 77: entsp (lu6)     0x0
             0x00080124: 00 f0 0e 58: ldw (lru6)      r0, dp[0xe]
             0x00080128: 01 78:       bf (ru6)        r0, 0x1 <.label14>
             0x0008012a: 00 e8:       setc (ru6)      res[r0], 0x0
.label14     0x0008012c: c0 77:       retsp (u6)      0x0
             0x0008012e: 00 00:       stw (2rus)      r0, r0[0x0]

<main1>:
             0x00080130: 00 f0 40 77: entsp (lu6)     0x0
             0x00080134: 00 f2 43 68: ldc (lru6)      r1, 0x8003
             0x00080138: 00 f0 5c 50: stw (lru6)      r1, dp[0x1c]
             0x0008013c: 00 f0 5e 50: stw (lru6)      r1, dp[0x1e]
             0x00080140: e1 4f:       ecallf (1r)     r1
             0x00080142: 00 f0 54 6c: ldw (lru6)      r1, cp[0x14]
             0x00080146: 48 e8:       setc (ru6)      res[r1], 0x8
             0x00080148: 86 68:       ldc (ru6)       r2, 0x6
             0x0008014a: d9 fe ec 0f: setclk (lr2r)   res[r1], r2
             0x0008014e: 93 68:       ldc (ru6)       r2, 0x13
             0x00080150: d6 fe ec 2f: setc (l2r)      res[r1], r2
             0x00080154: d9 fe ec 1f: getd (l2r)      r2, res[r1]
             0x00080158: d8 0e:       outt (r2r)      res[r0], r2
             0x0008015a: d1 4e:       outct (rus)     res[r0], 0x1
             0x0008015c: 40 e8:       setc (ru6)      res[r1], 0x0
             0x0008015e: c0 77:       retsp (u6)      0x0

<_GLOBAL__sub_I_app2.cpp>:
             0x00080160: 00 f0 42 77: entsp (lu6)     0x2
             0x00080164: 00 f0 13 6c: ldw (lru6)      r0, cp[0x13]
             0x00080168: 00 f0 0e 50: stw (lru6)      r0, dp[0xe]
             0x0008016c: 00 f2 42 68: ldc (lru6)      r1, 0x8002
             0x00080170: 00 f0 4f 50: stw (lru6)      r1, dp[0xf]
             0x00080174: 00 f0 9c 58: ldw (lru6)      r2, dp[0x1c]
             0x00080178: 88 70:       bt (ru6)        r2, 0x8 <.label15>
             0x0008017a: 00 f2 83 68: ldc (lru6)      r2, 0x8003
             0x0008017e: 19 30:       eq (3r)         r1, r2, r1
             0x00080180: 46 70:       bt (ru6)        r1, 0x6 <.label16>
             0x00080182: 00 68:       ldc (ru6)       r0, 0x0
             0x00080184: 00 f0 0e 50: stw (lru6)      r0, dp[0xe]
             0x00080188: 0a 73:       bu (u6)         0xa <.label17>
.label15     0x0008018a: 19 30:       eq (3r)         r1, r2, r1
             0x0008018c: e1 4f:       ecallf (1r)     r1
.label16     0x0008018e: 08 e8:       setc (ru6)      res[r0], 0x8
             0x00080190: 46 68:       ldc (ru6)       r1, 0x6
             0x00080192: d4 fe ec 0f: setclk (lr2r)   res[r0], r1
             0x00080196: d5 a6:       mkmsk (rus)     r1, 0x1
             0x00080198: d4 16:       setd (r2r)      res[r0], r1
             0x0008019a: c4 ae:       out (r2r)       res[r0], r1
             0x0008019c: 03 e8:       setc (ru6)      res[r0], 0x3
.label17     0x0008019e: 00 f0 41 dc: ldap (lu10)     r11, -0x41 <__dtor_P8C>
             0x000801a2: 8c 91:       add (2rus)      r0, r11, 0x0
             0x000801a4: 00 f0 c4 d0: bl (lu10)       0xc4 <atexit>
             0x000801a8: 00 f0 0e 60: ldaw (lru6)     r0, dp[0xe]
             0x000801ac: 00 f0 10 50: stw (lru6)      r0, dp[0x10]
             0x000801b0: 04 68:       ldc (ru6)       r0, 0x4
             0x000801b2: 00 f0 11 50: stw (lru6)      r0, dp[0x11]
             0x000801b6: 00 f2 03 68: ldc (lru6)      r0, 0x8003
             0x000801ba: 00 f0 1b 50: stw (lru6)      r0, dp[0x1b]
             0x000801be: c2 77:       retsp (u6)      0x2

<__dtor_XCPortUndefined>:
             0x000801c0: 00 f0 40 77: entsp (lu6)     0x0
             0x000801c4: 00 f0 12 58: ldw (lru6)      r0, dp[0x12]
             0x000801c8: 01 78:       bf (ru6)        r0, 0x1 <.label18>
             0x000801ca: 00 e8:       setc (ru6)      res[r0], 0x0
.label18     0x000801cc: c0 77:       retsp (u6)      0x0
             0x000801ce: 00 00:       stw (2rus)      r0, r0[0x0]

<XCbeforeMain>:
             0x000801d0: 00 f0 40 77: entsp (lu6)     0x0
             0x000801d4: 00 f0 20 50: stw (lru6)      r0, dp[0x20]
             0x000801d8: 00 f0 5f 50: stw (lru6)      r1, dp[0x1f]
             0x000801dc: 00 f2 03 68: ldc (lru6)      r0, 0x8003
             0x000801e0: 00 f0 1c 50: stw (lru6)      r0, dp[0x1c]
             0x000801e4: 00 f0 1e 50: stw (lru6)      r0, dp[0x1e]
             0x000801e8: e0 8f:       gettime (1r)    r0
             0x000801ea: 00 f0 1d 50: stw (lru6)      r0, dp[0x1d]
             0x000801ee: 00 68:       ldc (ru6)       r0, 0x0
             0x000801f0: c0 77:       retsp (u6)      0x0
             0x000801f2: 00 00:       stw (2rus)      r0, r0[0x0]

<_get_cmdline>:
.label6      0x000801f4: 00 f0 42 77: entsp (lu6)     0x2
             0x000801f8: 00 f0 16 d4: bl (lu10)       -0x16 <XCbeforeMain>
             0x000801fc: c2 77:       retsp (u6)      0x2
             0x000801fe: 00 00:       stw (2rus)      r0, r0[0x0]

<_GLOBAL__sub_I_XC_core.cpp>:
             0x00080200: 00 f0 44 77: entsp (lu6)     0x4
             0x00080204: 05 f9 ec f7: std (l2rus)     r5, r4, sp[0x1]
             0x00080208: 00 69:       ldc (ru6)       r4, 0x0
             0x0008020a: 00 f0 12 51: stw (lru6)      r4, dp[0x12]
             0x0008020e: 00 f0 52 61: ldaw (lru6)     r5, dp[0x12]
             0x00080212: 00 f0 13 51: stw (lru6)      r4, dp[0x13]
             0x00080216: 00 f0 2d dc: ldap (lu10)     r11, -0x2d <__dtor_XCPortUndefined>
             0x0008021a: 8c 91:       add (2rus)      r0, r11, 0x0
             0x0008021c: 00 f0 88 d0: bl (lu10)       0x88 <atexit>
             0x00080220: 00 f0 54 51: stw (lru6)      r5, dp[0x14]
             0x00080224: 00 f0 15 51: stw (lru6)      r4, dp[0x15]
             0x00080228: 00 f0 21 51: stw (lru6)      r4, dp[0x21]
             0x0008022c: 00 f0 16 51: stw (lru6)      r4, dp[0x16]
             0x00080230: 00 f0 17 51: stw (lru6)      r4, dp[0x17]
             0x00080234: 00 f0 18 51: stw (lru6)      r4, dp[0x18]
             0x00080238: 00 f0 19 51: stw (lru6)      r4, dp[0x19]
             0x0008023c: 05 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x1]
             0x00080240: c4 77:       retsp (u6)      0x4
             0x00080242: 00 00:       stw (2rus)      r0, r0[0x0]

<main>:
.label7      0x00080244: 42 77:       entsp (u6)      0x2
.label19     0x00080246: c2 86:       getr (rus)      r0, 0x2
             0x00080248: 02 74:       bt (ru6)        r0, -0x2 <.label19>
             0x0008024a: 78 f0 02 68: ldc (lru6)      r0, 0x1e02
             0x0008024e: 00 f0 d2 6e: ldw (lru6)      r11, cp[0x12]
             0x00080252: 5c 17:       setd (r2r)      res[r0], r11
             0x00080254: d1 4e:       outct (rus)     res[r0], 0x1
             0x00080256: 5c bf:       testct (2r)     r11, res[r0]
             0x00080258: c2 7a:       bf (ru6)        r11, 0x2 <.label20>
             0x0008025a: d1 ce:       chkct (rus)     res[r0], 0x1
             0x0008025c: d1 4e:       outct (rus)     res[r0], 0x1
.label20     0x0008025e: 5c 8f:       int (2r)        r11, res[r0]
             0x00080260: d1 ce:       chkct (rus)     res[r0], 0x1
             0x00080262: 05 68:       ldc (ru6)       r0, 0x5
             0x00080264: 00 f0 4e d0: bl (lu10)       0x4e <delay_ticks>
             0x00080268: 00 f0 40 7f: ldaw (lu6)      r11, cp[0x0]
             0x0008026c: 00 68:       ldc (ru6)       r0, 0x0
             0x0008026e: 60 68:       ldc (ru6)       r1, 0x20
             0x00080270: 02 69:       ldc (ru6)       r4, 0x2
.label23     0x00080272: ac 09:       ldw (2rus)      r2, r11[0x0]
             0x00080274: b8 ac:       shr (2rus)      r3, r2, 0x8
             0x00080276: 38 47:       zext (rus)      r2, 0x8
             0x00080278: 58 30:       eq (3r)         r5, r2, r0
             0x0008027a: 47 79:       bf (ru6)        r5, 0x7 <.label21>
             0x0008027c: a8 a4:       shl (2rus)      r2, r2, 0x8
             0x0008027e: 68 42:       or (3r)         r2, r2, r4
             0x00080280: bc a4:       shl (2rus)      r3, r3, 0x8
             0x00080282: 7c 42:       or (3r)         r3, r3, r4
             0x00080284: de 16:       setd (r2r)      res[r2], r3
             0x00080286: 7c 94:       add (2rus)      r11, r11, 0x4
             0x00080288: 03 73:       bu (u6)         0x3 <.label22>
.label21     0x0008028a: a0 a4:       shl (2rus)      r2, r0, 0x8
             0x0008028c: 68 42:       or (3r)         r2, r2, r4
             0x0008028e: e2 17:       freer (1r)      res[r2]
.label22     0x00080290: 01 90:       add (2rus)      r0, r0, 0x1
             0x00080292: 21 30:       eq (3r)         r2, r0, r1
             0x00080294: 92 7c:       bf (ru6)        r2, -0x12 <.label23>
             0x00080296: 00 f0 11 6c: ldw (lru6)      r0, cp[0x11]
             0x0008029a: 00 f0 c5 d4: bl (lu10)       -0xc5 <__main__main_tile_1>
             0x0008029e: 00 68:       ldc (ru6)       r0, 0x0
             0x000802a0: c2 77:       retsp (u6)      0x2
             0x000802a2: 00 00:       stw (2rus)      r0, r0[0x0]

<__libc_done>:
.label9      0x000802a4: 00 f0 42 77: entsp (lu6)     0x2
             0x000802a8: 00 68:       ldc (ru6)       r0, 0x0
             0x000802aa: 10 90:       add (2rus)      r1, r0, 0x0
             0x000802ac: 00 f0 4a d0: bl (lu10)       0x4a <__call_exitprocs>
             0x000802b0: 00 f0 52 d0: bl (lu10)       0x52 <_cleanup>
             0x000802b4: 00 f0 e9 d4: bl (lu10)       -0xe9 <.label24>
             0x000802b8: 00 f0 54 d0: bl (lu10)       0x54 <_done>

<_exit_unlocked>:
.label10     0x000802bc: 00 f0 44 77: entsp (lu6)     0x4
             0x000802c0: 02 55:       stw (ru6)       r4, sp[0x2]
             0x000802c2: 40 90:       add (2rus)      r4, r0, 0x0
             0x000802c4: 40 68:       ldc (ru6)       r1, 0x0
             0x000802c6: 00 f0 3d d0: bl (lu10)       0x3d <__call_exitprocs>
             0x000802ca: 00 f0 45 d0: bl (lu10)       0x45 <_cleanup>
             0x000802ce: 00 f0 f6 d4: bl (lu10)       -0xf6 <.label24>
             0x000802d2: c0 90:       add (2rus)      r0, r4, 0x0
             0x000802d4: 00 f0 4e d0: bl (lu10)       0x4e <_exit>

<memset>:
.label2      0x000802d8: 00 f0 c2 6e: ldw (lru6)      r11, cp[0x2]
             0x000802dc: ff 17:       nop (0r)        
             0x000802de: fb 27:       bau (1r)        r11

<__init_threadlocal_timer>:
.label3      0x000802e0: 00 f0 40 77: entsp (lu6)     0x0
             0x000802e4: c9 86:       getr (rus)      r2, 0x1
             0x000802e6: 00 f0 40 60: ldaw (lru6)     r1, dp[0x0]
             0x000802ea: ee 17:       get (0r)        r11, id
             0x000802ec: a7 fc ec 07: stw (l3r)       r2, r1[r11]
             0x000802f0: c0 77:       retsp (u6)      0x0
             0x000802f2: 00 00:       stw (2rus)      r0, r0[0x0]

<__free_threadlocal_timer>:
.label13     0x000802f4: 00 f0 40 77: entsp (lu6)     0x0
             0x000802f8: 00 f0 80 60: ldaw (lru6)     r2, dp[0x0]
             0x000802fc: ee 17:       get (0r)        r11, id
             0x000802fe: ab 4c:       ldw (3r)        r2, r2[r11]
             0x00080300: e2 17:       freer (1r)      res[r2]
             0x00080302: c0 77:       retsp (u6)      0x0

<delay_ticks>:
             0x00080304: 00 f0 40 77: entsp (lu6)     0x0
             0x00080308: e1 8f:       gettime (1r)    r1
             0x0008030a: ee 17:       get (0r)        r11, id
             0x0008030c: 00 f0 80 60: ldaw (lru6)     r2, dp[0x0]
             0x00080310: ab 4c:       ldw (3r)        r2, r2[r11]
             0x00080312: 30 f8 ec 97: ashr (l2rus)    r3, r0, 0x20
             0x00080316: c6 78:       bf (ru6)        r3, 0x6 <.label25>
             0x00080318: 00 f0 d5 6c: ldw (lru6)      r3, cp[0x15]
             0x0008031c: 37 10:       add (3r)        r3, r1, r3
             0x0008031e: de 16:       setd (r2r)      res[r2], r3
             0x00080320: 89 e8:       setc (ru6)      res[r2], 0x9
             0x00080322: ce b6:       in (2r)         r3, res[r2]
.label25     0x00080324: 04 10:       add (3r)        r0, r1, r0
             0x00080326: d2 16:       setd (r2r)      res[r2], r0
             0x00080328: 89 e8:       setc (ru6)      res[r2], 0x9
             0x0008032a: c2 b6:       in (2r)         r0, res[r2]
             0x0008032c: c0 77:       retsp (u6)      0x0
             0x0008032e: 00 00:       stw (2rus)      r0, r0[0x0]

<atexit>:
             0x00080330: 00 f0 42 77: entsp (lu6)     0x2
             0x00080334: 10 90:       add (2rus)      r1, r0, 0x0
             0x00080336: 00 68:       ldc (ru6)       r0, 0x0
             0x00080338: 20 90:       add (2rus)      r2, r0, 0x0
             0x0008033a: 30 90:       add (2rus)      r3, r0, 0x0
             0x0008033c: 00 f0 3e d0: bl (lu10)       0x3e <__register_exitproc>
             0x00080340: c2 77:       retsp (u6)      0x2
             0x00080342: 00 00:       stw (2rus)      r0, r0[0x0]

<__call_exitprocs>:
             0x00080344: 00 f0 42 77: entsp (lu6)     0x2
             0x00080348: 00 f0 88 d0: bl (lu10)       0x88 <__call_exitprocs_impl>
             0x0008034c: c2 77:       retsp (u6)      0x2
             0x0008034e: 00 00:       stw (2rus)      r0, r0[0x0]

<_cleanup_impl>:
             0x00080350: 00 f0 40 77: entsp (lu6)     0x0
             0x00080354: c0 77:       retsp (u6)      0x0
             0x00080356: 00 00:       stw (2rus)      r0, r0[0x0]

<_cleanup>:
             0x00080358: 00 f0 42 77: entsp (lu6)     0x2
             0x0008035c: 00 f0 08 d4: bl (lu10)       -0x8 <_cleanup_impl>
             0x00080360: c2 77:       retsp (u6)      0x2
             0x00080362: 00 00:       stw (2rus)      r0, r0[0x0]

<_done>:
             0x00080364: 00 f0 40 77: entsp (lu6)     0x0
             0x00080368: 07 68:       ldc (ru6)       r0, 0x7
             0x0008036a: 00 f0 dd d0: bl (lu10)       0xdd <_DoSyscall>
             0x0008036e: ed 07:       clre (0r)       
             0x00080370: ec 07:       waiteu (0r)     
             0x00080372: 00 00:       stw (2rus)      r0, r0[0x0]

<_exit>:
             0x00080374: 00 f0 40 77: entsp (lu6)     0x0
             0x00080378: 10 90:       add (2rus)      r1, r0, 0x0
             0x0008037a: 00 68:       ldc (ru6)       r0, 0x0
             0x0008037c: 00 f0 d4 d0: bl (lu10)       0xd4 <_DoSyscall>
             0x00080380: ed 07:       clre (0r)       
             0x00080382: ec 07:       waiteu (0r)     

<__alloc_libc_hwlock>:
.label12     0x00080384: 00 f0 40 77: entsp (lu6)     0x0
             0x00080388: 81 87:       getr (rus)      r0, 0x5
             0x0008038a: 00 f0 22 50: stw (lru6)      r0, dp[0x22]
             0x0008038e: c0 77:       retsp (u6)      0x0

<__lock_fair_acquire>:
             0x00080390: 00 f0 40 77: entsp (lu6)     0x0
             0x00080394: 00 f0 62 58: ldw (lru6)      r1, dp[0x22]
             0x00080398: c5 b6:       in (2r)         r1, res[r1]
             0x0008039a: 10 08:       ldw (2rus)      r1, r0[0x0]
             0x0008039c: 25 90:       add (2rus)      r2, r1, 0x1
             0x0008039e: 20 00:       stw (2rus)      r2, r0[0x0]
             0x000803a0: 00 f0 a2 58: ldw (lru6)      r2, dp[0x22]
             0x000803a4: ca ae:       out (r2r)       res[r2], r2
.label26     0x000803a6: 21 08:       ldw (2rus)      r2, r0[0x1]
             0x000803a8: 29 30:       eq (3r)         r2, r2, r1
             0x000803aa: 83 7c:       bf (ru6)        r2, -0x3 <.label26>
             0x000803ac: c0 77:       retsp (u6)      0x0
             0x000803ae: 00 00:       stw (2rus)      r0, r0[0x0]

<__lock_fair_release>:
             0x000803b0: 00 f0 40 77: entsp (lu6)     0x0
             0x000803b4: 11 08:       ldw (2rus)      r1, r0[0x1]
             0x000803b6: 15 90:       add (2rus)      r1, r1, 0x1
             0x000803b8: 11 00:       stw (2rus)      r1, r0[0x1]
             0x000803ba: c0 77:       retsp (u6)      0x0

<__register_exitproc>:
             0x000803bc: 00 f0 48 77: entsp (lu6)     0x8
             0x000803c0: 05 f9 ec f7: std (l2rus)     r5, r4, sp[0x1]
             0x000803c4: 2e f9 ec f7: std (l2rus)     r7, r6, sp[0x2]
             0x000803c8: 06 56:       stw (ru6)       r8, sp[0x6]
             0x000803ca: 5c 90:       add (2rus)      r5, r3, 0x0
             0x000803cc: 78 90:       add (2rus)      r7, r2, 0x0
             0x000803ce: 44 90:       add (2rus)      r4, r1, 0x0
             0x000803d0: 60 90:       add (2rus)      r6, r0, 0x0
             0x000803d2: 00 f0 44 7f: ldaw (lu6)      r11, cp[0x4]
             0x000803d6: 9c 91:       add (2rus)      r1, r11, 0x0
             0x000803d8: 00 f0 46 7f: ldaw (lu6)      r11, cp[0x6]
             0x000803dc: c0 90:       add (2rus)      r0, r4, 0x0
             0x000803de: ac 91:       add (2rus)      r2, r11, 0x0
             0x000803e0: 00 f0 a6 d0: bl (lu10)       0xa6 <__checkFptrGroup>
             0x000803e4: e0 4f:       ecallf (1r)     r0
             0x000803e6: 02 f0 07 60: ldaw (lru6)     r0, dp[0x87]
             0x000803ea: 00 f0 2f d4: bl (lu10)       -0x2f <__lock_fair_acquire>
             0x000803ee: 00 f0 0a 58: ldw (lru6)      r0, dp[0xa]
             0x000803f2: 11 08:       ldw (2rus)      r1, r0[0x1]
             0x000803f4: 99 a7:       mkmsk (rus)     r2, 0x5
             0x000803f6: 29 c0:       lss (3r)        r2, r2, r1
             0x000803f8: 82 78:       bf (ru6)        r2, 0x2 <.label27>
             0x000803fa: d0 a6:       mkmsk (rus)     r0, 0x20
             0x000803fc: 29 73:       bu (u6)         0x29 <.label28>
.label27     0x000803fe: 9e 79:       bf (ru6)        r6, 0x1e <.label29>
             0x00080400: 02 f0 88 68: ldc (lru6)      r2, 0x88
             0x00080404: 32 10:       add (3r)        r3, r0, r2
             0x00080406: 7d f8 ec 07: stw (l3r)       r7, r3[r1]
             0x0008040a: 11 08:       ldw (2rus)      r1, r0[0x1]
             0x0008040c: d9 a6:       mkmsk (rus)     r2, 0x1
             0x0008040e: b9 20:       shl (3r)        r11, r2, r1
             0x00080410: 06 f0 c8 69: ldc (lru6)      r7, 0x188
             0x00080414: b3 12:       add (3r)        r7, r0, r7
             0x00080416: 4c 09:       ldw (2rus)      r8, r7[0x0]
             0x00080418: b3 46:       or (3r)         r11, r8, r11
             0x0008041a: 7c 01:       stw (2rus)      r11, r7[0x0]
             0x0008041c: 1d f8 ec 1f: ldaw (l3r)      r1, r3[r1]
             0x00080420: 02 f0 c0 68: ldc (lru6)      r3, 0x80
             0x00080424: 17 10:       add (3r)        r1, r1, r3
             0x00080426: 54 00:       stw (2rus)      r5, r1[0x0]
             0x00080428: 11 08:       ldw (2rus)      r1, r0[0x1]
             0x0008042a: fa b0:       eq (2rus)       r3, r6, 0x2
             0x0008042c: c7 78:       bf (ru6)        r3, 0x7 <.label29>
             0x0008042e: 29 20:       shl (3r)        r2, r2, r1
             0x00080430: 06 f0 cc 68: ldc (lru6)      r3, 0x18c
             0x00080434: 33 10:       add (3r)        r3, r0, r3
             0x00080436: bc 08:       ldw (2rus)      r11, r3[0x0]
             0x00080438: ae 41:       or (3r)         r2, r11, r2
             0x0008043a: 2c 00:       stw (2rus)      r2, r3[0x0]
.label29     0x0008043c: 25 90:       add (2rus)      r2, r1, 0x1
             0x0008043e: 21 00:       stw (2rus)      r2, r0[0x1]
             0x00080440: 01 f8 ec 1f: ldaw (l3r)      r0, r0[r1]
             0x00080444: 42 00:       stw (2rus)      r4, r0[0x2]
             0x00080446: 02 f0 07 60: ldaw (lru6)     r0, dp[0x87]
             0x0008044a: 00 f0 4f d4: bl (lu10)       -0x4f <__lock_fair_release>
             0x0008044e: 00 68:       ldc (ru6)       r0, 0x0
.label28     0x00080450: 06 5e:       ldw (ru6)       r8, sp[0x6]
             0x00080452: 2e f9 ec ef: ldd (l2rus)     r7, r6, sp[0x2]
             0x00080456: 05 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x1]
             0x0008045a: c8 77:       retsp (u6)      0x8

<__call_exitprocs_impl>:
             0x0008045c: 00 f0 4e 77: entsp (lu6)     0xe
             0x00080460: 07 f9 ec f7: std (l2rus)     r5, r4, sp[0x3]
             0x00080464: 6c fb ec f7: std (l2rus)     r7, r6, sp[0x4]
             0x00080468: 45 fc ec f7: std (l2rus)     r9, r8, sp[0x5]
             0x0008046c: 8c 56:       stw (ru6)       r10, sp[0xc]
             0x0008046e: 44 90:       add (2rus)      r4, r1, 0x0
             0x00080470: 01 54:       stw (ru6)       r0, sp[0x1]
             0x00080472: 00 f0 0a 58: ldw (lru6)      r0, dp[0xa]
             0x00080476: 01 f0 0f 78: bf (lru6)       r0, 0x4f <.label30>
             0x0008047a: 80 6a:       ldc (ru6)       r10, 0x0
.label40     0x0008047c: 80 90:       add (2rus)      r8, r0, 0x0
             0x0008047e: 11 0a:       ldw (2rus)      r9, r8[0x1]
             0x00080480: d1 a6:       mkmsk (rus)     r0, 0x1
             0x00080482: 84 c1:       lss (3r)        r0, r9, r0
             0x00080484: 01 f0 08 70: bt (lru6)       r0, 0x48 <.label30>
             0x00080488: 06 f0 08 68: ldc (lru6)      r0, 0x188
             0x0008048c: 80 11:       add (3r)        r0, r8, r0
             0x0008048e: 04 54:       stw (ru6)       r0, sp[0x4]
             0x00080490: 06 f0 0c 68: ldc (lru6)      r0, 0x18c
             0x00080494: 80 11:       add (3r)        r0, r8, r0
             0x00080496: 03 54:       stw (ru6)       r0, sp[0x3]
             0x00080498: 01 fe ec 1f: ldaw (l3r)      r0, r8[r9]
             0x0008049c: 02 f0 44 68: ldc (lru6)      r1, 0x84
             0x000804a0: 11 10:       add (3r)        r1, r0, r1
             0x000804a2: 42 54:       stw (ru6)       r1, sp[0x2]
             0x000804a4: 04 f0 44 68: ldc (lru6)      r1, 0x104
             0x000804a8: 11 10:       add (3r)        r1, r0, r1
             0x000804aa: 45 54:       stw (ru6)       r1, sp[0x5]
             0x000804ac: a0 92:       add (2rus)      r6, r0, 0x4
             0x000804ae: f8 91:       add (2rus)      r7, r10, 0x0
.label39     0x000804b0: 04 79:       bf (ru6)        r4, 0x4 <.label31>
             0x000804b2: 05 5c:       ldw (ru6)       r0, sp[0x5]
             0x000804b4: 43 4a:       ldw (3r)        r0, r0[r7]
             0x000804b6: 40 32:       eq (3r)         r0, r0, r4
             0x000804b8: 28 78:       bf (ru6)        r0, 0x28 <.label32>
.label31     0x000804ba: f7 13:       add (3r)        r3, r9, r7
             0x000804bc: 1d 98:       sub (2rus)      r1, r3, 0x1
             0x000804be: d1 a6:       mkmsk (rus)     r0, 0x1
             0x000804c0: 01 20:       shl (3r)        r0, r0, r1
             0x000804c2: 2b 4b:       ldw (3r)        r2, r6[r7]
             0x000804c4: 31 0a:       ldw (2rus)      r11, r8[0x1]
             0x000804c6: bf 34:       eq (3r)         r3, r3, r11
             0x000804c8: c2 78:       bf (ru6)        r3, 0x2 <.label33>
             0x000804ca: 91 01:       stw (2rus)      r1, r8[0x1]
             0x000804cc: 02 73:       bu (u6)         0x2 <.label34>
.label33     0x000804ce: ab fb ec 07: stw (l3r)       r10, r6[r7]
.label34     0x000804d2: 9b 78:       bf (ru6)        r2, 0x1b <.label32>
             0x000804d4: d8 91:       add (2rus)      r5, r10, 0x0
             0x000804d6: 21 0a:       ldw (2rus)      r10, r8[0x1]
             0x000804d8: 44 5c:       ldw (ru6)       r1, sp[0x4]
             0x000804da: 14 08:       ldw (2rus)      r1, r1[0x0]
             0x000804dc: 14 38:       and (3r)        r1, r1, r0
             0x000804de: 49 78:       bf (ru6)        r1, 0x9 <.label35>
             0x000804e0: 43 5c:       ldw (ru6)       r1, sp[0x3]
             0x000804e2: 14 08:       ldw (2rus)      r1, r1[0x0]
             0x000804e4: 04 38:       and (3r)        r0, r1, r0
             0x000804e6: 42 5c:       ldw (ru6)       r1, sp[0x2]
             0x000804e8: 57 4a:       ldw (3r)        r1, r1[r7]
             0x000804ea: 05 78:       bf (ru6)        r0, 0x5 <.label36>
             0x000804ec: 04 90:       add (2rus)      r0, r1, 0x0
             0x000804ee: e2 27:       bla (1r)        r2
             0x000804f0: 04 73:       bu (u6)         0x4 <.label37>
.label35     0x000804f2: e2 27:       bla (1r)        r2
             0x000804f4: 02 73:       bu (u6)         0x2 <.label37>
.label36     0x000804f6: 01 5c:       ldw (ru6)       r0, sp[0x1]
             0x000804f8: e2 27:       bla (1r)        r2
.label37     0x000804fa: 91 09:       ldw (2rus)      r1, r8[0x1]
             0x000804fc: 00 f0 0a 58: ldw (lru6)      r0, dp[0xa]
             0x00080500: 99 31:       eq (3r)         r1, r10, r1
             0x00080502: 64 91:       add (2rus)      r10, r5, 0x0
             0x00080504: 47 78:       bf (ru6)        r1, 0x7 <.label38>
             0x00080506: 90 34:       eq (3r)         r1, r0, r8
             0x00080508: 45 78:       bf (ru6)        r1, 0x5 <.label38>
.label32     0x0008050a: 3d 99:       sub (2rus)      r7, r7, 0x1
             0x0008050c: c7 13:       add (3r)        r0, r9, r7
             0x0008050e: 88 c1:       lss (3r)        r0, r10, r0
             0x00080510: 31 74:       bt (ru6)        r0, -0x31 <.label39>
             0x00080512: 02 73:       bu (u6)         0x2 <.label30>
.label38     0x00080514: 01 f0 0e 74: bt (lru6)       r0, -0x4e <.label40>
.label30     0x00080518: 8c 5e:       ldw (ru6)       r10, sp[0xc]
             0x0008051a: 45 fc ec ef: ldd (l2rus)     r9, r8, sp[0x5]
             0x0008051e: 6c fb ec ef: ldd (l2rus)     r7, r6, sp[0x4]
             0x00080522: 07 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x3]
             0x00080526: ce 77:       retsp (u6)      0xe

<_DoSyscall>:
             0x00080528: 00 f0 40 77: entsp (lu6)     0x0
             0x0008052c: d0 a6:       mkmsk (rus)     r0, 0x20
             0x0008052e: c0 77:       retsp (u6)      0x0

<__checkFptrGroup>:
             0x00080530: 00 f0 40 77: entsp (lu6)     0x0
             0x00080534: 30 90:       add (2rus)      r3, r0, 0x0
.label42     0x00080536: 06 c8:       lsu (3r)        r0, r1, r2
             0x00080538: 05 78:       bf (ru6)        r0, 0x5 <.label41>
             0x0008053a: 04 08:       ldw (2rus)      r0, r1[0x0]
             0x0008053c: 03 30:       eq (3r)         r0, r0, r3
             0x0008053e: 02 70:       bt (ru6)        r0, 0x2 <.label41>
             0x00080540: 54 92:       add (2rus)      r1, r1, 0x4
             0x00080542: 07 77:       bu (u6)         -0x7 <.label42>
.label41     0x00080544: c0 77:       retsp (u6)      0x0

Disassembly of section .cp.rodata (size: 16)

<_cp>:
<.cp.rodata>:
<chanends_to_setup>:
.label11     0x00080548: 00 00 02 80: 
             0x0008054c: ff 00 00 00: 

<.cp.rodata>:
             0x00080550: 30 19 f0 ff: 

<.cp.rodata>:
             0x00080554: f0 19 f0 ff: 

Disassembly of section .cp.rodata.4 (size: 8)

<.cp.rodata.4>:
<_fptrgroup.stdlib_atexit.group.begin>:
             0x00080558: 20 01 08 00: 
             0x0008055c: c0 01 08 00: 

Disassembly of section .cp.const4 (size: 52)

<initial_dp>:
             0x00080560: a8 05 08 00: 

<dp_bss_large_start>:
             0x00080564: cc 07 08 00: 

<extmem_bss_start>:
             0x00080568: 00 00 00 10: 

<.cp.const4>:
<ctor_list_ptr>:
             0x0008056c: a0 05 08 00: 

<.cp.const4>:
<dtor_list_ptr>:
             0x00080570: a8 05 08 00: 

<.cp.const4>:
<initial_sp>:
             0x00080574: 78 ff 0f 00: 

<dp_bss_size>:
             0x00080578: ec 01 00 00: 

<dp_bss_large_size>:
             0x0008057c: 00 00 00 00: 

<extmem_bss_size>:
             0x00080580: 00 00 00 00: 

<dtors_size>:
             0x00080584: 00 00 00 00: 

<ctors_size>:
             0x00080588: 02 00 00 00: 
             0x0008058c: 02 00 03 80: 

<.cp.const4>:
             0x00080590: 02 1f 02 80: 

Disassembly of section .cp.rodata.cst4 (size: 12)

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
             0x00080594: 00 02 08 00: 
             0x00080598: 00 03 08 00: 
             0x0008059c: ff ff ff 7f: 

Disassembly of section .ctors (size: 8)

<_CTOR_LIST_>:
<.ctors>:
             0x000805a0: 60 01 08 00: 

<.ctors>:
             0x000805a4: 00 02 08 00: 

Disassembly of section .dp.data (size: 40)

<_dp>:
<__timers>:
<.dp.data>:
<.dp.data>:
             0x000805a8: 01 00 00 00: 
             0x000805ac: 00 00 00 00: 
             0x000805b0: 00 00 00 00: 
             0x000805b4: 00 00 00 00: 
             0x000805b8: 00 00 00 00: 
             0x000805bc: 00 00 00 00: 
             0x000805c0: 00 00 00 00: 
             0x000805c4: 00 00 00 00: 

<__sodFlag>:
<.dp.data>:
<.dp.data>:
<.dp.data>:
             0x000805c8: 00 00 00 00: 

<__sodEnd>:
             0x000805cc: 02 01 00 80: 

Disassembly of section .dp.data.4 (size: 4)

<.dp.data.4>:
<.dp.data.4>:
<.dp.data.4>:
<.dp.data.4>:
<.dp.data.4>:
<_atexit_fns>:
             0x000805d0: 34 06 08 00: 

Disassembly of section .dp.rodata (size: 4)

<tile>:
             0x000805d4: 00 00 01 00: 

Disassembly of section .dp.data.extmem.setps (size: 4)

<.dp.data.extmem.setps>:
<__extmem_setps_val>:
             0x000805d8: 00 18 00 00: 


