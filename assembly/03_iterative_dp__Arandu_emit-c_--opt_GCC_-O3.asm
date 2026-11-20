; Benchmark: 03_iterative_dp
; Implementação: Arandu (emit-c --opt + GCC -O3)
; Executável: /workspaces/arandu-fibonacci-benchmarks/build/03_iterative_dp/arandu_c_gcc
; Comando: /usr/bin/objdump -d -C /workspaces/arandu-fibonacci-benchmarks/build/03_iterative_dp/arandu_c_gcc


/workspaces/arandu-fibonacci-benchmarks/build/03_iterative_dp/arandu_c_gcc:     file format elf64-x86-64


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
    1154:	4c 63 0d cd 2e 00 00 	movslq 0x2ecd(%rip),%r9        # 4028 <ar_env_c_argc>
    115b:	41 54                	push   %r12
    115d:	45 31 c0             	xor    %r8d,%r8d
    1160:	55                   	push   %rbp
    1161:	53                   	push   %rbx
    1162:	31 db                	xor    %ebx,%ebx
    1164:	49 83 c1 59          	add    $0x59,%r9
    1168:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    116f:	00 
    1170:	4c 89 c7             	mov    %r8,%rdi
    1173:	83 e7 03             	and    $0x3,%edi
    1176:	4c 01 cf             	add    %r9,%rdi
    1179:	74 2a                	je     11a5 <main+0x55>
    117b:	ba 01 00 00 00       	mov    $0x1,%edx
    1180:	31 c9                	xor    %ecx,%ecx
    1182:	31 c0                	xor    %eax,%eax
    1184:	eb 0d                	jmp    1193 <main+0x43>
    1186:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    118d:	00 00 00 
    1190:	48 89 f2             	mov    %rsi,%rdx
    1193:	48 ff c0             	inc    %rax
    1196:	48 8d 34 11          	lea    (%rcx,%rdx,1),%rsi
    119a:	48 89 d1             	mov    %rdx,%rcx
    119d:	48 39 c7             	cmp    %rax,%rdi
    11a0:	75 ee                	jne    1190 <main+0x40>
    11a2:	48 01 d3             	add    %rdx,%rbx
    11a5:	49 ff c0             	inc    %r8
    11a8:	49 81 f8 80 96 98 00 	cmp    $0x989680,%r8
    11af:	75 bf                	jne    1170 <main+0x20>
    11b1:	31 f6                	xor    %esi,%esi
    11b3:	48 89 df             	mov    %rbx,%rdi
    11b6:	e8 25 02 00 00       	call   13e0 <ar_u64_write_digits>
    11bb:	49 89 c4             	mov    %rax,%r12
    11be:	48 85 c0             	test   %rax,%rax
    11c1:	0f 88 1f 01 00 00    	js     12e6 <main+0x196>
    11c7:	48 8d 78 01          	lea    0x1(%rax),%rdi
    11cb:	e8 40 ff ff ff       	call   1110 <malloc@plt>
    11d0:	48 89 c5             	mov    %rax,%rbp
    11d3:	48 85 c0             	test   %rax,%rax
    11d6:	0f 84 0a 01 00 00    	je     12e6 <main+0x196>
    11dc:	48 89 df             	mov    %rbx,%rdi
    11df:	48 89 c6             	mov    %rax,%rsi
    11e2:	e8 f9 01 00 00       	call   13e0 <ar_u64_write_digits>
    11e7:	48 8b 1d f2 2d 00 00 	mov    0x2df2(%rip),%rbx        # 3fe0 <stdout@GLIBC_2.2.5>
    11ee:	42 c6 44 25 00 00    	movb   $0x0,0x0(%rbp,%r12,1)
    11f4:	4d 85 e4             	test   %r12,%r12
    11f7:	74 13                	je     120c <main+0xbc>
    11f9:	48 8b 0b             	mov    (%rbx),%rcx
    11fc:	4c 89 e2             	mov    %r12,%rdx
    11ff:	be 01 00 00 00       	mov    $0x1,%esi
    1204:	48 89 ef             	mov    %rbp,%rdi
    1207:	e8 24 ff ff ff       	call   1130 <fwrite@plt>
    120c:	48 8b 33             	mov    (%rbx),%rsi
    120f:	bf 0a 00 00 00       	mov    $0xa,%edi
    1214:	e8 e7 fe ff ff       	call   1100 <fputc@plt>
    1219:	48 8b 3b             	mov    (%rbx),%rdi
    121c:	e8 ff fe ff ff       	call   1120 <fflush@plt>
    1221:	48 89 ef             	mov    %rbp,%rdi
    1224:	e8 a7 fe ff ff       	call   10d0 <free@plt>
    1229:	48 8b 1d f0 2d 00 00 	mov    0x2df0(%rip),%rbx        # 4020 <ar_gen_head>
    1230:	48 89 d8             	mov    %rbx,%rax
    1233:	48 89 da             	mov    %rbx,%rdx
    1236:	eb 22                	jmp    125a <main+0x10a>
    1238:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    123f:	00 
    1240:	48 8b 40 30          	mov    0x30(%rax),%rax
    1244:	48 85 c0             	test   %rax,%rax
    1247:	74 16                	je     125f <main+0x10f>
    1249:	48 8b 52 30          	mov    0x30(%rdx),%rdx
    124d:	48 8b 40 30          	mov    0x30(%rax),%rax
    1251:	48 39 c2             	cmp    %rax,%rdx
    1254:	0f 84 85 00 00 00    	je     12df <main+0x18f>
    125a:	48 85 c0             	test   %rax,%rax
    125d:	75 e1                	jne    1240 <main+0xf0>
    125f:	48 8b 2d b2 2d 00 00 	mov    0x2db2(%rip),%rbp        # 4018 <ar_gen_len>
    1266:	48 c7 05 af 2d 00 00 	movq   $0x0,0x2daf(%rip)        # 4020 <ar_gen_head>
    126d:	00 00 00 00 
    1271:	48 c7 05 9c 2d 00 00 	movq   $0x0,0x2d9c(%rip)        # 4018 <ar_gen_len>
    1278:	00 00 00 00 
    127c:	48 85 ed             	test   %rbp,%rbp
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
    12a7:	48 ff cd             	dec    %rbp
    12aa:	74 33                	je     12df <main+0x18f>
    12ac:	4d 85 e4             	test   %r12,%r12
    12af:	74 2e                	je     12df <main+0x18f>
    12b1:	4c 89 e3             	mov    %r12,%rbx
    12b4:	48 8b 43 28          	mov    0x28(%rbx),%rax
    12b8:	4c 8b 63 30          	mov    0x30(%rbx),%r12
    12bc:	48 85 c0             	test   %rax,%rax
    12bf:	75 cf                	jne    1290 <main+0x140>
    12c1:	48 8b 7b 10          	mov    0x10(%rbx),%rdi
    12c5:	48 ff cd             	dec    %rbp
    12c8:	e8 03 fe ff ff       	call   10d0 <free@plt>
    12cd:	48 89 df             	mov    %rbx,%rdi
    12d0:	e8 fb fd ff ff       	call   10d0 <free@plt>
    12d5:	4d 85 e4             	test   %r12,%r12
    12d8:	74 05                	je     12df <main+0x18f>
    12da:	48 85 ed             	test   %rbp,%rbp
    12dd:	75 d2                	jne    12b1 <main+0x161>
    12df:	5b                   	pop    %rbx
    12e0:	31 c0                	xor    %eax,%eax
    12e2:	5d                   	pop    %rbp
    12e3:	41 5c                	pop    %r12
    12e5:	c3                   	ret
    12e6:	e8 f5 fd ff ff       	call   10e0 <abort@plt>
    12eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000012f0 <_start>:
    12f0:	f3 0f 1e fa          	endbr64
    12f4:	31 ed                	xor    %ebp,%ebp
    12f6:	49 89 d1             	mov    %rdx,%r9
    12f9:	5e                   	pop    %rsi
    12fa:	48 89 e2             	mov    %rsp,%rdx
    12fd:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1301:	50                   	push   %rax
    1302:	54                   	push   %rsp
    1303:	45 31 c0             	xor    %r8d,%r8d
    1306:	31 c9                	xor    %ecx,%ecx
    1308:	48 8d 3d 41 fe ff ff 	lea    -0x1bf(%rip),%rdi        # 1150 <main>
    130f:	ff 15 bb 2c 00 00    	call   *0x2cbb(%rip)        # 3fd0 <__libc_start_main@GLIBC_2.34>
    1315:	f4                   	hlt
    1316:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    131d:	00 00 00 

