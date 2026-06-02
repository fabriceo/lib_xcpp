/Users/fabrice/github/NAX1/lib_xcpp/tests/xcpp_test/bin/EVK/xcpp_test_EVK.xe: file format: xcore-xe

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
             0x00080022: 01 f0 9b 6f: ldw (lru6)      sp, cp[0x5b]
             0x00080026: f0 17:       mjoin (1r)      res[r0]
             0x00080028: e0 17:       freer (1r)      res[r0]
             0x0008002a: 08 f0 0b 68: ldc (lru6)      r0, 0x20b
             0x0008002e: 00 f0 56 58: ldw (lru6)      r1, dp[0x16]
             0x00080032: c4 fe ec 1f: set (lr2r)      ps[r0], r1
             0x00080036: 00 f0 18 60: ldaw (lru6)     r0, dp[0x18]
             0x0008003a: 40 68:       ldc (ru6)       r1, 0x0
             0x0008003c: 01 f0 9c 6c: ldw (lru6)      r2, cp[0x5c]
             0x00080040: 01 f0 56 d0: bl (lu10)       0x456 <.label2>
             0x00080044: 01 f0 17 6c: ldw (lru6)      r0, cp[0x57]
             0x00080048: 40 68:       ldc (ru6)       r1, 0x0
             0x0008004a: 01 f0 9d 6c: ldw (lru6)      r2, cp[0x5d]
             0x0008004e: 01 f0 4f d0: bl (lu10)       0x44f <.label2>
             0x00080052: 01 f0 18 6c: ldw (lru6)      r0, cp[0x58]
             0x00080056: 40 68:       ldc (ru6)       r1, 0x0
             0x00080058: 01 f0 9e 6c: ldw (lru6)      r2, cp[0x5e]
             0x0008005c: 01 f0 48 d0: bl (lu10)       0x448 <.label2>
             0x00080060: 01 f0 4a d0: bl (lu10)       0x44a <.label3>
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
             0x0008008c: 00 f0 a6 d1: bl (lu10)       0x1a6 <.label6>
             0x00080090: b0 f8 ec 97: ashr (l2rus)    r11, r0, 0x20
             0x00080094: c2 7a:       bf (ru6)        r11, 0x2 <.label5>
             0x00080096: 01 90:       add (2rus)      r0, r0, 0x1
             0x00080098: f0 4f:       ecallt (1r)     r0
.label5      0x0008009a: 41 64:       ldaw (ru6)      r1, sp[0x1]
             0x0008009c: 00 f0 c8 d3: bl (lu10)       0x3c8 <.label7>
             0x000800a0: 02 70:       bt (ru6)        r0, 0x2 <.label8>
             0x000800a2: 01 f0 0b d0: bl (lu10)       0x40b <.label9>
.label8      0x000800a6: 01 f0 15 d0: bl (lu10)       0x415 <.label10>

<_InitChildThread>:
             0x000800aa: 01 d0:       bl (u10)        0x1 <_SetupThread>
             0x000800ac: ee 07:       ssync (0r)      

<_SetupThread>:
             0x000800ae: 18 dc:       ldap (u10)      r11, -0x18 <_TrapHandler>
             0x000800b0: ff 07:       set (0r)        kep, r11
             0x000800b2: 02 f0 45 d8: ldap (lu10)     r11, 0x845 <.label11>
             0x000800b6: fb 37:       set (1r)        cp, r11
             0x000800b8: 01 f0 56 6f: ldw (lru6)      dp, cp[0x56]
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
             0x000800ce: 01 f0 61 d2: bl (lu10)       0x661 <.label12>
             0x000800d2: 01 f0 20 6d: ldw (lru6)      r4, cp[0x60]
             0x000800d6: 06 79:       bf (ru6)        r4, 0x6 <do_ctors_end> <.init>
             0x000800d8: 01 f0 59 6d: ldw (lru6)      r5, cp[0x59]

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
.label78     0x000800e6: 42 77:       entsp (u6)      0x2

<.fini>:
             0x000800e8: 84 77:       extsp (u6)      0x4
             0x000800ea: 01 55:       stw (ru6)       r4, sp[0x1]
             0x000800ec: 42 55:       stw (ru6)       r5, sp[0x2]
             0x000800ee: 83 55:       stw (ru6)       r6, sp[0x3]
             0x000800f0: 01 f0 9f 6d: ldw (lru6)      r6, cp[0x5f]
             0x000800f4: 88 79:       bf (ru6)        r6, 0x8 <do_dtors_end>
             0x000800f6: 00 69:       ldc (ru6)       r4, 0x0
             0x000800f8: 01 f0 5a 6d: ldw (lru6)      r5, cp[0x5a]

<do_dtors_loop>:
             0x000800fc: 04 4b:       ldw (3r)        r0, r5[r4]
             0x000800fe: e0 27:       bla (1r)        r0
             0x00080100: 01 91:       add (2rus)      r4, r4, 0x1
             0x00080102: b2 cb:       lsu (3r)        r11, r4, r6
             0x00080104: c5 76:       bt (ru6)        r11, -0x5 <do_dtors_loop>

<do_dtors_end>:
             0x00080106: 01 f0 01 d0: bl (lu10)       0x401 <.label13>
             0x0008010a: 01 5d:       ldw (ru6)       r4, sp[0x1]
             0x0008010c: 42 5d:       ldw (ru6)       r5, sp[0x2]
             0x0008010e: 83 5d:       ldw (ru6)       r6, sp[0x3]
             0x00080110: 84 67:       ldaw (ru6)      sp, sp[0x4]

<.fini>:
             0x00080112: c2 77:       retsp (u6)      0x2

Disassembly of section .text (size: 4082)

<_write>:
             0x00080120: ff 17:       nop (0r)        
             0x00080122: 86 7f:       dualentsp (u6)  0x6
             0x00080124: 05 f9 ec f7: std (l2rus)     r5, r4, sp[0x1]
             0x00080128: 48 90:       add (2rus)      r4, r2, 0x0
             0x0008012a: 84 55:       stw (ru6)       r6, sp[0x4]
             0x0008012c: 54 90:       add (2rus)      r5, r1, 0x0
             0x0008012e: 60 90:       add (2rus)      r6, r0, 0x0
             0x00080130: 00 f0 0b d2: bl (lu10)       0x20b <xscope_get_io_config>
             0x00080134: 00 f0 04 78: bf (lru6)       r0, 0x4 <.label14>
             0x00080138: 12 b0:       eq (2rus)       r1, r0, 0x2
             0x0008013a: ff 17:       nop (0r)        
             0x0008013c: 00 f0 47 78: bf (lru6)       r1, 0x7 <.label15>
             0x00080140: 03 f0 13 68: ldc (lru6)      r0, 0xd3
             0x00080144: 00 f0 08 73: bu (lu6)        0x8 <.label16>
.label14     0x00080148: c8 90:       add (2rus)      r0, r6, 0x0
             0x0008014a: d4 90:       add (2rus)      r1, r5, 0x0
             0x0008014c: e0 90:       add (2rus)      r2, r4, 0x0
             0x0008014e: ff 17:       nop (0r)        
             0x00080150: 00 f0 06 d2: bl (lu10)       0x206 <xscope_syscall_write>
             0x00080154: 40 90:       add (2rus)      r4, r0, 0x0
             0x00080156: ff 17:       nop (0r)        
             0x00080158: 00 f0 08 73: bu (lu6)        0x8 <.label17>
.label15     0x0008015c: 01 b0:       eq (2rus)       r0, r0, 0x1
             0x0008015e: ff 17:       nop (0r)        
             0x00080160: 00 f0 05 78: bf (lru6)       r0, 0x5 <.label18>
             0x00080164: 03 f0 12 68: ldc (lru6)      r0, 0xd2
.label16     0x00080168: d8 90:       add (2rus)      r1, r6, 0x0
             0x0008016a: e0 90:       add (2rus)      r2, r4, 0x0
             0x0008016c: f4 90:       add (2rus)      r3, r5, 0x0
             0x0008016e: ff 17:       nop (0r)        
             0x00080170: 00 f0 3c d2: bl (lu10)       0x23c <xscope_syscall_data_write>
             0x00080174: 00 f0 01 73: bu (lu6)        0x1 <.label17>
.label18     0x00080178: 10 a7:       mkmsk (rus)     r4, 0x20
             0x0008017a: ff 17:       nop (0r)        
.label17     0x0008017c: c0 90:       add (2rus)      r0, r4, 0x0
             0x0008017e: 84 5d:       ldw (ru6)       r6, sp[0x4]
             0x00080180: 05 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x1]
             0x00080184: ff 17:       nop (0r)        
             0x00080186: c6 77:       retsp (u6)      0x6

<__main__main_tile_0>:
             0x00080188: 00 f0 42 77: entsp (lu6)     0x2
             0x0008018c: 00 f0 4c 60: ldaw (lru6)     r1, dp[0xc]
             0x00080190: 00 68:       ldc (ru6)       r0, 0x0
             0x00080192: 01 f0 bb d0: bl (lu10)       0x4bb <__start_other_cores>
             0x00080196: c2 77:       retsp (u6)      0x2

<__main__main_tile_0_task_tile0_task1_0>:
             0x00080198: 00 f0 42 77: entsp (lu6)     0x2
             0x0008019c: 00 f0 32 d1: bl (lu10)       0x132 <tile0_task1>
             0x000801a0: c2 77:       retsp (u6)      0x2
             0x000801a2: 00 00:       stw (2rus)      r0, r0[0x0]

<__main__main_tile_0_task_tile0_task2_1>:
             0x000801a4: 00 f0 42 77: entsp (lu6)     0x2
             0x000801a8: 00 f0 30 d1: bl (lu10)       0x130 <tile0_task2>
             0x000801ac: c2 77:       retsp (u6)      0x2
             0x000801ae: 00 00:       stw (2rus)      r0, r0[0x0]

<_ZN6XCPort7setModeENS_10PortMode_tEj>:
             0x000801b0: 00 f0 40 77: entsp (lu6)     0x0
             0x000801b4: df a6:       mkmsk (rus)     r3, 0x3
             0x000801b6: 3d c8:       lsu (3r)        r3, r3, r1
             0x000801b8: d0 70:       bt (ru6)        r3, 0x10 <.label19>
             0x000801ba: e1 2f:       bru (1r)        r1
             0x000801bc: 09 73:       bu (u6)         0x9 <.label20>
             0x000801be: 0d 73:       bu (u6)         0xd <.label19>
             0x000801c0: 0c 73:       bu (u6)         0xc <.label19>
             0x000801c2: 14 73:       bu (u6)         0x14 <.label21>
             0x000801c4: 1f 73:       bu (u6)         0x1f <.label22>
             0x000801c6: 2a 73:       bu (u6)         0x2a <.label23>
             0x000801c8: 36 73:       bu (u6)         0x36 <.label24>
             0x000801ca: 00 73:       bu (u6)         0x0 <.label25>
.label25     0x000801cc: 01 f0 00 73: bu (lu6)        0x40 <.label26>
.label20     0x000801d0: 10 08:       ldw (2rus)      r1, r0[0x0]
             0x000801d2: 80 68:       ldc (ru6)       r2, 0x0
             0x000801d4: d6 fe ec 2f: setc (l2r)      res[r1], r2
             0x000801d8: 08 73:       bu (u6)         0x8 <.label27>
.label19     0x000801da: 10 08:       ldw (2rus)      r1, r0[0x0]
             0x000801dc: c8 68:       ldc (ru6)       r3, 0x8
             0x000801de: d7 fe ec 2f: setc (l2r)      res[r1], r3
             0x000801e2: c6 68:       ldc (ru6)       r3, 0x6
             0x000801e4: dd fe ec 0f: setclk (lr2r)   res[r1], r3
             0x000801e8: d9 16:       setd (r2r)      res[r1], r2
.label27     0x000801ea: c0 77:       retsp (u6)      0x0
.label21     0x000801ec: 10 08:       ldw (2rus)      r1, r0[0x0]
             0x000801ee: c8 68:       ldc (ru6)       r3, 0x8
             0x000801f0: d7 fe ec 2f: setc (l2r)      res[r1], r3
             0x000801f4: c6 68:       ldc (ru6)       r3, 0x6
             0x000801f6: dd fe ec 0f: setclk (lr2r)   res[r1], r3
             0x000801fa: d9 16:       setd (r2r)      res[r1], r2
             0x000801fc: 93 68:       ldc (ru6)       r2, 0x13
             0x000801fe: d6 fe ec 2f: setc (l2r)      res[r1], r2
             0x00080202: 0d 77:       bu (u6)         -0xd <.label27>
.label22     0x00080204: 10 08:       ldw (2rus)      r1, r0[0x0]
             0x00080206: c8 68:       ldc (ru6)       r3, 0x8
             0x00080208: d7 fe ec 2f: setc (l2r)      res[r1], r3
             0x0008020c: c6 68:       ldc (ru6)       r3, 0x6
             0x0008020e: dd fe ec 0f: setclk (lr2r)   res[r1], r3
             0x00080212: d9 16:       setd (r2r)      res[r1], r2
             0x00080214: 8b 68:       ldc (ru6)       r2, 0xb
             0x00080216: d6 fe ec 2f: setc (l2r)      res[r1], r2
             0x0008021a: 19 77:       bu (u6)         -0x19 <.label27>
.label23     0x0008021c: 10 08:       ldw (2rus)      r1, r0[0x0]
             0x0008021e: c8 68:       ldc (ru6)       r3, 0x8
             0x00080220: d7 fe ec 2f: setc (l2r)      res[r1], r3
             0x00080224: c6 68:       ldc (ru6)       r3, 0x6
             0x00080226: dd fe ec 0f: setclk (lr2r)   res[r1], r3
             0x0008022a: d9 16:       setd (r2r)      res[r1], r2
             0x0008022c: c9 ae:       out (r2r)       res[r1], r2
             0x0008022e: da a6:       mkmsk (rus)     r2, 0x2
             0x00080230: d6 fe ec 2f: setc (l2r)      res[r1], r2
             0x00080234: 26 77:       bu (u6)         -0x26 <.label27>
.label24     0x00080236: 10 08:       ldw (2rus)      r1, r0[0x0]
             0x00080238: c8 68:       ldc (ru6)       r3, 0x8
             0x0008023a: d7 fe ec 2f: setc (l2r)      res[r1], r3
             0x0008023e: c6 68:       ldc (ru6)       r3, 0x6
             0x00080240: dd fe ec 0f: setclk (lr2r)   res[r1], r3
             0x00080244: d9 16:       setd (r2r)      res[r1], r2
             0x00080246: c9 ae:       out (r2r)       res[r1], r2
             0x00080248: 93 68:       ldc (ru6)       r2, 0x13
             0x0008024a: d6 fe ec 2f: setc (l2r)      res[r1], r2
             0x0008024e: 33 77:       bu (u6)         -0x33 <.label27>
.label26     0x00080250: 10 08:       ldw (2rus)      r1, r0[0x0]
             0x00080252: c8 68:       ldc (ru6)       r3, 0x8
             0x00080254: d7 fe ec 2f: setc (l2r)      res[r1], r3
             0x00080258: c6 68:       ldc (ru6)       r3, 0x6
             0x0008025a: dd fe ec 0f: setclk (lr2r)   res[r1], r3
             0x0008025e: d9 16:       setd (r2r)      res[r1], r2
             0x00080260: c9 ae:       out (r2r)       res[r1], r2
             0x00080262: 8b 68:       ldc (ru6)       r2, 0xb
             0x00080264: d6 fe ec 2f: setc (l2r)      res[r1], r2
             0x00080268: 01 f0 01 77: bu (lu6)        -0x41 <.label27>

<_ZN9XCPortBit3setEv>:
             0x0008026c: 00 f0 44 77: entsp (lu6)     0x4
             0x00080270: 02 55:       stw (ru6)       r4, sp[0x2]
             0x00080272: 40 90:       add (2rus)      r4, r0, 0x0
             0x00080274: c0 08:       ldw (2rus)      r0, r4[0x0]
             0x00080276: d1 08:       ldw (2rus)      r1, r4[0x1]
             0x00080278: 00 f0 ce d0: bl (lu10)       0xce <_ZN6XCPort5outOrEj>
             0x0008027c: c0 90:       add (2rus)      r0, r4, 0x0
             0x0008027e: 02 5d:       ldw (ru6)       r4, sp[0x2]
             0x00080280: c4 77:       retsp (u6)      0x4
             0x00080282: 00 00:       stw (2rus)      r0, r0[0x0]

<_ZN9XCPortBit3clrEv>:
             0x00080284: 00 f0 40 77: entsp (lu6)     0x0
             0x00080288: 10 08:       ldw (2rus)      r1, r0[0x0]
             0x0008028a: 21 08:       ldw (2rus)      r2, r0[0x1]
             0x0008028c: 14 08:       ldw (2rus)      r1, r1[0x0]
             0x0008028e: dd fe ec 1f: getd (l2r)      r3, res[r1]
             0x00080292: ce 2e:       andnot (2r)     r3, r2
             0x00080294: dd 16:       setd (r2r)      res[r1], r3
             0x00080296: cd ae:       out (r2r)       res[r1], r3
             0x00080298: c0 77:       retsp (u6)      0x0
             0x0008029a: 00 00:       stw (2rus)      r0, r0[0x0]

<__dtor_PLEDS>:
             0x0008029c: 00 f0 40 77: entsp (lu6)     0x0
             0x000802a0: 01 f0 20 58: ldw (lru6)      r0, dp[0x60]
             0x000802a4: 03 78:       bf (ru6)        r0, 0x3 <.label28>
             0x000802a6: 40 68:       ldc (ru6)       r1, 0x0
             0x000802a8: d1 fe ec 2f: setc (l2r)      res[r0], r1
.label28     0x000802ac: c0 77:       retsp (u6)      0x0
             0x000802ae: 00 00:       stw (2rus)      r0, r0[0x0]

<blinkLedCooperative>:
             0x000802b0: 00 f0 4a 77: entsp (lu6)     0xa
             0x000802b4: 06 f9 ec f7: std (l2rus)     r5, r4, sp[0x2]
             0x000802b8: 2f f9 ec f7: std (l2rus)     r7, r6, sp[0x3]
             0x000802bc: 44 fc ec f7: std (l2rus)     r9, r8, sp[0x4]
             0x000802c0: 40 90:       add (2rus)      r4, r0, 0x0
             0x000802c2: 01 f0 e0 61: ldaw (lru6)     r7, dp[0x60]
             0x000802c6: c2 55:       stw (ru6)       r7, sp[0x2]
             0x000802c8: d1 a6:       mkmsk (rus)     r0, 0x1
             0x000802ca: c0 22:       shl (3r)        r8, r0, r4
             0x000802cc: 03 56:       stw (ru6)       r8, sp[0x3]
             0x000802ce: 01 f0 20 58: ldw (lru6)      r0, dp[0x60]
             0x000802d2: d4 fe ec 1f: getd (l2r)      r1, res[r0]
             0x000802d6: 24 2f:       andnot (2r)     r1, r8
             0x000802d8: d4 16:       setd (r2r)      res[r0], r1
             0x000802da: c4 ae:       out (r2r)       res[r0], r1
             0x000802dc: 01 f0 24 6c: ldw (lru6)      r0, cp[0x64]
             0x000802e0: c0 f8 ec 3f: mul (l3r)       r0, r4, r0
             0x000802e4: 00 f0 96 d2: bl (lu10)       0x296 <XCSchedulerYieldDelay>
             0x000802e8: 01 f0 26 6c: ldw (lru6)      r0, cp[0x66]
             0x000802ec: d0 f8 ec 3f: mul (l3r)       r1, r4, r0
             0x000802f0: 54 10:       add (3r)        r5, r1, r0
             0x000802f2: 54 6a:       ldc (ru6)       r9, 0x14
             0x000802f4: 82 65:       ldaw (ru6)      r6, sp[0x2]
             0x000802f6: 02 73:       bu (u6)         0x2 <.label29>
.label30     0x000802f8: c2 5d:       ldw (ru6)       r7, sp[0x2]
             0x000802fa: 03 5e:       ldw (ru6)       r8, sp[0x3]
.label29     0x000802fc: cc 08:       ldw (2rus)      r0, r7[0x0]
             0x000802fe: d0 fe ec 1f: getd (l2r)      r0, res[r0]
             0x00080302: 80 39:       and (3r)        r0, r8, r0
             0x00080304: 10 b0:       eq (2rus)       r1, r0, 0x0
             0x00080306: c8 90:       add (2rus)      r0, r6, 0x0
             0x00080308: 00 f0 90 d0: bl (lu10)       0x90 <_ZN9XCPortBit3setEj>
             0x0008030c: c4 90:       add (2rus)      r0, r5, 0x0
             0x0008030e: 00 f0 81 d2: bl (lu10)       0x281 <XCSchedulerYieldDelay>
             0x00080312: 15 9a:       sub (2rus)      r9, r9, 0x1
             0x00080314: 4f 76:       bt (ru6)        r9, -0xf <.label30>
             0x00080316: 01 f0 7e 7f: ldaw (lu6)      r11, cp[0x7e]
             0x0008031a: 8c 91:       add (2rus)      r0, r11, 0x0
             0x0008031c: d0 90:       add (2rus)      r1, r4, 0x0
             0x0008031e: 00 f0 9f d0: bl (lu10)       0x9f <debug_printf>
             0x00080322: 44 fc ec ef: ldd (l2rus)     r9, r8, sp[0x4]
             0x00080326: 2f f9 ec ef: ldd (l2rus)     r7, r6, sp[0x3]
             0x0008032a: 06 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x2]
             0x0008032e: ca 77:       retsp (u6)      0xa

<_Z13testSchedulerv>:
             0x00080330: 00 f0 4a 77: entsp (lu6)     0xa
             0x00080334: 05 f9 ec f7: std (l2rus)     r5, r4, sp[0x1]
             0x00080338: 2e f9 ec f7: std (l2rus)     r7, r6, sp[0x2]
             0x0008033c: 07 fa ec f7: std (l2rus)     r9, r8, sp[0x3]
             0x00080340: 88 56:       stw (ru6)       r10, sp[0x8]
             0x00080342: 01 f0 20 61: ldaw (lru6)     r4, dp[0x60]
             0x00080346: 80 69:       ldc (ru6)       r6, 0x0
             0x00080348: 01 f0 ce 69: ldc (lru6)      r7, 0x4e
             0x0008034c: 01 f0 0e 6a: ldc (lru6)      r8, 0x4e
             0x00080350: 01 f0 8e 6a: ldc (lru6)      r10, 0x4e
             0x00080354: 48 6a:       ldc (ru6)       r9, 0x8
             0x00080356: 01 f0 6a 6d: ldw (lru6)      r5, cp[0x6a]
             0x0008035a: 09 73:       bu (u6)         0x9 <.label31>
.label33     0x0008035c: 01 f0 20 58: ldw (lru6)      r0, dp[0x60]
             0x00080360: 18 17:       setd (r2r)      res[r0], r6
             0x00080362: 08 af:       out (r2r)       res[r0], r6
             0x00080364: 02 f0 42 7f: ldaw (lu6)      r11, cp[0x82]
             0x00080368: 8c 91:       add (2rus)      r0, r11, 0x0
             0x0008036a: 00 f0 79 d0: bl (lu10)       0x79 <debug_printf>
