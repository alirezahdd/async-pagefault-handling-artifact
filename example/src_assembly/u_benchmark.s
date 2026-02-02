
u_benchmark:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
  401000:	f3 0f 1e fa          	endbr64 
  401004:	48 83 ec 08          	sub    $0x8,%rsp
  401008:	48 8b 05 e1 5f 00 00 	mov    0x5fe1(%rip),%rax        # 406ff0 <__gmon_start__>
  40100f:	48 85 c0             	test   %rax,%rax
  401012:	74 02                	je     401016 <_init+0x16>
  401014:	ff d0                	callq  *%rax
  401016:	48 83 c4 08          	add    $0x8,%rsp
  40101a:	c3                   	retq   

Disassembly of section .plt:

0000000000401020 <.plt>:
  401020:	ff 35 e2 5f 00 00    	pushq  0x5fe2(%rip)        # 407008 <_GLOBAL_OFFSET_TABLE_+0x8>
  401026:	f2 ff 25 e3 5f 00 00 	bnd jmpq *0x5fe3(%rip)        # 407010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40102d:	0f 1f 00             	nopl   (%rax)
  401030:	f3 0f 1e fa          	endbr64 
  401034:	68 00 00 00 00       	pushq  $0x0
  401039:	f2 e9 e1 ff ff ff    	bnd jmpq 401020 <.plt>
  40103f:	90                   	nop
  401040:	f3 0f 1e fa          	endbr64 
  401044:	68 01 00 00 00       	pushq  $0x1
  401049:	f2 e9 d1 ff ff ff    	bnd jmpq 401020 <.plt>
  40104f:	90                   	nop
  401050:	f3 0f 1e fa          	endbr64 
  401054:	68 02 00 00 00       	pushq  $0x2
  401059:	f2 e9 c1 ff ff ff    	bnd jmpq 401020 <.plt>
  40105f:	90                   	nop
  401060:	f3 0f 1e fa          	endbr64 
  401064:	68 03 00 00 00       	pushq  $0x3
  401069:	f2 e9 b1 ff ff ff    	bnd jmpq 401020 <.plt>
  40106f:	90                   	nop
  401070:	f3 0f 1e fa          	endbr64 
  401074:	68 04 00 00 00       	pushq  $0x4
  401079:	f2 e9 a1 ff ff ff    	bnd jmpq 401020 <.plt>
  40107f:	90                   	nop
  401080:	f3 0f 1e fa          	endbr64 
  401084:	68 05 00 00 00       	pushq  $0x5
  401089:	f2 e9 91 ff ff ff    	bnd jmpq 401020 <.plt>
  40108f:	90                   	nop
  401090:	f3 0f 1e fa          	endbr64 
  401094:	68 06 00 00 00       	pushq  $0x6
  401099:	f2 e9 81 ff ff ff    	bnd jmpq 401020 <.plt>
  40109f:	90                   	nop
  4010a0:	f3 0f 1e fa          	endbr64 
  4010a4:	68 07 00 00 00       	pushq  $0x7
  4010a9:	f2 e9 71 ff ff ff    	bnd jmpq 401020 <.plt>
  4010af:	90                   	nop
  4010b0:	f3 0f 1e fa          	endbr64 
  4010b4:	68 08 00 00 00       	pushq  $0x8
  4010b9:	f2 e9 61 ff ff ff    	bnd jmpq 401020 <.plt>
  4010bf:	90                   	nop
  4010c0:	f3 0f 1e fa          	endbr64 
  4010c4:	68 09 00 00 00       	pushq  $0x9
  4010c9:	f2 e9 51 ff ff ff    	bnd jmpq 401020 <.plt>
  4010cf:	90                   	nop
  4010d0:	f3 0f 1e fa          	endbr64 
  4010d4:	68 0a 00 00 00       	pushq  $0xa
  4010d9:	f2 e9 41 ff ff ff    	bnd jmpq 401020 <.plt>
  4010df:	90                   	nop
  4010e0:	f3 0f 1e fa          	endbr64 
  4010e4:	68 0b 00 00 00       	pushq  $0xb
  4010e9:	f2 e9 31 ff ff ff    	bnd jmpq 401020 <.plt>
  4010ef:	90                   	nop
  4010f0:	f3 0f 1e fa          	endbr64 
  4010f4:	68 0c 00 00 00       	pushq  $0xc
  4010f9:	f2 e9 21 ff ff ff    	bnd jmpq 401020 <.plt>
  4010ff:	90                   	nop
  401100:	f3 0f 1e fa          	endbr64 
  401104:	68 0d 00 00 00       	pushq  $0xd
  401109:	f2 e9 11 ff ff ff    	bnd jmpq 401020 <.plt>
  40110f:	90                   	nop
  401110:	f3 0f 1e fa          	endbr64 
  401114:	68 0e 00 00 00       	pushq  $0xe
  401119:	f2 e9 01 ff ff ff    	bnd jmpq 401020 <.plt>
  40111f:	90                   	nop
  401120:	f3 0f 1e fa          	endbr64 
  401124:	68 0f 00 00 00       	pushq  $0xf
  401129:	f2 e9 f1 fe ff ff    	bnd jmpq 401020 <.plt>
  40112f:	90                   	nop
  401130:	f3 0f 1e fa          	endbr64 
  401134:	68 10 00 00 00       	pushq  $0x10
  401139:	f2 e9 e1 fe ff ff    	bnd jmpq 401020 <.plt>
  40113f:	90                   	nop
  401140:	f3 0f 1e fa          	endbr64 
  401144:	68 11 00 00 00       	pushq  $0x11
  401149:	f2 e9 d1 fe ff ff    	bnd jmpq 401020 <.plt>
  40114f:	90                   	nop
  401150:	f3 0f 1e fa          	endbr64 
  401154:	68 12 00 00 00       	pushq  $0x12
  401159:	f2 e9 c1 fe ff ff    	bnd jmpq 401020 <.plt>
  40115f:	90                   	nop
  401160:	f3 0f 1e fa          	endbr64 
  401164:	68 13 00 00 00       	pushq  $0x13
  401169:	f2 e9 b1 fe ff ff    	bnd jmpq 401020 <.plt>
  40116f:	90                   	nop
  401170:	f3 0f 1e fa          	endbr64 
  401174:	68 14 00 00 00       	pushq  $0x14
  401179:	f2 e9 a1 fe ff ff    	bnd jmpq 401020 <.plt>
  40117f:	90                   	nop

Disassembly of section .plt.sec:

0000000000401180 <printf@plt>:
  401180:	f3 0f 1e fa          	endbr64 
  401184:	f2 ff 25 8d 5e 00 00 	bnd jmpq *0x5e8d(%rip)        # 407018 <printf@GLIBC_2.2.5>
  40118b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401190 <syscall@plt>:
  401190:	f3 0f 1e fa          	endbr64 
  401194:	f2 ff 25 85 5e 00 00 	bnd jmpq *0x5e85(%rip)        # 407020 <syscall@GLIBC_2.2.5>
  40119b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004011a0 <_ZSt17__throw_bad_allocv@plt>:
  4011a0:	f3 0f 1e fa          	endbr64 
  4011a4:	f2 ff 25 7d 5e 00 00 	bnd jmpq *0x5e7d(%rip)        # 407028 <_ZSt17__throw_bad_allocv@GLIBCXX_3.4>
  4011ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004011b0 <__cxa_begin_catch@plt>:
  4011b0:	f3 0f 1e fa          	endbr64 
  4011b4:	f2 ff 25 75 5e 00 00 	bnd jmpq *0x5e75(%rip)        # 407030 <__cxa_begin_catch@CXXABI_1.3>
  4011bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004011c0 <_ZSt20__throw_length_errorPKc@plt>:
  4011c0:	f3 0f 1e fa          	endbr64 
  4011c4:	f2 ff 25 6d 5e 00 00 	bnd jmpq *0x5e6d(%rip)        # 407038 <_ZSt20__throw_length_errorPKc@GLIBCXX_3.4>
  4011cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004011d0 <munmap@plt>:
  4011d0:	f3 0f 1e fa          	endbr64 
  4011d4:	f2 ff 25 65 5e 00 00 	bnd jmpq *0x5e65(%rip)        # 407040 <munmap@GLIBC_2.2.5>
  4011db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004011e0 <__cxa_atexit@plt>:
  4011e0:	f3 0f 1e fa          	endbr64 
  4011e4:	f2 ff 25 5d 5e 00 00 	bnd jmpq *0x5e5d(%rip)        # 407048 <__cxa_atexit@GLIBC_2.2.5>
  4011eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004011f0 <_Znwm@plt>:
  4011f0:	f3 0f 1e fa          	endbr64 
  4011f4:	f2 ff 25 55 5e 00 00 	bnd jmpq *0x5e55(%rip)        # 407050 <_Znwm@GLIBCXX_3.4>
  4011fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401200 <_ZdlPvm@plt>:
  401200:	f3 0f 1e fa          	endbr64 
  401204:	f2 ff 25 4d 5e 00 00 	bnd jmpq *0x5e4d(%rip)        # 407058 <_ZdlPvm@CXXABI_1.3.9>
  40120b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401210 <__stack_chk_fail@plt>:
  401210:	f3 0f 1e fa          	endbr64 
  401214:	f2 ff 25 45 5e 00 00 	bnd jmpq *0x5e45(%rip)        # 407060 <__stack_chk_fail@GLIBC_2.4>
  40121b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401220 <free@plt>:
  401220:	f3 0f 1e fa          	endbr64 
  401224:	f2 ff 25 3d 5e 00 00 	bnd jmpq *0x5e3d(%rip)        # 407068 <free@GLIBC_2.2.5>
  40122b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401230 <malloc@plt>:
  401230:	f3 0f 1e fa          	endbr64 
  401234:	f2 ff 25 35 5e 00 00 	bnd jmpq *0x5e35(%rip)        # 407070 <malloc@GLIBC_2.2.5>
  40123b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401240 <mlock@plt>:
  401240:	f3 0f 1e fa          	endbr64 
  401244:	f2 ff 25 2d 5e 00 00 	bnd jmpq *0x5e2d(%rip)        # 407078 <mlock@GLIBC_2.2.5>
  40124b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401250 <__cxa_rethrow@plt>:
  401250:	f3 0f 1e fa          	endbr64 
  401254:	f2 ff 25 25 5e 00 00 	bnd jmpq *0x5e25(%rip)        # 407080 <__cxa_rethrow@CXXABI_1.3>
  40125b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401260 <_ZNSt8ios_base4InitC1Ev@plt>:
  401260:	f3 0f 1e fa          	endbr64 
  401264:	f2 ff 25 1d 5e 00 00 	bnd jmpq *0x5e1d(%rip)        # 407088 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
  40126b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401270 <puts@plt>:
  401270:	f3 0f 1e fa          	endbr64 
  401274:	f2 ff 25 15 5e 00 00 	bnd jmpq *0x5e15(%rip)        # 407090 <puts@GLIBC_2.2.5>
  40127b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401280 <memmove@plt>:
  401280:	f3 0f 1e fa          	endbr64 
  401284:	f2 ff 25 0d 5e 00 00 	bnd jmpq *0x5e0d(%rip)        # 407098 <memmove@GLIBC_2.2.5>
  40128b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401290 <__cxa_end_catch@plt>:
  401290:	f3 0f 1e fa          	endbr64 
  401294:	f2 ff 25 05 5e 00 00 	bnd jmpq *0x5e05(%rip)        # 4070a0 <__cxa_end_catch@CXXABI_1.3>
  40129b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004012a0 <_Unwind_Resume@plt>:
  4012a0:	f3 0f 1e fa          	endbr64 
  4012a4:	f2 ff 25 fd 5d 00 00 	bnd jmpq *0x5dfd(%rip)        # 4070a8 <_Unwind_Resume@GCC_3.0>
  4012ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004012b0 <mmap@plt>:
  4012b0:	f3 0f 1e fa          	endbr64 
  4012b4:	f2 ff 25 f5 5d 00 00 	bnd jmpq *0x5df5(%rip)        # 4070b0 <mmap@GLIBC_2.2.5>
  4012bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004012c0 <munlock@plt>:
  4012c0:	f3 0f 1e fa          	endbr64 
  4012c4:	f2 ff 25 ed 5d 00 00 	bnd jmpq *0x5ded(%rip)        # 4070b8 <munlock@GLIBC_2.2.5>
  4012cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

00000000004012d0 <_start>:
  4012d0:	f3 0f 1e fa          	endbr64 
  4012d4:	31 ed                	xor    %ebp,%ebp
  4012d6:	49 89 d1             	mov    %rdx,%r9
  4012d9:	5e                   	pop    %rsi
  4012da:	48 89 e2             	mov    %rsp,%rdx
  4012dd:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4012e1:	50                   	push   %rax
  4012e2:	54                   	push   %rsp
  4012e3:	49 c7 c0 d0 35 40 00 	mov    $0x4035d0,%r8
  4012ea:	48 c7 c1 60 35 40 00 	mov    $0x403560,%rcx
  4012f1:	48 c7 c7 35 15 40 00 	mov    $0x401535,%rdi
  4012f8:	ff 15 ea 5c 00 00    	callq  *0x5cea(%rip)        # 406fe8 <__libc_start_main@GLIBC_2.2.5>
  4012fe:	f4                   	hlt    
  4012ff:	90                   	nop

0000000000401300 <_dl_relocate_static_pie>:
  401300:	f3 0f 1e fa          	endbr64 
  401304:	c3                   	retq   
  401305:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40130c:	00 00 00 
  40130f:	90                   	nop

0000000000401310 <deregister_tm_clones>:
  401310:	b8 e8 70 40 00       	mov    $0x4070e8,%eax
  401315:	48 3d e8 70 40 00    	cmp    $0x4070e8,%rax
  40131b:	74 13                	je     401330 <deregister_tm_clones+0x20>
  40131d:	b8 00 00 00 00       	mov    $0x0,%eax
  401322:	48 85 c0             	test   %rax,%rax
  401325:	74 09                	je     401330 <deregister_tm_clones+0x20>
  401327:	bf e8 70 40 00       	mov    $0x4070e8,%edi
  40132c:	ff e0                	jmpq   *%rax
  40132e:	66 90                	xchg   %ax,%ax
  401330:	c3                   	retq   
  401331:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401338:	00 00 00 00 
  40133c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401340 <register_tm_clones>:
  401340:	be e8 70 40 00       	mov    $0x4070e8,%esi
  401345:	48 81 ee e8 70 40 00 	sub    $0x4070e8,%rsi
  40134c:	48 89 f0             	mov    %rsi,%rax
  40134f:	48 c1 ee 3f          	shr    $0x3f,%rsi
  401353:	48 c1 f8 03          	sar    $0x3,%rax
  401357:	48 01 c6             	add    %rax,%rsi
  40135a:	48 d1 fe             	sar    %rsi
  40135d:	74 11                	je     401370 <register_tm_clones+0x30>
  40135f:	b8 00 00 00 00       	mov    $0x0,%eax
  401364:	48 85 c0             	test   %rax,%rax
  401367:	74 07                	je     401370 <register_tm_clones+0x30>
  401369:	bf e8 70 40 00       	mov    $0x4070e8,%edi
  40136e:	ff e0                	jmpq   *%rax
  401370:	c3                   	retq   
  401371:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401378:	00 00 00 00 
  40137c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401380 <__do_global_dtors_aux>:
  401380:	f3 0f 1e fa          	endbr64 
  401384:	80 3d 65 5d 00 00 00 	cmpb   $0x0,0x5d65(%rip)        # 4070f0 <completed.0>
  40138b:	75 13                	jne    4013a0 <__do_global_dtors_aux+0x20>
  40138d:	55                   	push   %rbp
  40138e:	48 89 e5             	mov    %rsp,%rbp
  401391:	e8 7a ff ff ff       	callq  401310 <deregister_tm_clones>
  401396:	c6 05 53 5d 00 00 01 	movb   $0x1,0x5d53(%rip)        # 4070f0 <completed.0>
  40139d:	5d                   	pop    %rbp
  40139e:	c3                   	retq   
  40139f:	90                   	nop
  4013a0:	c3                   	retq   
  4013a1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4013a8:	00 00 00 00 
  4013ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004013b0 <frame_dummy>:
  4013b0:	f3 0f 1e fa          	endbr64 
  4013b4:	eb 8a                	jmp    401340 <register_tm_clones>

00000000004013b6 <_Z15process_madviseiPKvmim>:
 * PROCESS-MADVISE WRAPPER FUNCTIONS
 * ========================================================================== */
int pidfd;  // this is necessary for process_madvise
#define SYS_process_madvise 440
// #define SYS_pidfd_open 434   //it was defined somewhere else in the header files
int process_madvise(int pidfd, const void *addr, size_t length, int advice, unsigned long flags) {
  4013b6:	f3 0f 1e fa          	endbr64 
  4013ba:	55                   	push   %rbp
  4013bb:	48 89 e5             	mov    %rsp,%rbp
  4013be:	48 83 ec 20          	sub    $0x20,%rsp
  4013c2:	89 7d fc             	mov    %edi,-0x4(%rbp)
  4013c5:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  4013c9:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  4013cd:	89 4d f8             	mov    %ecx,-0x8(%rbp)
  4013d0:	4c 89 45 e0          	mov    %r8,-0x20(%rbp)
    return syscall(SYS_process_madvise, pidfd, addr, length, advice, flags);
  4013d4:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
  4013d8:	8b 75 f8             	mov    -0x8(%rbp),%esi
  4013db:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  4013df:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  4013e3:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4013e6:	49 89 f9             	mov    %rdi,%r9
  4013e9:	41 89 f0             	mov    %esi,%r8d
  4013ec:	89 c6                	mov    %eax,%esi
  4013ee:	bf b8 01 00 00       	mov    $0x1b8,%edi
  4013f3:	b8 00 00 00 00       	mov    $0x0,%eax
  4013f8:	e8 93 fd ff ff       	callq  401190 <syscall@plt>
}
  4013fd:	c9                   	leaveq 
  4013fe:	c3                   	retq   

00000000004013ff <_Z10pidfd_openij>:
int pidfd_open(pid_t pid, unsigned int flags) {
  4013ff:	f3 0f 1e fa          	endbr64 
  401403:	55                   	push   %rbp
  401404:	48 89 e5             	mov    %rsp,%rbp
  401407:	48 83 ec 10          	sub    $0x10,%rsp
  40140b:	89 7d fc             	mov    %edi,-0x4(%rbp)
  40140e:	89 75 f8             	mov    %esi,-0x8(%rbp)
    return syscall(SYS_pidfd_open, pid, flags);
  401411:	8b 55 f8             	mov    -0x8(%rbp),%edx
  401414:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401417:	89 c6                	mov    %eax,%esi
  401419:	bf b2 01 00 00       	mov    $0x1b2,%edi
  40141e:	b8 00 00 00 00       	mov    $0x0,%eax
  401423:	e8 68 fd ff ff       	callq  401190 <syscall@plt>
}
  401428:	c9                   	leaveq 
  401429:	c3                   	retq   

000000000040142a <_Z11clear_queuePFvR5stateE>:
    func(*rq_it);
  }
}

void clear_queue(void (*func)(state&))
{
  40142a:	f3 0f 1e fa          	endbr64 
  40142e:	55                   	push   %rbp
  40142f:	48 89 e5             	mov    %rsp,%rbp
  401432:	48 83 ec 10          	sub    $0x10,%rsp
  401436:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  pagein_queue(curr_queue);
  40143a:	48 8d 3d df 5c 00 00 	lea    0x5cdf(%rip),%rdi        # 407120 <curr_queue>
  401441:	e8 6d 05 00 00       	callq  4019b3 <_Z12pagein_queueRSt6vectorI5stateSaIS0_EE>
  resume_queue(shipped_queue,func);
  401446:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40144a:	48 89 c6             	mov    %rax,%rsi
  40144d:	48 8d 3d ec 5c 00 00 	lea    0x5cec(%rip),%rdi        # 407140 <shipped_queue>
  401454:	e8 5d 07 00 00       	callq  401bb6 <_Z12resume_queueRSt6vectorI5stateSaIS0_EEPFvRS0_E>
  resume_queue(curr_queue,func);
  401459:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40145d:	48 89 c6             	mov    %rax,%rsi
  401460:	48 8d 3d b9 5c 00 00 	lea    0x5cb9(%rip),%rdi        # 407120 <curr_queue>
  401467:	e8 4a 07 00 00       	callq  401bb6 <_Z12resume_queueRSt6vectorI5stateSaIS0_EEPFvRS0_E>
  curr_queue.clear();
  40146c:	48 8d 3d ad 5c 00 00 	lea    0x5cad(%rip),%rdi        # 407120 <curr_queue>
  401473:	e8 a0 0b 00 00       	callq  402018 <_ZNSt6vectorI5stateSaIS0_EE5clearEv>
  shipped_queue.clear();
  401478:	48 8d 3d c1 5c 00 00 	lea    0x5cc1(%rip),%rdi        # 407140 <shipped_queue>
  40147f:	e8 94 0b 00 00       	callq  402018 <_ZNSt6vectorI5stateSaIS0_EE5clearEv>
}
  401484:	90                   	nop
  401485:	c9                   	leaveq 
  401486:	c3                   	retq   

0000000000401487 <_Z18process_pagefaultsPFvR5stateE>:

void process_pagefaults(void (*func)(state&))
{
  401487:	f3 0f 1e fa          	endbr64 
  40148b:	55                   	push   %rbp
  40148c:	48 89 e5             	mov    %rsp,%rbp
  40148f:	48 83 ec 10          	sub    $0x10,%rsp
  401493:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  pagein_queue(curr_queue);  
  401497:	48 8d 3d 82 5c 00 00 	lea    0x5c82(%rip),%rdi        # 407120 <curr_queue>
  40149e:	e8 10 05 00 00       	callq  4019b3 <_Z12pagein_queueRSt6vectorI5stateSaIS0_EE>
  rotate_queues();
  4014a3:	e8 dd 06 00 00       	callq  401b85 <_Z13rotate_queuesv>
  // ready_queue size should be checked since at the begining there's nothing in it to resume
  if (ready_queue.size() != pagefault_queue_size)
  4014a8:	48 8d 3d b1 5c 00 00 	lea    0x5cb1(%rip),%rdi        # 407160 <ready_queue>
  4014af:	e8 8e 0b 00 00       	callq  402042 <_ZNKSt6vectorI5stateSaIS0_EE4sizeEv>
  4014b4:	48 8b 15 15 5c 00 00 	mov    0x5c15(%rip),%rdx        # 4070d0 <pagefault_queue_size>
  4014bb:	48 39 d0             	cmp    %rdx,%rax
  4014be:	0f 95 c0             	setne  %al
  4014c1:	84 c0                	test   %al,%al
  4014c3:	75 21                	jne    4014e6 <_Z18process_pagefaultsPFvR5stateE+0x5f>
    return;
  resume_queue(ready_queue, func);
  4014c5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4014c9:	48 89 c6             	mov    %rax,%rsi
  4014cc:	48 8d 3d 8d 5c 00 00 	lea    0x5c8d(%rip),%rdi        # 407160 <ready_queue>
  4014d3:	e8 de 06 00 00       	callq  401bb6 <_Z12resume_queueRSt6vectorI5stateSaIS0_EEPFvRS0_E>
  ready_queue.clear();
  4014d8:	48 8d 3d 81 5c 00 00 	lea    0x5c81(%rip),%rdi        # 407160 <ready_queue>
  4014df:	e8 34 0b 00 00       	callq  402018 <_ZNSt6vectorI5stateSaIS0_EE5clearEv>
  4014e4:	eb 01                	jmp    4014e7 <_Z18process_pagefaultsPFvR5stateE+0x60>
    return;
  4014e6:	90                   	nop
}
  4014e7:	c9                   	leaveq 
  4014e8:	c3                   	retq   

00000000004014e9 <_Z27prepare_try_catch_mechanismi>:
// syscall to register the page fault status array with the kernel
inline void register_pf_status_array(){
  syscall(550,pf_status_array,32*1024);
}

void prepare_try_catch_mechanism(int num_special_pcs){
  4014e9:	f3 0f 1e fa          	endbr64 
  4014ed:	55                   	push   %rbp
  4014ee:	48 89 e5             	mov    %rsp,%rbp
  4014f1:	48 83 ec 10          	sub    $0x10,%rsp
  4014f5:	89 7d fc             	mov    %edi,-0x4(%rbp)
  allocate_pf_status_array();
  4014f8:	e8 ac 07 00 00       	callq  401ca9 <_Z24allocate_pf_status_arrayv>
  register_pf_status_array();
  4014fd:	e8 42 08 00 00       	callq  401d44 <_Z24register_pf_status_arrayv>
  ips = (unsigned long *)malloc(num_special_pcs * sizeof(unsigned long));
  401502:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401505:	48 98                	cltq   
  401507:	48 c1 e0 03          	shl    $0x3,%rax
  40150b:	48 89 c7             	mov    %rax,%rdi
  40150e:	e8 1d fd ff ff       	callq  401230 <malloc@plt>
  401513:	48 89 05 5e 5c 00 00 	mov    %rax,0x5c5e(%rip)        # 407178 <ips>
  ret_ips = (unsigned long *)malloc(num_special_pcs * sizeof(unsigned long));
  40151a:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40151d:	48 98                	cltq   
  40151f:	48 c1 e0 03          	shl    $0x3,%rax
  401523:	48 89 c7             	mov    %rax,%rdi
  401526:	e8 05 fd ff ff       	callq  401230 <malloc@plt>
  40152b:	48 89 05 4e 5c 00 00 	mov    %rax,0x5c4e(%rip)        # 407180 <ret_ips>
}
  401532:	90                   	nop
  401533:	c9                   	leaveq 
  401534:	c3                   	retq   