0000000000001320 <deregister_tm_clones>:
    1320:	48 8d 3d e9 2c 00 00 	lea    0x2ce9(%rip),%rdi        # 4010 <__TMC_END__>
    1327:	48 8d 05 e2 2c 00 00 	lea    0x2ce2(%rip),%rax        # 4010 <__TMC_END__>
    132e:	48 39 f8             	cmp    %rdi,%rax
    1331:	74 15                	je     1348 <deregister_tm_clones+0x28>
    1333:	48 8b 05 9e 2c 00 00 	mov    0x2c9e(%rip),%rax        # 3fd8 <_ITM_deregisterTMCloneTable@Base>
    133a:	48 85 c0             	test   %rax,%rax
    133d:	74 09                	je     1348 <deregister_tm_clones+0x28>
    133f:	ff e0                	jmp    *%rax
    1341:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1348:	c3                   	ret
    1349:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001350 <register_tm_clones>:
    1350:	48 8d 3d b9 2c 00 00 	lea    0x2cb9(%rip),%rdi        # 4010 <__TMC_END__>
    1357:	48 8d 35 b2 2c 00 00 	lea    0x2cb2(%rip),%rsi        # 4010 <__TMC_END__>
    135e:	48 29 fe             	sub    %rdi,%rsi
    1361:	48 89 f0             	mov    %rsi,%rax
    1364:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1368:	48 c1 f8 03          	sar    $0x3,%rax
    136c:	48 01 c6             	add    %rax,%rsi
    136f:	48 d1 fe             	sar    $1,%rsi
    1372:	74 14                	je     1388 <register_tm_clones+0x38>
    1374:	48 8b 05 75 2c 00 00 	mov    0x2c75(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    137b:	48 85 c0             	test   %rax,%rax
    137e:	74 08                	je     1388 <register_tm_clones+0x38>
    1380:	ff e0                	jmp    *%rax
    1382:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1388:	c3                   	ret
    1389:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001390 <__do_global_dtors_aux>:
    1390:	f3 0f 1e fa          	endbr64
    1394:	80 3d 75 2c 00 00 00 	cmpb   $0x0,0x2c75(%rip)        # 4010 <__TMC_END__>
    139b:	75 2b                	jne    13c8 <__do_global_dtors_aux+0x38>
    139d:	55                   	push   %rbp
    139e:	48 83 3d 52 2c 00 00 	cmpq   $0x0,0x2c52(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    13a5:	00 
    13a6:	48 89 e5             	mov    %rsp,%rbp
    13a9:	74 0c                	je     13b7 <__do_global_dtors_aux+0x27>
    13ab:	48 8b 3d 56 2c 00 00 	mov    0x2c56(%rip),%rdi        # 4008 <__dso_handle>
    13b2:	e8 f9 fc ff ff       	call   10b0 <__cxa_finalize@plt>
    13b7:	e8 64 ff ff ff       	call   1320 <deregister_tm_clones>
    13bc:	c6 05 4d 2c 00 00 01 	movb   $0x1,0x2c4d(%rip)        # 4010 <__TMC_END__>
    13c3:	5d                   	pop    %rbp
    13c4:	c3                   	ret
    13c5:	0f 1f 00             	nopl   (%rax)
    13c8:	c3                   	ret
    13c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000013d0 <frame_dummy>:
    13d0:	f3 0f 1e fa          	endbr64
    13d4:	e9 77 ff ff ff       	jmp    1350 <register_tm_clones>
    13d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000013e0 <ar_u64_write_digits>:
    13e0:	55                   	push   %rbp
    13e1:	53                   	push   %rbx
    13e2:	49 89 f9             	mov    %rdi,%r9
    13e5:	ba 02 00 00 00       	mov    $0x2,%edx
    13ea:	48 83 ec 38          	sub    $0x38,%rsp
    13ee:	48 89 f3             	mov    %rsi,%rbx
    13f1:	4c 8d 05 0c 0c 00 00 	lea    0xc0c(%rip),%r8        # 2004 <_IO_stdin_used+0x4>
    13f8:	b9 20 00 00 00       	mov    $0x20,%ecx
    13fd:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1404:	00 00 
    1406:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    140b:	31 c0                	xor    %eax,%eax
    140d:	48 89 e5             	mov    %rsp,%rbp
    1410:	be 20 00 00 00       	mov    $0x20,%esi
    1415:	48 89 ef             	mov    %rbp,%rdi
    1418:	e8 a3 fc ff ff       	call   10c0 <__snprintf_chk@plt>
    141d:	48 63 d0             	movslq %eax,%rdx
    1420:	48 85 db             	test   %rbx,%rbx
    1423:	74 0a                	je     142f <ar_u64_write_digits+0x4f>
    1425:	89 c1                	mov    %eax,%ecx
    1427:	48 89 df             	mov    %rbx,%rdi
    142a:	48 89 ee             	mov    %rbp,%rsi
    142d:	f3 a4                	rep movsb %ds:(%rsi),%es:(%rdi)
    142f:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    1434:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    143b:	00 00 
    143d:	75 0a                	jne    1449 <ar_u64_write_digits+0x69>
    143f:	48 83 c4 38          	add    $0x38,%rsp
    1443:	48 89 d0             	mov    %rdx,%rax
    1446:	5b                   	pop    %rbx
    1447:	5d                   	pop    %rbp
    1448:	c3                   	ret
    1449:	e8 a2 fc ff ff       	call   10f0 <__stack_chk_fail@plt>

Disassembly of section .fini:

0000000000001450 <_fini>:
    1450:	f3 0f 1e fa          	endbr64
    1454:	48 83 ec 08          	sub    $0x8,%rsp
    1458:	48 83 c4 08          	add    $0x8,%rsp
    145c:	c3                   	ret
