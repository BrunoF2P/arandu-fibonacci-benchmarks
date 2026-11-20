; Benchmark: 05_comptime_ctfe
; Implementação: Arandu (emit-c --opt + Clang -O3)
; Executável: /workspaces/arandu-fibonacci-benchmarks/build/05_comptime_ctfe/arandu_c_clang
; Comando: /usr/bin/objdump -d -C /workspaces/arandu-fibonacci-benchmarks/build/05_comptime_ctfe/arandu_c_clang


/workspaces/arandu-fibonacci-benchmarks/build/05_comptime_ctfe/arandu_c_clang:     file format elf64-x86-64


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
    11ca:	8b 05 84 2e 00 00    	mov    0x2e84(%rip),%eax        # 4054 <ar_env_c_argc>
    11d0:	48 8d 15 31 0e 00 00 	lea    0xe31(%rip),%rdx        # 2008 <_IO_stdin_used+0x8>
    11d7:	48 89 e7             	mov    %rsp,%rdi
    11da:	8d 48 ff             	lea    -0x1(%rax),%ecx
    11dd:	89 c6                	mov    %eax,%esi
    11df:	83 e6 03             	and    $0x3,%esi
    11e2:	0f b6 c9             	movzbl %cl,%ecx
    11e5:	83 e1 03             	and    $0x3,%ecx
    11e8:	48 8b 0c ca          	mov    (%rdx,%rcx,8),%rcx
    11ec:	48 03 0c f2          	add    (%rdx,%rsi,8),%rcx
    11f0:	8d 70 01             	lea    0x1(%rax),%esi
    11f3:	34 02                	xor    $0x2,%al
    11f5:	40 0f b6 f6          	movzbl %sil,%esi
    11f9:	0f b6 c0             	movzbl %al,%eax
    11fc:	83 e6 03             	and    $0x3,%esi
    11ff:	83 e0 03             	and    $0x3,%eax
    1202:	48 03 0c f2          	add    (%rdx,%rsi,8),%rcx
    1206:	be 20 00 00 00       	mov    $0x20,%esi
    120b:	48 03 0c c2          	add    (%rdx,%rax,8),%rcx
    120f:	48 8d 15 12 0e 00 00 	lea    0xe12(%rip),%rdx        # 2028 <_IO_stdin_used+0x28>
    1216:	31 c0                	xor    %eax,%eax
    1218:	4c 69 f9 a0 25 26 00 	imul   $0x2625a0,%rcx,%r15
    121f:	4c 89 f9             	mov    %r15,%rcx
    1222:	e8 29 fe ff ff       	call   1050 <snprintf@plt>
    1227:	83 f8 20             	cmp    $0x20,%eax
    122a:	0f 83 99 00 00 00    	jae    12c9 <main+0x109>
    1230:	4c 63 f0             	movslq %eax,%r14
    1233:	89 c5                	mov    %eax,%ebp
    1235:	49 8d 7e 01          	lea    0x1(%r14),%rdi
    1239:	e8 42 fe ff ff       	call   1080 <malloc@plt>
    123e:	48 85 c0             	test   %rax,%rax
    1241:	0f 84 82 00 00 00    	je     12c9 <main+0x109>
    1247:	48 8d 15 da 0d 00 00 	lea    0xdda(%rip),%rdx        # 2028 <_IO_stdin_used+0x28>
    124e:	be 20 00 00 00       	mov    $0x20,%esi
    1253:	48 89 c3             	mov    %rax,%rbx
    1256:	48 89 e7             	mov    %rsp,%rdi
    1259:	4c 89 f9             	mov    %r15,%rcx
    125c:	31 c0                	xor    %eax,%eax
    125e:	e8 ed fd ff ff       	call   1050 <snprintf@plt>
    1263:	83 f8 20             	cmp    $0x20,%eax
    1266:	73 61                	jae    12c9 <main+0x109>
    1268:	89 c2                	mov    %eax,%edx
    126a:	48 89 e6             	mov    %rsp,%rsi
    126d:	48 89 df             	mov    %rbx,%rdi
    1270:	e8 fb fd ff ff       	call   1070 <memcpy@plt>
    1275:	42 c6 04 33 00       	movb   $0x0,(%rbx,%r14,1)
    127a:	85 ed                	test   %ebp,%ebp
    127c:	74 1a                	je     1298 <main+0xd8>
    127e:	48 8b 05 43 2d 00 00 	mov    0x2d43(%rip),%rax        # 3fc8 <stdout@GLIBC_2.2.5>
    1285:	be 01 00 00 00       	mov    $0x1,%esi
    128a:	48 89 df             	mov    %rbx,%rdi
    128d:	4c 89 f2             	mov    %r14,%rdx
    1290:	48 8b 08             	mov    (%rax),%rcx
    1293:	e8 08 fe ff ff       	call   10a0 <fwrite@plt>
    1298:	4c 8b 35 29 2d 00 00 	mov    0x2d29(%rip),%r14        # 3fc8 <stdout@GLIBC_2.2.5>
    129f:	bf 0a 00 00 00       	mov    $0xa,%edi
    12a4:	49 8b 36             	mov    (%r14),%rsi
    12a7:	e8 b4 fd ff ff       	call   1060 <fputc@plt>
    12ac:	49 8b 3e             	mov    (%r14),%rdi
    12af:	e8 dc fd ff ff       	call   1090 <fflush@plt>
    12b4:	48 89 df             	mov    %rbx,%rdi
    12b7:	e8 74 fd ff ff       	call   1030 <free@plt>
    12bc:	31 c0                	xor    %eax,%eax
    12be:	48 83 c4 28          	add    $0x28,%rsp
    12c2:	5b                   	pop    %rbx
    12c3:	41 5e                	pop    %r14
    12c5:	41 5f                	pop    %r15
    12c7:	5d                   	pop    %rbp
    12c8:	c3                   	ret
    12c9:	e8 72 fd ff ff       	call   1040 <abort@plt>

Disassembly of section .fini:

00000000000012d0 <_fini>:
    12d0:	f3 0f 1e fa          	endbr64
    12d4:	48 83 ec 08          	sub    $0x8,%rsp
    12d8:	48 83 c4 08          	add    $0x8,%rsp
    12dc:	c3                   	ret
