; Benchmark: 01_naive_recursive
; Implementação: Arandu (emit-c --opt + GCC -O3)
; Executável: /workspaces/arandu-fibonacci-benchmarks/build/01_naive_recursive/arandu_c_gcc
; Comando: /usr/bin/objdump -d -C /workspaces/arandu-fibonacci-benchmarks/build/01_naive_recursive/arandu_c_gcc


/workspaces/arandu-fibonacci-benchmarks/build/01_naive_recursive/arandu_c_gcc:     file format elf64-x86-64


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

0000000000001100 <__stack_chk_fail@plt>:
    1100:	f3 0f 1e fa          	endbr64
    1104:	ff 25 96 2e 00 00    	jmp    *0x2e96(%rip)        # 3fa0 <__stack_chk_fail@GLIBC_2.4>
    110a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001110 <fputc@plt>:
    1110:	f3 0f 1e fa          	endbr64
    1114:	ff 25 8e 2e 00 00    	jmp    *0x2e8e(%rip)        # 3fa8 <fputc@GLIBC_2.2.5>
    111a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001120 <__memcpy_chk@plt>:
    1120:	f3 0f 1e fa          	endbr64
    1124:	ff 25 86 2e 00 00    	jmp    *0x2e86(%rip)        # 3fb0 <__memcpy_chk@GLIBC_2.3.4>
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
    1174:	41 57                	push   %r15
    1176:	41 56                	push   %r14
    1178:	41 55                	push   %r13
    117a:	45 31 f6             	xor    %r14d,%r14d
    117d:	41 54                	push   %r12
    117f:	55                   	push   %rbp
    1180:	53                   	push   %rbx
    1181:	31 db                	xor    %ebx,%ebx
    1183:	48 83 ec 48          	sub    $0x48,%rsp
    1187:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    118e:	00 00 
    1190:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
    1195:	31 c0                	xor    %eax,%eax
    1197:	48 8d 44 24 10       	lea    0x10(%rsp),%rax
    119c:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    11a1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    11a8:	00 00 00 00 
    11ac:	0f 1f 40 00          	nopl   0x0(%rax)
    11b0:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    11b5:	49 89 d9             	mov    %rbx,%r9
    11b8:	4c 8d 05 45 0e 00 00 	lea    0xe45(%rip),%r8        # 2004 <_IO_stdin_used+0x4>
    11bf:	b9 20 00 00 00       	mov    $0x20,%ecx
    11c4:	ba 02 00 00 00       	mov    $0x2,%edx
    11c9:	be 20 00 00 00       	mov    $0x20,%esi
    11ce:	31 c0                	xor    %eax,%eax
    11d0:	e8 fb fe ff ff       	call   10d0 <__snprintf_chk@plt>
    11d5:	4c 63 e0             	movslq %eax,%r12
    11d8:	4d 8d 6c 24 01       	lea    0x1(%r12),%r13
    11dd:	4c 89 ef             	mov    %r13,%rdi
    11e0:	e8 4b ff ff ff       	call   1130 <malloc@plt>
    11e5:	48 89 c5             	mov    %rax,%rbp
    11e8:	48 85 c0             	test   %rax,%rax
    11eb:	0f 84 f4 01 00 00    	je     13e5 <main+0x275>
    11f1:	49 89 d9             	mov    %rbx,%r9
    11f4:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
    11f9:	4c 8d 05 04 0e 00 00 	lea    0xe04(%rip),%r8        # 2004 <_IO_stdin_used+0x4>
    1200:	b9 20 00 00 00       	mov    $0x20,%ecx
    1205:	ba 02 00 00 00       	mov    $0x2,%edx
    120a:	be 20 00 00 00       	mov    $0x20,%esi
    120f:	31 c0                	xor    %eax,%eax
    1211:	48 89 df             	mov    %rbx,%rdi
    1214:	e8 b7 fe ff ff       	call   10d0 <__snprintf_chk@plt>
    1219:	48 89 de             	mov    %rbx,%rsi
    121c:	4c 89 e9             	mov    %r13,%rcx
    121f:	48 89 ef             	mov    %rbp,%rdi
    1222:	48 63 d0             	movslq %eax,%rdx
    1225:	e8 f6 fe ff ff       	call   1120 <__memcpy_chk@plt>
    122a:	48 8b 1d af 2d 00 00 	mov    0x2daf(%rip),%rbx        # 3fe0 <stdout@GLIBC_2.2.5>
    1231:	4c 89 e2             	mov    %r12,%rdx
    1234:	be 01 00 00 00       	mov    $0x1,%esi
    1239:	48 89 ef             	mov    %rbp,%rdi
    123c:	42 c6 44 25 00 00    	movb   $0x0,0x0(%rbp,%r12,1)
    1242:	48 8b 0b             	mov    (%rbx),%rcx
    1245:	e8 06 ff ff ff       	call   1150 <fwrite@plt>
    124a:	48 8b 33             	mov    (%rbx),%rsi
    124d:	bf 0a 00 00 00       	mov    $0xa,%edi
    1252:	e8 b9 fe ff ff       	call   1110 <fputc@plt>
    1257:	48 8b 3b             	mov    (%rbx),%rdi
    125a:	e8 e1 fe ff ff       	call   1140 <fflush@plt>
    125f:	48 89 ef             	mov    %rbp,%rdi
    1262:	e8 79 fe ff ff       	call   10e0 <free@plt>
    1267:	49 8d 46 01          	lea    0x1(%r14),%rax
    126b:	48 89 04 24          	mov    %rax,(%rsp)
    126f:	49 83 fe 28          	cmp    $0x28,%r14
    1273:	0f 84 8e 00 00 00    	je     1307 <main+0x197>
    1279:	48 83 f8 01          	cmp    $0x1,%rax
    127d:	0f 84 7d 00 00 00    	je     1300 <main+0x190>
    1283:	48 89 c5             	mov    %rax,%rbp
    1286:	4c 89 f0             	mov    %r14,%rax
    1289:	45 31 c9             	xor    %r9d,%r9d
    128c:	48 83 e0 fe          	and    $0xfffffffffffffffe,%rax
    1290:	49 89 ee             	mov    %rbp,%r14
    1293:	49 29 c6             	sub    %rax,%r14
    1296:	4d 8d 61 fe          	lea    -0x2(%r9),%r12
    129a:	48 8d 5d ff          	lea    -0x1(%rbp),%rbx
    129e:	4c 39 f5             	cmp    %r14,%rbp
    12a1:	74 4d                	je     12f0 <main+0x180>
    12a3:	49 89 dd             	mov    %rbx,%r13
    12a6:	45 31 ff             	xor    %r15d,%r15d
    12a9:	49 8d 7d ff          	lea    -0x1(%r13),%rdi
    12ad:	49 83 ed 02          	sub    $0x2,%r13
    12b1:	e8 2a 02 00 00       	call   14e0 <fibonacci>
    12b6:	49 01 c7             	add    %rax,%r15
    12b9:	49 83 fd 01          	cmp    $0x1,%r13
    12bd:	77 ea                	ja     12a9 <main+0x139>
    12bf:	48 8d 45 fd          	lea    -0x3(%rbp),%rax
    12c3:	48 83 ed 02          	sub    $0x2,%rbp
    12c7:	48 83 e0 fe          	and    $0xfffffffffffffffe,%rax
    12cb:	48 29 c3             	sub    %rax,%rbx
    12ce:	4c 01 e3             	add    %r12,%rbx
    12d1:	4d 8d 0c 1f          	lea    (%r15,%rbx,1),%r9
    12d5:	48 83 fd 01          	cmp    $0x1,%rbp
    12d9:	75 bb                	jne    1296 <main+0x126>
    12db:	49 8d 59 01          	lea    0x1(%r9),%rbx
    12df:	90                   	nop
    12e0:	4c 8b 34 24          	mov    (%rsp),%r14
    12e4:	e9 c7 fe ff ff       	jmp    11b0 <main+0x40>
    12e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    12f0:	4c 01 cb             	add    %r9,%rbx
    12f3:	eb eb                	jmp    12e0 <main+0x170>
    12f5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    12fc:	00 00 00 00 
    1300:	bb 01 00 00 00       	mov    $0x1,%ebx
    1305:	eb d9                	jmp    12e0 <main+0x170>
    1307:	48 8b 1d 12 2d 00 00 	mov    0x2d12(%rip),%rbx        # 4020 <ar_gen_head>
    130e:	48 89 d8             	mov    %rbx,%rax
    1311:	48 89 da             	mov    %rbx,%rdx
    1314:	eb 24                	jmp    133a <main+0x1ca>
    1316:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    131d:	00 00 00 
    1320:	48 8b 40 30          	mov    0x30(%rax),%rax
    1324:	48 85 c0             	test   %rax,%rax
    1327:	74 16                	je     133f <main+0x1cf>
    1329:	48 8b 52 30          	mov    0x30(%rdx),%rdx
    132d:	48 8b 40 30          	mov    0x30(%rax),%rax
    1331:	48 39 c2             	cmp    %rax,%rdx
    1334:	0f 84 85 00 00 00    	je     13bf <main+0x24f>
    133a:	48 85 c0             	test   %rax,%rax
    133d:	75 e1                	jne    1320 <main+0x1b0>
    133f:	48 8b 2d d2 2c 00 00 	mov    0x2cd2(%rip),%rbp        # 4018 <ar_gen_len>
    1346:	48 c7 05 cf 2c 00 00 	movq   $0x0,0x2ccf(%rip)        # 4020 <ar_gen_head>
    134d:	00 00 00 00 
    1351:	48 c7 05 bc 2c 00 00 	movq   $0x0,0x2cbc(%rip)        # 4018 <ar_gen_len>
    1358:	00 00 00 00 
    135c:	48 85 ed             	test   %rbp,%rbp
    135f:	74 5e                	je     13bf <main+0x24f>
    1361:	48 85 db             	test   %rbx,%rbx
    1364:	75 2e                	jne    1394 <main+0x224>
    1366:	eb 57                	jmp    13bf <main+0x24f>
    1368:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    136f:	00 
    1370:	48 8b 7b 08          	mov    0x8(%rbx),%rdi
    1374:	ff d0                	call   *%rax
    1376:	48 8b 7b 10          	mov    0x10(%rbx),%rdi
    137a:	e8 61 fd ff ff       	call   10e0 <free@plt>
    137f:	48 89 df             	mov    %rbx,%rdi
    1382:	e8 59 fd ff ff       	call   10e0 <free@plt>
    1387:	48 ff cd             	dec    %rbp
    138a:	74 33                	je     13bf <main+0x24f>
    138c:	4d 85 e4             	test   %r12,%r12
    138f:	74 2e                	je     13bf <main+0x24f>
    1391:	4c 89 e3             	mov    %r12,%rbx
    1394:	48 8b 43 28          	mov    0x28(%rbx),%rax
    1398:	4c 8b 63 30          	mov    0x30(%rbx),%r12
    139c:	48 85 c0             	test   %rax,%rax
    139f:	75 cf                	jne    1370 <main+0x200>
    13a1:	48 8b 7b 10          	mov    0x10(%rbx),%rdi
    13a5:	48 ff cd             	dec    %rbp
    13a8:	e8 33 fd ff ff       	call   10e0 <free@plt>
    13ad:	48 89 df             	mov    %rbx,%rdi
    13b0:	e8 2b fd ff ff       	call   10e0 <free@plt>
    13b5:	4d 85 e4             	test   %r12,%r12
    13b8:	74 05                	je     13bf <main+0x24f>
    13ba:	48 85 ed             	test   %rbp,%rbp
    13bd:	75 d2                	jne    1391 <main+0x221>
    13bf:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
    13c4:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    13cb:	00 00 
    13cd:	75 11                	jne    13e0 <main+0x270>
    13cf:	48 83 c4 48          	add    $0x48,%rsp
    13d3:	31 c0                	xor    %eax,%eax
    13d5:	5b                   	pop    %rbx
    13d6:	5d                   	pop    %rbp
    13d7:	41 5c                	pop    %r12
    13d9:	41 5d                	pop    %r13
    13db:	41 5e                	pop    %r14
    13dd:	41 5f                	pop    %r15
    13df:	c3                   	ret
    13e0:	e8 1b fd ff ff       	call   1100 <__stack_chk_fail@plt>
    13e5:	e8 06 fd ff ff       	call   10f0 <abort@plt>
    13ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000013f0 <_start>:
    13f0:	f3 0f 1e fa          	endbr64
    13f4:	31 ed                	xor    %ebp,%ebp
    13f6:	49 89 d1             	mov    %rdx,%r9
    13f9:	5e                   	pop    %rsi
    13fa:	48 89 e2             	mov    %rsp,%rdx
    13fd:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1401:	50                   	push   %rax
    1402:	54                   	push   %rsp
    1403:	45 31 c0             	xor    %r8d,%r8d
    1406:	31 c9                	xor    %ecx,%ecx
    1408:	48 8d 3d 61 fd ff ff 	lea    -0x29f(%rip),%rdi        # 1170 <main>
    140f:	ff 15 bb 2b 00 00    	call   *0x2bbb(%rip)        # 3fd0 <__libc_start_main@GLIBC_2.34>
    1415:	f4                   	hlt
    1416:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    141d:	00 00 00 