0000000000401535 <main>:
#define MB (1024ULL * 1024)
#define SIZE (4 * MB)
#define PAGE_SIZE 4096
#define NUM_PAGES (SIZE / PAGE_SIZE)

int main(int argc, char *argv[]) {
  401535:	f3 0f 1e fa          	endbr64 
  401539:	55                   	push   %rbp
  40153a:	48 89 e5             	mov    %rsp,%rbp
  40153d:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
  401541:	89 7d 8c             	mov    %edi,-0x74(%rbp)
  401544:	48 89 75 80          	mov    %rsi,-0x80(%rbp)
  401548:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40154f:	00 00 
  401551:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401555:	31 c0                	xor    %eax,%eax
  // Allocate 4MB (1000 pages)
  char *memory = (char *)malloc(SIZE);
  401557:	bf 00 00 40 00       	mov    $0x400000,%edi
  40155c:	e8 cf fc ff ff       	callq  401230 <malloc@plt>
  401561:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  // initilize the array with pseudorandom data
  fill_memory_with_prng(memory, SIZE, 123456789u);
  401565:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  401569:	ba 15 cd 5b 07       	mov    $0x75bcd15,%edx
  40156e:	be 00 00 40 00       	mov    $0x400000,%esi
  401573:	48 89 c7             	mov    %rax,%rdi
  401576:	e8 fd 1a 00 00       	callq  403078 <_Z21fill_memory_with_prngPcmj>
  printf("Memory allocated and initialized.\n");
  40157b:	48 8d 3d d6 2a 00 00 	lea    0x2ad6(%rip),%rdi        # 404058 <_ZStL19piecewise_construct+0x50>
  401582:	e8 e9 fc ff ff       	callq  401270 <puts@plt>

  // Generate random page sequence (using same seed for reproducibility)
  uint64_t *page_sequence = (uint64_t *)malloc(NUM_PAGES * sizeof(uint64_t));
  401587:	bf 00 20 00 00       	mov    $0x2000,%edi
  40158c:	e8 9f fc ff ff       	callq  401230 <malloc@plt>
  401591:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  // Use PRNG to generate random page order
  unsigned int prng_state = 123456789u;
  401595:	c7 45 9c 15 cd 5b 07 	movl   $0x75bcd15,-0x64(%rbp)
  for (uint64_t i = 0; i < NUM_PAGES; i++) {
  40159c:	48 c7 45 b0 00 00 00 	movq   $0x0,-0x50(%rbp)
  4015a3:	00 
  4015a4:	48 81 7d b0 ff 03 00 	cmpq   $0x3ff,-0x50(%rbp)
  4015ab:	00 
  4015ac:	77 3d                	ja     4015eb <main+0xb6>
    prng_state = prng_state * 1664525u + 1013904223u;
  4015ae:	8b 45 9c             	mov    -0x64(%rbp),%eax
  4015b1:	69 c0 0d 66 19 00    	imul   $0x19660d,%eax,%eax
  4015b7:	05 5f f3 6e 3c       	add    $0x3c6ef35f,%eax
  4015bc:	89 45 9c             	mov    %eax,-0x64(%rbp)
    page_sequence[i] = (prng_state % NUM_PAGES) * PAGE_SIZE;
  4015bf:	8b 45 9c             	mov    -0x64(%rbp),%eax
  4015c2:	25 ff 03 00 00       	and    $0x3ff,%eax
  4015c7:	48 89 c2             	mov    %rax,%rdx
  4015ca:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  4015ce:	48 8d 0c c5 00 00 00 	lea    0x0(,%rax,8),%rcx
  4015d5:	00 
  4015d6:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4015da:	48 01 c8             	add    %rcx,%rax
  4015dd:	48 c1 e2 0c          	shl    $0xc,%rdx
  4015e1:	48 89 10             	mov    %rdx,(%rax)
  for (uint64_t i = 0; i < NUM_PAGES; i++) {
  4015e4:	48 83 45 b0 01       	addq   $0x1,-0x50(%rbp)
  4015e9:	eb b9                	jmp    4015a4 <main+0x6f>
  }

  // preparing try-catch mechanism
  const int num_special_pcs = 1;
  4015eb:	c7 45 a4 01 00 00 00 	movl   $0x1,-0x5c(%rbp)
  prepare_try_catch_mechanism(num_special_pcs);
  4015f2:	bf 01 00 00 00       	mov    $0x1,%edi
  4015f7:	e8 ed fe ff ff       	callq  4014e9 <_Z27prepare_try_catch_mechanismi>
  ips[0] = 0x4016db;
  4015fc:	48 8b 05 75 5b 00 00 	mov    0x5b75(%rip),%rax        # 407178 <ips>
  401603:	48 c7 00 db 16 40 00 	movq   $0x4016db,(%rax)
  ret_ips[0] = 0x3;
  40160a:	48 8b 05 6f 5b 00 00 	mov    0x5b6f(%rip),%rax        # 407180 <ret_ips>
  401611:	48 c7 00 03 00 00 00 	movq   $0x3,(%rax)
  register_ips_and_retips(ips, ret_ips, num_special_pcs);
  401618:	48 8b 0d 61 5b 00 00 	mov    0x5b61(%rip),%rcx        # 407180 <ret_ips>
  40161f:	48 8b 05 52 5b 00 00 	mov    0x5b52(%rip),%rax        # 407178 <ips>
  401626:	ba 01 00 00 00       	mov    $0x1,%edx
  40162b:	48 89 ce             	mov    %rcx,%rsi
  40162e:	48 89 c7             	mov    %rax,%rdi
  401631:	e8 37 07 00 00       	callq  401d6d <_Z23register_ips_and_retipsPmS_i>

  // 
  long long sum = 0;
  401636:	48 c7 45 a8 00 00 00 	movq   $0x0,-0x58(%rbp)
  40163d:	00 
  volatile char dummy;
  
  for (uint64_t i = 0; i < NUM_PAGES; i++) {
  40163e:	48 c7 45 b8 00 00 00 	movq   $0x0,-0x48(%rbp)
  401645:	00 
  401646:	48 81 7d b8 ff 03 00 	cmpq   $0x3ff,-0x48(%rbp)
  40164d:	00 
  40164e:	0f 87 5c 01 00 00    	ja     4017b0 <main+0x27b>
    INIT(i);
  401654:	48 83 7d b8 00       	cmpq   $0x0,-0x48(%rbp)
  401659:	75 4c                	jne    4016a7 <main+0x172>
  40165b:	bf ba 00 00 00       	mov    $0xba,%edi
  401660:	b8 00 00 00 00       	mov    $0x0,%eax
  401665:	e8 26 fb ff ff       	callq  401190 <syscall@plt>
  40166a:	48 99                	cqto   
  40166c:	48 c1 ea 36          	shr    $0x36,%rdx
  401670:	48 01 d0             	add    %rdx,%rax
  401673:	25 ff 03 00 00       	and    $0x3ff,%eax
  401678:	48 29 d0             	sub    %rdx,%rax
  40167b:	c1 e0 05             	shl    $0x5,%eax
  40167e:	89 05 8c 5a 00 00    	mov    %eax,0x5a8c(%rip)        # 407110 <status_idx>
  401684:	48 8b 15 7d 5a 00 00 	mov    0x5a7d(%rip),%rdx        # 407108 <pf_status_array>
  40168b:	8b 05 7f 5a 00 00    	mov    0x5a7f(%rip),%eax        # 407110 <status_idx>
  401691:	48 98                	cltq   
  401693:	48 c1 e0 02          	shl    $0x2,%rax
  401697:	48 01 d0             	add    %rdx,%rax
  40169a:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  4016a0:	c6 05 6d 5a 00 00 00 	movb   $0x0,0x5a6d(%rip)        # 407114 <pre_faulted>
    uint64_t offset = page_sequence[i];
  4016a7:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  4016ab:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  4016b2:	00 
  4016b3:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4016b7:	48 01 d0             	add    %rdx,%rax
  4016ba:	48 8b 00             	mov    (%rax),%rax
  4016bd:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    volatile char* address = &memory[offset];
  4016c1:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  4016c5:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  4016c9:	48 01 d0             	add    %rdx,%rax
  4016cc:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    TRY{
  4016d0:	c7 45 a0 00 00 00 00 	movl   $0x0,-0x60(%rbp)
      dummy = *address; // trouble maker - triggers page fault exception without handling
  4016d7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4016db:	0f b6 00             	movzbl (%rax),%eax
  4016de:	88 45 9b             	mov    %al,-0x65(%rbp)
    } CATCH {
  4016e1:	48 8b 15 20 5a 00 00 	mov    0x5a20(%rip),%rdx        # 407108 <pf_status_array>
  4016e8:	8b 05 22 5a 00 00    	mov    0x5a22(%rip),%eax        # 407110 <status_idx>
  4016ee:	48 98                	cltq   
  4016f0:	48 c1 e0 02          	shl    $0x2,%rax
  4016f4:	48 01 d0             	add    %rdx,%rax
  4016f7:	8b 00                	mov    (%rax),%eax
  4016f9:	83 f8 01             	cmp    $0x1,%eax
  4016fc:	0f 94 c0             	sete   %al
  4016ff:	84 c0                	test   %al,%al
  401701:	74 24                	je     401727 <main+0x1f2>
  401703:	48 8b 15 fe 59 00 00 	mov    0x59fe(%rip),%rdx        # 407108 <pf_status_array>
  40170a:	8b 05 00 5a 00 00    	mov    0x5a00(%rip),%eax        # 407110 <status_idx>
  401710:	48 98                	cltq   
  401712:	48 c1 e0 02          	shl    $0x2,%rax
  401716:	48 01 d0             	add    %rdx,%rax
  401719:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  40171f:	c7 45 a0 ff ff ff ff 	movl   $0xffffffff,-0x60(%rbp)
  401726:	90                   	nop
  401727:	83 7d a0 00          	cmpl   $0x0,-0x60(%rbp)
  40172b:	74 66                	je     401793 <main+0x25e>
      state s = {address, &sum};
  40172d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401731:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  401735:	48 8d 45 a8          	lea    -0x58(%rbp),%rax
  401739:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
      ENQUEUE(s, resume_iteration);
  40173d:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  401741:	48 89 c6             	mov    %rax,%rsi
  401744:	48 8d 3d d5 59 00 00 	lea    0x59d5(%rip),%rdi        # 407120 <curr_queue>
  40174b:	e8 1a 09 00 00       	callq  40206a <_ZNSt6vectorI5stateSaIS0_EE9push_backERKS0_>
  401750:	48 8d 3d c9 59 00 00 	lea    0x59c9(%rip),%rdi        # 407120 <curr_queue>
  401757:	e8 e6 08 00 00       	callq  402042 <_ZNKSt6vectorI5stateSaIS0_EE4sizeEv>
  40175c:	48 8b 15 6d 59 00 00 	mov    0x596d(%rip),%rdx        # 4070d0 <pagefault_queue_size>
  401763:	48 39 d0             	cmp    %rdx,%rax
  401766:	0f 94 c0             	sete   %al
  401769:	84 c0                	test   %al,%al
  40176b:	74 0c                	je     401779 <main+0x244>
  40176d:	48 8d 3d 9a 01 00 00 	lea    0x19a(%rip),%rdi        # 40190e <_Z16resume_iterationR5state>
  401774:	e8 0e fd ff ff       	callq  401487 <_Z18process_pagefaultsPFvR5stateE>
      printf("Page fault at access to offset: %lu\n", offset);
  401779:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  40177d:	48 89 c6             	mov    %rax,%rsi
  401780:	48 8d 3d f9 28 00 00 	lea    0x28f9(%rip),%rdi        # 404080 <_ZStL19piecewise_construct+0x78>
  401787:	b8 00 00 00 00       	mov    $0x0,%eax
  40178c:	e8 ef f9 ff ff       	callq  401180 <printf@plt>
      continue;
  401791:	eb 13                	jmp    4017a6 <main+0x271>
    }
    sum += dummy;
  401793:	0f b6 45 9b          	movzbl -0x65(%rbp),%eax
  401797:	48 0f be d0          	movsbq %al,%rdx
  40179b:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  40179f:	48 01 d0             	add    %rdx,%rax
  4017a2:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  for (uint64_t i = 0; i < NUM_PAGES; i++) {
  4017a6:	48 83 45 b8 01       	addq   $0x1,-0x48(%rbp)
  4017ab:	e9 96 fe ff ff       	jmpq   401646 <main+0x111>
  }
  FLUSH_QUEUE(resume_iteration);
  4017b0:	48 8d 3d 57 01 00 00 	lea    0x157(%rip),%rdi        # 40190e <_Z16resume_iterationR5state>
  4017b7:	e8 6e fc ff ff       	callq  40142a <_Z11clear_queuePFvR5stateE>

  printf("Sum of accessed bytes: %lld\n", sum);
  4017bc:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  4017c0:	48 89 c6             	mov    %rax,%rsi
  4017c3:	48 8d 3d db 28 00 00 	lea    0x28db(%rip),%rdi        # 4040a5 <_ZStL19piecewise_construct+0x9d>
  4017ca:	b8 00 00 00 00       	mov    $0x0,%eax
  4017cf:	e8 ac f9 ff ff       	callq  401180 <printf@plt>

  free(page_sequence);
  4017d4:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4017d8:	48 89 c7             	mov    %rax,%rdi
  4017db:	e8 40 fa ff ff       	callq  401220 <free@plt>
  free(memory);
  4017e0:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  4017e4:	48 89 c7             	mov    %rax,%rdi
  4017e7:	e8 34 fa ff ff       	callq  401220 <free@plt>
  unregister_and_free_arrays();
  4017ec:	e8 b3 05 00 00       	callq  401da4 <_Z26unregister_and_free_arraysv>

  printf("Random access complete\n");
  4017f1:	48 8d 3d ca 28 00 00 	lea    0x28ca(%rip),%rdi        # 4040c2 <_ZStL19piecewise_construct+0xba>
  4017f8:	e8 73 fa ff ff       	callq  401270 <puts@plt>
  return 0;
  4017fd:	b8 00 00 00 00       	mov    $0x0,%eax
}
  401802:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  401806:	64 48 2b 0c 25 28 00 	sub    %fs:0x28,%rcx
  40180d:	00 00 
  40180f:	74 05                	je     401816 <main+0x2e1>
  401811:	e8 fa f9 ff ff       	callq  401210 <__stack_chk_fail@plt>
  401816:	c9                   	leaveq 
  401817:	c3                   	retq   

0000000000401818 <_Z41__static_initialization_and_destruction_0ii>:
  401818:	f3 0f 1e fa          	endbr64 
  40181c:	55                   	push   %rbp
  40181d:	48 89 e5             	mov    %rsp,%rbp
  401820:	48 83 ec 10          	sub    $0x10,%rsp
  401824:	89 7d fc             	mov    %edi,-0x4(%rbp)
  401827:	89 75 f8             	mov    %esi,-0x8(%rbp)
  40182a:	83 7d fc 01          	cmpl   $0x1,-0x4(%rbp)
  40182e:	0f 85 a8 00 00 00    	jne    4018dc <_Z41__static_initialization_and_destruction_0ii+0xc4>
  401834:	81 7d f8 ff ff 00 00 	cmpl   $0xffff,-0x8(%rbp)
  40183b:	0f 85 9b 00 00 00    	jne    4018dc <_Z41__static_initialization_and_destruction_0ii+0xc4>
  extern wostream wclog;	/// Linked to standard error (buffered)
#endif
  ///@}

  // For construction of filebuffers for cout, cin, cerr, clog et. al.
  static ios_base::Init __ioinit;
  401841:	48 8d 3d 40 59 00 00 	lea    0x5940(%rip),%rdi        # 407188 <_ZStL8__ioinit>
  401848:	e8 13 fa ff ff       	callq  401260 <_ZNSt8ios_base4InitC1Ev@plt>
  40184d:	48 8d 15 74 58 00 00 	lea    0x5874(%rip),%rdx        # 4070c8 <__dso_handle>
  401854:	48 8d 35 2d 59 00 00 	lea    0x592d(%rip),%rsi        # 407188 <_ZStL8__ioinit>
  40185b:	48 8b 05 96 57 00 00 	mov    0x5796(%rip),%rax        # 406ff8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
  401862:	48 89 c7             	mov    %rax,%rdi
  401865:	e8 76 f9 ff ff       	callq  4011e0 <__cxa_atexit@plt>
vector<state> curr_queue;
  40186a:	48 8d 3d af 58 00 00 	lea    0x58af(%rip),%rdi        # 407120 <curr_queue>
  401871:	e8 1e 01 00 00       	callq  401994 <_ZNSt6vectorI5stateSaIS0_EEC1Ev>
  401876:	48 8d 15 4b 58 00 00 	lea    0x584b(%rip),%rdx        # 4070c8 <__dso_handle>
  40187d:	48 8d 35 9c 58 00 00 	lea    0x589c(%rip),%rsi        # 407120 <curr_queue>
  401884:	48 8d 3d a5 17 00 00 	lea    0x17a5(%rip),%rdi        # 403030 <_ZNSt6vectorI5stateSaIS0_EED1Ev>
  40188b:	e8 50 f9 ff ff       	callq  4011e0 <__cxa_atexit@plt>
vector<state> shipped_queue;
  401890:	48 8d 3d a9 58 00 00 	lea    0x58a9(%rip),%rdi        # 407140 <shipped_queue>
  401897:	e8 f8 00 00 00       	callq  401994 <_ZNSt6vectorI5stateSaIS0_EEC1Ev>
  40189c:	48 8d 15 25 58 00 00 	lea    0x5825(%rip),%rdx        # 4070c8 <__dso_handle>
  4018a3:	48 8d 35 96 58 00 00 	lea    0x5896(%rip),%rsi        # 407140 <shipped_queue>
  4018aa:	48 8d 3d 7f 17 00 00 	lea    0x177f(%rip),%rdi        # 403030 <_ZNSt6vectorI5stateSaIS0_EED1Ev>
  4018b1:	e8 2a f9 ff ff       	callq  4011e0 <__cxa_atexit@plt>
vector<state> ready_queue;
  4018b6:	48 8d 3d a3 58 00 00 	lea    0x58a3(%rip),%rdi        # 407160 <ready_queue>
  4018bd:	e8 d2 00 00 00       	callq  401994 <_ZNSt6vectorI5stateSaIS0_EEC1Ev>
  4018c2:	48 8d 15 ff 57 00 00 	lea    0x57ff(%rip),%rdx        # 4070c8 <__dso_handle>
  4018c9:	48 8d 35 90 58 00 00 	lea    0x5890(%rip),%rsi        # 407160 <ready_queue>
  4018d0:	48 8d 3d 59 17 00 00 	lea    0x1759(%rip),%rdi        # 403030 <_ZNSt6vectorI5stateSaIS0_EED1Ev>
  4018d7:	e8 04 f9 ff ff       	callq  4011e0 <__cxa_atexit@plt>
  4018dc:	90                   	nop
  4018dd:	c9                   	leaveq 
  4018de:	c3                   	retq   

00000000004018df <_GLOBAL__sub_I_ptr>:
  4018df:	f3 0f 1e fa          	endbr64 
  4018e3:	55                   	push   %rbp
  4018e4:	48 89 e5             	mov    %rsp,%rbp
  4018e7:	be ff ff 00 00       	mov    $0xffff,%esi
  4018ec:	bf 01 00 00 00       	mov    $0x1,%edi
  4018f1:	e8 22 ff ff ff       	callq  401818 <_Z41__static_initialization_and_destruction_0ii>
  4018f6:	5d                   	pop    %rbp
  4018f7:	c3                   	retq   

00000000004018f8 <_ZnwmPv>:
#endif // __cpp_sized_deallocation
#endif // __cpp_aligned_new

// Default placement versions of operator new.
_GLIBCXX_NODISCARD inline void* operator new(std::size_t, void* __p) _GLIBCXX_USE_NOEXCEPT
{ return __p; }
  4018f8:	f3 0f 1e fa          	endbr64 
  4018fc:	55                   	push   %rbp
  4018fd:	48 89 e5             	mov    %rsp,%rbp
  401900:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401904:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  401908:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40190c:	5d                   	pop    %rbp
  40190d:	c3                   	retq   

000000000040190e <_Z16resume_iterationR5state>:
inline void resume_iteration(state &s){
  40190e:	f3 0f 1e fa          	endbr64 
  401912:	55                   	push   %rbp
  401913:	48 89 e5             	mov    %rsp,%rbp
  401916:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  volatile char* address = s.faulty_address;
  40191a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40191e:	48 8b 00             	mov    (%rax),%rax
  401921:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  dummy = *address;
  401925:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401929:	0f b6 00             	movzbl (%rax),%eax
  40192c:	88 45 f7             	mov    %al,-0x9(%rbp)
  *(s.sum_ptr) += dummy;
  40192f:	0f b6 55 f7          	movzbl -0x9(%rbp),%edx
  401933:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401937:	48 8b 40 08          	mov    0x8(%rax),%rax
  40193b:	48 8b 08             	mov    (%rax),%rcx
  40193e:	48 0f be d2          	movsbq %dl,%rdx
  401942:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401946:	48 8b 40 08          	mov    0x8(%rax),%rax
  40194a:	48 01 ca             	add    %rcx,%rdx
  40194d:	48 89 10             	mov    %rdx,(%rax)
}
  401950:	90                   	nop
  401951:	5d                   	pop    %rbp
  401952:	c3                   	retq   
  401953:	90                   	nop

0000000000401954 <_ZNSt12_Vector_baseI5stateSaIS0_EE12_Vector_implD1Ev>:
	  _M_copy_data(__x);
	  __x._M_copy_data(__tmp);
	}
      };

      struct _Vector_impl
  401954:	f3 0f 1e fa          	endbr64 
  401958:	55                   	push   %rbp
  401959:	48 89 e5             	mov    %rsp,%rbp
  40195c:	48 83 ec 10          	sub    $0x10,%rsp
  401960:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401964:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401968:	48 89 c7             	mov    %rax,%rdi
  40196b:	e8 ca 04 00 00       	callq  401e3a <_ZNSaI5stateED1Ev>
  401970:	90                   	nop
  401971:	c9                   	leaveq 
  401972:	c3                   	retq   
  401973:	90                   	nop

0000000000401974 <_ZNSt12_Vector_baseI5stateSaIS0_EEC1Ev>:
      allocator_type
      get_allocator() const _GLIBCXX_NOEXCEPT
      { return allocator_type(_M_get_Tp_allocator()); }

#if __cplusplus >= 201103L
      _Vector_base() = default;
  401974:	f3 0f 1e fa          	endbr64 
  401978:	55                   	push   %rbp
  401979:	48 89 e5             	mov    %rsp,%rbp
  40197c:	48 83 ec 10          	sub    $0x10,%rsp
  401980:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401984:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401988:	48 89 c7             	mov    %rax,%rdi
  40198b:	e8 7e 04 00 00       	callq  401e0e <_ZNSt12_Vector_baseI5stateSaIS0_EE12_Vector_implC1Ev>
  401990:	90                   	nop
  401991:	c9                   	leaveq 
  401992:	c3                   	retq   
  401993:	90                   	nop

0000000000401994 <_ZNSt6vectorI5stateSaIS0_EEC1Ev>:

      /**
       *  @brief  Creates a %vector with no elements.
       */
#if __cplusplus >= 201103L
      vector() = default;
  401994:	f3 0f 1e fa          	endbr64 
  401998:	55                   	push   %rbp
  401999:	48 89 e5             	mov    %rsp,%rbp
  40199c:	48 83 ec 10          	sub    $0x10,%rsp
  4019a0:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4019a4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4019a8:	48 89 c7             	mov    %rax,%rdi
  4019ab:	e8 c4 ff ff ff       	callq  401974 <_ZNSt12_Vector_baseI5stateSaIS0_EEC1Ev>
  4019b0:	90                   	nop
  4019b1:	c9                   	leaveq 
  4019b2:	c3                   	retq   

