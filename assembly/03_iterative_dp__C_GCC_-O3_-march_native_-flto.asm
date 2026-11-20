; Benchmark: 03_iterative_dp
; Implementação: C (GCC -O3 -march=native -flto)
; Executável: /workspaces/arandu-fibonacci-benchmarks/build/03_iterative_dp/c_gcc
; Comando: /usr/bin/objdump -d -C /workspaces/arandu-fibonacci-benchmarks/build/03_iterative_dp/c_gcc


/workspaces/arandu-fibonacci-benchmarks/build/03_iterative_dp/c_gcc:     file format elf64-x86-64


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
    1064:	4c 63 cf             	movslq %edi,%r9
    1067:	48 83 ec 08          	sub    $0x8,%rsp
    106b:	45 31 c0             	xor    %r8d,%r8d
    106e:	45 31 d2             	xor    %r10d,%r10d
    1071:	49 83 c1 59          	add    $0x59,%r9
    1075:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    107c:	00 00 00 00 
    1080:	4c 89 c7             	mov    %r8,%rdi
    1083:	83 e7 03             	and    $0x3,%edi
    1086:	4c 01 cf             	add    %r9,%rdi
    1089:	74 29                	je     10b4 <main+0x54>
    108b:	31 d2                	xor    %edx,%edx
    108d:	b8 01 00 00 00       	mov    $0x1,%eax
    1092:	31 c9                	xor    %ecx,%ecx
    1094:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    109b:	00 00 00 00 
    109f:	90                   	nop
    10a0:	48 89 c6             	mov    %rax,%rsi
    10a3:	48 ff c2             	inc    %rdx
    10a6:	48 01 c8             	add    %rcx,%rax
    10a9:	48 89 f1             	mov    %rsi,%rcx
    10ac:	48 39 d7             	cmp    %rdx,%rdi
    10af:	75 ef                	jne    10a0 <main+0x40>
    10b1:	49 01 f2             	add    %rsi,%r10
    10b4:	49 ff c0             	inc    %r8
    10b7:	49 81 f8 80 96 98 00 	cmp    $0x989680,%r8
    10be:	75 c0                	jne    1080 <main+0x20>
    10c0:	4c 89 d2             	mov    %r10,%rdx
    10c3:	48 8d 35 3a 0f 00 00 	lea    0xf3a(%rip),%rsi        # 2004 <_IO_stdin_used+0x4>
    10ca:	bf 02 00 00 00       	mov    $0x2,%edi
    10cf:	31 c0                	xor    %eax,%eax
    10d1:	e8 7a ff ff ff       	call   1050 <__printf_chk@plt>
    10d6:	31 c0                	xor    %eax,%eax
    10d8:	48 83 c4 08          	add    $0x8,%rsp
    10dc:	c3                   	ret
    10dd:	0f 1f 00             	nopl   (%rax)

00000000000010e0 <_start>:
    10e0:	f3 0f 1e fa          	endbr64
    10e4:	31 ed                	xor    %ebp,%ebp
    10e6:	49 89 d1             	mov    %rdx,%r9
    10e9:	5e                   	pop    %rsi
    10ea:	48 89 e2             	mov    %rsp,%rdx
    10ed:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    10f1:	50                   	push   %rax
    10f2:	54                   	push   %rsp
    10f3:	45 31 c0             	xor    %r8d,%r8d
    10f6:	31 c9                	xor    %ecx,%ecx
    10f8:	48 8d 3d 61 ff ff ff 	lea    -0x9f(%rip),%rdi        # 1060 <main>
    10ff:	ff 15 d3 2e 00 00    	call   *0x2ed3(%rip)        # 3fd8 <__libc_start_main@GLIBC_2.34>
    1105:	f4                   	hlt
    1106:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    110d:	00 00 00 

0000000000001110 <deregister_tm_clones>:
    1110:	48 8d 3d f9 2e 00 00 	lea    0x2ef9(%rip),%rdi        # 4010 <__TMC_END__>
    1117:	48 8d 05 f2 2e 00 00 	lea    0x2ef2(%rip),%rax        # 4010 <__TMC_END__>
    111e:	48 39 f8             	cmp    %rdi,%rax
    1121:	74 15                	je     1138 <deregister_tm_clones+0x28>
    1123:	48 8b 05 b6 2e 00 00 	mov    0x2eb6(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    112a:	48 85 c0             	test   %rax,%rax
    112d:	74 09                	je     1138 <deregister_tm_clones+0x28>
    112f:	ff e0                	jmp    *%rax
    1131:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1138:	c3                   	ret
    1139:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001140 <register_tm_clones>:
    1140:	48 8d 3d c9 2e 00 00 	lea    0x2ec9(%rip),%rdi        # 4010 <__TMC_END__>
    1147:	48 8d 35 c2 2e 00 00 	lea    0x2ec2(%rip),%rsi        # 4010 <__TMC_END__>
    114e:	48 29 fe             	sub    %rdi,%rsi
    1151:	48 89 f0             	mov    %rsi,%rax
    1154:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1158:	48 c1 f8 03          	sar    $0x3,%rax
    115c:	48 01 c6             	add    %rax,%rsi
    115f:	48 d1 fe             	sar    $1,%rsi
    1162:	74 14                	je     1178 <register_tm_clones+0x38>
    1164:	48 8b 05 85 2e 00 00 	mov    0x2e85(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    116b:	48 85 c0             	test   %rax,%rax
    116e:	74 08                	je     1178 <register_tm_clones+0x38>
    1170:	ff e0                	jmp    *%rax
    1172:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1178:	c3                   	ret
    1179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001180 <__do_global_dtors_aux>:
    1180:	f3 0f 1e fa          	endbr64
    1184:	80 3d 85 2e 00 00 00 	cmpb   $0x0,0x2e85(%rip)        # 4010 <__TMC_END__>
    118b:	75 2b                	jne    11b8 <__do_global_dtors_aux+0x38>
    118d:	55                   	push   %rbp
    118e:	48 83 3d 62 2e 00 00 	cmpq   $0x0,0x2e62(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1195:	00 
    1196:	48 89 e5             	mov    %rsp,%rbp
    1199:	74 0c                	je     11a7 <__do_global_dtors_aux+0x27>
    119b:	48 8b 3d 66 2e 00 00 	mov    0x2e66(%rip),%rdi        # 4008 <__dso_handle>
    11a2:	e8 99 fe ff ff       	call   1040 <__cxa_finalize@plt>
    11a7:	e8 64 ff ff ff       	call   1110 <deregister_tm_clones>
    11ac:	c6 05 5d 2e 00 00 01 	movb   $0x1,0x2e5d(%rip)        # 4010 <__TMC_END__>
    11b3:	5d                   	pop    %rbp
    11b4:	c3                   	ret
    11b5:	0f 1f 00             	nopl   (%rax)
    11b8:	c3                   	ret
    11b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011c0 <frame_dummy>:
    11c0:	f3 0f 1e fa          	endbr64
    11c4:	e9 77 ff ff ff       	jmp    1140 <register_tm_clones>

Disassembly of section .fini:

00000000000011cc <_fini>:
    11cc:	f3 0f 1e fa          	endbr64
    11d0:	48 83 ec 08          	sub    $0x8,%rsp
    11d4:	48 83 c4 08          	add    $0x8,%rsp
    11d8:	c3                   	ret
