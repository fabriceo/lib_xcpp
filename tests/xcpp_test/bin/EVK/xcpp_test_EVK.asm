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
             0x00080040: 01 f0 0e d0: bl (lu10)       0x40e <.label2>
             0x00080044: 01 f0 17 6c: ldw (lru6)      r0, cp[0x57]
             0x00080048: 40 68:       ldc (ru6)       r1, 0x0
             0x0008004a: 01 f0 9d 6c: ldw (lru6)      r2, cp[0x5d]
             0x0008004e: 01 f0 07 d0: bl (lu10)       0x407 <.label2>
             0x00080052: 01 f0 18 6c: ldw (lru6)      r0, cp[0x58]
             0x00080056: 40 68:       ldc (ru6)       r1, 0x0
             0x00080058: 01 f0 9e 6c: ldw (lru6)      r2, cp[0x5e]
             0x0008005c: 01 f0 00 d0: bl (lu10)       0x400 <.label2>
             0x00080060: 01 f0 02 d0: bl (lu10)       0x402 <.label3>
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
             0x0008008c: 00 f0 5e d1: bl (lu10)       0x15e <.label6>
             0x00080090: b0 f8 ec 97: ashr (l2rus)    r11, r0, 0x20
             0x00080094: c2 7a:       bf (ru6)        r11, 0x2 <.label5>
             0x00080096: 01 90:       add (2rus)      r0, r0, 0x1
             0x00080098: f0 4f:       ecallt (1r)     r0
.label5      0x0008009a: 41 64:       ldaw (ru6)      r1, sp[0x1]
             0x0008009c: 00 f0 80 d3: bl (lu10)       0x380 <.label7>
             0x000800a0: 02 70:       bt (ru6)        r0, 0x2 <.label8>
             0x000800a2: 00 f0 c3 d3: bl (lu10)       0x3c3 <.label9>
.label8      0x000800a6: 00 f0 cd d3: bl (lu10)       0x3cd <.label10>

<_InitChildThread>:
             0x000800aa: 01 d0:       bl (u10)        0x1 <_SetupThread>
             0x000800ac: ee 07:       ssync (0r)      

<_SetupThread>:
             0x000800ae: 18 dc:       ldap (u10)      r11, -0x18 <_TrapHandler>
             0x000800b0: ff 07:       set (0r)        kep, r11
             0x000800b2: 01 f0 fd db: ldap (lu10)     r11, 0x7fd <.label11>
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
             0x000800ce: 01 f0 19 d2: bl (lu10)       0x619 <.label12>
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
.label77     0x000800e6: 42 77:       entsp (u6)      0x2

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
             0x00080106: 00 f0 b9 d3: bl (lu10)       0x3b9 <.label13>
             0x0008010a: 01 5d:       ldw (ru6)       r4, sp[0x1]
             0x0008010c: 42 5d:       ldw (ru6)       r5, sp[0x2]
             0x0008010e: 83 5d:       ldw (ru6)       r6, sp[0x3]
             0x00080110: 84 67:       ldaw (ru6)      sp, sp[0x4]

<.fini>:
             0x00080112: c2 77:       retsp (u6)      0x2

Disassembly of section .text (size: 3938)

<_write>:
             0x00080120: ff 17:       nop (0r)        
             0x00080122: 86 7f:       dualentsp (u6)  0x6
             0x00080124: 05 f9 ec f7: std (l2rus)     r5, r4, sp[0x1]
             0x00080128: 48 90:       add (2rus)      r4, r2, 0x0
             0x0008012a: 84 55:       stw (ru6)       r6, sp[0x4]
             0x0008012c: 54 90:       add (2rus)      r5, r1, 0x0
             0x0008012e: 60 90:       add (2rus)      r6, r0, 0x0
             0x00080130: 00 f0 e7 d1: bl (lu10)       0x1e7 <xscope_get_io_config>
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
             0x00080150: 00 f0 e2 d1: bl (lu10)       0x1e2 <xscope_syscall_write>
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
             0x00080170: 00 f0 18 d2: bl (lu10)       0x218 <xscope_syscall_data_write>
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
             0x00080192: 01 f0 73 d0: bl (lu10)       0x473 <__start_other_cores>
             0x00080196: c2 77:       retsp (u6)      0x2

<__main__main_tile_0_task_tile0_task1_0>:
             0x00080198: 00 f0 42 77: entsp (lu6)     0x2
             0x0008019c: 00 f0 ea d0: bl (lu10)       0xea <tile0_task1>
             0x000801a0: c2 77:       retsp (u6)      0x2
             0x000801a2: 00 00:       stw (2rus)      r0, r0[0x0]

<__main__main_tile_0_task_tile0_task2_1>:
             0x000801a4: 00 f0 42 77: entsp (lu6)     0x2
             0x000801a8: 00 f0 e8 d0: bl (lu10)       0xe8 <tile0_task2>
             0x000801ac: c2 77:       retsp (u6)      0x2
             0x000801ae: 00 00:       stw (2rus)      r0, r0[0x0]

<_ZN6XCPort7setModeENS_10PortMode_tEj>:
             0x000801b0: 00 f0 40 77: entsp (lu6)     0x0
             0x000801b4: c6 68:       ldc (ru6)       r3, 0x6
             0x000801b6: 3d c8:       lsu (3r)        r3, r3, r1
             0x000801b8: ea 70:       bt (ru6)        r3, 0x2a <.label19>
             0x000801ba: e1 2f:       bru (1r)        r1
             0x000801bc: 06 73:       bu (u6)         0x6 <.label20>
             0x000801be: 08 73:       bu (u6)         0x8 <.label21>
             0x000801c0: 0b 73:       bu (u6)         0xb <.label22>
             0x000801c2: 0f 73:       bu (u6)         0xf <.label23>
             0x000801c4: 13 73:       bu (u6)         0x13 <.label24>
             0x000801c6: 18 73:       bu (u6)         0x18 <.label25>
             0x000801c8: 1d 73:       bu (u6)         0x1d <.label26>
.label20     0x000801ca: 10 08:       ldw (2rus)      r1, r0[0x0]
             0x000801cc: 48 e8:       setc (ru6)      res[r1], 0x8
             0x000801ce: 1f 73:       bu (u6)         0x1f <.label19>
.label21     0x000801d0: 10 08:       ldw (2rus)      r1, r0[0x0]
             0x000801d2: 48 e8:       setc (ru6)      res[r1], 0x8
             0x000801d4: d9 16:       setd (r2r)      res[r1], r2
             0x000801d6: 1b 73:       bu (u6)         0x1b <.label19>
.label22     0x000801d8: 10 08:       ldw (2rus)      r1, r0[0x0]
             0x000801da: 48 e8:       setc (ru6)      res[r1], 0x8
             0x000801dc: d9 16:       setd (r2r)      res[r1], r2
             0x000801de: 53 e8:       setc (ru6)      res[r1], 0x13
             0x000801e0: 16 73:       bu (u6)         0x16 <.label19>
.label23     0x000801e2: 10 08:       ldw (2rus)      r1, r0[0x0]
             0x000801e4: 48 e8:       setc (ru6)      res[r1], 0x8
             0x000801e6: d9 16:       setd (r2r)      res[r1], r2
             0x000801e8: 4b e8:       setc (ru6)      res[r1], 0xb
             0x000801ea: 11 73:       bu (u6)         0x11 <.label19>
.label24     0x000801ec: 10 08:       ldw (2rus)      r1, r0[0x0]
             0x000801ee: 48 e8:       setc (ru6)      res[r1], 0x8
             0x000801f0: d9 16:       setd (r2r)      res[r1], r2
             0x000801f2: c9 ae:       out (r2r)       res[r1], r2
             0x000801f4: 43 e8:       setc (ru6)      res[r1], 0x3
             0x000801f6: 0b 73:       bu (u6)         0xb <.label19>
.label25     0x000801f8: 10 08:       ldw (2rus)      r1, r0[0x0]
             0x000801fa: 48 e8:       setc (ru6)      res[r1], 0x8
             0x000801fc: d9 16:       setd (r2r)      res[r1], r2
             0x000801fe: c9 ae:       out (r2r)       res[r1], r2
             0x00080200: 53 e8:       setc (ru6)      res[r1], 0x13
             0x00080202: 05 73:       bu (u6)         0x5 <.label19>
.label26     0x00080204: 10 08:       ldw (2rus)      r1, r0[0x0]
             0x00080206: 48 e8:       setc (ru6)      res[r1], 0x8
             0x00080208: d9 16:       setd (r2r)      res[r1], r2
             0x0008020a: c9 ae:       out (r2r)       res[r1], r2
             0x0008020c: 4b e8:       setc (ru6)      res[r1], 0xb
.label19     0x0008020e: c0 77:       retsp (u6)      0x0

<__dtor_PLEDS>:
             0x00080210: 00 f0 40 77: entsp (lu6)     0x0
             0x00080214: 01 f0 20 58: ldw (lru6)      r0, dp[0x60]
             0x00080218: 01 78:       bf (ru6)        r0, 0x1 <.label27>
             0x0008021a: 00 e8:       setc (ru6)      res[r0], 0x0
.label27     0x0008021c: c0 77:       retsp (u6)      0x0
             0x0008021e: 00 00:       stw (2rus)      r0, r0[0x0]

<blinkLedCooperative>:
             0x00080220: 00 f0 4a 77: entsp (lu6)     0xa
             0x00080224: 06 f9 ec f7: std (l2rus)     r5, r4, sp[0x2]
             0x00080228: 2f f9 ec f7: std (l2rus)     r7, r6, sp[0x3]
             0x0008022c: 44 fc ec f7: std (l2rus)     r9, r8, sp[0x4]
             0x00080230: 40 90:       add (2rus)      r4, r0, 0x0
             0x00080232: 01 f0 60 62: ldaw (lru6)     r9, dp[0x60]
             0x00080236: 42 56:       stw (ru6)       r9, sp[0x2]
             0x00080238: 03 55:       stw (ru6)       r4, sp[0x3]
             0x0008023a: 1d a7:       mkmsk (rus)     r7, 0x1
             0x0008023c: 0c 23:       shl (3r)        r0, r7, r4
             0x0008023e: 01 f0 a0 58: ldw (lru6)      r2, dp[0x60]
             0x00080242: d6 fe ec 1f: getd (l2r)      r1, res[r2]
             0x00080246: c4 2e:       andnot (2r)     r1, r0
             0x00080248: d6 16:       setd (r2r)      res[r2], r1
             0x0008024a: c6 ae:       out (r2r)       res[r2], r1
             0x0008024c: 01 f0 24 6c: ldw (lru6)      r0, cp[0x64]
             0x00080250: c0 f8 ec 3f: mul (l3r)       r0, r4, r0
             0x00080254: 00 f0 96 d2: bl (lu10)       0x296 <XCSchedulerYieldDelay>
             0x00080258: 01 f0 26 6c: ldw (lru6)      r0, cp[0x66]
             0x0008025c: d0 f8 ec 3f: mul (l3r)       r1, r4, r0
             0x00080260: 54 10:       add (3r)        r5, r1, r0
             0x00080262: 14 6a:       ldc (ru6)       r8, 0x14
             0x00080264: 82 65:       ldaw (ru6)      r6, sp[0x2]
             0x00080266: c0 90:       add (2rus)      r0, r4, 0x0
             0x00080268: 02 73:       bu (u6)         0x2 <.label28>
.label29     0x0008026a: 42 5e:       ldw (ru6)       r9, sp[0x2]
             0x0008026c: 03 5c:       ldw (ru6)       r0, sp[0x3]
.label28     0x0008026e: 94 09:       ldw (2rus)      r1, r9[0x0]
             0x00080270: d5 fe ec 1f: getd (l2r)      r1, res[r1]
             0x00080274: cc 20:       shl (3r)        r0, r7, r0
             0x00080276: 04 38:       and (3r)        r0, r1, r0
             0x00080278: 10 b0:       eq (2rus)       r1, r0, 0x0
             0x0008027a: c8 90:       add (2rus)      r0, r6, 0x0
             0x0008027c: 00 f0 84 d0: bl (lu10)       0x84 <_ZN9XCPortBit3setEj>
             0x00080280: c4 90:       add (2rus)      r0, r5, 0x0
             0x00080282: 00 f0 7f d2: bl (lu10)       0x27f <XCSchedulerYieldDelay>
             0x00080286: 01 9a:       sub (2rus)      r8, r8, 0x1
             0x00080288: 10 76:       bt (ru6)        r8, -0x10 <.label29>
             0x0008028a: 01 f0 7d 7f: ldaw (lu6)      r11, cp[0x7d]
             0x0008028e: 8c 91:       add (2rus)      r0, r11, 0x0
             0x00080290: d0 90:       add (2rus)      r1, r4, 0x0
             0x00080292: 00 f0 9b d0: bl (lu10)       0x9b <debug_printf>
             0x00080296: 44 fc ec ef: ldd (l2rus)     r9, r8, sp[0x4]
             0x0008029a: 2f f9 ec ef: ldd (l2rus)     r7, r6, sp[0x3]
             0x0008029e: 06 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x2]
             0x000802a2: ca 77:       retsp (u6)      0xa

<_Z13testSchedulerv>:
             0x000802a4: 00 f0 4a 77: entsp (lu6)     0xa
             0x000802a8: 05 f9 ec f7: std (l2rus)     r5, r4, sp[0x1]
             0x000802ac: 2e f9 ec f7: std (l2rus)     r7, r6, sp[0x2]
             0x000802b0: 07 fa ec f7: std (l2rus)     r9, r8, sp[0x3]
             0x000802b4: 88 56:       stw (ru6)       r10, sp[0x8]
             0x000802b6: 80 69:       ldc (ru6)       r6, 0x0
             0x000802b8: 01 f0 ce 69: ldc (lru6)      r7, 0x4e
             0x000802bc: 01 f0 0e 6a: ldc (lru6)      r8, 0x4e
             0x000802c0: 01 f0 8e 6a: ldc (lru6)      r10, 0x4e
             0x000802c4: 02 69:       ldc (ru6)       r4, 0x2
             0x000802c6: 48 6a:       ldc (ru6)       r9, 0x8
             0x000802c8: 07 73:       bu (u6)         0x7 <.label30>
.label32     0x000802ca: 19 17:       setd (r2r)      res[r1], r6
             0x000802cc: 09 af:       out (r2r)       res[r1], r6
             0x000802ce: 02 f0 41 7f: ldaw (lu6)      r11, cp[0x81]
             0x000802d2: 8c 91:       add (2rus)      r0, r11, 0x0
             0x000802d4: 00 f0 7a d0: bl (lu10)       0x7a <debug_printf>
.label30     0x000802d8: 01 f0 20 60: ldaw (lru6)     r0, dp[0x60]
             0x000802dc: 44 68:       ldc (ru6)       r1, 0x4
             0x000802de: e8 90:       add (2rus)      r2, r6, 0x0
             0x000802e0: 00 f0 9a d4: bl (lu10)       -0x9a <_ZN6XCPort7setModeENS_10PortMode_tEj>
             0x000802e4: 00 f0 64 dc: ldap (lu10)     r11, -0x64 <blinkLedCooperative>
             0x000802e8: 8c 91:       add (2rus)      r0, r11, 0x0
             0x000802ea: 01 f0 45 7f: ldaw (lu6)      r11, cp[0x45]
             0x000802ee: dc 90:       add (2rus)      r1, r7, 0x0
             0x000802f0: ac 91:       add (2rus)      r2, r11, 0x0
             0x000802f2: f8 90:       add (2rus)      r3, r6, 0x0
             0x000802f4: 00 f0 f6 d1: bl (lu10)       0x1f6 <XCSchedulerCreateTask_>
             0x000802f8: 00 f0 6e dc: ldap (lu10)     r11, -0x6e <blinkLedCooperative>
             0x000802fc: 8c 91:       add (2rus)      r0, r11, 0x0
             0x000802fe: 01 f0 4a 7f: ldaw (lu6)      r11, cp[0x4a]
             0x00080302: 90 91:       add (2rus)      r1, r8, 0x0
             0x00080304: ac 91:       add (2rus)      r2, r11, 0x0
             0x00080306: dd a6:       mkmsk (rus)     r3, 0x1
             0x00080308: 00 f0 ec d1: bl (lu10)       0x1ec <XCSchedulerCreateTask_>
             0x0008030c: 00 f0 78 dc: ldap (lu10)     r11, -0x78 <blinkLedCooperative>
             0x00080310: 8c 91:       add (2rus)      r0, r11, 0x0
             0x00080312: 01 f0 4f 7f: ldaw (lu6)      r11, cp[0x4f]
             0x00080316: 98 91:       add (2rus)      r1, r10, 0x0
             0x00080318: ac 91:       add (2rus)      r2, r11, 0x0
             0x0008031a: f0 90:       add (2rus)      r3, r4, 0x0
             0x0008031c: 00 f0 e2 d1: bl (lu10)       0x1e2 <XCSchedulerCreateTask_>
             0x00080320: 05 73:       bu (u6)         0x5 <.label31>
.label33     0x00080322: 15 ff ec 1f: getd (l2r)      r5, res[r1]
             0x00080326: 65 2f:       andnot (2r)     r5, r9
             0x00080328: 15 17:       setd (r2r)      res[r1], r5
             0x0008032a: 05 af:       out (r2r)       res[r1], r5
