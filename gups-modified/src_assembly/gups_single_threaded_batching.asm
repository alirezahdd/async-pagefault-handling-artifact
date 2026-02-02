
../gups_single_threaded_batching:     file format elf64-x86-64


Disassembly of section .init:

0000000000402000 <_init>:
_init():
  402000:	f3 0f 1e fa          	endbr64 
  402004:	48 83 ec 08          	sub    $0x8,%rsp
  402008:	48 8b 05 e1 5f 00 00 	mov    0x5fe1(%rip),%rax        # 407ff0 <__gmon_start__>
  40200f:	48 85 c0             	test   %rax,%rax
  402012:	74 02                	je     402016 <_init+0x16>
  402014:	ff d0                	callq  *%rax
  402016:	48 83 c4 08          	add    $0x8,%rsp
  40201a:	c3                   	retq   

Disassembly of section .plt:

0000000000402020 <.plt>:
  402020:	ff 35 e2 5f 00 00    	pushq  0x5fe2(%rip)        # 408008 <_GLOBAL_OFFSET_TABLE_+0x8>
  402026:	f2 ff 25 e3 5f 00 00 	bnd jmpq *0x5fe3(%rip)        # 408010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40202d:	0f 1f 00             	nopl   (%rax)
  402030:	f3 0f 1e fa          	endbr64 
  402034:	68 00 00 00 00       	pushq  $0x0
  402039:	f2 e9 e1 ff ff ff    	bnd jmpq 402020 <.plt>
  40203f:	90                   	nop
  402040:	f3 0f 1e fa          	endbr64 
  402044:	68 01 00 00 00       	pushq  $0x1
  402049:	f2 e9 d1 ff ff ff    	bnd jmpq 402020 <.plt>
  40204f:	90                   	nop
  402050:	f3 0f 1e fa          	endbr64 
  402054:	68 02 00 00 00       	pushq  $0x2
  402059:	f2 e9 c1 ff ff ff    	bnd jmpq 402020 <.plt>
  40205f:	90                   	nop
  402060:	f3 0f 1e fa          	endbr64 
  402064:	68 03 00 00 00       	pushq  $0x3
  402069:	f2 e9 b1 ff ff ff    	bnd jmpq 402020 <.plt>
  40206f:	90                   	nop
  402070:	f3 0f 1e fa          	endbr64 
  402074:	68 04 00 00 00       	pushq  $0x4
  402079:	f2 e9 a1 ff ff ff    	bnd jmpq 402020 <.plt>
  40207f:	90                   	nop
  402080:	f3 0f 1e fa          	endbr64 
  402084:	68 05 00 00 00       	pushq  $0x5
  402089:	f2 e9 91 ff ff ff    	bnd jmpq 402020 <.plt>
  40208f:	90                   	nop
  402090:	f3 0f 1e fa          	endbr64 
  402094:	68 06 00 00 00       	pushq  $0x6
  402099:	f2 e9 81 ff ff ff    	bnd jmpq 402020 <.plt>
  40209f:	90                   	nop
  4020a0:	f3 0f 1e fa          	endbr64 
  4020a4:	68 07 00 00 00       	pushq  $0x7
  4020a9:	f2 e9 71 ff ff ff    	bnd jmpq 402020 <.plt>
  4020af:	90                   	nop
  4020b0:	f3 0f 1e fa          	endbr64 
  4020b4:	68 08 00 00 00       	pushq  $0x8
  4020b9:	f2 e9 61 ff ff ff    	bnd jmpq 402020 <.plt>
  4020bf:	90                   	nop
  4020c0:	f3 0f 1e fa          	endbr64 
  4020c4:	68 09 00 00 00       	pushq  $0x9
  4020c9:	f2 e9 51 ff ff ff    	bnd jmpq 402020 <.plt>
  4020cf:	90                   	nop
  4020d0:	f3 0f 1e fa          	endbr64 
  4020d4:	68 0a 00 00 00       	pushq  $0xa
  4020d9:	f2 e9 41 ff ff ff    	bnd jmpq 402020 <.plt>
  4020df:	90                   	nop
  4020e0:	f3 0f 1e fa          	endbr64 
  4020e4:	68 0b 00 00 00       	pushq  $0xb
  4020e9:	f2 e9 31 ff ff ff    	bnd jmpq 402020 <.plt>
  4020ef:	90                   	nop
  4020f0:	f3 0f 1e fa          	endbr64 
  4020f4:	68 0c 00 00 00       	pushq  $0xc
  4020f9:	f2 e9 21 ff ff ff    	bnd jmpq 402020 <.plt>
  4020ff:	90                   	nop
  402100:	f3 0f 1e fa          	endbr64 
  402104:	68 0d 00 00 00       	pushq  $0xd
  402109:	f2 e9 11 ff ff ff    	bnd jmpq 402020 <.plt>
  40210f:	90                   	nop
  402110:	f3 0f 1e fa          	endbr64 
  402114:	68 0e 00 00 00       	pushq  $0xe
  402119:	f2 e9 01 ff ff ff    	bnd jmpq 402020 <.plt>
  40211f:	90                   	nop
  402120:	f3 0f 1e fa          	endbr64 
  402124:	68 0f 00 00 00       	pushq  $0xf
  402129:	f2 e9 f1 fe ff ff    	bnd jmpq 402020 <.plt>
  40212f:	90                   	nop
  402130:	f3 0f 1e fa          	endbr64 
  402134:	68 10 00 00 00       	pushq  $0x10
  402139:	f2 e9 e1 fe ff ff    	bnd jmpq 402020 <.plt>
  40213f:	90                   	nop
  402140:	f3 0f 1e fa          	endbr64 
  402144:	68 11 00 00 00       	pushq  $0x11
  402149:	f2 e9 d1 fe ff ff    	bnd jmpq 402020 <.plt>
  40214f:	90                   	nop
  402150:	f3 0f 1e fa          	endbr64 
  402154:	68 12 00 00 00       	pushq  $0x12
  402159:	f2 e9 c1 fe ff ff    	bnd jmpq 402020 <.plt>
  40215f:	90                   	nop
  402160:	f3 0f 1e fa          	endbr64 
  402164:	68 13 00 00 00       	pushq  $0x13
  402169:	f2 e9 b1 fe ff ff    	bnd jmpq 402020 <.plt>
  40216f:	90                   	nop
  402170:	f3 0f 1e fa          	endbr64 
  402174:	68 14 00 00 00       	pushq  $0x14
  402179:	f2 e9 a1 fe ff ff    	bnd jmpq 402020 <.plt>
  40217f:	90                   	nop
  402180:	f3 0f 1e fa          	endbr64 
  402184:	68 15 00 00 00       	pushq  $0x15
  402189:	f2 e9 91 fe ff ff    	bnd jmpq 402020 <.plt>
  40218f:	90                   	nop
  402190:	f3 0f 1e fa          	endbr64 
  402194:	68 16 00 00 00       	pushq  $0x16
  402199:	f2 e9 81 fe ff ff    	bnd jmpq 402020 <.plt>
  40219f:	90                   	nop
  4021a0:	f3 0f 1e fa          	endbr64 
  4021a4:	68 17 00 00 00       	pushq  $0x17
  4021a9:	f2 e9 71 fe ff ff    	bnd jmpq 402020 <.plt>
  4021af:	90                   	nop
  4021b0:	f3 0f 1e fa          	endbr64 
  4021b4:	68 18 00 00 00       	pushq  $0x18
  4021b9:	f2 e9 61 fe ff ff    	bnd jmpq 402020 <.plt>
  4021bf:	90                   	nop
  4021c0:	f3 0f 1e fa          	endbr64 
  4021c4:	68 19 00 00 00       	pushq  $0x19
  4021c9:	f2 e9 51 fe ff ff    	bnd jmpq 402020 <.plt>
  4021cf:	90                   	nop
  4021d0:	f3 0f 1e fa          	endbr64 
  4021d4:	68 1a 00 00 00       	pushq  $0x1a
  4021d9:	f2 e9 41 fe ff ff    	bnd jmpq 402020 <.plt>
  4021df:	90                   	nop
  4021e0:	f3 0f 1e fa          	endbr64 
  4021e4:	68 1b 00 00 00       	pushq  $0x1b
  4021e9:	f2 e9 31 fe ff ff    	bnd jmpq 402020 <.plt>
  4021ef:	90                   	nop
  4021f0:	f3 0f 1e fa          	endbr64 
  4021f4:	68 1c 00 00 00       	pushq  $0x1c
  4021f9:	f2 e9 21 fe ff ff    	bnd jmpq 402020 <.plt>
  4021ff:	90                   	nop
  402200:	f3 0f 1e fa          	endbr64 
  402204:	68 1d 00 00 00       	pushq  $0x1d
  402209:	f2 e9 11 fe ff ff    	bnd jmpq 402020 <.plt>
  40220f:	90                   	nop
  402210:	f3 0f 1e fa          	endbr64 
  402214:	68 1e 00 00 00       	pushq  $0x1e
  402219:	f2 e9 01 fe ff ff    	bnd jmpq 402020 <.plt>
  40221f:	90                   	nop
  402220:	f3 0f 1e fa          	endbr64 
  402224:	68 1f 00 00 00       	pushq  $0x1f
  402229:	f2 e9 f1 fd ff ff    	bnd jmpq 402020 <.plt>
  40222f:	90                   	nop
  402230:	f3 0f 1e fa          	endbr64 
  402234:	68 20 00 00 00       	pushq  $0x20
  402239:	f2 e9 e1 fd ff ff    	bnd jmpq 402020 <.plt>
  40223f:	90                   	nop
  402240:	f3 0f 1e fa          	endbr64 
  402244:	68 21 00 00 00       	pushq  $0x21
  402249:	f2 e9 d1 fd ff ff    	bnd jmpq 402020 <.plt>
  40224f:	90                   	nop
  402250:	f3 0f 1e fa          	endbr64 
  402254:	68 22 00 00 00       	pushq  $0x22
  402259:	f2 e9 c1 fd ff ff    	bnd jmpq 402020 <.plt>
  40225f:	90                   	nop
  402260:	f3 0f 1e fa          	endbr64 
  402264:	68 23 00 00 00       	pushq  $0x23
  402269:	f2 e9 b1 fd ff ff    	bnd jmpq 402020 <.plt>
  40226f:	90                   	nop
  402270:	f3 0f 1e fa          	endbr64 
  402274:	68 24 00 00 00       	pushq  $0x24
  402279:	f2 e9 a1 fd ff ff    	bnd jmpq 402020 <.plt>
  40227f:	90                   	nop
  402280:	f3 0f 1e fa          	endbr64 
  402284:	68 25 00 00 00       	pushq  $0x25
  402289:	f2 e9 91 fd ff ff    	bnd jmpq 402020 <.plt>
  40228f:	90                   	nop
  402290:	f3 0f 1e fa          	endbr64 
  402294:	68 26 00 00 00       	pushq  $0x26
  402299:	f2 e9 81 fd ff ff    	bnd jmpq 402020 <.plt>
  40229f:	90                   	nop
  4022a0:	f3 0f 1e fa          	endbr64 
  4022a4:	68 27 00 00 00       	pushq  $0x27
  4022a9:	f2 e9 71 fd ff ff    	bnd jmpq 402020 <.plt>
  4022af:	90                   	nop
  4022b0:	f3 0f 1e fa          	endbr64 
  4022b4:	68 28 00 00 00       	pushq  $0x28
  4022b9:	f2 e9 61 fd ff ff    	bnd jmpq 402020 <.plt>
  4022bf:	90                   	nop
  4022c0:	f3 0f 1e fa          	endbr64 
  4022c4:	68 29 00 00 00       	pushq  $0x29
  4022c9:	f2 e9 51 fd ff ff    	bnd jmpq 402020 <.plt>
  4022cf:	90                   	nop
  4022d0:	f3 0f 1e fa          	endbr64 
  4022d4:	68 2a 00 00 00       	pushq  $0x2a
  4022d9:	f2 e9 41 fd ff ff    	bnd jmpq 402020 <.plt>
  4022df:	90                   	nop
  4022e0:	f3 0f 1e fa          	endbr64 
  4022e4:	68 2b 00 00 00       	pushq  $0x2b
  4022e9:	f2 e9 31 fd ff ff    	bnd jmpq 402020 <.plt>
  4022ef:	90                   	nop
  4022f0:	f3 0f 1e fa          	endbr64 
  4022f4:	68 2c 00 00 00       	pushq  $0x2c
  4022f9:	f2 e9 21 fd ff ff    	bnd jmpq 402020 <.plt>
  4022ff:	90                   	nop
  402300:	f3 0f 1e fa          	endbr64 
  402304:	68 2d 00 00 00       	pushq  $0x2d
  402309:	f2 e9 11 fd ff ff    	bnd jmpq 402020 <.plt>
  40230f:	90                   	nop
  402310:	f3 0f 1e fa          	endbr64 
  402314:	68 2e 00 00 00       	pushq  $0x2e
  402319:	f2 e9 01 fd ff ff    	bnd jmpq 402020 <.plt>
  40231f:	90                   	nop
  402320:	f3 0f 1e fa          	endbr64 
  402324:	68 2f 00 00 00       	pushq  $0x2f
  402329:	f2 e9 f1 fc ff ff    	bnd jmpq 402020 <.plt>
  40232f:	90                   	nop
  402330:	f3 0f 1e fa          	endbr64 
  402334:	68 30 00 00 00       	pushq  $0x30
  402339:	f2 e9 e1 fc ff ff    	bnd jmpq 402020 <.plt>
  40233f:	90                   	nop

Disassembly of section .plt.sec:

0000000000402340 <__printf_chk@plt>:
  402340:	f3 0f 1e fa          	endbr64 
  402344:	f2 ff 25 cd 5c 00 00 	bnd jmpq *0x5ccd(%rip)        # 408018 <__printf_chk@GLIBC_2.3.4>
  40234b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402350 <_ZNSo3putEc@plt>:
  402350:	f3 0f 1e fa          	endbr64 
  402354:	f2 ff 25 c5 5c 00 00 	bnd jmpq *0x5cc5(%rip)        # 408020 <_ZNSo3putEc@GLIBCXX_3.4>
  40235b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402360 <syscall@plt>:
  402360:	f3 0f 1e fa          	endbr64 
  402364:	f2 ff 25 bd 5c 00 00 	bnd jmpq *0x5cbd(%rip)        # 408028 <syscall@GLIBC_2.2.5>
  40236b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402370 <bind@plt>:
  402370:	f3 0f 1e fa          	endbr64 
  402374:	f2 ff 25 b5 5c 00 00 	bnd jmpq *0x5cb5(%rip)        # 408030 <bind@GLIBC_2.2.5>
  40237b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402380 <strstr@plt>:
  402380:	f3 0f 1e fa          	endbr64 
  402384:	f2 ff 25 ad 5c 00 00 	bnd jmpq *0x5cad(%rip)        # 408038 <strstr@GLIBC_2.2.5>
  40238b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402390 <socket@plt>:
  402390:	f3 0f 1e fa          	endbr64 
  402394:	f2 ff 25 a5 5c 00 00 	bnd jmpq *0x5ca5(%rip)        # 408040 <socket@GLIBC_2.2.5>
  40239b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004023a0 <fork@plt>:
  4023a0:	f3 0f 1e fa          	endbr64 
  4023a4:	f2 ff 25 9d 5c 00 00 	bnd jmpq *0x5c9d(%rip)        # 408048 <fork@GLIBC_2.2.5>
  4023ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004023b0 <execlp@plt>:
  4023b0:	f3 0f 1e fa          	endbr64 
  4023b4:	f2 ff 25 95 5c 00 00 	bnd jmpq *0x5c95(%rip)        # 408050 <execlp@GLIBC_2.2.5>
  4023bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004023c0 <recv@plt>:
  4023c0:	f3 0f 1e fa          	endbr64 
  4023c4:	f2 ff 25 8d 5c 00 00 	bnd jmpq *0x5c8d(%rip)        # 408058 <recv@GLIBC_2.2.5>
  4023cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004023d0 <strlen@plt>:
  4023d0:	f3 0f 1e fa          	endbr64 
  4023d4:	f2 ff 25 85 5c 00 00 	bnd jmpq *0x5c85(%rip)        # 408060 <strlen@GLIBC_2.2.5>
  4023db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004023e0 <send@plt>:
  4023e0:	f3 0f 1e fa          	endbr64 
  4023e4:	f2 ff 25 7d 5c 00 00 	bnd jmpq *0x5c7d(%rip)        # 408068 <send@GLIBC_2.2.5>
  4023eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004023f0 <_ZSt20__throw_length_errorPKc@plt>:
  4023f0:	f3 0f 1e fa          	endbr64 
  4023f4:	f2 ff 25 75 5c 00 00 	bnd jmpq *0x5c75(%rip)        # 408070 <_ZSt20__throw_length_errorPKc@GLIBCXX_3.4>
  4023fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402400 <getrusage@plt>:
  402400:	f3 0f 1e fa          	endbr64 
  402404:	f2 ff 25 6d 5c 00 00 	bnd jmpq *0x5c6d(%rip)        # 408078 <getrusage@GLIBC_2.2.5>
  40240b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402410 <munmap@plt>:
  402410:	f3 0f 1e fa          	endbr64 
  402414:	f2 ff 25 65 5c 00 00 	bnd jmpq *0x5c65(%rip)        # 408080 <munmap@GLIBC_2.2.5>
  40241b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402420 <__snprintf_chk@plt>:
  402420:	f3 0f 1e fa          	endbr64 
  402424:	f2 ff 25 5d 5c 00 00 	bnd jmpq *0x5c5d(%rip)        # 408088 <__snprintf_chk@GLIBC_2.3.4>
  40242b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402430 <_ZNSo5flushEv@plt>:
  402430:	f3 0f 1e fa          	endbr64 
  402434:	f2 ff 25 55 5c 00 00 	bnd jmpq *0x5c55(%rip)        # 408090 <_ZNSo5flushEv@GLIBCXX_3.4>
  40243b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402440 <memcpy@plt>:
  402440:	f3 0f 1e fa          	endbr64 
  402444:	f2 ff 25 4d 5c 00 00 	bnd jmpq *0x5c4d(%rip)        # 408098 <memcpy@GLIBC_2.14>
  40244b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402450 <perror@plt>:
  402450:	f3 0f 1e fa          	endbr64 
  402454:	f2 ff 25 45 5c 00 00 	bnd jmpq *0x5c45(%rip)        # 4080a0 <perror@GLIBC_2.2.5>
  40245b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402460 <system@plt>:
  402460:	f3 0f 1e fa          	endbr64 
  402464:	f2 ff 25 3d 5c 00 00 	bnd jmpq *0x5c3d(%rip)        # 4080a8 <system@GLIBC_2.2.5>
  40246b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402470 <__cxa_atexit@plt>:
  402470:	f3 0f 1e fa          	endbr64 
  402474:	f2 ff 25 35 5c 00 00 	bnd jmpq *0x5c35(%rip)        # 4080b0 <__cxa_atexit@GLIBC_2.2.5>
  40247b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402480 <_ZdlPv@plt>:
  402480:	f3 0f 1e fa          	endbr64 
  402484:	f2 ff 25 2d 5c 00 00 	bnd jmpq *0x5c2d(%rip)        # 4080b8 <_ZdlPv@GLIBCXX_3.4>
  40248b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402490 <__isoc99_sscanf@plt>:
  402490:	f3 0f 1e fa          	endbr64 
  402494:	f2 ff 25 25 5c 00 00 	bnd jmpq *0x5c25(%rip)        # 4080c0 <__isoc99_sscanf@GLIBC_2.7>
  40249b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004024a0 <fclose@plt>:
  4024a0:	f3 0f 1e fa          	endbr64 
  4024a4:	f2 ff 25 1d 5c 00 00 	bnd jmpq *0x5c1d(%rip)        # 4080c8 <fclose@GLIBC_2.2.5>
  4024ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004024b0 <_Znwm@plt>:
  4024b0:	f3 0f 1e fa          	endbr64 
  4024b4:	f2 ff 25 15 5c 00 00 	bnd jmpq *0x5c15(%rip)        # 4080d0 <_Znwm@GLIBCXX_3.4>
  4024bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004024c0 <__stack_chk_fail@plt>:
  4024c0:	f3 0f 1e fa          	endbr64 
  4024c4:	f2 ff 25 0d 5c 00 00 	bnd jmpq *0x5c0d(%rip)        # 4080d8 <__stack_chk_fail@GLIBC_2.4>
  4024cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004024d0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>:
  4024d0:	f3 0f 1e fa          	endbr64 
  4024d4:	f2 ff 25 05 5c 00 00 	bnd jmpq *0x5c05(%rip)        # 4080e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@GLIBCXX_3.4.9>
  4024db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004024e0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>:
  4024e0:	f3 0f 1e fa          	endbr64 
  4024e4:	f2 ff 25 fd 5b 00 00 	bnd jmpq *0x5bfd(%rip)        # 4080e8 <_ZNKSt5ctypeIcE13_M_widen_initEv@GLIBCXX_3.4.11>
  4024eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004024f0 <fopen@plt>:
  4024f0:	f3 0f 1e fa          	endbr64 
  4024f4:	f2 ff 25 f5 5b 00 00 	bnd jmpq *0x5bf5(%rip)        # 4080f0 <fopen@GLIBC_2.2.5>
  4024fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402500 <free@plt>:
  402500:	f3 0f 1e fa          	endbr64 
  402504:	f2 ff 25 ed 5b 00 00 	bnd jmpq *0x5bed(%rip)        # 4080f8 <free@GLIBC_2.2.5>
  40250b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402510 <exit@plt>:
  402510:	f3 0f 1e fa          	endbr64 
  402514:	f2 ff 25 e5 5b 00 00 	bnd jmpq *0x5be5(%rip)        # 408100 <exit@GLIBC_2.2.5>
  40251b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402520 <_ZSt16__throw_bad_castv@plt>:
  402520:	f3 0f 1e fa          	endbr64 
  402524:	f2 ff 25 dd 5b 00 00 	bnd jmpq *0x5bdd(%rip)        # 408108 <_ZSt16__throw_bad_castv@GLIBCXX_3.4>
  40252b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402530 <malloc@plt>:
  402530:	f3 0f 1e fa          	endbr64 
  402534:	f2 ff 25 d5 5b 00 00 	bnd jmpq *0x5bd5(%rip)        # 408110 <malloc@GLIBC_2.2.5>
  40253b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402540 <mlock@plt>:
  402540:	f3 0f 1e fa          	endbr64 
  402544:	f2 ff 25 cd 5b 00 00 	bnd jmpq *0x5bcd(%rip)        # 408118 <mlock@GLIBC_2.2.5>
  40254b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402550 <strtol@plt>:
  402550:	f3 0f 1e fa          	endbr64 
  402554:	f2 ff 25 c5 5b 00 00 	bnd jmpq *0x5bc5(%rip)        # 408120 <strtol@GLIBC_2.2.5>
  40255b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402560 <ioctl@plt>:
  402560:	f3 0f 1e fa          	endbr64 
  402564:	f2 ff 25 bd 5b 00 00 	bnd jmpq *0x5bbd(%rip)        # 408128 <ioctl@GLIBC_2.2.5>
  40256b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402570 <read@plt>:
  402570:	f3 0f 1e fa          	endbr64 
  402574:	f2 ff 25 b5 5b 00 00 	bnd jmpq *0x5bb5(%rip)        # 408130 <read@GLIBC_2.2.5>
  40257b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402580 <getpid@plt>:
  402580:	f3 0f 1e fa          	endbr64 
  402584:	f2 ff 25 ad 5b 00 00 	bnd jmpq *0x5bad(%rip)        # 408138 <getpid@GLIBC_2.2.5>
  40258b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402590 <fread@plt>:
  402590:	f3 0f 1e fa          	endbr64 
  402594:	f2 ff 25 a5 5b 00 00 	bnd jmpq *0x5ba5(%rip)        # 408140 <fread@GLIBC_2.2.5>
  40259b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004025a0 <_ZNSt8ios_base4InitC1Ev@plt>:
  4025a0:	f3 0f 1e fa          	endbr64 
  4025a4:	f2 ff 25 9d 5b 00 00 	bnd jmpq *0x5b9d(%rip)        # 408148 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
  4025ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004025b0 <fgets@plt>:
  4025b0:	f3 0f 1e fa          	endbr64 
  4025b4:	f2 ff 25 95 5b 00 00 	bnd jmpq *0x5b95(%rip)        # 408150 <fgets@GLIBC_2.2.5>
  4025bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004025c0 <gettimeofday@plt>:
  4025c0:	f3 0f 1e fa          	endbr64 
  4025c4:	f2 ff 25 8d 5b 00 00 	bnd jmpq *0x5b8d(%rip)        # 408158 <gettimeofday@GLIBC_2.2.5>
  4025cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004025d0 <memmove@plt>:
  4025d0:	f3 0f 1e fa          	endbr64 
  4025d4:	f2 ff 25 85 5b 00 00 	bnd jmpq *0x5b85(%rip)        # 408160 <memmove@GLIBC_2.2.5>
  4025db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004025e0 <__fprintf_chk@plt>:
  4025e0:	f3 0f 1e fa          	endbr64 
  4025e4:	f2 ff 25 7d 5b 00 00 	bnd jmpq *0x5b7d(%rip)        # 408168 <__fprintf_chk@GLIBC_2.3.4>
  4025eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004025f0 <_ZNSolsEi@plt>:
  4025f0:	f3 0f 1e fa          	endbr64 
  4025f4:	f2 ff 25 75 5b 00 00 	bnd jmpq *0x5b75(%rip)        # 408170 <_ZNSolsEi@GLIBCXX_3.4>
  4025fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402600 <mmap@plt>:
  402600:	f3 0f 1e fa          	endbr64 
  402604:	f2 ff 25 6d 5b 00 00 	bnd jmpq *0x5b6d(%rip)        # 408178 <mmap@GLIBC_2.2.5>
  40260b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402610 <__isoc99_fscanf@plt>:
  402610:	f3 0f 1e fa          	endbr64 
  402614:	f2 ff 25 65 5b 00 00 	bnd jmpq *0x5b65(%rip)        # 408180 <__isoc99_fscanf@GLIBC_2.7>
  40261b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402620 <munlock@plt>:
  402620:	f3 0f 1e fa          	endbr64 
  402624:	f2 ff 25 5d 5b 00 00 	bnd jmpq *0x5b5d(%rip)        # 408188 <munlock@GLIBC_2.2.5>
  40262b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402630 <fwrite@plt>:
  402630:	f3 0f 1e fa          	endbr64 
  402634:	f2 ff 25 55 5b 00 00 	bnd jmpq *0x5b55(%rip)        # 408190 <fwrite@GLIBC_2.2.5>
  40263b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402640 <close@plt>:
  402640:	f3 0f 1e fa          	endbr64 
  402644:	f2 ff 25 4d 5b 00 00 	bnd jmpq *0x5b4d(%rip)        # 408198 <close@GLIBC_2.2.5>
  40264b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000402650 <main>:
main():
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:46

u64Int HPCC_starts(s64Int n);
double get_time();

