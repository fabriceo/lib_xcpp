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
             0x00080022: 01 f0 8e 6f: ldw (lru6)      sp, cp[0x4e]
             0x00080026: f0 17:       mjoin (1r)      res[r0]
             0x00080028: e0 17:       freer (1r)      res[r0]
             0x0008002a: 08 f0 0b 68: ldc (lru6)      r0, 0x20b
             0x0008002e: 00 f0 50 58: ldw (lru6)      r1, dp[0x10]
             0x00080032: c4 fe ec 1f: set (lr2r)      ps[r0], r1
             0x00080036: 00 f0 12 60: ldaw (lru6)     r0, dp[0x12]
             0x0008003a: 40 68:       ldc (ru6)       r1, 0x0
             0x0008003c: 01 f0 8f 6c: ldw (lru6)      r2, cp[0x4f]
             0x00080040: 00 f0 be d2: bl (lu10)       0x2be <.label2>
             0x00080044: 01 f0 0a 6c: ldw (lru6)      r0, cp[0x4a]
             0x00080048: 40 68:       ldc (ru6)       r1, 0x0
             0x0008004a: 01 f0 90 6c: ldw (lru6)      r2, cp[0x50]
             0x0008004e: 00 f0 b7 d2: bl (lu10)       0x2b7 <.label2>
             0x00080052: 01 f0 0b 6c: ldw (lru6)      r0, cp[0x4b]
             0x00080056: 40 68:       ldc (ru6)       r1, 0x0
             0x00080058: 01 f0 91 6c: ldw (lru6)      r2, cp[0x51]
             0x0008005c: 00 f0 b0 d2: bl (lu10)       0x2b0 <.label2>
             0x00080060: 00 f0 b2 d2: bl (lu10)       0x2b2 <.label3>
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
             0x0008008c: 00 f0 0e d2: bl (lu10)       0x20e <.label6>
             0x00080090: b0 f8 ec 97: ashr (l2rus)    r11, r0, 0x20
             0x00080094: c2 7a:       bf (ru6)        r11, 0x2 <.label5>
             0x00080096: 01 90:       add (2rus)      r0, r0, 0x1
             0x00080098: f0 4f:       ecallt (1r)     r0
.label5      0x0008009a: 41 64:       ldaw (ru6)      r1, sp[0x1]
             0x0008009c: 00 f0 2e d2: bl (lu10)       0x22e <.label7>
             0x000800a0: 02 70:       bt (ru6)        r0, 0x2 <.label8>
             0x000800a2: 00 f0 73 d2: bl (lu10)       0x273 <.label9>
.label8      0x000800a6: 00 f0 7d d2: bl (lu10)       0x27d <.label10>

<_InitChildThread>:
             0x000800aa: 01 d0:       bl (u10)        0x1 <_SetupThread>
             0x000800ac: ee 07:       ssync (0r)      

<_SetupThread>:
             0x000800ae: 18 dc:       ldap (u10)      r11, -0x18 <_TrapHandler>
             0x000800b0: ff 07:       set (0r)        kep, r11
             0x000800b2: 01 f0 a9 d9: ldap (lu10)     r11, 0x5a9 <.label11>
             0x000800b6: fb 37:       set (1r)        cp, r11
             0x000800b8: 01 f0 49 6f: ldw (lru6)      dp, cp[0x49]
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
             0x000800ce: 00 f0 f5 d3: bl (lu10)       0x3f5 <.label12>
             0x000800d2: 01 f0 13 6d: ldw (lru6)      r4, cp[0x53]
             0x000800d6: 06 79:       bf (ru6)        r4, 0x6 <do_ctors_end> <.init>
             0x000800d8: 01 f0 4c 6d: ldw (lru6)      r5, cp[0x4c]

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
.label57     0x000800e6: 42 77:       entsp (u6)      0x2

<.fini>:
             0x000800e8: 84 77:       extsp (u6)      0x4
             0x000800ea: 01 55:       stw (ru6)       r4, sp[0x1]
             0x000800ec: 42 55:       stw (ru6)       r5, sp[0x2]
             0x000800ee: 83 55:       stw (ru6)       r6, sp[0x3]
             0x000800f0: 01 f0 92 6d: ldw (lru6)      r6, cp[0x52]
             0x000800f4: 88 79:       bf (ru6)        r6, 0x8 <do_dtors_end>
             0x000800f6: 00 69:       ldc (ru6)       r4, 0x0
             0x000800f8: 01 f0 4d 6d: ldw (lru6)      r5, cp[0x4d]

<do_dtors_loop>:
             0x000800fc: 04 4b:       ldw (3r)        r0, r5[r4]
             0x000800fe: e0 27:       bla (1r)        r0
             0x00080100: 01 91:       add (2rus)      r4, r4, 0x1
             0x00080102: b2 cb:       lsu (3r)        r11, r4, r6
             0x00080104: c5 76:       bt (ru6)        r11, -0x5 <do_dtors_loop>

<do_dtors_end>:
             0x00080106: 00 f0 69 d2: bl (lu10)       0x269 <.label13>
             0x0008010a: 01 5d:       ldw (ru6)       r4, sp[0x1]
             0x0008010c: 42 5d:       ldw (ru6)       r5, sp[0x2]
             0x0008010e: 83 5d:       ldw (ru6)       r6, sp[0x3]
             0x00080110: 84 67:       ldaw (ru6)      sp, sp[0x4]

<.fini>:
             0x00080112: c2 77:       retsp (u6)      0x2

Disassembly of section .text (size: 2798)

<_write>:
             0x00080114: ff 17:       nop (0r)        
             0x00080116: 86 7f:       dualentsp (u6)  0x6
             0x00080118: 05 f9 ec f7: std (l2rus)     r5, r4, sp[0x1]
             0x0008011c: 48 90:       add (2rus)      r4, r2, 0x0
             0x0008011e: 84 55:       stw (ru6)       r6, sp[0x4]
             0x00080120: 54 90:       add (2rus)      r5, r1, 0x0
             0x00080122: 60 90:       add (2rus)      r6, r0, 0x0
             0x00080124: 00 f0 42 d1: bl (lu10)       0x142 <xscope_get_io_config>
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
             0x00080144: 00 f0 3d d1: bl (lu10)       0x13d <xscope_syscall_write>
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
             0x00080164: 00 f0 73 d1: bl (lu10)       0x173 <xscope_syscall_data_write>
             0x00080168: 00 f0 01 73: bu (lu6)        0x1 <.label17>
.label18     0x0008016c: 10 a7:       mkmsk (rus)     r4, 0x20
             0x0008016e: ff 17:       nop (0r)        
.label17     0x00080170: c0 90:       add (2rus)      r0, r4, 0x0
             0x00080172: 84 5d:       ldw (ru6)       r6, sp[0x4]
             0x00080174: 05 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x1]
             0x00080178: ff 17:       nop (0r)        
             0x0008017a: c6 77:       retsp (u6)      0x6

<__main__main_tile_0>:
             0x0008017c: 00 f0 42 77: entsp (lu6)     0x2
             0x00080180: 00 f0 0a d0: bl (lu10)       0xa <main0>
             0x00080184: c2 77:       retsp (u6)      0x2
             0x00080186: 00 00:       stw (2rus)      r0, r0[0x0]

<__dtor_P8C>:
             0x00080188: 00 f0 40 77: entsp (lu6)     0x0
             0x0008018c: 00 f0 12 58: ldw (lru6)      r0, dp[0x12]
             0x00080190: 01 78:       bf (ru6)        r0, 0x1 <.label19>
             0x00080192: 00 e8:       setc (ru6)      res[r0], 0x0
.label19     0x00080194: c0 77:       retsp (u6)      0x0
             0x00080196: 00 00:       stw (2rus)      r0, r0[0x0]

<main0>:
             0x00080198: 00 f0 44 77: entsp (lu6)     0x4
             0x0008019c: 02 55:       stw (ru6)       r4, sp[0x2]
             0x0008019e: 40 90:       add (2rus)      r4, r0, 0x0
             0x000801a0: 00 f2 02 68: ldc (lru6)      r0, 0x8002
             0x000801a4: 00 f0 20 50: stw (lru6)      r0, dp[0x20]
             0x000801a8: 00 f0 22 50: stw (lru6)      r0, dp[0x22]
             0x000801ac: 00 f0 12 58: ldw (lru6)      r0, dp[0x12]
             0x000801b0: d5 a6:       mkmsk (rus)     r1, 0x1
             0x000801b2: d4 16:       setd (r2r)      res[r0], r1
             0x000801b4: c4 ae:       out (r2r)       res[r0], r1
             0x000801b6: 00 f0 54 58: ldw (lru6)      r1, dp[0x14]
             0x000801ba: 00 f0 95 58: ldw (lru6)      r2, dp[0x15]
             0x000801be: 14 08:       ldw (2rus)      r1, r1[0x0]
             0x000801c0: dd fe ec 1f: getd (l2r)      r3, res[r1]
             0x000801c4: 2e f8 ec 0f: xor (l3r)       r2, r3, r2
             0x000801c8: d9 16:       setd (r2r)      res[r1], r2
             0x000801ca: c9 ae:       out (r2r)       res[r1], r2
             0x000801cc: d4 fe ec 1f: getd (l2r)      r1, res[r0]
             0x000801d0: 01 f0 61 7f: ldaw (lu6)      r11, cp[0x61]
             0x000801d4: 8c 91:       add (2rus)      r0, r11, 0x0
             0x000801d6: 00 f0 3b d0: bl (lu10)       0x3b <debug_printf>
             0x000801da: 94 8f:       int (2r)        r1, res[r4]
             0x000801dc: 11 cf:       chkct (rus)     res[r4], 0x1
             0x000801de: 34 47:       zext (rus)      r1, 0x8
             0x000801e0: 01 f0 64 7f: ldaw (lu6)      r11, cp[0x64]
             0x000801e4: 8c 91:       add (2rus)      r0, r11, 0x0
             0x000801e6: 00 f0 33 d0: bl (lu10)       0x33 <debug_printf>
             0x000801ea: 02 5d:       ldw (ru6)       r4, sp[0x2]
             0x000801ec: c4 77:       retsp (u6)      0x4
             0x000801ee: 00 00:       stw (2rus)      r0, r0[0x0]

<_GLOBAL__sub_I_app2.cpp>:
             0x000801f0: 00 f0 42 77: entsp (lu6)     0x2
             0x000801f4: 01 f0 17 6c: ldw (lru6)      r0, cp[0x57]
             0x000801f8: 00 f0 12 50: stw (lru6)      r0, dp[0x12]
             0x000801fc: 00 f2 42 68: ldc (lru6)      r1, 0x8002
             0x00080200: 00 f0 53 50: stw (lru6)      r1, dp[0x13]
             0x00080204: 00 f0 a0 58: ldw (lru6)      r2, dp[0x20]
             0x00080208: 88 70:       bt (ru6)        r2, 0x8 <.label20>
             0x0008020a: 00 f2 82 68: ldc (lru6)      r2, 0x8002
             0x0008020e: 19 30:       eq (3r)         r1, r2, r1
             0x00080210: 46 70:       bt (ru6)        r1, 0x6 <.label21>
             0x00080212: 00 68:       ldc (ru6)       r0, 0x0
             0x00080214: 00 f0 12 50: stw (lru6)      r0, dp[0x12]
             0x00080218: 0a 73:       bu (u6)         0xa <.label22>
.label20     0x0008021a: 19 30:       eq (3r)         r1, r2, r1
             0x0008021c: e1 4f:       ecallf (1r)     r1
.label21     0x0008021e: 08 e8:       setc (ru6)      res[r0], 0x8
             0x00080220: 46 68:       ldc (ru6)       r1, 0x6
             0x00080222: d4 fe ec 0f: setclk (lr2r)   res[r0], r1
             0x00080226: d5 a6:       mkmsk (rus)     r1, 0x1
             0x00080228: d4 16:       setd (r2r)      res[r0], r1
             0x0008022a: c4 ae:       out (r2r)       res[r0], r1
             0x0008022c: 03 e8:       setc (ru6)      res[r0], 0x3
.label22     0x0008022e: 00 f0 55 dc: ldap (lu10)     r11, -0x55 <__dtor_P8C>
             0x00080232: 8c 91:       add (2rus)      r0, r11, 0x0
             0x00080234: 00 f0 d2 d2: bl (lu10)       0x2d2 <atexit>
             0x00080238: 00 f0 12 60: ldaw (lru6)     r0, dp[0x12]
             0x0008023c: 00 f0 14 50: stw (lru6)      r0, dp[0x14]
             0x00080240: 04 68:       ldc (ru6)       r0, 0x4
             0x00080242: 00 f0 15 50: stw (lru6)      r0, dp[0x15]
             0x00080246: 00 f2 02 68: ldc (lru6)      r0, 0x8002
             0x0008024a: 00 f0 1f 50: stw (lru6)      r0, dp[0x1f]
             0x0008024e: c2 77:       retsp (u6)      0x2

