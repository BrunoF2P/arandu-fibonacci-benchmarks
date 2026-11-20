; Benchmark: 05_comptime_ctfe
; Implementação: Arandu (emit-c --opt + GCC -O3)
; Executável: /workspaces/arandu-fibonacci-benchmarks/build/05_comptime_ctfe/arandu_c_gcc
; Comando: /usr/bin/objdump -d -C /workspaces/arandu-fibonacci-benchmarks/build/05_comptime_ctfe/arandu_c_gcc


/workspaces/arandu-fibonacci-benchmarks/build/05_comptime_ctfe/arandu_c_gcc:     file format elf64-x86-64


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
    1154:	55                   	push   %rbp
    1155:	48 89 e5             	mov    %rsp,%rbp
    1158:	41 55                	push   %r13
    115a:	41 54                	push   %r12
    115c:	53                   	push   %rbx
    115d:	48 83 e4 e0          	and    $0xffffffffffffffe0,%rsp
    1161:	31 db                	xor    %ebx,%ebx
    1163:	48 83 ec 40          	sub    $0x40,%rsp
    1167:	c5 fd 6f 05 b1 0e 00 	vmovdqa 0xeb1(%rip),%ymm0        # 2020 <_IO_stdin_used+0x20>
    116e:	00 
    116f:	48 63 0d b2 2e 00 00 	movslq 0x2eb2(%rip),%rcx        # 4028 <ar_env_c_argc>
    1176:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    117d:	00 00 
    117f:	48 89 44 24 38       	mov    %rax,0x38(%rsp)
    1184:	31 c0                	xor    %eax,%eax
    1186:	48 8d 41 ff          	lea    -0x1(%rcx),%rax
    118a:	48 81 c1 7f 96 98 00 	add    $0x98967f,%rcx
    1191:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1198:	00 00 00 00 
    119c:	0f 1f 40 00          	nopl   0x0(%rax)
    11a0:	48 89 c2             	mov    %rax,%rdx
    11a3:	48 ff c0             	inc    %rax
    11a6:	c5 fd 7f 04 24       	vmovdqa %ymm0,(%rsp)
    11ab:	83 e2 03             	and    $0x3,%edx
    11ae:	48 03 1c d4          	add    (%rsp,%rdx,8),%rbx
    11b2:	48 39 c8             	cmp    %rcx,%rax
    11b5:	75 e9                	jne    11a0 <main+0x50>
    11b7:	31 f6                	xor    %esi,%esi
    11b9:	48 89 df             	mov    %rbx,%rdi
    11bc:	c5 f8 77             	vzeroupper
    11bf:	e8 3c 02 00 00       	call   1400 <ar_u64_write_digits>
    11c4:	49 89 c5             	mov    %rax,%r13
    11c7:	48 85 c0             	test   %rax,%rax
    11ca:	0f 88 31 01 00 00    	js     1301 <main+0x1b1>
    11d0:	48 8d 78 01          	lea    0x1(%rax),%rdi
    11d4:	e8 37 ff ff ff       	call   1110 <malloc@plt>
    11d9:	49 89 c4             	mov    %rax,%r12
    11dc:	48 85 c0             	test   %rax,%rax
    11df:	0f 84 1c 01 00 00    	je     1301 <main+0x1b1>
    11e5:	48 89 df             	mov    %rbx,%rdi
    11e8:	48 89 c6             	mov    %rax,%rsi
    11eb:	e8 10 02 00 00       	call   1400 <ar_u64_write_digits>
    11f0:	48 8b 1d e9 2d 00 00 	mov    0x2de9(%rip),%rbx        # 3fe0 <stdout@GLIBC_2.2.5>
    11f7:	43 c6 04 2c 00       	movb   $0x0,(%r12,%r13,1)
    11fc:	4d 85 ed             	test   %r13,%r13
    11ff:	74 13                	je     1214 <main+0xc4>
    1201:	48 8b 0b             	mov    (%rbx),%rcx
    1204:	4c 89 ea             	mov    %r13,%rdx
    1207:	be 01 00 00 00       	mov    $0x1,%esi
    120c:	4c 89 e7             	mov    %r12,%rdi
    120f:	e8 1c ff ff ff       	call   1130 <fwrite@plt>
    1214:	48 8b 33             	mov    (%rbx),%rsi
    1217:	bf 0a 00 00 00       	mov    $0xa,%edi
    121c:	e8 df fe ff ff       	call   1100 <fputc@plt>
    1221:	48 8b 3b             	mov    (%rbx),%rdi
    1224:	e8 f7 fe ff ff       	call   1120 <fflush@plt>
    1229:	4c 89 e7             	mov    %r12,%rdi
    122c:	e8 9f fe ff ff       	call   10d0 <free@plt>
    1231:	48 8b 1d e8 2d 00 00 	mov    0x2de8(%rip),%rbx        # 4020 <ar_gen_head>
    1238:	48 89 d8             	mov    %rbx,%rax
    123b:	48 89 da             	mov    %rbx,%rdx
    123e:	eb 1a                	jmp    125a <main+0x10a>
    1240:	48 8b 40 30          	mov    0x30(%rax),%rax
    1244:	48 85 c0             	test   %rax,%rax
    1247:	74 16                	je     125f <main+0x10f>
    1249:	48 8b 52 30          	mov    0x30(%rdx),%rdx
    124d:	48 8b 40 30          	mov    0x30(%rax),%rax
    1251:	48 39 c2             	cmp    %rax,%rdx
    1254:	0f 84 85 00 00 00    	je     12df <main+0x18f>
    125a:	48 85 c0             	test   %rax,%rax
    125d:	75 e1                	jne    1240 <main+0xf0>
    125f:	4c 8b 25 b2 2d 00 00 	mov    0x2db2(%rip),%r12        # 4018 <ar_gen_len>
    1266:	48 c7 05 af 2d 00 00 	movq   $0x0,0x2daf(%rip)        # 4020 <ar_gen_head>
    126d:	00 00 00 00 
    1271:	48 c7 05 9c 2d 00 00 	movq   $0x0,0x2d9c(%rip)        # 4018 <ar_gen_len>
    1278:	00 00 00 00 
    127c:	4d 85 e4             	test   %r12,%r12
    127f:	74 5e                	je     12df <main+0x18f>
    1281:	48 85 db             	test   %rbx,%rbx
    1284:	75 2e                	jne    12b4 <main+0x164>
    1286:	eb 57                	jmp    12df <main+0x18f>
    1288:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    128f:	00 
    1290:	48 8b 7b 08          	mov    0x8(%rbx),%rdi
    1294:	ff d0                	call   *%rax
    1296:	48 8b 7b 10          	mov    0x10(%rbx),%rdi
    129a:	e8 31 fe ff ff       	call   10d0 <free@plt>
    129f:	48 89 df             	mov    %rbx,%rdi
    12a2:	e8 29 fe ff ff       	call   10d0 <free@plt>
    12a7:	49 ff cc             	dec    %r12
    12aa:	74 33                	je     12df <main+0x18f>
    12ac:	4d 85 ed             	test   %r13,%r13
    12af:	74 2e                	je     12df <main+0x18f>
    12b1:	4c 89 eb             	mov    %r13,%rbx
    12b4:	48 8b 43 28          	mov    0x28(%rbx),%rax
    12b8:	4c 8b 6b 30          	mov    0x30(%rbx),%r13
    12bc:	48 85 c0             	test   %rax,%rax
    12bf:	75 cf                	jne    1290 <main+0x140>
    12c1:	48 8b 7b 10          	mov    0x10(%rbx),%rdi
    12c5:	49 ff cc             	dec    %r12
    12c8:	e8 03 fe ff ff       	call   10d0 <free@plt>
    12cd:	48 89 df             	mov    %rbx,%rdi
    12d0:	e8 fb fd ff ff       	call   10d0 <free@plt>
    12d5:	4d 85 ed             	test   %r13,%r13
    12d8:	74 05                	je     12df <main+0x18f>
    12da:	4d 85 e4             	test   %r12,%r12
    12dd:	75 d2                	jne    12b1 <main+0x161>
    12df:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
    12e4:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    12eb:	00 00 
    12ed:	75 0d                	jne    12fc <main+0x1ac>
    12ef:	48 8d 65 e8          	lea    -0x18(%rbp),%rsp
    12f3:	31 c0                	xor    %eax,%eax
    12f5:	5b                   	pop    %rbx
    12f6:	41 5c                	pop    %r12
    12f8:	41 5d                	pop    %r13
    12fa:	5d                   	pop    %rbp
    12fb:	c3                   	ret
    12fc:	e8 ef fd ff ff       	call   10f0 <__stack_chk_fail@plt>
    1301:	e8 da fd ff ff       	call   10e0 <abort@plt>
    1306:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    130d:	00 00 00 