.label31     0x0008036e: c0 90:       add (2rus)      r0, r4, 0x0
             0x00080370: 45 68:       ldc (ru6)       r1, 0x5
             0x00080372: e8 90:       add (2rus)      r2, r6, 0x0
             0x00080374: 00 f0 e4 d4: bl (lu10)       -0xe4 <_ZN6XCPort7setModeENS_10PortMode_tEj>
             0x00080378: 00 f0 66 dc: ldap (lu10)     r11, -0x66 <blinkLedCooperative>
             0x0008037c: 8c 91:       add (2rus)      r0, r11, 0x0
             0x0008037e: 01 f0 45 7f: ldaw (lu6)      r11, cp[0x45]
             0x00080382: dc 90:       add (2rus)      r1, r7, 0x0
             0x00080384: ac 91:       add (2rus)      r2, r11, 0x0
             0x00080386: f8 90:       add (2rus)      r3, r6, 0x0
             0x00080388: 00 f0 f4 d1: bl (lu10)       0x1f4 <XCSchedulerCreateTask_>
             0x0008038c: 00 f0 70 dc: ldap (lu10)     r11, -0x70 <blinkLedCooperative>
             0x00080390: 8c 91:       add (2rus)      r0, r11, 0x0
             0x00080392: 01 f0 4a 7f: ldaw (lu6)      r11, cp[0x4a]
             0x00080396: 90 91:       add (2rus)      r1, r8, 0x0
             0x00080398: ac 91:       add (2rus)      r2, r11, 0x0
             0x0008039a: dd a6:       mkmsk (rus)     r3, 0x1
             0x0008039c: 00 f0 ea d1: bl (lu10)       0x1ea <XCSchedulerCreateTask_>
             0x000803a0: 00 f0 7a dc: ldap (lu10)     r11, -0x7a <blinkLedCooperative>
             0x000803a4: 8c 91:       add (2rus)      r0, r11, 0x0
             0x000803a6: 01 f0 4f 7f: ldaw (lu6)      r11, cp[0x4f]
             0x000803aa: 98 91:       add (2rus)      r1, r10, 0x0
             0x000803ac: ac 91:       add (2rus)      r2, r11, 0x0
             0x000803ae: c2 68:       ldc (ru6)       r3, 0x2
             0x000803b0: 00 f0 e0 d1: bl (lu10)       0x1e0 <XCSchedulerCreateTask_>
             0x000803b4: 05 73:       bu (u6)         0x5 <.label32>
.label34     0x000803b6: d4 fe ec 1f: getd (l2r)      r1, res[r0]
             0x000803ba: 55 3a:       and (3r)        r1, r1, r5
             0x000803bc: d4 16:       setd (r2r)      res[r0], r1
             0x000803be: c4 ae:       out (r2r)       res[r0], r1
.label32     0x000803c0: 00 f0 8e d1: bl (lu10)       0x18e <XCSchedulerYield>
             0x000803c4: 35 7c:       bf (ru6)        r0, -0x35 <.label33>
             0x000803c6: 01 f0 20 58: ldw (lru6)      r0, dp[0x60]
             0x000803ca: d4 fe ec 1f: getd (l2r)      r1, res[r0]
             0x000803ce: d7 46:       zext (rus)      r1, 0x3
             0x000803d0: 4e 74:       bt (ru6)        r1, -0xe <.label34>
             0x000803d2: c0 90:       add (2rus)      r0, r4, 0x0
             0x000803d4: 94 91:       add (2rus)      r1, r9, 0x0
             0x000803d6: 00 f0 1f d0: bl (lu10)       0x1f <_ZN6XCPort5outOrEj>
             0x000803da: 0e 77:       bu (u6)         -0xe <.label32>

<_get_cmdline>:
.label6      0x000803dc: 00 f0 40 77: entsp (lu6)     0x0
             0x000803e0: 01 f0 21 50: stw (lru6)      r0, dp[0x61]
             0x000803e4: 01 f0 62 50: stw (lru6)      r1, dp[0x62]
             0x000803e8: d0 a6:       mkmsk (rus)     r0, 0x20
             0x000803ea: c0 77:       retsp (u6)      0x0

<_Z11testcmdlinev>:
             0x000803ec: 00 f0 42 77: entsp (lu6)     0x2
             0x000803f0: 01 f0 62 58: ldw (lru6)      r1, dp[0x62]
             0x000803f4: 01 f0 a1 58: ldw (lru6)      r2, dp[0x61]
             0x000803f8: 01 f0 6e 7f: ldaw (lu6)      r11, cp[0x6e]
             0x000803fc: 8c 91:       add (2rus)      r0, r11, 0x0
             0x000803fe: 00 f0 2f d0: bl (lu10)       0x2f <debug_printf>
             0x00080402: c2 77:       retsp (u6)      0x2

<tile0_task1>:
             0x00080404: 00 f0 42 77: entsp (lu6)     0x2
             0x00080408: 00 f0 6e d4: bl (lu10)       -0x6e <_Z13testSchedulerv>

<tile0_task2>:
             0x0008040c: 00 f0 42 77: entsp (lu6)     0x2
             0x00080410: 00 f0 14 d4: bl (lu10)       -0x14 <_Z11testcmdlinev>
             0x00080414: c2 77:       retsp (u6)      0x2
             0x00080416: 00 00:       stw (2rus)      r0, r0[0x0]

<_ZN6XCPort5outOrEj>:
             0x00080418: 00 f0 40 77: entsp (lu6)     0x0
             0x0008041c: 20 08:       ldw (2rus)      r2, r0[0x0]
             0x0008041e: de fe ec 1f: getd (l2r)      r3, res[r2]
             0x00080422: 1d 40:       or (3r)         r1, r3, r1
             0x00080424: d6 16:       setd (r2r)      res[r2], r1
             0x00080426: c6 ae:       out (r2r)       res[r2], r1
             0x00080428: c0 77:       retsp (u6)      0x0
             0x0008042a: 00 00:       stw (2rus)      r0, r0[0x0]

<_ZN9XCPortBit3setEj>:
             0x0008042c: 00 f0 44 77: entsp (lu6)     0x4
             0x00080430: 02 55:       stw (ru6)       r4, sp[0x2]
             0x00080432: 40 90:       add (2rus)      r4, r0, 0x0
             0x00080434: 43 78:       bf (ru6)        r1, 0x3 <.label35>
             0x00080436: 00 f0 e7 d4: bl (lu10)       -0xe7 <_ZN9XCPortBit3setEv>
             0x0008043a: 02 73:       bu (u6)         0x2 <.label36>
.label35     0x0008043c: 00 f0 de d4: bl (lu10)       -0xde <_ZN9XCPortBit3clrEv>
.label36     0x00080440: c0 90:       add (2rus)      r0, r4, 0x0
             0x00080442: 02 5d:       ldw (ru6)       r4, sp[0x2]
             0x00080444: c4 77:       retsp (u6)      0x4
             0x00080446: 00 00:       stw (2rus)      r0, r0[0x0]

<_GLOBAL__sub_I_tests.cpp>:
             0x00080448: 00 f0 42 77: entsp (lu6)     0x2
             0x0008044c: 01 f0 23 6c: ldw (lru6)      r0, cp[0x63]
             0x00080450: 01 f0 20 50: stw (lru6)      r0, dp[0x60]
             0x00080454: 00 f0 de dc: ldap (lu10)     r11, -0xde <__dtor_PLEDS>
             0x00080458: 8c 91:       add (2rus)      r0, r11, 0x0
             0x0008045a: 00 f0 7d d3: bl (lu10)       0x37d <atexit>
             0x0008045e: c2 77:       retsp (u6)      0x2

<debug_printf>:
             0x00080460: 00 f0 40 77: entsp (lu6)     0x0
             0x00080464: b2 77:       extsp (u6)      0x32
             0x00080466: c1 57:       stw (ru6)       lr, sp[0x1]
             0x00080468: 28 55:       stw (ru6)       r4, sp[0x28]
             0x0008046a: 69 55:       stw (ru6)       r5, sp[0x29]
             0x0008046c: aa 55:       stw (ru6)       r6, sp[0x2a]
             0x0008046e: eb 55:       stw (ru6)       r7, sp[0x2b]
             0x00080470: 2c 56:       stw (ru6)       r8, sp[0x2c]
             0x00080472: 6d 56:       stw (ru6)       r9, sp[0x2d]
             0x00080474: ae 56:       stw (ru6)       r10, sp[0x2e]
             0x00080476: a0 90:       add (2rus)      r10, r0, 0x0
             0x00080478: 70 54:       stw (ru6)       r1, sp[0x30]
             0x0008047a: b1 54:       stw (ru6)       r2, sp[0x31]
             0x0008047c: f2 54:       stw (ru6)       r3, sp[0x32]
             0x0008047e: 47 66:       ldaw (ru6)      r9, sp[0x7]
             0x00080480: 30 64:       ldaw (ru6)      r0, sp[0x30]
             0x00080482: 06 54:       stw (ru6)       r0, sp[0x6]
             0x00080484: 00 6a:       ldc (ru6)       r8, 0x0
             0x00080486: 08 8e:       ld8u (3r)       r0, r10[r8]
             0x00080488: 02 f0 36 78: bf (lru6)       r0, 0xb6 <.label37>
             0x0008048c: 01 f0 b7 68: ldc (lru6)      r2, 0x77
             0x00080490: 47 64:       ldaw (ru6)      r1, sp[0x7]
             0x00080492: 26 10:       add (3r)        r2, r1, r2
             0x00080494: 85 54:       stw (ru6)       r2, sp[0x5]
             0x00080496: 19 a7:       mkmsk (rus)     r6, 0x1
             0x00080498: 01 f0 68 6d: ldw (lru6)      r5, cp[0x68]
             0x0008049c: ca 69:       ldc (ru6)       r7, 0xa
             0x0008049e: 94 90:       add (2rus)      r9, r1, 0x0
.label55     0x000804a0: 45 5c:       ldw (ru6)       r1, sp[0x5]
             0x000804a2: 95 cc:       lsu (3r)        r1, r1, r9
             0x000804a4: 48 78:       bf (ru6)        r1, 0x8 <.label38>
             0x000804a6: 07 65:       ldaw (ru6)      r4, sp[0x7]
             0x000804a8: e4 1b:       sub (3r)        r2, r9, r4
             0x000804aa: c8 90:       add (2rus)      r0, r6, 0x0
             0x000804ac: d0 90:       add (2rus)      r1, r4, 0x0
             0x000804ae: 00 f0 c9 d5: bl (lu10)       -0x1c9 <_write>
             0x000804b2: 08 8e:       ld8u (3r)       r0, r10[r8]
             0x000804b4: 50 91:       add (2rus)      r9, r4, 0x0
.label38     0x000804b6: 10 90:       add (2rus)      r1, r0, 0x0
             0x000804b8: 34 47:       zext (rus)      r1, 0x8
             0x000804ba: a5 68:       ldc (ru6)       r2, 0x25
             0x000804bc: 16 30:       eq (3r)         r1, r1, r2
             0x000804be: 71 78:       bf (ru6)        r1, 0x31 <.label39>
             0x000804c0: 89 91:       add (2rus)      r0, r10, 0x1
             0x000804c2: da 8b:       ld8u (3r)       r1, r10[r6]
             0x000804c4: 94 fc ec a7: ldaw (l2rus)    r1, r1[-0x8]
             0x000804c8: 34 47:       zext (rus)      r1, 0x8
             0x000804ca: 25 a8:       shr (2rus)      r2, r1, 0x1
             0x000804cc: c6 68:       ldc (ru6)       r3, 0x6
             0x000804ce: 2e c8:       lsu (3r)        r2, r3, r2
             0x000804d0: 86 70:       bt (ru6)        r2, 0x6 <.label40>
             0x000804d2: d9 20:       shl (3r)        r1, r6, r1
             0x000804d4: a0 f0 89 68: ldc (lru6)      r2, 0x2809
             0x000804d8: 16 38:       and (3r)        r1, r1, r2
             0x000804da: 41 78:       bf (ru6)        r1, 0x1 <.label40>
             0x000804dc: 8a 91:       add (2rus)      r0, r10, 0x2
.label40     0x000804de: 11 98:       sub (2rus)      r1, r0, 0x1
.label41     0x000804e0: 45 90:       add (2rus)      r4, r1, 0x1
             0x000804e2: 46 8a:       ld8u (3r)       r0, r1[r6]
             0x000804e4: 51 12:       add (3r)        r1, r0, r5
             0x000804e6: 34 47:       zext (rus)      r1, 0x8
             0x000804e8: 67 ca:       lsu (3r)        r2, r1, r7
             0x000804ea: d0 90:       add (2rus)      r1, r4, 0x0
             0x000804ec: 87 74:       bt (ru6)        r2, -0x7 <.label41>
             0x000804ee: 00 f0 50 58: ldw (lru6)      r1, dp[0x10]
             0x000804f2: 11 10:       add (3r)        r1, r0, r1
             0x000804f4: 56 8a:       ld8u (3r)       r1, r1[r6]
             0x000804f6: d5 46:       zext (rus)      r1, 0x1
             0x000804f8: 42 78:       bf (ru6)        r1, 0x2 <.label42>
             0x000804fa: 80 fc ec 9f: ldaw (l2rus)    r0, r0[0x8]
.label42     0x000804fe: 01 f0 6f 68: ldc (lru6)      r1, 0x6f
             0x00080502: 14 c0:       lss (3r)        r1, r1, r0
             0x00080504: 55 70:       bt (ru6)        r1, 0x15 <.label43>
             0x00080506: 01 f0 63 68: ldc (lru6)      r1, 0x63
             0x0008050a: 11 30:       eq (3r)         r1, r0, r1
             0x0008050c: 6b 78:       bf (ru6)        r1, 0x2b <.label44>
             0x0008050e: 06 5c:       ldw (ru6)       r0, sp[0x6]
             0x00080510: 50 92:       add (2rus)      r1, r0, 0x4
             0x00080512: 46 54:       stw (ru6)       r1, sp[0x6]
             0x00080514: 00 08:       ldw (2rus)      r0, r0[0x0]
             0x00080516: 95 91:       add (2rus)      r1, r9, 0x1
             0x00080518: 04 fe ec 8f: st8 (l3r)       r0, r9[r8]
             0x0008051c: 94 90:       add (2rus)      r9, r1, 0x0
             0x0008051e: 01 f0 27 73: bu (lu6)        0x67 <.label45>
.label39     0x00080522: 95 91:       add (2rus)      r1, r9, 0x1
             0x00080524: 04 fe ec 8f: st8 (l3r)       r0, r9[r8]
             0x00080528: 94 90:       add (2rus)      r9, r1, 0x0
             0x0008052a: c8 91:       add (2rus)      r4, r10, 0x0
             0x0008052c: 01 f0 20 73: bu (lu6)        0x60 <.label45>
.label43     0x00080530: 01 f0 67 6c: ldw (lru6)      r1, cp[0x67]
             0x00080534: 01 10:       add (3r)        r0, r0, r1
             0x00080536: 48 68:       ldc (ru6)       r1, 0x8
             0x00080538: 14 c8:       lsu (3r)        r1, r1, r0
             0x0008053a: 01 f0 59 70: bt (lru6)       r1, 0x59 <.label45>
             0x0008053e: e0 2f:       bru (1r)        r0
             0x00080540: 0a 73:       bu (u6)         0xa <.label46>
             0x00080542: 07 73:       bu (u6)         0x7 <.label47>
             0x00080544: 06 73:       bu (u6)         0x6 <.label47>
             0x00080546: 1d 73:       bu (u6)         0x1d <.label48>
             0x00080548: 04 73:       bu (u6)         0x4 <.label47>
             0x0008054a: 3d 73:       bu (u6)         0x3d <.label49>
             0x0008054c: 02 73:       bu (u6)         0x2 <.label47>
             0x0008054e: 01 73:       bu (u6)         0x1 <.label47>
             0x00080550: 02 73:       bu (u6)         0x2 <.label46>
.label47     0x00080552: 01 f0 0d 73: bu (lu6)        0x4d <.label45>
.label46     0x00080556: 06 5c:       ldw (ru6)       r0, sp[0x6]
             0x00080558: 50 92:       add (2rus)      r1, r0, 0x4
             0x0008055a: 46 54:       stw (ru6)       r1, sp[0x6]
             0x0008055c: 00 08:       ldw (2rus)      r0, r0[0x0]
             0x0008055e: 94 91:       add (2rus)      r1, r9, 0x0
             0x00080560: 90 68:       ldc (ru6)       r2, 0x10
             0x00080562: 37 73:       bu (u6)         0x37 <.label50>
.label44     0x00080564: 01 f0 64 68: ldc (lru6)      r1, 0x64
             0x00080568: 01 30:       eq (3r)         r0, r0, r1
             0x0008056a: 01 f0 01 78: bf (lru6)       r0, 0x41 <.label45>
             0x0008056e: 20 92:       add (2rus)      r10, r8, 0x0
             0x00080570: 06 5c:       ldw (ru6)       r0, sp[0x6]
             0x00080572: 50 92:       add (2rus)      r1, r0, 0x4
             0x00080574: 46 54:       stw (ru6)       r1, sp[0x6]
             0x00080576: 00 08:       ldw (2rus)      r0, r0[0x0]
             0x00080578: 10 f8 ec 97: ashr (l2rus)    r1, r0, 0x20
             0x0008057c: 6e 70:       bt (ru6)        r1, 0x2e <.label51>
             0x0008057e: 04 92:       add (2rus)      r8, r9, 0x0
             0x00080580: 31 73:       bu (u6)         0x31 <.label52>
.label48     0x00080582: 06 5c:       ldw (ru6)       r0, sp[0x6]
             0x00080584: 50 92:       add (2rus)      r1, r0, 0x4
             0x00080586: 46 54:       stw (ru6)       r1, sp[0x6]
             0x00080588: 00 08:       ldw (2rus)      r0, r0[0x0]
             0x0008058a: 04 54:       stw (ru6)       r0, sp[0x4]
             0x0008058c: 00 f0 ee d2: bl (lu10)       0x2ee <strlen>
             0x00080590: 80 90:       add (2rus)      r8, r0, 0x0
             0x00080592: 01 f0 38 68: ldc (lru6)      r0, 0x78
             0x00080596: 80 c1:       lss (3r)        r0, r8, r0
             0x00080598: 07 70:       bt (ru6)        r0, 0x7 <.label53>
             0x0008059a: 87 66:       ldaw (ru6)      r10, sp[0x7]
             0x0008059c: 26 1e:       sub (3r)        r2, r9, r10
             0x0008059e: c8 90:       add (2rus)      r0, r6, 0x0
             0x000805a0: 98 91:       add (2rus)      r1, r10, 0x0
             0x000805a2: 00 f0 43 d6: bl (lu10)       -0x243 <_write>
             0x000805a6: 18 92:       add (2rus)      r9, r10, 0x0
.label53     0x000805a8: 01 f0 37 68: ldc (lru6)      r0, 0x77
             0x000805ac: 10 90:       add (2rus)      r1, r0, 0x0
             0x000805ae: 84 c4:       lss (3r)        r0, r1, r8
             0x000805b0: a4 90:       add (2rus)      r10, r1, 0x0
             0x000805b2: 01 70:       bt (ru6)        r0, 0x1 <.label54>
             0x000805b4: 20 92:       add (2rus)      r10, r8, 0x0
.label54     0x000805b6: 84 91:       add (2rus)      r0, r9, 0x0
             0x000805b8: 44 5c:       ldw (ru6)       r1, sp[0x4]
             0x000805ba: a8 91:       add (2rus)      r2, r10, 0x0
             0x000805bc: 00 f0 e0 d2: bl (lu10)       0x2e0 <memcpy> <__memcpy_4>
             0x000805c0: 96 16:       add (3r)        r9, r9, r10
             0x000805c2: 00 6a:       ldc (ru6)       r8, 0x0
             0x000805c4: 15 73:       bu (u6)         0x15 <.label45>
.label49     0x000805c6: 06 5c:       ldw (ru6)       r0, sp[0x6]
             0x000805c8: 50 92:       add (2rus)      r1, r0, 0x4
             0x000805ca: 46 54:       stw (ru6)       r1, sp[0x6]
             0x000805cc: 00 08:       ldw (2rus)      r0, r0[0x0]
             0x000805ce: 94 91:       add (2rus)      r1, r9, 0x0
             0x000805d0: ec 90:       add (2rus)      r2, r7, 0x0
.label50     0x000805d2: 00 f0 21 d0: bl (lu10)       0x21 <itoa>
             0x000805d6: 14 12:       add (3r)        r9, r9, r0
             0x000805d8: 0b 73:       bu (u6)         0xb <.label45>
.label51     0x000805da: 05 92:       add (2rus)      r8, r9, 0x1
             0x000805dc: 6d 68:       ldc (ru6)       r1, 0x2d
             0x000805de: 16 fe ec 8f: st8 (l3r)       r1, r9[r10]
             0x000805e2: c0 96:       neg (2r)        r0, r0
.label52     0x000805e4: 90 91:       add (2rus)      r1, r8, 0x0
             0x000805e6: ec 90:       add (2rus)      r2, r7, 0x0
             0x000805e8: 00 f0 16 d0: bl (lu10)       0x16 <itoa>
             0x000805ec: 10 12:       add (3r)        r9, r8, r0
             0x000805ee: 08 92:       add (2rus)      r8, r10, 0x0
.label45     0x000805f0: 61 91:       add (2rus)      r10, r4, 0x1
             0x000805f2: 02 8b:       ld8u (3r)       r0, r4[r6]
             0x000805f4: 02 f0 2c 74: bt (lru6)       r0, -0xac <.label55>
.label37     0x000805f8: 47 64:       ldaw (ru6)      r1, sp[0x7]
             0x000805fa: a5 19:       sub (3r)        r2, r9, r1
             0x000805fc: d1 a6:       mkmsk (rus)     r0, 0x1
             0x000805fe: 00 f0 71 d6: bl (lu10)       -0x271 <_write>
             0x00080602: ae 5e:       ldw (ru6)       r10, sp[0x2e]
             0x00080604: 2c 5e:       ldw (ru6)       r8, sp[0x2c]
             0x00080606: 6d 5e:       ldw (ru6)       r9, sp[0x2d]
             0x00080608: aa 5d:       ldw (ru6)       r6, sp[0x2a]
             0x0008060a: eb 5d:       ldw (ru6)       r7, sp[0x2b]
             0x0008060c: 28 5d:       ldw (ru6)       r4, sp[0x28]
             0x0008060e: 69 5d:       ldw (ru6)       r5, sp[0x29]
             0x00080610: c1 5f:       ldw (ru6)       lr, sp[0x1]
             0x00080612: b2 67:       ldaw (ru6)      sp, sp[0x32]
             0x00080614: c0 77:       retsp (u6)      0x0
             0x00080616: 00 00:       stw (2rus)      r0, r0[0x0]

<itoa>:
             0x00080618: 00 f0 46 77: entsp (lu6)     0x6
             0x0008061c: 05 f9 ec f7: std (l2rus)     r5, r4, sp[0x1]
             0x00080620: 84 55:       stw (ru6)       r6, sp[0x4]
             0x00080622: 44 90:       add (2rus)      r4, r1, 0x0
             0x00080624: 40 68:       ldc (ru6)       r1, 0x0
             0x00080626: 10 78:       bf (ru6)        r0, 0x10 <.label56>
             0x00080628: 30 90:       add (2rus)      r3, r0, 0x0
.label57     0x0008062a: 5e f8 ec 4f: divu (l3r)      r5, r3, r2
             0x0008062e: 3e f8 ec cf: remu (l3r)      r3, r3, r2
             0x00080632: 01 f0 70 7f: ldaw (lu6)      r11, cp[0x70]
             0x00080636: bf 89:       ld8u (3r)       r3, r11[r3]
             0x00080638: f1 f8 ec 8f: st8 (l3r)       r3, r4[r1]
             0x0008063c: 15 90:       add (2rus)      r1, r1, 0x1
             0x0008063e: f4 90:       add (2rus)      r3, r5, 0x0
             0x00080640: 4c 75:       bt (ru6)        r5, -0xc <.label57>
             0x00080642: 00 b0:       eq (2rus)       r0, r0, 0x0
             0x00080644: 21 18:       sub (3r)        r2, r0, r1
             0x00080646: 01 73:       bu (u6)         0x1 <.label58>