00000000004019b3 <_Z12pagein_queueRSt6vectorI5stateSaIS0_EE>:
inline void pagein_queue(vector<state> &queue){
  4019b3:	f3 0f 1e fa          	endbr64 
  4019b7:	55                   	push   %rbp
  4019b8:	48 89 e5             	mov    %rsp,%rbp
  4019bb:	4c 8d 9c 24 00 c0 ff 	lea    -0x4000(%rsp),%r11
  4019c2:	ff 
  4019c3:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  4019ca:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  4019cf:	4c 39 dc             	cmp    %r11,%rsp
  4019d2:	75 ef                	jne    4019c3 <_Z12pagein_queueRSt6vectorI5stateSaIS0_EE+0x10>
  4019d4:	48 83 ec 60          	sub    $0x60,%rsp
  4019d8:	48 89 bd a8 bf ff ff 	mov    %rdi,-0x4058(%rbp)
  4019df:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4019e6:	00 00 
  4019e8:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4019ec:	31 c0                	xor    %eax,%eax
  int index = 0;
  4019ee:	c7 85 bc bf ff ff 00 	movl   $0x0,-0x4044(%rbp)
  4019f5:	00 00 00 
  for (auto q_it = queue.begin(); q_it != queue.end(); ++q_it)
  4019f8:	48 8b 85 a8 bf ff ff 	mov    -0x4058(%rbp),%rax
  4019ff:	48 89 c7             	mov    %rax,%rdi
  401a02:	e8 a5 04 00 00       	callq  401eac <_ZNSt6vectorI5stateSaIS0_EE5beginEv>
  401a07:	48 89 85 c0 bf ff ff 	mov    %rax,-0x4040(%rbp)
  401a0e:	48 8b 85 a8 bf ff ff 	mov    -0x4058(%rbp),%rax
  401a15:	48 89 c7             	mov    %rax,%rdi
  401a18:	e8 db 04 00 00       	callq  401ef8 <_ZNSt6vectorI5stateSaIS0_EE3endEv>
  401a1d:	48 89 85 e0 bf ff ff 	mov    %rax,-0x4020(%rbp)
  401a24:	48 8d 95 e0 bf ff ff 	lea    -0x4020(%rbp),%rdx
  401a2b:	48 8d 85 c0 bf ff ff 	lea    -0x4040(%rbp),%rax
  401a32:	48 89 d6             	mov    %rdx,%rsi
  401a35:	48 89 c7             	mov    %rax,%rdi
  401a38:	e8 0b 05 00 00       	callq  401f48 <_ZN9__gnu_cxxneIP5stateSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_>
  401a3d:	84 c0                	test   %al,%al
  401a3f:	0f 84 f8 00 00 00    	je     401b3d <_Z12pagein_queueRSt6vectorI5stateSaIS0_EE+0x18a>
    struct state s = *q_it;
  401a45:	48 8d 85 c0 bf ff ff 	lea    -0x4040(%rbp),%rax
  401a4c:	48 89 c7             	mov    %rax,%rdi
  401a4f:	e8 58 05 00 00       	callq  401fac <_ZNK9__gnu_cxx17__normal_iteratorIP5stateSt6vectorIS1_SaIS1_EEEdeEv>
  401a54:	48 8b 50 08          	mov    0x8(%rax),%rdx
  401a58:	48 8b 00             	mov    (%rax),%rax
  401a5b:	48 89 85 e0 bf ff ff 	mov    %rax,-0x4020(%rbp)
  401a62:	48 89 95 e8 bf ff ff 	mov    %rdx,-0x4018(%rbp)
    volatile char* faulty_address= s.faulty_address;
  401a69:	48 8b 85 e0 bf ff ff 	mov    -0x4020(%rbp),%rax
  401a70:	48 89 85 c8 bf ff ff 	mov    %rax,-0x4038(%rbp)
    void *page = (void *)faulty_address;
  401a77:	48 8b 85 c8 bf ff ff 	mov    -0x4038(%rbp),%rax
  401a7e:	48 89 85 d0 bf ff ff 	mov    %rax,-0x4030(%rbp)
    page = (void *)(((long long)page >> 12) << 12);
  401a85:	48 8b 85 d0 bf ff ff 	mov    -0x4030(%rbp),%rax
  401a8c:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
  401a92:	48 89 85 d0 bf ff ff 	mov    %rax,-0x4030(%rbp)
    size_t advise_length = PAGE_SIZE;
  401a99:	48 c7 85 d8 bf ff ff 	movq   $0x1000,-0x4028(%rbp)
  401aa0:	00 10 00 00 
    regions[index].iov_base = page;
  401aa4:	8b 85 bc bf ff ff    	mov    -0x4044(%rbp),%eax
  401aaa:	48 98                	cltq   
  401aac:	48 c1 e0 04          	shl    $0x4,%rax
  401ab0:	48 01 e8             	add    %rbp,%rax
  401ab3:	48 8d 90 f0 bf ff ff 	lea    -0x4010(%rax),%rdx
  401aba:	48 8b 85 d0 bf ff ff 	mov    -0x4030(%rbp),%rax
  401ac1:	48 89 02             	mov    %rax,(%rdx)
    regions[index].iov_len = advise_length;
  401ac4:	8b 85 bc bf ff ff    	mov    -0x4044(%rbp),%eax
  401aca:	48 98                	cltq   
  401acc:	48 c1 e0 04          	shl    $0x4,%rax
  401ad0:	48 01 e8             	add    %rbp,%rax
  401ad3:	48 8d 90 f8 bf ff ff 	lea    -0x4008(%rax),%rdx
  401ada:	48 8b 85 d8 bf ff ff 	mov    -0x4028(%rbp),%rax
  401ae1:	48 89 02             	mov    %rax,(%rdx)
    index++;
  401ae4:	83 85 bc bf ff ff 01 	addl   $0x1,-0x4044(%rbp)
    if(index >= MAX_IOVEC_SIZE){
  401aeb:	81 bd bc bf ff ff ff 	cmpl   $0x3ff,-0x4044(%rbp)
  401af2:	03 00 00 
  401af5:	7e 32                	jle    401b29 <_Z12pagein_queueRSt6vectorI5stateSaIS0_EE+0x176>
      process_madvise(pidfd, regions, index, MADV_WILLNEED, 0);
  401af7:	8b 85 bc bf ff ff    	mov    -0x4044(%rbp),%eax
  401afd:	48 63 d0             	movslq %eax,%rdx
  401b00:	8b 05 12 56 00 00    	mov    0x5612(%rip),%eax        # 407118 <pidfd>
  401b06:	48 8d b5 f0 bf ff ff 	lea    -0x4010(%rbp),%rsi
  401b0d:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401b13:	b9 03 00 00 00       	mov    $0x3,%ecx
  401b18:	89 c7                	mov    %eax,%edi
  401b1a:	e8 97 f8 ff ff       	callq  4013b6 <_Z15process_madviseiPKvmim>
      index = 0;
  401b1f:	c7 85 bc bf ff ff 00 	movl   $0x0,-0x4044(%rbp)
  401b26:	00 00 00 
  for (auto q_it = queue.begin(); q_it != queue.end(); ++q_it)
  401b29:	48 8d 85 c0 bf ff ff 	lea    -0x4040(%rbp),%rax
  401b30:	48 89 c7             	mov    %rax,%rdi
  401b33:	e8 50 04 00 00       	callq  401f88 <_ZN9__gnu_cxx17__normal_iteratorIP5stateSt6vectorIS1_SaIS1_EEEppEv>
  401b38:	e9 d1 fe ff ff       	jmpq   401a0e <_Z12pagein_queueRSt6vectorI5stateSaIS0_EE+0x5b>
  if(index)
  401b3d:	83 bd bc bf ff ff 00 	cmpl   $0x0,-0x4044(%rbp)
  401b44:	74 28                	je     401b6e <_Z12pagein_queueRSt6vectorI5stateSaIS0_EE+0x1bb>
    process_madvise(pidfd, regions, index, MADV_WILLNEED, 0);  
  401b46:	8b 85 bc bf ff ff    	mov    -0x4044(%rbp),%eax
  401b4c:	48 63 d0             	movslq %eax,%rdx
  401b4f:	8b 05 c3 55 00 00    	mov    0x55c3(%rip),%eax        # 407118 <pidfd>
  401b55:	48 8d b5 f0 bf ff ff 	lea    -0x4010(%rbp),%rsi
  401b5c:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401b62:	b9 03 00 00 00       	mov    $0x3,%ecx
  401b67:	89 c7                	mov    %eax,%edi
  401b69:	e8 48 f8 ff ff       	callq  4013b6 <_Z15process_madviseiPKvmim>
}
  401b6e:	90                   	nop
  401b6f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401b73:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401b7a:	00 00 
  401b7c:	74 05                	je     401b83 <_Z12pagein_queueRSt6vectorI5stateSaIS0_EE+0x1d0>
  401b7e:	e8 8d f6 ff ff       	callq  401210 <__stack_chk_fail@plt>
  401b83:	c9                   	leaveq 
  401b84:	c3                   	retq   

0000000000401b85 <_Z13rotate_queuesv>:
inline void rotate_queues(){
  401b85:	f3 0f 1e fa          	endbr64 
  401b89:	55                   	push   %rbp
  401b8a:	48 89 e5             	mov    %rsp,%rbp
  ready_queue.swap(shipped_queue);
  401b8d:	48 8d 35 ac 55 00 00 	lea    0x55ac(%rip),%rsi        # 407140 <shipped_queue>
  401b94:	48 8d 3d c5 55 00 00 	lea    0x55c5(%rip),%rdi        # 407160 <ready_queue>
  401b9b:	e8 22 04 00 00       	callq  401fc2 <_ZNSt6vectorI5stateSaIS0_EE4swapERS2_>
  shipped_queue.swap(curr_queue);
  401ba0:	48 8d 35 79 55 00 00 	lea    0x5579(%rip),%rsi        # 407120 <curr_queue>
  401ba7:	48 8d 3d 92 55 00 00 	lea    0x5592(%rip),%rdi        # 407140 <shipped_queue>
  401bae:	e8 0f 04 00 00       	callq  401fc2 <_ZNSt6vectorI5stateSaIS0_EE4swapERS2_>
}
  401bb3:	90                   	nop
  401bb4:	5d                   	pop    %rbp
  401bb5:	c3                   	retq   

0000000000401bb6 <_Z12resume_queueRSt6vectorI5stateSaIS0_EEPFvRS0_E>:
inline void resume_queue(vector<state> &queue, void (*func)(state&)){
  401bb6:	f3 0f 1e fa          	endbr64 
  401bba:	55                   	push   %rbp
  401bbb:	48 89 e5             	mov    %rsp,%rbp
  401bbe:	48 83 ec 30          	sub    $0x30,%rsp
  401bc2:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  401bc6:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
  401bca:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401bd1:	00 00 
  401bd3:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401bd7:	31 c0                	xor    %eax,%eax
  for (auto rq_it = queue.begin(); rq_it != queue.end(); ++rq_it)
  401bd9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401bdd:	48 89 c7             	mov    %rax,%rdi
  401be0:	e8 c7 02 00 00       	callq  401eac <_ZNSt6vectorI5stateSaIS0_EE5beginEv>
  401be5:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  401be9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401bed:	48 89 c7             	mov    %rax,%rdi
  401bf0:	e8 03 03 00 00       	callq  401ef8 <_ZNSt6vectorI5stateSaIS0_EE3endEv>
  401bf5:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  401bf9:	48 8d 55 f0          	lea    -0x10(%rbp),%rdx
  401bfd:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
  401c01:	48 89 d6             	mov    %rdx,%rsi
  401c04:	48 89 c7             	mov    %rax,%rdi
  401c07:	e8 3c 03 00 00       	callq  401f48 <_ZN9__gnu_cxxneIP5stateSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_>
  401c0c:	84 c0                	test   %al,%al
  401c0e:	74 26                	je     401c36 <_Z12resume_queueRSt6vectorI5stateSaIS0_EEPFvRS0_E+0x80>
    func(*rq_it);
  401c10:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
  401c14:	48 89 c7             	mov    %rax,%rdi
  401c17:	e8 90 03 00 00       	callq  401fac <_ZNK9__gnu_cxx17__normal_iteratorIP5stateSt6vectorIS1_SaIS1_EEEdeEv>
  401c1c:	48 89 c2             	mov    %rax,%rdx
  401c1f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  401c23:	48 89 d7             	mov    %rdx,%rdi
  401c26:	ff d0                	callq  *%rax
  for (auto rq_it = queue.begin(); rq_it != queue.end(); ++rq_it)
  401c28:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
  401c2c:	48 89 c7             	mov    %rax,%rdi
  401c2f:	e8 54 03 00 00       	callq  401f88 <_ZN9__gnu_cxx17__normal_iteratorIP5stateSt6vectorIS1_SaIS1_EEEppEv>
  401c34:	eb b3                	jmp    401be9 <_Z12resume_queueRSt6vectorI5stateSaIS0_EEPFvRS0_E+0x33>
}
  401c36:	90                   	nop
  401c37:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401c3b:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  401c42:	00 00 
  401c44:	74 05                	je     401c4b <_Z12resume_queueRSt6vectorI5stateSaIS0_EEPFvRS0_E+0x95>
  401c46:	e8 c5 f5 ff ff       	callq  401210 <__stack_chk_fail@plt>
  401c4b:	c9                   	leaveq 
  401c4c:	c3                   	retq   

0000000000401c4d <_Z11touch_pagesPVim>:
inline void touch_pages(volatile int* address, size_t num_bytes) {
  401c4d:	f3 0f 1e fa          	endbr64 
  401c51:	55                   	push   %rbp
  401c52:	48 89 e5             	mov    %rsp,%rbp
  401c55:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  401c59:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    size_t ints_per_page = PAGE_SIZE / sizeof(int);
  401c5d:	48 c7 45 f0 00 04 00 	movq   $0x400,-0x10(%rbp)
  401c64:	00 
    size_t num_ints = num_bytes / sizeof(int);
  401c65:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  401c69:	48 c1 e8 02          	shr    $0x2,%rax
  401c6d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    for (size_t i = 0; i < num_ints; i += ints_per_page) {
  401c71:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
  401c78:	00 
  401c79:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401c7d:	48 3b 45 f8          	cmp    -0x8(%rbp),%rax
  401c81:	73 23                	jae    401ca6 <_Z11touch_pagesPVim+0x59>
        address[i] = 0;
  401c83:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401c87:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  401c8e:	00 
  401c8f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  401c93:	48 01 d0             	add    %rdx,%rax
  401c96:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
    for (size_t i = 0; i < num_ints; i += ints_per_page) {
  401c9c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401ca0:	48 01 45 e8          	add    %rax,-0x18(%rbp)
  401ca4:	eb d3                	jmp    401c79 <_Z11touch_pagesPVim+0x2c>
}
  401ca6:	90                   	nop
  401ca7:	5d                   	pop    %rbp
  401ca8:	c3                   	retq   

0000000000401ca9 <_Z24allocate_pf_status_arrayv>:
inline void allocate_pf_status_array(){
  401ca9:	f3 0f 1e fa          	endbr64 
  401cad:	55                   	push   %rbp
  401cae:	48 89 e5             	mov    %rsp,%rbp
  ptr = mmap(NULL, 32*1024*sizeof(int), PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS | MAP_POPULATE, -1, 0);
  401cb1:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  401cb7:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  401cbd:	b9 22 80 00 00       	mov    $0x8022,%ecx
  401cc2:	ba 03 00 00 00       	mov    $0x3,%edx
  401cc7:	be 00 00 02 00       	mov    $0x20000,%esi
  401ccc:	bf 00 00 00 00       	mov    $0x0,%edi
  401cd1:	e8 da f5 ff ff       	callq  4012b0 <mmap@plt>
  401cd6:	48 89 05 23 54 00 00 	mov    %rax,0x5423(%rip)        # 407100 <ptr>
  if (ptr == MAP_FAILED) {
  401cdd:	48 8b 05 1c 54 00 00 	mov    0x541c(%rip),%rax        # 407100 <ptr>
  401ce4:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  401ce8:	75 0c                	jne    401cf6 <_Z24allocate_pf_status_arrayv+0x4d>
    printf("Failed to allocate memory using mmap\n");
  401cea:	48 8d 3d 1f 23 00 00 	lea    0x231f(%rip),%rdi        # 404010 <_ZStL19piecewise_construct+0x8>
  401cf1:	e8 7a f5 ff ff       	callq  401270 <puts@plt>
  if(mlock(ptr, 32*1024*sizeof(int))){
  401cf6:	48 8b 05 03 54 00 00 	mov    0x5403(%rip),%rax        # 407100 <ptr>
  401cfd:	be 00 00 02 00       	mov    $0x20000,%esi
  401d02:	48 89 c7             	mov    %rax,%rdi
  401d05:	e8 36 f5 ff ff       	callq  401240 <mlock@plt>
  401d0a:	85 c0                	test   %eax,%eax
  401d0c:	0f 95 c0             	setne  %al
  401d0f:	84 c0                	test   %al,%al
  401d11:	74 0c                	je     401d1f <_Z24allocate_pf_status_arrayv+0x76>
    printf("Failed to lock pf_status_array\n");
  401d13:	48 8d 3d 1e 23 00 00 	lea    0x231e(%rip),%rdi        # 404038 <_ZStL19piecewise_construct+0x30>
  401d1a:	e8 51 f5 ff ff       	callq  401270 <puts@plt>
  pf_status_array = (volatile int*)ptr;
  401d1f:	48 8b 05 da 53 00 00 	mov    0x53da(%rip),%rax        # 407100 <ptr>
  401d26:	48 89 05 db 53 00 00 	mov    %rax,0x53db(%rip)        # 407108 <pf_status_array>
  touch_pages(pf_status_array, 32*1024*sizeof(int));
  401d2d:	48 8b 05 d4 53 00 00 	mov    0x53d4(%rip),%rax        # 407108 <pf_status_array>
  401d34:	be 00 00 02 00       	mov    $0x20000,%esi
  401d39:	48 89 c7             	mov    %rax,%rdi
  401d3c:	e8 0c ff ff ff       	callq  401c4d <_Z11touch_pagesPVim>
}
  401d41:	90                   	nop
  401d42:	5d                   	pop    %rbp
  401d43:	c3                   	retq   

0000000000401d44 <_Z24register_pf_status_arrayv>:
inline void register_pf_status_array(){
  401d44:	f3 0f 1e fa          	endbr64 
  401d48:	55                   	push   %rbp
  401d49:	48 89 e5             	mov    %rsp,%rbp
  syscall(550,pf_status_array,32*1024);
  401d4c:	48 8b 05 b5 53 00 00 	mov    0x53b5(%rip),%rax        # 407108 <pf_status_array>
  401d53:	ba 00 80 00 00       	mov    $0x8000,%edx
  401d58:	48 89 c6             	mov    %rax,%rsi
  401d5b:	bf 26 02 00 00       	mov    $0x226,%edi
  401d60:	b8 00 00 00 00       	mov    $0x0,%eax
  401d65:	e8 26 f4 ff ff       	callq  401190 <syscall@plt>
}
  401d6a:	90                   	nop
  401d6b:	5d                   	pop    %rbp
  401d6c:	c3                   	retq   

0000000000401d6d <_Z23register_ips_and_retipsPmS_i>:

// syscall to register the special PCs (ips) and their return PCs (ret_ips) with the kernel
inline void register_ips_and_retips(unsigned long *ips, unsigned long *ret_ips, int size){
  401d6d:	f3 0f 1e fa          	endbr64 
  401d71:	55                   	push   %rbp
  401d72:	48 89 e5             	mov    %rsp,%rbp
  401d75:	48 83 ec 20          	sub    $0x20,%rsp
  401d79:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401d7d:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  401d81:	89 55 ec             	mov    %edx,-0x14(%rbp)
  syscall(548, ips, ret_ips, size);
  401d84:	8b 4d ec             	mov    -0x14(%rbp),%ecx
  401d87:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  401d8b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401d8f:	48 89 c6             	mov    %rax,%rsi
  401d92:	bf 24 02 00 00       	mov    $0x224,%edi
  401d97:	b8 00 00 00 00       	mov    $0x0,%eax
  401d9c:	e8 ef f3 ff ff       	callq  401190 <syscall@plt>
}
  401da1:	90                   	nop
  401da2:	c9                   	leaveq 
  401da3:	c3                   	retq   

0000000000401da4 <_Z26unregister_and_free_arraysv>:

// syscall to unregister the page fault status array, as well as ips and ret_ips, and free the allocated memory
inline void unregister_and_free_arrays(){
  401da4:	f3 0f 1e fa          	endbr64 
  401da8:	55                   	push   %rbp
  401da9:	48 89 e5             	mov    %rsp,%rbp
  syscall(548, NULL, NULL, 0);
  401dac:	b9 00 00 00 00       	mov    $0x0,%ecx
  401db1:	ba 00 00 00 00       	mov    $0x0,%edx
  401db6:	be 00 00 00 00       	mov    $0x0,%esi
  401dbb:	bf 24 02 00 00       	mov    $0x224,%edi
  401dc0:	b8 00 00 00 00       	mov    $0x0,%eax
  401dc5:	e8 c6 f3 ff ff       	callq  401190 <syscall@plt>
  syscall(550, NULL, 0);
  401dca:	ba 00 00 00 00       	mov    $0x0,%edx
  401dcf:	be 00 00 00 00       	mov    $0x0,%esi
  401dd4:	bf 26 02 00 00       	mov    $0x226,%edi
  401dd9:	b8 00 00 00 00       	mov    $0x0,%eax
  401dde:	e8 ad f3 ff ff       	callq  401190 <syscall@plt>
  munlock(ptr, 32*1024*sizeof(int));
  401de3:	48 8b 05 16 53 00 00 	mov    0x5316(%rip),%rax        # 407100 <ptr>
  401dea:	be 00 00 02 00       	mov    $0x20000,%esi
  401def:	48 89 c7             	mov    %rax,%rdi
  401df2:	e8 c9 f4 ff ff       	callq  4012c0 <munlock@plt>
  munmap(ptr, 32*1024*sizeof(int));
  401df7:	48 8b 05 02 53 00 00 	mov    0x5302(%rip),%rax        # 407100 <ptr>
  401dfe:	be 00 00 02 00       	mov    $0x20000,%esi
  401e03:	48 89 c7             	mov    %rax,%rdi
  401e06:	e8 c5 f3 ff ff       	callq  4011d0 <munmap@plt>
}
  401e0b:	90                   	nop
  401e0c:	5d                   	pop    %rbp
  401e0d:	c3                   	retq   

0000000000401e0e <_ZNSt12_Vector_baseI5stateSaIS0_EE12_Vector_implC1Ev>:
	_Vector_impl() _GLIBCXX_NOEXCEPT_IF(
  401e0e:	f3 0f 1e fa          	endbr64 
  401e12:	55                   	push   %rbp
  401e13:	48 89 e5             	mov    %rsp,%rbp
  401e16:	48 83 ec 10          	sub    $0x10,%rsp
  401e1a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
	: _Tp_alloc_type()
  401e1e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401e22:	48 89 c7             	mov    %rax,%rdi
  401e25:	e8 c0 02 00 00       	callq  4020ea <_ZNSaI5stateEC1Ev>
  401e2a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401e2e:	48 89 c7             	mov    %rax,%rdi
  401e31:	e8 d4 02 00 00       	callq  40210a <_ZNSt12_Vector_baseI5stateSaIS0_EE17_Vector_impl_dataC1Ev>
	{ }
  401e36:	90                   	nop
  401e37:	c9                   	leaveq 
  401e38:	c3                   	retq   
  401e39:	90                   	nop

0000000000401e3a <_ZNSaI5stateED1Ev>:
	allocator(const allocator<_Tp1>&) _GLIBCXX_NOTHROW { }

#if __cpp_constexpr_dynamic_alloc
      constexpr
#endif
      ~allocator() _GLIBCXX_NOTHROW { }
  401e3a:	f3 0f 1e fa          	endbr64 
  401e3e:	55                   	push   %rbp
  401e3f:	48 89 e5             	mov    %rsp,%rbp
  401e42:	48 83 ec 10          	sub    $0x10,%rsp
  401e46:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401e4a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401e4e:	48 89 c7             	mov    %rax,%rdi
  401e51:	e8 e6 02 00 00       	callq  40213c <_ZN9__gnu_cxx13new_allocatorI5stateED1Ev>
  401e56:	90                   	nop
  401e57:	c9                   	leaveq 
  401e58:	c3                   	retq   
  401e59:	90                   	nop

0000000000401e5a <_ZNSt12_Vector_baseI5stateSaIS0_EED1Ev>:
      ~_Vector_base() _GLIBCXX_NOEXCEPT
  401e5a:	f3 0f 1e fa          	endbr64 
  401e5e:	55                   	push   %rbp
  401e5f:	48 89 e5             	mov    %rsp,%rbp
  401e62:	48 83 ec 10          	sub    $0x10,%rsp
  401e66:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
		      _M_impl._M_end_of_storage - _M_impl._M_start);
  401e6a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401e6e:	48 8b 50 10          	mov    0x10(%rax),%rdx
  401e72:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401e76:	48 8b 08             	mov    (%rax),%rcx
  401e79:	48 89 d0             	mov    %rdx,%rax
  401e7c:	48 29 c8             	sub    %rcx,%rax
  401e7f:	48 c1 f8 04          	sar    $0x4,%rax
	_M_deallocate(_M_impl._M_start,
  401e83:	48 89 c2             	mov    %rax,%rdx
  401e86:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401e8a:	48 8b 08             	mov    (%rax),%rcx
  401e8d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401e91:	48 89 ce             	mov    %rcx,%rsi
  401e94:	48 89 c7             	mov    %rax,%rdi
  401e97:	e8 b0 02 00 00       	callq  40214c <_ZNSt12_Vector_baseI5stateSaIS0_EE13_M_deallocateEPS0_m>
      }
  401e9c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401ea0:	48 89 c7             	mov    %rax,%rdi
  401ea3:	e8 ac fa ff ff       	callq  401954 <_ZNSt12_Vector_baseI5stateSaIS0_EE12_Vector_implD1Ev>
  401ea8:	90                   	nop
  401ea9:	c9                   	leaveq 
  401eaa:	c3                   	retq   
  401eab:	90                   	nop

0000000000401eac <_ZNSt6vectorI5stateSaIS0_EE5beginEv>:
       *  Returns a read/write iterator that points to the first
       *  element in the %vector.  Iteration is done in ordinary
       *  element order.
       */
      iterator
      begin() _GLIBCXX_NOEXCEPT
  401eac:	f3 0f 1e fa          	endbr64 
  401eb0:	55                   	push   %rbp
  401eb1:	48 89 e5             	mov    %rsp,%rbp
  401eb4:	48 83 ec 20          	sub    $0x20,%rsp
  401eb8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  401ebc:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401ec3:	00 00 
  401ec5:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401ec9:	31 c0                	xor    %eax,%eax
      { return iterator(this->_M_impl._M_start); }
  401ecb:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  401ecf:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  401ed3:	48 89 d6             	mov    %rdx,%rsi
  401ed6:	48 89 c7             	mov    %rax,%rdi
  401ed9:	e8 a8 02 00 00       	callq  402186 <_ZN9__gnu_cxx17__normal_iteratorIP5stateSt6vectorIS1_SaIS1_EEEC1ERKS2_>
  401ede:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401ee2:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  401ee6:	64 48 2b 0c 25 28 00 	sub    %fs:0x28,%rcx
  401eed:	00 00 
  401eef:	74 05                	je     401ef6 <_ZNSt6vectorI5stateSaIS0_EE5beginEv+0x4a>
  401ef1:	e8 1a f3 ff ff       	callq  401210 <__stack_chk_fail@plt>
  401ef6:	c9                   	leaveq 
  401ef7:	c3                   	retq   

0000000000401ef8 <_ZNSt6vectorI5stateSaIS0_EE3endEv>:
       *  Returns a read/write iterator that points one past the last
       *  element in the %vector.  Iteration is done in ordinary
       *  element order.
       */
      iterator
      end() _GLIBCXX_NOEXCEPT
  401ef8:	f3 0f 1e fa          	endbr64 
  401efc:	55                   	push   %rbp
  401efd:	48 89 e5             	mov    %rsp,%rbp
  401f00:	48 83 ec 20          	sub    $0x20,%rsp
  401f04:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  401f08:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401f0f:	00 00 
  401f11:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401f15:	31 c0                	xor    %eax,%eax
      { return iterator(this->_M_impl._M_finish); }
  401f17:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401f1b:	48 8d 50 08          	lea    0x8(%rax),%rdx
  401f1f:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  401f23:	48 89 d6             	mov    %rdx,%rsi
  401f26:	48 89 c7             	mov    %rax,%rdi
  401f29:	e8 58 02 00 00       	callq  402186 <_ZN9__gnu_cxx17__normal_iteratorIP5stateSt6vectorIS1_SaIS1_EEEC1ERKS2_>
  401f2e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401f32:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  401f36:	64 48 2b 0c 25 28 00 	sub    %fs:0x28,%rcx
  401f3d:	00 00 
  401f3f:	74 05                	je     401f46 <_ZNSt6vectorI5stateSaIS0_EE3endEv+0x4e>
  401f41:	e8 ca f2 ff ff       	callq  401210 <__stack_chk_fail@plt>
  401f46:	c9                   	leaveq 
  401f47:	c3                   	retq   

0000000000401f48 <_ZN9__gnu_cxxneIP5stateSt6vectorIS1_SaIS1_EEEEbRKNS_17__normal_iteratorIT_T0_EESB_>:
    { return __lhs.base() != __rhs.base(); }

  template<typename _Iterator, typename _Container>
    _GLIBCXX20_CONSTEXPR
    inline bool
    operator!=(const __normal_iterator<_Iterator, _Container>& __lhs,
  401f48:	f3 0f 1e fa          	endbr64 
  401f4c:	55                   	push   %rbp
  401f4d:	48 89 e5             	mov    %rsp,%rbp
  401f50:	53                   	push   %rbx
  401f51:	48 83 ec 18          	sub    $0x18,%rsp
  401f55:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  401f59:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
	       const __normal_iterator<_Iterator, _Container>& __rhs)
    _GLIBCXX_NOEXCEPT
    { return __lhs.base() != __rhs.base(); }
  401f5d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401f61:	48 89 c7             	mov    %rax,%rdi
  401f64:	e8 3f 02 00 00       	callq  4021a8 <_ZNK9__gnu_cxx17__normal_iteratorIP5stateSt6vectorIS1_SaIS1_EEE4baseEv>
  401f69:	48 8b 18             	mov    (%rax),%rbx
  401f6c:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  401f70:	48 89 c7             	mov    %rax,%rdi
  401f73:	e8 30 02 00 00       	callq  4021a8 <_ZNK9__gnu_cxx17__normal_iteratorIP5stateSt6vectorIS1_SaIS1_EEE4baseEv>
  401f78:	48 8b 00             	mov    (%rax),%rax
  401f7b:	48 39 c3             	cmp    %rax,%rbx
  401f7e:	0f 95 c0             	setne  %al
  401f81:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  401f85:	c9                   	leaveq 
  401f86:	c3                   	retq   
  401f87:	90                   	nop

0000000000401f88 <_ZN9__gnu_cxx17__normal_iteratorIP5stateSt6vectorIS1_SaIS1_EEEppEv>:
      operator++() _GLIBCXX_NOEXCEPT
  401f88:	f3 0f 1e fa          	endbr64 
  401f8c:	55                   	push   %rbp
  401f8d:	48 89 e5             	mov    %rsp,%rbp
  401f90:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
	++_M_current;
  401f94:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401f98:	48 8b 00             	mov    (%rax),%rax
  401f9b:	48 8d 50 10          	lea    0x10(%rax),%rdx
  401f9f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401fa3:	48 89 10             	mov    %rdx,(%rax)
	return *this;
  401fa6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
      }
  401faa:	5d                   	pop    %rbp
  401fab:	c3                   	retq   

0000000000401fac <_ZNK9__gnu_cxx17__normal_iteratorIP5stateSt6vectorIS1_SaIS1_EEEdeEv>:
      operator*() const _GLIBCXX_NOEXCEPT
  401fac:	f3 0f 1e fa          	endbr64 
  401fb0:	55                   	push   %rbp
  401fb1:	48 89 e5             	mov    %rsp,%rbp
  401fb4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return *_M_current; }
  401fb8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401fbc:	48 8b 00             	mov    (%rax),%rax
  401fbf:	5d                   	pop    %rbp
  401fc0:	c3                   	retq   
  401fc1:	90                   	nop

0000000000401fc2 <_ZNSt6vectorI5stateSaIS0_EE4swapERS2_>:
       *  std::swap(v1,v2) will feed to this function.
       *
       *  Whether the allocators are swapped depends on the allocator traits.
       */
      void
      swap(vector& __x) _GLIBCXX_NOEXCEPT
  401fc2:	f3 0f 1e fa          	endbr64 
  401fc6:	55                   	push   %rbp
  401fc7:	48 89 e5             	mov    %rsp,%rbp
  401fca:	53                   	push   %rbx
  401fcb:	48 83 ec 18          	sub    $0x18,%rsp
  401fcf:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  401fd3:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
      {
#if __cplusplus >= 201103L
	__glibcxx_assert(_Alloc_traits::propagate_on_container_swap::value
			 || _M_get_Tp_allocator() == __x._M_get_Tp_allocator());
#endif
	this->_M_impl._M_swap_data(__x._M_impl);
  401fd7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401fdb:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  401fdf:	48 89 d6             	mov    %rdx,%rsi
  401fe2:	48 89 c7             	mov    %rax,%rdi
  401fe5:	e8 d0 01 00 00       	callq  4021ba <_ZNSt12_Vector_baseI5stateSaIS0_EE17_Vector_impl_data12_M_swap_dataERS3_>
	_Alloc_traits::_S_on_swap(_M_get_Tp_allocator(),
				  __x._M_get_Tp_allocator());
  401fea:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  401fee:	48 89 c7             	mov    %rax,%rdi
  401ff1:	e8 6e 02 00 00       	callq  402264 <_ZNSt12_Vector_baseI5stateSaIS0_EE19_M_get_Tp_allocatorEv>
  401ff6:	48 89 c3             	mov    %rax,%rbx
	_Alloc_traits::_S_on_swap(_M_get_Tp_allocator(),
  401ff9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401ffd:	48 89 c7             	mov    %rax,%rdi
  402000:	e8 5f 02 00 00       	callq  402264 <_ZNSt12_Vector_baseI5stateSaIS0_EE19_M_get_Tp_allocatorEv>
  402005:	48 89 de             	mov    %rbx,%rsi
  402008:	48 89 c7             	mov    %rax,%rdi
  40200b:	e8 29 02 00 00       	callq  402239 <_ZN9__gnu_cxx14__alloc_traitsISaI5stateES1_E10_S_on_swapERS2_S4_>
      }
  402010:	90                   	nop
  402011:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  402015:	c9                   	leaveq 
  402016:	c3                   	retq   
  402017:	90                   	nop

0000000000402018 <_ZNSt6vectorI5stateSaIS0_EE5clearEv>:
       *  elements, and that if the elements themselves are pointers, the
       *  pointed-to memory is not touched in any way.  Managing the pointer is
       *  the user's responsibility.
       */
      void
      clear() _GLIBCXX_NOEXCEPT
  402018:	f3 0f 1e fa          	endbr64 
  40201c:	55                   	push   %rbp
  40201d:	48 89 e5             	mov    %rsp,%rbp
  402020:	48 83 ec 10          	sub    $0x10,%rsp
  402024:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { _M_erase_at_end(this->_M_impl._M_start); }
  402028:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40202c:	48 8b 10             	mov    (%rax),%rdx
  40202f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402033:	48 89 d6             	mov    %rdx,%rsi
  402036:	48 89 c7             	mov    %rax,%rdi
  402039:	e8 38 02 00 00       	callq  402276 <_ZNSt6vectorI5stateSaIS0_EE15_M_erase_at_endEPS0_>
  40203e:	90                   	nop
  40203f:	c9                   	leaveq 
  402040:	c3                   	retq   
  402041:	90                   	nop

0000000000402042 <_ZNKSt6vectorI5stateSaIS0_EE4sizeEv>:
      size() const _GLIBCXX_NOEXCEPT
  402042:	f3 0f 1e fa          	endbr64 
  402046:	55                   	push   %rbp
  402047:	48 89 e5             	mov    %rsp,%rbp
  40204a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
  40204e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402052:	48 8b 50 08          	mov    0x8(%rax),%rdx
  402056:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40205a:	48 8b 08             	mov    (%rax),%rcx
  40205d:	48 89 d0             	mov    %rdx,%rax
  402060:	48 29 c8             	sub    %rcx,%rax
  402063:	48 c1 f8 04          	sar    $0x4,%rax
  402067:	5d                   	pop    %rbp
  402068:	c3                   	retq   
  402069:	90                   	nop

000000000040206a <_ZNSt6vectorI5stateSaIS0_EE9push_backERKS0_>:
      push_back(const value_type& __x)
  40206a:	f3 0f 1e fa          	endbr64 
  40206e:	55                   	push   %rbp
  40206f:	48 89 e5             	mov    %rsp,%rbp
  402072:	48 83 ec 10          	sub    $0x10,%rsp
  402076:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40207a:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
  40207e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402082:	48 8b 50 08          	mov    0x8(%rax),%rdx
  402086:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40208a:	48 8b 40 10          	mov    0x10(%rax),%rax
  40208e:	48 39 c2             	cmp    %rax,%rdx
  402091:	74 31                	je     4020c4 <_ZNSt6vectorI5stateSaIS0_EE9push_backERKS0_+0x5a>
	    _Alloc_traits::construct(this->_M_impl, this->_M_impl._M_finish,
  402093:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402097:	48 8b 48 08          	mov    0x8(%rax),%rcx
  40209b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40209f:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  4020a3:	48 89 ce             	mov    %rcx,%rsi
  4020a6:	48 89 c7             	mov    %rax,%rdi
  4020a9:	e8 2c 02 00 00       	callq  4022da <_ZNSt16allocator_traitsISaI5stateEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_>
	    ++this->_M_impl._M_finish;
  4020ae:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4020b2:	48 8b 40 08          	mov    0x8(%rax),%rax
  4020b6:	48 8d 50 10          	lea    0x10(%rax),%rdx
  4020ba:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4020be:	48 89 50 08          	mov    %rdx,0x8(%rax)
      }
  4020c2:	eb 22                	jmp    4020e6 <_ZNSt6vectorI5stateSaIS0_EE9push_backERKS0_+0x7c>
	  _M_realloc_insert(end(), __x);
  4020c4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4020c8:	48 89 c7             	mov    %rax,%rdi
  4020cb:	e8 28 fe ff ff       	callq  401ef8 <_ZNSt6vectorI5stateSaIS0_EE3endEv>
  4020d0:	48 89 c1             	mov    %rax,%rcx
  4020d3:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  4020d7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4020db:	48 89 ce             	mov    %rcx,%rsi
  4020de:	48 89 c7             	mov    %rax,%rdi
  4020e1:	e8 76 02 00 00       	callq  40235c <_ZNSt6vectorI5stateSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_>
      }
  4020e6:	90                   	nop
  4020e7:	c9                   	leaveq 
  4020e8:	c3                   	retq   
  4020e9:	90                   	nop

00000000004020ea <_ZNSaI5stateEC1Ev>:
      allocator() _GLIBCXX_NOTHROW { }
  4020ea:	f3 0f 1e fa          	endbr64 
  4020ee:	55                   	push   %rbp
  4020ef:	48 89 e5             	mov    %rsp,%rbp
  4020f2:	48 83 ec 10          	sub    $0x10,%rsp
  4020f6:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4020fa:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4020fe:	48 89 c7             	mov    %rax,%rdi
  402101:	e8 4a 05 00 00       	callq  402650 <_ZN9__gnu_cxx13new_allocatorI5stateEC1Ev>
  402106:	90                   	nop
  402107:	c9                   	leaveq 
  402108:	c3                   	retq   
  402109:	90                   	nop

000000000040210a <_ZNSt12_Vector_baseI5stateSaIS0_EE17_Vector_impl_dataC1Ev>:
	_Vector_impl_data() _GLIBCXX_NOEXCEPT
  40210a:	f3 0f 1e fa          	endbr64 
  40210e:	55                   	push   %rbp
  40210f:	48 89 e5             	mov    %rsp,%rbp
  402112:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
	: _M_start(), _M_finish(), _M_end_of_storage()
  402116:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40211a:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  402121:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402125:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  40212c:	00 
  40212d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402131:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
  402138:	00 
	{ }
  402139:	90                   	nop
  40213a:	5d                   	pop    %rbp
  40213b:	c3                   	retq   

000000000040213c <_ZN9__gnu_cxx13new_allocatorI5stateED1Ev>:
      template<typename _Tp1>
	_GLIBCXX20_CONSTEXPR
	new_allocator(const new_allocator<_Tp1>&) _GLIBCXX_USE_NOEXCEPT { }

#if __cplusplus <= 201703L
      ~new_allocator() _GLIBCXX_USE_NOEXCEPT { }
  40213c:	f3 0f 1e fa          	endbr64 
  402140:	55                   	push   %rbp
  402141:	48 89 e5             	mov    %rsp,%rbp
  402144:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  402148:	90                   	nop
  402149:	5d                   	pop    %rbp
  40214a:	c3                   	retq   
  40214b:	90                   	nop

000000000040214c <_ZNSt12_Vector_baseI5stateSaIS0_EE13_M_deallocateEPS0_m>:
      _M_deallocate(pointer __p, size_t __n)
  40214c:	f3 0f 1e fa          	endbr64 
  402150:	55                   	push   %rbp
  402151:	48 89 e5             	mov    %rsp,%rbp
  402154:	48 83 ec 20          	sub    $0x20,%rsp
  402158:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40215c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  402160:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
	if (__p)
  402164:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
  402169:	74 17                	je     402182 <_ZNSt12_Vector_baseI5stateSaIS0_EE13_M_deallocateEPS0_m+0x36>
	  _Tr::deallocate(_M_impl, __p, __n);
  40216b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40216f:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  402173:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  402177:	48 89 ce             	mov    %rcx,%rsi
  40217a:	48 89 c7             	mov    %rax,%rdi
  40217d:	e8 dd 04 00 00       	callq  40265f <_ZNSt16allocator_traitsISaI5stateEE10deallocateERS1_PS0_m>
      }
  402182:	90                   	nop
  402183:	c9                   	leaveq 
  402184:	c3                   	retq   
  402185:	90                   	nop

0000000000402186 <_ZN9__gnu_cxx17__normal_iteratorIP5stateSt6vectorIS1_SaIS1_EEEC1ERKS2_>:
      __normal_iterator(const _Iterator& __i) _GLIBCXX_NOEXCEPT
  402186:	f3 0f 1e fa          	endbr64 
  40218a:	55                   	push   %rbp
  40218b:	48 89 e5             	mov    %rsp,%rbp
  40218e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  402192:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
      : _M_current(__i) { }
  402196:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40219a:	48 8b 10             	mov    (%rax),%rdx
  40219d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4021a1:	48 89 10             	mov    %rdx,(%rax)
  4021a4:	90                   	nop
  4021a5:	5d                   	pop    %rbp
  4021a6:	c3                   	retq   
  4021a7:	90                   	nop

00000000004021a8 <_ZNK9__gnu_cxx17__normal_iteratorIP5stateSt6vectorIS1_SaIS1_EEE4baseEv>:
      base() const _GLIBCXX_NOEXCEPT
  4021a8:	f3 0f 1e fa          	endbr64 
  4021ac:	55                   	push   %rbp
  4021ad:	48 89 e5             	mov    %rsp,%rbp
  4021b0:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return _M_current; }
  4021b4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4021b8:	5d                   	pop    %rbp
  4021b9:	c3                   	retq   

00000000004021ba <_ZNSt12_Vector_baseI5stateSaIS0_EE17_Vector_impl_data12_M_swap_dataERS3_>:
	_M_swap_data(_Vector_impl_data& __x) _GLIBCXX_NOEXCEPT
  4021ba:	f3 0f 1e fa          	endbr64 
  4021be:	55                   	push   %rbp
  4021bf:	48 89 e5             	mov    %rsp,%rbp
  4021c2:	48 83 ec 30          	sub    $0x30,%rsp
  4021c6:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  4021ca:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
  4021ce:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4021d5:	00 00 
  4021d7:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4021db:	31 c0                	xor    %eax,%eax
	  _Vector_impl_data __tmp;
  4021dd:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  4021e1:	48 89 c7             	mov    %rax,%rdi
  4021e4:	e8 21 ff ff ff       	callq  40210a <_ZNSt12_Vector_baseI5stateSaIS0_EE17_Vector_impl_dataC1Ev>
	  __tmp._M_copy_data(*this);
  4021e9:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  4021ed:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  4021f1:	48 89 d6             	mov    %rdx,%rsi
  4021f4:	48 89 c7             	mov    %rax,%rdi
  4021f7:	e8 96 04 00 00       	callq  402692 <_ZNSt12_Vector_baseI5stateSaIS0_EE17_Vector_impl_data12_M_copy_dataERKS3_>
	  _M_copy_data(__x);
  4021fc:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
  402200:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  402204:	48 89 d6             	mov    %rdx,%rsi
  402207:	48 89 c7             	mov    %rax,%rdi
  40220a:	e8 83 04 00 00       	callq  402692 <_ZNSt12_Vector_baseI5stateSaIS0_EE17_Vector_impl_data12_M_copy_dataERKS3_>
	  __x._M_copy_data(__tmp);
  40220f:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
  402213:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  402217:	48 89 d6             	mov    %rdx,%rsi
  40221a:	48 89 c7             	mov    %rax,%rdi
  40221d:	e8 70 04 00 00       	callq  402692 <_ZNSt12_Vector_baseI5stateSaIS0_EE17_Vector_impl_data12_M_copy_dataERKS3_>
	}
  402222:	90                   	nop
  402223:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402227:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  40222e:	00 00 
  402230:	74 05                	je     402237 <_ZNSt12_Vector_baseI5stateSaIS0_EE17_Vector_impl_data12_M_swap_dataERS3_+0x7d>
  402232:	e8 d9 ef ff ff       	callq  401210 <__stack_chk_fail@plt>
  402237:	c9                   	leaveq 
  402238:	c3                   	retq   