.label31     0x0008032c: 00 f0 90 d1: bl (lu10)       0x190 <XCSchedulerYield>
             0x00080330: 01 f0 60 58: ldw (lru6)      r1, dp[0x60]
             0x00080334: 36 7c:       bf (ru6)        r0, -0x36 <.label32>
             0x00080336: d1 fe ec 1f: getd (l2r)      r0, res[r1]
             0x0008033a: d3 46:       zext (rus)      r0, 0x3
             0x0008033c: 0e 74:       bt (ru6)        r0, -0xe <.label33>
             0x0008033e: 15 ff ec 1f: getd (l2r)      r5, res[r1]
             0x00080342: 95 45:       or (3r)         r5, r5, r9
             0x00080344: 15 17:       setd (r2r)      res[r1], r5
             0x00080346: 05 af:       out (r2r)       res[r1], r5
             0x00080348: 0f 77:       bu (u6)         -0xf <.label31>
             0x0008034a: 00 00:       stw (2rus)      r0, r0[0x0]

<_get_cmdline>:
.label6      0x0008034c: 00 f0 40 77: entsp (lu6)     0x0
             0x00080350: 01 f0 21 50: stw (lru6)      r0, dp[0x61]
             0x00080354: 01 f0 62 50: stw (lru6)      r1, dp[0x62]
             0x00080358: d0 a6:       mkmsk (rus)     r0, 0x20
             0x0008035a: c0 77:       retsp (u6)      0x0

<_Z11testcmdlinev>:
             0x0008035c: 00 f0 42 77: entsp (lu6)     0x2
             0x00080360: 01 f0 62 58: ldw (lru6)      r1, dp[0x62]
             0x00080364: 01 f0 a1 58: ldw (lru6)      r2, dp[0x61]
             0x00080368: 01 f0 6d 7f: ldaw (lu6)      r11, cp[0x6d]
             0x0008036c: 8c 91:       add (2rus)      r0, r11, 0x0
             0x0008036e: 00 f0 2d d0: bl (lu10)       0x2d <debug_printf>
             0x00080372: c2 77:       retsp (u6)      0x2

<tile0_task1>:
             0x00080374: 00 f0 42 77: entsp (lu6)     0x2
             0x00080378: 00 f0 6c d4: bl (lu10)       -0x6c <_Z13testSchedulerv>

<tile0_task2>:
             0x0008037c: 00 f0 42 77: entsp (lu6)     0x2
             0x00080380: 00 f0 14 d4: bl (lu10)       -0x14 <_Z11testcmdlinev>
             0x00080384: c2 77:       retsp (u6)      0x2
             0x00080386: 00 00:       stw (2rus)      r0, r0[0x0]

<_ZN9XCPortBit3setEj>:
             0x00080388: 00 f0 40 77: entsp (lu6)     0x0
             0x0008038c: b0 08:       ldw (2rus)      r11, r0[0x0]
             0x0008038e: 21 08:       ldw (2rus)      r2, r0[0x1]
             0x00080390: dd a6:       mkmsk (rus)     r3, 0x1
             0x00080392: 2e 20:       shl (3r)        r2, r3, r2
             0x00080394: 3c 0a:       ldw (2rus)      r11, r11[0x0]
             0x00080396: 46 78:       bf (ru6)        r1, 0x6 <.label34>
             0x00080398: 3f ff ec 1f: getd (l2r)      r3, res[r11]
             0x0008039c: 3e 40:       or (3r)         r3, r3, r2
             0x0008039e: 3f 17:       setd (r2r)      res[r11], r3
             0x000803a0: 2f af:       out (r2r)       res[r11], r3
             0x000803a2: 05 73:       bu (u6)         0x5 <.label35>
.label34     0x000803a4: 3f ff ec 1f: getd (l2r)      r3, res[r11]
             0x000803a8: ce 2e:       andnot (2r)     r3, r2
             0x000803aa: 3f 17:       setd (r2r)      res[r11], r3
             0x000803ac: 2f af:       out (r2r)       res[r11], r3
.label35     0x000803ae: c0 77:       retsp (u6)      0x0

<_GLOBAL__sub_I_tests.cpp>:
             0x000803b0: 00 f0 42 77: entsp (lu6)     0x2
             0x000803b4: 01 f0 23 6c: ldw (lru6)      r0, cp[0x63]
             0x000803b8: 01 f0 20 50: stw (lru6)      r0, dp[0x60]
             0x000803bc: 08 e8:       setc (ru6)      res[r0], 0x8
             0x000803be: 00 f0 d9 dc: ldap (lu10)     r11, -0xd9 <__dtor_PLEDS>
             0x000803c2: 8c 91:       add (2rus)      r0, r11, 0x0
             0x000803c4: 00 f0 80 d3: bl (lu10)       0x380 <atexit>
             0x000803c8: c2 77:       retsp (u6)      0x2
             0x000803ca: 00 00:       stw (2rus)      r0, r0[0x0]

<debug_printf>:
             0x000803cc: 00 f0 40 77: entsp (lu6)     0x0
             0x000803d0: b2 77:       extsp (u6)      0x32
             0x000803d2: c1 57:       stw (ru6)       lr, sp[0x1]
             0x000803d4: 28 55:       stw (ru6)       r4, sp[0x28]
             0x000803d6: 69 55:       stw (ru6)       r5, sp[0x29]
             0x000803d8: aa 55:       stw (ru6)       r6, sp[0x2a]
             0x000803da: eb 55:       stw (ru6)       r7, sp[0x2b]
             0x000803dc: 2c 56:       stw (ru6)       r8, sp[0x2c]
             0x000803de: 6d 56:       stw (ru6)       r9, sp[0x2d]
             0x000803e0: ae 56:       stw (ru6)       r10, sp[0x2e]
             0x000803e2: a0 90:       add (2rus)      r10, r0, 0x0
             0x000803e4: 70 54:       stw (ru6)       r1, sp[0x30]
             0x000803e6: b1 54:       stw (ru6)       r2, sp[0x31]
             0x000803e8: f2 54:       stw (ru6)       r3, sp[0x32]
             0x000803ea: 47 66:       ldaw (ru6)      r9, sp[0x7]
             0x000803ec: 30 64:       ldaw (ru6)      r0, sp[0x30]
             0x000803ee: 06 54:       stw (ru6)       r0, sp[0x6]
             0x000803f0: 00 6a:       ldc (ru6)       r8, 0x0
             0x000803f2: 08 8e:       ld8u (3r)       r0, r10[r8]
             0x000803f4: 02 f0 36 78: bf (lru6)       r0, 0xb6 <.label36>
             0x000803f8: 01 f0 b7 68: ldc (lru6)      r2, 0x77
             0x000803fc: 47 64:       ldaw (ru6)      r1, sp[0x7]
             0x000803fe: 26 10:       add (3r)        r2, r1, r2
             0x00080400: 85 54:       stw (ru6)       r2, sp[0x5]
             0x00080402: 19 a7:       mkmsk (rus)     r6, 0x1
             0x00080404: 01 f0 68 6d: ldw (lru6)      r5, cp[0x68]
             0x00080408: ca 69:       ldc (ru6)       r7, 0xa
             0x0008040a: 94 90:       add (2rus)      r9, r1, 0x0
.label54     0x0008040c: 45 5c:       ldw (ru6)       r1, sp[0x5]
             0x0008040e: 95 cc:       lsu (3r)        r1, r1, r9
             0x00080410: 48 78:       bf (ru6)        r1, 0x8 <.label37>
             0x00080412: 07 65:       ldaw (ru6)      r4, sp[0x7]
             0x00080414: e4 1b:       sub (3r)        r2, r9, r4
             0x00080416: c8 90:       add (2rus)      r0, r6, 0x0
             0x00080418: d0 90:       add (2rus)      r1, r4, 0x0
             0x0008041a: 00 f0 7f d5: bl (lu10)       -0x17f <_write>
             0x0008041e: 08 8e:       ld8u (3r)       r0, r10[r8]
             0x00080420: 50 91:       add (2rus)      r9, r4, 0x0
.label37     0x00080422: 10 90:       add (2rus)      r1, r0, 0x0
             0x00080424: 34 47:       zext (rus)      r1, 0x8
             0x00080426: a5 68:       ldc (ru6)       r2, 0x25
             0x00080428: 16 30:       eq (3r)         r1, r1, r2
             0x0008042a: 71 78:       bf (ru6)        r1, 0x31 <.label38>
             0x0008042c: 89 91:       add (2rus)      r0, r10, 0x1
             0x0008042e: da 8b:       ld8u (3r)       r1, r10[r6]
             0x00080430: 94 fc ec a7: ldaw (l2rus)    r1, r1[-0x8]
             0x00080434: 34 47:       zext (rus)      r1, 0x8
             0x00080436: 25 a8:       shr (2rus)      r2, r1, 0x1
             0x00080438: c6 68:       ldc (ru6)       r3, 0x6
             0x0008043a: 2e c8:       lsu (3r)        r2, r3, r2
             0x0008043c: 86 70:       bt (ru6)        r2, 0x6 <.label39>
             0x0008043e: d9 20:       shl (3r)        r1, r6, r1
             0x00080440: a0 f0 89 68: ldc (lru6)      r2, 0x2809
             0x00080444: 16 38:       and (3r)        r1, r1, r2
             0x00080446: 41 78:       bf (ru6)        r1, 0x1 <.label39>
             0x00080448: 8a 91:       add (2rus)      r0, r10, 0x2
.label39     0x0008044a: 11 98:       sub (2rus)      r1, r0, 0x1
.label40     0x0008044c: 45 90:       add (2rus)      r4, r1, 0x1
             0x0008044e: 46 8a:       ld8u (3r)       r0, r1[r6]
             0x00080450: 51 12:       add (3r)        r1, r0, r5
             0x00080452: 34 47:       zext (rus)      r1, 0x8
             0x00080454: 67 ca:       lsu (3r)        r2, r1, r7
             0x00080456: d0 90:       add (2rus)      r1, r4, 0x0
             0x00080458: 87 74:       bt (ru6)        r2, -0x7 <.label40>
             0x0008045a: 00 f0 50 58: ldw (lru6)      r1, dp[0x10]
             0x0008045e: 11 10:       add (3r)        r1, r0, r1
             0x00080460: 56 8a:       ld8u (3r)       r1, r1[r6]
             0x00080462: d5 46:       zext (rus)      r1, 0x1
             0x00080464: 42 78:       bf (ru6)        r1, 0x2 <.label41>
             0x00080466: 80 fc ec 9f: ldaw (l2rus)    r0, r0[0x8]
.label41     0x0008046a: 01 f0 6f 68: ldc (lru6)      r1, 0x6f
             0x0008046e: 14 c0:       lss (3r)        r1, r1, r0
             0x00080470: 55 70:       bt (ru6)        r1, 0x15 <.label42>
             0x00080472: 01 f0 63 68: ldc (lru6)      r1, 0x63
             0x00080476: 11 30:       eq (3r)         r1, r0, r1
             0x00080478: 6b 78:       bf (ru6)        r1, 0x2b <.label43>
             0x0008047a: 06 5c:       ldw (ru6)       r0, sp[0x6]
             0x0008047c: 50 92:       add (2rus)      r1, r0, 0x4
             0x0008047e: 46 54:       stw (ru6)       r1, sp[0x6]
             0x00080480: 00 08:       ldw (2rus)      r0, r0[0x0]
             0x00080482: 95 91:       add (2rus)      r1, r9, 0x1
             0x00080484: 04 fe ec 8f: st8 (l3r)       r0, r9[r8]
             0x00080488: 94 90:       add (2rus)      r9, r1, 0x0
             0x0008048a: 01 f0 27 73: bu (lu6)        0x67 <.label44>
.label38     0x0008048e: 95 91:       add (2rus)      r1, r9, 0x1
             0x00080490: 04 fe ec 8f: st8 (l3r)       r0, r9[r8]
             0x00080494: 94 90:       add (2rus)      r9, r1, 0x0
             0x00080496: c8 91:       add (2rus)      r4, r10, 0x0
             0x00080498: 01 f0 20 73: bu (lu6)        0x60 <.label44>
.label42     0x0008049c: 01 f0 67 6c: ldw (lru6)      r1, cp[0x67]
             0x000804a0: 01 10:       add (3r)        r0, r0, r1
             0x000804a2: 48 68:       ldc (ru6)       r1, 0x8
             0x000804a4: 14 c8:       lsu (3r)        r1, r1, r0
             0x000804a6: 01 f0 59 70: bt (lru6)       r1, 0x59 <.label44>
             0x000804aa: e0 2f:       bru (1r)        r0
             0x000804ac: 0a 73:       bu (u6)         0xa <.label45>
             0x000804ae: 07 73:       bu (u6)         0x7 <.label46>
             0x000804b0: 06 73:       bu (u6)         0x6 <.label46>
             0x000804b2: 1d 73:       bu (u6)         0x1d <.label47>
             0x000804b4: 04 73:       bu (u6)         0x4 <.label46>
             0x000804b6: 3d 73:       bu (u6)         0x3d <.label48>
             0x000804b8: 02 73:       bu (u6)         0x2 <.label46>
             0x000804ba: 01 73:       bu (u6)         0x1 <.label46>
             0x000804bc: 02 73:       bu (u6)         0x2 <.label45>
.label46     0x000804be: 01 f0 0d 73: bu (lu6)        0x4d <.label44>
.label45     0x000804c2: 06 5c:       ldw (ru6)       r0, sp[0x6]
             0x000804c4: 50 92:       add (2rus)      r1, r0, 0x4
             0x000804c6: 46 54:       stw (ru6)       r1, sp[0x6]
             0x000804c8: 00 08:       ldw (2rus)      r0, r0[0x0]
             0x000804ca: 94 91:       add (2rus)      r1, r9, 0x0
             0x000804cc: 90 68:       ldc (ru6)       r2, 0x10
             0x000804ce: 37 73:       bu (u6)         0x37 <.label49>
.label43     0x000804d0: 01 f0 64 68: ldc (lru6)      r1, 0x64
             0x000804d4: 01 30:       eq (3r)         r0, r0, r1
             0x000804d6: 01 f0 01 78: bf (lru6)       r0, 0x41 <.label44>
             0x000804da: 20 92:       add (2rus)      r10, r8, 0x0
             0x000804dc: 06 5c:       ldw (ru6)       r0, sp[0x6]
             0x000804de: 50 92:       add (2rus)      r1, r0, 0x4
             0x000804e0: 46 54:       stw (ru6)       r1, sp[0x6]
             0x000804e2: 00 08:       ldw (2rus)      r0, r0[0x0]
             0x000804e4: 10 f8 ec 97: ashr (l2rus)    r1, r0, 0x20
             0x000804e8: 6e 70:       bt (ru6)        r1, 0x2e <.label50>
             0x000804ea: 04 92:       add (2rus)      r8, r9, 0x0
             0x000804ec: 31 73:       bu (u6)         0x31 <.label51>
.label47     0x000804ee: 06 5c:       ldw (ru6)       r0, sp[0x6]
             0x000804f0: 50 92:       add (2rus)      r1, r0, 0x4
             0x000804f2: 46 54:       stw (ru6)       r1, sp[0x6]
             0x000804f4: 00 08:       ldw (2rus)      r0, r0[0x0]
             0x000804f6: 04 54:       stw (ru6)       r0, sp[0x4]
             0x000804f8: 00 f0 f0 d2: bl (lu10)       0x2f0 <strlen>
             0x000804fc: 80 90:       add (2rus)      r8, r0, 0x0
             0x000804fe: 01 f0 38 68: ldc (lru6)      r0, 0x78
             0x00080502: 80 c1:       lss (3r)        r0, r8, r0
             0x00080504: 07 70:       bt (ru6)        r0, 0x7 <.label52>
             0x00080506: 87 66:       ldaw (ru6)      r10, sp[0x7]
             0x00080508: 26 1e:       sub (3r)        r2, r9, r10
             0x0008050a: c8 90:       add (2rus)      r0, r6, 0x0
             0x0008050c: 98 91:       add (2rus)      r1, r10, 0x0
             0x0008050e: 00 f0 f9 d5: bl (lu10)       -0x1f9 <_write>
             0x00080512: 18 92:       add (2rus)      r9, r10, 0x0
.label52     0x00080514: 01 f0 37 68: ldc (lru6)      r0, 0x77
             0x00080518: 10 90:       add (2rus)      r1, r0, 0x0
             0x0008051a: 84 c4:       lss (3r)        r0, r1, r8
             0x0008051c: a4 90:       add (2rus)      r10, r1, 0x0
             0x0008051e: 01 70:       bt (ru6)        r0, 0x1 <.label53>
             0x00080520: 20 92:       add (2rus)      r10, r8, 0x0
.label53     0x00080522: 84 91:       add (2rus)      r0, r9, 0x0
             0x00080524: 44 5c:       ldw (ru6)       r1, sp[0x4]
             0x00080526: a8 91:       add (2rus)      r2, r10, 0x0
             0x00080528: 00 f0 e2 d2: bl (lu10)       0x2e2 <memcpy> <__memcpy_4>
             0x0008052c: 96 16:       add (3r)        r9, r9, r10
             0x0008052e: 00 6a:       ldc (ru6)       r8, 0x0
             0x00080530: 15 73:       bu (u6)         0x15 <.label44>
.label48     0x00080532: 06 5c:       ldw (ru6)       r0, sp[0x6]
             0x00080534: 50 92:       add (2rus)      r1, r0, 0x4
             0x00080536: 46 54:       stw (ru6)       r1, sp[0x6]
             0x00080538: 00 08:       ldw (2rus)      r0, r0[0x0]
             0x0008053a: 94 91:       add (2rus)      r1, r9, 0x0
             0x0008053c: ec 90:       add (2rus)      r2, r7, 0x0
.label49     0x0008053e: 00 f0 21 d0: bl (lu10)       0x21 <itoa>
             0x00080542: 14 12:       add (3r)        r9, r9, r0
             0x00080544: 0b 73:       bu (u6)         0xb <.label44>