0000000000001420 <deregister_tm_clones>:
    1420:	48 8d 3d e9 2b 00 00 	lea    0x2be9(%rip),%rdi        # 4010 <__TMC_END__>
    1427:	48 8d 05 e2 2b 00 00 	lea    0x2be2(%rip),%rax        # 4010 <__TMC_END__>
    142e:	48 39 f8             	cmp    %rdi,%rax
    1431:	74 15                	je     1448 <deregister_tm_clones+0x28>
    1433:	48 8b 05 9e 2b 00 00 	mov    0x2b9e(%rip),%rax        # 3fd8 <_ITM_deregisterTMCloneTable@Base>
    143a:	48 85 c0             	test   %rax,%rax
    143d:	74 09                	je     1448 <deregister_tm_clones+0x28>
    143f:	ff e0                	jmp    *%rax
    1441:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1448:	c3                   	ret
    1449:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001450 <register_tm_clones>:
    1450:	48 8d 3d b9 2b 00 00 	lea    0x2bb9(%rip),%rdi        # 4010 <__TMC_END__>
    1457:	48 8d 35 b2 2b 00 00 	lea    0x2bb2(%rip),%rsi        # 4010 <__TMC_END__>
    145e:	48 29 fe             	sub    %rdi,%rsi
    1461:	48 89 f0             	mov    %rsi,%rax
    1464:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1468:	48 c1 f8 03          	sar    $0x3,%rax
    146c:	48 01 c6             	add    %rax,%rsi
    146f:	48 d1 fe             	sar    $1,%rsi
    1472:	74 14                	je     1488 <register_tm_clones+0x38>
    1474:	48 8b 05 75 2b 00 00 	mov    0x2b75(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    147b:	48 85 c0             	test   %rax,%rax
    147e:	74 08                	je     1488 <register_tm_clones+0x38>
    1480:	ff e0                	jmp    *%rax
    1482:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1488:	c3                   	ret
    1489:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001490 <__do_global_dtors_aux>:
    1490:	f3 0f 1e fa          	endbr64
    1494:	80 3d 75 2b 00 00 00 	cmpb   $0x0,0x2b75(%rip)        # 4010 <__TMC_END__>
    149b:	75 2b                	jne    14c8 <__do_global_dtors_aux+0x38>
    149d:	55                   	push   %rbp
    149e:	48 83 3d 52 2b 00 00 	cmpq   $0x0,0x2b52(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    14a5:	00 
    14a6:	48 89 e5             	mov    %rsp,%rbp
    14a9:	74 0c                	je     14b7 <__do_global_dtors_aux+0x27>
    14ab:	48 8b 3d 56 2b 00 00 	mov    0x2b56(%rip),%rdi        # 4008 <__dso_handle>
    14b2:	e8 09 fc ff ff       	call   10c0 <__cxa_finalize@plt>
    14b7:	e8 64 ff ff ff       	call   1420 <deregister_tm_clones>
    14bc:	c6 05 4d 2b 00 00 01 	movb   $0x1,0x2b4d(%rip)        # 4010 <__TMC_END__>
    14c3:	5d                   	pop    %rbp
    14c4:	c3                   	ret
    14c5:	0f 1f 00             	nopl   (%rax)
    14c8:	c3                   	ret
    14c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000014d0 <frame_dummy>:
    14d0:	f3 0f 1e fa          	endbr64
    14d4:	e9 77 ff ff ff       	jmp    1450 <register_tm_clones>
    14d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000014e0 <fibonacci>:
    14e0:	48 89 f8             	mov    %rdi,%rax
    14e3:	48 83 ff 01          	cmp    $0x1,%rdi
    14e7:	0f 84 38 03 00 00    	je     1825 <fibonacci+0x345>
    14ed:	41 57                	push   %r15
    14ef:	48 8d 57 ff          	lea    -0x1(%rdi),%rdx
    14f3:	41 56                	push   %r14
    14f5:	41 55                	push   %r13
    14f7:	41 54                	push   %r12
    14f9:	4c 8d 67 fe          	lea    -0x2(%rdi),%r12
    14fd:	48 83 e2 fe          	and    $0xfffffffffffffffe,%rdx
    1501:	55                   	push   %rbp
    1502:	4d 89 e6             	mov    %r12,%r14
    1505:	53                   	push   %rbx
    1506:	48 83 e8 04          	sub    $0x4,%rax
    150a:	4c 89 e3             	mov    %r12,%rbx
    150d:	49 29 d6             	sub    %rdx,%r14
    1510:	4c 89 e2             	mov    %r12,%rdx
    1513:	48 81 ec b8 00 00 00 	sub    $0xb8,%rsp
    151a:	45 31 ed             	xor    %r13d,%r13d
    151d:	48 83 e2 fe          	and    $0xfffffffffffffffe,%rdx
    1521:	48 29 d0             	sub    %rdx,%rax
    1524:	48 89 44 24 70       	mov    %rax,0x70(%rsp)
    1529:	49 39 de             	cmp    %rbx,%r14
    152c:	0f 84 b7 02 00 00    	je     17e9 <fibonacci+0x309>
    1532:	31 c0                	xor    %eax,%eax
    1534:	4c 89 6c 24 38       	mov    %r13,0x38(%rsp)
    1539:	4c 89 74 24 40       	mov    %r14,0x40(%rsp)
    153e:	48 89 5c 24 48       	mov    %rbx,0x48(%rsp)
    1543:	49 89 c5             	mov    %rax,%r13
    1546:	48 83 fb 01          	cmp    $0x1,%rbx
    154a:	0f 84 6a 02 00 00    	je     17ba <fibonacci+0x2da>
    1550:	48 8d 4b ff          	lea    -0x1(%rbx),%rcx
    1554:	31 ed                	xor    %ebp,%ebp
    1556:	4c 89 6c 24 50       	mov    %r13,0x50(%rsp)
    155b:	49 89 dd             	mov    %rbx,%r13
    155e:	49 89 cc             	mov    %rcx,%r12
    1561:	48 89 eb             	mov    %rbp,%rbx
    1564:	49 83 fc 01          	cmp    $0x1,%r12
    1568:	0f 84 2c 02 00 00    	je     179a <fibonacci+0x2ba>
    156e:	4d 8d 44 24 ff       	lea    -0x1(%r12),%r8
    1573:	31 c0                	xor    %eax,%eax
    1575:	48 89 5c 24 58       	mov    %rbx,0x58(%rsp)
    157a:	4c 89 ea             	mov    %r13,%rdx
    157d:	49 89 c6             	mov    %rax,%r14
    1580:	48 89 ce             	mov    %rcx,%rsi
    1583:	4c 89 c3             	mov    %r8,%rbx
    1586:	48 83 fb 01          	cmp    $0x1,%rbx
    158a:	0f 84 e8 01 00 00    	je     1778 <fibonacci+0x298>
    1590:	4c 8d 5b ff          	lea    -0x1(%rbx),%r11
    1594:	49 89 f1             	mov    %rsi,%r9
    1597:	45 31 ff             	xor    %r15d,%r15d
    159a:	49 89 d2             	mov    %rdx,%r10
    159d:	4d 89 dd             	mov    %r11,%r13
    15a0:	4c 89 f6             	mov    %r14,%rsi
    15a3:	4c 89 64 24 60       	mov    %r12,0x60(%rsp)
    15a8:	48 89 5c 24 68       	mov    %rbx,0x68(%rsp)
    15ad:	49 83 fd 01          	cmp    $0x1,%r13
    15b1:	0f 84 99 01 00 00    	je     1750 <fibonacci+0x270>
    15b7:	4d 8d 75 ff          	lea    -0x1(%r13),%r14
    15bb:	31 ed                	xor    %ebp,%ebp
    15bd:	4c 89 f3             	mov    %r14,%rbx
    15c0:	48 83 fb 01          	cmp    $0x1,%rbx
    15c4:	0f 84 72 01 00 00    	je     173c <fibonacci+0x25c>
    15ca:	4c 8d 63 ff          	lea    -0x1(%rbx),%r12
    15ce:	48 89 df             	mov    %rbx,%rdi
    15d1:	48 8d 53 fe          	lea    -0x2(%rbx),%rdx
    15d5:	48 89 f1             	mov    %rsi,%rcx
    15d8:	4c 89 e0             	mov    %r12,%rax
    15db:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
    15e0:	48 83 e0 fe          	and    $0xfffffffffffffffe,%rax
    15e4:	48 29 c7             	sub    %rax,%rdi
    15e7:	48 89 7c 24 30       	mov    %rdi,0x30(%rsp)
    15ec:	31 ff                	xor    %edi,%edi
    15ee:	48 89 fe             	mov    %rdi,%rsi
    15f1:	48 89 d7             	mov    %rdx,%rdi
    15f4:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    15fb:	00 00 00 00 
    15ff:	90                   	nop
    1600:	48 8b 44 24 30       	mov    0x30(%rsp),%rax
    1605:	48 39 c3             	cmp    %rax,%rbx
    1608:	0f 84 f2 01 00 00    	je     1800 <fibonacci+0x320>
    160e:	31 c0                	xor    %eax,%eax
    1610:	48 89 fa             	mov    %rdi,%rdx
    1613:	48 89 74 24 18       	mov    %rsi,0x18(%rsp)
    1618:	4c 89 64 24 28       	mov    %r12,0x28(%rsp)
    161d:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
    1622:	49 89 dc             	mov    %rbx,%r12
    1625:	4c 89 54 24 20       	mov    %r10,0x20(%rsp)
    162a:	48 89 fe             	mov    %rdi,%rsi
    162d:	48 8d 58 fe          	lea    -0x2(%rax),%rbx
    1631:	48 83 fa 01          	cmp    $0x1,%rdx
    1635:	0f 84 b3 00 00 00    	je     16ee <fibonacci+0x20e>
    163b:	49 89 d2             	mov    %rdx,%r10
    163e:	31 c9                	xor    %ecx,%ecx
    1640:	49 8d 7a ff          	lea    -0x1(%r10),%rdi
    1644:	48 89 94 24 a8 00 00 	mov    %rdx,0xa8(%rsp)
    164b:	00 
    164c:	48 89 b4 24 a0 00 00 	mov    %rsi,0xa0(%rsp)
    1653:	00 
    1654:	4c 89 9c 24 98 00 00 	mov    %r11,0x98(%rsp)
    165b:	00 
    165c:	4c 89 84 24 90 00 00 	mov    %r8,0x90(%rsp)
    1663:	00 
    1664:	4c 89 8c 24 88 00 00 	mov    %r9,0x88(%rsp)
    166b:	00 
    166c:	48 89 8c 24 80 00 00 	mov    %rcx,0x80(%rsp)
    1673:	00 
    1674:	4c 89 54 24 78       	mov    %r10,0x78(%rsp)
    1679:	e8 62 fe ff ff       	call   14e0 <fibonacci>
    167e:	4c 8b 54 24 78       	mov    0x78(%rsp),%r10
    1683:	48 8b 8c 24 80 00 00 	mov    0x80(%rsp),%rcx
    168a:	00 
    168b:	4c 8b 8c 24 88 00 00 	mov    0x88(%rsp),%r9
    1692:	00 
    1693:	4c 8b 84 24 90 00 00 	mov    0x90(%rsp),%r8
    169a:	00 
    169b:	4c 8b 9c 24 98 00 00 	mov    0x98(%rsp),%r11
    16a2:	00 
    16a3:	48 8b b4 24 a0 00 00 	mov    0xa0(%rsp),%rsi
    16aa:	00 
    16ab:	48 8b 94 24 a8 00 00 	mov    0xa8(%rsp),%rdx
    16b2:	00 
    16b3:	49 83 ea 02          	sub    $0x2,%r10
    16b7:	48 01 c1             	add    %rax,%rcx
    16ba:	49 83 fa 01          	cmp    $0x1,%r10
    16be:	77 80                	ja     1640 <fibonacci+0x160>
    16c0:	48 8d 7a fe          	lea    -0x2(%rdx),%rdi
    16c4:	48 89 d0             	mov    %rdx,%rax
    16c7:	49 89 fa             	mov    %rdi,%r10
    16ca:	49 83 e2 fe          	and    $0xfffffffffffffffe,%r10
    16ce:	4c 29 d0             	sub    %r10,%rax
    16d1:	48 01 d8             	add    %rbx,%rax
    16d4:	48 01 c8             	add    %rcx,%rax
    16d7:	48 83 fa 02          	cmp    $0x2,%rdx
    16db:	74 11                	je     16ee <fibonacci+0x20e>
    16dd:	48 89 fa             	mov    %rdi,%rdx
    16e0:	48 8d 58 fe          	lea    -0x2(%rax),%rbx
    16e4:	48 83 fa 01          	cmp    $0x1,%rdx
    16e8:	0f 85 4d ff ff ff    	jne    163b <fibonacci+0x15b>
    16ee:	48 89 f7             	mov    %rsi,%rdi
    16f1:	48 8b 74 24 18       	mov    0x18(%rsp),%rsi
    16f6:	4c 89 e3             	mov    %r12,%rbx
    16f9:	48 ff c0             	inc    %rax
    16fc:	48 83 eb 02          	sub    $0x2,%rbx
    1700:	48 8b 4c 24 10       	mov    0x10(%rsp),%rcx
    1705:	4c 8b 54 24 20       	mov    0x20(%rsp),%r10
    170a:	48 83 ef 02          	sub    $0x2,%rdi
    170e:	4c 8b 64 24 28       	mov    0x28(%rsp),%r12
    1713:	48 01 c6             	add    %rax,%rsi
    1716:	48 83 fb 01          	cmp    $0x1,%rbx
    171a:	0f 85 e0 fe ff ff    	jne    1600 <fibonacci+0x120>
    1720:	48 89 f7             	mov    %rsi,%rdi
    1723:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
    1728:	48 89 ce             	mov    %rcx,%rsi
    172b:	48 8d 47 01          	lea    0x1(%rdi),%rax
    172f:	48 01 c5             	add    %rax,%rbp
    1732:	49 83 fc 01          	cmp    $0x1,%r12
    1736:	0f 85 e1 00 00 00    	jne    181d <fibonacci+0x33d>
    173c:	48 ff c5             	inc    %rbp
    173f:	49 83 ed 02          	sub    $0x2,%r13
    1743:	49 01 ef             	add    %rbp,%r15
    1746:	49 83 fe 01          	cmp    $0x1,%r14
    174a:	0f 85 5d fe ff ff    	jne    15ad <fibonacci+0xcd>
    1750:	48 8b 5c 24 68       	mov    0x68(%rsp),%rbx
    1755:	49 89 f6             	mov    %rsi,%r14
    1758:	49 8d 6f 01          	lea    0x1(%r15),%rbp
    175c:	4c 8b 64 24 60       	mov    0x60(%rsp),%r12
    1761:	4c 89 d2             	mov    %r10,%rdx
    1764:	4c 89 ce             	mov    %r9,%rsi
    1767:	49 01 ee             	add    %rbp,%r14
    176a:	48 83 eb 02          	sub    $0x2,%rbx
    176e:	49 83 fb 01          	cmp    $0x1,%r11
    1772:	0f 85 0e fe ff ff    	jne    1586 <fibonacci+0xa6>
    1778:	48 8b 5c 24 58       	mov    0x58(%rsp),%rbx
    177d:	4c 89 f0             	mov    %r14,%rax
    1780:	49 89 d5             	mov    %rdx,%r13
    1783:	48 89 f1             	mov    %rsi,%rcx
    1786:	48 ff c0             	inc    %rax
    1789:	49 83 ec 02          	sub    $0x2,%r12
    178d:	48 01 c3             	add    %rax,%rbx
    1790:	49 83 f8 01          	cmp    $0x1,%r8
    1794:	0f 85 ca fd ff ff    	jne    1564 <fibonacci+0x84>
    179a:	48 89 dd             	mov    %rbx,%rbp
    179d:	4c 89 eb             	mov    %r13,%rbx
    17a0:	4c 8b 6c 24 50       	mov    0x50(%rsp),%r13
    17a5:	48 8d 75 01          	lea    0x1(%rbp),%rsi
    17a9:	48 83 eb 02          	sub    $0x2,%rbx
    17ad:	49 01 f5             	add    %rsi,%r13
    17b0:	48 83 f9 01          	cmp    $0x1,%rcx
    17b4:	0f 85 8c fd ff ff    	jne    1546 <fibonacci+0x66>
    17ba:	4c 89 e8             	mov    %r13,%rax
    17bd:	48 8b 5c 24 48       	mov    0x48(%rsp),%rbx
    17c2:	4c 8b 6c 24 38       	mov    0x38(%rsp),%r13
    17c7:	48 ff c0             	inc    %rax
    17ca:	4c 8b 74 24 40       	mov    0x40(%rsp),%r14
    17cf:	49 01 c5             	add    %rax,%r13
    17d2:	48 8d 43 fe          	lea    -0x2(%rbx),%rax
    17d6:	48 39 44 24 70       	cmp    %rax,0x70(%rsp)
    17db:	74 49                	je     1826 <fibonacci+0x346>
    17dd:	48 89 c3             	mov    %rax,%rbx
    17e0:	49 39 de             	cmp    %rbx,%r14
    17e3:	0f 85 49 fd ff ff    	jne    1532 <fibonacci+0x52>
    17e9:	4b 8d 44 35 01       	lea    0x1(%r13,%r14,1),%rax
    17ee:	48 81 c4 b8 00 00 00 	add    $0xb8,%rsp
    17f5:	5b                   	pop    %rbx
    17f6:	5d                   	pop    %rbp
    17f7:	41 5c                	pop    %r12
    17f9:	41 5d                	pop    %r13
    17fb:	41 5e                	pop    %r14
    17fd:	41 5f                	pop    %r15
    17ff:	c3                   	ret
    1800:	48 89 f7             	mov    %rsi,%rdi
    1803:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
    1808:	48 89 ce             	mov    %rcx,%rsi
    180b:	48 8d 44 3b ff       	lea    -0x1(%rbx,%rdi,1),%rax
    1810:	48 01 c5             	add    %rax,%rbp
    1813:	49 83 fc 01          	cmp    $0x1,%r12
    1817:	0f 84 1f ff ff ff    	je     173c <fibonacci+0x25c>
    181d:	48 89 d3             	mov    %rdx,%rbx
    1820:	e9 9b fd ff ff       	jmp    15c0 <fibonacci+0xe0>
    1825:	c3                   	ret
    1826:	49 8d 44 1d 00       	lea    0x0(%r13,%rbx,1),%rax
    182b:	eb c1                	jmp    17ee <fibonacci+0x30e>

Disassembly of section .fini:

0000000000001830 <_fini>:
    1830:	f3 0f 1e fa          	endbr64
    1834:	48 83 ec 08          	sub    $0x8,%rsp
    1838:	48 83 c4 08          	add    $0x8,%rsp
    183c:	c3                   	ret
