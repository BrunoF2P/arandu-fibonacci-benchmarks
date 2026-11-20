; Benchmark: 04_fast_doubling
; Implementação: Arandu (emit-c --opt + GCC -O3)
; Executável: /workspaces/arandu-fibonacci-benchmarks/build/04_fast_doubling/arandu_c_gcc
; Comando: /usr/bin/objdump -d -C /workspaces/arandu-fibonacci-benchmarks/build/04_fast_doubling/arandu_c_gcc


/workspaces/arandu-fibonacci-benchmarks/build/04_fast_doubling/arandu_c_gcc:     file format elf64-x86-64


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
    1020:	ff 35 5a 2f 00 00    	push   0x2f5a(%rip)        # 3f80 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 5c 2f 00 00    	jmp    *0x2f5c(%rip)        # 3f88 <_GLOBAL_OFFSET_TABLE_+0x10>
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

Disassembly of section .plt.got:

00000000000010b0 <__cxa_finalize@plt>:
    10b0:	f3 0f 1e fa          	endbr64
    10b4:	ff 25 3e 2f 00 00    	jmp    *0x2f3e(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    10ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

00000000000010c0 <__snprintf_chk@plt>:
    10c0:	f3 0f 1e fa          	endbr64
    10c4:	ff 25 c6 2e 00 00    	jmp    *0x2ec6(%rip)        # 3f90 <__snprintf_chk@GLIBC_2.3.4>
    10ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000010d0 <free@plt>:
    10d0:	f3 0f 1e fa          	endbr64
    10d4:	ff 25 be 2e 00 00    	jmp    *0x2ebe(%rip)        # 3f98 <free@GLIBC_2.2.5>
    10da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000010e0 <abort@plt>:
    10e0:	f3 0f 1e fa          	endbr64
    10e4:	ff 25 b6 2e 00 00    	jmp    *0x2eb6(%rip)        # 3fa0 <abort@GLIBC_2.2.5>
    10ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000010f0 <__stack_chk_fail@plt>:
    10f0:	f3 0f 1e fa          	endbr64
    10f4:	ff 25 ae 2e 00 00    	jmp    *0x2eae(%rip)        # 3fa8 <__stack_chk_fail@GLIBC_2.4>
    10fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001100 <fputc@plt>:
    1100:	f3 0f 1e fa          	endbr64
    1104:	ff 25 a6 2e 00 00    	jmp    *0x2ea6(%rip)        # 3fb0 <fputc@GLIBC_2.2.5>
    110a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001110 <malloc@plt>:
    1110:	f3 0f 1e fa          	endbr64
    1114:	ff 25 9e 2e 00 00    	jmp    *0x2e9e(%rip)        # 3fb8 <malloc@GLIBC_2.2.5>
    111a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001120 <fflush@plt>:
    1120:	f3 0f 1e fa          	endbr64
    1124:	ff 25 96 2e 00 00    	jmp    *0x2e96(%rip)        # 3fc0 <fflush@GLIBC_2.2.5>
    112a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001130 <fwrite@plt>:
    1130:	f3 0f 1e fa          	endbr64
    1134:	ff 25 8e 2e 00 00    	jmp    *0x2e8e(%rip)        # 3fc8 <fwrite@GLIBC_2.2.5>
    113a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001140 <ar_capture_env_args>:
    1140:	f3 0f 1e fa          	endbr64
    1144:	89 3d de 2e 00 00    	mov    %edi,0x2ede(%rip)        # 4028 <ar_env_c_argc>
    114a:	c3                   	ret
    114b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001150 <main>:
    1150:	f3 0f 1e fa          	endbr64
    1154:	4c 63 15 cd 2e 00 00 	movslq 0x2ecd(%rip),%r10        # 4028 <ar_env_c_argc>
    115b:	41 54                	push   %r12
    115d:	45 31 c9             	xor    %r9d,%r9d
    1160:	55                   	push   %rbp
    1161:	53                   	push   %rbx
    1162:	31 db                	xor    %ebx,%ebx
    1164:	49 83 c2 59          	add    $0x59,%r10
    1168:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    116f:	00 
    1170:	4c 89 cf             	mov    %r9,%rdi
    1173:	83 e7 03             	and    $0x3,%edi
    1176:	4c 01 d7             	add    %r10,%rdi
    1179:	74 55                	je     11d0 <main+0x80>
    117b:	ba 40 00 00 00       	mov    $0x40,%edx
    1180:	48 83 ff 3f          	cmp    $0x3f,%rdi
    1184:	77 12                	ja     1198 <main+0x48>
    1186:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    118d:	00 00 00 
    1190:	48 d1 ea             	shr    $1,%rdx
    1193:	48 39 d7             	cmp    %rdx,%rdi
    1196:	72 f8                	jb     1190 <main+0x40>
    1198:	31 c9                	xor    %ecx,%ecx
    119a:	b8 01 00 00 00       	mov    $0x1,%eax
    119f:	90                   	nop
    11a0:	49 89 c8             	mov    %rcx,%r8
    11a3:	48 8d 34 00          	lea    (%rax,%rax,1),%rsi
    11a7:	4c 0f af c1          	imul   %rcx,%r8
    11ab:	48 29 ce             	sub    %rcx,%rsi
    11ae:	48 0f af c0          	imul   %rax,%rax
    11b2:	48 0f af ce          	imul   %rsi,%rcx
    11b6:	4c 01 c0             	add    %r8,%rax
    11b9:	48 85 d7             	test   %rdx,%rdi
    11bc:	74 0a                	je     11c8 <main+0x78>
    11be:	48 8d 34 08          	lea    (%rax,%rcx,1),%rsi
    11c2:	48 89 c1             	mov    %rax,%rcx
    11c5:	48 89 f0             	mov    %rsi,%rax
    11c8:	48 d1 ea             	shr    $1,%rdx
    11cb:	75 d3                	jne    11a0 <main+0x50>
    11cd:	48 01 cb             	add    %rcx,%rbx
    11d0:	49 ff c1             	inc    %r9
    11d3:	49 81 f9 80 96 98 00 	cmp    $0x989680,%r9
    11da:	75 94                	jne    1170 <main+0x20>
    11dc:	31 f6                	xor    %esi,%esi
    11de:	48 89 df             	mov    %rbx,%rdi
    11e1:	e8 2a 02 00 00       	call   1410 <ar_u64_write_digits>
    11e6:	49 89 c4             	mov    %rax,%r12
    11e9:	48 85 c0             	test   %rax,%rax
    11ec:	0f 88 24 01 00 00    	js     1316 <main+0x1c6>
    11f2:	48 8d 78 01          	lea    0x1(%rax),%rdi
    11f6:	e8 15 ff ff ff       	call   1110 <malloc@plt>
    11fb:	48 89 c5             	mov    %rax,%rbp
    11fe:	48 85 c0             	test   %rax,%rax
    1201:	0f 84 0f 01 00 00    	je     1316 <main+0x1c6>
    1207:	48 89 df             	mov    %rbx,%rdi
    120a:	48 89 c6             	mov    %rax,%rsi
    120d:	e8 fe 01 00 00       	call   1410 <ar_u64_write_digits>
    1212:	48 8b 1d c7 2d 00 00 	mov    0x2dc7(%rip),%rbx        # 3fe0 <stdout@GLIBC_2.2.5>
    1219:	42 c6 44 25 00 00    	movb   $0x0,0x0(%rbp,%r12,1)
    121f:	4d 85 e4             	test   %r12,%r12
    1222:	74 13                	je     1237 <main+0xe7>
    1224:	48 8b 0b             	mov    (%rbx),%rcx
    1227:	4c 89 e2             	mov    %r12,%rdx
    122a:	be 01 00 00 00       	mov    $0x1,%esi
    122f:	48 89 ef             	mov    %rbp,%rdi
    1232:	e8 f9 fe ff ff       	call   1130 <fwrite@plt>
    1237:	48 8b 33             	mov    (%rbx),%rsi
    123a:	bf 0a 00 00 00       	mov    $0xa,%edi
    123f:	e8 bc fe ff ff       	call   1100 <fputc@plt>
    1244:	48 8b 3b             	mov    (%rbx),%rdi
    1247:	e8 d4 fe ff ff       	call   1120 <fflush@plt>
    124c:	48 89 ef             	mov    %rbp,%rdi
    124f:	e8 7c fe ff ff       	call   10d0 <free@plt>
    1254:	48 8b 1d c5 2d 00 00 	mov    0x2dc5(%rip),%rbx        # 4020 <ar_gen_head>
    125b:	48 89 d8             	mov    %rbx,%rax
    125e:	48 89 da             	mov    %rbx,%rdx
    1261:	eb 27                	jmp    128a <main+0x13a>
    1263:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    126a:	00 00 00 00 
    126e:	66 90                	xchg   %ax,%ax
    1270:	48 8b 40 30          	mov    0x30(%rax),%rax
    1274:	48 85 c0             	test   %rax,%rax
    1277:	74 16                	je     128f <main+0x13f>
    1279:	48 8b 52 30          	mov    0x30(%rdx),%rdx
    127d:	48 8b 40 30          	mov    0x30(%rax),%rax
    1281:	48 39 c2             	cmp    %rax,%rdx
    1284:	0f 84 85 00 00 00    	je     130f <main+0x1bf>
    128a:	48 85 c0             	test   %rax,%rax
    128d:	75 e1                	jne    1270 <main+0x120>
    128f:	48 8b 2d 82 2d 00 00 	mov    0x2d82(%rip),%rbp        # 4018 <ar_gen_len>
    1296:	48 c7 05 7f 2d 00 00 	movq   $0x0,0x2d7f(%rip)        # 4020 <ar_gen_head>
    129d:	00 00 00 00 
    12a1:	48 c7 05 6c 2d 00 00 	movq   $0x0,0x2d6c(%rip)        # 4018 <ar_gen_len>
    12a8:	00 00 00 00 
    12ac:	48 85 ed             	test   %rbp,%rbp
    12af:	74 5e                	je     130f <main+0x1bf>
    12b1:	48 85 db             	test   %rbx,%rbx
    12b4:	75 2e                	jne    12e4 <main+0x194>
    12b6:	eb 57                	jmp    130f <main+0x1bf>
    12b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    12bf:	00 
    12c0:	48 8b 7b 08          	mov    0x8(%rbx),%rdi
    12c4:	ff d0                	call   *%rax
    12c6:	48 8b 7b 10          	mov    0x10(%rbx),%rdi
    12ca:	e8 01 fe ff ff       	call   10d0 <free@plt>
    12cf:	48 89 df             	mov    %rbx,%rdi
    12d2:	e8 f9 fd ff ff       	call   10d0 <free@plt>
    12d7:	48 ff cd             	dec    %rbp
    12da:	74 33                	je     130f <main+0x1bf>
    12dc:	4d 85 e4             	test   %r12,%r12
    12df:	74 2e                	je     130f <main+0x1bf>
    12e1:	4c 89 e3             	mov    %r12,%rbx
    12e4:	48 8b 43 28          	mov    0x28(%rbx),%rax
    12e8:	4c 8b 63 30          	mov    0x30(%rbx),%r12
    12ec:	48 85 c0             	test   %rax,%rax
    12ef:	75 cf                	jne    12c0 <main+0x170>
    12f1:	48 8b 7b 10          	mov    0x10(%rbx),%rdi
    12f5:	48 ff cd             	dec    %rbp
    12f8:	e8 d3 fd ff ff       	call   10d0 <free@plt>
    12fd:	48 89 df             	mov    %rbx,%rdi
    1300:	e8 cb fd ff ff       	call   10d0 <free@plt>
    1305:	4d 85 e4             	test   %r12,%r12
    1308:	74 05                	je     130f <main+0x1bf>
    130a:	48 85 ed             	test   %rbp,%rbp
    130d:	75 d2                	jne    12e1 <main+0x191>
    130f:	5b                   	pop    %rbx
    1310:	31 c0                	xor    %eax,%eax
    1312:	5d                   	pop    %rbp
    1313:	41 5c                	pop    %r12
    1315:	c3                   	ret
    1316:	e8 c5 fd ff ff       	call   10e0 <abort@plt>
    131b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001320 <_start>:
    1320:	f3 0f 1e fa          	endbr64
    1324:	31 ed                	xor    %ebp,%ebp
    1326:	49 89 d1             	mov    %rdx,%r9
    1329:	5e                   	pop    %rsi
    132a:	48 89 e2             	mov    %rsp,%rdx
    132d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1331:	50                   	push   %rax
    1332:	54                   	push   %rsp
    1333:	45 31 c0             	xor    %r8d,%r8d
    1336:	31 c9                	xor    %ecx,%ecx
    1338:	48 8d 3d 11 fe ff ff 	lea    -0x1ef(%rip),%rdi        # 1150 <main>
    133f:	ff 15 8b 2c 00 00    	call   *0x2c8b(%rip)        # 3fd0 <__libc_start_main@GLIBC_2.34>
    1345:	f4                   	hlt
    1346:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    134d:	00 00 00 

0000000000001350 <deregister_tm_clones>:
    1350:	48 8d 3d b9 2c 00 00 	lea    0x2cb9(%rip),%rdi        # 4010 <__TMC_END__>
    1357:	48 8d 05 b2 2c 00 00 	lea    0x2cb2(%rip),%rax        # 4010 <__TMC_END__>
    135e:	48 39 f8             	cmp    %rdi,%rax
    1361:	74 15                	je     1378 <deregister_tm_clones+0x28>
    1363:	48 8b 05 6e 2c 00 00 	mov    0x2c6e(%rip),%rax        # 3fd8 <_ITM_deregisterTMCloneTable@Base>
    136a:	48 85 c0             	test   %rax,%rax
    136d:	74 09                	je     1378 <deregister_tm_clones+0x28>
    136f:	ff e0                	jmp    *%rax
    1371:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1378:	c3                   	ret
    1379:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001380 <register_tm_clones>:
    1380:	48 8d 3d 89 2c 00 00 	lea    0x2c89(%rip),%rdi        # 4010 <__TMC_END__>
    1387:	48 8d 35 82 2c 00 00 	lea    0x2c82(%rip),%rsi        # 4010 <__TMC_END__>
    138e:	48 29 fe             	sub    %rdi,%rsi
    1391:	48 89 f0             	mov    %rsi,%rax
    1394:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1398:	48 c1 f8 03          	sar    $0x3,%rax
    139c:	48 01 c6             	add    %rax,%rsi
    139f:	48 d1 fe             	sar    $1,%rsi
    13a2:	74 14                	je     13b8 <register_tm_clones+0x38>
    13a4:	48 8b 05 45 2c 00 00 	mov    0x2c45(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    13ab:	48 85 c0             	test   %rax,%rax
    13ae:	74 08                	je     13b8 <register_tm_clones+0x38>
    13b0:	ff e0                	jmp    *%rax
    13b2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    13b8:	c3                   	ret
    13b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000013c0 <__do_global_dtors_aux>:
    13c0:	f3 0f 1e fa          	endbr64
    13c4:	80 3d 45 2c 00 00 00 	cmpb   $0x0,0x2c45(%rip)        # 4010 <__TMC_END__>
    13cb:	75 2b                	jne    13f8 <__do_global_dtors_aux+0x38>
    13cd:	55                   	push   %rbp
    13ce:	48 83 3d 22 2c 00 00 	cmpq   $0x0,0x2c22(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    13d5:	00 
    13d6:	48 89 e5             	mov    %rsp,%rbp
    13d9:	74 0c                	je     13e7 <__do_global_dtors_aux+0x27>
    13db:	48 8b 3d 26 2c 00 00 	mov    0x2c26(%rip),%rdi        # 4008 <__dso_handle>
    13e2:	e8 c9 fc ff ff       	call   10b0 <__cxa_finalize@plt>
    13e7:	e8 64 ff ff ff       	call   1350 <deregister_tm_clones>
    13ec:	c6 05 1d 2c 00 00 01 	movb   $0x1,0x2c1d(%rip)        # 4010 <__TMC_END__>
    13f3:	5d                   	pop    %rbp
    13f4:	c3                   	ret
    13f5:	0f 1f 00             	nopl   (%rax)
    13f8:	c3                   	ret
    13f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001400 <frame_dummy>:
    1400:	f3 0f 1e fa          	endbr64
    1404:	e9 77 ff ff ff       	jmp    1380 <register_tm_clones>
    1409:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001410 <ar_u64_write_digits>:
    1410:	55                   	push   %rbp
    1411:	53                   	push   %rbx
    1412:	49 89 f9             	mov    %rdi,%r9
    1415:	ba 02 00 00 00       	mov    $0x2,%edx
    141a:	48 83 ec 38          	sub    $0x38,%rsp
    141e:	48 89 f3             	mov    %rsi,%rbx
    1421:	4c 8d 05 dc 0b 00 00 	lea    0xbdc(%rip),%r8        # 2004 <_IO_stdin_used+0x4>
    1428:	b9 20 00 00 00       	mov    $0x20,%ecx
    142d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1434:	00 00 
    1436:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    143b:	31 c0                	xor    %eax,%eax
    143d:	48 89 e5             	mov    %rsp,%rbp
    1440:	be 20 00 00 00       	mov    $0x20,%esi
    1445:	48 89 ef             	mov    %rbp,%rdi
    1448:	e8 73 fc ff ff       	call   10c0 <__snprintf_chk@plt>
    144d:	48 63 d0             	movslq %eax,%rdx
    1450:	48 85 db             	test   %rbx,%rbx
    1453:	74 0a                	je     145f <ar_u64_write_digits+0x4f>
    1455:	89 c1                	mov    %eax,%ecx
    1457:	48 89 df             	mov    %rbx,%rdi
    145a:	48 89 ee             	mov    %rbp,%rsi
    145d:	f3 a4                	rep movsb %ds:(%rsi),%es:(%rdi)
    145f:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    1464:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    146b:	00 00 
    146d:	75 0a                	jne    1479 <ar_u64_write_digits+0x69>
    146f:	48 83 c4 38          	add    $0x38,%rsp
    1473:	48 89 d0             	mov    %rdx,%rax
    1476:	5b                   	pop    %rbx
    1477:	5d                   	pop    %rbp
    1478:	c3                   	ret
    1479:	e8 72 fc ff ff       	call   10f0 <__stack_chk_fail@plt>

Disassembly of section .fini:

0000000000001480 <_fini>:
    1480:	f3 0f 1e fa          	endbr64
    1484:	48 83 ec 08          	sub    $0x8,%rsp
    1488:	48 83 c4 08          	add    $0x8,%rsp
    148c:	c3                   	ret