.label50     0x00080546: 05 92:       add (2rus)      r8, r9, 0x1
             0x00080548: 6d 68:       ldc (ru6)       r1, 0x2d
             0x0008054a: 16 fe ec 8f: st8 (l3r)       r1, r9[r10]
             0x0008054e: c0 96:       neg (2r)        r0, r0
.label51     0x00080550: 90 91:       add (2rus)      r1, r8, 0x0
             0x00080552: ec 90:       add (2rus)      r2, r7, 0x0
             0x00080554: 00 f0 16 d0: bl (lu10)       0x16 <itoa>
             0x00080558: 10 12:       add (3r)        r9, r8, r0
             0x0008055a: 08 92:       add (2rus)      r8, r10, 0x0
.label44     0x0008055c: 61 91:       add (2rus)      r10, r4, 0x1
             0x0008055e: 02 8b:       ld8u (3r)       r0, r4[r6]
             0x00080560: 02 f0 2c 74: bt (lru6)       r0, -0xac <.label54>
.label36     0x00080564: 47 64:       ldaw (ru6)      r1, sp[0x7]
             0x00080566: a5 19:       sub (3r)        r2, r9, r1
             0x00080568: d1 a6:       mkmsk (rus)     r0, 0x1
             0x0008056a: 00 f0 27 d6: bl (lu10)       -0x227 <_write>
             0x0008056e: ae 5e:       ldw (ru6)       r10, sp[0x2e]
             0x00080570: 2c 5e:       ldw (ru6)       r8, sp[0x2c]
             0x00080572: 6d 5e:       ldw (ru6)       r9, sp[0x2d]
             0x00080574: aa 5d:       ldw (ru6)       r6, sp[0x2a]
             0x00080576: eb 5d:       ldw (ru6)       r7, sp[0x2b]
             0x00080578: 28 5d:       ldw (ru6)       r4, sp[0x28]
             0x0008057a: 69 5d:       ldw (ru6)       r5, sp[0x29]
             0x0008057c: c1 5f:       ldw (ru6)       lr, sp[0x1]
             0x0008057e: b2 67:       ldaw (ru6)      sp, sp[0x32]
             0x00080580: c0 77:       retsp (u6)      0x0
             0x00080582: 00 00:       stw (2rus)      r0, r0[0x0]

<itoa>:
             0x00080584: 00 f0 46 77: entsp (lu6)     0x6
             0x00080588: 05 f9 ec f7: std (l2rus)     r5, r4, sp[0x1]
             0x0008058c: 84 55:       stw (ru6)       r6, sp[0x4]
             0x0008058e: 44 90:       add (2rus)      r4, r1, 0x0
             0x00080590: 40 68:       ldc (ru6)       r1, 0x0
             0x00080592: 10 78:       bf (ru6)        r0, 0x10 <.label55>
             0x00080594: 30 90:       add (2rus)      r3, r0, 0x0
.label56     0x00080596: 5e f8 ec 4f: divu (l3r)      r5, r3, r2
             0x0008059a: 3e f8 ec cf: remu (l3r)      r3, r3, r2
             0x0008059e: 01 f0 6f 7f: ldaw (lu6)      r11, cp[0x6f]
             0x000805a2: bf 89:       ld8u (3r)       r3, r11[r3]
             0x000805a4: f1 f8 ec 8f: st8 (l3r)       r3, r4[r1]
             0x000805a8: 15 90:       add (2rus)      r1, r1, 0x1
             0x000805aa: f4 90:       add (2rus)      r3, r5, 0x0
             0x000805ac: 4c 75:       bt (ru6)        r5, -0xc <.label56>
             0x000805ae: 00 b0:       eq (2rus)       r0, r0, 0x0
             0x000805b0: 21 18:       sub (3r)        r2, r0, r1
             0x000805b2: 01 73:       bu (u6)         0x1 <.label57>
.label55     0x000805b4: 20 b0:       eq (2rus)       r2, r0, 0x0
.label57     0x000805b6: 19 a7:       mkmsk (rus)     r6, 0x1
             0x000805b8: 4a c2:       lss (3r)        r0, r2, r6
             0x000805ba: 06 70:       bt (ru6)        r0, 0x6 <.label58>
             0x000805bc: 59 10:       add (3r)        r5, r2, r1
             0x000805be: c1 10:       add (3r)        r0, r4, r1
             0x000805c0: 70 68:       ldc (ru6)       r1, 0x30
             0x000805c2: 00 f0 4d d1: bl (lu10)       0x14d <memset>
             0x000805c6: 01 73:       bu (u6)         0x1 <.label59>
.label58     0x000805c8: 54 90:       add (2rus)      r5, r1, 0x0
.label59     0x000805ca: c5 98:       sub (2rus)      r0, r5, 0x1
             0x000805cc: 52 c2:       lss (3r)        r1, r0, r6
             0x000805ce: 4d 70:       bt (ru6)        r1, 0xd <.label60>
             0x000805d0: d4 a6:       mkmsk (rus)     r1, 0x20
.label61     0x000805d2: 22 13:       add (3r)        r2, r4, r6
             0x000805d4: 39 88:       ld8u (3r)       r3, r2[r1]
             0x000805d6: 70 89:       ld8u (3r)       r11, r4[r0]
             0x000805d8: b9 f8 ec 8f: st8 (l3r)       r11, r2[r1]
             0x000805dc: f0 f8 ec 8f: st8 (l3r)       r3, r4[r0]
             0x000805e0: 01 98:       sub (2rus)      r0, r0, 0x1
             0x000805e2: e9 90:       add (2rus)      r2, r6, 0x1
             0x000805e4: f8 c0:       lss (3r)        r3, r6, r0
             0x000805e6: 68 90:       add (2rus)      r6, r2, 0x0
             0x000805e8: cc 74:       bt (ru6)        r3, -0xc <.label61>
.label60     0x000805ea: c4 90:       add (2rus)      r0, r5, 0x0
             0x000805ec: 84 5d:       ldw (ru6)       r6, sp[0x4]
             0x000805ee: 05 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x1]
             0x000805f2: c6 77:       retsp (u6)      0x6

<__dtor_XCPortUndefined>:
             0x000805f4: 00 f0 40 77: entsp (lu6)     0x0
             0x000805f8: 01 f0 23 58: ldw (lru6)      r0, dp[0x63]
             0x000805fc: 01 78:       bf (ru6)        r0, 0x1 <.label62>
             0x000805fe: 00 e8:       setc (ru6)      res[r0], 0x0
.label62     0x00080600: c0 77:       retsp (u6)      0x0
             0x00080602: 00 00:       stw (2rus)      r0, r0[0x0]

<_GLOBAL__sub_I_XC_core.cpp>:
             0x00080604: 00 f0 44 77: entsp (lu6)     0x4
             0x00080608: 05 f9 ec f7: std (l2rus)     r5, r4, sp[0x1]
             0x0008060c: 00 69:       ldc (ru6)       r4, 0x0
             0x0008060e: 01 f0 23 51: stw (lru6)      r4, dp[0x63]
             0x00080612: 01 f0 63 61: ldaw (lru6)     r5, dp[0x63]
             0x00080616: 00 f0 13 dc: ldap (lu10)     r11, -0x13 <__dtor_XCPortUndefined>
             0x0008061a: 8c 91:       add (2rus)      r0, r11, 0x0
             0x0008061c: 00 f0 54 d2: bl (lu10)       0x254 <atexit>
             0x00080620: 00 f0 58 51: stw (lru6)      r5, dp[0x18]
             0x00080624: 00 f0 19 51: stw (lru6)      r4, dp[0x19]
             0x00080628: 01 f0 24 51: stw (lru6)      r4, dp[0x64]
             0x0008062c: 00 f0 1a 51: stw (lru6)      r4, dp[0x1a]
             0x00080630: 00 f0 1b 51: stw (lru6)      r4, dp[0x1b]
             0x00080634: 00 f0 1c 51: stw (lru6)      r4, dp[0x1c]
             0x00080638: 00 f0 1d 51: stw (lru6)      r4, dp[0x1d]
             0x0008063c: 05 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x1]
             0x00080640: c4 77:       retsp (u6)      0x4
             0x00080642: 00 00:       stw (2rus)      r0, r0[0x0]
             0x00080644: 00 00:       stw (2rus)      r0, r0[0x0]
             0x00080646: 00 00:       stw (2rus)      r0, r0[0x0]
             0x00080648: 00 00:       stw (2rus)      r0, r0[0x0]
             0x0008064a: 00 00:       stw (2rus)      r0, r0[0x0]
             0x0008064c: 00 00:       stw (2rus)      r0, r0[0x0]
             0x0008064e: 00 00:       stw (2rus)      r0, r0[0x0]

<XCSchedulerYield>:
             0x00080650: 00 f0 4a 77: entsp (lu6)     0xa
             0x00080654: ee 17:       get (0r)        r11, id
             0x00080656: 00 f0 60 60: ldaw (lru6)     r1, dp[0x20]
             0x0008065a: a7 4c:       ldw (3r)        r2, r1[r11]
             0x0008065c: 91 70:       bt (ru6)        r2, 0x11 <XCSchedulerYield_entry>
             0x0008065e: ca 77:       retsp (u6)      0xa
             0x00080660: e3 8f:       gettime (1r)    r3
             0x00080662: 0c 78:       bf (ru6)        r0, 0xc <.label63>
             0x00080664: 3c 10:       add (3r)        r3, r3, r0
             0x00080666: 00 f0 00 60: ldaw (lru6)     r0, dp[0x0]
             0x0008066a: 93 4c:       ldw (3r)        r1, r0[r11]
             0x0008066c: 41 70:       bt (ru6)        r1, 0x1 <.label64>
             0x0008066e: c6 86:       getr (rus)      r1, 0x2
.label64     0x00080670: 93 fc ec 07: stw (l3r)       r1, r0[r11]
             0x00080674: 49 e8:       setc (ru6)      res[r1], 0x9
             0x00080676: dd 16:       setd (r2r)      res[r1], r3
             0x00080678: cd b6:       in (2r)         r3, res[r1]
             0x0008067a: 7a 02:       stw (2rus)      r3, r2[0x6]
.label63     0x0008067c: ca 77:       retsp (u6)      0xa
             0x0008067e: ff 17:       nop (0r)        

<XCSchedulerYield_entry>:
             0x00080680: 05 f9 ec f7: std (l2rus)     r5, r4, sp[0x1]
             0x00080684: 2e f9 ec f7: std (l2rus)     r7, r6, sp[0x2]
             0x00080688: f7 fc ec 1f: ldaw (l3r)      r7, r1[r11]
             0x0008068c: 88 56:       stw (ru6)       r10, sp[0x8]
             0x0008068e: 07 fa ec f7: std (l2rus)     r9, r8, sp[0x3]
             0x00080692: 48 90:       add (2rus)      r4, r2, 0x0
             0x00080694: 00 64:       ldaw (ru6)      r0, sp[0x0]
             0x00080696: c0 00:       stw (2rus)      r0, r4[0x0]
             0x00080698: 40 0b:       ldw (2rus)      r4, r4[0x4]
             0x0008069a: c2 30:       eq (3r)         r0, r4, r2
             0x0008069c: 03 78:       bf (ru6)        r0, 0x3 <.label65>
             0x0008069e: 00 68:       ldc (ru6)       r0, 0x0
             0x000806a0: cc 00:       stw (2rus)      r0, r7[0x0]
             0x000806a2: 17 73:       bu (u6)         0x17 <.label66>
.label65     0x000806a4: 0c 01:       stw (2rus)      r4, r7[0x0]
             0x000806a6: f1 08:       ldw (2rus)      r3, r4[0x1]
             0x000806a8: d1 78:       bf (ru6)        r3, 0x11 <.label67>
             0x000806aa: 00 68:       ldc (ru6)       r0, 0x0
             0x000806ac: c1 00:       stw (2rus)      r0, r4[0x1]
             0x000806ae: c0 08:       ldw (2rus)      r0, r4[0x0]
             0x000806b0: f0 2f:       set (1r)        sp, r0
             0x000806b2: c2 08:       ldw (2rus)      r0, r4[0x2]
             0x000806b4: d3 08:       ldw (2rus)      r1, r4[0x3]
             0x000806b6: e0 90:       add (2rus)      r2, r4, 0x0
             0x000806b8: e3 27:       bla (1r)        r3
             0x000806ba: 10 0b:       ldw (2rus)      r1, r4[0x4]
             0x000806bc: 01 0b:       ldw (2rus)      r0, r4[0x5]
             0x000806be: 50 02:       stw (2rus)      r1, r0[0x4]
             0x000806c0: 45 02:       stw (2rus)      r0, r1[0x5]
             0x000806c2: c0 90:       add (2rus)      r0, r4, 0x0
             0x000806c4: 44 90:       add (2rus)      r4, r1, 0x0
             0x000806c6: 00 f0 89 d2: bl (lu10)       0x289 <free>
             0x000806ca: 0c 01:       stw (2rus)      r4, r7[0x0]
.label67     0x000806cc: c0 08:       ldw (2rus)      r0, r4[0x0]
             0x000806ce: f0 2f:       set (1r)        sp, r0
             0x000806d0: c0 90:       add (2rus)      r0, r4, 0x0
.label66     0x000806d2: 88 5e:       ldw (ru6)       r10, sp[0x8]
             0x000806d4: 07 fa ec ef: ldd (l2rus)     r9, r8, sp[0x3]
             0x000806d8: 2e f9 ec ef: ldd (l2rus)     r7, r6, sp[0x2]
             0x000806dc: 05 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x1]
             0x000806e0: ca 77:       retsp (u6)      0xa
             0x000806e2: 00 00:       stw (2rus)      r0, r0[0x0]

<XCSchedulerCreateTask_>:
             0x000806e4: 00 f0 48 77: entsp (lu6)     0x8
             0x000806e8: 05 f9 ec f7: std (l2rus)     r5, r4, sp[0x1]
             0x000806ec: 2e f9 ec f7: std (l2rus)     r7, r6, sp[0x2]
             0x000806f0: 07 fa ec f7: std (l2rus)     r9, r8, sp[0x3]
             0x000806f4: 4c 90:       add (2rus)      r4, r3, 0x0
             0x000806f6: 58 90:       add (2rus)      r5, r2, 0x0
             0x000806f8: 74 90:       add (2rus)      r7, r1, 0x0
             0x000806fa: 60 90:       add (2rus)      r6, r0, 0x0
             0x000806fc: ee 17:       get (0r)        r11, id
             0x000806fe: 8c 91:       add (2rus)      r0, r11, 0x0
             0x00080700: 00 f0 60 60: ldaw (lru6)     r1, dp[0x20]
             0x00080704: 94 48:       ldw (3r)        r9, r1[r0]
             0x00080706: 51 72:       bt (ru6)        r9, 0x11 <.label68>
             0x00080708: 9c 68:       ldc (ru6)       r2, 0x1c
             0x0008070a: 22 f8 ec 3f: mul (l3r)       r2, r0, r2
             0x0008070e: 00 f0 e8 60: ldaw (lru6)     r3, dp[0x28]
             0x00080712: 9e 10:       add (3r)        r9, r3, r2
             0x00080714: 55 04:       stw (2rus)      r9, r9[0x5]
             0x00080716: 54 04:       stw (2rus)      r9, r9[0x4]
             0x00080718: 02 f0 45 7f: ldaw (lu6)      r11, cp[0x85]
             0x0008071c: 37 02:       stw (2rus)      r11, r9[0x3]
             0x0008071e: 80 68:       ldc (ru6)       r2, 0x0
             0x00080720: e6 03:       stw (2rus)      r2, r9[0x6]
             0x00080722: a5 01:       stw (2rus)      r2, r9[0x1]
             0x00080724: a6 01:       stw (2rus)      r2, r9[0x2]
             0x00080726: 94 f8 ec 07: stw (l3r)       r9, r1[r0]
.label68     0x0008072a: 24 68:       ldc (ru6)       r0, 0x24
             0x0008072c: 43 fa ec 1f: ldaw (l3r)      r0, r0[r7]
             0x00080730: 00 f0 b8 d2: bl (lu10)       0x2b8 <malloc>
             0x00080734: 80 90:       add (2rus)      r8, r0, 0x0
             0x00080736: e8 4f:       ecallf (1r)     r8
             0x00080738: ce a0:       shl (2rus)      r0, r7, 0x2
             0x0008073a: 80 14:       add (3r)        r0, r0, r8
             0x0008073c: d3 01:       stw (2rus)      r5, r8[0x3]
             0x0008073e: c2 01:       stw (2rus)      r4, r8[0x2]
             0x00080740: e1 01:       stw (2rus)      r6, r8[0x1]
             0x00080742: 40 68:       ldc (ru6)       r1, 0x0
             0x00080744: d1 03:       stw (2rus)      r1, r8[0x5]
             0x00080746: d0 03:       stw (2rus)      r1, r8[0x4]
             0x00080748: 80 fc ec 9f: ldaw (l2rus)    r0, r0[0x8]
             0x0008074c: 01 f0 6a 6c: ldw (lru6)      r1, cp[0x6a]
             0x00080750: 01 38:       and (3r)        r0, r0, r1
             0x00080752: 80 01:       stw (2rus)      r0, r8[0x0]
             0x00080754: 01 56:       stw (ru6)       r8, sp[0x1]
             0x00080756: 01 f0 74 7f: ldaw (lu6)      r11, cp[0x74]
             0x0008075a: 8c 91:       add (2rus)      r0, r11, 0x0
             0x0008075c: d4 90:       add (2rus)      r1, r5, 0x0
             0x0008075e: e0 90:       add (2rus)      r2, r4, 0x0
             0x00080760: b0 91:       add (2rus)      r3, r8, 0x0
             0x00080762: 00 f0 cd d5: bl (lu10)       -0x1cd <debug_printf>
             0x00080766: c4 0b:       ldw (2rus)      r0, r9[0x4]
             0x00080768: c0 03:       stw (2rus)      r0, r8[0x4]
             0x0008076a: c4 0b:       ldw (2rus)      r0, r9[0x4]
             0x0008076c: c1 02:       stw (2rus)      r8, r0[0x5]
             0x0008076e: 51 04:       stw (2rus)      r9, r8[0x5]
             0x00080770: 44 04:       stw (2rus)      r8, r9[0x4]
             0x00080772: 80 91:       add (2rus)      r0, r8, 0x0
             0x00080774: 07 fa ec ef: ldd (l2rus)     r9, r8, sp[0x3]
             0x00080778: 2e f9 ec ef: ldd (l2rus)     r7, r6, sp[0x2]
             0x0008077c: 05 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x1]
             0x00080780: c8 77:       retsp (u6)      0x8
             0x00080782: 00 00:       stw (2rus)      r0, r0[0x0]