<debug_printf>:
             0x00080250: 00 f0 40 77: entsp (lu6)     0x0
             0x00080254: b2 77:       extsp (u6)      0x32
             0x00080256: c1 57:       stw (ru6)       lr, sp[0x1]
             0x00080258: 28 55:       stw (ru6)       r4, sp[0x28]
             0x0008025a: 69 55:       stw (ru6)       r5, sp[0x29]
             0x0008025c: aa 55:       stw (ru6)       r6, sp[0x2a]
             0x0008025e: eb 55:       stw (ru6)       r7, sp[0x2b]
             0x00080260: 2c 56:       stw (ru6)       r8, sp[0x2c]
             0x00080262: 6d 56:       stw (ru6)       r9, sp[0x2d]
             0x00080264: ae 56:       stw (ru6)       r10, sp[0x2e]
             0x00080266: a0 90:       add (2rus)      r10, r0, 0x0
             0x00080268: 70 54:       stw (ru6)       r1, sp[0x30]
             0x0008026a: b1 54:       stw (ru6)       r2, sp[0x31]
             0x0008026c: f2 54:       stw (ru6)       r3, sp[0x32]
             0x0008026e: 47 66:       ldaw (ru6)      r9, sp[0x7]
             0x00080270: 30 64:       ldaw (ru6)      r0, sp[0x30]
             0x00080272: 06 54:       stw (ru6)       r0, sp[0x6]
             0x00080274: 00 6a:       ldc (ru6)       r8, 0x0
             0x00080276: 08 8e:       ld8u (3r)       r0, r10[r8]
             0x00080278: 02 f0 36 78: bf (lru6)       r0, 0xb6 <.label23>
             0x0008027c: 01 f0 b7 68: ldc (lru6)      r2, 0x77
             0x00080280: 47 64:       ldaw (ru6)      r1, sp[0x7]
             0x00080282: 26 10:       add (3r)        r2, r1, r2
             0x00080284: 85 54:       stw (ru6)       r2, sp[0x5]
             0x00080286: 19 a7:       mkmsk (rus)     r6, 0x1
             0x00080288: 01 f0 5a 6d: ldw (lru6)      r5, cp[0x5a]
             0x0008028c: ca 69:       ldc (ru6)       r7, 0xa
             0x0008028e: 94 90:       add (2rus)      r9, r1, 0x0
.label41     0x00080290: 45 5c:       ldw (ru6)       r1, sp[0x5]
             0x00080292: 95 cc:       lsu (3r)        r1, r1, r9
             0x00080294: 48 78:       bf (ru6)        r1, 0x8 <.label24>
             0x00080296: 07 65:       ldaw (ru6)      r4, sp[0x7]
             0x00080298: e4 1b:       sub (3r)        r2, r9, r4
             0x0008029a: c8 90:       add (2rus)      r0, r6, 0x0
             0x0008029c: d0 90:       add (2rus)      r1, r4, 0x0
             0x0008029e: 00 f0 c7 d4: bl (lu10)       -0xc7 <_write>
             0x000802a2: 08 8e:       ld8u (3r)       r0, r10[r8]
             0x000802a4: 50 91:       add (2rus)      r9, r4, 0x0
.label24     0x000802a6: 10 90:       add (2rus)      r1, r0, 0x0
             0x000802a8: 34 47:       zext (rus)      r1, 0x8
             0x000802aa: a5 68:       ldc (ru6)       r2, 0x25
             0x000802ac: 16 30:       eq (3r)         r1, r1, r2
             0x000802ae: 71 78:       bf (ru6)        r1, 0x31 <.label25>
             0x000802b0: 89 91:       add (2rus)      r0, r10, 0x1
             0x000802b2: da 8b:       ld8u (3r)       r1, r10[r6]
             0x000802b4: 94 fc ec a7: ldaw (l2rus)    r1, r1[-0x8]
             0x000802b8: 34 47:       zext (rus)      r1, 0x8
             0x000802ba: 25 a8:       shr (2rus)      r2, r1, 0x1
             0x000802bc: c6 68:       ldc (ru6)       r3, 0x6
             0x000802be: 2e c8:       lsu (3r)        r2, r3, r2
             0x000802c0: 86 70:       bt (ru6)        r2, 0x6 <.label26>
             0x000802c2: d9 20:       shl (3r)        r1, r6, r1
             0x000802c4: a0 f0 89 68: ldc (lru6)      r2, 0x2809
             0x000802c8: 16 38:       and (3r)        r1, r1, r2
             0x000802ca: 41 78:       bf (ru6)        r1, 0x1 <.label26>
             0x000802cc: 8a 91:       add (2rus)      r0, r10, 0x2
.label26     0x000802ce: 11 98:       sub (2rus)      r1, r0, 0x1
.label27     0x000802d0: 45 90:       add (2rus)      r4, r1, 0x1
             0x000802d2: 46 8a:       ld8u (3r)       r0, r1[r6]
             0x000802d4: 51 12:       add (3r)        r1, r0, r5
             0x000802d6: 34 47:       zext (rus)      r1, 0x8
             0x000802d8: 67 ca:       lsu (3r)        r2, r1, r7
             0x000802da: d0 90:       add (2rus)      r1, r4, 0x0
             0x000802dc: 87 74:       bt (ru6)        r2, -0x7 <.label27>
             0x000802de: 00 f0 4c 58: ldw (lru6)      r1, dp[0xc]
             0x000802e2: 11 10:       add (3r)        r1, r0, r1
             0x000802e4: 56 8a:       ld8u (3r)       r1, r1[r6]
             0x000802e6: d5 46:       zext (rus)      r1, 0x1
             0x000802e8: 42 78:       bf (ru6)        r1, 0x2 <.label28>
             0x000802ea: 80 fc ec 9f: ldaw (l2rus)    r0, r0[0x8]
.label28     0x000802ee: 01 f0 6f 68: ldc (lru6)      r1, 0x6f
             0x000802f2: 14 c0:       lss (3r)        r1, r1, r0
             0x000802f4: 55 70:       bt (ru6)        r1, 0x15 <.label29>
             0x000802f6: 01 f0 63 68: ldc (lru6)      r1, 0x63
             0x000802fa: 11 30:       eq (3r)         r1, r0, r1
             0x000802fc: 6b 78:       bf (ru6)        r1, 0x2b <.label30>
             0x000802fe: 06 5c:       ldw (ru6)       r0, sp[0x6]
             0x00080300: 50 92:       add (2rus)      r1, r0, 0x4
             0x00080302: 46 54:       stw (ru6)       r1, sp[0x6]
             0x00080304: 00 08:       ldw (2rus)      r0, r0[0x0]
             0x00080306: 95 91:       add (2rus)      r1, r9, 0x1
             0x00080308: 04 fe ec 8f: st8 (l3r)       r0, r9[r8]
             0x0008030c: 94 90:       add (2rus)      r9, r1, 0x0
             0x0008030e: 01 f0 27 73: bu (lu6)        0x67 <.label31>
.label25     0x00080312: 95 91:       add (2rus)      r1, r9, 0x1
             0x00080314: 04 fe ec 8f: st8 (l3r)       r0, r9[r8]
             0x00080318: 94 90:       add (2rus)      r9, r1, 0x0
             0x0008031a: c8 91:       add (2rus)      r4, r10, 0x0
             0x0008031c: 01 f0 20 73: bu (lu6)        0x60 <.label31>
.label29     0x00080320: 01 f0 59 6c: ldw (lru6)      r1, cp[0x59]
             0x00080324: 01 10:       add (3r)        r0, r0, r1
             0x00080326: 48 68:       ldc (ru6)       r1, 0x8
             0x00080328: 14 c8:       lsu (3r)        r1, r1, r0
             0x0008032a: 01 f0 59 70: bt (lru6)       r1, 0x59 <.label31>
             0x0008032e: e0 2f:       bru (1r)        r0
             0x00080330: 0a 73:       bu (u6)         0xa <.label32>
             0x00080332: 07 73:       bu (u6)         0x7 <.label33>
             0x00080334: 06 73:       bu (u6)         0x6 <.label33>
             0x00080336: 1d 73:       bu (u6)         0x1d <.label34>
             0x00080338: 04 73:       bu (u6)         0x4 <.label33>
             0x0008033a: 3d 73:       bu (u6)         0x3d <.label35>
             0x0008033c: 02 73:       bu (u6)         0x2 <.label33>
             0x0008033e: 01 73:       bu (u6)         0x1 <.label33>
             0x00080340: 02 73:       bu (u6)         0x2 <.label32>
.label33     0x00080342: 01 f0 0d 73: bu (lu6)        0x4d <.label31>
.label32     0x00080346: 06 5c:       ldw (ru6)       r0, sp[0x6]
             0x00080348: 50 92:       add (2rus)      r1, r0, 0x4
             0x0008034a: 46 54:       stw (ru6)       r1, sp[0x6]
             0x0008034c: 00 08:       ldw (2rus)      r0, r0[0x0]
             0x0008034e: 94 91:       add (2rus)      r1, r9, 0x0
             0x00080350: 90 68:       ldc (ru6)       r2, 0x10
             0x00080352: 37 73:       bu (u6)         0x37 <.label36>
.label30     0x00080354: 01 f0 64 68: ldc (lru6)      r1, 0x64
             0x00080358: 01 30:       eq (3r)         r0, r0, r1
             0x0008035a: 01 f0 01 78: bf (lru6)       r0, 0x41 <.label31>
             0x0008035e: 20 92:       add (2rus)      r10, r8, 0x0
             0x00080360: 06 5c:       ldw (ru6)       r0, sp[0x6]
             0x00080362: 50 92:       add (2rus)      r1, r0, 0x4
             0x00080364: 46 54:       stw (ru6)       r1, sp[0x6]
             0x00080366: 00 08:       ldw (2rus)      r0, r0[0x0]
             0x00080368: 10 f8 ec 97: ashr (l2rus)    r1, r0, 0x20
             0x0008036c: 6e 70:       bt (ru6)        r1, 0x2e <.label37>
             0x0008036e: 04 92:       add (2rus)      r8, r9, 0x0
             0x00080370: 31 73:       bu (u6)         0x31 <.label38>
.label34     0x00080372: 06 5c:       ldw (ru6)       r0, sp[0x6]
             0x00080374: 50 92:       add (2rus)      r1, r0, 0x4
             0x00080376: 46 54:       stw (ru6)       r1, sp[0x6]
             0x00080378: 00 08:       ldw (2rus)      r0, r0[0x0]
             0x0008037a: 04 54:       stw (ru6)       r0, sp[0x4]
             0x0008037c: 00 f0 38 d2: bl (lu10)       0x238 <strlen>
             0x00080380: 80 90:       add (2rus)      r8, r0, 0x0
             0x00080382: 01 f0 38 68: ldc (lru6)      r0, 0x78
             0x00080386: 80 c1:       lss (3r)        r0, r8, r0
             0x00080388: 07 70:       bt (ru6)        r0, 0x7 <.label39>
             0x0008038a: 87 66:       ldaw (ru6)      r10, sp[0x7]
             0x0008038c: 26 1e:       sub (3r)        r2, r9, r10
             0x0008038e: c8 90:       add (2rus)      r0, r6, 0x0
             0x00080390: 98 91:       add (2rus)      r1, r10, 0x0
             0x00080392: 00 f0 41 d5: bl (lu10)       -0x141 <_write>
             0x00080396: 18 92:       add (2rus)      r9, r10, 0x0
.label39     0x00080398: 01 f0 37 68: ldc (lru6)      r0, 0x77
             0x0008039c: 10 90:       add (2rus)      r1, r0, 0x0
             0x0008039e: 84 c4:       lss (3r)        r0, r1, r8
             0x000803a0: a4 90:       add (2rus)      r10, r1, 0x0
             0x000803a2: 01 70:       bt (ru6)        r0, 0x1 <.label40>
             0x000803a4: 20 92:       add (2rus)      r10, r8, 0x0
.label40     0x000803a6: 84 91:       add (2rus)      r0, r9, 0x0
             0x000803a8: 44 5c:       ldw (ru6)       r1, sp[0x4]
             0x000803aa: a8 91:       add (2rus)      r2, r10, 0x0
             0x000803ac: 00 f0 2a d2: bl (lu10)       0x22a <memcpy> <__memcpy_4>
             0x000803b0: 96 16:       add (3r)        r9, r9, r10
             0x000803b2: 00 6a:       ldc (ru6)       r8, 0x0
             0x000803b4: 15 73:       bu (u6)         0x15 <.label31>
