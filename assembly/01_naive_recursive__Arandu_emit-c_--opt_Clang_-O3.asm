; Benchmark: 01_naive_recursive
; Implementação: Arandu (emit-c --opt + Clang -O3)
; Executável: /workspaces/arandu-fibonacci-benchmarks/build/01_naive_recursive/arandu_c_clang
; Comando: /usr/bin/objdump -d -C /workspaces/arandu-fibonacci-benchmarks/build/01_naive_recursive/arandu_c_clang


/workspaces/arandu-fibonacci-benchmarks/build/01_naive_recursive/arandu_c_clang:     file format elf64-x86-64


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
    10d8:	48 8d 3d 21 01 00 00 	lea    0x121(%rip),%rdi        # 1200 <main>
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
    11b0:	c3                   	ret
    11b1:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    11b8:	00 00 00 
    11bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000011c0 <fibonacci>:
    11c0:	41 56                	push   %r14
    11c2:	53                   	push   %rbx
    11c3:	50                   	push   %rax
    11c4:	48 89 fb             	mov    %rdi,%rbx
    11c7:	45 31 f6             	xor    %r14d,%r14d
    11ca:	48 83 ff 02          	cmp    $0x2,%rdi
    11ce:	72 16                	jb     11e6 <fibonacci+0x26>
    11d0:	48 8d 7b ff          	lea    -0x1(%rbx),%rdi
    11d4:	e8 e7 ff ff ff       	call   11c0 <fibonacci>
    11d9:	48 83 c3 fe          	add    $0xfffffffffffffffe,%rbx
    11dd:	49 01 c6             	add    %rax,%r14
    11e0:	48 83 fb 01          	cmp    $0x1,%rbx
    11e4:	77 ea                	ja     11d0 <fibonacci+0x10>
    11e6:	49 01 de             	add    %rbx,%r14
    11e9:	4c 89 f0             	mov    %r14,%rax
    11ec:	48 83 c4 08          	add    $0x8,%rsp
    11f0:	5b                   	pop    %rbx
    11f1:	41 5e                	pop    %r14
    11f3:	c3                   	ret
    11f4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    11fb:	00 00 00 
    11fe:	66 90                	xchg   %ax,%ax

0000000000001200 <main>:
    1200:	55                   	push   %rbp
    1201:	41 57                	push   %r15
    1203:	41 56                	push   %r14
    1205:	41 55                	push   %r13
    1207:	41 54                	push   %r12
    1209:	53                   	push   %rbx
    120a:	48 83 ec 38          	sub    $0x38,%rsp
    120e:	4c 8b 35 b3 2d 00 00 	mov    0x2db3(%rip),%r14        # 3fc8 <stdout@GLIBC_2.2.5>
    1215:	4c 8d 7c 24 10       	lea    0x10(%rsp),%r15
    121a:	31 ff                	xor    %edi,%edi
    121c:	eb 36                	jmp    1254 <main+0x54>
    121e:	66 90                	xchg   %ax,%ax
    1220:	49 8b 36             	mov    (%r14),%rsi
    1223:	bf 0a 00 00 00       	mov    $0xa,%edi
    1228:	e8 33 fe ff ff       	call   1060 <fputc@plt>
    122d:	49 8b 3e             	mov    (%r14),%rdi
    1230:	e8 5b fe ff ff       	call   1090 <fflush@plt>
    1235:	4c 89 e7             	mov    %r12,%rdi
    1238:	e8 f3 fd ff ff       	call   1030 <free@plt>
    123d:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    1242:	4c 8d 7c 24 10       	lea    0x10(%rsp),%r15
    1247:	48 ff c7             	inc    %rdi
    124a:	48 83 ff 29          	cmp    $0x29,%rdi
    124e:	0f 84 96 00 00 00    	je     12ea <main+0xea>
    1254:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
    1259:	e8 62 ff ff ff       	call   11c0 <fibonacci>
    125e:	be 20 00 00 00       	mov    $0x20,%esi
    1263:	48 8d 15 9a 0d 00 00 	lea    0xd9a(%rip),%rdx        # 2004 <_IO_stdin_used+0x4>
    126a:	48 89 c3             	mov    %rax,%rbx
    126d:	48 89 c1             	mov    %rax,%rcx
    1270:	4c 89 ff             	mov    %r15,%rdi
    1273:	31 c0                	xor    %eax,%eax
    1275:	e8 d6 fd ff ff       	call   1050 <snprintf@plt>
    127a:	83 f8 20             	cmp    $0x20,%eax
    127d:	73 7c                	jae    12fb <main+0xfb>
    127f:	4c 63 e8             	movslq %eax,%r13
    1282:	89 c5                	mov    %eax,%ebp
    1284:	49 8d 7d 01          	lea    0x1(%r13),%rdi
    1288:	e8 f3 fd ff ff       	call   1080 <malloc@plt>
    128d:	48 85 c0             	test   %rax,%rax
    1290:	74 69                	je     12fb <main+0xfb>
    1292:	4c 8d 7c 24 10       	lea    0x10(%rsp),%r15
    1297:	be 20 00 00 00       	mov    $0x20,%esi
    129c:	48 8d 15 61 0d 00 00 	lea    0xd61(%rip),%rdx        # 2004 <_IO_stdin_used+0x4>
    12a3:	49 89 c4             	mov    %rax,%r12
    12a6:	48 89 d9             	mov    %rbx,%rcx
    12a9:	31 c0                	xor    %eax,%eax
    12ab:	4c 89 ff             	mov    %r15,%rdi
    12ae:	e8 9d fd ff ff       	call   1050 <snprintf@plt>
    12b3:	83 f8 20             	cmp    $0x20,%eax
    12b6:	73 43                	jae    12fb <main+0xfb>
    12b8:	89 c2                	mov    %eax,%edx
    12ba:	4c 89 e7             	mov    %r12,%rdi
    12bd:	4c 89 fe             	mov    %r15,%rsi
    12c0:	e8 ab fd ff ff       	call   1070 <memcpy@plt>
    12c5:	43 c6 04 2c 00       	movb   $0x0,(%r12,%r13,1)
    12ca:	85 ed                	test   %ebp,%ebp
    12cc:	0f 84 4e ff ff ff    	je     1220 <main+0x20>
    12d2:	49 8b 0e             	mov    (%r14),%rcx
    12d5:	be 01 00 00 00       	mov    $0x1,%esi
    12da:	4c 89 e7             	mov    %r12,%rdi
    12dd:	4c 89 ea             	mov    %r13,%rdx
    12e0:	e8 bb fd ff ff       	call   10a0 <fwrite@plt>
    12e5:	e9 36 ff ff ff       	jmp    1220 <main+0x20>
    12ea:	31 c0                	xor    %eax,%eax
    12ec:	48 83 c4 38          	add    $0x38,%rsp
    12f0:	5b                   	pop    %rbx
    12f1:	41 5c                	pop    %r12
    12f3:	41 5d                	pop    %r13
    12f5:	41 5e                	pop    %r14
    12f7:	41 5f                	pop    %r15
    12f9:	5d                   	pop    %rbp
    12fa:	c3                   	ret
    12fb:	e8 40 fd ff ff       	call   1040 <abort@plt>

Disassembly of section .fini:

0000000000001300 <_fini>:
    1300:	f3 0f 1e fa          	endbr64
    1304:	48 83 ec 08          	sub    $0x8,%rsp
    1308:	48 83 c4 08          	add    $0x8,%rsp
    130c:	c3                   	ret