<XCSchedulerYieldDelay>:
             0x00080784: 00 f0 44 77: entsp (lu6)     0x4
             0x00080788: 02 55:       stw (ru6)       r4, sp[0x2]
             0x0008078a: e1 8f:       gettime (1r)    r1
             0x0008078c: 44 10:       add (3r)        r4, r1, r0
.label69     0x0008078e: 00 f0 a1 d4: bl (lu10)       -0xa1 <XCSchedulerYield>
             0x00080792: e1 8f:       gettime (1r)    r1
             0x00080794: 54 1a:       sub (3r)        r1, r1, r4
             0x00080796: 14 f8 ec 97: ashr (l2rus)    r1, r1, 0x20
             0x0008079a: 47 74:       bt (ru6)        r1, -0x7 <.label69>
             0x0008079c: 02 5d:       ldw (ru6)       r4, sp[0x2]
             0x0008079e: c4 77:       retsp (u6)      0x4

<main>:
.label7      0x000807a0: 42 77:       entsp (u6)      0x2
.label70     0x000807a2: c2 86:       getr (rus)      r0, 0x2
             0x000807a4: 02 74:       bt (ru6)        r0, -0x2 <.label70>
             0x000807a6: 7c f0 02 68: ldc (lru6)      r0, 0x1f02
             0x000807aa: 01 f0 e1 6e: ldw (lru6)      r11, cp[0x61]
             0x000807ae: 5c 17:       setd (r2r)      res[r0], r11
             0x000807b0: d1 4e:       outct (rus)     res[r0], 0x1
             0x000807b2: d1 ce:       chkct (rus)     res[r0], 0x1
             0x000807b4: 00 f0 40 58: ldw (lru6)      r1, dp[0x0]
             0x000807b8: 41 e8:       setc (ru6)      res[r1], 0x1
             0x000807ba: c9 b6:       in (2r)         r2, res[r1]
             0x000807bc: ed 07:       clre (0r)       
             0x000807be: ca 6a:       ldc (ru6)       r11, 0xa
             0x000807c0: ab 14:       add (3r)        r2, r2, r11
             0x000807c2: 49 e8:       setc (ru6)      res[r1], 0x9
             0x000807c4: d9 16:       setd (r2r)      res[r1], r2
             0x000807c6: 09 d8:       ldap (u10)      r11, 0x9 <.label71>
             0x000807c8: f1 47:       setv (1r)       res[r1], r11
             0x000807ca: 06 d8:       ldap (u10)      r11, 0x6 <.label72>
             0x000807cc: f0 47:       setv (1r)       res[r0], r11
             0x000807ce: 41 7b:       setsr (u6)      0x1
             0x000807d0: f0 07:       eeu (1r)        res[r0]
             0x000807d2: ff 17:       nop (0r)        
             0x000807d4: f1 07:       eeu (1r)        res[r1]
             0x000807d6: ec 07:       waiteu (0r)     
.label72     0x000807d8: d1 ce:       chkct (rus)     res[r0], 0x1
.label71     0x000807da: 02 68:       ldc (ru6)       r0, 0x2
             0x000807dc: 41 68:       ldc (ru6)       r1, 0x1
             0x000807de: 00 f0 40 7f: ldaw (lu6)      r11, cp[0x0]
.label73     0x000807e2: 15 98:       sub (2rus)      r1, r1, 0x1
             0x000807e4: ad 49:       ldw (3r)        r2, r11[r1]
             0x000807e6: d8 16:       setd (r2r)      res[r0], r2
             0x000807e8: d0 0e:       outt (r2r)      res[r0], r0
             0x000807ea: d1 4e:       outct (rus)     res[r0], 0x1
             0x000807ec: 46 74:       bt (ru6)        r1, -0x6 <.label73>
             0x000807ee: 05 68:       ldc (ru6)       r0, 0x5
             0x000807f0: 00 f0 2e d1: bl (lu10)       0x12e <delay_ticks>
             0x000807f4: 00 f0 41 7f: ldaw (lu6)      r11, cp[0x1]
             0x000807f8: 00 68:       ldc (ru6)       r0, 0x0
             0x000807fa: 60 68:       ldc (ru6)       r1, 0x20
             0x000807fc: 02 69:       ldc (ru6)       r4, 0x2
.label76     0x000807fe: ac 09:       ldw (2rus)      r2, r11[0x0]
             0x00080800: b8 ac:       shr (2rus)      r3, r2, 0x8
             0x00080802: 38 47:       zext (rus)      r2, 0x8
             0x00080804: 58 30:       eq (3r)         r5, r2, r0
             0x00080806: 47 79:       bf (ru6)        r5, 0x7 <.label74>
             0x00080808: a8 a4:       shl (2rus)      r2, r2, 0x8
             0x0008080a: 68 42:       or (3r)         r2, r2, r4
             0x0008080c: bc a4:       shl (2rus)      r3, r3, 0x8
             0x0008080e: 7c 42:       or (3r)         r3, r3, r4
             0x00080810: de 16:       setd (r2r)      res[r2], r3
             0x00080812: 7c 94:       add (2rus)      r11, r11, 0x4
             0x00080814: 03 73:       bu (u6)         0x3 <.label75>
.label74     0x00080816: a0 a4:       shl (2rus)      r2, r0, 0x8
             0x00080818: 68 42:       or (3r)         r2, r2, r4
             0x0008081a: e2 17:       freer (1r)      res[r2]
.label75     0x0008081c: 01 90:       add (2rus)      r0, r0, 0x1
             0x0008081e: 21 30:       eq (3r)         r2, r0, r1
             0x00080820: 92 7c:       bf (ru6)        r2, -0x12 <.label76>
             0x00080822: 00 f0 4f d7: bl (lu10)       -0x34f <__main__main_tile_0>
             0x00080826: 00 68:       ldc (ru6)       r0, 0x0
             0x00080828: c2 77:       retsp (u6)      0x2
             0x0008082a: 00 00:       stw (2rus)      r0, r0[0x0]

<__libc_done>:
.label9      0x0008082c: 00 f0 42 77: entsp (lu6)     0x2
             0x00080830: 00 68:       ldc (ru6)       r0, 0x0
             0x00080832: 10 90:       add (2rus)      r1, r0, 0x0
             0x00080834: 00 f0 46 d2: bl (lu10)       0x246 <__call_exitprocs>
             0x00080838: 00 f0 4e d2: bl (lu10)       0x24e <_cleanup>
             0x0008083c: 00 f0 ad d7: bl (lu10)       -0x3ad <.label77>
             0x00080840: 00 f0 50 d2: bl (lu10)       0x250 <_done>

<_exit_unlocked>:
.label10     0x00080844: 00 f0 44 77: entsp (lu6)     0x4
             0x00080848: 02 55:       stw (ru6)       r4, sp[0x2]
             0x0008084a: 40 90:       add (2rus)      r4, r0, 0x0
             0x0008084c: 40 68:       ldc (ru6)       r1, 0x0
             0x0008084e: 00 f0 39 d2: bl (lu10)       0x239 <__call_exitprocs>
             0x00080852: 00 f0 41 d2: bl (lu10)       0x241 <_cleanup>
             0x00080856: 00 f0 ba d7: bl (lu10)       -0x3ba <.label77>
             0x0008085a: c0 90:       add (2rus)      r0, r4, 0x0
             0x0008085c: 00 f0 4a d2: bl (lu10)       0x24a <_exit>

<memset>:
.label2      0x00080860: 00 f0 c2 6e: ldw (lru6)      r11, cp[0x2]
             0x00080864: ff 17:       nop (0r)        
             0x00080866: fb 27:       bau (1r)        r11

<__init_threadlocal_timer>:
.label3      0x00080868: 00 f0 40 77: entsp (lu6)     0x0
             0x0008086c: c9 86:       getr (rus)      r2, 0x1
             0x0008086e: 00 f0 40 60: ldaw (lru6)     r1, dp[0x0]
             0x00080872: ee 17:       get (0r)        r11, id
             0x00080874: a7 fc ec 07: stw (l3r)       r2, r1[r11]
             0x00080878: c0 77:       retsp (u6)      0x0
             0x0008087a: 00 00:       stw (2rus)      r0, r0[0x0]

<__free_threadlocal_timer>:
.label13     0x0008087c: 00 f0 40 77: entsp (lu6)     0x0
             0x00080880: 00 f0 80 60: ldaw (lru6)     r2, dp[0x0]
             0x00080884: ee 17:       get (0r)        r11, id
             0x00080886: ab 4c:       ldw (3r)        r2, r2[r11]
             0x00080888: e2 17:       freer (1r)      res[r2]
             0x0008088a: c0 77:       retsp (u6)      0x0

<xscope_lock_init>:
             0x0008088c: ff 17:       nop (0r)        
             0x0008088e: 80 7f:       dualentsp (u6)  0x0
             0x00080890: 81 87:       getr (rus)      r0, 0x5
             0x00080892: ff 17:       nop (0r)        
             0x00080894: 01 f0 25 50: stw (lru6)      r0, dp[0x65]
             0x00080898: ff 17:       nop (0r)        
             0x0008089a: c0 77:       retsp (u6)      0x0

<xscope_lock_deinit>:
             0x0008089c: ff 17:       nop (0r)        
             0x0008089e: 80 7f:       dualentsp (u6)  0x0
             0x000808a0: ff 17:       nop (0r)        
             0x000808a2: c0 77:       retsp (u6)      0x0

<xscope_lock_acquire>:
             0x000808a4: ff 17:       nop (0r)        
             0x000808a6: 80 7f:       dualentsp (u6)  0x0
             0x000808a8: 01 f0 65 58: ldw (lru6)      r1, dp[0x65]
             0x000808ac: 00 f0 42 70: bt (lru6)       r1, 0x2 <.label78>
             0x000808b0: 85 87:       getr (rus)      r1, 0x5
             0x000808b2: ff 17:       nop (0r)        
             0x000808b4: 01 f0 65 50: stw (lru6)      r1, dp[0x65]
.label78     0x000808b8: c5 b6:       in (2r)         r1, res[r1]
             0x000808ba: ff 17:       nop (0r)        
             0x000808bc: ff 17:       nop (0r)        
             0x000808be: c0 77:       retsp (u6)      0x0

<xscope_lock_release>:
             0x000808c0: ff 17:       nop (0r)        
             0x000808c2: 80 7f:       dualentsp (u6)  0x0
             0x000808c4: 01 f0 25 58: ldw (lru6)      r0, dp[0x65]
             0x000808c8: c0 ae:       out (r2r)       res[r0], r0
             0x000808ca: ff 17:       nop (0r)        
             0x000808cc: ff 17:       nop (0r)        
             0x000808ce: c0 77:       retsp (u6)      0x0

<xscope_get_io_config>:
             0x000808d0: ff 17:       nop (0r)        
             0x000808d2: 80 7f:       dualentsp (u6)  0x0
             0x000808d4: 00 f0 08 58: ldw (lru6)      r0, dp[0x8]
             0x000808d8: ff 17:       nop (0r)        
             0x000808da: c0 77:       retsp (u6)      0x0

<xscope_syscall_write>:
             0x000808dc: 00 f0 40 77: entsp (lu6)     0x0
             0x000808e0: 38 90:       add (2rus)      r3, r2, 0x0
             0x000808e2: 24 90:       add (2rus)      r2, r1, 0x0
             0x000808e4: 10 90:       add (2rus)      r1, r0, 0x0
             0x000808e6: 06 68:       ldc (ru6)       r0, 0x6
             0x000808e8: 08 f0 28 73: bu (lu6)        0x228 <_DoSyscallErrno>

<xscope_user_init>:
             0x000808ec: ff 17:       nop (0r)        
             0x000808ee: 80 7f:       dualentsp (u6)  0x0
             0x000808f0: ff 17:       nop (0r)        
             0x000808f2: c0 77:       retsp (u6)      0x0

<xscope_constructor>:
             0x000808f4: ff 17:       nop (0r)        
             0x000808f6: 86 7f:       dualentsp (u6)  0x6
             0x000808f8: 05 f9 ec f7: std (l2rus)     r5, r4, sp[0x1]
             0x000808fc: ff 17:       nop (0r)        
             0x000808fe: 84 55:       stw (ru6)       r6, sp[0x4]
             0x00080900: 00 f0 96 d0: bl (lu10)       0x96 <get_local_tile_id>
             0x00080904: 40 90:       add (2rus)      r4, r0, 0x0
             0x00080906: ff 17:       nop (0r)        
             0x00080908: 00 f0 16 d1: bl (lu10)       0x116 <xscope_gettime_local_timer>
             0x0008090c: 60 90:       add (2rus)      r6, r0, 0x0
             0x0008090e: ff 17:       nop (0r)        
             0x00080910: 00 f0 1d d1: bl (lu10)       0x11d <xscope_start_ref_clock>
             0x00080914: 00 f0 23 d4: bl (lu10)       -0x23 <xscope_lock_init>
             0x00080918: 00 f0 3d d1: bl (lu10)       0x13d <xscope_tx_init>
             0x0008091c: 00 f0 12 78: bf (lru6)       r0, 0x12 <.label79>
             0x00080920: 03 f0 09 68: ldc (lru6)      r0, 0xc9
             0x00080924: 00 f0 26 d1: bl (lu10)       0x126 <xscope_tx_char>
             0x00080928: 71 47:       zext (rus)      r4, 0x10
             0x0008092a: ff 17:       nop (0r)        
             0x0008092c: c4 07:       byterev (2r)    r5, r4
             0x0008092e: ff 17:       nop (0r)        
             0x00080930: c4 90:       add (2rus)      r0, r5, 0x0
             0x00080932: ff 17:       nop (0r)        
             0x00080934: 00 f0 25 d1: bl (lu10)       0x125 <xscope_tx_int>
             0x00080938: 82 07:       byterev (2r)    r0, r6
             0x0008093a: ff 17:       nop (0r)        
             0x0008093c: 00 f0 23 d1: bl (lu10)       0x123 <xscope_tx_int>
             0x00080940: 00 f0 30 d1: bl (lu10)       0x130 <xscope_tx_end>
             0x00080944: 00 f0 17 d4: bl (lu10)       -0x17 <xscope_user_init>
             0x00080948: 00 f0 0a 58: ldw (lru6)      r0, dp[0xa]
             0x0008094c: 00 f0 0a 78: bf (lru6)       r0, 0xa <.label80>
             0x00080950: 67 68:       ldc (ru6)       r1, 0x27
             0x00080952: ff 17:       nop (0r)        
             0x00080954: 01 f0 a5 6c: ldw (lru6)      r2, cp[0x65]
             0x00080958: c0 90:       add (2rus)      r0, r4, 0x0
             0x0008095a: ff 17:       nop (0r)        
             0x0008095c: 00 f0 66 d0: bl (lu10)       0x66 <write_pswitch_reg>
             0x00080960: 11 a7:       mkmsk (rus)     r4, 0x1
             0x00080962: ff 17:       nop (0r)        
             0x00080964: 00 f0 05 73: bu (lu6)        0x5 <.label81>
.label79     0x00080968: 00 f0 2d d1: bl (lu10)       0x12d <xscope_tx_deinit>
             0x0008096c: 00 f0 0d d1: bl (lu10)       0x10d <xscope_stop_ref_clock>
             0x00080970: 00 f0 36 d4: bl (lu10)       -0x36 <xscope_lock_deinit>
             0x00080974: 00 f0 14 73: bu (lu6)        0x14 <.label82>
.label80     0x00080978: 00 69:       ldc (ru6)       r4, 0x0
             0x0008097a: ff 17:       nop (0r)        
.label81     0x0008097c: 03 f0 0b 68: ldc (lru6)      r0, 0xcb
             0x00080980: 00 f0 0f d1: bl (lu10)       0x10f <xscope_tx_char>
             0x00080984: c4 90:       add (2rus)      r0, r5, 0x0
             0x00080986: ff 17:       nop (0r)        
             0x00080988: 00 f0 10 d1: bl (lu10)       0x110 <xscope_tx_int>
             0x0008098c: 00 68:       ldc (ru6)       r0, 0x0
             0x0008098e: ff 17:       nop (0r)        
             0x00080990: 00 f0 0e d1: bl (lu10)       0x10e <xscope_tx_int>
             0x00080994: 01 f0 22 6c: ldw (lru6)      r0, cp[0x62]
             0x00080998: 00 f0 0c d1: bl (lu10)       0x10c <xscope_tx_int>
             0x0008099c: 00 f0 19 d1: bl (lu10)       0x119 <xscope_tx_end>
             0x000809a0: 00 f0 1f d1: bl (lu10)       0x11f <xscope_tx_deinit>
             0x000809a4: 00 f0 0a 58: ldw (lru6)      r0, dp[0xa]
             0x000809a8: 00 f0 04 78: bf (lru6)       r0, 0x4 <.label83>
             0x000809ac: 00 f0 03 79: bf (lru6)       r4, 0x3 <.label83>
             0x000809b0: 9c f0 0b 68: ldc (lru6)      r0, 0x270b
