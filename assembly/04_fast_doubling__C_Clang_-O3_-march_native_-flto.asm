; Benchmark: 04_fast_doubling
; Implementação: C (Clang -O3 -march=native -flto)
; Executável: /workspaces/arandu-fibonacci-benchmarks/build/04_fast_doubling/c_clang
; Comando: /usr/bin/objdump -d -C /workspaces/arandu-fibonacci-benchmarks/build/04_fast_doubling/c_clang


/workspaces/arandu-fibonacci-benchmarks/build/04_fast_doubling/c_clang:     file format elf64-x86-64


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

0000000000001020 <printf@plt-0x10>:
    1020:	ff 35 ca 2f 00 00    	push   0x2fca(%rip)        # 3ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 cc 2f 00 00    	jmp    *0x2fcc(%rip)        # 3ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <printf@plt>:
    1030:	ff 25 ca 2f 00 00    	jmp    *0x2fca(%rip)        # 4000 <printf@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	push   $0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .plt.got:

0000000000001040 <__cxa_finalize@plt>:
    1040:	ff 25 9a 2f 00 00    	jmp    *0x2f9a(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    1046:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000001050 <_start>:
    1050:	f3 0f 1e fa          	endbr64
    1054:	31 ed                	xor    %ebp,%ebp
    1056:	49 89 d1             	mov    %rdx,%r9
    1059:	5e                   	pop    %rsi
    105a:	48 89 e2             	mov    %rsp,%rdx
    105d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1061:	50                   	push   %rax
    1062:	54                   	push   %rsp
    1063:	45 31 c0             	xor    %r8d,%r8d
    1066:	31 c9                	xor    %ecx,%ecx
    1068:	48 8d 3d d1 00 00 00 	lea    0xd1(%rip),%rdi        # 1140 <main>
    106f:	ff 15 4b 2f 00 00    	call   *0x2f4b(%rip)        # 3fc0 <__libc_start_main@GLIBC_2.34>
    1075:	f4                   	hlt
    1076:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    107d:	00 00 00 

0000000000001080 <deregister_tm_clones>:
    1080:	48 8d 3d 91 2f 00 00 	lea    0x2f91(%rip),%rdi        # 4018 <__TMC_END__>
    1087:	48 8d 05 8a 2f 00 00 	lea    0x2f8a(%rip),%rax        # 4018 <__TMC_END__>
    108e:	48 39 f8             	cmp    %rdi,%rax
    1091:	74 15                	je     10a8 <deregister_tm_clones+0x28>
    1093:	48 8b 05 2e 2f 00 00 	mov    0x2f2e(%rip),%rax        # 3fc8 <_ITM_deregisterTMCloneTable@Base>
    109a:	48 85 c0             	test   %rax,%rax
    109d:	74 09                	je     10a8 <deregister_tm_clones+0x28>
    109f:	ff e0                	jmp    *%rax
    10a1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10a8:	c3                   	ret
    10a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010b0 <register_tm_clones>:
    10b0:	48 8d 3d 61 2f 00 00 	lea    0x2f61(%rip),%rdi        # 4018 <__TMC_END__>
    10b7:	48 8d 35 5a 2f 00 00 	lea    0x2f5a(%rip),%rsi        # 4018 <__TMC_END__>
    10be:	48 29 fe             	sub    %rdi,%rsi
    10c1:	48 89 f0             	mov    %rsi,%rax
    10c4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    10c8:	48 c1 f8 03          	sar    $0x3,%rax
    10cc:	48 01 c6             	add    %rax,%rsi
    10cf:	48 d1 fe             	sar    $1,%rsi
    10d2:	74 14                	je     10e8 <register_tm_clones+0x38>
    10d4:	48 8b 05 fd 2e 00 00 	mov    0x2efd(%rip),%rax        # 3fd8 <_ITM_registerTMCloneTable@Base>
    10db:	48 85 c0             	test   %rax,%rax
    10de:	74 08                	je     10e8 <register_tm_clones+0x38>
    10e0:	ff e0                	jmp    *%rax
    10e2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    10e8:	c3                   	ret
    10e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010f0 <__do_global_dtors_aux>:
    10f0:	f3 0f 1e fa          	endbr64
    10f4:	80 3d 1d 2f 00 00 00 	cmpb   $0x0,0x2f1d(%rip)        # 4018 <__TMC_END__>
    10fb:	75 2b                	jne    1128 <__do_global_dtors_aux+0x38>
    10fd:	55                   	push   %rbp
    10fe:	48 83 3d da 2e 00 00 	cmpq   $0x0,0x2eda(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    1105:	00 
    1106:	48 89 e5             	mov    %rsp,%rbp
    1109:	74 0c                	je     1117 <__do_global_dtors_aux+0x27>
    110b:	48 8b 3d fe 2e 00 00 	mov    0x2efe(%rip),%rdi        # 4010 <__dso_handle>
    1112:	e8 29 ff ff ff       	call   1040 <__cxa_finalize@plt>
    1117:	e8 64 ff ff ff       	call   1080 <deregister_tm_clones>
    111c:	c6 05 f5 2e 00 00 01 	movb   $0x1,0x2ef5(%rip)        # 4018 <__TMC_END__>
    1123:	5d                   	pop    %rbp
    1124:	c3                   	ret
    1125:	0f 1f 00             	nopl   (%rax)
    1128:	c3                   	ret
    1129:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001130 <frame_dummy>:
    1130:	f3 0f 1e fa          	endbr64
    1134:	e9 77 ff ff ff       	jmp    10b0 <register_tm_clones>
    1139:	0f 1f 00             	nopl   (%rax)
    113c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001140 <main>:
    1140:	41 57                	push   %r15
    1142:	41 56                	push   %r14
    1144:	53                   	push   %rbx
    1145:	48 63 c7             	movslq %edi,%rax
    1148:	31 f6                	xor    %esi,%esi
    114a:	45 31 c0             	xor    %r8d,%r8d
    114d:	48 8d 48 59          	lea    0x59(%rax),%rcx
    1151:	48 8d 50 5a          	lea    0x5a(%rax),%rdx
    1155:	48 8d 78 5b          	lea    0x5b(%rax),%rdi
    1159:	48 83 c0 5c          	add    $0x5c,%rax
    115d:	eb 18                	jmp    1177 <main+0x37>
    115f:	90                   	nop
    1160:	45 31 d2             	xor    %r10d,%r10d
    1163:	4c 01 d6             	add    %r10,%rsi
    1166:	49 83 c0 10          	add    $0x10,%r8
    116a:	49 81 f8 80 96 98 00 	cmp    $0x989680,%r8
    1171:	0f 84 e4 08 00 00    	je     1a5b <main+0x91b>
    1177:	48 85 c9             	test   %rcx,%rcx
    117a:	0f 84 90 00 00 00    	je     1210 <main+0xd0>
    1180:	41 ba 40 00 00 00    	mov    $0x40,%r10d
    1186:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    118d:	00 00 00 
    1190:	4d 89 d1             	mov    %r10,%r9
    1193:	49 d1 ea             	shr    $1,%r10
    1196:	49 39 c9             	cmp    %rcx,%r9
    1199:	77 f5                	ja     1190 <main+0x50>
    119b:	4d 85 c9             	test   %r9,%r9
    119e:	74 60                	je     1200 <main+0xc0>
    11a0:	41 ba 01 00 00 00    	mov    $0x1,%r10d
    11a6:	45 31 f6             	xor    %r14d,%r14d
    11a9:	4d 89 cb             	mov    %r9,%r11
    11ac:	0f 1f 40 00          	nopl   0x0(%rax)
    11b0:	4b 8d 1c 12          	lea    (%r10,%r10,1),%rbx
    11b4:	4d 0f af d2          	imul   %r10,%r10
    11b8:	4d 89 cf             	mov    %r9,%r15
    11bb:	4c 29 f3             	sub    %r14,%rbx
    11be:	49 0f af de          	imul   %r14,%rbx
    11c2:	4d 0f af f6          	imul   %r14,%r14
    11c6:	4d 01 f2             	add    %r14,%r10
    11c9:	49 21 cf             	and    %rcx,%r15
    11cc:	4c 0f 45 fb          	cmovne %rbx,%r15
    11d0:	49 0f 45 da          	cmovne %r10,%rbx
    11d4:	49 d1 eb             	shr    $1,%r11
    11d7:	4d 01 fa             	add    %r15,%r10
    11da:	49 89 de             	mov    %rbx,%r14
    11dd:	49 83 f9 01          	cmp    $0x1,%r9
    11e1:	4d 89 d9             	mov    %r11,%r9
    11e4:	77 ca                	ja     11b0 <main+0x70>
    11e6:	48 01 de             	add    %rbx,%rsi
    11e9:	48 85 d2             	test   %rdx,%rdx
    11ec:	75 22                	jne    1210 <main+0xd0>
    11ee:	e9 ab 00 00 00       	jmp    129e <main+0x15e>
    11f3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
    11fa:	84 00 00 00 00 00 
    1200:	31 db                	xor    %ebx,%ebx
    1202:	48 01 de             	add    %rbx,%rsi
    1205:	48 85 d2             	test   %rdx,%rdx
    1208:	0f 84 90 00 00 00    	je     129e <main+0x15e>
    120e:	66 90                	xchg   %ax,%ax
    1210:	41 ba 40 00 00 00    	mov    $0x40,%r10d
    1216:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    121d:	00 00 00 
    1220:	4d 89 d1             	mov    %r10,%r9
    1223:	49 d1 ea             	shr    $1,%r10
    1226:	49 39 d1             	cmp    %rdx,%r9
    1229:	77 f5                	ja     1220 <main+0xe0>
    122b:	4d 85 c9             	test   %r9,%r9
    122e:	74 60                	je     1290 <main+0x150>
    1230:	41 ba 01 00 00 00    	mov    $0x1,%r10d
    1236:	45 31 f6             	xor    %r14d,%r14d
    1239:	4d 89 cb             	mov    %r9,%r11
    123c:	0f 1f 40 00          	nopl   0x0(%rax)
    1240:	4b 8d 1c 12          	lea    (%r10,%r10,1),%rbx
    1244:	4d 0f af d2          	imul   %r10,%r10
    1248:	4d 89 cf             	mov    %r9,%r15
    124b:	4c 29 f3             	sub    %r14,%rbx
    124e:	49 0f af de          	imul   %r14,%rbx
    1252:	4d 0f af f6          	imul   %r14,%r14
    1256:	4d 01 f2             	add    %r14,%r10
    1259:	49 21 d7             	and    %rdx,%r15
    125c:	4c 0f 45 fb          	cmovne %rbx,%r15
    1260:	49 0f 45 da          	cmovne %r10,%rbx
    1264:	49 d1 eb             	shr    $1,%r11
    1267:	4d 01 fa             	add    %r15,%r10
    126a:	49 89 de             	mov    %rbx,%r14
    126d:	49 83 f9 01          	cmp    $0x1,%r9
    1271:	4d 89 d9             	mov    %r11,%r9
    1274:	77 ca                	ja     1240 <main+0x100>
    1276:	48 01 de             	add    %rbx,%rsi
    1279:	48 85 ff             	test   %rdi,%rdi
    127c:	75 20                	jne    129e <main+0x15e>
    127e:	e9 ab 00 00 00       	jmp    132e <main+0x1ee>
    1283:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
    128a:	84 00 00 00 00 00 
    1290:	31 db                	xor    %ebx,%ebx
    1292:	48 01 de             	add    %rbx,%rsi
    1295:	48 85 ff             	test   %rdi,%rdi
    1298:	0f 84 90 00 00 00    	je     132e <main+0x1ee>
    129e:	41 ba 40 00 00 00    	mov    $0x40,%r10d
    12a4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
    12ab:	00 00 00 00 00 
    12b0:	4d 89 d1             	mov    %r10,%r9
    12b3:	49 d1 ea             	shr    $1,%r10
    12b6:	49 39 f9             	cmp    %rdi,%r9
    12b9:	77 f5                	ja     12b0 <main+0x170>
    12bb:	4d 85 c9             	test   %r9,%r9
    12be:	74 60                	je     1320 <main+0x1e0>
    12c0:	41 ba 01 00 00 00    	mov    $0x1,%r10d
    12c6:	45 31 f6             	xor    %r14d,%r14d
    12c9:	4d 89 cb             	mov    %r9,%r11
    12cc:	0f 1f 40 00          	nopl   0x0(%rax)
    12d0:	4b 8d 1c 12          	lea    (%r10,%r10,1),%rbx
    12d4:	4d 0f af d2          	imul   %r10,%r10
    12d8:	4d 89 cf             	mov    %r9,%r15
    12db:	4c 29 f3             	sub    %r14,%rbx
    12de:	49 0f af de          	imul   %r14,%rbx
    12e2:	4d 0f af f6          	imul   %r14,%r14
    12e6:	4d 01 f2             	add    %r14,%r10
    12e9:	49 21 ff             	and    %rdi,%r15
    12ec:	4c 0f 45 fb          	cmovne %rbx,%r15
    12f0:	49 0f 45 da          	cmovne %r10,%rbx
    12f4:	49 d1 eb             	shr    $1,%r11
    12f7:	4d 01 fa             	add    %r15,%r10
    12fa:	49 89 de             	mov    %rbx,%r14
    12fd:	49 83 f9 01          	cmp    $0x1,%r9
    1301:	4d 89 d9             	mov    %r11,%r9
    1304:	77 ca                	ja     12d0 <main+0x190>
    1306:	48 01 de             	add    %rbx,%rsi
    1309:	48 85 c0             	test   %rax,%rax
    130c:	75 20                	jne    132e <main+0x1ee>
    130e:	e9 ab 00 00 00       	jmp    13be <main+0x27e>
    1313:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
    131a:	84 00 00 00 00 00 
    1320:	31 db                	xor    %ebx,%ebx
    1322:	48 01 de             	add    %rbx,%rsi
    1325:	48 85 c0             	test   %rax,%rax
    1328:	0f 84 90 00 00 00    	je     13be <main+0x27e>
    132e:	41 ba 40 00 00 00    	mov    $0x40,%r10d
    1334:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
    133b:	00 00 00 00 00 
    1340:	4d 89 d1             	mov    %r10,%r9
    1343:	49 d1 ea             	shr    $1,%r10
    1346:	49 39 c1             	cmp    %rax,%r9
    1349:	77 f5                	ja     1340 <main+0x200>
    134b:	4d 85 c9             	test   %r9,%r9
    134e:	74 60                	je     13b0 <main+0x270>
    1350:	41 ba 01 00 00 00    	mov    $0x1,%r10d
    1356:	45 31 f6             	xor    %r14d,%r14d
    1359:	4d 89 cb             	mov    %r9,%r11
    135c:	0f 1f 40 00          	nopl   0x0(%rax)
    1360:	4b 8d 1c 12          	lea    (%r10,%r10,1),%rbx
    1364:	4d 0f af d2          	imul   %r10,%r10
    1368:	4d 89 cf             	mov    %r9,%r15
    136b:	4c 29 f3             	sub    %r14,%rbx
    136e:	49 0f af de          	imul   %r14,%rbx
    1372:	4d 0f af f6          	imul   %r14,%r14
    1376:	4d 01 f2             	add    %r14,%r10
    1379:	49 21 c7             	and    %rax,%r15
    137c:	4c 0f 45 fb          	cmovne %rbx,%r15
    1380:	49 0f 45 da          	cmovne %r10,%rbx
    1384:	49 d1 eb             	shr    $1,%r11
    1387:	4d 01 fa             	add    %r15,%r10
    138a:	49 89 de             	mov    %rbx,%r14
    138d:	49 83 f9 01          	cmp    $0x1,%r9
    1391:	4d 89 d9             	mov    %r11,%r9
    1394:	77 ca                	ja     1360 <main+0x220>
    1396:	48 01 de             	add    %rbx,%rsi
    1399:	48 85 c9             	test   %rcx,%rcx
    139c:	75 20                	jne    13be <main+0x27e>
    139e:	e9 ab 00 00 00       	jmp    144e <main+0x30e>
    13a3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
    13aa:	84 00 00 00 00 00 
    13b0:	31 db                	xor    %ebx,%ebx
    13b2:	48 01 de             	add    %rbx,%rsi
    13b5:	48 85 c9             	test   %rcx,%rcx
    13b8:	0f 84 90 00 00 00    	je     144e <main+0x30e>
    13be:	41 ba 40 00 00 00    	mov    $0x40,%r10d
    13c4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
    13cb:	00 00 00 00 00 
    13d0:	4d 89 d1             	mov    %r10,%r9
    13d3:	49 d1 ea             	shr    $1,%r10
    13d6:	49 39 c9             	cmp    %rcx,%r9
    13d9:	77 f5                	ja     13d0 <main+0x290>
    13db:	4d 85 c9             	test   %r9,%r9
    13de:	74 60                	je     1440 <main+0x300>
    13e0:	41 ba 01 00 00 00    	mov    $0x1,%r10d
    13e6:	45 31 f6             	xor    %r14d,%r14d
    13e9:	4d 89 cb             	mov    %r9,%r11
    13ec:	0f 1f 40 00          	nopl   0x0(%rax)
    13f0:	4b 8d 1c 12          	lea    (%r10,%r10,1),%rbx
    13f4:	4d 0f af d2          	imul   %r10,%r10
    13f8:	4d 89 cf             	mov    %r9,%r15
    13fb:	4c 29 f3             	sub    %r14,%rbx
    13fe:	49 0f af de          	imul   %r14,%rbx
    1402:	4d 0f af f6          	imul   %r14,%r14
    1406:	4d 01 f2             	add    %r14,%r10
    1409:	49 21 cf             	and    %rcx,%r15
    140c:	4c 0f 45 fb          	cmovne %rbx,%r15
    1410:	49 0f 45 da          	cmovne %r10,%rbx
    1414:	49 d1 eb             	shr    $1,%r11
    1417:	4d 01 fa             	add    %r15,%r10
    141a:	49 89 de             	mov    %rbx,%r14
    141d:	49 83 f9 01          	cmp    $0x1,%r9
    1421:	4d 89 d9             	mov    %r11,%r9
    1424:	77 ca                	ja     13f0 <main+0x2b0>
    1426:	48 01 de             	add    %rbx,%rsi
    1429:	48 85 d2             	test   %rdx,%rdx
    142c:	75 20                	jne    144e <main+0x30e>
    142e:	e9 ab 00 00 00       	jmp    14de <main+0x39e>
    1433:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
    143a:	84 00 00 00 00 00 
    1440:	31 db                	xor    %ebx,%ebx
    1442:	48 01 de             	add    %rbx,%rsi
    1445:	48 85 d2             	test   %rdx,%rdx
    1448:	0f 84 90 00 00 00    	je     14de <main+0x39e>
    144e:	41 ba 40 00 00 00    	mov    $0x40,%r10d
    1454:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
    145b:	00 00 00 00 00 
    1460:	4d 89 d1             	mov    %r10,%r9
    1463:	49 d1 ea             	shr    $1,%r10
    1466:	49 39 d1             	cmp    %rdx,%r9
    1469:	77 f5                	ja     1460 <main+0x320>
    146b:	4d 85 c9             	test   %r9,%r9
    146e:	74 60                	je     14d0 <main+0x390>
    1470:	41 ba 01 00 00 00    	mov    $0x1,%r10d
    1476:	45 31 f6             	xor    %r14d,%r14d
    1479:	4d 89 cb             	mov    %r9,%r11
    147c:	0f 1f 40 00          	nopl   0x0(%rax)
    1480:	4b 8d 1c 12          	lea    (%r10,%r10,1),%rbx
    1484:	4d 0f af d2          	imul   %r10,%r10
    1488:	4d 89 cf             	mov    %r9,%r15
    148b:	4c 29 f3             	sub    %r14,%rbx
    148e:	49 0f af de          	imul   %r14,%rbx
    1492:	4d 0f af f6          	imul   %r14,%r14
    1496:	4d 01 f2             	add    %r14,%r10
    1499:	49 21 d7             	and    %rdx,%r15
    149c:	4c 0f 45 fb          	cmovne %rbx,%r15
    14a0:	49 0f 45 da          	cmovne %r10,%rbx
    14a4:	49 d1 eb             	shr    $1,%r11
    14a7:	4d 01 fa             	add    %r15,%r10
    14aa:	49 89 de             	mov    %rbx,%r14
    14ad:	49 83 f9 01          	cmp    $0x1,%r9
    14b1:	4d 89 d9             	mov    %r11,%r9
    14b4:	77 ca                	ja     1480 <main+0x340>
    14b6:	48 01 de             	add    %rbx,%rsi
    14b9:	48 85 ff             	test   %rdi,%rdi
    14bc:	75 20                	jne    14de <main+0x39e>
    14be:	e9 ab 00 00 00       	jmp    156e <main+0x42e>
    14c3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
    14ca:	84 00 00 00 00 00 
    14d0:	31 db                	xor    %ebx,%ebx
    14d2:	48 01 de             	add    %rbx,%rsi
    14d5:	48 85 ff             	test   %rdi,%rdi
    14d8:	0f 84 90 00 00 00    	je     156e <main+0x42e>
    14de:	41 ba 40 00 00 00    	mov    $0x40,%r10d
    14e4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
    14eb:	00 00 00 00 00 
    14f0:	4d 89 d1             	mov    %r10,%r9
    14f3:	49 d1 ea             	shr    $1,%r10
    14f6:	49 39 f9             	cmp    %rdi,%r9
    14f9:	77 f5                	ja     14f0 <main+0x3b0>
    14fb:	4d 85 c9             	test   %r9,%r9
    14fe:	74 60                	je     1560 <main+0x420>
    1500:	41 ba 01 00 00 00    	mov    $0x1,%r10d
    1506:	45 31 f6             	xor    %r14d,%r14d
    1509:	4d 89 cb             	mov    %r9,%r11
    150c:	0f 1f 40 00          	nopl   0x0(%rax)
    1510:	4b 8d 1c 12          	lea    (%r10,%r10,1),%rbx
    1514:	4d 0f af d2          	imul   %r10,%r10
    1518:	4d 89 cf             	mov    %r9,%r15
    151b:	4c 29 f3             	sub    %r14,%rbx
    151e:	49 0f af de          	imul   %r14,%rbx
    1522:	4d 0f af f6          	imul   %r14,%r14
    1526:	4d 01 f2             	add    %r14,%r10
    1529:	49 21 ff             	and    %rdi,%r15
    152c:	4c 0f 45 fb          	cmovne %rbx,%r15
    1530:	49 0f 45 da          	cmovne %r10,%rbx
    1534:	49 d1 eb             	shr    $1,%r11
    1537:	4d 01 fa             	add    %r15,%r10
    153a:	49 89 de             	mov    %rbx,%r14
    153d:	49 83 f9 01          	cmp    $0x1,%r9
    1541:	4d 89 d9             	mov    %r11,%r9
    1544:	77 ca                	ja     1510 <main+0x3d0>
    1546:	48 01 de             	add    %rbx,%rsi
    1549:	48 85 c0             	test   %rax,%rax
    154c:	75 20                	jne    156e <main+0x42e>
    154e:	e9 ab 00 00 00       	jmp    15fe <main+0x4be>
    1553:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
    155a:	84 00 00 00 00 00 
    1560:	31 db                	xor    %ebx,%ebx
    1562:	48 01 de             	add    %rbx,%rsi
    1565:	48 85 c0             	test   %rax,%rax
    1568:	0f 84 90 00 00 00    	je     15fe <main+0x4be>
    156e:	41 ba 40 00 00 00    	mov    $0x40,%r10d
    1574:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
    157b:	00 00 00 00 00 
    1580:	4d 89 d1             	mov    %r10,%r9
    1583:	49 d1 ea             	shr    $1,%r10
    1586:	49 39 c1             	cmp    %rax,%r9
    1589:	77 f5                	ja     1580 <main+0x440>
    158b:	4d 85 c9             	test   %r9,%r9
    158e:	74 60                	je     15f0 <main+0x4b0>
    1590:	41 ba 01 00 00 00    	mov    $0x1,%r10d
    1596:	45 31 f6             	xor    %r14d,%r14d
    1599:	4d 89 cb             	mov    %r9,%r11
    159c:	0f 1f 40 00          	nopl   0x0(%rax)
    15a0:	4b 8d 1c 12          	lea    (%r10,%r10,1),%rbx
    15a4:	4d 0f af d2          	imul   %r10,%r10
    15a8:	4d 89 cf             	mov    %r9,%r15
    15ab:	4c 29 f3             	sub    %r14,%rbx
    15ae:	49 0f af de          	imul   %r14,%rbx
    15b2:	4d 0f af f6          	imul   %r14,%r14
    15b6:	4d 01 f2             	add    %r14,%r10
    15b9:	49 21 c7             	and    %rax,%r15
    15bc:	4c 0f 45 fb          	cmovne %rbx,%r15
    15c0:	49 0f 45 da          	cmovne %r10,%rbx
    15c4:	49 d1 eb             	shr    $1,%r11
    15c7:	4d 01 fa             	add    %r15,%r10
    15ca:	49 89 de             	mov    %rbx,%r14
    15cd:	49 83 f9 01          	cmp    $0x1,%r9
    15d1:	4d 89 d9             	mov    %r11,%r9
    15d4:	77 ca                	ja     15a0 <main+0x460>
    15d6:	48 01 de             	add    %rbx,%rsi
    15d9:	48 85 c9             	test   %rcx,%rcx
    15dc:	75 20                	jne    15fe <main+0x4be>
    15de:	e9 ab 00 00 00       	jmp    168e <main+0x54e>
    15e3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
    15ea:	84 00 00 00 00 00 
    15f0:	31 db                	xor    %ebx,%ebx
    15f2:	48 01 de             	add    %rbx,%rsi
    15f5:	48 85 c9             	test   %rcx,%rcx
    15f8:	0f 84 90 00 00 00    	je     168e <main+0x54e>
    15fe:	41 ba 40 00 00 00    	mov    $0x40,%r10d
    1604:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
    160b:	00 00 00 00 00 
    1610:	4d 89 d1             	mov    %r10,%r9
    1613:	49 d1 ea             	shr    $1,%r10
    1616:	49 39 c9             	cmp    %rcx,%r9
    1619:	77 f5                	ja     1610 <main+0x4d0>
    161b:	4d 85 c9             	test   %r9,%r9
    161e:	74 60                	je     1680 <main+0x540>
    1620:	41 ba 01 00 00 00    	mov    $0x1,%r10d
    1626:	45 31 f6             	xor    %r14d,%r14d
    1629:	4d 89 cb             	mov    %r9,%r11
    162c:	0f 1f 40 00          	nopl   0x0(%rax)
    1630:	4b 8d 1c 12          	lea    (%r10,%r10,1),%rbx
    1634:	4d 0f af d2          	imul   %r10,%r10
    1638:	4d 89 cf             	mov    %r9,%r15
    163b:	4c 29 f3             	sub    %r14,%rbx
    163e:	49 0f af de          	imul   %r14,%rbx
    1642:	4d 0f af f6          	imul   %r14,%r14
    1646:	4d 01 f2             	add    %r14,%r10
    1649:	49 21 cf             	and    %rcx,%r15
    164c:	4c 0f 45 fb          	cmovne %rbx,%r15
    1650:	49 0f 45 da          	cmovne %r10,%rbx
    1654:	49 d1 eb             	shr    $1,%r11
    1657:	4d 01 fa             	add    %r15,%r10
    165a:	49 89 de             	mov    %rbx,%r14
    165d:	49 83 f9 01          	cmp    $0x1,%r9
    1661:	4d 89 d9             	mov    %r11,%r9
    1664:	77 ca                	ja     1630 <main+0x4f0>
    1666:	48 01 de             	add    %rbx,%rsi
    1669:	48 85 d2             	test   %rdx,%rdx
    166c:	75 20                	jne    168e <main+0x54e>
    166e:	e9 ab 00 00 00       	jmp    171e <main+0x5de>
    1673:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
    167a:	84 00 00 00 00 00 
    1680:	31 db                	xor    %ebx,%ebx
    1682:	48 01 de             	add    %rbx,%rsi
    1685:	48 85 d2             	test   %rdx,%rdx
    1688:	0f 84 90 00 00 00    	je     171e <main+0x5de>
    168e:	41 ba 40 00 00 00    	mov    $0x40,%r10d
    1694:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
    169b:	00 00 00 00 00 
    16a0:	4d 89 d1             	mov    %r10,%r9
    16a3:	49 d1 ea             	shr    $1,%r10
    16a6:	49 39 d1             	cmp    %rdx,%r9
    16a9:	77 f5                	ja     16a0 <main+0x560>
    16ab:	4d 85 c9             	test   %r9,%r9
    16ae:	74 60                	je     1710 <main+0x5d0>
    16b0:	41 ba 01 00 00 00    	mov    $0x1,%r10d
    16b6:	45 31 f6             	xor    %r14d,%r14d
    16b9:	4d 89 cb             	mov    %r9,%r11
    16bc:	0f 1f 40 00          	nopl   0x0(%rax)
    16c0:	4b 8d 1c 12          	lea    (%r10,%r10,1),%rbx
    16c4:	4d 0f af d2          	imul   %r10,%r10
    16c8:	4d 89 cf             	mov    %r9,%r15
    16cb:	4c 29 f3             	sub    %r14,%rbx
    16ce:	49 0f af de          	imul   %r14,%rbx
    16d2:	4d 0f af f6          	imul   %r14,%r14
    16d6:	4d 01 f2             	add    %r14,%r10
    16d9:	49 21 d7             	and    %rdx,%r15
    16dc:	4c 0f 45 fb          	cmovne %rbx,%r15
    16e0:	49 0f 45 da          	cmovne %r10,%rbx
    16e4:	49 d1 eb             	shr    $1,%r11
    16e7:	4d 01 fa             	add    %r15,%r10
    16ea:	49 89 de             	mov    %rbx,%r14
    16ed:	49 83 f9 01          	cmp    $0x1,%r9
    16f1:	4d 89 d9             	mov    %r11,%r9
    16f4:	77 ca                	ja     16c0 <main+0x580>
    16f6:	48 01 de             	add    %rbx,%rsi
    16f9:	48 85 ff             	test   %rdi,%rdi
    16fc:	75 20                	jne    171e <main+0x5de>
    16fe:	e9 ab 00 00 00       	jmp    17ae <main+0x66e>
    1703:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
    170a:	84 00 00 00 00 00 
    1710:	31 db                	xor    %ebx,%ebx
    1712:	48 01 de             	add    %rbx,%rsi
    1715:	48 85 ff             	test   %rdi,%rdi
    1718:	0f 84 90 00 00 00    	je     17ae <main+0x66e>
    171e:	41 ba 40 00 00 00    	mov    $0x40,%r10d
    1724:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
    172b:	00 00 00 00 00 
    1730:	4d 89 d1             	mov    %r10,%r9
    1733:	49 d1 ea             	shr    $1,%r10
    1736:	49 39 f9             	cmp    %rdi,%r9
    1739:	77 f5                	ja     1730 <main+0x5f0>
    173b:	4d 85 c9             	test   %r9,%r9
    173e:	74 60                	je     17a0 <main+0x660>
    1740:	41 ba 01 00 00 00    	mov    $0x1,%r10d
    1746:	45 31 f6             	xor    %r14d,%r14d
    1749:	4d 89 cb             	mov    %r9,%r11
    174c:	0f 1f 40 00          	nopl   0x0(%rax)
    1750:	4b 8d 1c 12          	lea    (%r10,%r10,1),%rbx
    1754:	4d 0f af d2          	imul   %r10,%r10
    1758:	4d 89 cf             	mov    %r9,%r15
    175b:	4c 29 f3             	sub    %r14,%rbx
    175e:	49 0f af de          	imul   %r14,%rbx
    1762:	4d 0f af f6          	imul   %r14,%r14
    1766:	4d 01 f2             	add    %r14,%r10
    1769:	49 21 ff             	and    %rdi,%r15
    176c:	4c 0f 45 fb          	cmovne %rbx,%r15
    1770:	49 0f 45 da          	cmovne %r10,%rbx
    1774:	49 d1 eb             	shr    $1,%r11
    1777:	4d 01 fa             	add    %r15,%r10
    177a:	49 89 de             	mov    %rbx,%r14
    177d:	49 83 f9 01          	cmp    $0x1,%r9
    1781:	4d 89 d9             	mov    %r11,%r9
    1784:	77 ca                	ja     1750 <main+0x610>
    1786:	48 01 de             	add    %rbx,%rsi
    1789:	48 85 c0             	test   %rax,%rax
    178c:	75 20                	jne    17ae <main+0x66e>
    178e:	e9 ab 00 00 00       	jmp    183e <main+0x6fe>
    1793:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
    179a:	84 00 00 00 00 00 
    17a0:	31 db                	xor    %ebx,%ebx
    17a2:	48 01 de             	add    %rbx,%rsi
    17a5:	48 85 c0             	test   %rax,%rax
    17a8:	0f 84 90 00 00 00    	je     183e <main+0x6fe>
    17ae:	41 ba 40 00 00 00    	mov    $0x40,%r10d
    17b4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
    17bb:	00 00 00 00 00 
    17c0:	4d 89 d1             	mov    %r10,%r9
    17c3:	49 d1 ea             	shr    $1,%r10
    17c6:	49 39 c1             	cmp    %rax,%r9
    17c9:	77 f5                	ja     17c0 <main+0x680>
    17cb:	4d 85 c9             	test   %r9,%r9
    17ce:	74 60                	je     1830 <main+0x6f0>
    17d0:	41 ba 01 00 00 00    	mov    $0x1,%r10d
    17d6:	45 31 f6             	xor    %r14d,%r14d
    17d9:	4d 89 cb             	mov    %r9,%r11
    17dc:	0f 1f 40 00          	nopl   0x0(%rax)
    17e0:	4b 8d 1c 12          	lea    (%r10,%r10,1),%rbx
    17e4:	4d 0f af d2          	imul   %r10,%r10
    17e8:	4d 89 cf             	mov    %r9,%r15
    17eb:	4c 29 f3             	sub    %r14,%rbx
    17ee:	49 0f af de          	imul   %r14,%rbx
    17f2:	4d 0f af f6          	imul   %r14,%r14
    17f6:	4d 01 f2             	add    %r14,%r10
    17f9:	49 21 c7             	and    %rax,%r15
    17fc:	4c 0f 45 fb          	cmovne %rbx,%r15
    1800:	49 0f 45 da          	cmovne %r10,%rbx
    1804:	49 d1 eb             	shr    $1,%r11
    1807:	4d 01 fa             	add    %r15,%r10
    180a:	49 89 de             	mov    %rbx,%r14
    180d:	49 83 f9 01          	cmp    $0x1,%r9
    1811:	4d 89 d9             	mov    %r11,%r9
    1814:	77 ca                	ja     17e0 <main+0x6a0>
    1816:	48 01 de             	add    %rbx,%rsi
    1819:	48 85 c9             	test   %rcx,%rcx
    181c:	75 20                	jne    183e <main+0x6fe>
    181e:	e9 ae 00 00 00       	jmp    18d1 <main+0x791>
    1823:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
    182a:	84 00 00 00 00 00 
    1830:	31 db                	xor    %ebx,%ebx
    1832:	48 01 de             	add    %rbx,%rsi
    1835:	48 85 c9             	test   %rcx,%rcx
    1838:	0f 84 93 00 00 00    	je     18d1 <main+0x791>
    183e:	41 ba 40 00 00 00    	mov    $0x40,%r10d
    1844:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
    184b:	00 00 00 00 00 
    1850:	4d 89 d1             	mov    %r10,%r9
    1853:	49 d1 ea             	shr    $1,%r10
    1856:	49 39 c9             	cmp    %rcx,%r9
    1859:	77 f5                	ja     1850 <main+0x710>
    185b:	4d 85 c9             	test   %r9,%r9
    185e:	74 60                	je     18c0 <main+0x780>
    1860:	41 ba 01 00 00 00    	mov    $0x1,%r10d
    1866:	45 31 f6             	xor    %r14d,%r14d
    1869:	4d 89 cb             	mov    %r9,%r11
    186c:	0f 1f 40 00          	nopl   0x0(%rax)
    1870:	4b 8d 1c 12          	lea    (%r10,%r10,1),%rbx
    1874:	4d 0f af d2          	imul   %r10,%r10
    1878:	4d 89 cf             	mov    %r9,%r15
    187b:	4c 29 f3             	sub    %r14,%rbx
    187e:	49 0f af de          	imul   %r14,%rbx
    1882:	4d 0f af f6          	imul   %r14,%r14
    1886:	4d 01 f2             	add    %r14,%r10
    1889:	49 21 cf             	and    %rcx,%r15
    188c:	4c 0f 45 fb          	cmovne %rbx,%r15
    1890:	49 0f 45 da          	cmovne %r10,%rbx
    1894:	49 d1 eb             	shr    $1,%r11
    1897:	4d 01 fa             	add    %r15,%r10
    189a:	49 89 de             	mov    %rbx,%r14
    189d:	49 83 f9 01          	cmp    $0x1,%r9
    18a1:	4d 89 d9             	mov    %r11,%r9
    18a4:	77 ca                	ja     1870 <main+0x730>
    18a6:	48 01 de             	add    %rbx,%rsi
    18a9:	49 89 f1             	mov    %rsi,%r9
    18ac:	48 85 d2             	test   %rdx,%rdx
    18af:	75 20                	jne    18d1 <main+0x791>
    18b1:	e9 ac 00 00 00       	jmp    1962 <main+0x822>
    18b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    18bd:	00 00 00 
    18c0:	31 db                	xor    %ebx,%ebx
    18c2:	48 01 de             	add    %rbx,%rsi
    18c5:	49 89 f1             	mov    %rsi,%r9
    18c8:	48 85 d2             	test   %rdx,%rdx
    18cb:	0f 84 91 00 00 00    	je     1962 <main+0x822>
    18d1:	41 b9 40 00 00 00    	mov    $0x40,%r9d
    18d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    18de:	00 00 
    18e0:	4d 89 ca             	mov    %r9,%r10
    18e3:	49 d1 e9             	shr    $1,%r9
    18e6:	49 39 d2             	cmp    %rdx,%r10
    18e9:	77 f5                	ja     18e0 <main+0x7a0>
    18eb:	4d 85 d2             	test   %r10,%r10
    18ee:	74 60                	je     1950 <main+0x810>
    18f0:	41 bb 01 00 00 00    	mov    $0x1,%r11d
    18f6:	45 31 f6             	xor    %r14d,%r14d
    18f9:	4c 89 d3             	mov    %r10,%rbx
    18fc:	0f 1f 40 00          	nopl   0x0(%rax)
    1900:	4f 8d 0c 1b          	lea    (%r11,%r11,1),%r9
    1904:	4d 0f af db          	imul   %r11,%r11
    1908:	4d 89 d7             	mov    %r10,%r15
    190b:	4d 29 f1             	sub    %r14,%r9
    190e:	4d 0f af ce          	imul   %r14,%r9
    1912:	4d 0f af f6          	imul   %r14,%r14
    1916:	4d 01 f3             	add    %r14,%r11
    1919:	49 21 d7             	and    %rdx,%r15
    191c:	4d 0f 45 f9          	cmovne %r9,%r15
    1920:	4d 0f 45 cb          	cmovne %r11,%r9
    1924:	48 d1 eb             	shr    $1,%rbx
    1927:	4d 01 fb             	add    %r15,%r11
    192a:	4d 89 ce             	mov    %r9,%r14
    192d:	49 83 fa 01          	cmp    $0x1,%r10
    1931:	49 89 da             	mov    %rbx,%r10
    1934:	77 ca                	ja     1900 <main+0x7c0>
    1936:	49 01 f1             	add    %rsi,%r9
    1939:	4c 89 ce             	mov    %r9,%rsi
    193c:	48 85 ff             	test   %rdi,%rdi
    193f:	75 21                	jne    1962 <main+0x822>
    1941:	e9 a8 00 00 00       	jmp    19ee <main+0x8ae>
    1946:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    194d:	00 00 00 
    1950:	45 31 c9             	xor    %r9d,%r9d
    1953:	49 01 f1             	add    %rsi,%r9
    1956:	4c 89 ce             	mov    %r9,%rsi
    1959:	48 85 ff             	test   %rdi,%rdi
    195c:	0f 84 8c 00 00 00    	je     19ee <main+0x8ae>
    1962:	be 40 00 00 00       	mov    $0x40,%esi
    1967:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    196e:	00 00 
    1970:	49 89 f2             	mov    %rsi,%r10
    1973:	48 d1 ee             	shr    $1,%rsi
    1976:	49 39 fa             	cmp    %rdi,%r10
    1979:	77 f5                	ja     1970 <main+0x830>
    197b:	4d 85 d2             	test   %r10,%r10
    197e:	74 60                	je     19e0 <main+0x8a0>
    1980:	41 bb 01 00 00 00    	mov    $0x1,%r11d
    1986:	45 31 f6             	xor    %r14d,%r14d
    1989:	4c 89 d3             	mov    %r10,%rbx
    198c:	0f 1f 40 00          	nopl   0x0(%rax)
    1990:	4b 8d 34 1b          	lea    (%r11,%r11,1),%rsi
    1994:	4d 0f af db          	imul   %r11,%r11
    1998:	4d 89 d7             	mov    %r10,%r15
    199b:	4c 29 f6             	sub    %r14,%rsi
    199e:	49 0f af f6          	imul   %r14,%rsi
    19a2:	4d 0f af f6          	imul   %r14,%r14
    19a6:	4d 01 f3             	add    %r14,%r11
    19a9:	49 21 ff             	and    %rdi,%r15
    19ac:	4c 0f 45 fe          	cmovne %rsi,%r15
    19b0:	49 0f 45 f3          	cmovne %r11,%rsi
    19b4:	48 d1 eb             	shr    $1,%rbx
    19b7:	4d 01 fb             	add    %r15,%r11
    19ba:	49 89 f6             	mov    %rsi,%r14
    19bd:	49 83 fa 01          	cmp    $0x1,%r10
    19c1:	49 89 da             	mov    %rbx,%r10
    19c4:	77 ca                	ja     1990 <main+0x850>
    19c6:	4c 01 ce             	add    %r9,%rsi
    19c9:	48 85 c0             	test   %rax,%rax
    19cc:	75 20                	jne    19ee <main+0x8ae>
    19ce:	e9 8d f7 ff ff       	jmp    1160 <main+0x20>
    19d3:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
    19da:	84 00 00 00 00 00 
    19e0:	31 f6                	xor    %esi,%esi
    19e2:	4c 01 ce             	add    %r9,%rsi
    19e5:	48 85 c0             	test   %rax,%rax
    19e8:	0f 84 72 f7 ff ff    	je     1160 <main+0x20>
    19ee:	41 ba 40 00 00 00    	mov    $0x40,%r10d
    19f4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
    19fb:	00 00 00 00 00 
    1a00:	4d 89 d1             	mov    %r10,%r9
    1a03:	49 d1 ea             	shr    $1,%r10
    1a06:	49 39 c1             	cmp    %rax,%r9
    1a09:	77 f5                	ja     1a00 <main+0x8c0>
    1a0b:	4d 85 c9             	test   %r9,%r9
    1a0e:	0f 84 4c f7 ff ff    	je     1160 <main+0x20>
    1a14:	41 bb 01 00 00 00    	mov    $0x1,%r11d
    1a1a:	45 31 d2             	xor    %r10d,%r10d
    1a1d:	4c 89 cb             	mov    %r9,%rbx
    1a20:	4f 8d 34 1b          	lea    (%r11,%r11,1),%r14
    1a24:	4d 0f af db          	imul   %r11,%r11
    1a28:	4d 89 cf             	mov    %r9,%r15
    1a2b:	4d 29 d6             	sub    %r10,%r14
    1a2e:	4d 0f af f2          	imul   %r10,%r14
    1a32:	4d 0f af d2          	imul   %r10,%r10
    1a36:	4d 01 d3             	add    %r10,%r11
    1a39:	49 21 c7             	and    %rax,%r15
    1a3c:	4d 89 f2             	mov    %r14,%r10
    1a3f:	4d 0f 45 fe          	cmovne %r14,%r15
    1a43:	4d 0f 45 d3          	cmovne %r11,%r10
    1a47:	48 d1 eb             	shr    $1,%rbx
    1a4a:	4d 01 fb             	add    %r15,%r11
    1a4d:	49 83 f9 01          	cmp    $0x1,%r9
    1a51:	49 89 d9             	mov    %rbx,%r9
    1a54:	77 ca                	ja     1a20 <main+0x8e0>
    1a56:	e9 08 f7 ff ff       	jmp    1163 <main+0x23>
    1a5b:	48 8d 3d a2 05 00 00 	lea    0x5a2(%rip),%rdi        # 2004 <_IO_stdin_used+0x4>
    1a62:	31 c0                	xor    %eax,%eax
    1a64:	e8 c7 f5 ff ff       	call   1030 <printf@plt>
    1a69:	31 c0                	xor    %eax,%eax
    1a6b:	5b                   	pop    %rbx
    1a6c:	41 5e                	pop    %r14
    1a6e:	41 5f                	pop    %r15
    1a70:	c3                   	ret

Disassembly of section .fini:

0000000000001a74 <_fini>:
    1a74:	f3 0f 1e fa          	endbr64
    1a78:	48 83 ec 08          	sub    $0x8,%rsp
    1a7c:	48 83 c4 08          	add    $0x8,%rsp
    1a80:	c3                   	ret
