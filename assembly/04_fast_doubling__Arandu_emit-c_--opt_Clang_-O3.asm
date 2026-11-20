; Benchmark: 04_fast_doubling
; Implementação: Arandu (emit-c --opt + Clang -O3)
; Executável: /workspaces/arandu-fibonacci-benchmarks/build/04_fast_doubling/arandu_c_clang
; Comando: /usr/bin/objdump -d -C /workspaces/arandu-fibonacci-benchmarks/build/04_fast_doubling/arandu_c_clang


/workspaces/arandu-fibonacci-benchmarks/build/04_fast_doubling/arandu_c_clang:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 c1 2f 00 00 	mov    0x2fc1(%rip),%rax        # 3fd0 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret

Disassembly of section .plt:

0000000000001020 <free@plt-0x10>:
    1020:	ff 35 ca 2f 00 00    	push   0x2fca(%rip)        # 3ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 cc 2f 00 00    	jmp    *0x2fcc(%rip)        # 3ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <free@plt>:
    1030:	ff 25 ca 2f 00 00    	jmp    *0x2fca(%rip)        # 4000 <free@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	push   $0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001040 <abort@plt>:
    1040:	ff 25 c2 2f 00 00    	jmp    *0x2fc2(%rip)        # 4008 <abort@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	push   $0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001050 <snprintf@plt>:
    1050:	ff 25 ba 2f 00 00    	jmp    *0x2fba(%rip)        # 4010 <snprintf@GLIBC_2.2.5>
    1056:	68 02 00 00 00       	push   $0x2
    105b:	e9 c0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001060 <fputc@plt>:
    1060:	ff 25 b2 2f 00 00    	jmp    *0x2fb2(%rip)        # 4018 <fputc@GLIBC_2.2.5>
    1066:	68 03 00 00 00       	push   $0x3
    106b:	e9 b0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001070 <memcpy@plt>:
    1070:	ff 25 aa 2f 00 00    	jmp    *0x2faa(%rip)        # 4020 <memcpy@GLIBC_2.14>
    1076:	68 04 00 00 00       	push   $0x4
    107b:	e9 a0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001080 <malloc@plt>:
    1080:	ff 25 a2 2f 00 00    	jmp    *0x2fa2(%rip)        # 4028 <malloc@GLIBC_2.2.5>
    1086:	68 05 00 00 00       	push   $0x5
    108b:	e9 90 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001090 <fflush@plt>:
    1090:	ff 25 9a 2f 00 00    	jmp    *0x2f9a(%rip)        # 4030 <fflush@GLIBC_2.2.5>
    1096:	68 06 00 00 00       	push   $0x6
    109b:	e9 80 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010a0 <fwrite@plt>:
    10a0:	ff 25 92 2f 00 00    	jmp    *0x2f92(%rip)        # 4038 <fwrite@GLIBC_2.2.5>
    10a6:	68 07 00 00 00       	push   $0x7
    10ab:	e9 70 ff ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .plt.got:

00000000000010b0 <__cxa_finalize@plt>:
    10b0:	ff 25 2a 2f 00 00    	jmp    *0x2f2a(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
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
    10df:	ff 15 d3 2e 00 00    	call   *0x2ed3(%rip)        # 3fb8 <__libc_start_main@GLIBC_2.34>
    10e5:	f4                   	hlt
    10e6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    10ed:	00 00 00 

00000000000010f0 <deregister_tm_clones>:
    10f0:	48 8d 3d 59 2f 00 00 	lea    0x2f59(%rip),%rdi        # 4050 <__TMC_END__>
    10f7:	48 8d 05 52 2f 00 00 	lea    0x2f52(%rip),%rax        # 4050 <__TMC_END__>
    10fe:	48 39 f8             	cmp    %rdi,%rax
    1101:	74 15                	je     1118 <deregister_tm_clones+0x28>
    1103:	48 8b 05 b6 2e 00 00 	mov    0x2eb6(%rip),%rax        # 3fc0 <_ITM_deregisterTMCloneTable@Base>
    110a:	48 85 c0             	test   %rax,%rax
    110d:	74 09                	je     1118 <deregister_tm_clones+0x28>
    110f:	ff e0                	jmp    *%rax
    1111:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1118:	c3                   	ret
    1119:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001120 <register_tm_clones>:
    1120:	48 8d 3d 29 2f 00 00 	lea    0x2f29(%rip),%rdi        # 4050 <__TMC_END__>
    1127:	48 8d 35 22 2f 00 00 	lea    0x2f22(%rip),%rsi        # 4050 <__TMC_END__>
    112e:	48 29 fe             	sub    %rdi,%rsi
    1131:	48 89 f0             	mov    %rsi,%rax
    1134:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1138:	48 c1 f8 03          	sar    $0x3,%rax
    113c:	48 01 c6             	add    %rax,%rsi
    113f:	48 d1 fe             	sar    $1,%rsi
    1142:	74 14                	je     1158 <register_tm_clones+0x38>
    1144:	48 8b 05 8d 2e 00 00 	mov    0x2e8d(%rip),%rax        # 3fd8 <_ITM_registerTMCloneTable@Base>
    114b:	48 85 c0             	test   %rax,%rax
    114e:	74 08                	je     1158 <register_tm_clones+0x38>
    1150:	ff e0                	jmp    *%rax
    1152:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1158:	c3                   	ret
    1159:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001160 <__do_global_dtors_aux>:
    1160:	f3 0f 1e fa          	endbr64
    1164:	80 3d e5 2e 00 00 00 	cmpb   $0x0,0x2ee5(%rip)        # 4050 <__TMC_END__>
    116b:	75 2b                	jne    1198 <__do_global_dtors_aux+0x38>
    116d:	55                   	push   %rbp
    116e:	48 83 3d 6a 2e 00 00 	cmpq   $0x0,0x2e6a(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    1175:	00 
    1176:	48 89 e5             	mov    %rsp,%rbp
    1179:	74 0c                	je     1187 <__do_global_dtors_aux+0x27>
    117b:	48 8b 3d c6 2e 00 00 	mov    0x2ec6(%rip),%rdi        # 4048 <__dso_handle>
    1182:	e8 29 ff ff ff       	call   10b0 <__cxa_finalize@plt>
    1187:	e8 64 ff ff ff       	call   10f0 <deregister_tm_clones>
    118c:	c6 05 bd 2e 00 00 01 	movb   $0x1,0x2ebd(%rip)        # 4050 <__TMC_END__>
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
    11b0:	89 3d 9e 2e 00 00    	mov    %edi,0x2e9e(%rip)        # 4054 <ar_env_c_argc>
    11b6:	c3                   	ret
    11b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    11be:	00 00 

00000000000011c0 <main>:
    11c0:	55                   	push   %rbp
    11c1:	41 57                	push   %r15
    11c3:	41 56                	push   %r14
    11c5:	53                   	push   %rbx
    11c6:	48 83 ec 28          	sub    $0x28,%rsp
    11ca:	48 63 05 83 2e 00 00 	movslq 0x2e83(%rip),%rax        # 4054 <ar_env_c_argc>
    11d1:	31 ff                	xor    %edi,%edi
    11d3:	31 db                	xor    %ebx,%ebx
    11d5:	48 8d 48 59          	lea    0x59(%rax),%rcx
    11d9:	48 8d 50 5a          	lea    0x5a(%rax),%rdx
    11dd:	48 8d 70 5b          	lea    0x5b(%rax),%rsi
    11e1:	48 83 c0 5c          	add    $0x5c,%rax
    11e5:	eb 20                	jmp    1207 <main+0x47>
    11e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    11ee:	00 00 
    11f0:	45 31 c9             	xor    %r9d,%r9d
    11f3:	4c 01 cb             	add    %r9,%rbx
    11f6:	48 83 c7 10          	add    $0x10,%rdi
    11fa:	48 81 ff 80 96 98 00 	cmp    $0x989680,%rdi
    1201:	0f 84 e4 08 00 00    	je     1aeb <main+0x92b>
    1207:	48 85 c9             	test   %rcx,%rcx
    120a:	0f 84 90 00 00 00    	je     12a0 <main+0xe0>
    1210:	41 b9 40 00 00 00    	mov    $0x40,%r9d
    1216:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    121d:	00 00 00 
    1220:	4d 89 c8             	mov    %r9,%r8
    1223:	49 d1 e9             	shr    $1,%r9
    1226:	49 39 c8             	cmp    %rcx,%r8
    1229:	77 f5                	ja     1220 <main+0x60>
    122b:	4d 85 c0             	test   %r8,%r8
    122e:	74 60                	je     1290 <main+0xd0>
    1230:	41 b9 01 00 00 00    	mov    $0x1,%r9d
    1236:	45 31 d2             	xor    %r10d,%r10d
    1239:	4d 89 c3             	mov    %r8,%r11
    123c:	0f 1f 40 00          	nopl   0x0(%rax)
    1240:	4f 8d 34 09          	lea    (%r9,%r9,1),%r14
    1244:	4d 0f af c9          	imul   %r9,%r9
    1248:	4d 89 c7             	mov    %r8,%r15
    124b:	4d 29 d6             	sub    %r10,%r14
    124e:	4d 0f af f2          	imul   %r10,%r14
    1252:	4d 0f af d2          	imul   %r10,%r10
    1256:	4d 01 d1             	add    %r10,%r9
    1259:	49 21 cf             	and    %rcx,%r15
    125c:	4d 0f 45 fe          	cmovne %r14,%r15
    1260:	4d 89 ca             	mov    %r9,%r10
    1263:	4d 0f 44 d6          	cmove  %r14,%r10
    1267:	49 d1 eb             	shr    $1,%r11
    126a:	4d 01 f9             	add    %r15,%r9
    126d:	49 83 f8 01          	cmp    $0x1,%r8
    1271:	4d 89 d8             	mov    %r11,%r8
    1274:	77 ca                	ja     1240 <main+0x80>
    1276:	4c 01 d3             	add    %r10,%rbx
    1279:	48 85 d2             	test   %rdx,%rdx
    127c:	75 22                	jne    12a0 <main+0xe0>
    127e:	e9 ac 00 00 00       	jmp    132f <main+0x16f>
    1283:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
    128a:	84 00 00 00 00 00 
    1290:	45 31 d2             	xor    %r10d,%r10d
    1293:	4c 01 d3             	add    %r10,%rbx
    1296:	48 85 d2             	test   %rdx,%rdx
    1299:	0f 84 90 00 00 00    	je     132f <main+0x16f>
    129f:	90                   	nop
    12a0:	41 b9 40 00 00 00    	mov    $0x40,%r9d
    12a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    12ad:	00 00 00 
    12b0:	4d 89 c8             	mov    %r9,%r8
    12b3:	49 d1 e9             	shr    $1,%r9
    12b6:	49 39 d0             	cmp    %rdx,%r8
    12b9:	77 f5                	ja     12b0 <main+0xf0>
    12bb:	4d 85 c0             	test   %r8,%r8
    12be:	74 60                	je     1320 <main+0x160>
    12c0:	41 b9 01 00 00 00    	mov    $0x1,%r9d
    12c6:	45 31 d2             	xor    %r10d,%r10d
    12c9:	4d 89 c3             	mov    %r8,%r11
    12cc:	0f 1f 40 00          	nopl   0x0(%rax)
    12d0:	4f 8d 34 09          	lea    (%r9,%r9,1),%r14
    12d4:	4d 0f af c9          	imul   %r9,%r9
    12d8:	4d 89 c7             	mov    %r8,%r15
    12db:	4d 29 d6             	sub    %r10,%r14
    12de:	4d 0f af f2          	imul   %r10,%r14
    12e2:	4d 0f af d2          	imul   %r10,%r10
    12e6:	4d 01 d1             	add    %r10,%r9
    12e9:	49 21 d7             	and    %rdx,%r15
    12ec:	4d 0f 45 fe          	cmovne %r14,%r15
    12f0:	4d 89 ca             	mov    %r9,%r10
    12f3:	4d 0f 44 d6          	cmove  %r14,%r10
    12f7:	49 d1 eb             	shr    $1,%r11
    12fa:	4d 01 f9             	add    %r15,%r9
    12fd:	49 83 f8 01          	cmp    $0x1,%r8
    1301:	4d 89 d8             	mov    %r11,%r8
    1304:	77 ca                	ja     12d0 <main+0x110>
    1306:	4c 01 d3             	add    %r10,%rbx
    1309:	48 85 f6             	test   %rsi,%rsi
    130c:	75 21                	jne    132f <main+0x16f>
    130e:	e9 ac 00 00 00       	jmp    13bf <main+0x1ff>
    1313:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
    131a:	84 00 00 00 00 00 
    1320:	45 31 d2             	xor    %r10d,%r10d
    1323:	4c 01 d3             	add    %r10,%rbx
    1326:	48 85 f6             	test   %rsi,%rsi
    1329:	0f 84 90 00 00 00    	je     13bf <main+0x1ff>
    132f:	41 b9 40 00 00 00    	mov    $0x40,%r9d
    1335:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    133c:	00 00 00 00 
    1340:	4d 89 c8             	mov    %r9,%r8
    1343:	49 d1 e9             	shr    $1,%r9
    1346:	49 39 f0             	cmp    %rsi,%r8
    1349:	77 f5                	ja     1340 <main+0x180>
    134b:	4d 85 c0             	test   %r8,%r8
    134e:	74 60                	je     13b0 <main+0x1f0>
    1350:	41 b9 01 00 00 00    	mov    $0x1,%r9d
    1356:	45 31 d2             	xor    %r10d,%r10d
    1359:	4d 89 c3             	mov    %r8,%r11
    135c:	0f 1f 40 00          	nopl   0x0(%rax)
    1360:	4f 8d 34 09          	lea    (%r9,%r9,1),%r14
    1364:	4d 0f af c9          	imul   %r9,%r9
    1368:	4d 89 c7             	mov    %r8,%r15
    136b:	4d 29 d6             	sub    %r10,%r14
    136e:	4d 0f af f2          	imul   %r10,%r14
    1372:	4d 0f af d2          	imul   %r10,%r10
    1376:	4d 01 d1             	add    %r10,%r9
    1379:	49 21 f7             	and    %rsi,%r15
    137c:	4d 0f 45 fe          	cmovne %r14,%r15
    1380:	4d 89 ca             	mov    %r9,%r10
    1383:	4d 0f 44 d6          	cmove  %r14,%r10
    1387:	49 d1 eb             	shr    $1,%r11
    138a:	4d 01 f9             	add    %r15,%r9
    138d:	49 83 f8 01          	cmp    $0x1,%r8
    1391:	4d 89 d8             	mov    %r11,%r8
    1394:	77 ca                	ja     1360 <main+0x1a0>
    1396:	4c 01 d3             	add    %r10,%rbx
    1399:	48 85 c0             	test   %rax,%rax
    139c:	75 21                	jne    13bf <main+0x1ff>
    139e:	e9 ac 00 00 00       	jmp    144f <main+0x28f>
    13a3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
    13aa:	84 00 00 00 00 00 
    13b0:	45 31 d2             	xor    %r10d,%r10d
    13b3:	4c 01 d3             	add    %r10,%rbx
    13b6:	48 85 c0             	test   %rax,%rax
    13b9:	0f 84 90 00 00 00    	je     144f <main+0x28f>
    13bf:	41 b9 40 00 00 00    	mov    $0x40,%r9d
    13c5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    13cc:	00 00 00 00 
    13d0:	4d 89 c8             	mov    %r9,%r8
    13d3:	49 d1 e9             	shr    $1,%r9
    13d6:	49 39 c0             	cmp    %rax,%r8
    13d9:	77 f5                	ja     13d0 <main+0x210>
    13db:	4d 85 c0             	test   %r8,%r8
    13de:	74 60                	je     1440 <main+0x280>
    13e0:	41 b9 01 00 00 00    	mov    $0x1,%r9d
    13e6:	45 31 d2             	xor    %r10d,%r10d
    13e9:	4d 89 c3             	mov    %r8,%r11
    13ec:	0f 1f 40 00          	nopl   0x0(%rax)
    13f0:	4f 8d 34 09          	lea    (%r9,%r9,1),%r14
    13f4:	4d 0f af c9          	imul   %r9,%r9
    13f8:	4d 89 c7             	mov    %r8,%r15
    13fb:	4d 29 d6             	sub    %r10,%r14
    13fe:	4d 0f af f2          	imul   %r10,%r14
    1402:	4d 0f af d2          	imul   %r10,%r10
    1406:	4d 01 d1             	add    %r10,%r9
    1409:	49 21 c7             	and    %rax,%r15
    140c:	4d 0f 45 fe          	cmovne %r14,%r15
    1410:	4d 89 ca             	mov    %r9,%r10
    1413:	4d 0f 44 d6          	cmove  %r14,%r10
    1417:	49 d1 eb             	shr    $1,%r11
    141a:	4d 01 f9             	add    %r15,%r9
    141d:	49 83 f8 01          	cmp    $0x1,%r8
    1421:	4d 89 d8             	mov    %r11,%r8
    1424:	77 ca                	ja     13f0 <main+0x230>
    1426:	4c 01 d3             	add    %r10,%rbx
    1429:	48 85 c9             	test   %rcx,%rcx
    142c:	75 21                	jne    144f <main+0x28f>
    142e:	e9 ac 00 00 00       	jmp    14df <main+0x31f>
    1433:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
    143a:	84 00 00 00 00 00 
    1440:	45 31 d2             	xor    %r10d,%r10d
    1443:	4c 01 d3             	add    %r10,%rbx
    1446:	48 85 c9             	test   %rcx,%rcx
    1449:	0f 84 90 00 00 00    	je     14df <main+0x31f>
    144f:	41 b9 40 00 00 00    	mov    $0x40,%r9d
    1455:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    145c:	00 00 00 00 
    1460:	4d 89 c8             	mov    %r9,%r8
    1463:	49 d1 e9             	shr    $1,%r9
    1466:	49 39 c8             	cmp    %rcx,%r8
    1469:	77 f5                	ja     1460 <main+0x2a0>
    146b:	4d 85 c0             	test   %r8,%r8
    146e:	74 60                	je     14d0 <main+0x310>
    1470:	41 b9 01 00 00 00    	mov    $0x1,%r9d
    1476:	45 31 d2             	xor    %r10d,%r10d
    1479:	4d 89 c3             	mov    %r8,%r11
    147c:	0f 1f 40 00          	nopl   0x0(%rax)
    1480:	4f 8d 34 09          	lea    (%r9,%r9,1),%r14
    1484:	4d 0f af c9          	imul   %r9,%r9
    1488:	4d 89 c7             	mov    %r8,%r15
    148b:	4d 29 d6             	sub    %r10,%r14
    148e:	4d 0f af f2          	imul   %r10,%r14
    1492:	4d 0f af d2          	imul   %r10,%r10
    1496:	4d 01 d1             	add    %r10,%r9
    1499:	49 21 cf             	and    %rcx,%r15
    149c:	4d 0f 45 fe          	cmovne %r14,%r15
    14a0:	4d 89 ca             	mov    %r9,%r10
    14a3:	4d 0f 44 d6          	cmove  %r14,%r10
    14a7:	49 d1 eb             	shr    $1,%r11
    14aa:	4d 01 f9             	add    %r15,%r9
    14ad:	49 83 f8 01          	cmp    $0x1,%r8
    14b1:	4d 89 d8             	mov    %r11,%r8
    14b4:	77 ca                	ja     1480 <main+0x2c0>
    14b6:	4c 01 d3             	add    %r10,%rbx
    14b9:	48 85 d2             	test   %rdx,%rdx
    14bc:	75 21                	jne    14df <main+0x31f>
    14be:	e9 ac 00 00 00       	jmp    156f <main+0x3af>
    14c3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
    14ca:	84 00 00 00 00 00 
    14d0:	45 31 d2             	xor    %r10d,%r10d
    14d3:	4c 01 d3             	add    %r10,%rbx
    14d6:	48 85 d2             	test   %rdx,%rdx
    14d9:	0f 84 90 00 00 00    	je     156f <main+0x3af>
    14df:	41 b9 40 00 00 00    	mov    $0x40,%r9d
    14e5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    14ec:	00 00 00 00 
    14f0:	4d 89 c8             	mov    %r9,%r8
    14f3:	49 d1 e9             	shr    $1,%r9
    14f6:	49 39 d0             	cmp    %rdx,%r8
    14f9:	77 f5                	ja     14f0 <main+0x330>
    14fb:	4d 85 c0             	test   %r8,%r8
    14fe:	74 60                	je     1560 <main+0x3a0>
    1500:	41 b9 01 00 00 00    	mov    $0x1,%r9d
    1506:	45 31 d2             	xor    %r10d,%r10d
    1509:	4d 89 c3             	mov    %r8,%r11
    150c:	0f 1f 40 00          	nopl   0x0(%rax)
    1510:	4f 8d 34 09          	lea    (%r9,%r9,1),%r14
    1514:	4d 0f af c9          	imul   %r9,%r9
    1518:	4d 89 c7             	mov    %r8,%r15
    151b:	4d 29 d6             	sub    %r10,%r14
    151e:	4d 0f af f2          	imul   %r10,%r14
    1522:	4d 0f af d2          	imul   %r10,%r10
    1526:	4d 01 d1             	add    %r10,%r9
    1529:	49 21 d7             	and    %rdx,%r15
    152c:	4d 0f 45 fe          	cmovne %r14,%r15
    1530:	4d 89 ca             	mov    %r9,%r10
    1533:	4d 0f 44 d6          	cmove  %r14,%r10
    1537:	49 d1 eb             	shr    $1,%r11
    153a:	4d 01 f9             	add    %r15,%r9
    153d:	49 83 f8 01          	cmp    $0x1,%r8
    1541:	4d 89 d8             	mov    %r11,%r8
    1544:	77 ca                	ja     1510 <main+0x350>
    1546:	4c 01 d3             	add    %r10,%rbx
    1549:	48 85 f6             	test   %rsi,%rsi
    154c:	75 21                	jne    156f <main+0x3af>
    154e:	e9 ac 00 00 00       	jmp    15ff <main+0x43f>
    1553:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
    155a:	84 00 00 00 00 00 
    1560:	45 31 d2             	xor    %r10d,%r10d
    1563:	4c 01 d3             	add    %r10,%rbx
    1566:	48 85 f6             	test   %rsi,%rsi
    1569:	0f 84 90 00 00 00    	je     15ff <main+0x43f>
    156f:	41 b9 40 00 00 00    	mov    $0x40,%r9d
    1575:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    157c:	00 00 00 00 
    1580:	4d 89 c8             	mov    %r9,%r8
    1583:	49 d1 e9             	shr    $1,%r9
    1586:	49 39 f0             	cmp    %rsi,%r8
    1589:	77 f5                	ja     1580 <main+0x3c0>
    158b:	4d 85 c0             	test   %r8,%r8
    158e:	74 60                	je     15f0 <main+0x430>
    1590:	41 b9 01 00 00 00    	mov    $0x1,%r9d
    1596:	45 31 d2             	xor    %r10d,%r10d
    1599:	4d 89 c3             	mov    %r8,%r11
    159c:	0f 1f 40 00          	nopl   0x0(%rax)
    15a0:	4f 8d 34 09          	lea    (%r9,%r9,1),%r14
    15a4:	4d 0f af c9          	imul   %r9,%r9
    15a8:	4d 89 c7             	mov    %r8,%r15
    15ab:	4d 29 d6             	sub    %r10,%r14
    15ae:	4d 0f af f2          	imul   %r10,%r14
    15b2:	4d 0f af d2          	imul   %r10,%r10
    15b6:	4d 01 d1             	add    %r10,%r9
    15b9:	49 21 f7             	and    %rsi,%r15
    15bc:	4d 0f 45 fe          	cmovne %r14,%r15
    15c0:	4d 89 ca             	mov    %r9,%r10
    15c3:	4d 0f 44 d6          	cmove  %r14,%r10
    15c7:	49 d1 eb             	shr    $1,%r11
    15ca:	4d 01 f9             	add    %r15,%r9
    15cd:	49 83 f8 01          	cmp    $0x1,%r8
    15d1:	4d 89 d8             	mov    %r11,%r8
    15d4:	77 ca                	ja     15a0 <main+0x3e0>
    15d6:	4c 01 d3             	add    %r10,%rbx
    15d9:	48 85 c0             	test   %rax,%rax
    15dc:	75 21                	jne    15ff <main+0x43f>
    15de:	e9 ac 00 00 00       	jmp    168f <main+0x4cf>
    15e3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
    15ea:	84 00 00 00 00 00 
    15f0:	45 31 d2             	xor    %r10d,%r10d
    15f3:	4c 01 d3             	add    %r10,%rbx
    15f6:	48 85 c0             	test   %rax,%rax
    15f9:	0f 84 90 00 00 00    	je     168f <main+0x4cf>
    15ff:	41 b9 40 00 00 00    	mov    $0x40,%r9d
    1605:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    160c:	00 00 00 00 
    1610:	4d 89 c8             	mov    %r9,%r8
    1613:	49 d1 e9             	shr    $1,%r9
    1616:	49 39 c0             	cmp    %rax,%r8
    1619:	77 f5                	ja     1610 <main+0x450>
    161b:	4d 85 c0             	test   %r8,%r8
    161e:	74 60                	je     1680 <main+0x4c0>
    1620:	41 b9 01 00 00 00    	mov    $0x1,%r9d
    1626:	45 31 d2             	xor    %r10d,%r10d
    1629:	4d 89 c3             	mov    %r8,%r11
    162c:	0f 1f 40 00          	nopl   0x0(%rax)
    1630:	4f 8d 34 09          	lea    (%r9,%r9,1),%r14
    1634:	4d 0f af c9          	imul   %r9,%r9
    1638:	4d 89 c7             	mov    %r8,%r15
    163b:	4d 29 d6             	sub    %r10,%r14
    163e:	4d 0f af f2          	imul   %r10,%r14
    1642:	4d 0f af d2          	imul   %r10,%r10
    1646:	4d 01 d1             	add    %r10,%r9
    1649:	49 21 c7             	and    %rax,%r15
    164c:	4d 0f 45 fe          	cmovne %r14,%r15
    1650:	4d 89 ca             	mov    %r9,%r10
    1653:	4d 0f 44 d6          	cmove  %r14,%r10
    1657:	49 d1 eb             	shr    $1,%r11
    165a:	4d 01 f9             	add    %r15,%r9
    165d:	49 83 f8 01          	cmp    $0x1,%r8
    1661:	4d 89 d8             	mov    %r11,%r8
    1664:	77 ca                	ja     1630 <main+0x470>
    1666:	4c 01 d3             	add    %r10,%rbx
    1669:	48 85 c9             	test   %rcx,%rcx
    166c:	75 21                	jne    168f <main+0x4cf>
    166e:	e9 ac 00 00 00       	jmp    171f <main+0x55f>
    1673:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
    167a:	84 00 00 00 00 00 
    1680:	45 31 d2             	xor    %r10d,%r10d
    1683:	4c 01 d3             	add    %r10,%rbx
    1686:	48 85 c9             	test   %rcx,%rcx
    1689:	0f 84 90 00 00 00    	je     171f <main+0x55f>
    168f:	41 b9 40 00 00 00    	mov    $0x40,%r9d
    1695:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    169c:	00 00 00 00 
    16a0:	4d 89 c8             	mov    %r9,%r8
    16a3:	49 d1 e9             	shr    $1,%r9
    16a6:	49 39 c8             	cmp    %rcx,%r8
    16a9:	77 f5                	ja     16a0 <main+0x4e0>
    16ab:	4d 85 c0             	test   %r8,%r8
    16ae:	74 60                	je     1710 <main+0x550>
    16b0:	41 b9 01 00 00 00    	mov    $0x1,%r9d
    16b6:	45 31 d2             	xor    %r10d,%r10d
    16b9:	4d 89 c3             	mov    %r8,%r11
    16bc:	0f 1f 40 00          	nopl   0x0(%rax)
    16c0:	4f 8d 34 09          	lea    (%r9,%r9,1),%r14
    16c4:	4d 0f af c9          	imul   %r9,%r9
    16c8:	4d 89 c7             	mov    %r8,%r15
    16cb:	4d 29 d6             	sub    %r10,%r14
    16ce:	4d 0f af f2          	imul   %r10,%r14
    16d2:	4d 0f af d2          	imul   %r10,%r10
    16d6:	4d 01 d1             	add    %r10,%r9
    16d9:	49 21 cf             	and    %rcx,%r15
    16dc:	4d 0f 45 fe          	cmovne %r14,%r15
    16e0:	4d 89 ca             	mov    %r9,%r10
    16e3:	4d 0f 44 d6          	cmove  %r14,%r10
    16e7:	49 d1 eb             	shr    $1,%r11
    16ea:	4d 01 f9             	add    %r15,%r9
    16ed:	49 83 f8 01          	cmp    $0x1,%r8
    16f1:	4d 89 d8             	mov    %r11,%r8
    16f4:	77 ca                	ja     16c0 <main+0x500>
    16f6:	4c 01 d3             	add    %r10,%rbx
    16f9:	48 85 d2             	test   %rdx,%rdx
    16fc:	75 21                	jne    171f <main+0x55f>
    16fe:	e9 ac 00 00 00       	jmp    17af <main+0x5ef>
    1703:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
    170a:	84 00 00 00 00 00 
    1710:	45 31 d2             	xor    %r10d,%r10d
    1713:	4c 01 d3             	add    %r10,%rbx
    1716:	48 85 d2             	test   %rdx,%rdx
    1719:	0f 84 90 00 00 00    	je     17af <main+0x5ef>
    171f:	41 b9 40 00 00 00    	mov    $0x40,%r9d
    1725:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    172c:	00 00 00 00 
    1730:	4d 89 c8             	mov    %r9,%r8
    1733:	49 d1 e9             	shr    $1,%r9
    1736:	49 39 d0             	cmp    %rdx,%r8
    1739:	77 f5                	ja     1730 <main+0x570>
    173b:	4d 85 c0             	test   %r8,%r8
    173e:	74 60                	je     17a0 <main+0x5e0>
    1740:	41 b9 01 00 00 00    	mov    $0x1,%r9d
    1746:	45 31 d2             	xor    %r10d,%r10d
    1749:	4d 89 c3             	mov    %r8,%r11
    174c:	0f 1f 40 00          	nopl   0x0(%rax)
    1750:	4f 8d 34 09          	lea    (%r9,%r9,1),%r14
    1754:	4d 0f af c9          	imul   %r9,%r9
    1758:	4d 89 c7             	mov    %r8,%r15
    175b:	4d 29 d6             	sub    %r10,%r14
    175e:	4d 0f af f2          	imul   %r10,%r14
    1762:	4d 0f af d2          	imul   %r10,%r10
    1766:	4d 01 d1             	add    %r10,%r9
    1769:	49 21 d7             	and    %rdx,%r15
    176c:	4d 0f 45 fe          	cmovne %r14,%r15
    1770:	4d 89 ca             	mov    %r9,%r10
    1773:	4d 0f 44 d6          	cmove  %r14,%r10
    1777:	49 d1 eb             	shr    $1,%r11
    177a:	4d 01 f9             	add    %r15,%r9
    177d:	49 83 f8 01          	cmp    $0x1,%r8
    1781:	4d 89 d8             	mov    %r11,%r8
    1784:	77 ca                	ja     1750 <main+0x590>
    1786:	4c 01 d3             	add    %r10,%rbx
    1789:	48 85 f6             	test   %rsi,%rsi
    178c:	75 21                	jne    17af <main+0x5ef>
    178e:	e9 ac 00 00 00       	jmp    183f <main+0x67f>
    1793:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
    179a:	84 00 00 00 00 00 
    17a0:	45 31 d2             	xor    %r10d,%r10d
    17a3:	4c 01 d3             	add    %r10,%rbx
    17a6:	48 85 f6             	test   %rsi,%rsi
    17a9:	0f 84 90 00 00 00    	je     183f <main+0x67f>
    17af:	41 b9 40 00 00 00    	mov    $0x40,%r9d
    17b5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    17bc:	00 00 00 00 
    17c0:	4d 89 c8             	mov    %r9,%r8
    17c3:	49 d1 e9             	shr    $1,%r9
    17c6:	49 39 f0             	cmp    %rsi,%r8
    17c9:	77 f5                	ja     17c0 <main+0x600>
    17cb:	4d 85 c0             	test   %r8,%r8
    17ce:	74 60                	je     1830 <main+0x670>
    17d0:	41 b9 01 00 00 00    	mov    $0x1,%r9d
    17d6:	45 31 d2             	xor    %r10d,%r10d
    17d9:	4d 89 c3             	mov    %r8,%r11
    17dc:	0f 1f 40 00          	nopl   0x0(%rax)
    17e0:	4f 8d 34 09          	lea    (%r9,%r9,1),%r14
    17e4:	4d 0f af c9          	imul   %r9,%r9
    17e8:	4d 89 c7             	mov    %r8,%r15
    17eb:	4d 29 d6             	sub    %r10,%r14
    17ee:	4d 0f af f2          	imul   %r10,%r14
    17f2:	4d 0f af d2          	imul   %r10,%r10
    17f6:	4d 01 d1             	add    %r10,%r9
    17f9:	49 21 f7             	and    %rsi,%r15
    17fc:	4d 0f 45 fe          	cmovne %r14,%r15
    1800:	4d 89 ca             	mov    %r9,%r10
    1803:	4d 0f 44 d6          	cmove  %r14,%r10
    1807:	49 d1 eb             	shr    $1,%r11
    180a:	4d 01 f9             	add    %r15,%r9
    180d:	49 83 f8 01          	cmp    $0x1,%r8
    1811:	4d 89 d8             	mov    %r11,%r8
    1814:	77 ca                	ja     17e0 <main+0x620>
    1816:	4c 01 d3             	add    %r10,%rbx
    1819:	48 85 c0             	test   %rax,%rax
    181c:	75 21                	jne    183f <main+0x67f>
    181e:	e9 ac 00 00 00       	jmp    18cf <main+0x70f>
    1823:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
    182a:	84 00 00 00 00 00 
    1830:	45 31 d2             	xor    %r10d,%r10d
    1833:	4c 01 d3             	add    %r10,%rbx
    1836:	48 85 c0             	test   %rax,%rax
    1839:	0f 84 90 00 00 00    	je     18cf <main+0x70f>
    183f:	41 b9 40 00 00 00    	mov    $0x40,%r9d
    1845:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    184c:	00 00 00 00 
    1850:	4d 89 c8             	mov    %r9,%r8
    1853:	49 d1 e9             	shr    $1,%r9
    1856:	49 39 c0             	cmp    %rax,%r8
    1859:	77 f5                	ja     1850 <main+0x690>
    185b:	4d 85 c0             	test   %r8,%r8
    185e:	74 60                	je     18c0 <main+0x700>
    1860:	41 b9 01 00 00 00    	mov    $0x1,%r9d
    1866:	45 31 d2             	xor    %r10d,%r10d
    1869:	4d 89 c3             	mov    %r8,%r11
    186c:	0f 1f 40 00          	nopl   0x0(%rax)
    1870:	4f 8d 34 09          	lea    (%r9,%r9,1),%r14
    1874:	4d 0f af c9          	imul   %r9,%r9
    1878:	4d 89 c7             	mov    %r8,%r15
    187b:	4d 29 d6             	sub    %r10,%r14
    187e:	4d 0f af f2          	imul   %r10,%r14
    1882:	4d 0f af d2          	imul   %r10,%r10
    1886:	4d 01 d1             	add    %r10,%r9
    1889:	49 21 c7             	and    %rax,%r15
    188c:	4d 0f 45 fe          	cmovne %r14,%r15
    1890:	4d 89 ca             	mov    %r9,%r10
    1893:	4d 0f 44 d6          	cmove  %r14,%r10
    1897:	49 d1 eb             	shr    $1,%r11
    189a:	4d 01 f9             	add    %r15,%r9
    189d:	49 83 f8 01          	cmp    $0x1,%r8
    18a1:	4d 89 d8             	mov    %r11,%r8
    18a4:	77 ca                	ja     1870 <main+0x6b0>
    18a6:	4c 01 d3             	add    %r10,%rbx
    18a9:	48 85 c9             	test   %rcx,%rcx
    18ac:	75 21                	jne    18cf <main+0x70f>
    18ae:	e9 af 00 00 00       	jmp    1962 <main+0x7a2>
    18b3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
    18ba:	84 00 00 00 00 00 
    18c0:	45 31 d2             	xor    %r10d,%r10d
    18c3:	4c 01 d3             	add    %r10,%rbx
    18c6:	48 85 c9             	test   %rcx,%rcx
    18c9:	0f 84 93 00 00 00    	je     1962 <main+0x7a2>
    18cf:	41 b9 40 00 00 00    	mov    $0x40,%r9d
    18d5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    18dc:	00 00 00 00 
    18e0:	4d 89 c8             	mov    %r9,%r8
    18e3:	49 d1 e9             	shr    $1,%r9
    18e6:	49 39 c8             	cmp    %rcx,%r8
    18e9:	77 f5                	ja     18e0 <main+0x720>
    18eb:	4d 85 c0             	test   %r8,%r8
    18ee:	74 60                	je     1950 <main+0x790>
    18f0:	41 b9 01 00 00 00    	mov    $0x1,%r9d
    18f6:	45 31 d2             	xor    %r10d,%r10d
    18f9:	4d 89 c3             	mov    %r8,%r11
    18fc:	0f 1f 40 00          	nopl   0x0(%rax)
    1900:	4f 8d 34 09          	lea    (%r9,%r9,1),%r14
    1904:	4d 0f af c9          	imul   %r9,%r9
    1908:	4d 89 c7             	mov    %r8,%r15
    190b:	4d 29 d6             	sub    %r10,%r14
    190e:	4d 0f af f2          	imul   %r10,%r14
    1912:	4d 0f af d2          	imul   %r10,%r10
    1916:	4d 01 d1             	add    %r10,%r9
    1919:	49 21 cf             	and    %rcx,%r15
    191c:	4d 0f 45 fe          	cmovne %r14,%r15
    1920:	4d 89 ca             	mov    %r9,%r10
    1923:	4d 0f 44 d6          	cmove  %r14,%r10
    1927:	49 d1 eb             	shr    $1,%r11
    192a:	4d 01 f9             	add    %r15,%r9
    192d:	49 83 f8 01          	cmp    $0x1,%r8
    1931:	4d 89 d8             	mov    %r11,%r8
    1934:	77 ca                	ja     1900 <main+0x740>
    1936:	4c 01 d3             	add    %r10,%rbx
    1939:	49 89 d8             	mov    %rbx,%r8
    193c:	48 85 d2             	test   %rdx,%rdx
    193f:	75 21                	jne    1962 <main+0x7a2>
    1941:	e9 ac 00 00 00       	jmp    19f2 <main+0x832>
    1946:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    194d:	00 00 00 
    1950:	45 31 d2             	xor    %r10d,%r10d
    1953:	4c 01 d3             	add    %r10,%rbx
    1956:	49 89 d8             	mov    %rbx,%r8
    1959:	48 85 d2             	test   %rdx,%rdx
    195c:	0f 84 90 00 00 00    	je     19f2 <main+0x832>
    1962:	41 b8 40 00 00 00    	mov    $0x40,%r8d
    1968:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    196f:	00 
    1970:	4d 89 c1             	mov    %r8,%r9
    1973:	49 d1 e8             	shr    $1,%r8
    1976:	49 39 d1             	cmp    %rdx,%r9
    1979:	77 f5                	ja     1970 <main+0x7b0>
    197b:	4d 85 c9             	test   %r9,%r9
    197e:	74 60                	je     19e0 <main+0x820>
    1980:	41 ba 01 00 00 00    	mov    $0x1,%r10d
    1986:	45 31 c0             	xor    %r8d,%r8d
    1989:	4d 89 cb             	mov    %r9,%r11
    198c:	0f 1f 40 00          	nopl   0x0(%rax)
    1990:	4f 8d 34 12          	lea    (%r10,%r10,1),%r14
    1994:	4d 0f af d2          	imul   %r10,%r10
    1998:	4d 89 cf             	mov    %r9,%r15
    199b:	4d 29 c6             	sub    %r8,%r14
    199e:	4d 0f af f0          	imul   %r8,%r14
    19a2:	4d 0f af c0          	imul   %r8,%r8
    19a6:	4d 01 c2             	add    %r8,%r10
    19a9:	49 21 d7             	and    %rdx,%r15
    19ac:	4d 0f 45 fe          	cmovne %r14,%r15
    19b0:	4d 89 d0             	mov    %r10,%r8
    19b3:	4d 0f 44 c6          	cmove  %r14,%r8
    19b7:	49 d1 eb             	shr    $1,%r11
    19ba:	4d 01 fa             	add    %r15,%r10
    19bd:	49 83 f9 01          	cmp    $0x1,%r9
    19c1:	4d 89 d9             	mov    %r11,%r9
    19c4:	77 ca                	ja     1990 <main+0x7d0>
    19c6:	49 01 d8             	add    %rbx,%r8
    19c9:	4c 89 c3             	mov    %r8,%rbx
    19cc:	48 85 f6             	test   %rsi,%rsi
    19cf:	75 21                	jne    19f2 <main+0x832>
    19d1:	e9 a8 00 00 00       	jmp    1a7e <main+0x8be>
    19d6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    19dd:	00 00 00 
    19e0:	45 31 c0             	xor    %r8d,%r8d
    19e3:	49 01 d8             	add    %rbx,%r8
    19e6:	4c 89 c3             	mov    %r8,%rbx
    19e9:	48 85 f6             	test   %rsi,%rsi
    19ec:	0f 84 8c 00 00 00    	je     1a7e <main+0x8be>
    19f2:	41 ba 40 00 00 00    	mov    $0x40,%r10d
    19f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    19ff:	00 
    1a00:	4d 89 d1             	mov    %r10,%r9
    1a03:	49 d1 ea             	shr    $1,%r10
    1a06:	49 39 f1             	cmp    %rsi,%r9
    1a09:	77 f5                	ja     1a00 <main+0x840>
    1a0b:	4d 85 c9             	test   %r9,%r9
    1a0e:	74 60                	je     1a70 <main+0x8b0>
    1a10:	41 ba 01 00 00 00    	mov    $0x1,%r10d
    1a16:	31 db                	xor    %ebx,%ebx
    1a18:	4d 89 cb             	mov    %r9,%r11
    1a1b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1a20:	4f 8d 34 12          	lea    (%r10,%r10,1),%r14
    1a24:	4d 0f af d2          	imul   %r10,%r10
    1a28:	4d 89 cf             	mov    %r9,%r15
    1a2b:	49 29 de             	sub    %rbx,%r14
    1a2e:	4c 0f af f3          	imul   %rbx,%r14
    1a32:	48 0f af db          	imul   %rbx,%rbx
    1a36:	49 01 da             	add    %rbx,%r10
    1a39:	49 21 f7             	and    %rsi,%r15
    1a3c:	4d 0f 45 fe          	cmovne %r14,%r15
    1a40:	4c 89 d3             	mov    %r10,%rbx
    1a43:	49 0f 44 de          	cmove  %r14,%rbx
    1a47:	49 d1 eb             	shr    $1,%r11
    1a4a:	4d 01 fa             	add    %r15,%r10
    1a4d:	49 83 f9 01          	cmp    $0x1,%r9
    1a51:	4d 89 d9             	mov    %r11,%r9
    1a54:	77 ca                	ja     1a20 <main+0x860>
    1a56:	4c 01 c3             	add    %r8,%rbx
    1a59:	48 85 c0             	test   %rax,%rax
    1a5c:	75 20                	jne    1a7e <main+0x8be>
    1a5e:	e9 8d f7 ff ff       	jmp    11f0 <main+0x30>
    1a63:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
    1a6a:	84 00 00 00 00 00 
    1a70:	31 db                	xor    %ebx,%ebx
    1a72:	4c 01 c3             	add    %r8,%rbx
    1a75:	48 85 c0             	test   %rax,%rax
    1a78:	0f 84 72 f7 ff ff    	je     11f0 <main+0x30>
    1a7e:	41 b9 40 00 00 00    	mov    $0x40,%r9d
    1a84:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
    1a8b:	00 00 00 00 00 
    1a90:	4d 89 c8             	mov    %r9,%r8
    1a93:	49 d1 e9             	shr    $1,%r9
    1a96:	49 39 c0             	cmp    %rax,%r8
    1a99:	77 f5                	ja     1a90 <main+0x8d0>
    1a9b:	4d 85 c0             	test   %r8,%r8
    1a9e:	0f 84 4c f7 ff ff    	je     11f0 <main+0x30>
    1aa4:	41 ba 01 00 00 00    	mov    $0x1,%r10d
    1aaa:	45 31 c9             	xor    %r9d,%r9d
    1aad:	4d 89 c3             	mov    %r8,%r11
    1ab0:	4f 8d 34 12          	lea    (%r10,%r10,1),%r14
    1ab4:	4d 0f af d2          	imul   %r10,%r10
    1ab8:	4d 89 c7             	mov    %r8,%r15
    1abb:	4d 29 ce             	sub    %r9,%r14
    1abe:	4d 0f af f1          	imul   %r9,%r14
    1ac2:	4d 0f af c9          	imul   %r9,%r9
    1ac6:	4d 01 ca             	add    %r9,%r10
    1ac9:	49 21 c7             	and    %rax,%r15
    1acc:	4d 0f 45 fe          	cmovne %r14,%r15
    1ad0:	4d 89 d1             	mov    %r10,%r9
    1ad3:	4d 0f 44 ce          	cmove  %r14,%r9
    1ad7:	49 d1 eb             	shr    $1,%r11
    1ada:	4d 01 fa             	add    %r15,%r10
    1add:	49 83 f8 01          	cmp    $0x1,%r8
    1ae1:	4d 89 d8             	mov    %r11,%r8
    1ae4:	77 ca                	ja     1ab0 <main+0x8f0>
    1ae6:	e9 08 f7 ff ff       	jmp    11f3 <main+0x33>
    1aeb:	48 8d 15 12 05 00 00 	lea    0x512(%rip),%rdx        # 2004 <_IO_stdin_used+0x4>
    1af2:	be 20 00 00 00       	mov    $0x20,%esi
    1af7:	48 89 e7             	mov    %rsp,%rdi
    1afa:	48 89 d9             	mov    %rbx,%rcx
    1afd:	31 c0                	xor    %eax,%eax
    1aff:	e8 4c f5 ff ff       	call   1050 <snprintf@plt>
    1b04:	83 f8 20             	cmp    $0x20,%eax
    1b07:	0f 83 99 00 00 00    	jae    1ba6 <main+0x9e6>
    1b0d:	4c 63 f8             	movslq %eax,%r15
    1b10:	89 c5                	mov    %eax,%ebp
    1b12:	49 8d 7f 01          	lea    0x1(%r15),%rdi
    1b16:	e8 65 f5 ff ff       	call   1080 <malloc@plt>
    1b1b:	48 85 c0             	test   %rax,%rax
    1b1e:	0f 84 82 00 00 00    	je     1ba6 <main+0x9e6>
    1b24:	48 8d 15 d9 04 00 00 	lea    0x4d9(%rip),%rdx        # 2004 <_IO_stdin_used+0x4>
    1b2b:	be 20 00 00 00       	mov    $0x20,%esi
    1b30:	49 89 c6             	mov    %rax,%r14
    1b33:	48 89 e7             	mov    %rsp,%rdi
    1b36:	48 89 d9             	mov    %rbx,%rcx
    1b39:	31 c0                	xor    %eax,%eax
    1b3b:	e8 10 f5 ff ff       	call   1050 <snprintf@plt>
    1b40:	83 f8 20             	cmp    $0x20,%eax
    1b43:	73 61                	jae    1ba6 <main+0x9e6>
    1b45:	89 c2                	mov    %eax,%edx
    1b47:	48 89 e6             	mov    %rsp,%rsi
    1b4a:	4c 89 f7             	mov    %r14,%rdi
    1b4d:	e8 1e f5 ff ff       	call   1070 <memcpy@plt>
    1b52:	43 c6 04 3e 00       	movb   $0x0,(%r14,%r15,1)
    1b57:	85 ed                	test   %ebp,%ebp
    1b59:	74 1a                	je     1b75 <main+0x9b5>
    1b5b:	48 8b 05 66 24 00 00 	mov    0x2466(%rip),%rax        # 3fc8 <stdout@GLIBC_2.2.5>
    1b62:	be 01 00 00 00       	mov    $0x1,%esi
    1b67:	4c 89 f7             	mov    %r14,%rdi
    1b6a:	4c 89 fa             	mov    %r15,%rdx
    1b6d:	48 8b 08             	mov    (%rax),%rcx
    1b70:	e8 2b f5 ff ff       	call   10a0 <fwrite@plt>
    1b75:	48 8b 1d 4c 24 00 00 	mov    0x244c(%rip),%rbx        # 3fc8 <stdout@GLIBC_2.2.5>
    1b7c:	bf 0a 00 00 00       	mov    $0xa,%edi
    1b81:	48 8b 33             	mov    (%rbx),%rsi
    1b84:	e8 d7 f4 ff ff       	call   1060 <fputc@plt>
    1b89:	48 8b 3b             	mov    (%rbx),%rdi
    1b8c:	e8 ff f4 ff ff       	call   1090 <fflush@plt>
    1b91:	4c 89 f7             	mov    %r14,%rdi
    1b94:	e8 97 f4 ff ff       	call   1030 <free@plt>
    1b99:	31 c0                	xor    %eax,%eax
    1b9b:	48 83 c4 28          	add    $0x28,%rsp
    1b9f:	5b                   	pop    %rbx
    1ba0:	41 5e                	pop    %r14
    1ba2:	41 5f                	pop    %r15
    1ba4:	5d                   	pop    %rbp
    1ba5:	c3                   	ret
    1ba6:	e8 95 f4 ff ff       	call   1040 <abort@plt>

Disassembly of section .fini:

0000000000001bac <_fini>:
    1bac:	f3 0f 1e fa          	endbr64
    1bb0:	48 83 ec 08          	sub    $0x8,%rsp
    1bb4:	48 83 c4 08          	add    $0x8,%rsp
    1bb8:	c3                   	ret