0000000000402239 <_ZN9__gnu_cxx14__alloc_traitsISaI5stateES1_E10_S_on_swapERS2_S4_>:
      { _Base_type::destroy(__a, std::__to_address(__p)); }

    static constexpr _Alloc _S_select_on_copy(const _Alloc& __a)
    { return _Base_type::select_on_container_copy_construction(__a); }

    static _GLIBCXX14_CONSTEXPR void _S_on_swap(_Alloc& __a, _Alloc& __b)
  402239:	f3 0f 1e fa          	endbr64 
  40223d:	55                   	push   %rbp
  40223e:	48 89 e5             	mov    %rsp,%rbp
  402241:	48 83 ec 10          	sub    $0x10,%rsp
  402245:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  402249:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    { std::__alloc_on_swap(__a, __b); }
  40224d:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  402251:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402255:	48 89 d6             	mov    %rdx,%rsi
  402258:	48 89 c7             	mov    %rax,%rdi
  40225b:	e8 73 04 00 00       	callq  4026d3 <_ZSt15__alloc_on_swapISaI5stateEEvRT_S3_>
  402260:	90                   	nop
  402261:	c9                   	leaveq 
  402262:	c3                   	retq   
  402263:	90                   	nop

0000000000402264 <_ZNSt12_Vector_baseI5stateSaIS0_EE19_M_get_Tp_allocatorEv>:
      _M_get_Tp_allocator() _GLIBCXX_NOEXCEPT
  402264:	f3 0f 1e fa          	endbr64 
  402268:	55                   	push   %rbp
  402269:	48 89 e5             	mov    %rsp,%rbp
  40226c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return this->_M_impl; }
  402270:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402274:	5d                   	pop    %rbp
  402275:	c3                   	retq   

0000000000402276 <_ZNSt6vectorI5stateSaIS0_EE15_M_erase_at_endEPS0_>:
      // Internal erase functions follow.

      // Called by erase(q1,q2), clear(), resize(), _M_fill_assign,
      // _M_assign_aux.
      void
      _M_erase_at_end(pointer __pos) _GLIBCXX_NOEXCEPT
  402276:	f3 0f 1e fa          	endbr64 
  40227a:	55                   	push   %rbp
  40227b:	48 89 e5             	mov    %rsp,%rbp
  40227e:	48 83 ec 20          	sub    $0x20,%rsp
  402282:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  402286:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
      {
	if (size_type __n = this->_M_impl._M_finish - __pos)
  40228a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40228e:	48 8b 40 08          	mov    0x8(%rax),%rax
  402292:	48 2b 45 e0          	sub    -0x20(%rbp),%rax
  402296:	48 c1 f8 04          	sar    $0x4,%rax
  40229a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40229e:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  4022a3:	74 32                	je     4022d7 <_ZNSt6vectorI5stateSaIS0_EE15_M_erase_at_endEPS0_+0x61>
	  {
	    std::_Destroy(__pos, this->_M_impl._M_finish,
			  _M_get_Tp_allocator());
  4022a5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4022a9:	48 89 c7             	mov    %rax,%rdi
  4022ac:	e8 b3 ff ff ff       	callq  402264 <_ZNSt12_Vector_baseI5stateSaIS0_EE19_M_get_Tp_allocatorEv>
  4022b1:	48 89 c2             	mov    %rax,%rdx
	    std::_Destroy(__pos, this->_M_impl._M_finish,
  4022b4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4022b8:	48 8b 48 08          	mov    0x8(%rax),%rcx
  4022bc:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4022c0:	48 89 ce             	mov    %rcx,%rsi
  4022c3:	48 89 c7             	mov    %rax,%rdi
  4022c6:	e8 32 04 00 00       	callq  4026fd <_ZSt8_DestroyIP5stateS0_EvT_S2_RSaIT0_E>
	    this->_M_impl._M_finish = __pos;
  4022cb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4022cf:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  4022d3:	48 89 50 08          	mov    %rdx,0x8(%rax)
	    _GLIBCXX_ASAN_ANNOTATE_SHRINK(__n);
	  }
      }
  4022d7:	90                   	nop
  4022d8:	c9                   	leaveq 
  4022d9:	c3                   	retq   

00000000004022da <_ZNSt16allocator_traitsISaI5stateEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_>:
       *  in C++11, C++14 and C++17. Changed in C++20 to call
       *  `std::construct_at(__p, std::forward<_Args>(__args)...)` instead.
      */
      template<typename _Up, typename... _Args>
	static _GLIBCXX20_CONSTEXPR void
	construct(allocator_type& __a __attribute__((__unused__)), _Up* __p,
  4022da:	f3 0f 1e fa          	endbr64 
  4022de:	55                   	push   %rbp
  4022df:	48 89 e5             	mov    %rsp,%rbp
  4022e2:	48 83 ec 20          	sub    $0x20,%rsp
  4022e6:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4022ea:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  4022ee:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
		  _Args&&... __args)
	noexcept(std::is_nothrow_constructible<_Up, _Args...>::value)
	{
#if __cplusplus <= 201703L
	  __a.construct(__p, std::forward<_Args>(__args)...);
  4022f2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4022f6:	48 89 c7             	mov    %rax,%rdi
  4022f9:	e8 2d 04 00 00       	callq  40272b <_ZSt7forwardIRK5stateEOT_RNSt16remove_referenceIS3_E4typeE>
  4022fe:	48 89 c2             	mov    %rax,%rdx
  402301:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  402305:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402309:	48 89 ce             	mov    %rcx,%rsi
  40230c:	48 89 c7             	mov    %rax,%rdi
  40230f:	e8 2a 04 00 00       	callq  40273e <_ZN9__gnu_cxx13new_allocatorI5stateE9constructIS1_JRKS1_EEEvPT_DpOT0_>
#else
	  std::construct_at(__p, std::forward<_Args>(__args)...);
#endif
	}
  402314:	90                   	nop
  402315:	c9                   	leaveq 
  402316:	c3                   	retq   

0000000000402317 <_ZNSt6vectorI5stateSaIS0_EE15_S_use_relocateEv>:
      _S_use_relocate()
  402317:	f3 0f 1e fa          	endbr64 
  40231b:	55                   	push   %rbp
  40231c:	48 89 e5             	mov    %rsp,%rbp
  40231f:	48 83 ec 10          	sub    $0x10,%rsp
  402323:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40232a:	00 00 
  40232c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  402330:	31 c0                	xor    %eax,%eax
	return _S_nothrow_relocate(__is_move_insertable<_Tp_alloc_type>{});
  402332:	e8 16 00 00 00       	callq  40234d <_ZNSt6vectorI5stateSaIS0_EE19_S_nothrow_relocateESt17integral_constantIbLb1EE>
      }
  402337:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40233b:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
  402342:	00 00 
  402344:	74 05                	je     40234b <_ZNSt6vectorI5stateSaIS0_EE15_S_use_relocateEv+0x34>
  402346:	e8 c5 ee ff ff       	callq  401210 <__stack_chk_fail@plt>
  40234b:	c9                   	leaveq 
  40234c:	c3                   	retq   

