; Benchmark: 03_iterative_dp
; Implementação: Arandu (emit-c --opt + Clang -O3)
; Executável: /workspaces/arandu-fibonacci-benchmarks/build/03_iterative_dp/arandu_c_clang
; Comando: /usr/bin/objdump -d -C /workspaces/arandu-fibonacci-benchmarks/build/03_iterative_dp/arandu_c_clang


/workspaces/arandu-fibonacci-benchmarks/build/03_iterative_dp/arandu_c_clang:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 c1 3f 00 00 	mov    0x3fc1(%rip),%rax        # 4fd0 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <free@plt-0x10>:
    1020:	ff 35 ca 3f 00 00    	push   0x3fca(%rip)        # 4ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 cc 3f 00 00    	jmp    *0x3fcc(%rip)        # 4ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <free@plt>:
    1030:	ff 25 ca 3f 00 00    	jmp    *0x3fca(%rip)        # 5000 <free@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	push   $0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001040 <abort@plt>:
    1040:	ff 25 c2 3f 00 00    	jmp    *0x3fc2(%rip)        # 5008 <abort@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	push   $0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001050 <snprintf@plt>:
    1050:	ff 25 ba 3f 00 00    	jmp    *0x3fba(%rip)        # 5010 <snprintf@GLIBC_2.2.5>
    1056:	68 02 00 00 00       	push   $0x2
    105b:	e9 c0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001060 <fputc@plt>:
    1060:	ff 25 b2 3f 00 00    	jmp    *0x3fb2(%rip)        # 5018 <fputc@GLIBC_2.2.5>
    1066:	68 03 00 00 00       	push   $0x3
    106b:	e9 b0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001070 <memcpy@plt>:
    1070:	ff 25 aa 3f 00 00    	jmp    *0x3faa(%rip)        # 5020 <memcpy@GLIBC_2.14>
    1076:	68 04 00 00 00       	push   $0x4
    107b:	e9 a0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001080 <malloc@plt>:
    1080:	ff 25 a2 3f 00 00    	jmp    *0x3fa2(%rip)        # 5028 <malloc@GLIBC_2.2.5>
    1086:	68 05 00 00 00       	push   $0x5
    108b:	e9 90 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001090 <fflush@plt>:
    1090:	ff 25 9a 3f 00 00    	jmp    *0x3f9a(%rip)        # 5030 <fflush@GLIBC_2.2.5>
    1096:	68 06 00 00 00       	push   $0x6
    109b:	e9 80 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010a0 <fwrite@plt>:
    10a0:	ff 25 92 3f 00 00    	jmp    *0x3f92(%rip)        # 5038 <fwrite@GLIBC_2.2.5>
    10a6:	68 07 00 00 00       	push   $0x7
    10ab:	e9 70 ff ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .plt.got:

00000000000010b0 <__cxa_finalize@plt>:
    10b0:	ff 25 2a 3f 00 00    	jmp    *0x3f2a(%rip)        # 4fe0 <__cxa_finalize@GLIBC_2.2.5>
    10b6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000000010c0 <_start>:
    10c0:	f3 0f 1e fa          	endbr64
    10c4:	31 ed                	xor    %ebp,%ebp
    10c6:	49 89 d1             	mov    %rdx,%r9
    10c9:	5e                   	pop    %rsi
    10ca:	48 89 e2             	mov    %rsp,%rdx
    10cd:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    10d1:	50                   	push   %rax
    10d2:	54                   	push   %rsp
    10d3:	45 31 c0             	xor    %r8d,%r8d
    10d6:	31 c9                	xor    %ecx,%ecx
    10d8:	48 8d 3d e1 00 00 00 	lea    0xe1(%rip),%rdi        # 11c0 <main>
    10df:	ff 15 d3 3e 00 00    	call   *0x3ed3(%rip)        # 4fb8 <__libc_start_main@GLIBC_2.34>
    10e5:	f4                   	hlt
    10e6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    10ed:	00 00 00 

00000000000010f0 <deregister_tm_clones>:
    10f0:	48 8d 3d 59 3f 00 00 	lea    0x3f59(%rip),%rdi        # 5050 <__TMC_END__>
    10f7:	48 8d 05 52 3f 00 00 	lea    0x3f52(%rip),%rax        # 5050 <__TMC_END__>
    10fe:	48 39 f8             	cmp    %rdi,%rax
    1101:	74 15                	je     1118 <deregister_tm_clones+0x28>
    1103:	48 8b 05 b6 3e 00 00 	mov    0x3eb6(%rip),%rax        # 4fc0 <_ITM_deregisterTMCloneTable@Base>
    110a:	48 85 c0             	test   %rax,%rax
    110d:	74 09                	je     1118 <deregister_tm_clones+0x28>
    110f:	ff e0                	jmp    *%rax
    1111:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1118:	c3                   	ret
    1119:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001120 <register_tm_clones>:
    1120:	48 8d 3d 29 3f 00 00 	lea    0x3f29(%rip),%rdi        # 5050 <__TMC_END__>
    1127:	48 8d 35 22 3f 00 00 	lea    0x3f22(%rip),%rsi        # 5050 <__TMC_END__>
    112e:	48 29 fe             	sub    %rdi,%rsi
    1131:	48 89 f0             	mov    %rsi,%rax
    1134:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1138:	48 c1 f8 03          	sar    $0x3,%rax
    113c:	48 01 c6             	add    %rax,%rsi
    113f:	48 d1 fe             	sar    $1,%rsi
    1142:	74 14                	je     1158 <register_tm_clones+0x38>
    1144:	48 8b 05 8d 3e 00 00 	mov    0x3e8d(%rip),%rax        # 4fd8 <_ITM_registerTMCloneTable@Base>
    114b:	48 85 c0             	test   %rax,%rax
    114e:	74 08                	je     1158 <register_tm_clones+0x38>
    1150:	ff e0                	jmp    *%rax
    1152:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1158:	c3                   	ret
    1159:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001160 <__do_global_dtors_aux>:
    1160:	f3 0f 1e fa          	endbr64
    1164:	80 3d e5 3e 00 00 00 	cmpb   $0x0,0x3ee5(%rip)        # 5050 <__TMC_END__>
    116b:	75 2b                	jne    1198 <__do_global_dtors_aux+0x38>
    116d:	55                   	push   %rbp
    116e:	48 83 3d 6a 3e 00 00 	cmpq   $0x0,0x3e6a(%rip)        # 4fe0 <__cxa_finalize@GLIBC_2.2.5>
    1175:	00 
    1176:	48 89 e5             	mov    %rsp,%rbp
    1179:	74 0c                	je     1187 <__do_global_dtors_aux+0x27>
    117b:	48 8b 3d c6 3e 00 00 	mov    0x3ec6(%rip),%rdi        # 5048 <__dso_handle>
    1182:	e8 29 ff ff ff       	call   10b0 <__cxa_finalize@plt>
    1187:	e8 64 ff ff ff       	call   10f0 <deregister_tm_clones>
    118c:	c6 05 bd 3e 00 00 01 	movb   $0x1,0x3ebd(%rip)        # 5050 <__TMC_END__>
    1193:	5d                   	pop    %rbp
    1194:	c3                   	ret
    1195:	0f 1f 00             	nopl   (%rax)
    1198:	c3                   	ret
    1199:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011a0 <frame_dummy>:
    11a0:	f3 0f 1e fa          	endbr64
    11a4:	e9 77 ff ff ff       	jmp    1120 <register_tm_clones>
    11a9:	0f 1f 00             	nopl   (%rax)
    11ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000011b0 <ar_capture_env_args>:
    11b0:	89 3d 9e 3e 00 00    	mov    %edi,0x3e9e(%rip)        # 5054 <ar_env_c_argc>
    11b6:	c3                   	ret
    11b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    11be:	00 00 