.label35     0x000803b6: 06 5c:       ldw (ru6)       r0, sp[0x6]
             0x000803b8: 50 92:       add (2rus)      r1, r0, 0x4
             0x000803ba: 46 54:       stw (ru6)       r1, sp[0x6]
             0x000803bc: 00 08:       ldw (2rus)      r0, r0[0x0]
             0x000803be: 94 91:       add (2rus)      r1, r9, 0x0
             0x000803c0: ec 90:       add (2rus)      r2, r7, 0x0
.label36     0x000803c2: 00 f0 21 d0: bl (lu10)       0x21 <itoa>
             0x000803c6: 14 12:       add (3r)        r9, r9, r0
             0x000803c8: 0b 73:       bu (u6)         0xb <.label31>
.label37     0x000803ca: 05 92:       add (2rus)      r8, r9, 0x1
             0x000803cc: 6d 68:       ldc (ru6)       r1, 0x2d
             0x000803ce: 16 fe ec 8f: st8 (l3r)       r1, r9[r10]
             0x000803d2: c0 96:       neg (2r)        r0, r0
.label38     0x000803d4: 90 91:       add (2rus)      r1, r8, 0x0
             0x000803d6: ec 90:       add (2rus)      r2, r7, 0x0
             0x000803d8: 00 f0 16 d0: bl (lu10)       0x16 <itoa>
             0x000803dc: 10 12:       add (3r)        r9, r8, r0
             0x000803de: 08 92:       add (2rus)      r8, r10, 0x0
.label31     0x000803e0: 61 91:       add (2rus)      r10, r4, 0x1
             0x000803e2: 02 8b:       ld8u (3r)       r0, r4[r6]
             0x000803e4: 02 f0 2c 74: bt (lru6)       r0, -0xac <.label41>
.label23     0x000803e8: 47 64:       ldaw (ru6)      r1, sp[0x7]
             0x000803ea: a5 19:       sub (3r)        r2, r9, r1
             0x000803ec: d1 a6:       mkmsk (rus)     r0, 0x1
             0x000803ee: 00 f0 6f d5: bl (lu10)       -0x16f <_write>
             0x000803f2: ae 5e:       ldw (ru6)       r10, sp[0x2e]
             0x000803f4: 2c 5e:       ldw (ru6)       r8, sp[0x2c]
             0x000803f6: 6d 5e:       ldw (ru6)       r9, sp[0x2d]
             0x000803f8: aa 5d:       ldw (ru6)       r6, sp[0x2a]
             0x000803fa: eb 5d:       ldw (ru6)       r7, sp[0x2b]
             0x000803fc: 28 5d:       ldw (ru6)       r4, sp[0x28]
             0x000803fe: 69 5d:       ldw (ru6)       r5, sp[0x29]
             0x00080400: c1 5f:       ldw (ru6)       lr, sp[0x1]
             0x00080402: b2 67:       ldaw (ru6)      sp, sp[0x32]
             0x00080404: c0 77:       retsp (u6)      0x0
             0x00080406: 00 00:       stw (2rus)      r0, r0[0x0]

<itoa>:
             0x00080408: 00 f0 46 77: entsp (lu6)     0x6
             0x0008040c: 05 f9 ec f7: std (l2rus)     r5, r4, sp[0x1]
             0x00080410: 84 55:       stw (ru6)       r6, sp[0x4]
             0x00080412: 44 90:       add (2rus)      r4, r1, 0x0
             0x00080414: 40 68:       ldc (ru6)       r1, 0x0
             0x00080416: 10 78:       bf (ru6)        r0, 0x10 <.label42>
             0x00080418: 30 90:       add (2rus)      r3, r0, 0x0
.label43     0x0008041a: 5e f8 ec 4f: divu (l3r)      r5, r3, r2
             0x0008041e: 3e f8 ec cf: remu (l3r)      r3, r3, r2
             0x00080422: 01 f0 5c 7f: ldaw (lu6)      r11, cp[0x5c]
             0x00080426: bf 89:       ld8u (3r)       r3, r11[r3]
             0x00080428: f1 f8 ec 8f: st8 (l3r)       r3, r4[r1]
             0x0008042c: 15 90:       add (2rus)      r1, r1, 0x1
             0x0008042e: f4 90:       add (2rus)      r3, r5, 0x0
             0x00080430: 4c 75:       bt (ru6)        r5, -0xc <.label43>
             0x00080432: 00 b0:       eq (2rus)       r0, r0, 0x0
             0x00080434: 21 18:       sub (3r)        r2, r0, r1
             0x00080436: 01 73:       bu (u6)         0x1 <.label44>
.label42     0x00080438: 20 b0:       eq (2rus)       r2, r0, 0x0
.label44     0x0008043a: 19 a7:       mkmsk (rus)     r6, 0x1
             0x0008043c: 4a c2:       lss (3r)        r0, r2, r6
             0x0008043e: 06 70:       bt (ru6)        r0, 0x6 <.label45>
             0x00080440: 59 10:       add (3r)        r5, r2, r1
             0x00080442: c1 10:       add (3r)        r0, r4, r1
             0x00080444: 70 68:       ldc (ru6)       r1, 0x30
             0x00080446: 00 f0 bb d0: bl (lu10)       0xbb <memset>
             0x0008044a: 01 73:       bu (u6)         0x1 <.label46>
.label45     0x0008044c: 54 90:       add (2rus)      r5, r1, 0x0
.label46     0x0008044e: c5 98:       sub (2rus)      r0, r5, 0x1
             0x00080450: 52 c2:       lss (3r)        r1, r0, r6
             0x00080452: 4d 70:       bt (ru6)        r1, 0xd <.label47>
             0x00080454: d4 a6:       mkmsk (rus)     r1, 0x20
.label48     0x00080456: 22 13:       add (3r)        r2, r4, r6
             0x00080458: 39 88:       ld8u (3r)       r3, r2[r1]
             0x0008045a: 70 89:       ld8u (3r)       r11, r4[r0]
             0x0008045c: b9 f8 ec 8f: st8 (l3r)       r11, r2[r1]
             0x00080460: f0 f8 ec 8f: st8 (l3r)       r3, r4[r0]
             0x00080464: 01 98:       sub (2rus)      r0, r0, 0x1
             0x00080466: e9 90:       add (2rus)      r2, r6, 0x1
             0x00080468: f8 c0:       lss (3r)        r3, r6, r0
             0x0008046a: 68 90:       add (2rus)      r6, r2, 0x0
             0x0008046c: cc 74:       bt (ru6)        r3, -0xc <.label48>
.label47     0x0008046e: c4 90:       add (2rus)      r0, r5, 0x0
             0x00080470: 84 5d:       ldw (ru6)       r6, sp[0x4]
             0x00080472: 05 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x1]
             0x00080476: c6 77:       retsp (u6)      0x6

<__dtor_XCPortUndefined>:
             0x00080478: 00 f0 40 77: entsp (lu6)     0x0
             0x0008047c: 00 f0 16 58: ldw (lru6)      r0, dp[0x16]
             0x00080480: 01 78:       bf (ru6)        r0, 0x1 <.label49>
             0x00080482: 00 e8:       setc (ru6)      res[r0], 0x0
.label49     0x00080484: c0 77:       retsp (u6)      0x0
             0x00080486: 00 00:       stw (2rus)      r0, r0[0x0]

<XCbeforeMain>:
             0x00080488: 00 f0 40 77: entsp (lu6)     0x0
             0x0008048c: 00 f0 24 50: stw (lru6)      r0, dp[0x24]
             0x00080490: 00 f0 63 50: stw (lru6)      r1, dp[0x23]
             0x00080494: 00 f2 02 68: ldc (lru6)      r0, 0x8002
             0x00080498: 00 f0 20 50: stw (lru6)      r0, dp[0x20]
             0x0008049c: 00 f0 22 50: stw (lru6)      r0, dp[0x22]
             0x000804a0: e0 8f:       gettime (1r)    r0
             0x000804a2: 00 f0 21 50: stw (lru6)      r0, dp[0x21]
             0x000804a6: 00 68:       ldc (ru6)       r0, 0x0
             0x000804a8: c0 77:       retsp (u6)      0x0
             0x000804aa: 00 00:       stw (2rus)      r0, r0[0x0]

<_get_cmdline>:
.label6      0x000804ac: 00 f0 42 77: entsp (lu6)     0x2
             0x000804b0: 00 f0 16 d4: bl (lu10)       -0x16 <XCbeforeMain>
             0x000804b4: c2 77:       retsp (u6)      0x2
             0x000804b6: 00 00:       stw (2rus)      r0, r0[0x0]

<_GLOBAL__sub_I_XC_core.cpp>:
             0x000804b8: 00 f0 44 77: entsp (lu6)     0x4
             0x000804bc: 05 f9 ec f7: std (l2rus)     r5, r4, sp[0x1]
             0x000804c0: 00 69:       ldc (ru6)       r4, 0x0
             0x000804c2: 00 f0 16 51: stw (lru6)      r4, dp[0x16]
             0x000804c6: 00 f0 56 61: ldaw (lru6)     r5, dp[0x16]
             0x000804ca: 00 f0 17 51: stw (lru6)      r4, dp[0x17]
             0x000804ce: 00 f0 2d dc: ldap (lu10)     r11, -0x2d <__dtor_XCPortUndefined>
             0x000804d2: 8c 91:       add (2rus)      r0, r11, 0x0
             0x000804d4: 00 f0 82 d1: bl (lu10)       0x182 <atexit>
             0x000804d8: 00 f0 58 51: stw (lru6)      r5, dp[0x18]
             0x000804dc: 00 f0 19 51: stw (lru6)      r4, dp[0x19]
             0x000804e0: 00 f0 25 51: stw (lru6)      r4, dp[0x25]
             0x000804e4: 00 f0 1a 51: stw (lru6)      r4, dp[0x1a]
             0x000804e8: 00 f0 1b 51: stw (lru6)      r4, dp[0x1b]
             0x000804ec: 00 f0 1c 51: stw (lru6)      r4, dp[0x1c]
             0x000804f0: 00 f0 1d 51: stw (lru6)      r4, dp[0x1d]
             0x000804f4: 05 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x1]
             0x000804f8: c4 77:       retsp (u6)      0x4
             0x000804fa: 00 00:       stw (2rus)      r0, r0[0x0]

<main>:
.label7      0x000804fc: 42 77:       entsp (u6)      0x2
.label50     0x000804fe: c2 86:       getr (rus)      r0, 0x2
             0x00080500: 02 74:       bt (ru6)        r0, -0x2 <.label50>
             0x00080502: 7c f0 02 68: ldc (lru6)      r0, 0x1f02
             0x00080506: 01 f0 d5 6e: ldw (lru6)      r11, cp[0x55]
             0x0008050a: 5c 17:       setd (r2r)      res[r0], r11
             0x0008050c: d1 4e:       outct (rus)     res[r0], 0x1
             0x0008050e: d1 ce:       chkct (rus)     res[r0], 0x1
             0x00080510: 00 f0 40 58: ldw (lru6)      r1, dp[0x0]
             0x00080514: 41 e8:       setc (ru6)      res[r1], 0x1
             0x00080516: c9 b6:       in (2r)         r2, res[r1]
             0x00080518: ed 07:       clre (0r)       
             0x0008051a: ca 6a:       ldc (ru6)       r11, 0xa
             0x0008051c: ab 14:       add (3r)        r2, r2, r11
             0x0008051e: 49 e8:       setc (ru6)      res[r1], 0x9
             0x00080520: d9 16:       setd (r2r)      res[r1], r2
             0x00080522: 09 d8:       ldap (u10)      r11, 0x9 <.label51>
             0x00080524: f1 47:       setv (1r)       res[r1], r11
             0x00080526: 06 d8:       ldap (u10)      r11, 0x6 <.label52>
             0x00080528: f0 47:       setv (1r)       res[r0], r11
             0x0008052a: 41 7b:       setsr (u6)      0x1
             0x0008052c: f0 07:       eeu (1r)        res[r0]
             0x0008052e: ff 17:       nop (0r)        
             0x00080530: f1 07:       eeu (1r)        res[r1]
             0x00080532: ec 07:       waiteu (0r)     
.label52     0x00080534: d1 ce:       chkct (rus)     res[r0], 0x1
.label51     0x00080536: 02 68:       ldc (ru6)       r0, 0x2
             0x00080538: 41 68:       ldc (ru6)       r1, 0x1
             0x0008053a: 00 f0 40 7f: ldaw (lu6)      r11, cp[0x0]
