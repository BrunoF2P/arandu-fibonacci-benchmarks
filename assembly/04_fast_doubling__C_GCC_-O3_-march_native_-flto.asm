; Benchmark: 04_fast_doubling
; Implementação: C (GCC -O3 -march=native -flto)
; Executável: /workspaces/arandu-fibonacci-benchmarks/build/04_fast_doubling/c_gcc
; Comando: /usr/bin/objdump -d -C /workspaces/arandu-fibonacci-benchmarks/build/04_fast_doubling/c_gcc


/workspaces/arandu-fibonacci-benchmarks/build/04_fast_doubling/c_gcc:     file format elf64-x86-64


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
    1064:	4c 63 d7             	movslq %edi,%r10
    1067:	48 83 ec 08          	sub    $0x8,%rsp
    106b:	45 31 c9             	xor    %r9d,%r9d
    106e:	45 31 db             	xor    %r11d,%r11d
    1071:	49 83 c2 59          	add    $0x59,%r10
    1075:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    107c:	00 00 00 00 
    1080:	4c 89 cf             	mov    %r9,%rdi
    1083:	83 e7 03             	and    $0x3,%edi
    1086:	4c 01 d7             	add    %r10,%rdi
    1089:	74 55                	je     10e0 <main+0x80>
    108b:	ba 40 00 00 00       	mov    $0x40,%edx
    1090:	48 83 ff 3f          	cmp    $0x3f,%rdi
    1094:	77 12                	ja     10a8 <main+0x48>
    1096:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    109d:	00 00 00 
    10a0:	48 d1 ea             	shr    $1,%rdx
    10a3:	48 39 d7             	cmp    %rdx,%rdi
    10a6:	72 f8                	jb     10a0 <main+0x40>
    10a8:	31 c9                	xor    %ecx,%ecx
    10aa:	b8 01 00 00 00       	mov    $0x1,%eax
    10af:	90                   	nop
    10b0:	49 89 c8             	mov    %rcx,%r8
    10b3:	48 8d 34 00          	lea    (%rax,%rax,1),%rsi
    10b7:	4c 0f af c1          	imul   %rcx,%r8
    10bb:	48 29 ce             	sub    %rcx,%rsi
    10be:	48 0f af c0          	imul   %rax,%rax
    10c2:	48 0f af ce          	imul   %rsi,%rcx
    10c6:	4c 01 c0             	add    %r8,%rax
    10c9:	48 85 d7             	test   %rdx,%rdi
    10cc:	74 0a                	je     10d8 <main+0x78>
    10ce:	48 8d 34 08          	lea    (%rax,%rcx,1),%rsi
    10d2:	48 89 c1             	mov    %rax,%rcx
    10d5:	48 89 f0             	mov    %rsi,%rax
    10d8:	48 d1 ea             	shr    $1,%rdx
    10db:	75 d3                	jne    10b0 <main+0x50>
    10dd:	49 01 cb             	add    %rcx,%r11
    10e0:	49 ff c1             	inc    %r9
    10e3:	49 81 f9 80 96 98 00 	cmp    $0x989680,%r9
    10ea:	75 94                	jne    1080 <main+0x20>
    10ec:	4c 89 da             	mov    %r11,%rdx
    10ef:	48 8d 35 0e 0f 00 00 	lea    0xf0e(%rip),%rsi        # 2004 <_IO_stdin_used+0x4>
    10f6:	bf 02 00 00 00       	mov    $0x2,%edi
    10fb:	31 c0                	xor    %eax,%eax
    10fd:	e8 4e ff ff ff       	call   1050 <__printf_chk@plt>
    1102:	31 c0                	xor    %eax,%eax
    1104:	48 83 c4 08          	add    $0x8,%rsp
    1108:	c3                   	ret
    1109:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001110 <_start>:
    1110:	f3 0f 1e fa          	endbr64
    1114:	31 ed                	xor    %ebp,%ebp
    1116:	49 89 d1             	mov    %rdx,%r9
    1119:	5e                   	pop    %rsi
    111a:	48 89 e2             	mov    %rsp,%rdx
    111d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1121:	50                   	push   %rax
    1122:	54                   	push   %rsp
    1123:	45 31 c0             	xor    %r8d,%r8d
    1126:	31 c9                	xor    %ecx,%ecx
    1128:	48 8d 3d 31 ff ff ff 	lea    -0xcf(%rip),%rdi        # 1060 <main>
    112f:	ff 15 a3 2e 00 00    	call   *0x2ea3(%rip)        # 3fd8 <__libc_start_main@GLIBC_2.34>
    1135:	f4                   	hlt
    1136:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    113d:	00 00 00 