.label84     0x000809b4: d4 fe ec 17: get (l2r)       r1, ps[r0]
             0x000809b8: 00 f0 42 74: bt (lru6)       r1, -0x2 <.label84>
.label83     0x000809bc: 0f f0 28 68: ldc (lru6)      r0, 0x3e8
             0x000809c0: 00 f0 ea d0: bl (lu10)       0xea <xscope_wait>
             0x000809c4: 00 f0 f7 d0: bl (lu10)       0xf7 <xscope_stop_ref_clock>
.label82     0x000809c8: ff 17:       nop (0r)        
             0x000809ca: 84 5d:       ldw (ru6)       r6, sp[0x4]
             0x000809cc: 05 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x1]
             0x000809d0: ff 17:       nop (0r)        
             0x000809d2: c6 77:       retsp (u6)      0x6

<xscope_syscall_data_write>:
             0x000809d4: ff 17:       nop (0r)        
             0x000809d6: 88 7f:       dualentsp (u6)  0x8
             0x000809d8: 05 f9 ec f7: std (l2rus)     r5, r4, sp[0x1]
             0x000809dc: 2e f9 ec f7: std (l2rus)     r7, r6, sp[0x2]
             0x000809e0: 4c 90:       add (2rus)      r4, r3, 0x0
             0x000809e2: 06 56:       stw (ru6)       r8, sp[0x6]
             0x000809e4: 58 90:       add (2rus)      r5, r2, 0x0
             0x000809e6: 64 90:       add (2rus)      r6, r1, 0x0
             0x000809e8: 70 90:       add (2rus)      r7, r0, 0x0
             0x000809ea: ff 17:       nop (0r)        
             0x000809ec: 00 f0 53 d4: bl (lu10)       -0x53 <xscope_lock_acquire>
             0x000809f0: 00 f0 da d0: bl (lu10)       0xda <xscope_gettime>
             0x000809f4: 80 90:       add (2rus)      r8, r0, 0x0
             0x000809f6: cc 90:       add (2rus)      r0, r7, 0x0
             0x000809f8: 00 f0 f1 d0: bl (lu10)       0xf1 <xscope_tx_char>
             0x000809fc: 90 a7:       mkmsk (rus)     r0, 0x4
             0x000809fe: ff 17:       nop (0r)        
             0x00080a00: 00 f0 ef d0: bl (lu10)       0xef <xscope_tx_char>
             0x00080a04: 20 07:       byterev (2r)    r0, r8
             0x00080a06: ff 17:       nop (0r)        
             0x00080a08: 00 f0 f0 d0: bl (lu10)       0xf0 <xscope_tx_int>
             0x00080a0c: 04 93:       add (2rus)      r0, r5, 0x4
             0x00080a0e: ff 17:       nop (0r)        
             0x00080a10: c0 06:       byterev (2r)    r0, r0
             0x00080a12: ff 17:       nop (0r)        
             0x00080a14: 00 f0 ed d0: bl (lu10)       0xed <xscope_tx_int>
             0x00080a18: 82 07:       byterev (2r)    r0, r6
             0x00080a1a: ff 17:       nop (0r)        
             0x00080a1c: 00 f0 eb d0: bl (lu10)       0xeb <xscope_tx_int>
             0x00080a20: 00 f0 45 79: bf (lru6)       r5, 0x5 <.label85>
             0x00080a24: 80 69:       ldc (ru6)       r6, 0x0
             0x00080a26: ff 17:       nop (0r)        
.label86     0x00080a28: ff 17:       nop (0r)        
             0x00080a2a: 02 8b:       ld8u (3r)       r0, r4[r6]
             0x00080a2c: 00 f0 e4 d0: bl (lu10)       0xe4 <xscope_tx_char>
             0x00080a30: 15 99:       sub (2rus)      r5, r5, 0x1
             0x00080a32: 01 91:       add (2rus)      r4, r4, 0x1
             0x00080a34: 00 f0 44 75: bt (lru6)       r5, -0x4 <.label86>
.label85     0x00080a38: 00 f0 f2 d0: bl (lu10)       0xf2 <xscope_tx_end>
             0x00080a3c: 00 f0 60 d4: bl (lu10)       -0x60 <xscope_lock_release>
             0x00080a40: ff 17:       nop (0r)        
             0x00080a42: 06 5e:       ldw (ru6)       r8, sp[0x6]
             0x00080a44: 2e f9 ec ef: ldd (l2rus)     r7, r6, sp[0x2]
             0x00080a48: 05 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x1]
             0x00080a4c: ff 17:       nop (0r)        
             0x00080a4e: c8 77:       retsp (u6)      0x8

<delay_ticks>:
             0x00080a50: 00 f0 40 77: entsp (lu6)     0x0
             0x00080a54: e1 8f:       gettime (1r)    r1
             0x00080a56: ee 17:       get (0r)        r11, id
             0x00080a58: 00 f0 80 60: ldaw (lru6)     r2, dp[0x0]
             0x00080a5c: ab 4c:       ldw (3r)        r2, r2[r11]
             0x00080a5e: 30 f8 ec 97: ashr (l2rus)    r3, r0, 0x20
             0x00080a62: c6 78:       bf (ru6)        r3, 0x6 <.label87>
             0x00080a64: 01 f0 ec 6c: ldw (lru6)      r3, cp[0x6c]
             0x00080a68: 37 10:       add (3r)        r3, r1, r3
             0x00080a6a: de 16:       setd (r2r)      res[r2], r3
             0x00080a6c: 89 e8:       setc (ru6)      res[r2], 0x9
             0x00080a6e: ce b6:       in (2r)         r3, res[r2]
.label87     0x00080a70: 04 10:       add (3r)        r0, r1, r0
             0x00080a72: d2 16:       setd (r2r)      res[r2], r0
             0x00080a74: 89 e8:       setc (ru6)      res[r2], 0x9
             0x00080a76: c2 b6:       in (2r)         r0, res[r2]
             0x00080a78: c0 77:       retsp (u6)      0x0
             0x00080a7a: 00 00:       stw (2rus)      r0, r0[0x0]

<__start_other_cores>:
             0x00080a7c: 00 f0 44 77: entsp (lu6)     0x4
             0x00080a80: 01 55:       stw (ru6)       r4, sp[0x1]
             0x00080a82: 42 55:       stw (ru6)       r5, sp[0x2]
             0x00080a84: ed 07:       clre (0r)       
             0x00080a86: 07 87:       getr (rus)      r5, 0x3
             0x00080a88: 44 08:       ldw (2rus)      r4, r1[0x0]
             0x00080a8a: 80 64:       ldaw (ru6)      r2, sp[0x0]
.label88     0x00080a8c: 00 f0 ce d9: ldap (lu10)     r11, 0x1ce <__start_core>
             0x00080a90: 9d 07:       getst (2r)      r3, res[r5]
             0x00080a92: 5f ff ec 07: init (l2r)      t[r3]:pc, r11
             0x00080a96: 03 f8 ec b7: set (l3r)       t[r3]:r0, r0
             0x00080a9a: d3 f8 ec b7: set (l3r)       t[r3]:r1, r4
             0x00080a9e: 45 08:       ldw (2rus)      r4, r1[0x1]
             0x00080aa0: 01 91:       add (2rus)      r4, r4, 0x1
             0x00080aa2: c1 6a:       ldc (ru6)       r11, 0x1
             0x00080aa4: f3 3d:       and (3r)        r11, r4, r11
             0x00080aa6: 83 15:       add (3r)        r4, r4, r11
             0x00080aa8: 02 a1:       shl (2rus)      r4, r4, 0x2
             0x00080aaa: 68 1a:       sub (3r)        r2, r2, r4
             0x00080aac: cb fe ec 07: init (l2r)      t[r3]:sp, r2
             0x00080ab0: 94 94:       add (2rus)      r1, r1, 0x8
             0x00080ab2: 44 08:       ldw (2rus)      r4, r1[0x0]
             0x00080ab4: 15 75:       bt (ru6)        r4, -0x15 <.label88>
             0x00080ab6: f5 1f:       msync (1r)      res[r5]
             0x00080ab8: b5 08:       ldw (2rus)      r11, r1[0x1]
             0x00080aba: eb 27:       bla (1r)        r11
             0x00080abc: f5 17:       mjoin (1r)      res[r5]
             0x00080abe: e5 17:       freer (1r)      res[r5]
             0x00080ac0: 01 5d:       ldw (ru6)       r4, sp[0x1]
             0x00080ac2: 42 5d:       ldw (ru6)       r5, sp[0x2]
             0x00080ac4: c4 77:       retsp (u6)      0x4
             0x00080ac6: 00 00:       stw (2rus)      r0, r0[0x0]

<atexit>:
             0x00080ac8: 00 f0 42 77: entsp (lu6)     0x2
             0x00080acc: 10 90:       add (2rus)      r1, r0, 0x0
             0x00080ace: 00 68:       ldc (ru6)       r0, 0x0
             0x00080ad0: 20 90:       add (2rus)      r2, r0, 0x0
             0x00080ad2: 30 90:       add (2rus)      r3, r0, 0x0
             0x00080ad4: 00 f0 b6 d1: bl (lu10)       0x1b6 <__register_exitproc>
             0x00080ad8: c2 77:       retsp (u6)      0x2
             0x00080ada: 00 00:       stw (2rus)      r0, r0[0x0]

<strlen>:
             0x00080adc: 00 f0 40 77: entsp (lu6)     0x0
             0x00080ae0: 21 98:       sub (2rus)      r2, r0, 0x1
             0x00080ae2: d5 a6:       mkmsk (rus)     r1, 0x1
.label89     0x00080ae4: 39 90:       add (2rus)      r3, r2, 0x1
             0x00080ae6: b9 88:       ld8u (3r)       r11, r2[r1]
             0x00080ae8: 2c 90:       add (2rus)      r2, r3, 0x0
             0x00080aea: c4 76:       bt (ru6)        r11, -0x4 <.label89>
             0x00080aec: 0c 18:       sub (3r)        r0, r3, r0
             0x00080aee: c0 77:       retsp (u6)      0x0

<memcpy>:
<__memcpy_4>:
             0x00080af0: 00 f0 c3 6e: ldw (lru6)      r11, cp[0x3]
             0x00080af4: ff 17:       nop (0r)        
             0x00080af6: fb 27:       bau (1r)        r11

<write_pswitch_reg>:
             0x00080af8: 00 f0 40 77: entsp (lu6)     0x0
             0x00080afc: 08 f3 cc 68: ldc (lru6)      r3, 0xc20c
             0x00080b00: c1 6a:       ldc (ru6)       r11, 0x1
             0x00080b02: 00 f0 01 73: bu (lu6)        0x1 <write_switch_reg>
             0x00080b06: 00 00:       stw (2rus)      r0, r0[0x0]

<write_switch_reg>:
             0x00080b08: 00 f0 40 77: entsp (lu6)     0x0
             0x00080b0c: 00 55:       stw (ru6)       r4, sp[0x0]
             0x00080b0e: c1 ac:       shr (2rus)      r4, r0, 0x10
             0x00080b10: 1e 71:       bt (ru6)        r4, 0x1e <write_switch_reg_return_0>
             0x00080b12: c5 ac:       shr (2rus)      r4, r1, 0x10
             0x00080b14: 1c 71:       bt (ru6)        r4, 0x1c <write_switch_reg_return_0>
             0x00080b16: 81 a4:       shl (2rus)      r0, r0, 0x10
             0x00080b18: 03 40:       or (3r)         r0, r0, r3
             0x00080b1a: 02 87:       getr (rus)      r4, 0x2
             0x00080b1c: 90 17:       setd (r2r)      res[r4], r0
             0x00080b1e: 03 f0 c0 68: ldc (lru6)      r3, 0xc0
             0x00080b22: 03 4f:       outct (2r)      res[r4], r3
             0x00080b24: c3 7a:       bf (ru6)        r11, 0x3 <build_return_no_ack>
             0x00080b26: 40 ad:       shr (2rus)      r0, r4, 0x8
             0x00080b28: 80 a4:       shl (2rus)      r0, r0, 0x8
             0x00080b2a: 04 73:       bu (u6)         0x4 <write_switch_reg_send>

<build_return_no_ack>:
             0x00080b2c: 80 ac:       shr (2rus)      r0, r0, 0x8
             0x00080b2e: 3c a7:       mkmsk (rus)     r3, 0x8
             0x00080b30: 03 40:       or (3r)         r0, r0, r3
             0x00080b32: 80 a4:       shl (2rus)      r0, r0, 0x8

<write_switch_reg_send>:
             0x00080b34: b4 ac:       shr (2rus)      r3, r1, 0x8
             0x00080b36: 03 40:       or (3r)         r0, r0, r3
             0x00080b38: 80 af:       out (r2r)       res[r4], r0
             0x00080b3a: 94 0f:       outt (r2r)      res[r4], r1
             0x00080b3c: 88 af:       out (r2r)       res[r4], r2
             0x00080b3e: 11 4f:       outct (rus)     res[r4], 0x1
             0x00080b40: c9 7a:       bf (ru6)        r11, 0x9 <write_switch_reg_free_and_return_1>
             0x00080b42: 90 87:       inct (2r)       r0, res[r4]
             0x00080b44: 03 b0:       eq (2rus)       r0, r0, 0x3
             0x00080b46: 11 cf:       chkct (rus)     res[r4], 0x1
             0x00080b48: e4 17:       freer (1r)      res[r4]
             0x00080b4a: 00 5d:       ldw (ru6)       r4, sp[0x0]
             0x00080b4c: c0 77:       retsp (u6)      0x0

<write_switch_reg_return_0>:
             0x00080b4e: 00 68:       ldc (ru6)       r0, 0x0
             0x00080b50: 00 5d:       ldw (ru6)       r4, sp[0x0]
             0x00080b52: c0 77:       retsp (u6)      0x0

<write_switch_reg_free_and_return_1>:
             0x00080b54: e4 17:       freer (1r)      res[r4]
             0x00080b56: 01 68:       ldc (ru6)       r0, 0x1
             0x00080b58: 00 5d:       ldw (ru6)       r4, sp[0x0]
             0x00080b5a: c0 77:       retsp (u6)      0x0

<get_local_tile_id>:
             0x00080b5c: 00 f0 40 77: entsp (lu6)     0x0
             0x00080b60: 00 f2 02 68: ldc (lru6)      r0, 0x8002
             0x00080b64: c0 77:       retsp (u6)      0x0
             0x00080b66: 00 00:       stw (2rus)      r0, r0[0x0]

<__free>:
             0x00080b68: 00 f0 40 77: entsp (lu6)     0x0
             0x00080b6c: 84 77:       extsp (u6)      0x4
             0x00080b6e: 04 f9 ec f7: std (l2rus)     r5, r4, sp[0x0]
             0x00080b72: 82 55:       stw (ru6)       r6, sp[0x2]
             0x00080b74: 2e 78:       bf (ru6)        r0, 0x2e <.label90>
             0x00080b76: 40 9a:       sub (2rus)      r0, r0, 0x4
             0x00080b78: 01 f0 66 58: ldw (lru6)      r1, dp[0x66]
             0x00080b7c: c0 68:       ldc (ru6)       r3, 0x0
             0x00080b7e: 50 78:       bf (ru6)        r1, 0x10 <.label91>
             0x00080b80: b0 08:       ldw (2rus)      r11, r0[0x0]
             0x00080b82: cc 11:       add (3r)        r4, r11, r0
             0x00080b84: 01 f0 a6 60: ldaw (lru6)     r2, dp[0x66]
.label95     0x00080b88: 54 08:       ldw (2rus)      r5, r1[0x0]
             0x00080b8a: 25 11:       add (3r)        r6, r5, r1
             0x00080b8c: 28 31:       eq (3r)         r6, r6, r0
             0x00080b8e: 8b 71:       bt (ru6)        r6, 0xb <.label92>
             0x00080b90: a4 32:       eq (3r)         r6, r1, r4
             0x00080b92: 97 71:       bt (ru6)        r6, 0x17 <.label93>
             0x00080b94: 51 c8:       lsu (3r)        r5, r0, r1
             0x00080b96: 5a 71:       bt (ru6)        r5, 0x1a <.label94>
             0x00080b98: 64 92:       add (2rus)      r2, r1, 0x4
             0x00080b9a: 18 08:       ldw (2rus)      r1, r2[0x0]
             0x00080b9c: 4b 74:       bt (ru6)        r1, -0xb <.label95>
             0x00080b9e: 17 73:       bu (u6)         0x17 <.label96>
.label91     0x00080ba0: 01 f0 a6 60: ldaw (lru6)     r2, dp[0x66]
             0x00080ba4: 14 73:       bu (u6)         0x14 <.label96>
.label92     0x00080ba6: ed 13:       add (3r)        r2, r11, r5
             0x00080ba8: 24 00:       stw (2rus)      r2, r1[0x0]
             0x00080baa: 35 08:       ldw (2rus)      r3, r1[0x1]
             0x00080bac: d2 78:       bf (ru6)        r3, 0x12 <.label90>
             0x00080bae: b0 08:       ldw (2rus)      r11, r0[0x0]
             0x00080bb0: 8c 11:       add (3r)        r0, r11, r0
             0x00080bb2: 03 30:       eq (3r)         r0, r0, r3
             0x00080bb4: 0e 78:       bf (ru6)        r0, 0xe <.label90>
             0x00080bb6: 0c 08:       ldw (2rus)      r0, r3[0x0]
             0x00080bb8: 02 10:       add (3r)        r0, r0, r2
             0x00080bba: 04 00:       stw (2rus)      r0, r1[0x0]
             0x00080bbc: 0d 08:       ldw (2rus)      r0, r3[0x1]
             0x00080bbe: 05 00:       stw (2rus)      r0, r1[0x1]
             0x00080bc0: 08 73:       bu (u6)         0x8 <.label90>