.label53     0x0008053e: 15 98:       sub (2rus)      r1, r1, 0x1
             0x00080540: ad 49:       ldw (3r)        r2, r11[r1]
             0x00080542: d8 16:       setd (r2r)      res[r0], r2
             0x00080544: d0 0e:       outt (r2r)      res[r0], r0
             0x00080546: d1 4e:       outct (rus)     res[r0], 0x1
             0x00080548: 46 74:       bt (ru6)        r1, -0x6 <.label53>
             0x0008054a: 05 68:       ldc (ru6)       r0, 0x5
             0x0008054c: 00 f0 30 d1: bl (lu10)       0x130 <delay_ticks>
             0x00080550: 00 f0 41 7f: ldaw (lu6)      r11, cp[0x1]
             0x00080554: 00 68:       ldc (ru6)       r0, 0x0
             0x00080556: 60 68:       ldc (ru6)       r1, 0x20
             0x00080558: 02 69:       ldc (ru6)       r4, 0x2
.label56     0x0008055a: ac 09:       ldw (2rus)      r2, r11[0x0]
             0x0008055c: b8 ac:       shr (2rus)      r3, r2, 0x8
             0x0008055e: 38 47:       zext (rus)      r2, 0x8
             0x00080560: 58 30:       eq (3r)         r5, r2, r0
             0x00080562: 47 79:       bf (ru6)        r5, 0x7 <.label54>
             0x00080564: a8 a4:       shl (2rus)      r2, r2, 0x8
             0x00080566: 68 42:       or (3r)         r2, r2, r4
             0x00080568: bc a4:       shl (2rus)      r3, r3, 0x8
             0x0008056a: 7c 42:       or (3r)         r3, r3, r4
             0x0008056c: de 16:       setd (r2r)      res[r2], r3
             0x0008056e: 7c 94:       add (2rus)      r11, r11, 0x4
             0x00080570: 03 73:       bu (u6)         0x3 <.label55>
.label54     0x00080572: a0 a4:       shl (2rus)      r2, r0, 0x8
             0x00080574: 68 42:       or (3r)         r2, r2, r4
             0x00080576: e2 17:       freer (1r)      res[r2]
.label55     0x00080578: 01 90:       add (2rus)      r0, r0, 0x1
             0x0008057a: 21 30:       eq (3r)         r2, r0, r1
             0x0008057c: 92 7c:       bf (ru6)        r2, -0x12 <.label56>
             0x0008057e: 01 f0 14 6c: ldw (lru6)      r0, cp[0x54]
             0x00080582: 00 f0 05 d6: bl (lu10)       -0x205 <__main__main_tile_0>
             0x00080586: 00 68:       ldc (ru6)       r0, 0x0
             0x00080588: c2 77:       retsp (u6)      0x2
             0x0008058a: 00 00:       stw (2rus)      r0, r0[0x0]

<__libc_done>:
.label9      0x0008058c: 00 f0 42 77: entsp (lu6)     0x2
             0x00080590: 00 68:       ldc (ru6)       r0, 0x0
             0x00080592: 10 90:       add (2rus)      r1, r0, 0x0
             0x00080594: 00 f0 72 d1: bl (lu10)       0x172 <__call_exitprocs>
             0x00080598: 00 f0 7a d1: bl (lu10)       0x17a <_cleanup>
             0x0008059c: 00 f0 5d d6: bl (lu10)       -0x25d <.label57>
             0x000805a0: 00 f0 7c d1: bl (lu10)       0x17c <_done>

<_exit_unlocked>:
.label10     0x000805a4: 00 f0 44 77: entsp (lu6)     0x4
             0x000805a8: 02 55:       stw (ru6)       r4, sp[0x2]
             0x000805aa: 40 90:       add (2rus)      r4, r0, 0x0
             0x000805ac: 40 68:       ldc (ru6)       r1, 0x0
             0x000805ae: 00 f0 65 d1: bl (lu10)       0x165 <__call_exitprocs>
             0x000805b2: 00 f0 6d d1: bl (lu10)       0x16d <_cleanup>
             0x000805b6: 00 f0 6a d6: bl (lu10)       -0x26a <.label57>
             0x000805ba: c0 90:       add (2rus)      r0, r4, 0x0
             0x000805bc: 00 f0 76 d1: bl (lu10)       0x176 <_exit>

<memset>:
.label2      0x000805c0: 00 f0 c3 6e: ldw (lru6)      r11, cp[0x3]
             0x000805c4: ff 17:       nop (0r)        
             0x000805c6: fb 27:       bau (1r)        r11

<__init_threadlocal_timer>:
.label3      0x000805c8: 00 f0 40 77: entsp (lu6)     0x0
             0x000805cc: c9 86:       getr (rus)      r2, 0x1
             0x000805ce: 00 f0 40 60: ldaw (lru6)     r1, dp[0x0]
             0x000805d2: ee 17:       get (0r)        r11, id
             0x000805d4: a7 fc ec 07: stw (l3r)       r2, r1[r11]
             0x000805d8: c0 77:       retsp (u6)      0x0
             0x000805da: 00 00:       stw (2rus)      r0, r0[0x0]

<__free_threadlocal_timer>:
.label13     0x000805dc: 00 f0 40 77: entsp (lu6)     0x0
             0x000805e0: 00 f0 80 60: ldaw (lru6)     r2, dp[0x0]
             0x000805e4: ee 17:       get (0r)        r11, id
             0x000805e6: ab 4c:       ldw (3r)        r2, r2[r11]
             0x000805e8: e2 17:       freer (1r)      res[r2]
             0x000805ea: c0 77:       retsp (u6)      0x0

<xscope_lock_init>:
             0x000805ec: ff 17:       nop (0r)        
             0x000805ee: 80 7f:       dualentsp (u6)  0x0
             0x000805f0: 81 87:       getr (rus)      r0, 0x5
             0x000805f2: ff 17:       nop (0r)        
             0x000805f4: 00 f0 26 50: stw (lru6)      r0, dp[0x26]
             0x000805f8: ff 17:       nop (0r)        
             0x000805fa: c0 77:       retsp (u6)      0x0

<xscope_lock_deinit>:
             0x000805fc: ff 17:       nop (0r)        
             0x000805fe: 80 7f:       dualentsp (u6)  0x0
             0x00080600: ff 17:       nop (0r)        
             0x00080602: c0 77:       retsp (u6)      0x0

<xscope_lock_acquire>:
             0x00080604: ff 17:       nop (0r)        
             0x00080606: 80 7f:       dualentsp (u6)  0x0
             0x00080608: 00 f0 66 58: ldw (lru6)      r1, dp[0x26]
             0x0008060c: 00 f0 42 70: bt (lru6)       r1, 0x2 <.label58>
             0x00080610: 85 87:       getr (rus)      r1, 0x5
             0x00080612: ff 17:       nop (0r)        
             0x00080614: 00 f0 66 50: stw (lru6)      r1, dp[0x26]
.label58     0x00080618: c5 b6:       in (2r)         r1, res[r1]
             0x0008061a: ff 17:       nop (0r)        
             0x0008061c: ff 17:       nop (0r)        
             0x0008061e: c0 77:       retsp (u6)      0x0

<xscope_lock_release>:
             0x00080620: ff 17:       nop (0r)        
             0x00080622: 80 7f:       dualentsp (u6)  0x0
             0x00080624: 00 f0 26 58: ldw (lru6)      r0, dp[0x26]
             0x00080628: c0 ae:       out (r2r)       res[r0], r0
             0x0008062a: ff 17:       nop (0r)        
             0x0008062c: ff 17:       nop (0r)        
             0x0008062e: c0 77:       retsp (u6)      0x0

<xscope_get_io_config>:
             0x00080630: ff 17:       nop (0r)        
             0x00080632: 80 7f:       dualentsp (u6)  0x0
             0x00080634: 00 f0 08 58: ldw (lru6)      r0, dp[0x8]
             0x00080638: ff 17:       nop (0r)        
             0x0008063a: c0 77:       retsp (u6)      0x0

<xscope_syscall_write>:
             0x0008063c: 00 f0 40 77: entsp (lu6)     0x0
             0x00080640: 38 90:       add (2rus)      r3, r2, 0x0
             0x00080642: 24 90:       add (2rus)      r2, r1, 0x0
             0x00080644: 10 90:       add (2rus)      r1, r0, 0x0
             0x00080646: 06 68:       ldc (ru6)       r0, 0x6
             0x00080648: 05 f0 14 73: bu (lu6)        0x154 <_DoSyscallErrno>

<xscope_user_init>:
             0x0008064c: ff 17:       nop (0r)        
             0x0008064e: 80 7f:       dualentsp (u6)  0x0
             0x00080650: ff 17:       nop (0r)        
             0x00080652: c0 77:       retsp (u6)      0x0

<xscope_constructor>:
             0x00080654: ff 17:       nop (0r)        
             0x00080656: 86 7f:       dualentsp (u6)  0x6
             0x00080658: 05 f9 ec f7: std (l2rus)     r5, r4, sp[0x1]
             0x0008065c: ff 17:       nop (0r)        
             0x0008065e: 84 55:       stw (ru6)       r6, sp[0x4]
             0x00080660: 00 f0 83 d0: bl (lu10)       0x83 <get_local_tile_id>
             0x00080664: 40 90:       add (2rus)      r4, r0, 0x0
             0x00080666: ff 17:       nop (0r)        
             0x00080668: 00 f0 ac d0: bl (lu10)       0xac <xscope_gettime_local_timer>
             0x0008066c: 60 90:       add (2rus)      r6, r0, 0x0
             0x0008066e: ff 17:       nop (0r)        
             0x00080670: 00 f0 b3 d0: bl (lu10)       0xb3 <xscope_start_ref_clock>
             0x00080674: 00 f0 23 d4: bl (lu10)       -0x23 <xscope_lock_init>
             0x00080678: 00 f0 d3 d0: bl (lu10)       0xd3 <xscope_tx_init>
             0x0008067c: 00 f0 12 78: bf (lru6)       r0, 0x12 <.label59>
             0x00080680: 03 f0 09 68: ldc (lru6)      r0, 0xc9
             0x00080684: 00 f0 bc d0: bl (lu10)       0xbc <xscope_tx_char>
             0x00080688: 71 47:       zext (rus)      r4, 0x10
             0x0008068a: ff 17:       nop (0r)        
             0x0008068c: c4 07:       byterev (2r)    r5, r4
             0x0008068e: ff 17:       nop (0r)        
             0x00080690: c4 90:       add (2rus)      r0, r5, 0x0
             0x00080692: ff 17:       nop (0r)        
             0x00080694: 00 f0 bb d0: bl (lu10)       0xbb <xscope_tx_int>
             0x00080698: 82 07:       byterev (2r)    r0, r6
             0x0008069a: ff 17:       nop (0r)        
             0x0008069c: 00 f0 b9 d0: bl (lu10)       0xb9 <xscope_tx_int>
             0x000806a0: 00 f0 c6 d0: bl (lu10)       0xc6 <xscope_tx_end>
             0x000806a4: 00 f0 17 d4: bl (lu10)       -0x17 <xscope_user_init>
             0x000806a8: 00 f0 0a 58: ldw (lru6)      r0, dp[0xa]
             0x000806ac: 00 f0 0a 78: bf (lru6)       r0, 0xa <.label60>
             0x000806b0: 67 68:       ldc (ru6)       r1, 0x27
             0x000806b2: ff 17:       nop (0r)        
             0x000806b4: 01 f0 98 6c: ldw (lru6)      r2, cp[0x58]
             0x000806b8: c0 90:       add (2rus)      r0, r4, 0x0
             0x000806ba: ff 17:       nop (0r)        
             0x000806bc: 00 f0 53 d0: bl (lu10)       0x53 <write_pswitch_reg>
             0x000806c0: 11 a7:       mkmsk (rus)     r4, 0x1
             0x000806c2: ff 17:       nop (0r)        
             0x000806c4: 00 f0 05 73: bu (lu6)        0x5 <.label61>
.label59     0x000806c8: 00 f0 c3 d0: bl (lu10)       0xc3 <xscope_tx_deinit>
             0x000806cc: 00 f0 a3 d0: bl (lu10)       0xa3 <xscope_stop_ref_clock>
             0x000806d0: 00 f0 36 d4: bl (lu10)       -0x36 <xscope_lock_deinit>
             0x000806d4: 00 f0 14 73: bu (lu6)        0x14 <.label62>
.label60     0x000806d8: 00 69:       ldc (ru6)       r4, 0x0
             0x000806da: ff 17:       nop (0r)        