000000000040234d <_ZNSt6vectorI5stateSaIS0_EE19_S_nothrow_relocateESt17integral_constantIbLb1EE>:
      _S_nothrow_relocate(true_type)
  40234d:	f3 0f 1e fa          	endbr64 
  402351:	55                   	push   %rbp
  402352:	48 89 e5             	mov    %rsp,%rbp
					  std::declval<_Tp_alloc_type&>()));
  402355:	b8 01 00 00 00       	mov    $0x1,%eax
      }
  40235a:	5d                   	pop    %rbp
  40235b:	c3                   	retq   

000000000040235c <_ZNSt6vectorI5stateSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_>:

#if __cplusplus >= 201103L
  template<typename _Tp, typename _Alloc>
    template<typename... _Args>
      void
      vector<_Tp, _Alloc>::
  40235c:	f3 0f 1e fa          	endbr64 
  402360:	55                   	push   %rbp
  402361:	48 89 e5             	mov    %rsp,%rbp
  402364:	53                   	push   %rbx
  402365:	48 83 ec 68          	sub    $0x68,%rsp
  402369:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
  40236d:	48 89 75 a0          	mov    %rsi,-0x60(%rbp)
  402371:	48 89 55 98          	mov    %rdx,-0x68(%rbp)
  402375:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40237c:	00 00 
  40237e:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  402382:	31 c0                	xor    %eax,%eax
    vector<_Tp, _Alloc>::
    _M_realloc_insert(iterator __position, const _Tp& __x)
#endif
    {
      const size_type __len =
	_M_check_len(size_type(1), "vector::_M_realloc_insert");
  402384:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  402388:	48 8d 15 4a 1d 00 00 	lea    0x1d4a(%rip),%rdx        # 4040d9 <_ZStL19piecewise_construct+0xd1>
  40238f:	be 01 00 00 00       	mov    $0x1,%esi
  402394:	48 89 c7             	mov    %rax,%rdi
  402397:	e8 f4 03 00 00       	callq  402790 <_ZNKSt6vectorI5stateSaIS0_EE12_M_check_lenEmPKc>
  40239c:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
      pointer __old_start = this->_M_impl._M_start;
  4023a0:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  4023a4:	48 8b 00             	mov    (%rax),%rax
  4023a7:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
      pointer __old_finish = this->_M_impl._M_finish;
  4023ab:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  4023af:	48 8b 40 08          	mov    0x8(%rax),%rax
  4023b3:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
      const size_type __elems_before = __position - begin();
  4023b7:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  4023bb:	48 89 c7             	mov    %rax,%rdi
  4023be:	e8 e9 fa ff ff       	callq  401eac <_ZNSt6vectorI5stateSaIS0_EE5beginEv>
  4023c3:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  4023c7:	48 8d 55 b0          	lea    -0x50(%rbp),%rdx
  4023cb:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  4023cf:	48 89 d6             	mov    %rdx,%rsi
  4023d2:	48 89 c7             	mov    %rax,%rdi
  4023d5:	e8 a5 04 00 00       	callq  40287f <_ZN9__gnu_cxxmiIP5stateSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_>
  4023da:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
      pointer __new_start(this->_M_allocate(__len));
  4023de:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  4023e2:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  4023e6:	48 89 d6             	mov    %rdx,%rsi
  4023e9:	48 89 c7             	mov    %rax,%rdi
  4023ec:	e8 d1 04 00 00       	callq  4028c2 <_ZNSt12_Vector_baseI5stateSaIS0_EE11_M_allocateEm>
  4023f1:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
      pointer __new_finish(__new_start);
  4023f5:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4023f9:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
	  // The order of the three operations is dictated by the C++11
	  // case, where the moves could alter a new element belonging
	  // to the existing vector.  This is an issue only for callers
	  // taking the element by lvalue ref (see last bullet of C++11
	  // [res.on.arguments]).
	  _Alloc_traits::construct(this->_M_impl,
  4023fd:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  402401:	48 89 c7             	mov    %rax,%rdi
  402404:	e8 22 03 00 00       	callq  40272b <_ZSt7forwardIRK5stateEOT_RNSt16remove_referenceIS3_E4typeE>
  402409:	48 89 c2             	mov    %rax,%rdx
				   __new_start + __elems_before,
  40240c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  402410:	48 c1 e0 04          	shl    $0x4,%rax
  402414:	48 89 c1             	mov    %rax,%rcx
	  _Alloc_traits::construct(this->_M_impl,
  402417:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40241b:	48 01 c1             	add    %rax,%rcx
  40241e:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  402422:	48 89 ce             	mov    %rcx,%rsi
  402425:	48 89 c7             	mov    %rax,%rdi
  402428:	e8 ad fe ff ff       	callq  4022da <_ZNSt16allocator_traitsISaI5stateEE9constructIS0_JRKS0_EEEvRS1_PT_DpOT0_>
#if __cplusplus >= 201103L
				   std::forward<_Args>(__args)...);
#else
				   __x);
#endif
	  __new_finish = pointer();
  40242d:	48 c7 45 b8 00 00 00 	movq   $0x0,-0x48(%rbp)
  402434:	00 

#if __cplusplus >= 201103L
	  if _GLIBCXX17_CONSTEXPR (_S_use_relocate())
  402435:	e8 dd fe ff ff       	callq  402317 <_ZNSt6vectorI5stateSaIS0_EE15_S_use_relocateEv>
  40243a:	84 c0                	test   %al,%al
  40243c:	74 71                	je     4024af <_ZNSt6vectorI5stateSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x153>
	    {
	      __new_finish = _S_relocate(__old_start, __position.base(),
					 __new_start, _M_get_Tp_allocator());
  40243e:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  402442:	48 89 c7             	mov    %rax,%rdi
  402445:	e8 1a fe ff ff       	callq  402264 <_ZNSt12_Vector_baseI5stateSaIS0_EE19_M_get_Tp_allocatorEv>
  40244a:	48 89 c3             	mov    %rax,%rbx
	      __new_finish = _S_relocate(__old_start, __position.base(),
  40244d:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  402451:	48 89 c7             	mov    %rax,%rdi
  402454:	e8 4f fd ff ff       	callq  4021a8 <_ZNK9__gnu_cxx17__normal_iteratorIP5stateSt6vectorIS1_SaIS1_EEE4baseEv>
  402459:	48 8b 30             	mov    (%rax),%rsi
  40245c:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  402460:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  402464:	48 89 d9             	mov    %rbx,%rcx
  402467:	48 89 c7             	mov    %rax,%rdi
  40246a:	e8 8a 04 00 00       	callq  4028f9 <_ZNSt6vectorI5stateSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_>
  40246f:	48 89 45 b8          	mov    %rax,-0x48(%rbp)

	      ++__new_finish;
  402473:	48 83 45 b8 10       	addq   $0x10,-0x48(%rbp)

	      __new_finish = _S_relocate(__position.base(), __old_finish,
					 __new_finish, _M_get_Tp_allocator());
  402478:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  40247c:	48 89 c7             	mov    %rax,%rdi
  40247f:	e8 e0 fd ff ff       	callq  402264 <_ZNSt12_Vector_baseI5stateSaIS0_EE19_M_get_Tp_allocatorEv>
  402484:	48 89 c3             	mov    %rax,%rbx
	      __new_finish = _S_relocate(__position.base(), __old_finish,
  402487:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  40248b:	48 89 c7             	mov    %rax,%rdi
  40248e:	e8 15 fd ff ff       	callq  4021a8 <_ZNK9__gnu_cxx17__normal_iteratorIP5stateSt6vectorIS1_SaIS1_EEE4baseEv>
  402493:	48 8b 00             	mov    (%rax),%rax
  402496:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
  40249a:	48 8b 75 d0          	mov    -0x30(%rbp),%rsi
  40249e:	48 89 d9             	mov    %rbx,%rcx
  4024a1:	48 89 c7             	mov    %rax,%rdi
  4024a4:	e8 50 04 00 00       	callq  4028f9 <_ZNSt6vectorI5stateSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_>
  4024a9:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  4024ad:	eb 6f                	jmp    40251e <_ZNSt6vectorI5stateSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x1c2>
#endif
	    {
	      __new_finish
		= std::__uninitialized_move_if_noexcept_a
		(__old_start, __position.base(),
		 __new_start, _M_get_Tp_allocator());
  4024af:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  4024b3:	48 89 c7             	mov    %rax,%rdi
  4024b6:	e8 a9 fd ff ff       	callq  402264 <_ZNSt12_Vector_baseI5stateSaIS0_EE19_M_get_Tp_allocatorEv>
  4024bb:	48 89 c3             	mov    %rax,%rbx
		(__old_start, __position.base(),
  4024be:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  4024c2:	48 89 c7             	mov    %rax,%rdi
  4024c5:	e8 de fc ff ff       	callq  4021a8 <_ZNK9__gnu_cxx17__normal_iteratorIP5stateSt6vectorIS1_SaIS1_EEE4baseEv>
  4024ca:	48 8b 30             	mov    (%rax),%rsi
  4024cd:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  4024d1:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4024d5:	48 89 d9             	mov    %rbx,%rcx
  4024d8:	48 89 c7             	mov    %rax,%rdi
  4024db:	e8 4f 04 00 00       	callq  40292f <_ZSt34__uninitialized_move_if_noexcept_aIP5stateS1_SaIS0_EET0_T_S4_S3_RT1_>
  4024e0:	48 89 45 b8          	mov    %rax,-0x48(%rbp)

	      ++__new_finish;
  4024e4:	48 83 45 b8 10       	addq   $0x10,-0x48(%rbp)

	      __new_finish
		= std::__uninitialized_move_if_noexcept_a
		(__position.base(), __old_finish,
		 __new_finish, _M_get_Tp_allocator());
  4024e9:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  4024ed:	48 89 c7             	mov    %rax,%rdi
  4024f0:	e8 6f fd ff ff       	callq  402264 <_ZNSt12_Vector_baseI5stateSaIS0_EE19_M_get_Tp_allocatorEv>
  4024f5:	48 89 c3             	mov    %rax,%rbx
		(__position.base(), __old_finish,
  4024f8:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
  4024fc:	48 89 c7             	mov    %rax,%rdi
  4024ff:	e8 a4 fc ff ff       	callq  4021a8 <_ZNK9__gnu_cxx17__normal_iteratorIP5stateSt6vectorIS1_SaIS1_EEE4baseEv>
  402504:	48 8b 00             	mov    (%rax),%rax
  402507:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
  40250b:	48 8b 75 d0          	mov    -0x30(%rbp),%rsi
  40250f:	48 89 d9             	mov    %rbx,%rcx
  402512:	48 89 c7             	mov    %rax,%rdi
  402515:	e8 15 04 00 00       	callq  40292f <_ZSt34__uninitialized_move_if_noexcept_aIP5stateS1_SaIS0_EET0_T_S4_S3_RT1_>
  40251a:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
	    std::_Destroy(__new_start, __new_finish, _M_get_Tp_allocator());
	  _M_deallocate(__new_start, __len);
	  __throw_exception_again;
	}
#if __cplusplus >= 201103L
      if _GLIBCXX17_CONSTEXPR (!_S_use_relocate())
  40251e:	e8 f4 fd ff ff       	callq  402317 <_ZNSt6vectorI5stateSaIS0_EE15_S_use_relocateEv>
  402523:	83 f0 01             	xor    $0x1,%eax
  402526:	84 c0                	test   %al,%al
  402528:	74 22                	je     40254c <_ZNSt6vectorI5stateSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x1f0>
#endif
	std::_Destroy(__old_start, __old_finish, _M_get_Tp_allocator());
  40252a:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  40252e:	48 89 c7             	mov    %rax,%rdi
  402531:	e8 2e fd ff ff       	callq  402264 <_ZNSt12_Vector_baseI5stateSaIS0_EE19_M_get_Tp_allocatorEv>
  402536:	48 89 c2             	mov    %rax,%rdx
  402539:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
  40253d:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  402541:	48 89 ce             	mov    %rcx,%rsi
  402544:	48 89 c7             	mov    %rax,%rdi
  402547:	e8 b1 01 00 00       	callq  4026fd <_ZSt8_DestroyIP5stateS0_EvT_S2_RSaIT0_E>
      _GLIBCXX_ASAN_ANNOTATE_REINIT;
      _M_deallocate(__old_start,
  40254c:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
		    this->_M_impl._M_end_of_storage - __old_start);
  402550:	48 8b 55 a8          	mov    -0x58(%rbp),%rdx
  402554:	48 8b 52 10          	mov    0x10(%rdx),%rdx
  402558:	48 2b 55 c8          	sub    -0x38(%rbp),%rdx
  40255c:	48 c1 fa 04          	sar    $0x4,%rdx
      _M_deallocate(__old_start,
  402560:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
  402564:	48 89 ce             	mov    %rcx,%rsi
  402567:	48 89 c7             	mov    %rax,%rdi
  40256a:	e8 dd fb ff ff       	callq  40214c <_ZNSt12_Vector_baseI5stateSaIS0_EE13_M_deallocateEPS0_m>
      this->_M_impl._M_start = __new_start;
  40256f:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  402573:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  402577:	48 89 10             	mov    %rdx,(%rax)
      this->_M_impl._M_finish = __new_finish;
  40257a:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  40257e:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
  402582:	48 89 50 08          	mov    %rdx,0x8(%rax)
      this->_M_impl._M_end_of_storage = __new_start + __len;
  402586:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  40258a:	48 c1 e0 04          	shl    $0x4,%rax
  40258e:	48 89 c2             	mov    %rax,%rdx
  402591:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  402595:	48 01 c2             	add    %rax,%rdx
  402598:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  40259c:	48 89 50 10          	mov    %rdx,0x10(%rax)
    }
  4025a0:	90                   	nop
  4025a1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4025a5:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  4025ac:	00 00 
  4025ae:	0f 84 95 00 00 00    	je     402649 <_ZNSt6vectorI5stateSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x2ed>
  4025b4:	e9 8b 00 00 00       	jmpq   402644 <_ZNSt6vectorI5stateSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x2e8>
  4025b9:	f3 0f 1e fa          	endbr64 
      __catch(...)
  4025bd:	48 89 c7             	mov    %rax,%rdi
  4025c0:	e8 eb eb ff ff       	callq  4011b0 <__cxa_begin_catch@plt>
	  if (!__new_finish)
  4025c5:	48 83 7d b8 00       	cmpq   $0x0,-0x48(%rbp)
  4025ca:	75 23                	jne    4025ef <_ZNSt6vectorI5stateSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x293>
				   __new_start + __elems_before);
  4025cc:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4025d0:	48 c1 e0 04          	shl    $0x4,%rax
  4025d4:	48 89 c2             	mov    %rax,%rdx
	    _Alloc_traits::destroy(this->_M_impl,
  4025d7:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4025db:	48 01 c2             	add    %rax,%rdx
  4025de:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  4025e2:	48 89 d6             	mov    %rdx,%rsi
  4025e5:	48 89 c7             	mov    %rax,%rdi
  4025e8:	e8 99 03 00 00       	callq  402986 <_ZNSt16allocator_traitsISaI5stateEE7destroyIS0_EEvRS1_PT_>
  4025ed:	eb 22                	jmp    402611 <_ZNSt6vectorI5stateSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x2b5>
	    std::_Destroy(__new_start, __new_finish, _M_get_Tp_allocator());
  4025ef:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  4025f3:	48 89 c7             	mov    %rax,%rdi
  4025f6:	e8 69 fc ff ff       	callq  402264 <_ZNSt12_Vector_baseI5stateSaIS0_EE19_M_get_Tp_allocatorEv>
  4025fb:	48 89 c2             	mov    %rax,%rdx
  4025fe:	48 8b 4d b8          	mov    -0x48(%rbp),%rcx
  402602:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  402606:	48 89 ce             	mov    %rcx,%rsi
  402609:	48 89 c7             	mov    %rax,%rdi
  40260c:	e8 ec 00 00 00       	callq  4026fd <_ZSt8_DestroyIP5stateS0_EvT_S2_RSaIT0_E>
	  _M_deallocate(__new_start, __len);
  402611:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  402615:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
  402619:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  40261d:	48 89 ce             	mov    %rcx,%rsi
  402620:	48 89 c7             	mov    %rax,%rdi
  402623:	e8 24 fb ff ff       	callq  40214c <_ZNSt12_Vector_baseI5stateSaIS0_EE13_M_deallocateEPS0_m>
	  __throw_exception_again;
  402628:	e8 23 ec ff ff       	callq  401250 <__cxa_rethrow@plt>
  40262d:	f3 0f 1e fa          	endbr64 
      __catch(...)
  402631:	48 89 c3             	mov    %rax,%rbx
  402634:	e8 57 ec ff ff       	callq  401290 <__cxa_end_catch@plt>
  402639:	48 89 d8             	mov    %rbx,%rax
  40263c:	48 89 c7             	mov    %rax,%rdi
  40263f:	e8 5c ec ff ff       	callq  4012a0 <_Unwind_Resume@plt>
    }
  402644:	e8 c7 eb ff ff       	callq  401210 <__stack_chk_fail@plt>
  402649:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  40264d:	c9                   	leaveq 
  40264e:	c3                   	retq   
  40264f:	90                   	nop

0000000000402650 <_ZN9__gnu_cxx13new_allocatorI5stateEC1Ev>:
      new_allocator() _GLIBCXX_USE_NOEXCEPT { }
  402650:	f3 0f 1e fa          	endbr64 
  402654:	55                   	push   %rbp
  402655:	48 89 e5             	mov    %rsp,%rbp
  402658:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40265c:	90                   	nop
  40265d:	5d                   	pop    %rbp
  40265e:	c3                   	retq   

000000000040265f <_ZNSt16allocator_traitsISaI5stateEE10deallocateERS1_PS0_m>:
      deallocate(allocator_type& __a, pointer __p, size_type __n)
  40265f:	f3 0f 1e fa          	endbr64 
  402663:	55                   	push   %rbp
  402664:	48 89 e5             	mov    %rsp,%rbp
  402667:	48 83 ec 20          	sub    $0x20,%rsp
  40266b:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40266f:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  402673:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
      { __a.deallocate(__p, __n); }
  402677:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  40267b:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  40267f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402683:	48 89 ce             	mov    %rcx,%rsi
  402686:	48 89 c7             	mov    %rax,%rdi
  402689:	e8 22 03 00 00       	callq  4029b0 <_ZN9__gnu_cxx13new_allocatorI5stateE10deallocateEPS1_m>
  40268e:	90                   	nop
  40268f:	c9                   	leaveq 
  402690:	c3                   	retq   
  402691:	90                   	nop

0000000000402692 <_ZNSt12_Vector_baseI5stateSaIS0_EE17_Vector_impl_data12_M_copy_dataERKS3_>:
	_M_copy_data(_Vector_impl_data const& __x) _GLIBCXX_NOEXCEPT
  402692:	f3 0f 1e fa          	endbr64 
  402696:	55                   	push   %rbp
  402697:	48 89 e5             	mov    %rsp,%rbp
  40269a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40269e:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
	  _M_start = __x._M_start;
  4026a2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4026a6:	48 8b 10             	mov    (%rax),%rdx
  4026a9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4026ad:	48 89 10             	mov    %rdx,(%rax)
	  _M_finish = __x._M_finish;
  4026b0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4026b4:	48 8b 50 08          	mov    0x8(%rax),%rdx
  4026b8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4026bc:	48 89 50 08          	mov    %rdx,0x8(%rax)
	  _M_end_of_storage = __x._M_end_of_storage;
  4026c0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4026c4:	48 8b 50 10          	mov    0x10(%rax),%rdx
  4026c8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4026cc:	48 89 50 10          	mov    %rdx,0x10(%rax)
	}
  4026d0:	90                   	nop
  4026d1:	5d                   	pop    %rbp
  4026d2:	c3                   	retq   

00000000004026d3 <_ZSt15__alloc_on_swapISaI5stateEEvRT_S3_>:
    { }
#endif

  template<typename _Alloc>
    _GLIBCXX14_CONSTEXPR inline void
    __alloc_on_swap(_Alloc& __one, _Alloc& __two)
  4026d3:	f3 0f 1e fa          	endbr64 
  4026d7:	55                   	push   %rbp
  4026d8:	48 89 e5             	mov    %rsp,%rbp
  4026db:	48 83 ec 10          	sub    $0x10,%rsp
  4026df:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4026e3:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
	{
	  using std::swap;
	  swap(__one, __two);
	}
#else
      __do_alloc_on_swap(__one, __two, __pocs());
  4026e7:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  4026eb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4026ef:	48 89 d6             	mov    %rdx,%rsi
  4026f2:	48 89 c7             	mov    %rax,%rdi
  4026f5:	e8 eb 02 00 00       	callq  4029e5 <_ZSt18__do_alloc_on_swapISaI5stateEEvRT_S3_St17integral_constantIbLb0EE>
#endif
    }
  4026fa:	90                   	nop
  4026fb:	c9                   	leaveq 
  4026fc:	c3                   	retq   

00000000004026fd <_ZSt8_DestroyIP5stateS0_EvT_S2_RSaIT0_E>:
#endif
    }

  template<typename _ForwardIterator, typename _Tp>
    inline void
    _Destroy(_ForwardIterator __first, _ForwardIterator __last,
  4026fd:	f3 0f 1e fa          	endbr64 
  402701:	55                   	push   %rbp
  402702:	48 89 e5             	mov    %rsp,%rbp
  402705:	48 83 ec 20          	sub    $0x20,%rsp
  402709:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40270d:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  402711:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
	     allocator<_Tp>&)
    {
      _Destroy(__first, __last);
  402715:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  402719:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40271d:	48 89 d6             	mov    %rdx,%rsi
  402720:	48 89 c7             	mov    %rax,%rdi
  402723:	e8 d0 02 00 00       	callq  4029f8 <_ZSt8_DestroyIP5stateEvT_S2_>
    }
  402728:	90                   	nop
  402729:	c9                   	leaveq 
  40272a:	c3                   	retq   

000000000040272b <_ZSt7forwardIRK5stateEOT_RNSt16remove_referenceIS3_E4typeE>:
   *
   *  This function is used to implement "perfect forwarding".
   */
  template<typename _Tp>
    constexpr _Tp&&
    forward(typename std::remove_reference<_Tp>::type& __t) noexcept
  40272b:	f3 0f 1e fa          	endbr64 
  40272f:	55                   	push   %rbp
  402730:	48 89 e5             	mov    %rsp,%rbp
  402733:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return static_cast<_Tp&&>(__t); }
  402737:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40273b:	5d                   	pop    %rbp
  40273c:	c3                   	retq   
  40273d:	90                   	nop

000000000040273e <_ZN9__gnu_cxx13new_allocatorI5stateE9constructIS1_JRKS1_EEEvPT_DpOT0_>:
      { return _M_max_size(); }

#if __cplusplus >= 201103L
      template<typename _Up, typename... _Args>
	void
	construct(_Up* __p, _Args&&... __args)
  40273e:	f3 0f 1e fa          	endbr64 
  402742:	55                   	push   %rbp
  402743:	48 89 e5             	mov    %rsp,%rbp
  402746:	53                   	push   %rbx
  402747:	48 83 ec 28          	sub    $0x28,%rsp
  40274b:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  40274f:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  402753:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
	noexcept(std::is_nothrow_constructible<_Up, _Args...>::value)
	{ ::new((void *)__p) _Up(std::forward<_Args>(__args)...); }
  402757:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40275b:	48 89 c7             	mov    %rax,%rdi
  40275e:	e8 c8 ff ff ff       	callq  40272b <_ZSt7forwardIRK5stateEOT_RNSt16remove_referenceIS3_E4typeE>
  402763:	48 89 c3             	mov    %rax,%rbx
  402766:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40276a:	48 89 c6             	mov    %rax,%rsi
  40276d:	bf 10 00 00 00       	mov    $0x10,%edi
  402772:	e8 81 f1 ff ff       	callq  4018f8 <_ZnwmPv>
  402777:	48 89 c1             	mov    %rax,%rcx
  40277a:	48 8b 03             	mov    (%rbx),%rax
  40277d:	48 8b 53 08          	mov    0x8(%rbx),%rdx
  402781:	48 89 01             	mov    %rax,(%rcx)
  402784:	48 89 51 08          	mov    %rdx,0x8(%rcx)
  402788:	90                   	nop
  402789:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  40278d:	c9                   	leaveq 
  40278e:	c3                   	retq   
  40278f:	90                   	nop

0000000000402790 <_ZNKSt6vectorI5stateSaIS0_EE12_M_check_lenEmPKc>:
      _M_check_len(size_type __n, const char* __s) const
  402790:	f3 0f 1e fa          	endbr64 
  402794:	55                   	push   %rbp
  402795:	48 89 e5             	mov    %rsp,%rbp
  402798:	53                   	push   %rbx
  402799:	48 83 ec 48          	sub    $0x48,%rsp
  40279d:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
  4027a1:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
  4027a5:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
  4027a9:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4027b0:	00 00 
  4027b2:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  4027b6:	31 c0                	xor    %eax,%eax
	if (max_size() - size() < __n)
  4027b8:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4027bc:	48 89 c7             	mov    %rax,%rdi
  4027bf:	e8 5e 02 00 00       	callq  402a22 <_ZNKSt6vectorI5stateSaIS0_EE8max_sizeEv>
  4027c4:	48 89 c3             	mov    %rax,%rbx
  4027c7:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4027cb:	48 89 c7             	mov    %rax,%rdi
  4027ce:	e8 6f f8 ff ff       	callq  402042 <_ZNKSt6vectorI5stateSaIS0_EE4sizeEv>
  4027d3:	48 29 c3             	sub    %rax,%rbx
  4027d6:	48 89 da             	mov    %rbx,%rdx
  4027d9:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  4027dd:	48 39 c2             	cmp    %rax,%rdx
  4027e0:	0f 92 c0             	setb   %al
  4027e3:	84 c0                	test   %al,%al
  4027e5:	74 0c                	je     4027f3 <_ZNKSt6vectorI5stateSaIS0_EE12_M_check_lenEmPKc+0x63>
	  __throw_length_error(__N(__s));
  4027e7:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  4027eb:	48 89 c7             	mov    %rax,%rdi
  4027ee:	e8 cd e9 ff ff       	callq  4011c0 <_ZSt20__throw_length_errorPKc@plt>
	const size_type __len = size() + (std::max)(size(), __n);
  4027f3:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4027f7:	48 89 c7             	mov    %rax,%rdi
  4027fa:	e8 43 f8 ff ff       	callq  402042 <_ZNKSt6vectorI5stateSaIS0_EE4sizeEv>
  4027ff:	48 89 c3             	mov    %rax,%rbx
  402802:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  402806:	48 89 c7             	mov    %rax,%rdi
  402809:	e8 34 f8 ff ff       	callq  402042 <_ZNKSt6vectorI5stateSaIS0_EE4sizeEv>
  40280e:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  402812:	48 8d 55 c0          	lea    -0x40(%rbp),%rdx
  402816:	48 8d 45 d8          	lea    -0x28(%rbp),%rax
  40281a:	48 89 d6             	mov    %rdx,%rsi
  40281d:	48 89 c7             	mov    %rax,%rdi
  402820:	e8 23 02 00 00       	callq  402a48 <_ZSt3maxImERKT_S2_S2_>
  402825:	48 8b 00             	mov    (%rax),%rax
  402828:	48 01 d8             	add    %rbx,%rax
  40282b:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
	return (__len < size() || __len > max_size()) ? max_size() : __len;
  40282f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  402833:	48 89 c7             	mov    %rax,%rdi
  402836:	e8 07 f8 ff ff       	callq  402042 <_ZNKSt6vectorI5stateSaIS0_EE4sizeEv>
  40283b:	48 39 45 e0          	cmp    %rax,-0x20(%rbp)
  40283f:	72 12                	jb     402853 <_ZNKSt6vectorI5stateSaIS0_EE12_M_check_lenEmPKc+0xc3>
  402841:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  402845:	48 89 c7             	mov    %rax,%rdi
  402848:	e8 d5 01 00 00       	callq  402a22 <_ZNKSt6vectorI5stateSaIS0_EE8max_sizeEv>
  40284d:	48 39 45 e0          	cmp    %rax,-0x20(%rbp)
  402851:	76 0e                	jbe    402861 <_ZNKSt6vectorI5stateSaIS0_EE12_M_check_lenEmPKc+0xd1>
  402853:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  402857:	48 89 c7             	mov    %rax,%rdi
  40285a:	e8 c3 01 00 00       	callq  402a22 <_ZNKSt6vectorI5stateSaIS0_EE8max_sizeEv>
  40285f:	eb 04                	jmp    402865 <_ZNKSt6vectorI5stateSaIS0_EE12_M_check_lenEmPKc+0xd5>
  402861:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
      }
  402865:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  402869:	64 48 2b 0c 25 28 00 	sub    %fs:0x28,%rcx
  402870:	00 00 
  402872:	74 05                	je     402879 <_ZNKSt6vectorI5stateSaIS0_EE12_M_check_lenEmPKc+0xe9>
  402874:	e8 97 e9 ff ff       	callq  401210 <__stack_chk_fail@plt>
  402879:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  40287d:	c9                   	leaveq 
  40287e:	c3                   	retq   