int main(int narg, char **arg)
{
  402650:	f3 0f 1e fa          	endbr64 
  402654:	41 57                	push   %r15
  402656:	41 56                	push   %r14
  402658:	41 55                	push   %r13
  40265a:	41 54                	push   %r12
  40265c:	49 89 f4             	mov    %rsi,%r12
  40265f:	55                   	push   %rbp
  402660:	53                   	push   %rbx
  402661:	89 fb                	mov    %edi,%ebx
  402663:	48 81 ec 68 01 00 00 	sub    $0x168,%rsp
  40266a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402671:	00 00 
  402673:	48 89 84 24 58 01 00 	mov    %rax,0x158(%rsp)
  40267a:	00 
  40267b:	31 c0                	xor    %eax,%eax
_Z28initialize_perf_measurementsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:175

/* Setup counters before any threads are created by omp
 * Must be called at the begining of the program.
*/
void initialize_perf_measurements(){
  perf_ctrs = setup_counters();
  40267d:	e8 fe 0f 00 00       	callq  403680 <_Z14setup_countersv>
  402682:	48 89 05 e7 60 00 00 	mov    %rax,0x60e7(%rip)        # 408770 <perf_ctrs>
  402689:	48 89 15 e8 60 00 00 	mov    %rdx,0x60e8(%rip)        # 408778 <perf_ctrs+0x8>
main():
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:60
  /* command line args = N M chunk
     N = length of global table is 2^N
     M = # of update sets
     chunk = # of updates in one set */

  if (narg != 7) {
  402690:	83 fb 07             	cmp    $0x7,%ebx
  402693:	0f 85 bf 06 00 00    	jne    402d58 <main+0x708>
/usr/include/stdlib.h:363

#ifdef __USE_EXTERN_INLINES
__extern_inline int
__NTH (atoi (const char *__nptr))
{
  return (int) strtol (__nptr, (char **) NULL, 10);
  402699:	49 8b 7c 24 08       	mov    0x8(%r12),%rdi
atoi():
/usr/include/stdlib.h:363
  40269e:	31 f6                	xor    %esi,%esi
  4026a0:	ba 0a 00 00 00       	mov    $0xa,%edx
  4026a5:	e8 a6 fe ff ff       	callq  402550 <strtol@plt>
main():
/usr/include/stdlib.h:363
  4026aa:	49 8b 7c 24 10       	mov    0x10(%r12),%rdi
atoi():
/usr/include/stdlib.h:363
  4026af:	31 f6                	xor    %esi,%esi
  4026b1:	ba 0a 00 00 00       	mov    $0xa,%edx
  4026b6:	48 89 c5             	mov    %rax,%rbp
  4026b9:	e8 92 fe ff ff       	callq  402550 <strtol@plt>
main():
/usr/include/stdlib.h:363
  4026be:	49 8b 7c 24 18       	mov    0x18(%r12),%rdi
atoi():
/usr/include/stdlib.h:363
  4026c3:	31 f6                	xor    %esi,%esi
  4026c5:	ba 0a 00 00 00       	mov    $0xa,%edx
  4026ca:	89 04 24             	mov    %eax,(%rsp)
  4026cd:	49 89 c5             	mov    %rax,%r13
  4026d0:	e8 7b fe ff ff       	callq  402550 <strtol@plt>
main():
/usr/include/stdlib.h:363
  4026d5:	49 8b 7c 24 20       	mov    0x20(%r12),%rdi
atoi():
/usr/include/stdlib.h:363
  4026da:	31 f6                	xor    %esi,%esi
  4026dc:	ba 0a 00 00 00       	mov    $0xa,%edx
  4026e1:	48 89 c3             	mov    %rax,%rbx
  4026e4:	41 89 c7             	mov    %eax,%r15d
  4026e7:	e8 64 fe ff ff       	callq  402550 <strtol@plt>
main():
/usr/include/stdlib.h:363
  4026ec:	49 8b 7c 24 28       	mov    0x28(%r12),%rdi
atoi():
/usr/include/stdlib.h:363
  4026f1:	31 f6                	xor    %esi,%esi
  4026f3:	ba 0a 00 00 00       	mov    $0xa,%edx
  4026f8:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  4026fd:	e8 4e fe ff ff       	callq  402550 <strtol@plt>
main():
/usr/include/stdlib.h:363
  402702:	49 8b 7c 24 30       	mov    0x30(%r12),%rdi
atoi():
/usr/include/stdlib.h:363
  402707:	31 f6                	xor    %esi,%esi
  402709:	ba 0a 00 00 00       	mov    $0xa,%edx
  40270e:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  402713:	e8 38 fe ff ff       	callq  402550 <strtol@plt>
main():
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:80

  /* nglobal = entire table
     nlocal = size of table (same as nglobal for single-threaded)
     nlocalm1 = local size - 1 (for index computation) */

  nglobal = ((u64Int) 1) << logtable;
  402718:	89 e9                	mov    %ebp,%ecx
  40271a:	ba 01 00 00 00       	mov    $0x1,%edx
  40271f:	48 d3 e2             	shl    %cl,%rdx
atoi():
/usr/include/stdlib.h:363
  402722:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
main():
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:86
  nlocal = nglobal;
  nlocalm1 = nlocal - 1;

  /* allocate local memory */

  table = (u64Int *) malloc(nlocal*sizeof(u64Int));
  402727:	48 63 fa             	movslq %edx,%rdi
  40272a:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:82
  nlocalm1 = nlocal - 1;
  40272f:	8d 6a ff             	lea    -0x1(%rdx),%ebp
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:86
  table = (u64Int *) malloc(nlocal*sizeof(u64Int));
  402732:	48 c1 e7 03          	shl    $0x3,%rdi
  402736:	e8 f5 fd ff ff       	callq  402530 <malloc@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:89
  global_table = table; // set the global pointer for resume functions

  if (!table) {
  40273b:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  402740:	48 85 c0             	test   %rax,%rax
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:87
  global_table = table; // set the global pointer for resume functions
  402743:	48 89 05 5e 5c 00 00 	mov    %rax,0x5c5e(%rip)        # 4083a8 <global_table>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:86
  table = (u64Int *) malloc(nlocal*sizeof(u64Int));
  40274a:	49 89 c6             	mov    %rax,%r14
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:89
  if (!table) {
  40274d:	0f 84 e8 05 00 00    	je     402d3b <main+0x6eb>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:97
  }

  /* initialize global array
     global array starts with table[i] = i */

  for (i = 0; i < nlocal; i++) table[i] = i;
  402753:	85 d2                	test   %edx,%edx
  402755:	0f 8e 86 00 00 00    	jle    4027e1 <main+0x191>
  40275b:	83 fd 02             	cmp    $0x2,%ebp
  40275e:	0f 86 9a 05 00 00    	jbe    402cfe <main+0x6ae>
  402764:	89 d1                	mov    %edx,%ecx
  402766:	66 0f 6f 0d 52 31 00 	movdqa 0x3152(%rip),%xmm1        # 4058c0 <_IO_stdin_used+0x8c0>
  40276d:	00 
  40276e:	66 0f 6f 2d 5a 31 00 	movdqa 0x315a(%rip),%xmm5        # 4058d0 <_IO_stdin_used+0x8d0>
  402775:	00 
  402776:	66 0f ef e4          	pxor   %xmm4,%xmm4
  40277a:	c1 e9 02             	shr    $0x2,%ecx
  40277d:	48 c1 e1 05          	shl    $0x5,%rcx
  402781:	48 01 c1             	add    %rax,%rcx
  402784:	0f 1f 40 00          	nopl   0x0(%rax)
  402788:	66 0f 6f c1          	movdqa %xmm1,%xmm0
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:97 (discriminator 2)
  40278c:	66 0f 6f d4          	movdqa %xmm4,%xmm2
  402790:	66 0f fe cd          	paddd  %xmm5,%xmm1
  402794:	48 83 c0 20          	add    $0x20,%rax
  402798:	66 0f 66 d0          	pcmpgtd %xmm0,%xmm2
  40279c:	66 0f 6f d8          	movdqa %xmm0,%xmm3
  4027a0:	66 0f 62 da          	punpckldq %xmm2,%xmm3
  4027a4:	66 0f 6a c2          	punpckhdq %xmm2,%xmm0
  4027a8:	0f 11 58 e0          	movups %xmm3,-0x20(%rax)
  4027ac:	0f 11 40 f0          	movups %xmm0,-0x10(%rax)
  4027b0:	48 39 c1             	cmp    %rax,%rcx
  4027b3:	75 d3                	jne    402788 <main+0x138>
  4027b5:	89 d0                	mov    %edx,%eax
  4027b7:	83 e0 fc             	and    $0xfffffffc,%eax
  4027ba:	f6 c2 03             	test   $0x3,%dl
  4027bd:	74 22                	je     4027e1 <main+0x191>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:97
  4027bf:	48 63 c8             	movslq %eax,%rcx
  4027c2:	49 89 0c ce          	mov    %rcx,(%r14,%rcx,8)
  4027c6:	8d 48 01             	lea    0x1(%rax),%ecx
  4027c9:	39 ca                	cmp    %ecx,%edx
  4027cb:	7e 14                	jle    4027e1 <main+0x191>
  4027cd:	48 63 c9             	movslq %ecx,%rcx
  4027d0:	83 c0 02             	add    $0x2,%eax
  4027d3:	49 89 0c ce          	mov    %rcx,(%r14,%rcx,8)
  4027d7:	39 d0                	cmp    %edx,%eax
  4027d9:	7d 06                	jge    4027e1 <main+0x191>
  4027db:	48 98                	cltq   
  4027dd:	49 89 04 c6          	mov    %rax,(%r14,%rax,8)
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:101

  /* start random # at beginning of stream */

  nupdates = (u64Int) chunk * niterate;
  4027e1:	49 63 c5             	movslq %r13d,%rax
  4027e4:	48 63 db             	movslq %ebx,%rbx
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:102
  ran = HPCC_starts(0);
  4027e7:	31 ff                	xor    %edi,%edi
  4027e9:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:101
  nupdates = (u64Int) chunk * niterate;
  4027ee:	48 0f af d8          	imul   %rax,%rbx
  4027f2:	48 89 5c 24 18       	mov    %rbx,0x18(%rsp)
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:102
  ran = HPCC_starts(0);
  4027f7:	e8 94 1b 00 00       	callq  404390 <_Z11HPCC_startsx>
/usr/include/x86_64-linux-gnu/bits/stdio2.h:107
}

__fortify_function int
printf (const char *__restrict __fmt, ...)
{
  return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
  4027fc:	48 8d 35 a5 2e 00 00 	lea    0x2ea5(%rip),%rsi        # 4056a8 <_IO_stdin_used+0x6a8>
printf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:107
  402803:	bf 01 00 00 00       	mov    $0x1,%edi
main():
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:102
  402808:	49 89 c4             	mov    %rax,%r12
printf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:107
  40280b:	31 c0                	xor    %eax,%eax
  40280d:	e8 2e fb ff ff       	callq  402340 <__printf_chk@plt>
main():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:107
  402812:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
printf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:107
  402817:	48 8d 35 1d 2a 00 00 	lea    0x2a1d(%rip),%rsi        # 40523b <_IO_stdin_used+0x23b>
  40281e:	31 c0                	xor    %eax,%eax
  402820:	bf 01 00 00 00       	mov    $0x1,%edi
  402825:	e8 16 fb ff ff       	callq  402340 <__printf_chk@plt>
main():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:107
  40282a:	48 89 da             	mov    %rbx,%rdx
printf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:107
  40282d:	bf 01 00 00 00       	mov    $0x1,%edi
  402832:	31 c0                	xor    %eax,%eax
  402834:	48 8d 35 12 2a 00 00 	lea    0x2a12(%rip),%rsi        # 40524d <_IO_stdin_used+0x24d>
  40283b:	e8 00 fb ff ff       	callq  402340 <__printf_chk@plt>
main():
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:112

  printf("Starting single-threaded GUPS benchmark...\n");
  printf("Table size: %lld\n", nglobal);
  printf("Number of updates: %lld\n", nupdates);

  if(batching_arg){
  402840:	8b 4c 24 10          	mov    0x10(%rsp),%ecx
  402844:	85 c9                	test   %ecx,%ecx
  402846:	0f 85 01 04 00 00    	jne    402c4d <main+0x5fd>
_Z8get_timev():
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:228

/* get current time in seconds */
double get_time()
{
  struct timeval tv;
  gettimeofday(&tv, NULL);
  40284c:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  402851:	31 f6                	xor    %esi,%esi
  402853:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
  402858:	e8 63 fd ff ff       	callq  4025c0 <gettimeofday@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:229
  return tv.tv_sec + tv.tv_usec / 1000000.0;
  40285d:	66 0f ef c9          	pxor   %xmm1,%xmm1
  402861:	66 0f ef c0          	pxor   %xmm0,%xmm0
  402865:	f2 48 0f 2a 4c 24 30 	cvtsi2sdq 0x30(%rsp),%xmm1
  40286c:	f2 48 0f 2a 44 24 38 	cvtsi2sdq 0x38(%rsp),%xmm0
  402873:	f2 0f 5e 05 35 30 00 	divsd  0x3035(%rip),%xmm0        # 4058b0 <_IO_stdin_used+0x8b0>
  40287a:	00 
  40287b:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
  40287f:	f2 0f 11 44 24 20    	movsd  %xmm0,0x20(%rsp)
_Z16start_disk_statsPKc():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:306
	fprintf(f, "%d", pid);
	fclose(f);
}

inline void start_disk_stats(const char* result_file_name){
  pid_t pid = fork();
  402885:	e8 16 fb ff ff       	callq  4023a0 <fork@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:307
  if (pid < 0) {
  40288a:	85 c0                	test   %eax,%eax
  40288c:	0f 88 93 04 00 00    	js     402d25 <main+0x6d5>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:310
    perror("fork failed");
    exit(EXIT_FAILURE);
  } else if (pid == 0) { // Child process
  402892:	0f 84 ce 04 00 00    	je     402d66 <main+0x716>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:318
    execlp("/home/aliha951/ipdps-gups/gather_diskstats.sh", "/home/aliha951/ipdps-gups/gather_diskstats.sh", result_file_name, NULL);
    perror("execlp failed");
    exit(EXIT_FAILURE);
  }
  // Parent process continues
  diskstat_pid = pid;
  402898:	89 05 22 59 00 00    	mov    %eax,0x5922(%rip)        # 4081c0 <diskstat_pid>
main():
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:138
  for (iterate = 0; iterate < niterate; iterate++) {
  40289e:	31 db                	xor    %ebx,%ebx
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:130
  start_taskstats();                    
  4028a0:	e8 fb 16 00 00       	callq  403fa0 <_Z15start_taskstatsv>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:131
  snapshot_proc_pid(BEGIN);
  4028a5:	31 ff                	xor    %edi,%edi
  4028a7:	e8 d4 1d 00 00       	callq  404680 <_Z17snapshot_proc_pid13SnapshotPoint>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:132
  snapshot_proc_stat(BEGIN);
  4028ac:	31 ff                	xor    %edi,%edi
  4028ae:	e8 fd 20 00 00       	callq  4049b0 <_Z18snapshot_proc_stat13SnapshotPoint>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:133
  start_counters(&perf_ctrs);
  4028b3:	48 8d 3d b6 5e 00 00 	lea    0x5eb6(%rip),%rdi        # 408770 <perf_ctrs>
  4028ba:	e8 c1 0f 00 00       	callq  403880 <_Z14start_countersP13perf_counters>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:134
  trace_marker("BenchmarkKernel_Start");
  4028bf:	48 8d 3d db 29 00 00 	lea    0x29db(%rip),%rdi        # 4052a1 <_IO_stdin_used+0x2a1>
  4028c6:	e8 e5 0c 00 00       	callq  4035b0 <_Z12trace_markerPKc>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:135
  start_time_stats();
  4028cb:	e8 90 0a 00 00       	callq  403360 <_Z16start_time_statsv>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:138
  for (iterate = 0; iterate < niterate; iterate++) {
  4028d0:	45 85 ed             	test   %r13d,%r13d
  4028d3:	0f 8e 0b 01 00 00    	jle    4029e4 <main+0x394>
  4028d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:139
    INIT(iterate);
  4028e0:	85 db                	test   %ebx,%ebx
  4028e2:	0f 84 50 02 00 00    	je     402b38 <main+0x4e8>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:140 (discriminator 1)
    for (i = 0; i < chunk; i++) {
  4028e8:	45 85 ff             	test   %r15d,%r15d
  4028eb:	0f 8e e7 00 00 00    	jle    4029d8 <main+0x388>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:143
      index = datum & nlocalm1;
  4028f1:	45 31 ed             	xor    %r13d,%r13d
  4028f4:	eb 1a                	jmp    402910 <main+0x2c0>
  4028f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4028fd:	00 00 00 
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:152
      table[index] ^= datum;
  402900:	4c 31 20             	xor    %r12,(%rax)
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:140 (discriminator 2)
    for (i = 0; i < chunk; i++) {
  402903:	41 83 c5 01          	add    $0x1,%r13d
  402907:	45 39 fd             	cmp    %r15d,%r13d
  40290a:	0f 84 c8 00 00 00    	je     4029d8 <main+0x388>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:141
      ran = (ran << 1) ^ ((s64Int) ran < ZERO64B ? POLY : ZERO64B);
  402910:	4b 8d 04 24          	lea    (%r12,%r12,1),%rax
  402914:	48 89 c2             	mov    %rax,%rdx
  402917:	48 83 f2 07          	xor    $0x7,%rdx
  40291b:	4d 85 e4             	test   %r12,%r12
  40291e:	48 0f 48 c2          	cmovs  %rdx,%rax
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:143
      index = datum & nlocalm1;
  402922:	89 ea                	mov    %ebp,%edx
  402924:	21 c2                	and    %eax,%edx
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:141
      ran = (ran << 1) ^ ((s64Int) ran < ZERO64B ? POLY : ZERO64B);
  402926:	49 89 c4             	mov    %rax,%r12
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:146
        asm volatile("" :: "r"(table[index]));
  402929:	48 63 c2             	movslq %edx,%rax
  40292c:	49 8d 04 c6          	lea    (%r14,%rax,8),%rax
  402930:	48 8b 30             	mov    (%rax),%rsi
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:147
      }CATCH{
  402933:	48 63 3d 7e 5a 00 00 	movslq 0x5a7e(%rip),%rdi        # 4083b8 <status_idx>
  40293a:	48 8b 35 7f 5a 00 00 	mov    0x5a7f(%rip),%rsi        # 4083c0 <pf_status_array>
  402941:	48 8d 34 be          	lea    (%rsi,%rdi,4),%rsi
  402945:	8b 3e                	mov    (%rsi),%edi
  402947:	83 ff 01             	cmp    $0x1,%edi
  40294a:	75 b4                	jne    402900 <main+0x2b0>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:147 (discriminator 1)
  40294c:	c7 06 00 00 00 00    	movl   $0x0,(%rsi)
_ZNSt6vectorI5stateSaIS0_EE9push_backERKS0_():
/usr/include/c++/10/bits/stl_vector.h:1189 (discriminator 1)
       *  available.
       */
      void
      push_back(const value_type& __x)
      {
	if (this->_M_impl._M_finish != this->_M_impl._M_end_of_storage)
  402952:	48 8b 35 3f 5a 00 00 	mov    0x5a3f(%rip),%rsi        # 408398 <curr_queue+0x8>
  402959:	48 3b 35 40 5a 00 00 	cmp    0x5a40(%rip),%rsi        # 4083a0 <curr_queue+0x10>
main():
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:148 (discriminator 1)
        state s = {&table[index], datum, index};
  402960:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
  402965:	4c 89 64 24 38       	mov    %r12,0x38(%rsp)
  40296a:	89 54 24 40          	mov    %edx,0x40(%rsp)
_ZNSt6vectorI5stateSaIS0_EE9push_backERKS0_():
/usr/include/c++/10/bits/stl_vector.h:1189 (discriminator 1)
  40296e:	0f 84 0c 02 00 00    	je     402b80 <main+0x530>
_ZN9__gnu_cxx13new_allocatorI5stateE9constructIS1_JRKS1_EEEvPT_DpOT0_():
/usr/include/c++/10/new:175
#endif // __cpp_sized_deallocation
#endif // __cpp_aligned_new

// Default placement versions of operator new.
_GLIBCXX_NODISCARD inline void* operator new(std::size_t, void* __p) _GLIBCXX_USE_NOEXCEPT
{ return __p; }
  402974:	66 0f 6f 74 24 30    	movdqa 0x30(%rsp),%xmm6
_ZNSt6vectorI5stateSaIS0_EE9push_backERKS0_():
/usr/include/c++/10/bits/stl_vector.h:1194
	  {
	    _GLIBCXX_ASAN_ANNOTATE_GROW(1);
	    _Alloc_traits::construct(this->_M_impl, this->_M_impl._M_finish,
				     __x);
	    ++this->_M_impl._M_finish;
  40297a:	48 83 c6 18          	add    $0x18,%rsi
_ZN9__gnu_cxx13new_allocatorI5stateE9constructIS1_JRKS1_EEEvPT_DpOT0_():
/usr/include/c++/10/bits/stl_vector.h:1194
  40297e:	0f 11 76 e8          	movups %xmm6,-0x18(%rsi)
  402982:	48 8b 44 24 40       	mov    0x40(%rsp),%rax
  402987:	48 89 46 f8          	mov    %rax,-0x8(%rsi)
_ZNSt6vectorI5stateSaIS0_EE9push_backERKS0_():
/usr/include/c++/10/bits/stl_vector.h:1194
  40298b:	48 89 35 06 5a 00 00 	mov    %rsi,0x5a06(%rip)        # 408398 <curr_queue+0x8>
_ZNKSt6vectorI5stateSaIS0_EE4sizeEv():
/usr/include/c++/10/bits/stl_vector.h:919
      { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
  402992:	48 2b 35 f7 59 00 00 	sub    0x59f7(%rip),%rsi        # 408390 <curr_queue>
  402999:	48 b8 ab aa aa aa aa 	movabs $0xaaaaaaaaaaaaaaab,%rax
  4029a0:	aa aa aa 
  4029a3:	48 c1 fe 03          	sar    $0x3,%rsi
  4029a7:	48 0f af f0          	imul   %rax,%rsi
main():
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:149
        ENQUEUE(s, resume_iteration);
  4029ab:	48 39 35 06 58 00 00 	cmp    %rsi,0x5806(%rip)        # 4081b8 <pagefault_queue_size>
  4029b2:	0f 85 4b ff ff ff    	jne    402903 <main+0x2b3>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:149 (discriminator 2)
  4029b8:	48 8d 3d 81 1c 00 00 	lea    0x1c81(%rip),%rdi        # 404640 <_Z16resume_iterationR5state>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:140 (discriminator 2)
    for (i = 0; i < chunk; i++) {
  4029bf:	41 83 c5 01          	add    $0x1,%r13d
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:149 (discriminator 2)
        ENQUEUE(s, resume_iteration);
  4029c3:	e8 e8 18 00 00       	callq  4042b0 <_Z18process_pagefaultsPFvR5stateE>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:140 (discriminator 2)
    for (i = 0; i < chunk; i++) {
  4029c8:	45 39 fd             	cmp    %r15d,%r13d
  4029cb:	0f 85 3f ff ff ff    	jne    402910 <main+0x2c0>
  4029d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:138 (discriminator 2)
  for (iterate = 0; iterate < niterate; iterate++) {
  4029d8:	83 c3 01             	add    $0x1,%ebx
  4029db:	3b 1c 24             	cmp    (%rsp),%ebx
  4029de:	0f 85 fc fe ff ff    	jne    4028e0 <main+0x290>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:155
  FLUSH_QUEUE(resume_iteration);
  4029e4:	48 8d 3d 55 1c 00 00 	lea    0x1c55(%rip),%rdi        # 404640 <_Z16resume_iterationR5state>
  4029eb:	e8 00 18 00 00       	callq  4041f0 <_Z11clear_queuePFvR5stateE>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:158
  stop_time_stats();
  4029f0:	e8 9b 09 00 00       	callq  403390 <_Z15stop_time_statsv>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:159
  trace_marker("BenchmarkKernel_End");
  4029f5:	48 8d 3d bb 28 00 00 	lea    0x28bb(%rip),%rdi        # 4052b7 <_IO_stdin_used+0x2b7>
  4029fc:	e8 af 0b 00 00       	callq  4035b0 <_Z12trace_markerPKc>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:160
  stop_counters(&perf_ctrs, &user_time, &kernel_time ,&user_instructions, &kernel_instructions);
  402a01:	48 8d 15 48 5d 00 00 	lea    0x5d48(%rip),%rdx        # 408750 <kernel_time>
  402a08:	4c 8d 05 51 5d 00 00 	lea    0x5d51(%rip),%r8        # 408760 <kernel_instructions>
  402a0f:	48 8d 0d 52 5d 00 00 	lea    0x5d52(%rip),%rcx        # 408768 <user_instructions>
  402a16:	48 8d 35 3b 5d 00 00 	lea    0x5d3b(%rip),%rsi        # 408758 <user_time>
  402a1d:	48 8d 3d 4c 5d 00 00 	lea    0x5d4c(%rip),%rdi        # 408770 <perf_ctrs>
  402a24:	e8 e7 0f 00 00       	callq  403a10 <_Z13stop_countersP13perf_countersPxS1_S1_S1_>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:161
  snapshot_proc_stat(END);
  402a29:	bf 01 00 00 00       	mov    $0x1,%edi
  402a2e:	e8 7d 1f 00 00       	callq  4049b0 <_Z18snapshot_proc_stat13SnapshotPoint>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:162
  snapshot_proc_pid(END);
  402a33:	bf 01 00 00 00       	mov    $0x1,%edi
  402a38:	e8 43 1c 00 00       	callq  404680 <_Z17snapshot_proc_pid13SnapshotPoint>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:163
  stop_taskstats();
  402a3d:	e8 9e 15 00 00       	callq  403fe0 <_Z14stop_taskstatsv>
_Z15stop_disk_statsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:322
}

inline void stop_disk_stats() {
  if (diskstat_pid > 0) {
  402a42:	8b 15 78 57 00 00    	mov    0x5778(%rip),%edx        # 4081c0 <diskstat_pid>
  402a48:	85 d2                	test   %edx,%edx
  402a4a:	0f 8f 4d 01 00 00    	jg     402b9d <main+0x54d>
main():
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:165
  cleanup_counters(&perf_ctrs);
  402a50:	48 8d 3d 19 5d 00 00 	lea    0x5d19(%rip),%rdi        # 408770 <perf_ctrs>
  402a57:	e8 f4 11 00 00       	callq  403c50 <_Z16cleanup_countersP13perf_counters>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:166
  measure_time_stats();
  402a5c:	e8 5f 09 00 00       	callq  4033c0 <_Z18measure_time_statsv>
_Z8get_timev():
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:228
  gettimeofday(&tv, NULL);
  402a61:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402a66:	31 f6                	xor    %esi,%esi
  402a68:	e8 53 fb ff ff       	callq  4025c0 <gettimeofday@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:229
  return tv.tv_sec + tv.tv_usec / 1000000.0;
  402a6d:	66 0f ef c9          	pxor   %xmm1,%xmm1
  402a71:	66 0f ef c0          	pxor   %xmm0,%xmm0
main():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:107
  402a75:	48 8d 35 4f 28 00 00 	lea    0x284f(%rip),%rsi        # 4052cb <_IO_stdin_used+0x2cb>
_Z8get_timev():
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:229
  402a7c:	f2 48 0f 2a 4c 24 30 	cvtsi2sdq 0x30(%rsp),%xmm1
printf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:107
  402a83:	bf 01 00 00 00       	mov    $0x1,%edi
  402a88:	b8 01 00 00 00       	mov    $0x1,%eax
_Z8get_timev():
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:229
  402a8d:	f2 48 0f 2a 44 24 38 	cvtsi2sdq 0x38(%rsp),%xmm0
  402a94:	f2 0f 5e 05 14 2e 00 	divsd  0x2e14(%rip),%xmm0        # 4058b0 <_IO_stdin_used+0x8b0>
  402a9b:	00 
  402a9c:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
main():
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:167
  t0 = get_time() - t0;
  402aa0:	f2 0f 5c 44 24 20    	subsd  0x20(%rsp),%xmm0
printf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:107
  402aa6:	f2 0f 11 04 24       	movsd  %xmm0,(%rsp)
  402aab:	e8 90 f8 ff ff       	callq  402340 <__printf_chk@plt>
main():
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:170
  Gups = nupdates / t0 / 1.0e9;
  402ab0:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  402ab5:	f2 0f 10 04 24       	movsd  (%rsp),%xmm0
  402aba:	48 85 c0             	test   %rax,%rax
  402abd:	0f 88 1e 01 00 00    	js     402be1 <main+0x591>
  402ac3:	66 0f ef c9          	pxor   %xmm1,%xmm1
  402ac7:	f2 48 0f 2a c8       	cvtsi2sd %rax,%xmm1
  402acc:	f2 0f 5e c8          	divsd  %xmm0,%xmm1
/usr/include/x86_64-linux-gnu/bits/stdio2.h:107
  402ad0:	bf 01 00 00 00       	mov    $0x1,%edi
printf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:107
  402ad5:	b8 01 00 00 00       	mov    $0x1,%eax
  402ada:	48 8d 35 05 28 00 00 	lea    0x2805(%rip),%rsi        # 4052e6 <_IO_stdin_used+0x2e6>
main():
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:170
  402ae1:	f2 0f 5e 0d cf 2d 00 	divsd  0x2dcf(%rip),%xmm1        # 4058b8 <_IO_stdin_used+0x8b8>
  402ae8:	00 
  402ae9:	66 0f 28 c1          	movapd %xmm1,%xmm0
printf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:107
  402aed:	e8 4e f8 ff ff       	callq  402340 <__printf_chk@plt>
main():
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:176
  free(table);
  402af2:	4c 89 f7             	mov    %r14,%rdi
  402af5:	e8 06 fa ff ff       	callq  402500 <free@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:178
  if(batching_arg){
  402afa:	8b 44 24 10          	mov    0x10(%rsp),%eax
  402afe:	85 c0                	test   %eax,%eax
  402b00:	0f 85 fe 00 00 00    	jne    402c04 <main+0x5b4>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:183
}
  402b06:	48 8b 84 24 58 01 00 	mov    0x158(%rsp),%rax
  402b0d:	00 
  402b0e:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  402b15:	00 00 
  402b17:	0f 85 44 02 00 00    	jne    402d61 <main+0x711>
  402b1d:	48 81 c4 68 01 00 00 	add    $0x168,%rsp
  402b24:	31 c0                	xor    %eax,%eax
  402b26:	5b                   	pop    %rbx
  402b27:	5d                   	pop    %rbp
  402b28:	41 5c                	pop    %r12
  402b2a:	41 5d                	pop    %r13
  402b2c:	41 5e                	pop    %r14
  402b2e:	41 5f                	pop    %r15
  402b30:	c3                   	retq   
  402b31:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:139 (discriminator 1)
    INIT(iterate);
  402b38:	bf ba 00 00 00       	mov    $0xba,%edi
  402b3d:	31 c0                	xor    %eax,%eax
  402b3f:	e8 1c f8 ff ff       	callq  402360 <syscall@plt>
  402b44:	48 99                	cqto   
  402b46:	48 c1 ea 36          	shr    $0x36,%rdx
  402b4a:	48 01 d0             	add    %rdx,%rax
  402b4d:	25 ff 03 00 00       	and    $0x3ff,%eax
  402b52:	48 29 d0             	sub    %rdx,%rax
  402b55:	48 8b 15 64 58 00 00 	mov    0x5864(%rip),%rdx        # 4083c0 <pf_status_array>
  402b5c:	c1 e0 05             	shl    $0x5,%eax
  402b5f:	89 05 53 58 00 00    	mov    %eax,0x5853(%rip)        # 4083b8 <status_idx>
  402b65:	48 98                	cltq   
  402b67:	48 8d 04 82          	lea    (%rdx,%rax,4),%rax
  402b6b:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
  402b71:	c6 05 3c 58 00 00 00 	movb   $0x0,0x583c(%rip)        # 4083b4 <pre_faulted>
  402b78:	e9 6b fd ff ff       	jmpq   4028e8 <main+0x298>
  402b7d:	0f 1f 00             	nopl   (%rax)
_ZNSt6vectorI5stateSaIS0_EE9push_backERKS0_():
/usr/include/c++/10/bits/stl_vector.h:1198
	    _GLIBCXX_ASAN_ANNOTATE_GREW(1);
	  }
	else
	  _M_realloc_insert(end(), __x);
  402b80:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  402b85:	48 8d 3d 04 58 00 00 	lea    0x5804(%rip),%rdi        # 408390 <curr_queue>
  402b8c:	e8 bf 21 00 00       	callq  404d50 <_ZNSt6vectorI5stateSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_>
_ZNKSt6vectorI5stateSaIS0_EE4sizeEv():
/usr/include/c++/10/bits/stl_vector.h:919
      { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
  402b91:	48 8b 35 00 58 00 00 	mov    0x5800(%rip),%rsi        # 408398 <curr_queue+0x8>
  402b98:	e9 f5 fd ff ff       	jmpq   402992 <main+0x342>
main():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:67
  return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
  402b9d:	4c 8d 44 24 50       	lea    0x50(%rsp),%r8
snprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:67
  402ba2:	48 8d 35 5f 2b 00 00 	lea    0x2b5f(%rip),%rsi        # 405708 <_IO_stdin_used+0x708>
  402ba9:	b9 09 00 00 00       	mov    $0x9,%ecx
  402bae:	4c 89 c7             	mov    %r8,%rdi
  402bb1:	f3 a5                	rep movsl %ds:(%rsi),%es:(%rdi)
_Z15stop_disk_statsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:325
    char command[256];
    snprintf(command, sizeof(command), "sudo pkill -f 'gather_diskstats.sh'");
    int ret = system(command);
  402bb3:	4c 89 c7             	mov    %r8,%rdi
  402bb6:	e8 a5 f8 ff ff       	callq  402460 <system@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:326
    if (ret==-1)	std::cout << "could not stop diskstat gathering\n";
  402bbb:	83 c0 01             	add    $0x1,%eax
  402bbe:	0f 85 8c fe ff ff    	jne    402a50 <main+0x400>
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc():
/usr/include/c++/10/ostream:611
    operator<<(basic_ostream<char, _Traits>& __out, const char* __s)
    {
      if (!__s)
	__out.setstate(ios_base::badbit);
      else
	__ostream_insert(__out, __s,
  402bc4:	ba 22 00 00 00       	mov    $0x22,%edx
  402bc9:	48 8d 35 60 2b 00 00 	lea    0x2b60(%rip),%rsi        # 405730 <_IO_stdin_used+0x730>
  402bd0:	48 8d 3d 29 56 00 00 	lea    0x5629(%rip),%rdi        # 408200 <_ZSt4cout@@GLIBCXX_3.4>
  402bd7:	e8 f4 f8 ff ff       	callq  4024d0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
_Z15stop_disk_statsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:328
  }
}
  402bdc:	e9 6f fe ff ff       	jmpq   402a50 <main+0x400>
main():
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:170
  Gups = nupdates / t0 / 1.0e9;
  402be1:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  402be6:	66 0f ef c9          	pxor   %xmm1,%xmm1
  402bea:	48 89 c8             	mov    %rcx,%rax
  402bed:	83 e1 01             	and    $0x1,%ecx
  402bf0:	48 d1 e8             	shr    %rax
  402bf3:	48 09 c8             	or     %rcx,%rax
  402bf6:	f2 48 0f 2a c8       	cvtsi2sd %rax,%xmm1
  402bfb:	f2 0f 58 c9          	addsd  %xmm1,%xmm1
  402bff:	e9 c8 fe ff ff       	jmpq   402acc <main+0x47c>
_Z26unregister_and_free_arraysv():
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:239
  syscall(548, ips, ret_ips, size);
}

// syscall to unregister the page fault status array, as well as ips and ret_ips, and free the allocated memory
inline void unregister_and_free_arrays(){
  syscall(548, NULL, NULL, 0);
  402c04:	31 c9                	xor    %ecx,%ecx
  402c06:	31 d2                	xor    %edx,%edx
  402c08:	31 f6                	xor    %esi,%esi
  402c0a:	bf 24 02 00 00       	mov    $0x224,%edi
  402c0f:	31 c0                	xor    %eax,%eax
  402c11:	e8 4a f7 ff ff       	callq  402360 <syscall@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:240
  syscall(550, NULL, 0);
  402c16:	31 d2                	xor    %edx,%edx
  402c18:	31 f6                	xor    %esi,%esi
  402c1a:	bf 26 02 00 00       	mov    $0x226,%edi
  402c1f:	31 c0                	xor    %eax,%eax
  402c21:	e8 3a f7 ff ff       	callq  402360 <syscall@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:241
  munlock(ptr, 32*1024*sizeof(int));
  402c26:	48 8b 3d 9b 57 00 00 	mov    0x579b(%rip),%rdi        # 4083c8 <ptr>
  402c2d:	be 00 00 02 00       	mov    $0x20000,%esi
  402c32:	e8 e9 f9 ff ff       	callq  402620 <munlock@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:242
  munmap(ptr, 32*1024*sizeof(int));
  402c37:	48 8b 3d 8a 57 00 00 	mov    0x578a(%rip),%rdi        # 4083c8 <ptr>
  402c3e:	be 00 00 02 00       	mov    $0x20000,%esi
  402c43:	e8 c8 f7 ff ff       	callq  402410 <munmap@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:243
}
  402c48:	e9 b9 fe ff ff       	jmpq   402b06 <main+0x4b6>
main():
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:113
    pagefault_queue_size = queue_size_arg;
  402c4d:	48 63 44 24 20       	movslq 0x20(%rsp),%rax
  402c52:	48 89 05 5f 55 00 00 	mov    %rax,0x555f(%rip)        # 4081b8 <pagefault_queue_size>
atoi():
/usr/include/stdlib.h:363
  402c59:	8b 44 24 28          	mov    0x28(%rsp),%eax
  402c5d:	89 05 51 55 00 00    	mov    %eax,0x5551(%rip)        # 4081b4 <batching_mode>
main():
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:115
    allocate_pf_status_array();
  402c63:	e8 28 20 00 00       	callq  404c90 <_Z24allocate_pf_status_arrayv>
_Z16prepare_pmadvisev():
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:221
  if(batching_mode == P_MADVISE){
  402c68:	83 3d 45 55 00 00 01 	cmpl   $0x1,0x5545(%rip)        # 4081b4 <batching_mode>
  402c6f:	0f 84 90 00 00 00    	je     402d05 <main+0x6b5>
_Z24register_pf_status_arrayv():
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:229
  syscall(550,pf_status_array,32*1024);
  402c75:	48 8b 35 44 57 00 00 	mov    0x5744(%rip),%rsi        # 4083c0 <pf_status_array>
  402c7c:	ba 00 80 00 00       	mov    $0x8000,%edx
  402c81:	bf 26 02 00 00       	mov    $0x226,%edi
  402c86:	31 c0                	xor    %eax,%eax
  402c88:	e8 d3 f6 ff ff       	callq  402360 <syscall@plt>
main():
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:118
    ips = (unsigned long *)malloc(1 * sizeof(unsigned long));
  402c8d:	bf 08 00 00 00       	mov    $0x8,%edi
  402c92:	e8 99 f8 ff ff       	callq  402530 <malloc@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:119
    ret_ips = (unsigned long *)malloc(1 * sizeof(unsigned long));
  402c97:	bf 08 00 00 00       	mov    $0x8,%edi
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:118
    ips = (unsigned long *)malloc(1 * sizeof(unsigned long));
  402c9c:	48 89 c3             	mov    %rax,%rbx
  402c9f:	48 89 05 a2 56 00 00 	mov    %rax,0x56a2(%rip)        # 408348 <ips>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:119
    ret_ips = (unsigned long *)malloc(1 * sizeof(unsigned long));
  402ca6:	e8 85 f8 ff ff       	callq  402530 <malloc@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:120
    ips[0] = 0x402930;  // first t maker
  402cab:	48 c7 03 30 29 40 00 	movq   $0x402930,(%rbx)
_Z23register_ips_and_retipsPmS_i():
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:234
  syscall(548, ips, ret_ips, size);
  402cb2:	b9 01 00 00 00       	mov    $0x1,%ecx
  402cb7:	48 89 de             	mov    %rbx,%rsi
main():
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:121
    ret_ips[0] = 0x3;
  402cba:	48 c7 00 03 00 00 00 	movq   $0x3,(%rax)
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:119
    ret_ips = (unsigned long *)malloc(1 * sizeof(unsigned long));
  402cc1:	48 89 c2             	mov    %rax,%rdx
_Z23register_ips_and_retipsPmS_i():
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:234
  402cc4:	bf 24 02 00 00       	mov    $0x224,%edi
main():
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:119
  402cc9:	48 89 05 70 56 00 00 	mov    %rax,0x5670(%rip)        # 408340 <ret_ips>
_Z23register_ips_and_retipsPmS_i():
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:234
  402cd0:	31 c0                	xor    %eax,%eax
  402cd2:	e8 89 f6 ff ff       	callq  402360 <syscall@plt>
_Z11touch_pagesPVim():
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:201
    for (size_t i = 0; i < num_ints; i += ints_per_page) {
  402cd7:	48 8b 05 e2 56 00 00 	mov    0x56e2(%rip),%rax        # 4083c0 <pf_status_array>
  402cde:	48 8d 90 00 00 02 00 	lea    0x20000(%rax),%rdx
  402ce5:	0f 1f 00             	nopl   (%rax)
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:202
        address[i] = 0;
  402ce8:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:201
    for (size_t i = 0; i < num_ints; i += ints_per_page) {
  402cee:	48 05 00 10 00 00    	add    $0x1000,%rax
  402cf4:	48 39 d0             	cmp    %rdx,%rax
  402cf7:	75 ef                	jne    402ce8 <main+0x698>
  402cf9:	e9 4e fb ff ff       	jmpq   40284c <main+0x1fc>
main():
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:97
  for (i = 0; i < nlocal; i++) table[i] = i;
  402cfe:	31 c0                	xor    %eax,%eax
  402d00:	e9 ba fa ff ff       	jmpq   4027bf <main+0x16f>
_Z16prepare_pmadvisev():
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:222
    pid_t pid = getpid();
  402d05:	e8 76 f8 ff ff       	callq  402580 <getpid@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:223
    pidfd = syscall(SYS_pidfd_open, pid, 0); // this is necessary for process_madvise
  402d0a:	31 d2                	xor    %edx,%edx
  402d0c:	bf b2 01 00 00       	mov    $0x1b2,%edi
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:222
    pid_t pid = getpid();
  402d11:	89 c6                	mov    %eax,%esi
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:223
    pidfd = syscall(SYS_pidfd_open, pid, 0); // this is necessary for process_madvise
  402d13:	31 c0                	xor    %eax,%eax
  402d15:	e8 46 f6 ff ff       	callq  402360 <syscall@plt>
  402d1a:	89 05 90 56 00 00    	mov    %eax,0x5690(%rip)        # 4083b0 <pidfd>
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:225
}
  402d20:	e9 50 ff ff ff       	jmpq   402c75 <main+0x625>
_Z16start_disk_statsPKc():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:308
    perror("fork failed");
  402d25:	48 8d 3d 3a 25 00 00 	lea    0x253a(%rip),%rdi        # 405266 <_IO_stdin_used+0x266>
  402d2c:	e8 1f f7 ff ff       	callq  402450 <perror@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:309
    exit(EXIT_FAILURE);
  402d31:	bf 01 00 00 00       	mov    $0x1,%edi
  402d36:	e8 d5 f7 ff ff       	callq  402510 <exit@plt>
main():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:107
  return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
  402d3b:	48 8d 35 e0 24 00 00 	lea    0x24e0(%rip),%rsi        # 405222 <_IO_stdin_used+0x222>
printf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:107
  402d42:	bf 01 00 00 00       	mov    $0x1,%edi
  402d47:	31 c0                	xor    %eax,%eax
  402d49:	e8 f2 f5 ff ff       	callq  402340 <__printf_chk@plt>
main():
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:91
    exit(1);
  402d4e:	bf 01 00 00 00       	mov    $0x1,%edi
  402d53:	e8 b8 f7 ff ff       	callq  402510 <exit@plt>
/usr/include/x86_64-linux-gnu/bits/stdio2.h:107
  402d58:	48 8d 35 09 29 00 00 	lea    0x2909(%rip),%rsi        # 405668 <_IO_stdin_used+0x668>
printf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:107
  402d5f:	eb e1                	jmp    402d42 <main+0x6f2>
main():
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:183
}
  402d61:	e8 5a f7 ff ff       	callq  4024c0 <__stack_chk_fail@plt>
_Z16start_disk_statsPKc():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:312
	  move_to_cgroup(root_cgroup, getpid());
  402d66:	e8 15 f8 ff ff       	callq  402580 <getpid@plt>
  402d6b:	48 8d 3d 00 25 00 00 	lea    0x2500(%rip),%rdi        # 405272 <_IO_stdin_used+0x272>
  402d72:	89 c6                	mov    %eax,%esi
  402d74:	e8 07 0f 00 00       	callq  403c80 <_Z14move_to_cgroupPKci>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:313
    execlp("/home/aliha951/ipdps-gups/gather_diskstats.sh", "/home/aliha951/ipdps-gups/gather_diskstats.sh", result_file_name, NULL);
  402d79:	48 8d 35 58 29 00 00 	lea    0x2958(%rip),%rsi        # 4056d8 <_IO_stdin_used+0x6d8>
  402d80:	31 c9                	xor    %ecx,%ecx
  402d82:	31 c0                	xor    %eax,%eax
  402d84:	48 89 f7             	mov    %rsi,%rdi
  402d87:	48 8d 15 fa 24 00 00 	lea    0x24fa(%rip),%rdx        # 405288 <_IO_stdin_used+0x288>
  402d8e:	e8 1d f6 ff ff       	callq  4023b0 <execlp@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:314
    perror("execlp failed");
  402d93:	48 8d 3d f9 24 00 00 	lea    0x24f9(%rip),%rdi        # 405293 <_IO_stdin_used+0x293>
  402d9a:	e8 b1 f6 ff ff       	callq  402450 <perror@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:315
    exit(EXIT_FAILURE);
  402d9f:	bf 01 00 00 00       	mov    $0x1,%edi
  402da4:	e8 67 f7 ff ff       	callq  402510 <exit@plt>
main():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:315
  402da9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000402db0 <_GLOBAL__sub_I_usage_start>:
_GLOBAL__sub_I_usage_start():
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:230
  402db0:	f3 0f 1e fa          	endbr64 
  402db4:	48 83 ec 08          	sub    $0x8,%rsp
/usr/include/c++/10/iostream:74
  extern wostream wclog;	/// Linked to standard error (buffered)
#endif
  ///@}

  // For construction of filebuffers for cout, cin, cerr, clog et. al.
  static ios_base::Init __ioinit;
  402db8:	48 8d 3d 11 5b 00 00 	lea    0x5b11(%rip),%rdi        # 4088d0 <_ZStL8__ioinit>
__static_initialization_and_destruction_0():
/usr/include/c++/10/iostream:74
  402dbf:	e8 dc f7 ff ff       	callq  4025a0 <_ZNSt8ios_base4InitC1Ev@plt>
  402dc4:	48 8b 3d 2d 52 00 00 	mov    0x522d(%rip),%rdi        # 407ff8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
  402dcb:	48 8d 15 d6 53 00 00 	lea    0x53d6(%rip),%rdx        # 4081a8 <__dso_handle>
  402dd2:	48 8d 35 f7 5a 00 00 	lea    0x5af7(%rip),%rsi        # 4088d0 <_ZStL8__ioinit>
  402dd9:	e8 92 f6 ff ff       	callq  402470 <__cxa_atexit@plt>
_ZNSt12_Vector_baseI5stateSaIS0_EE17_Vector_impl_dataC4Ev():
/usr/include/c++/10/bits/stl_vector.h:98
	: _M_start(), _M_finish(), _M_end_of_storage()
  402dde:	66 0f ef c0          	pxor   %xmm0,%xmm0
__static_initialization_and_destruction_0():
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:124
vector<state> curr_queue;
  402de2:	48 8d 15 bf 53 00 00 	lea    0x53bf(%rip),%rdx        # 4081a8 <__dso_handle>
  402de9:	48 8d 35 a0 55 00 00 	lea    0x55a0(%rip),%rsi        # 408390 <curr_queue>
  402df0:	48 8d 3d 69 18 00 00 	lea    0x1869(%rip),%rdi        # 404660 <_ZNSt6vectorI5stateSaIS0_EED1Ev>
_ZNSt12_Vector_baseI5stateSaIS0_EE17_Vector_impl_dataC4Ev():
/usr/include/c++/10/bits/stl_vector.h:98
  402df7:	0f 29 05 92 55 00 00 	movaps %xmm0,0x5592(%rip)        # 408390 <curr_queue>
  402dfe:	48 c7 05 97 55 00 00 	movq   $0x0,0x5597(%rip)        # 4083a0 <curr_queue+0x10>
  402e05:	00 00 00 00 
__static_initialization_and_destruction_0():
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:124
  402e09:	e8 62 f6 ff ff       	callq  402470 <__cxa_atexit@plt>
_ZNSt12_Vector_baseI5stateSaIS0_EE17_Vector_impl_dataC4Ev():
/usr/include/c++/10/bits/stl_vector.h:98
  402e0e:	66 0f ef c0          	pxor   %xmm0,%xmm0
__static_initialization_and_destruction_0():
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:125
vector<state> shipped_queue;
  402e12:	48 8d 15 8f 53 00 00 	lea    0x538f(%rip),%rdx        # 4081a8 <__dso_handle>
  402e19:	48 8d 35 50 55 00 00 	lea    0x5550(%rip),%rsi        # 408370 <shipped_queue>
  402e20:	48 8d 3d 39 18 00 00 	lea    0x1839(%rip),%rdi        # 404660 <_ZNSt6vectorI5stateSaIS0_EED1Ev>
_ZNSt12_Vector_baseI5stateSaIS0_EE17_Vector_impl_dataC4Ev():
/usr/include/c++/10/bits/stl_vector.h:98
  402e27:	0f 29 05 42 55 00 00 	movaps %xmm0,0x5542(%rip)        # 408370 <shipped_queue>
  402e2e:	48 c7 05 47 55 00 00 	movq   $0x0,0x5547(%rip)        # 408380 <shipped_queue+0x10>
  402e35:	00 00 00 00 
__static_initialization_and_destruction_0():
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:125
  402e39:	e8 32 f6 ff ff       	callq  402470 <__cxa_atexit@plt>
_ZNSt12_Vector_baseI5stateSaIS0_EE17_Vector_impl_dataC4Ev():
/usr/include/c++/10/bits/stl_vector.h:98
  402e3e:	66 0f ef c0          	pxor   %xmm0,%xmm0
  402e42:	48 c7 05 13 55 00 00 	movq   $0x0,0x5513(%rip)        # 408360 <ready_queue+0x10>
  402e49:	00 00 00 00 
__static_initialization_and_destruction_0():
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:126
vector<state> ready_queue;
  402e4d:	48 8d 15 54 53 00 00 	lea    0x5354(%rip),%rdx        # 4081a8 <__dso_handle>
_ZNSt12_Vector_baseI5stateSaIS0_EE17_Vector_impl_dataC4Ev():
/usr/include/c++/10/bits/stl_vector.h:98
  402e54:	0f 29 05 f5 54 00 00 	movaps %xmm0,0x54f5(%rip)        # 408350 <ready_queue>
__static_initialization_and_destruction_0():
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:126
  402e5b:	48 8d 35 ee 54 00 00 	lea    0x54ee(%rip),%rsi        # 408350 <ready_queue>
_GLOBAL__sub_I_usage_start():
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:230
  402e62:	48 83 c4 08          	add    $0x8,%rsp
__static_initialization_and_destruction_0():
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:126
  402e66:	48 8d 3d f3 17 00 00 	lea    0x17f3(%rip),%rdi        # 404660 <_ZNSt6vectorI5stateSaIS0_EED1Ev>
  402e6d:	e9 fe f5 ff ff       	jmpq   402470 <__cxa_atexit@plt>
_GLOBAL__sub_I_usage_start():
  402e72:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402e79:	00 00 00 
  402e7c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402e80 <_start>:
_start():
  402e80:	f3 0f 1e fa          	endbr64 
  402e84:	31 ed                	xor    %ebp,%ebp
  402e86:	49 89 d1             	mov    %rdx,%r9
  402e89:	5e                   	pop    %rsi
  402e8a:	48 89 e2             	mov    %rsp,%rdx
  402e8d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  402e91:	50                   	push   %rax
  402e92:	54                   	push   %rsp
  402e93:	49 c7 c0 20 4f 40 00 	mov    $0x404f20,%r8
  402e9a:	48 c7 c1 b0 4e 40 00 	mov    $0x404eb0,%rcx
  402ea1:	48 c7 c7 50 26 40 00 	mov    $0x402650,%rdi
  402ea8:	ff 15 3a 51 00 00    	callq  *0x513a(%rip)        # 407fe8 <__libc_start_main@GLIBC_2.2.5>
  402eae:	f4                   	hlt    
  402eaf:	90                   	nop

0000000000402eb0 <_dl_relocate_static_pie>:
_dl_relocate_static_pie():
  402eb0:	f3 0f 1e fa          	endbr64 
  402eb4:	c3                   	retq   
  402eb5:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402ebc:	00 00 00 
  402ebf:	90                   	nop

0000000000402ec0 <deregister_tm_clones>:
deregister_tm_clones():
  402ec0:	b8 c8 81 40 00       	mov    $0x4081c8,%eax
  402ec5:	48 3d c8 81 40 00    	cmp    $0x4081c8,%rax
  402ecb:	74 13                	je     402ee0 <deregister_tm_clones+0x20>
  402ecd:	b8 00 00 00 00       	mov    $0x0,%eax
  402ed2:	48 85 c0             	test   %rax,%rax
  402ed5:	74 09                	je     402ee0 <deregister_tm_clones+0x20>
  402ed7:	bf c8 81 40 00       	mov    $0x4081c8,%edi
  402edc:	ff e0                	jmpq   *%rax
  402ede:	66 90                	xchg   %ax,%ax
  402ee0:	c3                   	retq   
  402ee1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  402ee8:	00 00 00 00 
  402eec:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402ef0 <register_tm_clones>:
register_tm_clones():
  402ef0:	be c8 81 40 00       	mov    $0x4081c8,%esi
  402ef5:	48 81 ee c8 81 40 00 	sub    $0x4081c8,%rsi
  402efc:	48 89 f0             	mov    %rsi,%rax
  402eff:	48 c1 ee 3f          	shr    $0x3f,%rsi
  402f03:	48 c1 f8 03          	sar    $0x3,%rax
  402f07:	48 01 c6             	add    %rax,%rsi
  402f0a:	48 d1 fe             	sar    %rsi
  402f0d:	74 11                	je     402f20 <register_tm_clones+0x30>
  402f0f:	b8 00 00 00 00       	mov    $0x0,%eax
  402f14:	48 85 c0             	test   %rax,%rax
  402f17:	74 07                	je     402f20 <register_tm_clones+0x30>
  402f19:	bf c8 81 40 00       	mov    $0x4081c8,%edi
  402f1e:	ff e0                	jmpq   *%rax
  402f20:	c3                   	retq   
  402f21:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  402f28:	00 00 00 00 
  402f2c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402f30 <__do_global_dtors_aux>:
__do_global_dtors_aux():
  402f30:	f3 0f 1e fa          	endbr64 
  402f34:	80 3d ed 53 00 00 00 	cmpb   $0x0,0x53ed(%rip)        # 408328 <completed.0>
  402f3b:	75 13                	jne    402f50 <__do_global_dtors_aux+0x20>
  402f3d:	55                   	push   %rbp
  402f3e:	48 89 e5             	mov    %rsp,%rbp
  402f41:	e8 7a ff ff ff       	callq  402ec0 <deregister_tm_clones>
  402f46:	c6 05 db 53 00 00 01 	movb   $0x1,0x53db(%rip)        # 408328 <completed.0>
  402f4d:	5d                   	pop    %rbp
  402f4e:	c3                   	retq   
  402f4f:	90                   	nop
  402f50:	c3                   	retq   
  402f51:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  402f58:	00 00 00 00 
  402f5c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402f60 <frame_dummy>:
frame_dummy():
  402f60:	f3 0f 1e fa          	endbr64 
  402f64:	eb 8a                	jmp    402ef0 <register_tm_clones>
  402f66:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402f6d:	00 00 00 

0000000000402f70 <_ZL21request_taskstats_pidiiiP9taskstatsPm>:
_ZL21request_taskstats_pidiiiP9taskstatsPm():
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:80
		return -1;
	}
	return sd;
}

static int request_taskstats_pid(int sd, int family_id, pid_t pid, struct taskstats *out_ts, size_t *out_len) {
  402f70:	41 57                	push   %r15
  402f72:	41 89 d7             	mov    %edx,%r15d
  402f75:	41 56                	push   %r14
  402f77:	41 55                	push   %r13
  402f79:	41 89 fd             	mov    %edi,%r13d
  402f7c:	41 54                	push   %r12
  402f7e:	49 89 cc             	mov    %rcx,%r12
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:81
	struct msgtemplate req = {0};
  402f81:	b9 42 00 00 00       	mov    $0x42,%ecx
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:80
static int request_taskstats_pid(int sd, int family_id, pid_t pid, struct taskstats *out_ts, size_t *out_len) {
  402f86:	55                   	push   %rbp
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71
    {
      __warn_memset_zero_len ();
      return __dest;
    }
#endif
  return __builtin___memset_chk (__dest, __ch, __len, __bos0 (__dest));
  402f87:	49 8d 6c 24 08       	lea    0x8(%r12),%rbp
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:80
  402f8c:	53                   	push   %rbx
  402f8d:	4c 89 c3             	mov    %r8,%rbx
  402f90:	48 81 ec 48 04 00 00 	sub    $0x448,%rsp
  402f97:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402f9e:	00 00 
  402fa0:	48 89 84 24 38 04 00 	mov    %rax,0x438(%rsp)
  402fa7:	00 
  402fa8:	31 c0                	xor    %eax,%eax
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:81
	struct msgtemplate req = {0};
  402faa:	48 89 e7             	mov    %rsp,%rdi
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:85
	struct msgtemplate rep = {0};
	struct nlattr *na;

	*out_len = 0;
  402fad:	49 c7 00 00 00 00 00 	movq   $0x0,(%r8)
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:82
	struct msgtemplate rep = {0};
  402fb4:	4c 8d b4 24 20 02 00 	lea    0x220(%rsp),%r14
  402fbb:	00 
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:81
	struct msgtemplate req = {0};
  402fbc:	f3 48 ab             	rep stos %rax,%es:(%rdi)
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:82
	struct msgtemplate rep = {0};
  402fbf:	b9 42 00 00 00       	mov    $0x42,%ecx
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:81
	struct msgtemplate req = {0};
  402fc4:	c7 07 00 00 00 00    	movl   $0x0,(%rdi)
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:82
	struct msgtemplate rep = {0};
  402fca:	4c 89 f7             	mov    %r14,%rdi
  402fcd:	f3 48 ab             	rep stos %rax,%es:(%rdi)
memset():
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71
  402fd0:	4c 89 e1             	mov    %r12,%rcx
_ZL21request_taskstats_pidiiiP9taskstatsPm():
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:82
  402fd3:	c7 07 00 00 00 00    	movl   $0x0,(%rdi)
memset():
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71
  402fd9:	48 89 ef             	mov    %rbp,%rdi
  402fdc:	48 83 e7 f8          	and    $0xfffffffffffffff8,%rdi
  402fe0:	49 c7 04 24 00 00 00 	movq   $0x0,(%r12)
  402fe7:	00 
  402fe8:	49 c7 84 24 a8 01 00 	movq   $0x0,0x1a8(%r12)
  402fef:	00 00 00 00 00 
  402ff4:	48 29 f9             	sub    %rdi,%rcx
  402ff7:	81 c1 b0 01 00 00    	add    $0x1b0,%ecx
  402ffd:	c1 e9 03             	shr    $0x3,%ecx
  403000:	f3 48 ab             	rep stos %rax,%es:(%rdi)
_ZL21request_taskstats_pidiiiP9taskstatsPm():
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:90
	memset(out_ts, 0, sizeof(*out_ts));

	req.n.nlmsg_len = NLMSG_LENGTH(GENL_HDRLEN);
	req.n.nlmsg_type = family_id;
	req.n.nlmsg_flags = NLM_F_REQUEST;
  403003:	b8 01 00 00 00       	mov    $0x1,%eax
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:89
	req.n.nlmsg_type = family_id;
  403008:	66 89 74 24 04       	mov    %si,0x4(%rsp)
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:88
	req.n.nlmsg_len = NLMSG_LENGTH(GENL_HDRLEN);
  40300d:	c7 04 24 14 00 00 00 	movl   $0x14,(%rsp)
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:90
	req.n.nlmsg_flags = NLM_F_REQUEST;
  403014:	66 89 44 24 06       	mov    %ax,0x6(%rsp)
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:91
	req.n.nlmsg_seq = 1;
  403019:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%rsp)
  403020:	00 
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:92
	req.n.nlmsg_pid = getpid();
  403021:	e8 5a f5 ff ff       	callq  402580 <getpid@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:93
	req.g.cmd = TASKSTATS_CMD_GET;
  403026:	ba 01 0e 00 00       	mov    $0xe01,%edx
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:103
  na->nla_type = TASKSTATS_CMD_ATTR_TGID; // Use TGID to get stats for thread group (process) instead of single thread
	na->nla_len = NLA_HDRLEN + sizeof(pid);
	memcpy(NLA_DATA(na), &pid, sizeof(pid));
	req.n.nlmsg_len += NLMSG_ALIGN(na->nla_len);

	if (send(sd, &req, req.n.nlmsg_len, 0) < 0)
  40302b:	31 c9                	xor    %ecx,%ecx
  40302d:	48 89 e6             	mov    %rsp,%rsi
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:92
	req.n.nlmsg_pid = getpid();
  403030:	89 44 24 0c          	mov    %eax,0xc(%rsp)
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:101
	req.n.nlmsg_len += NLMSG_ALIGN(na->nla_len);
  403034:	8b 04 24             	mov    (%rsp),%eax
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:103
	if (send(sd, &req, req.n.nlmsg_len, 0) < 0)
  403037:	44 89 ef             	mov    %r13d,%edi
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:93
	req.g.cmd = TASKSTATS_CMD_GET;
  40303a:	66 89 54 24 10       	mov    %dx,0x10(%rsp)
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:101
	req.n.nlmsg_len += NLMSG_ALIGN(na->nla_len);
  40303f:	8d 50 08             	lea    0x8(%rax),%edx
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:99
	na->nla_len = NLA_HDRLEN + sizeof(pid);
  403042:	c7 44 24 14 08 00 02 	movl   $0x20008,0x14(%rsp)
  403049:	00 
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:34
  return __builtin___memcpy_chk (__dest, __src, __len, __bos0 (__dest));
  40304a:	44 89 7c 24 18       	mov    %r15d,0x18(%rsp)
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:101
	req.n.nlmsg_len += NLMSG_ALIGN(na->nla_len);
  40304f:	89 14 24             	mov    %edx,(%rsp)
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:103
	if (send(sd, &req, req.n.nlmsg_len, 0) < 0)
  403052:	e8 89 f3 ff ff       	callq  4023e0 <send@plt>
  403057:	48 85 c0             	test   %rax,%rax
  40305a:	0f 88 18 01 00 00    	js     403178 <_ZL21request_taskstats_pidiiiP9taskstatsPm+0x208>
/usr/include/x86_64-linux-gnu/bits/socket2.h:44
	return __recv_chk (__fd, __buf, __n, __bos0 (__buf), __flags);

      if (__n > __bos0 (__buf))
	return __recv_chk_warn (__fd, __buf, __n, __bos0 (__buf), __flags);
    }
  return __recv_alias (__fd, __buf, __n, __flags);
  403060:	31 c9                	xor    %ecx,%ecx
recv():
/usr/include/x86_64-linux-gnu/bits/socket2.h:44
  403062:	ba 14 02 00 00       	mov    $0x214,%edx
  403067:	4c 89 f6             	mov    %r14,%rsi
  40306a:	44 89 ef             	mov    %r13d,%edi
  40306d:	e8 4e f3 ff ff       	callq  4023c0 <recv@plt>
_ZL21request_taskstats_pidiiiP9taskstatsPm():
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:105
		return -1;
	if (recv(sd, &rep, sizeof(rep), 0) < 0)
  403072:	48 85 c0             	test   %rax,%rax
  403075:	0f 88 fd 00 00 00    	js     403178 <_ZL21request_taskstats_pidiiiP9taskstatsPm+0x208>
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:109
		return -1;

	na = (struct nlattr *) GENLMSG_DATA(&rep.n);
	int rem = rep.n.nlmsg_len - NLMSG_LENGTH(GENL_HDRLEN);
  40307b:	8b 84 24 20 02 00 00 	mov    0x220(%rsp),%eax
  403082:	8d 70 ec             	lea    -0x14(%rax),%esi
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:110
	while (rem > 0 && na->nla_len >= NLA_HDRLEN && rem >= na->nla_len) {
  403085:	85 f6                	test   %esi,%esi
  403087:	0f 8e eb 00 00 00    	jle    403178 <_ZL21request_taskstats_pidiiiP9taskstatsPm+0x208>
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:108
	na = (struct nlattr *) GENLMSG_DATA(&rep.n);
  40308d:	48 8d 8c 24 34 02 00 	lea    0x234(%rsp),%rcx
  403094:	00 
  403095:	eb 29                	jmp    4030c0 <_ZL21request_taskstats_pidiiiP9taskstatsPm+0x150>
  403097:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40309e:	00 00 
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:126
				}
				int step2 = NLA_ALIGN(n2->nla_len);
				aggr_len -= step2;
				n2 = (struct nlattr *) ((char*)n2 + step2);
			}
		} else if (na->nla_type == TASKSTATS_TYPE_STATS) {
  4030a0:	66 83 f8 03          	cmp    $0x3,%ax
  4030a4:	0f 84 26 01 00 00    	je     4031d0 <_ZL21request_taskstats_pidiiiP9taskstatsPm+0x260>
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:133
			if (payload > sizeof(*out_ts)) payload = sizeof(*out_ts);
			memcpy(out_ts, NLA_DATA(na), payload);
			*out_len = payload;
			return 0;
		}
		int step = NLA_ALIGN(na->nla_len);
  4030aa:	83 c2 03             	add    $0x3,%edx
  4030ad:	83 e2 fc             	and    $0xfffffffc,%edx
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:134
		rem -= step;
  4030b0:	29 d6                	sub    %edx,%esi
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:135
		na = (struct nlattr *) ((char*)na + step);
  4030b2:	48 63 d2             	movslq %edx,%rdx
  4030b5:	48 01 d1             	add    %rdx,%rcx
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:110
	while (rem > 0 && na->nla_len >= NLA_HDRLEN && rem >= na->nla_len) {
  4030b8:	85 f6                	test   %esi,%esi
  4030ba:	0f 8e b8 00 00 00    	jle    403178 <_ZL21request_taskstats_pidiiiP9taskstatsPm+0x208>
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:110 (discriminator 1)
  4030c0:	0f b7 11             	movzwl (%rcx),%edx
  4030c3:	66 83 fa 03          	cmp    $0x3,%dx
  4030c7:	0f 86 ab 00 00 00    	jbe    403178 <_ZL21request_taskstats_pidiiiP9taskstatsPm+0x208>
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:110 (discriminator 2)
  4030cd:	39 f2                	cmp    %esi,%edx
  4030cf:	0f 8f a3 00 00 00    	jg     403178 <_ZL21request_taskstats_pidiiiP9taskstatsPm+0x208>
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:111
		if (na->nla_type == TASKSTATS_TYPE_AGGR_PID || na->nla_type == TASKSTATS_TYPE_AGGR_TGID) {
  4030d5:	0f b7 41 02          	movzwl 0x2(%rcx),%eax
  4030d9:	8d 78 fc             	lea    -0x4(%rax),%edi
  4030dc:	66 83 ff 01          	cmp    $0x1,%di
  4030e0:	77 be                	ja     4030a0 <_ZL21request_taskstats_pidiiiP9taskstatsPm+0x130>
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:114
			while (aggr_len > 0 && n2->nla_len >= NLA_HDRLEN && aggr_len >= n2->nla_len) {
  4030e2:	41 89 d0             	mov    %edx,%r8d
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:113
			struct nlattr *n2 = (struct nlattr *) NLA_DATA(na);
  4030e5:	48 8d 79 04          	lea    0x4(%rcx),%rdi
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:114
			while (aggr_len > 0 && n2->nla_len >= NLA_HDRLEN && aggr_len >= n2->nla_len) {
  4030e9:	41 83 e8 04          	sub    $0x4,%r8d
  4030ed:	75 1c                	jne    40310b <_ZL21request_taskstats_pidiiiP9taskstatsPm+0x19b>
  4030ef:	eb b9                	jmp    4030aa <_ZL21request_taskstats_pidiiiP9taskstatsPm+0x13a>
  4030f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:122
				int step2 = NLA_ALIGN(n2->nla_len);
  4030f8:	83 c0 03             	add    $0x3,%eax
  4030fb:	83 e0 fc             	and    $0xfffffffc,%eax
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:123
				aggr_len -= step2;
  4030fe:	41 29 c0             	sub    %eax,%r8d
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:124
				n2 = (struct nlattr *) ((char*)n2 + step2);
  403101:	48 98                	cltq   
  403103:	48 01 c7             	add    %rax,%rdi
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:114
			while (aggr_len > 0 && n2->nla_len >= NLA_HDRLEN && aggr_len >= n2->nla_len) {
  403106:	45 85 c0             	test   %r8d,%r8d
  403109:	7e 9f                	jle    4030aa <_ZL21request_taskstats_pidiiiP9taskstatsPm+0x13a>
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:114 (discriminator 1)
  40310b:	0f b7 07             	movzwl (%rdi),%eax
  40310e:	66 83 f8 03          	cmp    $0x3,%ax
  403112:	76 96                	jbe    4030aa <_ZL21request_taskstats_pidiiiP9taskstatsPm+0x13a>
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:114 (discriminator 2)
  403114:	44 39 c0             	cmp    %r8d,%eax
  403117:	7f 91                	jg     4030aa <_ZL21request_taskstats_pidiiiP9taskstatsPm+0x13a>
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:115
				if (n2->nla_type == TASKSTATS_TYPE_STATS) {
  403119:	66 83 7f 02 03       	cmpw   $0x3,0x2(%rdi)
  40311e:	75 d8                	jne    4030f8 <_ZL21request_taskstats_pidiiiP9taskstatsPm+0x188>
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:116
					size_t payload = n2->nla_len - NLA_HDRLEN;
  403120:	83 e8 04             	sub    $0x4,%eax
  403123:	ba b0 01 00 00       	mov    $0x1b0,%edx
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:118
					memcpy(out_ts, NLA_DATA(n2), payload);
  403128:	48 8d 77 04          	lea    0x4(%rdi),%rsi
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:116
					size_t payload = n2->nla_len - NLA_HDRLEN;
  40312c:	48 98                	cltq   
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:117
					if (payload > sizeof(*out_ts)) payload = sizeof(*out_ts);
  40312e:	48 3d b0 01 00 00    	cmp    $0x1b0,%rax
  403134:	48 0f 47 c2          	cmova  %rdx,%rax
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:34
  403138:	83 f8 08             	cmp    $0x8,%eax
memcpy():
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:34
  40313b:	72 6b                	jb     4031a8 <_ZL21request_taskstats_pidiiiP9taskstatsPm+0x238>
  40313d:	48 8b 57 04          	mov    0x4(%rdi),%rdx
_ZL21request_taskstats_pidiiiP9taskstatsPm():
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:34
  403141:	49 89 14 24          	mov    %rdx,(%r12)
memcpy():
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:34
  403145:	89 c2                	mov    %eax,%edx
  403147:	48 89 ef             	mov    %rbp,%rdi
  40314a:	48 8b 4c 16 f8       	mov    -0x8(%rsi,%rdx,1),%rcx
  40314f:	48 83 e7 f8          	and    $0xfffffffffffffff8,%rdi
  403153:	49 89 4c 14 f8       	mov    %rcx,-0x8(%r12,%rdx,1)
  403158:	49 29 fc             	sub    %rdi,%r12
  40315b:	4c 29 e6             	sub    %r12,%rsi
  40315e:	41 01 c4             	add    %eax,%r12d
  403161:	41 c1 ec 03          	shr    $0x3,%r12d
  403165:	44 89 e1             	mov    %r12d,%ecx
  403168:	f3 48 a5             	rep movsq %ds:(%rsi),%es:(%rdi)
_ZL21request_taskstats_pidiiiP9taskstatsPm():
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:130
			*out_len = payload;
  40316b:	48 89 03             	mov    %rax,(%rbx)
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:131
			return 0;
  40316e:	31 c0                	xor    %eax,%eax
  403170:	eb 0b                	jmp    40317d <_ZL21request_taskstats_pidiiiP9taskstatsPm+0x20d>
  403172:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:104
		return -1;
  403178:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:138
	}
	return -1; /* Not found */
}
  40317d:	48 8b 9c 24 38 04 00 	mov    0x438(%rsp),%rbx
  403184:	00 
  403185:	64 48 2b 1c 25 28 00 	sub    %fs:0x28,%rbx
  40318c:	00 00 
  40318e:	75 7c                	jne    40320c <_ZL21request_taskstats_pidiiiP9taskstatsPm+0x29c>
  403190:	48 81 c4 48 04 00 00 	add    $0x448,%rsp
  403197:	5b                   	pop    %rbx
  403198:	5d                   	pop    %rbp
  403199:	41 5c                	pop    %r12
  40319b:	41 5d                	pop    %r13
  40319d:	41 5e                	pop    %r14
  40319f:	41 5f                	pop    %r15
  4031a1:	c3                   	retq   
  4031a2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
memcpy():
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:34
  4031a8:	a8 04                	test   $0x4,%al
  4031aa:	75 4a                	jne    4031f6 <_ZL21request_taskstats_pidiiiP9taskstatsPm+0x286>
  4031ac:	85 c0                	test   %eax,%eax
  4031ae:	74 bb                	je     40316b <_ZL21request_taskstats_pidiiiP9taskstatsPm+0x1fb>
  4031b0:	0f b6 16             	movzbl (%rsi),%edx
  4031b3:	41 88 14 24          	mov    %dl,(%r12)
  4031b7:	a8 02                	test   $0x2,%al
  4031b9:	74 b0                	je     40316b <_ZL21request_taskstats_pidiiiP9taskstatsPm+0x1fb>
  4031bb:	89 c2                	mov    %eax,%edx
  4031bd:	0f b7 4c 16 fe       	movzwl -0x2(%rsi,%rdx,1),%ecx
  4031c2:	66 41 89 4c 14 fe    	mov    %cx,-0x2(%r12,%rdx,1)
  4031c8:	eb a1                	jmp    40316b <_ZL21request_taskstats_pidiiiP9taskstatsPm+0x1fb>
  4031ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
_ZL21request_taskstats_pidiiiP9taskstatsPm():
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:127
			size_t payload = na->nla_len - NLA_HDRLEN;
  4031d0:	8d 42 fc             	lea    -0x4(%rdx),%eax
  4031d3:	ba b0 01 00 00       	mov    $0x1b0,%edx
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:129
			memcpy(out_ts, NLA_DATA(na), payload);
  4031d8:	48 8d 71 04          	lea    0x4(%rcx),%rsi
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:127
			size_t payload = na->nla_len - NLA_HDRLEN;
  4031dc:	48 98                	cltq   
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:128
			if (payload > sizeof(*out_ts)) payload = sizeof(*out_ts);
  4031de:	48 3d b0 01 00 00    	cmp    $0x1b0,%rax
  4031e4:	48 0f 47 c2          	cmova  %rdx,%rax
memcpy():
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:34
  4031e8:	83 f8 08             	cmp    $0x8,%eax
  4031eb:	72 bb                	jb     4031a8 <_ZL21request_taskstats_pidiiiP9taskstatsPm+0x238>
  4031ed:	48 8b 51 04          	mov    0x4(%rcx),%rdx
  4031f1:	e9 4b ff ff ff       	jmpq   403141 <_ZL21request_taskstats_pidiiiP9taskstatsPm+0x1d1>
  4031f6:	8b 16                	mov    (%rsi),%edx
  4031f8:	41 89 14 24          	mov    %edx,(%r12)
  4031fc:	89 c2                	mov    %eax,%edx
  4031fe:	8b 4c 16 fc          	mov    -0x4(%rsi,%rdx,1),%ecx
  403202:	41 89 4c 14 fc       	mov    %ecx,-0x4(%r12,%rdx,1)
  403207:	e9 5f ff ff ff       	jmpq   40316b <_ZL21request_taskstats_pidiiiP9taskstatsPm+0x1fb>
_ZL21request_taskstats_pidiiiP9taskstatsPm():
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:138
}
  40320c:	e8 af f2 ff ff       	callq  4024c0 <__stack_chk_fail@plt>
  403211:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  403218:	00 00 00 00 
  40321c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000403220 <_ZL12open_counterjmiii.part.0>:
_ZL12open_counterjmiii.part.0():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:126
static int open_counter(uint32_t type, uint64_t config,
  403220:	50                   	push   %rax
  403221:	58                   	pop    %rax
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:144
    perror("perf_event_open");
  403222:	48 8d 3d db 1d 00 00 	lea    0x1ddb(%rip),%rdi        # 405004 <_IO_stdin_used+0x4>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:126
static int open_counter(uint32_t type, uint64_t config,
  403229:	48 83 ec 08          	sub    $0x8,%rsp
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:144
    perror("perf_event_open");
  40322d:	e8 1e f2 ff ff       	callq  402450 <perror@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:145
    exit(1);
  403232:	bf 01 00 00 00       	mov    $0x1,%edi
  403237:	e8 d4 f2 ff ff       	callq  402510 <exit@plt>
  40323c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000403240 <_ZL13get_family_idi>:
_ZL13get_family_idi():
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:30
static int get_family_id(int sd) {
  403240:	41 54                	push   %r12
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:32
	struct msgtemplate ans = {0};
  403242:	b9 42 00 00 00       	mov    $0x42,%ecx
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:30
static int get_family_id(int sd) {
  403247:	55                   	push   %rbp
  403248:	89 fd                	mov    %edi,%ebp
  40324a:	48 81 ec 48 04 00 00 	sub    $0x448,%rsp
  403251:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  403258:	00 00 
  40325a:	48 89 84 24 38 04 00 	mov    %rax,0x438(%rsp)
  403261:	00 
  403262:	31 c0                	xor    %eax,%eax
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:32
	struct msgtemplate ans = {0};
  403264:	4c 8d a4 24 20 02 00 	lea    0x220(%rsp),%r12
  40326b:	00 
  40326c:	4c 89 e7             	mov    %r12,%rdi
  40326f:	f3 48 ab             	rep stos %rax,%es:(%rdi)
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:31
	struct msgtemplate req = {0};
  403272:	b9 42 00 00 00       	mov    $0x42,%ecx
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:32
	struct msgtemplate ans = {0};
  403277:	c7 07 00 00 00 00    	movl   $0x0,(%rdi)
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:31
	struct msgtemplate req = {0};
  40327d:	48 89 e7             	mov    %rsp,%rdi
  403280:	f3 48 ab             	rep stos %rax,%es:(%rdi)
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:36
	req.n.nlmsg_len = NLMSG_LENGTH(GENL_HDRLEN);
  403283:	48 b8 14 00 00 00 10 	movabs $0x1001000000014,%rax
  40328a:	00 01 00 
  40328d:	48 89 04 24          	mov    %rax,(%rsp)
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:31
	struct msgtemplate req = {0};
  403291:	c7 07 00 00 00 00    	movl   $0x0,(%rdi)
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:40
	req.n.nlmsg_pid = getpid();
  403297:	e8 e4 f2 ff ff       	callq  402580 <getpid@plt>
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:34
  40329c:	ba 53 00 00 00       	mov    $0x53,%edx
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:50
	if (send(sd, &req, req.n.nlmsg_len, 0) < 0)
  4032a1:	31 c9                	xor    %ecx,%ecx
memcpy():
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:34
  4032a3:	48 89 e6             	mov    %rsp,%rsi
_ZL13get_family_idi():
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:40
	req.n.nlmsg_pid = getpid();
  4032a6:	89 44 24 0c          	mov    %eax,0xc(%rsp)
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:41
	req.g.cmd = CTRL_CMD_GETFAMILY;
  4032aa:	b8 03 01 00 00       	mov    $0x103,%eax
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:50
	if (send(sd, &req, req.n.nlmsg_len, 0) < 0)
  4032af:	89 ef                	mov    %ebp,%edi
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:41
	req.g.cmd = CTRL_CMD_GETFAMILY;
  4032b1:	66 89 44 24 10       	mov    %ax,0x10(%rsp)
memcpy():
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:34
  4032b6:	48 b8 54 41 53 4b 53 	movabs $0x544154534b534154,%rax
  4032bd:	54 41 54 
  4032c0:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
_ZL13get_family_idi():
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:48
	req.n.nlmsg_len += NLMSG_ALIGN(na->nla_len);
  4032c5:	8b 04 24             	mov    (%rsp),%eax
memcpy():
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:34
  4032c8:	66 89 54 24 20       	mov    %dx,0x20(%rsp)
_ZL13get_family_idi():
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:48
  4032cd:	8d 50 10             	lea    0x10(%rax),%edx
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:46
	na->nla_len = NLA_HDRLEN + strlen(TASKSTATS_GENL_NAME) + 1;
  4032d0:	c7 44 24 14 0e 00 02 	movl   $0x2000e,0x14(%rsp)
  4032d7:	00 
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:48
	req.n.nlmsg_len += NLMSG_ALIGN(na->nla_len);
  4032d8:	89 14 24             	mov    %edx,(%rsp)
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:50
	if (send(sd, &req, req.n.nlmsg_len, 0) < 0)
  4032db:	e8 00 f1 ff ff       	callq  4023e0 <send@plt>
  4032e0:	48 85 c0             	test   %rax,%rax
  4032e3:	78 6b                	js     403350 <_ZL13get_family_idi+0x110>
/usr/include/x86_64-linux-gnu/bits/socket2.h:44
  4032e5:	31 c9                	xor    %ecx,%ecx
recv():
/usr/include/x86_64-linux-gnu/bits/socket2.h:44
  4032e7:	ba 14 02 00 00       	mov    $0x214,%edx
  4032ec:	4c 89 e6             	mov    %r12,%rsi
  4032ef:	89 ef                	mov    %ebp,%edi
  4032f1:	e8 ca f0 ff ff       	callq  4023c0 <recv@plt>
_ZL13get_family_idi():
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:54
	if (rep_len < 0 || ans.n.nlmsg_type == NLMSG_ERROR)
  4032f6:	85 c0                	test   %eax,%eax
  4032f8:	78 56                	js     403350 <_ZL13get_family_idi+0x110>
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:54 (discriminator 1)
  4032fa:	66 83 bc 24 24 02 00 	cmpw   $0x2,0x224(%rsp)
  403301:	00 02 
  403303:	74 4b                	je     403350 <_ZL13get_family_idi+0x110>
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:59
	na = (struct nlattr *) ((char*)na + NLA_ALIGN(na->nla_len));
  403305:	0f b7 84 24 34 02 00 	movzwl 0x234(%rsp),%eax
  40330c:	00 
  40330d:	83 c0 03             	add    $0x3,%eax
  403310:	25 fc ff 01 00       	and    $0x1fffc,%eax
  403315:	48 8d 84 04 34 02 00 	lea    0x234(%rsp,%rax,1),%rax
  40331c:	00 
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:60
	if (na->nla_type == CTRL_ATTR_FAMILY_ID)
  40331d:	66 83 78 02 01       	cmpw   $0x1,0x2(%rax)
  403322:	75 2c                	jne    403350 <_ZL13get_family_idi+0x110>
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:61
		return *(__u16 *) NLA_DATA(na);
  403324:	0f b7 40 04          	movzwl 0x4(%rax),%eax
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:63
}
  403328:	48 8b b4 24 38 04 00 	mov    0x438(%rsp),%rsi
  40332f:	00 
  403330:	64 48 2b 34 25 28 00 	sub    %fs:0x28,%rsi
  403337:	00 00 
  403339:	75 1c                	jne    403357 <_ZL13get_family_idi+0x117>
  40333b:	48 81 c4 48 04 00 00 	add    $0x448,%rsp
  403342:	5d                   	pop    %rbp
  403343:	41 5c                	pop    %r12
  403345:	c3                   	retq   
  403346:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40334d:	00 00 00 
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:51
		return -1;
  403350:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403355:	eb d1                	jmp    403328 <_ZL13get_family_idi+0xe8>
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:63
}
  403357:	e8 64 f1 ff ff       	callq  4024c0 <__stack_chk_fail@plt>
  40335c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000403360 <_Z16start_time_statsv>:
_Z16start_time_statsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:37
void start_time_stats(){
  403360:	f3 0f 1e fa          	endbr64 
  403364:	48 83 ec 08          	sub    $0x8,%rsp
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:38
	gettimeofday(&wall_time_start, NULL);
  403368:	31 f6                	xor    %esi,%esi
  40336a:	48 8d 3d 1f 54 00 00 	lea    0x541f(%rip),%rdi        # 408790 <wall_time_start>
  403371:	e8 4a f2 ff ff       	callq  4025c0 <gettimeofday@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:39
	getrusage(RUSAGE_SELF, &usage_start);
  403376:	48 8d 35 c3 54 00 00 	lea    0x54c3(%rip),%rsi        # 408840 <usage_start>
  40337d:	31 ff                	xor    %edi,%edi
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:40
}
  40337f:	48 83 c4 08          	add    $0x8,%rsp
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:39
	getrusage(RUSAGE_SELF, &usage_start);
  403383:	e9 78 f0 ff ff       	jmpq   402400 <getrusage@plt>
  403388:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40338f:	00 

0000000000403390 <_Z15stop_time_statsv>:
_Z15stop_time_statsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:42
void stop_time_stats(){
  403390:	f3 0f 1e fa          	endbr64 
  403394:	48 83 ec 08          	sub    $0x8,%rsp
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:43
	gettimeofday(&wall_time_end, NULL);
  403398:	31 f6                	xor    %esi,%esi
  40339a:	48 8d 3d df 53 00 00 	lea    0x53df(%rip),%rdi        # 408780 <wall_time_end>
  4033a1:	e8 1a f2 ff ff       	callq  4025c0 <gettimeofday@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:44
	getrusage(RUSAGE_SELF, &usage_end);
  4033a6:	48 8d 35 f3 53 00 00 	lea    0x53f3(%rip),%rsi        # 4087a0 <usage_end>
  4033ad:	31 ff                	xor    %edi,%edi
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:45
}
  4033af:	48 83 c4 08          	add    $0x8,%rsp
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:44
	getrusage(RUSAGE_SELF, &usage_end);
  4033b3:	e9 48 f0 ff ff       	jmpq   402400 <getrusage@plt>
  4033b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4033bf:	00 

00000000004033c0 <_Z18measure_time_statsv>:
_Z18measure_time_statsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:47
void measure_time_stats(){
  4033c0:	f3 0f 1e fa          	endbr64 
  4033c4:	41 54                	push   %r12
  4033c6:	55                   	push   %rbp
  4033c7:	53                   	push   %rbx
  4033c8:	48 83 ec 20          	sub    $0x20,%rsp
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:50
	timersub(&usage_end.ru_utime,&usage_start.ru_utime,&user_time_diff);
  4033cc:	48 8b 3d cd 53 00 00 	mov    0x53cd(%rip),%rdi        # 4087a0 <usage_end>
  4033d3:	48 8b 05 ce 53 00 00 	mov    0x53ce(%rip),%rax        # 4087a8 <usage_end+0x8>
  4033da:	48 2b 3d 5f 54 00 00 	sub    0x545f(%rip),%rdi        # 408840 <usage_start>
  4033e1:	48 2b 05 60 54 00 00 	sub    0x5460(%rip),%rax        # 408848 <usage_start+0x8>
  4033e8:	48 89 c2             	mov    %rax,%rdx
  4033eb:	79 0b                	jns    4033f8 <_Z18measure_time_statsv+0x38>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:50 (discriminator 1)
  4033ed:	48 83 ef 01          	sub    $0x1,%rdi
  4033f1:	48 81 c2 40 42 0f 00 	add    $0xf4240,%rdx
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:51
	timersub(&usage_end.ru_stime,&usage_start.ru_stime,&sys_time_diff);
  4033f8:	48 8b 35 b1 53 00 00 	mov    0x53b1(%rip),%rsi        # 4087b0 <usage_end+0x10>
  4033ff:	48 8b 05 b2 53 00 00 	mov    0x53b2(%rip),%rax        # 4087b8 <usage_end+0x18>
  403406:	48 2b 35 43 54 00 00 	sub    0x5443(%rip),%rsi        # 408850 <usage_start+0x10>
  40340d:	48 2b 05 44 54 00 00 	sub    0x5444(%rip),%rax        # 408858 <usage_start+0x18>
  403414:	79 0a                	jns    403420 <_Z18measure_time_statsv+0x60>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:51 (discriminator 1)
  403416:	48 83 ee 01          	sub    $0x1,%rsi
  40341a:	48 05 40 42 0f 00    	add    $0xf4240,%rax
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:52
	timersub(&wall_time_end,&wall_time_start,&wall_time_diff);
  403420:	4c 8b 05 59 53 00 00 	mov    0x5359(%rip),%r8        # 408780 <wall_time_end>
  403427:	48 8b 0d 5a 53 00 00 	mov    0x535a(%rip),%rcx        # 408788 <wall_time_end+0x8>
  40342e:	4c 2b 05 5b 53 00 00 	sub    0x535b(%rip),%r8        # 408790 <wall_time_start>
  403435:	48 2b 0d 5c 53 00 00 	sub    0x535c(%rip),%rcx        # 408798 <wall_time_start+0x8>
  40343c:	79 0b                	jns    403449 <_Z18measure_time_statsv+0x89>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:52 (discriminator 1)
  40343e:	49 83 e8 01          	sub    $0x1,%r8
  403442:	48 81 c1 40 42 0f 00 	add    $0xf4240,%rcx
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:53
	wall_time = (double) wall_time_diff.tv_sec + (0.000001 * (double) wall_time_diff.tv_usec);
  403449:	66 0f ef db          	pxor   %xmm3,%xmm3
  40344d:	f2 0f 10 15 4b 24 00 	movsd  0x244b(%rip),%xmm2        # 4058a0 <_IO_stdin_used+0x8a0>
  403454:	00 
  403455:	66 0f ef c0          	pxor   %xmm0,%xmm0
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:54
	user_time = (double) user_time_diff.tv_sec + (0.000001 * (double) user_time_diff.tv_usec);
  403459:	66 0f ef c9          	pxor   %xmm1,%xmm1
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:53
	wall_time = (double) wall_time_diff.tv_sec + (0.000001 * (double) wall_time_diff.tv_usec);
  40345d:	f2 48 0f 2a d9       	cvtsi2sd %rcx,%xmm3
  403462:	f2 49 0f 2a c0       	cvtsi2sd %r8,%xmm0
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:54
	user_time = (double) user_time_diff.tv_sec + (0.000001 * (double) user_time_diff.tv_usec);
  403467:	f2 48 0f 2a cf       	cvtsi2sd %rdi,%xmm1
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:58
	FILE *f = fopen("time.stats", "w");
  40346c:	48 8d 3d a3 1b 00 00 	lea    0x1ba3(%rip),%rdi        # 405016 <_IO_stdin_used+0x16>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:53
	wall_time = (double) wall_time_diff.tv_sec + (0.000001 * (double) wall_time_diff.tv_usec);
  403473:	f2 0f 59 da          	mulsd  %xmm2,%xmm3
  403477:	f2 0f 58 d8          	addsd  %xmm0,%xmm3
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:54
	user_time = (double) user_time_diff.tv_sec + (0.000001 * (double) user_time_diff.tv_usec);
  40347b:	66 0f ef c0          	pxor   %xmm0,%xmm0
  40347f:	f2 48 0f 2a c2       	cvtsi2sd %rdx,%xmm0
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:56
	idle_time = (wall_time * NUM_CORES) - (user_time + sys_time);
  403484:	f2 0f 11 5c 24 08    	movsd  %xmm3,0x8(%rsp)
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:54
	user_time = (double) user_time_diff.tv_sec + (0.000001 * (double) user_time_diff.tv_usec);
  40348a:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
  40348e:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:55
	sys_time = (double) sys_time_diff.tv_sec + (0.000001 * (double) sys_time_diff.tv_usec);
  403492:	66 0f ef c9          	pxor   %xmm1,%xmm1
  403496:	f2 48 0f 2a c8       	cvtsi2sd %rax,%xmm1
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:56
	idle_time = (wall_time * NUM_CORES) - (user_time + sys_time);
  40349b:	66 0f 28 e0          	movapd %xmm0,%xmm4
  40349f:	f2 0f 11 44 24 18    	movsd  %xmm0,0x18(%rsp)
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:55
	sys_time = (double) sys_time_diff.tv_sec + (0.000001 * (double) sys_time_diff.tv_usec);
  4034a5:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
  4034a9:	66 0f ef d2          	pxor   %xmm2,%xmm2
  4034ad:	f2 48 0f 2a d6       	cvtsi2sd %rsi,%xmm2
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:58
	FILE *f = fopen("time.stats", "w");
  4034b2:	48 8d 35 5b 1b 00 00 	lea    0x1b5b(%rip),%rsi        # 405014 <_IO_stdin_used+0x14>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:55
	sys_time = (double) sys_time_diff.tv_sec + (0.000001 * (double) sys_time_diff.tv_usec);
  4034b9:	f2 0f 58 ca          	addsd  %xmm2,%xmm1
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:56
	idle_time = (wall_time * NUM_CORES) - (user_time + sys_time);
  4034bd:	66 0f 28 d3          	movapd %xmm3,%xmm2
  4034c1:	f2 0f 58 e1          	addsd  %xmm1,%xmm4
  4034c5:	f2 0f 11 4c 24 10    	movsd  %xmm1,0x10(%rsp)
  4034cb:	f2 0f 5c d4          	subsd  %xmm4,%xmm2
  4034cf:	f2 0f 11 14 24       	movsd  %xmm2,(%rsp)
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:58
	FILE *f = fopen("time.stats", "w");
  4034d4:	e8 17 f0 ff ff       	callq  4024f0 <fopen@plt>
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
  4034d9:	48 83 ec 08          	sub    $0x8,%rsp
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  4034dd:	4c 8d 0d 3d 1b 00 00 	lea    0x1b3d(%rip),%r9        # 405021 <_IO_stdin_used+0x21>
  4034e4:	4c 8d 05 3b 1b 00 00 	lea    0x1b3b(%rip),%r8        # 405026 <_IO_stdin_used+0x26>
_Z18measure_time_statsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:58
  4034eb:	48 89 c5             	mov    %rax,%rbp
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  4034ee:	48 8d 05 3d 1b 00 00 	lea    0x1b3d(%rip),%rax        # 405032 <_IO_stdin_used+0x32>
  4034f5:	48 8d 0d 31 1b 00 00 	lea    0x1b31(%rip),%rcx        # 40502d <_IO_stdin_used+0x2d>
  4034fc:	be 01 00 00 00       	mov    $0x1,%esi
  403501:	50                   	push   %rax
  403502:	f2 0f 10 5c 24 18    	movsd  0x18(%rsp),%xmm3
  403508:	48 89 ef             	mov    %rbp,%rdi
  40350b:	b8 04 00 00 00       	mov    $0x4,%eax
  403510:	f2 0f 10 54 24 10    	movsd  0x10(%rsp),%xmm2
  403516:	f2 0f 10 4c 24 20    	movsd  0x20(%rsp),%xmm1
  40351c:	48 8d 15 d5 1d 00 00 	lea    0x1dd5(%rip),%rdx        # 4052f8 <_IO_stdin_used+0x2f8>
  403523:	f2 0f 10 44 24 28    	movsd  0x28(%rsp),%xmm0
  403529:	e8 b2 f0 ff ff       	callq  4025e0 <__fprintf_chk@plt>
_Z18measure_time_statsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:68
	fclose(f);
  40352e:	58                   	pop    %rax
  40352f:	48 89 ef             	mov    %rbp,%rdi
  403532:	5a                   	pop    %rdx
  403533:	e8 68 ef ff ff       	callq  4024a0 <fclose@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:72
  f = fopen("faults.stats", "w");
  403538:	48 8d 35 d5 1a 00 00 	lea    0x1ad5(%rip),%rsi        # 405014 <_IO_stdin_used+0x14>
  40353f:	48 8d 3d f4 1a 00 00 	lea    0x1af4(%rip),%rdi        # 40503a <_IO_stdin_used+0x3a>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:70
  auto major_faults = usage_end.ru_majflt - usage_start.ru_majflt;
  403546:	48 8b 1d 9b 52 00 00 	mov    0x529b(%rip),%rbx        # 4087e8 <usage_end+0x48>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:71
  auto minor_faults = usage_end.ru_minflt - usage_start.ru_minflt;
  40354d:	4c 8b 25 8c 52 00 00 	mov    0x528c(%rip),%r12        # 4087e0 <usage_end+0x40>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:70
  auto major_faults = usage_end.ru_majflt - usage_start.ru_majflt;
  403554:	48 2b 1d 2d 53 00 00 	sub    0x532d(%rip),%rbx        # 408888 <usage_start+0x48>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:71
  auto minor_faults = usage_end.ru_minflt - usage_start.ru_minflt;
  40355b:	4c 2b 25 1e 53 00 00 	sub    0x531e(%rip),%r12        # 408880 <usage_start+0x40>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:72
  f = fopen("faults.stats", "w");
  403562:	e8 89 ef ff ff       	callq  4024f0 <fopen@plt>
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  403567:	48 83 ec 08          	sub    $0x8,%rsp
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  40356b:	49 89 d8             	mov    %rbx,%r8
  40356e:	4c 8d 0d d2 1a 00 00 	lea    0x1ad2(%rip),%r9        # 405047 <_IO_stdin_used+0x47>
  403575:	41 54                	push   %r12
_Z18measure_time_statsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:72
  403577:	48 89 c5             	mov    %rax,%rbp
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  40357a:	48 89 c7             	mov    %rax,%rdi
  40357d:	48 8d 0d d0 1a 00 00 	lea    0x1ad0(%rip),%rcx        # 405054 <_IO_stdin_used+0x54>
  403584:	48 8d 15 d6 1a 00 00 	lea    0x1ad6(%rip),%rdx        # 405061 <_IO_stdin_used+0x61>
  40358b:	be 01 00 00 00       	mov    $0x1,%esi
  403590:	31 c0                	xor    %eax,%eax
  403592:	e8 49 f0 ff ff       	callq  4025e0 <__fprintf_chk@plt>
_Z18measure_time_statsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:79
}
  403597:	48 83 c4 30          	add    $0x30,%rsp
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:78
  fclose(f);
  40359b:	48 89 ef             	mov    %rbp,%rdi
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:79
}
  40359e:	5b                   	pop    %rbx
  40359f:	5d                   	pop    %rbp
  4035a0:	41 5c                	pop    %r12
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:78
  fclose(f);
  4035a2:	e9 f9 ee ff ff       	jmpq   4024a0 <fclose@plt>
  4035a7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4035ae:	00 00 

00000000004035b0 <_Z12trace_markerPKc>:
_Z12trace_markerPKc():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:86
void trace_marker(const char *msg) {
  4035b0:	f3 0f 1e fa          	endbr64 
  4035b4:	41 54                	push   %r12
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:87
  FILE *f = fopen("/sys/kernel/debug/tracing/tracing_on", "r");
  4035b6:	48 8d 35 73 1a 00 00 	lea    0x1a73(%rip),%rsi        # 405030 <_IO_stdin_used+0x30>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:86
void trace_marker(const char *msg) {
  4035bd:	49 89 fc             	mov    %rdi,%r12
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:87
  FILE *f = fopen("/sys/kernel/debug/tracing/tracing_on", "r");
  4035c0:	48 8d 3d 69 1d 00 00 	lea    0x1d69(%rip),%rdi        # 405330 <_IO_stdin_used+0x330>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:86
void trace_marker(const char *msg) {
  4035c7:	55                   	push   %rbp
  4035c8:	48 83 ec 18          	sub    $0x18,%rsp
  4035cc:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4035d3:	00 00 
  4035d5:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4035da:	31 c0                	xor    %eax,%eax
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:87
  FILE *f = fopen("/sys/kernel/debug/tracing/tracing_on", "r");
  4035dc:	e8 0f ef ff ff       	callq  4024f0 <fopen@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:88
  if (f) {
  4035e1:	48 85 c0             	test   %rax,%rax
  4035e4:	74 36                	je     40361c <_Z12trace_markerPKc+0x6c>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:91
    if (fscanf(f, "%d", &tracing_enabled) == 1 && tracing_enabled) { 
  4035e6:	48 89 c7             	mov    %rax,%rdi
  4035e9:	48 89 c5             	mov    %rax,%rbp
  4035ec:	48 8d 54 24 04       	lea    0x4(%rsp),%rdx
  4035f1:	31 c0                	xor    %eax,%eax
  4035f3:	48 8d 35 80 1a 00 00 	lea    0x1a80(%rip),%rsi        # 40507a <_IO_stdin_used+0x7a>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:89
    int tracing_enabled = 0;
  4035fa:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%rsp)
  403601:	00 
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:91
    if (fscanf(f, "%d", &tracing_enabled) == 1 && tracing_enabled) { 
  403602:	e8 09 f0 ff ff       	callq  402610 <__isoc99_fscanf@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:92
      fclose(f);
  403607:	48 89 ef             	mov    %rbp,%rdi
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:91
    if (fscanf(f, "%d", &tracing_enabled) == 1 && tracing_enabled) { 
  40360a:	83 f8 01             	cmp    $0x1,%eax
  40360d:	75 08                	jne    403617 <_Z12trace_markerPKc+0x67>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:91 (discriminator 2)
  40360f:	8b 44 24 04          	mov    0x4(%rsp),%eax
  403613:	85 c0                	test   %eax,%eax
  403615:	75 21                	jne    403638 <_Z12trace_markerPKc+0x88>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:96
        fclose(f);
  403617:	e8 84 ee ff ff       	callq  4024a0 <fclose@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:102
}
  40361c:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  403621:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  403628:	00 00 
  40362a:	75 4a                	jne    403676 <_Z12trace_markerPKc+0xc6>
  40362c:	48 83 c4 18          	add    $0x18,%rsp
  403630:	5d                   	pop    %rbp
  403631:	41 5c                	pop    %r12
  403633:	c3                   	retq   
  403634:	0f 1f 40 00          	nopl   0x0(%rax)
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:92
      fclose(f);
  403638:	e8 63 ee ff ff       	callq  4024a0 <fclose@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:93
      f = fopen("/sys/kernel/debug/tracing/trace_marker", "w");
  40363d:	48 8d 35 d0 19 00 00 	lea    0x19d0(%rip),%rsi        # 405014 <_IO_stdin_used+0x14>
  403644:	48 8d 3d 0d 1d 00 00 	lea    0x1d0d(%rip),%rdi        # 405358 <_IO_stdin_used+0x358>
  40364b:	e8 a0 ee ff ff       	callq  4024f0 <fopen@plt>
  403650:	48 89 c5             	mov    %rax,%rbp
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:94
      if (f) {
  403653:	48 85 c0             	test   %rax,%rax
  403656:	74 c4                	je     40361c <_Z12trace_markerPKc+0x6c>
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  403658:	48 89 c7             	mov    %rax,%rdi
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  40365b:	4c 89 e1             	mov    %r12,%rcx
  40365e:	be 01 00 00 00       	mov    $0x1,%esi
  403663:	31 c0                	xor    %eax,%eax
  403665:	48 8d 15 15 21 00 00 	lea    0x2115(%rip),%rdx        # 405781 <_IO_stdin_used+0x781>
  40366c:	e8 6f ef ff ff       	callq  4025e0 <__fprintf_chk@plt>
_Z12trace_markerPKc():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:96
        fclose(f);
  403671:	48 89 ef             	mov    %rbp,%rdi
  403674:	eb a1                	jmp    403617 <_Z12trace_markerPKc+0x67>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:102
}
  403676:	e8 45 ee ff ff       	callq  4024c0 <__stack_chk_fail@plt>
  40367b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000403680 <_Z14setup_countersv>:
_Z14setup_countersv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:158
struct perf_counters setup_counters(void) {
  403680:	f3 0f 1e fa          	endbr64 
  403684:	41 56                	push   %r14
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71
  return __builtin___memset_chk (__dest, __ch, __len, __bos0 (__dest));
  403686:	b9 0c 00 00 00       	mov    $0xc,%ecx
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:123
  return syscall(__NR_perf_event_open, hw_event, pid, cpu, group_fd, flags);
  40368b:	45 31 c9             	xor    %r9d,%r9d
perf_event_open():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:123
  40368e:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
_Z14setup_countersv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:158
struct perf_counters setup_counters(void) {
  403694:	41 55                	push   %r13
  403696:	41 54                	push   %r12
  403698:	55                   	push   %rbp
  403699:	53                   	push   %rbx
  40369a:	48 81 ec d0 01 00 00 	sub    $0x1d0,%rsp
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:131
  pe.type = type;
  4036a1:	4c 8b 2d 00 22 00 00 	mov    0x2200(%rip),%r13        # 4058a8 <_IO_stdin_used+0x8a8>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:158
struct perf_counters setup_counters(void) {
  4036a8:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4036af:	00 00 
  4036b1:	48 89 84 24 c8 01 00 	mov    %rax,0x1c8(%rsp)
  4036b8:	00 
  4036b9:	31 c0                	xor    %eax,%eax
memset():
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71
  4036bb:	48 8d 94 24 60 01 00 	lea    0x160(%rsp),%rdx
  4036c2:	00 
  4036c3:	48 8d b4 24 50 01 00 	lea    0x150(%rsp),%rsi
  4036ca:	00 
open_counter():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:133
  pe.config = config;
  4036cb:	48 c7 84 24 58 01 00 	movq   $0x0,0x158(%rsp)
  4036d2:	00 00 00 00 00 
memset():
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71
  4036d7:	48 89 d7             	mov    %rdx,%rdi
perf_event_open():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:123
  return syscall(__NR_perf_event_open, hw_event, pid, cpu, group_fd, flags);
  4036da:	31 d2                	xor    %edx,%edx
open_counter():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:131
  pe.type = type;
  4036dc:	4c 89 ac 24 50 01 00 	mov    %r13,0x150(%rsp)
  4036e3:	00 
memset():
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71
  4036e4:	f3 48 ab             	rep stos %rax,%es:(%rdi)
perf_event_open():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:123
  return syscall(__NR_perf_event_open, hw_event, pid, cpu, group_fd, flags);
  4036e7:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
  4036ec:	bf 2a 01 00 00       	mov    $0x12a,%edi
open_counter():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:134
  pe.disabled = 1;
  4036f1:	c6 84 24 78 01 00 00 	movb   $0xe3,0x178(%rsp)
  4036f8:	e3 
perf_event_open():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:123
  return syscall(__NR_perf_event_open, hw_event, pid, cpu, group_fd, flags);
  4036f9:	e8 62 ec ff ff       	callq  402360 <syscall@plt>
open_counter():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:143
  if (fd == -1) {
  4036fe:	83 f8 ff             	cmp    $0xffffffff,%eax
  403701:	0f 84 45 01 00 00    	je     40384c <_Z14setup_countersv+0x1cc>
  403707:	45 31 f6             	xor    %r14d,%r14d
  40370a:	48 89 c3             	mov    %rax,%rbx
_Z14setup_countersv():
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71
  40370d:	b9 0c 00 00 00       	mov    $0xc,%ecx
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:123
  return syscall(__NR_perf_event_open, hw_event, pid, cpu, group_fd, flags);
  403712:	45 31 c9             	xor    %r9d,%r9d
memset():
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71
  403715:	48 8d 94 24 f0 00 00 	lea    0xf0(%rsp),%rdx
  40371c:	00 
  40371d:	4c 89 f0             	mov    %r14,%rax
  403720:	48 8d b4 24 e0 00 00 	lea    0xe0(%rsp),%rsi
  403727:	00 
perf_event_open():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:123
  403728:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
memset():
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71
  40372e:	48 89 d7             	mov    %rdx,%rdi
perf_event_open():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:123
  403731:	31 d2                	xor    %edx,%edx
_Z14setup_countersv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:131
  pe.type = type;
  403733:	4c 89 ac 24 e0 00 00 	mov    %r13,0xe0(%rsp)
  40373a:	00 
memset():
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71
  40373b:	f3 48 ab             	rep stos %rax,%es:(%rdi)
perf_event_open():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:123
  return syscall(__NR_perf_event_open, hw_event, pid, cpu, group_fd, flags);
  40373e:	31 c0                	xor    %eax,%eax
  403740:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
  403745:	bf 2a 01 00 00       	mov    $0x12a,%edi
open_counter():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:133
  pe.config = config;
  40374a:	48 c7 84 24 e8 00 00 	movq   $0x0,0xe8(%rsp)
  403751:	00 00 00 00 00 
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:134
  pe.disabled = 1;
  403756:	c6 84 24 08 01 00 00 	movb   $0xd3,0x108(%rsp)
  40375d:	d3 
perf_event_open():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:123
  return syscall(__NR_perf_event_open, hw_event, pid, cpu, group_fd, flags);
  40375e:	e8 fd eb ff ff       	callq  402360 <syscall@plt>
  403763:	49 89 c4             	mov    %rax,%r12
open_counter():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:143
  if (fd == -1) {
  403766:	83 f8 ff             	cmp    $0xffffffff,%eax
  403769:	0f 84 dd 00 00 00    	je     40384c <_Z14setup_countersv+0x1cc>
_Z14setup_countersv():
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71
  40376f:	4c 89 f0             	mov    %r14,%rax
memset():
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71
  403772:	b9 0c 00 00 00       	mov    $0xc,%ecx
  403777:	48 8d 74 24 70       	lea    0x70(%rsp),%rsi
_Z14setup_countersv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:123
  return syscall(__NR_perf_event_open, hw_event, pid, cpu, group_fd, flags);
  40377c:	45 31 c9             	xor    %r9d,%r9d
memset():
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71
  40377f:	48 8d 94 24 80 00 00 	lea    0x80(%rsp),%rdx
  403786:	00 
perf_event_open():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:123
  403787:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
_Z14setup_countersv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:131
  pe.type = type;
  40378d:	4c 89 6c 24 70       	mov    %r13,0x70(%rsp)
open_counter():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:133
  pe.config = config;
  403792:	48 c7 44 24 78 01 00 	movq   $0x1,0x78(%rsp)
  403799:	00 00 
memset():
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71
  40379b:	48 89 d7             	mov    %rdx,%rdi
perf_event_open():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:123
  return syscall(__NR_perf_event_open, hw_event, pid, cpu, group_fd, flags);
  40379e:	31 d2                	xor    %edx,%edx
memset():
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71
  4037a0:	f3 48 ab             	rep stos %rax,%es:(%rdi)
perf_event_open():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:123
  4037a3:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
  4037a8:	bf 2a 01 00 00       	mov    $0x12a,%edi
  4037ad:	31 c0                	xor    %eax,%eax
open_counter():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:134
  pe.disabled = 1;
  4037af:	c6 84 24 98 00 00 00 	movb   $0xe3,0x98(%rsp)
  4037b6:	e3 
perf_event_open():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:123
  return syscall(__NR_perf_event_open, hw_event, pid, cpu, group_fd, flags);
  4037b7:	e8 a4 eb ff ff       	callq  402360 <syscall@plt>
  4037bc:	48 89 c5             	mov    %rax,%rbp
open_counter():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:143
  if (fd == -1) {
  4037bf:	83 f8 ff             	cmp    $0xffffffff,%eax
  4037c2:	0f 84 84 00 00 00    	je     40384c <_Z14setup_countersv+0x1cc>
_Z14setup_countersv():
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71
  4037c8:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
memset():
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71
  4037cd:	4c 89 f0             	mov    %r14,%rax
  4037d0:	b9 0c 00 00 00       	mov    $0xc,%ecx
  4037d5:	48 89 e6             	mov    %rsp,%rsi
  4037d8:	48 89 d7             	mov    %rdx,%rdi
_Z14setup_countersv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:123
  return syscall(__NR_perf_event_open, hw_event, pid, cpu, group_fd, flags);
  4037db:	45 31 c9             	xor    %r9d,%r9d
perf_event_open():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:123
  4037de:	31 d2                	xor    %edx,%edx
  4037e0:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
memset():
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71
  4037e6:	f3 48 ab             	rep stos %rax,%es:(%rdi)
perf_event_open():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:123
  4037e9:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
  4037ee:	31 c0                	xor    %eax,%eax
  4037f0:	bf 2a 01 00 00       	mov    $0x12a,%edi
_Z14setup_countersv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:131
  pe.type = type;
  4037f5:	4c 89 2c 24          	mov    %r13,(%rsp)
open_counter():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:133
  pe.config = config;
  4037f9:	48 c7 44 24 08 01 00 	movq   $0x1,0x8(%rsp)
  403800:	00 00 
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:134
  pe.disabled = 1;
  403802:	c6 44 24 28 d3       	movb   $0xd3,0x28(%rsp)
perf_event_open():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:123
  return syscall(__NR_perf_event_open, hw_event, pid, cpu, group_fd, flags);
  403807:	e8 54 eb ff ff       	callq  402360 <syscall@plt>
  40380c:	48 89 c2             	mov    %rax,%rdx
open_counter():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:143
  if (fd == -1) {
  40380f:	83 f8 ff             	cmp    $0xffffffff,%eax
  403812:	74 38                	je     40384c <_Z14setup_countersv+0x1cc>
_Z14setup_countersv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:168
  return c;
  403814:	48 89 d1             	mov    %rdx,%rcx
  403817:	49 c1 e4 20          	shl    $0x20,%r12
  40381b:	89 d8                	mov    %ebx,%eax
  40381d:	89 ea                	mov    %ebp,%edx
  40381f:	48 c1 e1 20          	shl    $0x20,%rcx
  403823:	4c 09 e0             	or     %r12,%rax
  403826:	48 09 ca             	or     %rcx,%rdx
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:169
}
  403829:	48 8b 9c 24 c8 01 00 	mov    0x1c8(%rsp),%rbx
  403830:	00 
  403831:	64 48 2b 1c 25 28 00 	sub    %fs:0x28,%rbx
  403838:	00 00 
  40383a:	75 15                	jne    403851 <_Z14setup_countersv+0x1d1>
  40383c:	48 81 c4 d0 01 00 00 	add    $0x1d0,%rsp
  403843:	5b                   	pop    %rbx
  403844:	5d                   	pop    %rbp
  403845:	41 5c                	pop    %r12
  403847:	41 5d                	pop    %r13
  403849:	41 5e                	pop    %r14
  40384b:	c3                   	retq   
open_counter():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:169
  40384c:	e8 cf f9 ff ff       	callq  403220 <_ZL12open_counterjmiii.part.0>
_Z14setup_countersv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:169
  403851:	e8 6a ec ff ff       	callq  4024c0 <__stack_chk_fail@plt>
  403856:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40385d:	00 00 00 

0000000000403860 <_Z28initialize_perf_measurementsv>:
_Z28initialize_perf_measurementsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:174
void initialize_perf_measurements(){
  403860:	f3 0f 1e fa          	endbr64 
  403864:	48 83 ec 08          	sub    $0x8,%rsp
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:175
  perf_ctrs = setup_counters();
  403868:	e8 13 fe ff ff       	callq  403680 <_Z14setup_countersv>
  40386d:	48 89 05 fc 4e 00 00 	mov    %rax,0x4efc(%rip)        # 408770 <perf_ctrs>
  403874:	48 89 15 fd 4e 00 00 	mov    %rdx,0x4efd(%rip)        # 408778 <perf_ctrs+0x8>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:176
}
  40387b:	48 83 c4 08          	add    $0x8,%rsp
  40387f:	c3                   	retq   

0000000000403880 <_Z14start_countersP13perf_counters>:
_Z14start_countersP13perf_counters():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:178
void start_counters(struct perf_counters *c) {
  403880:	f3 0f 1e fa          	endbr64 
  403884:	53                   	push   %rbx
  403885:	48 89 fb             	mov    %rdi,%rbx
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:180
  ioctl(c->fd_user_time, PERF_EVENT_IOC_RESET, 0);
  403888:	8b 3f                	mov    (%rdi),%edi
  40388a:	31 d2                	xor    %edx,%edx
  40388c:	be 03 24 00 00       	mov    $0x2403,%esi
  403891:	31 c0                	xor    %eax,%eax
  403893:	e8 c8 ec ff ff       	callq  402560 <ioctl@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:181
  ioctl(c->fd_kernel_time, PERF_EVENT_IOC_RESET, 0);
  403898:	8b 7b 04             	mov    0x4(%rbx),%edi
  40389b:	31 d2                	xor    %edx,%edx
  40389d:	be 03 24 00 00       	mov    $0x2403,%esi
  4038a2:	31 c0                	xor    %eax,%eax
  4038a4:	e8 b7 ec ff ff       	callq  402560 <ioctl@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:182
  ioctl(c->fd_user_instr, PERF_EVENT_IOC_RESET, 0);
  4038a9:	8b 7b 08             	mov    0x8(%rbx),%edi
  4038ac:	31 d2                	xor    %edx,%edx
  4038ae:	be 03 24 00 00       	mov    $0x2403,%esi
  4038b3:	31 c0                	xor    %eax,%eax
  4038b5:	e8 a6 ec ff ff       	callq  402560 <ioctl@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:183
  ioctl(c->fd_kernel_instr, PERF_EVENT_IOC_RESET, 0);
  4038ba:	8b 7b 0c             	mov    0xc(%rbx),%edi
  4038bd:	31 d2                	xor    %edx,%edx
  4038bf:	be 03 24 00 00       	mov    $0x2403,%esi
  4038c4:	31 c0                	xor    %eax,%eax
  4038c6:	e8 95 ec ff ff       	callq  402560 <ioctl@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:185
  ioctl(c->fd_user_time, PERF_EVENT_IOC_ENABLE, 0);
  4038cb:	8b 3b                	mov    (%rbx),%edi
  4038cd:	31 d2                	xor    %edx,%edx
  4038cf:	be 00 24 00 00       	mov    $0x2400,%esi
  4038d4:	31 c0                	xor    %eax,%eax
  4038d6:	e8 85 ec ff ff       	callq  402560 <ioctl@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:186
  ioctl(c->fd_kernel_time, PERF_EVENT_IOC_ENABLE, 0);
  4038db:	8b 7b 04             	mov    0x4(%rbx),%edi
  4038de:	31 d2                	xor    %edx,%edx
  4038e0:	be 00 24 00 00       	mov    $0x2400,%esi
  4038e5:	31 c0                	xor    %eax,%eax
  4038e7:	e8 74 ec ff ff       	callq  402560 <ioctl@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:187
  ioctl(c->fd_user_instr, PERF_EVENT_IOC_ENABLE, 0);
  4038ec:	8b 7b 08             	mov    0x8(%rbx),%edi
  4038ef:	31 d2                	xor    %edx,%edx
  4038f1:	be 00 24 00 00       	mov    $0x2400,%esi
  4038f6:	31 c0                	xor    %eax,%eax
  4038f8:	e8 63 ec ff ff       	callq  402560 <ioctl@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:188
  ioctl(c->fd_kernel_instr, PERF_EVENT_IOC_ENABLE, 0);
  4038fd:	8b 7b 0c             	mov    0xc(%rbx),%edi
  403900:	31 d2                	xor    %edx,%edx
  403902:	be 00 24 00 00       	mov    $0x2400,%esi
  403907:	31 c0                	xor    %eax,%eax
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:189
}
  403909:	5b                   	pop    %rbx
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:188
  ioctl(c->fd_kernel_instr, PERF_EVENT_IOC_ENABLE, 0);
  40390a:	e9 51 ec ff ff       	jmpq   402560 <ioctl@plt>
  40390f:	90                   	nop

0000000000403910 <_Z17get_cpu_frequencyv>:
_Z17get_cpu_frequencyv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:191
double get_cpu_frequency() {
  403910:	f3 0f 1e fa          	endbr64 
  403914:	41 54                	push   %r12
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:192
  FILE *fp = fopen("/proc/cpuinfo", "r");
  403916:	48 8d 35 13 17 00 00 	lea    0x1713(%rip),%rsi        # 405030 <_IO_stdin_used+0x30>
  40391d:	48 8d 3d 68 17 00 00 	lea    0x1768(%rip),%rdi        # 40508c <_IO_stdin_used+0x8c>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:191
double get_cpu_frequency() {
  403924:	55                   	push   %rbp
  403925:	53                   	push   %rbx
  403926:	48 81 ec 20 01 00 00 	sub    $0x120,%rsp
  40392d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  403934:	00 00 
  403936:	48 89 84 24 18 01 00 	mov    %rax,0x118(%rsp)
  40393d:	00 
  40393e:	31 c0                	xor    %eax,%eax
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:192
  FILE *fp = fopen("/proc/cpuinfo", "r");
  403940:	e8 ab eb ff ff       	callq  4024f0 <fopen@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:193
  if (!fp) {
  403945:	48 85 c0             	test   %rax,%rax
  403948:	0f 84 9f 00 00 00    	je     4039ed <_Z17get_cpu_frequencyv+0xdd>
  40394e:	48 89 c5             	mov    %rax,%rbp
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:199
  double freq_mhz = 0.0;
  403951:	48 8d 5c 24 10       	lea    0x10(%rsp),%rbx
  403956:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  40395d:	00 00 
strstr():
/usr/include/string.h:319

# ifdef __OPTIMIZE__
__extern_always_inline char *
strstr (char *__haystack, const char *__needle) __THROW
{
  return __builtin_strstr (__haystack, __needle);
  40395f:	4c 8d 25 34 17 00 00 	lea    0x1734(%rip),%r12        # 40509a <_IO_stdin_used+0x9a>
  403966:	eb 18                	jmp    403980 <_Z17get_cpu_frequencyv+0x70>
  403968:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40396f:	00 
  403970:	4c 89 e6             	mov    %r12,%rsi
  403973:	48 89 df             	mov    %rbx,%rdi
  403976:	e8 05 ea ff ff       	callq  402380 <strstr@plt>
_Z17get_cpu_frequencyv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:202
    if (strstr(line, "cpu MHz")) {
  40397b:	48 85 c0             	test   %rax,%rax
  40397e:	75 50                	jne    4039d0 <_Z17get_cpu_frequencyv+0xc0>
/usr/include/x86_64-linux-gnu/bits/stdio2.h:265
	return __fgets_chk (__s, __bos (__s), __n, __stream);

      if ((size_t) __n > __bos (__s))
	return __fgets_chk_warn (__s, __bos (__s), __n, __stream);
    }
  return __fgets_alias (__s, __n, __stream);
  403980:	48 89 ea             	mov    %rbp,%rdx
fgets():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:265
  403983:	be 00 01 00 00       	mov    $0x100,%esi
  403988:	48 89 df             	mov    %rbx,%rdi
  40398b:	e8 20 ec ff ff       	callq  4025b0 <fgets@plt>
_Z17get_cpu_frequencyv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:201
  while (fgets(line, sizeof(line), fp)) {
  403990:	48 85 c0             	test   %rax,%rax
  403993:	75 db                	jne    403970 <_Z17get_cpu_frequencyv+0x60>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:208
  fclose(fp);
  403995:	48 89 ef             	mov    %rbp,%rdi
  403998:	e8 03 eb ff ff       	callq  4024a0 <fclose@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:210
  return freq_mhz * 1e6; // Convert MHz to Hz
  40399d:	f2 0f 10 05 0b 1f 00 	movsd  0x1f0b(%rip),%xmm0        # 4058b0 <_IO_stdin_used+0x8b0>
  4039a4:	00 
  4039a5:	f2 0f 59 44 24 08    	mulsd  0x8(%rsp),%xmm0
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:211
}
  4039ab:	48 8b 84 24 18 01 00 	mov    0x118(%rsp),%rax
  4039b2:	00 
  4039b3:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  4039ba:	00 00 
  4039bc:	75 41                	jne    4039ff <_Z17get_cpu_frequencyv+0xef>
  4039be:	48 81 c4 20 01 00 00 	add    $0x120,%rsp
  4039c5:	5b                   	pop    %rbx
  4039c6:	5d                   	pop    %rbp
  4039c7:	41 5c                	pop    %r12
  4039c9:	c3                   	retq   
  4039ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:203
      if (sscanf(line, "cpu MHz : %lf", &freq_mhz) == 1) {
  4039d0:	31 c0                	xor    %eax,%eax
  4039d2:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
  4039d7:	48 8d 35 c4 16 00 00 	lea    0x16c4(%rip),%rsi        # 4050a2 <_IO_stdin_used+0xa2>
  4039de:	48 89 df             	mov    %rbx,%rdi
  4039e1:	e8 aa ea ff ff       	callq  402490 <__isoc99_sscanf@plt>
  4039e6:	83 f8 01             	cmp    $0x1,%eax
  4039e9:	75 95                	jne    403980 <_Z17get_cpu_frequencyv+0x70>
  4039eb:	eb a8                	jmp    403995 <_Z17get_cpu_frequencyv+0x85>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:194
    perror("Failed to open /proc/cpuinfo");
  4039ed:	48 8d 3d 89 16 00 00 	lea    0x1689(%rip),%rdi        # 40507d <_IO_stdin_used+0x7d>
  4039f4:	e8 57 ea ff ff       	callq  402450 <perror@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:195
    return 0.0;
  4039f9:	66 0f ef c0          	pxor   %xmm0,%xmm0
  4039fd:	eb ac                	jmp    4039ab <_Z17get_cpu_frequencyv+0x9b>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:211
}
  4039ff:	e8 bc ea ff ff       	callq  4024c0 <__stack_chk_fail@plt>
  403a04:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  403a0b:	00 00 00 00 
  403a0f:	90                   	nop

0000000000403a10 <_Z13stop_countersP13perf_countersPxS1_S1_S1_>:
_Z13stop_countersP13perf_countersPxS1_S1_S1_():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:215
                   long long *instr_user, long long *instr_kernel) {
  403a10:	f3 0f 1e fa          	endbr64 
  403a14:	41 57                	push   %r15
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:217
  ioctl(c->fd_user_time, PERF_EVENT_IOC_DISABLE, 0);
  403a16:	31 c0                	xor    %eax,%eax
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:215
                   long long *instr_user, long long *instr_kernel) {
  403a18:	4d 89 c7             	mov    %r8,%r15
  403a1b:	41 56                	push   %r14
  403a1d:	49 89 ce             	mov    %rcx,%r14
  403a20:	41 55                	push   %r13
  403a22:	41 54                	push   %r12
  403a24:	49 89 d4             	mov    %rdx,%r12
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:217
  ioctl(c->fd_user_time, PERF_EVENT_IOC_DISABLE, 0);
  403a27:	31 d2                	xor    %edx,%edx
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:215
                   long long *instr_user, long long *instr_kernel) {
  403a29:	55                   	push   %rbp
  403a2a:	48 89 f5             	mov    %rsi,%rbp
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:217
  ioctl(c->fd_user_time, PERF_EVENT_IOC_DISABLE, 0);
  403a2d:	be 01 24 00 00       	mov    $0x2401,%esi
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:215
                   long long *instr_user, long long *instr_kernel) {
  403a32:	53                   	push   %rbx
  403a33:	48 89 fb             	mov    %rdi,%rbx
  403a36:	48 83 ec 18          	sub    $0x18,%rsp
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:217
  ioctl(c->fd_user_time, PERF_EVENT_IOC_DISABLE, 0);
  403a3a:	8b 3f                	mov    (%rdi),%edi
  403a3c:	e8 1f eb ff ff       	callq  402560 <ioctl@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:218
  ioctl(c->fd_kernel_time, PERF_EVENT_IOC_DISABLE, 0);
  403a41:	8b 7b 04             	mov    0x4(%rbx),%edi
  403a44:	31 d2                	xor    %edx,%edx
  403a46:	be 01 24 00 00       	mov    $0x2401,%esi
  403a4b:	31 c0                	xor    %eax,%eax
  403a4d:	e8 0e eb ff ff       	callq  402560 <ioctl@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:219
  ioctl(c->fd_user_instr, PERF_EVENT_IOC_DISABLE, 0);
  403a52:	8b 7b 08             	mov    0x8(%rbx),%edi
  403a55:	31 d2                	xor    %edx,%edx
  403a57:	be 01 24 00 00       	mov    $0x2401,%esi
  403a5c:	31 c0                	xor    %eax,%eax
  403a5e:	e8 fd ea ff ff       	callq  402560 <ioctl@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:220
  ioctl(c->fd_kernel_instr, PERF_EVENT_IOC_DISABLE, 0);
  403a63:	8b 7b 0c             	mov    0xc(%rbx),%edi
  403a66:	31 d2                	xor    %edx,%edx
  403a68:	be 01 24 00 00       	mov    $0x2401,%esi
  403a6d:	31 c0                	xor    %eax,%eax
  403a6f:	e8 ec ea ff ff       	callq  402560 <ioctl@plt>
/usr/include/x86_64-linux-gnu/bits/unistd.h:44
	return __read_chk (__fd, __buf, __nbytes, __bos0 (__buf));

      if (__nbytes > __bos0 (__buf))
	return __read_chk_warn (__fd, __buf, __nbytes, __bos0 (__buf));
    }
  return __read_alias (__fd, __buf, __nbytes);
  403a74:	8b 3b                	mov    (%rbx),%edi
read():
/usr/include/x86_64-linux-gnu/bits/unistd.h:44
  403a76:	ba 08 00 00 00       	mov    $0x8,%edx
  403a7b:	48 89 ee             	mov    %rbp,%rsi
  403a7e:	e8 ed ea ff ff       	callq  402570 <read@plt>
_Z13stop_countersP13perf_countersPxS1_S1_S1_():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:224
  if (ret != (ssize_t)sizeof(long long)) {
  403a83:	48 83 f8 08          	cmp    $0x8,%rax
  403a87:	74 14                	je     403a9d <_Z13stop_countersP13perf_countersPxS1_S1_S1_+0x8d>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:225
    perror("read user_time");
  403a89:	48 8d 3d 20 16 00 00 	lea    0x1620(%rip),%rdi        # 4050b0 <_IO_stdin_used+0xb0>
  403a90:	e8 bb e9 ff ff       	callq  402450 <perror@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:226
    *cycles_user = -1;
  403a95:	48 c7 45 00 ff ff ff 	movq   $0xffffffffffffffff,0x0(%rbp)
  403a9c:	ff 
/usr/include/x86_64-linux-gnu/bits/unistd.h:44
  403a9d:	8b 7b 04             	mov    0x4(%rbx),%edi
read():
/usr/include/x86_64-linux-gnu/bits/unistd.h:44
  403aa0:	ba 08 00 00 00       	mov    $0x8,%edx
  403aa5:	4c 89 e6             	mov    %r12,%rsi
  403aa8:	e8 c3 ea ff ff       	callq  402570 <read@plt>
_Z13stop_countersP13perf_countersPxS1_S1_S1_():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:230
  if (ret != (ssize_t)sizeof(long long)) {
  403aad:	48 83 f8 08          	cmp    $0x8,%rax
  403ab1:	74 14                	je     403ac7 <_Z13stop_countersP13perf_countersPxS1_S1_S1_+0xb7>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:231
    perror("read kernel_time");
  403ab3:	48 8d 3d 05 16 00 00 	lea    0x1605(%rip),%rdi        # 4050bf <_IO_stdin_used+0xbf>
  403aba:	e8 91 e9 ff ff       	callq  402450 <perror@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:232
    *cycles_kernel = -1;
  403abf:	49 c7 04 24 ff ff ff 	movq   $0xffffffffffffffff,(%r12)
  403ac6:	ff 
/usr/include/x86_64-linux-gnu/bits/unistd.h:44
  403ac7:	8b 7b 08             	mov    0x8(%rbx),%edi
read():
/usr/include/x86_64-linux-gnu/bits/unistd.h:44
  403aca:	ba 08 00 00 00       	mov    $0x8,%edx
  403acf:	4c 89 f6             	mov    %r14,%rsi
  403ad2:	e8 99 ea ff ff       	callq  402570 <read@plt>
_Z13stop_countersP13perf_countersPxS1_S1_S1_():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:236
  if (ret != (ssize_t)sizeof(long long)) {
  403ad7:	48 83 f8 08          	cmp    $0x8,%rax
  403adb:	74 13                	je     403af0 <_Z13stop_countersP13perf_countersPxS1_S1_S1_+0xe0>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:237
    perror("read user_instr");
  403add:	48 8d 3d ec 15 00 00 	lea    0x15ec(%rip),%rdi        # 4050d0 <_IO_stdin_used+0xd0>
  403ae4:	e8 67 e9 ff ff       	callq  402450 <perror@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:238
    *instr_user = -1;
  403ae9:	49 c7 06 ff ff ff ff 	movq   $0xffffffffffffffff,(%r14)
/usr/include/x86_64-linux-gnu/bits/unistd.h:44
  403af0:	8b 7b 0c             	mov    0xc(%rbx),%edi
read():
/usr/include/x86_64-linux-gnu/bits/unistd.h:44
  403af3:	ba 08 00 00 00       	mov    $0x8,%edx
  403af8:	4c 89 fe             	mov    %r15,%rsi
  403afb:	e8 70 ea ff ff       	callq  402570 <read@plt>
_Z13stop_countersP13perf_countersPxS1_S1_S1_():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:242
  if (ret != (ssize_t)sizeof(long long)) {
  403b00:	48 83 f8 08          	cmp    $0x8,%rax
  403b04:	74 13                	je     403b19 <_Z13stop_countersP13perf_countersPxS1_S1_S1_+0x109>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:243
    perror("read kernel_instr");
  403b06:	48 8d 3d d3 15 00 00 	lea    0x15d3(%rip),%rdi        # 4050e0 <_IO_stdin_used+0xe0>
  403b0d:	e8 3e e9 ff ff       	callq  402450 <perror@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:244
    *instr_kernel = -1;
  403b12:	49 c7 07 ff ff ff ff 	movq   $0xffffffffffffffff,(%r15)
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:248
  double cpu_freq_hz = get_cpu_frequency(); // in Hz
  403b19:	e8 f2 fd ff ff       	callq  403910 <_Z17get_cpu_frequencyv>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:249
  if (*cycles_user != -1)
  403b1e:	48 8b 45 00          	mov    0x0(%rbp),%rax
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:247
  double time_user_s = 0, time_kernel_s = 0;
  403b22:	66 0f ef d2          	pxor   %xmm2,%xmm2
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:249
  if (*cycles_user != -1)
  403b26:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  403b2a:	74 0d                	je     403b39 <_Z13stop_countersP13perf_countersPxS1_S1_S1_+0x129>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:250
    time_user_s = (*cycles_user) / cpu_freq_hz;
  403b2c:	66 0f ef d2          	pxor   %xmm2,%xmm2
  403b30:	f2 48 0f 2a d0       	cvtsi2sd %rax,%xmm2
  403b35:	f2 0f 5e d0          	divsd  %xmm0,%xmm2
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:251
  if (*cycles_kernel != -1)
  403b39:	49 8b 04 24          	mov    (%r12),%rax
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:247
  double time_user_s = 0, time_kernel_s = 0;
  403b3d:	66 0f ef c9          	pxor   %xmm1,%xmm1
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:251
  if (*cycles_kernel != -1)
  403b41:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  403b45:	74 0d                	je     403b54 <_Z13stop_countersP13perf_countersPxS1_S1_S1_+0x144>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:252
    time_kernel_s = (*cycles_kernel) / cpu_freq_hz;
  403b47:	66 0f ef c9          	pxor   %xmm1,%xmm1
  403b4b:	f2 48 0f 2a c8       	cvtsi2sd %rax,%xmm1
  403b50:	f2 0f 5e c8          	divsd  %xmm0,%xmm1
/usr/include/x86_64-linux-gnu/bits/stdio2.h:107
  return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
  403b54:	bf 01 00 00 00       	mov    $0x1,%edi
printf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:107
  403b59:	b8 01 00 00 00       	mov    $0x1,%eax
  403b5e:	f2 0f 11 14 24       	movsd  %xmm2,(%rsp)
  403b63:	48 8d 35 16 18 00 00 	lea    0x1816(%rip),%rsi        # 405380 <_IO_stdin_used+0x380>
  403b6a:	f2 0f 11 4c 24 08    	movsd  %xmm1,0x8(%rsp)
  403b70:	e8 cb e7 ff ff       	callq  402340 <__printf_chk@plt>
_Z13stop_countersP13perf_countersPxS1_S1_S1_():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:256
  FILE *f = fopen("perf.stats", "w");
  403b75:	48 8d 35 98 14 00 00 	lea    0x1498(%rip),%rsi        # 405014 <_IO_stdin_used+0x14>
  403b7c:	48 8d 3d 6f 15 00 00 	lea    0x156f(%rip),%rdi        # 4050f2 <_IO_stdin_used+0xf2>
  403b83:	e8 68 e9 ff ff       	callq  4024f0 <fopen@plt>
  403b88:	49 89 c5             	mov    %rax,%r13
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:257
  if (f) {
  403b8b:	48 85 c0             	test   %rax,%rax
  403b8e:	0f 84 9c 00 00 00    	je     403c30 <_Z13stop_countersP13perf_countersPxS1_S1_S1_+0x220>
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
  403b94:	48 83 ec 08          	sub    $0x8,%rsp
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  403b98:	48 8d 05 87 15 00 00 	lea    0x1587(%rip),%rax        # 405126 <_IO_stdin_used+0x126>
  403b9f:	4c 89 ef             	mov    %r13,%rdi
  403ba2:	be 01 00 00 00       	mov    $0x1,%esi
  403ba7:	48 8d 0d 87 15 00 00 	lea    0x1587(%rip),%rcx        # 405135 <_IO_stdin_used+0x135>
  403bae:	50                   	push   %rax
  403baf:	4c 8d 0d 47 15 00 00 	lea    0x1547(%rip),%r9        # 4050fd <_IO_stdin_used+0xfd>
  403bb6:	41 ff 37             	pushq  (%r15)
  403bb9:	4c 8d 05 4a 15 00 00 	lea    0x154a(%rip),%r8        # 40510a <_IO_stdin_used+0x10a>
  403bc0:	48 8d 15 e1 17 00 00 	lea    0x17e1(%rip),%rdx        # 4053a8 <_IO_stdin_used+0x3a8>
  403bc7:	51                   	push   %rcx
  403bc8:	48 8d 0d 7b 15 00 00 	lea    0x157b(%rip),%rcx        # 40514a <_IO_stdin_used+0x14a>
  403bcf:	50                   	push   %rax
  403bd0:	41 ff 36             	pushq  (%r14)
  403bd3:	51                   	push   %rcx
  403bd4:	48 8d 0d 82 15 00 00 	lea    0x1582(%rip),%rcx        # 40515d <_IO_stdin_used+0x15d>
  403bdb:	50                   	push   %rax
  403bdc:	41 ff 34 24          	pushq  (%r12)
  403be0:	51                   	push   %rcx
  403be1:	48 8d 0d 33 15 00 00 	lea    0x1533(%rip),%rcx        # 40511b <_IO_stdin_used+0x11b>
  403be8:	50                   	push   %rax
  403be9:	48 8d 05 7c 15 00 00 	lea    0x157c(%rip),%rax        # 40516c <_IO_stdin_used+0x16c>
  403bf0:	ff 75 00             	pushq  0x0(%rbp)
  403bf3:	50                   	push   %rax
  403bf4:	48 8d 05 7e 15 00 00 	lea    0x157e(%rip),%rax        # 405179 <_IO_stdin_used+0x179>
  403bfb:	50                   	push   %rax
  403bfc:	f2 0f 10 54 24 70    	movsd  0x70(%rsp),%xmm2
  403c02:	b8 02 00 00 00       	mov    $0x2,%eax
  403c07:	f2 0f 10 4c 24 78    	movsd  0x78(%rsp),%xmm1
  403c0d:	66 0f 28 c2          	movapd %xmm2,%xmm0
  403c11:	e8 ca e9 ff ff       	callq  4025e0 <__fprintf_chk@plt>
_Z13stop_countersP13perf_countersPxS1_S1_S1_():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:273
}
  403c16:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:271
    fclose(f);
  403c1d:	4c 89 ef             	mov    %r13,%rdi
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:273
}
  403c20:	5b                   	pop    %rbx
  403c21:	5d                   	pop    %rbp
  403c22:	41 5c                	pop    %r12
  403c24:	41 5d                	pop    %r13
  403c26:	41 5e                	pop    %r14
  403c28:	41 5f                	pop    %r15
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:271
    fclose(f);
  403c2a:	e9 71 e8 ff ff       	jmpq   4024a0 <fclose@plt>
  403c2f:	90                   	nop
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:273
}
  403c30:	48 83 c4 18          	add    $0x18,%rsp
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:272
  } else perror("Failed to open perf.stats for writing");
  403c34:	48 8d 3d d5 17 00 00 	lea    0x17d5(%rip),%rdi        # 405410 <_IO_stdin_used+0x410>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:273
}
  403c3b:	5b                   	pop    %rbx
  403c3c:	5d                   	pop    %rbp
  403c3d:	41 5c                	pop    %r12
  403c3f:	41 5d                	pop    %r13
  403c41:	41 5e                	pop    %r14
  403c43:	41 5f                	pop    %r15
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:272
  } else perror("Failed to open perf.stats for writing");
  403c45:	e9 06 e8 ff ff       	jmpq   402450 <perror@plt>
  403c4a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000403c50 <_Z16cleanup_countersP13perf_counters>:
_Z16cleanup_countersP13perf_counters():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:275
void cleanup_counters(struct perf_counters *c) {
  403c50:	f3 0f 1e fa          	endbr64 
  403c54:	53                   	push   %rbx
  403c55:	48 89 fb             	mov    %rdi,%rbx
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:276
  close(c->fd_user_time);
  403c58:	8b 3f                	mov    (%rdi),%edi
  403c5a:	e8 e1 e9 ff ff       	callq  402640 <close@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:277
  close(c->fd_kernel_time);
  403c5f:	8b 7b 04             	mov    0x4(%rbx),%edi
  403c62:	e8 d9 e9 ff ff       	callq  402640 <close@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:278
  close(c->fd_user_instr);
  403c67:	8b 7b 08             	mov    0x8(%rbx),%edi
  403c6a:	e8 d1 e9 ff ff       	callq  402640 <close@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:279
  close(c->fd_kernel_instr);
  403c6f:	8b 7b 0c             	mov    0xc(%rbx),%edi
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:280
}
  403c72:	5b                   	pop    %rbx
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:279
  close(c->fd_kernel_instr);
  403c73:	e9 c8 e9 ff ff       	jmpq   402640 <close@plt>
  403c78:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  403c7f:	00 

0000000000403c80 <_Z14move_to_cgroupPKci>:
_Z14move_to_cgroupPKci():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:292
void move_to_cgroup(const char *cgroup_path, pid_t pid){
  403c80:	f3 0f 1e fa          	endbr64 
  403c84:	41 56                	push   %r14
  403c86:	49 89 f9             	mov    %rdi,%r9
/usr/include/x86_64-linux-gnu/bits/stdio2.h:67
  return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
  403c89:	b9 00 01 00 00       	mov    $0x100,%ecx
snprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:67
  403c8e:	ba 01 00 00 00       	mov    $0x1,%edx
_Z14move_to_cgroupPKci():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:292
  403c93:	41 55                	push   %r13
snprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:67
  403c95:	4c 8d 05 ee 14 00 00 	lea    0x14ee(%rip),%r8        # 40518a <_IO_stdin_used+0x18a>
_Z14move_to_cgroupPKci():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:292
  403c9c:	41 54                	push   %r12
  403c9e:	41 89 f4             	mov    %esi,%r12d
snprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:67
  403ca1:	be 00 01 00 00       	mov    $0x100,%esi
_Z14move_to_cgroupPKci():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:292
  403ca6:	55                   	push   %rbp
  403ca7:	48 81 ec 18 01 00 00 	sub    $0x118,%rsp
  403cae:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  403cb5:	00 00 
  403cb7:	48 89 84 24 08 01 00 	mov    %rax,0x108(%rsp)
  403cbe:	00 
  403cbf:	31 c0                	xor    %eax,%eax
snprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:67
  403cc1:	49 89 e5             	mov    %rsp,%r13
  403cc4:	4c 89 ef             	mov    %r13,%rdi
  403cc7:	e8 54 e7 ff ff       	callq  402420 <__snprintf_chk@plt>
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc():
/usr/include/c++/10/ostream:611
  403ccc:	ba 13 00 00 00       	mov    $0x13,%edx
  403cd1:	48 8d 35 c2 14 00 00 	lea    0x14c2(%rip),%rsi        # 40519a <_IO_stdin_used+0x19a>
  403cd8:	48 8d 3d 21 45 00 00 	lea    0x4521(%rip),%rdi        # 408200 <_ZSt4cout@@GLIBCXX_3.4>
  403cdf:	e8 ec e7 ff ff       	callq  4024d0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
_Z14move_to_cgroupPKci():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:295
	std::cout << "moving the process " << pid << " to " << path << std::endl;
  403ce4:	44 89 e6             	mov    %r12d,%esi
  403ce7:	48 8d 3d 12 45 00 00 	lea    0x4512(%rip),%rdi        # 408200 <_ZSt4cout@@GLIBCXX_3.4>
  403cee:	e8 fd e8 ff ff       	callq  4025f0 <_ZNSolsEi@plt>
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc():
/usr/include/c++/10/ostream:611
  403cf3:	ba 04 00 00 00       	mov    $0x4,%edx
  403cf8:	48 8d 35 af 14 00 00 	lea    0x14af(%rip),%rsi        # 4051ae <_IO_stdin_used+0x1ae>
  403cff:	48 89 c7             	mov    %rax,%rdi
_Z14move_to_cgroupPKci():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:295
  403d02:	48 89 c5             	mov    %rax,%rbp
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc():
/usr/include/c++/10/ostream:611
  403d05:	e8 c6 e7 ff ff       	callq  4024d0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
_ZNSt11char_traitsIcE6lengthEPKc():
/usr/include/c++/10/bits/char_traits.h:399
      {
#if __cplusplus >= 201703L
	if (__constant_string_p(__s))
	  return __gnu_cxx::char_traits<char_type>::length(__s);
#endif
	return __builtin_strlen(__s);
  403d0a:	4c 89 ef             	mov    %r13,%rdi
  403d0d:	e8 be e6 ff ff       	callq  4023d0 <strlen@plt>
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc():
/usr/include/c++/10/ostream:611
  403d12:	4c 89 ee             	mov    %r13,%rsi
  403d15:	48 89 ef             	mov    %rbp,%rdi
_ZNSt11char_traitsIcE6lengthEPKc():
/usr/include/c++/10/bits/char_traits.h:399
  403d18:	48 89 c2             	mov    %rax,%rdx
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc():
/usr/include/c++/10/ostream:611
  403d1b:	e8 b0 e7 ff ff       	callq  4024d0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_():
/usr/include/c++/10/ostream:682
   *  for more on this subject.
  */
  template<typename _CharT, typename _Traits>
    inline basic_ostream<_CharT, _Traits>&
    endl(basic_ostream<_CharT, _Traits>& __os)
    { return flush(__os.put(__os.widen('\n'))); }
  403d20:	48 8b 45 00          	mov    0x0(%rbp),%rax
  403d24:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  403d28:	4c 8b b4 05 f0 00 00 	mov    0xf0(%rbp,%rax,1),%r14
  403d2f:	00 
_ZSt13__check_facetISt5ctypeIcEERKT_PS3_():
/usr/include/c++/10/bits/basic_ios.h:49

  template<typename _Facet>
    inline const _Facet&
    __check_facet(const _Facet* __f)
    {
      if (!__f)
  403d30:	4d 85 f6             	test   %r14,%r14
  403d33:	0f 84 be 00 00 00    	je     403df7 <_Z14move_to_cgroupPKci+0x177>
_ZNKSt5ctypeIcE5widenEc():
/usr/include/c++/10/bits/locale_facets.h:874
       *  @return  The converted character.
      */
      char_type
      widen(char __c) const
      {
	if (_M_widen_ok)
  403d39:	41 80 7e 38 00       	cmpb   $0x0,0x38(%r14)
  403d3e:	74 70                	je     403db0 <_Z14move_to_cgroupPKci+0x130>
_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_():
/usr/include/c++/10/ostream:682
  403d40:	41 0f be 76 43       	movsbl 0x43(%r14),%esi
  403d45:	48 89 ef             	mov    %rbp,%rdi
  403d48:	e8 03 e6 ff ff       	callq  402350 <_ZNSo3putEc@plt>
  403d4d:	48 89 c7             	mov    %rax,%rdi
_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_():
/usr/include/c++/10/ostream:704
   *  This manipulator simply calls the stream's @c flush() member function.
  */
  template<typename _CharT, typename _Traits>
    inline basic_ostream<_CharT, _Traits>&
    flush(basic_ostream<_CharT, _Traits>& __os)
    { return __os.flush(); }
  403d50:	e8 db e6 ff ff       	callq  402430 <_ZNSo5flushEv@plt>
_Z14move_to_cgroupPKci():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:296
	FILE *f = fopen(path, "w");
  403d55:	48 8d 35 b8 12 00 00 	lea    0x12b8(%rip),%rsi        # 405014 <_IO_stdin_used+0x14>
  403d5c:	4c 89 ef             	mov    %r13,%rdi
  403d5f:	e8 8c e7 ff ff       	callq  4024f0 <fopen@plt>
  403d64:	48 89 c5             	mov    %rax,%rbp
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:297
	if (f == NULL) {
  403d67:	48 85 c0             	test   %rax,%rax
  403d6a:	74 75                	je     403de1 <_Z14move_to_cgroupPKci+0x161>
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
  403d6c:	48 89 c7             	mov    %rax,%rdi
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  403d6f:	44 89 e1             	mov    %r12d,%ecx
  403d72:	31 c0                	xor    %eax,%eax
  403d74:	be 01 00 00 00       	mov    $0x1,%esi
  403d79:	48 8d 15 fa 12 00 00 	lea    0x12fa(%rip),%rdx        # 40507a <_IO_stdin_used+0x7a>
  403d80:	e8 5b e8 ff ff       	callq  4025e0 <__fprintf_chk@plt>
_Z14move_to_cgroupPKci():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:302
	fclose(f);
  403d85:	48 89 ef             	mov    %rbp,%rdi
  403d88:	e8 13 e7 ff ff       	callq  4024a0 <fclose@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:303
}
  403d8d:	48 8b 84 24 08 01 00 	mov    0x108(%rsp),%rax
  403d94:	00 
  403d95:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  403d9c:	00 00 
  403d9e:	75 5c                	jne    403dfc <_Z14move_to_cgroupPKci+0x17c>
  403da0:	48 81 c4 18 01 00 00 	add    $0x118,%rsp
  403da7:	5d                   	pop    %rbp
  403da8:	41 5c                	pop    %r12
  403daa:	41 5d                	pop    %r13
  403dac:	41 5e                	pop    %r14
  403dae:	c3                   	retq   
  403daf:	90                   	nop
_ZNKSt5ctypeIcE5widenEc():
/usr/include/c++/10/bits/locale_facets.h:876
	  return _M_widen[static_cast<unsigned char>(__c)];
	this->_M_widen_init();
  403db0:	4c 89 f7             	mov    %r14,%rdi
  403db3:	e8 28 e7 ff ff       	callq  4024e0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
/usr/include/c++/10/bits/locale_facets.h:877
	return this->do_widen(__c);
  403db8:	49 8b 06             	mov    (%r14),%rax
  403dbb:	be 0a 00 00 00       	mov    $0xa,%esi
  403dc0:	48 8d 15 69 08 00 00 	lea    0x869(%rip),%rdx        # 404630 <_ZNKSt5ctypeIcE8do_widenEc>
  403dc7:	48 8b 40 30          	mov    0x30(%rax),%rax
  403dcb:	48 39 d0             	cmp    %rdx,%rax
  403dce:	0f 84 71 ff ff ff    	je     403d45 <_Z14move_to_cgroupPKci+0xc5>
  403dd4:	4c 89 f7             	mov    %r14,%rdi
  403dd7:	ff d0                	callq  *%rax
_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_():
/usr/include/c++/10/ostream:682
    { return flush(__os.put(__os.widen('\n'))); }
  403dd9:	0f be f0             	movsbl %al,%esi
  403ddc:	e9 64 ff ff ff       	jmpq   403d45 <_Z14move_to_cgroupPKci+0xc5>
_Z14move_to_cgroupPKci():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:298
		perror("Failed to open cgroup.procs");
  403de1:	48 8d 3d cb 13 00 00 	lea    0x13cb(%rip),%rdi        # 4051b3 <_IO_stdin_used+0x1b3>
  403de8:	e8 63 e6 ff ff       	callq  402450 <perror@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:299
		exit(EXIT_FAILURE);
  403ded:	bf 01 00 00 00       	mov    $0x1,%edi
  403df2:	e8 19 e7 ff ff       	callq  402510 <exit@plt>
_ZSt13__check_facetISt5ctypeIcEERKT_PS3_():
/usr/include/c++/10/bits/basic_ios.h:50
	__throw_bad_cast();
  403df7:	e8 24 e7 ff ff       	callq  402520 <_ZSt16__throw_bad_castv@plt>
_Z14move_to_cgroupPKci():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:303
}
  403dfc:	e8 bf e6 ff ff       	callq  4024c0 <__stack_chk_fail@plt>
  403e01:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  403e08:	00 00 00 00 
  403e0c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000403e10 <_Z13get_taskstatsP9taskstats>:
_Z13get_taskstatsP9taskstats():
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:143

#define FIELD_AVAIL(len, field) ((len) >= (offsetof(struct taskstats, field) + sizeof(((struct taskstats*)0)->field)))

// Only master thread should call this function to get stats for the entire process
int get_taskstats(struct taskstats *ts){
  403e10:	f3 0f 1e fa          	endbr64 
  403e14:	41 55                	push   %r13
  403e16:	41 54                	push   %r12
  403e18:	49 89 fc             	mov    %rdi,%r12
  403e1b:	55                   	push   %rbp
  403e1c:	53                   	push   %rbx
  403e1d:	48 83 ec 28          	sub    $0x28,%rsp
  403e21:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  403e28:	00 00 
  403e2a:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  403e2f:	31 c0                	xor    %eax,%eax
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:144
  pid_t tgid = getpid();
  403e31:	e8 4a e7 ff ff       	callq  402580 <getpid@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:145
  if (tgid <= 0) {
  403e36:	85 c0                	test   %eax,%eax
  403e38:	0f 8e da 00 00 00    	jle    403f18 <_Z13get_taskstatsP9taskstats+0x108>
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:66
	int sd = socket(AF_NETLINK, SOCK_RAW, NETLINK_GENERIC);
  403e3e:	ba 10 00 00 00       	mov    $0x10,%edx
open_taskstats_socket():
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:66
  403e43:	be 03 00 00 00       	mov    $0x3,%esi
  403e48:	bf 10 00 00 00       	mov    $0x10,%edi
  403e4d:	41 89 c5             	mov    %eax,%r13d
  403e50:	e8 3b e5 ff ff       	callq  402390 <socket@plt>
  403e55:	89 c5                	mov    %eax,%ebp
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:67
	if (sd < 0)
  403e57:	85 c0                	test   %eax,%eax
  403e59:	0f 88 f1 00 00 00    	js     403f50 <_Z13get_taskstatsP9taskstats+0x140>
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:71
	addr.nl_family = AF_NETLINK;
  403e5f:	b8 10 00 00 00       	mov    $0x10,%eax
_Z13get_taskstatsP9taskstats():
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71
  403e64:	48 8d 5c 24 08       	lea    0x8(%rsp),%rbx
memset():
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71
  403e69:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  403e70:	00 00 
  403e72:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%rsp)
  403e79:	00 
open_taskstats_socket():
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:71
  403e7a:	66 89 44 24 08       	mov    %ax,0x8(%rsp)
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:72
	addr.nl_pid = getpid();
  403e7f:	e8 fc e6 ff ff       	callq  402580 <getpid@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:73
	if (bind(sd, (struct sockaddr *)&addr, sizeof(addr)) < 0) {
  403e84:	89 ef                	mov    %ebp,%edi
  403e86:	ba 0c 00 00 00       	mov    $0xc,%edx
  403e8b:	48 89 de             	mov    %rbx,%rsi
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:72
	addr.nl_pid = getpid();
  403e8e:	89 44 24 0c          	mov    %eax,0xc(%rsp)
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:73
	if (bind(sd, (struct sockaddr *)&addr, sizeof(addr)) < 0) {
  403e92:	e8 d9 e4 ff ff       	callq  402370 <bind@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:74
		close(sd);
  403e97:	89 ef                	mov    %ebp,%edi
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:73
	if (bind(sd, (struct sockaddr *)&addr, sizeof(addr)) < 0) {
  403e99:	85 c0                	test   %eax,%eax
  403e9b:	0f 88 aa 00 00 00    	js     403f4b <_Z13get_taskstatsP9taskstats+0x13b>
_Z13get_taskstatsP9taskstats():
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:151
		fprintf(stderr, "Invalid PID\n");
		return 1;
	}
  int sd = open_taskstats_socket();
  if (sd < 0) { perror("socket/bind"); return 1; }
  int family_id = get_family_id(sd);
  403ea1:	e8 9a f3 ff ff       	callq  403240 <_ZL13get_family_idi>
  403ea6:	89 c6                	mov    %eax,%esi
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:152
  if (family_id < 0) {
  403ea8:	85 c0                	test   %eax,%eax
  403eaa:	0f 88 b8 00 00 00    	js     403f68 <_Z13get_taskstatsP9taskstats+0x158>
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:158
		fprintf(stderr, "TASKSTATS family not found (need CONFIG_TASKSTATS + privileges)\n");
		close(sd);
		return 1;
	}
  size_t ts_len;
  if (request_taskstats_pid(sd, family_id, tgid, ts, &ts_len) < 0 || ts_len == 0) {
  403eb0:	49 89 d8             	mov    %rbx,%r8
  403eb3:	4c 89 e1             	mov    %r12,%rcx
  403eb6:	44 89 ea             	mov    %r13d,%edx
  403eb9:	89 ef                	mov    %ebp,%edi
  403ebb:	e8 b0 f0 ff ff       	callq  402f70 <_ZL21request_taskstats_pidiiiP9taskstatsPm>
  403ec0:	85 c0                	test   %eax,%eax
  403ec2:	78 08                	js     403ecc <_Z13get_taskstatsP9taskstats+0xbc>
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:158 (discriminator 3)
  403ec4:	48 83 7c 24 08 00    	cmpq   $0x0,0x8(%rsp)
  403eca:	75 74                	jne    403f40 <_Z13get_taskstatsP9taskstats+0x130>
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  403ecc:	48 8b 3d 4d 44 00 00 	mov    0x444d(%rip),%rdi        # 408320 <stderr@@GLIBC_2.2.5>
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  403ed3:	44 89 e9             	mov    %r13d,%ecx
  403ed6:	be 01 00 00 00       	mov    $0x1,%esi
  403edb:	31 c0                	xor    %eax,%eax
  403edd:	48 8d 15 9c 15 00 00 	lea    0x159c(%rip),%rdx        # 405480 <_IO_stdin_used+0x480>
  403ee4:	e8 f7 e6 ff ff       	callq  4025e0 <__fprintf_chk@plt>
_Z13get_taskstatsP9taskstats():
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:160
    fprintf(stderr, "Failed to obtain taskstats for %d\n", tgid);
    close(sd);
  403ee9:	89 ef                	mov    %ebp,%edi
  403eeb:	e8 50 e7 ff ff       	callq  402640 <close@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:161
    return 1;
  403ef0:	b8 01 00 00 00       	mov    $0x1,%eax
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:165
  }
  close(sd);
  return 0;
}
  403ef5:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  403efa:	64 48 2b 0c 25 28 00 	sub    %fs:0x28,%rcx
  403f01:	00 00 
  403f03:	0f 85 8a 00 00 00    	jne    403f93 <_Z13get_taskstatsP9taskstats+0x183>
  403f09:	48 83 c4 28          	add    $0x28,%rsp
  403f0d:	5b                   	pop    %rbx
  403f0e:	5d                   	pop    %rbp
  403f0f:	41 5c                	pop    %r12
  403f11:	41 5d                	pop    %r13
  403f13:	c3                   	retq   
  403f14:	0f 1f 40 00          	nopl   0x0(%rax)
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  403f18:	48 8b 3d 01 44 00 00 	mov    0x4401(%rip),%rdi        # 408320 <stderr@@GLIBC_2.2.5>
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  403f1f:	48 8d 15 a9 12 00 00 	lea    0x12a9(%rip),%rdx        # 4051cf <_IO_stdin_used+0x1cf>
  403f26:	be 01 00 00 00       	mov    $0x1,%esi
  403f2b:	31 c0                	xor    %eax,%eax
  403f2d:	e8 ae e6 ff ff       	callq  4025e0 <__fprintf_chk@plt>
_Z13get_taskstatsP9taskstats():
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:147
		return 1;
  403f32:	b8 01 00 00 00       	mov    $0x1,%eax
  403f37:	eb bc                	jmp    403ef5 <_Z13get_taskstatsP9taskstats+0xe5>
  403f39:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:163
  close(sd);
  403f40:	89 ef                	mov    %ebp,%edi
  403f42:	e8 f9 e6 ff ff       	callq  402640 <close@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:164
  return 0;
  403f47:	31 c0                	xor    %eax,%eax
  403f49:	eb aa                	jmp    403ef5 <_Z13get_taskstatsP9taskstats+0xe5>
open_taskstats_socket():
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:74
		close(sd);
  403f4b:	e8 f0 e6 ff ff       	callq  402640 <close@plt>
_Z13get_taskstatsP9taskstats():
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:150 (discriminator 1)
  if (sd < 0) { perror("socket/bind"); return 1; }
  403f50:	48 8d 3d 85 12 00 00 	lea    0x1285(%rip),%rdi        # 4051dc <_IO_stdin_used+0x1dc>
  403f57:	e8 f4 e4 ff ff       	callq  402450 <perror@plt>
  403f5c:	b8 01 00 00 00       	mov    $0x1,%eax
  403f61:	eb 92                	jmp    403ef5 <_Z13get_taskstatsP9taskstats+0xe5>
  403f63:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  403f68:	48 8b 3d b1 43 00 00 	mov    0x43b1(%rip),%rdi        # 408320 <stderr@@GLIBC_2.2.5>
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  403f6f:	48 8d 15 c2 14 00 00 	lea    0x14c2(%rip),%rdx        # 405438 <_IO_stdin_used+0x438>
  403f76:	be 01 00 00 00       	mov    $0x1,%esi
  403f7b:	31 c0                	xor    %eax,%eax
  403f7d:	e8 5e e6 ff ff       	callq  4025e0 <__fprintf_chk@plt>
_Z13get_taskstatsP9taskstats():
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:154
		close(sd);
  403f82:	89 ef                	mov    %ebp,%edi
  403f84:	e8 b7 e6 ff ff       	callq  402640 <close@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:155
		return 1;
  403f89:	b8 01 00 00 00       	mov    $0x1,%eax
  403f8e:	e9 62 ff ff ff       	jmpq   403ef5 <_Z13get_taskstatsP9taskstats+0xe5>
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:165
}
  403f93:	e8 28 e5 ff ff       	callq  4024c0 <__stack_chk_fail@plt>
  403f98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  403f9f:	00 

0000000000403fa0 <_Z15start_taskstatsv>:
_Z15start_taskstatsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:398
 * TASKSTATS-RELATED FUNCTIONS
 * start / stop / meausre taskstats counters
 * ========================================================================== */
#include "taskstats_helper.h"
struct taskstats ts_start, ts_end;
void start_taskstats(){
  403fa0:	f3 0f 1e fa          	endbr64 
  403fa4:	48 83 ec 08          	sub    $0x8,%rsp
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:399
  if (get_taskstats( &ts_start) == -1) {
  403fa8:	48 8d 3d f1 45 00 00 	lea    0x45f1(%rip),%rdi        # 4085a0 <ts_start>
  403faf:	e8 5c fe ff ff       	callq  403e10 <_Z13get_taskstatsP9taskstats>
  403fb4:	83 f8 ff             	cmp    $0xffffffff,%eax
  403fb7:	74 05                	je     403fbe <_Z15start_taskstatsv+0x1e>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:403
    perror("get_taskstats - start");
    exit(EXIT_FAILURE);
  }
}
  403fb9:	48 83 c4 08          	add    $0x8,%rsp
  403fbd:	c3                   	retq   
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:400
    perror("get_taskstats - start");
  403fbe:	48 8d 3d 23 12 00 00 	lea    0x1223(%rip),%rdi        # 4051e8 <_IO_stdin_used+0x1e8>
  403fc5:	e8 86 e4 ff ff       	callq  402450 <perror@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:401
    exit(EXIT_FAILURE);
  403fca:	bf 01 00 00 00       	mov    $0x1,%edi
  403fcf:	e8 3c e5 ff ff       	callq  402510 <exit@plt>
  403fd4:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  403fdb:	00 00 00 00 
  403fdf:	90                   	nop

0000000000403fe0 <_Z14stop_taskstatsv>:
_Z14stop_taskstatsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:404
void stop_taskstats(){
  403fe0:	f3 0f 1e fa          	endbr64 
  403fe4:	55                   	push   %rbp
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:405
  if (get_taskstats(&ts_end) == -1) {
  403fe5:	48 8d 3d f4 43 00 00 	lea    0x43f4(%rip),%rdi        # 4083e0 <ts_end>
  403fec:	e8 1f fe ff ff       	callq  403e10 <_Z13get_taskstatsP9taskstats>
  403ff1:	83 f8 ff             	cmp    $0xffffffff,%eax
  403ff4:	0f 84 83 01 00 00    	je     40417d <_Z14stop_taskstatsv+0x19d>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:409
    perror("get_taskstats - end");
    exit(EXIT_FAILURE);
  }
  FILE *f = fopen("taskstats.stats", "w");
  403ffa:	48 8d 35 13 10 00 00 	lea    0x1013(%rip),%rsi        # 405014 <_IO_stdin_used+0x14>
  404001:	48 8d 3d 0a 12 00 00 	lea    0x120a(%rip),%rdi        # 405212 <_IO_stdin_used+0x212>
  404008:	e8 e3 e4 ff ff       	callq  4024f0 <fopen@plt>
  40400d:	48 89 c5             	mov    %rax,%rbp
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:410
  if (f) {
  404010:	48 85 c0             	test   %rax,%rax
  404013:	0f 84 57 01 00 00    	je     404170 <_Z14stop_taskstatsv+0x190>
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  404019:	48 83 ec 08          	sub    $0x8,%rsp
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:411
        fprintf(f,
  40401d:	48 8b 05 64 45 00 00 	mov    0x4564(%rip),%rax        # 408588 <ts_end+0x1a8>
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  404024:	48 89 ef             	mov    %rbp,%rdi
_Z14stop_taskstatsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:411
  404027:	48 2b 05 1a 47 00 00 	sub    0x471a(%rip),%rax        # 408748 <ts_start+0x1a8>
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  40402e:	50                   	push   %rax
_Z14stop_taskstatsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:411
  40402f:	48 8b 05 fa 44 00 00 	mov    0x44fa(%rip),%rax        # 408530 <ts_end+0x150>
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  404036:	be 01 00 00 00       	mov    $0x1,%esi
  40403b:	48 8d 15 66 14 00 00 	lea    0x1466(%rip),%rdx        # 4054a8 <_IO_stdin_used+0x4a8>
_Z14stop_taskstatsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:411
  404042:	48 2b 05 a7 46 00 00 	sub    0x46a7(%rip),%rax        # 4086f0 <ts_start+0x150>
  404049:	48 8b 0d d0 43 00 00 	mov    0x43d0(%rip),%rcx        # 408420 <ts_end+0x40>
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  404050:	50                   	push   %rax
_Z14stop_taskstatsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:411
  404051:	48 8b 05 c0 43 00 00 	mov    0x43c0(%rip),%rax        # 408418 <ts_end+0x38>
  404058:	48 2b 05 79 45 00 00 	sub    0x4579(%rip),%rax        # 4085d8 <ts_start+0x38>
  40405f:	48 2b 0d 7a 45 00 00 	sub    0x457a(%rip),%rcx        # 4085e0 <ts_start+0x40>
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  404066:	50                   	push   %rax
_Z14stop_taskstatsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:411
  404067:	48 8b 05 9a 43 00 00 	mov    0x439a(%rip),%rax        # 408408 <ts_end+0x28>
  40406e:	48 2b 05 53 45 00 00 	sub    0x4553(%rip),%rax        # 4085c8 <ts_start+0x28>
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  404075:	50                   	push   %rax
_Z14stop_taskstatsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:411
  404076:	48 8b 05 0b 44 00 00 	mov    0x440b(%rip),%rax        # 408488 <ts_end+0xa8>
  40407d:	48 2b 05 c4 45 00 00 	sub    0x45c4(%rip),%rax        # 408648 <ts_start+0xa8>
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  404084:	50                   	push   %rax
_Z14stop_taskstatsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:411
  404085:	48 8b 05 04 44 00 00 	mov    0x4404(%rip),%rax        # 408490 <ts_end+0xb0>
  40408c:	48 2b 05 bd 45 00 00 	sub    0x45bd(%rip),%rax        # 408650 <ts_start+0xb0>
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  404093:	50                   	push   %rax
_Z14stop_taskstatsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:411
  404094:	48 8b 05 4d 44 00 00 	mov    0x444d(%rip),%rax        # 4084e8 <ts_end+0x108>
  40409b:	48 2b 05 06 46 00 00 	sub    0x4606(%rip),%rax        # 4086a8 <ts_start+0x108>
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  4040a2:	50                   	push   %rax
_Z14stop_taskstatsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:411
  4040a3:	48 8b 05 36 44 00 00 	mov    0x4436(%rip),%rax        # 4084e0 <ts_end+0x100>
  4040aa:	48 2b 05 ef 45 00 00 	sub    0x45ef(%rip),%rax        # 4086a0 <ts_start+0x100>
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  4040b1:	50                   	push   %rax
_Z14stop_taskstatsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:411
  4040b2:	48 8b 05 1f 44 00 00 	mov    0x441f(%rip),%rax        # 4084d8 <ts_end+0xf8>
  4040b9:	48 2b 05 d8 45 00 00 	sub    0x45d8(%rip),%rax        # 408698 <ts_start+0xf8>
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  4040c0:	50                   	push   %rax
_Z14stop_taskstatsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:411
  4040c1:	48 8b 05 08 44 00 00 	mov    0x4408(%rip),%rax        # 4084d0 <ts_end+0xf0>
  4040c8:	48 2b 05 c1 45 00 00 	sub    0x45c1(%rip),%rax        # 408690 <ts_start+0xf0>
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  4040cf:	50                   	push   %rax
_Z14stop_taskstatsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:411
  4040d0:	48 8b 05 f1 43 00 00 	mov    0x43f1(%rip),%rax        # 4084c8 <ts_end+0xe8>
  4040d7:	48 2b 05 aa 45 00 00 	sub    0x45aa(%rip),%rax        # 408688 <ts_start+0xe8>
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  4040de:	4c 8b 0d 9b 43 00 00 	mov    0x439b(%rip),%r9        # 408480 <ts_end+0xa0>
  4040e5:	4c 8b 05 8c 43 00 00 	mov    0x438c(%rip),%r8        # 408478 <ts_end+0x98>
  4040ec:	4c 2b 0d 4d 45 00 00 	sub    0x454d(%rip),%r9        # 408640 <ts_start+0xa0>
  4040f3:	50                   	push   %rax
_Z14stop_taskstatsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:411
  4040f4:	48 8b 05 c5 43 00 00 	mov    0x43c5(%rip),%rax        # 4084c0 <ts_end+0xe0>
  4040fb:	48 2b 05 7e 45 00 00 	sub    0x457e(%rip),%rax        # 408680 <ts_start+0xe0>
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  404102:	50                   	push   %rax
_Z14stop_taskstatsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:411
  404103:	48 8b 05 ae 43 00 00 	mov    0x43ae(%rip),%rax        # 4084b8 <ts_end+0xd8>
  40410a:	48 2b 05 67 45 00 00 	sub    0x4567(%rip),%rax        # 408678 <ts_start+0xd8>
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  404111:	4c 2b 05 20 45 00 00 	sub    0x4520(%rip),%r8        # 408638 <ts_start+0x98>
  404118:	50                   	push   %rax
_Z14stop_taskstatsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:411
  404119:	48 8b 05 f0 43 00 00 	mov    0x43f0(%rip),%rax        # 408510 <ts_end+0x130>
  404120:	48 2b 05 a9 45 00 00 	sub    0x45a9(%rip),%rax        # 4086d0 <ts_start+0x130>
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  404127:	50                   	push   %rax
_Z14stop_taskstatsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:411
  404128:	48 8b 05 d9 43 00 00 	mov    0x43d9(%rip),%rax        # 408508 <ts_end+0x128>
  40412f:	48 2b 05 92 45 00 00 	sub    0x4592(%rip),%rax        # 4086c8 <ts_start+0x128>
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  404136:	50                   	push   %rax
_Z14stop_taskstatsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:411
  404137:	48 8b 05 c2 43 00 00 	mov    0x43c2(%rip),%rax        # 408500 <ts_end+0x120>
  40413e:	48 2b 05 7b 45 00 00 	sub    0x457b(%rip),%rax        # 4086c0 <ts_start+0x120>
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  404145:	50                   	push   %rax
_Z14stop_taskstatsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:411
  404146:	8b 05 1c 43 00 00    	mov    0x431c(%rip),%eax        # 408468 <ts_end+0x88>
  40414c:	2b 05 d6 44 00 00    	sub    0x44d6(%rip),%eax        # 408628 <ts_start+0x88>
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  404152:	50                   	push   %rax
  404153:	31 c0                	xor    %eax,%eax
  404155:	e8 86 e4 ff ff       	callq  4025e0 <__fprintf_chk@plt>
_Z14stop_taskstatsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:453
          ts_end.blkio_delay_total - ts_start.blkio_delay_total,
          ts_end.swapin_delay_total - ts_start.swapin_delay_total,
          ts_end.thrashing_delay_total - ts_start.thrashing_delay_total,
          ts_end.irq_delay_total - ts_start.irq_delay_total
        );
        fclose(f);
  40415a:	48 81 c4 90 00 00 00 	add    $0x90,%rsp
  404161:	48 89 ef             	mov    %rbp,%rdi
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:455
      } else perror("Failed to open taskstats.stats for writing");
}
  404164:	5d                   	pop    %rbp
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:453
        fclose(f);
  404165:	e9 36 e3 ff ff       	jmpq   4024a0 <fclose@plt>
  40416a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:454
      } else perror("Failed to open taskstats.stats for writing");
  404170:	48 8d 3d c1 14 00 00 	lea    0x14c1(%rip),%rdi        # 405638 <_IO_stdin_used+0x638>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:455
}
  404177:	5d                   	pop    %rbp
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:454
      } else perror("Failed to open taskstats.stats for writing");
  404178:	e9 d3 e2 ff ff       	jmpq   402450 <perror@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:406
    perror("get_taskstats - end");
  40417d:	48 8d 3d 7a 10 00 00 	lea    0x107a(%rip),%rdi        # 4051fe <_IO_stdin_used+0x1fe>
  404184:	e8 c7 e2 ff ff       	callq  402450 <perror@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:407
    exit(EXIT_FAILURE);
  404189:	bf 01 00 00 00       	mov    $0x1,%edi
  40418e:	e8 7d e3 ff ff       	callq  402510 <exit@plt>
  404193:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40419a:	00 00 00 00 
  40419e:	66 90                	xchg   %ax,%ax

00000000004041a0 <_Z15process_madviseiPKvmim>:
_Z15process_madviseiPKvmim():
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:34
int process_madvise(int pidfd, const void *addr, size_t length, int advice, unsigned long flags) {
  4041a0:	f3 0f 1e fa          	endbr64 
  4041a4:	41 54                	push   %r12
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:35
    return syscall(SYS_process_madvise, pidfd, addr, length, advice, flags);
  4041a6:	4d 89 c1             	mov    %r8,%r9
  4041a9:	31 c0                	xor    %eax,%eax
  4041ab:	41 89 c8             	mov    %ecx,%r8d
  4041ae:	48 89 d1             	mov    %rdx,%rcx
  4041b1:	48 89 f2             	mov    %rsi,%rdx
  4041b4:	89 fe                	mov    %edi,%esi
  4041b6:	bf b8 01 00 00       	mov    $0x1b8,%edi
  4041bb:	e8 a0 e1 ff ff       	callq  402360 <syscall@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:36
}
  4041c0:	41 5c                	pop    %r12
  4041c2:	c3                   	retq   
  4041c3:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4041ca:	00 00 00 00 
  4041ce:	66 90                	xchg   %ax,%ax

00000000004041d0 <_Z10pidfd_openij>:
_Z10pidfd_openij():
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:37
int pidfd_open(pid_t pid, unsigned int flags) {
  4041d0:	f3 0f 1e fa          	endbr64 
  4041d4:	48 83 ec 08          	sub    $0x8,%rsp
  4041d8:	89 f2                	mov    %esi,%edx
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:38
    return syscall(SYS_pidfd_open, pid, flags);
  4041da:	31 c0                	xor    %eax,%eax
  4041dc:	89 fe                	mov    %edi,%esi
  4041de:	bf b2 01 00 00       	mov    $0x1b2,%edi
  4041e3:	e8 78 e1 ff ff       	callq  402360 <syscall@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:39
}
  4041e8:	48 83 c4 08          	add    $0x8,%rsp
  4041ec:	c3                   	retq   
  4041ed:	0f 1f 00             	nopl   (%rax)

00000000004041f0 <_Z11clear_queuePFvR5stateE>:
_Z11clear_queuePFvR5stateE():
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:164
{
  4041f0:	f3 0f 1e fa          	endbr64 
  4041f4:	55                   	push   %rbp
  4041f5:	48 89 fd             	mov    %rdi,%rbp
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:165
  pagein_queue(curr_queue);
  4041f8:	48 8d 3d 91 41 00 00 	lea    0x4191(%rip),%rdi        # 408390 <curr_queue>
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:164
{
  4041ff:	53                   	push   %rbx
  404200:	48 83 ec 08          	sub    $0x8,%rsp
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:165
  pagein_queue(curr_queue);
  404204:	e8 57 09 00 00       	callq  404b60 <_Z12pagein_queueRSt6vectorI5stateSaIS0_EE>
_ZN9__gnu_cxx17__normal_iteratorIP5stateSt6vectorIS1_SaIS1_EEEC4ERKS2_():
/usr/include/c++/10/bits/stl_iterator.h:996
      _GLIBCXX_CONSTEXPR __normal_iterator() _GLIBCXX_NOEXCEPT
      : _M_current(_Iterator()) { }

      explicit _GLIBCXX20_CONSTEXPR
      __normal_iterator(const _Iterator& __i) _GLIBCXX_NOEXCEPT
      : _M_current(__i) { }
  404209:	48 8b 1d 60 41 00 00 	mov    0x4160(%rip),%rbx        # 408370 <shipped_queue>
_Z12resume_queueRSt6vectorI5stateSaIS0_EEPFvRS0_E():
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:157
  for (auto rq_it = queue.begin(); rq_it != queue.end(); ++rq_it)
  404210:	48 3b 1d 61 41 00 00 	cmp    0x4161(%rip),%rbx        # 408378 <shipped_queue+0x8>
  404217:	74 77                	je     404290 <_Z11clear_queuePFvR5stateE+0xa0>
  404219:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:159
    func(*rq_it);
  404220:	48 89 df             	mov    %rbx,%rdi
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:157
  for (auto rq_it = queue.begin(); rq_it != queue.end(); ++rq_it)
  404223:	48 83 c3 18          	add    $0x18,%rbx
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:159
    func(*rq_it);
  404227:	ff d5                	callq  *%rbp
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:157
  for (auto rq_it = queue.begin(); rq_it != queue.end(); ++rq_it)
  404229:	48 3b 1d 48 41 00 00 	cmp    0x4148(%rip),%rbx        # 408378 <shipped_queue+0x8>
  404230:	48 89 d8             	mov    %rbx,%rax
  404233:	75 eb                	jne    404220 <_Z11clear_queuePFvR5stateE+0x30>
_ZN9__gnu_cxx17__normal_iteratorIP5stateSt6vectorIS1_SaIS1_EEEC4ERKS2_():
/usr/include/c++/10/bits/stl_iterator.h:996
  404235:	48 8b 1d 54 41 00 00 	mov    0x4154(%rip),%rbx        # 408390 <curr_queue>
_Z12resume_queueRSt6vectorI5stateSaIS0_EEPFvRS0_E():
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:157
  40423c:	48 3b 1d 55 41 00 00 	cmp    0x4155(%rip),%rbx        # 408398 <curr_queue+0x8>
  404243:	74 2f                	je     404274 <_Z11clear_queuePFvR5stateE+0x84>
  404245:	0f 1f 00             	nopl   (%rax)
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:159
    func(*rq_it);
  404248:	48 89 df             	mov    %rbx,%rdi
_ZN9__gnu_cxx17__normal_iteratorIP5stateSt6vectorIS1_SaIS1_EEEppEv():
/usr/include/c++/10/bits/stl_iterator.h:1022

      _GLIBCXX20_CONSTEXPR
      __normal_iterator&
      operator++() _GLIBCXX_NOEXCEPT
      {
	++_M_current;
  40424b:	48 83 c3 18          	add    $0x18,%rbx
_Z12resume_queueRSt6vectorI5stateSaIS0_EEPFvRS0_E():
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:159
  40424f:	ff d5                	callq  *%rbp
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:157
  for (auto rq_it = queue.begin(); rq_it != queue.end(); ++rq_it)
  404251:	48 39 1d 40 41 00 00 	cmp    %rbx,0x4140(%rip)        # 408398 <curr_queue+0x8>
  404258:	75 ee                	jne    404248 <_Z11clear_queuePFvR5stateE+0x58>
_ZNSt6vectorI5stateSaIS0_EE5clearEv():
/usr/include/c++/10/bits/stl_vector.h:1499
       *  pointed-to memory is not touched in any way.  Managing the pointer is
       *  the user's responsibility.
       */
      void
      clear() _GLIBCXX_NOEXCEPT
      { _M_erase_at_end(this->_M_impl._M_start); }
  40425a:	48 8b 15 2f 41 00 00 	mov    0x412f(%rip),%rdx        # 408390 <curr_queue>
_ZNSt6vectorI5stateSaIS0_EE15_M_erase_at_endEPS0_():
/usr/include/c++/10/bits/stl_vector.h:1794
      // Called by erase(q1,q2), clear(), resize(), _M_fill_assign,
      // _M_assign_aux.
      void
      _M_erase_at_end(pointer __pos) _GLIBCXX_NOEXCEPT
      {
	if (size_type __n = this->_M_impl._M_finish - __pos)
  404261:	48 8b 05 10 41 00 00 	mov    0x4110(%rip),%rax        # 408378 <shipped_queue+0x8>
  404268:	48 39 da             	cmp    %rbx,%rdx
  40426b:	74 07                	je     404274 <_Z11clear_queuePFvR5stateE+0x84>
/usr/include/c++/10/bits/stl_vector.h:1798
	  {
	    std::_Destroy(__pos, this->_M_impl._M_finish,
			  _M_get_Tp_allocator());
	    this->_M_impl._M_finish = __pos;
  40426d:	48 89 15 24 41 00 00 	mov    %rdx,0x4124(%rip)        # 408398 <curr_queue+0x8>
_ZNSt6vectorI5stateSaIS0_EE5clearEv():
/usr/include/c++/10/bits/stl_vector.h:1499
      { _M_erase_at_end(this->_M_impl._M_start); }
  404274:	48 8b 15 f5 40 00 00 	mov    0x40f5(%rip),%rdx        # 408370 <shipped_queue>
_ZNSt6vectorI5stateSaIS0_EE15_M_erase_at_endEPS0_():
/usr/include/c++/10/bits/stl_vector.h:1794
	if (size_type __n = this->_M_impl._M_finish - __pos)
  40427b:	48 39 c2             	cmp    %rax,%rdx
  40427e:	74 07                	je     404287 <_Z11clear_queuePFvR5stateE+0x97>
/usr/include/c++/10/bits/stl_vector.h:1798
	    this->_M_impl._M_finish = __pos;
  404280:	48 89 15 f1 40 00 00 	mov    %rdx,0x40f1(%rip)        # 408378 <shipped_queue+0x8>
_Z11clear_queuePFvR5stateE():
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:170
}
  404287:	48 83 c4 08          	add    $0x8,%rsp
  40428b:	5b                   	pop    %rbx
  40428c:	5d                   	pop    %rbp
  40428d:	c3                   	retq   
  40428e:	66 90                	xchg   %ax,%ax
_ZN9__gnu_cxx17__normal_iteratorIP5stateSt6vectorIS1_SaIS1_EEEC4ERKS2_():
/usr/include/c++/10/bits/stl_iterator.h:996
      : _M_current(__i) { }
  404290:	48 8b 1d f9 40 00 00 	mov    0x40f9(%rip),%rbx        # 408390 <curr_queue>
_Z12resume_queueRSt6vectorI5stateSaIS0_EEPFvRS0_E():
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:157
  for (auto rq_it = queue.begin(); rq_it != queue.end(); ++rq_it)
  404297:	48 3b 1d fa 40 00 00 	cmp    0x40fa(%rip),%rbx        # 408398 <curr_queue+0x8>
  40429e:	75 a8                	jne    404248 <_Z11clear_queuePFvR5stateE+0x58>
  4042a0:	eb e5                	jmp    404287 <_Z11clear_queuePFvR5stateE+0x97>
_Z11clear_queuePFvR5stateE():
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:157
  4042a2:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4042a9:	00 00 00 00 
  4042ad:	0f 1f 00             	nopl   (%rax)

00000000004042b0 <_Z18process_pagefaultsPFvR5stateE>:
_Z18process_pagefaultsPFvR5stateE():
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:173
{
  4042b0:	f3 0f 1e fa          	endbr64 
  4042b4:	55                   	push   %rbp
  4042b5:	48 89 fd             	mov    %rdi,%rbp
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:174
  pagein_queue(curr_queue);  
  4042b8:	48 8d 3d d1 40 00 00 	lea    0x40d1(%rip),%rdi        # 408390 <curr_queue>
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:173
{
  4042bf:	53                   	push   %rbx
  4042c0:	48 83 ec 08          	sub    $0x8,%rsp
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:174
  pagein_queue(curr_queue);  
  4042c4:	e8 97 08 00 00       	callq  404b60 <_Z12pagein_queueRSt6vectorI5stateSaIS0_EE>
_ZNSt12_Vector_baseI5stateSaIS0_EE17_Vector_impl_data12_M_copy_dataERKS3_():
/usr/include/c++/10/bits/stl_vector.h:113
	  _M_end_of_storage = __x._M_end_of_storage;
  4042c9:	48 8b 05 90 40 00 00 	mov    0x4090(%rip),%rax        # 408360 <ready_queue+0x10>
  4042d0:	48 8b 0d a9 40 00 00 	mov    0x40a9(%rip),%rcx        # 408380 <shipped_queue+0x10>
/usr/include/c++/10/bits/stl_vector.h:112
	  _M_finish = __x._M_finish;
  4042d7:	48 8b 15 9a 40 00 00 	mov    0x409a(%rip),%rdx        # 408378 <shipped_queue+0x8>
/usr/include/c++/10/bits/stl_vector.h:111
	  _M_start = __x._M_start;
  4042de:	48 8b 1d 8b 40 00 00 	mov    0x408b(%rip),%rbx        # 408370 <shipped_queue>
/usr/include/c++/10/bits/stl_vector.h:113
	  _M_end_of_storage = __x._M_end_of_storage;
  4042e5:	48 89 0d 74 40 00 00 	mov    %rcx,0x4074(%rip)        # 408360 <ready_queue+0x10>
  4042ec:	48 8b 0d ad 40 00 00 	mov    0x40ad(%rip),%rcx        # 4083a0 <curr_queue+0x10>
  4042f3:	48 89 05 a6 40 00 00 	mov    %rax,0x40a6(%rip)        # 4083a0 <curr_queue+0x10>
_ZNKSt6vectorI5stateSaIS0_EE4sizeEv():
/usr/include/c++/10/bits/stl_vector.h:919
      { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
  4042fa:	48 89 d0             	mov    %rdx,%rax
_ZNSt12_Vector_baseI5stateSaIS0_EE17_Vector_impl_data12_M_copy_dataERKS3_():
/usr/include/c++/10/bits/stl_vector.h:111
	  _M_start = __x._M_start;
  4042fd:	66 0f 6f 05 4b 40 00 	movdqa 0x404b(%rip),%xmm0        # 408350 <ready_queue>
  404304:	00 
_ZNKSt6vectorI5stateSaIS0_EE4sizeEv():
/usr/include/c++/10/bits/stl_vector.h:919
      { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
  404305:	48 29 d8             	sub    %rbx,%rax
_ZNSt12_Vector_baseI5stateSaIS0_EE17_Vector_impl_data12_M_copy_dataERKS3_():
/usr/include/c++/10/bits/stl_vector.h:111
	  _M_start = __x._M_start;
  404308:	66 0f 6f 0d 60 40 00 	movdqa 0x4060(%rip),%xmm1        # 408370 <shipped_queue>
  40430f:	00 
  404310:	66 0f 6f 15 78 40 00 	movdqa 0x4078(%rip),%xmm2        # 408390 <curr_queue>
  404317:	00 
/usr/include/c++/10/bits/stl_vector.h:113
	  _M_end_of_storage = __x._M_end_of_storage;
  404318:	48 89 0d 61 40 00 00 	mov    %rcx,0x4061(%rip)        # 408380 <shipped_queue+0x10>
_ZNKSt6vectorI5stateSaIS0_EE4sizeEv():
/usr/include/c++/10/bits/stl_vector.h:919
      { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
  40431f:	48 c1 f8 03          	sar    $0x3,%rax
_ZNSt12_Vector_baseI5stateSaIS0_EE17_Vector_impl_data12_M_copy_dataERKS3_():
/usr/include/c++/10/bits/stl_vector.h:111
	  _M_start = __x._M_start;
  404323:	0f 29 05 66 40 00 00 	movaps %xmm0,0x4066(%rip)        # 408390 <curr_queue>
_ZNKSt6vectorI5stateSaIS0_EE4sizeEv():
/usr/include/c++/10/bits/stl_vector.h:919
      { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
  40432a:	48 b9 ab aa aa aa aa 	movabs $0xaaaaaaaaaaaaaaab,%rcx
  404331:	aa aa aa 
  404334:	48 0f af c1          	imul   %rcx,%rax
_Z18process_pagefaultsPFvR5stateE():
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:177
  if (ready_queue.size() != pagefault_queue_size)
  404338:	48 39 05 79 3e 00 00 	cmp    %rax,0x3e79(%rip)        # 4081b8 <pagefault_queue_size>
_ZNSt12_Vector_baseI5stateSaIS0_EE17_Vector_impl_data12_M_copy_dataERKS3_():
/usr/include/c++/10/bits/stl_vector.h:111
	  _M_start = __x._M_start;
  40433f:	0f 29 0d 0a 40 00 00 	movaps %xmm1,0x400a(%rip)        # 408350 <ready_queue>
  404346:	0f 29 15 23 40 00 00 	movaps %xmm2,0x4023(%rip)        # 408370 <shipped_queue>
_Z18process_pagefaultsPFvR5stateE():
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:177
  40434d:	75 2e                	jne    40437d <_Z18process_pagefaultsPFvR5stateE+0xcd>
_Z12resume_queueRSt6vectorI5stateSaIS0_EEPFvRS0_E():
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:157
  for (auto rq_it = queue.begin(); rq_it != queue.end(); ++rq_it)
  40434f:	48 39 d3             	cmp    %rdx,%rbx
  404352:	74 29                	je     40437d <_Z18process_pagefaultsPFvR5stateE+0xcd>
  404354:	0f 1f 40 00          	nopl   0x0(%rax)
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:159
    func(*rq_it);
  404358:	48 89 df             	mov    %rbx,%rdi
_ZN9__gnu_cxx17__normal_iteratorIP5stateSt6vectorIS1_SaIS1_EEEppEv():
/usr/include/c++/10/bits/stl_iterator.h:1022
	++_M_current;
  40435b:	48 83 c3 18          	add    $0x18,%rbx
_Z12resume_queueRSt6vectorI5stateSaIS0_EEPFvRS0_E():
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:159
  40435f:	ff d5                	callq  *%rbp
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:157
  for (auto rq_it = queue.begin(); rq_it != queue.end(); ++rq_it)
  404361:	48 39 1d f0 3f 00 00 	cmp    %rbx,0x3ff0(%rip)        # 408358 <ready_queue+0x8>
  404368:	75 ee                	jne    404358 <_Z18process_pagefaultsPFvR5stateE+0xa8>
_ZNSt6vectorI5stateSaIS0_EE5clearEv():
/usr/include/c++/10/bits/stl_vector.h:1499
      { _M_erase_at_end(this->_M_impl._M_start); }
  40436a:	48 8b 05 df 3f 00 00 	mov    0x3fdf(%rip),%rax        # 408350 <ready_queue>
_ZNSt6vectorI5stateSaIS0_EE15_M_erase_at_endEPS0_():
/usr/include/c++/10/bits/stl_vector.h:1794
	if (size_type __n = this->_M_impl._M_finish - __pos)
  404371:	48 39 d8             	cmp    %rbx,%rax
  404374:	74 07                	je     40437d <_Z18process_pagefaultsPFvR5stateE+0xcd>
/usr/include/c++/10/bits/stl_vector.h:1798
	    this->_M_impl._M_finish = __pos;
  404376:	48 89 05 db 3f 00 00 	mov    %rax,0x3fdb(%rip)        # 408358 <ready_queue+0x8>
_Z18process_pagefaultsPFvR5stateE():
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:181
}
  40437d:	48 83 c4 08          	add    $0x8,%rsp
  404381:	5b                   	pop    %rbx
  404382:	5d                   	pop    %rbp
  404383:	c3                   	retq   
  404384:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40438b:	00 00 00 00 
  40438f:	90                   	nop

0000000000404390 <_Z11HPCC_startsx>:
_Z11HPCC_startsx():
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:189
{
  404390:	f3 0f 1e fa          	endbr64 
  404394:	48 81 ec 18 02 00 00 	sub    $0x218,%rsp
  40439b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4043a2:	00 00 
  4043a4:	48 89 84 24 08 02 00 	mov    %rax,0x208(%rsp)
  4043ab:	00 
  4043ac:	31 c0                	xor    %eax,%eax
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:194
  while (n < 0) n += PERIOD;
  4043ae:	48 85 ff             	test   %rdi,%rdi
  4043b1:	0f 89 68 01 00 00    	jns    40451f <_Z11HPCC_startsx+0x18f>
  4043b7:	49 b9 49 92 24 49 92 	movabs $0x1249249249249249,%r9
  4043be:	24 49 12 
  4043c1:	49 01 f9             	add    %rdi,%r9
  4043c4:	0f 89 e0 01 00 00    	jns    4045aa <_Z11HPCC_startsx+0x21a>
  4043ca:	49 b9 92 24 49 92 24 	movabs $0x2492492492492492,%r9
  4043d1:	49 92 24 
  4043d4:	49 01 f9             	add    %rdi,%r9
  4043d7:	0f 89 cd 01 00 00    	jns    4045aa <_Z11HPCC_startsx+0x21a>
  4043dd:	49 b9 db b6 6d db b6 	movabs $0x36db6db6db6db6db,%r9
  4043e4:	6d db 36 
  4043e7:	49 01 f9             	add    %rdi,%r9
  4043ea:	0f 89 ba 01 00 00    	jns    4045aa <_Z11HPCC_startsx+0x21a>
  4043f0:	49 b9 24 49 92 24 49 	movabs $0x4924924924924924,%r9
  4043f7:	92 24 49 
  4043fa:	49 01 f9             	add    %rdi,%r9
  4043fd:	0f 89 a7 01 00 00    	jns    4045aa <_Z11HPCC_startsx+0x21a>
  404403:	49 b9 6d db b6 6d db 	movabs $0x5b6db6db6db6db6d,%r9
  40440a:	b6 6d 5b 
  40440d:	49 01 f9             	add    %rdi,%r9
  404410:	0f 89 94 01 00 00    	jns    4045aa <_Z11HPCC_startsx+0x21a>
  404416:	49 b9 b6 6d db b6 6d 	movabs $0x6db6db6db6db6db6,%r9
  40441d:	db b6 6d 
  404420:	49 01 f9             	add    %rdi,%r9
  404423:	0f 89 81 01 00 00    	jns    4045aa <_Z11HPCC_startsx+0x21a>
  404429:	49 b9 ff ff ff ff ff 	movabs $0x7fffffffffffffff,%r9
  404430:	ff ff 7f 
  404433:	49 01 f9             	add    %rdi,%r9
  404436:	49 83 f9 ff          	cmp    $0xffffffffffffffff,%r9
  40443a:	0f 85 6a 01 00 00    	jne    4045aa <_Z11HPCC_startsx+0x21a>
  404440:	49 b9 48 92 24 49 92 	movabs $0x1249249249249248,%r9
  404447:	24 49 12 
  40444a:	48 89 e1             	mov    %rsp,%rcx
  40444d:	4c 8d 84 24 00 02 00 	lea    0x200(%rsp),%r8
  404454:	00 
  404455:	b8 01 00 00 00       	mov    $0x1,%eax
  40445a:	48 89 ce             	mov    %rcx,%rsi
  40445d:	0f 1f 00             	nopl   (%rax)
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:201
    temp = (temp << 1) ^ ((s64Int) temp < 0 ? POLY : 0);
  404460:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:200
    m2[i] = temp;
  404464:	48 89 06             	mov    %rax,(%rsi)
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:201
    temp = (temp << 1) ^ ((s64Int) temp < 0 ? POLY : 0);
  404467:	48 89 d7             	mov    %rdx,%rdi
  40446a:	48 83 f7 07          	xor    $0x7,%rdi
  40446e:	48 85 c0             	test   %rax,%rax
  404471:	48 0f 48 d7          	cmovs  %rdi,%rdx
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:202
    temp = (temp << 1) ^ ((s64Int) temp < 0 ? POLY : 0);
  404475:	48 8d 04 12          	lea    (%rdx,%rdx,1),%rax
  404479:	48 89 c7             	mov    %rax,%rdi
  40447c:	48 83 f7 07          	xor    $0x7,%rdi
  404480:	48 85 d2             	test   %rdx,%rdx
  404483:	48 0f 48 c7          	cmovs  %rdi,%rax
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:199
  for (i=0; i<64; i++) {
  404487:	48 83 c6 08          	add    $0x8,%rsi
  40448b:	4c 39 c6             	cmp    %r8,%rsi
  40448e:	75 d0                	jne    404460 <_Z11HPCC_startsx+0xd0>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:205
  for (i=62; i>=0; i--)
  404490:	be 3e 00 00 00       	mov    $0x3e,%esi
  404495:	eb 12                	jmp    4044a9 <_Z11HPCC_startsx+0x119>
  404497:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40449e:	00 00 
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:205 (discriminator 2)
  4044a0:	83 ee 01             	sub    $0x1,%esi
  4044a3:	0f 82 15 01 00 00    	jb     4045be <_Z11HPCC_startsx+0x22e>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:206
    if ((n >> i) & 1)
  4044a9:	49 0f a3 f1          	bt     %rsi,%r9
  4044ad:	73 f1                	jae    4044a0 <_Z11HPCC_startsx+0x110>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:210
  while (i > 0) {
  4044af:	41 b8 02 00 00 00    	mov    $0x2,%r8d
  4044b5:	85 f6                	test   %esi,%esi
  4044b7:	74 44                	je     4044fd <_Z11HPCC_startsx+0x16d>
  4044b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  4044c0:	31 c0                	xor    %eax,%eax
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:211
    temp = 0;
  4044c2:	31 d2                	xor    %edx,%edx
  4044c4:	0f 1f 40 00          	nopl   0x0(%rax)
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:213
      if ((ran >> j) & 1)
  4044c8:	49 0f a3 c0          	bt     %rax,%r8
  4044cc:	73 04                	jae    4044d2 <_Z11HPCC_startsx+0x142>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:214
        temp ^= m2[j];
  4044ce:	48 33 14 c1          	xor    (%rcx,%rax,8),%rdx
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:212
    for (j=0; j<64; j++)
  4044d2:	48 83 c0 01          	add    $0x1,%rax
  4044d6:	48 83 f8 40          	cmp    $0x40,%rax
  4044da:	75 ec                	jne    4044c8 <_Z11HPCC_startsx+0x138>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:216
    i -= 1;
  4044dc:	83 ee 01             	sub    $0x1,%esi
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:217
    if ((n >> i) & 1)
  4044df:	49 89 d0             	mov    %rdx,%r8
  4044e2:	49 0f a3 f1          	bt     %rsi,%r9
  4044e6:	73 11                	jae    4044f9 <_Z11HPCC_startsx+0x169>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:218
      ran = (ran << 1) ^ ((s64Int) ran < 0 ? POLY : 0);
  4044e8:	4d 01 c0             	add    %r8,%r8
  4044eb:	4c 89 c0             	mov    %r8,%rax
  4044ee:	48 83 f0 07          	xor    $0x7,%rax
  4044f2:	48 85 d2             	test   %rdx,%rdx
  4044f5:	4c 0f 48 c0          	cmovs  %rax,%r8
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:210
  while (i > 0) {
  4044f9:	85 f6                	test   %esi,%esi
  4044fb:	75 c3                	jne    4044c0 <_Z11HPCC_startsx+0x130>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:222
}
  4044fd:	48 8b 84 24 08 02 00 	mov    0x208(%rsp),%rax
  404504:	00 
  404505:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  40450c:	00 00 
  40450e:	0f 85 b5 00 00 00    	jne    4045c9 <_Z11HPCC_startsx+0x239>
  404514:	4c 89 c0             	mov    %r8,%rax
  404517:	48 81 c4 18 02 00 00 	add    $0x218,%rsp
  40451e:	c3                   	retq   
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:195
  while (n > PERIOD) n -= PERIOD;
  40451f:	48 b8 49 92 24 49 92 	movabs $0x1249249249249249,%rax
  404526:	24 49 12 
  404529:	48 39 c7             	cmp    %rax,%rdi
  40452c:	7e 79                	jle    4045a7 <_Z11HPCC_startsx+0x217>
  40452e:	49 89 f9             	mov    %rdi,%r9
  404531:	49 29 c1             	sub    %rax,%r9
  404534:	49 39 c1             	cmp    %rax,%r9
  404537:	0f 8e 0d ff ff ff    	jle    40444a <_Z11HPCC_startsx+0xba>
  40453d:	49 b9 6e db b6 6d db 	movabs $0xdb6db6db6db6db6e,%r9
  404544:	b6 6d db 
  404547:	49 01 f9             	add    %rdi,%r9
  40454a:	49 39 c1             	cmp    %rax,%r9
  40454d:	0f 8e f7 fe ff ff    	jle    40444a <_Z11HPCC_startsx+0xba>
  404553:	49 b9 25 49 92 24 49 	movabs $0xc924924924924925,%r9
  40455a:	92 24 c9 
  40455d:	49 01 f9             	add    %rdi,%r9
  404560:	49 39 c1             	cmp    %rax,%r9
  404563:	0f 8e e1 fe ff ff    	jle    40444a <_Z11HPCC_startsx+0xba>
  404569:	49 b9 dc b6 6d db b6 	movabs $0xb6db6db6db6db6dc,%r9
  404570:	6d db b6 
  404573:	49 01 f9             	add    %rdi,%r9
  404576:	49 39 c1             	cmp    %rax,%r9
  404579:	0f 8e cb fe ff ff    	jle    40444a <_Z11HPCC_startsx+0xba>
  40457f:	49 b9 93 24 49 92 24 	movabs $0xa492492492492493,%r9
  404586:	49 92 a4 
  404589:	49 01 f9             	add    %rdi,%r9
  40458c:	49 39 c1             	cmp    %rax,%r9
  40458f:	0f 8e b5 fe ff ff    	jle    40444a <_Z11HPCC_startsx+0xba>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:195 (discriminator 1)
  404595:	49 b9 4a 92 24 49 92 	movabs $0x924924924924924a,%r9
  40459c:	24 49 92 
  40459f:	49 01 f9             	add    %rdi,%r9
  4045a2:	e9 a3 fe ff ff       	jmpq   40444a <_Z11HPCC_startsx+0xba>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:195
  4045a7:	49 89 f9             	mov    %rdi,%r9
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:196
  if (n == 0) return 0x1;
  4045aa:	4d 85 c9             	test   %r9,%r9
  4045ad:	0f 85 97 fe ff ff    	jne    40444a <_Z11HPCC_startsx+0xba>
  4045b3:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  4045b9:	e9 3f ff ff ff       	jmpq   4044fd <_Z11HPCC_startsx+0x16d>
  4045be:	41 b8 02 00 00 00    	mov    $0x2,%r8d
  4045c4:	e9 34 ff ff ff       	jmpq   4044fd <_Z11HPCC_startsx+0x16d>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:222
}
  4045c9:	e8 f2 de ff ff       	callq  4024c0 <__stack_chk_fail@plt>
  4045ce:	66 90                	xchg   %ax,%ax

00000000004045d0 <_Z8get_timev>:
_Z8get_timev():
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:226
{
  4045d0:	f3 0f 1e fa          	endbr64 
  4045d4:	48 83 ec 28          	sub    $0x28,%rsp
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:228
  gettimeofday(&tv, NULL);
  4045d8:	31 f6                	xor    %esi,%esi
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:226
{
  4045da:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4045e1:	00 00 
  4045e3:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  4045e8:	31 c0                	xor    %eax,%eax
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:228
  gettimeofday(&tv, NULL);
  4045ea:	48 89 e7             	mov    %rsp,%rdi
  4045ed:	e8 ce df ff ff       	callq  4025c0 <gettimeofday@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:229
  return tv.tv_sec + tv.tv_usec / 1000000.0;
  4045f2:	66 0f ef c9          	pxor   %xmm1,%xmm1
  4045f6:	66 0f ef c0          	pxor   %xmm0,%xmm0
  4045fa:	f2 48 0f 2a 0c 24    	cvtsi2sdq (%rsp),%xmm1
  404600:	f2 48 0f 2a 44 24 08 	cvtsi2sdq 0x8(%rsp),%xmm0
  404607:	f2 0f 5e 05 a1 12 00 	divsd  0x12a1(%rip),%xmm0        # 4058b0 <_IO_stdin_used+0x8b0>
  40460e:	00 
  40460f:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded_batching.cc:230
  404613:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  404618:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  40461f:	00 00 
  404621:	75 05                	jne    404628 <_Z8get_timev+0x58>
  404623:	48 83 c4 28          	add    $0x28,%rsp
  404627:	c3                   	retq   
  404628:	e8 93 de ff ff       	callq  4024c0 <__stack_chk_fail@plt>
  40462d:	0f 1f 00             	nopl   (%rax)

0000000000404630 <_ZNKSt5ctypeIcE8do_widenEc>:
_ZNKSt5ctypeIcE8do_widenEc():
/usr/include/c++/10/bits/locale_facets.h:1084
       *
       *  @param __c  The char to convert.
       *  @return  The converted character.
      */
      virtual char_type
      do_widen(char __c) const
  404630:	f3 0f 1e fa          	endbr64 
  404634:	89 f0                	mov    %esi,%eax
/usr/include/c++/10/bits/locale_facets.h:1085
      { return __c; }
  404636:	c3                   	retq   
  404637:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40463e:	00 00 

0000000000404640 <_Z16resume_iterationR5state>:
_Z16resume_iterationR5state():
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:63
inline void resume_iteration(state &s){
  404640:	f3 0f 1e fa          	endbr64 
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:66
  u64Int index = s.index;
  404644:	48 63 57 10          	movslq 0x10(%rdi),%rdx
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:67
  global_table[index] ^= datum;
  404648:	48 8b 05 59 3d 00 00 	mov    0x3d59(%rip),%rax        # 4083a8 <global_table>
  40464f:	48 8b 4f 08          	mov    0x8(%rdi),%rcx
  404653:	48 31 0c d0          	xor    %rcx,(%rax,%rdx,8)
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:68
}
  404657:	c3                   	retq   
  404658:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40465f:	00 

0000000000404660 <_ZNSt6vectorI5stateSaIS0_EED1Ev>:
_ZNSt6vectorI5stateSaIS0_EED2Ev():
/usr/include/c++/10/bits/stl_vector.h:678
      ~vector() _GLIBCXX_NOEXCEPT
  404660:	f3 0f 1e fa          	endbr64 
/usr/include/c++/10/bits/stl_vector.h:680
	std::_Destroy(this->_M_impl._M_start, this->_M_impl._M_finish,
  404664:	48 8b 3f             	mov    (%rdi),%rdi
_ZNSt12_Vector_baseI5stateSaIS0_EE13_M_deallocateEPS0_m():
/usr/include/c++/10/bits/stl_vector.h:353
	if (__p)
  404667:	48 85 ff             	test   %rdi,%rdi
  40466a:	74 0c                	je     404678 <_ZNSt6vectorI5stateSaIS0_EED1Ev+0x18>
_ZN9__gnu_cxx13new_allocatorI5stateE10deallocateEPS1_m():
/usr/include/c++/10/ext/new_allocator.h:139
# endif
			      std::align_val_t(alignof(_Tp)));
	    return;
	  }
#endif
	::operator delete(__p
  40466c:	e9 0f de ff ff       	jmpq   402480 <_ZdlPv@plt>
  404671:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
_ZNSt6vectorI5stateSaIS0_EED2Ev():
/usr/include/c++/10/bits/stl_vector.h:683
      }
  404678:	c3                   	retq   
_ZNSt6vectorI5stateSaIS0_EED1Ev():
  404679:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000404680 <_Z17snapshot_proc_pid13SnapshotPoint>:
_Z17snapshot_proc_pid13SnapshotPoint():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:371
inline void snapshot_proc_pid(SnapshotPoint point) {
  404680:	f3 0f 1e fa          	endbr64 
  404684:	41 57                	push   %r15
  404686:	41 56                	push   %r14
  404688:	41 55                	push   %r13
  40468a:	41 54                	push   %r12
  40468c:	55                   	push   %rbp
  40468d:	53                   	push   %rbx
  40468e:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  404695:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  40469a:	48 81 ec 28 02 00 00 	sub    $0x228,%rsp
  4046a1:	89 fb                	mov    %edi,%ebx
/usr/include/x86_64-linux-gnu/bits/stdio2.h:67
  return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
  4046a3:	4c 8d 6c 24 10       	lea    0x10(%rsp),%r13
  4046a8:	4c 8d bc 24 10 01 00 	lea    0x110(%rsp),%r15
  4046af:	00 
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:371
  4046b0:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4046b7:	00 00 
  4046b9:	48 89 84 24 18 12 00 	mov    %rax,0x1218(%rsp)
  4046c0:	00 
  4046c1:	31 c0                	xor    %eax,%eax
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:372
  pid_t pid = getpid();
  4046c3:	e8 b8 de ff ff       	callq  402580 <getpid@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:373
  const char* suffix = (point == BEGIN) ? "begin" : "end";
  4046c8:	85 db                	test   %ebx,%ebx
snprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:67
  4046ca:	b9 00 01 00 00       	mov    $0x100,%ecx
  4046cf:	4c 89 ef             	mov    %r13,%rdi
_Z17snapshot_proc_pid13SnapshotPoint():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:372
  pid_t pid = getpid();
  4046d2:	41 89 c1             	mov    %eax,%r9d
  4046d5:	89 44 24 0c          	mov    %eax,0xc(%rsp)
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:373
  const char* suffix = (point == BEGIN) ? "begin" : "end";
  4046d9:	48 8d 05 2e 0b 00 00 	lea    0xb2e(%rip),%rax        # 40520e <_IO_stdin_used+0x20e>
  4046e0:	48 8d 15 6c 10 00 00 	lea    0x106c(%rip),%rdx        # 405753 <_IO_stdin_used+0x753>
  4046e7:	48 89 c3             	mov    %rax,%rbx
snprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:67
  4046ea:	4c 8d 05 68 10 00 00 	lea    0x1068(%rip),%r8        # 405759 <_IO_stdin_used+0x759>
  4046f1:	be 00 01 00 00       	mov    $0x100,%esi
_Z17snapshot_proc_pid13SnapshotPoint():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:373
  4046f6:	48 0f 44 da          	cmove  %rdx,%rbx
snprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:67
  4046fa:	ba 01 00 00 00       	mov    $0x1,%edx
  4046ff:	31 c0                	xor    %eax,%eax
_Z17snapshot_proc_pid13SnapshotPoint():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:373
  404701:	48 89 1c 24          	mov    %rbx,(%rsp)
snprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:67
  404705:	e8 16 dd ff ff       	callq  402420 <__snprintf_chk@plt>
  40470a:	be 00 01 00 00       	mov    $0x100,%esi
  40470f:	4c 89 ff             	mov    %r15,%rdi
  404712:	31 c0                	xor    %eax,%eax
  404714:	49 89 d9             	mov    %rbx,%r9
  404717:	b9 00 01 00 00       	mov    $0x100,%ecx
  40471c:	ba 01 00 00 00       	mov    $0x1,%edx
  404721:	4c 8d 05 01 11 00 00 	lea    0x1101(%rip),%r8        # 405829 <_IO_stdin_used+0x829>
  404728:	e8 f3 dc ff ff       	callq  402420 <__snprintf_chk@plt>
_Z17snapshot_proc_pid13SnapshotPoint():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:342
  FILE* src = fopen(src_path, "r");
  40472d:	48 8d 35 fc 08 00 00 	lea    0x8fc(%rip),%rsi        # 405030 <_IO_stdin_used+0x30>
copy_file_c():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:342
  404734:	4c 89 ef             	mov    %r13,%rdi
  404737:	e8 b4 dd ff ff       	callq  4024f0 <fopen@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:343
  if (!src) {
  40473c:	48 85 c0             	test   %rax,%rax
  40473f:	0f 84 0b 02 00 00    	je     404950 <_Z17snapshot_proc_pid13SnapshotPoint+0x2d0>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:348
  FILE* dest = fopen(dest_path, "w");
  404745:	48 8d 35 c8 08 00 00 	lea    0x8c8(%rip),%rsi        # 405014 <_IO_stdin_used+0x14>
  40474c:	4c 89 ff             	mov    %r15,%rdi
  40474f:	48 89 c5             	mov    %rax,%rbp
  404752:	e8 99 dd ff ff       	callq  4024f0 <fopen@plt>
  404757:	48 8d 9c 24 10 02 00 	lea    0x210(%rsp),%rbx
  40475e:	00 
  40475f:	49 89 c4             	mov    %rax,%r12
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:349
  if (!dest) {
  404762:	48 85 c0             	test   %rax,%rax
  404765:	75 25                	jne    40478c <_Z17snapshot_proc_pid13SnapshotPoint+0x10c>
  404767:	e9 fc 01 00 00       	jmpq   404968 <_Z17snapshot_proc_pid13SnapshotPoint+0x2e8>
  40476c:	0f 1f 40 00          	nopl   0x0(%rax)
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:358
    if (fwrite(buffer, 1, bytes_read, dest) != bytes_read) {
  404770:	4c 89 e1             	mov    %r12,%rcx
  404773:	48 89 c2             	mov    %rax,%rdx
  404776:	be 01 00 00 00       	mov    $0x1,%esi
  40477b:	48 89 df             	mov    %rbx,%rdi
  40477e:	e8 ad de ff ff       	callq  402630 <fwrite@plt>
  404783:	49 39 c6             	cmp    %rax,%r14
  404786:	0f 85 34 01 00 00    	jne    4048c0 <_Z17snapshot_proc_pid13SnapshotPoint+0x240>
_Z17snapshot_proc_pid13SnapshotPoint():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:297
	return __fread_chk (__ptr, __bos0 (__ptr), __size, __n, __stream);

      if (__size * __n > __bos0 (__ptr))
	return __fread_chk_warn (__ptr, __bos0 (__ptr), __size, __n, __stream);
    }
  return __fread_alias (__ptr, __size, __n, __stream);
  40478c:	48 89 e9             	mov    %rbp,%rcx
fread():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:297
  40478f:	ba 00 10 00 00       	mov    $0x1000,%edx
  404794:	be 01 00 00 00       	mov    $0x1,%esi
  404799:	48 89 df             	mov    %rbx,%rdi
  40479c:	e8 ef dd ff ff       	callq  402590 <fread@plt>
  4047a1:	49 89 c6             	mov    %rax,%r14
copy_file_c():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:357
  while ((bytes_read = fread(buffer, 1, sizeof(buffer), src)) > 0) {
  4047a4:	48 85 c0             	test   %rax,%rax
  4047a7:	75 c7                	jne    404770 <_Z17snapshot_proc_pid13SnapshotPoint+0xf0>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:366
  fclose(src);
  4047a9:	48 89 ef             	mov    %rbp,%rdi
  4047ac:	e8 ef dc ff ff       	callq  4024a0 <fclose@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:367
  fclose(dest);
  4047b1:	4c 89 e7             	mov    %r12,%rdi
  4047b4:	e8 e7 dc ff ff       	callq  4024a0 <fclose@plt>
_Z17snapshot_proc_pid13SnapshotPoint():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:67
  return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
  4047b9:	44 8b 4c 24 0c       	mov    0xc(%rsp),%r9d
snprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:67
  4047be:	b9 00 01 00 00       	mov    $0x100,%ecx
  4047c3:	4c 89 ef             	mov    %r13,%rdi
  4047c6:	31 c0                	xor    %eax,%eax
  4047c8:	4c 8d 05 b6 0f 00 00 	lea    0xfb6(%rip),%r8        # 405785 <_IO_stdin_used+0x785>
  4047cf:	ba 01 00 00 00       	mov    $0x1,%edx
  4047d4:	be 00 01 00 00       	mov    $0x100,%esi
  4047d9:	e8 42 dc ff ff       	callq  402420 <__snprintf_chk@plt>
_Z17snapshot_proc_pid13SnapshotPoint():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:67
  4047de:	4c 8b 0c 24          	mov    (%rsp),%r9
snprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:67
  4047e2:	b9 00 01 00 00       	mov    $0x100,%ecx
  4047e7:	31 c0                	xor    %eax,%eax
  4047e9:	4c 8d 05 a4 0f 00 00 	lea    0xfa4(%rip),%r8        # 405794 <_IO_stdin_used+0x794>
  4047f0:	ba 01 00 00 00       	mov    $0x1,%edx
  4047f5:	be 00 01 00 00       	mov    $0x100,%esi
  4047fa:	4c 89 ff             	mov    %r15,%rdi
  4047fd:	e8 1e dc ff ff       	callq  402420 <__snprintf_chk@plt>
_Z17snapshot_proc_pid13SnapshotPoint():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:342
  FILE* src = fopen(src_path, "r");
  404802:	48 8d 35 27 08 00 00 	lea    0x827(%rip),%rsi        # 405030 <_IO_stdin_used+0x30>
copy_file_c():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:342
  404809:	4c 89 ef             	mov    %r13,%rdi
  40480c:	e8 df dc ff ff       	callq  4024f0 <fopen@plt>
  404811:	49 89 c4             	mov    %rax,%r12
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:343
  if (!src) {
  404814:	48 85 c0             	test   %rax,%rax
  404817:	0f 84 23 01 00 00    	je     404940 <_Z17snapshot_proc_pid13SnapshotPoint+0x2c0>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:348
  FILE* dest = fopen(dest_path, "w");
  40481d:	48 8d 35 f0 07 00 00 	lea    0x7f0(%rip),%rsi        # 405014 <_IO_stdin_used+0x14>
  404824:	4c 89 ff             	mov    %r15,%rdi
  404827:	48 8d 9c 24 10 02 00 	lea    0x210(%rsp),%rbx
  40482e:	00 
  40482f:	e8 bc dc ff ff       	callq  4024f0 <fopen@plt>
  404834:	49 89 c6             	mov    %rax,%r14
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:349
  if (!dest) {
  404837:	48 85 c0             	test   %rax,%rax
  40483a:	75 28                	jne    404864 <_Z17snapshot_proc_pid13SnapshotPoint+0x1e4>
  40483c:	e9 47 01 00 00       	jmpq   404988 <_Z17snapshot_proc_pid13SnapshotPoint+0x308>
  404841:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:358
    if (fwrite(buffer, 1, bytes_read, dest) != bytes_read) {
  404848:	4c 89 f1             	mov    %r14,%rcx
  40484b:	48 89 c2             	mov    %rax,%rdx
  40484e:	be 01 00 00 00       	mov    $0x1,%esi
  404853:	48 89 df             	mov    %rbx,%rdi
  404856:	e8 d5 dd ff ff       	callq  402630 <fwrite@plt>
  40485b:	48 39 c5             	cmp    %rax,%rbp
  40485e:	0f 85 9c 00 00 00    	jne    404900 <_Z17snapshot_proc_pid13SnapshotPoint+0x280>
_Z17snapshot_proc_pid13SnapshotPoint():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:297
  return __fread_alias (__ptr, __size, __n, __stream);
  404864:	4c 89 e1             	mov    %r12,%rcx
fread():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:297
  404867:	ba 00 10 00 00       	mov    $0x1000,%edx
  40486c:	be 01 00 00 00       	mov    $0x1,%esi
  404871:	48 89 df             	mov    %rbx,%rdi
  404874:	e8 17 dd ff ff       	callq  402590 <fread@plt>
  404879:	48 89 c5             	mov    %rax,%rbp
copy_file_c():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:357
  while ((bytes_read = fread(buffer, 1, sizeof(buffer), src)) > 0) {
  40487c:	48 85 c0             	test   %rax,%rax
  40487f:	75 c7                	jne    404848 <_Z17snapshot_proc_pid13SnapshotPoint+0x1c8>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:366
  fclose(src);
  404881:	4c 89 e7             	mov    %r12,%rdi
  404884:	e8 17 dc ff ff       	callq  4024a0 <fclose@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:367
  fclose(dest);
  404889:	4c 89 f7             	mov    %r14,%rdi
  40488c:	e8 0f dc ff ff       	callq  4024a0 <fclose@plt>
_Z17snapshot_proc_pid13SnapshotPoint():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:391
}
  404891:	48 8b 84 24 18 12 00 	mov    0x1218(%rsp),%rax
  404898:	00 
  404899:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  4048a0:	00 00 
  4048a2:	0f 85 f9 00 00 00    	jne    4049a1 <_Z17snapshot_proc_pid13SnapshotPoint+0x321>
  4048a8:	48 81 c4 28 12 00 00 	add    $0x1228,%rsp
  4048af:	5b                   	pop    %rbx
  4048b0:	5d                   	pop    %rbp
  4048b1:	41 5c                	pop    %r12
  4048b3:	41 5d                	pop    %r13
  4048b5:	41 5e                	pop    %r14
  4048b7:	41 5f                	pop    %r15
  4048b9:	c3                   	retq   
  4048ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
copy_file_c():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:359
      perror("Failed to write to destination file");
  4048c0:	48 8d 3d 39 0f 00 00 	lea    0xf39(%rip),%rdi        # 405800 <_IO_stdin_used+0x800>
  4048c7:	e8 84 db ff ff       	callq  402450 <perror@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:360
      fclose(src);
  4048cc:	48 89 ef             	mov    %rbp,%rdi
  4048cf:	e8 cc db ff ff       	callq  4024a0 <fclose@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:361
      fclose(dest);
  4048d4:	4c 89 e7             	mov    %r12,%rdi
  4048d7:	e8 c4 db ff ff       	callq  4024a0 <fclose@plt>
_Z17snapshot_proc_pid13SnapshotPoint():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
  4048dc:	48 8b 3d 3d 3a 00 00 	mov    0x3a3d(%rip),%rdi        # 408320 <stderr@@GLIBC_2.2.5>
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  4048e3:	4c 89 e9             	mov    %r13,%rcx
  4048e6:	be 01 00 00 00       	mov    $0x1,%esi
  4048eb:	31 c0                	xor    %eax,%eax
  4048ed:	48 8d 15 73 0e 00 00 	lea    0xe73(%rip),%rdx        # 405767 <_IO_stdin_used+0x767>
  4048f4:	e8 e7 dc ff ff       	callq  4025e0 <__fprintf_chk@plt>
/usr/include/x86_64-linux-gnu/bits/stdio2.h:101
			__va_arg_pack ());
  4048f9:	e9 bb fe ff ff       	jmpq   4047b9 <_Z17snapshot_proc_pid13SnapshotPoint+0x139>
  4048fe:	66 90                	xchg   %ax,%ax
copy_file_c():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:359
      perror("Failed to write to destination file");
  404900:	48 8d 3d f9 0e 00 00 	lea    0xef9(%rip),%rdi        # 405800 <_IO_stdin_used+0x800>
  404907:	e8 44 db ff ff       	callq  402450 <perror@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:360
      fclose(src);
  40490c:	4c 89 e7             	mov    %r12,%rdi
  40490f:	e8 8c db ff ff       	callq  4024a0 <fclose@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:361
      fclose(dest);
  404914:	4c 89 f7             	mov    %r14,%rdi
  404917:	e8 84 db ff ff       	callq  4024a0 <fclose@plt>
_Z17snapshot_proc_pid13SnapshotPoint():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
  40491c:	48 8b 3d fd 39 00 00 	mov    0x39fd(%rip),%rdi        # 408320 <stderr@@GLIBC_2.2.5>
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  404923:	4c 89 e9             	mov    %r13,%rcx
  404926:	be 01 00 00 00       	mov    $0x1,%esi
  40492b:	31 c0                	xor    %eax,%eax
  40492d:	48 8d 15 33 0e 00 00 	lea    0xe33(%rip),%rdx        # 405767 <_IO_stdin_used+0x767>
  404934:	e8 a7 dc ff ff       	callq  4025e0 <__fprintf_chk@plt>
_Z17snapshot_proc_pid13SnapshotPoint():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:391
}
  404939:	e9 53 ff ff ff       	jmpq   404891 <_Z17snapshot_proc_pid13SnapshotPoint+0x211>
  40493e:	66 90                	xchg   %ax,%ax
copy_file_c():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:344
    perror("Failed to open source file for reading");
  404940:	48 8d 3d 61 0e 00 00 	lea    0xe61(%rip),%rdi        # 4057a8 <_IO_stdin_used+0x7a8>
  404947:	e8 04 db ff ff       	callq  402450 <perror@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:345
    return 0; // Failure
  40494c:	eb ce                	jmp    40491c <_Z17snapshot_proc_pid13SnapshotPoint+0x29c>
  40494e:	66 90                	xchg   %ax,%ax
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:344
    perror("Failed to open source file for reading");
  404950:	48 8d 3d 51 0e 00 00 	lea    0xe51(%rip),%rdi        # 4057a8 <_IO_stdin_used+0x7a8>
  404957:	e8 f4 da ff ff       	callq  402450 <perror@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:345
    return 0; // Failure
  40495c:	e9 7b ff ff ff       	jmpq   4048dc <_Z17snapshot_proc_pid13SnapshotPoint+0x25c>
  404961:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:350
    fclose(src);
  404968:	48 89 ef             	mov    %rbp,%rdi
  40496b:	e8 30 db ff ff       	callq  4024a0 <fclose@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:351
    perror("Failed to open destination file for writing");
  404970:	48 8d 3d 59 0e 00 00 	lea    0xe59(%rip),%rdi        # 4057d0 <_IO_stdin_used+0x7d0>
  404977:	e8 d4 da ff ff       	callq  402450 <perror@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:352
    return 0; // Failure
  40497c:	e9 5b ff ff ff       	jmpq   4048dc <_Z17snapshot_proc_pid13SnapshotPoint+0x25c>
  404981:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:350
    fclose(src);
  404988:	4c 89 e7             	mov    %r12,%rdi
  40498b:	e8 10 db ff ff       	callq  4024a0 <fclose@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:351
    perror("Failed to open destination file for writing");
  404990:	48 8d 3d 39 0e 00 00 	lea    0xe39(%rip),%rdi        # 4057d0 <_IO_stdin_used+0x7d0>
  404997:	e8 b4 da ff ff       	callq  402450 <perror@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:352
    return 0; // Failure
  40499c:	e9 7b ff ff ff       	jmpq   40491c <_Z17snapshot_proc_pid13SnapshotPoint+0x29c>
_Z17snapshot_proc_pid13SnapshotPoint():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:391
}
  4049a1:	e8 1a db ff ff       	callq  4024c0 <__stack_chk_fail@plt>
  4049a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4049ad:	00 00 00 

00000000004049b0 <_Z18snapshot_proc_stat13SnapshotPoint>:
_Z18snapshot_proc_stat13SnapshotPoint():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:464
 * snapshot 
 * use snapshot_proc_stat(BEGIN) and snapshot_proc_stat(END) at the beginning and end of
 * the ROI
 * ========================================================================== */

inline void snapshot_proc_stat(SnapshotPoint point) {
  4049b0:	f3 0f 1e fa          	endbr64 
  4049b4:	41 56                	push   %r14
  4049b6:	41 55                	push   %r13
  4049b8:	41 54                	push   %r12
  4049ba:	55                   	push   %rbp
  4049bb:	53                   	push   %rbx
  4049bc:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  4049c3:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  4049c8:	48 81 ec 10 02 00 00 	sub    $0x210,%rsp
/usr/include/x86_64-linux-gnu/bits/stdio2.h:67
  return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
  4049cf:	be 00 01 00 00       	mov    $0x100,%esi
snprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:67
  4049d4:	b9 00 01 00 00       	mov    $0x100,%ecx
  4049d9:	ba 01 00 00 00       	mov    $0x1,%edx
_Z18snapshot_proc_stat13SnapshotPoint():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:465
  const char* suffix = (point == BEGIN) ? "begin" : "end";
  4049de:	4c 8d 0d 6e 0d 00 00 	lea    0xd6e(%rip),%r9        # 405753 <_IO_stdin_used+0x753>
snprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:67
  4049e5:	4c 8d 05 38 0e 00 00 	lea    0xe38(%rip),%r8        # 405824 <_IO_stdin_used+0x824>
_Z18snapshot_proc_stat13SnapshotPoint():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:464
inline void snapshot_proc_stat(SnapshotPoint point) {
  4049ec:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4049f3:	00 00 
  4049f5:	48 89 84 24 08 12 00 	mov    %rax,0x1208(%rsp)
  4049fc:	00 
  4049fd:	31 c0                	xor    %eax,%eax
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:465
  const char* suffix = (point == BEGIN) ? "begin" : "end";
  4049ff:	85 ff                	test   %edi,%edi
  404a01:	48 8d 05 06 08 00 00 	lea    0x806(%rip),%rax        # 40520e <_IO_stdin_used+0x20e>
/usr/include/x86_64-linux-gnu/bits/stdio2.h:67
  404a08:	49 89 e6             	mov    %rsp,%r14
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:465
  404a0b:	4c 0f 45 c8          	cmovne %rax,%r9
snprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:67
  404a0f:	48 8d ac 24 00 01 00 	lea    0x100(%rsp),%rbp
  404a16:	00 
  404a17:	c6 44 24 0a 00       	movb   $0x0,0xa(%rsp)
  404a1c:	48 b8 2f 70 72 6f 63 	movabs $0x74732f636f72702f,%rax
  404a23:	2f 73 74 
  404a26:	48 89 04 24          	mov    %rax,(%rsp)
  404a2a:	b8 61 74 00 00       	mov    $0x7461,%eax
  404a2f:	48 89 ef             	mov    %rbp,%rdi
  404a32:	66 89 44 24 08       	mov    %ax,0x8(%rsp)
  404a37:	31 c0                	xor    %eax,%eax
  404a39:	e8 e2 d9 ff ff       	callq  402420 <__snprintf_chk@plt>
_Z18snapshot_proc_stat13SnapshotPoint():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:342
  FILE* src = fopen(src_path, "r");
  404a3e:	48 8d 35 eb 05 00 00 	lea    0x5eb(%rip),%rsi        # 405030 <_IO_stdin_used+0x30>
copy_file_c():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:342
  404a45:	4c 89 f7             	mov    %r14,%rdi
  404a48:	e8 a3 da ff ff       	callq  4024f0 <fopen@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:343
  if (!src) {
  404a4d:	48 85 c0             	test   %rax,%rax
  404a50:	0f 84 da 00 00 00    	je     404b30 <_Z18snapshot_proc_stat13SnapshotPoint+0x180>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:348
  FILE* dest = fopen(dest_path, "w");
  404a56:	48 89 ef             	mov    %rbp,%rdi
  404a59:	48 8d 35 b4 05 00 00 	lea    0x5b4(%rip),%rsi        # 405014 <_IO_stdin_used+0x14>
  404a60:	49 89 c4             	mov    %rax,%r12
  404a63:	e8 88 da ff ff       	callq  4024f0 <fopen@plt>
  404a68:	48 8d ac 24 00 02 00 	lea    0x200(%rsp),%rbp
  404a6f:	00 
  404a70:	49 89 c5             	mov    %rax,%r13
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:349
  if (!dest) {
  404a73:	48 85 c0             	test   %rax,%rax
  404a76:	75 20                	jne    404a98 <_Z18snapshot_proc_stat13SnapshotPoint+0xe8>
  404a78:	e9 c3 00 00 00       	jmpq   404b40 <_Z18snapshot_proc_stat13SnapshotPoint+0x190>
  404a7d:	0f 1f 00             	nopl   (%rax)
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:358
    if (fwrite(buffer, 1, bytes_read, dest) != bytes_read) {
  404a80:	4c 89 e9             	mov    %r13,%rcx
  404a83:	48 89 c2             	mov    %rax,%rdx
  404a86:	be 01 00 00 00       	mov    $0x1,%esi
  404a8b:	48 89 ef             	mov    %rbp,%rdi
  404a8e:	e8 9d db ff ff       	callq  402630 <fwrite@plt>
  404a93:	48 39 c3             	cmp    %rax,%rbx
  404a96:	75 58                	jne    404af0 <_Z18snapshot_proc_stat13SnapshotPoint+0x140>
_Z18snapshot_proc_stat13SnapshotPoint():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:297
  return __fread_alias (__ptr, __size, __n, __stream);
  404a98:	4c 89 e1             	mov    %r12,%rcx
fread():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:297
  404a9b:	ba 00 10 00 00       	mov    $0x1000,%edx
  404aa0:	be 01 00 00 00       	mov    $0x1,%esi
  404aa5:	48 89 ef             	mov    %rbp,%rdi
  404aa8:	e8 e3 da ff ff       	callq  402590 <fread@plt>
  404aad:	48 89 c3             	mov    %rax,%rbx
copy_file_c():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:357
  while ((bytes_read = fread(buffer, 1, sizeof(buffer), src)) > 0) {
  404ab0:	48 85 c0             	test   %rax,%rax
  404ab3:	75 cb                	jne    404a80 <_Z18snapshot_proc_stat13SnapshotPoint+0xd0>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:366
  fclose(src);
  404ab5:	4c 89 e7             	mov    %r12,%rdi
  404ab8:	e8 e3 d9 ff ff       	callq  4024a0 <fclose@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:367
  fclose(dest);
  404abd:	4c 89 ef             	mov    %r13,%rdi
  404ac0:	e8 db d9 ff ff       	callq  4024a0 <fclose@plt>
_Z18snapshot_proc_stat13SnapshotPoint():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:476
  snprintf(src_path, sizeof(src_path), "/proc/stat");
  snprintf(dest_path, sizeof(dest_path), "proc_stat_%s.stats", suffix);
  if (!copy_file_c(src_path, dest_path)) {
    fprintf(stderr, "Error: Could not snapshot %s\n", src_path);
  }
}
  404ac5:	48 8b 84 24 08 12 00 	mov    0x1208(%rsp),%rax
  404acc:	00 
  404acd:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  404ad4:	00 00 
  404ad6:	75 7e                	jne    404b56 <_Z18snapshot_proc_stat13SnapshotPoint+0x1a6>
  404ad8:	48 81 c4 10 12 00 00 	add    $0x1210,%rsp
  404adf:	5b                   	pop    %rbx
  404ae0:	5d                   	pop    %rbp
  404ae1:	41 5c                	pop    %r12
  404ae3:	41 5d                	pop    %r13
  404ae5:	41 5e                	pop    %r14
  404ae7:	c3                   	retq   
  404ae8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  404aef:	00 
copy_file_c():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:359
      perror("Failed to write to destination file");
  404af0:	48 8d 3d 09 0d 00 00 	lea    0xd09(%rip),%rdi        # 405800 <_IO_stdin_used+0x800>
  404af7:	e8 54 d9 ff ff       	callq  402450 <perror@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:360
      fclose(src);
  404afc:	4c 89 e7             	mov    %r12,%rdi
  404aff:	e8 9c d9 ff ff       	callq  4024a0 <fclose@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:361
      fclose(dest);
  404b04:	4c 89 ef             	mov    %r13,%rdi
  404b07:	e8 94 d9 ff ff       	callq  4024a0 <fclose@plt>
_Z18snapshot_proc_stat13SnapshotPoint():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
  404b0c:	48 8b 3d 0d 38 00 00 	mov    0x380d(%rip),%rdi        # 408320 <stderr@@GLIBC_2.2.5>
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  404b13:	4c 89 f1             	mov    %r14,%rcx
  404b16:	be 01 00 00 00       	mov    $0x1,%esi
  404b1b:	31 c0                	xor    %eax,%eax
  404b1d:	48 8d 15 43 0c 00 00 	lea    0xc43(%rip),%rdx        # 405767 <_IO_stdin_used+0x767>
  404b24:	e8 b7 da ff ff       	callq  4025e0 <__fprintf_chk@plt>
_Z18snapshot_proc_stat13SnapshotPoint():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:476
}
  404b29:	eb 9a                	jmp    404ac5 <_Z18snapshot_proc_stat13SnapshotPoint+0x115>
  404b2b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
copy_file_c():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:344
    perror("Failed to open source file for reading");
  404b30:	48 8d 3d 71 0c 00 00 	lea    0xc71(%rip),%rdi        # 4057a8 <_IO_stdin_used+0x7a8>
  404b37:	e8 14 d9 ff ff       	callq  402450 <perror@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:345
    return 0; // Failure
  404b3c:	eb ce                	jmp    404b0c <_Z18snapshot_proc_stat13SnapshotPoint+0x15c>
  404b3e:	66 90                	xchg   %ax,%ax
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:350
    fclose(src);
  404b40:	4c 89 e7             	mov    %r12,%rdi
  404b43:	e8 58 d9 ff ff       	callq  4024a0 <fclose@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:351
    perror("Failed to open destination file for writing");
  404b48:	48 8d 3d 81 0c 00 00 	lea    0xc81(%rip),%rdi        # 4057d0 <_IO_stdin_used+0x7d0>
  404b4f:	e8 fc d8 ff ff       	callq  402450 <perror@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:352
    return 0; // Failure
  404b54:	eb b6                	jmp    404b0c <_Z18snapshot_proc_stat13SnapshotPoint+0x15c>
_Z18snapshot_proc_stat13SnapshotPoint():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:476
}
  404b56:	e8 65 d9 ff ff       	callq  4024c0 <__stack_chk_fail@plt>
  404b5b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000404b60 <_Z12pagein_queueRSt6vectorI5stateSaIS0_EE>:
_Z12pagein_queueRSt6vectorI5stateSaIS0_EE():
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:128
inline void pagein_queue(vector<state> &queue){
  404b60:	f3 0f 1e fa          	endbr64 
  404b64:	41 54                	push   %r12
  404b66:	55                   	push   %rbp
  404b67:	53                   	push   %rbx
  404b68:	4c 8d 9c 24 00 c0 ff 	lea    -0x4000(%rsp),%r11
  404b6f:	ff 
  404b70:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  404b77:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  404b7c:	4c 39 dc             	cmp    %r11,%rsp
  404b7f:	75 ef                	jne    404b70 <_Z12pagein_queueRSt6vectorI5stateSaIS0_EE+0x10>
  404b81:	48 83 ec 10          	sub    $0x10,%rsp
_ZN9__gnu_cxx17__normal_iteratorIP5stateSt6vectorIS1_SaIS1_EEEC4ERKS2_():
/usr/include/c++/10/bits/stl_iterator.h:996
      : _M_current(__i) { }
  404b85:	48 8b 1f             	mov    (%rdi),%rbx
  404b88:	48 8b 77 08          	mov    0x8(%rdi),%rsi
_Z12pagein_queueRSt6vectorI5stateSaIS0_EE():
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:128
  404b8c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  404b93:	00 00 
  404b95:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  404b9c:	00 
  404b9d:	31 c0                	xor    %eax,%eax
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:131
  for (auto q_it = queue.begin(); q_it != queue.end(); ++q_it)
  404b9f:	48 39 f3             	cmp    %rsi,%rbx
  404ba2:	74 7f                	je     404c23 <_Z12pagein_queueRSt6vectorI5stateSaIS0_EE+0xc3>
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:136
    page = (void *)(((long long)page >> 12) << 12);
  404ba4:	48 8b 03             	mov    (%rbx),%rax
_ZN9__gnu_cxx17__normal_iteratorIP5stateSt6vectorIS1_SaIS1_EEEppEv():
/usr/include/c++/10/bits/stl_iterator.h:1022
	++_M_current;
  404ba7:	48 83 c3 18          	add    $0x18,%rbx
  404bab:	48 89 fd             	mov    %rdi,%rbp
_Z12pagein_queueRSt6vectorI5stateSaIS0_EE():
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:141
    index++;
  404bae:	b9 01 00 00 00       	mov    $0x1,%ecx
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:140
    regions[index].iov_len = advise_length;
  404bb3:	48 c7 44 24 08 00 10 	movq   $0x1000,0x8(%rsp)
  404bba:	00 00 
  404bbc:	49 89 e4             	mov    %rsp,%r12
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:136
    page = (void *)(((long long)page >> 12) << 12);
  404bbf:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:139
    regions[index].iov_base = page;
  404bc5:	48 89 04 24          	mov    %rax,(%rsp)
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:131
  for (auto q_it = queue.begin(); q_it != queue.end(); ++q_it)
  404bc9:	48 39 de             	cmp    %rbx,%rsi
  404bcc:	74 34                	je     404c02 <_Z12pagein_queueRSt6vectorI5stateSaIS0_EE+0xa2>
  404bce:	66 90                	xchg   %ax,%ax
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:136
    page = (void *)(((long long)page >> 12) << 12);
  404bd0:	48 8b 13             	mov    (%rbx),%rdx
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:139
    regions[index].iov_base = page;
  404bd3:	48 63 c1             	movslq %ecx,%rax
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:141
    index++;
  404bd6:	83 c1 01             	add    $0x1,%ecx
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:139
    regions[index].iov_base = page;
  404bd9:	48 c1 e0 04          	shl    $0x4,%rax
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:140
    regions[index].iov_len = advise_length;
  404bdd:	48 c7 44 04 08 00 10 	movq   $0x1000,0x8(%rsp,%rax,1)
  404be4:	00 00 
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:136
    page = (void *)(((long long)page >> 12) << 12);
  404be6:	48 81 e2 00 f0 ff ff 	and    $0xfffffffffffff000,%rdx
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:139
    regions[index].iov_base = page;
  404bed:	48 89 14 04          	mov    %rdx,(%rsp,%rax,1)
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:142
    if(index >= MAX_IOVEC_SIZE){
  404bf1:	81 f9 00 04 00 00    	cmp    $0x400,%ecx
  404bf7:	74 4f                	je     404c48 <_Z12pagein_queueRSt6vectorI5stateSaIS0_EE+0xe8>
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:131 (discriminator 2)
  for (auto q_it = queue.begin(); q_it != queue.end(); ++q_it)
  404bf9:	48 83 c3 18          	add    $0x18,%rbx
  404bfd:	48 39 de             	cmp    %rbx,%rsi
  404c00:	75 ce                	jne    404bd0 <_Z12pagein_queueRSt6vectorI5stateSaIS0_EE+0x70>
_Z15process_madviseiPKvmim():
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:35
    return syscall(SYS_process_madvise, pidfd, addr, length, advice, flags);
  404c02:	8b 35 a8 37 00 00    	mov    0x37a8(%rip),%esi        # 4083b0 <pidfd>
_Z12pagein_queueRSt6vectorI5stateSaIS0_EE():
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:148
    process_madvise(pidfd, regions, index, MADV_WILLNEED, 0);  
  404c08:	48 63 c9             	movslq %ecx,%rcx
_Z15process_madviseiPKvmim():
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:35
    return syscall(SYS_process_madvise, pidfd, addr, length, advice, flags);
  404c0b:	45 31 c9             	xor    %r9d,%r9d
  404c0e:	4c 89 e2             	mov    %r12,%rdx
  404c11:	41 b8 03 00 00 00    	mov    $0x3,%r8d
  404c17:	bf b8 01 00 00       	mov    $0x1b8,%edi
  404c1c:	31 c0                	xor    %eax,%eax
  404c1e:	e8 3d d7 ff ff       	callq  402360 <syscall@plt>
_Z12pagein_queueRSt6vectorI5stateSaIS0_EE():
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:149
}
  404c23:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  404c2a:	00 
  404c2b:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  404c32:	00 00 
  404c34:	75 49                	jne    404c7f <_Z12pagein_queueRSt6vectorI5stateSaIS0_EE+0x11f>
  404c36:	48 81 c4 10 40 00 00 	add    $0x4010,%rsp
  404c3d:	5b                   	pop    %rbx
  404c3e:	5d                   	pop    %rbp
  404c3f:	41 5c                	pop    %r12
  404c41:	c3                   	retq   
  404c42:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
_Z15process_madviseiPKvmim():
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:35
    return syscall(SYS_process_madvise, pidfd, addr, length, advice, flags);
  404c48:	8b 35 62 37 00 00    	mov    0x3762(%rip),%esi        # 4083b0 <pidfd>
  404c4e:	45 31 c9             	xor    %r9d,%r9d
  404c51:	b9 00 04 00 00       	mov    $0x400,%ecx
  404c56:	31 c0                	xor    %eax,%eax
  404c58:	41 b8 03 00 00 00    	mov    $0x3,%r8d
  404c5e:	4c 89 e2             	mov    %r12,%rdx
  404c61:	bf b8 01 00 00       	mov    $0x1b8,%edi
_Z12pagein_queueRSt6vectorI5stateSaIS0_EE():
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:131
  for (auto q_it = queue.begin(); q_it != queue.end(); ++q_it)
  404c66:	48 83 c3 18          	add    $0x18,%rbx
_Z15process_madviseiPKvmim():
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:35
    return syscall(SYS_process_madvise, pidfd, addr, length, advice, flags);
  404c6a:	e8 f1 d6 ff ff       	callq  402360 <syscall@plt>
_ZN9__gnu_cxx17__normal_iteratorIP5stateSt6vectorIS1_SaIS1_EEEC4ERKS2_():
/usr/include/c++/10/bits/stl_iterator.h:996
      : _M_current(__i) { }
  404c6f:	48 8b 75 08          	mov    0x8(%rbp),%rsi
_Z12pagein_queueRSt6vectorI5stateSaIS0_EE():
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:131
  for (auto q_it = queue.begin(); q_it != queue.end(); ++q_it)
  404c73:	48 39 de             	cmp    %rbx,%rsi
  404c76:	74 ab                	je     404c23 <_Z12pagein_queueRSt6vectorI5stateSaIS0_EE+0xc3>
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:144
      index = 0;
  404c78:	31 c9                	xor    %ecx,%ecx
  404c7a:	e9 51 ff ff ff       	jmpq   404bd0 <_Z12pagein_queueRSt6vectorI5stateSaIS0_EE+0x70>
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:149
}
  404c7f:	e8 3c d8 ff ff       	callq  4024c0 <__stack_chk_fail@plt>
  404c84:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  404c8b:	00 00 00 
  404c8e:	66 90                	xchg   %ax,%ax

0000000000404c90 <_Z24allocate_pf_status_arrayv>:
_Z24allocate_pf_status_arrayv():
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:207
inline void allocate_pf_status_array(){
  404c90:	f3 0f 1e fa          	endbr64 
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:208
  ptr = mmap(NULL, 32*1024*sizeof(int), PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS | MAP_POPULATE, -1, 0);
  404c94:	31 ff                	xor    %edi,%edi
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:207
inline void allocate_pf_status_array(){
  404c96:	48 83 ec 08          	sub    $0x8,%rsp
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:208
  ptr = mmap(NULL, 32*1024*sizeof(int), PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS | MAP_POPULATE, -1, 0);
  404c9a:	45 31 c9             	xor    %r9d,%r9d
  404c9d:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  404ca3:	b9 22 80 00 00       	mov    $0x8022,%ecx
  404ca8:	ba 03 00 00 00       	mov    $0x3,%edx
  404cad:	be 00 00 02 00       	mov    $0x20000,%esi
  404cb2:	e8 49 d9 ff ff       	callq  402600 <mmap@plt>
  404cb7:	48 89 05 0a 37 00 00 	mov    %rax,0x370a(%rip)        # 4083c8 <ptr>
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:209
  if (ptr == MAP_FAILED) {
  404cbe:	48 89 c7             	mov    %rax,%rdi
  404cc1:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  404cc5:	74 61                	je     404d28 <_Z24allocate_pf_status_arrayv+0x98>
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:212
  if(mlock(ptr, 32*1024*sizeof(int))){
  404cc7:	be 00 00 02 00       	mov    $0x20000,%esi
  404ccc:	e8 6f d8 ff ff       	callq  402540 <mlock@plt>
  404cd1:	85 c0                	test   %eax,%eax
  404cd3:	75 3b                	jne    404d10 <_Z24allocate_pf_status_arrayv+0x80>
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:215
  pf_status_array = (volatile int*)ptr;
  404cd5:	48 8b 05 ec 36 00 00 	mov    0x36ec(%rip),%rax        # 4083c8 <ptr>
  404cdc:	48 89 05 dd 36 00 00 	mov    %rax,0x36dd(%rip)        # 4083c0 <pf_status_array>
_Z11touch_pagesPVim():
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:201
    for (size_t i = 0; i < num_ints; i += ints_per_page) {
  404ce3:	48 8d 90 00 00 02 00 	lea    0x20000(%rax),%rdx
  404cea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:202
        address[i] = 0;
  404cf0:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:201
    for (size_t i = 0; i < num_ints; i += ints_per_page) {
  404cf6:	48 05 00 10 00 00    	add    $0x1000,%rax
  404cfc:	48 39 d0             	cmp    %rdx,%rax
  404cff:	75 ef                	jne    404cf0 <_Z24allocate_pf_status_arrayv+0x60>
_Z24allocate_pf_status_arrayv():
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:217
}
  404d01:	48 83 c4 08          	add    $0x8,%rsp
  404d05:	c3                   	retq   
  404d06:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  404d0d:	00 00 00 
/usr/include/x86_64-linux-gnu/bits/stdio2.h:107
  return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
  404d10:	48 8d 35 49 0b 00 00 	lea    0xb49(%rip),%rsi        # 405860 <_IO_stdin_used+0x860>
printf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:107
  404d17:	bf 01 00 00 00       	mov    $0x1,%edi
  404d1c:	31 c0                	xor    %eax,%eax
  404d1e:	e8 1d d6 ff ff       	callq  402340 <__printf_chk@plt>
  404d23:	eb b0                	jmp    404cd5 <_Z24allocate_pf_status_arrayv+0x45>
  404d25:	0f 1f 00             	nopl   (%rax)
_Z24allocate_pf_status_arrayv():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:107
  404d28:	bf 01 00 00 00       	mov    $0x1,%edi
printf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:107
  404d2d:	48 8d 35 04 0b 00 00 	lea    0xb04(%rip),%rsi        # 405838 <_IO_stdin_used+0x838>
  404d34:	31 c0                	xor    %eax,%eax
  404d36:	e8 05 d6 ff ff       	callq  402340 <__printf_chk@plt>
_Z24allocate_pf_status_arrayv():
/home/aliha951/ipdps-artifact/gups-modified/src/libpfq_single.h:212
  if(mlock(ptr, 32*1024*sizeof(int))){
  404d3b:	48 8b 3d 86 36 00 00 	mov    0x3686(%rip),%rdi        # 4083c8 <ptr>
printf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:107
  404d42:	eb 83                	jmp    404cc7 <_Z24allocate_pf_status_arrayv+0x37>
_Z24allocate_pf_status_arrayv():
  404d44:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  404d4b:	00 00 00 
  404d4e:	66 90                	xchg   %ax,%ax

0000000000404d50 <_ZNSt6vectorI5stateSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_>:
_ZNSt6vectorI5stateSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_():
/usr/include/c++/10/bits/vector.tcc:426

#if __cplusplus >= 201103L
  template<typename _Tp, typename _Alloc>
    template<typename... _Args>
      void
      vector<_Tp, _Alloc>::
  404d50:	f3 0f 1e fa          	endbr64 
  404d54:	41 57                	push   %r15
  404d56:	48 89 d1             	mov    %rdx,%rcx
_ZNKSt6vectorI5stateSaIS0_EE4sizeEv():
/usr/include/c++/10/bits/stl_vector.h:919
      { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
  404d59:	48 ba ab aa aa aa aa 	movabs $0xaaaaaaaaaaaaaaab,%rdx
  404d60:	aa aa aa 
_ZNSt6vectorI5stateSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_():
/usr/include/c++/10/bits/vector.tcc:426
  404d63:	41 56                	push   %r14
  404d65:	41 55                	push   %r13
  404d67:	49 89 f5             	mov    %rsi,%r13
_ZNKSt6vectorI5stateSaIS0_EE12_M_check_lenEmPKc():
/usr/include/c++/10/bits/stl_vector.h:1758
	if (max_size() - size() < __n)
  404d6a:	48 be 55 55 55 55 55 	movabs $0x555555555555555,%rsi
  404d71:	55 55 05 
_ZNSt6vectorI5stateSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_():
/usr/include/c++/10/bits/vector.tcc:426
  404d74:	41 54                	push   %r12
  404d76:	55                   	push   %rbp
  404d77:	53                   	push   %rbx
  404d78:	48 83 ec 18          	sub    $0x18,%rsp
  404d7c:	4c 8b 67 08          	mov    0x8(%rdi),%r12
  404d80:	4c 8b 37             	mov    (%rdi),%r14
_ZNKSt6vectorI5stateSaIS0_EE4sizeEv():
/usr/include/c++/10/bits/stl_vector.h:919
      { return size_type(this->_M_impl._M_finish - this->_M_impl._M_start); }
  404d83:	4c 89 e0             	mov    %r12,%rax
  404d86:	4c 29 f0             	sub    %r14,%rax
  404d89:	48 c1 f8 03          	sar    $0x3,%rax
  404d8d:	48 0f af c2          	imul   %rdx,%rax
_ZNKSt6vectorI5stateSaIS0_EE12_M_check_lenEmPKc():
/usr/include/c++/10/bits/stl_vector.h:1758
	if (max_size() - size() < __n)
  404d91:	48 39 f0             	cmp    %rsi,%rax
  404d94:	0f 84 0a 01 00 00    	je     404ea4 <_ZNSt6vectorI5stateSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x154>
  404d9a:	48 85 c0             	test   %rax,%rax
  404d9d:	ba 01 00 00 00       	mov    $0x1,%edx
  404da2:	48 89 fd             	mov    %rdi,%rbp
  404da5:	48 0f 45 d0          	cmovne %rax,%rdx
  404da9:	31 ff                	xor    %edi,%edi
  404dab:	48 01 d0             	add    %rdx,%rax
_ZN9__gnu_cxxmiIP5stateSt6vectorIS1_SaIS1_EEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_():
/usr/include/c++/10/bits/stl_iterator.h:1239
    _GLIBCXX20_CONSTEXPR
    inline typename __normal_iterator<_Iterator, _Container>::difference_type
    operator-(const __normal_iterator<_Iterator, _Container>& __lhs,
	      const __normal_iterator<_Iterator, _Container>& __rhs)
    _GLIBCXX_NOEXCEPT
    { return __lhs.base() - __rhs.base(); }
  404dae:	4c 89 ea             	mov    %r13,%rdx
  404db1:	40 0f 92 c7          	setb   %dil
  404db5:	4c 29 f2             	sub    %r14,%rdx
_ZNKSt6vectorI5stateSaIS0_EE12_M_check_lenEmPKc():
/usr/include/c++/10/bits/stl_vector.h:1762
	return (__len < size() || __len > max_size()) ? max_size() : __len;
  404db8:	48 85 ff             	test   %rdi,%rdi
  404dbb:	0f 85 d7 00 00 00    	jne    404e98 <_ZNSt6vectorI5stateSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x148>
_ZNSt12_Vector_baseI5stateSaIS0_EE11_M_allocateEm():
/usr/include/c++/10/bits/stl_vector.h:346
	return __n != 0 ? _Tr::allocate(_M_impl, __n) : pointer();
  404dc1:	48 85 c0             	test   %rax,%rax
  404dc4:	75 5a                	jne    404e20 <_ZNSt6vectorI5stateSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0xd0>
  404dc6:	45 31 ff             	xor    %r15d,%r15d
  404dc9:	31 db                	xor    %ebx,%ebx
_ZN9__gnu_cxx13new_allocatorI5stateE9constructIS1_JRKS1_EEEvPT_DpOT0_():
/usr/include/c++/10/new:175
  404dcb:	48 8b 41 10          	mov    0x10(%rcx),%rax
  404dcf:	f3 0f 6f 09          	movdqu (%rcx),%xmm1
_ZNSt6vectorI5stateSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_():
/usr/include/c++/10/bits/vector.tcc:464
	  if _GLIBCXX17_CONSTEXPR (_S_use_relocate())
	    {
	      __new_finish = _S_relocate(__old_start, __position.base(),
					 __new_start, _M_get_Tp_allocator());

	      ++__new_finish;
  404dd3:	4c 8d 4c 13 18       	lea    0x18(%rbx,%rdx,1),%r9
_ZSt14__relocate_a_1I5stateS0_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS3_E4typeES5_S5_S5_RSaIT0_E():
/usr/include/c++/10/bits/stl_uninitialized.h:1003
  template <typename _Tp, typename _Up>
    inline __enable_if_t<std::__is_bitwise_relocatable<_Tp>::value, _Tp*>
    __relocate_a_1(_Tp* __first, _Tp* __last,
		   _Tp* __result, allocator<_Up>&) noexcept
    {
      ptrdiff_t __count = __last - __first;
  404dd8:	4d 29 ec             	sub    %r13,%r12
_ZN9__gnu_cxx13new_allocatorI5stateE9constructIS1_JRKS1_EEEvPT_DpOT0_():
/usr/include/c++/10/bits/stl_uninitialized.h:1003
  404ddb:	48 89 44 13 10       	mov    %rax,0x10(%rbx,%rdx,1)
_ZSt14__relocate_a_1I5stateS0_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS3_E4typeES5_S5_S5_RSaIT0_E():
/usr/include/c++/10/bits/stl_uninitialized.h:1006
      if (__count > 0)
	__builtin_memmove(__result, __first, __count * sizeof(_Tp));
      return __result + __count;
  404de0:	4b 8d 04 21          	lea    (%r9,%r12,1),%rax
  404de4:	48 89 04 24          	mov    %rax,(%rsp)
_ZN9__gnu_cxx13new_allocatorI5stateE9constructIS1_JRKS1_EEEvPT_DpOT0_():
/usr/include/c++/10/bits/stl_uninitialized.h:1006
  404de8:	0f 11 0c 13          	movups %xmm1,(%rbx,%rdx,1)
_ZSt14__relocate_a_1I5stateS0_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS3_E4typeES5_S5_S5_RSaIT0_E():
/usr/include/c++/10/bits/stl_uninitialized.h:1004
      if (__count > 0)
  404dec:	48 85 d2             	test   %rdx,%rdx
  404def:	7f 67                	jg     404e58 <_ZNSt6vectorI5stateSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x108>
  404df1:	4d 85 e4             	test   %r12,%r12
  404df4:	0f 8f 86 00 00 00    	jg     404e80 <_ZNSt6vectorI5stateSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x130>
_ZNSt12_Vector_baseI5stateSaIS0_EE13_M_deallocateEPS0_m():
/usr/include/c++/10/bits/stl_vector.h:353
	if (__p)
  404dfa:	4d 85 f6             	test   %r14,%r14
  404dfd:	75 73                	jne    404e72 <_ZNSt6vectorI5stateSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x122>
_ZNSt6vectorI5stateSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_():
/usr/include/c++/10/bits/vector.tcc:502
#endif
	std::_Destroy(__old_start, __old_finish, _M_get_Tp_allocator());
      _GLIBCXX_ASAN_ANNOTATE_REINIT;
      _M_deallocate(__old_start,
		    this->_M_impl._M_end_of_storage - __old_start);
      this->_M_impl._M_start = __new_start;
  404dff:	66 48 0f 6e c3       	movq   %rbx,%xmm0
/usr/include/c++/10/bits/vector.tcc:504
      this->_M_impl._M_finish = __new_finish;
      this->_M_impl._M_end_of_storage = __new_start + __len;
  404e04:	4c 89 7d 10          	mov    %r15,0x10(%rbp)
/usr/include/c++/10/bits/vector.tcc:502
      this->_M_impl._M_start = __new_start;
  404e08:	0f 16 04 24          	movhps (%rsp),%xmm0
  404e0c:	0f 11 45 00          	movups %xmm0,0x0(%rbp)
/usr/include/c++/10/bits/vector.tcc:505
    }
  404e10:	48 83 c4 18          	add    $0x18,%rsp
  404e14:	5b                   	pop    %rbx
  404e15:	5d                   	pop    %rbp
  404e16:	41 5c                	pop    %r12
  404e18:	41 5d                	pop    %r13
  404e1a:	41 5e                	pop    %r14
  404e1c:	41 5f                	pop    %r15
  404e1e:	c3                   	retq   
  404e1f:	90                   	nop
_ZN9__gnu_cxx13new_allocatorI5stateE8allocateEmPKv():
/usr/include/c++/10/ext/new_allocator.h:121
	return static_cast<_Tp*>(::operator new(__n * sizeof(_Tp)));
  404e20:	48 39 f0             	cmp    %rsi,%rax
  404e23:	48 0f 47 c6          	cmova  %rsi,%rax
  404e27:	4c 8d 3c 40          	lea    (%rax,%rax,2),%r15
  404e2b:	49 c1 e7 03          	shl    $0x3,%r15
  404e2f:	4c 89 ff             	mov    %r15,%rdi
  404e32:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
  404e37:	48 89 14 24          	mov    %rdx,(%rsp)
  404e3b:	e8 70 d6 ff ff       	callq  4024b0 <_Znwm@plt>
_ZNSt12_Vector_baseI5stateSaIS0_EE11_M_allocateEm():
/usr/include/c++/10/ext/new_allocator.h:121
  404e40:	48 8b 14 24          	mov    (%rsp),%rdx
  404e44:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
_ZN9__gnu_cxx13new_allocatorI5stateE8allocateEmPKv():
/usr/include/c++/10/ext/new_allocator.h:121
  404e49:	48 89 c3             	mov    %rax,%rbx
_ZNSt6vectorI5stateSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_():
/usr/include/c++/10/bits/vector.tcc:504
      this->_M_impl._M_end_of_storage = __new_start + __len;
  404e4c:	49 01 c7             	add    %rax,%r15
_ZNSt12_Vector_baseI5stateSaIS0_EE11_M_allocateEm():
/usr/include/c++/10/bits/vector.tcc:504
  404e4f:	e9 77 ff ff ff       	jmpq   404dcb <_ZNSt6vectorI5stateSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x7b>
  404e54:	0f 1f 40 00          	nopl   0x0(%rax)
_ZSt14__relocate_a_1I5stateS0_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS3_E4typeES5_S5_S5_RSaIT0_E():
/usr/include/c++/10/bits/stl_uninitialized.h:1005
	__builtin_memmove(__result, __first, __count * sizeof(_Tp));
  404e58:	4c 89 f6             	mov    %r14,%rsi
  404e5b:	48 89 df             	mov    %rbx,%rdi
  404e5e:	4c 89 4c 24 08       	mov    %r9,0x8(%rsp)
  404e63:	e8 68 d7 ff ff       	callq  4025d0 <memmove@plt>
/usr/include/c++/10/bits/stl_uninitialized.h:1004
      if (__count > 0)
  404e68:	4d 85 e4             	test   %r12,%r12
  404e6b:	4c 8b 4c 24 08       	mov    0x8(%rsp),%r9
  404e70:	7f 0e                	jg     404e80 <_ZNSt6vectorI5stateSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0x130>
_ZN9__gnu_cxx13new_allocatorI5stateE10deallocateEPS1_m():
/usr/include/c++/10/ext/new_allocator.h:139
	::operator delete(__p
  404e72:	4c 89 f7             	mov    %r14,%rdi
  404e75:	e8 06 d6 ff ff       	callq  402480 <_ZdlPv@plt>
_ZNSt16allocator_traitsISaI5stateEE10deallocateERS1_PS0_m():
/usr/include/c++/10/bits/alloc_traits.h:492
       *
       *  Calls <tt> a.deallocate(p, n) </tt>
      */
      static _GLIBCXX20_CONSTEXPR void
      deallocate(allocator_type& __a, pointer __p, size_type __n)
      { __a.deallocate(__p, __n); }
  404e7a:	eb 83                	jmp    404dff <_ZNSt6vectorI5stateSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0xaf>
  404e7c:	0f 1f 40 00          	nopl   0x0(%rax)
_ZSt14__relocate_a_1I5stateS0_ENSt9enable_ifIXsrSt24__is_bitwise_relocatableIT_vE5valueEPS3_E4typeES5_S5_S5_RSaIT0_E():
/usr/include/c++/10/bits/stl_uninitialized.h:1005
	__builtin_memmove(__result, __first, __count * sizeof(_Tp));
  404e80:	4c 89 e2             	mov    %r12,%rdx
  404e83:	4c 89 ee             	mov    %r13,%rsi
  404e86:	4c 89 cf             	mov    %r9,%rdi
  404e89:	e8 b2 d5 ff ff       	callq  402440 <memcpy@plt>
  404e8e:	e9 67 ff ff ff       	jmpq   404dfa <_ZNSt6vectorI5stateSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0xaa>
  404e93:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
_ZNKSt6vectorI5stateSaIS0_EE12_M_check_lenEmPKc():
/usr/include/c++/10/bits/stl_uninitialized.h:1005
  404e98:	49 bf f8 ff ff ff ff 	movabs $0x7ffffffffffffff8,%r15
  404e9f:	ff ff 7f 
  404ea2:	eb 8b                	jmp    404e2f <_ZNSt6vectorI5stateSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_+0xdf>
/usr/include/c++/10/bits/stl_vector.h:1759
	  __throw_length_error(__N(__s));
  404ea4:	48 8d 3d d5 09 00 00 	lea    0x9d5(%rip),%rdi        # 405880 <_IO_stdin_used+0x880>
  404eab:	e8 40 d5 ff ff       	callq  4023f0 <_ZSt20__throw_length_errorPKc@plt>

0000000000404eb0 <__libc_csu_init>:
__libc_csu_init():
  404eb0:	f3 0f 1e fa          	endbr64 
  404eb4:	41 57                	push   %r15
  404eb6:	4c 8d 3d 33 2f 00 00 	lea    0x2f33(%rip),%r15        # 407df0 <__frame_dummy_init_array_entry>
  404ebd:	41 56                	push   %r14
  404ebf:	49 89 d6             	mov    %rdx,%r14
  404ec2:	41 55                	push   %r13
  404ec4:	49 89 f5             	mov    %rsi,%r13
  404ec7:	41 54                	push   %r12
  404ec9:	41 89 fc             	mov    %edi,%r12d
  404ecc:	55                   	push   %rbp
  404ecd:	48 8d 2d 2c 2f 00 00 	lea    0x2f2c(%rip),%rbp        # 407e00 <__do_global_dtors_aux_fini_array_entry>
  404ed4:	53                   	push   %rbx
  404ed5:	4c 29 fd             	sub    %r15,%rbp
  404ed8:	48 83 ec 08          	sub    $0x8,%rsp
  404edc:	e8 1f d1 ff ff       	callq  402000 <_init>
  404ee1:	48 c1 fd 03          	sar    $0x3,%rbp
  404ee5:	74 1f                	je     404f06 <__libc_csu_init+0x56>
  404ee7:	31 db                	xor    %ebx,%ebx
  404ee9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  404ef0:	4c 89 f2             	mov    %r14,%rdx
  404ef3:	4c 89 ee             	mov    %r13,%rsi
  404ef6:	44 89 e7             	mov    %r12d,%edi
  404ef9:	41 ff 14 df          	callq  *(%r15,%rbx,8)
  404efd:	48 83 c3 01          	add    $0x1,%rbx
  404f01:	48 39 dd             	cmp    %rbx,%rbp
  404f04:	75 ea                	jne    404ef0 <__libc_csu_init+0x40>
  404f06:	48 83 c4 08          	add    $0x8,%rsp
  404f0a:	5b                   	pop    %rbx
  404f0b:	5d                   	pop    %rbp
  404f0c:	41 5c                	pop    %r12
  404f0e:	41 5d                	pop    %r13
  404f10:	41 5e                	pop    %r14
  404f12:	41 5f                	pop    %r15
  404f14:	c3                   	retq   
  404f15:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  404f1c:	00 00 00 00 

0000000000404f20 <__libc_csu_fini>:
__libc_csu_fini():
  404f20:	f3 0f 1e fa          	endbr64 
  404f24:	c3                   	retq   

Disassembly of section .fini:

0000000000404f28 <_fini>:
_fini():
  404f28:	f3 0f 1e fa          	endbr64 
  404f2c:	48 83 ec 08          	sub    $0x8,%rsp
  404f30:	48 83 c4 08          	add    $0x8,%rsp
  404f34:	c3                   	retq   
