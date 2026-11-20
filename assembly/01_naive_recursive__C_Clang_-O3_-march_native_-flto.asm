; Benchmark: 01_naive_recursive
; Implementação: C (Clang -O3 -march=native -flto)
; Executável: /workspaces/arandu-fibonacci-benchmarks/build/01_naive_recursive/c_clang
; Comando: /usr/bin/objdump -d -C /workspaces/arandu-fibonacci-benchmarks/build/01_naive_recursive/c_clang


/workspaces/arandu-fibonacci-benchmarks/build/01_naive_recursive/c_clang:     file format elf64-x86-64


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
    1068:	48 8d 3d 11 01 00 00 	lea    0x111(%rip),%rdi        # 1180 <main>
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

0000000000001140 <fibonacci>:
    1140:	41 56                	push   %r14
    1142:	53                   	push   %rbx
    1143:	50                   	push   %rax
    1144:	48 89 fb             	mov    %rdi,%rbx
    1147:	45 31 f6             	xor    %r14d,%r14d
    114a:	48 83 ff 02          	cmp    $0x2,%rdi
    114e:	72 16                	jb     1166 <fibonacci+0x26>
    1150:	48 8d 7b ff          	lea    -0x1(%rbx),%rdi
    1154:	e8 e7 ff ff ff       	call   1140 <fibonacci>
    1159:	48 83 c3 fe          	add    $0xfffffffffffffffe,%rbx
    115d:	49 01 c6             	add    %rax,%r14
    1160:	48 83 fb 01          	cmp    $0x1,%rbx
    1164:	77 ea                	ja     1150 <fibonacci+0x10>
    1166:	49 01 de             	add    %rbx,%r14
    1169:	4c 89 f0             	mov    %r14,%rax
    116c:	48 83 c4 08          	add    $0x8,%rsp
    1170:	5b                   	pop    %rbx
    1171:	41 5e                	pop    %r14
    1173:	c3                   	ret
    1174:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    117b:	00 00 00 
    117e:	66 90                	xchg   %ax,%ax