.label56     0x00080648: 20 b0:       eq (2rus)       r2, r0, 0x0
.label58     0x0008064a: 19 a7:       mkmsk (rus)     r6, 0x1
             0x0008064c: 4a c2:       lss (3r)        r0, r2, r6
             0x0008064e: 06 70:       bt (ru6)        r0, 0x6 <.label59>
             0x00080650: 59 10:       add (3r)        r5, r2, r1
             0x00080652: c1 10:       add (3r)        r0, r4, r1
             0x00080654: 70 68:       ldc (ru6)       r1, 0x30
             0x00080656: 00 f0 4b d1: bl (lu10)       0x14b <memset>
             0x0008065a: 01 73:       bu (u6)         0x1 <.label60>
.label59     0x0008065c: 54 90:       add (2rus)      r5, r1, 0x0
.label60     0x0008065e: c5 98:       sub (2rus)      r0, r5, 0x1
             0x00080660: 52 c2:       lss (3r)        r1, r0, r6
             0x00080662: 4d 70:       bt (ru6)        r1, 0xd <.label61>
             0x00080664: d4 a6:       mkmsk (rus)     r1, 0x20
.label62     0x00080666: 22 13:       add (3r)        r2, r4, r6
             0x00080668: 39 88:       ld8u (3r)       r3, r2[r1]
             0x0008066a: 70 89:       ld8u (3r)       r11, r4[r0]
             0x0008066c: b9 f8 ec 8f: st8 (l3r)       r11, r2[r1]
             0x00080670: f0 f8 ec 8f: st8 (l3r)       r3, r4[r0]
             0x00080674: 01 98:       sub (2rus)      r0, r0, 0x1
             0x00080676: e9 90:       add (2rus)      r2, r6, 0x1
             0x00080678: f8 c0:       lss (3r)        r3, r6, r0
             0x0008067a: 68 90:       add (2rus)      r6, r2, 0x0
             0x0008067c: cc 74:       bt (ru6)        r3, -0xc <.label62>
.label61     0x0008067e: c4 90:       add (2rus)      r0, r5, 0x0
             0x00080680: 84 5d:       ldw (ru6)       r6, sp[0x4]
             0x00080682: 05 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x1]
             0x00080686: c6 77:       retsp (u6)      0x6

<__dtor_XCPortUndefined>:
             0x00080688: 00 f0 40 77: entsp (lu6)     0x0
             0x0008068c: 01 f0 23 58: ldw (lru6)      r0, dp[0x63]
             0x00080690: 01 78:       bf (ru6)        r0, 0x1 <.label63>
             0x00080692: 00 e8:       setc (ru6)      res[r0], 0x0
.label63     0x00080694: c0 77:       retsp (u6)      0x0
             0x00080696: 00 00:       stw (2rus)      r0, r0[0x0]

<_GLOBAL__sub_I_XC_core.cpp>:
             0x00080698: 00 f0 44 77: entsp (lu6)     0x4
             0x0008069c: 05 f9 ec f7: std (l2rus)     r5, r4, sp[0x1]
             0x000806a0: 00 69:       ldc (ru6)       r4, 0x0
             0x000806a2: 01 f0 23 51: stw (lru6)      r4, dp[0x63]
             0x000806a6: 01 f0 63 61: ldaw (lru6)     r5, dp[0x63]
             0x000806aa: 00 f0 13 dc: ldap (lu10)     r11, -0x13 <__dtor_XCPortUndefined>
             0x000806ae: 8c 91:       add (2rus)      r0, r11, 0x0
             0x000806b0: 00 f0 52 d2: bl (lu10)       0x252 <atexit>
             0x000806b4: 00 f0 58 51: stw (lru6)      r5, dp[0x18]
             0x000806b8: 00 f0 19 51: stw (lru6)      r4, dp[0x19]
             0x000806bc: 01 f0 24 51: stw (lru6)      r4, dp[0x64]
             0x000806c0: 00 f0 1a 51: stw (lru6)      r4, dp[0x1a]
             0x000806c4: 00 f0 1b 51: stw (lru6)      r4, dp[0x1b]
             0x000806c8: 00 f0 1c 51: stw (lru6)      r4, dp[0x1c]
             0x000806cc: 00 f0 1d 51: stw (lru6)      r4, dp[0x1d]
             0x000806d0: 05 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x1]
             0x000806d4: c4 77:       retsp (u6)      0x4
             0x000806d6: 00 00:       stw (2rus)      r0, r0[0x0]
             0x000806d8: 00 00:       stw (2rus)      r0, r0[0x0]
             0x000806da: 00 00:       stw (2rus)      r0, r0[0x0]
             0x000806dc: 00 00:       stw (2rus)      r0, r0[0x0]
             0x000806de: 00 00:       stw (2rus)      r0, r0[0x0]

<XCSchedulerYield>:
             0x000806e0: 00 f0 4a 77: entsp (lu6)     0xa
             0x000806e4: ee 17:       get (0r)        r11, id
             0x000806e6: 00 f0 60 60: ldaw (lru6)     r1, dp[0x20]
             0x000806ea: a7 4c:       ldw (3r)        r2, r1[r11]
             0x000806ec: 91 70:       bt (ru6)        r2, 0x11 <XCSchedulerYield_entry>
             0x000806ee: ca 77:       retsp (u6)      0xa
             0x000806f0: e3 8f:       gettime (1r)    r3
             0x000806f2: 0c 78:       bf (ru6)        r0, 0xc <.label64>
             0x000806f4: 3c 10:       add (3r)        r3, r3, r0
             0x000806f6: 00 f0 00 60: ldaw (lru6)     r0, dp[0x0]
             0x000806fa: 93 4c:       ldw (3r)        r1, r0[r11]
             0x000806fc: 41 70:       bt (ru6)        r1, 0x1 <.label65>
             0x000806fe: c6 86:       getr (rus)      r1, 0x2
.label65     0x00080700: 93 fc ec 07: stw (l3r)       r1, r0[r11]
             0x00080704: 49 e8:       setc (ru6)      res[r1], 0x9
             0x00080706: dd 16:       setd (r2r)      res[r1], r3
             0x00080708: cd b6:       in (2r)         r3, res[r1]
             0x0008070a: 7a 02:       stw (2rus)      r3, r2[0x6]
.label64     0x0008070c: ca 77:       retsp (u6)      0xa
             0x0008070e: ff 17:       nop (0r)        

<XCSchedulerYield_entry>:
             0x00080710: 05 f9 ec f7: std (l2rus)     r5, r4, sp[0x1]
             0x00080714: 2e f9 ec f7: std (l2rus)     r7, r6, sp[0x2]
             0x00080718: f7 fc ec 1f: ldaw (l3r)      r7, r1[r11]
             0x0008071c: 88 56:       stw (ru6)       r10, sp[0x8]
             0x0008071e: 07 fa ec f7: std (l2rus)     r9, r8, sp[0x3]
             0x00080722: 48 90:       add (2rus)      r4, r2, 0x0
             0x00080724: 00 64:       ldaw (ru6)      r0, sp[0x0]
             0x00080726: c0 00:       stw (2rus)      r0, r4[0x0]
             0x00080728: 40 0b:       ldw (2rus)      r4, r4[0x4]
             0x0008072a: c2 30:       eq (3r)         r0, r4, r2
             0x0008072c: 03 78:       bf (ru6)        r0, 0x3 <.label66>
             0x0008072e: 00 68:       ldc (ru6)       r0, 0x0
             0x00080730: cc 00:       stw (2rus)      r0, r7[0x0]
             0x00080732: 17 73:       bu (u6)         0x17 <.label67>
.label66     0x00080734: 0c 01:       stw (2rus)      r4, r7[0x0]
             0x00080736: f1 08:       ldw (2rus)      r3, r4[0x1]
             0x00080738: d1 78:       bf (ru6)        r3, 0x11 <.label68>
             0x0008073a: 00 68:       ldc (ru6)       r0, 0x0
             0x0008073c: c1 00:       stw (2rus)      r0, r4[0x1]
             0x0008073e: c0 08:       ldw (2rus)      r0, r4[0x0]
             0x00080740: f0 2f:       set (1r)        sp, r0
             0x00080742: c2 08:       ldw (2rus)      r0, r4[0x2]
             0x00080744: d3 08:       ldw (2rus)      r1, r4[0x3]
             0x00080746: e0 90:       add (2rus)      r2, r4, 0x0
             0x00080748: e3 27:       bla (1r)        r3
             0x0008074a: 10 0b:       ldw (2rus)      r1, r4[0x4]
             0x0008074c: 01 0b:       ldw (2rus)      r0, r4[0x5]
             0x0008074e: 50 02:       stw (2rus)      r1, r0[0x4]
             0x00080750: 45 02:       stw (2rus)      r0, r1[0x5]
             0x00080752: c0 90:       add (2rus)      r0, r4, 0x0
             0x00080754: 44 90:       add (2rus)      r4, r1, 0x0
             0x00080756: 00 f0 89 d2: bl (lu10)       0x289 <free>
             0x0008075a: 0c 01:       stw (2rus)      r4, r7[0x0]
.label68     0x0008075c: c0 08:       ldw (2rus)      r0, r4[0x0]
             0x0008075e: f0 2f:       set (1r)        sp, r0
             0x00080760: c0 90:       add (2rus)      r0, r4, 0x0
.label67     0x00080762: 88 5e:       ldw (ru6)       r10, sp[0x8]
             0x00080764: 07 fa ec ef: ldd (l2rus)     r9, r8, sp[0x3]
             0x00080768: 2e f9 ec ef: ldd (l2rus)     r7, r6, sp[0x2]
             0x0008076c: 05 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x1]
             0x00080770: ca 77:       retsp (u6)      0xa
             0x00080772: 00 00:       stw (2rus)      r0, r0[0x0]

<XCSchedulerCreateTask_>:
             0x00080774: 00 f0 48 77: entsp (lu6)     0x8
             0x00080778: 05 f9 ec f7: std (l2rus)     r5, r4, sp[0x1]
             0x0008077c: 2e f9 ec f7: std (l2rus)     r7, r6, sp[0x2]
             0x00080780: 07 fa ec f7: std (l2rus)     r9, r8, sp[0x3]
             0x00080784: 4c 90:       add (2rus)      r4, r3, 0x0
             0x00080786: 58 90:       add (2rus)      r5, r2, 0x0
             0x00080788: 74 90:       add (2rus)      r7, r1, 0x0
             0x0008078a: 60 90:       add (2rus)      r6, r0, 0x0
             0x0008078c: ee 17:       get (0r)        r11, id
             0x0008078e: 8c 91:       add (2rus)      r0, r11, 0x0
             0x00080790: 00 f0 60 60: ldaw (lru6)     r1, dp[0x20]
             0x00080794: 94 48:       ldw (3r)        r9, r1[r0]
             0x00080796: 51 72:       bt (ru6)        r9, 0x11 <.label69>
             0x00080798: 9c 68:       ldc (ru6)       r2, 0x1c
             0x0008079a: 22 f8 ec 3f: mul (l3r)       r2, r0, r2
             0x0008079e: 00 f0 e8 60: ldaw (lru6)     r3, dp[0x28]
             0x000807a2: 9e 10:       add (3r)        r9, r3, r2
             0x000807a4: 55 04:       stw (2rus)      r9, r9[0x5]
             0x000807a6: 54 04:       stw (2rus)      r9, r9[0x4]
             0x000807a8: 02 f0 46 7f: ldaw (lu6)      r11, cp[0x86]
             0x000807ac: 37 02:       stw (2rus)      r11, r9[0x3]
             0x000807ae: 80 68:       ldc (ru6)       r2, 0x0
             0x000807b0: e6 03:       stw (2rus)      r2, r9[0x6]
             0x000807b2: a5 01:       stw (2rus)      r2, r9[0x1]
             0x000807b4: a6 01:       stw (2rus)      r2, r9[0x2]
             0x000807b6: 94 f8 ec 07: stw (l3r)       r9, r1[r0]
.label69     0x000807ba: 24 68:       ldc (ru6)       r0, 0x24
             0x000807bc: 43 fa ec 1f: ldaw (l3r)      r0, r0[r7]
             0x000807c0: 00 f0 b8 d2: bl (lu10)       0x2b8 <malloc>
             0x000807c4: 80 90:       add (2rus)      r8, r0, 0x0
             0x000807c6: e8 4f:       ecallf (1r)     r8
             0x000807c8: ce a0:       shl (2rus)      r0, r7, 0x2
             0x000807ca: 80 14:       add (3r)        r0, r0, r8
             0x000807cc: d3 01:       stw (2rus)      r5, r8[0x3]
             0x000807ce: c2 01:       stw (2rus)      r4, r8[0x2]
             0x000807d0: e1 01:       stw (2rus)      r6, r8[0x1]
             0x000807d2: 40 68:       ldc (ru6)       r1, 0x0
             0x000807d4: d1 03:       stw (2rus)      r1, r8[0x5]
             0x000807d6: d0 03:       stw (2rus)      r1, r8[0x4]
             0x000807d8: 80 fc ec 9f: ldaw (l2rus)    r0, r0[0x8]
             0x000807dc: 01 f0 6b 6c: ldw (lru6)      r1, cp[0x6b]
             0x000807e0: 01 38:       and (3r)        r0, r0, r1
             0x000807e2: 80 01:       stw (2rus)      r0, r8[0x0]
             0x000807e4: 01 56:       stw (ru6)       r8, sp[0x1]
             0x000807e6: 01 f0 75 7f: ldaw (lu6)      r11, cp[0x75]
             0x000807ea: 8c 91:       add (2rus)      r0, r11, 0x0
             0x000807ec: d4 90:       add (2rus)      r1, r5, 0x0
             0x000807ee: e0 90:       add (2rus)      r2, r4, 0x0
             0x000807f0: b0 91:       add (2rus)      r3, r8, 0x0
             0x000807f2: 00 f0 cb d5: bl (lu10)       -0x1cb <debug_printf>
             0x000807f6: c4 0b:       ldw (2rus)      r0, r9[0x4]
             0x000807f8: c0 03:       stw (2rus)      r0, r8[0x4]
             0x000807fa: c4 0b:       ldw (2rus)      r0, r9[0x4]
             0x000807fc: c1 02:       stw (2rus)      r8, r0[0x5]
             0x000807fe: 51 04:       stw (2rus)      r9, r8[0x5]
             0x00080800: 44 04:       stw (2rus)      r8, r9[0x4]
             0x00080802: 80 91:       add (2rus)      r0, r8, 0x0
             0x00080804: 07 fa ec ef: ldd (l2rus)     r9, r8, sp[0x3]
             0x00080808: 2e f9 ec ef: ldd (l2rus)     r7, r6, sp[0x2]
             0x0008080c: 05 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x1]
             0x00080810: c8 77:       retsp (u6)      0x8
             0x00080812: 00 00:       stw (2rus)      r0, r0[0x0]

<XCSchedulerYieldDelay>:
             0x00080814: 00 f0 44 77: entsp (lu6)     0x4
             0x00080818: 02 55:       stw (ru6)       r4, sp[0x2]
             0x0008081a: e1 8f:       gettime (1r)    r1
             0x0008081c: 44 10:       add (3r)        r4, r1, r0
.label70     0x0008081e: 00 f0 a1 d4: bl (lu10)       -0xa1 <XCSchedulerYield>
             0x00080822: e1 8f:       gettime (1r)    r1
             0x00080824: 54 1a:       sub (3r)        r1, r1, r4
             0x00080826: 14 f8 ec 97: ashr (l2rus)    r1, r1, 0x20
             0x0008082a: 47 74:       bt (ru6)        r1, -0x7 <.label70>
             0x0008082c: 02 5d:       ldw (ru6)       r4, sp[0x2]
             0x0008082e: c4 77:       retsp (u6)      0x4

<main>:
.label7      0x00080830: 42 77:       entsp (u6)      0x2
.label71     0x00080832: c2 86:       getr (rus)      r0, 0x2
             0x00080834: 02 74:       bt (ru6)        r0, -0x2 <.label71>
             0x00080836: 7c f0 02 68: ldc (lru6)      r0, 0x1f02
             0x0008083a: 01 f0 e1 6e: ldw (lru6)      r11, cp[0x61]
             0x0008083e: 5c 17:       setd (r2r)      res[r0], r11
             0x00080840: d1 4e:       outct (rus)     res[r0], 0x1
             0x00080842: d1 ce:       chkct (rus)     res[r0], 0x1
             0x00080844: 00 f0 40 58: ldw (lru6)      r1, dp[0x0]
             0x00080848: 41 e8:       setc (ru6)      res[r1], 0x1
             0x0008084a: c9 b6:       in (2r)         r2, res[r1]
             0x0008084c: ed 07:       clre (0r)       
             0x0008084e: ca 6a:       ldc (ru6)       r11, 0xa
             0x00080850: ab 14:       add (3r)        r2, r2, r11
             0x00080852: 49 e8:       setc (ru6)      res[r1], 0x9
             0x00080854: d9 16:       setd (r2r)      res[r1], r2
             0x00080856: 09 d8:       ldap (u10)      r11, 0x9 <.label72>
             0x00080858: f1 47:       setv (1r)       res[r1], r11
             0x0008085a: 06 d8:       ldap (u10)      r11, 0x6 <.label73>
             0x0008085c: f0 47:       setv (1r)       res[r0], r11
             0x0008085e: 41 7b:       setsr (u6)      0x1
             0x00080860: f0 07:       eeu (1r)        res[r0]
             0x00080862: ff 17:       nop (0r)        
             0x00080864: f1 07:       eeu (1r)        res[r1]
             0x00080866: ec 07:       waiteu (0r)     
.label73     0x00080868: d1 ce:       chkct (rus)     res[r0], 0x1
.label72     0x0008086a: 02 68:       ldc (ru6)       r0, 0x2
             0x0008086c: 41 68:       ldc (ru6)       r1, 0x1
             0x0008086e: 00 f0 40 7f: ldaw (lu6)      r11, cp[0x0]
.label74     0x00080872: 15 98:       sub (2rus)      r1, r1, 0x1
             0x00080874: ad 49:       ldw (3r)        r2, r11[r1]
             0x00080876: d8 16:       setd (r2r)      res[r0], r2
             0x00080878: d0 0e:       outt (r2r)      res[r0], r0
             0x0008087a: d1 4e:       outct (rus)     res[r0], 0x1
             0x0008087c: 46 74:       bt (ru6)        r1, -0x6 <.label74>
             0x0008087e: 05 68:       ldc (ru6)       r0, 0x5
             0x00080880: 00 f0 2e d1: bl (lu10)       0x12e <delay_ticks>
             0x00080884: 00 f0 41 7f: ldaw (lu6)      r11, cp[0x1]
             0x00080888: 00 68:       ldc (ru6)       r0, 0x0
             0x0008088a: 60 68:       ldc (ru6)       r1, 0x20
             0x0008088c: 02 69:       ldc (ru6)       r4, 0x2
.label77     0x0008088e: ac 09:       ldw (2rus)      r2, r11[0x0]
             0x00080890: b8 ac:       shr (2rus)      r3, r2, 0x8
             0x00080892: 38 47:       zext (rus)      r2, 0x8
             0x00080894: 58 30:       eq (3r)         r5, r2, r0
             0x00080896: 47 79:       bf (ru6)        r5, 0x7 <.label75>
             0x00080898: a8 a4:       shl (2rus)      r2, r2, 0x8
             0x0008089a: 68 42:       or (3r)         r2, r2, r4
             0x0008089c: bc a4:       shl (2rus)      r3, r3, 0x8
             0x0008089e: 7c 42:       or (3r)         r3, r3, r4
             0x000808a0: de 16:       setd (r2r)      res[r2], r3
             0x000808a2: 7c 94:       add (2rus)      r11, r11, 0x4
             0x000808a4: 03 73:       bu (u6)         0x3 <.label76>
.label75     0x000808a6: a0 a4:       shl (2rus)      r2, r0, 0x8
             0x000808a8: 68 42:       or (3r)         r2, r2, r4
             0x000808aa: e2 17:       freer (1r)      res[r2]
.label76     0x000808ac: 01 90:       add (2rus)      r0, r0, 0x1
             0x000808ae: 21 30:       eq (3r)         r2, r0, r1
             0x000808b0: 92 7c:       bf (ru6)        r2, -0x12 <.label77>
             0x000808b2: 00 f0 97 d7: bl (lu10)       -0x397 <__main__main_tile_0>
             0x000808b6: 00 68:       ldc (ru6)       r0, 0x0
             0x000808b8: c2 77:       retsp (u6)      0x2
             0x000808ba: 00 00:       stw (2rus)      r0, r0[0x0]

<__libc_done>:
.label9      0x000808bc: 00 f0 42 77: entsp (lu6)     0x2
             0x000808c0: 00 68:       ldc (ru6)       r0, 0x0
             0x000808c2: 10 90:       add (2rus)      r1, r0, 0x0
             0x000808c4: 00 f0 46 d2: bl (lu10)       0x246 <__call_exitprocs>
             0x000808c8: 00 f0 4e d2: bl (lu10)       0x24e <_cleanup>
             0x000808cc: 00 f0 f5 d7: bl (lu10)       -0x3f5 <.label78>
             0x000808d0: 00 f0 50 d2: bl (lu10)       0x250 <_done>

<_exit_unlocked>:
.label10     0x000808d4: 00 f0 44 77: entsp (lu6)     0x4
             0x000808d8: 02 55:       stw (ru6)       r4, sp[0x2]
             0x000808da: 40 90:       add (2rus)      r4, r0, 0x0
             0x000808dc: 40 68:       ldc (ru6)       r1, 0x0
             0x000808de: 00 f0 39 d2: bl (lu10)       0x239 <__call_exitprocs>
             0x000808e2: 00 f0 41 d2: bl (lu10)       0x241 <_cleanup>
             0x000808e6: 01 f0 02 d4: bl (lu10)       -0x402 <.label78>
             0x000808ea: c0 90:       add (2rus)      r0, r4, 0x0
             0x000808ec: 00 f0 4a d2: bl (lu10)       0x24a <_exit>

<memset>:
.label2      0x000808f0: 00 f0 c2 6e: ldw (lru6)      r11, cp[0x2]
             0x000808f4: ff 17:       nop (0r)        
             0x000808f6: fb 27:       bau (1r)        r11

<__init_threadlocal_timer>:
.label3      0x000808f8: 00 f0 40 77: entsp (lu6)     0x0
             0x000808fc: c9 86:       getr (rus)      r2, 0x1
             0x000808fe: 00 f0 40 60: ldaw (lru6)     r1, dp[0x0]
             0x00080902: ee 17:       get (0r)        r11, id
             0x00080904: a7 fc ec 07: stw (l3r)       r2, r1[r11]
             0x00080908: c0 77:       retsp (u6)      0x0
             0x0008090a: 00 00:       stw (2rus)      r0, r0[0x0]

<__free_threadlocal_timer>:
.label13     0x0008090c: 00 f0 40 77: entsp (lu6)     0x0
             0x00080910: 00 f0 80 60: ldaw (lru6)     r2, dp[0x0]
             0x00080914: ee 17:       get (0r)        r11, id
             0x00080916: ab 4c:       ldw (3r)        r2, r2[r11]
             0x00080918: e2 17:       freer (1r)      res[r2]
             0x0008091a: c0 77:       retsp (u6)      0x0

