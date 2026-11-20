; Benchmark: 05_comptime_ctfe
; Implementação: C (GCC -O3 -march=native -flto)
; Executável: /workspaces/arandu-fibonacci-benchmarks/build/05_comptime_ctfe/c_gcc
; Comando: /usr/bin/objdump -d -C /workspaces/arandu-fibonacci-benchmarks/build/05_comptime_ctfe/c_gcc


/workspaces/arandu-fibonacci-benchmarks/build/05_comptime_ctfe/c_gcc:     file format elf64-x86-64


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
    1064:	48 63 f7             	movslq %edi,%rsi
    1067:	48 83 ec 08          	sub    $0x8,%rsp
    106b:	31 d2                	xor    %edx,%edx
    106d:	48 8d 3d ac 0f 00 00 	lea    0xfac(%rip),%rdi        # 2020 <FIB_TABLE>
    1074:	48 8d 46 ff          	lea    -0x1(%rsi),%rax
    1078:	48 81 c6 7f 96 98 00 	add    $0x98967f,%rsi
    107f:	90                   	nop
    1080:	48 89 c1             	mov    %rax,%rcx
    1083:	48 ff c0             	inc    %rax
    1086:	83 e1 03             	and    $0x3,%ecx
    1089:	48 03 14 cf          	add    (%rdi,%rcx,8),%rdx
    108d:	48 39 c6             	cmp    %rax,%rsi
    1090:	75 ee                	jne    1080 <main+0x20>
    1092:	48 8d 35 6b 0f 00 00 	lea    0xf6b(%rip),%rsi        # 2004 <_IO_stdin_used+0x4>
    1099:	bf 02 00 00 00       	mov    $0x2,%edi
    109e:	31 c0                	xor    %eax,%eax
    10a0:	e8 ab ff ff ff       	call   1050 <__printf_chk@plt>
    10a5:	31 c0                	xor    %eax,%eax
    10a7:	48 83 c4 08          	add    $0x8,%rsp
    10ab:	c3                   	ret
    10ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000010b0 <_start>:
    10b0:	f3 0f 1e fa          	endbr64
    10b4:	31 ed                	xor    %ebp,%ebp
    10b6:	49 89 d1             	mov    %rdx,%r9
    10b9:	5e                   	pop    %rsi
    10ba:	48 89 e2             	mov    %rsp,%rdx
    10bd:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    10c1:	50                   	push   %rax
    10c2:	54                   	push   %rsp
    10c3:	45 31 c0             	xor    %r8d,%r8d
    10c6:	31 c9                	xor    %ecx,%ecx
    10c8:	48 8d 3d 91 ff ff ff 	lea    -0x6f(%rip),%rdi        # 1060 <main>
    10cf:	ff 15 03 2f 00 00    	call   *0x2f03(%rip)        # 3fd8 <__libc_start_main@GLIBC_2.34>
    10d5:	f4                   	hlt
    10d6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    10dd:	00 00 00 

00000000000010e0 <deregister_tm_clones>:
    10e0:	48 8d 3d 29 2f 00 00 	lea    0x2f29(%rip),%rdi        # 4010 <__TMC_END__>
    10e7:	48 8d 05 22 2f 00 00 	lea    0x2f22(%rip),%rax        # 4010 <__TMC_END__>
    10ee:	48 39 f8             	cmp    %rdi,%rax
    10f1:	74 15                	je     1108 <deregister_tm_clones+0x28>
    10f3:	48 8b 05 e6 2e 00 00 	mov    0x2ee6(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    10fa:	48 85 c0             	test   %rax,%rax
    10fd:	74 09                	je     1108 <deregister_tm_clones+0x28>
    10ff:	ff e0                	jmp    *%rax
    1101:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1108:	c3                   	ret
    1109:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001110 <register_tm_clones>:
    1110:	48 8d 3d f9 2e 00 00 	lea    0x2ef9(%rip),%rdi        # 4010 <__TMC_END__>
    1117:	48 8d 35 f2 2e 00 00 	lea    0x2ef2(%rip),%rsi        # 4010 <__TMC_END__>
    111e:	48 29 fe             	sub    %rdi,%rsi
    1121:	48 89 f0             	mov    %rsi,%rax
    1124:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1128:	48 c1 f8 03          	sar    $0x3,%rax
    112c:	48 01 c6             	add    %rax,%rsi
    112f:	48 d1 fe             	sar    $1,%rsi
    1132:	74 14                	je     1148 <register_tm_clones+0x38>
    1134:	48 8b 05 b5 2e 00 00 	mov    0x2eb5(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    113b:	48 85 c0             	test   %rax,%rax
    113e:	74 08                	je     1148 <register_tm_clones+0x38>
    1140:	ff e0                	jmp    *%rax
    1142:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1148:	c3                   	ret
    1149:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001150 <__do_global_dtors_aux>:
    1150:	f3 0f 1e fa          	endbr64
    1154:	80 3d b5 2e 00 00 00 	cmpb   $0x0,0x2eb5(%rip)        # 4010 <__TMC_END__>
    115b:	75 2b                	jne    1188 <__do_global_dtors_aux+0x38>
    115d:	55                   	push   %rbp
    115e:	48 83 3d 92 2e 00 00 	cmpq   $0x0,0x2e92(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1165:	00 
    1166:	48 89 e5             	mov    %rsp,%rbp
    1169:	74 0c                	je     1177 <__do_global_dtors_aux+0x27>
    116b:	48 8b 3d 96 2e 00 00 	mov    0x2e96(%rip),%rdi        # 4008 <__dso_handle>
    1172:	e8 c9 fe ff ff       	call   1040 <__cxa_finalize@plt>
    1177:	e8 64 ff ff ff       	call   10e0 <deregister_tm_clones>
    117c:	c6 05 8d 2e 00 00 01 	movb   $0x1,0x2e8d(%rip)        # 4010 <__TMC_END__>
    1183:	5d                   	pop    %rbp
    1184:	c3                   	ret
    1185:	0f 1f 00             	nopl   (%rax)
    1188:	c3                   	ret
    1189:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001190 <frame_dummy>:
    1190:	f3 0f 1e fa          	endbr64
    1194:	e9 77 ff ff ff       	jmp    1110 <register_tm_clones>

Disassembly of section .fini:

000000000000119c <_fini>:
    119c:	f3 0f 1e fa          	endbr64
    11a0:	48 83 ec 08          	sub    $0x8,%rsp
    11a4:	48 83 c4 08          	add    $0x8,%rsp
    11a8:	c3                   	ret