000000000040287f <_ZN9__gnu_cxxmiIP5stateSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_>:
    { return __lhs.base() - __rhs.base(); }

  template<typename _Iterator, typename _Container>
    _GLIBCXX20_CONSTEXPR
    inline typename __normal_iterator<_Iterator, _Container>::difference_type
    operator-(const __normal_iterator<_Iterator, _Container>& __lhs,
  40287f:	f3 0f 1e fa          	endbr64 
  402883:	55                   	push   %rbp
  402884:	48 89 e5             	mov    %rsp,%rbp
  402887:	53                   	push   %rbx
  402888:	48 83 ec 18          	sub    $0x18,%rsp
  40288c:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  402890:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
	      const __normal_iterator<_Iterator, _Container>& __rhs)
    _GLIBCXX_NOEXCEPT
    { return __lhs.base() - __rhs.base(); }
  402894:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402898:	48 89 c7             	mov    %rax,%rdi
  40289b:	e8 08 f9 ff ff       	callq  4021a8 <_ZNK9__gnu_cxx17__normal_iteratorIP5stateSt6vectorIS1_SaIS1_EEE4baseEv>
  4028a0:	48 8b 18             	mov    (%rax),%rbx
  4028a3:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4028a7:	48 89 c7             	mov    %rax,%rdi
  4028aa:	e8 f9 f8 ff ff       	callq  4021a8 <_ZNK9__gnu_cxx17__normal_iteratorIP5stateSt6vectorIS1_SaIS1_EEE4baseEv>
  4028af:	48 8b 10             	mov    (%rax),%rdx
  4028b2:	48 89 d8             	mov    %rbx,%rax
  4028b5:	48 29 d0             	sub    %rdx,%rax
  4028b8:	48 c1 f8 04          	sar    $0x4,%rax
  4028bc:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  4028c0:	c9                   	leaveq 
  4028c1:	c3                   	retq   

00000000004028c2 <_ZNSt12_Vector_baseI5stateSaIS0_EE11_M_allocateEm>:
      _M_allocate(size_t __n)
  4028c2:	f3 0f 1e fa          	endbr64 
  4028c6:	55                   	push   %rbp
  4028c7:	48 89 e5             	mov    %rsp,%rbp
  4028ca:	48 83 ec 10          	sub    $0x10,%rsp
  4028ce:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4028d2:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
  4028d6:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
  4028db:	74 15                	je     4028f2 <_ZNSt12_Vector_baseI5stateSaIS0_EE11_M_allocateEm+0x30>
  4028dd:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4028e1:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  4028e5:	48 89 d6             	mov    %rdx,%rsi
  4028e8:	48 89 c7             	mov    %rax,%rdi
  4028eb:	e8 87 01 00 00       	callq  402a77 <_ZNSt16allocator_traitsISaI5stateEE8allocateERS1_m>
  4028f0:	eb 05                	jmp    4028f7 <_ZNSt12_Vector_baseI5stateSaIS0_EE11_M_allocateEm+0x35>
  4028f2:	b8 00 00 00 00       	mov    $0x0,%eax
      }
  4028f7:	c9                   	leaveq 
  4028f8:	c3                   	retq   

00000000004028f9 <_ZNSt6vectorI5stateSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_>:
      _S_relocate(pointer __first, pointer __last, pointer __result,
  4028f9:	f3 0f 1e fa          	endbr64 
  4028fd:	55                   	push   %rbp
  4028fe:	48 89 e5             	mov    %rsp,%rbp
  402901:	48 83 ec 20          	sub    $0x20,%rsp
  402905:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  402909:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  40290d:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  402911:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
	return _S_do_relocate(__first, __last, __result, __alloc, __do_it{});
  402915:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  402919:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  40291d:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  402921:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402925:	48 89 c7             	mov    %rax,%rdi
  402928:	e8 78 01 00 00       	callq  402aa5 <_ZNSt6vectorI5stateSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE>
      }
  40292d:	c9                   	leaveq 
  40292e:	c3                   	retq   

000000000040292f <_ZSt34__uninitialized_move_if_noexcept_aIP5stateS1_SaIS0_EET0_T_S4_S3_RT1_>:
    }

  template<typename _InputIterator, typename _ForwardIterator,
	   typename _Allocator>
    inline _ForwardIterator
    __uninitialized_move_if_noexcept_a(_InputIterator __first,
  40292f:	f3 0f 1e fa          	endbr64 
  402933:	55                   	push   %rbp
  402934:	48 89 e5             	mov    %rsp,%rbp
  402937:	53                   	push   %rbx
  402938:	48 83 ec 28          	sub    $0x28,%rsp
  40293c:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  402940:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  402944:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  402948:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
				       _InputIterator __last,
				       _ForwardIterator __result,
				       _Allocator& __alloc)
    {
      return std::__uninitialized_copy_a
	(_GLIBCXX_MAKE_MOVE_IF_NOEXCEPT_ITERATOR(__first),
  40294c:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  402950:	48 89 c7             	mov    %rax,%rdi
  402953:	e8 83 01 00 00       	callq  402adb <_ZSt32__make_move_if_noexcept_iteratorI5stateSt13move_iteratorIPS0_EET0_PT_>
  402958:	48 89 c3             	mov    %rax,%rbx
  40295b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40295f:	48 89 c7             	mov    %rax,%rdi
  402962:	e8 74 01 00 00       	callq  402adb <_ZSt32__make_move_if_noexcept_iteratorI5stateSt13move_iteratorIPS0_EET0_PT_>
  402967:	48 89 c7             	mov    %rax,%rdi
  40296a:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
  40296e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  402972:	48 89 d1             	mov    %rdx,%rcx
  402975:	48 89 c2             	mov    %rax,%rdx
  402978:	48 89 de             	mov    %rbx,%rsi
  40297b:	e8 a7 01 00 00       	callq  402b27 <_ZSt22__uninitialized_copy_aISt13move_iteratorIP5stateES2_S1_ET0_T_S5_S4_RSaIT1_E>
	 _GLIBCXX_MAKE_MOVE_IF_NOEXCEPT_ITERATOR(__last), __result, __alloc);
    }
  402980:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  402984:	c9                   	leaveq 
  402985:	c3                   	retq   

0000000000402986 <_ZNSt16allocator_traitsISaI5stateEE7destroyIS0_EEvRS1_PT_>:
	destroy(allocator_type& __a __attribute__((__unused__)), _Up* __p)
  402986:	f3 0f 1e fa          	endbr64 
  40298a:	55                   	push   %rbp
  40298b:	48 89 e5             	mov    %rsp,%rbp
  40298e:	48 83 ec 10          	sub    $0x10,%rsp
  402992:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  402996:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
	  __a.destroy(__p);
  40299a:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  40299e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4029a2:	48 89 d6             	mov    %rdx,%rsi
  4029a5:	48 89 c7             	mov    %rax,%rdi
  4029a8:	e8 af 01 00 00       	callq  402b5c <_ZN9__gnu_cxx13new_allocatorI5stateE7destroyIS1_EEvPT_>
	}
  4029ad:	90                   	nop
  4029ae:	c9                   	leaveq 
  4029af:	c3                   	retq   

00000000004029b0 <_ZN9__gnu_cxx13new_allocatorI5stateE10deallocateEPS1_m>:
      deallocate(_Tp* __p, size_type __t)
  4029b0:	f3 0f 1e fa          	endbr64 
  4029b4:	55                   	push   %rbp
  4029b5:	48 89 e5             	mov    %rsp,%rbp
  4029b8:	48 83 ec 20          	sub    $0x20,%rsp
  4029bc:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4029c0:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  4029c4:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
	::operator delete(__p
  4029c8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4029cc:	48 c1 e0 04          	shl    $0x4,%rax
  4029d0:	48 89 c2             	mov    %rax,%rdx
  4029d3:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4029d7:	48 89 d6             	mov    %rdx,%rsi
  4029da:	48 89 c7             	mov    %rax,%rdi
  4029dd:	e8 1e e8 ff ff       	callq  401200 <_ZdlPvm@plt>
      }
  4029e2:	90                   	nop
  4029e3:	c9                   	leaveq 
  4029e4:	c3                   	retq   

00000000004029e5 <_ZSt18__do_alloc_on_swapISaI5stateEEvRT_S3_St17integral_constantIbLb0EE>:
    inline void __do_alloc_on_swap(_Alloc&, _Alloc&, false_type)
  4029e5:	f3 0f 1e fa          	endbr64 
  4029e9:	55                   	push   %rbp
  4029ea:	48 89 e5             	mov    %rsp,%rbp
  4029ed:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4029f1:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    { }
  4029f5:	90                   	nop
  4029f6:	5d                   	pop    %rbp
  4029f7:	c3                   	retq   

00000000004029f8 <_ZSt8_DestroyIP5stateEvT_S2_>:
   * a trivial destructor, the compiler should optimize all of this
   * away, otherwise the objects' destructors must be invoked.
   */
  template<typename _ForwardIterator>
    _GLIBCXX20_CONSTEXPR inline void
    _Destroy(_ForwardIterator __first, _ForwardIterator __last)
  4029f8:	f3 0f 1e fa          	endbr64 
  4029fc:	55                   	push   %rbp
  4029fd:	48 89 e5             	mov    %rsp,%rbp
  402a00:	48 83 ec 10          	sub    $0x10,%rsp
  402a04:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  402a08:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
#if __cplusplus > 201703L && defined __cpp_lib_is_constant_evaluated
      if (std::is_constant_evaluated())
	return _Destroy_aux<false>::__destroy(__first, __last);
#endif
      std::_Destroy_aux<__has_trivial_destructor(_Value_type)>::
	__destroy(__first, __last);
  402a0c:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
  402a10:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402a14:	48 89 d6             	mov    %rdx,%rsi
  402a17:	48 89 c7             	mov    %rax,%rdi
  402a1a:	e8 50 01 00 00       	callq  402b6f <_ZNSt12_Destroy_auxILb1EE9__destroyIP5stateEEvT_S4_>
    }
  402a1f:	90                   	nop
  402a20:	c9                   	leaveq 
  402a21:	c3                   	retq   

0000000000402a22 <_ZNKSt6vectorI5stateSaIS0_EE8max_sizeEv>:
      max_size() const _GLIBCXX_NOEXCEPT
  402a22:	f3 0f 1e fa          	endbr64 
  402a26:	55                   	push   %rbp
  402a27:	48 89 e5             	mov    %rsp,%rbp
  402a2a:	48 83 ec 10          	sub    $0x10,%rsp
  402a2e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return _S_max_size(_M_get_Tp_allocator()); }
  402a32:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402a36:	48 89 c7             	mov    %rax,%rdi
  402a39:	e8 ae 01 00 00       	callq  402bec <_ZNKSt12_Vector_baseI5stateSaIS0_EE19_M_get_Tp_allocatorEv>
  402a3e:	48 89 c7             	mov    %rax,%rdi
  402a41:	e8 3c 01 00 00       	callq  402b82 <_ZNSt6vectorI5stateSaIS0_EE11_S_max_sizeERKS1_>
  402a46:	c9                   	leaveq 
  402a47:	c3                   	retq   

0000000000402a48 <_ZSt3maxImERKT_S2_S2_>:
   *  preprocessor macro.
  */
  template<typename _Tp>
    _GLIBCXX14_CONSTEXPR
    inline const _Tp&
    max(const _Tp& __a, const _Tp& __b)
  402a48:	f3 0f 1e fa          	endbr64 
  402a4c:	55                   	push   %rbp
  402a4d:	48 89 e5             	mov    %rsp,%rbp
  402a50:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  402a54:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    {
      // concept requirements
      __glibcxx_function_requires(_LessThanComparableConcept<_Tp>)
      //return  __a < __b ? __b : __a;
      if (__a < __b)
  402a58:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402a5c:	48 8b 10             	mov    (%rax),%rdx
  402a5f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402a63:	48 8b 00             	mov    (%rax),%rax
  402a66:	48 39 c2             	cmp    %rax,%rdx
  402a69:	73 06                	jae    402a71 <_ZSt3maxImERKT_S2_S2_+0x29>
	return __b;
  402a6b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402a6f:	eb 04                	jmp    402a75 <_ZSt3maxImERKT_S2_S2_+0x2d>
      return __a;
  402a71:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    }
  402a75:	5d                   	pop    %rbp
  402a76:	c3                   	retq   

0000000000402a77 <_ZNSt16allocator_traitsISaI5stateEE8allocateERS1_m>:
      allocate(allocator_type& __a, size_type __n)
  402a77:	f3 0f 1e fa          	endbr64 
  402a7b:	55                   	push   %rbp
  402a7c:	48 89 e5             	mov    %rsp,%rbp
  402a7f:	48 83 ec 10          	sub    $0x10,%rsp
  402a83:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  402a87:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
      { return __a.allocate(__n); }
  402a8b:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  402a8f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402a93:	ba 00 00 00 00       	mov    $0x0,%edx
  402a98:	48 89 ce             	mov    %rcx,%rsi
  402a9b:	48 89 c7             	mov    %rax,%rdi
  402a9e:	e8 5b 01 00 00       	callq  402bfe <_ZN9__gnu_cxx13new_allocatorI5stateE8allocateEmPKv>
  402aa3:	c9                   	leaveq 
  402aa4:	c3                   	retq   

0000000000402aa5 <_ZNSt6vectorI5stateSaIS0_EE14_S_do_relocateEPS0_S3_S3_RS1_St17integral_constantIbLb1EE>:
      _S_do_relocate(pointer __first, pointer __last, pointer __result,
  402aa5:	f3 0f 1e fa          	endbr64 
  402aa9:	55                   	push   %rbp
  402aaa:	48 89 e5             	mov    %rsp,%rbp
  402aad:	48 83 ec 20          	sub    $0x20,%rsp
  402ab1:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  402ab5:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  402ab9:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  402abd:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
	return std::__relocate_a(__first, __last, __result, __alloc);
  402ac1:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  402ac5:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  402ac9:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  402acd:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402ad1:	48 89 c7             	mov    %rax,%rdi
  402ad4:	e8 6b 01 00 00       	callq  402c44 <_ZSt12__relocate_aIP5stateS1_SaIS0_EET0_T_S4_S3_RT1_>
      }
  402ad9:	c9                   	leaveq 
  402ada:	c3                   	retq   

0000000000402adb <_ZSt32__make_move_if_noexcept_iteratorI5stateSt13move_iteratorIPS0_EET0_PT_>:
  // returning a constant iterator when we don't want to move.
  template<typename _Tp, typename _ReturnType
    = typename conditional<__move_if_noexcept_cond<_Tp>::value,
			   const _Tp*, move_iterator<_Tp*>>::type>
    inline _GLIBCXX17_CONSTEXPR _ReturnType
    __make_move_if_noexcept_iterator(_Tp* __i)
  402adb:	f3 0f 1e fa          	endbr64 
  402adf:	55                   	push   %rbp
  402ae0:	48 89 e5             	mov    %rsp,%rbp
  402ae3:	48 83 ec 20          	sub    $0x20,%rsp
  402ae7:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  402aeb:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402af2:	00 00 
  402af4:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  402af8:	31 c0                	xor    %eax,%eax
    { return _ReturnType(__i); }
  402afa:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  402afe:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  402b02:	48 89 d6             	mov    %rdx,%rsi
  402b05:	48 89 c7             	mov    %rax,%rdi
  402b08:	e8 9f 01 00 00       	callq  402cac <_ZNSt13move_iteratorIP5stateEC1ES1_>
  402b0d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402b11:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  402b15:	64 48 2b 0c 25 28 00 	sub    %fs:0x28,%rcx
  402b1c:	00 00 
  402b1e:	74 05                	je     402b25 <_ZSt32__make_move_if_noexcept_iteratorI5stateSt13move_iteratorIPS0_EET0_PT_+0x4a>
  402b20:	e8 eb e6 ff ff       	callq  401210 <__stack_chk_fail@plt>
  402b25:	c9                   	leaveq 
  402b26:	c3                   	retq   

0000000000402b27 <_ZSt22__uninitialized_copy_aISt13move_iteratorIP5stateES2_S1_ET0_T_S5_S4_RSaIT1_E>:
    __uninitialized_copy_a(_InputIterator __first, _InputIterator __last,
  402b27:	f3 0f 1e fa          	endbr64 
  402b2b:	55                   	push   %rbp
  402b2c:	48 89 e5             	mov    %rsp,%rbp
  402b2f:	48 83 ec 20          	sub    $0x20,%rsp
  402b33:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  402b37:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  402b3b:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  402b3f:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
    { return std::uninitialized_copy(__first, __last, __result); }
  402b43:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  402b47:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  402b4b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402b4f:	48 89 ce             	mov    %rcx,%rsi
  402b52:	48 89 c7             	mov    %rax,%rdi
  402b55:	e8 7f 01 00 00       	callq  402cd9 <_ZSt18uninitialized_copyISt13move_iteratorIP5stateES2_ET0_T_S5_S4_>
  402b5a:	c9                   	leaveq 
  402b5b:	c3                   	retq   

0000000000402b5c <_ZN9__gnu_cxx13new_allocatorI5stateE7destroyIS1_EEvPT_>:

      template<typename _Up>
	void
	destroy(_Up* __p)
  402b5c:	f3 0f 1e fa          	endbr64 
  402b60:	55                   	push   %rbp
  402b61:	48 89 e5             	mov    %rsp,%rbp
  402b64:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  402b68:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
	noexcept(std::is_nothrow_destructible<_Up>::value)
	{ __p->~_Up(); }
  402b6c:	90                   	nop
  402b6d:	5d                   	pop    %rbp
  402b6e:	c3                   	retq   

0000000000402b6f <_ZNSt12_Destroy_auxILb1EE9__destroyIP5stateEEvT_S4_>:
        __destroy(_ForwardIterator, _ForwardIterator) { }
  402b6f:	f3 0f 1e fa          	endbr64 
  402b73:	55                   	push   %rbp
  402b74:	48 89 e5             	mov    %rsp,%rbp
  402b77:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  402b7b:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  402b7f:	90                   	nop
  402b80:	5d                   	pop    %rbp
  402b81:	c3                   	retq   

0000000000402b82 <_ZNSt6vectorI5stateSaIS0_EE11_S_max_sizeERKS1_>:
      _S_max_size(const _Tp_alloc_type& __a) _GLIBCXX_NOEXCEPT
  402b82:	f3 0f 1e fa          	endbr64 
  402b86:	55                   	push   %rbp
  402b87:	48 89 e5             	mov    %rsp,%rbp
  402b8a:	48 83 ec 30          	sub    $0x30,%rsp
  402b8e:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  402b92:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402b99:	00 00 
  402b9b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  402b9f:	31 c0                	xor    %eax,%eax
	const size_t __diffmax
  402ba1:	48 b8 ff ff ff ff ff 	movabs $0x7ffffffffffffff,%rax
  402ba8:	ff ff 07 
  402bab:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
	const size_t __allocmax = _Alloc_traits::max_size(__a);
  402baf:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  402bb3:	48 89 c7             	mov    %rax,%rdi
  402bb6:	e8 53 01 00 00       	callq  402d0e <_ZNSt16allocator_traitsISaI5stateEE8max_sizeERKS1_>
  402bbb:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
	return (std::min)(__diffmax, __allocmax);
  402bbf:	48 8d 55 f0          	lea    -0x10(%rbp),%rdx
  402bc3:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
  402bc7:	48 89 d6             	mov    %rdx,%rsi
  402bca:	48 89 c7             	mov    %rax,%rdi
  402bcd:	e8 5a 01 00 00       	callq  402d2c <_ZSt3minImERKT_S2_S2_>
  402bd2:	48 8b 00             	mov    (%rax),%rax
      }
  402bd5:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  402bd9:	64 48 2b 0c 25 28 00 	sub    %fs:0x28,%rcx
  402be0:	00 00 
  402be2:	74 05                	je     402be9 <_ZNSt6vectorI5stateSaIS0_EE11_S_max_sizeERKS1_+0x67>
  402be4:	e8 27 e6 ff ff       	callq  401210 <__stack_chk_fail@plt>
  402be9:	c9                   	leaveq 
  402bea:	c3                   	retq   
  402beb:	90                   	nop