<xscope_lock_init>:
             0x0008091c: ff 17:       nop (0r)        
             0x0008091e: 80 7f:       dualentsp (u6)  0x0
             0x00080920: 81 87:       getr (rus)      r0, 0x5
             0x00080922: ff 17:       nop (0r)        
             0x00080924: 01 f0 25 50: stw (lru6)      r0, dp[0x65]
             0x00080928: ff 17:       nop (0r)        
             0x0008092a: c0 77:       retsp (u6)      0x0

<xscope_lock_deinit>:
             0x0008092c: ff 17:       nop (0r)        
             0x0008092e: 80 7f:       dualentsp (u6)  0x0
             0x00080930: ff 17:       nop (0r)        
             0x00080932: c0 77:       retsp (u6)      0x0

<xscope_lock_acquire>:
             0x00080934: ff 17:       nop (0r)        
             0x00080936: 80 7f:       dualentsp (u6)  0x0
             0x00080938: 01 f0 65 58: ldw (lru6)      r1, dp[0x65]
             0x0008093c: 00 f0 42 70: bt (lru6)       r1, 0x2 <.label79>
             0x00080940: 85 87:       getr (rus)      r1, 0x5
             0x00080942: ff 17:       nop (0r)        
             0x00080944: 01 f0 65 50: stw (lru6)      r1, dp[0x65]
.label79     0x00080948: c5 b6:       in (2r)         r1, res[r1]
             0x0008094a: ff 17:       nop (0r)        
             0x0008094c: ff 17:       nop (0r)        
             0x0008094e: c0 77:       retsp (u6)      0x0

<xscope_lock_release>:
             0x00080950: ff 17:       nop (0r)        
             0x00080952: 80 7f:       dualentsp (u6)  0x0
             0x00080954: 01 f0 25 58: ldw (lru6)      r0, dp[0x65]
             0x00080958: c0 ae:       out (r2r)       res[r0], r0
             0x0008095a: ff 17:       nop (0r)        
             0x0008095c: ff 17:       nop (0r)        
             0x0008095e: c0 77:       retsp (u6)      0x0

<xscope_get_io_config>:
             0x00080960: ff 17:       nop (0r)        
             0x00080962: 80 7f:       dualentsp (u6)  0x0
             0x00080964: 00 f0 08 58: ldw (lru6)      r0, dp[0x8]
             0x00080968: ff 17:       nop (0r)        
             0x0008096a: c0 77:       retsp (u6)      0x0

<xscope_syscall_write>:
             0x0008096c: 00 f0 40 77: entsp (lu6)     0x0
             0x00080970: 38 90:       add (2rus)      r3, r2, 0x0
             0x00080972: 24 90:       add (2rus)      r2, r1, 0x0
             0x00080974: 10 90:       add (2rus)      r1, r0, 0x0
             0x00080976: 06 68:       ldc (ru6)       r0, 0x6
             0x00080978: 08 f0 28 73: bu (lu6)        0x228 <_DoSyscallErrno>

<xscope_user_init>:
             0x0008097c: ff 17:       nop (0r)        
             0x0008097e: 80 7f:       dualentsp (u6)  0x0
             0x00080980: ff 17:       nop (0r)        
             0x00080982: c0 77:       retsp (u6)      0x0

<xscope_constructor>:
             0x00080984: ff 17:       nop (0r)        
             0x00080986: 86 7f:       dualentsp (u6)  0x6
             0x00080988: 05 f9 ec f7: std (l2rus)     r5, r4, sp[0x1]
             0x0008098c: ff 17:       nop (0r)        
             0x0008098e: 84 55:       stw (ru6)       r6, sp[0x4]
             0x00080990: 00 f0 96 d0: bl (lu10)       0x96 <get_local_tile_id>
             0x00080994: 40 90:       add (2rus)      r4, r0, 0x0
             0x00080996: ff 17:       nop (0r)        
             0x00080998: 00 f0 16 d1: bl (lu10)       0x116 <xscope_gettime_local_timer>
             0x0008099c: 60 90:       add (2rus)      r6, r0, 0x0
             0x0008099e: ff 17:       nop (0r)        
             0x000809a0: 00 f0 1d d1: bl (lu10)       0x11d <xscope_start_ref_clock>
             0x000809a4: 00 f0 23 d4: bl (lu10)       -0x23 <xscope_lock_init>
             0x000809a8: 00 f0 3d d1: bl (lu10)       0x13d <xscope_tx_init>
             0x000809ac: 00 f0 12 78: bf (lru6)       r0, 0x12 <.label80>
             0x000809b0: 03 f0 09 68: ldc (lru6)      r0, 0xc9
             0x000809b4: 00 f0 26 d1: bl (lu10)       0x126 <xscope_tx_char>
             0x000809b8: 71 47:       zext (rus)      r4, 0x10
             0x000809ba: ff 17:       nop (0r)        
             0x000809bc: c4 07:       byterev (2r)    r5, r4
             0x000809be: ff 17:       nop (0r)        
             0x000809c0: c4 90:       add (2rus)      r0, r5, 0x0
             0x000809c2: ff 17:       nop (0r)        
             0x000809c4: 00 f0 25 d1: bl (lu10)       0x125 <xscope_tx_int>
             0x000809c8: 82 07:       byterev (2r)    r0, r6
             0x000809ca: ff 17:       nop (0r)        
             0x000809cc: 00 f0 23 d1: bl (lu10)       0x123 <xscope_tx_int>
             0x000809d0: 00 f0 30 d1: bl (lu10)       0x130 <xscope_tx_end>
             0x000809d4: 00 f0 17 d4: bl (lu10)       -0x17 <xscope_user_init>
             0x000809d8: 00 f0 0a 58: ldw (lru6)      r0, dp[0xa]
             0x000809dc: 00 f0 0a 78: bf (lru6)       r0, 0xa <.label81>
             0x000809e0: 67 68:       ldc (ru6)       r1, 0x27
             0x000809e2: ff 17:       nop (0r)        
             0x000809e4: 01 f0 a5 6c: ldw (lru6)      r2, cp[0x65]
             0x000809e8: c0 90:       add (2rus)      r0, r4, 0x0
             0x000809ea: ff 17:       nop (0r)        
             0x000809ec: 00 f0 66 d0: bl (lu10)       0x66 <write_pswitch_reg>
             0x000809f0: 11 a7:       mkmsk (rus)     r4, 0x1
             0x000809f2: ff 17:       nop (0r)        
             0x000809f4: 00 f0 05 73: bu (lu6)        0x5 <.label82>
.label80     0x000809f8: 00 f0 2d d1: bl (lu10)       0x12d <xscope_tx_deinit>
             0x000809fc: 00 f0 0d d1: bl (lu10)       0x10d <xscope_stop_ref_clock>
             0x00080a00: 00 f0 36 d4: bl (lu10)       -0x36 <xscope_lock_deinit>
             0x00080a04: 00 f0 14 73: bu (lu6)        0x14 <.label83>
.label81     0x00080a08: 00 69:       ldc (ru6)       r4, 0x0
             0x00080a0a: ff 17:       nop (0r)        
.label82     0x00080a0c: 03 f0 0b 68: ldc (lru6)      r0, 0xcb
             0x00080a10: 00 f0 0f d1: bl (lu10)       0x10f <xscope_tx_char>
             0x00080a14: c4 90:       add (2rus)      r0, r5, 0x0
             0x00080a16: ff 17:       nop (0r)        
             0x00080a18: 00 f0 10 d1: bl (lu10)       0x110 <xscope_tx_int>
             0x00080a1c: 00 68:       ldc (ru6)       r0, 0x0
             0x00080a1e: ff 17:       nop (0r)        
             0x00080a20: 00 f0 0e d1: bl (lu10)       0x10e <xscope_tx_int>
             0x00080a24: 01 f0 22 6c: ldw (lru6)      r0, cp[0x62]
             0x00080a28: 00 f0 0c d1: bl (lu10)       0x10c <xscope_tx_int>
             0x00080a2c: 00 f0 19 d1: bl (lu10)       0x119 <xscope_tx_end>
             0x00080a30: 00 f0 1f d1: bl (lu10)       0x11f <xscope_tx_deinit>
             0x00080a34: 00 f0 0a 58: ldw (lru6)      r0, dp[0xa]
             0x00080a38: 00 f0 04 78: bf (lru6)       r0, 0x4 <.label84>
             0x00080a3c: 00 f0 03 79: bf (lru6)       r4, 0x3 <.label84>
             0x00080a40: 9c f0 0b 68: ldc (lru6)      r0, 0x270b
.label85     0x00080a44: d4 fe ec 17: get (l2r)       r1, ps[r0]
             0x00080a48: 00 f0 42 74: bt (lru6)       r1, -0x2 <.label85>
.label84     0x00080a4c: 0f f0 28 68: ldc (lru6)      r0, 0x3e8
             0x00080a50: 00 f0 ea d0: bl (lu10)       0xea <xscope_wait>
             0x00080a54: 00 f0 f7 d0: bl (lu10)       0xf7 <xscope_stop_ref_clock>
.label83     0x00080a58: ff 17:       nop (0r)        
             0x00080a5a: 84 5d:       ldw (ru6)       r6, sp[0x4]
             0x00080a5c: 05 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x1]
             0x00080a60: ff 17:       nop (0r)        
             0x00080a62: c6 77:       retsp (u6)      0x6

<xscope_syscall_data_write>:
             0x00080a64: ff 17:       nop (0r)        
             0x00080a66: 88 7f:       dualentsp (u6)  0x8
             0x00080a68: 05 f9 ec f7: std (l2rus)     r5, r4, sp[0x1]
             0x00080a6c: 2e f9 ec f7: std (l2rus)     r7, r6, sp[0x2]
             0x00080a70: 4c 90:       add (2rus)      r4, r3, 0x0
             0x00080a72: 06 56:       stw (ru6)       r8, sp[0x6]
             0x00080a74: 58 90:       add (2rus)      r5, r2, 0x0
             0x00080a76: 64 90:       add (2rus)      r6, r1, 0x0
             0x00080a78: 70 90:       add (2rus)      r7, r0, 0x0
             0x00080a7a: ff 17:       nop (0r)        
             0x00080a7c: 00 f0 53 d4: bl (lu10)       -0x53 <xscope_lock_acquire>
             0x00080a80: 00 f0 da d0: bl (lu10)       0xda <xscope_gettime>
             0x00080a84: 80 90:       add (2rus)      r8, r0, 0x0
             0x00080a86: cc 90:       add (2rus)      r0, r7, 0x0
             0x00080a88: 00 f0 f1 d0: bl (lu10)       0xf1 <xscope_tx_char>
             0x00080a8c: 90 a7:       mkmsk (rus)     r0, 0x4
             0x00080a8e: ff 17:       nop (0r)        
             0x00080a90: 00 f0 ef d0: bl (lu10)       0xef <xscope_tx_char>
             0x00080a94: 20 07:       byterev (2r)    r0, r8
             0x00080a96: ff 17:       nop (0r)        
             0x00080a98: 00 f0 f0 d0: bl (lu10)       0xf0 <xscope_tx_int>
             0x00080a9c: 04 93:       add (2rus)      r0, r5, 0x4
             0x00080a9e: ff 17:       nop (0r)        
             0x00080aa0: c0 06:       byterev (2r)    r0, r0
             0x00080aa2: ff 17:       nop (0r)        
             0x00080aa4: 00 f0 ed d0: bl (lu10)       0xed <xscope_tx_int>
             0x00080aa8: 82 07:       byterev (2r)    r0, r6
             0x00080aaa: ff 17:       nop (0r)        
             0x00080aac: 00 f0 eb d0: bl (lu10)       0xeb <xscope_tx_int>
             0x00080ab0: 00 f0 45 79: bf (lru6)       r5, 0x5 <.label86>
             0x00080ab4: 80 69:       ldc (ru6)       r6, 0x0
             0x00080ab6: ff 17:       nop (0r)        
.label87     0x00080ab8: ff 17:       nop (0r)        
             0x00080aba: 02 8b:       ld8u (3r)       r0, r4[r6]
             0x00080abc: 00 f0 e4 d0: bl (lu10)       0xe4 <xscope_tx_char>
             0x00080ac0: 15 99:       sub (2rus)      r5, r5, 0x1
             0x00080ac2: 01 91:       add (2rus)      r4, r4, 0x1
             0x00080ac4: 00 f0 44 75: bt (lru6)       r5, -0x4 <.label87>
.label86     0x00080ac8: 00 f0 f2 d0: bl (lu10)       0xf2 <xscope_tx_end>
             0x00080acc: 00 f0 60 d4: bl (lu10)       -0x60 <xscope_lock_release>
             0x00080ad0: ff 17:       nop (0r)        
             0x00080ad2: 06 5e:       ldw (ru6)       r8, sp[0x6]
             0x00080ad4: 2e f9 ec ef: ldd (l2rus)     r7, r6, sp[0x2]
             0x00080ad8: 05 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x1]
             0x00080adc: ff 17:       nop (0r)        
             0x00080ade: c8 77:       retsp (u6)      0x8

<delay_ticks>:
             0x00080ae0: 00 f0 40 77: entsp (lu6)     0x0
             0x00080ae4: e1 8f:       gettime (1r)    r1
             0x00080ae6: ee 17:       get (0r)        r11, id
             0x00080ae8: 00 f0 80 60: ldaw (lru6)     r2, dp[0x0]
             0x00080aec: ab 4c:       ldw (3r)        r2, r2[r11]
             0x00080aee: 30 f8 ec 97: ashr (l2rus)    r3, r0, 0x20
             0x00080af2: c6 78:       bf (ru6)        r3, 0x6 <.label88>
             0x00080af4: 01 f0 ed 6c: ldw (lru6)      r3, cp[0x6d]
             0x00080af8: 37 10:       add (3r)        r3, r1, r3
             0x00080afa: de 16:       setd (r2r)      res[r2], r3
             0x00080afc: 89 e8:       setc (ru6)      res[r2], 0x9
             0x00080afe: ce b6:       in (2r)         r3, res[r2]
.label88     0x00080b00: 04 10:       add (3r)        r0, r1, r0
             0x00080b02: d2 16:       setd (r2r)      res[r2], r0
             0x00080b04: 89 e8:       setc (ru6)      res[r2], 0x9
             0x00080b06: c2 b6:       in (2r)         r0, res[r2]
             0x00080b08: c0 77:       retsp (u6)      0x0
             0x00080b0a: 00 00:       stw (2rus)      r0, r0[0x0]

<__start_other_cores>:
             0x00080b0c: 00 f0 44 77: entsp (lu6)     0x4
             0x00080b10: 01 55:       stw (ru6)       r4, sp[0x1]
             0x00080b12: 42 55:       stw (ru6)       r5, sp[0x2]
             0x00080b14: ed 07:       clre (0r)       
             0x00080b16: 07 87:       getr (rus)      r5, 0x3
             0x00080b18: 44 08:       ldw (2rus)      r4, r1[0x0]
             0x00080b1a: 80 64:       ldaw (ru6)      r2, sp[0x0]
.label89     0x00080b1c: 00 f0 ce d9: ldap (lu10)     r11, 0x1ce <__start_core>
             0x00080b20: 9d 07:       getst (2r)      r3, res[r5]
             0x00080b22: 5f ff ec 07: init (l2r)      t[r3]:pc, r11
             0x00080b26: 03 f8 ec b7: set (l3r)       t[r3]:r0, r0
             0x00080b2a: d3 f8 ec b7: set (l3r)       t[r3]:r1, r4
             0x00080b2e: 45 08:       ldw (2rus)      r4, r1[0x1]
             0x00080b30: 01 91:       add (2rus)      r4, r4, 0x1
             0x00080b32: c1 6a:       ldc (ru6)       r11, 0x1
             0x00080b34: f3 3d:       and (3r)        r11, r4, r11
             0x00080b36: 83 15:       add (3r)        r4, r4, r11
             0x00080b38: 02 a1:       shl (2rus)      r4, r4, 0x2
             0x00080b3a: 68 1a:       sub (3r)        r2, r2, r4
             0x00080b3c: cb fe ec 07: init (l2r)      t[r3]:sp, r2
             0x00080b40: 94 94:       add (2rus)      r1, r1, 0x8
             0x00080b42: 44 08:       ldw (2rus)      r4, r1[0x0]
             0x00080b44: 15 75:       bt (ru6)        r4, -0x15 <.label89>
             0x00080b46: f5 1f:       msync (1r)      res[r5]
             0x00080b48: b5 08:       ldw (2rus)      r11, r1[0x1]
             0x00080b4a: eb 27:       bla (1r)        r11
             0x00080b4c: f5 17:       mjoin (1r)      res[r5]
             0x00080b4e: e5 17:       freer (1r)      res[r5]
             0x00080b50: 01 5d:       ldw (ru6)       r4, sp[0x1]
             0x00080b52: 42 5d:       ldw (ru6)       r5, sp[0x2]
             0x00080b54: c4 77:       retsp (u6)      0x4
             0x00080b56: 00 00:       stw (2rus)      r0, r0[0x0]

<atexit>:
             0x00080b58: 00 f0 42 77: entsp (lu6)     0x2
             0x00080b5c: 10 90:       add (2rus)      r1, r0, 0x0
             0x00080b5e: 00 68:       ldc (ru6)       r0, 0x0
             0x00080b60: 20 90:       add (2rus)      r2, r0, 0x0
             0x00080b62: 30 90:       add (2rus)      r3, r0, 0x0
             0x00080b64: 00 f0 b6 d1: bl (lu10)       0x1b6 <__register_exitproc>
             0x00080b68: c2 77:       retsp (u6)      0x2
             0x00080b6a: 00 00:       stw (2rus)      r0, r0[0x0]

<strlen>:
             0x00080b6c: 00 f0 40 77: entsp (lu6)     0x0
             0x00080b70: 21 98:       sub (2rus)      r2, r0, 0x1
             0x00080b72: d5 a6:       mkmsk (rus)     r1, 0x1
.label90     0x00080b74: 39 90:       add (2rus)      r3, r2, 0x1
             0x00080b76: b9 88:       ld8u (3r)       r11, r2[r1]
             0x00080b78: 2c 90:       add (2rus)      r2, r3, 0x0
             0x00080b7a: c4 76:       bt (ru6)        r11, -0x4 <.label90>
             0x00080b7c: 0c 18:       sub (3r)        r0, r3, r0
             0x00080b7e: c0 77:       retsp (u6)      0x0

<memcpy>:
<__memcpy_4>:
             0x00080b80: 00 f0 c3 6e: ldw (lru6)      r11, cp[0x3]
             0x00080b84: ff 17:       nop (0r)        
             0x00080b86: fb 27:       bau (1r)        r11

<write_pswitch_reg>:
             0x00080b88: 00 f0 40 77: entsp (lu6)     0x0
             0x00080b8c: 08 f3 cc 68: ldc (lru6)      r3, 0xc20c
             0x00080b90: c1 6a:       ldc (ru6)       r11, 0x1
             0x00080b92: 00 f0 01 73: bu (lu6)        0x1 <write_switch_reg>
             0x00080b96: 00 00:       stw (2rus)      r0, r0[0x0]

<write_switch_reg>:
             0x00080b98: 00 f0 40 77: entsp (lu6)     0x0
             0x00080b9c: 00 55:       stw (ru6)       r4, sp[0x0]
             0x00080b9e: c1 ac:       shr (2rus)      r4, r0, 0x10
             0x00080ba0: 1e 71:       bt (ru6)        r4, 0x1e <write_switch_reg_return_0>
             0x00080ba2: c5 ac:       shr (2rus)      r4, r1, 0x10
             0x00080ba4: 1c 71:       bt (ru6)        r4, 0x1c <write_switch_reg_return_0>
             0x00080ba6: 81 a4:       shl (2rus)      r0, r0, 0x10
             0x00080ba8: 03 40:       or (3r)         r0, r0, r3
             0x00080baa: 02 87:       getr (rus)      r4, 0x2
             0x00080bac: 90 17:       setd (r2r)      res[r4], r0
             0x00080bae: 03 f0 c0 68: ldc (lru6)      r3, 0xc0
             0x00080bb2: 03 4f:       outct (2r)      res[r4], r3
             0x00080bb4: c3 7a:       bf (ru6)        r11, 0x3 <build_return_no_ack>
             0x00080bb6: 40 ad:       shr (2rus)      r0, r4, 0x8
             0x00080bb8: 80 a4:       shl (2rus)      r0, r0, 0x8
             0x00080bba: 04 73:       bu (u6)         0x4 <write_switch_reg_send>

<build_return_no_ack>:
             0x00080bbc: 80 ac:       shr (2rus)      r0, r0, 0x8
             0x00080bbe: 3c a7:       mkmsk (rus)     r3, 0x8
             0x00080bc0: 03 40:       or (3r)         r0, r0, r3
             0x00080bc2: 80 a4:       shl (2rus)      r0, r0, 0x8

<write_switch_reg_send>:
             0x00080bc4: b4 ac:       shr (2rus)      r3, r1, 0x8
             0x00080bc6: 03 40:       or (3r)         r0, r0, r3
             0x00080bc8: 80 af:       out (r2r)       res[r4], r0
             0x00080bca: 94 0f:       outt (r2r)      res[r4], r1
             0x00080bcc: 88 af:       out (r2r)       res[r4], r2
             0x00080bce: 11 4f:       outct (rus)     res[r4], 0x1
             0x00080bd0: c9 7a:       bf (ru6)        r11, 0x9 <write_switch_reg_free_and_return_1>
             0x00080bd2: 90 87:       inct (2r)       r0, res[r4]
             0x00080bd4: 03 b0:       eq (2rus)       r0, r0, 0x3
             0x00080bd6: 11 cf:       chkct (rus)     res[r4], 0x1
             0x00080bd8: e4 17:       freer (1r)      res[r4]
             0x00080bda: 00 5d:       ldw (ru6)       r4, sp[0x0]
             0x00080bdc: c0 77:       retsp (u6)      0x0

<write_switch_reg_return_0>:
             0x00080bde: 00 68:       ldc (ru6)       r0, 0x0
             0x00080be0: 00 5d:       ldw (ru6)       r4, sp[0x0]
             0x00080be2: c0 77:       retsp (u6)      0x0

<write_switch_reg_free_and_return_1>:
             0x00080be4: e4 17:       freer (1r)      res[r4]
             0x00080be6: 01 68:       ldc (ru6)       r0, 0x1
             0x00080be8: 00 5d:       ldw (ru6)       r4, sp[0x0]
             0x00080bea: c0 77:       retsp (u6)      0x0

<get_local_tile_id>:
             0x00080bec: 00 f0 40 77: entsp (lu6)     0x0
             0x00080bf0: 00 f2 02 68: ldc (lru6)      r0, 0x8002
             0x00080bf4: c0 77:       retsp (u6)      0x0
             0x00080bf6: 00 00:       stw (2rus)      r0, r0[0x0]

<__free>:
             0x00080bf8: 00 f0 40 77: entsp (lu6)     0x0
             0x00080bfc: 84 77:       extsp (u6)      0x4
             0x00080bfe: 04 f9 ec f7: std (l2rus)     r5, r4, sp[0x0]
             0x00080c02: 82 55:       stw (ru6)       r6, sp[0x2]
             0x00080c04: 2e 78:       bf (ru6)        r0, 0x2e <.label91>
             0x00080c06: 40 9a:       sub (2rus)      r0, r0, 0x4
             0x00080c08: 01 f0 66 58: ldw (lru6)      r1, dp[0x66]
             0x00080c0c: c0 68:       ldc (ru6)       r3, 0x0
             0x00080c0e: 50 78:       bf (ru6)        r1, 0x10 <.label92>
             0x00080c10: b0 08:       ldw (2rus)      r11, r0[0x0]
             0x00080c12: cc 11:       add (3r)        r4, r11, r0
             0x00080c14: 01 f0 a6 60: ldaw (lru6)     r2, dp[0x66]