.label93     0x00080bc2: fd 13:       add (3r)        r3, r11, r5
             0x00080bc4: 30 00:       stw (2rus)      r3, r0[0x0]
             0x00080bc6: 15 08:       ldw (2rus)      r1, r1[0x1]
             0x00080bc8: 11 00:       stw (2rus)      r1, r0[0x1]
             0x00080bca: 02 73:       bu (u6)         0x2 <.label97>
.label94     0x00080bcc: 34 90:       add (2rus)      r3, r1, 0x0
.label96     0x00080bce: 31 00:       stw (2rus)      r3, r0[0x1]
.label97     0x00080bd0: 08 00:       stw (2rus)      r0, r2[0x0]
.label90     0x00080bd2: 82 5d:       ldw (ru6)       r6, sp[0x2]
             0x00080bd4: 04 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x0]
             0x00080bd8: 84 67:       ldaw (ru6)      sp, sp[0x4]
             0x00080bda: c0 77:       retsp (u6)      0x0

<free>:
             0x00080bdc: 00 f0 44 77: entsp (lu6)     0x4
             0x00080be0: 02 55:       stw (ru6)       r4, sp[0x2]
             0x00080be2: 40 90:       add (2rus)      r4, r0, 0x0
             0x00080be4: 00 f0 e4 d1: bl (lu10)       0x1e4 <__malloc_lock>
             0x00080be8: c0 90:       add (2rus)      r0, r4, 0x0
             0x00080bea: 00 f0 43 d4: bl (lu10)       -0x43 <__free>
             0x00080bee: 00 f0 e7 d1: bl (lu10)       0x1e7 <__malloc_unlock>
             0x00080bf2: 02 5d:       ldw (ru6)       r4, sp[0x2]
             0x00080bf4: c4 77:       retsp (u6)      0x4
             0x00080bf6: 00 00:       stw (2rus)      r0, r0[0x0]

<__malloc>:
             0x00080bf8: 00 f0 40 77: entsp (lu6)     0x0
             0x00080bfc: 84 77:       extsp (u6)      0x4
             0x00080bfe: 04 f9 ec f7: std (l2rus)     r5, r4, sp[0x0]
             0x00080c02: 82 55:       stw (ru6)       r6, sp[0x2]
             0x00080c04: 44 68:       ldc (ru6)       r1, 0x4
             0x00080c06: 11 c8:       lsu (3r)        r1, r0, r1
             0x00080c08: 42 78:       bf (ru6)        r1, 0x2 <.label98>
             0x00080c0a: 48 68:       ldc (ru6)       r1, 0x8
             0x00080c0c: 06 73:       bu (u6)         0x6 <.label99>
.label98     0x00080c0e: 01 f0 6b 6c: ldw (lru6)      r1, cp[0x6b]
             0x00080c12: 14 18:       sub (3r)        r1, r1, r0
             0x00080c14: d7 46:       zext (rus)      r1, 0x3
             0x00080c16: 11 10:       add (3r)        r1, r0, r1
             0x00080c18: 54 92:       add (2rus)      r1, r1, 0x4
.label99     0x00080c1a: 24 c8:       lsu (3r)        r2, r1, r0
             0x00080c1c: 00 68:       ldc (ru6)       r0, 0x0
             0x00080c1e: bc 70:       bt (ru6)        r2, 0x3c <.label100>
             0x00080c20: 01 f0 66 59: ldw (lru6)      r5, dp[0x66]
             0x00080c24: 00 f0 d2 5a: ldw (lru6)      r11, dp[0x12]
             0x00080c28: 4d 79:       bf (ru6)        r5, 0xd <.label101>
             0x00080c2a: 01 f0 a6 61: ldaw (lru6)     r6, dp[0x66]
.label103    0x00080c2e: f8 90:       add (2rus)      r3, r6, 0x0
             0x00080c30: e4 90:       add (2rus)      r2, r5, 0x0
             0x00080c32: 48 08:       ldw (2rus)      r4, r2[0x0]
             0x00080c34: 11 c9:       lsu (3r)        r5, r4, r1
             0x00080c36: 52 79:       bf (ru6)        r5, 0x12 <.label102>
             0x00080c38: a8 92:       add (2rus)      r6, r2, 0x4
             0x00080c3a: 59 08:       ldw (2rus)      r5, r2[0x1]
             0x00080c3c: 48 75:       bt (ru6)        r5, -0x8 <.label103>
             0x00080c3e: 12 11:       add (3r)        r5, r4, r2
             0x00080c40: 1d 34:       eq (3r)         r5, r11, r5
             0x00080c42: 5a 71:       bt (ru6)        r5, 0x1a <.label104>
.label101    0x00080c44: 00 f0 91 58: ldw (lru6)      r2, dp[0x11]
             0x00080c48: a8 fc ec a7: ldaw (l2rus)    r2, r2[-0x8]
             0x00080c4c: ab 1c:       sub (3r)        r2, r2, r11
             0x00080c4e: 29 c8:       lsu (3r)        r2, r2, r1
             0x00080c50: a3 70:       bt (ru6)        r2, 0x23 <.label100>
             0x00080c52: 8d 11:       add (3r)        r0, r11, r1
             0x00080c54: 00 f0 12 50: stw (lru6)      r0, dp[0x12]
             0x00080c58: ac 91:       add (2rus)      r2, r11, 0x0
             0x00080c5a: 1c 73:       bu (u6)         0x1c <.label105>
.label102    0x00080c5c: 84 94:       add (2rus)      r0, r1, 0x8
             0x00080c5e: c0 c8:       lsu (3r)        r0, r4, r0
             0x00080c60: 04 78:       bf (ru6)        r0, 0x4 <.label106>
             0x00080c62: 48 92:       add (2rus)      r0, r2, 0x4
             0x00080c64: 19 08:       ldw (2rus)      r1, r2[0x1]
             0x00080c66: 1c 00:       stw (2rus)      r1, r3[0x0]
             0x00080c68: 17 73:       bu (u6)         0x17 <.label100>
.label106    0x00080c6a: c1 18:       sub (3r)        r0, r4, r1
             0x00080c6c: b9 08:       ldw (2rus)      r11, r2[0x1]
             0x00080c6e: 49 10:       add (3r)        r4, r2, r1
             0x00080c70: 4c 00:       stw (2rus)      r4, r3[0x0]
             0x00080c72: c0 00:       stw (2rus)      r0, r4[0x0]
             0x00080c74: 71 01:       stw (2rus)      r11, r4[0x1]
             0x00080c76: 0e 73:       bu (u6)         0xe <.label105>
.label104    0x00080c78: 84 1a:       sub (3r)        r4, r1, r4
             0x00080c7a: 00 f0 51 59: ldw (lru6)      r5, dp[0x11]
             0x00080c7e: 01 f0 a9 6d: ldw (lru6)      r6, cp[0x69]
             0x00080c82: fb 1d:       sub (3r)        r11, r6, r11
             0x00080c84: 7d 14:       add (3r)        r11, r11, r5
             0x00080c86: 7c cc:       lsu (3r)        r11, r11, r4
             0x00080c88: c7 72:       bt (ru6)        r11, 0x7 <.label100>
             0x00080c8a: 00 68:       ldc (ru6)       r0, 0x0
             0x00080c8c: 0c 00:       stw (2rus)      r0, r3[0x0]
             0x00080c8e: 09 10:       add (3r)        r0, r2, r1
             0x00080c90: 00 f0 12 50: stw (lru6)      r0, dp[0x12]
.label105    0x00080c94: 18 00:       stw (2rus)      r1, r2[0x0]
             0x00080c96: 48 92:       add (2rus)      r0, r2, 0x4
.label100    0x00080c98: 82 5d:       ldw (ru6)       r6, sp[0x2]
             0x00080c9a: 04 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x0]
             0x00080c9e: 84 67:       ldaw (ru6)      sp, sp[0x4]
             0x00080ca0: c0 77:       retsp (u6)      0x0
             0x00080ca2: 00 00:       stw (2rus)      r0, r0[0x0]

<malloc>:
             0x00080ca4: 00 f0 44 77: entsp (lu6)     0x4
             0x00080ca8: 02 55:       stw (ru6)       r4, sp[0x2]
             0x00080caa: 40 90:       add (2rus)      r4, r0, 0x0
             0x00080cac: 00 f0 80 d1: bl (lu10)       0x180 <__malloc_lock>
             0x00080cb0: c0 90:       add (2rus)      r0, r4, 0x0
             0x00080cb2: 00 f0 5f d4: bl (lu10)       -0x5f <__malloc>
             0x00080cb6: 40 90:       add (2rus)      r4, r0, 0x0
             0x00080cb8: 00 f0 82 d1: bl (lu10)       0x182 <__malloc_unlock>
             0x00080cbc: c0 90:       add (2rus)      r0, r4, 0x0
             0x00080cbe: 02 5d:       ldw (ru6)       r4, sp[0x2]
             0x00080cc0: c4 77:       retsp (u6)      0x4
             0x00080cc2: 00 00:       stw (2rus)      r0, r0[0x0]

<__call_exitprocs>:
             0x00080cc4: 00 f0 42 77: entsp (lu6)     0x2
             0x00080cc8: 00 f0 0c d1: bl (lu10)       0x10c <__call_exitprocs_impl>
             0x00080ccc: c2 77:       retsp (u6)      0x2
             0x00080cce: 00 00:       stw (2rus)      r0, r0[0x0]

<_cleanup_impl>:
             0x00080cd0: 00 f0 40 77: entsp (lu6)     0x0
             0x00080cd4: c0 77:       retsp (u6)      0x0
             0x00080cd6: 00 00:       stw (2rus)      r0, r0[0x0]

<_cleanup>:
             0x00080cd8: 00 f0 42 77: entsp (lu6)     0x2
             0x00080cdc: 00 f0 08 d4: bl (lu10)       -0x8 <_cleanup_impl>
             0x00080ce0: c2 77:       retsp (u6)      0x2
             0x00080ce2: 00 00:       stw (2rus)      r0, r0[0x0]

<_done>:
             0x00080ce4: 00 f0 40 77: entsp (lu6)     0x0
             0x00080ce8: 07 68:       ldc (ru6)       r0, 0x7
             0x00080cea: 00 f0 71 d1: bl (lu10)       0x171 <_DoSyscall>
             0x00080cee: ed 07:       clre (0r)       
             0x00080cf0: ec 07:       waiteu (0r)     
             0x00080cf2: 00 00:       stw (2rus)      r0, r0[0x0]

<_exit>:
             0x00080cf4: 00 f0 40 77: entsp (lu6)     0x0
             0x00080cf8: 10 90:       add (2rus)      r1, r0, 0x0
             0x00080cfa: 00 68:       ldc (ru6)       r0, 0x0
             0x00080cfc: 00 f0 68 d1: bl (lu10)       0x168 <_DoSyscall>
             0x00080d00: ed 07:       clre (0r)       
             0x00080d02: ec 07:       waiteu (0r)     

<__alloc_libc_hwlock>:
.label12     0x00080d04: 00 f0 40 77: entsp (lu6)     0x0
             0x00080d08: 81 87:       getr (rus)      r0, 0x5
             0x00080d0a: 01 f0 27 50: stw (lru6)      r0, dp[0x67]
             0x00080d0e: c0 77:       retsp (u6)      0x0

<__lock_fair_acquire>:
             0x00080d10: 00 f0 40 77: entsp (lu6)     0x0
             0x00080d14: 01 f0 67 58: ldw (lru6)      r1, dp[0x67]
             0x00080d18: c5 b6:       in (2r)         r1, res[r1]
             0x00080d1a: 10 08:       ldw (2rus)      r1, r0[0x0]
             0x00080d1c: 25 90:       add (2rus)      r2, r1, 0x1
             0x00080d1e: 20 00:       stw (2rus)      r2, r0[0x0]
             0x00080d20: 01 f0 a7 58: ldw (lru6)      r2, dp[0x67]
             0x00080d24: ca ae:       out (r2r)       res[r2], r2
.label107    0x00080d26: 21 08:       ldw (2rus)      r2, r0[0x1]
             0x00080d28: 29 30:       eq (3r)         r2, r2, r1
             0x00080d2a: 83 7c:       bf (ru6)        r2, -0x3 <.label107>
             0x00080d2c: c0 77:       retsp (u6)      0x0
             0x00080d2e: 00 00:       stw (2rus)      r0, r0[0x0]

<__lock_fair_release>:
             0x00080d30: 00 f0 40 77: entsp (lu6)     0x0
             0x00080d34: 11 08:       ldw (2rus)      r1, r0[0x1]
             0x00080d36: 15 90:       add (2rus)      r1, r1, 0x1
             0x00080d38: 11 00:       stw (2rus)      r1, r0[0x1]
             0x00080d3a: c0 77:       retsp (u6)      0x0

<_DoSyscallErrno>:
             0x00080d3c: 00 f0 42 77: entsp (lu6)     0x2
             0x00080d40: 00 f0 46 d1: bl (lu10)       0x146 <_DoSyscall>
             0x00080d44: c4 8e:       not (2r)        r1, r0
             0x00080d46: 57 aa:       shr (2rus)      r1, r1, 0x7
             0x00080d48: 41 78:       bf (ru6)        r1, 0x1 <.label108>
             0x00080d4a: c2 77:       retsp (u6)      0x2
.label108    0x00080d4c: c4 96:       neg (2r)        r1, r0
             0x00080d4e: 41 54:       stw (ru6)       r1, sp[0x1]
             0x00080d50: 00 f0 42 d1: bl (lu10)       0x142 <__errno>
             0x00080d54: 41 5c:       ldw (ru6)       r1, sp[0x1]
             0x00080d56: 10 00:       stw (2rus)      r1, r0[0x0]
             0x00080d58: d0 a6:       mkmsk (rus)     r0, 0x20
             0x00080d5a: c2 77:       retsp (u6)      0x2

<xscope_gettime>:
             0x00080d5c: e0 8f:       gettime (1r)    r0
             0x00080d5e: 80 7f:       dualentsp (u6)  0x0
             0x00080d60: ff 17:       nop (0r)        
             0x00080d62: c0 77:       retsp (u6)      0x0

<xscope_gettime_local_timer>:
             0x00080d64: e0 8f:       gettime (1r)    r0
             0x00080d66: 80 7f:       dualentsp (u6)  0x0
             0x00080d68: ff 17:       nop (0r)        
             0x00080d6a: c0 77:       retsp (u6)      0x0

<xscope_wait>:
             0x00080d6c: c5 86:       getr (rus)      r1, 0x1
             0x00080d6e: 80 7f:       dualentsp (u6)  0x0
             0x00080d70: e2 8f:       gettime (1r)    r2
             0x00080d72: ff 17:       nop (0r)        
             0x00080d74: 08 10:       add (3r)        r0, r2, r0
             0x00080d76: ff 17:       nop (0r)        
             0x00080d78: d1 16:       setd (r2r)      res[r1], r0
             0x00080d7a: ff 17:       nop (0r)        
             0x00080d7c: 49 e8:       setc (ru6)      res[r1], 0x9
             0x00080d7e: ff 17:       nop (0r)        
             0x00080d80: c1 b6:       in (2r)         r0, res[r1]
             0x00080d82: ff 17:       nop (0r)        
             0x00080d84: e1 17:       freer (1r)      res[r1]
             0x00080d86: c0 77:       retsp (u6)      0x0

<xscope_start_ref_clock>:
             0x00080d88: ff 17:       nop (0r)        
             0x00080d8a: 80 7f:       dualentsp (u6)  0x0
             0x00080d8c: 00 f0 13 58: ldw (lru6)      r0, dp[0x13]
             0x00080d90: 48 68:       ldc (ru6)       r1, 0x8
             0x00080d92: ff 17:       nop (0r)        
             0x00080d94: d1 fe ec 2f: setc (l2r)      res[r0], r1
             0x00080d98: 94 a7:       mkmsk (rus)     r1, 0x4
             0x00080d9a: ff 17:       nop (0r)        
             0x00080d9c: d1 fe ec 2f: setc (l2r)      res[r0], r1
             0x00080da0: 00 68:       ldc (ru6)       r0, 0x0
             0x00080da2: c0 77:       retsp (u6)      0x0

<xscope_stop_ref_clock>:
             0x00080da4: ff 17:       nop (0r)        
             0x00080da6: 80 7f:       dualentsp (u6)  0x0
             0x00080da8: 00 f0 53 58: ldw (lru6)      r1, dp[0x13]
             0x00080dac: d3 a6:       mkmsk (rus)     r0, 0x3
             0x00080dae: ff 17:       nop (0r)        
             0x00080db0: d4 fe ec 2f: setc (l2r)      res[r1], r0
             0x00080db4: 00 68:       ldc (ru6)       r0, 0x0
             0x00080db6: ff 17:       nop (0r)        
             0x00080db8: d4 fe ec 2f: setc (l2r)      res[r1], r0
             0x00080dbc: ff 17:       nop (0r)        
             0x00080dbe: c0 77:       retsp (u6)      0x0

<xscope_tx_char>:
             0x00080dc0: ff 17:       nop (0r)        
             0x00080dc2: 82 7f:       dualentsp (u6)  0x2
             0x00080dc4: 00 f0 88 d0: bl (lu10)       0x88 <xscope_xlink_put_ch>
             0x00080dc8: ff 17:       nop (0r)        
             0x00080dca: c2 77:       retsp (u6)      0x2

