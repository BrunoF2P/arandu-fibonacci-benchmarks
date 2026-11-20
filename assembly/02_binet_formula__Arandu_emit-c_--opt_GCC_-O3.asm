; Benchmark: 02_binet_formula
; Implementação: Arandu (emit-c --opt + GCC -O3)
; Executável: /workspaces/arandu-fibonacci-benchmarks/build/02_binet_formula/arandu_c_gcc
; Comando: /usr/bin/objdump -d -C /workspaces/arandu-fibonacci-benchmarks/build/02_binet_formula/arandu_c_gcc


/workspaces/arandu-fibonacci-benchmarks/build/02_binet_formula/arandu_c_gcc:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 52 2f 00 00    	push   0x2f52(%rip)        # 3f78 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 54 2f 00 00    	jmp    *0x2f54(%rip)        # 3f80 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)
    1030:	f3 0f 1e fa          	endbr64
    1034:	68 00 00 00 00       	push   $0x0
    1039:	e9 e2 ff ff ff       	jmp    1020 <_init+0x20>
    103e:	66 90                	xchg   %ax,%ax
    1040:	f3 0f 1e fa          	endbr64
    1044:	68 01 00 00 00       	push   $0x1
    1049:	e9 d2 ff ff ff       	jmp    1020 <_init+0x20>
    104e:	66 90                	xchg   %ax,%ax
    1050:	f3 0f 1e fa          	endbr64
    1054:	68 02 00 00 00       	push   $0x2
    1059:	e9 c2 ff ff ff       	jmp    1020 <_init+0x20>
    105e:	66 90                	xchg   %ax,%ax
    1060:	f3 0f 1e fa          	endbr64
    1064:	68 03 00 00 00       	push   $0x3
    1069:	e9 b2 ff ff ff       	jmp    1020 <_init+0x20>
    106e:	66 90                	xchg   %ax,%ax
    1070:	f3 0f 1e fa          	endbr64
    1074:	68 04 00 00 00       	push   $0x4
    1079:	e9 a2 ff ff ff       	jmp    1020 <_init+0x20>
    107e:	66 90                	xchg   %ax,%ax
    1080:	f3 0f 1e fa          	endbr64
    1084:	68 05 00 00 00       	push   $0x5
    1089:	e9 92 ff ff ff       	jmp    1020 <_init+0x20>
    108e:	66 90                	xchg   %ax,%ax
    1090:	f3 0f 1e fa          	endbr64
    1094:	68 06 00 00 00       	push   $0x6
    1099:	e9 82 ff ff ff       	jmp    1020 <_init+0x20>
    109e:	66 90                	xchg   %ax,%ax
    10a0:	f3 0f 1e fa          	endbr64
    10a4:	68 07 00 00 00       	push   $0x7
    10a9:	e9 72 ff ff ff       	jmp    1020 <_init+0x20>
    10ae:	66 90                	xchg   %ax,%ax
    10b0:	f3 0f 1e fa          	endbr64
    10b4:	68 08 00 00 00       	push   $0x8
    10b9:	e9 62 ff ff ff       	jmp    1020 <_init+0x20>
    10be:	66 90                	xchg   %ax,%ax

Disassembly of section .plt.got:

