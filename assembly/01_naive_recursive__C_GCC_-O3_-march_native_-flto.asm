; Benchmark: 01_naive_recursive
; Implementação: C (GCC -O3 -march=native -flto)
; Executável: /workspaces/arandu-fibonacci-benchmarks/build/01_naive_recursive/c_gcc
; Comando: /usr/bin/objdump -d -C /workspaces/arandu-fibonacci-benchmarks/build/01_naive_recursive/c_gcc


/workspaces/arandu-fibonacci-benchmarks/build/01_naive_recursive/c_gcc:     file format elf64-x86-64


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
    1020:	ff 35 9a 2f 00 00    	push   0x2f9a(%rip)        # 3fc0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 9c 2f 00 00    	jmp    *0x2f9c(%rip)        # 3fc8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)
    1030:	f3 0f 1e fa          	endbr64
    1034:	68 00 00 00 00       	push   $0x0
    1039:	e9 e2 ff ff ff       	jmp    1020 <_init+0x20>
    103e:	66 90                	xchg   %ax,%ax

Disassembly of section .plt.got:

0000000000001040 <__cxa_finalize@plt>:
    1040:	f3 0f 1e fa          	endbr64
    1044:	ff 25 ae 2f 00 00    	jmp    *0x2fae(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    104a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000001050 <__printf_chk@plt>:
    1050:	f3 0f 1e fa          	endbr64
    1054:	ff 25 76 2f 00 00    	jmp    *0x2f76(%rip)        # 3fd0 <__printf_chk@GLIBC_2.3.4>
    105a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001060 <main>:
    1060:	f3 0f 1e fa          	endbr64
    1064:	41 57                	push   %r15
    1066:	41 56                	push   %r14
    1068:	41 55                	push   %r13
    106a:	45 31 f6             	xor    %r14d,%r14d
    106d:	41 54                	push   %r12
    106f:	55                   	push   %rbp
    1070:	53                   	push   %rbx
    1071:	4c 8d 3d 8c 0f 00 00 	lea    0xf8c(%rip),%r15        # 2004 <_IO_stdin_used+0x4>
    1078:	48 83 ec 08          	sub    $0x8,%rsp
    107c:	0f 1f 40 00          	nopl   0x0(%rax)
    1080:	4d 8d 66 ff          	lea    -0x1(%r14),%r12
    1084:	31 d2                	xor    %edx,%edx
    1086:	49 83 fe 01          	cmp    $0x1,%r14
    108a:	0f 86 80 00 00 00    	jbe    1110 <main+0xb0>
    1090:	4c 8d 6a fe          	lea    -0x2(%rdx),%r13
    1094:	49 83 fc 01          	cmp    $0x1,%r12
    1098:	74 46                	je     10e0 <main+0x80>
    109a:	4c 89 e3             	mov    %r12,%rbx
    109d:	31 ed                	xor    %ebp,%ebp
    109f:	48 8d 7b ff          	lea    -0x1(%rbx),%rdi
    10a3:	48 83 eb 02          	sub    $0x2,%rbx
    10a7:	e8 74 01 00 00       	call   1220 <fibonacci>
    10ac:	48 01 c5             	add    %rax,%rbp
    10af:	48 83 fb 01          	cmp    $0x1,%rbx
    10b3:	77 ea                	ja     109f <main+0x3f>
    10b5:	49 8d 44 24 fe       	lea    -0x2(%r12),%rax
    10ba:	4c 89 e2             	mov    %r12,%rdx
    10bd:	48 89 c1             	mov    %rax,%rcx
    10c0:	48 83 e1 fe          	and    $0xfffffffffffffffe,%rcx
    10c4:	48 29 ca             	sub    %rcx,%rdx
    10c7:	4c 01 ea             	add    %r13,%rdx
    10ca:	48 01 ea             	add    %rbp,%rdx
    10cd:	49 83 fc 02          	cmp    $0x2,%r12
    10d1:	74 0d                	je     10e0 <main+0x80>
    10d3:	49 89 c4             	mov    %rax,%r12
    10d6:	4c 8d 6a fe          	lea    -0x2(%rdx),%r13
    10da:	49 83 fc 01          	cmp    $0x1,%r12
    10de:	75 ba                	jne    109a <main+0x3a>
    10e0:	48 ff c2             	inc    %rdx
    10e3:	4c 89 fe             	mov    %r15,%rsi
    10e6:	bf 02 00 00 00       	mov    $0x2,%edi
    10eb:	31 c0                	xor    %eax,%eax
    10ed:	49 ff c6             	inc    %r14
    10f0:	e8 5b ff ff ff       	call   1050 <__printf_chk@plt>
    10f5:	49 83 fe 29          	cmp    $0x29,%r14
    10f9:	75 85                	jne    1080 <main+0x20>
    10fb:	48 83 c4 08          	add    $0x8,%rsp
    10ff:	31 c0                	xor    %eax,%eax
    1101:	5b                   	pop    %rbx
    1102:	5d                   	pop    %rbp
    1103:	41 5c                	pop    %r12
    1105:	41 5d                	pop    %r13
    1107:	41 5e                	pop    %r14
    1109:	41 5f                	pop    %r15
    110b:	c3                   	ret
    110c:	0f 1f 40 00          	nopl   0x0(%rax)
    1110:	4c 89 f2             	mov    %r14,%rdx
    1113:	4c 89 fe             	mov    %r15,%rsi
    1116:	bf 02 00 00 00       	mov    $0x2,%edi
    111b:	31 c0                	xor    %eax,%eax
    111d:	e8 2e ff ff ff       	call   1050 <__printf_chk@plt>
    1122:	49 ff c6             	inc    %r14
    1125:	e9 56 ff ff ff       	jmp    1080 <main+0x20>
    112a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001130 <_start>:
    1130:	f3 0f 1e fa          	endbr64
    1134:	31 ed                	xor    %ebp,%ebp
    1136:	49 89 d1             	mov    %rdx,%r9
    1139:	5e                   	pop    %rsi
    113a:	48 89 e2             	mov    %rsp,%rdx
    113d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1141:	50                   	push   %rax
    1142:	54                   	push   %rsp
    1143:	45 31 c0             	xor    %r8d,%r8d
    1146:	31 c9                	xor    %ecx,%ecx
    1148:	48 8d 3d 11 ff ff ff 	lea    -0xef(%rip),%rdi        # 1060 <main>
    114f:	ff 15 83 2e 00 00    	call   *0x2e83(%rip)        # 3fd8 <__libc_start_main@GLIBC_2.34>
    1155:	f4                   	hlt
    1156:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    115d:	00 00 00 

0000000000001160 <deregister_tm_clones>:
    1160:	48 8d 3d a9 2e 00 00 	lea    0x2ea9(%rip),%rdi        # 4010 <__TMC_END__>
    1167:	48 8d 05 a2 2e 00 00 	lea    0x2ea2(%rip),%rax        # 4010 <__TMC_END__>
    116e:	48 39 f8             	cmp    %rdi,%rax
    1171:	74 15                	je     1188 <deregister_tm_clones+0x28>
    1173:	48 8b 05 66 2e 00 00 	mov    0x2e66(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    117a:	48 85 c0             	test   %rax,%rax
    117d:	74 09                	je     1188 <deregister_tm_clones+0x28>
    117f:	ff e0                	jmp    *%rax
    1181:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1188:	c3                   	ret
    1189:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001190 <register_tm_clones>:
    1190:	48 8d 3d 79 2e 00 00 	lea    0x2e79(%rip),%rdi        # 4010 <__TMC_END__>
    1197:	48 8d 35 72 2e 00 00 	lea    0x2e72(%rip),%rsi        # 4010 <__TMC_END__>
    119e:	48 29 fe             	sub    %rdi,%rsi
    11a1:	48 89 f0             	mov    %rsi,%rax
    11a4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    11a8:	48 c1 f8 03          	sar    $0x3,%rax
    11ac:	48 01 c6             	add    %rax,%rsi
    11af:	48 d1 fe             	sar    $1,%rsi
    11b2:	74 14                	je     11c8 <register_tm_clones+0x38>
    11b4:	48 8b 05 35 2e 00 00 	mov    0x2e35(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    11bb:	48 85 c0             	test   %rax,%rax
    11be:	74 08                	je     11c8 <register_tm_clones+0x38>
    11c0:	ff e0                	jmp    *%rax
    11c2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    11c8:	c3                   	ret
    11c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011d0 <__do_global_dtors_aux>:
    11d0:	f3 0f 1e fa          	endbr64
    11d4:	80 3d 35 2e 00 00 00 	cmpb   $0x0,0x2e35(%rip)        # 4010 <__TMC_END__>
    11db:	75 2b                	jne    1208 <__do_global_dtors_aux+0x38>
    11dd:	55                   	push   %rbp
    11de:	48 83 3d 12 2e 00 00 	cmpq   $0x0,0x2e12(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    11e5:	00 
    11e6:	48 89 e5             	mov    %rsp,%rbp
    11e9:	74 0c                	je     11f7 <__do_global_dtors_aux+0x27>
    11eb:	48 8b 3d 16 2e 00 00 	mov    0x2e16(%rip),%rdi        # 4008 <__dso_handle>
    11f2:	e8 49 fe ff ff       	call   1040 <__cxa_finalize@plt>
    11f7:	e8 64 ff ff ff       	call   1160 <deregister_tm_clones>
    11fc:	c6 05 0d 2e 00 00 01 	movb   $0x1,0x2e0d(%rip)        # 4010 <__TMC_END__>
    1203:	5d                   	pop    %rbp
    1204:	c3                   	ret
    1205:	0f 1f 00             	nopl   (%rax)
    1208:	c3                   	ret
    1209:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001210 <frame_dummy>:
    1210:	f3 0f 1e fa          	endbr64
    1214:	e9 77 ff ff ff       	jmp    1190 <register_tm_clones>
    1219:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001220 <fibonacci>:
    1220:	48 89 f8             	mov    %rdi,%rax
    1223:	48 83 ff 01          	cmp    $0x1,%rdi
    1227:	0f 84 07 03 00 00    	je     1534 <fibonacci+0x314>
    122d:	41 57                	push   %r15
    122f:	41 56                	push   %r14
    1231:	41 55                	push   %r13
    1233:	4c 8d 6f ff          	lea    -0x1(%rdi),%r13
    1237:	41 54                	push   %r12
    1239:	55                   	push   %rbp
    123a:	53                   	push   %rbx
    123b:	31 db                	xor    %ebx,%ebx
    123d:	48 81 ec a8 00 00 00 	sub    $0xa8,%rsp
    1244:	49 83 fd 01          	cmp    $0x1,%r13
    1248:	0f 84 a3 02 00 00    	je     14f1 <fibonacci+0x2d1>
    124e:	4d 8d 7d ff          	lea    -0x1(%r13),%r15
    1252:	45 31 f6             	xor    %r14d,%r14d
    1255:	48 89 5c 24 30       	mov    %rbx,0x30(%rsp)
    125a:	4c 89 6c 24 38       	mov    %r13,0x38(%rsp)
    125f:	4c 89 7c 24 40       	mov    %r15,0x40(%rsp)
    1264:	4d 89 f5             	mov    %r14,%r13
    1267:	4c 89 fb             	mov    %r15,%rbx
    126a:	48 83 fb 01          	cmp    $0x1,%rbx
    126e:	0f 84 56 02 00 00    	je     14ca <fibonacci+0x2aa>
    1274:	48 8d 4b ff          	lea    -0x1(%rbx),%rcx
    1278:	31 ed                	xor    %ebp,%ebp
    127a:	4c 89 6c 24 48       	mov    %r13,0x48(%rsp)
    127f:	49 89 dd             	mov    %rbx,%r13
    1282:	49 89 cc             	mov    %rcx,%r12
    1285:	48 89 eb             	mov    %rbp,%rbx
    1288:	49 83 fc 01          	cmp    $0x1,%r12
    128c:	0f 84 18 02 00 00    	je     14aa <fibonacci+0x28a>
    1292:	4d 8d 44 24 ff       	lea    -0x1(%r12),%r8
    1297:	31 c0                	xor    %eax,%eax
    1299:	48 89 5c 24 50       	mov    %rbx,0x50(%rsp)
    129e:	4c 89 ea             	mov    %r13,%rdx
    12a1:	49 89 c6             	mov    %rax,%r14
    12a4:	48 89 ce             	mov    %rcx,%rsi
    12a7:	4c 89 c3             	mov    %r8,%rbx
    12aa:	48 83 fb 01          	cmp    $0x1,%rbx
    12ae:	0f 84 d4 01 00 00    	je     1488 <fibonacci+0x268>
    12b4:	4c 8d 5b ff          	lea    -0x1(%rbx),%r11
    12b8:	49 89 f1             	mov    %rsi,%r9
    12bb:	45 31 ff             	xor    %r15d,%r15d
    12be:	49 89 d2             	mov    %rdx,%r10
    12c1:	4d 89 dd             	mov    %r11,%r13
    12c4:	4c 89 f6             	mov    %r14,%rsi
    12c7:	4c 89 64 24 58       	mov    %r12,0x58(%rsp)
    12cc:	48 89 5c 24 60       	mov    %rbx,0x60(%rsp)
    12d1:	49 83 fd 01          	cmp    $0x1,%r13
    12d5:	0f 84 85 01 00 00    	je     1460 <fibonacci+0x240>
    12db:	4d 8d 75 ff          	lea    -0x1(%r13),%r14
    12df:	31 ed                	xor    %ebp,%ebp
    12e1:	4c 89 f3             	mov    %r14,%rbx
    12e4:	48 83 fb 01          	cmp    $0x1,%rbx
    12e8:	0f 84 5e 01 00 00    	je     144c <fibonacci+0x22c>
    12ee:	48 8d 53 ff          	lea    -0x1(%rbx),%rdx
    12f2:	4c 8d 63 fe          	lea    -0x2(%rbx),%r12
    12f6:	48 89 f1             	mov    %rsi,%rcx
    12f9:	48 89 d0             	mov    %rdx,%rax
    12fc:	4c 89 e7             	mov    %r12,%rdi
    12ff:	48 89 14 24          	mov    %rdx,(%rsp)
    1303:	48 83 e0 fe          	and    $0xfffffffffffffffe,%rax
    1307:	48 29 c7             	sub    %rax,%rdi
    130a:	48 89 7c 24 28       	mov    %rdi,0x28(%rsp)
    130f:	31 ff                	xor    %edi,%edi
    1311:	48 89 fe             	mov    %rdi,%rsi
    1314:	4c 89 e7             	mov    %r12,%rdi
    1317:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    131e:	00 00 
    1320:	48 39 7c 24 28       	cmp    %rdi,0x28(%rsp)
    1325:	0f 84 e5 01 00 00    	je     1510 <fibonacci+0x2f0>
    132b:	31 c0                	xor    %eax,%eax
    132d:	48 89 fa             	mov    %rdi,%rdx
    1330:	48 89 74 24 10       	mov    %rsi,0x10(%rsp)
    1335:	4c 89 64 24 20       	mov    %r12,0x20(%rsp)
    133a:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    133f:	49 89 dc             	mov    %rbx,%r12
    1342:	4c 89 54 24 18       	mov    %r10,0x18(%rsp)
    1347:	48 89 fe             	mov    %rdi,%rsi
    134a:	48 8d 58 fe          	lea    -0x2(%rax),%rbx
    134e:	48 83 fa 01          	cmp    $0x1,%rdx
    1352:	0f 84 a7 00 00 00    	je     13ff <fibonacci+0x1df>
    1358:	49 89 d2             	mov    %rdx,%r10
    135b:	31 c9                	xor    %ecx,%ecx
    135d:	49 8d 7a ff          	lea    -0x1(%r10),%rdi
    1361:	48 89 94 24 98 00 00 	mov    %rdx,0x98(%rsp)
    1368:	00 
    1369:	48 89 b4 24 90 00 00 	mov    %rsi,0x90(%rsp)
    1370:	00 
    1371:	4c 89 9c 24 88 00 00 	mov    %r11,0x88(%rsp)
    1378:	00 
    1379:	4c 89 84 24 80 00 00 	mov    %r8,0x80(%rsp)
    1380:	00 
    1381:	4c 89 4c 24 78       	mov    %r9,0x78(%rsp)
    1386:	48 89 4c 24 70       	mov    %rcx,0x70(%rsp)
    138b:	4c 89 54 24 68       	mov    %r10,0x68(%rsp)
    1390:	e8 8b fe ff ff       	call   1220 <fibonacci>
    1395:	4c 8b 54 24 68       	mov    0x68(%rsp),%r10
    139a:	48 8b 4c 24 70       	mov    0x70(%rsp),%rcx
    139f:	4c 8b 4c 24 78       	mov    0x78(%rsp),%r9
    13a4:	4c 8b 84 24 80 00 00 	mov    0x80(%rsp),%r8
    13ab:	00 
    13ac:	4c 8b 9c 24 88 00 00 	mov    0x88(%rsp),%r11
    13b3:	00 
    13b4:	48 8b b4 24 90 00 00 	mov    0x90(%rsp),%rsi
    13bb:	00 
    13bc:	48 8b 94 24 98 00 00 	mov    0x98(%rsp),%rdx
    13c3:	00 
    13c4:	49 83 ea 02          	sub    $0x2,%r10
    13c8:	48 01 c1             	add    %rax,%rcx
    13cb:	49 83 fa 01          	cmp    $0x1,%r10
    13cf:	77 8c                	ja     135d <fibonacci+0x13d>
    13d1:	48 8d 7a fe          	lea    -0x2(%rdx),%rdi
    13d5:	48 89 d0             	mov    %rdx,%rax
    13d8:	49 89 fa             	mov    %rdi,%r10
    13db:	49 83 e2 fe          	and    $0xfffffffffffffffe,%r10
    13df:	4c 29 d0             	sub    %r10,%rax
    13e2:	48 01 d8             	add    %rbx,%rax
    13e5:	48 01 c8             	add    %rcx,%rax
    13e8:	48 83 fa 02          	cmp    $0x2,%rdx
    13ec:	74 11                	je     13ff <fibonacci+0x1df>
    13ee:	48 89 fa             	mov    %rdi,%rdx
    13f1:	48 8d 58 fe          	lea    -0x2(%rax),%rbx
    13f5:	48 83 fa 01          	cmp    $0x1,%rdx
    13f9:	0f 85 59 ff ff ff    	jne    1358 <fibonacci+0x138>
    13ff:	48 89 f7             	mov    %rsi,%rdi
    1402:	48 8b 74 24 10       	mov    0x10(%rsp),%rsi
    1407:	4c 89 e3             	mov    %r12,%rbx
    140a:	48 ff c0             	inc    %rax
    140d:	48 83 eb 02          	sub    $0x2,%rbx
    1411:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
    1416:	4c 8b 54 24 18       	mov    0x18(%rsp),%r10
    141b:	48 83 ef 02          	sub    $0x2,%rdi
    141f:	4c 8b 64 24 20       	mov    0x20(%rsp),%r12
    1424:	48 01 c6             	add    %rax,%rsi
    1427:	48 83 fb 01          	cmp    $0x1,%rbx
    142b:	0f 85 ef fe ff ff    	jne    1320 <fibonacci+0x100>
    1431:	48 8b 14 24          	mov    (%rsp),%rdx
    1435:	48 89 f7             	mov    %rsi,%rdi
    1438:	48 89 ce             	mov    %rcx,%rsi
    143b:	48 8d 47 01          	lea    0x1(%rdi),%rax
    143f:	48 01 c5             	add    %rax,%rbp
    1442:	48 83 fa 01          	cmp    $0x1,%rdx
    1446:	0f 85 e0 00 00 00    	jne    152c <fibonacci+0x30c>
    144c:	48 ff c5             	inc    %rbp
    144f:	49 83 ed 02          	sub    $0x2,%r13
    1453:	49 01 ef             	add    %rbp,%r15
    1456:	49 83 fe 01          	cmp    $0x1,%r14
    145a:	0f 85 71 fe ff ff    	jne    12d1 <fibonacci+0xb1>
    1460:	48 8b 5c 24 60       	mov    0x60(%rsp),%rbx
    1465:	49 89 f6             	mov    %rsi,%r14
    1468:	49 8d 6f 01          	lea    0x1(%r15),%rbp
    146c:	4c 8b 64 24 58       	mov    0x58(%rsp),%r12
    1471:	4c 89 d2             	mov    %r10,%rdx
    1474:	4c 89 ce             	mov    %r9,%rsi
    1477:	49 01 ee             	add    %rbp,%r14
    147a:	48 83 eb 02          	sub    $0x2,%rbx
    147e:	49 83 fb 01          	cmp    $0x1,%r11
    1482:	0f 85 22 fe ff ff    	jne    12aa <fibonacci+0x8a>
    1488:	48 8b 5c 24 50       	mov    0x50(%rsp),%rbx
    148d:	4c 89 f0             	mov    %r14,%rax
    1490:	49 89 d5             	mov    %rdx,%r13
    1493:	48 89 f1             	mov    %rsi,%rcx
    1496:	48 ff c0             	inc    %rax
    1499:	49 83 ec 02          	sub    $0x2,%r12
    149d:	48 01 c3             	add    %rax,%rbx
    14a0:	49 83 f8 01          	cmp    $0x1,%r8
    14a4:	0f 85 de fd ff ff    	jne    1288 <fibonacci+0x68>
    14aa:	48 89 dd             	mov    %rbx,%rbp
    14ad:	4c 89 eb             	mov    %r13,%rbx
    14b0:	4c 8b 6c 24 48       	mov    0x48(%rsp),%r13
    14b5:	48 8d 75 01          	lea    0x1(%rbp),%rsi
    14b9:	48 83 eb 02          	sub    $0x2,%rbx
    14bd:	49 01 f5             	add    %rsi,%r13
    14c0:	48 83 f9 01          	cmp    $0x1,%rcx
    14c4:	0f 85 a0 fd ff ff    	jne    126a <fibonacci+0x4a>
    14ca:	4d 89 ee             	mov    %r13,%r14
    14cd:	48 8b 5c 24 30       	mov    0x30(%rsp),%rbx
    14d2:	4c 8b 6c 24 38       	mov    0x38(%rsp),%r13
    14d7:	4c 8b 7c 24 40       	mov    0x40(%rsp),%r15
    14dc:	49 8d 46 01          	lea    0x1(%r14),%rax
    14e0:	48 01 c3             	add    %rax,%rbx
    14e3:	49 83 ed 02          	sub    $0x2,%r13
    14e7:	49 83 ff 01          	cmp    $0x1,%r15
    14eb:	0f 85 53 fd ff ff    	jne    1244 <fibonacci+0x24>
    14f1:	48 81 c4 a8 00 00 00 	add    $0xa8,%rsp
    14f8:	48 8d 43 01          	lea    0x1(%rbx),%rax
    14fc:	5b                   	pop    %rbx
    14fd:	5d                   	pop    %rbp
    14fe:	41 5c                	pop    %r12
    1500:	41 5d                	pop    %r13
    1502:	41 5e                	pop    %r14
    1504:	41 5f                	pop    %r15
    1506:	c3                   	ret
    1507:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    150e:	00 00 
    1510:	48 8b 14 24          	mov    (%rsp),%rdx
    1514:	48 89 f7             	mov    %rsi,%rdi
    1517:	48 89 ce             	mov    %rcx,%rsi
    151a:	48 8d 44 3b ff       	lea    -0x1(%rbx,%rdi,1),%rax
    151f:	48 01 c5             	add    %rax,%rbp
    1522:	48 83 fa 01          	cmp    $0x1,%rdx
    1526:	0f 84 20 ff ff ff    	je     144c <fibonacci+0x22c>
    152c:	4c 89 e3             	mov    %r12,%rbx
    152f:	e9 b0 fd ff ff       	jmp    12e4 <fibonacci+0xc4>
    1534:	c3                   	ret

Disassembly of section .fini:

0000000000001538 <_fini>:
    1538:	f3 0f 1e fa          	endbr64
    153c:	48 83 ec 08          	sub    $0x8,%rsp
    1540:	48 83 c4 08          	add    $0x8,%rsp
    1544:	c3                   	ret