<xscope_tx_int>:
             0x00080dcc: ff 17:       nop (0r)        
             0x00080dce: 84 7f:       dualentsp (u6)  0x4
             0x00080dd0: 40 90:       add (2rus)      r4, r0, 0x0
             0x00080dd2: 02 55:       stw (ru6)       r4, sp[0x2]
             0x00080dd4: 30 47:       zext (rus)      r0, 0x8
             0x00080dd6: ff 17:       nop (0r)        
             0x00080dd8: 00 f0 83 d0: bl (lu10)       0x83 <xscope_xlink_put_ch>
             0x00080ddc: 40 ad:       shr (2rus)      r0, r4, 0x8
             0x00080dde: ff 17:       nop (0r)        
             0x00080de0: 30 47:       zext (rus)      r0, 0x8
             0x00080de2: ff 17:       nop (0r)        
             0x00080de4: 00 f0 80 d0: bl (lu10)       0x80 <xscope_xlink_put_ch>
             0x00080de8: 41 ad:       shr (2rus)      r0, r4, 0x10
             0x00080dea: ff 17:       nop (0r)        
             0x00080dec: 30 47:       zext (rus)      r0, 0x8
             0x00080dee: ff 17:       nop (0r)        
             0x00080df0: 00 f0 7d d0: bl (lu10)       0x7d <xscope_xlink_put_ch>
             0x00080df4: 42 ad:       shr (2rus)      r0, r4, 0x18
             0x00080df6: ff 17:       nop (0r)        
             0x00080df8: 00 f0 7b d0: bl (lu10)       0x7b <xscope_xlink_put_ch>
             0x00080dfc: ff 17:       nop (0r)        
             0x00080dfe: 02 5d:       ldw (ru6)       r4, sp[0x2]
             0x00080e00: ff 17:       nop (0r)        
             0x00080e02: c4 77:       retsp (u6)      0x4

<xscope_tx_end>:
             0x00080e04: ff 17:       nop (0r)        
             0x00080e06: 82 7f:       dualentsp (u6)  0x2
             0x00080e08: 00 f0 8c d0: bl (lu10)       0x8c <xscope_xlink_put_ct>
             0x00080e0c: ff 17:       nop (0r)        
             0x00080e0e: c2 77:       retsp (u6)      0x2

<xscope_tx_init>:
             0x00080e10: ff 17:       nop (0r)        
             0x00080e12: 82 7f:       dualentsp (u6)  0x2
             0x00080e14: 00 f0 7d d0: bl (lu10)       0x7d <xscope_xlink_init>
             0x00080e18: 00 f0 8d d0: bl (lu10)       0x8d <xscope_xlink_start_token>
             0x00080e1c: d1 a6:       mkmsk (rus)     r0, 0x1
             0x00080e1e: c2 77:       retsp (u6)      0x2

<xscope_tx_deinit>:
             0x00080e20: ff 17:       nop (0r)        
             0x00080e22: 82 7f:       dualentsp (u6)  0x2
             0x00080e24: 00 f0 7f d0: bl (lu10)       0x7f <xscope_xlink_deinit>
             0x00080e28: ff 17:       nop (0r)        
             0x00080e2a: c2 77:       retsp (u6)      0x2

<__start_core>:
             0x00080e2c: 00 f0 40 77: entsp (lu6)     0x0
             0x00080e30: 40 90:       add (2rus)      r4, r0, 0x0
             0x00080e32: 34 90:       add (2rus)      r3, r1, 0x0
             0x00080e34: 00 f0 e8 d6: bl (lu10)       -0x2e8 <__init_threadlocal_timer>
             0x00080e38: c0 90:       add (2rus)      r0, r4, 0x0
             0x00080e3a: e3 27:       bla (1r)        r3
             0x00080e3c: 00 f0 e2 d6: bl (lu10)       -0x2e2 <__free_threadlocal_timer>
             0x00080e40: ee 07:       ssync (0r)      
             0x00080e42: 00 00:       stw (2rus)      r0, r0[0x0]

<__register_exitproc>:
             0x00080e44: 00 f0 48 77: entsp (lu6)     0x8
             0x00080e48: 05 f9 ec f7: std (l2rus)     r5, r4, sp[0x1]
             0x00080e4c: 2e f9 ec f7: std (l2rus)     r7, r6, sp[0x2]
             0x00080e50: 06 56:       stw (ru6)       r8, sp[0x6]
             0x00080e52: 5c 90:       add (2rus)      r5, r3, 0x0
             0x00080e54: 78 90:       add (2rus)      r7, r2, 0x0
             0x00080e56: 44 90:       add (2rus)      r4, r1, 0x0
             0x00080e58: 60 90:       add (2rus)      r6, r0, 0x0
             0x00080e5a: 01 f0 54 7f: ldaw (lu6)      r11, cp[0x54]
             0x00080e5e: 9c 91:       add (2rus)      r1, r11, 0x0
             0x00080e60: 01 f0 56 7f: ldaw (lu6)      r11, cp[0x56]
             0x00080e64: c0 90:       add (2rus)      r0, r4, 0x0
             0x00080e66: ac 91:       add (2rus)      r2, r11, 0x0
             0x00080e68: 00 f0 00 d1: bl (lu10)       0x100 <__checkFptrGroup>
             0x00080e6c: e0 4f:       ecallf (1r)     r0
             0x00080e6e: 03 f0 0c 60: ldaw (lru6)     r0, dp[0xcc]
             0x00080e72: 00 f0 b3 d4: bl (lu10)       -0xb3 <__lock_fair_acquire>
             0x00080e76: 00 f0 14 58: ldw (lru6)      r0, dp[0x14]
             0x00080e7a: 11 08:       ldw (2rus)      r1, r0[0x1]
             0x00080e7c: 99 a7:       mkmsk (rus)     r2, 0x5
             0x00080e7e: 29 c0:       lss (3r)        r2, r2, r1
             0x00080e80: 82 78:       bf (ru6)        r2, 0x2 <.label109>
             0x00080e82: d0 a6:       mkmsk (rus)     r0, 0x20
             0x00080e84: 29 73:       bu (u6)         0x29 <.label110>
.label109    0x00080e86: 9e 79:       bf (ru6)        r6, 0x1e <.label111>
             0x00080e88: 02 f0 88 68: ldc (lru6)      r2, 0x88
             0x00080e8c: 32 10:       add (3r)        r3, r0, r2
             0x00080e8e: 7d f8 ec 07: stw (l3r)       r7, r3[r1]
             0x00080e92: 11 08:       ldw (2rus)      r1, r0[0x1]
             0x00080e94: d9 a6:       mkmsk (rus)     r2, 0x1
             0x00080e96: b9 20:       shl (3r)        r11, r2, r1
             0x00080e98: 06 f0 c8 69: ldc (lru6)      r7, 0x188
             0x00080e9c: b3 12:       add (3r)        r7, r0, r7
             0x00080e9e: 4c 09:       ldw (2rus)      r8, r7[0x0]
             0x00080ea0: b3 46:       or (3r)         r11, r8, r11
             0x00080ea2: 7c 01:       stw (2rus)      r11, r7[0x0]
             0x00080ea4: 1d f8 ec 1f: ldaw (l3r)      r1, r3[r1]
             0x00080ea8: 02 f0 c0 68: ldc (lru6)      r3, 0x80
             0x00080eac: 17 10:       add (3r)        r1, r1, r3
             0x00080eae: 54 00:       stw (2rus)      r5, r1[0x0]
             0x00080eb0: 11 08:       ldw (2rus)      r1, r0[0x1]
             0x00080eb2: fa b0:       eq (2rus)       r3, r6, 0x2
             0x00080eb4: c7 78:       bf (ru6)        r3, 0x7 <.label111>
             0x00080eb6: 29 20:       shl (3r)        r2, r2, r1
             0x00080eb8: 06 f0 cc 68: ldc (lru6)      r3, 0x18c
             0x00080ebc: 33 10:       add (3r)        r3, r0, r3
             0x00080ebe: bc 08:       ldw (2rus)      r11, r3[0x0]
             0x00080ec0: ae 41:       or (3r)         r2, r11, r2
             0x00080ec2: 2c 00:       stw (2rus)      r2, r3[0x0]
.label111    0x00080ec4: 25 90:       add (2rus)      r2, r1, 0x1
             0x00080ec6: 21 00:       stw (2rus)      r2, r0[0x1]
             0x00080ec8: 01 f8 ec 1f: ldaw (l3r)      r0, r0[r1]
             0x00080ecc: 42 00:       stw (2rus)      r4, r0[0x2]
             0x00080ece: 03 f0 0c 60: ldaw (lru6)     r0, dp[0xcc]
             0x00080ed2: 00 f0 d3 d4: bl (lu10)       -0xd3 <__lock_fair_release>
             0x00080ed6: 00 68:       ldc (ru6)       r0, 0x0
.label110    0x00080ed8: 06 5e:       ldw (ru6)       r8, sp[0x6]
             0x00080eda: 2e f9 ec ef: ldd (l2rus)     r7, r6, sp[0x2]
             0x00080ede: 05 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x1]
             0x00080ee2: c8 77:       retsp (u6)      0x8

<__call_exitprocs_impl>:
             0x00080ee4: 00 f0 4e 77: entsp (lu6)     0xe
             0x00080ee8: 07 f9 ec f7: std (l2rus)     r5, r4, sp[0x3]
             0x00080eec: 6c fb ec f7: std (l2rus)     r7, r6, sp[0x4]
             0x00080ef0: 45 fc ec f7: std (l2rus)     r9, r8, sp[0x5]
             0x00080ef4: 8c 56:       stw (ru6)       r10, sp[0xc]
             0x00080ef6: 44 90:       add (2rus)      r4, r1, 0x0
             0x00080ef8: 01 54:       stw (ru6)       r0, sp[0x1]
             0x00080efa: 00 f0 14 58: ldw (lru6)      r0, dp[0x14]
             0x00080efe: 01 f0 0f 78: bf (lru6)       r0, 0x4f <.label112>
             0x00080f02: 80 6a:       ldc (ru6)       r10, 0x0
.label122    0x00080f04: 80 90:       add (2rus)      r8, r0, 0x0
             0x00080f06: 11 0a:       ldw (2rus)      r9, r8[0x1]
             0x00080f08: d1 a6:       mkmsk (rus)     r0, 0x1
             0x00080f0a: 84 c1:       lss (3r)        r0, r9, r0
             0x00080f0c: 01 f0 08 70: bt (lru6)       r0, 0x48 <.label112>
             0x00080f10: 06 f0 08 68: ldc (lru6)      r0, 0x188
             0x00080f14: 80 11:       add (3r)        r0, r8, r0
             0x00080f16: 04 54:       stw (ru6)       r0, sp[0x4]
             0x00080f18: 06 f0 0c 68: ldc (lru6)      r0, 0x18c
             0x00080f1c: 80 11:       add (3r)        r0, r8, r0
             0x00080f1e: 03 54:       stw (ru6)       r0, sp[0x3]
             0x00080f20: 01 fe ec 1f: ldaw (l3r)      r0, r8[r9]
             0x00080f24: 02 f0 44 68: ldc (lru6)      r1, 0x84
             0x00080f28: 11 10:       add (3r)        r1, r0, r1
             0x00080f2a: 42 54:       stw (ru6)       r1, sp[0x2]
             0x00080f2c: 04 f0 44 68: ldc (lru6)      r1, 0x104
             0x00080f30: 11 10:       add (3r)        r1, r0, r1
             0x00080f32: 45 54:       stw (ru6)       r1, sp[0x5]
             0x00080f34: a0 92:       add (2rus)      r6, r0, 0x4
             0x00080f36: f8 91:       add (2rus)      r7, r10, 0x0
.label121    0x00080f38: 04 79:       bf (ru6)        r4, 0x4 <.label113>
             0x00080f3a: 05 5c:       ldw (ru6)       r0, sp[0x5]
             0x00080f3c: 43 4a:       ldw (3r)        r0, r0[r7]
             0x00080f3e: 40 32:       eq (3r)         r0, r0, r4
             0x00080f40: 28 78:       bf (ru6)        r0, 0x28 <.label114>
.label113    0x00080f42: f7 13:       add (3r)        r3, r9, r7
             0x00080f44: 1d 98:       sub (2rus)      r1, r3, 0x1
             0x00080f46: d1 a6:       mkmsk (rus)     r0, 0x1
             0x00080f48: 01 20:       shl (3r)        r0, r0, r1
             0x00080f4a: 2b 4b:       ldw (3r)        r2, r6[r7]
             0x00080f4c: 31 0a:       ldw (2rus)      r11, r8[0x1]
             0x00080f4e: bf 34:       eq (3r)         r3, r3, r11
             0x00080f50: c2 78:       bf (ru6)        r3, 0x2 <.label115>
             0x00080f52: 91 01:       stw (2rus)      r1, r8[0x1]
             0x00080f54: 02 73:       bu (u6)         0x2 <.label116>
.label115    0x00080f56: ab fb ec 07: stw (l3r)       r10, r6[r7]
.label116    0x00080f5a: 9b 78:       bf (ru6)        r2, 0x1b <.label114>
             0x00080f5c: d8 91:       add (2rus)      r5, r10, 0x0
             0x00080f5e: 21 0a:       ldw (2rus)      r10, r8[0x1]
             0x00080f60: 44 5c:       ldw (ru6)       r1, sp[0x4]
             0x00080f62: 14 08:       ldw (2rus)      r1, r1[0x0]
             0x00080f64: 14 38:       and (3r)        r1, r1, r0
             0x00080f66: 49 78:       bf (ru6)        r1, 0x9 <.label117>
             0x00080f68: 43 5c:       ldw (ru6)       r1, sp[0x3]
             0x00080f6a: 14 08:       ldw (2rus)      r1, r1[0x0]
             0x00080f6c: 04 38:       and (3r)        r0, r1, r0
             0x00080f6e: 42 5c:       ldw (ru6)       r1, sp[0x2]
             0x00080f70: 57 4a:       ldw (3r)        r1, r1[r7]
             0x00080f72: 05 78:       bf (ru6)        r0, 0x5 <.label118>
             0x00080f74: 04 90:       add (2rus)      r0, r1, 0x0
             0x00080f76: e2 27:       bla (1r)        r2
             0x00080f78: 04 73:       bu (u6)         0x4 <.label119>
.label117    0x00080f7a: e2 27:       bla (1r)        r2
             0x00080f7c: 02 73:       bu (u6)         0x2 <.label119>
.label118    0x00080f7e: 01 5c:       ldw (ru6)       r0, sp[0x1]
             0x00080f80: e2 27:       bla (1r)        r2
.label119    0x00080f82: 91 09:       ldw (2rus)      r1, r8[0x1]
             0x00080f84: 00 f0 14 58: ldw (lru6)      r0, dp[0x14]
             0x00080f88: 99 31:       eq (3r)         r1, r10, r1
             0x00080f8a: 64 91:       add (2rus)      r10, r5, 0x0
             0x00080f8c: 47 78:       bf (ru6)        r1, 0x7 <.label120>
             0x00080f8e: 90 34:       eq (3r)         r1, r0, r8
             0x00080f90: 45 78:       bf (ru6)        r1, 0x5 <.label120>
.label114    0x00080f92: 3d 99:       sub (2rus)      r7, r7, 0x1
             0x00080f94: c7 13:       add (3r)        r0, r9, r7
             0x00080f96: 88 c1:       lss (3r)        r0, r10, r0
             0x00080f98: 31 74:       bt (ru6)        r0, -0x31 <.label121>
             0x00080f9a: 02 73:       bu (u6)         0x2 <.label112>
.label120    0x00080f9c: 01 f0 0e 74: bt (lru6)       r0, -0x4e <.label122>
.label112    0x00080fa0: 8c 5e:       ldw (ru6)       r10, sp[0xc]
             0x00080fa2: 45 fc ec ef: ldd (l2rus)     r9, r8, sp[0x5]
             0x00080fa6: 6c fb ec ef: ldd (l2rus)     r7, r6, sp[0x4]
             0x00080faa: 07 f9 ec ef: ldd (l2rus)     r5, r4, sp[0x3]
             0x00080fae: ce 77:       retsp (u6)      0xe

<__malloc_lock>:
             0x00080fb0: 00 f0 42 77: entsp (lu6)     0x2
             0x00080fb4: 03 f0 0e 60: ldaw (lru6)     r0, dp[0xce]
             0x00080fb8: 00 f0 56 d5: bl (lu10)       -0x156 <__lock_fair_acquire>
             0x00080fbc: c2 77:       retsp (u6)      0x2
             0x00080fbe: 00 00:       stw (2rus)      r0, r0[0x0]

<__malloc_unlock>:
             0x00080fc0: 00 f0 42 77: entsp (lu6)     0x2
             0x00080fc4: 03 f0 0e 60: ldaw (lru6)     r0, dp[0xce]
             0x00080fc8: 00 f0 4e d5: bl (lu10)       -0x14e <__lock_fair_release>
             0x00080fcc: c2 77:       retsp (u6)      0x2
             0x00080fce: 00 00:       stw (2rus)      r0, r0[0x0]

<_DoSyscall>:
             0x00080fd0: 00 f0 40 77: entsp (lu6)     0x0
             0x00080fd4: d0 a6:       mkmsk (rus)     r0, 0x20
             0x00080fd6: c0 77:       retsp (u6)      0x0

<__errno>:
             0x00080fd8: 00 f0 40 77: entsp (lu6)     0x0
             0x00080fdc: ee 17:       get (0r)        r11, id
             0x00080fde: 03 f0 10 60: ldaw (lru6)     r0, dp[0xd0]
             0x00080fe2: 83 fc ec 1f: ldaw (l3r)      r0, r0[r11]
             0x00080fe6: c0 77:       retsp (u6)      0x0