00000000000010c0 <__cxa_finalize@plt>:
    10c0:	f3 0f 1e fa          	endbr64
    10c4:	ff 25 2e 2f 00 00    	jmp    *0x2f2e(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    10ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

00000000000010d0 <__snprintf_chk@plt>:
    10d0:	f3 0f 1e fa          	endbr64
    10d4:	ff 25 ae 2e 00 00    	jmp    *0x2eae(%rip)        # 3f88 <__snprintf_chk@GLIBC_2.3.4>
    10da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000010e0 <free@plt>:
    10e0:	f3 0f 1e fa          	endbr64
    10e4:	ff 25 a6 2e 00 00    	jmp    *0x2ea6(%rip)        # 3f90 <free@GLIBC_2.2.5>
    10ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000010f0 <abort@plt>:
    10f0:	f3 0f 1e fa          	endbr64
    10f4:	ff 25 9e 2e 00 00    	jmp    *0x2e9e(%rip)        # 3f98 <abort@GLIBC_2.2.5>
    10fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001100 <pow@plt>:
    1100:	f3 0f 1e fa          	endbr64
    1104:	ff 25 96 2e 00 00    	jmp    *0x2e96(%rip)        # 3fa0 <pow@GLIBC_2.29>
    110a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001110 <__stack_chk_fail@plt>:
    1110:	f3 0f 1e fa          	endbr64
    1114:	ff 25 8e 2e 00 00    	jmp    *0x2e8e(%rip)        # 3fa8 <__stack_chk_fail@GLIBC_2.4>
    111a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001120 <fputc@plt>:
    1120:	f3 0f 1e fa          	endbr64
    1124:	ff 25 86 2e 00 00    	jmp    *0x2e86(%rip)        # 3fb0 <fputc@GLIBC_2.2.5>
    112a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001130 <malloc@plt>:
    1130:	f3 0f 1e fa          	endbr64
    1134:	ff 25 7e 2e 00 00    	jmp    *0x2e7e(%rip)        # 3fb8 <malloc@GLIBC_2.2.5>
    113a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001140 <fflush@plt>:
    1140:	f3 0f 1e fa          	endbr64
    1144:	ff 25 76 2e 00 00    	jmp    *0x2e76(%rip)        # 3fc0 <fflush@GLIBC_2.2.5>
    114a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001150 <fwrite@plt>:
    1150:	f3 0f 1e fa          	endbr64
    1154:	ff 25 6e 2e 00 00    	jmp    *0x2e6e(%rip)        # 3fc8 <fwrite@GLIBC_2.2.5>
    115a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001160 <ar_capture_env_args>:
    1160:	c3                   	ret
    1161:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1168:	00 00 00 00 
    116c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001170 <main>:
    1170:	f3 0f 1e fa          	endbr64
    1174:	41 55                	push   %r13
    1176:	41 54                	push   %r12
    1178:	55                   	push   %rbp
    1179:	45 31 ed             	xor    %r13d,%r13d
    117c:	53                   	push   %rbx
    117d:	48 bd 45 2b 6c 0e 24 	movabs $0x73615a240e6c2b45,%rbp
    1184:	5a 61 73 
    1187:	31 db                	xor    %ebx,%ebx
    1189:	49 bc 00 00 00 00 00 	movabs $0x8000000000000000,%r12
    1190:	00 00 80 
    1193:	48 83 ec 08          	sub    $0x8,%rsp
    1197:	eb 1b                	jmp    11b4 <main+0x44>
    1199:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    11a0:	49 ff c5             	inc    %r13
    11a3:	c4 e1 fb 2c c0       	vcvttsd2si %xmm0,%rax
    11a8:	48 01 c3             	add    %rax,%rbx
    11ab:	49 81 fd 80 96 98 00 	cmp    $0x989680,%r13
    11b2:	74 6e                	je     1222 <main+0xb2>
    11b4:	4c 89 e8             	mov    %r13,%rax
    11b7:	c5 fb 10 05 51 0e 00 	vmovsd 0xe51(%rip),%xmm0        # 2010 <_IO_stdin_used+0x10>
    11be:	00 
    11bf:	c5 e9 57 d2          	vxorpd %xmm2,%xmm2,%xmm2
    11c3:	48 f7 ed             	imul   %rbp
    11c6:	4c 89 e8             	mov    %r13,%rax
    11c9:	48 c1 f8 3f          	sar    $0x3f,%rax
    11cd:	48 c1 fa 05          	sar    $0x5,%rdx
    11d1:	48 29 c2             	sub    %rax,%rdx
    11d4:	4c 89 e8             	mov    %r13,%rax
    11d7:	48 6b d2 47          	imul   $0x47,%rdx,%rdx
    11db:	48 29 d0             	sub    %rdx,%rax
    11de:	c4 e1 eb 2a c8       	vcvtsi2sd %rax,%xmm2,%xmm1
    11e3:	e8 18 ff ff ff       	call   1100 <pow@plt>
    11e8:	c5 fb 10 1d 30 0e 00 	vmovsd 0xe30(%rip),%xmm3        # 2020 <_IO_stdin_used+0x20>
    11ef:	00 
    11f0:	c4 e2 e1 99 05 1f 0e 	vfmadd132sd 0xe1f(%rip),%xmm3,%xmm0        # 2018 <_IO_stdin_used+0x18>
    11f7:	00 00 
    11f9:	c5 f9 2f 05 27 0e 00 	vcomisd 0xe27(%rip),%xmm0        # 2028 <_IO_stdin_used+0x28>
    1200:	00 
    1201:	72 9d                	jb     11a0 <main+0x30>
    1203:	c5 fb 5c 05 1d 0e 00 	vsubsd 0xe1d(%rip),%xmm0,%xmm0        # 2028 <_IO_stdin_used+0x28>
    120a:	00 
    120b:	49 ff c5             	inc    %r13
    120e:	c4 e1 fb 2c c0       	vcvttsd2si %xmm0,%rax
    1213:	4c 31 e0             	xor    %r12,%rax
    1216:	48 01 c3             	add    %rax,%rbx
    1219:	49 81 fd 80 96 98 00 	cmp    $0x989680,%r13
    1220:	75 92                	jne    11b4 <main+0x44>
    1222:	31 f6                	xor    %esi,%esi
    1224:	48 89 df             	mov    %rbx,%rdi
    1227:	e8 34 02 00 00       	call   1460 <ar_u64_write_digits>
    122c:	49 89 c4             	mov    %rax,%r12
    122f:	48 85 c0             	test   %rax,%rax
    1232:	0f 88 24 01 00 00    	js     135c <main+0x1ec>
    1238:	48 8d 78 01          	lea    0x1(%rax),%rdi
    123c:	e8 ef fe ff ff       	call   1130 <malloc@plt>
    1241:	48 89 c5             	mov    %rax,%rbp
    1244:	48 85 c0             	test   %rax,%rax
    1247:	0f 84 0f 01 00 00    	je     135c <main+0x1ec>
    124d:	48 89 df             	mov    %rbx,%rdi
    1250:	48 89 c6             	mov    %rax,%rsi
    1253:	e8 08 02 00 00       	call   1460 <ar_u64_write_digits>
    1258:	48 8b 1d 81 2d 00 00 	mov    0x2d81(%rip),%rbx        # 3fe0 <stdout@GLIBC_2.2.5>
    125f:	42 c6 44 25 00 00    	movb   $0x0,0x0(%rbp,%r12,1)
    1265:	4d 85 e4             	test   %r12,%r12
    1268:	74 13                	je     127d <main+0x10d>
    126a:	48 8b 0b             	mov    (%rbx),%rcx
    126d:	4c 89 e2             	mov    %r12,%rdx
    1270:	be 01 00 00 00       	mov    $0x1,%esi
    1275:	48 89 ef             	mov    %rbp,%rdi
    1278:	e8 d3 fe ff ff       	call   1150 <fwrite@plt>
    127d:	48 8b 33             	mov    (%rbx),%rsi
    1280:	bf 0a 00 00 00       	mov    $0xa,%edi
    1285:	e8 96 fe ff ff       	call   1120 <fputc@plt>
    128a:	48 8b 3b             	mov    (%rbx),%rdi
    128d:	e8 ae fe ff ff       	call   1140 <fflush@plt>
    1292:	48 89 ef             	mov    %rbp,%rdi
    1295:	e8 46 fe ff ff       	call   10e0 <free@plt>
    129a:	48 8b 1d 7f 2d 00 00 	mov    0x2d7f(%rip),%rbx        # 4020 <ar_gen_head>
    12a1:	48 89 d8             	mov    %rbx,%rax
    12a4:	48 89 da             	mov    %rbx,%rdx
    12a7:	eb 21                	jmp    12ca <main+0x15a>
    12a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    12b0:	48 8b 40 30          	mov    0x30(%rax),%rax
    12b4:	48 85 c0             	test   %rax,%rax
    12b7:	74 16                	je     12cf <main+0x15f>
    12b9:	48 8b 52 30          	mov    0x30(%rdx),%rdx
    12bd:	48 8b 40 30          	mov    0x30(%rax),%rax
    12c1:	48 39 c2             	cmp    %rax,%rdx
    12c4:	0f 84 85 00 00 00    	je     134f <main+0x1df>
    12ca:	48 85 c0             	test   %rax,%rax
    12cd:	75 e1                	jne    12b0 <main+0x140>
    12cf:	48 8b 2d 42 2d 00 00 	mov    0x2d42(%rip),%rbp        # 4018 <ar_gen_len>
    12d6:	48 c7 05 3f 2d 00 00 	movq   $0x0,0x2d3f(%rip)        # 4020 <ar_gen_head>
    12dd:	00 00 00 00 
    12e1:	48 c7 05 2c 2d 00 00 	movq   $0x0,0x2d2c(%rip)        # 4018 <ar_gen_len>
    12e8:	00 00 00 00 
    12ec:	48 85 ed             	test   %rbp,%rbp
    12ef:	74 5e                	je     134f <main+0x1df>
    12f1:	48 85 db             	test   %rbx,%rbx
    12f4:	75 2e                	jne    1324 <main+0x1b4>
    12f6:	eb 57                	jmp    134f <main+0x1df>
    12f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    12ff:	00 
    1300:	48 8b 7b 08          	mov    0x8(%rbx),%rdi
    1304:	ff d0                	call   *%rax
    1306:	48 8b 7b 10          	mov    0x10(%rbx),%rdi
    130a:	e8 d1 fd ff ff       	call   10e0 <free@plt>
    130f:	48 89 df             	mov    %rbx,%rdi
    1312:	e8 c9 fd ff ff       	call   10e0 <free@plt>
    1317:	48 ff cd             	dec    %rbp
    131a:	74 33                	je     134f <main+0x1df>
    131c:	4d 85 e4             	test   %r12,%r12
    131f:	74 2e                	je     134f <main+0x1df>
    1321:	4c 89 e3             	mov    %r12,%rbx
    1324:	48 8b 43 28          	mov    0x28(%rbx),%rax
    1328:	4c 8b 63 30          	mov    0x30(%rbx),%r12
    132c:	48 85 c0             	test   %rax,%rax
    132f:	75 cf                	jne    1300 <main+0x190>
    1331:	48 8b 7b 10          	mov    0x10(%rbx),%rdi
    1335:	48 ff cd             	dec    %rbp
    1338:	e8 a3 fd ff ff       	call   10e0 <free@plt>
    133d:	48 89 df             	mov    %rbx,%rdi
    1340:	e8 9b fd ff ff       	call   10e0 <free@plt>
    1345:	4d 85 e4             	test   %r12,%r12
    1348:	74 05                	je     134f <main+0x1df>
    134a:	48 85 ed             	test   %rbp,%rbp
    134d:	75 d2                	jne    1321 <main+0x1b1>
    134f:	48 83 c4 08          	add    $0x8,%rsp
    1353:	31 c0                	xor    %eax,%eax
    1355:	5b                   	pop    %rbx
    1356:	5d                   	pop    %rbp
    1357:	41 5c                	pop    %r12
    1359:	41 5d                	pop    %r13
    135b:	c3                   	ret
    135c:	e8 8f fd ff ff       	call   10f0 <abort@plt>
    1361:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1368:	00 00 00 
    136b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001370 <_start>:
    1370:	f3 0f 1e fa          	endbr64
    1374:	31 ed                	xor    %ebp,%ebp
    1376:	49 89 d1             	mov    %rdx,%r9
    1379:	5e                   	pop    %rsi
    137a:	48 89 e2             	mov    %rsp,%rdx
    137d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1381:	50                   	push   %rax
    1382:	54                   	push   %rsp
    1383:	45 31 c0             	xor    %r8d,%r8d
    1386:	31 c9                	xor    %ecx,%ecx
    1388:	48 8d 3d e1 fd ff ff 	lea    -0x21f(%rip),%rdi        # 1170 <main>
    138f:	ff 15 3b 2c 00 00    	call   *0x2c3b(%rip)        # 3fd0 <__libc_start_main@GLIBC_2.34>
    1395:	f4                   	hlt
    1396:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    139d:	00 00 00 

00000000000013a0 <deregister_tm_clones>:
    13a0:	48 8d 3d 69 2c 00 00 	lea    0x2c69(%rip),%rdi        # 4010 <__TMC_END__>
    13a7:	48 8d 05 62 2c 00 00 	lea    0x2c62(%rip),%rax        # 4010 <__TMC_END__>
    13ae:	48 39 f8             	cmp    %rdi,%rax
    13b1:	74 15                	je     13c8 <deregister_tm_clones+0x28>
    13b3:	48 8b 05 1e 2c 00 00 	mov    0x2c1e(%rip),%rax        # 3fd8 <_ITM_deregisterTMCloneTable@Base>
    13ba:	48 85 c0             	test   %rax,%rax
    13bd:	74 09                	je     13c8 <deregister_tm_clones+0x28>
    13bf:	ff e0                	jmp    *%rax
    13c1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    13c8:	c3                   	ret
    13c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000013d0 <register_tm_clones>:
    13d0:	48 8d 3d 39 2c 00 00 	lea    0x2c39(%rip),%rdi        # 4010 <__TMC_END__>
    13d7:	48 8d 35 32 2c 00 00 	lea    0x2c32(%rip),%rsi        # 4010 <__TMC_END__>
    13de:	48 29 fe             	sub    %rdi,%rsi
    13e1:	48 89 f0             	mov    %rsi,%rax
    13e4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    13e8:	48 c1 f8 03          	sar    $0x3,%rax
    13ec:	48 01 c6             	add    %rax,%rsi
    13ef:	48 d1 fe             	sar    $1,%rsi
    13f2:	74 14                	je     1408 <register_tm_clones+0x38>
    13f4:	48 8b 05 f5 2b 00 00 	mov    0x2bf5(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    13fb:	48 85 c0             	test   %rax,%rax
    13fe:	74 08                	je     1408 <register_tm_clones+0x38>
    1400:	ff e0                	jmp    *%rax
    1402:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1408:	c3                   	ret
    1409:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001410 <__do_global_dtors_aux>:
    1410:	f3 0f 1e fa          	endbr64
    1414:	80 3d f5 2b 00 00 00 	cmpb   $0x0,0x2bf5(%rip)        # 4010 <__TMC_END__>
    141b:	75 2b                	jne    1448 <__do_global_dtors_aux+0x38>
    141d:	55                   	push   %rbp
    141e:	48 83 3d d2 2b 00 00 	cmpq   $0x0,0x2bd2(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1425:	00 
    1426:	48 89 e5             	mov    %rsp,%rbp
    1429:	74 0c                	je     1437 <__do_global_dtors_aux+0x27>
    142b:	48 8b 3d d6 2b 00 00 	mov    0x2bd6(%rip),%rdi        # 4008 <__dso_handle>
    1432:	e8 89 fc ff ff       	call   10c0 <__cxa_finalize@plt>
    1437:	e8 64 ff ff ff       	call   13a0 <deregister_tm_clones>
    143c:	c6 05 cd 2b 00 00 01 	movb   $0x1,0x2bcd(%rip)        # 4010 <__TMC_END__>
    1443:	5d                   	pop    %rbp
    1444:	c3                   	ret
    1445:	0f 1f 00             	nopl   (%rax)
    1448:	c3                   	ret
    1449:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001450 <frame_dummy>:
    1450:	f3 0f 1e fa          	endbr64
    1454:	e9 77 ff ff ff       	jmp    13d0 <register_tm_clones>
    1459:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001460 <ar_u64_write_digits>:
    1460:	55                   	push   %rbp
    1461:	53                   	push   %rbx
    1462:	49 89 f9             	mov    %rdi,%r9
    1465:	ba 02 00 00 00       	mov    $0x2,%edx
    146a:	48 83 ec 38          	sub    $0x38,%rsp
    146e:	48 89 f3             	mov    %rsi,%rbx
    1471:	4c 8d 05 8c 0b 00 00 	lea    0xb8c(%rip),%r8        # 2004 <_IO_stdin_used+0x4>
    1478:	b9 20 00 00 00       	mov    $0x20,%ecx
    147d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1484:	00 00 
    1486:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    148b:	31 c0                	xor    %eax,%eax
    148d:	48 89 e5             	mov    %rsp,%rbp
    1490:	be 20 00 00 00       	mov    $0x20,%esi
    1495:	48 89 ef             	mov    %rbp,%rdi
    1498:	e8 33 fc ff ff       	call   10d0 <__snprintf_chk@plt>
    149d:	48 63 d0             	movslq %eax,%rdx
    14a0:	48 85 db             	test   %rbx,%rbx
    14a3:	74 0a                	je     14af <ar_u64_write_digits+0x4f>
    14a5:	89 c1                	mov    %eax,%ecx
    14a7:	48 89 df             	mov    %rbx,%rdi
    14aa:	48 89 ee             	mov    %rbp,%rsi
    14ad:	f3 a4                	rep movsb %ds:(%rsi),%es:(%rdi)
    14af:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    14b4:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    14bb:	00 00 
    14bd:	75 0a                	jne    14c9 <ar_u64_write_digits+0x69>
    14bf:	48 83 c4 38          	add    $0x38,%rsp
    14c3:	48 89 d0             	mov    %rdx,%rax
    14c6:	5b                   	pop    %rbx
    14c7:	5d                   	pop    %rbp
    14c8:	c3                   	ret
    14c9:	e8 42 fc ff ff       	call   1110 <__stack_chk_fail@plt>

Disassembly of section .fini:

00000000000014d0 <_fini>:
    14d0:	f3 0f 1e fa          	endbr64
    14d4:	48 83 ec 08          	sub    $0x8,%rsp
    14d8:	48 83 c4 08          	add    $0x8,%rsp
    14dc:	c3                   	ret
