; Benchmark: 02_binet_formula
; Implementação: C (Clang -O3 -march=native -flto)
; Executável: /workspaces/arandu-fibonacci-benchmarks/build/02_binet_formula/c_clang
; Comando: /usr/bin/objdump -d -C /workspaces/arandu-fibonacci-benchmarks/build/02_binet_formula/c_clang


/workspaces/arandu-fibonacci-benchmarks/build/02_binet_formula/c_clang:     file format elf64-x86-64


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

0000000000001020 <pow@plt-0x10>:
    1020:	ff 35 ca 2f 00 00    	push   0x2fca(%rip)        # 3ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 cc 2f 00 00    	jmp    *0x2fcc(%rip)        # 3ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <pow@plt>:
    1030:	ff 25 ca 2f 00 00    	jmp    *0x2fca(%rip)        # 4000 <pow@GLIBC_2.29>
    1036:	68 00 00 00 00       	push   $0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001040 <printf@plt>:
    1040:	ff 25 c2 2f 00 00    	jmp    *0x2fc2(%rip)        # 4008 <printf@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	push   $0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .plt.got:

0000000000001050 <__cxa_finalize@plt>:
    1050:	ff 25 8a 2f 00 00    	jmp    *0x2f8a(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    1056:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000001060 <_start>:
    1060:	f3 0f 1e fa          	endbr64
    1064:	31 ed                	xor    %ebp,%ebp
    1066:	49 89 d1             	mov    %rdx,%r9
    1069:	5e                   	pop    %rsi
    106a:	48 89 e2             	mov    %rsp,%rdx
    106d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1071:	50                   	push   %rax
    1072:	54                   	push   %rsp
    1073:	45 31 c0             	xor    %r8d,%r8d
    1076:	31 c9                	xor    %ecx,%ecx
    1078:	48 8d 3d 31 01 00 00 	lea    0x131(%rip),%rdi        # 11b0 <main>
    107f:	ff 15 3b 2f 00 00    	call   *0x2f3b(%rip)        # 3fc0 <__libc_start_main@GLIBC_2.34>
    1085:	f4                   	hlt
    1086:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    108d:	00 00 00 

0000000000001090 <deregister_tm_clones>:
    1090:	48 8d 3d 89 2f 00 00 	lea    0x2f89(%rip),%rdi        # 4020 <__TMC_END__>
    1097:	48 8d 05 82 2f 00 00 	lea    0x2f82(%rip),%rax        # 4020 <__TMC_END__>
    109e:	48 39 f8             	cmp    %rdi,%rax
    10a1:	74 15                	je     10b8 <deregister_tm_clones+0x28>
    10a3:	48 8b 05 1e 2f 00 00 	mov    0x2f1e(%rip),%rax        # 3fc8 <_ITM_deregisterTMCloneTable@Base>
    10aa:	48 85 c0             	test   %rax,%rax
    10ad:	74 09                	je     10b8 <deregister_tm_clones+0x28>
    10af:	ff e0                	jmp    *%rax
    10b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10b8:	c3                   	ret
    10b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010c0 <register_tm_clones>:
    10c0:	48 8d 3d 59 2f 00 00 	lea    0x2f59(%rip),%rdi        # 4020 <__TMC_END__>
    10c7:	48 8d 35 52 2f 00 00 	lea    0x2f52(%rip),%rsi        # 4020 <__TMC_END__>
    10ce:	48 29 fe             	sub    %rdi,%rsi
    10d1:	48 89 f0             	mov    %rsi,%rax
    10d4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    10d8:	48 c1 f8 03          	sar    $0x3,%rax
    10dc:	48 01 c6             	add    %rax,%rsi
    10df:	48 d1 fe             	sar    $1,%rsi
    10e2:	74 14                	je     10f8 <register_tm_clones+0x38>
    10e4:	48 8b 05 ed 2e 00 00 	mov    0x2eed(%rip),%rax        # 3fd8 <_ITM_registerTMCloneTable@Base>
    10eb:	48 85 c0             	test   %rax,%rax
    10ee:	74 08                	je     10f8 <register_tm_clones+0x38>
    10f0:	ff e0                	jmp    *%rax
    10f2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    10f8:	c3                   	ret
    10f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001100 <__do_global_dtors_aux>:
    1100:	f3 0f 1e fa          	endbr64
    1104:	80 3d 15 2f 00 00 00 	cmpb   $0x0,0x2f15(%rip)        # 4020 <__TMC_END__>
    110b:	75 2b                	jne    1138 <__do_global_dtors_aux+0x38>
    110d:	55                   	push   %rbp
    110e:	48 83 3d ca 2e 00 00 	cmpq   $0x0,0x2eca(%rip)        # 3fe0 <__cxa_finalize@GLIBC_2.2.5>
    1115:	00 
    1116:	48 89 e5             	mov    %rsp,%rbp
    1119:	74 0c                	je     1127 <__do_global_dtors_aux+0x27>
    111b:	48 8b 3d f6 2e 00 00 	mov    0x2ef6(%rip),%rdi        # 4018 <__dso_handle>
    1122:	e8 29 ff ff ff       	call   1050 <__cxa_finalize@plt>
    1127:	e8 64 ff ff ff       	call   1090 <deregister_tm_clones>
    112c:	c6 05 ed 2e 00 00 01 	movb   $0x1,0x2eed(%rip)        # 4020 <__TMC_END__>
    1133:	5d                   	pop    %rbp
    1134:	c3                   	ret
    1135:	0f 1f 00             	nopl   (%rax)
    1138:	c3                   	ret
    1139:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001140 <frame_dummy>:
    1140:	f3 0f 1e fa          	endbr64
    1144:	e9 77 ff ff ff       	jmp    10c0 <register_tm_clones>
    1149:	0f 1f 00             	nopl   (%rax)
    114c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001150 <fib_binet>:
    1150:	50                   	push   %rax
    1151:	c4 e1 f9 6e c7       	vmovq  %rdi,%xmm0
    1156:	c5 f9 62 05 b2 0e 00 	vpunpckldq 0xeb2(%rip),%xmm0,%xmm0        # 2010 <_IO_stdin_used+0x10>
    115d:	00 
    115e:	c5 f9 5c 05 ba 0e 00 	vsubpd 0xeba(%rip),%xmm0,%xmm0        # 2020 <_IO_stdin_used+0x20>
    1165:	00 
    1166:	c5 f9 c6 c8 01       	vshufpd $0x1,%xmm0,%xmm0,%xmm1
    116b:	c5 f3 58 c8          	vaddsd %xmm0,%xmm1,%xmm1
    116f:	c5 fb 10 05 b9 0e 00 	vmovsd 0xeb9(%rip),%xmm0        # 2030 <_IO_stdin_used+0x30>
    1176:	00 
    1177:	e8 b4 fe ff ff       	call   1030 <pow@plt>
    117c:	c5 fb 10 0d b4 0e 00 	vmovsd 0xeb4(%rip),%xmm1        # 2038 <_IO_stdin_used+0x38>
    1183:	00 
    1184:	c4 e2 f9 a9 0d b3 0e 	vfmadd213sd 0xeb3(%rip),%xmm0,%xmm1        # 2040 <_IO_stdin_used+0x40>
    118b:	00 00 
    118d:	c5 f3 5c 05 b3 0e 00 	vsubsd 0xeb3(%rip),%xmm1,%xmm0        # 2048 <_IO_stdin_used+0x48>
    1194:	00 
    1195:	c4 e1 fb 2c c9       	vcvttsd2si %xmm1,%rcx
    119a:	c4 e1 fb 2c c0       	vcvttsd2si %xmm0,%rax
    119f:	48 89 ca             	mov    %rcx,%rdx
    11a2:	48 c1 fa 3f          	sar    $0x3f,%rdx
    11a6:	48 21 d0             	and    %rdx,%rax
    11a9:	48 09 c8             	or     %rcx,%rax
    11ac:	59                   	pop    %rcx
    11ad:	c3                   	ret
    11ae:	66 90                	xchg   %ax,%ax

00000000000011b0 <main>:
    11b0:	41 57                	push   %r15
    11b2:	41 56                	push   %r14
    11b4:	41 54                	push   %r12
    11b6:	53                   	push   %rbx
    11b7:	50                   	push   %rax
    11b8:	41 bf 80 96 98 00    	mov    $0x989680,%r15d
    11be:	49 bc 13 ad b0 39 90 	movabs $0xcd85689039b0ad13,%r12
    11c5:	68 85 cd 
    11c8:	31 db                	xor    %ebx,%ebx
    11ca:	45 31 f6             	xor    %r14d,%r14d
    11cd:	0f 1f 00             	nopl   (%rax)
    11d0:	4c 89 f2             	mov    %r14,%rdx
    11d3:	c4 c2 fb f6 c4       	mulx   %r12,%rax,%rax
    11d8:	4c 89 f1             	mov    %r14,%rcx
    11db:	4c 89 f7             	mov    %r14,%rdi
    11de:	48 29 c1             	sub    %rax,%rcx
    11e1:	48 d1 e9             	shr    $1,%rcx
    11e4:	48 01 c1             	add    %rax,%rcx
    11e7:	48 c1 e9 06          	shr    $0x6,%rcx
    11eb:	48 6b c1 47          	imul   $0x47,%rcx,%rax
    11ef:	48 29 c7             	sub    %rax,%rdi
    11f2:	e8 59 ff ff ff       	call   1150 <fib_binet>
    11f7:	48 01 c3             	add    %rax,%rbx
    11fa:	49 ff c6             	inc    %r14
    11fd:	49 ff cf             	dec    %r15
    1200:	75 ce                	jne    11d0 <main+0x20>
    1202:	48 8d 3d 47 0e 00 00 	lea    0xe47(%rip),%rdi        # 2050 <_IO_stdin_used+0x50>
    1209:	48 89 de             	mov    %rbx,%rsi
    120c:	31 c0                	xor    %eax,%eax
    120e:	e8 2d fe ff ff       	call   1040 <printf@plt>
    1213:	31 c0                	xor    %eax,%eax
    1215:	48 83 c4 08          	add    $0x8,%rsp
    1219:	5b                   	pop    %rbx
    121a:	41 5c                	pop    %r12
    121c:	41 5e                	pop    %r14
    121e:	41 5f                	pop    %r15
    1220:	c3                   	ret

Disassembly of section .fini:

0000000000001224 <_fini>:
    1224:	f3 0f 1e fa          	endbr64
    1228:	48 83 ec 08          	sub    $0x8,%rsp
    122c:	48 83 c4 08          	add    $0x8,%rsp
    1230:	c3                   	ret