.label61     0x000806dc: 03 f0 0b 68: ldc (lru6)      r0, 0xcb
             0x000806e0: 00 f0 a5 d0: bl (lu10)       0xa5 <xscope_tx_char>
             0x000806e4: c4 90:       add (2rus)      r0, r5, 0x0
             0x000806e6: ff 17:       nop (0r)        
             0x000806e8: 00 f0 a6 d0: bl (lu10)       0xa6 <xscope_tx_int>
             0x000806ec: 00 68:       ldc (ru6)       r0, 0x0
             0x000806ee: ff 17:       nop (0r)        
             0x000806f0: 00 f0 a4 d0: bl (lu10)       0xa4 <xscope_tx_int>
             0x000806f4: 01 f0 16 6c: ldw (lru6)      r0, cp[0x56]
             0x000806f8: 00 f0 a2 d0: bl (lu10)       0xa2 <xscope_tx_int>
             0x000806fc: 00 f0 af d0: bl (lu10)       0xaf <xscope_tx_end>
             0x00080700: 00 f0 b5 d0: bl (lu10)       0xb5 <xscope_tx_deinit>
             0x00080704: 00 f0 0a 58: ldw (lru6)      r0, dp[0xa]
             0x00080708: 00 f0 04 78: bf (lru6)       r0, 0x4 <.label63>
             0x0008070c: 00 f0 03 79: bf (lru6)       r4, 0x3 <.label63>
             0x00080710: 9c f0 0b 68: ldc (lru6)      r0, 0x270b
.label64     0x00080714: d4 fe ec 17: get (l2r)       r1, ps[r0]
             0x00080718: 00 f0 42 74: bt (lru6)       r1, -0x2 <.label64>
.label63     0x0008071c: 0f f0 28 68: ldc (lru6)      r0, 0x3e8
             0x00080720: 00 f0 80 d0: bl (lu10)       0x80 <xscope_wait>
             0x00080724: 00 f0 8d d0: bl (lu10)       0x8d <xscope_stop_ref_clock>
.label62     0x00080728: ff 17:       nop (0r)        
             0x0008072a: 84 5d:       ldw (ru6)       r6, sp[0x4]
             0x0008072c: 05 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x1]
             0x00080730: ff 17:       nop (0r)        
             0x00080732: c6 77:       retsp (u6)      0x6

<xscope_syscall_data_write>:
             0x00080734: ff 17:       nop (0r)        
             0x00080736: 88 7f:       dualentsp (u6)  0x8
             0x00080738: 05 f9 ec f7: std (l2rus)     r5, r4, sp[0x1]
             0x0008073c: 2e f9 ec f7: std (l2rus)     r7, r6, sp[0x2]
             0x00080740: 4c 90:       add (2rus)      r4, r3, 0x0
             0x00080742: 06 56:       stw (ru6)       r8, sp[0x6]
             0x00080744: 58 90:       add (2rus)      r5, r2, 0x0
             0x00080746: 64 90:       add (2rus)      r6, r1, 0x0
             0x00080748: 70 90:       add (2rus)      r7, r0, 0x0
             0x0008074a: ff 17:       nop (0r)        
             0x0008074c: 00 f0 53 d4: bl (lu10)       -0x53 <xscope_lock_acquire>
             0x00080750: 00 f0 70 d0: bl (lu10)       0x70 <xscope_gettime>
             0x00080754: 80 90:       add (2rus)      r8, r0, 0x0
             0x00080756: cc 90:       add (2rus)      r0, r7, 0x0
             0x00080758: 00 f0 87 d0: bl (lu10)       0x87 <xscope_tx_char>
             0x0008075c: 90 a7:       mkmsk (rus)     r0, 0x4
             0x0008075e: ff 17:       nop (0r)        
             0x00080760: 00 f0 85 d0: bl (lu10)       0x85 <xscope_tx_char>
             0x00080764: 20 07:       byterev (2r)    r0, r8
             0x00080766: ff 17:       nop (0r)        
             0x00080768: 00 f0 86 d0: bl (lu10)       0x86 <xscope_tx_int>
             0x0008076c: 04 93:       add (2rus)      r0, r5, 0x4
             0x0008076e: ff 17:       nop (0r)        
             0x00080770: c0 06:       byterev (2r)    r0, r0
             0x00080772: ff 17:       nop (0r)        
             0x00080774: 00 f0 83 d0: bl (lu10)       0x83 <xscope_tx_int>
             0x00080778: 82 07:       byterev (2r)    r0, r6
             0x0008077a: ff 17:       nop (0r)        
             0x0008077c: 00 f0 81 d0: bl (lu10)       0x81 <xscope_tx_int>
             0x00080780: 00 f0 45 79: bf (lru6)       r5, 0x5 <.label65>
             0x00080784: 80 69:       ldc (ru6)       r6, 0x0
             0x00080786: ff 17:       nop (0r)        
.label66     0x00080788: ff 17:       nop (0r)        
             0x0008078a: 02 8b:       ld8u (3r)       r0, r4[r6]
             0x0008078c: 00 f0 7a d0: bl (lu10)       0x7a <xscope_tx_char>
             0x00080790: 15 99:       sub (2rus)      r5, r5, 0x1
             0x00080792: 01 91:       add (2rus)      r4, r4, 0x1
             0x00080794: 00 f0 44 75: bt (lru6)       r5, -0x4 <.label66>
.label65     0x00080798: 00 f0 88 d0: bl (lu10)       0x88 <xscope_tx_end>
             0x0008079c: 00 f0 60 d4: bl (lu10)       -0x60 <xscope_lock_release>
             0x000807a0: ff 17:       nop (0r)        
             0x000807a2: 06 5e:       ldw (ru6)       r8, sp[0x6]
             0x000807a4: 2e f9 ec ef: ldd (l2rus)     r7, r6, sp[0x2]
             0x000807a8: 05 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x1]
             0x000807ac: ff 17:       nop (0r)        
             0x000807ae: c8 77:       retsp (u6)      0x8

<delay_ticks>:
             0x000807b0: 00 f0 40 77: entsp (lu6)     0x0
             0x000807b4: e1 8f:       gettime (1r)    r1
             0x000807b6: ee 17:       get (0r)        r11, id
             0x000807b8: 00 f0 80 60: ldaw (lru6)     r2, dp[0x0]
             0x000807bc: ab 4c:       ldw (3r)        r2, r2[r11]
             0x000807be: 30 f8 ec 97: ashr (l2rus)    r3, r0, 0x20
             0x000807c2: c6 78:       bf (ru6)        r3, 0x6 <.label67>
             0x000807c4: 01 f0 db 6c: ldw (lru6)      r3, cp[0x5b]
             0x000807c8: 37 10:       add (3r)        r3, r1, r3
             0x000807ca: de 16:       setd (r2r)      res[r2], r3
             0x000807cc: 89 e8:       setc (ru6)      res[r2], 0x9
             0x000807ce: ce b6:       in (2r)         r3, res[r2]
.label67     0x000807d0: 04 10:       add (3r)        r0, r1, r0
             0x000807d2: d2 16:       setd (r2r)      res[r2], r0
             0x000807d4: 89 e8:       setc (ru6)      res[r2], 0x9
             0x000807d6: c2 b6:       in (2r)         r0, res[r2]
             0x000807d8: c0 77:       retsp (u6)      0x0
             0x000807da: 00 00:       stw (2rus)      r0, r0[0x0]

<atexit>:
             0x000807dc: 00 f0 42 77: entsp (lu6)     0x2
             0x000807e0: 10 90:       add (2rus)      r1, r0, 0x0
             0x000807e2: 00 68:       ldc (ru6)       r0, 0x0
             0x000807e4: 20 90:       add (2rus)      r2, r0, 0x0
             0x000807e6: 30 90:       add (2rus)      r3, r0, 0x0
             0x000807e8: 00 f0 fc d0: bl (lu10)       0xfc <__register_exitproc>
             0x000807ec: c2 77:       retsp (u6)      0x2
             0x000807ee: 00 00:       stw (2rus)      r0, r0[0x0]

<strlen>:
             0x000807f0: 00 f0 40 77: entsp (lu6)     0x0
             0x000807f4: 21 98:       sub (2rus)      r2, r0, 0x1
             0x000807f6: d5 a6:       mkmsk (rus)     r1, 0x1
.label68     0x000807f8: 39 90:       add (2rus)      r3, r2, 0x1
             0x000807fa: b9 88:       ld8u (3r)       r11, r2[r1]
             0x000807fc: 2c 90:       add (2rus)      r2, r3, 0x0
             0x000807fe: c4 76:       bt (ru6)        r11, -0x4 <.label68>
             0x00080800: 0c 18:       sub (3r)        r0, r3, r0
             0x00080802: c0 77:       retsp (u6)      0x0

<memcpy>:
<__memcpy_4>:
             0x00080804: 00 f0 c4 6e: ldw (lru6)      r11, cp[0x4]
             0x00080808: ff 17:       nop (0r)        
             0x0008080a: fb 27:       bau (1r)        r11

<write_pswitch_reg>:
             0x0008080c: 00 f0 40 77: entsp (lu6)     0x0
             0x00080810: 08 f3 cc 68: ldc (lru6)      r3, 0xc20c
             0x00080814: c1 6a:       ldc (ru6)       r11, 0x1
             0x00080816: 00 f0 01 73: bu (lu6)        0x1 <write_switch_reg>
             0x0008081a: 00 00:       stw (2rus)      r0, r0[0x0]

<write_switch_reg>:
             0x0008081c: 00 f0 40 77: entsp (lu6)     0x0
             0x00080820: 00 55:       stw (ru6)       r4, sp[0x0]
             0x00080822: c1 ac:       shr (2rus)      r4, r0, 0x10
             0x00080824: 1e 71:       bt (ru6)        r4, 0x1e <write_switch_reg_return_0>
             0x00080826: c5 ac:       shr (2rus)      r4, r1, 0x10
             0x00080828: 1c 71:       bt (ru6)        r4, 0x1c <write_switch_reg_return_0>
             0x0008082a: 81 a4:       shl (2rus)      r0, r0, 0x10
             0x0008082c: 03 40:       or (3r)         r0, r0, r3
             0x0008082e: 02 87:       getr (rus)      r4, 0x2
             0x00080830: 90 17:       setd (r2r)      res[r4], r0
             0x00080832: 03 f0 c0 68: ldc (lru6)      r3, 0xc0
             0x00080836: 03 4f:       outct (2r)      res[r4], r3
             0x00080838: c3 7a:       bf (ru6)        r11, 0x3 <build_return_no_ack>
             0x0008083a: 40 ad:       shr (2rus)      r0, r4, 0x8
             0x0008083c: 80 a4:       shl (2rus)      r0, r0, 0x8
             0x0008083e: 04 73:       bu (u6)         0x4 <write_switch_reg_send>

<build_return_no_ack>:
             0x00080840: 80 ac:       shr (2rus)      r0, r0, 0x8
             0x00080842: 3c a7:       mkmsk (rus)     r3, 0x8
             0x00080844: 03 40:       or (3r)         r0, r0, r3
             0x00080846: 80 a4:       shl (2rus)      r0, r0, 0x8

<write_switch_reg_send>:
             0x00080848: b4 ac:       shr (2rus)      r3, r1, 0x8
             0x0008084a: 03 40:       or (3r)         r0, r0, r3
             0x0008084c: 80 af:       out (r2r)       res[r4], r0
             0x0008084e: 94 0f:       outt (r2r)      res[r4], r1
             0x00080850: 88 af:       out (r2r)       res[r4], r2
             0x00080852: 11 4f:       outct (rus)     res[r4], 0x1
             0x00080854: c9 7a:       bf (ru6)        r11, 0x9 <write_switch_reg_free_and_return_1>
             0x00080856: 90 87:       inct (2r)       r0, res[r4]
             0x00080858: 03 b0:       eq (2rus)       r0, r0, 0x3
             0x0008085a: 11 cf:       chkct (rus)     res[r4], 0x1
             0x0008085c: e4 17:       freer (1r)      res[r4]
             0x0008085e: 00 5d:       ldw (ru6)       r4, sp[0x0]
             0x00080860: c0 77:       retsp (u6)      0x0

<write_switch_reg_return_0>:
             0x00080862: 00 68:       ldc (ru6)       r0, 0x0
             0x00080864: 00 5d:       ldw (ru6)       r4, sp[0x0]
             0x00080866: c0 77:       retsp (u6)      0x0

<write_switch_reg_free_and_return_1>:
             0x00080868: e4 17:       freer (1r)      res[r4]
             0x0008086a: 01 68:       ldc (ru6)       r0, 0x1
             0x0008086c: 00 5d:       ldw (ru6)       r4, sp[0x0]
             0x0008086e: c0 77:       retsp (u6)      0x0