0000000000402bec <_ZNKSt12_Vector_baseI5stateSaIS0_EE19_M_get_Tp_allocatorEv>:
      _M_get_Tp_allocator() const _GLIBCXX_NOEXCEPT
  402bec:	f3 0f 1e fa          	endbr64 
  402bf0:	55                   	push   %rbp
  402bf1:	48 89 e5             	mov    %rsp,%rbp
  402bf4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return this->_M_impl; }
  402bf8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402bfc:	5d                   	pop    %rbp
  402bfd:	c3                   	retq   

0000000000402bfe <_ZN9__gnu_cxx13new_allocatorI5stateE8allocateEmPKv>:
      allocate(size_type __n, const void* = static_cast<const void*>(0))
  402bfe:	f3 0f 1e fa          	endbr64 
  402c02:	55                   	push   %rbp
  402c03:	48 89 e5             	mov    %rsp,%rbp
  402c06:	48 83 ec 20          	sub    $0x20,%rsp
  402c0a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  402c0e:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  402c12:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
	if (__n > this->_M_max_size())
  402c16:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402c1a:	48 89 c7             	mov    %rax,%rdi
  402c1d:	e8 3a 01 00 00       	callq  402d5c <_ZNK9__gnu_cxx13new_allocatorI5stateE11_M_max_sizeEv>
  402c22:	48 39 45 f0          	cmp    %rax,-0x10(%rbp)
  402c26:	0f 97 c0             	seta   %al
  402c29:	84 c0                	test   %al,%al
  402c2b:	74 05                	je     402c32 <_ZN9__gnu_cxx13new_allocatorI5stateE8allocateEmPKv+0x34>
	  std::__throw_bad_alloc();
  402c2d:	e8 6e e5 ff ff       	callq  4011a0 <_ZSt17__throw_bad_allocv@plt>
	return static_cast<_Tp*>(::operator new(__n * sizeof(_Tp)));
  402c32:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402c36:	48 c1 e0 04          	shl    $0x4,%rax
  402c3a:	48 89 c7             	mov    %rax,%rdi
  402c3d:	e8 ae e5 ff ff       	callq  4011f0 <_Znwm@plt>
      }
  402c42:	c9                   	leaveq 
  402c43:	c3                   	retq   

0000000000402c44 <_ZSt12__relocate_aIP5stateS1_SaIS0_EET0_T_S4_S3_RT1_>:
    }

  template <typename _InputIterator, typename _ForwardIterator,
	    typename _Allocator>
    inline _ForwardIterator
    __relocate_a(_InputIterator __first, _InputIterator __last,
  402c44:	f3 0f 1e fa          	endbr64 
  402c48:	55                   	push   %rbp
  402c49:	48 89 e5             	mov    %rsp,%rbp
  402c4c:	41 54                	push   %r12
  402c4e:	53                   	push   %rbx
  402c4f:	48 83 ec 20          	sub    $0x20,%rsp
  402c53:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  402c57:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  402c5b:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  402c5f:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
		 _ForwardIterator __result, _Allocator& __alloc)
    noexcept(noexcept(__relocate_a_1(std::__niter_base(__first),
				     std::__niter_base(__last),
				     std::__niter_base(__result), __alloc)))
    {
      return __relocate_a_1(std::__niter_base(__first),
  402c63:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  402c67:	48 89 c7             	mov    %rax,%rdi
  402c6a:	e8 05 01 00 00       	callq  402d74 <_ZSt12__niter_baseIP5stateET_S2_>
  402c6f:	49 89 c4             	mov    %rax,%r12
  402c72:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  402c76:	48 89 c7             	mov    %rax,%rdi
  402c79:	e8 f6 00 00 00       	callq  402d74 <_ZSt12__niter_baseIP5stateET_S2_>
  402c7e:	48 89 c3             	mov    %rax,%rbx
  402c81:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402c85:	48 89 c7             	mov    %rax,%rdi
  402c88:	e8 e7 00 00 00       	callq  402d74 <_ZSt12__niter_baseIP5stateET_S2_>
  402c8d:	48 89 c7             	mov    %rax,%rdi
  402c90:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  402c94:	48 89 c1             	mov    %rax,%rcx
  402c97:	4c 89 e2             	mov    %r12,%rdx
  402c9a:	48 89 de             	mov    %rbx,%rsi
  402c9d:	e8 e4 00 00 00       	callq  402d86 <_ZSt14__relocate_a_1I5stateS0_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS3_E4typeES5_S5_S5_RSaIT0_E>
			    std::__niter_base(__last),
			    std::__niter_base(__result), __alloc);
    }
  402ca2:	48 83 c4 20          	add    $0x20,%rsp
  402ca6:	5b                   	pop    %rbx
  402ca7:	41 5c                	pop    %r12
  402ca9:	5d                   	pop    %rbp
  402caa:	c3                   	retq   
  402cab:	90                   	nop

0000000000402cac <_ZNSt13move_iteratorIP5stateEC1ES1_>:
      move_iterator(iterator_type __i)
  402cac:	f3 0f 1e fa          	endbr64 
  402cb0:	55                   	push   %rbp
  402cb1:	48 89 e5             	mov    %rsp,%rbp
  402cb4:	48 83 ec 10          	sub    $0x10,%rsp
  402cb8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  402cbc:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
      : _M_current(std::move(__i)) { }
  402cc0:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  402cc4:	48 89 c7             	mov    %rax,%rdi
  402cc7:	e8 1f 01 00 00       	callq  402deb <_ZSt4moveIRP5stateEONSt16remove_referenceIT_E4typeEOS4_>
  402ccc:	48 8b 10             	mov    (%rax),%rdx
  402ccf:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402cd3:	48 89 10             	mov    %rdx,(%rax)
  402cd6:	90                   	nop
  402cd7:	c9                   	leaveq 
  402cd8:	c3                   	retq   

0000000000402cd9 <_ZSt18uninitialized_copyISt13move_iteratorIP5stateES2_ET0_T_S5_S4_>:
    uninitialized_copy(_InputIterator __first, _InputIterator __last,
  402cd9:	f3 0f 1e fa          	endbr64 
  402cdd:	55                   	push   %rbp
  402cde:	48 89 e5             	mov    %rsp,%rbp
  402ce1:	48 83 ec 30          	sub    $0x30,%rsp
  402ce5:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  402ce9:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  402ced:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
      const bool __assignable = is_assignable<_RefType2, _RefType1>::value;
  402cf1:	c6 45 ff 01          	movb   $0x1,-0x1(%rbp)
	__uninit_copy(__first, __last, __result);
  402cf5:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  402cf9:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  402cfd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402d01:	48 89 ce             	mov    %rcx,%rsi
  402d04:	48 89 c7             	mov    %rax,%rdi
  402d07:	e8 f1 00 00 00       	callq  402dfd <_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIP5stateES4_EET0_T_S7_S6_>
    }
  402d0c:	c9                   	leaveq 
  402d0d:	c3                   	retq   

0000000000402d0e <_ZNSt16allocator_traitsISaI5stateEE8max_sizeERKS1_>:
      max_size(const allocator_type& __a __attribute__((__unused__))) noexcept
  402d0e:	f3 0f 1e fa          	endbr64 
  402d12:	55                   	push   %rbp
  402d13:	48 89 e5             	mov    %rsp,%rbp
  402d16:	48 83 ec 10          	sub    $0x10,%rsp
  402d1a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
	return __a.max_size();
  402d1e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402d22:	48 89 c7             	mov    %rax,%rdi
  402d25:	e8 04 01 00 00       	callq  402e2e <_ZNK9__gnu_cxx13new_allocatorI5stateE8max_sizeEv>
      }
  402d2a:	c9                   	leaveq 
  402d2b:	c3                   	retq   

0000000000402d2c <_ZSt3minImERKT_S2_S2_>:
    min(const _Tp& __a, const _Tp& __b)
  402d2c:	f3 0f 1e fa          	endbr64 
  402d30:	55                   	push   %rbp
  402d31:	48 89 e5             	mov    %rsp,%rbp
  402d34:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  402d38:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
      if (__b < __a)
  402d3c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402d40:	48 8b 10             	mov    (%rax),%rdx
  402d43:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402d47:	48 8b 00             	mov    (%rax),%rax
  402d4a:	48 39 c2             	cmp    %rax,%rdx
  402d4d:	73 06                	jae    402d55 <_ZSt3minImERKT_S2_S2_+0x29>
	return __b;
  402d4f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402d53:	eb 04                	jmp    402d59 <_ZSt3minImERKT_S2_S2_+0x2d>
      return __a;
  402d55:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    }
  402d59:	5d                   	pop    %rbp
  402d5a:	c3                   	retq   
  402d5b:	90                   	nop

0000000000402d5c <_ZNK9__gnu_cxx13new_allocatorI5stateE11_M_max_sizeEv>:
	{ return false; }
#endif

    private:
      _GLIBCXX_CONSTEXPR size_type
      _M_max_size() const _GLIBCXX_USE_NOEXCEPT
  402d5c:	f3 0f 1e fa          	endbr64 
  402d60:	55                   	push   %rbp
  402d61:	48 89 e5             	mov    %rsp,%rbp
  402d64:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      {
#if __PTRDIFF_MAX__ < __SIZE_MAX__
	return std::size_t(__PTRDIFF_MAX__) / sizeof(_Tp);
  402d68:	48 b8 ff ff ff ff ff 	movabs $0x7ffffffffffffff,%rax
  402d6f:	ff ff 07 
#else
	return std::size_t(-1) / sizeof(_Tp);
#endif
      }
  402d72:	5d                   	pop    %rbp
  402d73:	c3                   	retq   

0000000000402d74 <_ZSt12__niter_baseIP5stateET_S2_>:
  // Fallback implementation of the function in bits/stl_iterator.h used to
  // remove the __normal_iterator wrapper. See copy, fill, ...
  template<typename _Iterator>
    _GLIBCXX20_CONSTEXPR
    inline _Iterator
    __niter_base(_Iterator __it)
  402d74:	f3 0f 1e fa          	endbr64 
  402d78:	55                   	push   %rbp
  402d79:	48 89 e5             	mov    %rsp,%rbp
  402d7c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    _GLIBCXX_NOEXCEPT_IF(std::is_nothrow_copy_constructible<_Iterator>::value)
    { return __it; }
  402d80:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402d84:	5d                   	pop    %rbp
  402d85:	c3                   	retq   

0000000000402d86 <_ZSt14__relocate_a_1I5stateS0_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS3_E4typeES5_S5_S5_RSaIT0_E>:
    __relocate_a_1(_Tp* __first, _Tp* __last,
  402d86:	f3 0f 1e fa          	endbr64 
  402d8a:	55                   	push   %rbp
  402d8b:	48 89 e5             	mov    %rsp,%rbp
  402d8e:	48 83 ec 30          	sub    $0x30,%rsp
  402d92:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  402d96:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  402d9a:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  402d9e:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
      ptrdiff_t __count = __last - __first;
  402da2:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  402da6:	48 2b 45 e8          	sub    -0x18(%rbp),%rax
  402daa:	48 c1 f8 04          	sar    $0x4,%rax
  402dae:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
      if (__count > 0)
  402db2:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  402db7:	7e 1e                	jle    402dd7 <_ZSt14__relocate_a_1I5stateS0_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS3_E4typeES5_S5_S5_RSaIT0_E+0x51>
	__builtin_memmove(__result, __first, __count * sizeof(_Tp));
  402db9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402dbd:	48 c1 e0 04          	shl    $0x4,%rax
  402dc1:	48 89 c2             	mov    %rax,%rdx
  402dc4:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  402dc8:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  402dcc:	48 89 ce             	mov    %rcx,%rsi
  402dcf:	48 89 c7             	mov    %rax,%rdi
  402dd2:	e8 a9 e4 ff ff       	callq  401280 <memmove@plt>
      return __result + __count;
  402dd7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402ddb:	48 c1 e0 04          	shl    $0x4,%rax
  402ddf:	48 89 c2             	mov    %rax,%rdx
  402de2:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  402de6:	48 01 d0             	add    %rdx,%rax
    }
  402de9:	c9                   	leaveq 
  402dea:	c3                   	retq   

0000000000402deb <_ZSt4moveIRP5stateEONSt16remove_referenceIT_E4typeEOS4_>:
   *  @param  __t  A thing of arbitrary type.
   *  @return The parameter cast to an rvalue-reference to allow moving it.
  */
  template<typename _Tp>
    constexpr typename std::remove_reference<_Tp>::type&&
    move(_Tp&& __t) noexcept
  402deb:	f3 0f 1e fa          	endbr64 
  402def:	55                   	push   %rbp
  402df0:	48 89 e5             	mov    %rsp,%rbp
  402df3:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return static_cast<typename std::remove_reference<_Tp>::type&&>(__t); }
  402df7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402dfb:	5d                   	pop    %rbp
  402dfc:	c3                   	retq   

0000000000402dfd <_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIP5stateES4_EET0_T_S7_S6_>:
        __uninit_copy(_InputIterator __first, _InputIterator __last,
  402dfd:	f3 0f 1e fa          	endbr64 
  402e01:	55                   	push   %rbp
  402e02:	48 89 e5             	mov    %rsp,%rbp
  402e05:	48 83 ec 20          	sub    $0x20,%rsp
  402e09:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  402e0d:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  402e11:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
        { return std::copy(__first, __last, __result); }
  402e15:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  402e19:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  402e1d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402e21:	48 89 ce             	mov    %rcx,%rsi
  402e24:	48 89 c7             	mov    %rax,%rdi
  402e27:	e8 20 00 00 00       	callq  402e4c <_ZSt4copyISt13move_iteratorIP5stateES2_ET0_T_S5_S4_>
  402e2c:	c9                   	leaveq 
  402e2d:	c3                   	retq   

0000000000402e2e <_ZNK9__gnu_cxx13new_allocatorI5stateE8max_sizeEv>:
      max_size() const _GLIBCXX_USE_NOEXCEPT
  402e2e:	f3 0f 1e fa          	endbr64 
  402e32:	55                   	push   %rbp
  402e33:	48 89 e5             	mov    %rsp,%rbp
  402e36:	48 83 ec 10          	sub    $0x10,%rsp
  402e3a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return _M_max_size(); }
  402e3e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402e42:	48 89 c7             	mov    %rax,%rdi
  402e45:	e8 12 ff ff ff       	callq  402d5c <_ZNK9__gnu_cxx13new_allocatorI5stateE11_M_max_sizeEv>
  402e4a:	c9                   	leaveq 
  402e4b:	c3                   	retq   

0000000000402e4c <_ZSt4copyISt13move_iteratorIP5stateES2_ET0_T_S5_S4_>:
   *  within [first,last).
  */
  template<typename _II, typename _OI>
    _GLIBCXX20_CONSTEXPR
    inline _OI
    copy(_II __first, _II __last, _OI __result)
  402e4c:	f3 0f 1e fa          	endbr64 
  402e50:	55                   	push   %rbp
  402e51:	48 89 e5             	mov    %rsp,%rbp
  402e54:	53                   	push   %rbx
  402e55:	48 83 ec 28          	sub    $0x28,%rsp
  402e59:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  402e5d:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  402e61:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
      __glibcxx_function_requires(_OutputIteratorConcept<_OI,
	    typename iterator_traits<_II>::value_type>)
      __glibcxx_requires_can_increment_range(__first, __last, __result);

      return std::__copy_move_a<__is_move_iterator<_II>::__value>
	     (std::__miter_base(__first), std::__miter_base(__last), __result);
  402e65:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  402e69:	48 89 c7             	mov    %rax,%rdi
  402e6c:	e8 2a 00 00 00       	callq  402e9b <_ZSt12__miter_baseIP5stateEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E>
  402e71:	48 89 c3             	mov    %rax,%rbx
  402e74:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402e78:	48 89 c7             	mov    %rax,%rdi
  402e7b:	e8 1b 00 00 00       	callq  402e9b <_ZSt12__miter_baseIP5stateEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E>
  402e80:	48 89 c1             	mov    %rax,%rcx
  402e83:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  402e87:	48 89 c2             	mov    %rax,%rdx
  402e8a:	48 89 de             	mov    %rbx,%rsi
  402e8d:	48 89 cf             	mov    %rcx,%rdi
  402e90:	e8 2c 00 00 00       	callq  402ec1 <_ZSt13__copy_move_aILb1EP5stateS1_ET1_T0_S3_S2_>
    }
  402e95:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  402e99:	c9                   	leaveq 
  402e9a:	c3                   	retq   

0000000000402e9b <_ZSt12__miter_baseIP5stateEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E>:
    };

  template<typename _Iterator>
    _GLIBCXX20_CONSTEXPR
    auto
    __miter_base(move_iterator<_Iterator> __it)
  402e9b:	f3 0f 1e fa          	endbr64 
  402e9f:	55                   	push   %rbp
  402ea0:	48 89 e5             	mov    %rsp,%rbp
  402ea3:	48 83 ec 10          	sub    $0x10,%rsp
  402ea7:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    -> decltype(__miter_base(__it.base()))
    { return __miter_base(__it.base()); }
  402eab:	48 8d 45 f8          	lea    -0x8(%rbp),%rax
  402eaf:	48 89 c7             	mov    %rax,%rdi
  402eb2:	e8 79 00 00 00       	callq  402f30 <_ZNKSt13move_iteratorIP5stateE4baseEv>
  402eb7:	48 89 c7             	mov    %rax,%rdi
  402eba:	e8 86 00 00 00       	callq  402f45 <_ZSt12__miter_baseIP5stateET_S2_>
  402ebf:	c9                   	leaveq 
  402ec0:	c3                   	retq   

0000000000402ec1 <_ZSt13__copy_move_aILb1EP5stateS1_ET1_T0_S3_S2_>:
    __copy_move_a(_II __first, _II __last, _OI __result)
  402ec1:	f3 0f 1e fa          	endbr64 
  402ec5:	55                   	push   %rbp
  402ec6:	48 89 e5             	mov    %rsp,%rbp
  402ec9:	41 54                	push   %r12
  402ecb:	53                   	push   %rbx
  402ecc:	48 83 ec 20          	sub    $0x20,%rsp
  402ed0:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  402ed4:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  402ed8:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
      return std::__niter_wrap(__result,
  402edc:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  402ee0:	48 89 c7             	mov    %rax,%rdi
  402ee3:	e8 8c fe ff ff       	callq  402d74 <_ZSt12__niter_baseIP5stateET_S2_>
  402ee8:	49 89 c4             	mov    %rax,%r12
  402eeb:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  402eef:	48 89 c7             	mov    %rax,%rdi
  402ef2:	e8 7d fe ff ff       	callq  402d74 <_ZSt12__niter_baseIP5stateET_S2_>
  402ef7:	48 89 c3             	mov    %rax,%rbx
  402efa:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402efe:	48 89 c7             	mov    %rax,%rdi
  402f01:	e8 6e fe ff ff       	callq  402d74 <_ZSt12__niter_baseIP5stateET_S2_>
  402f06:	4c 89 e2             	mov    %r12,%rdx
  402f09:	48 89 de             	mov    %rbx,%rsi
  402f0c:	48 89 c7             	mov    %rax,%rdi
  402f0f:	e8 43 00 00 00       	callq  402f57 <_ZSt14__copy_move_a1ILb1EP5stateS1_ET1_T0_S3_S2_>
  402f14:	48 89 c2             	mov    %rax,%rdx
  402f17:	48 8d 45 d8          	lea    -0x28(%rbp),%rax
  402f1b:	48 89 d6             	mov    %rdx,%rsi
  402f1e:	48 89 c7             	mov    %rax,%rdi
  402f21:	e8 62 00 00 00       	callq  402f88 <_ZSt12__niter_wrapIP5stateET_RKS2_S2_>
    }
  402f26:	48 83 c4 20          	add    $0x20,%rsp
  402f2a:	5b                   	pop    %rbx
  402f2b:	41 5c                	pop    %r12
  402f2d:	5d                   	pop    %rbp
  402f2e:	c3                   	retq   
  402f2f:	90                   	nop

0000000000402f30 <_ZNKSt13move_iteratorIP5stateE4baseEv>:
      base() const
  402f30:	f3 0f 1e fa          	endbr64 
  402f34:	55                   	push   %rbp
  402f35:	48 89 e5             	mov    %rsp,%rbp
  402f38:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
      { return _M_current; }
  402f3c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402f40:	48 8b 00             	mov    (%rax),%rax
  402f43:	5d                   	pop    %rbp
  402f44:	c3                   	retq   

0000000000402f45 <_ZSt12__miter_baseIP5stateET_S2_>:
  // Fallback implementation of the function in bits/stl_iterator.h used to
  // remove the move_iterator wrapper.
  template<typename _Iterator>
    _GLIBCXX20_CONSTEXPR
    inline _Iterator
    __miter_base(_Iterator __it)
  402f45:	f3 0f 1e fa          	endbr64 
  402f49:	55                   	push   %rbp
  402f4a:	48 89 e5             	mov    %rsp,%rbp
  402f4d:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    { return __it; }
  402f51:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402f55:	5d                   	pop    %rbp
  402f56:	c3                   	retq   

0000000000402f57 <_ZSt14__copy_move_a1ILb1EP5stateS1_ET1_T0_S3_S2_>:
    __copy_move_a1(_II __first, _II __last, _OI __result)
  402f57:	f3 0f 1e fa          	endbr64 
  402f5b:	55                   	push   %rbp
  402f5c:	48 89 e5             	mov    %rsp,%rbp
  402f5f:	48 83 ec 20          	sub    $0x20,%rsp
  402f63:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  402f67:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  402f6b:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    { return std::__copy_move_a2<_IsMove>(__first, __last, __result); }
  402f6f:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  402f73:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  402f77:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402f7b:	48 89 ce             	mov    %rcx,%rsi
  402f7e:	48 89 c7             	mov    %rax,%rdi
  402f81:	e8 18 00 00 00       	callq  402f9e <_ZSt14__copy_move_a2ILb1EP5stateS1_ET1_T0_S3_S2_>
  402f86:	c9                   	leaveq 
  402f87:	c3                   	retq   

0000000000402f88 <_ZSt12__niter_wrapIP5stateET_RKS2_S2_>:
    __niter_wrap(const _Iterator&, _Iterator __res)
  402f88:	f3 0f 1e fa          	endbr64 
  402f8c:	55                   	push   %rbp
  402f8d:	48 89 e5             	mov    %rsp,%rbp
  402f90:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  402f94:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    { return __res; }
  402f98:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402f9c:	5d                   	pop    %rbp
  402f9d:	c3                   	retq   

0000000000402f9e <_ZSt14__copy_move_a2ILb1EP5stateS1_ET1_T0_S3_S2_>:
    __copy_move_a2(_II __first, _II __last, _OI __result)
  402f9e:	f3 0f 1e fa          	endbr64 
  402fa2:	55                   	push   %rbp
  402fa3:	48 89 e5             	mov    %rsp,%rbp
  402fa6:	48 83 ec 20          	sub    $0x20,%rsp
  402faa:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  402fae:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  402fb2:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
			      _Category>::__copy_m(__first, __last, __result);
  402fb6:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  402fba:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  402fbe:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402fc2:	48 89 ce             	mov    %rcx,%rsi
  402fc5:	48 89 c7             	mov    %rax,%rdi
  402fc8:	e8 02 00 00 00       	callq  402fcf <_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mI5stateEEPT_PKS4_S7_S5_>
    }
  402fcd:	c9                   	leaveq 
  402fce:	c3                   	retq   

0000000000402fcf <_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mI5stateEEPT_PKS4_S7_S5_>:
	__copy_m(const _Tp* __first, const _Tp* __last, _Tp* __result)
  402fcf:	f3 0f 1e fa          	endbr64 
  402fd3:	55                   	push   %rbp
  402fd4:	48 89 e5             	mov    %rsp,%rbp
  402fd7:	48 83 ec 30          	sub    $0x30,%rsp
  402fdb:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  402fdf:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  402fe3:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
	  const ptrdiff_t _Num = __last - __first;
  402fe7:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  402feb:	48 2b 45 e8          	sub    -0x18(%rbp),%rax
  402fef:	48 c1 f8 04          	sar    $0x4,%rax
  402ff3:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
	  if (_Num)
  402ff7:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  402ffc:	74 1e                	je     40301c <_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mI5stateEEPT_PKS4_S7_S5_+0x4d>
	    __builtin_memmove(__result, __first, sizeof(_Tp) * _Num);
  402ffe:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  403002:	48 c1 e0 04          	shl    $0x4,%rax
  403006:	48 89 c2             	mov    %rax,%rdx
  403009:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  40300d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  403011:	48 89 ce             	mov    %rcx,%rsi
  403014:	48 89 c7             	mov    %rax,%rdi
  403017:	e8 64 e2 ff ff       	callq  401280 <memmove@plt>
	  return __result + _Num;
  40301c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  403020:	48 c1 e0 04          	shl    $0x4,%rax
  403024:	48 89 c2             	mov    %rax,%rdx
  403027:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40302b:	48 01 d0             	add    %rdx,%rax
	}
  40302e:	c9                   	leaveq 
  40302f:	c3                   	retq   

