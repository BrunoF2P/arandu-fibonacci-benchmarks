; Benchmark: 02_binet_formula
; Implementação: Arandu (emit-c --opt + Clang -O3)
; Executável: /workspaces/arandu-fibonacci-benchmarks/build/02_binet_formula/arandu_c_clang
; Comando: /usr/bin/objdump -d -C /workspaces/arandu-fibonacci-benchmarks/build/02_binet_formula/arandu_c_clang


/workspaces/arandu-fibonacci-benchmarks/build/02_binet_formula/arandu_c_clang:     file format elf64-x86-64


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

0000000000001050 <pow@plt>:
    1050:	ff 25 ba 3f 00 00    	jmp    *0x3fba(%rip)        # 5010 <pow@GLIBC_2.29>
    1056:	68 02 00 00 00       	push   $0x2
    105b:	e9 c0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001060 <snprintf@plt>:
    1060:	ff 25 b2 3f 00 00    	jmp    *0x3fb2(%rip)        # 5018 <snprintf@GLIBC_2.2.5>
    1066:	68 03 00 00 00       	push   $0x3
    106b:	e9 b0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001070 <fputc@plt>:
    1070:	ff 25 aa 3f 00 00    	jmp    *0x3faa(%rip)        # 5020 <fputc@GLIBC_2.2.5>
    1076:	68 04 00 00 00       	push   $0x4
    107b:	e9 a0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001080 <memcpy@plt>:
    1080:	ff 25 a2 3f 00 00    	jmp    *0x3fa2(%rip)        # 5028 <memcpy@GLIBC_2.14>
    1086:	68 05 00 00 00       	push   $0x5
    108b:	e9 90 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001090 <malloc@plt>:
    1090:	ff 25 9a 3f 00 00    	jmp    *0x3f9a(%rip)        # 5030 <malloc@GLIBC_2.2.5>
    1096:	68 06 00 00 00       	push   $0x6
    109b:	e9 80 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010a0 <fflush@plt>:
    10a0:	ff 25 92 3f 00 00    	jmp    *0x3f92(%rip)        # 5038 <fflush@GLIBC_2.2.5>
    10a6:	68 07 00 00 00       	push   $0x7
    10ab:	e9 70 ff ff ff       	jmp    1020 <_init+0x20>

00000000000010b0 <fwrite@plt>:
    10b0:	ff 25 8a 3f 00 00    	jmp    *0x3f8a(%rip)        # 5040 <fwrite@GLIBC_2.2.5>
    10b6:	68 08 00 00 00       	push   $0x8
    10bb:	e9 60 ff ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .plt.got:

00000000000010c0 <__cxa_finalize@plt>:
    10c0:	ff 25 1a 3f 00 00    	jmp    *0x3f1a(%rip)        # 4fe0 <__cxa_finalize@GLIBC_2.2.5>
    10c6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000000010d0 <_start>:
    10d0:	f3 0f 1e fa          	endbr64
    10d4:	31 ed                	xor    %ebp,%ebp
    10d6:	49 89 d1             	mov    %rdx,%r9
    10d9:	5e                   	pop    %rsi
    10da:	48 89 e2             	mov    %rsp,%rdx
    10dd:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    10e1:	50                   	push   %rax
    10e2:	54                   	push   %rsp
    10e3:	45 31 c0             	xor    %r8d,%r8d
    10e6:	31 c9                	xor    %ecx,%ecx
    10e8:	48 8d 3d e1 00 00 00 	lea    0xe1(%rip),%rdi        # 11d0 <main>
    10ef:	ff 15 c3 3e 00 00    	call   *0x3ec3(%rip)        # 4fb8 <__libc_start_main@GLIBC_2.34>
    10f5:	f4                   	hlt
    10f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    10fd:	00 00 00 