0000000000001180 <main>:
    1180:	53                   	push   %rbx
    1181:	48 8d 1d 7c 0e 00 00 	lea    0xe7c(%rip),%rbx        # 2004 <_IO_stdin_used+0x4>
    1188:	31 f6                	xor    %esi,%esi
    118a:	31 c0                	xor    %eax,%eax
    118c:	48 89 df             	mov    %rbx,%rdi
    118f:	e8 9c fe ff ff       	call   1030 <printf@plt>
    1194:	be 01 00 00 00       	mov    $0x1,%esi
    1199:	48 89 df             	mov    %rbx,%rdi
    119c:	31 c0                	xor    %eax,%eax
    119e:	e8 8d fe ff ff       	call   1030 <printf@plt>
    11a3:	bf 02 00 00 00       	mov    $0x2,%edi
    11a8:	e8 93 ff ff ff       	call   1140 <fibonacci>
    11ad:	48 89 c6             	mov    %rax,%rsi
    11b0:	48 89 df             	mov    %rbx,%rdi
    11b3:	31 c0                	xor    %eax,%eax
    11b5:	e8 76 fe ff ff       	call   1030 <printf@plt>
    11ba:	bf 03 00 00 00       	mov    $0x3,%edi
    11bf:	e8 7c ff ff ff       	call   1140 <fibonacci>
    11c4:	48 89 c6             	mov    %rax,%rsi
    11c7:	48 89 df             	mov    %rbx,%rdi
    11ca:	31 c0                	xor    %eax,%eax
    11cc:	e8 5f fe ff ff       	call   1030 <printf@plt>
    11d1:	bf 04 00 00 00       	mov    $0x4,%edi
    11d6:	e8 65 ff ff ff       	call   1140 <fibonacci>
    11db:	48 89 c6             	mov    %rax,%rsi
    11de:	48 89 df             	mov    %rbx,%rdi
    11e1:	31 c0                	xor    %eax,%eax
    11e3:	e8 48 fe ff ff       	call   1030 <printf@plt>
    11e8:	bf 05 00 00 00       	mov    $0x5,%edi
    11ed:	e8 4e ff ff ff       	call   1140 <fibonacci>
    11f2:	48 89 c6             	mov    %rax,%rsi
    11f5:	48 89 df             	mov    %rbx,%rdi
    11f8:	31 c0                	xor    %eax,%eax
    11fa:	e8 31 fe ff ff       	call   1030 <printf@plt>
    11ff:	bf 06 00 00 00       	mov    $0x6,%edi
    1204:	e8 37 ff ff ff       	call   1140 <fibonacci>
    1209:	48 89 c6             	mov    %rax,%rsi
    120c:	48 89 df             	mov    %rbx,%rdi
    120f:	31 c0                	xor    %eax,%eax
    1211:	e8 1a fe ff ff       	call   1030 <printf@plt>
    1216:	bf 07 00 00 00       	mov    $0x7,%edi
    121b:	e8 20 ff ff ff       	call   1140 <fibonacci>
    1220:	48 89 c6             	mov    %rax,%rsi
    1223:	48 89 df             	mov    %rbx,%rdi
    1226:	31 c0                	xor    %eax,%eax
    1228:	e8 03 fe ff ff       	call   1030 <printf@plt>
    122d:	bf 08 00 00 00       	mov    $0x8,%edi
    1232:	e8 09 ff ff ff       	call   1140 <fibonacci>
    1237:	48 89 c6             	mov    %rax,%rsi
    123a:	48 89 df             	mov    %rbx,%rdi
    123d:	31 c0                	xor    %eax,%eax
    123f:	e8 ec fd ff ff       	call   1030 <printf@plt>
    1244:	bf 09 00 00 00       	mov    $0x9,%edi
    1249:	e8 f2 fe ff ff       	call   1140 <fibonacci>
    124e:	48 89 c6             	mov    %rax,%rsi
    1251:	48 89 df             	mov    %rbx,%rdi
    1254:	31 c0                	xor    %eax,%eax
    1256:	e8 d5 fd ff ff       	call   1030 <printf@plt>
    125b:	bf 0a 00 00 00       	mov    $0xa,%edi
    1260:	e8 db fe ff ff       	call   1140 <fibonacci>
    1265:	48 89 c6             	mov    %rax,%rsi
    1268:	48 89 df             	mov    %rbx,%rdi
    126b:	31 c0                	xor    %eax,%eax
    126d:	e8 be fd ff ff       	call   1030 <printf@plt>
    1272:	bf 0b 00 00 00       	mov    $0xb,%edi
    1277:	e8 c4 fe ff ff       	call   1140 <fibonacci>
    127c:	48 89 c6             	mov    %rax,%rsi
    127f:	48 89 df             	mov    %rbx,%rdi
    1282:	31 c0                	xor    %eax,%eax
    1284:	e8 a7 fd ff ff       	call   1030 <printf@plt>
    1289:	bf 0c 00 00 00       	mov    $0xc,%edi
    128e:	e8 ad fe ff ff       	call   1140 <fibonacci>
    1293:	48 89 c6             	mov    %rax,%rsi
    1296:	48 89 df             	mov    %rbx,%rdi
    1299:	31 c0                	xor    %eax,%eax
    129b:	e8 90 fd ff ff       	call   1030 <printf@plt>
    12a0:	bf 0d 00 00 00       	mov    $0xd,%edi
    12a5:	e8 96 fe ff ff       	call   1140 <fibonacci>
    12aa:	48 89 c6             	mov    %rax,%rsi
    12ad:	48 89 df             	mov    %rbx,%rdi
    12b0:	31 c0                	xor    %eax,%eax
    12b2:	e8 79 fd ff ff       	call   1030 <printf@plt>
    12b7:	bf 0e 00 00 00       	mov    $0xe,%edi
    12bc:	e8 7f fe ff ff       	call   1140 <fibonacci>
    12c1:	48 89 c6             	mov    %rax,%rsi
    12c4:	48 89 df             	mov    %rbx,%rdi
    12c7:	31 c0                	xor    %eax,%eax
    12c9:	e8 62 fd ff ff       	call   1030 <printf@plt>
    12ce:	bf 0f 00 00 00       	mov    $0xf,%edi
    12d3:	e8 68 fe ff ff       	call   1140 <fibonacci>
    12d8:	48 89 c6             	mov    %rax,%rsi
    12db:	48 89 df             	mov    %rbx,%rdi
    12de:	31 c0                	xor    %eax,%eax
    12e0:	e8 4b fd ff ff       	call   1030 <printf@plt>
    12e5:	bf 10 00 00 00       	mov    $0x10,%edi
    12ea:	e8 51 fe ff ff       	call   1140 <fibonacci>
    12ef:	48 89 c6             	mov    %rax,%rsi
    12f2:	48 89 df             	mov    %rbx,%rdi
    12f5:	31 c0                	xor    %eax,%eax
    12f7:	e8 34 fd ff ff       	call   1030 <printf@plt>
    12fc:	bf 11 00 00 00       	mov    $0x11,%edi
    1301:	e8 3a fe ff ff       	call   1140 <fibonacci>
    1306:	48 89 c6             	mov    %rax,%rsi
    1309:	48 89 df             	mov    %rbx,%rdi
    130c:	31 c0                	xor    %eax,%eax
    130e:	e8 1d fd ff ff       	call   1030 <printf@plt>
    1313:	bf 12 00 00 00       	mov    $0x12,%edi
    1318:	e8 23 fe ff ff       	call   1140 <fibonacci>
    131d:	48 89 c6             	mov    %rax,%rsi
    1320:	48 89 df             	mov    %rbx,%rdi
    1323:	31 c0                	xor    %eax,%eax
    1325:	e8 06 fd ff ff       	call   1030 <printf@plt>
    132a:	bf 13 00 00 00       	mov    $0x13,%edi
    132f:	e8 0c fe ff ff       	call   1140 <fibonacci>
    1334:	48 89 c6             	mov    %rax,%rsi
    1337:	48 89 df             	mov    %rbx,%rdi
    133a:	31 c0                	xor    %eax,%eax
    133c:	e8 ef fc ff ff       	call   1030 <printf@plt>
    1341:	bf 14 00 00 00       	mov    $0x14,%edi
    1346:	e8 f5 fd ff ff       	call   1140 <fibonacci>
    134b:	48 89 c6             	mov    %rax,%rsi
    134e:	48 89 df             	mov    %rbx,%rdi
    1351:	31 c0                	xor    %eax,%eax
    1353:	e8 d8 fc ff ff       	call   1030 <printf@plt>
    1358:	bf 15 00 00 00       	mov    $0x15,%edi
    135d:	e8 de fd ff ff       	call   1140 <fibonacci>
    1362:	48 89 c6             	mov    %rax,%rsi
    1365:	48 89 df             	mov    %rbx,%rdi
    1368:	31 c0                	xor    %eax,%eax
    136a:	e8 c1 fc ff ff       	call   1030 <printf@plt>
    136f:	bf 16 00 00 00       	mov    $0x16,%edi
    1374:	e8 c7 fd ff ff       	call   1140 <fibonacci>
    1379:	48 89 c6             	mov    %rax,%rsi
    137c:	48 89 df             	mov    %rbx,%rdi
    137f:	31 c0                	xor    %eax,%eax
    1381:	e8 aa fc ff ff       	call   1030 <printf@plt>
    1386:	bf 17 00 00 00       	mov    $0x17,%edi
    138b:	e8 b0 fd ff ff       	call   1140 <fibonacci>
    1390:	48 89 c6             	mov    %rax,%rsi
    1393:	48 89 df             	mov    %rbx,%rdi
    1396:	31 c0                	xor    %eax,%eax
    1398:	e8 93 fc ff ff       	call   1030 <printf@plt>
    139d:	bf 18 00 00 00       	mov    $0x18,%edi
    13a2:	e8 99 fd ff ff       	call   1140 <fibonacci>
    13a7:	48 89 c6             	mov    %rax,%rsi
    13aa:	48 89 df             	mov    %rbx,%rdi
    13ad:	31 c0                	xor    %eax,%eax
    13af:	e8 7c fc ff ff       	call   1030 <printf@plt>
    13b4:	bf 19 00 00 00       	mov    $0x19,%edi
    13b9:	e8 82 fd ff ff       	call   1140 <fibonacci>
    13be:	48 89 c6             	mov    %rax,%rsi
    13c1:	48 89 df             	mov    %rbx,%rdi
    13c4:	31 c0                	xor    %eax,%eax
    13c6:	e8 65 fc ff ff       	call   1030 <printf@plt>
    13cb:	bf 1a 00 00 00       	mov    $0x1a,%edi
    13d0:	e8 6b fd ff ff       	call   1140 <fibonacci>
    13d5:	48 89 c6             	mov    %rax,%rsi
    13d8:	48 89 df             	mov    %rbx,%rdi
    13db:	31 c0                	xor    %eax,%eax
    13dd:	e8 4e fc ff ff       	call   1030 <printf@plt>
    13e2:	bf 1b 00 00 00       	mov    $0x1b,%edi
    13e7:	e8 54 fd ff ff       	call   1140 <fibonacci>
    13ec:	48 89 c6             	mov    %rax,%rsi
    13ef:	48 89 df             	mov    %rbx,%rdi
    13f2:	31 c0                	xor    %eax,%eax
    13f4:	e8 37 fc ff ff       	call   1030 <printf@plt>
    13f9:	bf 1c 00 00 00       	mov    $0x1c,%edi
    13fe:	e8 3d fd ff ff       	call   1140 <fibonacci>
    1403:	48 89 c6             	mov    %rax,%rsi
    1406:	48 89 df             	mov    %rbx,%rdi
    1409:	31 c0                	xor    %eax,%eax
    140b:	e8 20 fc ff ff       	call   1030 <printf@plt>
    1410:	bf 1d 00 00 00       	mov    $0x1d,%edi
    1415:	e8 26 fd ff ff       	call   1140 <fibonacci>
    141a:	48 89 c6             	mov    %rax,%rsi
    141d:	48 89 df             	mov    %rbx,%rdi
    1420:	31 c0                	xor    %eax,%eax
    1422:	e8 09 fc ff ff       	call   1030 <printf@plt>
    1427:	bf 1e 00 00 00       	mov    $0x1e,%edi
    142c:	e8 0f fd ff ff       	call   1140 <fibonacci>
    1431:	48 89 c6             	mov    %rax,%rsi
    1434:	48 89 df             	mov    %rbx,%rdi
    1437:	31 c0                	xor    %eax,%eax
    1439:	e8 f2 fb ff ff       	call   1030 <printf@plt>
    143e:	bf 1f 00 00 00       	mov    $0x1f,%edi
    1443:	e8 f8 fc ff ff       	call   1140 <fibonacci>
    1448:	48 89 c6             	mov    %rax,%rsi
    144b:	48 89 df             	mov    %rbx,%rdi
    144e:	31 c0                	xor    %eax,%eax
    1450:	e8 db fb ff ff       	call   1030 <printf@plt>
    1455:	bf 20 00 00 00       	mov    $0x20,%edi
    145a:	e8 e1 fc ff ff       	call   1140 <fibonacci>
    145f:	48 89 c6             	mov    %rax,%rsi
    1462:	48 89 df             	mov    %rbx,%rdi
    1465:	31 c0                	xor    %eax,%eax
    1467:	e8 c4 fb ff ff       	call   1030 <printf@plt>
    146c:	bf 21 00 00 00       	mov    $0x21,%edi
    1471:	e8 ca fc ff ff       	call   1140 <fibonacci>
    1476:	48 89 c6             	mov    %rax,%rsi
    1479:	48 89 df             	mov    %rbx,%rdi
    147c:	31 c0                	xor    %eax,%eax
    147e:	e8 ad fb ff ff       	call   1030 <printf@plt>
    1483:	bf 22 00 00 00       	mov    $0x22,%edi
    1488:	e8 b3 fc ff ff       	call   1140 <fibonacci>
    148d:	48 89 c6             	mov    %rax,%rsi
    1490:	48 89 df             	mov    %rbx,%rdi
    1493:	31 c0                	xor    %eax,%eax
    1495:	e8 96 fb ff ff       	call   1030 <printf@plt>
    149a:	bf 23 00 00 00       	mov    $0x23,%edi
    149f:	e8 9c fc ff ff       	call   1140 <fibonacci>
    14a4:	48 89 c6             	mov    %rax,%rsi
    14a7:	48 89 df             	mov    %rbx,%rdi
    14aa:	31 c0                	xor    %eax,%eax
    14ac:	e8 7f fb ff ff       	call   1030 <printf@plt>
    14b1:	bf 24 00 00 00       	mov    $0x24,%edi
    14b6:	e8 85 fc ff ff       	call   1140 <fibonacci>
    14bb:	48 89 c6             	mov    %rax,%rsi
    14be:	48 89 df             	mov    %rbx,%rdi
    14c1:	31 c0                	xor    %eax,%eax
    14c3:	e8 68 fb ff ff       	call   1030 <printf@plt>
    14c8:	bf 25 00 00 00       	mov    $0x25,%edi
    14cd:	e8 6e fc ff ff       	call   1140 <fibonacci>
    14d2:	48 89 c6             	mov    %rax,%rsi
    14d5:	48 89 df             	mov    %rbx,%rdi
    14d8:	31 c0                	xor    %eax,%eax
    14da:	e8 51 fb ff ff       	call   1030 <printf@plt>
    14df:	bf 26 00 00 00       	mov    $0x26,%edi
    14e4:	e8 57 fc ff ff       	call   1140 <fibonacci>
    14e9:	48 89 c6             	mov    %rax,%rsi
    14ec:	48 89 df             	mov    %rbx,%rdi
    14ef:	31 c0                	xor    %eax,%eax
    14f1:	e8 3a fb ff ff       	call   1030 <printf@plt>
    14f6:	bf 27 00 00 00       	mov    $0x27,%edi
    14fb:	e8 40 fc ff ff       	call   1140 <fibonacci>
    1500:	48 89 c6             	mov    %rax,%rsi
    1503:	48 89 df             	mov    %rbx,%rdi
    1506:	31 c0                	xor    %eax,%eax
    1508:	e8 23 fb ff ff       	call   1030 <printf@plt>
    150d:	bf 28 00 00 00       	mov    $0x28,%edi
    1512:	e8 29 fc ff ff       	call   1140 <fibonacci>
    1517:	48 89 c6             	mov    %rax,%rsi
    151a:	48 89 df             	mov    %rbx,%rdi
    151d:	31 c0                	xor    %eax,%eax
    151f:	e8 0c fb ff ff       	call   1030 <printf@plt>
    1524:	31 c0                	xor    %eax,%eax
    1526:	5b                   	pop    %rbx
    1527:	c3                   	ret

Disassembly of section .fini:

0000000000001528 <_fini>:
    1528:	f3 0f 1e fa          	endbr64
    152c:	48 83 ec 08          	sub    $0x8,%rsp
    1530:	48 83 c4 08          	add    $0x8,%rsp
    1534:	c3                   	ret
