; Benchmark: 02_binet_formula
; Implementação: C (GCC -O3 -march=native -flto)
; Executável: /workspaces/arandu-fibonacci-benchmarks/build/02_binet_formula/c_gcc
; Comando: /usr/bin/objdump -d -C /workspaces/arandu-fibonacci-benchmarks/build/02_binet_formula/c_gcc


/workspaces/arandu-fibonacci-benchmarks/build/02_binet_formula/c_gcc:     file format elf64-x86-64


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
    1020:	ff 35 92 2f 00 00    	push   0x2f92(%rip)        # 3fb8 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 94 2f 00 00    	jmp    *0x2f94(%rip)        # 3fc0 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)
    1030:	f3 0f 1e fa          	endbr64
    1034:	68 00 00 00 00       	push   $0x0
    1039:	e9 e2 ff ff ff       	jmp    1020 <_init+0x20>
    103e:	66 90                	xchg   %ax,%ax
    1040:	f3 0f 1e fa          	endbr64
    1044:	68 01 00 00 00       	push   $0x1
    1049:	e9 d2 ff ff ff       	jmp    1020 <_init+0x20>
    104e:	66 90                	xchg   %ax,%ax

Disassembly of section .plt.got:

0000000000001050 <__cxa_finalize@plt>:
    1050:	f3 0f 1e fa          	endbr64
    1054:	ff 25 9e 2f 00 00    	jmp    *0x2f9e(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    105a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000001060 <pow@plt>:
    1060:	f3 0f 1e fa          	endbr64
    1064:	ff 25 5e 2f 00 00    	jmp    *0x2f5e(%rip)        # 3fc8 <pow@GLIBC_2.29>
    106a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000001070 <__printf_chk@plt>:
    1070:	f3 0f 1e fa          	endbr64
    1074:	ff 25 56 2f 00 00    	jmp    *0x2f56(%rip)        # 3fd0 <__printf_chk@GLIBC_2.3.4>
    107a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001080 <main>:
    1080:	f3 0f 1e fa          	endbr64
    1084:	41 54                	push   %r12
    1086:	45 31 e4             	xor    %r12d,%r12d
    1089:	55                   	push   %rbp
    108a:	48 bd 45 2b 6c 0e 24 	movabs $0x73615a240e6c2b45,%rbp
    1091:	5a 61 73 
    1094:	53                   	push   %rbx
    1095:	31 db                	xor    %ebx,%ebx
    1097:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    109e:	00 00 
    10a0:	4c 89 e0             	mov    %r12,%rax
    10a3:	48 f7 ed             	imul   %rbp
    10a6:	4c 89 e0             	mov    %r12,%rax
    10a9:	48 c1 f8 3f          	sar    $0x3f,%rax
    10ad:	48 c1 fa 05          	sar    $0x5,%rdx
    10b1:	48 89 d7             	mov    %rdx,%rdi
    10b4:	48 29 c7             	sub    %rax,%rdi
    10b7:	48 6b c7 47          	imul   $0x47,%rdi,%rax
    10bb:	4c 89 e7             	mov    %r12,%rdi
    10be:	48 29 c7             	sub    %rax,%rdi
    10c1:	e8 2a 01 00 00       	call   11f0 <fib_binet>
    10c6:	49 ff c4             	inc    %r12
    10c9:	48 01 c3             	add    %rax,%rbx
    10cc:	49 81 fc 80 96 98 00 	cmp    $0x989680,%r12
    10d3:	75 cb                	jne    10a0 <main+0x20>
    10d5:	48 89 da             	mov    %rbx,%rdx
    10d8:	48 8d 35 25 0f 00 00 	lea    0xf25(%rip),%rsi        # 2004 <_IO_stdin_used+0x4>
    10df:	bf 02 00 00 00       	mov    $0x2,%edi
    10e4:	31 c0                	xor    %eax,%eax
    10e6:	e8 85 ff ff ff       	call   1070 <__printf_chk@plt>
    10eb:	5b                   	pop    %rbx
    10ec:	31 c0                	xor    %eax,%eax
    10ee:	5d                   	pop    %rbp
    10ef:	41 5c                	pop    %r12
    10f1:	c3                   	ret
    10f2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    10f9:	00 00 00 
    10fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001100 <_start>:
    1100:	f3 0f 1e fa          	endbr64
    1104:	31 ed                	xor    %ebp,%ebp
    1106:	49 89 d1             	mov    %rdx,%r9
    1109:	5e                   	pop    %rsi
    110a:	48 89 e2             	mov    %rsp,%rdx
    110d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1111:	50                   	push   %rax
    1112:	54                   	push   %rsp
    1113:	45 31 c0             	xor    %r8d,%r8d
    1116:	31 c9                	xor    %ecx,%ecx
    1118:	48 8d 3d 61 ff ff ff 	lea    -0x9f(%rip),%rdi        # 1080 <main>
    111f:	ff 15 b3 2e 00 00    	call   *0x2eb3(%rip)        # 3fd8 <__libc_start_main@GLIBC_2.34>
    1125:	f4                   	hlt
    1126:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    112d:	00 00 00 

0000000000001130 <deregister_tm_clones>:
    1130:	48 8d 3d d9 2e 00 00 	lea    0x2ed9(%rip),%rdi        # 4010 <__TMC_END__>
    1137:	48 8d 05 d2 2e 00 00 	lea    0x2ed2(%rip),%rax        # 4010 <__TMC_END__>
    113e:	48 39 f8             	cmp    %rdi,%rax
    1141:	74 15                	je     1158 <deregister_tm_clones+0x28>
    1143:	48 8b 05 96 2e 00 00 	mov    0x2e96(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    114a:	48 85 c0             	test   %rax,%rax
    114d:	74 09                	je     1158 <deregister_tm_clones+0x28>
    114f:	ff e0                	jmp    *%rax
    1151:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1158:	c3                   	ret
    1159:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001160 <register_tm_clones>:
    1160:	48 8d 3d a9 2e 00 00 	lea    0x2ea9(%rip),%rdi        # 4010 <__TMC_END__>
    1167:	48 8d 35 a2 2e 00 00 	lea    0x2ea2(%rip),%rsi        # 4010 <__TMC_END__>
    116e:	48 29 fe             	sub    %rdi,%rsi
    1171:	48 89 f0             	mov    %rsi,%rax
    1174:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1178:	48 c1 f8 03          	sar    $0x3,%rax
    117c:	48 01 c6             	add    %rax,%rsi
    117f:	48 d1 fe             	sar    $1,%rsi
    1182:	74 14                	je     1198 <register_tm_clones+0x38>
    1184:	48 8b 05 65 2e 00 00 	mov    0x2e65(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    118b:	48 85 c0             	test   %rax,%rax
    118e:	74 08                	je     1198 <register_tm_clones+0x38>
    1190:	ff e0                	jmp    *%rax
    1192:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1198:	c3                   	ret
    1199:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011a0 <__do_global_dtors_aux>:
    11a0:	f3 0f 1e fa          	endbr64
    11a4:	80 3d 65 2e 00 00 00 	cmpb   $0x0,0x2e65(%rip)        # 4010 <__TMC_END__>
    11ab:	75 2b                	jne    11d8 <__do_global_dtors_aux+0x38>
    11ad:	55                   	push   %rbp
    11ae:	48 83 3d 42 2e 00 00 	cmpq   $0x0,0x2e42(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    11b5:	00 
    11b6:	48 89 e5             	mov    %rsp,%rbp
    11b9:	74 0c                	je     11c7 <__do_global_dtors_aux+0x27>
    11bb:	48 8b 3d 46 2e 00 00 	mov    0x2e46(%rip),%rdi        # 4008 <__dso_handle>
    11c2:	e8 89 fe ff ff       	call   1050 <__cxa_finalize@plt>
    11c7:	e8 64 ff ff ff       	call   1130 <deregister_tm_clones>
    11cc:	c6 05 3d 2e 00 00 01 	movb   $0x1,0x2e3d(%rip)        # 4010 <__TMC_END__>
    11d3:	5d                   	pop    %rbp
    11d4:	c3                   	ret
    11d5:	0f 1f 00             	nopl   (%rax)
    11d8:	c3                   	ret
    11d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011e0 <frame_dummy>:
    11e0:	f3 0f 1e fa          	endbr64
    11e4:	e9 77 ff ff ff       	jmp    1160 <register_tm_clones>
    11e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011f0 <fib_binet>:
    11f0:	48 83 ec 08          	sub    $0x8,%rsp
    11f4:	c5 f0 57 c9          	vxorps %xmm1,%xmm1,%xmm1
    11f8:	48 85 ff             	test   %rdi,%rdi
    11fb:	78 63                	js     1260 <fib_binet+0x70>
    11fd:	c4 e1 f3 2a cf       	vcvtsi2sd %rdi,%xmm1,%xmm1
    1202:	c5 fb 10 05 06 0e 00 	vmovsd 0xe06(%rip),%xmm0        # 2010 <_IO_stdin_used+0x10>
    1209:	00 
    120a:	e8 51 fe ff ff       	call   1060 <pow@plt>
    120f:	c5 fb 10 15 09 0e 00 	vmovsd 0xe09(%rip),%xmm2        # 2020 <_IO_stdin_used+0x20>
    1216:	00 
    1217:	c4 e2 e9 99 05 f8 0d 	vfmadd132sd 0xdf8(%rip),%xmm2,%xmm0        # 2018 <_IO_stdin_used+0x18>
    121e:	00 00 
    1220:	c5 fb 10 0d 00 0e 00 	vmovsd 0xe00(%rip),%xmm1        # 2028 <_IO_stdin_used+0x28>
    1227:	00 
    1228:	c5 f9 2f c1          	vcomisd %xmm1,%xmm0
    122c:	73 12                	jae    1240 <fib_binet+0x50>
    122e:	c4 e1 fb 2c c0       	vcvttsd2si %xmm0,%rax
    1233:	48 83 c4 08          	add    $0x8,%rsp
    1237:	c3                   	ret
    1238:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    123f:	00 
    1240:	c5 fb 5c c1          	vsubsd %xmm1,%xmm0,%xmm0
    1244:	48 83 c4 08          	add    $0x8,%rsp
    1248:	c4 e1 fb 2c c0       	vcvttsd2si %xmm0,%rax
    124d:	48 0f ba f8 3f       	btc    $0x3f,%rax
    1252:	c3                   	ret
    1253:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    125a:	00 00 00 00 
    125e:	66 90                	xchg   %ax,%ax
    1260:	48 89 f8             	mov    %rdi,%rax
    1263:	83 e7 01             	and    $0x1,%edi
    1266:	48 d1 e8             	shr    $1,%rax
    1269:	48 09 f8             	or     %rdi,%rax
    126c:	c4 e1 f3 2a c8       	vcvtsi2sd %rax,%xmm1,%xmm1
    1271:	c5 f3 58 c9          	vaddsd %xmm1,%xmm1,%xmm1
    1275:	eb 8b                	jmp    1202 <fib_binet+0x12>

Disassembly of section .fini:

0000000000001278 <_fini>:
    1278:	f3 0f 1e fa          	endbr64
    127c:	48 83 ec 08          	sub    $0x8,%rsp
    1280:	48 83 c4 08          	add    $0x8,%rsp
    1284:	c3                   	ret
