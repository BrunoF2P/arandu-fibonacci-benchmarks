; Benchmark: 03_iterative_dp
; Implementação: C (Clang -O3 -march=native -flto)
; Executável: /workspaces/arandu-fibonacci-benchmarks/build/03_iterative_dp/c_clang
; Comando: /usr/bin/objdump -d -C /workspaces/arandu-fibonacci-benchmarks/build/03_iterative_dp/c_clang


/workspaces/arandu-fibonacci-benchmarks/build/03_iterative_dp/c_clang:     file format elf64-x86-64


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

0000000000001020 <printf@plt-0x10>:
    1020:	ff 35 ca 3f 00 00    	push   0x3fca(%rip)        # 4ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 cc 3f 00 00    	jmp    *0x3fcc(%rip)        # 4ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <printf@plt>:
    1030:	ff 25 ca 3f 00 00    	jmp    *0x3fca(%rip)        # 5000 <printf@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	push   $0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .plt.got:

0000000000001040 <__cxa_finalize@plt>:
    1040:	ff 25 9a 3f 00 00    	jmp    *0x3f9a(%rip)        # 4fe0 <__cxa_finalize@GLIBC_2.2.5>
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
    106f:	ff 15 4b 3f 00 00    	call   *0x3f4b(%rip)        # 4fc0 <__libc_start_main@GLIBC_2.34>
    1075:	f4                   	hlt
    1076:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    107d:	00 00 00 