0000000000403030 <_ZNSt6vectorI5stateSaIS0_EED1Ev>:
      ~vector() _GLIBCXX_NOEXCEPT
  403030:	f3 0f 1e fa          	endbr64 
  403034:	55                   	push   %rbp
  403035:	48 89 e5             	mov    %rsp,%rbp
  403038:	48 83 ec 10          	sub    $0x10,%rsp
  40303c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
		      _M_get_Tp_allocator());
  403040:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  403044:	48 89 c7             	mov    %rax,%rdi
  403047:	e8 18 f2 ff ff       	callq  402264 <_ZNSt12_Vector_baseI5stateSaIS0_EE19_M_get_Tp_allocatorEv>
  40304c:	48 89 c2             	mov    %rax,%rdx
	std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
  40304f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  403053:	48 8b 48 08          	mov    0x8(%rax),%rcx
  403057:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40305b:	48 8b 00             	mov    (%rax),%rax
  40305e:	48 89 ce             	mov    %rcx,%rsi
  403061:	48 89 c7             	mov    %rax,%rdi
  403064:	e8 94 f6 ff ff       	callq  4026fd <_ZSt8_DestroyIP5stateS0_EvT_S2_RSaIT0_E>
      }
  403069:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40306d:	48 89 c7             	mov    %rax,%rdi
  403070:	e8 e5 ed ff ff       	callq  401e5a <_ZNSt12_Vector_baseI5stateSaIS0_EED1Ev>
  403075:	90                   	nop
  403076:	c9                   	leaveq 
  403077:	c3                   	retq   

0000000000403078 <_Z21fill_memory_with_prngPcmj>:

#define GB (1024ULL * 1024 * 1024)
#define SIZE (2 * GB)
#define PAGE_SIZE 4096

void fill_memory_with_prng(char *memory, size_t size, uint32_t seed) {
  403078:	f3 0f 1e fa          	endbr64 
  40307c:	55                   	push   %rbp
  40307d:	48 89 e5             	mov    %rsp,%rbp
  403080:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
  403084:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
  403088:	89 55 ac             	mov    %edx,-0x54(%rbp)
  /* fill memory with deterministic pseudorandom bytes (LCG) */
  uint32_t prng = seed;
  40308b:	8b 45 ac             	mov    -0x54(%rbp),%eax
  40308e:	89 45 c4             	mov    %eax,-0x3c(%rbp)
  uint32_t *mem32 = (uint32_t *)memory;
  403091:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  403095:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  size_t count32 = size / sizeof(uint32_t);
  403099:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  40309d:	48 c1 e8 02          	shr    $0x2,%rax
  4030a1:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  for (size_t i = 0; i < count32; ++i) {
  4030a5:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
  4030ac:	00 
  4030ad:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4030b1:	48 3b 45 e0          	cmp    -0x20(%rbp),%rax
  4030b5:	73 30                	jae    4030e7 <_Z21fill_memory_with_prngPcmj+0x6f>
    prng = prng * 1664525u + 1013904223u;
  4030b7:	8b 45 c4             	mov    -0x3c(%rbp),%eax
  4030ba:	69 c0 0d 66 19 00    	imul   $0x19660d,%eax,%eax
  4030c0:	05 5f f3 6e 3c       	add    $0x3c6ef35f,%eax
  4030c5:	89 45 c4             	mov    %eax,-0x3c(%rbp)
    mem32[i] = prng;
  4030c8:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4030cc:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  4030d3:	00 
  4030d4:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4030d8:	48 01 c2             	add    %rax,%rdx
  4030db:	8b 45 c4             	mov    -0x3c(%rbp),%eax
  4030de:	89 02                	mov    %eax,(%rdx)
  for (size_t i = 0; i < count32; ++i) {
  4030e0:	48 83 45 c8 01       	addq   $0x1,-0x38(%rbp)
  4030e5:	eb c6                	jmp    4030ad <_Z21fill_memory_with_prngPcmj+0x35>
  }
  /* handle remaining bytes */
  size_t used = count32 * sizeof(uint32_t);
  4030e7:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4030eb:	48 c1 e0 02          	shl    $0x2,%rax
  4030ef:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  size_t remaining = size - used;
  4030f3:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  4030f7:	48 2b 45 e8          	sub    -0x18(%rbp),%rax
  4030fb:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  if (remaining) {
  4030ff:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
  403104:	74 49                	je     40314f <_Z21fill_memory_with_prngPcmj+0xd7>
    uint8_t *tail = (uint8_t *)memory + used;
  403106:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
  40310a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40310e:	48 01 d0             	add    %rdx,%rax
  403111:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    for (size_t i = 0; i < remaining; ++i) {
  403115:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
  40311c:	00 
  40311d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  403121:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
  403125:	73 28                	jae    40314f <_Z21fill_memory_with_prngPcmj+0xd7>
      prng = prng * 1664525u + 1013904223u;
  403127:	8b 45 c4             	mov    -0x3c(%rbp),%eax
  40312a:	69 c0 0d 66 19 00    	imul   $0x19660d,%eax,%eax
  403130:	05 5f f3 6e 3c       	add    $0x3c6ef35f,%eax
  403135:	89 45 c4             	mov    %eax,-0x3c(%rbp)
      tail[i] = (uint8_t)prng;
  403138:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40313c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  403140:	48 01 d0             	add    %rdx,%rax
  403143:	8b 55 c4             	mov    -0x3c(%rbp),%edx
  403146:	88 10                	mov    %dl,(%rax)
    for (size_t i = 0; i < remaining; ++i) {
  403148:	48 83 45 d0 01       	addq   $0x1,-0x30(%rbp)
  40314d:	eb ce                	jmp    40311d <_Z21fill_memory_with_prngPcmj+0xa5>
    }
  }
}
  40314f:	90                   	nop
  403150:	5d                   	pop    %rbp
  403151:	c3                   	retq   

0000000000403152 <_Z11print_statsPmi>:

void print_stats(uint64_t* buffer, int nr_pf) {
  403152:	f3 0f 1e fa          	endbr64 
  403156:	55                   	push   %rbp
  403157:	48 89 e5             	mov    %rsp,%rbp
  40315a:	41 56                	push   %r14
  40315c:	41 55                	push   %r13
  40315e:	41 54                	push   %r12
  403160:	53                   	push   %rbx
  403161:	48 81 ec a0 00 00 00 	sub    $0xa0,%rsp
  403168:	48 89 bd 48 ff ff ff 	mov    %rdi,-0xb8(%rbp)
  40316f:	89 b5 44 ff ff ff    	mov    %esi,-0xbc(%rbp)
  403175:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40317c:	00 00 
  40317e:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  403182:	31 c0                	xor    %eax,%eax
  // Placeholder for actual stats printing logic
  for (int i = 0; i < nr_pf; i++) {
  403184:	c7 85 64 ff ff ff 00 	movl   $0x0,-0x9c(%rbp)
  40318b:	00 00 00 
  40318e:	8b 85 64 ff ff ff    	mov    -0x9c(%rbp),%eax
  403194:	3b 85 44 ff ff ff    	cmp    -0xbc(%rbp),%eax
  40319a:	0f 8d 9c 03 00 00    	jge    40353c <_Z11print_statsPmi+0x3ea>
    int j = i * 12; // each record has 12 uint64_t entries
  4031a0:	8b 95 64 ff ff ff    	mov    -0x9c(%rbp),%edx
  4031a6:	89 d0                	mov    %edx,%eax
  4031a8:	01 c0                	add    %eax,%eax
  4031aa:	01 d0                	add    %edx,%eax
  4031ac:	c1 e0 02             	shl    $0x2,%eax
  4031af:	89 85 6c ff ff ff    	mov    %eax,-0x94(%rbp)
    uint64_t ip = buffer[j+1];
  4031b5:	8b 85 6c ff ff ff    	mov    -0x94(%rbp),%eax
  4031bb:	48 98                	cltq   
  4031bd:	48 83 c0 01          	add    $0x1,%rax
  4031c1:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  4031c8:	00 
  4031c9:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  4031d0:	48 01 d0             	add    %rdx,%rax
  4031d3:	48 8b 00             	mov    (%rax),%rax
  4031d6:	48 89 45 80          	mov    %rax,-0x80(%rbp)
    uint64_t addr = buffer[j+2];
  4031da:	8b 85 6c ff ff ff    	mov    -0x94(%rbp),%eax
  4031e0:	48 98                	cltq   
  4031e2:	48 83 c0 02          	add    $0x2,%rax
  4031e6:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  4031ed:	00 
  4031ee:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  4031f5:	48 01 d0             	add    %rdx,%rax
  4031f8:	48 8b 00             	mov    (%rax),%rax
  4031fb:	48 89 45 88          	mov    %rax,-0x78(%rbp)
    char pf_type = buffer[j] & 1;
  4031ff:	8b 85 6c ff ff ff    	mov    -0x94(%rbp),%eax
  403205:	48 98                	cltq   
  403207:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  40320e:	00 
  40320f:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  403216:	48 01 d0             	add    %rdx,%rax
  403219:	48 8b 00             	mov    (%rax),%rax
  40321c:	83 e0 01             	and    $0x1,%eax
  40321f:	88 85 5c ff ff ff    	mov    %al,-0xa4(%rbp)
    int nr_readahead = (int)((buffer[j] >> 1) & 0xF);
  403225:	8b 85 6c ff ff ff    	mov    -0x94(%rbp),%eax
  40322b:	48 98                	cltq   
  40322d:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  403234:	00 
  403235:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  40323c:	48 01 d0             	add    %rdx,%rax
  40323f:	48 8b 00             	mov    (%rax),%rax
  403242:	48 d1 e8             	shr    %rax
  403245:	83 e0 0f             	and    $0xf,%eax
  403248:	89 85 70 ff ff ff    	mov    %eax,-0x90(%rbp)
    char valid_flag = (char)((buffer[j] >> 5) & 0x1);
  40324e:	8b 85 6c ff ff ff    	mov    -0x94(%rbp),%eax
  403254:	48 98                	cltq   
  403256:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  40325d:	00 
  40325e:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  403265:	48 01 d0             	add    %rdx,%rax
  403268:	48 8b 00             	mov    (%rax),%rax
  40326b:	48 c1 e8 05          	shr    $0x5,%rax
  40326f:	83 e0 01             	and    $0x1,%eax
  403272:	88 85 5d ff ff ff    	mov    %al,-0xa3(%rbp)
    char retry_flag = (char)((buffer[j] >> 6) & 0x1);
  403278:	8b 85 6c ff ff ff    	mov    -0x94(%rbp),%eax
  40327e:	48 98                	cltq   
  403280:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  403287:	00 
  403288:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  40328f:	48 01 d0             	add    %rdx,%rax
  403292:	48 8b 00             	mov    (%rax),%rax
  403295:	48 c1 e8 06          	shr    $0x6,%rax
  403299:	83 e0 01             	and    $0x1,%eax
  40329c:	88 85 5e ff ff ff    	mov    %al,-0xa2(%rbp)
    char swapcache_flag = (char)((buffer[j] >> 7) & 0x1);
  4032a2:	8b 85 6c ff ff ff    	mov    -0x94(%rbp),%eax
  4032a8:	48 98                	cltq   
  4032aa:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  4032b1:	00 
  4032b2:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  4032b9:	48 01 d0             	add    %rdx,%rax
  4032bc:	48 8b 00             	mov    (%rax),%rax
  4032bf:	48 c1 e8 07          	shr    $0x7,%rax
  4032c3:	83 e0 01             	and    $0x1,%eax
  4032c6:	88 85 5f ff ff ff    	mov    %al,-0xa1(%rbp)
    char swapdev_flag = (char)((buffer[j] >> 8) & 0x1);
  4032cc:	8b 85 6c ff ff ff    	mov    -0x94(%rbp),%eax
  4032d2:	48 98                	cltq   
  4032d4:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  4032db:	00 
  4032dc:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  4032e3:	48 01 d0             	add    %rdx,%rax
  4032e6:	48 8b 00             	mov    (%rax),%rax
  4032e9:	48 c1 e8 08          	shr    $0x8,%rax
  4032ed:	83 e0 01             	and    $0x1,%eax
  4032f0:	88 85 60 ff ff ff    	mov    %al,-0xa0(%rbp)
    char ra_cluster_flag = (char)((buffer[j] >> 9) & 0x1);
  4032f6:	8b 85 6c ff ff ff    	mov    -0x94(%rbp),%eax
  4032fc:	48 98                	cltq   
  4032fe:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  403305:	00 
  403306:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  40330d:	48 01 d0             	add    %rdx,%rax
  403310:	48 8b 00             	mov    (%rax),%rax
  403313:	48 c1 e8 09          	shr    $0x9,%rax
  403317:	83 e0 01             	and    $0x1,%eax
  40331a:	88 85 61 ff ff ff    	mov    %al,-0x9f(%rbp)
    char ra_vma_flag = (char)((buffer[j] >> 10) & 0x1);
  403320:	8b 85 6c ff ff ff    	mov    -0x94(%rbp),%eax
  403326:	48 98                	cltq   
  403328:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  40332f:	00 
  403330:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  403337:	48 01 d0             	add    %rdx,%rax
  40333a:	48 8b 00             	mov    (%rax),%rax
  40333d:	48 c1 e8 0a          	shr    $0xa,%rax
  403341:	83 e0 01             	and    $0x1,%eax
  403344:	88 85 62 ff ff ff    	mov    %al,-0x9e(%rbp)
    int ra_sleep_count = (int)((buffer[j] >> 11) & 0x0F);
  40334a:	8b 85 6c ff ff ff    	mov    -0x94(%rbp),%eax
  403350:	48 98                	cltq   
  403352:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  403359:	00 
  40335a:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  403361:	48 01 d0             	add    %rdx,%rax
  403364:	48 8b 00             	mov    (%rax),%rax
  403367:	48 c1 e8 0b          	shr    $0xb,%rax
  40336b:	83 e0 0f             	and    $0xf,%eax
  40336e:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%rbp)
    char direct_reclaim_flag = (char)((buffer[j] >> 15) & 0x1);
  403374:	8b 85 6c ff ff ff    	mov    -0x94(%rbp),%eax
  40337a:	48 98                	cltq   
  40337c:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  403383:	00 
  403384:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  40338b:	48 01 d0             	add    %rdx,%rax
  40338e:	48 8b 00             	mov    (%rax),%rax
  403391:	48 c1 e8 0f          	shr    $0xf,%rax
  403395:	83 e0 01             	and    $0x1,%eax
  403398:	88 85 63 ff ff ff    	mov    %al,-0x9d(%rbp)
    int reclaim_count = (int)((buffer[j] >> 16) & 0xFF);
  40339e:	8b 85 6c ff ff ff    	mov    -0x94(%rbp),%eax
  4033a4:	48 98                	cltq   
  4033a6:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  4033ad:	00 
  4033ae:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  4033b5:	48 01 d0             	add    %rdx,%rax
  4033b8:	48 8b 00             	mov    (%rax),%rax
  4033bb:	48 c1 e8 10          	shr    $0x10,%rax
  4033bf:	25 ff 00 00 00       	and    $0xff,%eax
  4033c4:	89 85 78 ff ff ff    	mov    %eax,-0x88(%rbp)
    int timer_duration = (int)(buffer[j] >> 32);
  4033ca:	8b 85 6c ff ff ff    	mov    -0x94(%rbp),%eax
  4033d0:	48 98                	cltq   
  4033d2:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  4033d9:	00 
  4033da:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  4033e1:	48 01 d0             	add    %rdx,%rax
  4033e4:	48 8b 00             	mov    (%rax),%rax
  4033e7:	48 c1 e8 20          	shr    $0x20,%rax
  4033eb:	89 85 7c ff ff ff    	mov    %eax,-0x84(%rbp)

    uint64_t ts[9];
    for (int k = 0; k < 9; k++) {
  4033f1:	c7 85 68 ff ff ff 00 	movl   $0x0,-0x98(%rbp)
  4033f8:	00 00 00 
  4033fb:	83 bd 68 ff ff ff 08 	cmpl   $0x8,-0x98(%rbp)
  403402:	7f 3e                	jg     403442 <_Z11print_statsPmi+0x2f0>
      ts[k] = buffer[j + 3 + k];
  403404:	8b 85 6c ff ff ff    	mov    -0x94(%rbp),%eax
  40340a:	8d 50 03             	lea    0x3(%rax),%edx
  40340d:	8b 85 68 ff ff ff    	mov    -0x98(%rbp),%eax
  403413:	01 d0                	add    %edx,%eax
  403415:	48 98                	cltq   
  403417:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
  40341e:	00 
  40341f:	48 8b 85 48 ff ff ff 	mov    -0xb8(%rbp),%rax
  403426:	48 01 d0             	add    %rdx,%rax
  403429:	48 8b 10             	mov    (%rax),%rdx
  40342c:	8b 85 68 ff ff ff    	mov    -0x98(%rbp),%eax
  403432:	48 98                	cltq   
  403434:	48 89 54 c5 90       	mov    %rdx,-0x70(%rbp,%rax,8)
    for (int k = 0; k < 9; k++) {
  403439:	83 85 68 ff ff ff 01 	addl   $0x1,-0x98(%rbp)
  403440:	eb b9                	jmp    4033fb <_Z11print_statsPmi+0x2a9>
    }

    printf("%d 0x%lx 0x%lx %s %d %d %d %d %d %d %d %d %d %d %d ",
  403442:	44 0f be a5 63 ff ff 	movsbl -0x9d(%rbp),%r12d
  403449:	ff 
  40344a:	0f be 9d 62 ff ff ff 	movsbl -0x9e(%rbp),%ebx
  403451:	44 0f be 9d 61 ff ff 	movsbl -0x9f(%rbp),%r11d
  403458:	ff 
  403459:	44 0f be 95 60 ff ff 	movsbl -0xa0(%rbp),%r10d
  403460:	ff 
  403461:	44 0f be 8d 5f ff ff 	movsbl -0xa1(%rbp),%r9d
  403468:	ff 
  403469:	44 0f be 85 5e ff ff 	movsbl -0xa2(%rbp),%r8d
  403470:	ff 
  403471:	0f be bd 5d ff ff ff 	movsbl -0xa3(%rbp),%edi
  403478:	80 bd 5c ff ff ff 00 	cmpb   $0x0,-0xa4(%rbp)
  40347f:	75 09                	jne    40348a <_Z11print_statsPmi+0x338>
  403481:	48 8d 05 70 0c 00 00 	lea    0xc70(%rip),%rax        # 4040f8 <_ZStL19piecewise_construct+0xf0>
  403488:	eb 07                	jmp    403491 <_Z11print_statsPmi+0x33f>
  40348a:	48 8d 05 6d 0c 00 00 	lea    0xc6d(%rip),%rax        # 4040fe <_ZStL19piecewise_construct+0xf6>
  403491:	44 8b b5 70 ff ff ff 	mov    -0x90(%rbp),%r14d
  403498:	48 8b 4d 88          	mov    -0x78(%rbp),%rcx
  40349c:	48 8b 55 80          	mov    -0x80(%rbp),%rdx
  4034a0:	8b b5 64 ff ff ff    	mov    -0x9c(%rbp),%esi
  4034a6:	44 8b ad 7c ff ff ff 	mov    -0x84(%rbp),%r13d
  4034ad:	41 55                	push   %r13
  4034af:	44 8b ad 78 ff ff ff 	mov    -0x88(%rbp),%r13d
  4034b6:	41 55                	push   %r13
  4034b8:	41 54                	push   %r12
  4034ba:	44 8b a5 74 ff ff ff 	mov    -0x8c(%rbp),%r12d
  4034c1:	41 54                	push   %r12
  4034c3:	53                   	push   %rbx
  4034c4:	41 53                	push   %r11
  4034c6:	41 52                	push   %r10
  4034c8:	41 51                	push   %r9
  4034ca:	41 50                	push   %r8
  4034cc:	57                   	push   %rdi
  4034cd:	45 89 f1             	mov    %r14d,%r9d
  4034d0:	49 89 c0             	mov    %rax,%r8
  4034d3:	48 8d 3d 2e 0c 00 00 	lea    0xc2e(%rip),%rdi        # 404108 <_ZStL19piecewise_construct+0x100>
  4034da:	b8 00 00 00 00       	mov    $0x0,%eax
  4034df:	e8 9c dc ff ff       	callq  401180 <printf@plt>
  4034e4:	48 83 c4 50          	add    $0x50,%rsp
           ra_vma_flag,
           ra_sleep_count,
           direct_reclaim_flag,
           reclaim_count,
           timer_duration);
    printf("%lu %lu %lu %lu %lu %lu %lu %lu %lu\n",
  4034e8:	4c 8b 4d d0          	mov    -0x30(%rbp),%r9
  4034ec:	4c 8b 45 c8          	mov    -0x38(%rbp),%r8
  4034f0:	48 8b 7d c0          	mov    -0x40(%rbp),%rdi
  4034f4:	48 8b 75 b8          	mov    -0x48(%rbp),%rsi
  4034f8:	4c 8b 5d b0          	mov    -0x50(%rbp),%r11
  4034fc:	4c 8b 55 a8          	mov    -0x58(%rbp),%r10
  403500:	48 8b 4d a0          	mov    -0x60(%rbp),%rcx
  403504:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
  403508:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  40350c:	41 51                	push   %r9
  40350e:	41 50                	push   %r8
  403510:	57                   	push   %rdi
  403511:	56                   	push   %rsi
  403512:	4d 89 d9             	mov    %r11,%r9
  403515:	4d 89 d0             	mov    %r10,%r8
  403518:	48 89 c6             	mov    %rax,%rsi
  40351b:	48 8d 3d 1e 0c 00 00 	lea    0xc1e(%rip),%rdi        # 404140 <_ZStL19piecewise_construct+0x138>
  403522:	b8 00 00 00 00       	mov    $0x0,%eax
  403527:	e8 54 dc ff ff       	callq  401180 <printf@plt>
  40352c:	48 83 c4 20          	add    $0x20,%rsp
  for (int i = 0; i < nr_pf; i++) {
  403530:	83 85 64 ff ff ff 01 	addl   $0x1,-0x9c(%rbp)
  403537:	e9 52 fc ff ff       	jmpq   40318e <_Z11print_statsPmi+0x3c>
      ts[0], ts[1], ts[2], ts[3], ts[4],
      ts[5], ts[6], ts[7], ts[8]);
  }
}
  40353c:	90                   	nop
  40353d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  403541:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  403548:	00 00 
  40354a:	74 05                	je     403551 <_Z11print_statsPmi+0x3ff>
  40354c:	e8 bf dc ff ff       	callq  401210 <__stack_chk_fail@plt>
  403551:	48 8d 65 e0          	lea    -0x20(%rbp),%rsp
  403555:	5b                   	pop    %rbx
  403556:	41 5c                	pop    %r12
  403558:	41 5d                	pop    %r13
  40355a:	41 5e                	pop    %r14
  40355c:	5d                   	pop    %rbp
  40355d:	c3                   	retq   
  40355e:	66 90                	xchg   %ax,%ax

0000000000403560 <__libc_csu_init>:
  403560:	f3 0f 1e fa          	endbr64 
  403564:	41 57                	push   %r15
  403566:	4c 8d 3d 73 38 00 00 	lea    0x3873(%rip),%r15        # 406de0 <__frame_dummy_init_array_entry>
  40356d:	41 56                	push   %r14
  40356f:	49 89 d6             	mov    %rdx,%r14
  403572:	41 55                	push   %r13
  403574:	49 89 f5             	mov    %rsi,%r13
  403577:	41 54                	push   %r12
  403579:	41 89 fc             	mov    %edi,%r12d
  40357c:	55                   	push   %rbp
  40357d:	48 8d 2d 6c 38 00 00 	lea    0x386c(%rip),%rbp        # 406df0 <__do_global_dtors_aux_fini_array_entry>
  403584:	53                   	push   %rbx
  403585:	4c 29 fd             	sub    %r15,%rbp
  403588:	48 83 ec 08          	sub    $0x8,%rsp
  40358c:	e8 6f da ff ff       	callq  401000 <_init>
  403591:	48 c1 fd 03          	sar    $0x3,%rbp
  403595:	74 1f                	je     4035b6 <__libc_csu_init+0x56>
  403597:	31 db                	xor    %ebx,%ebx
  403599:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4035a0:	4c 89 f2             	mov    %r14,%rdx
  4035a3:	4c 89 ee             	mov    %r13,%rsi
  4035a6:	44 89 e7             	mov    %r12d,%edi
  4035a9:	41 ff 14 df          	callq  *(%r15,%rbx,8)
  4035ad:	48 83 c3 01          	add    $0x1,%rbx
  4035b1:	48 39 dd             	cmp    %rbx,%rbp
  4035b4:	75 ea                	jne    4035a0 <__libc_csu_init+0x40>
  4035b6:	48 83 c4 08          	add    $0x8,%rsp
  4035ba:	5b                   	pop    %rbx
  4035bb:	5d                   	pop    %rbp
  4035bc:	41 5c                	pop    %r12
  4035be:	41 5d                	pop    %r13
  4035c0:	41 5e                	pop    %r14
  4035c2:	41 5f                	pop    %r15
  4035c4:	c3                   	retq   
  4035c5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4035cc:	00 00 00 00 

00000000004035d0 <__libc_csu_fini>:
  4035d0:	f3 0f 1e fa          	endbr64 
  4035d4:	c3                   	retq   

Disassembly of section .fini:

00000000004035d8 <_fini>:
  4035d8:	f3 0f 1e fa          	endbr64 
  4035dc:	48 83 ec 08          	sub    $0x8,%rsp
  4035e0:	48 83 c4 08          	add    $0x8,%rsp
  4035e4:	c3                   	retq   