<get_local_tile_id>:
             0x00080870: 00 f0 40 77: entsp (lu6)     0x0
             0x00080874: 00 f2 02 68: ldc (lru6)      r0, 0x8002
             0x00080878: c0 77:       retsp (u6)      0x0
             0x0008087a: 00 00:       stw (2rus)      r0, r0[0x0]

<__call_exitprocs>:
             0x0008087c: 00 f0 42 77: entsp (lu6)     0x2
             0x00080880: 00 f0 00 d1: bl (lu10)       0x100 <__call_exitprocs_impl>
             0x00080884: c2 77:       retsp (u6)      0x2
             0x00080886: 00 00:       stw (2rus)      r0, r0[0x0]

<_cleanup_impl>:
             0x00080888: 00 f0 40 77: entsp (lu6)     0x0
             0x0008088c: c0 77:       retsp (u6)      0x0
             0x0008088e: 00 00:       stw (2rus)      r0, r0[0x0]

<_cleanup>:
             0x00080890: 00 f0 42 77: entsp (lu6)     0x2
             0x00080894: 00 f0 08 d4: bl (lu10)       -0x8 <_cleanup_impl>
             0x00080898: c2 77:       retsp (u6)      0x2
             0x0008089a: 00 00:       stw (2rus)      r0, r0[0x0]

<_done>:
             0x0008089c: 00 f0 40 77: entsp (lu6)     0x0
             0x000808a0: 07 68:       ldc (ru6)       r0, 0x7
             0x000808a2: 00 f0 55 d1: bl (lu10)       0x155 <_DoSyscall>
             0x000808a6: ed 07:       clre (0r)       
             0x000808a8: ec 07:       waiteu (0r)     
             0x000808aa: 00 00:       stw (2rus)      r0, r0[0x0]

<_exit>:
             0x000808ac: 00 f0 40 77: entsp (lu6)     0x0
             0x000808b0: 10 90:       add (2rus)      r1, r0, 0x0
             0x000808b2: 00 68:       ldc (ru6)       r0, 0x0
             0x000808b4: 00 f0 4c d1: bl (lu10)       0x14c <_DoSyscall>
             0x000808b8: ed 07:       clre (0r)       
             0x000808ba: ec 07:       waiteu (0r)     

<__alloc_libc_hwlock>:
.label12     0x000808bc: 00 f0 40 77: entsp (lu6)     0x0
             0x000808c0: 81 87:       getr (rus)      r0, 0x5
             0x000808c2: 00 f0 27 50: stw (lru6)      r0, dp[0x27]
             0x000808c6: c0 77:       retsp (u6)      0x0

<__lock_fair_acquire>:
             0x000808c8: 00 f0 40 77: entsp (lu6)     0x0
             0x000808cc: 00 f0 67 58: ldw (lru6)      r1, dp[0x27]
             0x000808d0: c5 b6:       in (2r)         r1, res[r1]
             0x000808d2: 10 08:       ldw (2rus)      r1, r0[0x0]
             0x000808d4: 25 90:       add (2rus)      r2, r1, 0x1
             0x000808d6: 20 00:       stw (2rus)      r2, r0[0x0]
             0x000808d8: 00 f0 a7 58: ldw (lru6)      r2, dp[0x27]
             0x000808dc: ca ae:       out (r2r)       res[r2], r2
.label69     0x000808de: 21 08:       ldw (2rus)      r2, r0[0x1]
             0x000808e0: 29 30:       eq (3r)         r2, r2, r1
             0x000808e2: 83 7c:       bf (ru6)        r2, -0x3 <.label69>
             0x000808e4: c0 77:       retsp (u6)      0x0
             0x000808e6: 00 00:       stw (2rus)      r0, r0[0x0]

<__lock_fair_release>:
             0x000808e8: 00 f0 40 77: entsp (lu6)     0x0
             0x000808ec: 11 08:       ldw (2rus)      r1, r0[0x1]
             0x000808ee: 15 90:       add (2rus)      r1, r1, 0x1
             0x000808f0: 11 00:       stw (2rus)      r1, r0[0x1]
             0x000808f2: c0 77:       retsp (u6)      0x0

<_DoSyscallErrno>:
             0x000808f4: 00 f0 42 77: entsp (lu6)     0x2
             0x000808f8: 00 f0 2a d1: bl (lu10)       0x12a <_DoSyscall>
             0x000808fc: c4 8e:       not (2r)        r1, r0
             0x000808fe: 57 aa:       shr (2rus)      r1, r1, 0x7
             0x00080900: 41 78:       bf (ru6)        r1, 0x1 <.label70>
             0x00080902: c2 77:       retsp (u6)      0x2
.label70     0x00080904: c4 96:       neg (2r)        r1, r0
             0x00080906: 41 54:       stw (ru6)       r1, sp[0x1]
             0x00080908: 00 f0 26 d1: bl (lu10)       0x126 <__errno>
             0x0008090c: 41 5c:       ldw (ru6)       r1, sp[0x1]
             0x0008090e: 10 00:       stw (2rus)      r1, r0[0x0]
             0x00080910: d0 a6:       mkmsk (rus)     r0, 0x20
             0x00080912: c2 77:       retsp (u6)      0x2

<xscope_gettime>:
             0x00080914: e0 8f:       gettime (1r)    r0
             0x00080916: 80 7f:       dualentsp (u6)  0x0
             0x00080918: ff 17:       nop (0r)        
             0x0008091a: c0 77:       retsp (u6)      0x0

<xscope_gettime_local_timer>:
             0x0008091c: e0 8f:       gettime (1r)    r0
             0x0008091e: 80 7f:       dualentsp (u6)  0x0
             0x00080920: ff 17:       nop (0r)        
             0x00080922: c0 77:       retsp (u6)      0x0

<xscope_wait>:
             0x00080924: c5 86:       getr (rus)      r1, 0x1
             0x00080926: 80 7f:       dualentsp (u6)  0x0
             0x00080928: e2 8f:       gettime (1r)    r2
             0x0008092a: ff 17:       nop (0r)        
             0x0008092c: 08 10:       add (3r)        r0, r2, r0
             0x0008092e: ff 17:       nop (0r)        
             0x00080930: d1 16:       setd (r2r)      res[r1], r0
             0x00080932: ff 17:       nop (0r)        
             0x00080934: 49 e8:       setc (ru6)      res[r1], 0x9
             0x00080936: ff 17:       nop (0r)        
             0x00080938: c1 b6:       in (2r)         r0, res[r1]
             0x0008093a: ff 17:       nop (0r)        
             0x0008093c: e1 17:       freer (1r)      res[r1]
             0x0008093e: c0 77:       retsp (u6)      0x0

<xscope_start_ref_clock>:
             0x00080940: ff 17:       nop (0r)        
             0x00080942: 80 7f:       dualentsp (u6)  0x0
             0x00080944: 00 f0 0d 58: ldw (lru6)      r0, dp[0xd]
             0x00080948: 48 68:       ldc (ru6)       r1, 0x8
             0x0008094a: ff 17:       nop (0r)        
             0x0008094c: d1 fe ec 2f: setc (l2r)      res[r0], r1
             0x00080950: 94 a7:       mkmsk (rus)     r1, 0x4
             0x00080952: ff 17:       nop (0r)        
             0x00080954: d1 fe ec 2f: setc (l2r)      res[r0], r1
             0x00080958: 00 68:       ldc (ru6)       r0, 0x0
             0x0008095a: c0 77:       retsp (u6)      0x0

<xscope_stop_ref_clock>:
             0x0008095c: ff 17:       nop (0r)        
             0x0008095e: 80 7f:       dualentsp (u6)  0x0
             0x00080960: 00 f0 4d 58: ldw (lru6)      r1, dp[0xd]
             0x00080964: d3 a6:       mkmsk (rus)     r0, 0x3
             0x00080966: ff 17:       nop (0r)        
             0x00080968: d4 fe ec 2f: setc (l2r)      res[r1], r0
             0x0008096c: 00 68:       ldc (ru6)       r0, 0x0
             0x0008096e: ff 17:       nop (0r)        
             0x00080970: d4 fe ec 2f: setc (l2r)      res[r1], r0
             0x00080974: ff 17:       nop (0r)        
             0x00080976: c0 77:       retsp (u6)      0x0

<xscope_tx_char>:
             0x00080978: ff 17:       nop (0r)        
             0x0008097a: 82 7f:       dualentsp (u6)  0x2
             0x0008097c: 00 f0 7a d0: bl (lu10)       0x7a <xscope_xlink_put_ch>
             0x00080980: ff 17:       nop (0r)        
             0x00080982: c2 77:       retsp (u6)      0x2

<xscope_tx_int>:
             0x00080984: ff 17:       nop (0r)        
             0x00080986: 84 7f:       dualentsp (u6)  0x4
             0x00080988: 40 90:       add (2rus)      r4, r0, 0x0
             0x0008098a: 02 55:       stw (ru6)       r4, sp[0x2]
             0x0008098c: 30 47:       zext (rus)      r0, 0x8
             0x0008098e: ff 17:       nop (0r)        
             0x00080990: 00 f0 75 d0: bl (lu10)       0x75 <xscope_xlink_put_ch>
             0x00080994: 40 ad:       shr (2rus)      r0, r4, 0x8
             0x00080996: ff 17:       nop (0r)        
             0x00080998: 30 47:       zext (rus)      r0, 0x8
             0x0008099a: ff 17:       nop (0r)        
             0x0008099c: 00 f0 72 d0: bl (lu10)       0x72 <xscope_xlink_put_ch>
             0x000809a0: 41 ad:       shr (2rus)      r0, r4, 0x10
             0x000809a2: ff 17:       nop (0r)        
             0x000809a4: 30 47:       zext (rus)      r0, 0x8
             0x000809a6: ff 17:       nop (0r)        
             0x000809a8: 00 f0 6f d0: bl (lu10)       0x6f <xscope_xlink_put_ch>
             0x000809ac: 42 ad:       shr (2rus)      r0, r4, 0x18
             0x000809ae: ff 17:       nop (0r)        
             0x000809b0: 00 f0 6d d0: bl (lu10)       0x6d <xscope_xlink_put_ch>
             0x000809b4: ff 17:       nop (0r)        
             0x000809b6: 02 5d:       ldw (ru6)       r4, sp[0x2]
             0x000809b8: ff 17:       nop (0r)        
             0x000809ba: c4 77:       retsp (u6)      0x4

<xscope_tx_end>:
             0x000809bc: ff 17:       nop (0r)        
             0x000809be: 82 7f:       dualentsp (u6)  0x2
             0x000809c0: 00 f0 7e d0: bl (lu10)       0x7e <xscope_xlink_put_ct>
             0x000809c4: ff 17:       nop (0r)        
             0x000809c6: c2 77:       retsp (u6)      0x2

<xscope_tx_init>:
             0x000809c8: ff 17:       nop (0r)        
             0x000809ca: 82 7f:       dualentsp (u6)  0x2
             0x000809cc: 00 f0 6f d0: bl (lu10)       0x6f <xscope_xlink_init>
             0x000809d0: 00 f0 7f d0: bl (lu10)       0x7f <xscope_xlink_start_token>
             0x000809d4: d1 a6:       mkmsk (rus)     r0, 0x1
             0x000809d6: c2 77:       retsp (u6)      0x2

<xscope_tx_deinit>:
             0x000809d8: ff 17:       nop (0r)        
             0x000809da: 82 7f:       dualentsp (u6)  0x2
             0x000809dc: 00 f0 71 d0: bl (lu10)       0x71 <xscope_xlink_deinit>
             0x000809e0: ff 17:       nop (0r)        
             0x000809e2: c2 77:       retsp (u6)      0x2