<xscope_xlink_put_ch>:
             0x00080fe8: 00 f0 40 77: entsp (lu6)     0x0
             0x00080fec: 00 f0 4a 58: ldw (lru6)      r1, dp[0xa]
             0x00080ff0: 4b 78:       bf (ru6)        r1, 0xb <xscope_xlink_put_ch_ret>
             0x00080ff2: 00 f0 89 58: ldw (lru6)      r2, dp[0x9]
             0x00080ff6: 87 70:       bt (ru6)        r2, 0x7 <xscope_xlink_outt>
             0x00080ff8: 00 f0 4b 58: ldw (lru6)      r1, dp[0xb]
             0x00080ffc: 45 78:       bf (ru6)        r1, 0x5 <xscope_xlink_put_ch_ret>
             0x00080ffe: ca 86:       getr (rus)      r2, 0x2
             0x00081000: d6 16:       setd (r2r)      res[r2], r1
             0x00081002: 00 f0 89 50: stw (lru6)      r2, dp[0x9]

<xscope_xlink_outt>:
             0x00081006: d2 0e:       outt (r2r)      res[r2], r0

<xscope_xlink_put_ch_ret>:
             0x00081008: c0 77:       retsp (u6)      0x0
             0x0008100a: 00 00:       stw (2rus)      r0, r0[0x0]

<xscope_xlink_init>:
             0x0008100c: 00 f0 40 77: entsp (lu6)     0x0
             0x00081010: 00 f0 4b 58: ldw (lru6)      r1, dp[0xb]
             0x00081014: 00 f0 48 7c: bf (lru6)       r1, -0x8 <xscope_xlink_put_ch_ret>
             0x00081018: ca 86:       getr (rus)      r2, 0x2
             0x0008101a: d6 16:       setd (r2r)      res[r2], r1
             0x0008101c: 00 f0 89 50: stw (lru6)      r2, dp[0x9]
             0x00081020: c0 77:       retsp (u6)      0x0
             0x00081022: 00 00:       stw (2rus)      r0, r0[0x0]

<xscope_xlink_deinit>:
             0x00081024: 00 f0 40 77: entsp (lu6)     0x0
             0x00081028: 00 f0 49 58: ldw (lru6)      r1, dp[0x9]
             0x0008102c: 00 f0 54 7c: bf (lru6)       r1, -0x14 <xscope_xlink_put_ch_ret>
             0x00081030: e1 17:       freer (1r)      res[r1]
             0x00081032: 80 68:       ldc (ru6)       r2, 0x0
             0x00081034: 00 f0 89 50: stw (lru6)      r2, dp[0x9]
             0x00081038: c0 77:       retsp (u6)      0x0
             0x0008103a: 00 00:       stw (2rus)      r0, r0[0x0]

<xscope_xlink_put_ct>:
             0x0008103c: 00 f0 40 77: entsp (lu6)     0x0
             0x00081040: 00 f0 4a 58: ldw (lru6)      r1, dp[0xa]
             0x00081044: 44 78:       bf (ru6)        r1, 0x4 <xscope_xlink_put_ct_ret>
             0x00081046: 00 f0 89 58: ldw (lru6)      r2, dp[0x9]
             0x0008104a: 81 78:       bf (ru6)        r2, 0x1 <xscope_xlink_put_ct_ret>
             0x0008104c: d9 4e:       outct (rus)     res[r2], 0x1

<xscope_xlink_put_ct_ret>:
             0x0008104e: c0 77:       retsp (u6)      0x0

<xscope_xlink_start_token>:
             0x00081050: 00 f0 40 77: entsp (lu6)     0x0
             0x00081054: 00 f0 4a 58: ldw (lru6)      r1, dp[0xa]
             0x00081058: 48 78:       bf (ru6)        r1, 0x8 <xscope_xlink_start_token_ret>
             0x0008105a: 00 f0 89 58: ldw (lru6)      r2, dp[0x9]
             0x0008105e: 85 78:       bf (ru6)        r2, 0x5 <xscope_xlink_start_token_ret>
             0x00081060: d9 4e:       outct (rus)     res[r2], 0x1
             0x00081062: 01 f0 d5 6a: ldc (lru6)      r11, 0x55
             0x00081066: 2b 4f:       outct (2r)      res[r2], r11
             0x00081068: d9 4e:       outct (rus)     res[r2], 0x1

<xscope_xlink_start_token_ret>:
             0x0008106a: c0 77:       retsp (u6)      0x0

<__checkFptrGroup>:
             0x0008106c: 00 f0 40 77: entsp (lu6)     0x0
             0x00081070: 30 90:       add (2rus)      r3, r0, 0x0
.label124    0x00081072: 06 c8:       lsu (3r)        r0, r1, r2
             0x00081074: 05 78:       bf (ru6)        r0, 0x5 <.label123>
             0x00081076: 04 08:       ldw (2rus)      r0, r1[0x0]
             0x00081078: 03 30:       eq (3r)         r0, r0, r3
             0x0008107a: 02 70:       bt (ru6)        r0, 0x2 <.label123>
             0x0008107c: 54 92:       add (2rus)      r1, r1, 0x4
             0x0008107e: 07 77:       bu (u6)         -0x7 <.label124>
.label123    0x00081080: c0 77:       retsp (u6)      0x0

Disassembly of section .eh_frame (size: 36)

             0x00081088: 0c 00 00 00: 
             0x0008108c: 00 00 00 00: 
             0x00081090: 01 00 01 01: 
             0x00081094: 0f 0c 0e 00: 
             0x00081098: 10 00 00 00: 
             0x0008109c: 14 00 00 00: 
             0x000810a0: 30 0e 08 00: 
             0x000810a4: 12 00 00 00: 
             0x000810a8: 07 0f 00 00: 

Disassembly of section .cp.rodata (size: 273)

<_cp>:
<.cp.rodata>:
<tiles_to_wake>:
.label11     0x000810b0: 02 1e 03 80: 

<chanends_to_setup>:
             0x000810b4: ff 00 00 00: 

<.cp.rodata>:
             0x000810b8: 30 19 f0 ff: 

<.cp.rodata>:
             0x000810bc: f0 19 f0 ff: 

<.cp.rodata>:
<_ctype_>:
             0x000810c0: 00 20 20 20: 
             0x000810c4: 20 20 20 20: 
             0x000810c8: 20 20 28 28: 
             0x000810cc: 28 28 28 20: 
             0x000810d0: 20 20 20 20: 
             0x000810d4: 20 20 20 20: 
             0x000810d8: 20 20 20 20: 
             0x000810dc: 20 20 20 20: 
             0x000810e0: 20 88 10 10: 
             0x000810e4: 10 10 10 10: 
             0x000810e8: 10 10 10 10: 
             0x000810ec: 10 10 10 10: 
             0x000810f0: 10 04 04 04: 
             0x000810f4: 04 04 04 04: 
             0x000810f8: 04 04 04 10: 
             0x000810fc: 10 10 10 10: 
             0x00081100: 10 10 41 41: 
             0x00081104: 41 41 41 41: 
             0x00081108: 01 01 01 01: 
             0x0008110c: 01 01 01 01: 
             0x00081110: 01 01 01 01: 
             0x00081114: 01 01 01 01: 
             0x00081118: 01 01 01 01: 
             0x0008111c: 10 10 10 10: 
             0x00081120: 10 10 42 42: 
             0x00081124: 42 42 42 42: 
             0x00081128: 02 02 02 02: 
             0x0008112c: 02 02 02 02: 
             0x00081130: 02 02 02 02: 
             0x00081134: 02 02 02 02: 
             0x00081138: 02 02 02 02: 
             0x0008113c: 10 10 10 10: 
             0x00081140: 20 00 00 00: 
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
             0x00081178: 00 00 00 00: 
             0x0008117c: 00 00 00 00: 
             0x00081180: 00 00 00 00: 
             0x00081184: 00 00 00 00: 
             0x00081188: 00 00 00 00: 
             0x0008118c: 00 00 00 00: 
             0x00081190: 00 00 00 00: 
             0x00081194: 00 00 00 00: 
             0x00081198: 00 00 00 00: 
             0x0008119c: 00 00 00 00: 
             0x000811a0: 00 00 00 00: 
             0x000811a4: 00 00 00 00: 
             0x000811a8: 00 00 00 00: 
             0x000811ac: 00 00 00 00: 
             0x000811b0: 00 00 00 00: 
             0x000811b4: 00 00 00 00: 
             0x000811b8: 00 00 00 00: 
             0x000811bc: 00 00 00 00: 
             0x000811c0: 00:          

Disassembly of section .cp.rodata.4 (size: 68)

<.cp.rodata.4>:
<_ZZ13testSchedulervE4name>:
             0x000811c4: 62 6c 69 6e: 
             0x000811c8: 6b 4c 65 64: 
             0x000811cc: 43 6f 6f 70: 
             0x000811d0: 65 72 61 74: 
             0x000811d4: 69 76 65 00: 

<_ZZ13testSchedulervE4name_0>:
             0x000811d8: 62 6c 69 6e: 
             0x000811dc: 6b 4c 65 64: 
             0x000811e0: 43 6f 6f 70: 
             0x000811e4: 65 72 61 74: 
             0x000811e8: 69 76 65 00: 

<_ZZ13testSchedulervE4name_1>:
             0x000811ec: 62 6c 69 6e: 
             0x000811f0: 6b 4c 65 64: 
             0x000811f4: 43 6f 6f 70: 
             0x000811f8: 65 72 61 74: 
             0x000811fc: 69 76 65 00: 

<_fptrgroup.stdlib_atexit.group.begin>:
             0x00081200: 10 02 08 00: 
             0x00081204: f4 05 08 00: 

Disassembly of section .cp.const4 (size: 48)

<initial_dp>:
             0x00081208: d8 12 08 00: 

<dp_bss_large_start>:
             0x0008120c: 38 16 08 00: 

<extmem_bss_start>:
             0x00081210: 00 00 00 10: 

<.cp.const4>:
<ctor_list_ptr>:
             0x00081214: cc 12 08 00: 

<.cp.const4>:
<dtor_list_ptr>:
             0x00081218: d8 12 08 00: 

<.cp.const4>:
<initial_sp>:
             0x0008121c: b0 fe 0f 00: 

<dp_bss_size>:
             0x00081220: 00 03 00 00: 

<dp_bss_large_size>:
             0x00081224: 00 00 00 00: 

<extmem_bss_size>:
             0x00081228: 00 00 00 00: 

<dtors_size>:
             0x0008122c: 00 00 00 00: 

<ctors_size>:
             0x00081230: 03 00 00 00: 

<.cp.const4>:
             0x00081234: 02 1e 03 80: 

Disassembly of section .cp.rodata.cst4 (size: 44)

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
             0x00081238: 00 00 00 01: 
             0x0008123c: 00 02 04 00: 
             0x00081240: 00 2d 31 01: 
             0x00081244: 44 33 22 11: 
             0x00081248: 80 c3 c9 01: 
             0x0008124c: 90 ff ff ff: 
             0x00081250: d0 ff ff ff: 
             0x00081254: e0 ff ff ff: 
             0x00081258: f8 ff ff ff: 
             0x0008125c: fc ff ff ff: 
             0x00081260: ff ff ff 7f: 

Disassembly of section .cp.rodata.string (size: 101)

<.cp.rodata.string>:
<.cp.rodata.string>:
<.cp.rodata.string>:
             0x00081264: 25 64 2c 25: 
             0x00081268: 73 0a 00 00: 

<itoa.digits>:
             0x0008126c: 30 31 32 33: 
             0x00081270: 34 35 36 37: 
             0x00081274: 38 39 41 42: 
             0x00081278: 43 44 45 46: 
             0x0008127c: 00 00 00 00: 
             0x00081280: 43 72 65 61: 
             0x00081284: 74 65 20 74: 
             0x00081288: 61 73 6b 20: 
             0x0008128c: 25 73 28 25: 
             0x00081290: 64 29 2c 20: 
             0x00081294: 74 63 62 20: 
             0x00081298: 40 20 25 78: 
             0x0008129c: 68 20 28 25: 
             0x000812a0: 64 29 0a 00: 
             0x000812a4: 66 69 6e 69: 
             0x000812a8: 73 68 65 64: 
             0x000812ac: 20 25 64 0a: 
             0x000812b0: 00 00 00 00: 
             0x000812b4: 66 69 6e 69: 
             0x000812b8: 73 68 65 64: 
             0x000812bc: 20 41 4c 4c: 
             0x000812c0: 0a 00 00 00: 
             0x000812c4: 6d 61 69 6e: 
             0x000812c8: 00:          

Disassembly of section .ctors (size: 12)

<_CTOR_LIST_>:
<.ctors>:
             0x000812cc: b0 03 08 00: 

<.ctors>:
             0x000812d0: 04 06 08 00: 

<.ctors>:
             0x000812d4: f4 08 08 00: 

Disassembly of section .dp.data (size: 48)

<_dp>:
<__timers>:
<.dp.data>:
<.dp.data>:
             0x000812d8: 01 00 00 00: 
             0x000812dc: 00 00 00 00: 
             0x000812e0: 00 00 00 00: 
             0x000812e4: 00 00 00 00: 
             0x000812e8: 00 00 00 00: 
             0x000812ec: 00 00 00 00: 
             0x000812f0: 00 00 00 00: 
             0x000812f4: 00 00 00 00: 

<XSCOPE_REDIRECT_IO>:
<.dp.data>:
             0x000812f8: 00 00 00 00: 

<__sodChan>:
<.dp.data>:
             0x000812fc: 00 00 00 00: 

<__sodFlag>:
<.dp.data>:
             0x00081300: 00 00 00 00: 

<__sodEnd>:
             0x00081304: 02 01 00 80: 

Disassembly of section .dp.data.4 (size: 36)

<.dp.data.4>:
<par.desc.1>:
             0x00081308: 98 01 08 00: 
             0x0008130c: 4a 00 00 00: 
             0x00081310: 00 00 00 00: 
             0x00081314: a4 01 08 00: 

<__ctype_ptr__>:
<.dp.data.4>:
<.dp.data.4>:
             0x00081318: c0 10 08 00: 

<.dp.data.4>:
<__malloc_limit>:
             0x0008131c: 00 fc 0f 00: 

<__malloc_end>:
             0x00081320: 3c 16 08 00: 

<xscope_ref_clk>:
<.dp.data.4>:
             0x00081324: 06 00 00 00: 

<.dp.data.4>:
<_atexit_fns>:
             0x00081328: 78 14 08 00: 

Disassembly of section .dp.rodata (size: 4)

<tile>:
             0x0008132c: 00 00 01 00: 

Disassembly of section .dp.data.extmem.setps (size: 4)

<.dp.data.extmem.setps>:
<__extmem_setps_val>:
             0x00081330: 00 18 00 00: 

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
             0x0008008c: 00 f0 5e d0: bl (lu10)       0x5e <.label6>
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
             0x00080128: 00 f0 18 d0: bl (lu10)       0x18 <tile1_task1>
             0x0008012c: c2 77:       retsp (u6)      0x2
             0x0008012e: 00 00:       stw (2rus)      r0, r0[0x0]

<__main__main_tile_1_task_tile1_task2_3>:
             0x00080130: 00 f0 42 77: entsp (lu6)     0x2
             0x00080134: 00 f0 16 d0: bl (lu10)       0x16 <tile1_task2>
             0x00080138: c2 77:       retsp (u6)      0x2
             0x0008013a: 00 00:       stw (2rus)      r0, r0[0x0]

<__dtor_PLEDS>:
             0x0008013c: 00 f0 40 77: entsp (lu6)     0x0
             0x00080140: 00 f0 19 58: ldw (lru6)      r0, dp[0x19]
             0x00080144: 01 78:       bf (ru6)        r0, 0x1 <.label14>
             0x00080146: 00 e8:       setc (ru6)      res[r0], 0x0
.label14     0x00080148: c0 77:       retsp (u6)      0x0
             0x0008014a: 00 00:       stw (2rus)      r0, r0[0x0]

<_get_cmdline>:
.label6      0x0008014c: 00 f0 40 77: entsp (lu6)     0x0
             0x00080150: 00 f0 1a 50: stw (lru6)      r0, dp[0x1a]
             0x00080154: 00 f0 5b 50: stw (lru6)      r1, dp[0x1b]
             0x00080158: d0 a6:       mkmsk (rus)     r0, 0x20
             0x0008015a: c0 77:       retsp (u6)      0x0

<tile1_task1>:
             0x0008015c: 00 f0 40 77: entsp (lu6)     0x0
             0x00080160: c0 77:       retsp (u6)      0x0
             0x00080162: 00 00:       stw (2rus)      r0, r0[0x0]

<tile1_task2>:
             0x00080164: 00 f0 40 77: entsp (lu6)     0x0
             0x00080168: c0 77:       retsp (u6)      0x0
             0x0008016a: 00 00:       stw (2rus)      r0, r0[0x0]

<_GLOBAL__sub_I_tests.cpp>:
             0x0008016c: 00 f0 42 77: entsp (lu6)     0x2
             0x00080170: 00 f0 11 6c: ldw (lru6)      r0, cp[0x11]
             0x00080174: 00 f0 19 50: stw (lru6)      r0, dp[0x19]
             0x00080178: 08 e8:       setc (ru6)      res[r0], 0x8
             0x0008017a: 00 f0 21 dc: ldap (lu10)     r11, -0x21 <__dtor_PLEDS>
             0x0008017e: 8c 91:       add (2rus)      r0, r11, 0x0
             0x00080180: 00 f0 c4 d0: bl (lu10)       0xc4 <atexit>
             0x00080184: c2 77:       retsp (u6)      0x2
             0x00080186: 00 00:       stw (2rus)      r0, r0[0x0]

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
             0x000805ac: 6c 01 08 00: 

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