0000000000001310 <_start>:
    1310:	f3 0f 1e fa          	endbr64
    1314:	31 ed                	xor    %ebp,%ebp
    1316:	49 89 d1             	mov    %rdx,%r9
    1319:	5e                   	pop    %rsi
    131a:	48 89 e2             	mov    %rsp,%rdx
    131d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1321:	50                   	push   %rax
    1322:	54                   	push   %rsp
    1323:	45 31 c0             	xor    %r8d,%r8d
    1326:	31 c9                	xor    %ecx,%ecx
    1328:	48 8d 3d 21 fe ff ff 	lea    -0x1df(%rip),%rdi        # 1150 <main>
    132f:	ff 15 9b 2c 00 00    	call   *0x2c9b(%rip)        # 3fd0 <__libc_start_main@GLIBC_2.34>
    1335:	f4                   	hlt
    1336:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    133d:	00 00 00 

0000000000001340 <deregister_tm_clones>:
    1340:	48 8d 3d c9 2c 00 00 	lea    0x2cc9(%rip),%rdi        # 4010 <__TMC_END__>
    1347:	48 8d 05 c2 2c 00 00 	lea    0x2cc2(%rip),%rax        # 4010 <__TMC_END__>
    134e:	48 39 f8             	cmp    %rdi,%rax
    1351:	74 15                	je     1368 <deregister_tm_clones+0x28>
    1353:	48 8b 05 7e 2c 00 00 	mov    0x2c7e(%rip),%rax        # 3fd8 <_ITM_deregisterTMCloneTable@Base>
    135a:	48 85 c0             	test   %rax,%rax
    135d:	74 09                	je     1368 <deregister_tm_clones+0x28>
    135f:	ff e0                	jmp    *%rax
    1361:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1368:	c3                   	ret
    1369:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001370 <register_tm_clones>:
    1370:	48 8d 3d 99 2c 00 00 	lea    0x2c99(%rip),%rdi        # 4010 <__TMC_END__>
    1377:	48 8d 35 92 2c 00 00 	lea    0x2c92(%rip),%rsi        # 4010 <__TMC_END__>
    137e:	48 29 fe             	sub    %rdi,%rsi
    1381:	48 89 f0             	mov    %rsi,%rax
    1384:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1388:	48 c1 f8 03          	sar    $0x3,%rax
    138c:	48 01 c6             	add    %rax,%rsi
    138f:	48 d1 fe             	sar    $1,%rsi
    1392:	74 14                	je     13a8 <register_tm_clones+0x38>
    1394:	48 8b 05 55 2c 00 00 	mov    0x2c55(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    139b:	48 85 c0             	test   %rax,%rax
    139e:	74 08                	je     13a8 <register_tm_clones+0x38>
    13a0:	ff e0                	jmp    *%rax
    13a2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    13a8:	c3                   	ret
    13a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000013b0 <__do_global_dtors_aux>:
    13b0:	f3 0f 1e fa          	endbr64
    13b4:	80 3d 55 2c 00 00 00 	cmpb   $0x0,0x2c55(%rip)        # 4010 <__TMC_END__>
    13bb:	75 2b                	jne    13e8 <__do_global_dtors_aux+0x38>
    13bd:	55                   	push   %rbp
    13be:	48 83 3d 32 2c 00 00 	cmpq   $0x0,0x2c32(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    13c5:	00 
    13c6:	48 89 e5             	mov    %rsp,%rbp
    13c9:	74 0c                	je     13d7 <__do_global_dtors_aux+0x27>
    13cb:	48 8b 3d 36 2c 00 00 	mov    0x2c36(%rip),%rdi        # 4008 <__dso_handle>
    13d2:	e8 d9 fc ff ff       	call   10b0 <__cxa_finalize@plt>
    13d7:	e8 64 ff ff ff       	call   1340 <deregister_tm_clones>
    13dc:	c6 05 2d 2c 00 00 01 	movb   $0x1,0x2c2d(%rip)        # 4010 <__TMC_END__>
    13e3:	5d                   	pop    %rbp
    13e4:	c3                   	ret
    13e5:	0f 1f 00             	nopl   (%rax)
    13e8:	c3                   	ret
    13e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000013f0 <frame_dummy>:
    13f0:	f3 0f 1e fa          	endbr64
    13f4:	e9 77 ff ff ff       	jmp    1370 <register_tm_clones>
    13f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001400 <ar_u64_write_digits>:
    1400:	55                   	push   %rbp
    1401:	53                   	push   %rbx
    1402:	49 89 f9             	mov    %rdi,%r9
    1405:	ba 02 00 00 00       	mov    $0x2,%edx
    140a:	48 83 ec 38          	sub    $0x38,%rsp
    140e:	48 89 f3             	mov    %rsi,%rbx
    1411:	4c 8d 05 ec 0b 00 00 	lea    0xbec(%rip),%r8        # 2004 <_IO_stdin_used+0x4>
    1418:	b9 20 00 00 00       	mov    $0x20,%ecx
    141d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1424:	00 00 
    1426:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    142b:	31 c0                	xor    %eax,%eax
    142d:	48 89 e5             	mov    %rsp,%rbp
    1430:	be 20 00 00 00       	mov    $0x20,%esi
    1435:	48 89 ef             	mov    %rbp,%rdi
    1438:	e8 83 fc ff ff       	call   10c0 <__snprintf_chk@plt>
    143d:	48 63 d0             	movslq %eax,%rdx
    1440:	48 85 db             	test   %rbx,%rbx
    1443:	74 0a                	je     144f <ar_u64_write_digits+0x4f>
    1445:	89 c1                	mov    %eax,%ecx
    1447:	48 89 df             	mov    %rbx,%rdi
    144a:	48 89 ee             	mov    %rbp,%rsi
    144d:	f3 a4                	rep movsb %ds:(%rsi),%es:(%rdi)
    144f:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    1454:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    145b:	00 00 
    145d:	75 0a                	jne    1469 <ar_u64_write_digits+0x69>
    145f:	48 83 c4 38          	add    $0x38,%rsp
    1463:	48 89 d0             	mov    %rdx,%rax
    1466:	5b                   	pop    %rbx
    1467:	5d                   	pop    %rbp
    1468:	c3                   	ret
    1469:	e8 82 fc ff ff       	call   10f0 <__stack_chk_fail@plt>

Disassembly of section .fini:

0000000000001470 <_fini>:
    1470:	f3 0f 1e fa          	endbr64
    1474:	48 83 ec 08          	sub    $0x8,%rsp
    1478:	48 83 c4 08          	add    $0x8,%rsp
    147c:	c3                   	ret