<__register_exitproc>:
             0x000809e4: 00 f0 48 77: entsp (lu6)     0x8
             0x000809e8: 05 f9 ec f7: std (l2rus)     r5, r4, sp[0x1]
             0x000809ec: 2e f9 ec f7: std (l2rus)     r7, r6, sp[0x2]
             0x000809f0: 06 56:       stw (ru6)       r8, sp[0x6]
             0x000809f2: 5c 90:       add (2rus)      r5, r3, 0x0
             0x000809f4: 78 90:       add (2rus)      r7, r2, 0x0
             0x000809f6: 44 90:       add (2rus)      r4, r1, 0x0
             0x000809f8: 60 90:       add (2rus)      r6, r0, 0x0
             0x000809fa: 01 f0 47 7f: ldaw (lu6)      r11, cp[0x47]
             0x000809fe: 9c 91:       add (2rus)      r1, r11, 0x0
             0x00080a00: 01 f0 49 7f: ldaw (lu6)      r11, cp[0x49]
             0x00080a04: c0 90:       add (2rus)      r0, r4, 0x0
             0x00080a06: ac 91:       add (2rus)      r2, r11, 0x0
             0x00080a08: 00 f0 f0 d0: bl (lu10)       0xf0 <__checkFptrGroup>
             0x00080a0c: e0 4f:       ecallf (1r)     r0
             0x00080a0e: 02 f0 0c 60: ldaw (lru6)     r0, dp[0x8c]
             0x00080a12: 00 f0 a7 d4: bl (lu10)       -0xa7 <__lock_fair_acquire>
             0x00080a16: 00 f0 0e 58: ldw (lru6)      r0, dp[0xe]
             0x00080a1a: 11 08:       ldw (2rus)      r1, r0[0x1]
             0x00080a1c: 99 a7:       mkmsk (rus)     r2, 0x5
             0x00080a1e: 29 c0:       lss (3r)        r2, r2, r1
             0x00080a20: 82 78:       bf (ru6)        r2, 0x2 <.label71>
             0x00080a22: d0 a6:       mkmsk (rus)     r0, 0x20
             0x00080a24: 29 73:       bu (u6)         0x29 <.label72>
.label71     0x00080a26: 9e 79:       bf (ru6)        r6, 0x1e <.label73>
             0x00080a28: 02 f0 88 68: ldc (lru6)      r2, 0x88
             0x00080a2c: 32 10:       add (3r)        r3, r0, r2
             0x00080a2e: 7d f8 ec 07: stw (l3r)       r7, r3[r1]
             0x00080a32: 11 08:       ldw (2rus)      r1, r0[0x1]
             0x00080a34: d9 a6:       mkmsk (rus)     r2, 0x1
             0x00080a36: b9 20:       shl (3r)        r11, r2, r1
             0x00080a38: 06 f0 c8 69: ldc (lru6)      r7, 0x188
             0x00080a3c: b3 12:       add (3r)        r7, r0, r7
             0x00080a3e: 4c 09:       ldw (2rus)      r8, r7[0x0]
             0x00080a40: b3 46:       or (3r)         r11, r8, r11
             0x00080a42: 7c 01:       stw (2rus)      r11, r7[0x0]
             0x00080a44: 1d f8 ec 1f: ldaw (l3r)      r1, r3[r1]
             0x00080a48: 02 f0 c0 68: ldc (lru6)      r3, 0x80
             0x00080a4c: 17 10:       add (3r)        r1, r1, r3
             0x00080a4e: 54 00:       stw (2rus)      r5, r1[0x0]
             0x00080a50: 11 08:       ldw (2rus)      r1, r0[0x1]
             0x00080a52: fa b0:       eq (2rus)       r3, r6, 0x2
             0x00080a54: c7 78:       bf (ru6)        r3, 0x7 <.label73>
             0x00080a56: 29 20:       shl (3r)        r2, r2, r1
             0x00080a58: 06 f0 cc 68: ldc (lru6)      r3, 0x18c
             0x00080a5c: 33 10:       add (3r)        r3, r0, r3
             0x00080a5e: bc 08:       ldw (2rus)      r11, r3[0x0]
             0x00080a60: ae 41:       or (3r)         r2, r11, r2
             0x00080a62: 2c 00:       stw (2rus)      r2, r3[0x0]
.label73     0x00080a64: 25 90:       add (2rus)      r2, r1, 0x1
             0x00080a66: 21 00:       stw (2rus)      r2, r0[0x1]
             0x00080a68: 01 f8 ec 1f: ldaw (l3r)      r0, r0[r1]
             0x00080a6c: 42 00:       stw (2rus)      r4, r0[0x2]
             0x00080a6e: 02 f0 0c 60: ldaw (lru6)     r0, dp[0x8c]
             0x00080a72: 00 f0 c7 d4: bl (lu10)       -0xc7 <__lock_fair_release>
             0x00080a76: 00 68:       ldc (ru6)       r0, 0x0
.label72     0x00080a78: 06 5e:       ldw (ru6)       r8, sp[0x6]
             0x00080a7a: 2e f9 ec ef: ldd (l2rus)     r7, r6, sp[0x2]
             0x00080a7e: 05 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x1]
             0x00080a82: c8 77:       retsp (u6)      0x8

<__call_exitprocs_impl>:
             0x00080a84: 00 f0 4e 77: entsp (lu6)     0xe
             0x00080a88: 07 f9 ec f7: std (l2rus)     r5, r4, sp[0x3]
             0x00080a8c: 6c fb ec f7: std (l2rus)     r7, r6, sp[0x4]
             0x00080a90: 45 fc ec f7: std (l2rus)     r9, r8, sp[0x5]
             0x00080a94: 8c 56:       stw (ru6)       r10, sp[0xc]
             0x00080a96: 44 90:       add (2rus)      r4, r1, 0x0
             0x00080a98: 01 54:       stw (ru6)       r0, sp[0x1]
             0x00080a9a: 00 f0 0e 58: ldw (lru6)      r0, dp[0xe]
             0x00080a9e: 01 f0 0f 78: bf (lru6)       r0, 0x4f <.label74>
             0x00080aa2: 80 6a:       ldc (ru6)       r10, 0x0
.label84     0x00080aa4: 80 90:       add (2rus)      r8, r0, 0x0
             0x00080aa6: 11 0a:       ldw (2rus)      r9, r8[0x1]
             0x00080aa8: d1 a6:       mkmsk (rus)     r0, 0x1
             0x00080aaa: 84 c1:       lss (3r)        r0, r9, r0
             0x00080aac: 01 f0 08 70: bt (lru6)       r0, 0x48 <.label74>
             0x00080ab0: 06 f0 08 68: ldc (lru6)      r0, 0x188
             0x00080ab4: 80 11:       add (3r)        r0, r8, r0
             0x00080ab6: 04 54:       stw (ru6)       r0, sp[0x4]
             0x00080ab8: 06 f0 0c 68: ldc (lru6)      r0, 0x18c
             0x00080abc: 80 11:       add (3r)        r0, r8, r0
             0x00080abe: 03 54:       stw (ru6)       r0, sp[0x3]
             0x00080ac0: 01 fe ec 1f: ldaw (l3r)      r0, r8[r9]
             0x00080ac4: 02 f0 44 68: ldc (lru6)      r1, 0x84
             0x00080ac8: 11 10:       add (3r)        r1, r0, r1
             0x00080aca: 42 54:       stw (ru6)       r1, sp[0x2]
             0x00080acc: 04 f0 44 68: ldc (lru6)      r1, 0x104
             0x00080ad0: 11 10:       add (3r)        r1, r0, r1
             0x00080ad2: 45 54:       stw (ru6)       r1, sp[0x5]
             0x00080ad4: a0 92:       add (2rus)      r6, r0, 0x4
             0x00080ad6: f8 91:       add (2rus)      r7, r10, 0x0
.label83     0x00080ad8: 04 79:       bf (ru6)        r4, 0x4 <.label75>
             0x00080ada: 05 5c:       ldw (ru6)       r0, sp[0x5]
             0x00080adc: 43 4a:       ldw (3r)        r0, r0[r7]
             0x00080ade: 40 32:       eq (3r)         r0, r0, r4
             0x00080ae0: 28 78:       bf (ru6)        r0, 0x28 <.label76>
.label75     0x00080ae2: f7 13:       add (3r)        r3, r9, r7
             0x00080ae4: 1d 98:       sub (2rus)      r1, r3, 0x1
             0x00080ae6: d1 a6:       mkmsk (rus)     r0, 0x1
             0x00080ae8: 01 20:       shl (3r)        r0, r0, r1
             0x00080aea: 2b 4b:       ldw (3r)        r2, r6[r7]
             0x00080aec: 31 0a:       ldw (2rus)      r11, r8[0x1]
             0x00080aee: bf 34:       eq (3r)         r3, r3, r11
             0x00080af0: c2 78:       bf (ru6)        r3, 0x2 <.label77>
             0x00080af2: 91 01:       stw (2rus)      r1, r8[0x1]
             0x00080af4: 02 73:       bu (u6)         0x2 <.label78>
.label77     0x00080af6: ab fb ec 07: stw (l3r)       r10, r6[r7]
.label78     0x00080afa: 9b 78:       bf (ru6)        r2, 0x1b <.label76>
             0x00080afc: d8 91:       add (2rus)      r5, r10, 0x0
             0x00080afe: 21 0a:       ldw (2rus)      r10, r8[0x1]
             0x00080b00: 44 5c:       ldw (ru6)       r1, sp[0x4]
             0x00080b02: 14 08:       ldw (2rus)      r1, r1[0x0]
             0x00080b04: 14 38:       and (3r)        r1, r1, r0
             0x00080b06: 49 78:       bf (ru6)        r1, 0x9 <.label79>
             0x00080b08: 43 5c:       ldw (ru6)       r1, sp[0x3]
             0x00080b0a: 14 08:       ldw (2rus)      r1, r1[0x0]
             0x00080b0c: 04 38:       and (3r)        r0, r1, r0
             0x00080b0e: 42 5c:       ldw (ru6)       r1, sp[0x2]
             0x00080b10: 57 4a:       ldw (3r)        r1, r1[r7]
             0x00080b12: 05 78:       bf (ru6)        r0, 0x5 <.label80>
             0x00080b14: 04 90:       add (2rus)      r0, r1, 0x0
             0x00080b16: e2 27:       bla (1r)        r2
             0x00080b18: 04 73:       bu (u6)         0x4 <.label81>
.label79     0x00080b1a: e2 27:       bla (1r)        r2
             0x00080b1c: 02 73:       bu (u6)         0x2 <.label81>
.label80     0x00080b1e: 01 5c:       ldw (ru6)       r0, sp[0x1]
             0x00080b20: e2 27:       bla (1r)        r2
.label81     0x00080b22: 91 09:       ldw (2rus)      r1, r8[0x1]
             0x00080b24: 00 f0 0e 58: ldw (lru6)      r0, dp[0xe]
             0x00080b28: 99 31:       eq (3r)         r1, r10, r1
             0x00080b2a: 64 91:       add (2rus)      r10, r5, 0x0
             0x00080b2c: 47 78:       bf (ru6)        r1, 0x7 <.label82>
             0x00080b2e: 90 34:       eq (3r)         r1, r0, r8
             0x00080b30: 45 78:       bf (ru6)        r1, 0x5 <.label82>
.label76     0x00080b32: 3d 99:       sub (2rus)      r7, r7, 0x1
             0x00080b34: c7 13:       add (3r)        r0, r9, r7
             0x00080b36: 88 c1:       lss (3r)        r0, r10, r0
             0x00080b38: 31 74:       bt (ru6)        r0, -0x31 <.label83>
             0x00080b3a: 02 73:       bu (u6)         0x2 <.label74>
.label82     0x00080b3c: 01 f0 0e 74: bt (lru6)       r0, -0x4e <.label84>
.label74     0x00080b40: 8c 5e:       ldw (ru6)       r10, sp[0xc]
             0x00080b42: 45 fc ec ef: ldd (l2rus)     r9, r8, sp[0x5]
             0x00080b46: 6c fb ec ef: ldd (l2rus)     r7, r6, sp[0x4]
             0x00080b4a: 07 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x3]
             0x00080b4e: ce 77:       retsp (u6)      0xe

<_DoSyscall>:
             0x00080b50: 00 f0 40 77: entsp (lu6)     0x0
             0x00080b54: d0 a6:       mkmsk (rus)     r0, 0x20
             0x00080b56: c0 77:       retsp (u6)      0x0

<__errno>:
             0x00080b58: 00 f0 40 77: entsp (lu6)     0x0
             0x00080b5c: ee 17:       get (0r)        r11, id
             0x00080b5e: 02 f0 0e 60: ldaw (lru6)     r0, dp[0x8e]
             0x00080b62: 83 fc ec 1f: ldaw (l3r)      r0, r0[r11]
             0x00080b66: c0 77:       retsp (u6)      0x0

<xscope_xlink_put_ch>:
             0x00080b68: 00 f0 40 77: entsp (lu6)     0x0
             0x00080b6c: 00 f0 4a 58: ldw (lru6)      r1, dp[0xa]
             0x00080b70: 4b 78:       bf (ru6)        r1, 0xb <xscope_xlink_put_ch_ret>
             0x00080b72: 00 f0 89 58: ldw (lru6)      r2, dp[0x9]
             0x00080b76: 87 70:       bt (ru6)        r2, 0x7 <xscope_xlink_outt>
             0x00080b78: 00 f0 4b 58: ldw (lru6)      r1, dp[0xb]
             0x00080b7c: 45 78:       bf (ru6)        r1, 0x5 <xscope_xlink_put_ch_ret>
             0x00080b7e: ca 86:       getr (rus)      r2, 0x2
             0x00080b80: d6 16:       setd (r2r)      res[r2], r1
             0x00080b82: 00 f0 89 50: stw (lru6)      r2, dp[0x9]