00000000000011c0 <main>:
    11c0:	55                   	push   %rbp
    11c1:	41 57                	push   %r15
    11c3:	41 56                	push   %r14
    11c5:	41 55                	push   %r13
    11c7:	41 54                	push   %r12
    11c9:	53                   	push   %rbx
    11ca:	48 81 ec 08 01 00 00 	sub    $0x108,%rsp
    11d1:	48 63 05 7c 3e 00 00 	movslq 0x3e7c(%rip),%rax        # 5054 <ar_env_c_argc>
    11d8:	41 b1 02             	mov    $0x2,%r9b
    11db:	45 31 db             	xor    %r11d,%r11d
    11de:	45 31 f6             	xor    %r14d,%r14d
    11e1:	45 31 c0             	xor    %r8d,%r8d
    11e4:	31 db                	xor    %ebx,%ebx
    11e6:	48 8d 48 58          	lea    0x58(%rax),%rcx
    11ea:	4c 8d 50 59          	lea    0x59(%rax),%r10
    11ee:	4c 8d 78 5a          	lea    0x5a(%rax),%r15
    11f2:	48 8d 70 52          	lea    0x52(%rax),%rsi
    11f6:	8d 50 02             	lea    0x2(%rax),%edx
    11f9:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
    11fe:	8d 48 01             	lea    0x1(%rax),%ecx
    1201:	48 83 c0 51          	add    $0x51,%rax
    1205:	48 89 74 24 18       	mov    %rsi,0x18(%rsp)
    120a:	89 54 24 44          	mov    %edx,0x44(%rsp)
    120e:	4c 89 54 24 20       	mov    %r10,0x20(%rsp)
    1213:	4c 89 bc 24 a0 00 00 	mov    %r15,0xa0(%rsp)
    121a:	00 
    121b:	48 89 8c 24 98 00 00 	mov    %rcx,0x98(%rsp)
    1222:	00 
    1223:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    1228:	eb 73                	jmp    129d <main+0xdd>
    122a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1230:	45 31 ff             	xor    %r15d,%r15d
    1233:	4c 03 a4 24 d8 00 00 	add    0xd8(%rsp),%r12
    123a:	00 
    123b:	4c 8b 54 24 20       	mov    0x20(%rsp),%r10
    1240:	4c 01 e2             	add    %r12,%rdx
    1243:	49 01 d1             	add    %rdx,%r9
    1246:	4d 01 cb             	add    %r9,%r11
    1249:	44 0f b6 4c 24 0f    	movzbl 0xf(%rsp),%r9d
    124f:	4d 01 de             	add    %r11,%r14
    1252:	4c 8b 9c 24 d0 00 00 	mov    0xd0(%rsp),%r11
    1259:	00 
    125a:	4d 01 f0             	add    %r14,%r8
    125d:	4c 8b b4 24 c8 00 00 	mov    0xc8(%rsp),%r14
    1264:	00 
    1265:	4c 01 c1             	add    %r8,%rcx
    1268:	4c 8b 44 24 30       	mov    0x30(%rsp),%r8
    126d:	48 01 c8             	add    %rcx,%rax
    1270:	48 01 c6             	add    %rax,%rsi
    1273:	41 80 c1 02          	add    $0x2,%r9b
    1277:	48 89 f3             	mov    %rsi,%rbx
    127a:	4c 01 fb             	add    %r15,%rbx
    127d:	4c 8b bc 24 a0 00 00 	mov    0xa0(%rsp),%r15
    1284:	00 
    1285:	41 80 c3 02          	add    $0x2,%r11b
    1289:	41 fe c6             	inc    %r14b
    128c:	49 83 c0 0a          	add    $0xa,%r8
    1290:	49 81 f8 80 96 98 00 	cmp    $0x989680,%r8
    1297:	0f 84 e9 11 00 00    	je     2486 <main+0x12c6>
    129d:	48 8b 8c 24 98 00 00 	mov    0x98(%rsp),%rcx
    12a4:	00 
    12a5:	43 8d 04 36          	lea    (%r14,%r14,1),%eax
    12a9:	44 89 c6             	mov    %r8d,%esi
    12ac:	83 e6 02             	and    $0x2,%esi
    12af:	48 89 9c 24 d8 00 00 	mov    %rbx,0xd8(%rsp)
    12b6:	00 
    12b7:	89 c2                	mov    %eax,%edx
    12b9:	48 89 f7             	mov    %rsi,%rdi
    12bc:	4d 8d 24 32          	lea    (%r10,%rsi,1),%r12
    12c0:	48 f7 df             	neg    %rdi
    12c3:	48 89 b4 24 80 00 00 	mov    %rsi,0x80(%rsp)
    12ca:	00 
    12cb:	80 e2 02             	and    $0x2,%dl
    12ce:	4c 89 64 24 68       	mov    %r12,0x68(%rsp)
    12d3:	48 89 bc 24 88 00 00 	mov    %rdi,0x88(%rsp)
    12da:	00 
    12db:	01 d1                	add    %edx,%ecx
    12dd:	44 0f b6 e9          	movzbl %cl,%r13d
    12e1:	49 39 fa             	cmp    %rdi,%r10
    12e4:	75 0a                	jne    12f0 <main+0x130>
    12e6:	45 31 e4             	xor    %r12d,%r12d
    12e9:	e9 83 01 00 00       	jmp    1471 <main+0x2b1>
    12ee:	66 90                	xchg   %ax,%ax
    12f0:	48 8b 4c 24 10       	mov    0x10(%rsp),%rcx
    12f5:	48 01 f1             	add    %rsi,%rcx
    12f8:	48 83 f9 07          	cmp    $0x7,%rcx
    12fc:	73 12                	jae    1310 <main+0x150>
    12fe:	b9 01 00 00 00       	mov    $0x1,%ecx
    1303:	31 f6                	xor    %esi,%esi
    1305:	e9 43 01 00 00       	jmp    144d <main+0x28d>
    130a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1310:	41 0f b6 ce          	movzbl %r14b,%ecx
    1314:	4d 89 c4             	mov    %r8,%r12
    1317:	83 e1 01             	and    $0x1,%ecx
    131a:	49 8d 4c 4a f8       	lea    -0x8(%r10,%rcx,2),%rcx
    131f:	48 89 cf             	mov    %rcx,%rdi
    1322:	48 c1 ef 03          	shr    $0x3,%rdi
    1326:	48 ff c7             	inc    %rdi
    1329:	48 83 f9 38          	cmp    $0x38,%rcx
    132d:	73 0c                	jae    133b <main+0x17b>
    132f:	b9 01 00 00 00       	mov    $0x1,%ecx
    1334:	31 f6                	xor    %esi,%esi
    1336:	e9 df 00 00 00       	jmp    141a <main+0x25a>
    133b:	49 89 f8             	mov    %rdi,%r8
    133e:	49 83 e0 f8          	and    $0xfffffffffffffff8,%r8
    1342:	b9 01 00 00 00       	mov    $0x1,%ecx
    1347:	31 f6                	xor    %esi,%esi
    1349:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1350:	48 01 ce             	add    %rcx,%rsi
    1353:	48 01 f1             	add    %rsi,%rcx
    1356:	48 01 ce             	add    %rcx,%rsi
    1359:	48 01 f1             	add    %rsi,%rcx
    135c:	48 01 ce             	add    %rcx,%rsi
    135f:	48 01 f1             	add    %rsi,%rcx
    1362:	48 01 ce             	add    %rcx,%rsi
    1365:	48 01 f1             	add    %rsi,%rcx
    1368:	48 01 ce             	add    %rcx,%rsi
    136b:	48 01 f1             	add    %rsi,%rcx
    136e:	48 01 ce             	add    %rcx,%rsi
    1371:	48 01 f1             	add    %rsi,%rcx
    1374:	48 01 ce             	add    %rcx,%rsi
    1377:	48 01 f1             	add    %rsi,%rcx
    137a:	48 01 ce             	add    %rcx,%rsi
    137d:	48 01 f1             	add    %rsi,%rcx
    1380:	48 01 ce             	add    %rcx,%rsi
    1383:	48 01 f1             	add    %rsi,%rcx
    1386:	48 01 ce             	add    %rcx,%rsi
    1389:	48 01 f1             	add    %rsi,%rcx
    138c:	48 01 ce             	add    %rcx,%rsi
    138f:	48 01 f1             	add    %rsi,%rcx
    1392:	48 01 ce             	add    %rcx,%rsi
    1395:	48 01 f1             	add    %rsi,%rcx
    1398:	48 01 ce             	add    %rcx,%rsi
    139b:	48 01 f1             	add    %rsi,%rcx
    139e:	48 01 ce             	add    %rcx,%rsi
    13a1:	48 01 f1             	add    %rsi,%rcx
    13a4:	48 01 ce             	add    %rcx,%rsi
    13a7:	48 01 f1             	add    %rsi,%rcx
    13aa:	48 01 ce             	add    %rcx,%rsi
    13ad:	48 01 f1             	add    %rsi,%rcx
    13b0:	48 01 ce             	add    %rcx,%rsi
    13b3:	48 01 f1             	add    %rsi,%rcx
    13b6:	48 01 ce             	add    %rcx,%rsi
    13b9:	48 01 f1             	add    %rsi,%rcx
    13bc:	48 01 ce             	add    %rcx,%rsi
    13bf:	48 01 f1             	add    %rsi,%rcx
    13c2:	48 01 ce             	add    %rcx,%rsi
    13c5:	48 01 f1             	add    %rsi,%rcx
    13c8:	48 01 ce             	add    %rcx,%rsi
    13cb:	48 01 f1             	add    %rsi,%rcx
    13ce:	48 01 ce             	add    %rcx,%rsi
    13d1:	48 01 f1             	add    %rsi,%rcx
    13d4:	48 01 ce             	add    %rcx,%rsi
    13d7:	48 01 f1             	add    %rsi,%rcx
    13da:	48 01 ce             	add    %rcx,%rsi
    13dd:	48 01 f1             	add    %rsi,%rcx
    13e0:	48 01 ce             	add    %rcx,%rsi
    13e3:	48 01 f1             	add    %rsi,%rcx
    13e6:	48 01 ce             	add    %rcx,%rsi
    13e9:	48 01 f1             	add    %rsi,%rcx
    13ec:	48 01 ce             	add    %rcx,%rsi
    13ef:	48 01 f1             	add    %rsi,%rcx
    13f2:	48 01 ce             	add    %rcx,%rsi
    13f5:	48 01 f1             	add    %rsi,%rcx
    13f8:	48 01 ce             	add    %rcx,%rsi
    13fb:	48 01 f1             	add    %rsi,%rcx
    13fe:	48 01 ce             	add    %rcx,%rsi
    1401:	48 01 f1             	add    %rsi,%rcx
    1404:	48 01 ce             	add    %rcx,%rsi
    1407:	48 01 f1             	add    %rsi,%rcx
    140a:	48 01 ce             	add    %rcx,%rsi
    140d:	48 01 f1             	add    %rsi,%rcx
    1410:	49 83 c0 f8          	add    $0xfffffffffffffff8,%r8
    1414:	0f 85 36 ff ff ff    	jne    1350 <main+0x190>
    141a:	83 e7 07             	and    $0x7,%edi
    141d:	4d 89 e0             	mov    %r12,%r8
    1420:	74 2b                	je     144d <main+0x28d>
    1422:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
    1429:	1f 84 00 00 00 00 00 
    1430:	48 01 ce             	add    %rcx,%rsi
    1433:	48 01 f1             	add    %rsi,%rcx
    1436:	48 01 ce             	add    %rcx,%rsi
    1439:	48 01 f1             	add    %rsi,%rcx
    143c:	48 01 ce             	add    %rcx,%rsi
    143f:	48 01 f1             	add    %rsi,%rcx
    1442:	48 01 ce             	add    %rcx,%rsi
    1445:	48 01 f1             	add    %rsi,%rcx
    1448:	48 ff cf             	dec    %rdi
    144b:	75 e3                	jne    1430 <main+0x270>
    144d:	f6 44 24 68 07       	testb  $0x7,0x68(%rsp)
    1452:	49 89 f4             	mov    %rsi,%r12
    1455:	74 1a                	je     1471 <main+0x2b1>
    1457:	44 89 ef             	mov    %r13d,%edi
    145a:	83 e7 07             	and    $0x7,%edi
    145d:	0f 1f 00             	nopl   (%rax)
    1460:	49 89 cc             	mov    %rcx,%r12
    1463:	48 89 f1             	mov    %rsi,%rcx
    1466:	4c 01 e1             	add    %r12,%rcx
    1469:	48 ff cf             	dec    %rdi
    146c:	4c 89 e6             	mov    %r12,%rsi
    146f:	75 ef                	jne    1460 <main+0x2a0>
    1471:	02 54 24 44          	add    0x44(%rsp),%dl
    1475:	41 0f b6 cb          	movzbl %r11b,%ecx
    1479:	0f b6 d8             	movzbl %al,%ebx
    147c:	4c 89 9c 24 d0 00 00 	mov    %r11,0xd0(%rsp)
    1483:	00 
    1484:	89 ce                	mov    %ecx,%esi
    1486:	83 e1 03             	and    $0x3,%ecx
    1489:	83 e3 02             	and    $0x2,%ebx
    148c:	83 e6 03             	and    $0x3,%esi
    148f:	48 89 4c 24 38       	mov    %rcx,0x38(%rsp)
    1494:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
    1499:	0f b6 ea             	movzbl %dl,%ebp
    149c:	49 8d 54 1f f8       	lea    -0x8(%r15,%rbx,1),%rdx
    14a1:	48 89 d0             	mov    %rdx,%rax
    14a4:	48 c1 e8 03          	shr    $0x3,%rax
    14a8:	48 01 f1             	add    %rsi,%rcx
    14ab:	48 89 54 24 78       	mov    %rdx,0x78(%rsp)
    14b0:	48 ff c0             	inc    %rax
    14b3:	48 c1 e9 03          	shr    $0x3,%rcx
    14b7:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
    14bc:	44 89 c0             	mov    %r8d,%eax
    14bf:	83 e0 02             	and    $0x2,%eax
    14c2:	48 ff c1             	inc    %rcx
    14c5:	48 83 c8 01          	or     $0x1,%rax
    14c9:	48 89 4c 24 58       	mov    %rcx,0x58(%rsp)
    14ce:	4c 89 d1             	mov    %r10,%rcx
    14d1:	48 01 c1             	add    %rax,%rcx
    14d4:	75 0a                	jne    14e0 <main+0x320>
    14d6:	31 d2                	xor    %edx,%edx
    14d8:	e9 84 01 00 00       	jmp    1661 <main+0x4a1>
    14dd:	0f 1f 00             	nopl   (%rax)
    14e0:	48 03 44 24 10       	add    0x10(%rsp),%rax
    14e5:	48 83 f8 07          	cmp    $0x7,%rax
    14e9:	73 15                	jae    1500 <main+0x340>
    14eb:	b8 01 00 00 00       	mov    $0x1,%eax
    14f0:	31 ff                	xor    %edi,%edi
    14f2:	e9 46 01 00 00       	jmp    163d <main+0x47d>
    14f7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    14fe:	00 00 
    1500:	48 83 fa 38          	cmp    $0x38,%rdx
    1504:	73 0c                	jae    1512 <main+0x352>
    1506:	b8 01 00 00 00       	mov    $0x1,%eax
    150b:	31 ff                	xor    %edi,%edi
    150d:	e9 e8 00 00 00       	jmp    15fa <main+0x43a>
    1512:	48 8b 54 24 58       	mov    0x58(%rsp),%rdx
    1517:	b8 01 00 00 00       	mov    $0x1,%eax
    151c:	31 ff                	xor    %edi,%edi
    151e:	48 83 e2 f8          	and    $0xfffffffffffffff8,%rdx
    1522:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
    1529:	1f 84 00 00 00 00 00 
    1530:	48 01 c7             	add    %rax,%rdi
    1533:	48 01 f8             	add    %rdi,%rax
    1536:	48 01 c7             	add    %rax,%rdi
    1539:	48 01 f8             	add    %rdi,%rax
    153c:	48 01 c7             	add    %rax,%rdi
    153f:	48 01 f8             	add    %rdi,%rax
    1542:	48 01 c7             	add    %rax,%rdi
    1545:	48 01 f8             	add    %rdi,%rax
    1548:	48 01 c7             	add    %rax,%rdi
    154b:	48 01 f8             	add    %rdi,%rax
    154e:	48 01 c7             	add    %rax,%rdi
    1551:	48 01 f8             	add    %rdi,%rax
    1554:	48 01 c7             	add    %rax,%rdi
    1557:	48 01 f8             	add    %rdi,%rax
    155a:	48 01 c7             	add    %rax,%rdi
    155d:	48 01 f8             	add    %rdi,%rax
    1560:	48 01 c7             	add    %rax,%rdi
    1563:	48 01 f8             	add    %rdi,%rax
    1566:	48 01 c7             	add    %rax,%rdi
    1569:	48 01 f8             	add    %rdi,%rax
    156c:	48 01 c7             	add    %rax,%rdi
    156f:	48 01 f8             	add    %rdi,%rax
    1572:	48 01 c7             	add    %rax,%rdi
    1575:	48 01 f8             	add    %rdi,%rax
    1578:	48 01 c7             	add    %rax,%rdi
    157b:	48 01 f8             	add    %rdi,%rax
    157e:	48 01 c7             	add    %rax,%rdi
    1581:	48 01 f8             	add    %rdi,%rax
    1584:	48 01 c7             	add    %rax,%rdi
    1587:	48 01 f8             	add    %rdi,%rax
    158a:	48 01 c7             	add    %rax,%rdi
    158d:	48 01 f8             	add    %rdi,%rax
    1590:	48 01 c7             	add    %rax,%rdi
    1593:	48 01 f8             	add    %rdi,%rax
    1596:	48 01 c7             	add    %rax,%rdi
    1599:	48 01 f8             	add    %rdi,%rax
    159c:	48 01 c7             	add    %rax,%rdi
    159f:	48 01 f8             	add    %rdi,%rax
    15a2:	48 01 c7             	add    %rax,%rdi
    15a5:	48 01 f8             	add    %rdi,%rax
    15a8:	48 01 c7             	add    %rax,%rdi
    15ab:	48 01 f8             	add    %rdi,%rax
    15ae:	48 01 c7             	add    %rax,%rdi
    15b1:	48 01 f8             	add    %rdi,%rax
    15b4:	48 01 c7             	add    %rax,%rdi
    15b7:	48 01 f8             	add    %rdi,%rax
    15ba:	48 01 c7             	add    %rax,%rdi
    15bd:	48 01 f8             	add    %rdi,%rax
    15c0:	48 01 c7             	add    %rax,%rdi
    15c3:	48 01 f8             	add    %rdi,%rax
    15c6:	48 01 c7             	add    %rax,%rdi
    15c9:	48 01 f8             	add    %rdi,%rax
    15cc:	48 01 c7             	add    %rax,%rdi
    15cf:	48 01 f8             	add    %rdi,%rax
    15d2:	48 01 c7             	add    %rax,%rdi
    15d5:	48 01 f8             	add    %rdi,%rax
    15d8:	48 01 c7             	add    %rax,%rdi
    15db:	48 01 f8             	add    %rdi,%rax
    15de:	48 01 c7             	add    %rax,%rdi
    15e1:	48 01 f8             	add    %rdi,%rax
    15e4:	48 01 c7             	add    %rax,%rdi
    15e7:	48 01 f8             	add    %rdi,%rax
    15ea:	48 01 c7             	add    %rax,%rdi
    15ed:	48 01 f8             	add    %rdi,%rax
    15f0:	48 83 c2 f8          	add    $0xfffffffffffffff8,%rdx
    15f4:	0f 85 36 ff ff ff    	jne    1530 <main+0x370>
    15fa:	f6 44 24 60 07       	testb  $0x7,0x60(%rsp)
    15ff:	74 3c                	je     163d <main+0x47d>
    1601:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
    1606:	4c 8b 5c 24 38       	mov    0x38(%rsp),%r11
    160b:	44 01 da             	add    %r11d,%edx
    160e:	c0 ea 03             	shr    $0x3,%dl
    1611:	fe c2                	inc    %dl
    1613:	0f b6 d2             	movzbl %dl,%edx
    1616:	83 e2 07             	and    $0x7,%edx
    1619:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1620:	48 01 c7             	add    %rax,%rdi
    1623:	48 01 f8             	add    %rdi,%rax
    1626:	48 01 c7             	add    %rax,%rdi
    1629:	48 01 f8             	add    %rdi,%rax
    162c:	48 01 c7             	add    %rax,%rdi
    162f:	48 01 f8             	add    %rdi,%rax
    1632:	48 01 c7             	add    %rax,%rdi
    1635:	48 01 f8             	add    %rdi,%rax
    1638:	48 ff ca             	dec    %rdx
    163b:	75 e3                	jne    1620 <main+0x460>
    163d:	48 89 fa             	mov    %rdi,%rdx
    1640:	f6 c1 07             	test   $0x7,%cl
    1643:	74 1c                	je     1661 <main+0x4a1>
    1645:	89 e9                	mov    %ebp,%ecx
    1647:	83 e1 07             	and    $0x7,%ecx
    164a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1650:	48 89 c2             	mov    %rax,%rdx
    1653:	48 89 f8             	mov    %rdi,%rax
    1656:	48 01 d0             	add    %rdx,%rax
    1659:	48 ff c9             	dec    %rcx
    165c:	48 89 d7             	mov    %rdx,%rdi
    165f:	75 ef                	jne    1650 <main+0x490>
    1661:	44 89 f7             	mov    %r14d,%edi
    1664:	41 0f b6 c9          	movzbl %r9b,%ecx
    1668:	4c 89 44 24 30       	mov    %r8,0x30(%rsp)
    166d:	44 88 4c 24 0f       	mov    %r9b,0xf(%rsp)
    1672:	4c 89 b4 24 c8 00 00 	mov    %r14,0xc8(%rsp)
    1679:	00 
    167a:	40 f6 d7             	not    %dil
    167d:	89 c8                	mov    %ecx,%eax
    167f:	83 e1 03             	and    $0x3,%ecx
    1682:	83 e0 03             	and    $0x3,%eax
    1685:	40 00 ff             	add    %dil,%dil
    1688:	48 89 4c 24 50       	mov    %rcx,0x50(%rsp)
    168d:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
    1692:	44 0f b6 df          	movzbl %dil,%r11d
    1696:	41 83 e3 02          	and    $0x2,%r11d
    169a:	4b 8d 7c 1a f8       	lea    -0x8(%r10,%r11,1),%rdi
    169f:	48 89 7c 24 70       	mov    %rdi,0x70(%rsp)
    16a4:	48 c1 ef 03          	shr    $0x3,%rdi
    16a8:	48 01 c1             	add    %rax,%rcx
    16ab:	48 ff c7             	inc    %rdi
    16ae:	48 c1 e9 03          	shr    $0x3,%rcx
    16b2:	48 89 7c 24 48       	mov    %rdi,0x48(%rsp)
    16b7:	44 89 c7             	mov    %r8d,%edi
    16ba:	f7 d7                	not    %edi
    16bc:	48 ff c1             	inc    %rcx
    16bf:	4d 89 d0             	mov    %r10,%r8
    16c2:	83 e7 02             	and    $0x2,%edi
    16c5:	49 01 f8             	add    %rdi,%r8
    16c8:	75 16                	jne    16e0 <main+0x520>
    16ca:	45 31 c9             	xor    %r9d,%r9d
    16cd:	e9 af 01 00 00       	jmp    1881 <main+0x6c1>
    16d2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
    16d9:	1f 84 00 00 00 00 00 
    16e0:	4c 8b 44 24 10       	mov    0x10(%rsp),%r8
    16e5:	49 01 f8             	add    %rdi,%r8
    16e8:	49 83 f8 07          	cmp    $0x7,%r8
    16ec:	73 12                	jae    1700 <main+0x540>
    16ee:	41 be 01 00 00 00    	mov    $0x1,%r14d
    16f4:	45 31 c0             	xor    %r8d,%r8d
    16f7:	e9 61 01 00 00       	jmp    185d <main+0x69d>
    16fc:	0f 1f 40 00          	nopl   0x0(%rax)
    1700:	48 83 7c 24 70 38    	cmpq   $0x38,0x70(%rsp)
    1706:	73 0e                	jae    1716 <main+0x556>
    1708:	41 be 01 00 00 00    	mov    $0x1,%r14d
    170e:	45 31 c0             	xor    %r8d,%r8d
    1711:	e9 e4 00 00 00       	jmp    17fa <main+0x63a>
    1716:	49 89 c9             	mov    %rcx,%r9
    1719:	49 83 e1 f8          	and    $0xfffffffffffffff8,%r9
    171d:	41 be 01 00 00 00    	mov    $0x1,%r14d
    1723:	45 31 c0             	xor    %r8d,%r8d
    1726:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    172d:	00 00 00 
    1730:	4d 01 f0             	add    %r14,%r8
    1733:	4d 01 c6             	add    %r8,%r14
    1736:	4d 01 f0             	add    %r14,%r8
    1739:	4d 01 c6             	add    %r8,%r14
    173c:	4d 01 f0             	add    %r14,%r8
    173f:	4d 01 c6             	add    %r8,%r14
    1742:	4d 01 f0             	add    %r14,%r8
    1745:	4d 01 c6             	add    %r8,%r14
    1748:	4d 01 f0             	add    %r14,%r8
    174b:	4d 01 c6             	add    %r8,%r14
    174e:	4d 01 f0             	add    %r14,%r8
    1751:	4d 01 c6             	add    %r8,%r14
    1754:	4d 01 f0             	add    %r14,%r8
    1757:	4d 01 c6             	add    %r8,%r14
    175a:	4d 01 f0             	add    %r14,%r8
    175d:	4d 01 c6             	add    %r8,%r14
    1760:	4d 01 f0             	add    %r14,%r8
    1763:	4d 01 c6             	add    %r8,%r14
    1766:	4d 01 f0             	add    %r14,%r8
    1769:	4d 01 c6             	add    %r8,%r14
    176c:	4d 01 f0             	add    %r14,%r8
    176f:	4d 01 c6             	add    %r8,%r14
    1772:	4d 01 f0             	add    %r14,%r8
    1775:	4d 01 c6             	add    %r8,%r14
    1778:	4d 01 f0             	add    %r14,%r8
    177b:	4d 01 c6             	add    %r8,%r14
    177e:	4d 01 f0             	add    %r14,%r8
    1781:	4d 01 c6             	add    %r8,%r14
    1784:	4d 01 f0             	add    %r14,%r8
    1787:	4d 01 c6             	add    %r8,%r14
    178a:	4d 01 f0             	add    %r14,%r8
    178d:	4d 01 c6             	add    %r8,%r14
    1790:	4d 01 f0             	add    %r14,%r8
    1793:	4d 01 c6             	add    %r8,%r14
    1796:	4d 01 f0             	add    %r14,%r8
    1799:	4d 01 c6             	add    %r8,%r14
    179c:	4d 01 f0             	add    %r14,%r8
    179f:	4d 01 c6             	add    %r8,%r14
    17a2:	4d 01 f0             	add    %r14,%r8
    17a5:	4d 01 c6             	add    %r8,%r14
    17a8:	4d 01 f0             	add    %r14,%r8
    17ab:	4d 01 c6             	add    %r8,%r14
    17ae:	4d 01 f0             	add    %r14,%r8
    17b1:	4d 01 c6             	add    %r8,%r14
    17b4:	4d 01 f0             	add    %r14,%r8
    17b7:	4d 01 c6             	add    %r8,%r14
    17ba:	4d 01 f0             	add    %r14,%r8
    17bd:	4d 01 c6             	add    %r8,%r14
    17c0:	4d 01 f0             	add    %r14,%r8
    17c3:	4d 01 c6             	add    %r8,%r14
    17c6:	4d 01 f0             	add    %r14,%r8
    17c9:	4d 01 c6             	add    %r8,%r14
    17cc:	4d 01 f0             	add    %r14,%r8
    17cf:	4d 01 c6             	add    %r8,%r14
    17d2:	4d 01 f0             	add    %r14,%r8
    17d5:	4d 01 c6             	add    %r8,%r14
    17d8:	4d 01 f0             	add    %r14,%r8
    17db:	4d 01 c6             	add    %r8,%r14
    17de:	4d 01 f0             	add    %r14,%r8
    17e1:	4d 01 c6             	add    %r8,%r14
    17e4:	4d 01 f0             	add    %r14,%r8
    17e7:	4d 01 c6             	add    %r8,%r14
    17ea:	4d 01 f0             	add    %r14,%r8
    17ed:	4d 01 c6             	add    %r8,%r14
    17f0:	49 83 c1 f8          	add    $0xfffffffffffffff8,%r9
    17f4:	0f 85 36 ff ff ff    	jne    1730 <main+0x570>
    17fa:	f6 44 24 48 07       	testb  $0x7,0x48(%rsp)
    17ff:	74 5c                	je     185d <main+0x69d>
    1801:	49 89 da             	mov    %rbx,%r10
    1804:	4c 89 fb             	mov    %r15,%rbx
    1807:	49 89 f7             	mov    %rsi,%r15
    180a:	4c 8b 4c 24 28       	mov    0x28(%rsp),%r9
    180f:	48 8b 74 24 50       	mov    0x50(%rsp),%rsi
    1814:	41 01 f1             	add    %esi,%r9d
    1817:	4c 89 fe             	mov    %r15,%rsi
    181a:	49 89 df             	mov    %rbx,%r15
    181d:	4c 89 d3             	mov    %r10,%rbx
    1820:	4c 8b 54 24 20       	mov    0x20(%rsp),%r10
    1825:	41 c0 e9 03          	shr    $0x3,%r9b
    1829:	41 fe c1             	inc    %r9b
    182c:	45 0f b6 c9          	movzbl %r9b,%r9d
    1830:	41 83 e1 07          	and    $0x7,%r9d
    1834:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
    183b:	00 00 00 00 00 
    1840:	4d 01 f0             	add    %r14,%r8
    1843:	4d 01 c6             	add    %r8,%r14
    1846:	4d 01 f0             	add    %r14,%r8
    1849:	4d 01 c6             	add    %r8,%r14
    184c:	4d 01 f0             	add    %r14,%r8
    184f:	4d 01 c6             	add    %r8,%r14
    1852:	4d 01 f0             	add    %r14,%r8
    1855:	4d 01 c6             	add    %r8,%r14
    1858:	49 ff c9             	dec    %r9
    185b:	75 e3                	jne    1840 <main+0x680>
    185d:	44 01 d7             	add    %r10d,%edi
    1860:	4d 89 c1             	mov    %r8,%r9
    1863:	83 e7 07             	and    $0x7,%edi
    1866:	74 19                	je     1881 <main+0x6c1>
    1868:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    186f:	00 
    1870:	4d 89 f1             	mov    %r14,%r9
    1873:	4d 89 c6             	mov    %r8,%r14
    1876:	4d 01 ce             	add    %r9,%r14
    1879:	48 ff cf             	dec    %rdi
    187c:	4d 89 c8             	mov    %r9,%r8
    187f:	75 ef                	jne    1870 <main+0x6b0>
    1881:	0f b6 7c 24 0f       	movzbl 0xf(%rsp),%edi
    1886:	4c 8b 44 24 30       	mov    0x30(%rsp),%r8
    188b:	48 03 44 24 18       	add    0x18(%rsp),%rax
    1890:	4f 8d 74 1f f8       	lea    -0x8(%r15,%r11,1),%r14
    1895:	4d 89 f3             	mov    %r14,%r11
    1898:	49 c1 eb 03          	shr    $0x3,%r11
    189c:	4c 89 b4 24 b0 00 00 	mov    %r14,0xb0(%rsp)
    18a3:	00 
    18a4:	49 ff c3             	inc    %r11
    18a7:	4c 89 9c 24 c0 00 00 	mov    %r11,0xc0(%rsp)
    18ae:	00 
    18af:	40 80 e7 03          	and    $0x3,%dil
    18b3:	40 02 7c 24 44       	add    0x44(%rsp),%dil
    18b8:	41 ff c8             	dec    %r8d
    18bb:	48 c1 e8 03          	shr    $0x3,%rax
    18bf:	41 83 e0 03          	and    $0x3,%r8d
    18c3:	48 ff c0             	inc    %rax
    18c6:	4d 01 c2             	add    %r8,%r10
    18c9:	40 0f b6 ff          	movzbl %dil,%edi
    18cd:	75 11                	jne    18e0 <main+0x720>
    18cf:	45 31 db             	xor    %r11d,%r11d
    18d2:	e9 9a 01 00 00       	jmp    1a71 <main+0x8b1>
    18d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    18de:	00 00 
    18e0:	4c 03 44 24 10       	add    0x10(%rsp),%r8
    18e5:	49 83 f8 07          	cmp    $0x7,%r8
    18e9:	73 15                	jae    1900 <main+0x740>
    18eb:	41 be 01 00 00 00    	mov    $0x1,%r14d
    18f1:	45 31 ff             	xor    %r15d,%r15d
    18f4:	e9 54 01 00 00       	jmp    1a4d <main+0x88d>
    18f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1900:	49 83 fe 38          	cmp    $0x38,%r14
    1904:	73 0e                	jae    1914 <main+0x754>
    1906:	41 be 01 00 00 00    	mov    $0x1,%r14d
    190c:	45 31 ff             	xor    %r15d,%r15d
    190f:	e9 e6 00 00 00       	jmp    19fa <main+0x83a>
    1914:	49 89 c0             	mov    %rax,%r8
    1917:	49 83 e0 f8          	and    $0xfffffffffffffff8,%r8
    191b:	41 be 01 00 00 00    	mov    $0x1,%r14d
    1921:	45 31 ff             	xor    %r15d,%r15d
    1924:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
    192b:	00 00 00 00 00 
    1930:	4d 01 f7             	add    %r14,%r15
    1933:	4d 01 fe             	add    %r15,%r14
    1936:	4d 01 f7             	add    %r14,%r15
    1939:	4d 01 fe             	add    %r15,%r14
    193c:	4d 01 f7             	add    %r14,%r15
    193f:	4d 01 fe             	add    %r15,%r14
    1942:	4d 01 f7             	add    %r14,%r15
    1945:	4d 01 fe             	add    %r15,%r14
    1948:	4d 01 f7             	add    %r14,%r15
    194b:	4d 01 fe             	add    %r15,%r14
    194e:	4d 01 f7             	add    %r14,%r15
    1951:	4d 01 fe             	add    %r15,%r14
    1954:	4d 01 f7             	add    %r14,%r15
    1957:	4d 01 fe             	add    %r15,%r14
    195a:	4d 01 f7             	add    %r14,%r15
    195d:	4d 01 fe             	add    %r15,%r14
    1960:	4d 01 f7             	add    %r14,%r15
    1963:	4d 01 fe             	add    %r15,%r14
    1966:	4d 01 f7             	add    %r14,%r15
    1969:	4d 01 fe             	add    %r15,%r14
    196c:	4d 01 f7             	add    %r14,%r15
    196f:	4d 01 fe             	add    %r15,%r14
    1972:	4d 01 f7             	add    %r14,%r15
    1975:	4d 01 fe             	add    %r15,%r14
    1978:	4d 01 f7             	add    %r14,%r15
    197b:	4d 01 fe             	add    %r15,%r14
    197e:	4d 01 f7             	add    %r14,%r15
    1981:	4d 01 fe             	add    %r15,%r14
    1984:	4d 01 f7             	add    %r14,%r15
    1987:	4d 01 fe             	add    %r15,%r14
    198a:	4d 01 f7             	add    %r14,%r15
    198d:	4d 01 fe             	add    %r15,%r14
    1990:	4d 01 f7             	add    %r14,%r15
    1993:	4d 01 fe             	add    %r15,%r14
    1996:	4d 01 f7             	add    %r14,%r15
    1999:	4d 01 fe             	add    %r15,%r14
    199c:	4d 01 f7             	add    %r14,%r15
    199f:	4d 01 fe             	add    %r15,%r14
    19a2:	4d 01 f7             	add    %r14,%r15
    19a5:	4d 01 fe             	add    %r15,%r14
    19a8:	4d 01 f7             	add    %r14,%r15
    19ab:	4d 01 fe             	add    %r15,%r14
    19ae:	4d 01 f7             	add    %r14,%r15
    19b1:	4d 01 fe             	add    %r15,%r14
    19b4:	4d 01 f7             	add    %r14,%r15
    19b7:	4d 01 fe             	add    %r15,%r14
    19ba:	4d 01 f7             	add    %r14,%r15
    19bd:	4d 01 fe             	add    %r15,%r14
    19c0:	4d 01 f7             	add    %r14,%r15
    19c3:	4d 01 fe             	add    %r15,%r14
    19c6:	4d 01 f7             	add    %r14,%r15
    19c9:	4d 01 fe             	add    %r15,%r14
    19cc:	4d 01 f7             	add    %r14,%r15
    19cf:	4d 01 fe             	add    %r15,%r14
    19d2:	4d 01 f7             	add    %r14,%r15
    19d5:	4d 01 fe             	add    %r15,%r14
    19d8:	4d 01 f7             	add    %r14,%r15
    19db:	4d 01 fe             	add    %r15,%r14
    19de:	4d 01 f7             	add    %r14,%r15
    19e1:	4d 01 fe             	add    %r15,%r14
    19e4:	4d 01 f7             	add    %r14,%r15
    19e7:	4d 01 fe             	add    %r15,%r14
    19ea:	4d 01 f7             	add    %r14,%r15
    19ed:	4d 01 fe             	add    %r15,%r14
    19f0:	49 83 c0 f8          	add    $0xfffffffffffffff8,%r8
    19f4:	0f 85 36 ff ff ff    	jne    1930 <main+0x770>
    19fa:	41 f6 c3 07          	test   $0x7,%r11b
    19fe:	74 4d                	je     1a4d <main+0x88d>
    1a00:	49 89 f3             	mov    %rsi,%r11
    1a03:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
    1a08:	48 8b 74 24 50       	mov    0x50(%rsp),%rsi
    1a0d:	41 01 f0             	add    %esi,%r8d
    1a10:	4c 89 de             	mov    %r11,%rsi
    1a13:	41 c0 e8 03          	shr    $0x3,%r8b
    1a17:	41 fe c0             	inc    %r8b
    1a1a:	45 0f b6 c0          	movzbl %r8b,%r8d
    1a1e:	41 83 e0 07          	and    $0x7,%r8d
    1a22:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
    1a29:	1f 84 00 00 00 00 00 
    1a30:	4d 01 f7             	add    %r14,%r15
    1a33:	4d 01 fe             	add    %r15,%r14
    1a36:	4d 01 f7             	add    %r14,%r15
    1a39:	4d 01 fe             	add    %r15,%r14
    1a3c:	4d 01 f7             	add    %r14,%r15
    1a3f:	4d 01 fe             	add    %r15,%r14
    1a42:	4d 01 f7             	add    %r14,%r15
    1a45:	4d 01 fe             	add    %r15,%r14
    1a48:	49 ff c8             	dec    %r8
    1a4b:	75 e3                	jne    1a30 <main+0x870>
    1a4d:	4d 89 fb             	mov    %r15,%r11
    1a50:	41 f6 c2 07          	test   $0x7,%r10b
    1a54:	74 1b                	je     1a71 <main+0x8b1>
    1a56:	41 89 f8             	mov    %edi,%r8d
    1a59:	41 83 e0 07          	and    $0x7,%r8d
    1a5d:	0f 1f 00             	nopl   (%rax)
    1a60:	4d 89 f3             	mov    %r14,%r11
    1a63:	4d 89 fe             	mov    %r15,%r14
    1a66:	4d 01 de             	add    %r11,%r14
    1a69:	49 ff c8             	dec    %r8
    1a6c:	4d 89 df             	mov    %r11,%r15
    1a6f:	75 ef                	jne    1a60 <main+0x8a0>
    1a71:	4c 8b 7c 24 20       	mov    0x20(%rsp),%r15
    1a76:	48 03 74 24 28       	add    0x28(%rsp),%rsi
    1a7b:	49 8d 5c 1f f8       	lea    -0x8(%r15,%rbx,1),%rbx
    1a80:	48 c1 ee 03          	shr    $0x3,%rsi
    1a84:	48 ff c6             	inc    %rsi
    1a87:	49 89 de             	mov    %rbx,%r14
    1a8a:	49 c1 ee 03          	shr    $0x3,%r14
    1a8e:	48 89 9c 24 a8 00 00 	mov    %rbx,0xa8(%rsp)
    1a95:	00 
    1a96:	49 ff c6             	inc    %r14
    1a99:	4c 89 b4 24 b8 00 00 	mov    %r14,0xb8(%rsp)
    1aa0:	00 
    1aa1:	4c 3b bc 24 88 00 00 	cmp    0x88(%rsp),%r15
    1aa8:	00 
    1aa9:	75 15                	jne    1ac0 <main+0x900>
    1aab:	45 31 f6             	xor    %r14d,%r14d
    1aae:	e9 9e 01 00 00       	jmp    1c51 <main+0xa91>
    1ab3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
    1aba:	84 00 00 00 00 00 
    1ac0:	4c 8b 44 24 10       	mov    0x10(%rsp),%r8
    1ac5:	4c 8b 94 24 80 00 00 	mov    0x80(%rsp),%r10
    1acc:	00 
    1acd:	4d 01 d0             	add    %r10,%r8
    1ad0:	49 83 f8 07          	cmp    $0x7,%r8
    1ad4:	73 1a                	jae    1af0 <main+0x930>
    1ad6:	bb 01 00 00 00       	mov    $0x1,%ebx
    1adb:	45 31 d2             	xor    %r10d,%r10d
    1ade:	e9 4a 01 00 00       	jmp    1c2d <main+0xa6d>
    1ae3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
    1aea:	84 00 00 00 00 00 
    1af0:	48 83 fb 38          	cmp    $0x38,%rbx
    1af4:	73 0d                	jae    1b03 <main+0x943>
    1af6:	bb 01 00 00 00       	mov    $0x1,%ebx
    1afb:	45 31 d2             	xor    %r10d,%r10d
    1afe:	e9 e7 00 00 00       	jmp    1bea <main+0xa2a>
    1b03:	49 89 f0             	mov    %rsi,%r8
    1b06:	49 83 e0 f8          	and    $0xfffffffffffffff8,%r8
    1b0a:	bb 01 00 00 00       	mov    $0x1,%ebx
    1b0f:	45 31 d2             	xor    %r10d,%r10d
    1b12:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
    1b19:	1f 84 00 00 00 00 00 
    1b20:	49 01 da             	add    %rbx,%r10
    1b23:	4c 01 d3             	add    %r10,%rbx
    1b26:	49 01 da             	add    %rbx,%r10
    1b29:	4c 01 d3             	add    %r10,%rbx
    1b2c:	49 01 da             	add    %rbx,%r10
    1b2f:	4c 01 d3             	add    %r10,%rbx
    1b32:	49 01 da             	add    %rbx,%r10
    1b35:	4c 01 d3             	add    %r10,%rbx
    1b38:	49 01 da             	add    %rbx,%r10
    1b3b:	4c 01 d3             	add    %r10,%rbx
    1b3e:	49 01 da             	add    %rbx,%r10
    1b41:	4c 01 d3             	add    %r10,%rbx
    1b44:	49 01 da             	add    %rbx,%r10
    1b47:	4c 01 d3             	add    %r10,%rbx
    1b4a:	49 01 da             	add    %rbx,%r10
    1b4d:	4c 01 d3             	add    %r10,%rbx
    1b50:	49 01 da             	add    %rbx,%r10
    1b53:	4c 01 d3             	add    %r10,%rbx
    1b56:	49 01 da             	add    %rbx,%r10
    1b59:	4c 01 d3             	add    %r10,%rbx
    1b5c:	49 01 da             	add    %rbx,%r10
    1b5f:	4c 01 d3             	add    %r10,%rbx
    1b62:	49 01 da             	add    %rbx,%r10
    1b65:	4c 01 d3             	add    %r10,%rbx
    1b68:	49 01 da             	add    %rbx,%r10
    1b6b:	4c 01 d3             	add    %r10,%rbx
    1b6e:	49 01 da             	add    %rbx,%r10
    1b71:	4c 01 d3             	add    %r10,%rbx
    1b74:	49 01 da             	add    %rbx,%r10
    1b77:	4c 01 d3             	add    %r10,%rbx
    1b7a:	49 01 da             	add    %rbx,%r10
    1b7d:	4c 01 d3             	add    %r10,%rbx
    1b80:	49 01 da             	add    %rbx,%r10
    1b83:	4c 01 d3             	add    %r10,%rbx
    1b86:	49 01 da             	add    %rbx,%r10
    1b89:	4c 01 d3             	add    %r10,%rbx
    1b8c:	49 01 da             	add    %rbx,%r10
    1b8f:	4c 01 d3             	add    %r10,%rbx
    1b92:	49 01 da             	add    %rbx,%r10
    1b95:	4c 01 d3             	add    %r10,%rbx
    1b98:	49 01 da             	add    %rbx,%r10
    1b9b:	4c 01 d3             	add    %r10,%rbx
    1b9e:	49 01 da             	add    %rbx,%r10
    1ba1:	4c 01 d3             	add    %r10,%rbx
    1ba4:	49 01 da             	add    %rbx,%r10
    1ba7:	4c 01 d3             	add    %r10,%rbx
    1baa:	49 01 da             	add    %rbx,%r10
    1bad:	4c 01 d3             	add    %r10,%rbx
    1bb0:	49 01 da             	add    %rbx,%r10
    1bb3:	4c 01 d3             	add    %r10,%rbx
    1bb6:	49 01 da             	add    %rbx,%r10
    1bb9:	4c 01 d3             	add    %r10,%rbx
    1bbc:	49 01 da             	add    %rbx,%r10
    1bbf:	4c 01 d3             	add    %r10,%rbx
    1bc2:	49 01 da             	add    %rbx,%r10
    1bc5:	4c 01 d3             	add    %r10,%rbx
    1bc8:	49 01 da             	add    %rbx,%r10
    1bcb:	4c 01 d3             	add    %r10,%rbx
    1bce:	49 01 da             	add    %rbx,%r10
    1bd1:	4c 01 d3             	add    %r10,%rbx
    1bd4:	49 01 da             	add    %rbx,%r10
    1bd7:	4c 01 d3             	add    %r10,%rbx
    1bda:	49 01 da             	add    %rbx,%r10
    1bdd:	4c 01 d3             	add    %r10,%rbx
    1be0:	49 83 c0 f8          	add    $0xfffffffffffffff8,%r8
    1be4:	0f 85 36 ff ff ff    	jne    1b20 <main+0x960>
    1bea:	41 f6 c6 07          	test   $0x7,%r14b
    1bee:	74 3d                	je     1c2d <main+0xa6d>
    1bf0:	4c 8b 44 24 28       	mov    0x28(%rsp),%r8
    1bf5:	4c 8b 74 24 38       	mov    0x38(%rsp),%r14
    1bfa:	45 01 f0             	add    %r14d,%r8d
    1bfd:	41 c0 e8 03          	shr    $0x3,%r8b
    1c01:	41 fe c0             	inc    %r8b
    1c04:	45 0f b6 c0          	movzbl %r8b,%r8d
    1c08:	41 83 e0 07          	and    $0x7,%r8d
    1c0c:	0f 1f 40 00          	nopl   0x0(%rax)
    1c10:	49 01 da             	add    %rbx,%r10
    1c13:	4c 01 d3             	add    %r10,%rbx
    1c16:	49 01 da             	add    %rbx,%r10
    1c19:	4c 01 d3             	add    %r10,%rbx
    1c1c:	49 01 da             	add    %rbx,%r10
    1c1f:	4c 01 d3             	add    %r10,%rbx
    1c22:	49 01 da             	add    %rbx,%r10
    1c25:	4c 01 d3             	add    %r10,%rbx
    1c28:	49 ff c8             	dec    %r8
    1c2b:	75 e3                	jne    1c10 <main+0xa50>
    1c2d:	f6 44 24 68 07       	testb  $0x7,0x68(%rsp)
    1c32:	4d 89 d6             	mov    %r10,%r14
    1c35:	74 1a                	je     1c51 <main+0xa91>
    1c37:	45 89 e8             	mov    %r13d,%r8d
    1c3a:	41 83 e0 07          	and    $0x7,%r8d
    1c3e:	66 90                	xchg   %ax,%ax
    1c40:	49 89 de             	mov    %rbx,%r14
    1c43:	4c 89 d3             	mov    %r10,%rbx
    1c46:	4c 01 f3             	add    %r14,%rbx
    1c49:	49 ff c8             	dec    %r8
    1c4c:	4d 89 f2             	mov    %r14,%r10
    1c4f:	75 ef                	jne    1c40 <main+0xa80>
    1c51:	4c 8b 44 24 30       	mov    0x30(%rsp),%r8
    1c56:	41 83 e0 02          	and    $0x2,%r8d
    1c5a:	4d 89 fa             	mov    %r15,%r10
    1c5d:	49 83 c8 01          	or     $0x1,%r8
    1c61:	4d 01 c2             	add    %r8,%r10
    1c64:	75 0a                	jne    1c70 <main+0xab0>
    1c66:	45 31 c0             	xor    %r8d,%r8d
    1c69:	e9 93 01 00 00       	jmp    1e01 <main+0xc41>
    1c6e:	66 90                	xchg   %ax,%ax
    1c70:	4c 03 44 24 10       	add    0x10(%rsp),%r8
    1c75:	49 83 f8 07          	cmp    $0x7,%r8
    1c79:	73 15                	jae    1c90 <main+0xad0>
    1c7b:	41 bf 01 00 00 00    	mov    $0x1,%r15d
    1c81:	31 db                	xor    %ebx,%ebx
    1c83:	e9 55 01 00 00       	jmp    1ddd <main+0xc1d>
    1c88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1c8f:	00 
    1c90:	48 83 7c 24 78 38    	cmpq   $0x38,0x78(%rsp)
    1c96:	73 0d                	jae    1ca5 <main+0xae5>
    1c98:	41 bf 01 00 00 00    	mov    $0x1,%r15d
    1c9e:	31 db                	xor    %ebx,%ebx
    1ca0:	e9 e5 00 00 00       	jmp    1d8a <main+0xbca>
    1ca5:	4c 8b 44 24 58       	mov    0x58(%rsp),%r8
    1caa:	41 bf 01 00 00 00    	mov    $0x1,%r15d
    1cb0:	31 db                	xor    %ebx,%ebx
    1cb2:	49 83 e0 f8          	and    $0xfffffffffffffff8,%r8
    1cb6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1cbd:	00 00 00 
    1cc0:	4c 01 fb             	add    %r15,%rbx
    1cc3:	49 01 df             	add    %rbx,%r15
    1cc6:	4c 01 fb             	add    %r15,%rbx
    1cc9:	49 01 df             	add    %rbx,%r15
    1ccc:	4c 01 fb             	add    %r15,%rbx
    1ccf:	49 01 df             	add    %rbx,%r15
    1cd2:	4c 01 fb             	add    %r15,%rbx
    1cd5:	49 01 df             	add    %rbx,%r15
    1cd8:	4c 01 fb             	add    %r15,%rbx
    1cdb:	49 01 df             	add    %rbx,%r15
    1cde:	4c 01 fb             	add    %r15,%rbx
    1ce1:	49 01 df             	add    %rbx,%r15
    1ce4:	4c 01 fb             	add    %r15,%rbx
    1ce7:	49 01 df             	add    %rbx,%r15
    1cea:	4c 01 fb             	add    %r15,%rbx
    1ced:	49 01 df             	add    %rbx,%r15
    1cf0:	4c 01 fb             	add    %r15,%rbx
    1cf3:	49 01 df             	add    %rbx,%r15
    1cf6:	4c 01 fb             	add    %r15,%rbx
    1cf9:	49 01 df             	add    %rbx,%r15
    1cfc:	4c 01 fb             	add    %r15,%rbx
    1cff:	49 01 df             	add    %rbx,%r15
    1d02:	4c 01 fb             	add    %r15,%rbx
    1d05:	49 01 df             	add    %rbx,%r15
    1d08:	4c 01 fb             	add    %r15,%rbx
    1d0b:	49 01 df             	add    %rbx,%r15
    1d0e:	4c 01 fb             	add    %r15,%rbx
    1d11:	49 01 df             	add    %rbx,%r15
    1d14:	4c 01 fb             	add    %r15,%rbx
    1d17:	49 01 df             	add    %rbx,%r15
    1d1a:	4c 01 fb             	add    %r15,%rbx
    1d1d:	49 01 df             	add    %rbx,%r15
    1d20:	4c 01 fb             	add    %r15,%rbx
    1d23:	49 01 df             	add    %rbx,%r15
    1d26:	4c 01 fb             	add    %r15,%rbx
    1d29:	49 01 df             	add    %rbx,%r15
    1d2c:	4c 01 fb             	add    %r15,%rbx
    1d2f:	49 01 df             	add    %rbx,%r15
    1d32:	4c 01 fb             	add    %r15,%rbx
    1d35:	49 01 df             	add    %rbx,%r15
    1d38:	4c 01 fb             	add    %r15,%rbx
    1d3b:	49 01 df             	add    %rbx,%r15
    1d3e:	4c 01 fb             	add    %r15,%rbx
    1d41:	49 01 df             	add    %rbx,%r15
    1d44:	4c 01 fb             	add    %r15,%rbx
    1d47:	49 01 df             	add    %rbx,%r15
    1d4a:	4c 01 fb             	add    %r15,%rbx
    1d4d:	49 01 df             	add    %rbx,%r15
    1d50:	4c 01 fb             	add    %r15,%rbx
    1d53:	49 01 df             	add    %rbx,%r15
    1d56:	4c 01 fb             	add    %r15,%rbx
    1d59:	49 01 df             	add    %rbx,%r15
    1d5c:	4c 01 fb             	add    %r15,%rbx
    1d5f:	49 01 df             	add    %rbx,%r15
    1d62:	4c 01 fb             	add    %r15,%rbx
    1d65:	49 01 df             	add    %rbx,%r15
    1d68:	4c 01 fb             	add    %r15,%rbx
    1d6b:	49 01 df             	add    %rbx,%r15
    1d6e:	4c 01 fb             	add    %r15,%rbx
    1d71:	49 01 df             	add    %rbx,%r15
    1d74:	4c 01 fb             	add    %r15,%rbx
    1d77:	49 01 df             	add    %rbx,%r15
    1d7a:	4c 01 fb             	add    %r15,%rbx
    1d7d:	49 01 df             	add    %rbx,%r15
    1d80:	49 83 c0 f8          	add    $0xfffffffffffffff8,%r8
    1d84:	0f 85 36 ff ff ff    	jne    1cc0 <main+0xb00>
    1d8a:	f6 44 24 60 07       	testb  $0x7,0x60(%rsp)
    1d8f:	74 4c                	je     1ddd <main+0xc1d>
    1d91:	4c 89 94 24 90 00 00 	mov    %r10,0x90(%rsp)
    1d98:	00 
    1d99:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
    1d9e:	4c 8b 54 24 38       	mov    0x38(%rsp),%r10
    1da3:	45 01 d0             	add    %r10d,%r8d
    1da6:	4c 8b 94 24 90 00 00 	mov    0x90(%rsp),%r10
    1dad:	00 
    1dae:	41 c0 e8 03          	shr    $0x3,%r8b
    1db2:	41 fe c0             	inc    %r8b
    1db5:	45 0f b6 c0          	movzbl %r8b,%r8d
    1db9:	41 83 e0 07          	and    $0x7,%r8d
    1dbd:	0f 1f 00             	nopl   (%rax)
    1dc0:	4c 01 fb             	add    %r15,%rbx
    1dc3:	49 01 df             	add    %rbx,%r15
    1dc6:	4c 01 fb             	add    %r15,%rbx
    1dc9:	49 01 df             	add    %rbx,%r15
    1dcc:	4c 01 fb             	add    %r15,%rbx
    1dcf:	49 01 df             	add    %rbx,%r15
    1dd2:	4c 01 fb             	add    %r15,%rbx
    1dd5:	49 01 df             	add    %rbx,%r15
    1dd8:	49 ff c8             	dec    %r8
    1ddb:	75 e3                	jne    1dc0 <main+0xc00>
    1ddd:	49 89 d8             	mov    %rbx,%r8
    1de0:	41 f6 c2 07          	test   $0x7,%r10b
    1de4:	74 1b                	je     1e01 <main+0xc41>
    1de6:	41 89 ea             	mov    %ebp,%r10d
    1de9:	41 83 e2 07          	and    $0x7,%r10d
    1ded:	0f 1f 00             	nopl   (%rax)
    1df0:	4d 89 f8             	mov    %r15,%r8
    1df3:	49 89 df             	mov    %rbx,%r15
    1df6:	4d 01 c7             	add    %r8,%r15
    1df9:	49 ff ca             	dec    %r10
    1dfc:	4c 89 c3             	mov    %r8,%rbx
    1dff:	75 ef                	jne    1df0 <main+0xc30>
    1e01:	4c 8b 54 24 20       	mov    0x20(%rsp),%r10
    1e06:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
    1e0b:	41 f7 d7             	not    %r15d
    1e0e:	41 83 e7 02          	and    $0x2,%r15d
    1e12:	4d 01 fa             	add    %r15,%r10
    1e15:	75 09                	jne    1e20 <main+0xc60>
    1e17:	31 c9                	xor    %ecx,%ecx
    1e19:	e9 93 01 00 00       	jmp    1fb1 <main+0xdf1>
    1e1e:	66 90                	xchg   %ax,%ax
    1e20:	4c 8b 54 24 10       	mov    0x10(%rsp),%r10
    1e25:	4d 01 fa             	add    %r15,%r10
    1e28:	49 83 fa 07          	cmp    $0x7,%r10
    1e2c:	73 12                	jae    1e40 <main+0xc80>
    1e2e:	41 ba 01 00 00 00    	mov    $0x1,%r10d
    1e34:	31 db                	xor    %ebx,%ebx
    1e36:	e9 52 01 00 00       	jmp    1f8d <main+0xdcd>
    1e3b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1e40:	48 83 7c 24 70 38    	cmpq   $0x38,0x70(%rsp)
    1e46:	73 0d                	jae    1e55 <main+0xc95>
    1e48:	41 ba 01 00 00 00    	mov    $0x1,%r10d
    1e4e:	31 db                	xor    %ebx,%ebx
    1e50:	e9 e5 00 00 00       	jmp    1f3a <main+0xd7a>
    1e55:	48 83 e1 f8          	and    $0xfffffffffffffff8,%rcx
    1e59:	41 ba 01 00 00 00    	mov    $0x1,%r10d
    1e5f:	31 db                	xor    %ebx,%ebx
    1e61:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
    1e68:	0f 1f 84 00 00 00 00 
    1e6f:	00 
    1e70:	4c 01 d3             	add    %r10,%rbx
    1e73:	49 01 da             	add    %rbx,%r10
    1e76:	4c 01 d3             	add    %r10,%rbx
    1e79:	49 01 da             	add    %rbx,%r10
    1e7c:	4c 01 d3             	add    %r10,%rbx
    1e7f:	49 01 da             	add    %rbx,%r10
    1e82:	4c 01 d3             	add    %r10,%rbx
    1e85:	49 01 da             	add    %rbx,%r10
    1e88:	4c 01 d3             	add    %r10,%rbx
    1e8b:	49 01 da             	add    %rbx,%r10
    1e8e:	4c 01 d3             	add    %r10,%rbx
    1e91:	49 01 da             	add    %rbx,%r10
    1e94:	4c 01 d3             	add    %r10,%rbx
    1e97:	49 01 da             	add    %rbx,%r10
    1e9a:	4c 01 d3             	add    %r10,%rbx
    1e9d:	49 01 da             	add    %rbx,%r10
    1ea0:	4c 01 d3             	add    %r10,%rbx
    1ea3:	49 01 da             	add    %rbx,%r10
    1ea6:	4c 01 d3             	add    %r10,%rbx
    1ea9:	49 01 da             	add    %rbx,%r10
    1eac:	4c 01 d3             	add    %r10,%rbx
    1eaf:	49 01 da             	add    %rbx,%r10
    1eb2:	4c 01 d3             	add    %r10,%rbx
    1eb5:	49 01 da             	add    %rbx,%r10
    1eb8:	4c 01 d3             	add    %r10,%rbx
    1ebb:	49 01 da             	add    %rbx,%r10
    1ebe:	4c 01 d3             	add    %r10,%rbx
    1ec1:	49 01 da             	add    %rbx,%r10
    1ec4:	4c 01 d3             	add    %r10,%rbx
    1ec7:	49 01 da             	add    %rbx,%r10
    1eca:	4c 01 d3             	add    %r10,%rbx
    1ecd:	49 01 da             	add    %rbx,%r10
    1ed0:	4c 01 d3             	add    %r10,%rbx
    1ed3:	49 01 da             	add    %rbx,%r10
    1ed6:	4c 01 d3             	add    %r10,%rbx
    1ed9:	49 01 da             	add    %rbx,%r10
    1edc:	4c 01 d3             	add    %r10,%rbx
    1edf:	49 01 da             	add    %rbx,%r10
    1ee2:	4c 01 d3             	add    %r10,%rbx
    1ee5:	49 01 da             	add    %rbx,%r10
    1ee8:	4c 01 d3             	add    %r10,%rbx
    1eeb:	49 01 da             	add    %rbx,%r10
    1eee:	4c 01 d3             	add    %r10,%rbx
    1ef1:	49 01 da             	add    %rbx,%r10
    1ef4:	4c 01 d3             	add    %r10,%rbx
    1ef7:	49 01 da             	add    %rbx,%r10
    1efa:	4c 01 d3             	add    %r10,%rbx
    1efd:	49 01 da             	add    %rbx,%r10
    1f00:	4c 01 d3             	add    %r10,%rbx
    1f03:	49 01 da             	add    %rbx,%r10
    1f06:	4c 01 d3             	add    %r10,%rbx
    1f09:	49 01 da             	add    %rbx,%r10
    1f0c:	4c 01 d3             	add    %r10,%rbx
    1f0f:	49 01 da             	add    %rbx,%r10
    1f12:	4c 01 d3             	add    %r10,%rbx
    1f15:	49 01 da             	add    %rbx,%r10
    1f18:	4c 01 d3             	add    %r10,%rbx
    1f1b:	49 01 da             	add    %rbx,%r10
    1f1e:	4c 01 d3             	add    %r10,%rbx
    1f21:	49 01 da             	add    %rbx,%r10
    1f24:	4c 01 d3             	add    %r10,%rbx
    1f27:	49 01 da             	add    %rbx,%r10
    1f2a:	4c 01 d3             	add    %r10,%rbx
    1f2d:	49 01 da             	add    %rbx,%r10
    1f30:	48 83 c1 f8          	add    $0xfffffffffffffff8,%rcx
    1f34:	0f 85 36 ff ff ff    	jne    1e70 <main+0xcb0>
    1f3a:	f6 44 24 48 07       	testb  $0x7,0x48(%rsp)
    1f3f:	74 4c                	je     1f8d <main+0xdcd>
    1f41:	48 89 74 24 48       	mov    %rsi,0x48(%rsp)
    1f46:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
    1f4b:	48 8b 74 24 50       	mov    0x50(%rsp),%rsi
    1f50:	01 f1                	add    %esi,%ecx
    1f52:	48 8b 74 24 48       	mov    0x48(%rsp),%rsi
    1f57:	c0 e9 03             	shr    $0x3,%cl
    1f5a:	fe c1                	inc    %cl
    1f5c:	0f b6 c9             	movzbl %cl,%ecx
    1f5f:	83 e1 07             	and    $0x7,%ecx
    1f62:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
    1f69:	1f 84 00 00 00 00 00 
    1f70:	4c 01 d3             	add    %r10,%rbx
    1f73:	49 01 da             	add    %rbx,%r10
    1f76:	4c 01 d3             	add    %r10,%rbx
    1f79:	49 01 da             	add    %rbx,%r10
    1f7c:	4c 01 d3             	add    %r10,%rbx
    1f7f:	49 01 da             	add    %rbx,%r10
    1f82:	4c 01 d3             	add    %r10,%rbx
    1f85:	49 01 da             	add    %rbx,%r10
    1f88:	48 ff c9             	dec    %rcx
    1f8b:	75 e3                	jne    1f70 <main+0xdb0>
    1f8d:	44 03 7c 24 20       	add    0x20(%rsp),%r15d
    1f92:	48 89 d9             	mov    %rbx,%rcx
    1f95:	41 83 e7 07          	and    $0x7,%r15d
    1f99:	74 16                	je     1fb1 <main+0xdf1>
    1f9b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1fa0:	4c 89 d1             	mov    %r10,%rcx
    1fa3:	49 89 da             	mov    %rbx,%r10
    1fa6:	49 01 ca             	add    %rcx,%r10
    1fa9:	49 ff cf             	dec    %r15
    1fac:	48 89 cb             	mov    %rcx,%rbx
    1faf:	75 ef                	jne    1fa0 <main+0xde0>
    1fb1:	4c 8b 54 24 30       	mov    0x30(%rsp),%r10
    1fb6:	4c 8b 7c 24 20       	mov    0x20(%rsp),%r15
    1fbb:	41 ff ca             	dec    %r10d
    1fbe:	41 83 e2 03          	and    $0x3,%r10d
    1fc2:	4d 01 d7             	add    %r10,%r15
    1fc5:	75 09                	jne    1fd0 <main+0xe10>
    1fc7:	31 c0                	xor    %eax,%eax
    1fc9:	e9 83 01 00 00       	jmp    2151 <main+0xf91>
    1fce:	66 90                	xchg   %ax,%ax
    1fd0:	4c 03 54 24 10       	add    0x10(%rsp),%r10
    1fd5:	49 83 fa 07          	cmp    $0x7,%r10
    1fd9:	73 15                	jae    1ff0 <main+0xe30>
    1fdb:	41 ba 01 00 00 00    	mov    $0x1,%r10d
    1fe1:	31 db                	xor    %ebx,%ebx
    1fe3:	e9 45 01 00 00       	jmp    212d <main+0xf6d>
    1fe8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1fef:	00 
    1ff0:	48 83 bc 24 b0 00 00 	cmpq   $0x38,0xb0(%rsp)
    1ff7:	00 38 
    1ff9:	73 0d                	jae    2008 <main+0xe48>
    1ffb:	41 ba 01 00 00 00    	mov    $0x1,%r10d
    2001:	31 db                	xor    %ebx,%ebx
    2003:	e9 e2 00 00 00       	jmp    20ea <main+0xf2a>
    2008:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
    200c:	41 ba 01 00 00 00    	mov    $0x1,%r10d
    2012:	31 db                	xor    %ebx,%ebx
    2014:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
    201b:	00 00 00 00 00 
    2020:	4c 01 d3             	add    %r10,%rbx
    2023:	49 01 da             	add    %rbx,%r10
    2026:	4c 01 d3             	add    %r10,%rbx
    2029:	49 01 da             	add    %rbx,%r10
    202c:	4c 01 d3             	add    %r10,%rbx
    202f:	49 01 da             	add    %rbx,%r10
    2032:	4c 01 d3             	add    %r10,%rbx
    2035:	49 01 da             	add    %rbx,%r10
    2038:	4c 01 d3             	add    %r10,%rbx
    203b:	49 01 da             	add    %rbx,%r10
    203e:	4c 01 d3             	add    %r10,%rbx
    2041:	49 01 da             	add    %rbx,%r10
    2044:	4c 01 d3             	add    %r10,%rbx
    2047:	49 01 da             	add    %rbx,%r10
    204a:	4c 01 d3             	add    %r10,%rbx
    204d:	49 01 da             	add    %rbx,%r10
    2050:	4c 01 d3             	add    %r10,%rbx
    2053:	49 01 da             	add    %rbx,%r10
    2056:	4c 01 d3             	add    %r10,%rbx
    2059:	49 01 da             	add    %rbx,%r10
    205c:	4c 01 d3             	add    %r10,%rbx
    205f:	49 01 da             	add    %rbx,%r10
    2062:	4c 01 d3             	add    %r10,%rbx
    2065:	49 01 da             	add    %rbx,%r10
    2068:	4c 01 d3             	add    %r10,%rbx
    206b:	49 01 da             	add    %rbx,%r10
    206e:	4c 01 d3             	add    %r10,%rbx
    2071:	49 01 da             	add    %rbx,%r10
    2074:	4c 01 d3             	add    %r10,%rbx
    2077:	49 01 da             	add    %rbx,%r10
    207a:	4c 01 d3             	add    %r10,%rbx
    207d:	49 01 da             	add    %rbx,%r10
    2080:	4c 01 d3             	add    %r10,%rbx
    2083:	49 01 da             	add    %rbx,%r10
    2086:	4c 01 d3             	add    %r10,%rbx
    2089:	49 01 da             	add    %rbx,%r10
    208c:	4c 01 d3             	add    %r10,%rbx
    208f:	49 01 da             	add    %rbx,%r10
    2092:	4c 01 d3             	add    %r10,%rbx
    2095:	49 01 da             	add    %rbx,%r10
    2098:	4c 01 d3             	add    %r10,%rbx
    209b:	49 01 da             	add    %rbx,%r10
    209e:	4c 01 d3             	add    %r10,%rbx
    20a1:	49 01 da             	add    %rbx,%r10
    20a4:	4c 01 d3             	add    %r10,%rbx
    20a7:	49 01 da             	add    %rbx,%r10
    20aa:	4c 01 d3             	add    %r10,%rbx
    20ad:	49 01 da             	add    %rbx,%r10
    20b0:	4c 01 d3             	add    %r10,%rbx
    20b3:	49 01 da             	add    %rbx,%r10
    20b6:	4c 01 d3             	add    %r10,%rbx
    20b9:	49 01 da             	add    %rbx,%r10
    20bc:	4c 01 d3             	add    %r10,%rbx
    20bf:	49 01 da             	add    %rbx,%r10
    20c2:	4c 01 d3             	add    %r10,%rbx
    20c5:	49 01 da             	add    %rbx,%r10
    20c8:	4c 01 d3             	add    %r10,%rbx
    20cb:	49 01 da             	add    %rbx,%r10
    20ce:	4c 01 d3             	add    %r10,%rbx
    20d1:	49 01 da             	add    %rbx,%r10
    20d4:	4c 01 d3             	add    %r10,%rbx
    20d7:	49 01 da             	add    %rbx,%r10
    20da:	4c 01 d3             	add    %r10,%rbx
    20dd:	49 01 da             	add    %rbx,%r10
    20e0:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
    20e4:	0f 85 36 ff ff ff    	jne    2020 <main+0xe60>
    20ea:	f6 84 24 c0 00 00 00 	testb  $0x7,0xc0(%rsp)
    20f1:	07 
    20f2:	74 39                	je     212d <main+0xf6d>
    20f4:	48 8b 44 24 50       	mov    0x50(%rsp),%rax
    20f9:	03 44 24 18          	add    0x18(%rsp),%eax
    20fd:	c0 e8 03             	shr    $0x3,%al
    2100:	fe c0                	inc    %al
    2102:	0f b6 c0             	movzbl %al,%eax
    2105:	83 e0 07             	and    $0x7,%eax
    2108:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    210f:	00 
    2110:	4c 01 d3             	add    %r10,%rbx
    2113:	49 01 da             	add    %rbx,%r10
    2116:	4c 01 d3             	add    %r10,%rbx
    2119:	49 01 da             	add    %rbx,%r10
    211c:	4c 01 d3             	add    %r10,%rbx
    211f:	49 01 da             	add    %rbx,%r10
    2122:	4c 01 d3             	add    %r10,%rbx
    2125:	49 01 da             	add    %rbx,%r10
    2128:	48 ff c8             	dec    %rax
    212b:	75 e3                	jne    2110 <main+0xf50>
    212d:	48 89 d8             	mov    %rbx,%rax
    2130:	41 f6 c7 07          	test   $0x7,%r15b
    2134:	74 1b                	je     2151 <main+0xf91>
    2136:	83 e7 07             	and    $0x7,%edi
    2139:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2140:	4c 89 d0             	mov    %r10,%rax
    2143:	49 89 da             	mov    %rbx,%r10
    2146:	49 01 c2             	add    %rax,%r10
    2149:	48 ff cf             	dec    %rdi
    214c:	48 89 c3             	mov    %rax,%rbx
    214f:	75 ef                	jne    2140 <main+0xf80>
    2151:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
    2156:	48 3b 9c 24 88 00 00 	cmp    0x88(%rsp),%rbx
    215d:	00 
    215e:	75 10                	jne    2170 <main+0xfb0>
    2160:	31 f6                	xor    %esi,%esi
    2162:	e9 8a 01 00 00       	jmp    22f1 <main+0x1131>
    2167:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    216e:	00 00 
    2170:	48 8b bc 24 80 00 00 	mov    0x80(%rsp),%rdi
    2177:	00 
    2178:	48 03 7c 24 10       	add    0x10(%rsp),%rdi
    217d:	48 83 ff 07          	cmp    $0x7,%rdi
    2181:	73 0d                	jae    2190 <main+0xfd0>
    2183:	bf 01 00 00 00       	mov    $0x1,%edi
    2188:	45 31 d2             	xor    %r10d,%r10d
    218b:	e9 3d 01 00 00       	jmp    22cd <main+0x110d>
    2190:	48 83 bc 24 a8 00 00 	cmpq   $0x38,0xa8(%rsp)
    2197:	00 38 
    2199:	73 0d                	jae    21a8 <main+0xfe8>
    219b:	bf 01 00 00 00       	mov    $0x1,%edi
    21a0:	45 31 d2             	xor    %r10d,%r10d
    21a3:	e9 e2 00 00 00       	jmp    228a <main+0x10ca>
    21a8:	48 83 e6 f8          	and    $0xfffffffffffffff8,%rsi
    21ac:	bf 01 00 00 00       	mov    $0x1,%edi
    21b1:	45 31 d2             	xor    %r10d,%r10d
    21b4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
    21bb:	00 00 00 00 00 
    21c0:	49 01 fa             	add    %rdi,%r10
    21c3:	4c 01 d7             	add    %r10,%rdi
    21c6:	49 01 fa             	add    %rdi,%r10
    21c9:	4c 01 d7             	add    %r10,%rdi
    21cc:	49 01 fa             	add    %rdi,%r10
    21cf:	4c 01 d7             	add    %r10,%rdi
    21d2:	49 01 fa             	add    %rdi,%r10
    21d5:	4c 01 d7             	add    %r10,%rdi
    21d8:	49 01 fa             	add    %rdi,%r10
    21db:	4c 01 d7             	add    %r10,%rdi
    21de:	49 01 fa             	add    %rdi,%r10
    21e1:	4c 01 d7             	add    %r10,%rdi
    21e4:	49 01 fa             	add    %rdi,%r10
    21e7:	4c 01 d7             	add    %r10,%rdi
    21ea:	49 01 fa             	add    %rdi,%r10
    21ed:	4c 01 d7             	add    %r10,%rdi
    21f0:	49 01 fa             	add    %rdi,%r10
    21f3:	4c 01 d7             	add    %r10,%rdi
    21f6:	49 01 fa             	add    %rdi,%r10
    21f9:	4c 01 d7             	add    %r10,%rdi
    21fc:	49 01 fa             	add    %rdi,%r10
    21ff:	4c 01 d7             	add    %r10,%rdi
    2202:	49 01 fa             	add    %rdi,%r10
    2205:	4c 01 d7             	add    %r10,%rdi
    2208:	49 01 fa             	add    %rdi,%r10
    220b:	4c 01 d7             	add    %r10,%rdi
    220e:	49 01 fa             	add    %rdi,%r10
    2211:	4c 01 d7             	add    %r10,%rdi
    2214:	49 01 fa             	add    %rdi,%r10
    2217:	4c 01 d7             	add    %r10,%rdi
    221a:	49 01 fa             	add    %rdi,%r10
    221d:	4c 01 d7             	add    %r10,%rdi
    2220:	49 01 fa             	add    %rdi,%r10
    2223:	4c 01 d7             	add    %r10,%rdi
    2226:	49 01 fa             	add    %rdi,%r10
    2229:	4c 01 d7             	add    %r10,%rdi
    222c:	49 01 fa             	add    %rdi,%r10
    222f:	4c 01 d7             	add    %r10,%rdi
    2232:	49 01 fa             	add    %rdi,%r10
    2235:	4c 01 d7             	add    %r10,%rdi
    2238:	49 01 fa             	add    %rdi,%r10
    223b:	4c 01 d7             	add    %r10,%rdi
    223e:	49 01 fa             	add    %rdi,%r10
    2241:	4c 01 d7             	add    %r10,%rdi
    2244:	49 01 fa             	add    %rdi,%r10
    2247:	4c 01 d7             	add    %r10,%rdi
    224a:	49 01 fa             	add    %rdi,%r10
    224d:	4c 01 d7             	add    %r10,%rdi
    2250:	49 01 fa             	add    %rdi,%r10
    2253:	4c 01 d7             	add    %r10,%rdi
    2256:	49 01 fa             	add    %rdi,%r10
    2259:	4c 01 d7             	add    %r10,%rdi
    225c:	49 01 fa             	add    %rdi,%r10
    225f:	4c 01 d7             	add    %r10,%rdi
    2262:	49 01 fa             	add    %rdi,%r10
    2265:	4c 01 d7             	add    %r10,%rdi
    2268:	49 01 fa             	add    %rdi,%r10
    226b:	4c 01 d7             	add    %r10,%rdi
    226e:	49 01 fa             	add    %rdi,%r10
    2271:	4c 01 d7             	add    %r10,%rdi
    2274:	49 01 fa             	add    %rdi,%r10
    2277:	4c 01 d7             	add    %r10,%rdi
    227a:	49 01 fa             	add    %rdi,%r10
    227d:	4c 01 d7             	add    %r10,%rdi
    2280:	48 83 c6 f8          	add    $0xfffffffffffffff8,%rsi
    2284:	0f 85 36 ff ff ff    	jne    21c0 <main+0x1000>
    228a:	f6 84 24 b8 00 00 00 	testb  $0x7,0xb8(%rsp)
    2291:	07 
    2292:	74 39                	je     22cd <main+0x110d>
    2294:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
    2299:	4c 8b 7c 24 38       	mov    0x38(%rsp),%r15
    229e:	44 01 fe             	add    %r15d,%esi
    22a1:	40 c0 ee 03          	shr    $0x3,%sil
    22a5:	40 fe c6             	inc    %sil
    22a8:	40 0f b6 f6          	movzbl %sil,%esi
    22ac:	83 e6 07             	and    $0x7,%esi
    22af:	90                   	nop
    22b0:	49 01 fa             	add    %rdi,%r10
    22b3:	4c 01 d7             	add    %r10,%rdi
    22b6:	49 01 fa             	add    %rdi,%r10
    22b9:	4c 01 d7             	add    %r10,%rdi
    22bc:	49 01 fa             	add    %rdi,%r10
    22bf:	4c 01 d7             	add    %r10,%rdi
    22c2:	49 01 fa             	add    %rdi,%r10
    22c5:	4c 01 d7             	add    %r10,%rdi
    22c8:	48 ff ce             	dec    %rsi
    22cb:	75 e3                	jne    22b0 <main+0x10f0>
    22cd:	f6 44 24 68 07       	testb  $0x7,0x68(%rsp)
    22d2:	4c 89 d6             	mov    %r10,%rsi
    22d5:	74 1a                	je     22f1 <main+0x1131>
    22d7:	41 83 e5 07          	and    $0x7,%r13d
    22db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    22e0:	48 89 fe             	mov    %rdi,%rsi
    22e3:	4c 89 d7             	mov    %r10,%rdi
    22e6:	48 01 f7             	add    %rsi,%rdi
    22e9:	49 ff cd             	dec    %r13
    22ec:	49 89 f2             	mov    %rsi,%r10
    22ef:	75 ef                	jne    22e0 <main+0x1120>
    22f1:	48 8b 7c 24 30       	mov    0x30(%rsp),%rdi
    22f6:	83 e7 02             	and    $0x2,%edi
    22f9:	49 89 da             	mov    %rbx,%r10
    22fc:	48 83 cf 01          	or     $0x1,%rdi
    2300:	49 01 fa             	add    %rdi,%r10
    2303:	0f 84 27 ef ff ff    	je     1230 <main+0x70>
    2309:	48 03 7c 24 10       	add    0x10(%rsp),%rdi
    230e:	48 83 ff 07          	cmp    $0x7,%rdi
    2312:	73 0c                	jae    2320 <main+0x1160>
    2314:	bf 01 00 00 00       	mov    $0x1,%edi
    2319:	31 db                	xor    %ebx,%ebx
    231b:	e9 3d 01 00 00       	jmp    245d <main+0x129d>
    2320:	48 83 7c 24 78 38    	cmpq   $0x38,0x78(%rsp)
    2326:	73 0c                	jae    2334 <main+0x1174>
    2328:	bf 01 00 00 00       	mov    $0x1,%edi
    232d:	31 db                	xor    %ebx,%ebx
    232f:	e9 e6 00 00 00       	jmp    241a <main+0x125a>
    2334:	4c 8b 7c 24 58       	mov    0x58(%rsp),%r15
    2339:	bf 01 00 00 00       	mov    $0x1,%edi
    233e:	31 db                	xor    %ebx,%ebx
    2340:	49 83 e7 f8          	and    $0xfffffffffffffff8,%r15
    2344:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
    234b:	00 00 00 00 00 
    2350:	48 01 fb             	add    %rdi,%rbx
    2353:	48 01 df             	add    %rbx,%rdi
    2356:	48 01 fb             	add    %rdi,%rbx
    2359:	48 01 df             	add    %rbx,%rdi
    235c:	48 01 fb             	add    %rdi,%rbx
    235f:	48 01 df             	add    %rbx,%rdi
    2362:	48 01 fb             	add    %rdi,%rbx
    2365:	48 01 df             	add    %rbx,%rdi
    2368:	48 01 fb             	add    %rdi,%rbx
    236b:	48 01 df             	add    %rbx,%rdi
    236e:	48 01 fb             	add    %rdi,%rbx
    2371:	48 01 df             	add    %rbx,%rdi
    2374:	48 01 fb             	add    %rdi,%rbx
    2377:	48 01 df             	add    %rbx,%rdi
    237a:	48 01 fb             	add    %rdi,%rbx
    237d:	48 01 df             	add    %rbx,%rdi
    2380:	48 01 fb             	add    %rdi,%rbx
    2383:	48 01 df             	add    %rbx,%rdi
    2386:	48 01 fb             	add    %rdi,%rbx
    2389:	48 01 df             	add    %rbx,%rdi
    238c:	48 01 fb             	add    %rdi,%rbx
    238f:	48 01 df             	add    %rbx,%rdi
    2392:	48 01 fb             	add    %rdi,%rbx
    2395:	48 01 df             	add    %rbx,%rdi
    2398:	48 01 fb             	add    %rdi,%rbx
    239b:	48 01 df             	add    %rbx,%rdi
    239e:	48 01 fb             	add    %rdi,%rbx
    23a1:	48 01 df             	add    %rbx,%rdi
    23a4:	48 01 fb             	add    %rdi,%rbx
    23a7:	48 01 df             	add    %rbx,%rdi
    23aa:	48 01 fb             	add    %rdi,%rbx
    23ad:	48 01 df             	add    %rbx,%rdi
    23b0:	48 01 fb             	add    %rdi,%rbx
    23b3:	48 01 df             	add    %rbx,%rdi
    23b6:	48 01 fb             	add    %rdi,%rbx
    23b9:	48 01 df             	add    %rbx,%rdi
    23bc:	48 01 fb             	add    %rdi,%rbx
    23bf:	48 01 df             	add    %rbx,%rdi
    23c2:	48 01 fb             	add    %rdi,%rbx
    23c5:	48 01 df             	add    %rbx,%rdi
    23c8:	48 01 fb             	add    %rdi,%rbx
    23cb:	48 01 df             	add    %rbx,%rdi
    23ce:	48 01 fb             	add    %rdi,%rbx
    23d1:	48 01 df             	add    %rbx,%rdi
    23d4:	48 01 fb             	add    %rdi,%rbx
    23d7:	48 01 df             	add    %rbx,%rdi
    23da:	48 01 fb             	add    %rdi,%rbx
    23dd:	48 01 df             	add    %rbx,%rdi
    23e0:	48 01 fb             	add    %rdi,%rbx
    23e3:	48 01 df             	add    %rbx,%rdi
    23e6:	48 01 fb             	add    %rdi,%rbx
    23e9:	48 01 df             	add    %rbx,%rdi
    23ec:	48 01 fb             	add    %rdi,%rbx
    23ef:	48 01 df             	add    %rbx,%rdi
    23f2:	48 01 fb             	add    %rdi,%rbx
    23f5:	48 01 df             	add    %rbx,%rdi
    23f8:	48 01 fb             	add    %rdi,%rbx
    23fb:	48 01 df             	add    %rbx,%rdi
    23fe:	48 01 fb             	add    %rdi,%rbx
    2401:	48 01 df             	add    %rbx,%rdi
    2404:	48 01 fb             	add    %rdi,%rbx
    2407:	48 01 df             	add    %rbx,%rdi
    240a:	48 01 fb             	add    %rdi,%rbx
    240d:	48 01 df             	add    %rbx,%rdi
    2410:	49 83 c7 f8          	add    $0xfffffffffffffff8,%r15
    2414:	0f 85 36 ff ff ff    	jne    2350 <main+0x1190>
    241a:	f6 44 24 60 07       	testb  $0x7,0x60(%rsp)
    241f:	74 3c                	je     245d <main+0x129d>
    2421:	4c 8b 7c 24 38       	mov    0x38(%rsp),%r15
    2426:	44 03 7c 24 18       	add    0x18(%rsp),%r15d
    242b:	41 c0 ef 03          	shr    $0x3,%r15b
    242f:	41 fe c7             	inc    %r15b
    2432:	45 0f b6 ff          	movzbl %r15b,%r15d
    2436:	41 83 e7 07          	and    $0x7,%r15d
    243a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    2440:	48 01 fb             	add    %rdi,%rbx
    2443:	48 01 df             	add    %rbx,%rdi
    2446:	48 01 fb             	add    %rdi,%rbx
    2449:	48 01 df             	add    %rbx,%rdi
    244c:	48 01 fb             	add    %rdi,%rbx
    244f:	48 01 df             	add    %rbx,%rdi
    2452:	48 01 fb             	add    %rdi,%rbx
    2455:	48 01 df             	add    %rbx,%rdi
    2458:	49 ff cf             	dec    %r15
    245b:	75 e3                	jne    2440 <main+0x1280>
    245d:	49 89 df             	mov    %rbx,%r15
    2460:	41 f6 c2 07          	test   $0x7,%r10b
    2464:	0f 84 c9 ed ff ff    	je     1233 <main+0x73>
    246a:	83 e5 07             	and    $0x7,%ebp
    246d:	0f 1f 00             	nopl   (%rax)
    2470:	49 89 ff             	mov    %rdi,%r15
    2473:	48 89 df             	mov    %rbx,%rdi
    2476:	4c 01 ff             	add    %r15,%rdi
    2479:	48 ff cd             	dec    %rbp
    247c:	4c 89 fb             	mov    %r15,%rbx
    247f:	75 ef                	jne    2470 <main+0x12b0>
    2481:	e9 ad ed ff ff       	jmp    1233 <main+0x73>
    2486:	48 8d 15 77 0b 00 00 	lea    0xb77(%rip),%rdx        # 3004 <_IO_stdin_used+0x4>
    248d:	48 8d bc 24 e0 00 00 	lea    0xe0(%rsp),%rdi
    2494:	00 
    2495:	be 20 00 00 00       	mov    $0x20,%esi
    249a:	48 89 d9             	mov    %rbx,%rcx
    249d:	31 c0                	xor    %eax,%eax
    249f:	e8 ac eb ff ff       	call   1050 <snprintf@plt>
    24a4:	83 f8 20             	cmp    $0x20,%eax
    24a7:	0f 83 aa 00 00 00    	jae    2557 <main+0x1397>
    24ad:	4c 63 f8             	movslq %eax,%r15
    24b0:	89 c5                	mov    %eax,%ebp
    24b2:	49 8d 7f 01          	lea    0x1(%r15),%rdi
    24b6:	e8 c5 eb ff ff       	call   1080 <malloc@plt>
    24bb:	48 85 c0             	test   %rax,%rax
    24be:	0f 84 93 00 00 00    	je     2557 <main+0x1397>
    24c4:	48 8d 15 39 0b 00 00 	lea    0xb39(%rip),%rdx        # 3004 <_IO_stdin_used+0x4>
    24cb:	48 8d bc 24 e0 00 00 	lea    0xe0(%rsp),%rdi
    24d2:	00 
    24d3:	be 20 00 00 00       	mov    $0x20,%esi
    24d8:	49 89 c6             	mov    %rax,%r14
    24db:	48 89 d9             	mov    %rbx,%rcx
    24de:	31 c0                	xor    %eax,%eax
    24e0:	e8 6b eb ff ff       	call   1050 <snprintf@plt>
    24e5:	83 f8 20             	cmp    $0x20,%eax
    24e8:	73 6d                	jae    2557 <main+0x1397>
    24ea:	48 8d b4 24 e0 00 00 	lea    0xe0(%rsp),%rsi
    24f1:	00 
    24f2:	89 c2                	mov    %eax,%edx
    24f4:	4c 89 f7             	mov    %r14,%rdi
    24f7:	e8 74 eb ff ff       	call   1070 <memcpy@plt>
    24fc:	43 c6 04 3e 00       	movb   $0x0,(%r14,%r15,1)
    2501:	85 ed                	test   %ebp,%ebp
    2503:	74 1a                	je     251f <main+0x135f>
    2505:	48 8b 05 bc 2a 00 00 	mov    0x2abc(%rip),%rax        # 4fc8 <stdout@GLIBC_2.2.5>
    250c:	be 01 00 00 00       	mov    $0x1,%esi
    2511:	4c 89 f7             	mov    %r14,%rdi
    2514:	4c 89 fa             	mov    %r15,%rdx
    2517:	48 8b 08             	mov    (%rax),%rcx
    251a:	e8 81 eb ff ff       	call   10a0 <fwrite@plt>
    251f:	48 8b 1d a2 2a 00 00 	mov    0x2aa2(%rip),%rbx        # 4fc8 <stdout@GLIBC_2.2.5>
    2526:	bf 0a 00 00 00       	mov    $0xa,%edi
    252b:	48 8b 33             	mov    (%rbx),%rsi
    252e:	e8 2d eb ff ff       	call   1060 <fputc@plt>
    2533:	48 8b 3b             	mov    (%rbx),%rdi
    2536:	e8 55 eb ff ff       	call   1090 <fflush@plt>
    253b:	4c 89 f7             	mov    %r14,%rdi
    253e:	e8 ed ea ff ff       	call   1030 <free@plt>
    2543:	31 c0                	xor    %eax,%eax
    2545:	48 81 c4 08 01 00 00 	add    $0x108,%rsp
    254c:	5b                   	pop    %rbx
    254d:	41 5c                	pop    %r12
    254f:	41 5d                	pop    %r13
    2551:	41 5e                	pop    %r14
    2553:	41 5f                	pop    %r15
    2555:	5d                   	pop    %rbp
    2556:	c3                   	ret
    2557:	e8 e4 ea ff ff       	call   1040 <abort@plt>

Disassembly of section .fini:

000000000000255c <_fini>:
    255c:	f3 0f 1e fa          	endbr64
    2560:	48 83 ec 08          	sub    $0x8,%rsp
    2564:	48 83 c4 08          	add    $0x8,%rsp
    2568:	c3                   	ret