0000000000001140 <deregister_tm_clones>:
    1140:	48 8d 3d c9 2e 00 00 	lea    0x2ec9(%rip),%rdi        # 4010 <__TMC_END__>
    1147:	48 8d 05 c2 2e 00 00 	lea    0x2ec2(%rip),%rax        # 4010 <__TMC_END__>
    114e:	48 39 f8             	cmp    %rdi,%rax
    1151:	74 15                	je     1168 <deregister_tm_clones+0x28>
    1153:	48 8b 05 86 2e 00 00 	mov    0x2e86(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    115a:	48 85 c0             	test   %rax,%rax
    115d:	74 09                	je     1168 <deregister_tm_clones+0x28>
    115f:	ff e0                	jmp    *%rax
    1161:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1168:	c3                   	ret
    1169:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001170 <register_tm_clones>:
    1170:	48 8d 3d 99 2e 00 00 	lea    0x2e99(%rip),%rdi        # 4010 <__TMC_END__>
    1177:	48 8d 35 92 2e 00 00 	lea    0x2e92(%rip),%rsi        # 4010 <__TMC_END__>
    117e:	48 29 fe             	sub    %rdi,%rsi
    1181:	48 89 f0             	mov    %rsi,%rax
    1184:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1188:	48 c1 f8 03          	sar    $0x3,%rax
    118c:	48 01 c6             	add    %rax,%rsi
    118f:	48 d1 fe             	sar    $1,%rsi
    1192:	74 14                	je     11a8 <register_tm_clones+0x38>
    1194:	48 8b 05 55 2e 00 00 	mov    0x2e55(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    119b:	48 85 c0             	test   %rax,%rax
    119e:	74 08                	je     11a8 <register_tm_clones+0x38>
    11a0:	ff e0                	jmp    *%rax
    11a2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    11a8:	c3                   	ret
    11a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011b0 <__do_global_dtors_aux>:
    11b0:	f3 0f 1e fa          	endbr64
    11b4:	80 3d 55 2e 00 00 00 	cmpb   $0x0,0x2e55(%rip)        # 4010 <__TMC_END__>
    11bb:	75 2b                	jne    11e8 <__do_global_dtors_aux+0x38>
    11bd:	55                   	push   %rbp
    11be:	48 83 3d 32 2e 00 00 	cmpq   $0x0,0x2e32(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    11c5:	00 
    11c6:	48 89 e5             	mov    %rsp,%rbp
    11c9:	74 0c                	je     11d7 <__do_global_dtors_aux+0x27>
    11cb:	48 8b 3d 36 2e 00 00 	mov    0x2e36(%rip),%rdi        # 4008 <__dso_handle>
    11d2:	e8 69 fe ff ff       	call   1040 <__cxa_finalize@plt>
    11d7:	e8 64 ff ff ff       	call   1140 <deregister_tm_clones>
    11dc:	c6 05 2d 2e 00 00 01 	movb   $0x1,0x2e2d(%rip)        # 4010 <__TMC_END__>
    11e3:	5d                   	pop    %rbp
    11e4:	c3                   	ret
    11e5:	0f 1f 00             	nopl   (%rax)
    11e8:	c3                   	ret
    11e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011f0 <frame_dummy>:
    11f0:	f3 0f 1e fa          	endbr64
    11f4:	e9 77 ff ff ff       	jmp    1170 <register_tm_clones>

Disassembly of section .fini:

00000000000011fc <_fini>:
    11fc:	f3 0f 1e fa          	endbr64
    1200:	48 83 ec 08          	sub    $0x8,%rsp
    1204:	48 83 c4 08          	add    $0x8,%rsp
    1208:	c3                   	ret