.label96     0x00080c18: 54 08:       ldw (2rus)      r5, r1[0x0]
             0x00080c1a: 25 11:       add (3r)        r6, r5, r1
             0x00080c1c: 28 31:       eq (3r)         r6, r6, r0
             0x00080c1e: 8b 71:       bt (ru6)        r6, 0xb <.label93>
             0x00080c20: a4 32:       eq (3r)         r6, r1, r4
             0x00080c22: 97 71:       bt (ru6)        r6, 0x17 <.label94>
             0x00080c24: 51 c8:       lsu (3r)        r5, r0, r1
             0x00080c26: 5a 71:       bt (ru6)        r5, 0x1a <.label95>
             0x00080c28: 64 92:       add (2rus)      r2, r1, 0x4
             0x00080c2a: 18 08:       ldw (2rus)      r1, r2[0x0]
             0x00080c2c: 4b 74:       bt (ru6)        r1, -0xb <.label96>
             0x00080c2e: 17 73:       bu (u6)         0x17 <.label97>
.label92     0x00080c30: 01 f0 a6 60: ldaw (lru6)     r2, dp[0x66]
             0x00080c34: 14 73:       bu (u6)         0x14 <.label97>
.label93     0x00080c36: ed 13:       add (3r)        r2, r11, r5
             0x00080c38: 24 00:       stw (2rus)      r2, r1[0x0]
             0x00080c3a: 35 08:       ldw (2rus)      r3, r1[0x1]
             0x00080c3c: d2 78:       bf (ru6)        r3, 0x12 <.label91>
             0x00080c3e: b0 08:       ldw (2rus)      r11, r0[0x0]
             0x00080c40: 8c 11:       add (3r)        r0, r11, r0
             0x00080c42: 03 30:       eq (3r)         r0, r0, r3
             0x00080c44: 0e 78:       bf (ru6)        r0, 0xe <.label91>
             0x00080c46: 0c 08:       ldw (2rus)      r0, r3[0x0]
             0x00080c48: 02 10:       add (3r)        r0, r0, r2
             0x00080c4a: 04 00:       stw (2rus)      r0, r1[0x0]
             0x00080c4c: 0d 08:       ldw (2rus)      r0, r3[0x1]
             0x00080c4e: 05 00:       stw (2rus)      r0, r1[0x1]
             0x00080c50: 08 73:       bu (u6)         0x8 <.label91>
.label94     0x00080c52: fd 13:       add (3r)        r3, r11, r5
             0x00080c54: 30 00:       stw (2rus)      r3, r0[0x0]
             0x00080c56: 15 08:       ldw (2rus)      r1, r1[0x1]
             0x00080c58: 11 00:       stw (2rus)      r1, r0[0x1]
             0x00080c5a: 02 73:       bu (u6)         0x2 <.label98>
.label95     0x00080c5c: 34 90:       add (2rus)      r3, r1, 0x0
.label97     0x00080c5e: 31 00:       stw (2rus)      r3, r0[0x1]
.label98     0x00080c60: 08 00:       stw (2rus)      r0, r2[0x0]
.label91     0x00080c62: 82 5d:       ldw (ru6)       r6, sp[0x2]
             0x00080c64: 04 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x0]
             0x00080c68: 84 67:       ldaw (ru6)      sp, sp[0x4]
             0x00080c6a: c0 77:       retsp (u6)      0x0

<free>:
             0x00080c6c: 00 f0 44 77: entsp (lu6)     0x4
             0x00080c70: 02 55:       stw (ru6)       r4, sp[0x2]
             0x00080c72: 40 90:       add (2rus)      r4, r0, 0x0
             0x00080c74: 00 f0 e4 d1: bl (lu10)       0x1e4 <__malloc_lock>
             0x00080c78: c0 90:       add (2rus)      r0, r4, 0x0
             0x00080c7a: 00 f0 43 d4: bl (lu10)       -0x43 <__free>
             0x00080c7e: 00 f0 e7 d1: bl (lu10)       0x1e7 <__malloc_unlock>
             0x00080c82: 02 5d:       ldw (ru6)       r4, sp[0x2]
             0x00080c84: c4 77:       retsp (u6)      0x4
             0x00080c86: 00 00:       stw (2rus)      r0, r0[0x0]

<__malloc>:
             0x00080c88: 00 f0 40 77: entsp (lu6)     0x0
             0x00080c8c: 84 77:       extsp (u6)      0x4
             0x00080c8e: 04 f9 ec f7: std (l2rus)     r5, r4, sp[0x0]
             0x00080c92: 82 55:       stw (ru6)       r6, sp[0x2]
             0x00080c94: 44 68:       ldc (ru6)       r1, 0x4
             0x00080c96: 11 c8:       lsu (3r)        r1, r0, r1
             0x00080c98: 42 78:       bf (ru6)        r1, 0x2 <.label99>
             0x00080c9a: 48 68:       ldc (ru6)       r1, 0x8
             0x00080c9c: 06 73:       bu (u6)         0x6 <.label100>
.label99     0x00080c9e: 01 f0 6c 6c: ldw (lru6)      r1, cp[0x6c]
             0x00080ca2: 14 18:       sub (3r)        r1, r1, r0
             0x00080ca4: d7 46:       zext (rus)      r1, 0x3
             0x00080ca6: 11 10:       add (3r)        r1, r0, r1
             0x00080ca8: 54 92:       add (2rus)      r1, r1, 0x4
.label100    0x00080caa: 24 c8:       lsu (3r)        r2, r1, r0
             0x00080cac: 00 68:       ldc (ru6)       r0, 0x0
             0x00080cae: bc 70:       bt (ru6)        r2, 0x3c <.label101>
             0x00080cb0: 01 f0 66 59: ldw (lru6)      r5, dp[0x66]
             0x00080cb4: 00 f0 d2 5a: ldw (lru6)      r11, dp[0x12]
             0x00080cb8: 4d 79:       bf (ru6)        r5, 0xd <.label102>
             0x00080cba: 01 f0 a6 61: ldaw (lru6)     r6, dp[0x66]
.label104    0x00080cbe: f8 90:       add (2rus)      r3, r6, 0x0
             0x00080cc0: e4 90:       add (2rus)      r2, r5, 0x0
             0x00080cc2: 48 08:       ldw (2rus)      r4, r2[0x0]
             0x00080cc4: 11 c9:       lsu (3r)        r5, r4, r1
             0x00080cc6: 52 79:       bf (ru6)        r5, 0x12 <.label103>
             0x00080cc8: a8 92:       add (2rus)      r6, r2, 0x4
             0x00080cca: 59 08:       ldw (2rus)      r5, r2[0x1]
             0x00080ccc: 48 75:       bt (ru6)        r5, -0x8 <.label104>
             0x00080cce: 12 11:       add (3r)        r5, r4, r2
             0x00080cd0: 1d 34:       eq (3r)         r5, r11, r5
             0x00080cd2: 5a 71:       bt (ru6)        r5, 0x1a <.label105>
.label102    0x00080cd4: 00 f0 91 58: ldw (lru6)      r2, dp[0x11]
             0x00080cd8: a8 fc ec a7: ldaw (l2rus)    r2, r2[-0x8]
             0x00080cdc: ab 1c:       sub (3r)        r2, r2, r11
             0x00080cde: 29 c8:       lsu (3r)        r2, r2, r1
             0x00080ce0: a3 70:       bt (ru6)        r2, 0x23 <.label101>
             0x00080ce2: 8d 11:       add (3r)        r0, r11, r1
             0x00080ce4: 00 f0 12 50: stw (lru6)      r0, dp[0x12]
             0x00080ce8: ac 91:       add (2rus)      r2, r11, 0x0
             0x00080cea: 1c 73:       bu (u6)         0x1c <.label106>
.label103    0x00080cec: 84 94:       add (2rus)      r0, r1, 0x8
             0x00080cee: c0 c8:       lsu (3r)        r0, r4, r0
             0x00080cf0: 04 78:       bf (ru6)        r0, 0x4 <.label107>
             0x00080cf2: 48 92:       add (2rus)      r0, r2, 0x4
             0x00080cf4: 19 08:       ldw (2rus)      r1, r2[0x1]
             0x00080cf6: 1c 00:       stw (2rus)      r1, r3[0x0]
             0x00080cf8: 17 73:       bu (u6)         0x17 <.label101>
.label107    0x00080cfa: c1 18:       sub (3r)        r0, r4, r1
             0x00080cfc: b9 08:       ldw (2rus)      r11, r2[0x1]
             0x00080cfe: 49 10:       add (3r)        r4, r2, r1
             0x00080d00: 4c 00:       stw (2rus)      r4, r3[0x0]
             0x00080d02: c0 00:       stw (2rus)      r0, r4[0x0]
             0x00080d04: 71 01:       stw (2rus)      r11, r4[0x1]
             0x00080d06: 0e 73:       bu (u6)         0xe <.label106>
.label105    0x00080d08: 84 1a:       sub (3r)        r4, r1, r4
             0x00080d0a: 00 f0 51 59: ldw (lru6)      r5, dp[0x11]
             0x00080d0e: 01 f0 a9 6d: ldw (lru6)      r6, cp[0x69]
             0x00080d12: fb 1d:       sub (3r)        r11, r6, r11
             0x00080d14: 7d 14:       add (3r)        r11, r11, r5
             0x00080d16: 7c cc:       lsu (3r)        r11, r11, r4
             0x00080d18: c7 72:       bt (ru6)        r11, 0x7 <.label101>
             0x00080d1a: 00 68:       ldc (ru6)       r0, 0x0
             0x00080d1c: 0c 00:       stw (2rus)      r0, r3[0x0]
             0x00080d1e: 09 10:       add (3r)        r0, r2, r1
             0x00080d20: 00 f0 12 50: stw (lru6)      r0, dp[0x12]
.label106    0x00080d24: 18 00:       stw (2rus)      r1, r2[0x0]
             0x00080d26: 48 92:       add (2rus)      r0, r2, 0x4
.label101    0x00080d28: 82 5d:       ldw (ru6)       r6, sp[0x2]
             0x00080d2a: 04 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x0]
             0x00080d2e: 84 67:       ldaw (ru6)      sp, sp[0x4]
             0x00080d30: c0 77:       retsp (u6)      0x0
             0x00080d32: 00 00:       stw (2rus)      r0, r0[0x0]

<malloc>:
             0x00080d34: 00 f0 44 77: entsp (lu6)     0x4
             0x00080d38: 02 55:       stw (ru6)       r4, sp[0x2]
             0x00080d3a: 40 90:       add (2rus)      r4, r0, 0x0
             0x00080d3c: 00 f0 80 d1: bl (lu10)       0x180 <__malloc_lock>
             0x00080d40: c0 90:       add (2rus)      r0, r4, 0x0
             0x00080d42: 00 f0 5f d4: bl (lu10)       -0x5f <__malloc>
             0x00080d46: 40 90:       add (2rus)      r4, r0, 0x0
             0x00080d48: 00 f0 82 d1: bl (lu10)       0x182 <__malloc_unlock>
             0x00080d4c: c0 90:       add (2rus)      r0, r4, 0x0
             0x00080d4e: 02 5d:       ldw (ru6)       r4, sp[0x2]
             0x00080d50: c4 77:       retsp (u6)      0x4
             0x00080d52: 00 00:       stw (2rus)      r0, r0[0x0]

<__call_exitprocs>:
             0x00080d54: 00 f0 42 77: entsp (lu6)     0x2
             0x00080d58: 00 f0 0c d1: bl (lu10)       0x10c <__call_exitprocs_impl>
             0x00080d5c: c2 77:       retsp (u6)      0x2
             0x00080d5e: 00 00:       stw (2rus)      r0, r0[0x0]

<_cleanup_impl>:
             0x00080d60: 00 f0 40 77: entsp (lu6)     0x0
             0x00080d64: c0 77:       retsp (u6)      0x0
             0x00080d66: 00 00:       stw (2rus)      r0, r0[0x0]

<_cleanup>:
             0x00080d68: 00 f0 42 77: entsp (lu6)     0x2
             0x00080d6c: 00 f0 08 d4: bl (lu10)       -0x8 <_cleanup_impl>
             0x00080d70: c2 77:       retsp (u6)      0x2
             0x00080d72: 00 00:       stw (2rus)      r0, r0[0x0]

<_done>:
             0x00080d74: 00 f0 40 77: entsp (lu6)     0x0
             0x00080d78: 07 68:       ldc (ru6)       r0, 0x7
             0x00080d7a: 00 f0 71 d1: bl (lu10)       0x171 <_DoSyscall>
             0x00080d7e: ed 07:       clre (0r)       
             0x00080d80: ec 07:       waiteu (0r)     
             0x00080d82: 00 00:       stw (2rus)      r0, r0[0x0]

<_exit>:
             0x00080d84: 00 f0 40 77: entsp (lu6)     0x0
             0x00080d88: 10 90:       add (2rus)      r1, r0, 0x0
             0x00080d8a: 00 68:       ldc (ru6)       r0, 0x0
             0x00080d8c: 00 f0 68 d1: bl (lu10)       0x168 <_DoSyscall>
             0x00080d90: ed 07:       clre (0r)       
             0x00080d92: ec 07:       waiteu (0r)     

<__alloc_libc_hwlock>:
.label12     0x00080d94: 00 f0 40 77: entsp (lu6)     0x0
             0x00080d98: 81 87:       getr (rus)      r0, 0x5
             0x00080d9a: 01 f0 27 50: stw (lru6)      r0, dp[0x67]
             0x00080d9e: c0 77:       retsp (u6)      0x0

<__lock_fair_acquire>:
             0x00080da0: 00 f0 40 77: entsp (lu6)     0x0
             0x00080da4: 01 f0 67 58: ldw (lru6)      r1, dp[0x67]
             0x00080da8: c5 b6:       in (2r)         r1, res[r1]
             0x00080daa: 10 08:       ldw (2rus)      r1, r0[0x0]
             0x00080dac: 25 90:       add (2rus)      r2, r1, 0x1
             0x00080dae: 20 00:       stw (2rus)      r2, r0[0x0]
             0x00080db0: 01 f0 a7 58: ldw (lru6)      r2, dp[0x67]
             0x00080db4: ca ae:       out (r2r)       res[r2], r2
.label108    0x00080db6: 21 08:       ldw (2rus)      r2, r0[0x1]
             0x00080db8: 29 30:       eq (3r)         r2, r2, r1
             0x00080dba: 83 7c:       bf (ru6)        r2, -0x3 <.label108>
             0x00080dbc: c0 77:       retsp (u6)      0x0
             0x00080dbe: 00 00:       stw (2rus)      r0, r0[0x0]

<__lock_fair_release>:
             0x00080dc0: 00 f0 40 77: entsp (lu6)     0x0
             0x00080dc4: 11 08:       ldw (2rus)      r1, r0[0x1]
             0x00080dc6: 15 90:       add (2rus)      r1, r1, 0x1
             0x00080dc8: 11 00:       stw (2rus)      r1, r0[0x1]
             0x00080dca: c0 77:       retsp (u6)      0x0

<_DoSyscallErrno>:
             0x00080dcc: 00 f0 42 77: entsp (lu6)     0x2
             0x00080dd0: 00 f0 46 d1: bl (lu10)       0x146 <_DoSyscall>
             0x00080dd4: c4 8e:       not (2r)        r1, r0
             0x00080dd6: 57 aa:       shr (2rus)      r1, r1, 0x7
             0x00080dd8: 41 78:       bf (ru6)        r1, 0x1 <.label109>
             0x00080dda: c2 77:       retsp (u6)      0x2
.label109    0x00080ddc: c4 96:       neg (2r)        r1, r0
             0x00080dde: 41 54:       stw (ru6)       r1, sp[0x1]
             0x00080de0: 00 f0 42 d1: bl (lu10)       0x142 <__errno>
             0x00080de4: 41 5c:       ldw (ru6)       r1, sp[0x1]
             0x00080de6: 10 00:       stw (2rus)      r1, r0[0x0]
             0x00080de8: d0 a6:       mkmsk (rus)     r0, 0x20
             0x00080dea: c2 77:       retsp (u6)      0x2

<xscope_gettime>:
             0x00080dec: e0 8f:       gettime (1r)    r0
             0x00080dee: 80 7f:       dualentsp (u6)  0x0
             0x00080df0: ff 17:       nop (0r)        
             0x00080df2: c0 77:       retsp (u6)      0x0

<xscope_gettime_local_timer>:
             0x00080df4: e0 8f:       gettime (1r)    r0
             0x00080df6: 80 7f:       dualentsp (u6)  0x0
             0x00080df8: ff 17:       nop (0r)        
             0x00080dfa: c0 77:       retsp (u6)      0x0

<xscope_wait>:
             0x00080dfc: c5 86:       getr (rus)      r1, 0x1
             0x00080dfe: 80 7f:       dualentsp (u6)  0x0
             0x00080e00: e2 8f:       gettime (1r)    r2
             0x00080e02: ff 17:       nop (0r)        
             0x00080e04: 08 10:       add (3r)        r0, r2, r0
             0x00080e06: ff 17:       nop (0r)        
             0x00080e08: d1 16:       setd (r2r)      res[r1], r0
             0x00080e0a: ff 17:       nop (0r)        
             0x00080e0c: 49 e8:       setc (ru6)      res[r1], 0x9
             0x00080e0e: ff 17:       nop (0r)        
             0x00080e10: c1 b6:       in (2r)         r0, res[r1]
             0x00080e12: ff 17:       nop (0r)        
             0x00080e14: e1 17:       freer (1r)      res[r1]
             0x00080e16: c0 77:       retsp (u6)      0x0

<xscope_start_ref_clock>:
             0x00080e18: ff 17:       nop (0r)        
             0x00080e1a: 80 7f:       dualentsp (u6)  0x0
             0x00080e1c: 00 f0 13 58: ldw (lru6)      r0, dp[0x13]
             0x00080e20: 48 68:       ldc (ru6)       r1, 0x8
             0x00080e22: ff 17:       nop (0r)        
             0x00080e24: d1 fe ec 2f: setc (l2r)      res[r0], r1
             0x00080e28: 94 a7:       mkmsk (rus)     r1, 0x4
             0x00080e2a: ff 17:       nop (0r)        
             0x00080e2c: d1 fe ec 2f: setc (l2r)      res[r0], r1
             0x00080e30: 00 68:       ldc (ru6)       r0, 0x0
             0x00080e32: c0 77:       retsp (u6)      0x0

<xscope_stop_ref_clock>:
             0x00080e34: ff 17:       nop (0r)        
             0x00080e36: 80 7f:       dualentsp (u6)  0x0
             0x00080e38: 00 f0 53 58: ldw (lru6)      r1, dp[0x13]
             0x00080e3c: d3 a6:       mkmsk (rus)     r0, 0x3
             0x00080e3e: ff 17:       nop (0r)        
             0x00080e40: d4 fe ec 2f: setc (l2r)      res[r1], r0
             0x00080e44: 00 68:       ldc (ru6)       r0, 0x0
             0x00080e46: ff 17:       nop (0r)        
             0x00080e48: d4 fe ec 2f: setc (l2r)      res[r1], r0
             0x00080e4c: ff 17:       nop (0r)        
             0x00080e4e: c0 77:       retsp (u6)      0x0

<xscope_tx_char>:
             0x00080e50: ff 17:       nop (0r)        
             0x00080e52: 82 7f:       dualentsp (u6)  0x2
             0x00080e54: 00 f0 88 d0: bl (lu10)       0x88 <xscope_xlink_put_ch>
             0x00080e58: ff 17:       nop (0r)        
             0x00080e5a: c2 77:       retsp (u6)      0x2

<xscope_tx_int>:
             0x00080e5c: ff 17:       nop (0r)        
             0x00080e5e: 84 7f:       dualentsp (u6)  0x4
             0x00080e60: 40 90:       add (2rus)      r4, r0, 0x0
             0x00080e62: 02 55:       stw (ru6)       r4, sp[0x2]
             0x00080e64: 30 47:       zext (rus)      r0, 0x8
             0x00080e66: ff 17:       nop (0r)        
             0x00080e68: 00 f0 83 d0: bl (lu10)       0x83 <xscope_xlink_put_ch>
             0x00080e6c: 40 ad:       shr (2rus)      r0, r4, 0x8
             0x00080e6e: ff 17:       nop (0r)        
             0x00080e70: 30 47:       zext (rus)      r0, 0x8
             0x00080e72: ff 17:       nop (0r)        
             0x00080e74: 00 f0 80 d0: bl (lu10)       0x80 <xscope_xlink_put_ch>
             0x00080e78: 41 ad:       shr (2rus)      r0, r4, 0x10
             0x00080e7a: ff 17:       nop (0r)        
             0x00080e7c: 30 47:       zext (rus)      r0, 0x8
             0x00080e7e: ff 17:       nop (0r)        
             0x00080e80: 00 f0 7d d0: bl (lu10)       0x7d <xscope_xlink_put_ch>
             0x00080e84: 42 ad:       shr (2rus)      r0, r4, 0x18
             0x00080e86: ff 17:       nop (0r)        
             0x00080e88: 00 f0 7b d0: bl (lu10)       0x7b <xscope_xlink_put_ch>
             0x00080e8c: ff 17:       nop (0r)        
             0x00080e8e: 02 5d:       ldw (ru6)       r4, sp[0x2]
             0x00080e90: ff 17:       nop (0r)        
             0x00080e92: c4 77:       retsp (u6)      0x4

<xscope_tx_end>:
             0x00080e94: ff 17:       nop (0r)        
             0x00080e96: 82 7f:       dualentsp (u6)  0x2
             0x00080e98: 00 f0 8c d0: bl (lu10)       0x8c <xscope_xlink_put_ct>
             0x00080e9c: ff 17:       nop (0r)        
             0x00080e9e: c2 77:       retsp (u6)      0x2

<xscope_tx_init>:
             0x00080ea0: ff 17:       nop (0r)        
             0x00080ea2: 82 7f:       dualentsp (u6)  0x2
             0x00080ea4: 00 f0 7d d0: bl (lu10)       0x7d <xscope_xlink_init>
             0x00080ea8: 00 f0 8d d0: bl (lu10)       0x8d <xscope_xlink_start_token>
             0x00080eac: d1 a6:       mkmsk (rus)     r0, 0x1
             0x00080eae: c2 77:       retsp (u6)      0x2

<xscope_tx_deinit>:
             0x00080eb0: ff 17:       nop (0r)        
             0x00080eb2: 82 7f:       dualentsp (u6)  0x2
             0x00080eb4: 00 f0 7f d0: bl (lu10)       0x7f <xscope_xlink_deinit>
             0x00080eb8: ff 17:       nop (0r)        
             0x00080eba: c2 77:       retsp (u6)      0x2

<__start_core>:
             0x00080ebc: 00 f0 40 77: entsp (lu6)     0x0
             0x00080ec0: 40 90:       add (2rus)      r4, r0, 0x0
             0x00080ec2: 34 90:       add (2rus)      r3, r1, 0x0
             0x00080ec4: 00 f0 e8 d6: bl (lu10)       -0x2e8 <__init_threadlocal_timer>
             0x00080ec8: c0 90:       add (2rus)      r0, r4, 0x0
             0x00080eca: e3 27:       bla (1r)        r3
             0x00080ecc: 00 f0 e2 d6: bl (lu10)       -0x2e2 <__free_threadlocal_timer>
             0x00080ed0: ee 07:       ssync (0r)      
             0x00080ed2: 00 00:       stw (2rus)      r0, r0[0x0]