0000000000001100 <deregister_tm_clones>:
    1100:	48 8d 3d 51 3f 00 00 	lea    0x3f51(%rip),%rdi        # 5058 <__TMC_END__>
    1107:	48 8d 05 4a 3f 00 00 	lea    0x3f4a(%rip),%rax        # 5058 <__TMC_END__>
    110e:	48 39 f8             	cmp    %rdi,%rax
    1111:	74 15                	je     1128 <deregister_tm_clones+0x28>
    1113:	48 8b 05 a6 3e 00 00 	mov    0x3ea6(%rip),%rax        # 4fc0 <_ITM_deregisterTMCloneTable@Base>
    111a:	48 85 c0             	test   %rax,%rax
    111d:	74 09                	je     1128 <deregister_tm_clones+0x28>
    111f:	ff e0                	jmp    *%rax
    1121:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1128:	c3                   	ret
    1129:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001130 <register_tm_clones>:
    1130:	48 8d 3d 21 3f 00 00 	lea    0x3f21(%rip),%rdi        # 5058 <__TMC_END__>
    1137:	48 8d 35 1a 3f 00 00 	lea    0x3f1a(%rip),%rsi        # 5058 <__TMC_END__>
    113e:	48 29 fe             	sub    %rdi,%rsi
    1141:	48 89 f0             	mov    %rsi,%rax
    1144:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1148:	48 c1 f8 03          	sar    $0x3,%rax
    114c:	48 01 c6             	add    %rax,%rsi
    114f:	48 d1 fe             	sar    $1,%rsi
    1152:	74 14                	je     1168 <register_tm_clones+0x38>
    1154:	48 8b 05 7d 3e 00 00 	mov    0x3e7d(%rip),%rax        # 4fd8 <_ITM_registerTMCloneTable@Base>
    115b:	48 85 c0             	test   %rax,%rax
    115e:	74 08                	je     1168 <register_tm_clones+0x38>
    1160:	ff e0                	jmp    *%rax
    1162:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1168:	c3                   	ret
    1169:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001170 <__do_global_dtors_aux>:
    1170:	f3 0f 1e fa          	endbr64
    1174:	80 3d dd 3e 00 00 00 	cmpb   $0x0,0x3edd(%rip)        # 5058 <__TMC_END__>
    117b:	75 2b                	jne    11a8 <__do_global_dtors_aux+0x38>
    117d:	55                   	push   %rbp
    117e:	48 83 3d 5a 3e 00 00 	cmpq   $0x0,0x3e5a(%rip)        # 4fe0 <__cxa_finalize@GLIBC_2.2.5>
    1185:	00 
    1186:	48 89 e5             	mov    %rsp,%rbp
    1189:	74 0c                	je     1197 <__do_global_dtors_aux+0x27>
    118b:	48 8b 3d be 3e 00 00 	mov    0x3ebe(%rip),%rdi        # 5050 <__dso_handle>
    1192:	e8 29 ff ff ff       	call   10c0 <__cxa_finalize@plt>
    1197:	e8 64 ff ff ff       	call   1100 <deregister_tm_clones>
    119c:	c6 05 b5 3e 00 00 01 	movb   $0x1,0x3eb5(%rip)        # 5058 <__TMC_END__>
    11a3:	5d                   	pop    %rbp
    11a4:	c3                   	ret
    11a5:	0f 1f 00             	nopl   (%rax)
    11a8:	c3                   	ret
    11a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011b0 <frame_dummy>:
    11b0:	f3 0f 1e fa          	endbr64
    11b4:	e9 77 ff ff ff       	jmp    1130 <register_tm_clones>
    11b9:	0f 1f 00             	nopl   (%rax)
    11bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000011c0 <ar_capture_env_args>:
    11c0:	c3                   	ret
    11c1:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    11c8:	00 00 00 
    11cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000011d0 <main>:
    11d0:	55                   	push   %rbp
    11d1:	41 57                	push   %r15
    11d3:	41 56                	push   %r14
    11d5:	41 55                	push   %r13
    11d7:	41 54                	push   %r12
    11d9:	53                   	push   %rbx
    11da:	48 81 ec e8 01 00 00 	sub    $0x1e8,%rsp
    11e1:	b8 27 00 00 00       	mov    $0x27,%eax
    11e6:	b9 26 00 00 00       	mov    $0x26,%ecx
    11eb:	ba 25 00 00 00       	mov    $0x25,%edx
    11f0:	be 24 00 00 00       	mov    $0x24,%esi
    11f5:	bf 23 00 00 00       	mov    $0x23,%edi
    11fa:	41 b8 22 00 00 00    	mov    $0x22,%r8d
    1200:	41 b9 21 00 00 00    	mov    $0x21,%r9d
    1206:	41 ba 20 00 00 00    	mov    $0x20,%r10d
    120c:	41 bb 1f 00 00 00    	mov    $0x1f,%r11d
    1212:	41 be 1d 00 00 00    	mov    $0x1d,%r14d
    1218:	41 bf 1c 00 00 00    	mov    $0x1c,%r15d
    121e:	bd 1b 00 00 00       	mov    $0x1b,%ebp
    1223:	c7 44 24 70 1e 00 00 	movl   $0x1e,0x70(%rsp)
    122a:	00 
    122b:	c7 44 24 68 1a 00 00 	movl   $0x1a,0x68(%rsp)
    1232:	00 
    1233:	c7 44 24 64 19 00 00 	movl   $0x19,0x64(%rsp)
    123a:	00 
    123b:	c7 44 24 60 18 00 00 	movl   $0x18,0x60(%rsp)
    1242:	00 
    1243:	c7 44 24 5c 17 00 00 	movl   $0x17,0x5c(%rsp)
    124a:	00 
    124b:	c7 44 24 58 16 00 00 	movl   $0x16,0x58(%rsp)
    1252:	00 
    1253:	c7 44 24 54 15 00 00 	movl   $0x15,0x54(%rsp)
    125a:	00 
    125b:	c7 44 24 50 14 00 00 	movl   $0x14,0x50(%rsp)
    1262:	00 
    1263:	c7 44 24 4c 13 00 00 	movl   $0x13,0x4c(%rsp)
    126a:	00 
    126b:	c7 44 24 48 12 00 00 	movl   $0x12,0x48(%rsp)
    1272:	00 
    1273:	c7 44 24 44 11 00 00 	movl   $0x11,0x44(%rsp)
    127a:	00 
    127b:	c7 44 24 40 10 00 00 	movl   $0x10,0x40(%rsp)
    1282:	00 
    1283:	c7 44 24 3c 0f 00 00 	movl   $0xf,0x3c(%rsp)
    128a:	00 
    128b:	c7 44 24 38 0e 00 00 	movl   $0xe,0x38(%rsp)
    1292:	00 
    1293:	c7 44 24 34 0d 00 00 	movl   $0xd,0x34(%rsp)
    129a:	00 
    129b:	c7 44 24 30 0c 00 00 	movl   $0xc,0x30(%rsp)
    12a2:	00 
    12a3:	c7 44 24 2c 0b 00 00 	movl   $0xb,0x2c(%rsp)
    12aa:	00 
    12ab:	c7 44 24 28 0a 00 00 	movl   $0xa,0x28(%rsp)
    12b2:	00 
    12b3:	c7 44 24 24 09 00 00 	movl   $0x9,0x24(%rsp)
    12ba:	00 
    12bb:	c7 44 24 20 08 00 00 	movl   $0x8,0x20(%rsp)
    12c2:	00 
    12c3:	c7 44 24 1c 07 00 00 	movl   $0x7,0x1c(%rsp)
    12ca:	00 
    12cb:	c7 44 24 18 06 00 00 	movl   $0x6,0x18(%rsp)
    12d2:	00 
    12d3:	c7 44 24 14 05 00 00 	movl   $0x5,0x14(%rsp)
    12da:	00 
    12db:	c7 44 24 10 04 00 00 	movl   $0x4,0x10(%rsp)
    12e2:	00 
    12e3:	c7 44 24 0c 03 00 00 	movl   $0x3,0xc(%rsp)
    12ea:	00 
    12eb:	c7 44 24 08 02 00 00 	movl   $0x2,0x8(%rsp)
    12f2:	00 
    12f3:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%rsp)
    12fa:	00 
    12fb:	45 31 ed             	xor    %r13d,%r13d
    12fe:	31 db                	xor    %ebx,%ebx
    1300:	89 44 24 6c          	mov    %eax,0x6c(%rsp)
    1304:	41 bc 49 b4 c2 e6    	mov    $0xe6c2b449,%r12d
    130a:	44 89 74 24 7c       	mov    %r14d,0x7c(%rsp)
    130f:	89 6c 24 74          	mov    %ebp,0x74(%rsp)
    1313:	44 89 7c 24 78       	mov    %r15d,0x78(%rsp)
    1318:	44 89 9c 24 80 00 00 	mov    %r11d,0x80(%rsp)
    131f:	00 
    1320:	44 89 94 24 84 00 00 	mov    %r10d,0x84(%rsp)
    1327:	00 
    1328:	44 89 8c 24 88 00 00 	mov    %r9d,0x88(%rsp)
    132f:	00 
    1330:	44 89 84 24 8c 00 00 	mov    %r8d,0x8c(%rsp)
    1337:	00 
    1338:	89 bc 24 90 00 00 00 	mov    %edi,0x90(%rsp)
    133f:	89 b4 24 94 00 00 00 	mov    %esi,0x94(%rsp)
    1346:	89 94 24 98 00 00 00 	mov    %edx,0x98(%rsp)
    134d:	89 8c 24 9c 00 00 00 	mov    %ecx,0x9c(%rsp)
    1354:	8b 44 24 6c          	mov    0x6c(%rsp),%eax
    1358:	49 0f af c4          	imul   %r12,%rax
    135c:	48 c1 e8 26          	shr    $0x26,%rax
    1360:	6b c0 b9             	imul   $0xffffffb9,%eax,%eax
    1363:	48 89 84 24 b8 01 00 	mov    %rax,0x1b8(%rsp)
    136a:	00 
    136b:	89 c8                	mov    %ecx,%eax
    136d:	49 0f af c4          	imul   %r12,%rax
    1371:	48 c1 e8 26          	shr    $0x26,%rax
    1375:	6b c0 b9             	imul   $0xffffffb9,%eax,%eax
    1378:	48 89 84 24 b0 01 00 	mov    %rax,0x1b0(%rsp)
    137f:	00 
    1380:	89 d0                	mov    %edx,%eax
    1382:	49 0f af c4          	imul   %r12,%rax
    1386:	48 c1 e8 26          	shr    $0x26,%rax
    138a:	6b c0 b9             	imul   $0xffffffb9,%eax,%eax
    138d:	48 89 84 24 a8 01 00 	mov    %rax,0x1a8(%rsp)
    1394:	00 
    1395:	89 f0                	mov    %esi,%eax
    1397:	49 0f af c4          	imul   %r12,%rax
    139b:	48 c1 e8 26          	shr    $0x26,%rax
    139f:	6b c0 b9             	imul   $0xffffffb9,%eax,%eax
    13a2:	48 89 84 24 a0 01 00 	mov    %rax,0x1a0(%rsp)
    13a9:	00 
    13aa:	89 f8                	mov    %edi,%eax
    13ac:	49 0f af c4          	imul   %r12,%rax
    13b0:	48 c1 e8 26          	shr    $0x26,%rax
    13b4:	6b c0 b9             	imul   $0xffffffb9,%eax,%eax
    13b7:	48 89 84 24 98 01 00 	mov    %rax,0x198(%rsp)
    13be:	00 
    13bf:	44 89 c0             	mov    %r8d,%eax
    13c2:	49 0f af c4          	imul   %r12,%rax
    13c6:	48 c1 e8 26          	shr    $0x26,%rax
    13ca:	6b c0 b9             	imul   $0xffffffb9,%eax,%eax
    13cd:	48 89 84 24 90 01 00 	mov    %rax,0x190(%rsp)
    13d4:	00 
    13d5:	44 89 c8             	mov    %r9d,%eax
    13d8:	49 0f af c4          	imul   %r12,%rax
    13dc:	48 c1 e8 26          	shr    $0x26,%rax
    13e0:	6b c0 b9             	imul   $0xffffffb9,%eax,%eax
    13e3:	48 89 84 24 88 01 00 	mov    %rax,0x188(%rsp)
    13ea:	00 
    13eb:	44 89 d0             	mov    %r10d,%eax
    13ee:	49 0f af c4          	imul   %r12,%rax
    13f2:	48 c1 e8 26          	shr    $0x26,%rax
    13f6:	6b c0 b9             	imul   $0xffffffb9,%eax,%eax
    13f9:	48 89 84 24 80 01 00 	mov    %rax,0x180(%rsp)
    1400:	00 
    1401:	44 89 d8             	mov    %r11d,%eax
    1404:	49 0f af c4          	imul   %r12,%rax
    1408:	48 c1 e8 26          	shr    $0x26,%rax
    140c:	6b c0 b9             	imul   $0xffffffb9,%eax,%eax
    140f:	48 89 84 24 78 01 00 	mov    %rax,0x178(%rsp)
    1416:	00 
    1417:	8b 44 24 70          	mov    0x70(%rsp),%eax
    141b:	89 c0                	mov    %eax,%eax
    141d:	49 0f af c4          	imul   %r12,%rax
    1421:	48 c1 e8 26          	shr    $0x26,%rax
    1425:	6b c0 b9             	imul   $0xffffffb9,%eax,%eax
    1428:	48 89 84 24 70 01 00 	mov    %rax,0x170(%rsp)
    142f:	00 
    1430:	44 89 f0             	mov    %r14d,%eax
    1433:	49 0f af c4          	imul   %r12,%rax
    1437:	48 c1 e8 26          	shr    $0x26,%rax
    143b:	6b c0 b9             	imul   $0xffffffb9,%eax,%eax
    143e:	48 89 84 24 68 01 00 	mov    %rax,0x168(%rsp)
    1445:	00 
    1446:	44 89 f8             	mov    %r15d,%eax
    1449:	49 0f af c4          	imul   %r12,%rax
    144d:	48 c1 e8 26          	shr    $0x26,%rax
    1451:	6b c0 b9             	imul   $0xffffffb9,%eax,%eax
    1454:	48 89 84 24 60 01 00 	mov    %rax,0x160(%rsp)
    145b:	00 
    145c:	89 e8                	mov    %ebp,%eax
    145e:	49 0f af c4          	imul   %r12,%rax
    1462:	48 c1 e8 26          	shr    $0x26,%rax
    1466:	6b c0 b9             	imul   $0xffffffb9,%eax,%eax
    1469:	48 89 84 24 58 01 00 	mov    %rax,0x158(%rsp)
    1470:	00 
    1471:	8b 44 24 68          	mov    0x68(%rsp),%eax
    1475:	49 0f af c4          	imul   %r12,%rax
    1479:	48 c1 e8 26          	shr    $0x26,%rax
    147d:	6b c0 b9             	imul   $0xffffffb9,%eax,%eax
    1480:	48 89 84 24 50 01 00 	mov    %rax,0x150(%rsp)
    1487:	00 
    1488:	44 89 e8             	mov    %r13d,%eax
    148b:	49 0f af c4          	imul   %r12,%rax
    148f:	48 c1 e8 26          	shr    $0x26,%rax
    1493:	6b c0 b9             	imul   $0xffffffb9,%eax,%eax
    1496:	44 01 e8             	add    %r13d,%eax
    1499:	c4 e1 f3 2a c8       	vcvtsi2sd %rax,%xmm1,%xmm1
    149e:	8b 44 24 64          	mov    0x64(%rsp),%eax
    14a2:	c5 fb 10 05 5e 1b 00 	vmovsd 0x1b5e(%rip),%xmm0        # 3008 <_IO_stdin_used+0x8>
    14a9:	00 
    14aa:	49 0f af c4          	imul   %r12,%rax
    14ae:	48 c1 e8 26          	shr    $0x26,%rax
    14b2:	6b c0 b9             	imul   $0xffffffb9,%eax,%eax
    14b5:	48 89 84 24 48 01 00 	mov    %rax,0x148(%rsp)
    14bc:	00 
    14bd:	8b 44 24 60          	mov    0x60(%rsp),%eax
    14c1:	49 0f af c4          	imul   %r12,%rax
    14c5:	48 c1 e8 26          	shr    $0x26,%rax
    14c9:	6b c0 b9             	imul   $0xffffffb9,%eax,%eax
    14cc:	48 89 84 24 40 01 00 	mov    %rax,0x140(%rsp)
    14d3:	00 
    14d4:	8b 44 24 5c          	mov    0x5c(%rsp),%eax
    14d8:	49 0f af c4          	imul   %r12,%rax
    14dc:	48 c1 e8 26          	shr    $0x26,%rax
    14e0:	6b c0 b9             	imul   $0xffffffb9,%eax,%eax
    14e3:	48 89 84 24 38 01 00 	mov    %rax,0x138(%rsp)
    14ea:	00 
    14eb:	8b 44 24 58          	mov    0x58(%rsp),%eax
    14ef:	49 0f af c4          	imul   %r12,%rax
    14f3:	48 c1 e8 26          	shr    $0x26,%rax
    14f7:	6b c0 b9             	imul   $0xffffffb9,%eax,%eax
    14fa:	48 89 84 24 30 01 00 	mov    %rax,0x130(%rsp)
    1501:	00 
    1502:	8b 44 24 54          	mov    0x54(%rsp),%eax
    1506:	49 0f af c4          	imul   %r12,%rax
    150a:	48 c1 e8 26          	shr    $0x26,%rax
    150e:	6b c0 b9             	imul   $0xffffffb9,%eax,%eax
    1511:	48 89 84 24 28 01 00 	mov    %rax,0x128(%rsp)
    1518:	00 
    1519:	8b 44 24 50          	mov    0x50(%rsp),%eax
    151d:	49 0f af c4          	imul   %r12,%rax
    1521:	48 c1 e8 26          	shr    $0x26,%rax
    1525:	6b c0 b9             	imul   $0xffffffb9,%eax,%eax
    1528:	48 89 84 24 20 01 00 	mov    %rax,0x120(%rsp)
    152f:	00 
    1530:	8b 44 24 4c          	mov    0x4c(%rsp),%eax
    1534:	49 0f af c4          	imul   %r12,%rax
    1538:	48 c1 e8 26          	shr    $0x26,%rax
    153c:	6b c0 b9             	imul   $0xffffffb9,%eax,%eax
    153f:	48 89 84 24 18 01 00 	mov    %rax,0x118(%rsp)
    1546:	00 
    1547:	8b 44 24 48          	mov    0x48(%rsp),%eax
    154b:	49 0f af c4          	imul   %r12,%rax
    154f:	48 c1 e8 26          	shr    $0x26,%rax
    1553:	6b c0 b9             	imul   $0xffffffb9,%eax,%eax
    1556:	48 89 84 24 10 01 00 	mov    %rax,0x110(%rsp)
    155d:	00 
    155e:	8b 44 24 44          	mov    0x44(%rsp),%eax
    1562:	49 0f af c4          	imul   %r12,%rax
    1566:	48 c1 e8 26          	shr    $0x26,%rax
    156a:	6b c0 b9             	imul   $0xffffffb9,%eax,%eax
    156d:	48 89 84 24 08 01 00 	mov    %rax,0x108(%rsp)
    1574:	00 
    1575:	8b 44 24 40          	mov    0x40(%rsp),%eax
    1579:	49 0f af c4          	imul   %r12,%rax
    157d:	48 c1 e8 26          	shr    $0x26,%rax
    1581:	6b c0 b9             	imul   $0xffffffb9,%eax,%eax
    1584:	48 89 84 24 00 01 00 	mov    %rax,0x100(%rsp)
    158b:	00 
    158c:	8b 44 24 3c          	mov    0x3c(%rsp),%eax
    1590:	49 0f af c4          	imul   %r12,%rax
    1594:	48 c1 e8 26          	shr    $0x26,%rax
    1598:	6b c0 b9             	imul   $0xffffffb9,%eax,%eax
    159b:	48 89 84 24 f8 00 00 	mov    %rax,0xf8(%rsp)
    15a2:	00 
    15a3:	8b 44 24 38          	mov    0x38(%rsp),%eax
    15a7:	49 0f af c4          	imul   %r12,%rax
    15ab:	48 c1 e8 26          	shr    $0x26,%rax
    15af:	6b c0 b9             	imul   $0xffffffb9,%eax,%eax
    15b2:	48 89 84 24 f0 00 00 	mov    %rax,0xf0(%rsp)
    15b9:	00 
    15ba:	8b 44 24 34          	mov    0x34(%rsp),%eax
    15be:	49 0f af c4          	imul   %r12,%rax
    15c2:	48 c1 e8 26          	shr    $0x26,%rax
    15c6:	6b c0 b9             	imul   $0xffffffb9,%eax,%eax
    15c9:	48 89 84 24 e8 00 00 	mov    %rax,0xe8(%rsp)
    15d0:	00 
    15d1:	8b 44 24 30          	mov    0x30(%rsp),%eax
    15d5:	49 0f af c4          	imul   %r12,%rax
    15d9:	48 c1 e8 26          	shr    $0x26,%rax
    15dd:	6b c0 b9             	imul   $0xffffffb9,%eax,%eax
    15e0:	48 89 84 24 e0 00 00 	mov    %rax,0xe0(%rsp)
    15e7:	00 
    15e8:	8b 44 24 2c          	mov    0x2c(%rsp),%eax
    15ec:	49 0f af c4          	imul   %r12,%rax
    15f0:	48 c1 e8 26          	shr    $0x26,%rax
    15f4:	6b c0 b9             	imul   $0xffffffb9,%eax,%eax
    15f7:	48 89 84 24 d8 00 00 	mov    %rax,0xd8(%rsp)
    15fe:	00 
    15ff:	8b 44 24 28          	mov    0x28(%rsp),%eax
    1603:	49 0f af c4          	imul   %r12,%rax
    1607:	48 c1 e8 26          	shr    $0x26,%rax
    160b:	6b c0 b9             	imul   $0xffffffb9,%eax,%eax
    160e:	48 89 84 24 d0 00 00 	mov    %rax,0xd0(%rsp)
    1615:	00 
    1616:	8b 44 24 24          	mov    0x24(%rsp),%eax
    161a:	49 0f af c4          	imul   %r12,%rax
    161e:	48 c1 e8 26          	shr    $0x26,%rax
    1622:	6b c0 b9             	imul   $0xffffffb9,%eax,%eax
    1625:	48 89 84 24 c8 00 00 	mov    %rax,0xc8(%rsp)
    162c:	00 
    162d:	8b 44 24 20          	mov    0x20(%rsp),%eax
    1631:	49 0f af c4          	imul   %r12,%rax
    1635:	48 c1 e8 26          	shr    $0x26,%rax
    1639:	6b c0 b9             	imul   $0xffffffb9,%eax,%eax
    163c:	48 89 84 24 c0 00 00 	mov    %rax,0xc0(%rsp)
    1643:	00 
    1644:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
    1648:	49 0f af c4          	imul   %r12,%rax
    164c:	48 c1 e8 26          	shr    $0x26,%rax
    1650:	6b c0 b9             	imul   $0xffffffb9,%eax,%eax
    1653:	48 89 84 24 b8 00 00 	mov    %rax,0xb8(%rsp)
    165a:	00 
    165b:	8b 44 24 18          	mov    0x18(%rsp),%eax
    165f:	49 0f af c4          	imul   %r12,%rax
    1663:	48 c1 e8 26          	shr    $0x26,%rax
    1667:	6b c0 b9             	imul   $0xffffffb9,%eax,%eax
    166a:	48 89 84 24 b0 00 00 	mov    %rax,0xb0(%rsp)
    1671:	00 
    1672:	8b 44 24 14          	mov    0x14(%rsp),%eax
    1676:	49 0f af c4          	imul   %r12,%rax
    167a:	48 c1 e8 26          	shr    $0x26,%rax
    167e:	6b c0 b9             	imul   $0xffffffb9,%eax,%eax
    1681:	48 89 84 24 a8 00 00 	mov    %rax,0xa8(%rsp)
    1688:	00 
    1689:	8b 44 24 10          	mov    0x10(%rsp),%eax
    168d:	49 0f af c4          	imul   %r12,%rax
    1691:	48 c1 e8 26          	shr    $0x26,%rax
    1695:	6b c0 b9             	imul   $0xffffffb9,%eax,%eax
    1698:	48 89 84 24 a0 00 00 	mov    %rax,0xa0(%rsp)
    169f:	00 
    16a0:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    16a4:	49 0f af c4          	imul   %r12,%rax
    16a8:	48 c1 e8 26          	shr    $0x26,%rax
    16ac:	44 6b f0 b9          	imul   $0xffffffb9,%eax,%r14d
    16b0:	8b 44 24 08          	mov    0x8(%rsp),%eax
    16b4:	49 0f af c4          	imul   %r12,%rax
    16b8:	48 c1 e8 26          	shr    $0x26,%rax
    16bc:	6b e8 b9             	imul   $0xffffffb9,%eax,%ebp
    16bf:	8b 44 24 04          	mov    0x4(%rsp),%eax
    16c3:	49 0f af c4          	imul   %r12,%rax
    16c7:	48 c1 e8 26          	shr    $0x26,%rax
    16cb:	44 6b f8 b9          	imul   $0xffffffb9,%eax,%r15d
    16cf:	e8 7c f9 ff ff       	call   1050 <pow@plt>
    16d4:	c5 fb 10 0d 34 19 00 	vmovsd 0x1934(%rip),%xmm1        # 3010 <_IO_stdin_used+0x10>
    16db:	00 
    16dc:	c5 fb 59 c1          	vmulsd %xmm1,%xmm0,%xmm0
    16e0:	c5 fb 10 0d 30 19 00 	vmovsd 0x1930(%rip),%xmm1        # 3018 <_IO_stdin_used+0x18>
    16e7:	00 
    16e8:	c5 fb 58 c1          	vaddsd %xmm1,%xmm0,%xmm0
    16ec:	c5 fb 10 0d 2c 19 00 	vmovsd 0x192c(%rip),%xmm1        # 3020 <_IO_stdin_used+0x20>
    16f3:	00 
    16f4:	c4 e1 fb 2c c0       	vcvttsd2si %xmm0,%rax
    16f9:	c5 fb 5c c1          	vsubsd %xmm1,%xmm0,%xmm0
    16fd:	48 89 c1             	mov    %rax,%rcx
    1700:	48 c1 f9 3f          	sar    $0x3f,%rcx
    1704:	c4 61 fb 2c e0       	vcvttsd2si %xmm0,%r12
    1709:	49 21 cc             	and    %rcx,%r12
    170c:	49 09 c4             	or     %rax,%r12
    170f:	43 8d 44 2f 01       	lea    0x1(%r15,%r13,1),%eax
    1714:	49 01 dc             	add    %rbx,%r12
    1717:	c4 e1 eb 2a c8       	vcvtsi2sd %rax,%xmm2,%xmm1
    171c:	c5 fb 10 05 e4 18 00 	vmovsd 0x18e4(%rip),%xmm0        # 3008 <_IO_stdin_used+0x8>
    1723:	00 
    1724:	e8 27 f9 ff ff       	call   1050 <pow@plt>
    1729:	c5 fb 59 05 df 18 00 	vmulsd 0x18df(%rip),%xmm0,%xmm0        # 3010 <_IO_stdin_used+0x10>
    1730:	00 
    1731:	c5 fb 58 05 df 18 00 	vaddsd 0x18df(%rip),%xmm0,%xmm0        # 3018 <_IO_stdin_used+0x18>
    1738:	00 
    1739:	c4 e1 fb 2c c0       	vcvttsd2si %xmm0,%rax
    173e:	c5 fb 5c 05 da 18 00 	vsubsd 0x18da(%rip),%xmm0,%xmm0        # 3020 <_IO_stdin_used+0x20>
    1745:	00 
    1746:	48 89 c1             	mov    %rax,%rcx
    1749:	48 c1 f9 3f          	sar    $0x3f,%rcx
    174d:	c4 e1 fb 2c d8       	vcvttsd2si %xmm0,%rbx
    1752:	48 21 cb             	and    %rcx,%rbx
    1755:	48 09 c3             	or     %rax,%rbx
    1758:	42 8d 44 2d 02       	lea    0x2(%rbp,%r13,1),%eax
    175d:	4c 01 e3             	add    %r12,%rbx
    1760:	c4 e1 eb 2a c8       	vcvtsi2sd %rax,%xmm2,%xmm1
    1765:	c5 fb 10 05 9b 18 00 	vmovsd 0x189b(%rip),%xmm0        # 3008 <_IO_stdin_used+0x8>
    176c:	00 
    176d:	e8 de f8 ff ff       	call   1050 <pow@plt>
    1772:	c5 fb 59 05 96 18 00 	vmulsd 0x1896(%rip),%xmm0,%xmm0        # 3010 <_IO_stdin_used+0x10>
    1779:	00 
    177a:	c5 fb 58 05 96 18 00 	vaddsd 0x1896(%rip),%xmm0,%xmm0        # 3018 <_IO_stdin_used+0x18>
    1781:	00 
    1782:	c4 e1 fb 2c c0       	vcvttsd2si %xmm0,%rax
    1787:	c5 fb 5c 05 91 18 00 	vsubsd 0x1891(%rip),%xmm0,%xmm0        # 3020 <_IO_stdin_used+0x20>
    178e:	00 
    178f:	48 89 c1             	mov    %rax,%rcx
    1792:	48 c1 f9 3f          	sar    $0x3f,%rcx
    1796:	c4 61 fb 2c f8       	vcvttsd2si %xmm0,%r15
    179b:	49 21 cf             	and    %rcx,%r15
    179e:	49 09 c7             	or     %rax,%r15
    17a1:	43 8d 44 2e 03       	lea    0x3(%r14,%r13,1),%eax
    17a6:	c4 e1 eb 2a c8       	vcvtsi2sd %rax,%xmm2,%xmm1
    17ab:	c5 fb 10 05 55 18 00 	vmovsd 0x1855(%rip),%xmm0        # 3008 <_IO_stdin_used+0x8>
    17b2:	00 
    17b3:	e8 98 f8 ff ff       	call   1050 <pow@plt>
    17b8:	c5 fb 59 05 50 18 00 	vmulsd 0x1850(%rip),%xmm0,%xmm0        # 3010 <_IO_stdin_used+0x10>
    17bf:	00 
    17c0:	c5 fb 58 05 50 18 00 	vaddsd 0x1850(%rip),%xmm0,%xmm0        # 3018 <_IO_stdin_used+0x18>
    17c7:	00 
    17c8:	c4 e1 fb 2c c0       	vcvttsd2si %xmm0,%rax
    17cd:	c5 fb 5c 05 4b 18 00 	vsubsd 0x184b(%rip),%xmm0,%xmm0        # 3020 <_IO_stdin_used+0x20>
    17d4:	00 
    17d5:	48 89 c1             	mov    %rax,%rcx
    17d8:	48 c1 f9 3f          	sar    $0x3f,%rcx
    17dc:	c4 61 fb 2c f0       	vcvttsd2si %xmm0,%r14
    17e1:	49 21 ce             	and    %rcx,%r14
    17e4:	48 8b 8c 24 a0 00 00 	mov    0xa0(%rsp),%rcx
    17eb:	00 
    17ec:	49 09 c6             	or     %rax,%r14
    17ef:	4d 01 fe             	add    %r15,%r14
    17f2:	49 01 de             	add    %rbx,%r14
    17f5:	42 8d 44 29 04       	lea    0x4(%rcx,%r13,1),%eax
    17fa:	c4 e1 eb 2a c8       	vcvtsi2sd %rax,%xmm2,%xmm1
    17ff:	c5 fb 10 05 01 18 00 	vmovsd 0x1801(%rip),%xmm0        # 3008 <_IO_stdin_used+0x8>
    1806:	00 
    1807:	e8 44 f8 ff ff       	call   1050 <pow@plt>
    180c:	c5 fb 59 05 fc 17 00 	vmulsd 0x17fc(%rip),%xmm0,%xmm0        # 3010 <_IO_stdin_used+0x10>
    1813:	00 
    1814:	c5 fb 58 05 fc 17 00 	vaddsd 0x17fc(%rip),%xmm0,%xmm0        # 3018 <_IO_stdin_used+0x18>
    181b:	00 
    181c:	c4 e1 fb 2c c0       	vcvttsd2si %xmm0,%rax
    1821:	c5 fb 5c 05 f7 17 00 	vsubsd 0x17f7(%rip),%xmm0,%xmm0        # 3020 <_IO_stdin_used+0x20>
    1828:	00 
    1829:	48 89 c1             	mov    %rax,%rcx
    182c:	48 c1 f9 3f          	sar    $0x3f,%rcx
    1830:	c4 e1 fb 2c d8       	vcvttsd2si %xmm0,%rbx
    1835:	48 21 cb             	and    %rcx,%rbx
    1838:	48 8b 8c 24 a8 00 00 	mov    0xa8(%rsp),%rcx
    183f:	00 
    1840:	48 09 c3             	or     %rax,%rbx
    1843:	42 8d 44 29 05       	lea    0x5(%rcx,%r13,1),%eax
    1848:	c4 e1 eb 2a c8       	vcvtsi2sd %rax,%xmm2,%xmm1
    184d:	c5 fb 10 05 b3 17 00 	vmovsd 0x17b3(%rip),%xmm0        # 3008 <_IO_stdin_used+0x8>
    1854:	00 
    1855:	e8 f6 f7 ff ff       	call   1050 <pow@plt>
    185a:	c5 fb 59 05 ae 17 00 	vmulsd 0x17ae(%rip),%xmm0,%xmm0        # 3010 <_IO_stdin_used+0x10>
    1861:	00 
    1862:	c5 fb 58 05 ae 17 00 	vaddsd 0x17ae(%rip),%xmm0,%xmm0        # 3018 <_IO_stdin_used+0x18>
    1869:	00 
    186a:	c4 e1 fb 2c c0       	vcvttsd2si %xmm0,%rax
    186f:	c5 fb 5c 05 a9 17 00 	vsubsd 0x17a9(%rip),%xmm0,%xmm0        # 3020 <_IO_stdin_used+0x20>
    1876:	00 
    1877:	48 89 c1             	mov    %rax,%rcx
    187a:	48 c1 f9 3f          	sar    $0x3f,%rcx
    187e:	c4 61 fb 2c f8       	vcvttsd2si %xmm0,%r15
    1883:	49 21 cf             	and    %rcx,%r15
    1886:	48 8b 8c 24 b0 00 00 	mov    0xb0(%rsp),%rcx
    188d:	00 
    188e:	49 09 c7             	or     %rax,%r15
    1891:	49 01 df             	add    %rbx,%r15
    1894:	42 8d 44 29 06       	lea    0x6(%rcx,%r13,1),%eax
    1899:	c4 e1 eb 2a c8       	vcvtsi2sd %rax,%xmm2,%xmm1
    189e:	c5 fb 10 05 62 17 00 	vmovsd 0x1762(%rip),%xmm0        # 3008 <_IO_stdin_used+0x8>
    18a5:	00 
    18a6:	e8 a5 f7 ff ff       	call   1050 <pow@plt>
    18ab:	c5 fb 59 05 5d 17 00 	vmulsd 0x175d(%rip),%xmm0,%xmm0        # 3010 <_IO_stdin_used+0x10>
    18b2:	00 
    18b3:	c5 fb 58 05 5d 17 00 	vaddsd 0x175d(%rip),%xmm0,%xmm0        # 3018 <_IO_stdin_used+0x18>
    18ba:	00 
    18bb:	c4 e1 fb 2c c0       	vcvttsd2si %xmm0,%rax
    18c0:	c5 fb 5c 05 58 17 00 	vsubsd 0x1758(%rip),%xmm0,%xmm0        # 3020 <_IO_stdin_used+0x20>
    18c7:	00 
    18c8:	48 89 c1             	mov    %rax,%rcx
    18cb:	48 c1 f9 3f          	sar    $0x3f,%rcx
    18cf:	c4 e1 fb 2c d8       	vcvttsd2si %xmm0,%rbx
    18d4:	48 21 cb             	and    %rcx,%rbx
    18d7:	48 8b 8c 24 b8 00 00 	mov    0xb8(%rsp),%rcx
    18de:	00 
    18df:	48 09 c3             	or     %rax,%rbx
    18e2:	4c 01 fb             	add    %r15,%rbx
    18e5:	4c 01 f3             	add    %r14,%rbx
    18e8:	42 8d 44 29 07       	lea    0x7(%rcx,%r13,1),%eax
    18ed:	c4 e1 eb 2a c8       	vcvtsi2sd %rax,%xmm2,%xmm1
    18f2:	c5 fb 10 05 0e 17 00 	vmovsd 0x170e(%rip),%xmm0        # 3008 <_IO_stdin_used+0x8>
    18f9:	00 
    18fa:	e8 51 f7 ff ff       	call   1050 <pow@plt>
    18ff:	c5 fb 59 05 09 17 00 	vmulsd 0x1709(%rip),%xmm0,%xmm0        # 3010 <_IO_stdin_used+0x10>
    1906:	00 
    1907:	c5 fb 58 05 09 17 00 	vaddsd 0x1709(%rip),%xmm0,%xmm0        # 3018 <_IO_stdin_used+0x18>
    190e:	00 
    190f:	c4 e1 fb 2c c0       	vcvttsd2si %xmm0,%rax
    1914:	c5 fb 5c 05 04 17 00 	vsubsd 0x1704(%rip),%xmm0,%xmm0        # 3020 <_IO_stdin_used+0x20>
    191b:	00 
    191c:	48 89 c1             	mov    %rax,%rcx
    191f:	48 c1 f9 3f          	sar    $0x3f,%rcx
    1923:	c4 61 fb 2c f0       	vcvttsd2si %xmm0,%r14
    1928:	49 21 ce             	and    %rcx,%r14
    192b:	48 8b 8c 24 c0 00 00 	mov    0xc0(%rsp),%rcx
    1932:	00 
    1933:	49 09 c6             	or     %rax,%r14
    1936:	42 8d 44 29 08       	lea    0x8(%rcx,%r13,1),%eax
    193b:	c4 e1 eb 2a c8       	vcvtsi2sd %rax,%xmm2,%xmm1
    1940:	c5 fb 10 05 c0 16 00 	vmovsd 0x16c0(%rip),%xmm0        # 3008 <_IO_stdin_used+0x8>
    1947:	00 
    1948:	e8 03 f7 ff ff       	call   1050 <pow@plt>
    194d:	c5 fb 59 05 bb 16 00 	vmulsd 0x16bb(%rip),%xmm0,%xmm0        # 3010 <_IO_stdin_used+0x10>
    1954:	00 
    1955:	c5 fb 58 05 bb 16 00 	vaddsd 0x16bb(%rip),%xmm0,%xmm0        # 3018 <_IO_stdin_used+0x18>
    195c:	00 
    195d:	c4 e1 fb 2c c0       	vcvttsd2si %xmm0,%rax
    1962:	c5 fb 5c 05 b6 16 00 	vsubsd 0x16b6(%rip),%xmm0,%xmm0        # 3020 <_IO_stdin_used+0x20>
    1969:	00 
    196a:	48 89 c1             	mov    %rax,%rcx
    196d:	48 c1 f9 3f          	sar    $0x3f,%rcx
    1971:	c4 61 fb 2c f8       	vcvttsd2si %xmm0,%r15
    1976:	49 21 cf             	and    %rcx,%r15
    1979:	48 8b 8c 24 c8 00 00 	mov    0xc8(%rsp),%rcx
    1980:	00 
    1981:	49 09 c7             	or     %rax,%r15
    1984:	4d 01 f7             	add    %r14,%r15
    1987:	42 8d 44 29 09       	lea    0x9(%rcx,%r13,1),%eax
    198c:	c4 e1 eb 2a c8       	vcvtsi2sd %rax,%xmm2,%xmm1
    1991:	c5 fb 10 05 6f 16 00 	vmovsd 0x166f(%rip),%xmm0        # 3008 <_IO_stdin_used+0x8>
    1998:	00 
    1999:	e8 b2 f6 ff ff       	call   1050 <pow@plt>
    199e:	c5 fb 59 05 6a 16 00 	vmulsd 0x166a(%rip),%xmm0,%xmm0        # 3010 <_IO_stdin_used+0x10>
    19a5:	00 
    19a6:	c5 fb 58 05 6a 16 00 	vaddsd 0x166a(%rip),%xmm0,%xmm0        # 3018 <_IO_stdin_used+0x18>
    19ad:	00 
    19ae:	c4 e1 fb 2c c0       	vcvttsd2si %xmm0,%rax
    19b3:	c5 fb 5c 05 65 16 00 	vsubsd 0x1665(%rip),%xmm0,%xmm0        # 3020 <_IO_stdin_used+0x20>
    19ba:	00 
    19bb:	48 89 c1             	mov    %rax,%rcx
    19be:	48 c1 f9 3f          	sar    $0x3f,%rcx
    19c2:	c4 61 fb 2c e0       	vcvttsd2si %xmm0,%r12
    19c7:	49 21 cc             	and    %rcx,%r12
    19ca:	48 8b 8c 24 d0 00 00 	mov    0xd0(%rsp),%rcx
    19d1:	00 
    19d2:	49 09 c4             	or     %rax,%r12
    19d5:	4d 01 fc             	add    %r15,%r12
    19d8:	42 8d 44 29 0a       	lea    0xa(%rcx,%r13,1),%eax
    19dd:	c4 e1 eb 2a c8       	vcvtsi2sd %rax,%xmm2,%xmm1
    19e2:	c5 fb 10 05 1e 16 00 	vmovsd 0x161e(%rip),%xmm0        # 3008 <_IO_stdin_used+0x8>
    19e9:	00 
    19ea:	e8 61 f6 ff ff       	call   1050 <pow@plt>
    19ef:	c5 fb 59 05 19 16 00 	vmulsd 0x1619(%rip),%xmm0,%xmm0        # 3010 <_IO_stdin_used+0x10>
    19f6:	00 
    19f7:	c5 fb 58 05 19 16 00 	vaddsd 0x1619(%rip),%xmm0,%xmm0        # 3018 <_IO_stdin_used+0x18>
    19fe:	00 
    19ff:	c4 e1 fb 2c c0       	vcvttsd2si %xmm0,%rax
    1a04:	c5 fb 5c 05 14 16 00 	vsubsd 0x1614(%rip),%xmm0,%xmm0        # 3020 <_IO_stdin_used+0x20>
    1a0b:	00 
    1a0c:	48 89 c1             	mov    %rax,%rcx
    1a0f:	48 c1 f9 3f          	sar    $0x3f,%rcx
    1a13:	c4 61 fb 2c f0       	vcvttsd2si %xmm0,%r14
    1a18:	49 21 ce             	and    %rcx,%r14
    1a1b:	48 8b 8c 24 d8 00 00 	mov    0xd8(%rsp),%rcx
    1a22:	00 
    1a23:	49 09 c6             	or     %rax,%r14
    1a26:	4d 01 e6             	add    %r12,%r14
    1a29:	49 01 de             	add    %rbx,%r14
    1a2c:	42 8d 44 29 0b       	lea    0xb(%rcx,%r13,1),%eax
    1a31:	c4 e1 eb 2a c8       	vcvtsi2sd %rax,%xmm2,%xmm1
    1a36:	c5 fb 10 05 ca 15 00 	vmovsd 0x15ca(%rip),%xmm0        # 3008 <_IO_stdin_used+0x8>
    1a3d:	00 
    1a3e:	e8 0d f6 ff ff       	call   1050 <pow@plt>
    1a43:	c5 fb 59 05 c5 15 00 	vmulsd 0x15c5(%rip),%xmm0,%xmm0        # 3010 <_IO_stdin_used+0x10>
    1a4a:	00 
    1a4b:	c5 fb 58 05 c5 15 00 	vaddsd 0x15c5(%rip),%xmm0,%xmm0        # 3018 <_IO_stdin_used+0x18>
    1a52:	00 
    1a53:	c4 e1 fb 2c c0       	vcvttsd2si %xmm0,%rax
    1a58:	c5 fb 5c 05 c0 15 00 	vsubsd 0x15c0(%rip),%xmm0,%xmm0        # 3020 <_IO_stdin_used+0x20>
    1a5f:	00 
    1a60:	48 89 c1             	mov    %rax,%rcx
    1a63:	48 c1 f9 3f          	sar    $0x3f,%rcx
    1a67:	c4 e1 fb 2c d8       	vcvttsd2si %xmm0,%rbx
    1a6c:	48 21 cb             	and    %rcx,%rbx
    1a6f:	48 8b 8c 24 e0 00 00 	mov    0xe0(%rsp),%rcx
    1a76:	00 
    1a77:	48 09 c3             	or     %rax,%rbx
    1a7a:	42 8d 44 29 0c       	lea    0xc(%rcx,%r13,1),%eax
    1a7f:	c4 e1 eb 2a c8       	vcvtsi2sd %rax,%xmm2,%xmm1
    1a84:	c5 fb 10 05 7c 15 00 	vmovsd 0x157c(%rip),%xmm0        # 3008 <_IO_stdin_used+0x8>
    1a8b:	00 
    1a8c:	e8 bf f5 ff ff       	call   1050 <pow@plt>
    1a91:	c5 fb 59 05 77 15 00 	vmulsd 0x1577(%rip),%xmm0,%xmm0        # 3010 <_IO_stdin_used+0x10>
    1a98:	00 
    1a99:	c5 fb 58 05 77 15 00 	vaddsd 0x1577(%rip),%xmm0,%xmm0        # 3018 <_IO_stdin_used+0x18>
    1aa0:	00 
    1aa1:	c4 e1 fb 2c c0       	vcvttsd2si %xmm0,%rax
    1aa6:	c5 fb 5c 05 72 15 00 	vsubsd 0x1572(%rip),%xmm0,%xmm0        # 3020 <_IO_stdin_used+0x20>
    1aad:	00 
    1aae:	48 89 c1             	mov    %rax,%rcx
    1ab1:	48 c1 f9 3f          	sar    $0x3f,%rcx
    1ab5:	c4 61 fb 2c f8       	vcvttsd2si %xmm0,%r15
    1aba:	49 21 cf             	and    %rcx,%r15
    1abd:	48 8b 8c 24 e8 00 00 	mov    0xe8(%rsp),%rcx
    1ac4:	00 
    1ac5:	49 09 c7             	or     %rax,%r15
    1ac8:	49 01 df             	add    %rbx,%r15
    1acb:	42 8d 44 29 0d       	lea    0xd(%rcx,%r13,1),%eax
    1ad0:	c4 e1 eb 2a c8       	vcvtsi2sd %rax,%xmm2,%xmm1
    1ad5:	c5 fb 10 05 2b 15 00 	vmovsd 0x152b(%rip),%xmm0        # 3008 <_IO_stdin_used+0x8>
    1adc:	00 
    1add:	e8 6e f5 ff ff       	call   1050 <pow@plt>
    1ae2:	c5 fb 59 05 26 15 00 	vmulsd 0x1526(%rip),%xmm0,%xmm0        # 3010 <_IO_stdin_used+0x10>
    1ae9:	00 
    1aea:	c5 fb 58 05 26 15 00 	vaddsd 0x1526(%rip),%xmm0,%xmm0        # 3018 <_IO_stdin_used+0x18>
    1af1:	00 
    1af2:	c4 e1 fb 2c c0       	vcvttsd2si %xmm0,%rax
    1af7:	c5 fb 5c 05 21 15 00 	vsubsd 0x1521(%rip),%xmm0,%xmm0        # 3020 <_IO_stdin_used+0x20>
    1afe:	00 
    1aff:	48 89 c1             	mov    %rax,%rcx
    1b02:	48 c1 f9 3f          	sar    $0x3f,%rcx
    1b06:	c4 e1 fb 2c d8       	vcvttsd2si %xmm0,%rbx
    1b0b:	48 21 cb             	and    %rcx,%rbx
    1b0e:	48 8b 8c 24 f0 00 00 	mov    0xf0(%rsp),%rcx
    1b15:	00 
    1b16:	48 09 c3             	or     %rax,%rbx
    1b19:	4c 01 fb             	add    %r15,%rbx
    1b1c:	42 8d 44 29 0e       	lea    0xe(%rcx,%r13,1),%eax
    1b21:	c4 e1 eb 2a c8       	vcvtsi2sd %rax,%xmm2,%xmm1
    1b26:	c5 fb 10 05 da 14 00 	vmovsd 0x14da(%rip),%xmm0        # 3008 <_IO_stdin_used+0x8>
    1b2d:	00 
    1b2e:	e8 1d f5 ff ff       	call   1050 <pow@plt>
    1b33:	c5 fb 59 05 d5 14 00 	vmulsd 0x14d5(%rip),%xmm0,%xmm0        # 3010 <_IO_stdin_used+0x10>
    1b3a:	00 
    1b3b:	c5 fb 58 05 d5 14 00 	vaddsd 0x14d5(%rip),%xmm0,%xmm0        # 3018 <_IO_stdin_used+0x18>
    1b42:	00 
    1b43:	c4 e1 fb 2c c0       	vcvttsd2si %xmm0,%rax
    1b48:	c5 fb 5c 05 d0 14 00 	vsubsd 0x14d0(%rip),%xmm0,%xmm0        # 3020 <_IO_stdin_used+0x20>
    1b4f:	00 
    1b50:	48 89 c1             	mov    %rax,%rcx
    1b53:	48 c1 f9 3f          	sar    $0x3f,%rcx
    1b57:	c4 61 fb 2c f8       	vcvttsd2si %xmm0,%r15
    1b5c:	49 21 cf             	and    %rcx,%r15
    1b5f:	48 8b 8c 24 f8 00 00 	mov    0xf8(%rsp),%rcx
    1b66:	00 
    1b67:	49 09 c7             	or     %rax,%r15
    1b6a:	49 01 df             	add    %rbx,%r15
    1b6d:	42 8d 44 29 0f       	lea    0xf(%rcx,%r13,1),%eax
    1b72:	c4 e1 eb 2a c8       	vcvtsi2sd %rax,%xmm2,%xmm1
    1b77:	c5 fb 10 05 89 14 00 	vmovsd 0x1489(%rip),%xmm0        # 3008 <_IO_stdin_used+0x8>
    1b7e:	00 
    1b7f:	e8 cc f4 ff ff       	call   1050 <pow@plt>
    1b84:	c5 fb 59 05 84 14 00 	vmulsd 0x1484(%rip),%xmm0,%xmm0        # 3010 <_IO_stdin_used+0x10>
    1b8b:	00 
    1b8c:	c5 fb 58 05 84 14 00 	vaddsd 0x1484(%rip),%xmm0,%xmm0        # 3018 <_IO_stdin_used+0x18>
    1b93:	00 
    1b94:	c4 e1 fb 2c c0       	vcvttsd2si %xmm0,%rax
    1b99:	c5 fb 5c 05 7f 14 00 	vsubsd 0x147f(%rip),%xmm0,%xmm0        # 3020 <_IO_stdin_used+0x20>
    1ba0:	00 
    1ba1:	48 89 c1             	mov    %rax,%rcx
    1ba4:	48 c1 f9 3f          	sar    $0x3f,%rcx
    1ba8:	c4 e1 fb 2c d8       	vcvttsd2si %xmm0,%rbx
    1bad:	48 21 cb             	and    %rcx,%rbx
    1bb0:	48 8b 8c 24 00 01 00 	mov    0x100(%rsp),%rcx
    1bb7:	00 
    1bb8:	48 09 c3             	or     %rax,%rbx
    1bbb:	4c 01 fb             	add    %r15,%rbx
    1bbe:	4c 01 f3             	add    %r14,%rbx
    1bc1:	42 8d 44 29 10       	lea    0x10(%rcx,%r13,1),%eax
    1bc6:	c4 e1 eb 2a c8       	vcvtsi2sd %rax,%xmm2,%xmm1
    1bcb:	c5 fb 10 05 35 14 00 	vmovsd 0x1435(%rip),%xmm0        # 3008 <_IO_stdin_used+0x8>
    1bd2:	00 
    1bd3:	e8 78 f4 ff ff       	call   1050 <pow@plt>
    1bd8:	c5 fb 59 05 30 14 00 	vmulsd 0x1430(%rip),%xmm0,%xmm0        # 3010 <_IO_stdin_used+0x10>
    1bdf:	00 
    1be0:	c5 fb 58 05 30 14 00 	vaddsd 0x1430(%rip),%xmm0,%xmm0        # 3018 <_IO_stdin_used+0x18>
    1be7:	00 
    1be8:	c4 e1 fb 2c c0       	vcvttsd2si %xmm0,%rax
    1bed:	c5 fb 5c 05 2b 14 00 	vsubsd 0x142b(%rip),%xmm0,%xmm0        # 3020 <_IO_stdin_used+0x20>
    1bf4:	00 
    1bf5:	48 89 c1             	mov    %rax,%rcx
    1bf8:	48 c1 f9 3f          	sar    $0x3f,%rcx
    1bfc:	c4 61 fb 2c f0       	vcvttsd2si %xmm0,%r14
    1c01:	49 21 ce             	and    %rcx,%r14
    1c04:	48 8b 8c 24 08 01 00 	mov    0x108(%rsp),%rcx
    1c0b:	00 
    1c0c:	49 09 c6             	or     %rax,%r14
    1c0f:	42 8d 44 29 11       	lea    0x11(%rcx,%r13,1),%eax
    1c14:	c4 e1 eb 2a c8       	vcvtsi2sd %rax,%xmm2,%xmm1
    1c19:	c5 fb 10 05 e7 13 00 	vmovsd 0x13e7(%rip),%xmm0        # 3008 <_IO_stdin_used+0x8>
    1c20:	00 
    1c21:	e8 2a f4 ff ff       	call   1050 <pow@plt>
    1c26:	c5 fb 59 05 e2 13 00 	vmulsd 0x13e2(%rip),%xmm0,%xmm0        # 3010 <_IO_stdin_used+0x10>
    1c2d:	00 
    1c2e:	c5 fb 58 05 e2 13 00 	vaddsd 0x13e2(%rip),%xmm0,%xmm0        # 3018 <_IO_stdin_used+0x18>
    1c35:	00 
    1c36:	c4 e1 fb 2c c0       	vcvttsd2si %xmm0,%rax
    1c3b:	c5 fb 5c 05 dd 13 00 	vsubsd 0x13dd(%rip),%xmm0,%xmm0        # 3020 <_IO_stdin_used+0x20>
    1c42:	00 
    1c43:	48 89 c1             	mov    %rax,%rcx
    1c46:	48 c1 f9 3f          	sar    $0x3f,%rcx
    1c4a:	c4 61 fb 2c f8       	vcvttsd2si %xmm0,%r15
    1c4f:	49 21 cf             	and    %rcx,%r15
    1c52:	48 8b 8c 24 10 01 00 	mov    0x110(%rsp),%rcx
    1c59:	00 
    1c5a:	49 09 c7             	or     %rax,%r15
    1c5d:	4d 01 f7             	add    %r14,%r15
    1c60:	42 8d 44 29 12       	lea    0x12(%rcx,%r13,1),%eax
    1c65:	c4 e1 eb 2a c8       	vcvtsi2sd %rax,%xmm2,%xmm1
    1c6a:	c5 fb 10 05 96 13 00 	vmovsd 0x1396(%rip),%xmm0        # 3008 <_IO_stdin_used+0x8>
    1c71:	00 
    1c72:	e8 d9 f3 ff ff       	call   1050 <pow@plt>
    1c77:	c5 fb 59 05 91 13 00 	vmulsd 0x1391(%rip),%xmm0,%xmm0        # 3010 <_IO_stdin_used+0x10>
    1c7e:	00 
    1c7f:	c5 fb 58 05 91 13 00 	vaddsd 0x1391(%rip),%xmm0,%xmm0        # 3018 <_IO_stdin_used+0x18>
    1c86:	00 
    1c87:	c4 e1 fb 2c c0       	vcvttsd2si %xmm0,%rax
    1c8c:	c5 fb 5c 05 8c 13 00 	vsubsd 0x138c(%rip),%xmm0,%xmm0        # 3020 <_IO_stdin_used+0x20>
    1c93:	00 
    1c94:	48 89 c1             	mov    %rax,%rcx
    1c97:	48 c1 f9 3f          	sar    $0x3f,%rcx
    1c9b:	c4 61 fb 2c f0       	vcvttsd2si %xmm0,%r14
    1ca0:	49 21 ce             	and    %rcx,%r14
    1ca3:	48 8b 8c 24 18 01 00 	mov    0x118(%rsp),%rcx
    1caa:	00 
    1cab:	49 09 c6             	or     %rax,%r14
    1cae:	4d 01 fe             	add    %r15,%r14
    1cb1:	42 8d 44 29 13       	lea    0x13(%rcx,%r13,1),%eax
    1cb6:	c4 e1 eb 2a c8       	vcvtsi2sd %rax,%xmm2,%xmm1
    1cbb:	c5 fb 10 05 45 13 00 	vmovsd 0x1345(%rip),%xmm0        # 3008 <_IO_stdin_used+0x8>
    1cc2:	00 
    1cc3:	e8 88 f3 ff ff       	call   1050 <pow@plt>
    1cc8:	c5 fb 59 05 40 13 00 	vmulsd 0x1340(%rip),%xmm0,%xmm0        # 3010 <_IO_stdin_used+0x10>
    1ccf:	00 
    1cd0:	c5 fb 58 05 40 13 00 	vaddsd 0x1340(%rip),%xmm0,%xmm0        # 3018 <_IO_stdin_used+0x18>
    1cd7:	00 
    1cd8:	c4 e1 fb 2c c0       	vcvttsd2si %xmm0,%rax
    1cdd:	c5 fb 5c 05 3b 13 00 	vsubsd 0x133b(%rip),%xmm0,%xmm0        # 3020 <_IO_stdin_used+0x20>
    1ce4:	00 
    1ce5:	48 89 c1             	mov    %rax,%rcx
    1ce8:	48 c1 f9 3f          	sar    $0x3f,%rcx
    1cec:	c4 61 fb 2c f8       	vcvttsd2si %xmm0,%r15
    1cf1:	49 21 cf             	and    %rcx,%r15
    1cf4:	48 8b 8c 24 20 01 00 	mov    0x120(%rsp),%rcx
    1cfb:	00 
    1cfc:	49 09 c7             	or     %rax,%r15
    1cff:	4d 01 f7             	add    %r14,%r15
    1d02:	42 8d 44 29 14       	lea    0x14(%rcx,%r13,1),%eax
    1d07:	c4 e1 eb 2a c8       	vcvtsi2sd %rax,%xmm2,%xmm1
    1d0c:	c5 fb 10 05 f4 12 00 	vmovsd 0x12f4(%rip),%xmm0        # 3008 <_IO_stdin_used+0x8>
    1d13:	00 
    1d14:	e8 37 f3 ff ff       	call   1050 <pow@plt>
    1d19:	c5 fb 59 05 ef 12 00 	vmulsd 0x12ef(%rip),%xmm0,%xmm0        # 3010 <_IO_stdin_used+0x10>
    1d20:	00 
    1d21:	c5 fb 58 05 ef 12 00 	vaddsd 0x12ef(%rip),%xmm0,%xmm0        # 3018 <_IO_stdin_used+0x18>
    1d28:	00 
    1d29:	c4 e1 fb 2c c0       	vcvttsd2si %xmm0,%rax
    1d2e:	c5 fb 5c 05 ea 12 00 	vsubsd 0x12ea(%rip),%xmm0,%xmm0        # 3020 <_IO_stdin_used+0x20>
    1d35:	00 
    1d36:	48 89 c1             	mov    %rax,%rcx
    1d39:	48 c1 f9 3f          	sar    $0x3f,%rcx
    1d3d:	c4 61 fb 2c e0       	vcvttsd2si %xmm0,%r12
    1d42:	49 21 cc             	and    %rcx,%r12
    1d45:	48 8b 8c 24 28 01 00 	mov    0x128(%rsp),%rcx
    1d4c:	00 
    1d4d:	49 09 c4             	or     %rax,%r12
    1d50:	4d 01 fc             	add    %r15,%r12
    1d53:	42 8d 44 29 15       	lea    0x15(%rcx,%r13,1),%eax
    1d58:	c4 e1 eb 2a c8       	vcvtsi2sd %rax,%xmm2,%xmm1
    1d5d:	c5 fb 10 05 a3 12 00 	vmovsd 0x12a3(%rip),%xmm0        # 3008 <_IO_stdin_used+0x8>
    1d64:	00 
    1d65:	e8 e6 f2 ff ff       	call   1050 <pow@plt>
    1d6a:	c5 fb 59 05 9e 12 00 	vmulsd 0x129e(%rip),%xmm0,%xmm0        # 3010 <_IO_stdin_used+0x10>
    1d71:	00 
    1d72:	c5 fb 58 05 9e 12 00 	vaddsd 0x129e(%rip),%xmm0,%xmm0        # 3018 <_IO_stdin_used+0x18>
    1d79:	00 
    1d7a:	c4 e1 fb 2c c0       	vcvttsd2si %xmm0,%rax
    1d7f:	c5 fb 5c 05 99 12 00 	vsubsd 0x1299(%rip),%xmm0,%xmm0        # 3020 <_IO_stdin_used+0x20>
    1d86:	00 
    1d87:	48 89 c1             	mov    %rax,%rcx
    1d8a:	48 c1 f9 3f          	sar    $0x3f,%rcx
    1d8e:	c4 61 fb 2c f0       	vcvttsd2si %xmm0,%r14
    1d93:	49 21 ce             	and    %rcx,%r14
    1d96:	48 8b 8c 24 30 01 00 	mov    0x130(%rsp),%rcx
    1d9d:	00 
    1d9e:	49 09 c6             	or     %rax,%r14
    1da1:	4d 01 e6             	add    %r12,%r14
    1da4:	49 01 de             	add    %rbx,%r14
    1da7:	42 8d 44 29 16       	lea    0x16(%rcx,%r13,1),%eax
    1dac:	c4 e1 eb 2a c8       	vcvtsi2sd %rax,%xmm2,%xmm1
    1db1:	c5 fb 10 05 4f 12 00 	vmovsd 0x124f(%rip),%xmm0        # 3008 <_IO_stdin_used+0x8>
    1db8:	00 
    1db9:	e8 92 f2 ff ff       	call   1050 <pow@plt>
    1dbe:	c5 fb 59 05 4a 12 00 	vmulsd 0x124a(%rip),%xmm0,%xmm0        # 3010 <_IO_stdin_used+0x10>
    1dc5:	00 
    1dc6:	c5 fb 58 05 4a 12 00 	vaddsd 0x124a(%rip),%xmm0,%xmm0        # 3018 <_IO_stdin_used+0x18>
    1dcd:	00 
    1dce:	c4 e1 fb 2c c0       	vcvttsd2si %xmm0,%rax
    1dd3:	c5 fb 5c 05 45 12 00 	vsubsd 0x1245(%rip),%xmm0,%xmm0        # 3020 <_IO_stdin_used+0x20>
    1dda:	00 
    1ddb:	48 89 c1             	mov    %rax,%rcx
    1dde:	48 c1 f9 3f          	sar    $0x3f,%rcx
    1de2:	c4 e1 fb 2c d8       	vcvttsd2si %xmm0,%rbx
    1de7:	48 21 cb             	and    %rcx,%rbx
    1dea:	48 8b 8c 24 38 01 00 	mov    0x138(%rsp),%rcx
    1df1:	00 
    1df2:	48 09 c3             	or     %rax,%rbx
    1df5:	42 8d 44 29 17       	lea    0x17(%rcx,%r13,1),%eax
    1dfa:	c4 e1 eb 2a c8       	vcvtsi2sd %rax,%xmm2,%xmm1
    1dff:	c5 fb 10 05 01 12 00 	vmovsd 0x1201(%rip),%xmm0        # 3008 <_IO_stdin_used+0x8>
    1e06:	00 
    1e07:	e8 44 f2 ff ff       	call   1050 <pow@plt>
    1e0c:	c5 fb 59 05 fc 11 00 	vmulsd 0x11fc(%rip),%xmm0,%xmm0        # 3010 <_IO_stdin_used+0x10>
    1e13:	00 
    1e14:	c5 fb 58 05 fc 11 00 	vaddsd 0x11fc(%rip),%xmm0,%xmm0        # 3018 <_IO_stdin_used+0x18>
    1e1b:	00 
    1e1c:	c4 e1 fb 2c c0       	vcvttsd2si %xmm0,%rax
    1e21:	c5 fb 5c 05 f7 11 00 	vsubsd 0x11f7(%rip),%xmm0,%xmm0        # 3020 <_IO_stdin_used+0x20>
    1e28:	00 
    1e29:	48 89 c1             	mov    %rax,%rcx
    1e2c:	48 c1 f9 3f          	sar    $0x3f,%rcx
    1e30:	c4 61 fb 2c f8       	vcvttsd2si %xmm0,%r15
    1e35:	49 21 cf             	and    %rcx,%r15
    1e38:	48 8b 8c 24 40 01 00 	mov    0x140(%rsp),%rcx
    1e3f:	00 
    1e40:	49 09 c7             	or     %rax,%r15
    1e43:	49 01 df             	add    %rbx,%r15
    1e46:	42 8d 44 29 18       	lea    0x18(%rcx,%r13,1),%eax
    1e4b:	c4 e1 eb 2a c8       	vcvtsi2sd %rax,%xmm2,%xmm1
    1e50:	c5 fb 10 05 b0 11 00 	vmovsd 0x11b0(%rip),%xmm0        # 3008 <_IO_stdin_used+0x8>
    1e57:	00 
    1e58:	e8 f3 f1 ff ff       	call   1050 <pow@plt>
    1e5d:	c5 fb 59 05 ab 11 00 	vmulsd 0x11ab(%rip),%xmm0,%xmm0        # 3010 <_IO_stdin_used+0x10>
    1e64:	00 
    1e65:	c5 fb 58 05 ab 11 00 	vaddsd 0x11ab(%rip),%xmm0,%xmm0        # 3018 <_IO_stdin_used+0x18>
    1e6c:	00 
    1e6d:	c4 e1 fb 2c c0       	vcvttsd2si %xmm0,%rax
    1e72:	c5 fb 5c 05 a6 11 00 	vsubsd 0x11a6(%rip),%xmm0,%xmm0        # 3020 <_IO_stdin_used+0x20>
    1e79:	00 
    1e7a:	48 89 c1             	mov    %rax,%rcx
    1e7d:	48 c1 f9 3f          	sar    $0x3f,%rcx
    1e81:	c4 e1 fb 2c d8       	vcvttsd2si %xmm0,%rbx
    1e86:	48 21 cb             	and    %rcx,%rbx
    1e89:	48 8b 8c 24 48 01 00 	mov    0x148(%rsp),%rcx
    1e90:	00 
    1e91:	48 09 c3             	or     %rax,%rbx
    1e94:	4c 01 fb             	add    %r15,%rbx
    1e97:	42 8d 44 29 19       	lea    0x19(%rcx,%r13,1),%eax
    1e9c:	c4 e1 eb 2a c8       	vcvtsi2sd %rax,%xmm2,%xmm1
    1ea1:	c5 fb 10 05 5f 11 00 	vmovsd 0x115f(%rip),%xmm0        # 3008 <_IO_stdin_used+0x8>
    1ea8:	00 
    1ea9:	e8 a2 f1 ff ff       	call   1050 <pow@plt>
    1eae:	c5 fb 59 05 5a 11 00 	vmulsd 0x115a(%rip),%xmm0,%xmm0        # 3010 <_IO_stdin_used+0x10>
    1eb5:	00 
    1eb6:	c5 fb 58 05 5a 11 00 	vaddsd 0x115a(%rip),%xmm0,%xmm0        # 3018 <_IO_stdin_used+0x18>
    1ebd:	00 
    1ebe:	c4 e1 fb 2c c0       	vcvttsd2si %xmm0,%rax
    1ec3:	c5 fb 5c 05 55 11 00 	vsubsd 0x1155(%rip),%xmm0,%xmm0        # 3020 <_IO_stdin_used+0x20>
    1eca:	00 
    1ecb:	48 89 c1             	mov    %rax,%rcx
    1ece:	48 c1 f9 3f          	sar    $0x3f,%rcx
    1ed2:	c4 61 fb 2c f8       	vcvttsd2si %xmm0,%r15
    1ed7:	49 21 cf             	and    %rcx,%r15
    1eda:	48 8b 8c 24 50 01 00 	mov    0x150(%rsp),%rcx
    1ee1:	00 
    1ee2:	49 09 c7             	or     %rax,%r15
    1ee5:	49 01 df             	add    %rbx,%r15
    1ee8:	42 8d 44 29 1a       	lea    0x1a(%rcx,%r13,1),%eax
    1eed:	c4 e1 eb 2a c8       	vcvtsi2sd %rax,%xmm2,%xmm1
    1ef2:	c5 fb 10 05 0e 11 00 	vmovsd 0x110e(%rip),%xmm0        # 3008 <_IO_stdin_used+0x8>
    1ef9:	00 
    1efa:	e8 51 f1 ff ff       	call   1050 <pow@plt>
    1eff:	c5 fb 59 05 09 11 00 	vmulsd 0x1109(%rip),%xmm0,%xmm0        # 3010 <_IO_stdin_used+0x10>
    1f06:	00 
    1f07:	c5 fb 58 05 09 11 00 	vaddsd 0x1109(%rip),%xmm0,%xmm0        # 3018 <_IO_stdin_used+0x18>
    1f0e:	00 
    1f0f:	c4 e1 fb 2c c0       	vcvttsd2si %xmm0,%rax
    1f14:	c5 fb 5c 05 04 11 00 	vsubsd 0x1104(%rip),%xmm0,%xmm0        # 3020 <_IO_stdin_used+0x20>
    1f1b:	00 
    1f1c:	48 89 c1             	mov    %rax,%rcx
    1f1f:	48 c1 f9 3f          	sar    $0x3f,%rcx
    1f23:	c4 e1 fb 2c d8       	vcvttsd2si %xmm0,%rbx
    1f28:	48 21 cb             	and    %rcx,%rbx
    1f2b:	48 8b 8c 24 58 01 00 	mov    0x158(%rsp),%rcx
    1f32:	00 
    1f33:	48 09 c3             	or     %rax,%rbx
    1f36:	4c 01 fb             	add    %r15,%rbx
    1f39:	42 8d 44 29 1b       	lea    0x1b(%rcx,%r13,1),%eax
    1f3e:	c4 e1 eb 2a c8       	vcvtsi2sd %rax,%xmm2,%xmm1
    1f43:	c5 fb 10 05 bd 10 00 	vmovsd 0x10bd(%rip),%xmm0        # 3008 <_IO_stdin_used+0x8>
    1f4a:	00 
    1f4b:	e8 00 f1 ff ff       	call   1050 <pow@plt>
    1f50:	c5 fb 59 05 b8 10 00 	vmulsd 0x10b8(%rip),%xmm0,%xmm0        # 3010 <_IO_stdin_used+0x10>
    1f57:	00 
    1f58:	c5 fb 58 05 b8 10 00 	vaddsd 0x10b8(%rip),%xmm0,%xmm0        # 3018 <_IO_stdin_used+0x18>
    1f5f:	00 
    1f60:	c4 e1 fb 2c c0       	vcvttsd2si %xmm0,%rax
    1f65:	c5 fb 5c 05 b3 10 00 	vsubsd 0x10b3(%rip),%xmm0,%xmm0        # 3020 <_IO_stdin_used+0x20>
    1f6c:	00 
    1f6d:	48 89 c1             	mov    %rax,%rcx
    1f70:	48 c1 f9 3f          	sar    $0x3f,%rcx
    1f74:	c4 61 fb 2c f8       	vcvttsd2si %xmm0,%r15
    1f79:	49 21 cf             	and    %rcx,%r15
    1f7c:	48 8b 8c 24 60 01 00 	mov    0x160(%rsp),%rcx
    1f83:	00 
    1f84:	49 09 c7             	or     %rax,%r15
    1f87:	49 01 df             	add    %rbx,%r15
    1f8a:	42 8d 44 29 1c       	lea    0x1c(%rcx,%r13,1),%eax
    1f8f:	c4 e1 eb 2a c8       	vcvtsi2sd %rax,%xmm2,%xmm1
    1f94:	c5 fb 10 05 6c 10 00 	vmovsd 0x106c(%rip),%xmm0        # 3008 <_IO_stdin_used+0x8>
    1f9b:	00 
    1f9c:	e8 af f0 ff ff       	call   1050 <pow@plt>
    1fa1:	c5 fb 59 05 67 10 00 	vmulsd 0x1067(%rip),%xmm0,%xmm0        # 3010 <_IO_stdin_used+0x10>
    1fa8:	00 
    1fa9:	c5 fb 58 05 67 10 00 	vaddsd 0x1067(%rip),%xmm0,%xmm0        # 3018 <_IO_stdin_used+0x18>
    1fb0:	00 
    1fb1:	c4 e1 fb 2c c0       	vcvttsd2si %xmm0,%rax
    1fb6:	c5 fb 5c 05 62 10 00 	vsubsd 0x1062(%rip),%xmm0,%xmm0        # 3020 <_IO_stdin_used+0x20>
    1fbd:	00 
    1fbe:	48 89 c1             	mov    %rax,%rcx
    1fc1:	48 c1 f9 3f          	sar    $0x3f,%rcx
    1fc5:	c4 e1 fb 2c d8       	vcvttsd2si %xmm0,%rbx
    1fca:	48 21 cb             	and    %rcx,%rbx
    1fcd:	48 8b 8c 24 68 01 00 	mov    0x168(%rsp),%rcx
    1fd4:	00 
    1fd5:	48 09 c3             	or     %rax,%rbx
    1fd8:	4c 01 fb             	add    %r15,%rbx
    1fdb:	4c 01 f3             	add    %r14,%rbx
    1fde:	42 8d 44 29 1d       	lea    0x1d(%rcx,%r13,1),%eax
    1fe3:	c4 e1 eb 2a c8       	vcvtsi2sd %rax,%xmm2,%xmm1
    1fe8:	c5 fb 10 05 18 10 00 	vmovsd 0x1018(%rip),%xmm0        # 3008 <_IO_stdin_used+0x8>
    1fef:	00 
    1ff0:	e8 5b f0 ff ff       	call   1050 <pow@plt>
    1ff5:	c5 fb 59 05 13 10 00 	vmulsd 0x1013(%rip),%xmm0,%xmm0        # 3010 <_IO_stdin_used+0x10>
    1ffc:	00 
    1ffd:	c5 fb 58 05 13 10 00 	vaddsd 0x1013(%rip),%xmm0,%xmm0        # 3018 <_IO_stdin_used+0x18>
    2004:	00 
    2005:	c4 e1 fb 2c c0       	vcvttsd2si %xmm0,%rax
    200a:	c5 fb 5c 05 0e 10 00 	vsubsd 0x100e(%rip),%xmm0,%xmm0        # 3020 <_IO_stdin_used+0x20>
    2011:	00 
    2012:	48 89 c1             	mov    %rax,%rcx
    2015:	48 c1 f9 3f          	sar    $0x3f,%rcx
    2019:	c4 61 fb 2c f0       	vcvttsd2si %xmm0,%r14
    201e:	49 21 ce             	and    %rcx,%r14
    2021:	48 8b 8c 24 70 01 00 	mov    0x170(%rsp),%rcx
    2028:	00 
    2029:	49 09 c6             	or     %rax,%r14
    202c:	42 8d 44 29 1e       	lea    0x1e(%rcx,%r13,1),%eax
    2031:	c4 e1 eb 2a c8       	vcvtsi2sd %rax,%xmm2,%xmm1
    2036:	c5 fb 10 05 ca 0f 00 	vmovsd 0xfca(%rip),%xmm0        # 3008 <_IO_stdin_used+0x8>
    203d:	00 
    203e:	e8 0d f0 ff ff       	call   1050 <pow@plt>
    2043:	c5 fb 59 05 c5 0f 00 	vmulsd 0xfc5(%rip),%xmm0,%xmm0        # 3010 <_IO_stdin_used+0x10>
    204a:	00 
    204b:	c5 fb 58 05 c5 0f 00 	vaddsd 0xfc5(%rip),%xmm0,%xmm0        # 3018 <_IO_stdin_used+0x18>
    2052:	00 
    2053:	c4 e1 fb 2c c0       	vcvttsd2si %xmm0,%rax
    2058:	c5 fb 5c 05 c0 0f 00 	vsubsd 0xfc0(%rip),%xmm0,%xmm0        # 3020 <_IO_stdin_used+0x20>
    205f:	00 
    2060:	48 89 c1             	mov    %rax,%rcx
    2063:	48 c1 f9 3f          	sar    $0x3f,%rcx
    2067:	c4 61 fb 2c f8       	vcvttsd2si %xmm0,%r15
    206c:	49 21 cf             	and    %rcx,%r15
    206f:	48 8b 8c 24 78 01 00 	mov    0x178(%rsp),%rcx
    2076:	00 
    2077:	49 09 c7             	or     %rax,%r15
    207a:	4d 01 f7             	add    %r14,%r15
    207d:	42 8d 44 29 1f       	lea    0x1f(%rcx,%r13,1),%eax
    2082:	c4 e1 eb 2a c8       	vcvtsi2sd %rax,%xmm2,%xmm1
    2087:	c5 fb 10 05 79 0f 00 	vmovsd 0xf79(%rip),%xmm0        # 3008 <_IO_stdin_used+0x8>
    208e:	00 
    208f:	e8 bc ef ff ff       	call   1050 <pow@plt>
    2094:	c5 fb 59 05 74 0f 00 	vmulsd 0xf74(%rip),%xmm0,%xmm0        # 3010 <_IO_stdin_used+0x10>
    209b:	00 
    209c:	c5 fb 58 05 74 0f 00 	vaddsd 0xf74(%rip),%xmm0,%xmm0        # 3018 <_IO_stdin_used+0x18>
    20a3:	00 
    20a4:	c4 e1 fb 2c c0       	vcvttsd2si %xmm0,%rax
    20a9:	c5 fb 5c 05 6f 0f 00 	vsubsd 0xf6f(%rip),%xmm0,%xmm0        # 3020 <_IO_stdin_used+0x20>
    20b0:	00 
    20b1:	48 89 c1             	mov    %rax,%rcx
    20b4:	48 c1 f9 3f          	sar    $0x3f,%rcx
    20b8:	c4 61 fb 2c f0       	vcvttsd2si %xmm0,%r14
    20bd:	49 21 ce             	and    %rcx,%r14
    20c0:	48 8b 8c 24 80 01 00 	mov    0x180(%rsp),%rcx
    20c7:	00 
    20c8:	49 09 c6             	or     %rax,%r14
    20cb:	4d 01 fe             	add    %r15,%r14
    20ce:	42 8d 44 29 20       	lea    0x20(%rcx,%r13,1),%eax
    20d3:	c4 e1 eb 2a c8       	vcvtsi2sd %rax,%xmm2,%xmm1
    20d8:	c5 fb 10 05 28 0f 00 	vmovsd 0xf28(%rip),%xmm0        # 3008 <_IO_stdin_used+0x8>
    20df:	00 
    20e0:	e8 6b ef ff ff       	call   1050 <pow@plt>
    20e5:	c5 fb 59 05 23 0f 00 	vmulsd 0xf23(%rip),%xmm0,%xmm0        # 3010 <_IO_stdin_used+0x10>
    20ec:	00 
    20ed:	c5 fb 58 05 23 0f 00 	vaddsd 0xf23(%rip),%xmm0,%xmm0        # 3018 <_IO_stdin_used+0x18>
    20f4:	00 
    20f5:	c4 e1 fb 2c c0       	vcvttsd2si %xmm0,%rax
    20fa:	c5 fb 5c 05 1e 0f 00 	vsubsd 0xf1e(%rip),%xmm0,%xmm0        # 3020 <_IO_stdin_used+0x20>
    2101:	00 
    2102:	48 89 c1             	mov    %rax,%rcx
    2105:	48 c1 f9 3f          	sar    $0x3f,%rcx
    2109:	c4 61 fb 2c f8       	vcvttsd2si %xmm0,%r15
    210e:	49 21 cf             	and    %rcx,%r15
    2111:	48 8b 8c 24 88 01 00 	mov    0x188(%rsp),%rcx
    2118:	00 
    2119:	49 09 c7             	or     %rax,%r15
    211c:	4d 01 f7             	add    %r14,%r15
    211f:	42 8d 44 29 21       	lea    0x21(%rcx,%r13,1),%eax
    2124:	c4 e1 eb 2a c8       	vcvtsi2sd %rax,%xmm2,%xmm1
    2129:	c5 fb 10 05 d7 0e 00 	vmovsd 0xed7(%rip),%xmm0        # 3008 <_IO_stdin_used+0x8>
    2130:	00 
    2131:	e8 1a ef ff ff       	call   1050 <pow@plt>
    2136:	c5 fb 59 05 d2 0e 00 	vmulsd 0xed2(%rip),%xmm0,%xmm0        # 3010 <_IO_stdin_used+0x10>
    213d:	00 
    213e:	c5 fb 58 05 d2 0e 00 	vaddsd 0xed2(%rip),%xmm0,%xmm0        # 3018 <_IO_stdin_used+0x18>
    2145:	00 
    2146:	c4 e1 fb 2c c0       	vcvttsd2si %xmm0,%rax
    214b:	c5 fb 5c 05 cd 0e 00 	vsubsd 0xecd(%rip),%xmm0,%xmm0        # 3020 <_IO_stdin_used+0x20>
    2152:	00 
    2153:	48 89 c1             	mov    %rax,%rcx
    2156:	48 c1 f9 3f          	sar    $0x3f,%rcx
    215a:	c4 61 fb 2c f0       	vcvttsd2si %xmm0,%r14
    215f:	49 21 ce             	and    %rcx,%r14
    2162:	48 8b 8c 24 90 01 00 	mov    0x190(%rsp),%rcx
    2169:	00 
    216a:	49 09 c6             	or     %rax,%r14
    216d:	4d 01 fe             	add    %r15,%r14
    2170:	42 8d 44 29 22       	lea    0x22(%rcx,%r13,1),%eax
    2175:	c4 e1 eb 2a c8       	vcvtsi2sd %rax,%xmm2,%xmm1
    217a:	c5 fb 10 05 86 0e 00 	vmovsd 0xe86(%rip),%xmm0        # 3008 <_IO_stdin_used+0x8>
    2181:	00 
    2182:	e8 c9 ee ff ff       	call   1050 <pow@plt>
    2187:	c5 fb 59 05 81 0e 00 	vmulsd 0xe81(%rip),%xmm0,%xmm0        # 3010 <_IO_stdin_used+0x10>
    218e:	00 
    218f:	c5 fb 58 05 81 0e 00 	vaddsd 0xe81(%rip),%xmm0,%xmm0        # 3018 <_IO_stdin_used+0x18>
    2196:	00 
    2197:	c4 e1 fb 2c c0       	vcvttsd2si %xmm0,%rax
    219c:	c5 fb 5c 05 7c 0e 00 	vsubsd 0xe7c(%rip),%xmm0,%xmm0        # 3020 <_IO_stdin_used+0x20>
    21a3:	00 
    21a4:	48 89 c1             	mov    %rax,%rcx
    21a7:	48 c1 f9 3f          	sar    $0x3f,%rcx
    21ab:	c4 61 fb 2c f8       	vcvttsd2si %xmm0,%r15
    21b0:	49 21 cf             	and    %rcx,%r15
    21b3:	48 8b 8c 24 98 01 00 	mov    0x198(%rsp),%rcx
    21ba:	00 
    21bb:	49 09 c7             	or     %rax,%r15
    21be:	4d 01 f7             	add    %r14,%r15
    21c1:	42 8d 44 29 23       	lea    0x23(%rcx,%r13,1),%eax
    21c6:	c4 e1 eb 2a c8       	vcvtsi2sd %rax,%xmm2,%xmm1
    21cb:	c5 fb 10 05 35 0e 00 	vmovsd 0xe35(%rip),%xmm0        # 3008 <_IO_stdin_used+0x8>
    21d2:	00 
    21d3:	e8 78 ee ff ff       	call   1050 <pow@plt>
    21d8:	c5 fb 59 05 30 0e 00 	vmulsd 0xe30(%rip),%xmm0,%xmm0        # 3010 <_IO_stdin_used+0x10>
    21df:	00 
    21e0:	c5 fb 58 05 30 0e 00 	vaddsd 0xe30(%rip),%xmm0,%xmm0        # 3018 <_IO_stdin_used+0x18>
    21e7:	00 
    21e8:	c4 e1 fb 2c c0       	vcvttsd2si %xmm0,%rax
    21ed:	c5 fb 5c 05 2b 0e 00 	vsubsd 0xe2b(%rip),%xmm0,%xmm0        # 3020 <_IO_stdin_used+0x20>
    21f4:	00 
    21f5:	48 89 c1             	mov    %rax,%rcx
    21f8:	48 c1 f9 3f          	sar    $0x3f,%rcx
    21fc:	c4 61 fb 2c e0       	vcvttsd2si %xmm0,%r12
    2201:	49 21 cc             	and    %rcx,%r12
    2204:	48 8b 8c 24 a0 01 00 	mov    0x1a0(%rsp),%rcx
    220b:	00 
    220c:	49 09 c4             	or     %rax,%r12
    220f:	4d 01 fc             	add    %r15,%r12
    2212:	42 8d 44 29 24       	lea    0x24(%rcx,%r13,1),%eax
    2217:	c4 e1 eb 2a c8       	vcvtsi2sd %rax,%xmm2,%xmm1
    221c:	c5 fb 10 05 e4 0d 00 	vmovsd 0xde4(%rip),%xmm0        # 3008 <_IO_stdin_used+0x8>
    2223:	00 
    2224:	e8 27 ee ff ff       	call   1050 <pow@plt>
    2229:	c5 fb 59 05 df 0d 00 	vmulsd 0xddf(%rip),%xmm0,%xmm0        # 3010 <_IO_stdin_used+0x10>
    2230:	00 
    2231:	8b 6c 24 74          	mov    0x74(%rsp),%ebp
    2235:	c5 fb 58 05 db 0d 00 	vaddsd 0xddb(%rip),%xmm0,%xmm0        # 3018 <_IO_stdin_used+0x18>
    223c:	00 
    223d:	c4 e1 fb 2c c0       	vcvttsd2si %xmm0,%rax
    2242:	c5 fb 5c 05 d6 0d 00 	vsubsd 0xdd6(%rip),%xmm0,%xmm0        # 3020 <_IO_stdin_used+0x20>
    2249:	00 
    224a:	48 89 c1             	mov    %rax,%rcx
    224d:	48 c1 f9 3f          	sar    $0x3f,%rcx
    2251:	c4 61 fb 2c f0       	vcvttsd2si %xmm0,%r14
    2256:	49 21 ce             	and    %rcx,%r14
    2259:	48 8b 8c 24 a8 01 00 	mov    0x1a8(%rsp),%rcx
    2260:	00 
    2261:	49 09 c6             	or     %rax,%r14
    2264:	4d 01 e6             	add    %r12,%r14
    2267:	49 01 de             	add    %rbx,%r14
    226a:	42 8d 44 29 25       	lea    0x25(%rcx,%r13,1),%eax
    226f:	c4 e1 eb 2a c8       	vcvtsi2sd %rax,%xmm2,%xmm1
    2274:	c5 fb 10 05 8c 0d 00 	vmovsd 0xd8c(%rip),%xmm0        # 3008 <_IO_stdin_used+0x8>
    227b:	00 
    227c:	e8 cf ed ff ff       	call   1050 <pow@plt>
    2281:	c5 fb 59 05 87 0d 00 	vmulsd 0xd87(%rip),%xmm0,%xmm0        # 3010 <_IO_stdin_used+0x10>
    2288:	00 
    2289:	c5 fb 58 05 87 0d 00 	vaddsd 0xd87(%rip),%xmm0,%xmm0        # 3018 <_IO_stdin_used+0x18>
    2290:	00 
    2291:	c4 e1 fb 2c c0       	vcvttsd2si %xmm0,%rax
    2296:	c5 fb 5c 05 82 0d 00 	vsubsd 0xd82(%rip),%xmm0,%xmm0        # 3020 <_IO_stdin_used+0x20>
    229d:	00 
    229e:	48 89 c1             	mov    %rax,%rcx
    22a1:	48 c1 f9 3f          	sar    $0x3f,%rcx
    22a5:	c4 e1 fb 2c d8       	vcvttsd2si %xmm0,%rbx
    22aa:	48 21 cb             	and    %rcx,%rbx
    22ad:	48 8b 8c 24 b0 01 00 	mov    0x1b0(%rsp),%rcx
    22b4:	00 
    22b5:	48 09 c3             	or     %rax,%rbx
    22b8:	42 8d 44 29 26       	lea    0x26(%rcx,%r13,1),%eax
    22bd:	c4 e1 eb 2a c8       	vcvtsi2sd %rax,%xmm2,%xmm1
    22c2:	c5 fb 10 05 3e 0d 00 	vmovsd 0xd3e(%rip),%xmm0        # 3008 <_IO_stdin_used+0x8>
    22c9:	00 
    22ca:	e8 81 ed ff ff       	call   1050 <pow@plt>
    22cf:	c5 fb 59 05 39 0d 00 	vmulsd 0xd39(%rip),%xmm0,%xmm0        # 3010 <_IO_stdin_used+0x10>
    22d6:	00 
    22d7:	c5 fb 58 05 39 0d 00 	vaddsd 0xd39(%rip),%xmm0,%xmm0        # 3018 <_IO_stdin_used+0x18>
    22de:	00 
    22df:	c4 e1 fb 2c c0       	vcvttsd2si %xmm0,%rax
    22e4:	c5 fb 5c 05 34 0d 00 	vsubsd 0xd34(%rip),%xmm0,%xmm0        # 3020 <_IO_stdin_used+0x20>
    22eb:	00 
    22ec:	48 89 c1             	mov    %rax,%rcx
    22ef:	48 c1 f9 3f          	sar    $0x3f,%rcx
    22f3:	c4 61 fb 2c f8       	vcvttsd2si %xmm0,%r15
    22f8:	49 21 cf             	and    %rcx,%r15
    22fb:	48 8b 8c 24 b8 01 00 	mov    0x1b8(%rsp),%rcx
    2302:	00 
    2303:	49 09 c7             	or     %rax,%r15
    2306:	49 01 df             	add    %rbx,%r15
    2309:	42 8d 44 29 27       	lea    0x27(%rcx,%r13,1),%eax
    230e:	c4 e1 eb 2a c8       	vcvtsi2sd %rax,%xmm2,%xmm1
    2313:	c5 fb 10 05 ed 0c 00 	vmovsd 0xced(%rip),%xmm0        # 3008 <_IO_stdin_used+0x8>
    231a:	00 
    231b:	e8 30 ed ff ff       	call   1050 <pow@plt>
    2320:	c5 fb 59 05 e8 0c 00 	vmulsd 0xce8(%rip),%xmm0,%xmm0        # 3010 <_IO_stdin_used+0x10>
    2327:	00 
    2328:	44 8b 9c 24 80 00 00 	mov    0x80(%rsp),%r11d
    232f:	00 
    2330:	44 8b 94 24 84 00 00 	mov    0x84(%rsp),%r10d
    2337:	00 
    2338:	44 8b 8c 24 88 00 00 	mov    0x88(%rsp),%r9d
    233f:	00 
    2340:	44 8b 84 24 8c 00 00 	mov    0x8c(%rsp),%r8d
    2347:	00 
    2348:	8b bc 24 90 00 00 00 	mov    0x90(%rsp),%edi
    234f:	8b b4 24 94 00 00 00 	mov    0x94(%rsp),%esi
    2356:	8b 94 24 98 00 00 00 	mov    0x98(%rsp),%edx
    235d:	83 44 24 70 28       	addl   $0x28,0x70(%rsp)
    2362:	83 44 24 68 28       	addl   $0x28,0x68(%rsp)
    2367:	83 44 24 64 28       	addl   $0x28,0x64(%rsp)
    236c:	83 44 24 60 28       	addl   $0x28,0x60(%rsp)
    2371:	83 44 24 5c 28       	addl   $0x28,0x5c(%rsp)
    2376:	83 44 24 58 28       	addl   $0x28,0x58(%rsp)
    237b:	83 44 24 54 28       	addl   $0x28,0x54(%rsp)
    2380:	83 44 24 50 28       	addl   $0x28,0x50(%rsp)
    2385:	83 44 24 4c 28       	addl   $0x28,0x4c(%rsp)
    238a:	83 44 24 48 28       	addl   $0x28,0x48(%rsp)
    238f:	83 44 24 44 28       	addl   $0x28,0x44(%rsp)
    2394:	83 44 24 40 28       	addl   $0x28,0x40(%rsp)
    2399:	83 44 24 3c 28       	addl   $0x28,0x3c(%rsp)
    239e:	83 44 24 38 28       	addl   $0x28,0x38(%rsp)
    23a3:	83 44 24 34 28       	addl   $0x28,0x34(%rsp)
    23a8:	83 44 24 30 28       	addl   $0x28,0x30(%rsp)
    23ad:	83 44 24 2c 28       	addl   $0x28,0x2c(%rsp)
    23b2:	83 44 24 28 28       	addl   $0x28,0x28(%rsp)
    23b7:	83 44 24 24 28       	addl   $0x28,0x24(%rsp)
    23bc:	83 44 24 20 28       	addl   $0x28,0x20(%rsp)
    23c1:	83 44 24 1c 28       	addl   $0x28,0x1c(%rsp)
    23c6:	83 44 24 18 28       	addl   $0x28,0x18(%rsp)
    23cb:	83 44 24 14 28       	addl   $0x28,0x14(%rsp)
    23d0:	83 44 24 10 28       	addl   $0x28,0x10(%rsp)
    23d5:	83 44 24 0c 28       	addl   $0x28,0xc(%rsp)
    23da:	83 44 24 08 28       	addl   $0x28,0x8(%rsp)
    23df:	83 44 24 04 28       	addl   $0x28,0x4(%rsp)
    23e4:	49 83 c5 28          	add    $0x28,%r13
    23e8:	83 c5 28             	add    $0x28,%ebp
    23eb:	c5 fb 58 05 25 0c 00 	vaddsd 0xc25(%rip),%xmm0,%xmm0        # 3018 <_IO_stdin_used+0x18>
    23f2:	00 
    23f3:	83 c2 28             	add    $0x28,%edx
    23f6:	83 c6 28             	add    $0x28,%esi
    23f9:	83 c7 28             	add    $0x28,%edi
    23fc:	41 83 c0 28          	add    $0x28,%r8d
    2400:	41 83 c1 28          	add    $0x28,%r9d
    2404:	41 83 c2 28          	add    $0x28,%r10d
    2408:	41 83 c3 28          	add    $0x28,%r11d
    240c:	c4 e1 fb 2c c0       	vcvttsd2si %xmm0,%rax
    2411:	c5 fb 5c 05 07 0c 00 	vsubsd 0xc07(%rip),%xmm0,%xmm0        # 3020 <_IO_stdin_used+0x20>
    2418:	00 
    2419:	48 89 c1             	mov    %rax,%rcx
    241c:	48 c1 f9 3f          	sar    $0x3f,%rcx
    2420:	c4 e1 fb 2c d8       	vcvttsd2si %xmm0,%rbx
    2425:	48 21 cb             	and    %rcx,%rbx
    2428:	8b 8c 24 9c 00 00 00 	mov    0x9c(%rsp),%ecx
    242f:	48 09 c3             	or     %rax,%rbx
    2432:	8b 44 24 6c          	mov    0x6c(%rsp),%eax
    2436:	4c 01 fb             	add    %r15,%rbx
    2439:	44 8b 7c 24 78       	mov    0x78(%rsp),%r15d
    243e:	4c 01 f3             	add    %r14,%rbx
    2441:	44 8b 74 24 7c       	mov    0x7c(%rsp),%r14d
    2446:	83 c1 28             	add    $0x28,%ecx
    2449:	83 c0 28             	add    $0x28,%eax
    244c:	41 83 c7 28          	add    $0x28,%r15d
    2450:	41 83 c6 28          	add    $0x28,%r14d
    2454:	49 81 fd 80 96 98 00 	cmp    $0x989680,%r13
    245b:	0f 85 9f ee ff ff    	jne    1300 <main+0x130>
    2461:	48 8d 15 c0 0b 00 00 	lea    0xbc0(%rip),%rdx        # 3028 <_IO_stdin_used+0x28>
    2468:	48 8d bc 24 c0 01 00 	lea    0x1c0(%rsp),%rdi
    246f:	00 
    2470:	be 20 00 00 00       	mov    $0x20,%esi
    2475:	48 89 d9             	mov    %rbx,%rcx
    2478:	31 c0                	xor    %eax,%eax
    247a:	e8 e1 eb ff ff       	call   1060 <snprintf@plt>
    247f:	83 f8 20             	cmp    $0x20,%eax
    2482:	0f 83 aa 00 00 00    	jae    2532 <main+0x1362>
    2488:	4c 63 f8             	movslq %eax,%r15
    248b:	89 c5                	mov    %eax,%ebp
    248d:	49 8d 7f 01          	lea    0x1(%r15),%rdi
    2491:	e8 fa eb ff ff       	call   1090 <malloc@plt>
    2496:	48 85 c0             	test   %rax,%rax
    2499:	0f 84 93 00 00 00    	je     2532 <main+0x1362>
    249f:	48 8d 15 82 0b 00 00 	lea    0xb82(%rip),%rdx        # 3028 <_IO_stdin_used+0x28>
    24a6:	48 8d bc 24 c0 01 00 	lea    0x1c0(%rsp),%rdi
    24ad:	00 
    24ae:	be 20 00 00 00       	mov    $0x20,%esi
    24b3:	49 89 c6             	mov    %rax,%r14
    24b6:	48 89 d9             	mov    %rbx,%rcx
    24b9:	31 c0                	xor    %eax,%eax
    24bb:	e8 a0 eb ff ff       	call   1060 <snprintf@plt>
    24c0:	83 f8 20             	cmp    $0x20,%eax
    24c3:	73 6d                	jae    2532 <main+0x1362>
    24c5:	48 8d b4 24 c0 01 00 	lea    0x1c0(%rsp),%rsi
    24cc:	00 
    24cd:	89 c2                	mov    %eax,%edx
    24cf:	4c 89 f7             	mov    %r14,%rdi
    24d2:	e8 a9 eb ff ff       	call   1080 <memcpy@plt>
    24d7:	43 c6 04 3e 00       	movb   $0x0,(%r14,%r15,1)
    24dc:	85 ed                	test   %ebp,%ebp
    24de:	74 1a                	je     24fa <main+0x132a>
    24e0:	48 8b 05 e1 2a 00 00 	mov    0x2ae1(%rip),%rax        # 4fc8 <stdout@GLIBC_2.2.5>
    24e7:	be 01 00 00 00       	mov    $0x1,%esi
    24ec:	4c 89 f7             	mov    %r14,%rdi
    24ef:	4c 89 fa             	mov    %r15,%rdx
    24f2:	48 8b 08             	mov    (%rax),%rcx
    24f5:	e8 b6 eb ff ff       	call   10b0 <fwrite@plt>
    24fa:	48 8b 1d c7 2a 00 00 	mov    0x2ac7(%rip),%rbx        # 4fc8 <stdout@GLIBC_2.2.5>
    2501:	bf 0a 00 00 00       	mov    $0xa,%edi
    2506:	48 8b 33             	mov    (%rbx),%rsi
    2509:	e8 62 eb ff ff       	call   1070 <fputc@plt>
    250e:	48 8b 3b             	mov    (%rbx),%rdi
    2511:	e8 8a eb ff ff       	call   10a0 <fflush@plt>
    2516:	4c 89 f7             	mov    %r14,%rdi
    2519:	e8 12 eb ff ff       	call   1030 <free@plt>
    251e:	31 c0                	xor    %eax,%eax
    2520:	48 81 c4 e8 01 00 00 	add    $0x1e8,%rsp
    2527:	5b                   	pop    %rbx
    2528:	41 5c                	pop    %r12
    252a:	41 5d                	pop    %r13
    252c:	41 5e                	pop    %r14
    252e:	41 5f                	pop    %r15
    2530:	5d                   	pop    %rbp
    2531:	c3                   	ret
    2532:	e8 09 eb ff ff       	call   1040 <abort@plt>

Disassembly of section .fini:

0000000000002538 <_fini>:
    2538:	f3 0f 1e fa          	endbr64
    253c:	48 83 ec 08          	sub    $0x8,%rsp
    2540:	48 83 c4 08          	add    $0x8,%rsp
    2544:	c3                   	ret