0000000000001080 <deregister_tm_clones>:
    1080:	48 8d 3d 91 3f 00 00 	lea    0x3f91(%rip),%rdi        # 5018 <__TMC_END__>
    1087:	48 8d 05 8a 3f 00 00 	lea    0x3f8a(%rip),%rax        # 5018 <__TMC_END__>
    108e:	48 39 f8             	cmp    %rdi,%rax
    1091:	74 15                	je     10a8 <deregister_tm_clones+0x28>
    1093:	48 8b 05 2e 3f 00 00 	mov    0x3f2e(%rip),%rax        # 4fc8 <_ITM_deregisterTMCloneTable@Base>
    109a:	48 85 c0             	test   %rax,%rax
    109d:	74 09                	je     10a8 <deregister_tm_clones+0x28>
    109f:	ff e0                	jmp    *%rax
    10a1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10a8:	c3                   	ret
    10a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010b0 <register_tm_clones>:
    10b0:	48 8d 3d 61 3f 00 00 	lea    0x3f61(%rip),%rdi        # 5018 <__TMC_END__>
    10b7:	48 8d 35 5a 3f 00 00 	lea    0x3f5a(%rip),%rsi        # 5018 <__TMC_END__>
    10be:	48 29 fe             	sub    %rdi,%rsi
    10c1:	48 89 f0             	mov    %rsi,%rax
    10c4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    10c8:	48 c1 f8 03          	sar    $0x3,%rax
    10cc:	48 01 c6             	add    %rax,%rsi
    10cf:	48 d1 fe             	sar    $1,%rsi
    10d2:	74 14                	je     10e8 <register_tm_clones+0x38>
    10d4:	48 8b 05 fd 3e 00 00 	mov    0x3efd(%rip),%rax        # 4fd8 <_ITM_registerTMCloneTable@Base>
    10db:	48 85 c0             	test   %rax,%rax
    10de:	74 08                	je     10e8 <register_tm_clones+0x38>
    10e0:	ff e0                	jmp    *%rax
    10e2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    10e8:	c3                   	ret
    10e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010f0 <__do_global_dtors_aux>:
    10f0:	f3 0f 1e fa          	endbr64
    10f4:	80 3d 1d 3f 00 00 00 	cmpb   $0x0,0x3f1d(%rip)        # 5018 <__TMC_END__>
    10fb:	75 2b                	jne    1128 <__do_global_dtors_aux+0x38>
    10fd:	55                   	push   %rbp
    10fe:	48 83 3d da 3e 00 00 	cmpq   $0x0,0x3eda(%rip)        # 4fe0 <__cxa_finalize@GLIBC_2.2.5>
    1105:	00 
    1106:	48 89 e5             	mov    %rsp,%rbp
    1109:	74 0c                	je     1117 <__do_global_dtors_aux+0x27>
    110b:	48 8b 3d fe 3e 00 00 	mov    0x3efe(%rip),%rdi        # 5010 <__dso_handle>
    1112:	e8 29 ff ff ff       	call   1040 <__cxa_finalize@plt>
    1117:	e8 64 ff ff ff       	call   1080 <deregister_tm_clones>
    111c:	c6 05 f5 3e 00 00 01 	movb   $0x1,0x3ef5(%rip)        # 5018 <__TMC_END__>
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
    1140:	55                   	push   %rbp
    1141:	41 57                	push   %r15
    1143:	41 56                	push   %r14
    1145:	41 55                	push   %r13
    1147:	41 54                	push   %r12
    1149:	53                   	push   %rbx
    114a:	48 81 ec d8 00 00 00 	sub    $0xd8,%rsp
    1151:	48 63 c7             	movslq %edi,%rax
    1154:	41 b2 02             	mov    $0x2,%r10b
    1157:	45 31 c9             	xor    %r9d,%r9d
    115a:	45 31 f6             	xor    %r14d,%r14d
    115d:	31 f6                	xor    %esi,%esi
    115f:	31 db                	xor    %ebx,%ebx
    1161:	48 8d 48 58          	lea    0x58(%rax),%rcx
    1165:	4c 8d 58 59          	lea    0x59(%rax),%r11
    1169:	4c 8d 78 5a          	lea    0x5a(%rax),%r15
    116d:	48 8d 78 52          	lea    0x52(%rax),%rdi
    1171:	8d 50 02             	lea    0x2(%rax),%edx
    1174:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    1179:	8d 48 01             	lea    0x1(%rax),%ecx
    117c:	48 83 c0 51          	add    $0x51,%rax
    1180:	48 89 7c 24 10       	mov    %rdi,0x10(%rsp)
    1185:	89 54 24 3c          	mov    %edx,0x3c(%rsp)
    1189:	4c 89 5c 24 18       	mov    %r11,0x18(%rsp)
    118e:	4c 89 bc 24 98 00 00 	mov    %r15,0x98(%rsp)
    1195:	00 
    1196:	48 89 8c 24 90 00 00 	mov    %rcx,0x90(%rsp)
    119d:	00 
    119e:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    11a3:	eb 78                	jmp    121d <main+0xdd>
    11a5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    11ac:	00 00 00 00 
    11b0:	45 31 ff             	xor    %r15d,%r15d
    11b3:	4c 03 a4 24 c0 00 00 	add    0xc0(%rsp),%r12
    11ba:	00 
    11bb:	4c 8b 5c 24 18       	mov    0x18(%rsp),%r11
    11c0:	4c 01 e2             	add    %r12,%rdx
    11c3:	49 01 d2             	add    %rdx,%r10
    11c6:	4c 01 d3             	add    %r10,%rbx
    11c9:	44 0f b6 54 24 07    	movzbl 0x7(%rsp),%r10d
    11cf:	49 01 de             	add    %rbx,%r14
    11d2:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
    11d7:	4d 01 f1             	add    %r14,%r9
    11da:	4c 8b b4 24 c8 00 00 	mov    0xc8(%rsp),%r14
    11e1:	00 
    11e2:	4c 01 c9             	add    %r9,%rcx
    11e5:	4c 8b 8c 24 d0 00 00 	mov    0xd0(%rsp),%r9
    11ec:	00 
    11ed:	48 01 c8             	add    %rcx,%rax
    11f0:	48 01 c7             	add    %rax,%rdi
    11f3:	41 80 c2 02          	add    $0x2,%r10b
    11f7:	48 89 fe             	mov    %rdi,%rsi
    11fa:	4c 01 fe             	add    %r15,%rsi
    11fd:	4c 8b bc 24 98 00 00 	mov    0x98(%rsp),%r15
    1204:	00 
    1205:	48 83 c3 0a          	add    $0xa,%rbx
    1209:	41 fe c6             	inc    %r14b
    120c:	41 80 c1 02          	add    $0x2,%r9b
    1210:	48 81 fb 80 96 98 00 	cmp    $0x989680,%rbx
    1217:	0f 84 c9 11 00 00    	je     23e6 <main+0x12a6>
    121d:	48 8b 8c 24 90 00 00 	mov    0x90(%rsp),%rcx
    1224:	00 
    1225:	43 8d 04 36          	lea    (%r14,%r14,1),%eax
    1229:	41 89 dc             	mov    %ebx,%r12d
    122c:	41 83 e4 02          	and    $0x2,%r12d
    1230:	48 89 b4 24 c0 00 00 	mov    %rsi,0xc0(%rsp)
    1237:	00 
    1238:	89 c2                	mov    %eax,%edx
    123a:	4c 89 e7             	mov    %r12,%rdi
    123d:	4f 8d 04 23          	lea    (%r11,%r12,1),%r8
    1241:	48 f7 df             	neg    %rdi
    1244:	4c 89 64 24 78       	mov    %r12,0x78(%rsp)
    1249:	80 e2 02             	and    $0x2,%dl
    124c:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
    1251:	48 89 bc 24 80 00 00 	mov    %rdi,0x80(%rsp)
    1258:	00 
    1259:	01 d1                	add    %edx,%ecx
    125b:	44 0f b6 e9          	movzbl %cl,%r13d
    125f:	49 39 fb             	cmp    %rdi,%r11
    1262:	75 0c                	jne    1270 <main+0x130>
    1264:	45 31 e4             	xor    %r12d,%r12d
    1267:	e9 75 01 00 00       	jmp    13e1 <main+0x2a1>
    126c:	0f 1f 40 00          	nopl   0x0(%rax)
    1270:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
    1275:	4c 01 e1             	add    %r12,%rcx
    1278:	48 83 f9 07          	cmp    $0x7,%rcx
    127c:	73 12                	jae    1290 <main+0x150>
    127e:	b9 01 00 00 00       	mov    $0x1,%ecx
    1283:	31 f6                	xor    %esi,%esi
    1285:	e9 33 01 00 00       	jmp    13bd <main+0x27d>
    128a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1290:	41 0f b6 ce          	movzbl %r14b,%ecx
    1294:	83 e1 01             	and    $0x1,%ecx
    1297:	49 8d 4c 4b f8       	lea    -0x8(%r11,%rcx,2),%rcx
    129c:	48 89 cf             	mov    %rcx,%rdi
    129f:	48 c1 ef 03          	shr    $0x3,%rdi
    12a3:	48 ff c7             	inc    %rdi
    12a6:	48 83 f9 38          	cmp    $0x38,%rcx
    12aa:	73 0c                	jae    12b8 <main+0x178>
    12ac:	b9 01 00 00 00       	mov    $0x1,%ecx
    12b1:	31 f6                	xor    %esi,%esi
    12b3:	e9 e2 00 00 00       	jmp    139a <main+0x25a>
    12b8:	49 89 f8             	mov    %rdi,%r8
    12bb:	49 83 e0 f8          	and    $0xfffffffffffffff8,%r8
    12bf:	b9 01 00 00 00       	mov    $0x1,%ecx
    12c4:	31 f6                	xor    %esi,%esi
    12c6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    12cd:	00 00 00 
    12d0:	48 01 ce             	add    %rcx,%rsi
    12d3:	48 01 f1             	add    %rsi,%rcx
    12d6:	48 01 ce             	add    %rcx,%rsi
    12d9:	48 01 f1             	add    %rsi,%rcx
    12dc:	48 01 ce             	add    %rcx,%rsi
    12df:	48 01 f1             	add    %rsi,%rcx
    12e2:	48 01 ce             	add    %rcx,%rsi
    12e5:	48 01 f1             	add    %rsi,%rcx
    12e8:	48 01 ce             	add    %rcx,%rsi
    12eb:	48 01 f1             	add    %rsi,%rcx
    12ee:	48 01 ce             	add    %rcx,%rsi
    12f1:	48 01 f1             	add    %rsi,%rcx
    12f4:	48 01 ce             	add    %rcx,%rsi
    12f7:	48 01 f1             	add    %rsi,%rcx
    12fa:	48 01 ce             	add    %rcx,%rsi
    12fd:	48 01 f1             	add    %rsi,%rcx
    1300:	48 01 ce             	add    %rcx,%rsi
    1303:	48 01 f1             	add    %rsi,%rcx
    1306:	48 01 ce             	add    %rcx,%rsi
    1309:	48 01 f1             	add    %rsi,%rcx
    130c:	48 01 ce             	add    %rcx,%rsi
    130f:	48 01 f1             	add    %rsi,%rcx
    1312:	48 01 ce             	add    %rcx,%rsi
    1315:	48 01 f1             	add    %rsi,%rcx
    1318:	48 01 ce             	add    %rcx,%rsi
    131b:	48 01 f1             	add    %rsi,%rcx
    131e:	48 01 ce             	add    %rcx,%rsi
    1321:	48 01 f1             	add    %rsi,%rcx
    1324:	48 01 ce             	add    %rcx,%rsi
    1327:	48 01 f1             	add    %rsi,%rcx
    132a:	48 01 ce             	add    %rcx,%rsi
    132d:	48 01 f1             	add    %rsi,%rcx
    1330:	48 01 ce             	add    %rcx,%rsi
    1333:	48 01 f1             	add    %rsi,%rcx
    1336:	48 01 ce             	add    %rcx,%rsi
    1339:	48 01 f1             	add    %rsi,%rcx
    133c:	48 01 ce             	add    %rcx,%rsi
    133f:	48 01 f1             	add    %rsi,%rcx
    1342:	48 01 ce             	add    %rcx,%rsi
    1345:	48 01 f1             	add    %rsi,%rcx
    1348:	48 01 ce             	add    %rcx,%rsi
    134b:	48 01 f1             	add    %rsi,%rcx
    134e:	48 01 ce             	add    %rcx,%rsi
    1351:	48 01 f1             	add    %rsi,%rcx
    1354:	48 01 ce             	add    %rcx,%rsi
    1357:	48 01 f1             	add    %rsi,%rcx
    135a:	48 01 ce             	add    %rcx,%rsi
    135d:	48 01 f1             	add    %rsi,%rcx
    1360:	48 01 ce             	add    %rcx,%rsi
    1363:	48 01 f1             	add    %rsi,%rcx
    1366:	48 01 ce             	add    %rcx,%rsi
    1369:	48 01 f1             	add    %rsi,%rcx
    136c:	48 01 ce             	add    %rcx,%rsi
    136f:	48 01 f1             	add    %rsi,%rcx
    1372:	48 01 ce             	add    %rcx,%rsi
    1375:	48 01 f1             	add    %rsi,%rcx
    1378:	48 01 ce             	add    %rcx,%rsi
    137b:	48 01 f1             	add    %rsi,%rcx
    137e:	48 01 ce             	add    %rcx,%rsi
    1381:	48 01 f1             	add    %rsi,%rcx
    1384:	48 01 ce             	add    %rcx,%rsi
    1387:	48 01 f1             	add    %rsi,%rcx
    138a:	48 01 ce             	add    %rcx,%rsi
    138d:	48 01 f1             	add    %rsi,%rcx
    1390:	49 83 c0 f8          	add    $0xfffffffffffffff8,%r8
    1394:	0f 85 36 ff ff ff    	jne    12d0 <main+0x190>
    139a:	83 e7 07             	and    $0x7,%edi
    139d:	74 1e                	je     13bd <main+0x27d>
    139f:	90                   	nop
    13a0:	48 01 ce             	add    %rcx,%rsi
    13a3:	48 01 f1             	add    %rsi,%rcx
    13a6:	48 01 ce             	add    %rcx,%rsi
    13a9:	48 01 f1             	add    %rsi,%rcx
    13ac:	48 01 ce             	add    %rcx,%rsi
    13af:	48 01 f1             	add    %rsi,%rcx
    13b2:	48 01 ce             	add    %rcx,%rsi
    13b5:	48 01 f1             	add    %rsi,%rcx
    13b8:	48 ff cf             	dec    %rdi
    13bb:	75 e3                	jne    13a0 <main+0x260>
    13bd:	f6 44 24 60 07       	testb  $0x7,0x60(%rsp)
    13c2:	49 89 f4             	mov    %rsi,%r12
    13c5:	74 1a                	je     13e1 <main+0x2a1>
    13c7:	44 89 ef             	mov    %r13d,%edi
    13ca:	83 e7 07             	and    $0x7,%edi
    13cd:	0f 1f 00             	nopl   (%rax)
    13d0:	49 89 cc             	mov    %rcx,%r12
    13d3:	48 89 f1             	mov    %rsi,%rcx
    13d6:	4c 01 e1             	add    %r12,%rcx
    13d9:	48 ff cf             	dec    %rdi
    13dc:	4c 89 e6             	mov    %r12,%rsi
    13df:	75 ef                	jne    13d0 <main+0x290>
    13e1:	02 54 24 3c          	add    0x3c(%rsp),%dl
    13e5:	41 0f b6 c9          	movzbl %r9b,%ecx
    13e9:	0f b6 f0             	movzbl %al,%esi
    13ec:	48 89 5c 24 20       	mov    %rbx,0x20(%rsp)
    13f1:	4c 89 8c 24 d0 00 00 	mov    %r9,0xd0(%rsp)
    13f8:	00 
    13f9:	89 cf                	mov    %ecx,%edi
    13fb:	83 e1 03             	and    $0x3,%ecx
    13fe:	83 e6 02             	and    $0x2,%esi
    1401:	83 e7 03             	and    $0x3,%edi
    1404:	48 89 4c 24 30       	mov    %rcx,0x30(%rsp)
    1409:	48 8b 4c 24 10       	mov    0x10(%rsp),%rcx
    140e:	0f b6 ea             	movzbl %dl,%ebp
    1411:	49 8d 54 37 f8       	lea    -0x8(%r15,%rsi,1),%rdx
    1416:	48 89 d0             	mov    %rdx,%rax
    1419:	48 c1 e8 03          	shr    $0x3,%rax
    141d:	48 01 f9             	add    %rdi,%rcx
    1420:	48 89 54 24 70       	mov    %rdx,0x70(%rsp)
    1425:	48 ff c0             	inc    %rax
    1428:	48 c1 e9 03          	shr    $0x3,%rcx
    142c:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    1431:	89 d8                	mov    %ebx,%eax
    1433:	83 e0 02             	and    $0x2,%eax
    1436:	48 ff c1             	inc    %rcx
    1439:	48 83 c8 01          	or     $0x1,%rax
    143d:	48 89 4c 24 50       	mov    %rcx,0x50(%rsp)
    1442:	4c 89 d9             	mov    %r11,%rcx
    1445:	48 01 c1             	add    %rax,%rcx
    1448:	75 16                	jne    1460 <main+0x320>
    144a:	31 d2                	xor    %edx,%edx
    144c:	e9 90 01 00 00       	jmp    15e1 <main+0x4a1>
    1451:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
    1458:	0f 1f 84 00 00 00 00 
    145f:	00 
    1460:	48 03 44 24 08       	add    0x8(%rsp),%rax
    1465:	48 83 f8 07          	cmp    $0x7,%rax
    1469:	73 15                	jae    1480 <main+0x340>
    146b:	b8 01 00 00 00       	mov    $0x1,%eax
    1470:	45 31 c0             	xor    %r8d,%r8d
    1473:	e9 45 01 00 00       	jmp    15bd <main+0x47d>
    1478:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    147f:	00 
    1480:	48 83 fa 38          	cmp    $0x38,%rdx
    1484:	73 0d                	jae    1493 <main+0x353>
    1486:	b8 01 00 00 00       	mov    $0x1,%eax
    148b:	45 31 c0             	xor    %r8d,%r8d
    148e:	e9 e7 00 00 00       	jmp    157a <main+0x43a>
    1493:	48 8b 54 24 50       	mov    0x50(%rsp),%rdx
    1498:	b8 01 00 00 00       	mov    $0x1,%eax
    149d:	45 31 c0             	xor    %r8d,%r8d
    14a0:	48 83 e2 f8          	and    $0xfffffffffffffff8,%rdx
    14a4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
    14ab:	00 00 00 00 00 
    14b0:	49 01 c0             	add    %rax,%r8
    14b3:	4c 01 c0             	add    %r8,%rax
    14b6:	49 01 c0             	add    %rax,%r8
    14b9:	4c 01 c0             	add    %r8,%rax
    14bc:	49 01 c0             	add    %rax,%r8
    14bf:	4c 01 c0             	add    %r8,%rax
    14c2:	49 01 c0             	add    %rax,%r8
    14c5:	4c 01 c0             	add    %r8,%rax
    14c8:	49 01 c0             	add    %rax,%r8
    14cb:	4c 01 c0             	add    %r8,%rax
    14ce:	49 01 c0             	add    %rax,%r8
    14d1:	4c 01 c0             	add    %r8,%rax
    14d4:	49 01 c0             	add    %rax,%r8
    14d7:	4c 01 c0             	add    %r8,%rax
    14da:	49 01 c0             	add    %rax,%r8
    14dd:	4c 01 c0             	add    %r8,%rax
    14e0:	49 01 c0             	add    %rax,%r8
    14e3:	4c 01 c0             	add    %r8,%rax
    14e6:	49 01 c0             	add    %rax,%r8
    14e9:	4c 01 c0             	add    %r8,%rax
    14ec:	49 01 c0             	add    %rax,%r8
    14ef:	4c 01 c0             	add    %r8,%rax
    14f2:	49 01 c0             	add    %rax,%r8
    14f5:	4c 01 c0             	add    %r8,%rax
    14f8:	49 01 c0             	add    %rax,%r8
    14fb:	4c 01 c0             	add    %r8,%rax
    14fe:	49 01 c0             	add    %rax,%r8
    1501:	4c 01 c0             	add    %r8,%rax
    1504:	49 01 c0             	add    %rax,%r8
    1507:	4c 01 c0             	add    %r8,%rax
    150a:	49 01 c0             	add    %rax,%r8
    150d:	4c 01 c0             	add    %r8,%rax
    1510:	49 01 c0             	add    %rax,%r8
    1513:	4c 01 c0             	add    %r8,%rax
    1516:	49 01 c0             	add    %rax,%r8
    1519:	4c 01 c0             	add    %r8,%rax
    151c:	49 01 c0             	add    %rax,%r8
    151f:	4c 01 c0             	add    %r8,%rax
    1522:	49 01 c0             	add    %rax,%r8
    1525:	4c 01 c0             	add    %r8,%rax
    1528:	49 01 c0             	add    %rax,%r8
    152b:	4c 01 c0             	add    %r8,%rax
    152e:	49 01 c0             	add    %rax,%r8
    1531:	4c 01 c0             	add    %r8,%rax
    1534:	49 01 c0             	add    %rax,%r8
    1537:	4c 01 c0             	add    %r8,%rax
    153a:	49 01 c0             	add    %rax,%r8
    153d:	4c 01 c0             	add    %r8,%rax
    1540:	49 01 c0             	add    %rax,%r8
    1543:	4c 01 c0             	add    %r8,%rax
    1546:	49 01 c0             	add    %rax,%r8
    1549:	4c 01 c0             	add    %r8,%rax
    154c:	49 01 c0             	add    %rax,%r8
    154f:	4c 01 c0             	add    %r8,%rax
    1552:	49 01 c0             	add    %rax,%r8
    1555:	4c 01 c0             	add    %r8,%rax
    1558:	49 01 c0             	add    %rax,%r8
    155b:	4c 01 c0             	add    %r8,%rax
    155e:	49 01 c0             	add    %rax,%r8
    1561:	4c 01 c0             	add    %r8,%rax
    1564:	49 01 c0             	add    %rax,%r8
    1567:	4c 01 c0             	add    %r8,%rax
    156a:	49 01 c0             	add    %rax,%r8
    156d:	4c 01 c0             	add    %r8,%rax
    1570:	48 83 c2 f8          	add    $0xfffffffffffffff8,%rdx
    1574:	0f 85 36 ff ff ff    	jne    14b0 <main+0x370>
    157a:	f6 44 24 58 07       	testb  $0x7,0x58(%rsp)
    157f:	74 3c                	je     15bd <main+0x47d>
    1581:	48 8b 54 24 10       	mov    0x10(%rsp),%rdx
    1586:	4c 8b 4c 24 30       	mov    0x30(%rsp),%r9
    158b:	44 01 ca             	add    %r9d,%edx
    158e:	c0 ea 03             	shr    $0x3,%dl
    1591:	fe c2                	inc    %dl
    1593:	0f b6 d2             	movzbl %dl,%edx
    1596:	83 e2 07             	and    $0x7,%edx
    1599:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    15a0:	49 01 c0             	add    %rax,%r8
    15a3:	4c 01 c0             	add    %r8,%rax
    15a6:	49 01 c0             	add    %rax,%r8
    15a9:	4c 01 c0             	add    %r8,%rax
    15ac:	49 01 c0             	add    %rax,%r8
    15af:	4c 01 c0             	add    %r8,%rax
    15b2:	49 01 c0             	add    %rax,%r8
    15b5:	4c 01 c0             	add    %r8,%rax
    15b8:	48 ff ca             	dec    %rdx
    15bb:	75 e3                	jne    15a0 <main+0x460>
    15bd:	4c 89 c2             	mov    %r8,%rdx
    15c0:	f6 c1 07             	test   $0x7,%cl
    15c3:	74 1c                	je     15e1 <main+0x4a1>
    15c5:	89 e9                	mov    %ebp,%ecx
    15c7:	83 e1 07             	and    $0x7,%ecx
    15ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    15d0:	48 89 c2             	mov    %rax,%rdx
    15d3:	4c 89 c0             	mov    %r8,%rax
    15d6:	48 01 d0             	add    %rdx,%rax
    15d9:	48 ff c9             	dec    %rcx
    15dc:	49 89 d0             	mov    %rdx,%r8
    15df:	75 ef                	jne    15d0 <main+0x490>
    15e1:	45 89 f0             	mov    %r14d,%r8d
    15e4:	41 0f b6 ca          	movzbl %r10b,%ecx
    15e8:	4d 89 d9             	mov    %r11,%r9
    15eb:	44 88 54 24 07       	mov    %r10b,0x7(%rsp)
    15f0:	4c 89 b4 24 c8 00 00 	mov    %r14,0xc8(%rsp)
    15f7:	00 
    15f8:	41 f6 d0             	not    %r8b
    15fb:	89 c8                	mov    %ecx,%eax
    15fd:	83 e1 03             	and    $0x3,%ecx
    1600:	83 e0 03             	and    $0x3,%eax
    1603:	45 00 c0             	add    %r8b,%r8b
    1606:	48 89 4c 24 48       	mov    %rcx,0x48(%rsp)
    160b:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
    1610:	41 0f b6 d8          	movzbl %r8b,%ebx
    1614:	83 e3 02             	and    $0x2,%ebx
    1617:	4d 8d 44 1b f8       	lea    -0x8(%r11,%rbx,1),%r8
    161c:	4c 89 44 24 68       	mov    %r8,0x68(%rsp)
    1621:	49 c1 e8 03          	shr    $0x3,%r8
    1625:	48 01 c1             	add    %rax,%rcx
    1628:	49 ff c0             	inc    %r8
    162b:	48 c1 e9 03          	shr    $0x3,%rcx
    162f:	4c 89 44 24 40       	mov    %r8,0x40(%rsp)
    1634:	4c 8b 44 24 20       	mov    0x20(%rsp),%r8
    1639:	41 f7 d0             	not    %r8d
    163c:	48 ff c1             	inc    %rcx
    163f:	41 83 e0 02          	and    $0x2,%r8d
    1643:	4d 01 c1             	add    %r8,%r9
    1646:	75 08                	jne    1650 <main+0x510>
    1648:	45 31 d2             	xor    %r10d,%r10d
    164b:	e9 a1 01 00 00       	jmp    17f1 <main+0x6b1>
    1650:	4c 8b 4c 24 08       	mov    0x8(%rsp),%r9
    1655:	4d 01 c1             	add    %r8,%r9
    1658:	49 83 f9 07          	cmp    $0x7,%r9
    165c:	73 12                	jae    1670 <main+0x530>
    165e:	41 be 01 00 00 00    	mov    $0x1,%r14d
    1664:	45 31 c9             	xor    %r9d,%r9d
    1667:	e9 61 01 00 00       	jmp    17cd <main+0x68d>
    166c:	0f 1f 40 00          	nopl   0x0(%rax)
    1670:	48 83 7c 24 68 38    	cmpq   $0x38,0x68(%rsp)
    1676:	73 0e                	jae    1686 <main+0x546>
    1678:	41 be 01 00 00 00    	mov    $0x1,%r14d
    167e:	45 31 c9             	xor    %r9d,%r9d
    1681:	e9 e4 00 00 00       	jmp    176a <main+0x62a>
    1686:	49 89 ca             	mov    %rcx,%r10
    1689:	49 83 e2 f8          	and    $0xfffffffffffffff8,%r10
    168d:	41 be 01 00 00 00    	mov    $0x1,%r14d
    1693:	45 31 c9             	xor    %r9d,%r9d
    1696:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    169d:	00 00 00 
    16a0:	4d 01 f1             	add    %r14,%r9
    16a3:	4d 01 ce             	add    %r9,%r14
    16a6:	4d 01 f1             	add    %r14,%r9
    16a9:	4d 01 ce             	add    %r9,%r14
    16ac:	4d 01 f1             	add    %r14,%r9
    16af:	4d 01 ce             	add    %r9,%r14
    16b2:	4d 01 f1             	add    %r14,%r9
    16b5:	4d 01 ce             	add    %r9,%r14
    16b8:	4d 01 f1             	add    %r14,%r9
    16bb:	4d 01 ce             	add    %r9,%r14
    16be:	4d 01 f1             	add    %r14,%r9
    16c1:	4d 01 ce             	add    %r9,%r14
    16c4:	4d 01 f1             	add    %r14,%r9
    16c7:	4d 01 ce             	add    %r9,%r14
    16ca:	4d 01 f1             	add    %r14,%r9
    16cd:	4d 01 ce             	add    %r9,%r14
    16d0:	4d 01 f1             	add    %r14,%r9
    16d3:	4d 01 ce             	add    %r9,%r14
    16d6:	4d 01 f1             	add    %r14,%r9
    16d9:	4d 01 ce             	add    %r9,%r14
    16dc:	4d 01 f1             	add    %r14,%r9
    16df:	4d 01 ce             	add    %r9,%r14
    16e2:	4d 01 f1             	add    %r14,%r9
    16e5:	4d 01 ce             	add    %r9,%r14
    16e8:	4d 01 f1             	add    %r14,%r9
    16eb:	4d 01 ce             	add    %r9,%r14
    16ee:	4d 01 f1             	add    %r14,%r9
    16f1:	4d 01 ce             	add    %r9,%r14
    16f4:	4d 01 f1             	add    %r14,%r9
    16f7:	4d 01 ce             	add    %r9,%r14
    16fa:	4d 01 f1             	add    %r14,%r9
    16fd:	4d 01 ce             	add    %r9,%r14
    1700:	4d 01 f1             	add    %r14,%r9
    1703:	4d 01 ce             	add    %r9,%r14
    1706:	4d 01 f1             	add    %r14,%r9
    1709:	4d 01 ce             	add    %r9,%r14
    170c:	4d 01 f1             	add    %r14,%r9
    170f:	4d 01 ce             	add    %r9,%r14
    1712:	4d 01 f1             	add    %r14,%r9
    1715:	4d 01 ce             	add    %r9,%r14
    1718:	4d 01 f1             	add    %r14,%r9
    171b:	4d 01 ce             	add    %r9,%r14
    171e:	4d 01 f1             	add    %r14,%r9
    1721:	4d 01 ce             	add    %r9,%r14
    1724:	4d 01 f1             	add    %r14,%r9
    1727:	4d 01 ce             	add    %r9,%r14
    172a:	4d 01 f1             	add    %r14,%r9
    172d:	4d 01 ce             	add    %r9,%r14
    1730:	4d 01 f1             	add    %r14,%r9
    1733:	4d 01 ce             	add    %r9,%r14
    1736:	4d 01 f1             	add    %r14,%r9
    1739:	4d 01 ce             	add    %r9,%r14
    173c:	4d 01 f1             	add    %r14,%r9
    173f:	4d 01 ce             	add    %r9,%r14
    1742:	4d 01 f1             	add    %r14,%r9
    1745:	4d 01 ce             	add    %r9,%r14
    1748:	4d 01 f1             	add    %r14,%r9
    174b:	4d 01 ce             	add    %r9,%r14
    174e:	4d 01 f1             	add    %r14,%r9
    1751:	4d 01 ce             	add    %r9,%r14
    1754:	4d 01 f1             	add    %r14,%r9
    1757:	4d 01 ce             	add    %r9,%r14
    175a:	4d 01 f1             	add    %r14,%r9
    175d:	4d 01 ce             	add    %r9,%r14
    1760:	49 83 c2 f8          	add    $0xfffffffffffffff8,%r10
    1764:	0f 85 36 ff ff ff    	jne    16a0 <main+0x560>
    176a:	f6 44 24 40 07       	testb  $0x7,0x40(%rsp)
    176f:	74 5c                	je     17cd <main+0x68d>
    1771:	49 89 f3             	mov    %rsi,%r11
    1774:	4c 89 fe             	mov    %r15,%rsi
    1777:	49 89 ff             	mov    %rdi,%r15
    177a:	4c 8b 54 24 28       	mov    0x28(%rsp),%r10
    177f:	48 8b 7c 24 48       	mov    0x48(%rsp),%rdi
    1784:	41 01 fa             	add    %edi,%r10d
    1787:	4c 89 ff             	mov    %r15,%rdi
    178a:	49 89 f7             	mov    %rsi,%r15
    178d:	4c 89 de             	mov    %r11,%rsi
    1790:	4c 8b 5c 24 18       	mov    0x18(%rsp),%r11
    1795:	41 c0 ea 03          	shr    $0x3,%r10b
    1799:	41 fe c2             	inc    %r10b
    179c:	45 0f b6 d2          	movzbl %r10b,%r10d
    17a0:	41 83 e2 07          	and    $0x7,%r10d
    17a4:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
    17ab:	00 00 00 00 00 
    17b0:	4d 01 f1             	add    %r14,%r9
    17b3:	4d 01 ce             	add    %r9,%r14
    17b6:	4d 01 f1             	add    %r14,%r9
    17b9:	4d 01 ce             	add    %r9,%r14
    17bc:	4d 01 f1             	add    %r14,%r9
    17bf:	4d 01 ce             	add    %r9,%r14
    17c2:	4d 01 f1             	add    %r14,%r9
    17c5:	4d 01 ce             	add    %r9,%r14
    17c8:	49 ff ca             	dec    %r10
    17cb:	75 e3                	jne    17b0 <main+0x670>
    17cd:	45 01 d8             	add    %r11d,%r8d
    17d0:	4d 89 ca             	mov    %r9,%r10
    17d3:	41 83 e0 07          	and    $0x7,%r8d
    17d7:	74 18                	je     17f1 <main+0x6b1>
    17d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    17e0:	4d 89 f2             	mov    %r14,%r10
    17e3:	4d 89 ce             	mov    %r9,%r14
    17e6:	4d 01 d6             	add    %r10,%r14
    17e9:	49 ff c8             	dec    %r8
    17ec:	4d 89 d1             	mov    %r10,%r9
    17ef:	75 ef                	jne    17e0 <main+0x6a0>
    17f1:	44 0f b6 44 24 07    	movzbl 0x7(%rsp),%r8d
    17f7:	4c 8b 4c 24 20       	mov    0x20(%rsp),%r9
    17fc:	48 03 44 24 10       	add    0x10(%rsp),%rax
    1801:	4d 8d 74 1f f8       	lea    -0x8(%r15,%rbx,1),%r14
    1806:	4c 89 f3             	mov    %r14,%rbx
    1809:	48 c1 eb 03          	shr    $0x3,%rbx
    180d:	4c 89 b4 24 a8 00 00 	mov    %r14,0xa8(%rsp)
    1814:	00 
    1815:	48 ff c3             	inc    %rbx
    1818:	48 89 9c 24 b8 00 00 	mov    %rbx,0xb8(%rsp)
    181f:	00 
    1820:	41 80 e0 03          	and    $0x3,%r8b
    1824:	44 02 44 24 3c       	add    0x3c(%rsp),%r8b
    1829:	41 ff c9             	dec    %r9d
    182c:	48 c1 e8 03          	shr    $0x3,%rax
    1830:	41 83 e1 03          	and    $0x3,%r9d
    1834:	48 ff c0             	inc    %rax
    1837:	4d 01 cb             	add    %r9,%r11
    183a:	45 0f b6 c0          	movzbl %r8b,%r8d
    183e:	75 10                	jne    1850 <main+0x710>
    1840:	31 db                	xor    %ebx,%ebx
    1842:	e9 9a 01 00 00       	jmp    19e1 <main+0x8a1>
    1847:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    184e:	00 00 
    1850:	4c 03 4c 24 08       	add    0x8(%rsp),%r9
    1855:	49 83 f9 07          	cmp    $0x7,%r9
    1859:	73 15                	jae    1870 <main+0x730>
    185b:	41 be 01 00 00 00    	mov    $0x1,%r14d
    1861:	45 31 ff             	xor    %r15d,%r15d
    1864:	e9 54 01 00 00       	jmp    19bd <main+0x87d>
    1869:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1870:	49 83 fe 38          	cmp    $0x38,%r14
    1874:	73 0e                	jae    1884 <main+0x744>
    1876:	41 be 01 00 00 00    	mov    $0x1,%r14d
    187c:	45 31 ff             	xor    %r15d,%r15d
    187f:	e9 e6 00 00 00       	jmp    196a <main+0x82a>
    1884:	49 89 c1             	mov    %rax,%r9
    1887:	49 83 e1 f8          	and    $0xfffffffffffffff8,%r9
    188b:	41 be 01 00 00 00    	mov    $0x1,%r14d
    1891:	45 31 ff             	xor    %r15d,%r15d
    1894:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
    189b:	00 00 00 00 00 
    18a0:	4d 01 f7             	add    %r14,%r15
    18a3:	4d 01 fe             	add    %r15,%r14
    18a6:	4d 01 f7             	add    %r14,%r15
    18a9:	4d 01 fe             	add    %r15,%r14
    18ac:	4d 01 f7             	add    %r14,%r15
    18af:	4d 01 fe             	add    %r15,%r14
    18b2:	4d 01 f7             	add    %r14,%r15
    18b5:	4d 01 fe             	add    %r15,%r14
    18b8:	4d 01 f7             	add    %r14,%r15
    18bb:	4d 01 fe             	add    %r15,%r14
    18be:	4d 01 f7             	add    %r14,%r15
    18c1:	4d 01 fe             	add    %r15,%r14
    18c4:	4d 01 f7             	add    %r14,%r15
    18c7:	4d 01 fe             	add    %r15,%r14
    18ca:	4d 01 f7             	add    %r14,%r15
    18cd:	4d 01 fe             	add    %r15,%r14
    18d0:	4d 01 f7             	add    %r14,%r15
    18d3:	4d 01 fe             	add    %r15,%r14
    18d6:	4d 01 f7             	add    %r14,%r15
    18d9:	4d 01 fe             	add    %r15,%r14
    18dc:	4d 01 f7             	add    %r14,%r15
    18df:	4d 01 fe             	add    %r15,%r14
    18e2:	4d 01 f7             	add    %r14,%r15
    18e5:	4d 01 fe             	add    %r15,%r14
    18e8:	4d 01 f7             	add    %r14,%r15
    18eb:	4d 01 fe             	add    %r15,%r14
    18ee:	4d 01 f7             	add    %r14,%r15
    18f1:	4d 01 fe             	add    %r15,%r14
    18f4:	4d 01 f7             	add    %r14,%r15
    18f7:	4d 01 fe             	add    %r15,%r14
    18fa:	4d 01 f7             	add    %r14,%r15
    18fd:	4d 01 fe             	add    %r15,%r14
    1900:	4d 01 f7             	add    %r14,%r15
    1903:	4d 01 fe             	add    %r15,%r14
    1906:	4d 01 f7             	add    %r14,%r15
    1909:	4d 01 fe             	add    %r15,%r14
    190c:	4d 01 f7             	add    %r14,%r15
    190f:	4d 01 fe             	add    %r15,%r14
    1912:	4d 01 f7             	add    %r14,%r15
    1915:	4d 01 fe             	add    %r15,%r14
    1918:	4d 01 f7             	add    %r14,%r15
    191b:	4d 01 fe             	add    %r15,%r14
    191e:	4d 01 f7             	add    %r14,%r15
    1921:	4d 01 fe             	add    %r15,%r14
    1924:	4d 01 f7             	add    %r14,%r15
    1927:	4d 01 fe             	add    %r15,%r14
    192a:	4d 01 f7             	add    %r14,%r15
    192d:	4d 01 fe             	add    %r15,%r14
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
    1960:	49 83 c1 f8          	add    $0xfffffffffffffff8,%r9
    1964:	0f 85 36 ff ff ff    	jne    18a0 <main+0x760>
    196a:	f6 c3 07             	test   $0x7,%bl
    196d:	74 4e                	je     19bd <main+0x87d>
    196f:	48 89 fb             	mov    %rdi,%rbx
    1972:	4c 8b 4c 24 10       	mov    0x10(%rsp),%r9
    1977:	48 8b 7c 24 48       	mov    0x48(%rsp),%rdi
    197c:	41 01 f9             	add    %edi,%r9d
    197f:	48 89 df             	mov    %rbx,%rdi
    1982:	41 c0 e9 03          	shr    $0x3,%r9b
    1986:	41 fe c1             	inc    %r9b
    1989:	45 0f b6 c9          	movzbl %r9b,%r9d
    198d:	41 83 e1 07          	and    $0x7,%r9d
    1991:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
    1998:	0f 1f 84 00 00 00 00 
    199f:	00 
    19a0:	4d 01 f7             	add    %r14,%r15
    19a3:	4d 01 fe             	add    %r15,%r14
    19a6:	4d 01 f7             	add    %r14,%r15
    19a9:	4d 01 fe             	add    %r15,%r14
    19ac:	4d 01 f7             	add    %r14,%r15
    19af:	4d 01 fe             	add    %r15,%r14
    19b2:	4d 01 f7             	add    %r14,%r15
    19b5:	4d 01 fe             	add    %r15,%r14
    19b8:	49 ff c9             	dec    %r9
    19bb:	75 e3                	jne    19a0 <main+0x860>
    19bd:	4c 89 fb             	mov    %r15,%rbx
    19c0:	41 f6 c3 07          	test   $0x7,%r11b
    19c4:	74 1b                	je     19e1 <main+0x8a1>
    19c6:	45 89 c1             	mov    %r8d,%r9d
    19c9:	41 83 e1 07          	and    $0x7,%r9d
    19cd:	0f 1f 00             	nopl   (%rax)
    19d0:	4c 89 f3             	mov    %r14,%rbx
    19d3:	4d 89 fe             	mov    %r15,%r14
    19d6:	49 01 de             	add    %rbx,%r14
    19d9:	49 ff c9             	dec    %r9
    19dc:	49 89 df             	mov    %rbx,%r15
    19df:	75 ef                	jne    19d0 <main+0x890>
    19e1:	4c 8b 7c 24 18       	mov    0x18(%rsp),%r15
    19e6:	48 03 7c 24 28       	add    0x28(%rsp),%rdi
    19eb:	4d 8d 5c 37 f8       	lea    -0x8(%r15,%rsi,1),%r11
    19f0:	48 c1 ef 03          	shr    $0x3,%rdi
    19f4:	48 ff c7             	inc    %rdi
    19f7:	4d 89 de             	mov    %r11,%r14
    19fa:	49 c1 ee 03          	shr    $0x3,%r14
    19fe:	4c 89 9c 24 a0 00 00 	mov    %r11,0xa0(%rsp)
    1a05:	00 
    1a06:	49 ff c6             	inc    %r14
    1a09:	4c 89 b4 24 b0 00 00 	mov    %r14,0xb0(%rsp)
    1a10:	00 
    1a11:	4c 3b bc 24 80 00 00 	cmp    0x80(%rsp),%r15
    1a18:	00 
    1a19:	75 15                	jne    1a30 <main+0x8f0>
    1a1b:	45 31 f6             	xor    %r14d,%r14d
    1a1e:	e9 8e 01 00 00       	jmp    1bb1 <main+0xa71>
    1a23:	66 66 66 66 2e 0f 1f 	data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
    1a2a:	84 00 00 00 00 00 
    1a30:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
    1a35:	4c 8b 4c 24 78       	mov    0x78(%rsp),%r9
    1a3a:	4c 01 ce             	add    %r9,%rsi
    1a3d:	48 83 fe 07          	cmp    $0x7,%rsi
    1a41:	73 0d                	jae    1a50 <main+0x910>
    1a43:	be 01 00 00 00       	mov    $0x1,%esi
    1a48:	45 31 db             	xor    %r11d,%r11d
    1a4b:	e9 3d 01 00 00       	jmp    1b8d <main+0xa4d>
    1a50:	49 83 fb 38          	cmp    $0x38,%r11
    1a54:	73 0d                	jae    1a63 <main+0x923>
    1a56:	be 01 00 00 00       	mov    $0x1,%esi
    1a5b:	45 31 db             	xor    %r11d,%r11d
    1a5e:	e9 e7 00 00 00       	jmp    1b4a <main+0xa0a>
    1a63:	49 89 f9             	mov    %rdi,%r9
    1a66:	49 83 e1 f8          	and    $0xfffffffffffffff8,%r9
    1a6a:	be 01 00 00 00       	mov    $0x1,%esi
    1a6f:	45 31 db             	xor    %r11d,%r11d
    1a72:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
    1a79:	1f 84 00 00 00 00 00 
    1a80:	49 01 f3             	add    %rsi,%r11
    1a83:	4c 01 de             	add    %r11,%rsi
    1a86:	49 01 f3             	add    %rsi,%r11
    1a89:	4c 01 de             	add    %r11,%rsi
    1a8c:	49 01 f3             	add    %rsi,%r11
    1a8f:	4c 01 de             	add    %r11,%rsi
    1a92:	49 01 f3             	add    %rsi,%r11
    1a95:	4c 01 de             	add    %r11,%rsi
    1a98:	49 01 f3             	add    %rsi,%r11
    1a9b:	4c 01 de             	add    %r11,%rsi
    1a9e:	49 01 f3             	add    %rsi,%r11
    1aa1:	4c 01 de             	add    %r11,%rsi
    1aa4:	49 01 f3             	add    %rsi,%r11
    1aa7:	4c 01 de             	add    %r11,%rsi
    1aaa:	49 01 f3             	add    %rsi,%r11
    1aad:	4c 01 de             	add    %r11,%rsi
    1ab0:	49 01 f3             	add    %rsi,%r11
    1ab3:	4c 01 de             	add    %r11,%rsi
    1ab6:	49 01 f3             	add    %rsi,%r11
    1ab9:	4c 01 de             	add    %r11,%rsi
    1abc:	49 01 f3             	add    %rsi,%r11
    1abf:	4c 01 de             	add    %r11,%rsi
    1ac2:	49 01 f3             	add    %rsi,%r11
    1ac5:	4c 01 de             	add    %r11,%rsi
    1ac8:	49 01 f3             	add    %rsi,%r11
    1acb:	4c 01 de             	add    %r11,%rsi
    1ace:	49 01 f3             	add    %rsi,%r11
    1ad1:	4c 01 de             	add    %r11,%rsi
    1ad4:	49 01 f3             	add    %rsi,%r11
    1ad7:	4c 01 de             	add    %r11,%rsi
    1ada:	49 01 f3             	add    %rsi,%r11
    1add:	4c 01 de             	add    %r11,%rsi
    1ae0:	49 01 f3             	add    %rsi,%r11
    1ae3:	4c 01 de             	add    %r11,%rsi
    1ae6:	49 01 f3             	add    %rsi,%r11
    1ae9:	4c 01 de             	add    %r11,%rsi
    1aec:	49 01 f3             	add    %rsi,%r11
    1aef:	4c 01 de             	add    %r11,%rsi
    1af2:	49 01 f3             	add    %rsi,%r11
    1af5:	4c 01 de             	add    %r11,%rsi
    1af8:	49 01 f3             	add    %rsi,%r11
    1afb:	4c 01 de             	add    %r11,%rsi
    1afe:	49 01 f3             	add    %rsi,%r11
    1b01:	4c 01 de             	add    %r11,%rsi
    1b04:	49 01 f3             	add    %rsi,%r11
    1b07:	4c 01 de             	add    %r11,%rsi
    1b0a:	49 01 f3             	add    %rsi,%r11
    1b0d:	4c 01 de             	add    %r11,%rsi
    1b10:	49 01 f3             	add    %rsi,%r11
    1b13:	4c 01 de             	add    %r11,%rsi
    1b16:	49 01 f3             	add    %rsi,%r11
    1b19:	4c 01 de             	add    %r11,%rsi
    1b1c:	49 01 f3             	add    %rsi,%r11
    1b1f:	4c 01 de             	add    %r11,%rsi
    1b22:	49 01 f3             	add    %rsi,%r11
    1b25:	4c 01 de             	add    %r11,%rsi
    1b28:	49 01 f3             	add    %rsi,%r11
    1b2b:	4c 01 de             	add    %r11,%rsi
    1b2e:	49 01 f3             	add    %rsi,%r11
    1b31:	4c 01 de             	add    %r11,%rsi
    1b34:	49 01 f3             	add    %rsi,%r11
    1b37:	4c 01 de             	add    %r11,%rsi
    1b3a:	49 01 f3             	add    %rsi,%r11
    1b3d:	4c 01 de             	add    %r11,%rsi
    1b40:	49 83 c1 f8          	add    $0xfffffffffffffff8,%r9
    1b44:	0f 85 36 ff ff ff    	jne    1a80 <main+0x940>
    1b4a:	41 f6 c6 07          	test   $0x7,%r14b
    1b4e:	74 3d                	je     1b8d <main+0xa4d>
    1b50:	4c 8b 4c 24 28       	mov    0x28(%rsp),%r9
    1b55:	4c 8b 74 24 30       	mov    0x30(%rsp),%r14
    1b5a:	45 01 f1             	add    %r14d,%r9d
    1b5d:	41 c0 e9 03          	shr    $0x3,%r9b
    1b61:	41 fe c1             	inc    %r9b
    1b64:	45 0f b6 c9          	movzbl %r9b,%r9d
    1b68:	41 83 e1 07          	and    $0x7,%r9d
    1b6c:	0f 1f 40 00          	nopl   0x0(%rax)
    1b70:	49 01 f3             	add    %rsi,%r11
    1b73:	4c 01 de             	add    %r11,%rsi
    1b76:	49 01 f3             	add    %rsi,%r11
    1b79:	4c 01 de             	add    %r11,%rsi
    1b7c:	49 01 f3             	add    %rsi,%r11
    1b7f:	4c 01 de             	add    %r11,%rsi
    1b82:	49 01 f3             	add    %rsi,%r11
    1b85:	4c 01 de             	add    %r11,%rsi
    1b88:	49 ff c9             	dec    %r9
    1b8b:	75 e3                	jne    1b70 <main+0xa30>
    1b8d:	f6 44 24 60 07       	testb  $0x7,0x60(%rsp)
    1b92:	4d 89 de             	mov    %r11,%r14
    1b95:	74 1a                	je     1bb1 <main+0xa71>
    1b97:	45 89 e9             	mov    %r13d,%r9d
    1b9a:	41 83 e1 07          	and    $0x7,%r9d
    1b9e:	66 90                	xchg   %ax,%ax
    1ba0:	49 89 f6             	mov    %rsi,%r14
    1ba3:	4c 89 de             	mov    %r11,%rsi
    1ba6:	4c 01 f6             	add    %r14,%rsi
    1ba9:	49 ff c9             	dec    %r9
    1bac:	4d 89 f3             	mov    %r14,%r11
    1baf:	75 ef                	jne    1ba0 <main+0xa60>
    1bb1:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
    1bb6:	83 e6 02             	and    $0x2,%esi
    1bb9:	4d 89 fb             	mov    %r15,%r11
    1bbc:	48 83 ce 01          	or     $0x1,%rsi
    1bc0:	49 01 f3             	add    %rsi,%r11
    1bc3:	75 0b                	jne    1bd0 <main+0xa90>
    1bc5:	45 31 c9             	xor    %r9d,%r9d
    1bc8:	e9 94 01 00 00       	jmp    1d61 <main+0xc21>
    1bcd:	0f 1f 00             	nopl   (%rax)
    1bd0:	48 03 74 24 08       	add    0x8(%rsp),%rsi
    1bd5:	48 83 fe 07          	cmp    $0x7,%rsi
    1bd9:	73 15                	jae    1bf0 <main+0xab0>
    1bdb:	41 bf 01 00 00 00    	mov    $0x1,%r15d
    1be1:	31 f6                	xor    %esi,%esi
    1be3:	e9 55 01 00 00       	jmp    1d3d <main+0xbfd>
    1be8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1bef:	00 
    1bf0:	48 83 7c 24 70 38    	cmpq   $0x38,0x70(%rsp)
    1bf6:	73 0d                	jae    1c05 <main+0xac5>
    1bf8:	41 bf 01 00 00 00    	mov    $0x1,%r15d
    1bfe:	31 f6                	xor    %esi,%esi
    1c00:	e9 e5 00 00 00       	jmp    1cea <main+0xbaa>
    1c05:	4c 8b 4c 24 50       	mov    0x50(%rsp),%r9
    1c0a:	41 bf 01 00 00 00    	mov    $0x1,%r15d
    1c10:	31 f6                	xor    %esi,%esi
    1c12:	49 83 e1 f8          	and    $0xfffffffffffffff8,%r9
    1c16:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    1c1d:	00 00 00 
    1c20:	4c 01 fe             	add    %r15,%rsi
    1c23:	49 01 f7             	add    %rsi,%r15
    1c26:	4c 01 fe             	add    %r15,%rsi
    1c29:	49 01 f7             	add    %rsi,%r15
    1c2c:	4c 01 fe             	add    %r15,%rsi
    1c2f:	49 01 f7             	add    %rsi,%r15
    1c32:	4c 01 fe             	add    %r15,%rsi
    1c35:	49 01 f7             	add    %rsi,%r15
    1c38:	4c 01 fe             	add    %r15,%rsi
    1c3b:	49 01 f7             	add    %rsi,%r15
    1c3e:	4c 01 fe             	add    %r15,%rsi
    1c41:	49 01 f7             	add    %rsi,%r15
    1c44:	4c 01 fe             	add    %r15,%rsi
    1c47:	49 01 f7             	add    %rsi,%r15
    1c4a:	4c 01 fe             	add    %r15,%rsi
    1c4d:	49 01 f7             	add    %rsi,%r15
    1c50:	4c 01 fe             	add    %r15,%rsi
    1c53:	49 01 f7             	add    %rsi,%r15
    1c56:	4c 01 fe             	add    %r15,%rsi
    1c59:	49 01 f7             	add    %rsi,%r15
    1c5c:	4c 01 fe             	add    %r15,%rsi
    1c5f:	49 01 f7             	add    %rsi,%r15
    1c62:	4c 01 fe             	add    %r15,%rsi
    1c65:	49 01 f7             	add    %rsi,%r15
    1c68:	4c 01 fe             	add    %r15,%rsi
    1c6b:	49 01 f7             	add    %rsi,%r15
    1c6e:	4c 01 fe             	add    %r15,%rsi
    1c71:	49 01 f7             	add    %rsi,%r15
    1c74:	4c 01 fe             	add    %r15,%rsi
    1c77:	49 01 f7             	add    %rsi,%r15
    1c7a:	4c 01 fe             	add    %r15,%rsi
    1c7d:	49 01 f7             	add    %rsi,%r15
    1c80:	4c 01 fe             	add    %r15,%rsi
    1c83:	49 01 f7             	add    %rsi,%r15
    1c86:	4c 01 fe             	add    %r15,%rsi
    1c89:	49 01 f7             	add    %rsi,%r15
    1c8c:	4c 01 fe             	add    %r15,%rsi
    1c8f:	49 01 f7             	add    %rsi,%r15
    1c92:	4c 01 fe             	add    %r15,%rsi
    1c95:	49 01 f7             	add    %rsi,%r15
    1c98:	4c 01 fe             	add    %r15,%rsi
    1c9b:	49 01 f7             	add    %rsi,%r15
    1c9e:	4c 01 fe             	add    %r15,%rsi
    1ca1:	49 01 f7             	add    %rsi,%r15
    1ca4:	4c 01 fe             	add    %r15,%rsi
    1ca7:	49 01 f7             	add    %rsi,%r15
    1caa:	4c 01 fe             	add    %r15,%rsi
    1cad:	49 01 f7             	add    %rsi,%r15
    1cb0:	4c 01 fe             	add    %r15,%rsi
    1cb3:	49 01 f7             	add    %rsi,%r15
    1cb6:	4c 01 fe             	add    %r15,%rsi
    1cb9:	49 01 f7             	add    %rsi,%r15
    1cbc:	4c 01 fe             	add    %r15,%rsi
    1cbf:	49 01 f7             	add    %rsi,%r15
    1cc2:	4c 01 fe             	add    %r15,%rsi
    1cc5:	49 01 f7             	add    %rsi,%r15
    1cc8:	4c 01 fe             	add    %r15,%rsi
    1ccb:	49 01 f7             	add    %rsi,%r15
    1cce:	4c 01 fe             	add    %r15,%rsi
    1cd1:	49 01 f7             	add    %rsi,%r15
    1cd4:	4c 01 fe             	add    %r15,%rsi
    1cd7:	49 01 f7             	add    %rsi,%r15
    1cda:	4c 01 fe             	add    %r15,%rsi
    1cdd:	49 01 f7             	add    %rsi,%r15
    1ce0:	49 83 c1 f8          	add    $0xfffffffffffffff8,%r9
    1ce4:	0f 85 36 ff ff ff    	jne    1c20 <main+0xae0>
    1cea:	f6 44 24 58 07       	testb  $0x7,0x58(%rsp)
    1cef:	74 4c                	je     1d3d <main+0xbfd>
    1cf1:	4c 89 9c 24 88 00 00 	mov    %r11,0x88(%rsp)
    1cf8:	00 
    1cf9:	4c 8b 4c 24 10       	mov    0x10(%rsp),%r9
    1cfe:	4c 8b 5c 24 30       	mov    0x30(%rsp),%r11
    1d03:	45 01 d9             	add    %r11d,%r9d
    1d06:	4c 8b 9c 24 88 00 00 	mov    0x88(%rsp),%r11
    1d0d:	00 
    1d0e:	41 c0 e9 03          	shr    $0x3,%r9b
    1d12:	41 fe c1             	inc    %r9b
    1d15:	45 0f b6 c9          	movzbl %r9b,%r9d
    1d19:	41 83 e1 07          	and    $0x7,%r9d
    1d1d:	0f 1f 00             	nopl   (%rax)
    1d20:	4c 01 fe             	add    %r15,%rsi
    1d23:	49 01 f7             	add    %rsi,%r15
    1d26:	4c 01 fe             	add    %r15,%rsi
    1d29:	49 01 f7             	add    %rsi,%r15
    1d2c:	4c 01 fe             	add    %r15,%rsi
    1d2f:	49 01 f7             	add    %rsi,%r15
    1d32:	4c 01 fe             	add    %r15,%rsi
    1d35:	49 01 f7             	add    %rsi,%r15
    1d38:	49 ff c9             	dec    %r9
    1d3b:	75 e3                	jne    1d20 <main+0xbe0>
    1d3d:	49 89 f1             	mov    %rsi,%r9
    1d40:	41 f6 c3 07          	test   $0x7,%r11b
    1d44:	74 1b                	je     1d61 <main+0xc21>
    1d46:	41 89 eb             	mov    %ebp,%r11d
    1d49:	41 83 e3 07          	and    $0x7,%r11d
    1d4d:	0f 1f 00             	nopl   (%rax)
    1d50:	4d 89 f9             	mov    %r15,%r9
    1d53:	49 89 f7             	mov    %rsi,%r15
    1d56:	4d 01 cf             	add    %r9,%r15
    1d59:	49 ff cb             	dec    %r11
    1d5c:	4c 89 ce             	mov    %r9,%rsi
    1d5f:	75 ef                	jne    1d50 <main+0xc10>
    1d61:	48 8b 74 24 18       	mov    0x18(%rsp),%rsi
    1d66:	4c 8b 7c 24 20       	mov    0x20(%rsp),%r15
    1d6b:	41 f7 d7             	not    %r15d
    1d6e:	41 83 e7 02          	and    $0x2,%r15d
    1d72:	4c 01 fe             	add    %r15,%rsi
    1d75:	75 09                	jne    1d80 <main+0xc40>
    1d77:	31 c9                	xor    %ecx,%ecx
    1d79:	e9 93 01 00 00       	jmp    1f11 <main+0xdd1>
    1d7e:	66 90                	xchg   %ax,%ax
    1d80:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
    1d85:	4c 01 fe             	add    %r15,%rsi
    1d88:	48 83 fe 07          	cmp    $0x7,%rsi
    1d8c:	73 12                	jae    1da0 <main+0xc60>
    1d8e:	41 bb 01 00 00 00    	mov    $0x1,%r11d
    1d94:	31 f6                	xor    %esi,%esi
    1d96:	e9 52 01 00 00       	jmp    1eed <main+0xdad>
    1d9b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1da0:	48 83 7c 24 68 38    	cmpq   $0x38,0x68(%rsp)
    1da6:	73 0d                	jae    1db5 <main+0xc75>
    1da8:	41 bb 01 00 00 00    	mov    $0x1,%r11d
    1dae:	31 f6                	xor    %esi,%esi
    1db0:	e9 e5 00 00 00       	jmp    1e9a <main+0xd5a>
    1db5:	48 83 e1 f8          	and    $0xfffffffffffffff8,%rcx
    1db9:	41 bb 01 00 00 00    	mov    $0x1,%r11d
    1dbf:	31 f6                	xor    %esi,%esi
    1dc1:	66 66 66 66 66 66 2e 	data16 data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
    1dc8:	0f 1f 84 00 00 00 00 
    1dcf:	00 
    1dd0:	4c 01 de             	add    %r11,%rsi
    1dd3:	49 01 f3             	add    %rsi,%r11
    1dd6:	4c 01 de             	add    %r11,%rsi
    1dd9:	49 01 f3             	add    %rsi,%r11
    1ddc:	4c 01 de             	add    %r11,%rsi
    1ddf:	49 01 f3             	add    %rsi,%r11
    1de2:	4c 01 de             	add    %r11,%rsi
    1de5:	49 01 f3             	add    %rsi,%r11
    1de8:	4c 01 de             	add    %r11,%rsi
    1deb:	49 01 f3             	add    %rsi,%r11
    1dee:	4c 01 de             	add    %r11,%rsi
    1df1:	49 01 f3             	add    %rsi,%r11
    1df4:	4c 01 de             	add    %r11,%rsi
    1df7:	49 01 f3             	add    %rsi,%r11
    1dfa:	4c 01 de             	add    %r11,%rsi
    1dfd:	49 01 f3             	add    %rsi,%r11
    1e00:	4c 01 de             	add    %r11,%rsi
    1e03:	49 01 f3             	add    %rsi,%r11
    1e06:	4c 01 de             	add    %r11,%rsi
    1e09:	49 01 f3             	add    %rsi,%r11
    1e0c:	4c 01 de             	add    %r11,%rsi
    1e0f:	49 01 f3             	add    %rsi,%r11
    1e12:	4c 01 de             	add    %r11,%rsi
    1e15:	49 01 f3             	add    %rsi,%r11
    1e18:	4c 01 de             	add    %r11,%rsi
    1e1b:	49 01 f3             	add    %rsi,%r11
    1e1e:	4c 01 de             	add    %r11,%rsi
    1e21:	49 01 f3             	add    %rsi,%r11
    1e24:	4c 01 de             	add    %r11,%rsi
    1e27:	49 01 f3             	add    %rsi,%r11
    1e2a:	4c 01 de             	add    %r11,%rsi
    1e2d:	49 01 f3             	add    %rsi,%r11
    1e30:	4c 01 de             	add    %r11,%rsi
    1e33:	49 01 f3             	add    %rsi,%r11
    1e36:	4c 01 de             	add    %r11,%rsi
    1e39:	49 01 f3             	add    %rsi,%r11
    1e3c:	4c 01 de             	add    %r11,%rsi
    1e3f:	49 01 f3             	add    %rsi,%r11
    1e42:	4c 01 de             	add    %r11,%rsi
    1e45:	49 01 f3             	add    %rsi,%r11
    1e48:	4c 01 de             	add    %r11,%rsi
    1e4b:	49 01 f3             	add    %rsi,%r11
    1e4e:	4c 01 de             	add    %r11,%rsi
    1e51:	49 01 f3             	add    %rsi,%r11
    1e54:	4c 01 de             	add    %r11,%rsi
    1e57:	49 01 f3             	add    %rsi,%r11
    1e5a:	4c 01 de             	add    %r11,%rsi
    1e5d:	49 01 f3             	add    %rsi,%r11
    1e60:	4c 01 de             	add    %r11,%rsi
    1e63:	49 01 f3             	add    %rsi,%r11
    1e66:	4c 01 de             	add    %r11,%rsi
    1e69:	49 01 f3             	add    %rsi,%r11
    1e6c:	4c 01 de             	add    %r11,%rsi
    1e6f:	49 01 f3             	add    %rsi,%r11
    1e72:	4c 01 de             	add    %r11,%rsi
    1e75:	49 01 f3             	add    %rsi,%r11
    1e78:	4c 01 de             	add    %r11,%rsi
    1e7b:	49 01 f3             	add    %rsi,%r11
    1e7e:	4c 01 de             	add    %r11,%rsi
    1e81:	49 01 f3             	add    %rsi,%r11
    1e84:	4c 01 de             	add    %r11,%rsi
    1e87:	49 01 f3             	add    %rsi,%r11
    1e8a:	4c 01 de             	add    %r11,%rsi
    1e8d:	49 01 f3             	add    %rsi,%r11
    1e90:	48 83 c1 f8          	add    $0xfffffffffffffff8,%rcx
    1e94:	0f 85 36 ff ff ff    	jne    1dd0 <main+0xc90>
    1e9a:	f6 44 24 40 07       	testb  $0x7,0x40(%rsp)
    1e9f:	74 4c                	je     1eed <main+0xdad>
    1ea1:	48 89 7c 24 40       	mov    %rdi,0x40(%rsp)
    1ea6:	48 8b 4c 24 28       	mov    0x28(%rsp),%rcx
    1eab:	48 8b 7c 24 48       	mov    0x48(%rsp),%rdi
    1eb0:	01 f9                	add    %edi,%ecx
    1eb2:	48 8b 7c 24 40       	mov    0x40(%rsp),%rdi
    1eb7:	c0 e9 03             	shr    $0x3,%cl
    1eba:	fe c1                	inc    %cl
    1ebc:	0f b6 c9             	movzbl %cl,%ecx
    1ebf:	83 e1 07             	and    $0x7,%ecx
    1ec2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 cs nopw 0x0(%rax,%rax,1)
    1ec9:	1f 84 00 00 00 00 00 
    1ed0:	4c 01 de             	add    %r11,%rsi
    1ed3:	49 01 f3             	add    %rsi,%r11
    1ed6:	4c 01 de             	add    %r11,%rsi
    1ed9:	49 01 f3             	add    %rsi,%r11
    1edc:	4c 01 de             	add    %r11,%rsi
    1edf:	49 01 f3             	add    %rsi,%r11
    1ee2:	4c 01 de             	add    %r11,%rsi
    1ee5:	49 01 f3             	add    %rsi,%r11
    1ee8:	48 ff c9             	dec    %rcx
    1eeb:	75 e3                	jne    1ed0 <main+0xd90>
    1eed:	44 03 7c 24 18       	add    0x18(%rsp),%r15d
    1ef2:	48 89 f1             	mov    %rsi,%rcx
    1ef5:	41 83 e7 07          	and    $0x7,%r15d
    1ef9:	74 16                	je     1f11 <main+0xdd1>
    1efb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    1f00:	4c 89 d9             	mov    %r11,%rcx
    1f03:	49 89 f3             	mov    %rsi,%r11
    1f06:	49 01 cb             	add    %rcx,%r11
    1f09:	49 ff cf             	dec    %r15
    1f0c:	48 89 ce             	mov    %rcx,%rsi
    1f0f:	75 ef                	jne    1f00 <main+0xdc0>
    1f11:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
    1f16:	4c 8b 7c 24 18       	mov    0x18(%rsp),%r15
    1f1b:	ff ce                	dec    %esi
    1f1d:	83 e6 03             	and    $0x3,%esi
    1f20:	49 01 f7             	add    %rsi,%r15
    1f23:	75 0b                	jne    1f30 <main+0xdf0>
    1f25:	31 c0                	xor    %eax,%eax
    1f27:	e9 85 01 00 00       	jmp    20b1 <main+0xf71>
    1f2c:	0f 1f 40 00          	nopl   0x0(%rax)
    1f30:	48 03 74 24 08       	add    0x8(%rsp),%rsi
    1f35:	48 83 fe 07          	cmp    $0x7,%rsi
    1f39:	73 15                	jae    1f50 <main+0xe10>
    1f3b:	41 bb 01 00 00 00    	mov    $0x1,%r11d
    1f41:	31 f6                	xor    %esi,%esi
    1f43:	e9 45 01 00 00       	jmp    208d <main+0xf4d>
    1f48:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    1f4f:	00 
    1f50:	48 83 bc 24 a8 00 00 	cmpq   $0x38,0xa8(%rsp)
    1f57:	00 38 
    1f59:	73 0d                	jae    1f68 <main+0xe28>
    1f5b:	41 bb 01 00 00 00    	mov    $0x1,%r11d
    1f61:	31 f6                	xor    %esi,%esi
    1f63:	e9 e2 00 00 00       	jmp    204a <main+0xf0a>
    1f68:	48 83 e0 f8          	and    $0xfffffffffffffff8,%rax
    1f6c:	41 bb 01 00 00 00    	mov    $0x1,%r11d
    1f72:	31 f6                	xor    %esi,%esi
    1f74:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
    1f7b:	00 00 00 00 00 
    1f80:	4c 01 de             	add    %r11,%rsi
    1f83:	49 01 f3             	add    %rsi,%r11
    1f86:	4c 01 de             	add    %r11,%rsi
    1f89:	49 01 f3             	add    %rsi,%r11
    1f8c:	4c 01 de             	add    %r11,%rsi
    1f8f:	49 01 f3             	add    %rsi,%r11
    1f92:	4c 01 de             	add    %r11,%rsi
    1f95:	49 01 f3             	add    %rsi,%r11
    1f98:	4c 01 de             	add    %r11,%rsi
    1f9b:	49 01 f3             	add    %rsi,%r11
    1f9e:	4c 01 de             	add    %r11,%rsi
    1fa1:	49 01 f3             	add    %rsi,%r11
    1fa4:	4c 01 de             	add    %r11,%rsi
    1fa7:	49 01 f3             	add    %rsi,%r11
    1faa:	4c 01 de             	add    %r11,%rsi
    1fad:	49 01 f3             	add    %rsi,%r11
    1fb0:	4c 01 de             	add    %r11,%rsi
    1fb3:	49 01 f3             	add    %rsi,%r11
    1fb6:	4c 01 de             	add    %r11,%rsi
    1fb9:	49 01 f3             	add    %rsi,%r11
    1fbc:	4c 01 de             	add    %r11,%rsi
    1fbf:	49 01 f3             	add    %rsi,%r11
    1fc2:	4c 01 de             	add    %r11,%rsi
    1fc5:	49 01 f3             	add    %rsi,%r11
    1fc8:	4c 01 de             	add    %r11,%rsi
    1fcb:	49 01 f3             	add    %rsi,%r11
    1fce:	4c 01 de             	add    %r11,%rsi
    1fd1:	49 01 f3             	add    %rsi,%r11
    1fd4:	4c 01 de             	add    %r11,%rsi
    1fd7:	49 01 f3             	add    %rsi,%r11
    1fda:	4c 01 de             	add    %r11,%rsi
    1fdd:	49 01 f3             	add    %rsi,%r11
    1fe0:	4c 01 de             	add    %r11,%rsi
    1fe3:	49 01 f3             	add    %rsi,%r11
    1fe6:	4c 01 de             	add    %r11,%rsi
    1fe9:	49 01 f3             	add    %rsi,%r11
    1fec:	4c 01 de             	add    %r11,%rsi
    1fef:	49 01 f3             	add    %rsi,%r11
    1ff2:	4c 01 de             	add    %r11,%rsi
    1ff5:	49 01 f3             	add    %rsi,%r11
    1ff8:	4c 01 de             	add    %r11,%rsi
    1ffb:	49 01 f3             	add    %rsi,%r11
    1ffe:	4c 01 de             	add    %r11,%rsi
    2001:	49 01 f3             	add    %rsi,%r11
    2004:	4c 01 de             	add    %r11,%rsi
    2007:	49 01 f3             	add    %rsi,%r11
    200a:	4c 01 de             	add    %r11,%rsi
    200d:	49 01 f3             	add    %rsi,%r11
    2010:	4c 01 de             	add    %r11,%rsi
    2013:	49 01 f3             	add    %rsi,%r11
    2016:	4c 01 de             	add    %r11,%rsi
    2019:	49 01 f3             	add    %rsi,%r11
    201c:	4c 01 de             	add    %r11,%rsi
    201f:	49 01 f3             	add    %rsi,%r11
    2022:	4c 01 de             	add    %r11,%rsi
    2025:	49 01 f3             	add    %rsi,%r11
    2028:	4c 01 de             	add    %r11,%rsi
    202b:	49 01 f3             	add    %rsi,%r11
    202e:	4c 01 de             	add    %r11,%rsi
    2031:	49 01 f3             	add    %rsi,%r11
    2034:	4c 01 de             	add    %r11,%rsi
    2037:	49 01 f3             	add    %rsi,%r11
    203a:	4c 01 de             	add    %r11,%rsi
    203d:	49 01 f3             	add    %rsi,%r11
    2040:	48 83 c0 f8          	add    $0xfffffffffffffff8,%rax
    2044:	0f 85 36 ff ff ff    	jne    1f80 <main+0xe40>
    204a:	f6 84 24 b8 00 00 00 	testb  $0x7,0xb8(%rsp)
    2051:	07 
    2052:	74 39                	je     208d <main+0xf4d>
    2054:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
    2059:	03 44 24 10          	add    0x10(%rsp),%eax
    205d:	c0 e8 03             	shr    $0x3,%al
    2060:	fe c0                	inc    %al
    2062:	0f b6 c0             	movzbl %al,%eax
    2065:	83 e0 07             	and    $0x7,%eax
    2068:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    206f:	00 
    2070:	4c 01 de             	add    %r11,%rsi
    2073:	49 01 f3             	add    %rsi,%r11
    2076:	4c 01 de             	add    %r11,%rsi
    2079:	49 01 f3             	add    %rsi,%r11
    207c:	4c 01 de             	add    %r11,%rsi
    207f:	49 01 f3             	add    %rsi,%r11
    2082:	4c 01 de             	add    %r11,%rsi
    2085:	49 01 f3             	add    %rsi,%r11
    2088:	48 ff c8             	dec    %rax
    208b:	75 e3                	jne    2070 <main+0xf30>
    208d:	48 89 f0             	mov    %rsi,%rax
    2090:	41 f6 c7 07          	test   $0x7,%r15b
    2094:	74 1b                	je     20b1 <main+0xf71>
    2096:	41 83 e0 07          	and    $0x7,%r8d
    209a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    20a0:	4c 89 d8             	mov    %r11,%rax
    20a3:	49 89 f3             	mov    %rsi,%r11
    20a6:	49 01 c3             	add    %rax,%r11
    20a9:	49 ff c8             	dec    %r8
    20ac:	48 89 c6             	mov    %rax,%rsi
    20af:	75 ef                	jne    20a0 <main+0xf60>
    20b1:	4c 8b 5c 24 18       	mov    0x18(%rsp),%r11
    20b6:	4c 3b 9c 24 80 00 00 	cmp    0x80(%rsp),%r11
    20bd:	00 
    20be:	75 10                	jne    20d0 <main+0xf90>
    20c0:	31 ff                	xor    %edi,%edi
    20c2:	e9 8a 01 00 00       	jmp    2251 <main+0x1111>
    20c7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    20ce:	00 00 
    20d0:	48 8b 74 24 78       	mov    0x78(%rsp),%rsi
    20d5:	48 03 74 24 08       	add    0x8(%rsp),%rsi
    20da:	48 83 fe 07          	cmp    $0x7,%rsi
    20de:	73 10                	jae    20f0 <main+0xfb0>
    20e0:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    20e6:	31 f6                	xor    %esi,%esi
    20e8:	e9 40 01 00 00       	jmp    222d <main+0x10ed>
    20ed:	0f 1f 00             	nopl   (%rax)
    20f0:	48 83 bc 24 a0 00 00 	cmpq   $0x38,0xa0(%rsp)
    20f7:	00 38 
    20f9:	73 0d                	jae    2108 <main+0xfc8>
    20fb:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    2101:	31 f6                	xor    %esi,%esi
    2103:	e9 e2 00 00 00       	jmp    21ea <main+0x10aa>
    2108:	48 83 e7 f8          	and    $0xfffffffffffffff8,%rdi
    210c:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    2112:	31 f6                	xor    %esi,%esi
    2114:	66 66 66 2e 0f 1f 84 	data16 data16 cs nopw 0x0(%rax,%rax,1)
    211b:	00 00 00 00 00 
    2120:	4c 01 c6             	add    %r8,%rsi
    2123:	49 01 f0             	add    %rsi,%r8
    2126:	4c 01 c6             	add    %r8,%rsi
    2129:	49 01 f0             	add    %rsi,%r8
    212c:	4c 01 c6             	add    %r8,%rsi
    212f:	49 01 f0             	add    %rsi,%r8
    2132:	4c 01 c6             	add    %r8,%rsi
    2135:	49 01 f0             	add    %rsi,%r8
    2138:	4c 01 c6             	add    %r8,%rsi
    213b:	49 01 f0             	add    %rsi,%r8
    213e:	4c 01 c6             	add    %r8,%rsi
    2141:	49 01 f0             	add    %rsi,%r8
    2144:	4c 01 c6             	add    %r8,%rsi
    2147:	49 01 f0             	add    %rsi,%r8
    214a:	4c 01 c6             	add    %r8,%rsi
    214d:	49 01 f0             	add    %rsi,%r8
    2150:	4c 01 c6             	add    %r8,%rsi
    2153:	49 01 f0             	add    %rsi,%r8
    2156:	4c 01 c6             	add    %r8,%rsi
    2159:	49 01 f0             	add    %rsi,%r8
    215c:	4c 01 c6             	add    %r8,%rsi
    215f:	49 01 f0             	add    %rsi,%r8
    2162:	4c 01 c6             	add    %r8,%rsi
    2165:	49 01 f0             	add    %rsi,%r8
    2168:	4c 01 c6             	add    %r8,%rsi
    216b:	49 01 f0             	add    %rsi,%r8
    216e:	4c 01 c6             	add    %r8,%rsi
    2171:	49 01 f0             	add    %rsi,%r8
    2174:	4c 01 c6             	add    %r8,%rsi
    2177:	49 01 f0             	add    %rsi,%r8
    217a:	4c 01 c6             	add    %r8,%rsi
    217d:	49 01 f0             	add    %rsi,%r8
    2180:	4c 01 c6             	add    %r8,%rsi
    2183:	49 01 f0             	add    %rsi,%r8
    2186:	4c 01 c6             	add    %r8,%rsi
    2189:	49 01 f0             	add    %rsi,%r8
    218c:	4c 01 c6             	add    %r8,%rsi
    218f:	49 01 f0             	add    %rsi,%r8
    2192:	4c 01 c6             	add    %r8,%rsi
    2195:	49 01 f0             	add    %rsi,%r8
    2198:	4c 01 c6             	add    %r8,%rsi
    219b:	49 01 f0             	add    %rsi,%r8
    219e:	4c 01 c6             	add    %r8,%rsi
    21a1:	49 01 f0             	add    %rsi,%r8
    21a4:	4c 01 c6             	add    %r8,%rsi
    21a7:	49 01 f0             	add    %rsi,%r8
    21aa:	4c 01 c6             	add    %r8,%rsi
    21ad:	49 01 f0             	add    %rsi,%r8
    21b0:	4c 01 c6             	add    %r8,%rsi
    21b3:	49 01 f0             	add    %rsi,%r8
    21b6:	4c 01 c6             	add    %r8,%rsi
    21b9:	49 01 f0             	add    %rsi,%r8
    21bc:	4c 01 c6             	add    %r8,%rsi
    21bf:	49 01 f0             	add    %rsi,%r8
    21c2:	4c 01 c6             	add    %r8,%rsi
    21c5:	49 01 f0             	add    %rsi,%r8
    21c8:	4c 01 c6             	add    %r8,%rsi
    21cb:	49 01 f0             	add    %rsi,%r8
    21ce:	4c 01 c6             	add    %r8,%rsi
    21d1:	49 01 f0             	add    %rsi,%r8
    21d4:	4c 01 c6             	add    %r8,%rsi
    21d7:	49 01 f0             	add    %rsi,%r8
    21da:	4c 01 c6             	add    %r8,%rsi
    21dd:	49 01 f0             	add    %rsi,%r8
    21e0:	48 83 c7 f8          	add    $0xfffffffffffffff8,%rdi
    21e4:	0f 85 36 ff ff ff    	jne    2120 <main+0xfe0>
    21ea:	f6 84 24 b0 00 00 00 	testb  $0x7,0xb0(%rsp)
    21f1:	07 
    21f2:	74 39                	je     222d <main+0x10ed>
    21f4:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    21f9:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
    21fe:	44 01 ff             	add    %r15d,%edi
    2201:	40 c0 ef 03          	shr    $0x3,%dil
    2205:	40 fe c7             	inc    %dil
    2208:	40 0f b6 ff          	movzbl %dil,%edi
    220c:	83 e7 07             	and    $0x7,%edi
    220f:	90                   	nop
    2210:	4c 01 c6             	add    %r8,%rsi
    2213:	49 01 f0             	add    %rsi,%r8
    2216:	4c 01 c6             	add    %r8,%rsi
    2219:	49 01 f0             	add    %rsi,%r8
    221c:	4c 01 c6             	add    %r8,%rsi
    221f:	49 01 f0             	add    %rsi,%r8
    2222:	4c 01 c6             	add    %r8,%rsi
    2225:	49 01 f0             	add    %rsi,%r8
    2228:	48 ff cf             	dec    %rdi
    222b:	75 e3                	jne    2210 <main+0x10d0>
    222d:	f6 44 24 60 07       	testb  $0x7,0x60(%rsp)
    2232:	48 89 f7             	mov    %rsi,%rdi
    2235:	74 1a                	je     2251 <main+0x1111>
    2237:	41 83 e5 07          	and    $0x7,%r13d
    223b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
    2240:	4c 89 c7             	mov    %r8,%rdi
    2243:	49 89 f0             	mov    %rsi,%r8
    2246:	49 01 f8             	add    %rdi,%r8
    2249:	49 ff cd             	dec    %r13
    224c:	48 89 fe             	mov    %rdi,%rsi
    224f:	75 ef                	jne    2240 <main+0x1100>
    2251:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
    2256:	83 e6 02             	and    $0x2,%esi
    2259:	48 83 ce 01          	or     $0x1,%rsi
    225d:	49 01 f3             	add    %rsi,%r11
    2260:	0f 84 4a ef ff ff    	je     11b0 <main+0x70>
    2266:	48 03 74 24 08       	add    0x8(%rsp),%rsi
    226b:	48 83 fe 07          	cmp    $0x7,%rsi
    226f:	73 0f                	jae    2280 <main+0x1140>
    2271:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    2277:	31 f6                	xor    %esi,%esi
    2279:	e9 3f 01 00 00       	jmp    23bd <main+0x127d>
    227e:	66 90                	xchg   %ax,%ax
    2280:	48 83 7c 24 70 38    	cmpq   $0x38,0x70(%rsp)
    2286:	73 0d                	jae    2295 <main+0x1155>
    2288:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    228e:	31 f6                	xor    %esi,%esi
    2290:	e9 e5 00 00 00       	jmp    237a <main+0x123a>
    2295:	4c 8b 7c 24 50       	mov    0x50(%rsp),%r15
    229a:	41 b8 01 00 00 00    	mov    $0x1,%r8d
    22a0:	31 f6                	xor    %esi,%esi
    22a2:	49 83 e7 f8          	and    $0xfffffffffffffff8,%r15
    22a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    22ad:	00 00 00 
    22b0:	4c 01 c6             	add    %r8,%rsi
    22b3:	49 01 f0             	add    %rsi,%r8
    22b6:	4c 01 c6             	add    %r8,%rsi
    22b9:	49 01 f0             	add    %rsi,%r8
    22bc:	4c 01 c6             	add    %r8,%rsi
    22bf:	49 01 f0             	add    %rsi,%r8
    22c2:	4c 01 c6             	add    %r8,%rsi
    22c5:	49 01 f0             	add    %rsi,%r8
    22c8:	4c 01 c6             	add    %r8,%rsi
    22cb:	49 01 f0             	add    %rsi,%r8
    22ce:	4c 01 c6             	add    %r8,%rsi
    22d1:	49 01 f0             	add    %rsi,%r8
    22d4:	4c 01 c6             	add    %r8,%rsi
    22d7:	49 01 f0             	add    %rsi,%r8
    22da:	4c 01 c6             	add    %r8,%rsi
    22dd:	49 01 f0             	add    %rsi,%r8
    22e0:	4c 01 c6             	add    %r8,%rsi
    22e3:	49 01 f0             	add    %rsi,%r8
    22e6:	4c 01 c6             	add    %r8,%rsi
    22e9:	49 01 f0             	add    %rsi,%r8
    22ec:	4c 01 c6             	add    %r8,%rsi
    22ef:	49 01 f0             	add    %rsi,%r8
    22f2:	4c 01 c6             	add    %r8,%rsi
    22f5:	49 01 f0             	add    %rsi,%r8
    22f8:	4c 01 c6             	add    %r8,%rsi
    22fb:	49 01 f0             	add    %rsi,%r8
    22fe:	4c 01 c6             	add    %r8,%rsi
    2301:	49 01 f0             	add    %rsi,%r8
    2304:	4c 01 c6             	add    %r8,%rsi
    2307:	49 01 f0             	add    %rsi,%r8
    230a:	4c 01 c6             	add    %r8,%rsi
    230d:	49 01 f0             	add    %rsi,%r8
    2310:	4c 01 c6             	add    %r8,%rsi
    2313:	49 01 f0             	add    %rsi,%r8
    2316:	4c 01 c6             	add    %r8,%rsi
    2319:	49 01 f0             	add    %rsi,%r8
    231c:	4c 01 c6             	add    %r8,%rsi
    231f:	49 01 f0             	add    %rsi,%r8
    2322:	4c 01 c6             	add    %r8,%rsi
    2325:	49 01 f0             	add    %rsi,%r8
    2328:	4c 01 c6             	add    %r8,%rsi
    232b:	49 01 f0             	add    %rsi,%r8
    232e:	4c 01 c6             	add    %r8,%rsi
    2331:	49 01 f0             	add    %rsi,%r8
    2334:	4c 01 c6             	add    %r8,%rsi
    2337:	49 01 f0             	add    %rsi,%r8
    233a:	4c 01 c6             	add    %r8,%rsi
    233d:	49 01 f0             	add    %rsi,%r8
    2340:	4c 01 c6             	add    %r8,%rsi
    2343:	49 01 f0             	add    %rsi,%r8
    2346:	4c 01 c6             	add    %r8,%rsi
    2349:	49 01 f0             	add    %rsi,%r8
    234c:	4c 01 c6             	add    %r8,%rsi
    234f:	49 01 f0             	add    %rsi,%r8
    2352:	4c 01 c6             	add    %r8,%rsi
    2355:	49 01 f0             	add    %rsi,%r8
    2358:	4c 01 c6             	add    %r8,%rsi
    235b:	49 01 f0             	add    %rsi,%r8
    235e:	4c 01 c6             	add    %r8,%rsi
    2361:	49 01 f0             	add    %rsi,%r8
    2364:	4c 01 c6             	add    %r8,%rsi
    2367:	49 01 f0             	add    %rsi,%r8
    236a:	4c 01 c6             	add    %r8,%rsi
    236d:	49 01 f0             	add    %rsi,%r8
    2370:	49 83 c7 f8          	add    $0xfffffffffffffff8,%r15
    2374:	0f 85 36 ff ff ff    	jne    22b0 <main+0x1170>
    237a:	f6 44 24 58 07       	testb  $0x7,0x58(%rsp)
    237f:	74 3c                	je     23bd <main+0x127d>
    2381:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
    2386:	44 03 7c 24 10       	add    0x10(%rsp),%r15d
    238b:	41 c0 ef 03          	shr    $0x3,%r15b
    238f:	41 fe c7             	inc    %r15b
    2392:	45 0f b6 ff          	movzbl %r15b,%r15d
    2396:	41 83 e7 07          	and    $0x7,%r15d
    239a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    23a0:	4c 01 c6             	add    %r8,%rsi
    23a3:	49 01 f0             	add    %rsi,%r8
    23a6:	4c 01 c6             	add    %r8,%rsi
    23a9:	49 01 f0             	add    %rsi,%r8
    23ac:	4c 01 c6             	add    %r8,%rsi
    23af:	49 01 f0             	add    %rsi,%r8
    23b2:	4c 01 c6             	add    %r8,%rsi
    23b5:	49 01 f0             	add    %rsi,%r8
    23b8:	49 ff cf             	dec    %r15
    23bb:	75 e3                	jne    23a0 <main+0x1260>
    23bd:	49 89 f7             	mov    %rsi,%r15
    23c0:	41 f6 c3 07          	test   $0x7,%r11b
    23c4:	0f 84 e9 ed ff ff    	je     11b3 <main+0x73>
    23ca:	83 e5 07             	and    $0x7,%ebp
    23cd:	0f 1f 00             	nopl   (%rax)
    23d0:	4d 89 c7             	mov    %r8,%r15
    23d3:	49 89 f0             	mov    %rsi,%r8
    23d6:	4d 01 f8             	add    %r15,%r8
    23d9:	48 ff cd             	dec    %rbp
    23dc:	4c 89 fe             	mov    %r15,%rsi
    23df:	75 ef                	jne    23d0 <main+0x1290>
    23e1:	e9 cd ed ff ff       	jmp    11b3 <main+0x73>
    23e6:	48 8d 3d 17 0c 00 00 	lea    0xc17(%rip),%rdi        # 3004 <_IO_stdin_used+0x4>
    23ed:	31 c0                	xor    %eax,%eax
    23ef:	e8 3c ec ff ff       	call   1030 <printf@plt>
    23f4:	31 c0                	xor    %eax,%eax
    23f6:	48 81 c4 d8 00 00 00 	add    $0xd8,%rsp
    23fd:	5b                   	pop    %rbx
    23fe:	41 5c                	pop    %r12
    2400:	41 5d                	pop    %r13
    2402:	41 5e                	pop    %r14
    2404:	41 5f                	pop    %r15
    2406:	5d                   	pop    %rbp
    2407:	c3                   	ret

Disassembly of section .fini:

0000000000002408 <_fini>:
    2408:	f3 0f 1e fa          	endbr64
    240c:	48 83 ec 08          	sub    $0x8,%rsp
    2410:	48 83 c4 08          	add    $0x8,%rsp
    2414:	c3                   	ret