<__register_exitproc>:
             0x00080ed4: 00 f0 48 77: entsp (lu6)     0x8
             0x00080ed8: 05 f9 ec f7: std (l2rus)     r5, r4, sp[0x1]
             0x00080edc: 2e f9 ec f7: std (l2rus)     r7, r6, sp[0x2]
             0x00080ee0: 06 56:       stw (ru6)       r8, sp[0x6]
             0x00080ee2: 5c 90:       add (2rus)      r5, r3, 0x0
             0x00080ee4: 78 90:       add (2rus)      r7, r2, 0x0
             0x00080ee6: 44 90:       add (2rus)      r4, r1, 0x0
             0x00080ee8: 60 90:       add (2rus)      r6, r0, 0x0
             0x00080eea: 01 f0 54 7f: ldaw (lu6)      r11, cp[0x54]
             0x00080eee: 9c 91:       add (2rus)      r1, r11, 0x0
             0x00080ef0: 01 f0 56 7f: ldaw (lu6)      r11, cp[0x56]
             0x00080ef4: c0 90:       add (2rus)      r0, r4, 0x0
             0x00080ef6: ac 91:       add (2rus)      r2, r11, 0x0
             0x00080ef8: 00 f0 00 d1: bl (lu10)       0x100 <__checkFptrGroup>
             0x00080efc: e0 4f:       ecallf (1r)     r0
             0x00080efe: 03 f0 0c 60: ldaw (lru6)     r0, dp[0xcc]
             0x00080f02: 00 f0 b3 d4: bl (lu10)       -0xb3 <__lock_fair_acquire>
             0x00080f06: 00 f0 14 58: ldw (lru6)      r0, dp[0x14]
             0x00080f0a: 11 08:       ldw (2rus)      r1, r0[0x1]
             0x00080f0c: 99 a7:       mkmsk (rus)     r2, 0x5
             0x00080f0e: 29 c0:       lss (3r)        r2, r2, r1
             0x00080f10: 82 78:       bf (ru6)        r2, 0x2 <.label110>
             0x00080f12: d0 a6:       mkmsk (rus)     r0, 0x20
             0x00080f14: 29 73:       bu (u6)         0x29 <.label111>
.label110    0x00080f16: 9e 79:       bf (ru6)        r6, 0x1e <.label112>
             0x00080f18: 02 f0 88 68: ldc (lru6)      r2, 0x88
             0x00080f1c: 32 10:       add (3r)        r3, r0, r2
             0x00080f1e: 7d f8 ec 07: stw (l3r)       r7, r3[r1]
             0x00080f22: 11 08:       ldw (2rus)      r1, r0[0x1]
             0x00080f24: d9 a6:       mkmsk (rus)     r2, 0x1
             0x00080f26: b9 20:       shl (3r)        r11, r2, r1
             0x00080f28: 06 f0 c8 69: ldc (lru6)      r7, 0x188
             0x00080f2c: b3 12:       add (3r)        r7, r0, r7
             0x00080f2e: 4c 09:       ldw (2rus)      r8, r7[0x0]
             0x00080f30: b3 46:       or (3r)         r11, r8, r11
             0x00080f32: 7c 01:       stw (2rus)      r11, r7[0x0]
             0x00080f34: 1d f8 ec 1f: ldaw (l3r)      r1, r3[r1]
             0x00080f38: 02 f0 c0 68: ldc (lru6)      r3, 0x80
             0x00080f3c: 17 10:       add (3r)        r1, r1, r3
             0x00080f3e: 54 00:       stw (2rus)      r5, r1[0x0]
             0x00080f40: 11 08:       ldw (2rus)      r1, r0[0x1]
             0x00080f42: fa b0:       eq (2rus)       r3, r6, 0x2
             0x00080f44: c7 78:       bf (ru6)        r3, 0x7 <.label112>
             0x00080f46: 29 20:       shl (3r)        r2, r2, r1
             0x00080f48: 06 f0 cc 68: ldc (lru6)      r3, 0x18c
             0x00080f4c: 33 10:       add (3r)        r3, r0, r3
             0x00080f4e: bc 08:       ldw (2rus)      r11, r3[0x0]
             0x00080f50: ae 41:       or (3r)         r2, r11, r2
             0x00080f52: 2c 00:       stw (2rus)      r2, r3[0x0]
.label112    0x00080f54: 25 90:       add (2rus)      r2, r1, 0x1
             0x00080f56: 21 00:       stw (2rus)      r2, r0[0x1]
             0x00080f58: 01 f8 ec 1f: ldaw (l3r)      r0, r0[r1]
             0x00080f5c: 42 00:       stw (2rus)      r4, r0[0x2]
             0x00080f5e: 03 f0 0c 60: ldaw (lru6)     r0, dp[0xcc]
             0x00080f62: 00 f0 d3 d4: bl (lu10)       -0xd3 <__lock_fair_release>
             0x00080f66: 00 68:       ldc (ru6)       r0, 0x0
.label111    0x00080f68: 06 5e:       ldw (ru6)       r8, sp[0x6]
             0x00080f6a: 2e f9 ec ef: ldd (l2rus)     r7, r6, sp[0x2]
             0x00080f6e: 05 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x1]
             0x00080f72: c8 77:       retsp (u6)      0x8

<__call_exitprocs_impl>:
             0x00080f74: 00 f0 4e 77: entsp (lu6)     0xe
             0x00080f78: 07 f9 ec f7: std (l2rus)     r5, r4, sp[0x3]
             0x00080f7c: 6c fb ec f7: std (l2rus)     r7, r6, sp[0x4]
             0x00080f80: 45 fc ec f7: std (l2rus)     r9, r8, sp[0x5]
             0x00080f84: 8c 56:       stw (ru6)       r10, sp[0xc]
             0x00080f86: 44 90:       add (2rus)      r4, r1, 0x0
             0x00080f88: 01 54:       stw (ru6)       r0, sp[0x1]
             0x00080f8a: 00 f0 14 58: ldw (lru6)      r0, dp[0x14]
             0x00080f8e: 01 f0 0f 78: bf (lru6)       r0, 0x4f <.label113>
             0x00080f92: 80 6a:       ldc (ru6)       r10, 0x0
.label123    0x00080f94: 80 90:       add (2rus)      r8, r0, 0x0
             0x00080f96: 11 0a:       ldw (2rus)      r9, r8[0x1]
             0x00080f98: d1 a6:       mkmsk (rus)     r0, 0x1
             0x00080f9a: 84 c1:       lss (3r)        r0, r9, r0
             0x00080f9c: 01 f0 08 70: bt (lru6)       r0, 0x48 <.label113>
             0x00080fa0: 06 f0 08 68: ldc (lru6)      r0, 0x188
             0x00080fa4: 80 11:       add (3r)        r0, r8, r0
             0x00080fa6: 04 54:       stw (ru6)       r0, sp[0x4]
             0x00080fa8: 06 f0 0c 68: ldc (lru6)      r0, 0x18c
             0x00080fac: 80 11:       add (3r)        r0, r8, r0
             0x00080fae: 03 54:       stw (ru6)       r0, sp[0x3]
             0x00080fb0: 01 fe ec 1f: ldaw (l3r)      r0, r8[r9]
             0x00080fb4: 02 f0 44 68: ldc (lru6)      r1, 0x84
             0x00080fb8: 11 10:       add (3r)        r1, r0, r1
             0x00080fba: 42 54:       stw (ru6)       r1, sp[0x2]
             0x00080fbc: 04 f0 44 68: ldc (lru6)      r1, 0x104
             0x00080fc0: 11 10:       add (3r)        r1, r0, r1
             0x00080fc2: 45 54:       stw (ru6)       r1, sp[0x5]
             0x00080fc4: a0 92:       add (2rus)      r6, r0, 0x4
             0x00080fc6: f8 91:       add (2rus)      r7, r10, 0x0
.label122    0x00080fc8: 04 79:       bf (ru6)        r4, 0x4 <.label114>
             0x00080fca: 05 5c:       ldw (ru6)       r0, sp[0x5]
             0x00080fcc: 43 4a:       ldw (3r)        r0, r0[r7]
             0x00080fce: 40 32:       eq (3r)         r0, r0, r4
             0x00080fd0: 28 78:       bf (ru6)        r0, 0x28 <.label115>
.label114    0x00080fd2: f7 13:       add (3r)        r3, r9, r7
             0x00080fd4: 1d 98:       sub (2rus)      r1, r3, 0x1
             0x00080fd6: d1 a6:       mkmsk (rus)     r0, 0x1
             0x00080fd8: 01 20:       shl (3r)        r0, r0, r1
             0x00080fda: 2b 4b:       ldw (3r)        r2, r6[r7]
             0x00080fdc: 31 0a:       ldw (2rus)      r11, r8[0x1]
             0x00080fde: bf 34:       eq (3r)         r3, r3, r11
             0x00080fe0: c2 78:       bf (ru6)        r3, 0x2 <.label116>
             0x00080fe2: 91 01:       stw (2rus)      r1, r8[0x1]
             0x00080fe4: 02 73:       bu (u6)         0x2 <.label117>
.label116    0x00080fe6: ab fb ec 07: stw (l3r)       r10, r6[r7]
.label117    0x00080fea: 9b 78:       bf (ru6)        r2, 0x1b <.label115>
             0x00080fec: d8 91:       add (2rus)      r5, r10, 0x0
             0x00080fee: 21 0a:       ldw (2rus)      r10, r8[0x1]
             0x00080ff0: 44 5c:       ldw (ru6)       r1, sp[0x4]
             0x00080ff2: 14 08:       ldw (2rus)      r1, r1[0x0]
             0x00080ff4: 14 38:       and (3r)        r1, r1, r0
             0x00080ff6: 49 78:       bf (ru6)        r1, 0x9 <.label118>
             0x00080ff8: 43 5c:       ldw (ru6)       r1, sp[0x3]
             0x00080ffa: 14 08:       ldw (2rus)      r1, r1[0x0]
             0x00080ffc: 04 38:       and (3r)        r0, r1, r0
             0x00080ffe: 42 5c:       ldw (ru6)       r1, sp[0x2]
             0x00081000: 57 4a:       ldw (3r)        r1, r1[r7]
             0x00081002: 05 78:       bf (ru6)        r0, 0x5 <.label119>
             0x00081004: 04 90:       add (2rus)      r0, r1, 0x0
             0x00081006: e2 27:       bla (1r)        r2
             0x00081008: 04 73:       bu (u6)         0x4 <.label120>
.label118    0x0008100a: e2 27:       bla (1r)        r2
             0x0008100c: 02 73:       bu (u6)         0x2 <.label120>
.label119    0x0008100e: 01 5c:       ldw (ru6)       r0, sp[0x1]
             0x00081010: e2 27:       bla (1r)        r2
.label120    0x00081012: 91 09:       ldw (2rus)      r1, r8[0x1]
             0x00081014: 00 f0 14 58: ldw (lru6)      r0, dp[0x14]
             0x00081018: 99 31:       eq (3r)         r1, r10, r1
             0x0008101a: 64 91:       add (2rus)      r10, r5, 0x0
             0x0008101c: 47 78:       bf (ru6)        r1, 0x7 <.label121>
             0x0008101e: 90 34:       eq (3r)         r1, r0, r8
             0x00081020: 45 78:       bf (ru6)        r1, 0x5 <.label121>
.label115    0x00081022: 3d 99:       sub (2rus)      r7, r7, 0x1
             0x00081024: c7 13:       add (3r)        r0, r9, r7
             0x00081026: 88 c1:       lss (3r)        r0, r10, r0
             0x00081028: 31 74:       bt (ru6)        r0, -0x31 <.label122>
             0x0008102a: 02 73:       bu (u6)         0x2 <.label113>
.label121    0x0008102c: 01 f0 0e 74: bt (lru6)       r0, -0x4e <.label123>
.label113    0x00081030: 8c 5e:       ldw (ru6)       r10, sp[0xc]
             0x00081032: 45 fc ec ef: ldd (l2rus)     r9, r8, sp[0x5]
             0x00081036: 6c fb ec ef: ldd (l2rus)     r7, r6, sp[0x4]
             0x0008103a: 07 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x3]
             0x0008103e: ce 77:       retsp (u6)      0xe

<__malloc_lock>:
             0x00081040: 00 f0 42 77: entsp (lu6)     0x2
             0x00081044: 03 f0 0e 60: ldaw (lru6)     r0, dp[0xce]
             0x00081048: 00 f0 56 d5: bl (lu10)       -0x156 <__lock_fair_acquire>
             0x0008104c: c2 77:       retsp (u6)      0x2
             0x0008104e: 00 00:       stw (2rus)      r0, r0[0x0]

<__malloc_unlock>:
             0x00081050: 00 f0 42 77: entsp (lu6)     0x2
             0x00081054: 03 f0 0e 60: ldaw (lru6)     r0, dp[0xce]
             0x00081058: 00 f0 4e d5: bl (lu10)       -0x14e <__lock_fair_release>
             0x0008105c: c2 77:       retsp (u6)      0x2
             0x0008105e: 00 00:       stw (2rus)      r0, r0[0x0]

<_DoSyscall>:
             0x00081060: 00 f0 40 77: entsp (lu6)     0x0
             0x00081064: d0 a6:       mkmsk (rus)     r0, 0x20
             0x00081066: c0 77:       retsp (u6)      0x0

<__errno>:
             0x00081068: 00 f0 40 77: entsp (lu6)     0x0
             0x0008106c: ee 17:       get (0r)        r11, id
             0x0008106e: 03 f0 10 60: ldaw (lru6)     r0, dp[0xd0]
             0x00081072: 83 fc ec 1f: ldaw (l3r)      r0, r0[r11]
             0x00081076: c0 77:       retsp (u6)      0x0

<xscope_xlink_put_ch>:
             0x00081078: 00 f0 40 77: entsp (lu6)     0x0
             0x0008107c: 00 f0 4a 58: ldw (lru6)      r1, dp[0xa]
             0x00081080: 4b 78:       bf (ru6)        r1, 0xb <xscope_xlink_put_ch_ret>
             0x00081082: 00 f0 89 58: ldw (lru6)      r2, dp[0x9]
             0x00081086: 87 70:       bt (ru6)        r2, 0x7 <xscope_xlink_outt>
             0x00081088: 00 f0 4b 58: ldw (lru6)      r1, dp[0xb]
             0x0008108c: 45 78:       bf (ru6)        r1, 0x5 <xscope_xlink_put_ch_ret>
             0x0008108e: ca 86:       getr (rus)      r2, 0x2
             0x00081090: d6 16:       setd (r2r)      res[r2], r1
             0x00081092: 00 f0 89 50: stw (lru6)      r2, dp[0x9]

<xscope_xlink_outt>:
             0x00081096: d2 0e:       outt (r2r)      res[r2], r0

<xscope_xlink_put_ch_ret>:
             0x00081098: c0 77:       retsp (u6)      0x0
             0x0008109a: 00 00:       stw (2rus)      r0, r0[0x0]

<xscope_xlink_init>:
             0x0008109c: 00 f0 40 77: entsp (lu6)     0x0
             0x000810a0: 00 f0 4b 58: ldw (lru6)      r1, dp[0xb]
             0x000810a4: 00 f0 48 7c: bf (lru6)       r1, -0x8 <xscope_xlink_put_ch_ret>
             0x000810a8: ca 86:       getr (rus)      r2, 0x2
             0x000810aa: d6 16:       setd (r2r)      res[r2], r1
             0x000810ac: 00 f0 89 50: stw (lru6)      r2, dp[0x9]
             0x000810b0: c0 77:       retsp (u6)      0x0
             0x000810b2: 00 00:       stw (2rus)      r0, r0[0x0]

<xscope_xlink_deinit>:
             0x000810b4: 00 f0 40 77: entsp (lu6)     0x0
             0x000810b8: 00 f0 49 58: ldw (lru6)      r1, dp[0x9]
             0x000810bc: 00 f0 54 7c: bf (lru6)       r1, -0x14 <xscope_xlink_put_ch_ret>
             0x000810c0: e1 17:       freer (1r)      res[r1]
             0x000810c2: 80 68:       ldc (ru6)       r2, 0x0
             0x000810c4: 00 f0 89 50: stw (lru6)      r2, dp[0x9]
             0x000810c8: c0 77:       retsp (u6)      0x0
             0x000810ca: 00 00:       stw (2rus)      r0, r0[0x0]

<xscope_xlink_put_ct>:
             0x000810cc: 00 f0 40 77: entsp (lu6)     0x0
             0x000810d0: 00 f0 4a 58: ldw (lru6)      r1, dp[0xa]
             0x000810d4: 44 78:       bf (ru6)        r1, 0x4 <xscope_xlink_put_ct_ret>
             0x000810d6: 00 f0 89 58: ldw (lru6)      r2, dp[0x9]
             0x000810da: 81 78:       bf (ru6)        r2, 0x1 <xscope_xlink_put_ct_ret>
             0x000810dc: d9 4e:       outct (rus)     res[r2], 0x1

<xscope_xlink_put_ct_ret>:
             0x000810de: c0 77:       retsp (u6)      0x0

<xscope_xlink_start_token>:
             0x000810e0: 00 f0 40 77: entsp (lu6)     0x0
             0x000810e4: 00 f0 4a 58: ldw (lru6)      r1, dp[0xa]
             0x000810e8: 48 78:       bf (ru6)        r1, 0x8 <xscope_xlink_start_token_ret>
             0x000810ea: 00 f0 89 58: ldw (lru6)      r2, dp[0x9]
             0x000810ee: 85 78:       bf (ru6)        r2, 0x5 <xscope_xlink_start_token_ret>
             0x000810f0: d9 4e:       outct (rus)     res[r2], 0x1
             0x000810f2: 01 f0 d5 6a: ldc (lru6)      r11, 0x55
             0x000810f6: 2b 4f:       outct (2r)      res[r2], r11
             0x000810f8: d9 4e:       outct (rus)     res[r2], 0x1

<xscope_xlink_start_token_ret>:
             0x000810fa: c0 77:       retsp (u6)      0x0

<__checkFptrGroup>:
             0x000810fc: 00 f0 40 77: entsp (lu6)     0x0
             0x00081100: 30 90:       add (2rus)      r3, r0, 0x0
.label125    0x00081102: 06 c8:       lsu (3r)        r0, r1, r2
             0x00081104: 05 78:       bf (ru6)        r0, 0x5 <.label124>
             0x00081106: 04 08:       ldw (2rus)      r0, r1[0x0]
             0x00081108: 03 30:       eq (3r)         r0, r0, r3
             0x0008110a: 02 70:       bt (ru6)        r0, 0x2 <.label124>
             0x0008110c: 54 92:       add (2rus)      r1, r1, 0x4
             0x0008110e: 07 77:       bu (u6)         -0x7 <.label125>
.label124    0x00081110: c0 77:       retsp (u6)      0x0

Disassembly of section .eh_frame (size: 36)

             0x00081118: 0c 00 00 00: 
             0x0008111c: 00 00 00 00: 
             0x00081120: 01 00 01 01: 
             0x00081124: 0f 0c 0e 00: 
             0x00081128: 10 00 00 00: 
             0x0008112c: 14 00 00 00: 
             0x00081130: c0 0e 08 00: 
             0x00081134: 12 00 00 00: 
             0x00081138: 07 0f 00 00: 

Disassembly of section .cp.rodata (size: 273)

<_cp>:
<.cp.rodata>:
<tiles_to_wake>:
.label11     0x00081140: 02 1e 03 80: 

<chanends_to_setup>:
             0x00081144: ff 00 00 00: 

<.cp.rodata>:
             0x00081148: 30 19 f0 ff: 

<.cp.rodata>:
             0x0008114c: f0 19 f0 ff: 

<.cp.rodata>:
<_ctype_>:
             0x00081150: 00 20 20 20: 
             0x00081154: 20 20 20 20: 
             0x00081158: 20 20 28 28: 
             0x0008115c: 28 28 28 20: 
             0x00081160: 20 20 20 20: 
             0x00081164: 20 20 20 20: 
             0x00081168: 20 20 20 20: 
             0x0008116c: 20 20 20 20: 
             0x00081170: 20 88 10 10: 
             0x00081174: 10 10 10 10: 
             0x00081178: 10 10 10 10: 
             0x0008117c: 10 10 10 10: 
             0x00081180: 10 04 04 04: 
             0x00081184: 04 04 04 04: 
             0x00081188: 04 04 04 10: 
             0x0008118c: 10 10 10 10: 
             0x00081190: 10 10 41 41: 
             0x00081194: 41 41 41 41: 
             0x00081198: 01 01 01 01: 
             0x0008119c: 01 01 01 01: 
             0x000811a0: 01 01 01 01: 
             0x000811a4: 01 01 01 01: 
             0x000811a8: 01 01 01 01: 
             0x000811ac: 10 10 10 10: 
             0x000811b0: 10 10 42 42: 
             0x000811b4: 42 42 42 42: 
             0x000811b8: 02 02 02 02: 
             0x000811bc: 02 02 02 02: 
             0x000811c0: 02 02 02 02: 
             0x000811c4: 02 02 02 02: 
             0x000811c8: 02 02 02 02: 
             0x000811cc: 10 10 10 10: 
             0x000811d0: 20 00 00 00: 
             0x000811d4: 00 00 00 00: 
             0x000811d8: 00 00 00 00: 
             0x000811dc: 00 00 00 00: 
             0x000811e0: 00 00 00 00: 
             0x000811e4: 00 00 00 00: 
             0x000811e8: 00 00 00 00: 
             0x000811ec: 00 00 00 00: 
             0x000811f0: 00 00 00 00: 
             0x000811f4: 00 00 00 00: 
             0x000811f8: 00 00 00 00: 
             0x000811fc: 00 00 00 00: 
             0x00081200: 00 00 00 00: 
             0x00081204: 00 00 00 00: 
             0x00081208: 00 00 00 00: 
             0x0008120c: 00 00 00 00: 
             0x00081210: 00 00 00 00: 
             0x00081214: 00 00 00 00: 
             0x00081218: 00 00 00 00: 
             0x0008121c: 00 00 00 00: 
             0x00081220: 00 00 00 00: 
             0x00081224: 00 00 00 00: 
             0x00081228: 00 00 00 00: 
             0x0008122c: 00 00 00 00: 
             0x00081230: 00 00 00 00: 
             0x00081234: 00 00 00 00: 
             0x00081238: 00 00 00 00: 
             0x0008123c: 00 00 00 00: 
             0x00081240: 00 00 00 00: 
             0x00081244: 00 00 00 00: 
             0x00081248: 00 00 00 00: 
             0x0008124c: 00 00 00 00: 
             0x00081250: 00:          

Disassembly of section .cp.rodata.4 (size: 68)

<.cp.rodata.4>:
<_ZZ13testSchedulervE4name>:
             0x00081254: 62 6c 69 6e: 
             0x00081258: 6b 4c 65 64: 
             0x0008125c: 43 6f 6f 70: 
             0x00081260: 65 72 61 74: 
             0x00081264: 69 76 65 00: 

<_ZZ13testSchedulervE4name_0>:
             0x00081268: 62 6c 69 6e: 
             0x0008126c: 6b 4c 65 64: 
             0x00081270: 43 6f 6f 70: 
             0x00081274: 65 72 61 74: 
             0x00081278: 69 76 65 00: 

<_ZZ13testSchedulervE4name_1>:
             0x0008127c: 62 6c 69 6e: 
             0x00081280: 6b 4c 65 64: 
             0x00081284: 43 6f 6f 70: 
             0x00081288: 65 72 61 74: 
             0x0008128c: 69 76 65 00: 

<_fptrgroup.stdlib_atexit.group.begin>:
             0x00081290: 9c 02 08 00: 
             0x00081294: 88 06 08 00: 

Disassembly of section .cp.const4 (size: 48)

<initial_dp>:
             0x00081298: 70 13 08 00: 

<dp_bss_large_start>:
             0x0008129c: d0 16 08 00: 

<extmem_bss_start>:
             0x000812a0: 00 00 00 10: 