<xscope_xlink_outt>:
             0x00080b86: d2 0e:       outt (r2r)      res[r2], r0

<xscope_xlink_put_ch_ret>:
             0x00080b88: c0 77:       retsp (u6)      0x0
             0x00080b8a: 00 00:       stw (2rus)      r0, r0[0x0]

<xscope_xlink_init>:
             0x00080b8c: 00 f0 40 77: entsp (lu6)     0x0
             0x00080b90: 00 f0 4b 58: ldw (lru6)      r1, dp[0xb]
             0x00080b94: 00 f0 48 7c: bf (lru6)       r1, -0x8 <xscope_xlink_put_ch_ret>
             0x00080b98: ca 86:       getr (rus)      r2, 0x2
             0x00080b9a: d6 16:       setd (r2r)      res[r2], r1
             0x00080b9c: 00 f0 89 50: stw (lru6)      r2, dp[0x9]
             0x00080ba0: c0 77:       retsp (u6)      0x0
             0x00080ba2: 00 00:       stw (2rus)      r0, r0[0x0]

<xscope_xlink_deinit>:
             0x00080ba4: 00 f0 40 77: entsp (lu6)     0x0
             0x00080ba8: 00 f0 49 58: ldw (lru6)      r1, dp[0x9]
             0x00080bac: 00 f0 54 7c: bf (lru6)       r1, -0x14 <xscope_xlink_put_ch_ret>
             0x00080bb0: e1 17:       freer (1r)      res[r1]
             0x00080bb2: 80 68:       ldc (ru6)       r2, 0x0
             0x00080bb4: 00 f0 89 50: stw (lru6)      r2, dp[0x9]
             0x00080bb8: c0 77:       retsp (u6)      0x0
             0x00080bba: 00 00:       stw (2rus)      r0, r0[0x0]

<xscope_xlink_put_ct>:
             0x00080bbc: 00 f0 40 77: entsp (lu6)     0x0
             0x00080bc0: 00 f0 4a 58: ldw (lru6)      r1, dp[0xa]
             0x00080bc4: 44 78:       bf (ru6)        r1, 0x4 <xscope_xlink_put_ct_ret>
             0x00080bc6: 00 f0 89 58: ldw (lru6)      r2, dp[0x9]
             0x00080bca: 81 78:       bf (ru6)        r2, 0x1 <xscope_xlink_put_ct_ret>
             0x00080bcc: d9 4e:       outct (rus)     res[r2], 0x1

<xscope_xlink_put_ct_ret>:
             0x00080bce: c0 77:       retsp (u6)      0x0

<xscope_xlink_start_token>:
             0x00080bd0: 00 f0 40 77: entsp (lu6)     0x0
             0x00080bd4: 00 f0 4a 58: ldw (lru6)      r1, dp[0xa]
             0x00080bd8: 48 78:       bf (ru6)        r1, 0x8 <xscope_xlink_start_token_ret>
             0x00080bda: 00 f0 89 58: ldw (lru6)      r2, dp[0x9]
             0x00080bde: 85 78:       bf (ru6)        r2, 0x5 <xscope_xlink_start_token_ret>
             0x00080be0: d9 4e:       outct (rus)     res[r2], 0x1
             0x00080be2: 01 f0 d5 6a: ldc (lru6)      r11, 0x55
             0x00080be6: 2b 4f:       outct (2r)      res[r2], r11
             0x00080be8: d9 4e:       outct (rus)     res[r2], 0x1

<xscope_xlink_start_token_ret>:
             0x00080bea: c0 77:       retsp (u6)      0x0

<__checkFptrGroup>:
             0x00080bec: 00 f0 40 77: entsp (lu6)     0x0
             0x00080bf0: 30 90:       add (2rus)      r3, r0, 0x0
.label86     0x00080bf2: 06 c8:       lsu (3r)        r0, r1, r2
             0x00080bf4: 05 78:       bf (ru6)        r0, 0x5 <.label85>
             0x00080bf6: 04 08:       ldw (2rus)      r0, r1[0x0]
             0x00080bf8: 03 30:       eq (3r)         r0, r0, r3
             0x00080bfa: 02 70:       bt (ru6)        r0, 0x2 <.label85>
             0x00080bfc: 54 92:       add (2rus)      r1, r1, 0x4
             0x00080bfe: 07 77:       bu (u6)         -0x7 <.label86>
.label85     0x00080c00: c0 77:       retsp (u6)      0x0

Disassembly of section .cp.rodata (size: 281)

<_cp>:
<.cp.rodata>:
<tiles_to_wake>:
.label11     0x00080c08: 02 1e 03 80: 

<chanends_to_setup>:
             0x00080c0c: 00 00 03 80: 
             0x00080c10: ff 00 00 00: 

<.cp.rodata>:
             0x00080c14: 30 19 f0 ff: 

<.cp.rodata>:
             0x00080c18: f0 19 f0 ff: 

<.cp.rodata>:
             0x00080c1c: 00 00 00 00: 

<_ctype_>:
             0x00080c20: 00 20 20 20: 
             0x00080c24: 20 20 20 20: 
             0x00080c28: 20 20 28 28: 
             0x00080c2c: 28 28 28 20: 
             0x00080c30: 20 20 20 20: 
             0x00080c34: 20 20 20 20: 
             0x00080c38: 20 20 20 20: 
             0x00080c3c: 20 20 20 20: 
             0x00080c40: 20 88 10 10: 
             0x00080c44: 10 10 10 10: 
             0x00080c48: 10 10 10 10: 
             0x00080c4c: 10 10 10 10: 
             0x00080c50: 10 04 04 04: 
             0x00080c54: 04 04 04 04: 
             0x00080c58: 04 04 04 10: 
             0x00080c5c: 10 10 10 10: 
             0x00080c60: 10 10 41 41: 
             0x00080c64: 41 41 41 41: 
             0x00080c68: 01 01 01 01: 
             0x00080c6c: 01 01 01 01: 
             0x00080c70: 01 01 01 01: 
             0x00080c74: 01 01 01 01: 
             0x00080c78: 01 01 01 01: 
             0x00080c7c: 10 10 10 10: 
             0x00080c80: 10 10 42 42: 
             0x00080c84: 42 42 42 42: 
             0x00080c88: 02 02 02 02: 
             0x00080c8c: 02 02 02 02: 
             0x00080c90: 02 02 02 02: 
             0x00080c94: 02 02 02 02: 
             0x00080c98: 02 02 02 02: 
             0x00080c9c: 10 10 10 10: 
             0x00080ca0: 20 00 00 00: 
             0x00080ca4: 00 00 00 00: 
             0x00080ca8: 00 00 00 00: 
             0x00080cac: 00 00 00 00: 
             0x00080cb0: 00 00 00 00: 
             0x00080cb4: 00 00 00 00: 
             0x00080cb8: 00 00 00 00: 
             0x00080cbc: 00 00 00 00: 
             0x00080cc0: 00 00 00 00: 
             0x00080cc4: 00 00 00 00: 
             0x00080cc8: 00 00 00 00: 
             0x00080ccc: 00 00 00 00: 
             0x00080cd0: 00 00 00 00: 
             0x00080cd4: 00 00 00 00: 
             0x00080cd8: 00 00 00 00: 
             0x00080cdc: 00 00 00 00: 
             0x00080ce0: 00 00 00 00: 
             0x00080ce4: 00 00 00 00: 
             0x00080ce8: 00 00 00 00: 
             0x00080cec: 00 00 00 00: 
             0x00080cf0: 00 00 00 00: 
             0x00080cf4: 00 00 00 00: 
             0x00080cf8: 00 00 00 00: 
             0x00080cfc: 00 00 00 00: 
             0x00080d00: 00 00 00 00: 
             0x00080d04: 00 00 00 00: 
             0x00080d08: 00 00 00 00: 
             0x00080d0c: 00 00 00 00: 
             0x00080d10: 00 00 00 00: 
             0x00080d14: 00 00 00 00: 
             0x00080d18: 00 00 00 00: 
             0x00080d1c: 00 00 00 00: 
             0x00080d20: 00:          

Disassembly of section .cp.rodata.4 (size: 8)

<_fptrgroup.stdlib_atexit.group.begin>:
             0x00080d24: 88 01 08 00: 
             0x00080d28: 78 04 08 00: 

Disassembly of section .cp.const4 (size: 52)

<initial_dp>:
             0x00080d2c: b0 0d 08 00: 

<dp_bss_large_start>:
             0x00080d30: 08 10 08 00: 

<extmem_bss_start>:
             0x00080d34: 00 00 00 10: 

<.cp.const4>:
<ctor_list_ptr>:
             0x00080d38: a4 0d 08 00: 

<.cp.const4>:
<dtor_list_ptr>:
             0x00080d3c: b0 0d 08 00: 

<.cp.const4>:
<initial_sp>:
             0x00080d40: 78 ff 0f 00: 

<dp_bss_size>:
             0x00080d44: 10 02 00 00: 

<dp_bss_large_size>:
             0x00080d48: 00 00 00 00: 

<extmem_bss_size>:
             0x00080d4c: 00 00 00 00: 

<dtors_size>:
             0x00080d50: 00 00 00 00: 

<ctors_size>:
             0x00080d54: 03 00 00 00: 
             0x00080d58: 02 00 02 80: 

<.cp.const4>:
             0x00080d5c: 02 1e 03 80: 

Disassembly of section .cp.rodata.cst4 (size: 24)

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
             0x00080d60: 00 00 00 01: 
             0x00080d64: 00 02 08 00: 
             0x00080d68: 44 33 22 11: 
             0x00080d6c: 90 ff ff ff: 
             0x00080d70: d0 ff ff ff: 
             0x00080d74: ff ff ff 7f: 

Disassembly of section .cp.rodata.string (size: 41)

<.cp.rodata.string>:
<.cp.rodata.string>:
<itoa.digits>:
<.cp.rodata.string>:
<.cp.rodata.string>:
             0x00080d78: 30 31 32 33: 
             0x00080d7c: 34 35 36 37: 
             0x00080d80: 38 39 41 42: 
             0x00080d84: 43 44 45 46: 
             0x00080d88: 00 00 00 00: 
             0x00080d8c: 50 38 43 20: 
             0x00080d90: 78 25 78 0a: 
             0x00080d94: 00 00 00 00: 
             0x00080d98: 50 38 44 20: 
             0x00080d9c: 78 25 78 0a: 
             0x00080da0: 00:          

Disassembly of section .ctors (size: 12)

<_CTOR_LIST_>:
<.ctors>:
             0x00080da4: f0 01 08 00: 

<.ctors>:
             0x00080da8: b8 04 08 00: 

<.ctors>:
             0x00080dac: 54 06 08 00: 

Disassembly of section .dp.data (size: 48)

<_dp>:
<__timers>:
<.dp.data>:
<.dp.data>:
             0x00080db0: 01 00 00 00: 
             0x00080db4: 00 00 00 00: 
             0x00080db8: 00 00 00 00: 
             0x00080dbc: 00 00 00 00: 
             0x00080dc0: 00 00 00 00: 
             0x00080dc4: 00 00 00 00: 
             0x00080dc8: 00 00 00 00: 
             0x00080dcc: 00 00 00 00: 

<XSCOPE_REDIRECT_IO>:
<.dp.data>:
             0x00080dd0: 00 00 00 00: 

<__sodChan>:
<.dp.data>:
             0x00080dd4: 00 00 00 00: 

<__sodFlag>:
<.dp.data>:
             0x00080dd8: 00 00 00 00: 

<__sodEnd>:
             0x00080ddc: 02 01 00 80: 

Disassembly of section .dp.data.4 (size: 12)

<__ctype_ptr__>:
<.dp.data.4>:
<.dp.data.4>:
             0x00080de0: 20 0c 08 00: 

<.dp.data.4>:
<xscope_ref_clk>:
<.dp.data.4>:
             0x00080de4: 06 00 00 00: 

<.dp.data.4>:
<_atexit_fns>:
             0x00080de8: 50 0e 08 00: 

Disassembly of section .dp.rodata (size: 4)

<tile>:
             0x00080dec: 00 00 01 00: 

Disassembly of section .dp.data.extmem.setps (size: 4)

<.dp.data.extmem.setps>:
<__extmem_setps_val>:
             0x00080df0: 00 18 00 00: 

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