<.cp.const4>:
<ctor_list_ptr>:
             0x000812a4: 60 13 08 00: 

<.cp.const4>:
<dtor_list_ptr>:
             0x000812a8: 6c 13 08 00: 

<.cp.const4>:
<initial_sp>:
             0x000812ac: b0 fe 0f 00: 

<dp_bss_size>:
             0x000812b0: 00 03 00 00: 

<dp_bss_large_size>:
             0x000812b4: 00 00 00 00: 

<extmem_bss_size>:
             0x000812b8: 00 00 00 00: 

<dtors_size>:
             0x000812bc: 00 00 00 00: 

<ctors_size>:
             0x000812c0: 03 00 00 00: 

<.cp.const4>:
             0x000812c4: 02 1e 03 80: 

Disassembly of section .cp.rodata.cst4 (size: 48)

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
             0x000812c8: 00 00 00 01: 
             0x000812cc: 00 02 04 00: 
             0x000812d0: 00 2d 31 01: 
             0x000812d4: 44 33 22 11: 
             0x000812d8: 80 c3 c9 01: 
             0x000812dc: 90 ff ff ff: 
             0x000812e0: d0 ff ff ff: 
             0x000812e4: e0 ff ff ff: 
             0x000812e8: f7 ff ff ff: 
             0x000812ec: f8 ff ff ff: 
             0x000812f0: fc ff ff ff: 
             0x000812f4: ff ff ff 7f: 

Disassembly of section .cp.rodata.string (size: 101)

<.cp.rodata.string>:
<.cp.rodata.string>:
<.cp.rodata.string>:
<.cp.rodata.string>:
             0x000812f8: 25 64 2c 25: 
             0x000812fc: 73 0a 00 00: 

<itoa.digits>:
             0x00081300: 30 31 32 33: 
             0x00081304: 34 35 36 37: 
             0x00081308: 38 39 41 42: 
             0x0008130c: 43 44 45 46: 
             0x00081310: 00 00 00 00: 
             0x00081314: 43 72 65 61: 
             0x00081318: 74 65 20 74: 
             0x0008131c: 61 73 6b 20: 
             0x00081320: 25 73 28 25: 
             0x00081324: 64 29 2c 20: 
             0x00081328: 74 63 62 20: 
             0x0008132c: 40 20 25 78: 
             0x00081330: 68 20 28 25: 
             0x00081334: 64 29 0a 00: 
             0x00081338: 66 69 6e 69: 
             0x0008133c: 73 68 65 64: 
             0x00081340: 20 25 64 0a: 
             0x00081344: 00 00 00 00: 
             0x00081348: 66 69 6e 69: 
             0x0008134c: 73 68 65 64: 
             0x00081350: 20 41 4c 4c: 
             0x00081354: 0a 00 00 00: 
             0x00081358: 6d 61 69 6e: 
             0x0008135c: 00:          

Disassembly of section .ctors (size: 12)

<_CTOR_LIST_>:
<.ctors>:
             0x00081360: 48 04 08 00: 

<.ctors>:
             0x00081364: 98 06 08 00: 

<.ctors>:
             0x00081368: 84 09 08 00: 

Disassembly of section .dp.data (size: 48)

<_dp>:
<__timers>:
<.dp.data>:
<.dp.data>:
             0x00081370: 01 00 00 00: 
             0x00081374: 00 00 00 00: 
             0x00081378: 00 00 00 00: 
             0x0008137c: 00 00 00 00: 
             0x00081380: 00 00 00 00: 
             0x00081384: 00 00 00 00: 
             0x00081388: 00 00 00 00: 
             0x0008138c: 00 00 00 00: 

<XSCOPE_REDIRECT_IO>:
<.dp.data>:
             0x00081390: 00 00 00 00: 

<__sodChan>:
<.dp.data>:
             0x00081394: 00 00 00 00: 

<__sodFlag>:
<.dp.data>:
             0x00081398: 00 00 00 00: 

<__sodEnd>:
             0x0008139c: 02 01 00 80: 

Disassembly of section .dp.data.4 (size: 36)

<.dp.data.4>:
<par.desc.1>:
             0x000813a0: 98 01 08 00: 
             0x000813a4: 4a 00 00 00: 
             0x000813a8: 00 00 00 00: 
             0x000813ac: a4 01 08 00: 

<__ctype_ptr__>:
<.dp.data.4>:
<.dp.data.4>:
             0x000813b0: 50 11 08 00: 

<.dp.data.4>:
<__malloc_limit>:
             0x000813b4: 00 fc 0f 00: 

<__malloc_end>:
             0x000813b8: d4 16 08 00: 

<xscope_ref_clk>:
<.dp.data.4>:
             0x000813bc: 06 00 00 00: 

<.dp.data.4>:
<_atexit_fns>:
             0x000813c0: 10 15 08 00: 

Disassembly of section .dp.rodata (size: 4)

<tile>:
             0x000813c4: 00 00 01 00: 

Disassembly of section .dp.data.extmem.setps (size: 4)

<.dp.data.extmem.setps>:
<__extmem_setps_val>:
             0x000813c8: 00 18 00 00: 

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
             0x00080022: 00 f0 8a 6f: ldw (lru6)      sp, cp[0xa]
             0x00080026: f0 17:       mjoin (1r)      res[r0]
             0x00080028: e0 17:       freer (1r)      res[r0]
             0x0008002a: 08 f0 0b 68: ldc (lru6)      r0, 0x20b
             0x0008002e: 00 f0 50 58: ldw (lru6)      r1, dp[0x10]
             0x00080032: c4 fe ec 1f: set (lr2r)      ps[r0], r1
             0x00080036: 00 f0 12 60: ldaw (lru6)     r0, dp[0x12]
             0x0008003a: 40 68:       ldc (ru6)       r1, 0x0
             0x0008003c: 00 f0 8b 6c: ldw (lru6)      r2, cp[0xb]
             0x00080040: 00 f0 12 d1: bl (lu10)       0x112 <.label2>
             0x00080044: 00 f0 06 6c: ldw (lru6)      r0, cp[0x6]
             0x00080048: 40 68:       ldc (ru6)       r1, 0x0
             0x0008004a: 00 f0 8c 6c: ldw (lru6)      r2, cp[0xc]
             0x0008004e: 00 f0 0b d1: bl (lu10)       0x10b <.label2>
             0x00080052: 00 f0 07 6c: ldw (lru6)      r0, cp[0x7]
             0x00080056: 40 68:       ldc (ru6)       r1, 0x0
             0x00080058: 00 f0 8d 6c: ldw (lru6)      r2, cp[0xd]
             0x0008005c: 00 f0 04 d1: bl (lu10)       0x104 <.label2>
             0x00080060: 00 f0 06 d1: bl (lu10)       0x106 <.label3>
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
             0x0008008c: 00 f0 60 d0: bl (lu10)       0x60 <.label6>
             0x00080090: b0 f8 ec 97: ashr (l2rus)    r11, r0, 0x20
             0x00080094: c2 7a:       bf (ru6)        r11, 0x2 <.label5>
             0x00080096: 01 90:       add (2rus)      r0, r0, 0x1
             0x00080098: f0 4f:       ecallt (1r)     r0
.label5      0x0008009a: 41 64:       ldaw (ru6)      r1, sp[0x1]
             0x0008009c: 00 f0 9c d0: bl (lu10)       0x9c <.label7>
             0x000800a0: 02 70:       bt (ru6)        r0, 0x2 <.label8>
             0x000800a2: 00 f0 c7 d0: bl (lu10)       0xc7 <.label9>
.label8      0x000800a6: 00 f0 d1 d0: bl (lu10)       0xd1 <.label10>

<_InitChildThread>:
             0x000800aa: 01 d0:       bl (u10)        0x1 <_SetupThread>
             0x000800ac: ee 07:       ssync (0r)      

<_SetupThread>:
             0x000800ae: 18 dc:       ldap (u10)      r11, -0x18 <_TrapHandler>
             0x000800b0: ff 07:       set (0r)        kep, r11
             0x000800b2: 00 f0 55 da: ldap (lu10)     r11, 0x255 <.label11>
             0x000800b6: fb 37:       set (1r)        cp, r11
             0x000800b8: 00 f0 45 6f: ldw (lru6)      dp, cp[0x5]
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
             0x000800ce: 00 f0 47 d1: bl (lu10)       0x147 <.label12>
             0x000800d2: 00 f0 0f 6d: ldw (lru6)      r4, cp[0xf]
             0x000800d6: 06 79:       bf (ru6)        r4, 0x6 <do_ctors_end> <.init>
             0x000800d8: 00 f0 48 6d: ldw (lru6)      r5, cp[0x8]

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
.label21     0x000800e6: 42 77:       entsp (u6)      0x2

<.fini>:
             0x000800e8: 84 77:       extsp (u6)      0x4
             0x000800ea: 01 55:       stw (ru6)       r4, sp[0x1]
             0x000800ec: 42 55:       stw (ru6)       r5, sp[0x2]
             0x000800ee: 83 55:       stw (ru6)       r6, sp[0x3]
             0x000800f0: 00 f0 8e 6d: ldw (lru6)      r6, cp[0xe]
             0x000800f4: 88 79:       bf (ru6)        r6, 0x8 <do_dtors_end>
             0x000800f6: 00 69:       ldc (ru6)       r4, 0x0
             0x000800f8: 00 f0 49 6d: ldw (lru6)      r5, cp[0x9]

<do_dtors_loop>:
             0x000800fc: 04 4b:       ldw (3r)        r0, r5[r4]
             0x000800fe: e0 27:       bla (1r)        r0
             0x00080100: 01 91:       add (2rus)      r4, r4, 0x1
             0x00080102: b2 cb:       lsu (3r)        r11, r4, r6
             0x00080104: c5 76:       bt (ru6)        r11, -0x5 <do_dtors_loop>

<do_dtors_end>:
             0x00080106: 00 f0 bd d0: bl (lu10)       0xbd <.label13>
             0x0008010a: 01 5d:       ldw (ru6)       r4, sp[0x1]
             0x0008010c: 42 5d:       ldw (ru6)       r5, sp[0x2]
             0x0008010e: 83 5d:       ldw (ru6)       r6, sp[0x3]
             0x00080110: 84 67:       ldaw (ru6)      sp, sp[0x4]

<.fini>:
             0x00080112: c2 77:       retsp (u6)      0x2

Disassembly of section .text (size: 1062)

<__main__main_tile_1>:
             0x00080114: 00 f0 42 77: entsp (lu6)     0x2
             0x00080118: 00 f0 4a 60: ldaw (lru6)     r1, dp[0xa]
             0x0008011c: 00 68:       ldc (ru6)       r0, 0x0
             0x0008011e: 00 f0 cf d0: bl (lu10)       0xcf <__start_other_cores>
             0x00080122: c2 77:       retsp (u6)      0x2

<__main__main_tile_1_task_tile1_task1_2>:
             0x00080124: 00 f0 42 77: entsp (lu6)     0x2
             0x00080128: 00 f0 1a d0: bl (lu10)       0x1a <tile1_task1>
             0x0008012c: c2 77:       retsp (u6)      0x2
             0x0008012e: 00 00:       stw (2rus)      r0, r0[0x0]

<__main__main_tile_1_task_tile1_task2_3>:
             0x00080130: 00 f0 42 77: entsp (lu6)     0x2
             0x00080134: 00 f0 18 d0: bl (lu10)       0x18 <tile1_task2>
             0x00080138: c2 77:       retsp (u6)      0x2
             0x0008013a: 00 00:       stw (2rus)      r0, r0[0x0]

<__dtor_PLEDS>:
             0x0008013c: 00 f0 40 77: entsp (lu6)     0x0
             0x00080140: 00 f0 19 58: ldw (lru6)      r0, dp[0x19]
             0x00080144: 03 78:       bf (ru6)        r0, 0x3 <.label14>
             0x00080146: 40 68:       ldc (ru6)       r1, 0x0
             0x00080148: d1 fe ec 2f: setc (l2r)      res[r0], r1
.label14     0x0008014c: c0 77:       retsp (u6)      0x0
             0x0008014e: 00 00:       stw (2rus)      r0, r0[0x0]

<_get_cmdline>:
.label6      0x00080150: 00 f0 40 77: entsp (lu6)     0x0
             0x00080154: 00 f0 1a 50: stw (lru6)      r0, dp[0x1a]
             0x00080158: 00 f0 5b 50: stw (lru6)      r1, dp[0x1b]
             0x0008015c: d0 a6:       mkmsk (rus)     r0, 0x20
             0x0008015e: c0 77:       retsp (u6)      0x0

<tile1_task1>:
             0x00080160: 00 f0 40 77: entsp (lu6)     0x0
             0x00080164: c0 77:       retsp (u6)      0x0
             0x00080166: 00 00:       stw (2rus)      r0, r0[0x0]

<tile1_task2>:
             0x00080168: 00 f0 40 77: entsp (lu6)     0x0
             0x0008016c: c0 77:       retsp (u6)      0x0
             0x0008016e: 00 00:       stw (2rus)      r0, r0[0x0]

<_GLOBAL__sub_I_tests.cpp>:
             0x00080170: 00 f0 42 77: entsp (lu6)     0x2
             0x00080174: 00 f0 11 6c: ldw (lru6)      r0, cp[0x11]
             0x00080178: 00 f0 19 50: stw (lru6)      r0, dp[0x19]
             0x0008017c: 00 f0 22 dc: ldap (lu10)     r11, -0x22 <__dtor_PLEDS>
             0x00080180: 8c 91:       add (2rus)      r0, r11, 0x0
             0x00080182: 00 f0 c3 d0: bl (lu10)       0xc3 <atexit>
             0x00080186: c2 77:       retsp (u6)      0x2

<__dtor_XCPortUndefined>:
             0x00080188: 00 f0 40 77: entsp (lu6)     0x0
             0x0008018c: 00 f0 1c 58: ldw (lru6)      r0, dp[0x1c]
             0x00080190: 01 78:       bf (ru6)        r0, 0x1 <.label15>
             0x00080192: 00 e8:       setc (ru6)      res[r0], 0x0
.label15     0x00080194: c0 77:       retsp (u6)      0x0
             0x00080196: 00 00:       stw (2rus)      r0, r0[0x0]

<_GLOBAL__sub_I_XC_core.cpp>:
             0x00080198: 00 f0 44 77: entsp (lu6)     0x4
             0x0008019c: 05 f9 ec f7: std (l2rus)     r5, r4, sp[0x1]
             0x000801a0: 00 69:       ldc (ru6)       r4, 0x0
             0x000801a2: 00 f0 1c 51: stw (lru6)      r4, dp[0x1c]
             0x000801a6: 00 f0 5c 61: ldaw (lru6)     r5, dp[0x1c]
             0x000801aa: 00 f0 13 dc: ldap (lu10)     r11, -0x13 <__dtor_XCPortUndefined>
             0x000801ae: 8c 91:       add (2rus)      r0, r11, 0x0
             0x000801b0: 00 f0 ac d0: bl (lu10)       0xac <atexit>
             0x000801b4: 00 f0 52 51: stw (lru6)      r5, dp[0x12]
             0x000801b8: 00 f0 13 51: stw (lru6)      r4, dp[0x13]
             0x000801bc: 00 f0 1d 51: stw (lru6)      r4, dp[0x1d]
             0x000801c0: 00 f0 14 51: stw (lru6)      r4, dp[0x14]
             0x000801c4: 00 f0 15 51: stw (lru6)      r4, dp[0x15]
             0x000801c8: 00 f0 16 51: stw (lru6)      r4, dp[0x16]
             0x000801cc: 00 f0 17 51: stw (lru6)      r4, dp[0x17]
             0x000801d0: 05 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x1]
             0x000801d4: c4 77:       retsp (u6)      0x4
             0x000801d6: 00 00:       stw (2rus)      r0, r0[0x0]

<main>:
.label7      0x000801d8: 42 77:       entsp (u6)      0x2
.label16     0x000801da: c2 86:       getr (rus)      r0, 0x2
             0x000801dc: 02 74:       bt (ru6)        r0, -0x2 <.label16>
             0x000801de: 78 f0 02 68: ldc (lru6)      r0, 0x1e02
             0x000801e2: 00 f0 d0 6e: ldw (lru6)      r11, cp[0x10]
             0x000801e6: 5c 17:       setd (r2r)      res[r0], r11
             0x000801e8: d1 4e:       outct (rus)     res[r0], 0x1
             0x000801ea: 5c bf:       testct (2r)     r11, res[r0]
             0x000801ec: c2 7a:       bf (ru6)        r11, 0x2 <.label17>
             0x000801ee: d1 ce:       chkct (rus)     res[r0], 0x1
             0x000801f0: d1 4e:       outct (rus)     res[r0], 0x1
.label17     0x000801f2: 5c 8f:       int (2r)        r11, res[r0]
             0x000801f4: d1 ce:       chkct (rus)     res[r0], 0x1
             0x000801f6: 05 68:       ldc (ru6)       r0, 0x5
             0x000801f8: 00 f0 4c d0: bl (lu10)       0x4c <delay_ticks>
             0x000801fc: 00 f0 40 7f: ldaw (lu6)      r11, cp[0x0]
             0x00080200: 00 68:       ldc (ru6)       r0, 0x0
             0x00080202: 60 68:       ldc (ru6)       r1, 0x20
             0x00080204: 02 69:       ldc (ru6)       r4, 0x2
.label20     0x00080206: ac 09:       ldw (2rus)      r2, r11[0x0]
             0x00080208: b8 ac:       shr (2rus)      r3, r2, 0x8
             0x0008020a: 38 47:       zext (rus)      r2, 0x8
             0x0008020c: 58 30:       eq (3r)         r5, r2, r0
             0x0008020e: 47 79:       bf (ru6)        r5, 0x7 <.label18>
             0x00080210: a8 a4:       shl (2rus)      r2, r2, 0x8
             0x00080212: 68 42:       or (3r)         r2, r2, r4
             0x00080214: bc a4:       shl (2rus)      r3, r3, 0x8
             0x00080216: 7c 42:       or (3r)         r3, r3, r4
             0x00080218: de 16:       setd (r2r)      res[r2], r3
             0x0008021a: 7c 94:       add (2rus)      r11, r11, 0x4
             0x0008021c: 03 73:       bu (u6)         0x3 <.label19>
.label18     0x0008021e: a0 a4:       shl (2rus)      r2, r0, 0x8
             0x00080220: 68 42:       or (3r)         r2, r2, r4
             0x00080222: e2 17:       freer (1r)      res[r2]
.label19     0x00080224: 01 90:       add (2rus)      r0, r0, 0x1
             0x00080226: 21 30:       eq (3r)         r2, r0, r1
             0x00080228: 92 7c:       bf (ru6)        r2, -0x12 <.label20>
             0x0008022a: 00 f0 8d d4: bl (lu10)       -0x8d <__main__main_tile_1>
             0x0008022e: 00 68:       ldc (ru6)       r0, 0x0
             0x00080230: c2 77:       retsp (u6)      0x2
             0x00080232: 00 00:       stw (2rus)      r0, r0[0x0]

<__libc_done>:
.label9      0x00080234: 00 f0 42 77: entsp (lu6)     0x2
             0x00080238: 00 68:       ldc (ru6)       r0, 0x0
             0x0008023a: 10 90:       add (2rus)      r1, r0, 0x0
             0x0008023c: 00 f0 70 d0: bl (lu10)       0x70 <__call_exitprocs>
             0x00080240: 00 f0 78 d0: bl (lu10)       0x78 <_cleanup>
             0x00080244: 00 f0 b1 d4: bl (lu10)       -0xb1 <.label21>
             0x00080248: 00 f0 7a d0: bl (lu10)       0x7a <_done>

<_exit_unlocked>:
.label10     0x0008024c: 00 f0 44 77: entsp (lu6)     0x4
             0x00080250: 02 55:       stw (ru6)       r4, sp[0x2]
             0x00080252: 40 90:       add (2rus)      r4, r0, 0x0
             0x00080254: 40 68:       ldc (ru6)       r1, 0x0
             0x00080256: 00 f0 63 d0: bl (lu10)       0x63 <__call_exitprocs>
             0x0008025a: 00 f0 6b d0: bl (lu10)       0x6b <_cleanup>
             0x0008025e: 00 f0 be d4: bl (lu10)       -0xbe <.label21>
             0x00080262: c0 90:       add (2rus)      r0, r4, 0x0
             0x00080264: 00 f0 74 d0: bl (lu10)       0x74 <_exit>

<memset>:
.label2      0x00080268: 00 f0 c1 6e: ldw (lru6)      r11, cp[0x1]
             0x0008026c: ff 17:       nop (0r)        
             0x0008026e: fb 27:       bau (1r)        r11

<__init_threadlocal_timer>:
.label3      0x00080270: 00 f0 40 77: entsp (lu6)     0x0
             0x00080274: c9 86:       getr (rus)      r2, 0x1
             0x00080276: 00 f0 40 60: ldaw (lru6)     r1, dp[0x0]
             0x0008027a: ee 17:       get (0r)        r11, id
             0x0008027c: a7 fc ec 07: stw (l3r)       r2, r1[r11]
             0x00080280: c0 77:       retsp (u6)      0x0
             0x00080282: 00 00:       stw (2rus)      r0, r0[0x0]

<__free_threadlocal_timer>:
.label13     0x00080284: 00 f0 40 77: entsp (lu6)     0x0
             0x00080288: 00 f0 80 60: ldaw (lru6)     r2, dp[0x0]
             0x0008028c: ee 17:       get (0r)        r11, id
             0x0008028e: ab 4c:       ldw (3r)        r2, r2[r11]
             0x00080290: e2 17:       freer (1r)      res[r2]
             0x00080292: c0 77:       retsp (u6)      0x0

<delay_ticks>:
             0x00080294: 00 f0 40 77: entsp (lu6)     0x0
             0x00080298: e1 8f:       gettime (1r)    r1
             0x0008029a: ee 17:       get (0r)        r11, id
             0x0008029c: 00 f0 80 60: ldaw (lru6)     r2, dp[0x0]
             0x000802a0: ab 4c:       ldw (3r)        r2, r2[r11]
             0x000802a2: 30 f8 ec 97: ashr (l2rus)    r3, r0, 0x20
             0x000802a6: c6 78:       bf (ru6)        r3, 0x6 <.label22>
             0x000802a8: 00 f0 d2 6c: ldw (lru6)      r3, cp[0x12]
             0x000802ac: 37 10:       add (3r)        r3, r1, r3
             0x000802ae: de 16:       setd (r2r)      res[r2], r3
             0x000802b0: 89 e8:       setc (ru6)      res[r2], 0x9
             0x000802b2: ce b6:       in (2r)         r3, res[r2]
.label22     0x000802b4: 04 10:       add (3r)        r0, r1, r0
             0x000802b6: d2 16:       setd (r2r)      res[r2], r0
             0x000802b8: 89 e8:       setc (ru6)      res[r2], 0x9
             0x000802ba: c2 b6:       in (2r)         r0, res[r2]
             0x000802bc: c0 77:       retsp (u6)      0x0
             0x000802be: 00 00:       stw (2rus)      r0, r0[0x0]

<__start_other_cores>:
             0x000802c0: 00 f0 44 77: entsp (lu6)     0x4
             0x000802c4: 01 55:       stw (ru6)       r4, sp[0x1]
             0x000802c6: 42 55:       stw (ru6)       r5, sp[0x2]
             0x000802c8: ed 07:       clre (0r)       
             0x000802ca: 07 87:       getr (rus)      r5, 0x3
             0x000802cc: 44 08:       ldw (2rus)      r4, r1[0x0]
             0x000802ce: 80 64:       ldaw (ru6)      r2, sp[0x0]
.label23     0x000802d0: 00 f0 62 d8: ldap (lu10)     r11, 0x62 <__start_core>
             0x000802d4: 9d 07:       getst (2r)      r3, res[r5]
             0x000802d6: 5f ff ec 07: init (l2r)      t[r3]:pc, r11
             0x000802da: 03 f8 ec b7: set (l3r)       t[r3]:r0, r0
             0x000802de: d3 f8 ec b7: set (l3r)       t[r3]:r1, r4
             0x000802e2: 45 08:       ldw (2rus)      r4, r1[0x1]
             0x000802e4: 01 91:       add (2rus)      r4, r4, 0x1
             0x000802e6: c1 6a:       ldc (ru6)       r11, 0x1
             0x000802e8: f3 3d:       and (3r)        r11, r4, r11
             0x000802ea: 83 15:       add (3r)        r4, r4, r11
             0x000802ec: 02 a1:       shl (2rus)      r4, r4, 0x2
             0x000802ee: 68 1a:       sub (3r)        r2, r2, r4
             0x000802f0: cb fe ec 07: init (l2r)      t[r3]:sp, r2
             0x000802f4: 94 94:       add (2rus)      r1, r1, 0x8
             0x000802f6: 44 08:       ldw (2rus)      r4, r1[0x0]
             0x000802f8: 15 75:       bt (ru6)        r4, -0x15 <.label23>
             0x000802fa: f5 1f:       msync (1r)      res[r5]
             0x000802fc: b5 08:       ldw (2rus)      r11, r1[0x1]
             0x000802fe: eb 27:       bla (1r)        r11
             0x00080300: f5 17:       mjoin (1r)      res[r5]
             0x00080302: e5 17:       freer (1r)      res[r5]
             0x00080304: 01 5d:       ldw (ru6)       r4, sp[0x1]
             0x00080306: 42 5d:       ldw (ru6)       r5, sp[0x2]
             0x00080308: c4 77:       retsp (u6)      0x4
             0x0008030a: 00 00:       stw (2rus)      r0, r0[0x0]

<atexit>:
             0x0008030c: 00 f0 42 77: entsp (lu6)     0x2
             0x00080310: 10 90:       add (2rus)      r1, r0, 0x0
             0x00080312: 00 68:       ldc (ru6)       r0, 0x0
             0x00080314: 20 90:       add (2rus)      r2, r0, 0x0
             0x00080316: 30 90:       add (2rus)      r3, r0, 0x0
             0x00080318: 00 f0 4a d0: bl (lu10)       0x4a <__register_exitproc>
             0x0008031c: c2 77:       retsp (u6)      0x2
             0x0008031e: 00 00:       stw (2rus)      r0, r0[0x0]

<__call_exitprocs>:
             0x00080320: 00 f0 42 77: entsp (lu6)     0x2
             0x00080324: 00 f0 94 d0: bl (lu10)       0x94 <__call_exitprocs_impl>
             0x00080328: c2 77:       retsp (u6)      0x2
             0x0008032a: 00 00:       stw (2rus)      r0, r0[0x0]

<_cleanup_impl>:
             0x0008032c: 00 f0 40 77: entsp (lu6)     0x0
             0x00080330: c0 77:       retsp (u6)      0x0
             0x00080332: 00 00:       stw (2rus)      r0, r0[0x0]

<_cleanup>:
             0x00080334: 00 f0 42 77: entsp (lu6)     0x2
             0x00080338: 00 f0 08 d4: bl (lu10)       -0x8 <_cleanup_impl>
             0x0008033c: c2 77:       retsp (u6)      0x2
             0x0008033e: 00 00:       stw (2rus)      r0, r0[0x0]

<_done>:
             0x00080340: 00 f0 40 77: entsp (lu6)     0x0
             0x00080344: 07 68:       ldc (ru6)       r0, 0x7
             0x00080346: 00 f0 e9 d0: bl (lu10)       0xe9 <_DoSyscall>
             0x0008034a: ed 07:       clre (0r)       
             0x0008034c: ec 07:       waiteu (0r)     
             0x0008034e: 00 00:       stw (2rus)      r0, r0[0x0]

<_exit>:
             0x00080350: 00 f0 40 77: entsp (lu6)     0x0
             0x00080354: 10 90:       add (2rus)      r1, r0, 0x0
             0x00080356: 00 68:       ldc (ru6)       r0, 0x0
             0x00080358: 00 f0 e0 d0: bl (lu10)       0xe0 <_DoSyscall>
             0x0008035c: ed 07:       clre (0r)       
             0x0008035e: ec 07:       waiteu (0r)     

<__alloc_libc_hwlock>:
.label12     0x00080360: 00 f0 40 77: entsp (lu6)     0x0
             0x00080364: 81 87:       getr (rus)      r0, 0x5
             0x00080366: 00 f0 1e 50: stw (lru6)      r0, dp[0x1e]
             0x0008036a: c0 77:       retsp (u6)      0x0

<__lock_fair_acquire>:
             0x0008036c: 00 f0 40 77: entsp (lu6)     0x0
             0x00080370: 00 f0 5e 58: ldw (lru6)      r1, dp[0x1e]
             0x00080374: c5 b6:       in (2r)         r1, res[r1]
             0x00080376: 10 08:       ldw (2rus)      r1, r0[0x0]
             0x00080378: 25 90:       add (2rus)      r2, r1, 0x1
             0x0008037a: 20 00:       stw (2rus)      r2, r0[0x0]
             0x0008037c: 00 f0 9e 58: ldw (lru6)      r2, dp[0x1e]
             0x00080380: ca ae:       out (r2r)       res[r2], r2
.label24     0x00080382: 21 08:       ldw (2rus)      r2, r0[0x1]
             0x00080384: 29 30:       eq (3r)         r2, r2, r1
             0x00080386: 83 7c:       bf (ru6)        r2, -0x3 <.label24>
             0x00080388: c0 77:       retsp (u6)      0x0
             0x0008038a: 00 00:       stw (2rus)      r0, r0[0x0]

<__lock_fair_release>:
             0x0008038c: 00 f0 40 77: entsp (lu6)     0x0
             0x00080390: 11 08:       ldw (2rus)      r1, r0[0x1]
             0x00080392: 15 90:       add (2rus)      r1, r1, 0x1
             0x00080394: 11 00:       stw (2rus)      r1, r0[0x1]
             0x00080396: c0 77:       retsp (u6)      0x0

<__start_core>:
             0x00080398: 00 f0 40 77: entsp (lu6)     0x0
             0x0008039c: 40 90:       add (2rus)      r4, r0, 0x0
             0x0008039e: 34 90:       add (2rus)      r3, r1, 0x0
             0x000803a0: 00 f0 9a d4: bl (lu10)       -0x9a <__init_threadlocal_timer>
             0x000803a4: c0 90:       add (2rus)      r0, r4, 0x0
             0x000803a6: e3 27:       bla (1r)        r3
             0x000803a8: 00 f0 94 d4: bl (lu10)       -0x94 <__free_threadlocal_timer>
             0x000803ac: ee 07:       ssync (0r)      
             0x000803ae: 00 00:       stw (2rus)      r0, r0[0x0]

<__register_exitproc>:
             0x000803b0: 00 f0 48 77: entsp (lu6)     0x8
             0x000803b4: 05 f9 ec f7: std (l2rus)     r5, r4, sp[0x1]
             0x000803b8: 2e f9 ec f7: std (l2rus)     r7, r6, sp[0x2]
             0x000803bc: 06 56:       stw (ru6)       r8, sp[0x6]
             0x000803be: 5c 90:       add (2rus)      r5, r3, 0x0
             0x000803c0: 78 90:       add (2rus)      r7, r2, 0x0
             0x000803c2: 44 90:       add (2rus)      r4, r1, 0x0
             0x000803c4: 60 90:       add (2rus)      r6, r0, 0x0
             0x000803c6: 00 f0 43 7f: ldaw (lu6)      r11, cp[0x3]
             0x000803ca: 9c 91:       add (2rus)      r1, r11, 0x0
             0x000803cc: 00 f0 45 7f: ldaw (lu6)      r11, cp[0x5]
             0x000803d0: c0 90:       add (2rus)      r0, r4, 0x0
             0x000803d2: ac 91:       add (2rus)      r2, r11, 0x0
             0x000803d4: 00 f0 a6 d0: bl (lu10)       0xa6 <__checkFptrGroup>
             0x000803d8: e0 4f:       ecallf (1r)     r0
             0x000803da: 02 f0 03 60: ldaw (lru6)     r0, dp[0x83]
             0x000803de: 00 f0 3b d4: bl (lu10)       -0x3b <__lock_fair_acquire>
             0x000803e2: 00 f0 0e 58: ldw (lru6)      r0, dp[0xe]
             0x000803e6: 11 08:       ldw (2rus)      r1, r0[0x1]
             0x000803e8: 99 a7:       mkmsk (rus)     r2, 0x5
             0x000803ea: 29 c0:       lss (3r)        r2, r2, r1
             0x000803ec: 82 78:       bf (ru6)        r2, 0x2 <.label25>
             0x000803ee: d0 a6:       mkmsk (rus)     r0, 0x20
             0x000803f0: 29 73:       bu (u6)         0x29 <.label26>
.label25     0x000803f2: 9e 79:       bf (ru6)        r6, 0x1e <.label27>
             0x000803f4: 02 f0 88 68: ldc (lru6)      r2, 0x88
             0x000803f8: 32 10:       add (3r)        r3, r0, r2
             0x000803fa: 7d f8 ec 07: stw (l3r)       r7, r3[r1]
             0x000803fe: 11 08:       ldw (2rus)      r1, r0[0x1]
             0x00080400: d9 a6:       mkmsk (rus)     r2, 0x1
             0x00080402: b9 20:       shl (3r)        r11, r2, r1
             0x00080404: 06 f0 c8 69: ldc (lru6)      r7, 0x188
             0x00080408: b3 12:       add (3r)        r7, r0, r7
             0x0008040a: 4c 09:       ldw (2rus)      r8, r7[0x0]
             0x0008040c: b3 46:       or (3r)         r11, r8, r11
             0x0008040e: 7c 01:       stw (2rus)      r11, r7[0x0]
             0x00080410: 1d f8 ec 1f: ldaw (l3r)      r1, r3[r1]
             0x00080414: 02 f0 c0 68: ldc (lru6)      r3, 0x80
             0x00080418: 17 10:       add (3r)        r1, r1, r3
             0x0008041a: 54 00:       stw (2rus)      r5, r1[0x0]
             0x0008041c: 11 08:       ldw (2rus)      r1, r0[0x1]
             0x0008041e: fa b0:       eq (2rus)       r3, r6, 0x2
             0x00080420: c7 78:       bf (ru6)        r3, 0x7 <.label27>
             0x00080422: 29 20:       shl (3r)        r2, r2, r1
             0x00080424: 06 f0 cc 68: ldc (lru6)      r3, 0x18c
             0x00080428: 33 10:       add (3r)        r3, r0, r3
             0x0008042a: bc 08:       ldw (2rus)      r11, r3[0x0]
             0x0008042c: ae 41:       or (3r)         r2, r11, r2
             0x0008042e: 2c 00:       stw (2rus)      r2, r3[0x0]
.label27     0x00080430: 25 90:       add (2rus)      r2, r1, 0x1
             0x00080432: 21 00:       stw (2rus)      r2, r0[0x1]
             0x00080434: 01 f8 ec 1f: ldaw (l3r)      r0, r0[r1]
             0x00080438: 42 00:       stw (2rus)      r4, r0[0x2]
             0x0008043a: 02 f0 03 60: ldaw (lru6)     r0, dp[0x83]
             0x0008043e: 00 f0 5b d4: bl (lu10)       -0x5b <__lock_fair_release>
             0x00080442: 00 68:       ldc (ru6)       r0, 0x0
.label26     0x00080444: 06 5e:       ldw (ru6)       r8, sp[0x6]
             0x00080446: 2e f9 ec ef: ldd (l2rus)     r7, r6, sp[0x2]
             0x0008044a: 05 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x1]
             0x0008044e: c8 77:       retsp (u6)      0x8

<__call_exitprocs_impl>:
             0x00080450: 00 f0 4e 77: entsp (lu6)     0xe
             0x00080454: 07 f9 ec f7: std (l2rus)     r5, r4, sp[0x3]
             0x00080458: 6c fb ec f7: std (l2rus)     r7, r6, sp[0x4]
             0x0008045c: 45 fc ec f7: std (l2rus)     r9, r8, sp[0x5]
             0x00080460: 8c 56:       stw (ru6)       r10, sp[0xc]
             0x00080462: 44 90:       add (2rus)      r4, r1, 0x0
             0x00080464: 01 54:       stw (ru6)       r0, sp[0x1]
             0x00080466: 00 f0 0e 58: ldw (lru6)      r0, dp[0xe]
             0x0008046a: 01 f0 0f 78: bf (lru6)       r0, 0x4f <.label28>
             0x0008046e: 80 6a:       ldc (ru6)       r10, 0x0
.label38     0x00080470: 80 90:       add (2rus)      r8, r0, 0x0
             0x00080472: 11 0a:       ldw (2rus)      r9, r8[0x1]
             0x00080474: d1 a6:       mkmsk (rus)     r0, 0x1
             0x00080476: 84 c1:       lss (3r)        r0, r9, r0
             0x00080478: 01 f0 08 70: bt (lru6)       r0, 0x48 <.label28>
             0x0008047c: 06 f0 08 68: ldc (lru6)      r0, 0x188
             0x00080480: 80 11:       add (3r)        r0, r8, r0
             0x00080482: 04 54:       stw (ru6)       r0, sp[0x4]
             0x00080484: 06 f0 0c 68: ldc (lru6)      r0, 0x18c
             0x00080488: 80 11:       add (3r)        r0, r8, r0
             0x0008048a: 03 54:       stw (ru6)       r0, sp[0x3]
             0x0008048c: 01 fe ec 1f: ldaw (l3r)      r0, r8[r9]
             0x00080490: 02 f0 44 68: ldc (lru6)      r1, 0x84
             0x00080494: 11 10:       add (3r)        r1, r0, r1
             0x00080496: 42 54:       stw (ru6)       r1, sp[0x2]
             0x00080498: 04 f0 44 68: ldc (lru6)      r1, 0x104
             0x0008049c: 11 10:       add (3r)        r1, r0, r1
             0x0008049e: 45 54:       stw (ru6)       r1, sp[0x5]
             0x000804a0: a0 92:       add (2rus)      r6, r0, 0x4
             0x000804a2: f8 91:       add (2rus)      r7, r10, 0x0
.label37     0x000804a4: 04 79:       bf (ru6)        r4, 0x4 <.label29>
             0x000804a6: 05 5c:       ldw (ru6)       r0, sp[0x5]
             0x000804a8: 43 4a:       ldw (3r)        r0, r0[r7]
             0x000804aa: 40 32:       eq (3r)         r0, r0, r4
             0x000804ac: 28 78:       bf (ru6)        r0, 0x28 <.label30>
.label29     0x000804ae: f7 13:       add (3r)        r3, r9, r7
             0x000804b0: 1d 98:       sub (2rus)      r1, r3, 0x1
             0x000804b2: d1 a6:       mkmsk (rus)     r0, 0x1
             0x000804b4: 01 20:       shl (3r)        r0, r0, r1
             0x000804b6: 2b 4b:       ldw (3r)        r2, r6[r7]
             0x000804b8: 31 0a:       ldw (2rus)      r11, r8[0x1]
             0x000804ba: bf 34:       eq (3r)         r3, r3, r11
             0x000804bc: c2 78:       bf (ru6)        r3, 0x2 <.label31>
             0x000804be: 91 01:       stw (2rus)      r1, r8[0x1]
             0x000804c0: 02 73:       bu (u6)         0x2 <.label32>
.label31     0x000804c2: ab fb ec 07: stw (l3r)       r10, r6[r7]
.label32     0x000804c6: 9b 78:       bf (ru6)        r2, 0x1b <.label30>
             0x000804c8: d8 91:       add (2rus)      r5, r10, 0x0
             0x000804ca: 21 0a:       ldw (2rus)      r10, r8[0x1]
             0x000804cc: 44 5c:       ldw (ru6)       r1, sp[0x4]
             0x000804ce: 14 08:       ldw (2rus)      r1, r1[0x0]
             0x000804d0: 14 38:       and (3r)        r1, r1, r0
             0x000804d2: 49 78:       bf (ru6)        r1, 0x9 <.label33>
             0x000804d4: 43 5c:       ldw (ru6)       r1, sp[0x3]
             0x000804d6: 14 08:       ldw (2rus)      r1, r1[0x0]
             0x000804d8: 04 38:       and (3r)        r0, r1, r0
             0x000804da: 42 5c:       ldw (ru6)       r1, sp[0x2]
             0x000804dc: 57 4a:       ldw (3r)        r1, r1[r7]
             0x000804de: 05 78:       bf (ru6)        r0, 0x5 <.label34>
             0x000804e0: 04 90:       add (2rus)      r0, r1, 0x0
             0x000804e2: e2 27:       bla (1r)        r2
             0x000804e4: 04 73:       bu (u6)         0x4 <.label35>
.label33     0x000804e6: e2 27:       bla (1r)        r2
             0x000804e8: 02 73:       bu (u6)         0x2 <.label35>
.label34     0x000804ea: 01 5c:       ldw (ru6)       r0, sp[0x1]
             0x000804ec: e2 27:       bla (1r)        r2
.label35     0x000804ee: 91 09:       ldw (2rus)      r1, r8[0x1]
             0x000804f0: 00 f0 0e 58: ldw (lru6)      r0, dp[0xe]
             0x000804f4: 99 31:       eq (3r)         r1, r10, r1
             0x000804f6: 64 91:       add (2rus)      r10, r5, 0x0
             0x000804f8: 47 78:       bf (ru6)        r1, 0x7 <.label36>
             0x000804fa: 90 34:       eq (3r)         r1, r0, r8
             0x000804fc: 45 78:       bf (ru6)        r1, 0x5 <.label36>
.label30     0x000804fe: 3d 99:       sub (2rus)      r7, r7, 0x1
             0x00080500: c7 13:       add (3r)        r0, r9, r7
             0x00080502: 88 c1:       lss (3r)        r0, r10, r0
             0x00080504: 31 74:       bt (ru6)        r0, -0x31 <.label37>
             0x00080506: 02 73:       bu (u6)         0x2 <.label28>
.label36     0x00080508: 01 f0 0e 74: bt (lru6)       r0, -0x4e <.label38>
.label28     0x0008050c: 8c 5e:       ldw (ru6)       r10, sp[0xc]
             0x0008050e: 45 fc ec ef: ldd (l2rus)     r9, r8, sp[0x5]
             0x00080512: 6c fb ec ef: ldd (l2rus)     r7, r6, sp[0x4]
             0x00080516: 07 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x3]
             0x0008051a: ce 77:       retsp (u6)      0xe

<_DoSyscall>:
             0x0008051c: 00 f0 40 77: entsp (lu6)     0x0
             0x00080520: d0 a6:       mkmsk (rus)     r0, 0x20
             0x00080522: c0 77:       retsp (u6)      0x0

<__checkFptrGroup>:
             0x00080524: 00 f0 40 77: entsp (lu6)     0x0
             0x00080528: 30 90:       add (2rus)      r3, r0, 0x0
.label40     0x0008052a: 06 c8:       lsu (3r)        r0, r1, r2
             0x0008052c: 05 78:       bf (ru6)        r0, 0x5 <.label39>
             0x0008052e: 04 08:       ldw (2rus)      r0, r1[0x0]
             0x00080530: 03 30:       eq (3r)         r0, r0, r3
             0x00080532: 02 70:       bt (ru6)        r0, 0x2 <.label39>
             0x00080534: 54 92:       add (2rus)      r1, r1, 0x4
             0x00080536: 07 77:       bu (u6)         -0x7 <.label40>
.label39     0x00080538: c0 77:       retsp (u6)      0x0

Disassembly of section .eh_frame (size: 36)

             0x0008053c: 0c 00 00 00: 
             0x00080540: 00 00 00 00: 
             0x00080544: 01 00 01 01: 
             0x00080548: 0f 0c 0e 00: 
             0x0008054c: 10 00 00 00: 
             0x00080550: 14 00 00 00: 
             0x00080554: 9c 03 08 00: 
             0x00080558: 12 00 00 00: 
             0x0008055c: 07 0f 00 00: 

Disassembly of section .cp.rodata (size: 12)

<_cp>:
<.cp.rodata>:
<chanends_to_setup>:
.label11     0x00080560: ff 00 00 00: 

<.cp.rodata>:
             0x00080564: 30 19 f0 ff: 

<.cp.rodata>:
             0x00080568: f0 19 f0 ff: 

Disassembly of section .cp.rodata.4 (size: 8)

<.cp.rodata.4>:
<_fptrgroup.stdlib_atexit.group.begin>:
             0x0008056c: 3c 01 08 00: 
             0x00080570: 88 01 08 00: 

Disassembly of section .cp.const4 (size: 48)

<initial_dp>:
             0x00080574: b8 05 08 00: 

<dp_bss_large_start>:
             0x00080578: cc 07 08 00: 

<extmem_bss_start>:
             0x0008057c: 00 00 00 10: 

<.cp.const4>:
<ctor_list_ptr>:
             0x00080580: ac 05 08 00: 

<.cp.const4>:
<dtor_list_ptr>:
             0x00080584: b4 05 08 00: 

<.cp.const4>:
<initial_sp>:
             0x00080588: b0 fe 0f 00: 

<dp_bss_size>:
             0x0008058c: cc 01 00 00: 

<dp_bss_large_size>:
             0x00080590: 00 00 00 00: 

<extmem_bss_size>:
             0x00080594: 00 00 00 00: 

<dtors_size>:
             0x00080598: 00 00 00 00: 

<ctors_size>:
             0x0008059c: 02 00 00 00: 

<.cp.const4>:
             0x000805a0: 02 1f 02 80: 

Disassembly of section .cp.rodata.cst4 (size: 8)

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
             0x000805a4: 00 02 04 00: 
             0x000805a8: ff ff ff 7f: 

Disassembly of section .ctors (size: 8)

<_CTOR_LIST_>:
<.ctors>:
             0x000805ac: 70 01 08 00: 

<.ctors>:
             0x000805b0: 98 01 08 00: 

Disassembly of section .dp.data (size: 40)

<_dp>:
<__timers>:
<.dp.data>:
<.dp.data>:
             0x000805b8: 01 00 00 00: 
             0x000805bc: 00 00 00 00: 
             0x000805c0: 00 00 00 00: 
             0x000805c4: 00 00 00 00: 
             0x000805c8: 00 00 00 00: 
             0x000805cc: 00 00 00 00: 
             0x000805d0: 00 00 00 00: 
             0x000805d4: 00 00 00 00: 

<__sodFlag>:
<.dp.data>:
<.dp.data>:
<.dp.data>:
             0x000805d8: 00 00 00 00: 

<__sodEnd>:
             0x000805dc: 02 01 00 80: 

Disassembly of section .dp.data.4 (size: 20)

<.dp.data.4>:
<par.desc.2>:
             0x000805e0: 24 01 08 00: 
             0x000805e4: 02 00 00 00: 
             0x000805e8: 00 00 00 00: 
             0x000805ec: 30 01 08 00: 

<.dp.data.4>:
<.dp.data.4>:
<.dp.data.4>:
<.dp.data.4>:
<.dp.data.4>:
<_atexit_fns>:
             0x000805f0: 34 06 08 00: 

Disassembly of section .dp.rodata (size: 4)

<tile>:
             0x000805f4: 00 00 01 00: 

Disassembly of section .dp.data.extmem.setps (size: 4)

<.dp.data.extmem.setps>:
<__extmem_setps_val>:
             0x000805f8: 00 18 00 00: 


