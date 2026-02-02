
../gups_single_threaded:     file format elf64-x86-64


Disassembly of section .init:

0000000000401000 <_init>:
_init():
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
  401180:	f3 0f 1e fa          	endbr64 
  401184:	68 15 00 00 00       	pushq  $0x15
  401189:	f2 e9 91 fe ff ff    	bnd jmpq 401020 <.plt>
  40118f:	90                   	nop
  401190:	f3 0f 1e fa          	endbr64 
  401194:	68 16 00 00 00       	pushq  $0x16
  401199:	f2 e9 81 fe ff ff    	bnd jmpq 401020 <.plt>
  40119f:	90                   	nop
  4011a0:	f3 0f 1e fa          	endbr64 
  4011a4:	68 17 00 00 00       	pushq  $0x17
  4011a9:	f2 e9 71 fe ff ff    	bnd jmpq 401020 <.plt>
  4011af:	90                   	nop
  4011b0:	f3 0f 1e fa          	endbr64 
  4011b4:	68 18 00 00 00       	pushq  $0x18
  4011b9:	f2 e9 61 fe ff ff    	bnd jmpq 401020 <.plt>
  4011bf:	90                   	nop
  4011c0:	f3 0f 1e fa          	endbr64 
  4011c4:	68 19 00 00 00       	pushq  $0x19
  4011c9:	f2 e9 51 fe ff ff    	bnd jmpq 401020 <.plt>
  4011cf:	90                   	nop
  4011d0:	f3 0f 1e fa          	endbr64 
  4011d4:	68 1a 00 00 00       	pushq  $0x1a
  4011d9:	f2 e9 41 fe ff ff    	bnd jmpq 401020 <.plt>
  4011df:	90                   	nop
  4011e0:	f3 0f 1e fa          	endbr64 
  4011e4:	68 1b 00 00 00       	pushq  $0x1b
  4011e9:	f2 e9 31 fe ff ff    	bnd jmpq 401020 <.plt>
  4011ef:	90                   	nop
  4011f0:	f3 0f 1e fa          	endbr64 
  4011f4:	68 1c 00 00 00       	pushq  $0x1c
  4011f9:	f2 e9 21 fe ff ff    	bnd jmpq 401020 <.plt>
  4011ff:	90                   	nop
  401200:	f3 0f 1e fa          	endbr64 
  401204:	68 1d 00 00 00       	pushq  $0x1d
  401209:	f2 e9 11 fe ff ff    	bnd jmpq 401020 <.plt>
  40120f:	90                   	nop
  401210:	f3 0f 1e fa          	endbr64 
  401214:	68 1e 00 00 00       	pushq  $0x1e
  401219:	f2 e9 01 fe ff ff    	bnd jmpq 401020 <.plt>
  40121f:	90                   	nop
  401220:	f3 0f 1e fa          	endbr64 
  401224:	68 1f 00 00 00       	pushq  $0x1f
  401229:	f2 e9 f1 fd ff ff    	bnd jmpq 401020 <.plt>
  40122f:	90                   	nop
  401230:	f3 0f 1e fa          	endbr64 
  401234:	68 20 00 00 00       	pushq  $0x20
  401239:	f2 e9 e1 fd ff ff    	bnd jmpq 401020 <.plt>
  40123f:	90                   	nop
  401240:	f3 0f 1e fa          	endbr64 
  401244:	68 21 00 00 00       	pushq  $0x21
  401249:	f2 e9 d1 fd ff ff    	bnd jmpq 401020 <.plt>
  40124f:	90                   	nop
  401250:	f3 0f 1e fa          	endbr64 
  401254:	68 22 00 00 00       	pushq  $0x22
  401259:	f2 e9 c1 fd ff ff    	bnd jmpq 401020 <.plt>
  40125f:	90                   	nop
  401260:	f3 0f 1e fa          	endbr64 
  401264:	68 23 00 00 00       	pushq  $0x23
  401269:	f2 e9 b1 fd ff ff    	bnd jmpq 401020 <.plt>
  40126f:	90                   	nop
  401270:	f3 0f 1e fa          	endbr64 
  401274:	68 24 00 00 00       	pushq  $0x24
  401279:	f2 e9 a1 fd ff ff    	bnd jmpq 401020 <.plt>
  40127f:	90                   	nop
  401280:	f3 0f 1e fa          	endbr64 
  401284:	68 25 00 00 00       	pushq  $0x25
  401289:	f2 e9 91 fd ff ff    	bnd jmpq 401020 <.plt>
  40128f:	90                   	nop
  401290:	f3 0f 1e fa          	endbr64 
  401294:	68 26 00 00 00       	pushq  $0x26
  401299:	f2 e9 81 fd ff ff    	bnd jmpq 401020 <.plt>
  40129f:	90                   	nop
  4012a0:	f3 0f 1e fa          	endbr64 
  4012a4:	68 27 00 00 00       	pushq  $0x27
  4012a9:	f2 e9 71 fd ff ff    	bnd jmpq 401020 <.plt>
  4012af:	90                   	nop

Disassembly of section .plt.sec:

00000000004012b0 <__printf_chk@plt>:
  4012b0:	f3 0f 1e fa          	endbr64 
  4012b4:	f2 ff 25 5d 5d 00 00 	bnd jmpq *0x5d5d(%rip)        # 407018 <__printf_chk@GLIBC_2.3.4>
  4012bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004012c0 <_ZNSo3putEc@plt>:
  4012c0:	f3 0f 1e fa          	endbr64 
  4012c4:	f2 ff 25 55 5d 00 00 	bnd jmpq *0x5d55(%rip)        # 407020 <_ZNSo3putEc@GLIBCXX_3.4>
  4012cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004012d0 <syscall@plt>:
  4012d0:	f3 0f 1e fa          	endbr64 
  4012d4:	f2 ff 25 4d 5d 00 00 	bnd jmpq *0x5d4d(%rip)        # 407028 <syscall@GLIBC_2.2.5>
  4012db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004012e0 <bind@plt>:
  4012e0:	f3 0f 1e fa          	endbr64 
  4012e4:	f2 ff 25 45 5d 00 00 	bnd jmpq *0x5d45(%rip)        # 407030 <bind@GLIBC_2.2.5>
  4012eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004012f0 <strstr@plt>:
  4012f0:	f3 0f 1e fa          	endbr64 
  4012f4:	f2 ff 25 3d 5d 00 00 	bnd jmpq *0x5d3d(%rip)        # 407038 <strstr@GLIBC_2.2.5>
  4012fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401300 <socket@plt>:
  401300:	f3 0f 1e fa          	endbr64 
  401304:	f2 ff 25 35 5d 00 00 	bnd jmpq *0x5d35(%rip)        # 407040 <socket@GLIBC_2.2.5>
  40130b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401310 <fork@plt>:
  401310:	f3 0f 1e fa          	endbr64 
  401314:	f2 ff 25 2d 5d 00 00 	bnd jmpq *0x5d2d(%rip)        # 407048 <fork@GLIBC_2.2.5>
  40131b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401320 <execlp@plt>:
  401320:	f3 0f 1e fa          	endbr64 
  401324:	f2 ff 25 25 5d 00 00 	bnd jmpq *0x5d25(%rip)        # 407050 <execlp@GLIBC_2.2.5>
  40132b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401330 <recv@plt>:
  401330:	f3 0f 1e fa          	endbr64 
  401334:	f2 ff 25 1d 5d 00 00 	bnd jmpq *0x5d1d(%rip)        # 407058 <recv@GLIBC_2.2.5>
  40133b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401340 <strlen@plt>:
  401340:	f3 0f 1e fa          	endbr64 
  401344:	f2 ff 25 15 5d 00 00 	bnd jmpq *0x5d15(%rip)        # 407060 <strlen@GLIBC_2.2.5>
  40134b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401350 <send@plt>:
  401350:	f3 0f 1e fa          	endbr64 
  401354:	f2 ff 25 0d 5d 00 00 	bnd jmpq *0x5d0d(%rip)        # 407068 <send@GLIBC_2.2.5>
  40135b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401360 <getrusage@plt>:
  401360:	f3 0f 1e fa          	endbr64 
  401364:	f2 ff 25 05 5d 00 00 	bnd jmpq *0x5d05(%rip)        # 407070 <getrusage@GLIBC_2.2.5>
  40136b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401370 <__snprintf_chk@plt>:
  401370:	f3 0f 1e fa          	endbr64 
  401374:	f2 ff 25 fd 5c 00 00 	bnd jmpq *0x5cfd(%rip)        # 407078 <__snprintf_chk@GLIBC_2.3.4>
  40137b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401380 <_ZNSo5flushEv@plt>:
  401380:	f3 0f 1e fa          	endbr64 
  401384:	f2 ff 25 f5 5c 00 00 	bnd jmpq *0x5cf5(%rip)        # 407080 <_ZNSo5flushEv@GLIBCXX_3.4>
  40138b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401390 <perror@plt>:
  401390:	f3 0f 1e fa          	endbr64 
  401394:	f2 ff 25 ed 5c 00 00 	bnd jmpq *0x5ced(%rip)        # 407088 <perror@GLIBC_2.2.5>
  40139b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004013a0 <system@plt>:
  4013a0:	f3 0f 1e fa          	endbr64 
  4013a4:	f2 ff 25 e5 5c 00 00 	bnd jmpq *0x5ce5(%rip)        # 407090 <system@GLIBC_2.2.5>
  4013ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004013b0 <__cxa_atexit@plt>:
  4013b0:	f3 0f 1e fa          	endbr64 
  4013b4:	f2 ff 25 dd 5c 00 00 	bnd jmpq *0x5cdd(%rip)        # 407098 <__cxa_atexit@GLIBC_2.2.5>
  4013bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004013c0 <__isoc99_sscanf@plt>:
  4013c0:	f3 0f 1e fa          	endbr64 
  4013c4:	f2 ff 25 d5 5c 00 00 	bnd jmpq *0x5cd5(%rip)        # 4070a0 <__isoc99_sscanf@GLIBC_2.7>
  4013cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004013d0 <fclose@plt>:
  4013d0:	f3 0f 1e fa          	endbr64 
  4013d4:	f2 ff 25 cd 5c 00 00 	bnd jmpq *0x5ccd(%rip)        # 4070a8 <fclose@GLIBC_2.2.5>
  4013db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004013e0 <__stack_chk_fail@plt>:
  4013e0:	f3 0f 1e fa          	endbr64 
  4013e4:	f2 ff 25 c5 5c 00 00 	bnd jmpq *0x5cc5(%rip)        # 4070b0 <__stack_chk_fail@GLIBC_2.4>
  4013eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004013f0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>:
  4013f0:	f3 0f 1e fa          	endbr64 
  4013f4:	f2 ff 25 bd 5c 00 00 	bnd jmpq *0x5cbd(%rip)        # 4070b8 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@GLIBCXX_3.4.9>
  4013fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401400 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>:
  401400:	f3 0f 1e fa          	endbr64 
  401404:	f2 ff 25 b5 5c 00 00 	bnd jmpq *0x5cb5(%rip)        # 4070c0 <_ZNKSt5ctypeIcE13_M_widen_initEv@GLIBCXX_3.4.11>
  40140b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401410 <fopen@plt>:
  401410:	f3 0f 1e fa          	endbr64 
  401414:	f2 ff 25 ad 5c 00 00 	bnd jmpq *0x5cad(%rip)        # 4070c8 <fopen@GLIBC_2.2.5>
  40141b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401420 <free@plt>:
  401420:	f3 0f 1e fa          	endbr64 
  401424:	f2 ff 25 a5 5c 00 00 	bnd jmpq *0x5ca5(%rip)        # 4070d0 <free@GLIBC_2.2.5>
  40142b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401430 <exit@plt>:
  401430:	f3 0f 1e fa          	endbr64 
  401434:	f2 ff 25 9d 5c 00 00 	bnd jmpq *0x5c9d(%rip)        # 4070d8 <exit@GLIBC_2.2.5>
  40143b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401440 <_ZSt16__throw_bad_castv@plt>:
  401440:	f3 0f 1e fa          	endbr64 
  401444:	f2 ff 25 95 5c 00 00 	bnd jmpq *0x5c95(%rip)        # 4070e0 <_ZSt16__throw_bad_castv@GLIBCXX_3.4>
  40144b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401450 <malloc@plt>:
  401450:	f3 0f 1e fa          	endbr64 
  401454:	f2 ff 25 8d 5c 00 00 	bnd jmpq *0x5c8d(%rip)        # 4070e8 <malloc@GLIBC_2.2.5>
  40145b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401460 <strtol@plt>:
  401460:	f3 0f 1e fa          	endbr64 
  401464:	f2 ff 25 85 5c 00 00 	bnd jmpq *0x5c85(%rip)        # 4070f0 <strtol@GLIBC_2.2.5>
  40146b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401470 <ioctl@plt>:
  401470:	f3 0f 1e fa          	endbr64 
  401474:	f2 ff 25 7d 5c 00 00 	bnd jmpq *0x5c7d(%rip)        # 4070f8 <ioctl@GLIBC_2.2.5>
  40147b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401480 <read@plt>:
  401480:	f3 0f 1e fa          	endbr64 
  401484:	f2 ff 25 75 5c 00 00 	bnd jmpq *0x5c75(%rip)        # 407100 <read@GLIBC_2.2.5>
  40148b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401490 <getpid@plt>:
  401490:	f3 0f 1e fa          	endbr64 
  401494:	f2 ff 25 6d 5c 00 00 	bnd jmpq *0x5c6d(%rip)        # 407108 <getpid@GLIBC_2.2.5>
  40149b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004014a0 <fread@plt>:
  4014a0:	f3 0f 1e fa          	endbr64 
  4014a4:	f2 ff 25 65 5c 00 00 	bnd jmpq *0x5c65(%rip)        # 407110 <fread@GLIBC_2.2.5>
  4014ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004014b0 <_ZNSt8ios_base4InitC1Ev@plt>:
  4014b0:	f3 0f 1e fa          	endbr64 
  4014b4:	f2 ff 25 5d 5c 00 00 	bnd jmpq *0x5c5d(%rip)        # 407118 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
  4014bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004014c0 <fgets@plt>:
  4014c0:	f3 0f 1e fa          	endbr64 
  4014c4:	f2 ff 25 55 5c 00 00 	bnd jmpq *0x5c55(%rip)        # 407120 <fgets@GLIBC_2.2.5>
  4014cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004014d0 <gettimeofday@plt>:
  4014d0:	f3 0f 1e fa          	endbr64 
  4014d4:	f2 ff 25 4d 5c 00 00 	bnd jmpq *0x5c4d(%rip)        # 407128 <gettimeofday@GLIBC_2.2.5>
  4014db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004014e0 <__fprintf_chk@plt>:
  4014e0:	f3 0f 1e fa          	endbr64 
  4014e4:	f2 ff 25 45 5c 00 00 	bnd jmpq *0x5c45(%rip)        # 407130 <__fprintf_chk@GLIBC_2.3.4>
  4014eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004014f0 <_ZNSolsEi@plt>:
  4014f0:	f3 0f 1e fa          	endbr64 
  4014f4:	f2 ff 25 3d 5c 00 00 	bnd jmpq *0x5c3d(%rip)        # 407138 <_ZNSolsEi@GLIBCXX_3.4>
  4014fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401500 <__isoc99_fscanf@plt>:
  401500:	f3 0f 1e fa          	endbr64 
  401504:	f2 ff 25 35 5c 00 00 	bnd jmpq *0x5c35(%rip)        # 407140 <__isoc99_fscanf@GLIBC_2.7>
  40150b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401510 <fwrite@plt>:
  401510:	f3 0f 1e fa          	endbr64 
  401514:	f2 ff 25 2d 5c 00 00 	bnd jmpq *0x5c2d(%rip)        # 407148 <fwrite@GLIBC_2.2.5>
  40151b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401520 <close@plt>:
  401520:	f3 0f 1e fa          	endbr64 
  401524:	f2 ff 25 25 5c 00 00 	bnd jmpq *0x5c25(%rip)        # 407150 <close@GLIBC_2.2.5>
  40152b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000401530 <main>:
main():
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:43

u64Int HPCC_starts(s64Int n);
double get_time();

int main(int narg, char **arg)
{
  401530:	f3 0f 1e fa          	endbr64 
  401534:	41 57                	push   %r15
  401536:	41 56                	push   %r14
  401538:	41 55                	push   %r13
  40153a:	41 54                	push   %r12
  40153c:	55                   	push   %rbp
  40153d:	89 fd                	mov    %edi,%ebp
  40153f:	53                   	push   %rbx
  401540:	48 89 f3             	mov    %rsi,%rbx
  401543:	48 81 ec 48 01 00 00 	sub    $0x148,%rsp
  40154a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401551:	00 00 
  401553:	48 89 84 24 38 01 00 	mov    %rax,0x138(%rsp)
  40155a:	00 
  40155b:	31 c0                	xor    %eax,%eax
_Z28initialize_perf_measurementsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:175

/* Setup counters before any threads are created by omp
 * Must be called at the begining of the program.
*/
void initialize_perf_measurements(){
  perf_ctrs = setup_counters();
  40155d:	e8 be 0c 00 00       	callq  402220 <_Z14setup_countersv>
  401562:	48 89 05 e7 60 00 00 	mov    %rax,0x60e7(%rip)        # 407650 <perf_ctrs>
  401569:	48 89 15 e8 60 00 00 	mov    %rdx,0x60e8(%rip)        # 407658 <perf_ctrs+0x8>
main():
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:57
  /* command line args = N M chunk
     N = length of global table is 2^N
     M = # of update sets
     chunk = # of updates in one set */

  if (narg != 4) {
  401570:	83 fd 04             	cmp    $0x4,%ebp
  401573:	0f 85 53 04 00 00    	jne    4019cc <main+0x49c>
/usr/include/stdlib.h:363

#ifdef __USE_EXTERN_INLINES
__extern_inline int
__NTH (atoi (const char *__nptr))
{
  return (int) strtol (__nptr, (char **) NULL, 10);
  401579:	48 8b 7b 08          	mov    0x8(%rbx),%rdi
atoi():
/usr/include/stdlib.h:363
  40157d:	31 f6                	xor    %esi,%esi
  40157f:	ba 0a 00 00 00       	mov    $0xa,%edx
main():
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:70

  /* nglobal = entire table
     nlocal = size of table (same as nglobal for single-threaded)
     nlocalm1 = local size - 1 (for index computation) */

  nglobal = ((u64Int) 1) << logtable;
  401584:	41 bd 01 00 00 00    	mov    $0x1,%r13d
atoi():
/usr/include/stdlib.h:363
  40158a:	e8 d1 fe ff ff       	callq  401460 <strtol@plt>
main():
/usr/include/stdlib.h:363
  40158f:	48 8b 7b 10          	mov    0x10(%rbx),%rdi
atoi():
/usr/include/stdlib.h:363
  401593:	31 f6                	xor    %esi,%esi
  401595:	ba 0a 00 00 00       	mov    $0xa,%edx
  40159a:	48 89 c5             	mov    %rax,%rbp
  40159d:	e8 be fe ff ff       	callq  401460 <strtol@plt>
main():
/usr/include/stdlib.h:363
  4015a2:	48 8b 7b 18          	mov    0x18(%rbx),%rdi
atoi():
/usr/include/stdlib.h:363
  4015a6:	31 f6                	xor    %esi,%esi
  4015a8:	ba 0a 00 00 00       	mov    $0xa,%edx
  4015ad:	48 89 04 24          	mov    %rax,(%rsp)
  4015b1:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4015b5:	e8 a6 fe ff ff       	callq  401460 <strtol@plt>
main():
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:70
  4015ba:	89 e9                	mov    %ebp,%ecx
  4015bc:	49 d3 e5             	shl    %cl,%r13
atoi():
/usr/include/stdlib.h:363
  4015bf:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4015c4:	41 89 c6             	mov    %eax,%r14d
main():
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:76
  nlocal = nglobal;
  nlocalm1 = nlocal - 1;

  /* allocate local memory */

  table = (u64Int *) malloc(nlocal*sizeof(u64Int));
  4015c7:	49 63 fd             	movslq %r13d,%rdi
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:72
  nlocalm1 = nlocal - 1;
  4015ca:	45 8d 7d ff          	lea    -0x1(%r13),%r15d
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:76
  table = (u64Int *) malloc(nlocal*sizeof(u64Int));
  4015ce:	48 c1 e7 03          	shl    $0x3,%rdi
  4015d2:	e8 79 fe ff ff       	callq  401450 <malloc@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:78

  if (!table) {
  4015d7:	44 8b 4c 24 10       	mov    0x10(%rsp),%r9d
  4015dc:	48 85 c0             	test   %rax,%rax
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:76
  table = (u64Int *) malloc(nlocal*sizeof(u64Int));
  4015df:	48 89 c5             	mov    %rax,%rbp
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:78
  if (!table) {
  4015e2:	0f 84 c7 03 00 00    	je     4019af <main+0x47f>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:86
  }

  /* initialize global array
     global array starts with table[i] = i */

  for (i = 0; i < nlocal; i++) table[i] = i;
  4015e8:	45 85 ed             	test   %r13d,%r13d
  4015eb:	0f 8e 8f 00 00 00    	jle    401680 <main+0x150>
  4015f1:	41 83 ff 02          	cmp    $0x2,%r15d
  4015f5:	0f 86 4f 03 00 00    	jbe    40194a <main+0x41a>
  4015fb:	44 89 ea             	mov    %r13d,%edx
  4015fe:	66 0f 6f 0d 2a 32 00 	movdqa 0x322a(%rip),%xmm1        # 404830 <_IO_stdin_used+0x830>
  401605:	00 
  401606:	66 0f 6f 2d 32 32 00 	movdqa 0x3232(%rip),%xmm5        # 404840 <_IO_stdin_used+0x840>
  40160d:	00 
  40160e:	66 0f ef e4          	pxor   %xmm4,%xmm4
  401612:	c1 ea 02             	shr    $0x2,%edx
  401615:	48 c1 e2 05          	shl    $0x5,%rdx
  401619:	48 01 c2             	add    %rax,%rdx
  40161c:	0f 1f 40 00          	nopl   0x0(%rax)
  401620:	66 0f 6f c1          	movdqa %xmm1,%xmm0
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:86 (discriminator 2)
  401624:	66 0f 6f d4          	movdqa %xmm4,%xmm2
  401628:	66 0f fe cd          	paddd  %xmm5,%xmm1
  40162c:	48 83 c0 20          	add    $0x20,%rax
  401630:	66 0f 66 d0          	pcmpgtd %xmm0,%xmm2
  401634:	66 0f 6f d8          	movdqa %xmm0,%xmm3
  401638:	66 0f 62 da          	punpckldq %xmm2,%xmm3
  40163c:	66 0f 6a c2          	punpckhdq %xmm2,%xmm0
  401640:	0f 11 58 e0          	movups %xmm3,-0x20(%rax)
  401644:	0f 11 40 f0          	movups %xmm0,-0x10(%rax)
  401648:	48 39 c2             	cmp    %rax,%rdx
  40164b:	75 d3                	jne    401620 <main+0xf0>
  40164d:	44 89 e8             	mov    %r13d,%eax
  401650:	83 e0 fc             	and    $0xfffffffc,%eax
  401653:	41 f6 c5 03          	test   $0x3,%r13b
  401657:	74 27                	je     401680 <main+0x150>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:86
  401659:	48 63 d0             	movslq %eax,%rdx
  40165c:	48 89 54 d5 00       	mov    %rdx,0x0(%rbp,%rdx,8)
  401661:	8d 50 01             	lea    0x1(%rax),%edx
  401664:	41 39 d5             	cmp    %edx,%r13d
  401667:	7e 17                	jle    401680 <main+0x150>
  401669:	48 63 d2             	movslq %edx,%rdx
  40166c:	83 c0 02             	add    $0x2,%eax
  40166f:	48 89 54 d5 00       	mov    %rdx,0x0(%rbp,%rdx,8)
  401674:	41 39 c5             	cmp    %eax,%r13d
  401677:	7e 07                	jle    401680 <main+0x150>
  401679:	48 98                	cltq   
  40167b:	48 89 44 c5 00       	mov    %rax,0x0(%rbp,%rax,8)
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:90

  /* start random # at beginning of stream */

  nupdates = (u64Int) chunk * niterate;
  401680:	48 63 04 24          	movslq (%rsp),%rax
  401684:	4c 63 64 24 08       	movslq 0x8(%rsp),%r12
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:91
  ran = HPCC_starts(0);
  401689:	31 ff                	xor    %edi,%edi
  40168b:	44 89 4c 24 1c       	mov    %r9d,0x1c(%rsp)
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:90
  nupdates = (u64Int) chunk * niterate;
  401690:	4c 0f af e0          	imul   %rax,%r12
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:91
  ran = HPCC_starts(0);
  401694:	e8 a7 16 00 00       	callq  402d40 <_Z11HPCC_startsx>
/usr/include/x86_64-linux-gnu/bits/stdio2.h:107
}

__fortify_function int
printf (const char *__restrict __fmt, ...)
{
  return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
  401699:	48 8d 35 e0 2f 00 00 	lea    0x2fe0(%rip),%rsi        # 404680 <_IO_stdin_used+0x680>
printf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:107
  4016a0:	bf 01 00 00 00       	mov    $0x1,%edi
main():
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:91
  4016a5:	48 89 c3             	mov    %rax,%rbx
printf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:107
  4016a8:	31 c0                	xor    %eax,%eax
  4016aa:	e8 01 fc ff ff       	callq  4012b0 <__printf_chk@plt>
main():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:107
  4016af:	4c 89 ea             	mov    %r13,%rdx
printf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:107
  4016b2:	bf 01 00 00 00       	mov    $0x1,%edi
  4016b7:	31 c0                	xor    %eax,%eax
  4016b9:	48 8d 35 93 2b 00 00 	lea    0x2b93(%rip),%rsi        # 404253 <_IO_stdin_used+0x253>
_Z8get_timev():
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:187

/* get current time in seconds */
double get_time()
{
  struct timeval tv;
  gettimeofday(&tv, NULL);
  4016c0:	4c 8d 6c 24 20       	lea    0x20(%rsp),%r13
printf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:107
  4016c5:	e8 e6 fb ff ff       	callq  4012b0 <__printf_chk@plt>
main():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:107
  4016ca:	4c 89 e2             	mov    %r12,%rdx
printf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:107
  4016cd:	bf 01 00 00 00       	mov    $0x1,%edi
  4016d2:	31 c0                	xor    %eax,%eax
  4016d4:	48 8d 35 8a 2b 00 00 	lea    0x2b8a(%rip),%rsi        # 404265 <_IO_stdin_used+0x265>
  4016db:	e8 d0 fb ff ff       	callq  4012b0 <__printf_chk@plt>
_Z8get_timev():
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:187
  4016e0:	31 f6                	xor    %esi,%esi
  4016e2:	4c 89 ef             	mov    %r13,%rdi
  4016e5:	e8 e6 fd ff ff       	callq  4014d0 <gettimeofday@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:188
  return tv.tv_sec + tv.tv_usec / 1000000.0;
  4016ea:	66 0f ef c9          	pxor   %xmm1,%xmm1
  4016ee:	66 0f ef c0          	pxor   %xmm0,%xmm0
  4016f2:	f2 48 0f 2a 4c 24 20 	cvtsi2sdq 0x20(%rsp),%xmm1
  4016f9:	f2 48 0f 2a 44 24 28 	cvtsi2sdq 0x28(%rsp),%xmm0
  401700:	f2 0f 5e 05 18 31 00 	divsd  0x3118(%rip),%xmm0        # 404820 <_IO_stdin_used+0x820>
  401707:	00 
  401708:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
  40170c:	f2 0f 11 44 24 10    	movsd  %xmm0,0x10(%rsp)
_Z16start_disk_statsPKc():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:306
	fprintf(f, "%d", pid);
	fclose(f);
}

inline void start_disk_stats(const char* result_file_name){
  pid_t pid = fork();
  401712:	e8 f9 fb ff ff       	callq  401310 <fork@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:307
  if (pid < 0) {
  401717:	44 8b 4c 24 1c       	mov    0x1c(%rsp),%r9d
  40171c:	85 c0                	test   %eax,%eax
  40171e:	0f 88 2d 02 00 00    	js     401951 <main+0x421>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:310
    perror("fork failed");
    exit(EXIT_FAILURE);
  } else if (pid == 0) { // Child process
  401724:	0f 84 3d 02 00 00    	je     401967 <main+0x437>
  40172a:	44 89 4c 24 1c       	mov    %r9d,0x1c(%rsp)
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:318
    execlp("/home/aliha951/ipdps-gups/gather_diskstats.sh", "/home/aliha951/ipdps-gups/gather_diskstats.sh", result_file_name, NULL);
    perror("execlp failed");
    exit(EXIT_FAILURE);
  }
  // Parent process continues
  diskstat_pid = pid;
  40172f:	89 05 33 5a 00 00    	mov    %eax,0x5a33(%rip)        # 407168 <diskstat_pid>
main():
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:103
  start_taskstats();                    
  401735:	e8 06 14 00 00       	callq  402b40 <_Z15start_taskstatsv>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:104
  snapshot_proc_pid(BEGIN);
  40173a:	31 ff                	xor    %edi,%edi
  40173c:	e8 af 18 00 00       	callq  402ff0 <_Z17snapshot_proc_pid13SnapshotPoint>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:105
  snapshot_proc_stat(BEGIN);
  401741:	31 ff                	xor    %edi,%edi
  401743:	e8 d8 1b 00 00       	callq  403320 <_Z18snapshot_proc_stat13SnapshotPoint>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:106
  start_counters(&perf_ctrs);
  401748:	48 8d 3d 01 5f 00 00 	lea    0x5f01(%rip),%rdi        # 407650 <perf_ctrs>
  40174f:	e8 cc 0c 00 00       	callq  402420 <_Z14start_countersP13perf_counters>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:107
  trace_marker("BenchmarkKernel_Start");
  401754:	48 8d 3d 5e 2b 00 00 	lea    0x2b5e(%rip),%rdi        # 4042b9 <_IO_stdin_used+0x2b9>
  40175b:	e8 f0 09 00 00       	callq  402150 <_Z12trace_markerPKc>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:108
  start_time_stats();
  401760:	e8 9b 07 00 00       	callq  401f00 <_Z16start_time_statsv>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:111
  for (iterate = 0; iterate < niterate; iterate++) {
  401765:	8b 0c 24             	mov    (%rsp),%ecx
  401768:	44 8b 4c 24 1c       	mov    0x1c(%rsp),%r9d
  40176d:	85 c9                	test   %ecx,%ecx
  40176f:	7e 48                	jle    4017b9 <main+0x289>
  401771:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401775:	85 c0                	test   %eax,%eax
  401777:	7e 40                	jle    4017b9 <main+0x289>
  401779:	31 ff                	xor    %edi,%edi
  40177b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:112
    for (i = 0; i < chunk; i++) {
  401780:	31 d2                	xor    %edx,%edx
  401782:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:113
      ran = (ran << 1) ^ ((s64Int) ran < ZERO64B ? POLY : ZERO64B);
  401788:	48 8d 04 1b          	lea    (%rbx,%rbx,1),%rax
  40178c:	48 89 c6             	mov    %rax,%rsi
  40178f:	48 83 f6 07          	xor    $0x7,%rsi
  401793:	48 85 db             	test   %rbx,%rbx
  401796:	48 0f 48 c6          	cmovs  %rsi,%rax
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:112
    for (i = 0; i < chunk; i++) {
  40179a:	83 c2 01             	add    $0x1,%edx
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:113
      ran = (ran << 1) ^ ((s64Int) ran < ZERO64B ? POLY : ZERO64B);
  40179d:	48 89 c3             	mov    %rax,%rbx
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:115
      index = datum & nlocalm1;
  4017a0:	44 89 f8             	mov    %r15d,%eax
  4017a3:	21 d8                	and    %ebx,%eax
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:116
      table[index] ^= datum;
  4017a5:	48 98                	cltq   
  4017a7:	48 31 5c c5 00       	xor    %rbx,0x0(%rbp,%rax,8)
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:112
    for (i = 0; i < chunk; i++) {
  4017ac:	41 39 d6             	cmp    %edx,%r14d
  4017af:	75 d7                	jne    401788 <main+0x258>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:111
  for (iterate = 0; iterate < niterate; iterate++) {
  4017b1:	83 c7 01             	add    $0x1,%edi
  4017b4:	41 39 f9             	cmp    %edi,%r9d
  4017b7:	75 c7                	jne    401780 <main+0x250>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:121
  stop_time_stats();
  4017b9:	e8 72 07 00 00       	callq  401f30 <_Z15stop_time_statsv>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:122
  trace_marker("BenchmarkKernel_End");
  4017be:	48 8d 3d 0a 2b 00 00 	lea    0x2b0a(%rip),%rdi        # 4042cf <_IO_stdin_used+0x2cf>
  4017c5:	e8 86 09 00 00       	callq  402150 <_Z12trace_markerPKc>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:123
  stop_counters(&perf_ctrs, &user_time, &kernel_time ,&user_instructions, &kernel_instructions);
  4017ca:	48 8d 15 5f 5e 00 00 	lea    0x5e5f(%rip),%rdx        # 407630 <kernel_time>
  4017d1:	4c 8d 05 68 5e 00 00 	lea    0x5e68(%rip),%r8        # 407640 <kernel_instructions>
  4017d8:	48 8d 0d 69 5e 00 00 	lea    0x5e69(%rip),%rcx        # 407648 <user_instructions>
  4017df:	48 8d 35 52 5e 00 00 	lea    0x5e52(%rip),%rsi        # 407638 <user_time>
  4017e6:	48 8d 3d 63 5e 00 00 	lea    0x5e63(%rip),%rdi        # 407650 <perf_ctrs>
  4017ed:	e8 be 0d 00 00       	callq  4025b0 <_Z13stop_countersP13perf_countersPxS1_S1_S1_>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:124
  snapshot_proc_stat(END);
  4017f2:	bf 01 00 00 00       	mov    $0x1,%edi
  4017f7:	e8 24 1b 00 00       	callq  403320 <_Z18snapshot_proc_stat13SnapshotPoint>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:125
  snapshot_proc_pid(END);
  4017fc:	bf 01 00 00 00       	mov    $0x1,%edi
  401801:	e8 ea 17 00 00       	callq  402ff0 <_Z17snapshot_proc_pid13SnapshotPoint>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:126
  stop_taskstats();
  401806:	e8 75 13 00 00       	callq  402b80 <_Z14stop_taskstatsv>
_Z15stop_disk_statsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:322
}

inline void stop_disk_stats() {
  if (diskstat_pid > 0) {
  40180b:	8b 15 57 59 00 00    	mov    0x5957(%rip),%edx        # 407168 <diskstat_pid>
  401811:	85 d2                	test   %edx,%edx
  401813:	0f 8f ce 00 00 00    	jg     4018e7 <main+0x3b7>
main():
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:128
  cleanup_counters(&perf_ctrs);
  401819:	48 8d 3d 30 5e 00 00 	lea    0x5e30(%rip),%rdi        # 407650 <perf_ctrs>
  401820:	e8 cb 0f 00 00       	callq  4027f0 <_Z16cleanup_countersP13perf_counters>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:129
  measure_time_stats();
  401825:	e8 36 07 00 00       	callq  401f60 <_Z18measure_time_statsv>
_Z8get_timev():
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:187
  gettimeofday(&tv, NULL);
  40182a:	31 f6                	xor    %esi,%esi
  40182c:	4c 89 ef             	mov    %r13,%rdi
  40182f:	e8 9c fc ff ff       	callq  4014d0 <gettimeofday@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:188
  return tv.tv_sec + tv.tv_usec / 1000000.0;
  401834:	66 0f ef c9          	pxor   %xmm1,%xmm1
  401838:	66 0f ef c0          	pxor   %xmm0,%xmm0
main():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:107
  40183c:	48 8d 35 a0 2a 00 00 	lea    0x2aa0(%rip),%rsi        # 4042e3 <_IO_stdin_used+0x2e3>
_Z8get_timev():
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:188
  401843:	f2 48 0f 2a 4c 24 20 	cvtsi2sdq 0x20(%rsp),%xmm1
printf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:107
  40184a:	bf 01 00 00 00       	mov    $0x1,%edi
  40184f:	b8 01 00 00 00       	mov    $0x1,%eax
_Z8get_timev():
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:188
  401854:	f2 48 0f 2a 44 24 28 	cvtsi2sdq 0x28(%rsp),%xmm0
  40185b:	f2 0f 5e 05 bd 2f 00 	divsd  0x2fbd(%rip),%xmm0        # 404820 <_IO_stdin_used+0x820>
  401862:	00 
  401863:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
main():
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:130
  t0 = get_time() - t0;
  401867:	f2 0f 5c 44 24 10    	subsd  0x10(%rsp),%xmm0
printf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:107
  40186d:	f2 0f 11 04 24       	movsd  %xmm0,(%rsp)
  401872:	e8 39 fa ff ff       	callq  4012b0 <__printf_chk@plt>
main():
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:133
  Gups = nupdates / t0 / 1.0e9;
  401877:	4d 85 e4             	test   %r12,%r12
  40187a:	f2 0f 10 04 24       	movsd  (%rsp),%xmm0
  40187f:	0f 88 a6 00 00 00    	js     40192b <main+0x3fb>
  401885:	66 0f ef c9          	pxor   %xmm1,%xmm1
  401889:	f2 49 0f 2a cc       	cvtsi2sd %r12,%xmm1
  40188e:	f2 0f 5e c8          	divsd  %xmm0,%xmm1
/usr/include/x86_64-linux-gnu/bits/stdio2.h:107
  401892:	bf 01 00 00 00       	mov    $0x1,%edi
printf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:107
  401897:	b8 01 00 00 00       	mov    $0x1,%eax
  40189c:	48 8d 35 5b 2a 00 00 	lea    0x2a5b(%rip),%rsi        # 4042fe <_IO_stdin_used+0x2fe>
main():
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:133
  4018a3:	f2 0f 5e 0d 7d 2f 00 	divsd  0x2f7d(%rip),%xmm1        # 404828 <_IO_stdin_used+0x828>
  4018aa:	00 
  4018ab:	66 0f 28 c1          	movapd %xmm1,%xmm0
printf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:107
  4018af:	e8 fc f9 ff ff       	callq  4012b0 <__printf_chk@plt>
main():
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:139
  free(table);
  4018b4:	48 89 ef             	mov    %rbp,%rdi
  4018b7:	e8 64 fb ff ff       	callq  401420 <free@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:142
}
  4018bc:	48 8b 84 24 38 01 00 	mov    0x138(%rsp),%rax
  4018c3:	00 
  4018c4:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  4018cb:	00 00 
  4018cd:	0f 85 d7 00 00 00    	jne    4019aa <main+0x47a>
  4018d3:	48 81 c4 48 01 00 00 	add    $0x148,%rsp
  4018da:	31 c0                	xor    %eax,%eax
  4018dc:	5b                   	pop    %rbx
  4018dd:	5d                   	pop    %rbp
  4018de:	41 5c                	pop    %r12
  4018e0:	41 5d                	pop    %r13
  4018e2:	41 5e                	pop    %r14
  4018e4:	41 5f                	pop    %r15
  4018e6:	c3                   	retq   
/usr/include/x86_64-linux-gnu/bits/stdio2.h:67
  return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
  4018e7:	4c 8d 44 24 30       	lea    0x30(%rsp),%r8
snprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:67
  4018ec:	48 8d 35 ed 2d 00 00 	lea    0x2ded(%rip),%rsi        # 4046e0 <_IO_stdin_used+0x6e0>
  4018f3:	b9 09 00 00 00       	mov    $0x9,%ecx
  4018f8:	4c 89 c7             	mov    %r8,%rdi
  4018fb:	f3 a5                	rep movsl %ds:(%rsi),%es:(%rdi)
_Z15stop_disk_statsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:325
    char command[256];
    snprintf(command, sizeof(command), "sudo pkill -f 'gather_diskstats.sh'");
    int ret = system(command);
  4018fd:	4c 89 c7             	mov    %r8,%rdi
  401900:	e8 9b fa ff ff       	callq  4013a0 <system@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:326
    if (ret==-1)	std::cout << "could not stop diskstat gathering\n";
  401905:	83 c0 01             	add    $0x1,%eax
  401908:	0f 85 0b ff ff ff    	jne    401819 <main+0x2e9>
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc():
/usr/include/c++/10/ostream:611
    operator<<(basic_ostream<char, _Traits>& __out, const char* __s)
    {
      if (!__s)
	__out.setstate(ios_base::badbit);
      else
	__ostream_insert(__out, __s,
  40190e:	ba 22 00 00 00       	mov    $0x22,%edx
  401913:	48 8d 35 ee 2d 00 00 	lea    0x2dee(%rip),%rsi        # 404708 <_IO_stdin_used+0x708>
  40191a:	48 8d 3d 5f 58 00 00 	lea    0x585f(%rip),%rdi        # 407180 <_ZSt4cout@@GLIBCXX_3.4>
  401921:	e8 ca fa ff ff       	callq  4013f0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
_Z15stop_disk_statsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:328
  }
}
  401926:	e9 ee fe ff ff       	jmpq   401819 <main+0x2e9>
main():
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:133
  Gups = nupdates / t0 / 1.0e9;
  40192b:	4c 89 e0             	mov    %r12,%rax
  40192e:	41 83 e4 01          	and    $0x1,%r12d
  401932:	66 0f ef c9          	pxor   %xmm1,%xmm1
  401936:	48 d1 e8             	shr    %rax
  401939:	4c 09 e0             	or     %r12,%rax
  40193c:	f2 48 0f 2a c8       	cvtsi2sd %rax,%xmm1
  401941:	f2 0f 58 c9          	addsd  %xmm1,%xmm1
  401945:	e9 44 ff ff ff       	jmpq   40188e <main+0x35e>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:86
  for (i = 0; i < nlocal; i++) table[i] = i;
  40194a:	31 c0                	xor    %eax,%eax
  40194c:	e9 08 fd ff ff       	jmpq   401659 <main+0x129>
_Z16start_disk_statsPKc():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:308
    perror("fork failed");
  401951:	48 8d 3d 26 29 00 00 	lea    0x2926(%rip),%rdi        # 40427e <_IO_stdin_used+0x27e>
  401958:	e8 33 fa ff ff       	callq  401390 <perror@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:309
    exit(EXIT_FAILURE);
  40195d:	bf 01 00 00 00       	mov    $0x1,%edi
  401962:	e8 c9 fa ff ff       	callq  401430 <exit@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:312
	  move_to_cgroup(root_cgroup, getpid());
  401967:	e8 24 fb ff ff       	callq  401490 <getpid@plt>
  40196c:	48 8d 3d 17 29 00 00 	lea    0x2917(%rip),%rdi        # 40428a <_IO_stdin_used+0x28a>
  401973:	89 c6                	mov    %eax,%esi
  401975:	e8 a6 0e 00 00       	callq  402820 <_Z14move_to_cgroupPKci>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:313
    execlp("/home/aliha951/ipdps-gups/gather_diskstats.sh", "/home/aliha951/ipdps-gups/gather_diskstats.sh", result_file_name, NULL);
  40197a:	48 8d 35 2f 2d 00 00 	lea    0x2d2f(%rip),%rsi        # 4046b0 <_IO_stdin_used+0x6b0>
  401981:	31 c9                	xor    %ecx,%ecx
  401983:	31 c0                	xor    %eax,%eax
  401985:	48 89 f7             	mov    %rsi,%rdi
  401988:	48 8d 15 11 29 00 00 	lea    0x2911(%rip),%rdx        # 4042a0 <_IO_stdin_used+0x2a0>
  40198f:	e8 8c f9 ff ff       	callq  401320 <execlp@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:314
    perror("execlp failed");
  401994:	48 8d 3d 10 29 00 00 	lea    0x2910(%rip),%rdi        # 4042ab <_IO_stdin_used+0x2ab>
  40199b:	e8 f0 f9 ff ff       	callq  401390 <perror@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:315
    exit(EXIT_FAILURE);
  4019a0:	bf 01 00 00 00       	mov    $0x1,%edi
  4019a5:	e8 86 fa ff ff       	callq  401430 <exit@plt>
main():
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:142
}
  4019aa:	e8 31 fa ff ff       	callq  4013e0 <__stack_chk_fail@plt>
/usr/include/x86_64-linux-gnu/bits/stdio2.h:107
  return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
  4019af:	48 8d 35 84 28 00 00 	lea    0x2884(%rip),%rsi        # 40423a <_IO_stdin_used+0x23a>
printf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:107
  4019b6:	bf 01 00 00 00       	mov    $0x1,%edi
  4019bb:	31 c0                	xor    %eax,%eax
  4019bd:	e8 ee f8 ff ff       	callq  4012b0 <__printf_chk@plt>
main():
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:80
    exit(1);
  4019c2:	bf 01 00 00 00       	mov    $0x1,%edi
  4019c7:	e8 64 fa ff ff       	callq  401430 <exit@plt>
/usr/include/x86_64-linux-gnu/bits/stdio2.h:107
  4019cc:	48 8d 35 4f 28 00 00 	lea    0x284f(%rip),%rsi        # 404222 <_IO_stdin_used+0x222>
printf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:107
  4019d3:	eb e1                	jmp    4019b6 <main+0x486>
main():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:107
  4019d5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4019dc:	00 00 00 00 

00000000004019e0 <_GLOBAL__sub_I_usage_start>:
_GLOBAL__sub_I_usage_start():
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:189
  4019e0:	f3 0f 1e fa          	endbr64 
  4019e4:	48 83 ec 08          	sub    $0x8,%rsp
/usr/include/c++/10/iostream:74
  extern wostream wclog;	/// Linked to standard error (buffered)
#endif
  ///@}

  // For construction of filebuffers for cout, cin, cerr, clog et. al.
  static ios_base::Init __ioinit;
  4019e8:	48 8d 3d c1 5d 00 00 	lea    0x5dc1(%rip),%rdi        # 4077b0 <_ZStL8__ioinit>
__static_initialization_and_destruction_0():
/usr/include/c++/10/iostream:74
  4019ef:	e8 bc fa ff ff       	callq  4014b0 <_ZNSt8ios_base4InitC1Ev@plt>
  4019f4:	48 8b 3d fd 55 00 00 	mov    0x55fd(%rip),%rdi        # 406ff8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
_GLOBAL__sub_I_usage_start():
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:189
  4019fb:	48 83 c4 08          	add    $0x8,%rsp
__static_initialization_and_destruction_0():
/usr/include/c++/10/iostream:74
  4019ff:	48 8d 15 5a 57 00 00 	lea    0x575a(%rip),%rdx        # 407160 <__dso_handle>
  401a06:	48 8d 35 a3 5d 00 00 	lea    0x5da3(%rip),%rsi        # 4077b0 <_ZStL8__ioinit>
  401a0d:	e9 9e f9 ff ff       	jmpq   4013b0 <__cxa_atexit@plt>
_GLOBAL__sub_I_usage_start():
  401a12:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401a19:	00 00 00 
  401a1c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401a20 <_start>:
_start():
  401a20:	f3 0f 1e fa          	endbr64 
  401a24:	31 ed                	xor    %ebp,%ebp
  401a26:	49 89 d1             	mov    %rdx,%r9
  401a29:	5e                   	pop    %rsi
  401a2a:	48 89 e2             	mov    %rsp,%rdx
  401a2d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  401a31:	50                   	push   %rax
  401a32:	54                   	push   %rsp
  401a33:	49 c7 c0 40 35 40 00 	mov    $0x403540,%r8
  401a3a:	48 c7 c1 d0 34 40 00 	mov    $0x4034d0,%rcx
  401a41:	48 c7 c7 30 15 40 00 	mov    $0x401530,%rdi
  401a48:	ff 15 9a 55 00 00    	callq  *0x559a(%rip)        # 406fe8 <__libc_start_main@GLIBC_2.2.5>
  401a4e:	f4                   	hlt    
  401a4f:	90                   	nop

0000000000401a50 <_dl_relocate_static_pie>:
_dl_relocate_static_pie():
  401a50:	f3 0f 1e fa          	endbr64 
  401a54:	c3                   	retq   
  401a55:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401a5c:	00 00 00 
  401a5f:	90                   	nop

0000000000401a60 <deregister_tm_clones>:
deregister_tm_clones():
  401a60:	b8 70 71 40 00       	mov    $0x407170,%eax
  401a65:	48 3d 70 71 40 00    	cmp    $0x407170,%rax
  401a6b:	74 13                	je     401a80 <deregister_tm_clones+0x20>
  401a6d:	b8 00 00 00 00       	mov    $0x0,%eax
  401a72:	48 85 c0             	test   %rax,%rax
  401a75:	74 09                	je     401a80 <deregister_tm_clones+0x20>
  401a77:	bf 70 71 40 00       	mov    $0x407170,%edi
  401a7c:	ff e0                	jmpq   *%rax
  401a7e:	66 90                	xchg   %ax,%ax
  401a80:	c3                   	retq   
  401a81:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401a88:	00 00 00 00 
  401a8c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401a90 <register_tm_clones>:
register_tm_clones():
  401a90:	be 70 71 40 00       	mov    $0x407170,%esi
  401a95:	48 81 ee 70 71 40 00 	sub    $0x407170,%rsi
  401a9c:	48 89 f0             	mov    %rsi,%rax
  401a9f:	48 c1 ee 3f          	shr    $0x3f,%rsi
  401aa3:	48 c1 f8 03          	sar    $0x3,%rax
  401aa7:	48 01 c6             	add    %rax,%rsi
  401aaa:	48 d1 fe             	sar    %rsi
  401aad:	74 11                	je     401ac0 <register_tm_clones+0x30>
  401aaf:	b8 00 00 00 00       	mov    $0x0,%eax
  401ab4:	48 85 c0             	test   %rax,%rax
  401ab7:	74 07                	je     401ac0 <register_tm_clones+0x30>
  401ab9:	bf 70 71 40 00       	mov    $0x407170,%edi
  401abe:	ff e0                	jmpq   *%rax
  401ac0:	c3                   	retq   
  401ac1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401ac8:	00 00 00 00 
  401acc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401ad0 <__do_global_dtors_aux>:
__do_global_dtors_aux():
  401ad0:	f3 0f 1e fa          	endbr64 
  401ad4:	80 3d cd 57 00 00 00 	cmpb   $0x0,0x57cd(%rip)        # 4072a8 <completed.0>
  401adb:	75 13                	jne    401af0 <__do_global_dtors_aux+0x20>
  401add:	55                   	push   %rbp
  401ade:	48 89 e5             	mov    %rsp,%rbp
  401ae1:	e8 7a ff ff ff       	callq  401a60 <deregister_tm_clones>
  401ae6:	c6 05 bb 57 00 00 01 	movb   $0x1,0x57bb(%rip)        # 4072a8 <completed.0>
  401aed:	5d                   	pop    %rbp
  401aee:	c3                   	retq   
  401aef:	90                   	nop
  401af0:	c3                   	retq   
  401af1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401af8:	00 00 00 00 
  401afc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401b00 <frame_dummy>:
frame_dummy():
  401b00:	f3 0f 1e fa          	endbr64 
  401b04:	eb 8a                	jmp    401a90 <register_tm_clones>
  401b06:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401b0d:	00 00 00 

0000000000401b10 <_ZL21request_taskstats_pidiiiP9taskstatsPm>:
_ZL21request_taskstats_pidiiiP9taskstatsPm():
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:80
		return -1;
	}
	return sd;
}

static int request_taskstats_pid(int sd, int family_id, pid_t pid, struct taskstats *out_ts, size_t *out_len) {
  401b10:	41 57                	push   %r15
  401b12:	41 89 d7             	mov    %edx,%r15d
  401b15:	41 56                	push   %r14
  401b17:	41 55                	push   %r13
  401b19:	41 89 fd             	mov    %edi,%r13d
  401b1c:	41 54                	push   %r12
  401b1e:	49 89 cc             	mov    %rcx,%r12
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:81
	struct msgtemplate req = {0};
  401b21:	b9 42 00 00 00       	mov    $0x42,%ecx
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:80
static int request_taskstats_pid(int sd, int family_id, pid_t pid, struct taskstats *out_ts, size_t *out_len) {
  401b26:	55                   	push   %rbp
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71
    {
      __warn_memset_zero_len ();
      return __dest;
    }
#endif
  return __builtin___memset_chk (__dest, __ch, __len, __bos0 (__dest));
  401b27:	49 8d 6c 24 08       	lea    0x8(%r12),%rbp
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:80
  401b2c:	53                   	push   %rbx
  401b2d:	4c 89 c3             	mov    %r8,%rbx
  401b30:	48 81 ec 48 04 00 00 	sub    $0x448,%rsp
  401b37:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401b3e:	00 00 
  401b40:	48 89 84 24 38 04 00 	mov    %rax,0x438(%rsp)
  401b47:	00 
  401b48:	31 c0                	xor    %eax,%eax
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:81
	struct msgtemplate req = {0};
  401b4a:	48 89 e7             	mov    %rsp,%rdi
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:85
	struct msgtemplate rep = {0};
	struct nlattr *na;

	*out_len = 0;
  401b4d:	49 c7 00 00 00 00 00 	movq   $0x0,(%r8)
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:82
	struct msgtemplate rep = {0};
  401b54:	4c 8d b4 24 20 02 00 	lea    0x220(%rsp),%r14
  401b5b:	00 
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:81
	struct msgtemplate req = {0};
  401b5c:	f3 48 ab             	rep stos %rax,%es:(%rdi)
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:82
	struct msgtemplate rep = {0};
  401b5f:	b9 42 00 00 00       	mov    $0x42,%ecx
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:81
	struct msgtemplate req = {0};
  401b64:	c7 07 00 00 00 00    	movl   $0x0,(%rdi)
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:82
	struct msgtemplate rep = {0};
  401b6a:	4c 89 f7             	mov    %r14,%rdi
  401b6d:	f3 48 ab             	rep stos %rax,%es:(%rdi)
memset():
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71
  401b70:	4c 89 e1             	mov    %r12,%rcx
_ZL21request_taskstats_pidiiiP9taskstatsPm():
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:82
  401b73:	c7 07 00 00 00 00    	movl   $0x0,(%rdi)
memset():
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71
  401b79:	48 89 ef             	mov    %rbp,%rdi
  401b7c:	48 83 e7 f8          	and    $0xfffffffffffffff8,%rdi
  401b80:	49 c7 04 24 00 00 00 	movq   $0x0,(%r12)
  401b87:	00 
  401b88:	49 c7 84 24 a8 01 00 	movq   $0x0,0x1a8(%r12)
  401b8f:	00 00 00 00 00 
  401b94:	48 29 f9             	sub    %rdi,%rcx
  401b97:	81 c1 b0 01 00 00    	add    $0x1b0,%ecx
  401b9d:	c1 e9 03             	shr    $0x3,%ecx
  401ba0:	f3 48 ab             	rep stos %rax,%es:(%rdi)
_ZL21request_taskstats_pidiiiP9taskstatsPm():
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:90
	memset(out_ts, 0, sizeof(*out_ts));

	req.n.nlmsg_len = NLMSG_LENGTH(GENL_HDRLEN);
	req.n.nlmsg_type = family_id;
	req.n.nlmsg_flags = NLM_F_REQUEST;
  401ba3:	b8 01 00 00 00       	mov    $0x1,%eax
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:89
	req.n.nlmsg_type = family_id;
  401ba8:	66 89 74 24 04       	mov    %si,0x4(%rsp)
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:88
	req.n.nlmsg_len = NLMSG_LENGTH(GENL_HDRLEN);
  401bad:	c7 04 24 14 00 00 00 	movl   $0x14,(%rsp)
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:90
	req.n.nlmsg_flags = NLM_F_REQUEST;
  401bb4:	66 89 44 24 06       	mov    %ax,0x6(%rsp)
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:91
	req.n.nlmsg_seq = 1;
  401bb9:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%rsp)
  401bc0:	00 
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:92
	req.n.nlmsg_pid = getpid();
  401bc1:	e8 ca f8 ff ff       	callq  401490 <getpid@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:93
	req.g.cmd = TASKSTATS_CMD_GET;
  401bc6:	ba 01 0e 00 00       	mov    $0xe01,%edx
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:103
  na->nla_type = TASKSTATS_CMD_ATTR_TGID; // Use TGID to get stats for thread group (process) instead of single thread
	na->nla_len = NLA_HDRLEN + sizeof(pid);
	memcpy(NLA_DATA(na), &pid, sizeof(pid));
	req.n.nlmsg_len += NLMSG_ALIGN(na->nla_len);

	if (send(sd, &req, req.n.nlmsg_len, 0) < 0)
  401bcb:	31 c9                	xor    %ecx,%ecx
  401bcd:	48 89 e6             	mov    %rsp,%rsi
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:92
	req.n.nlmsg_pid = getpid();
  401bd0:	89 44 24 0c          	mov    %eax,0xc(%rsp)
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:101
	req.n.nlmsg_len += NLMSG_ALIGN(na->nla_len);
  401bd4:	8b 04 24             	mov    (%rsp),%eax
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:103
	if (send(sd, &req, req.n.nlmsg_len, 0) < 0)
  401bd7:	44 89 ef             	mov    %r13d,%edi
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:93
	req.g.cmd = TASKSTATS_CMD_GET;
  401bda:	66 89 54 24 10       	mov    %dx,0x10(%rsp)
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:101
	req.n.nlmsg_len += NLMSG_ALIGN(na->nla_len);
  401bdf:	8d 50 08             	lea    0x8(%rax),%edx
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:99
	na->nla_len = NLA_HDRLEN + sizeof(pid);
  401be2:	c7 44 24 14 08 00 02 	movl   $0x20008,0x14(%rsp)
  401be9:	00 
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:34
  return __builtin___memcpy_chk (__dest, __src, __len, __bos0 (__dest));
  401bea:	44 89 7c 24 18       	mov    %r15d,0x18(%rsp)
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:101
	req.n.nlmsg_len += NLMSG_ALIGN(na->nla_len);
  401bef:	89 14 24             	mov    %edx,(%rsp)
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:103
	if (send(sd, &req, req.n.nlmsg_len, 0) < 0)
  401bf2:	e8 59 f7 ff ff       	callq  401350 <send@plt>
  401bf7:	48 85 c0             	test   %rax,%rax
  401bfa:	0f 88 18 01 00 00    	js     401d18 <_ZL21request_taskstats_pidiiiP9taskstatsPm+0x208>
/usr/include/x86_64-linux-gnu/bits/socket2.h:44
	return __recv_chk (__fd, __buf, __n, __bos0 (__buf), __flags);

      if (__n > __bos0 (__buf))
	return __recv_chk_warn (__fd, __buf, __n, __bos0 (__buf), __flags);
    }
  return __recv_alias (__fd, __buf, __n, __flags);
  401c00:	31 c9                	xor    %ecx,%ecx
recv():
/usr/include/x86_64-linux-gnu/bits/socket2.h:44
  401c02:	ba 14 02 00 00       	mov    $0x214,%edx
  401c07:	4c 89 f6             	mov    %r14,%rsi
  401c0a:	44 89 ef             	mov    %r13d,%edi
  401c0d:	e8 1e f7 ff ff       	callq  401330 <recv@plt>
_ZL21request_taskstats_pidiiiP9taskstatsPm():
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:105
		return -1;
	if (recv(sd, &rep, sizeof(rep), 0) < 0)
  401c12:	48 85 c0             	test   %rax,%rax
  401c15:	0f 88 fd 00 00 00    	js     401d18 <_ZL21request_taskstats_pidiiiP9taskstatsPm+0x208>
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:109
		return -1;

	na = (struct nlattr *) GENLMSG_DATA(&rep.n);
	int rem = rep.n.nlmsg_len - NLMSG_LENGTH(GENL_HDRLEN);
  401c1b:	8b 84 24 20 02 00 00 	mov    0x220(%rsp),%eax
  401c22:	8d 70 ec             	lea    -0x14(%rax),%esi
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:110
	while (rem > 0 && na->nla_len >= NLA_HDRLEN && rem >= na->nla_len) {
  401c25:	85 f6                	test   %esi,%esi
  401c27:	0f 8e eb 00 00 00    	jle    401d18 <_ZL21request_taskstats_pidiiiP9taskstatsPm+0x208>
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:108
	na = (struct nlattr *) GENLMSG_DATA(&rep.n);
  401c2d:	48 8d 8c 24 34 02 00 	lea    0x234(%rsp),%rcx
  401c34:	00 
  401c35:	eb 29                	jmp    401c60 <_ZL21request_taskstats_pidiiiP9taskstatsPm+0x150>
  401c37:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  401c3e:	00 00 
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:126
				}
				int step2 = NLA_ALIGN(n2->nla_len);
				aggr_len -= step2;
				n2 = (struct nlattr *) ((char*)n2 + step2);
			}
		} else if (na->nla_type == TASKSTATS_TYPE_STATS) {
  401c40:	66 83 f8 03          	cmp    $0x3,%ax
  401c44:	0f 84 26 01 00 00    	je     401d70 <_ZL21request_taskstats_pidiiiP9taskstatsPm+0x260>
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:133
			if (payload > sizeof(*out_ts)) payload = sizeof(*out_ts);
			memcpy(out_ts, NLA_DATA(na), payload);
			*out_len = payload;
			return 0;
		}
		int step = NLA_ALIGN(na->nla_len);
  401c4a:	83 c2 03             	add    $0x3,%edx
  401c4d:	83 e2 fc             	and    $0xfffffffc,%edx
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:134
		rem -= step;
  401c50:	29 d6                	sub    %edx,%esi
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:135
		na = (struct nlattr *) ((char*)na + step);
  401c52:	48 63 d2             	movslq %edx,%rdx
  401c55:	48 01 d1             	add    %rdx,%rcx
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:110
	while (rem > 0 && na->nla_len >= NLA_HDRLEN && rem >= na->nla_len) {
  401c58:	85 f6                	test   %esi,%esi
  401c5a:	0f 8e b8 00 00 00    	jle    401d18 <_ZL21request_taskstats_pidiiiP9taskstatsPm+0x208>
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:110 (discriminator 1)
  401c60:	0f b7 11             	movzwl (%rcx),%edx
  401c63:	66 83 fa 03          	cmp    $0x3,%dx
  401c67:	0f 86 ab 00 00 00    	jbe    401d18 <_ZL21request_taskstats_pidiiiP9taskstatsPm+0x208>
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:110 (discriminator 2)
  401c6d:	39 f2                	cmp    %esi,%edx
  401c6f:	0f 8f a3 00 00 00    	jg     401d18 <_ZL21request_taskstats_pidiiiP9taskstatsPm+0x208>
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:111
		if (na->nla_type == TASKSTATS_TYPE_AGGR_PID || na->nla_type == TASKSTATS_TYPE_AGGR_TGID) {
  401c75:	0f b7 41 02          	movzwl 0x2(%rcx),%eax
  401c79:	8d 78 fc             	lea    -0x4(%rax),%edi
  401c7c:	66 83 ff 01          	cmp    $0x1,%di
  401c80:	77 be                	ja     401c40 <_ZL21request_taskstats_pidiiiP9taskstatsPm+0x130>
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:114
			while (aggr_len > 0 && n2->nla_len >= NLA_HDRLEN && aggr_len >= n2->nla_len) {
  401c82:	41 89 d0             	mov    %edx,%r8d
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:113
			struct nlattr *n2 = (struct nlattr *) NLA_DATA(na);
  401c85:	48 8d 79 04          	lea    0x4(%rcx),%rdi
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:114
			while (aggr_len > 0 && n2->nla_len >= NLA_HDRLEN && aggr_len >= n2->nla_len) {
  401c89:	41 83 e8 04          	sub    $0x4,%r8d
  401c8d:	75 1c                	jne    401cab <_ZL21request_taskstats_pidiiiP9taskstatsPm+0x19b>
  401c8f:	eb b9                	jmp    401c4a <_ZL21request_taskstats_pidiiiP9taskstatsPm+0x13a>
  401c91:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:122
				int step2 = NLA_ALIGN(n2->nla_len);
  401c98:	83 c0 03             	add    $0x3,%eax
  401c9b:	83 e0 fc             	and    $0xfffffffc,%eax
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:123
				aggr_len -= step2;
  401c9e:	41 29 c0             	sub    %eax,%r8d
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:124
				n2 = (struct nlattr *) ((char*)n2 + step2);
  401ca1:	48 98                	cltq   
  401ca3:	48 01 c7             	add    %rax,%rdi
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:114
			while (aggr_len > 0 && n2->nla_len >= NLA_HDRLEN && aggr_len >= n2->nla_len) {
  401ca6:	45 85 c0             	test   %r8d,%r8d
  401ca9:	7e 9f                	jle    401c4a <_ZL21request_taskstats_pidiiiP9taskstatsPm+0x13a>
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:114 (discriminator 1)
  401cab:	0f b7 07             	movzwl (%rdi),%eax
  401cae:	66 83 f8 03          	cmp    $0x3,%ax
  401cb2:	76 96                	jbe    401c4a <_ZL21request_taskstats_pidiiiP9taskstatsPm+0x13a>
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:114 (discriminator 2)
  401cb4:	44 39 c0             	cmp    %r8d,%eax
  401cb7:	7f 91                	jg     401c4a <_ZL21request_taskstats_pidiiiP9taskstatsPm+0x13a>
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:115
				if (n2->nla_type == TASKSTATS_TYPE_STATS) {
  401cb9:	66 83 7f 02 03       	cmpw   $0x3,0x2(%rdi)
  401cbe:	75 d8                	jne    401c98 <_ZL21request_taskstats_pidiiiP9taskstatsPm+0x188>
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:116
					size_t payload = n2->nla_len - NLA_HDRLEN;
  401cc0:	83 e8 04             	sub    $0x4,%eax
  401cc3:	ba b0 01 00 00       	mov    $0x1b0,%edx
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:118
					memcpy(out_ts, NLA_DATA(n2), payload);
  401cc8:	48 8d 77 04          	lea    0x4(%rdi),%rsi
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:116
					size_t payload = n2->nla_len - NLA_HDRLEN;
  401ccc:	48 98                	cltq   
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:117
					if (payload > sizeof(*out_ts)) payload = sizeof(*out_ts);
  401cce:	48 3d b0 01 00 00    	cmp    $0x1b0,%rax
  401cd4:	48 0f 47 c2          	cmova  %rdx,%rax
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:34
  401cd8:	83 f8 08             	cmp    $0x8,%eax
memcpy():
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:34
  401cdb:	72 6b                	jb     401d48 <_ZL21request_taskstats_pidiiiP9taskstatsPm+0x238>
  401cdd:	48 8b 57 04          	mov    0x4(%rdi),%rdx
_ZL21request_taskstats_pidiiiP9taskstatsPm():
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:34
  401ce1:	49 89 14 24          	mov    %rdx,(%r12)
memcpy():
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:34
  401ce5:	89 c2                	mov    %eax,%edx
  401ce7:	48 89 ef             	mov    %rbp,%rdi
  401cea:	48 8b 4c 16 f8       	mov    -0x8(%rsi,%rdx,1),%rcx
  401cef:	48 83 e7 f8          	and    $0xfffffffffffffff8,%rdi
  401cf3:	49 89 4c 14 f8       	mov    %rcx,-0x8(%r12,%rdx,1)
  401cf8:	49 29 fc             	sub    %rdi,%r12
  401cfb:	4c 29 e6             	sub    %r12,%rsi
  401cfe:	41 01 c4             	add    %eax,%r12d
  401d01:	41 c1 ec 03          	shr    $0x3,%r12d
  401d05:	44 89 e1             	mov    %r12d,%ecx
  401d08:	f3 48 a5             	rep movsq %ds:(%rsi),%es:(%rdi)
_ZL21request_taskstats_pidiiiP9taskstatsPm():
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:130
			*out_len = payload;
  401d0b:	48 89 03             	mov    %rax,(%rbx)
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:131
			return 0;
  401d0e:	31 c0                	xor    %eax,%eax
  401d10:	eb 0b                	jmp    401d1d <_ZL21request_taskstats_pidiiiP9taskstatsPm+0x20d>
  401d12:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:104
		return -1;
  401d18:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:138
	}
	return -1; /* Not found */
}
  401d1d:	48 8b 9c 24 38 04 00 	mov    0x438(%rsp),%rbx
  401d24:	00 
  401d25:	64 48 2b 1c 25 28 00 	sub    %fs:0x28,%rbx
  401d2c:	00 00 
  401d2e:	75 7c                	jne    401dac <_ZL21request_taskstats_pidiiiP9taskstatsPm+0x29c>
  401d30:	48 81 c4 48 04 00 00 	add    $0x448,%rsp
  401d37:	5b                   	pop    %rbx
  401d38:	5d                   	pop    %rbp
  401d39:	41 5c                	pop    %r12
  401d3b:	41 5d                	pop    %r13
  401d3d:	41 5e                	pop    %r14
  401d3f:	41 5f                	pop    %r15
  401d41:	c3                   	retq   
  401d42:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
memcpy():
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:34
  401d48:	a8 04                	test   $0x4,%al
  401d4a:	75 4a                	jne    401d96 <_ZL21request_taskstats_pidiiiP9taskstatsPm+0x286>
  401d4c:	85 c0                	test   %eax,%eax
  401d4e:	74 bb                	je     401d0b <_ZL21request_taskstats_pidiiiP9taskstatsPm+0x1fb>
  401d50:	0f b6 16             	movzbl (%rsi),%edx
  401d53:	41 88 14 24          	mov    %dl,(%r12)
  401d57:	a8 02                	test   $0x2,%al
  401d59:	74 b0                	je     401d0b <_ZL21request_taskstats_pidiiiP9taskstatsPm+0x1fb>
  401d5b:	89 c2                	mov    %eax,%edx
  401d5d:	0f b7 4c 16 fe       	movzwl -0x2(%rsi,%rdx,1),%ecx
  401d62:	66 41 89 4c 14 fe    	mov    %cx,-0x2(%r12,%rdx,1)
  401d68:	eb a1                	jmp    401d0b <_ZL21request_taskstats_pidiiiP9taskstatsPm+0x1fb>
  401d6a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
_ZL21request_taskstats_pidiiiP9taskstatsPm():
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:127
			size_t payload = na->nla_len - NLA_HDRLEN;
  401d70:	8d 42 fc             	lea    -0x4(%rdx),%eax
  401d73:	ba b0 01 00 00       	mov    $0x1b0,%edx
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:129
			memcpy(out_ts, NLA_DATA(na), payload);
  401d78:	48 8d 71 04          	lea    0x4(%rcx),%rsi
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:127
			size_t payload = na->nla_len - NLA_HDRLEN;
  401d7c:	48 98                	cltq   
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:128
			if (payload > sizeof(*out_ts)) payload = sizeof(*out_ts);
  401d7e:	48 3d b0 01 00 00    	cmp    $0x1b0,%rax
  401d84:	48 0f 47 c2          	cmova  %rdx,%rax
memcpy():
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:34
  401d88:	83 f8 08             	cmp    $0x8,%eax
  401d8b:	72 bb                	jb     401d48 <_ZL21request_taskstats_pidiiiP9taskstatsPm+0x238>
  401d8d:	48 8b 51 04          	mov    0x4(%rcx),%rdx
  401d91:	e9 4b ff ff ff       	jmpq   401ce1 <_ZL21request_taskstats_pidiiiP9taskstatsPm+0x1d1>
  401d96:	8b 16                	mov    (%rsi),%edx
  401d98:	41 89 14 24          	mov    %edx,(%r12)
  401d9c:	89 c2                	mov    %eax,%edx
  401d9e:	8b 4c 16 fc          	mov    -0x4(%rsi,%rdx,1),%ecx
  401da2:	41 89 4c 14 fc       	mov    %ecx,-0x4(%r12,%rdx,1)
  401da7:	e9 5f ff ff ff       	jmpq   401d0b <_ZL21request_taskstats_pidiiiP9taskstatsPm+0x1fb>
_ZL21request_taskstats_pidiiiP9taskstatsPm():
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:138
}
  401dac:	e8 2f f6 ff ff       	callq  4013e0 <__stack_chk_fail@plt>
  401db1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  401db8:	00 00 00 00 
  401dbc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401dc0 <_ZL12open_counterjmiii.part.0>:
_ZL12open_counterjmiii.part.0():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:126
static int open_counter(uint32_t type, uint64_t config,
  401dc0:	50                   	push   %rax
  401dc1:	58                   	pop    %rax
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:144
    perror("perf_event_open");
  401dc2:	48 8d 3d 3b 22 00 00 	lea    0x223b(%rip),%rdi        # 404004 <_IO_stdin_used+0x4>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:126
static int open_counter(uint32_t type, uint64_t config,
  401dc9:	48 83 ec 08          	sub    $0x8,%rsp
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:144
    perror("perf_event_open");
  401dcd:	e8 be f5 ff ff       	callq  401390 <perror@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:145
    exit(1);
  401dd2:	bf 01 00 00 00       	mov    $0x1,%edi
  401dd7:	e8 54 f6 ff ff       	callq  401430 <exit@plt>
  401ddc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401de0 <_ZL13get_family_idi>:
_ZL13get_family_idi():
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:30
static int get_family_id(int sd) {
  401de0:	41 54                	push   %r12
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:32
	struct msgtemplate ans = {0};
  401de2:	b9 42 00 00 00       	mov    $0x42,%ecx
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:30
static int get_family_id(int sd) {
  401de7:	55                   	push   %rbp
  401de8:	89 fd                	mov    %edi,%ebp
  401dea:	48 81 ec 48 04 00 00 	sub    $0x448,%rsp
  401df1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401df8:	00 00 
  401dfa:	48 89 84 24 38 04 00 	mov    %rax,0x438(%rsp)
  401e01:	00 
  401e02:	31 c0                	xor    %eax,%eax
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:32
	struct msgtemplate ans = {0};
  401e04:	4c 8d a4 24 20 02 00 	lea    0x220(%rsp),%r12
  401e0b:	00 
  401e0c:	4c 89 e7             	mov    %r12,%rdi
  401e0f:	f3 48 ab             	rep stos %rax,%es:(%rdi)
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:31
	struct msgtemplate req = {0};
  401e12:	b9 42 00 00 00       	mov    $0x42,%ecx
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:32
	struct msgtemplate ans = {0};
  401e17:	c7 07 00 00 00 00    	movl   $0x0,(%rdi)
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:31
	struct msgtemplate req = {0};
  401e1d:	48 89 e7             	mov    %rsp,%rdi
  401e20:	f3 48 ab             	rep stos %rax,%es:(%rdi)
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:36
	req.n.nlmsg_len = NLMSG_LENGTH(GENL_HDRLEN);
  401e23:	48 b8 14 00 00 00 10 	movabs $0x1001000000014,%rax
  401e2a:	00 01 00 
  401e2d:	48 89 04 24          	mov    %rax,(%rsp)
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:31
	struct msgtemplate req = {0};
  401e31:	c7 07 00 00 00 00    	movl   $0x0,(%rdi)
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:40
	req.n.nlmsg_pid = getpid();
  401e37:	e8 54 f6 ff ff       	callq  401490 <getpid@plt>
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:34
  401e3c:	ba 53 00 00 00       	mov    $0x53,%edx
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:50
	if (send(sd, &req, req.n.nlmsg_len, 0) < 0)
  401e41:	31 c9                	xor    %ecx,%ecx
memcpy():
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:34
  401e43:	48 89 e6             	mov    %rsp,%rsi
_ZL13get_family_idi():
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:40
	req.n.nlmsg_pid = getpid();
  401e46:	89 44 24 0c          	mov    %eax,0xc(%rsp)
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:41
	req.g.cmd = CTRL_CMD_GETFAMILY;
  401e4a:	b8 03 01 00 00       	mov    $0x103,%eax
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:50
	if (send(sd, &req, req.n.nlmsg_len, 0) < 0)
  401e4f:	89 ef                	mov    %ebp,%edi
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:41
	req.g.cmd = CTRL_CMD_GETFAMILY;
  401e51:	66 89 44 24 10       	mov    %ax,0x10(%rsp)
memcpy():
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:34
  401e56:	48 b8 54 41 53 4b 53 	movabs $0x544154534b534154,%rax
  401e5d:	54 41 54 
  401e60:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
_ZL13get_family_idi():
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:48
	req.n.nlmsg_len += NLMSG_ALIGN(na->nla_len);
  401e65:	8b 04 24             	mov    (%rsp),%eax
memcpy():
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:34
  401e68:	66 89 54 24 20       	mov    %dx,0x20(%rsp)
_ZL13get_family_idi():
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:48
  401e6d:	8d 50 10             	lea    0x10(%rax),%edx
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:46
	na->nla_len = NLA_HDRLEN + strlen(TASKSTATS_GENL_NAME) + 1;
  401e70:	c7 44 24 14 0e 00 02 	movl   $0x2000e,0x14(%rsp)
  401e77:	00 
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:48
	req.n.nlmsg_len += NLMSG_ALIGN(na->nla_len);
  401e78:	89 14 24             	mov    %edx,(%rsp)
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:50
	if (send(sd, &req, req.n.nlmsg_len, 0) < 0)
  401e7b:	e8 d0 f4 ff ff       	callq  401350 <send@plt>
  401e80:	48 85 c0             	test   %rax,%rax
  401e83:	78 6b                	js     401ef0 <_ZL13get_family_idi+0x110>
/usr/include/x86_64-linux-gnu/bits/socket2.h:44
  401e85:	31 c9                	xor    %ecx,%ecx
recv():
/usr/include/x86_64-linux-gnu/bits/socket2.h:44
  401e87:	ba 14 02 00 00       	mov    $0x214,%edx
  401e8c:	4c 89 e6             	mov    %r12,%rsi
  401e8f:	89 ef                	mov    %ebp,%edi
  401e91:	e8 9a f4 ff ff       	callq  401330 <recv@plt>
_ZL13get_family_idi():
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:54
	if (rep_len < 0 || ans.n.nlmsg_type == NLMSG_ERROR)
  401e96:	85 c0                	test   %eax,%eax
  401e98:	78 56                	js     401ef0 <_ZL13get_family_idi+0x110>
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:54 (discriminator 1)
  401e9a:	66 83 bc 24 24 02 00 	cmpw   $0x2,0x224(%rsp)
  401ea1:	00 02 
  401ea3:	74 4b                	je     401ef0 <_ZL13get_family_idi+0x110>
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:59
	na = (struct nlattr *) ((char*)na + NLA_ALIGN(na->nla_len));
  401ea5:	0f b7 84 24 34 02 00 	movzwl 0x234(%rsp),%eax
  401eac:	00 
  401ead:	83 c0 03             	add    $0x3,%eax
  401eb0:	25 fc ff 01 00       	and    $0x1fffc,%eax
  401eb5:	48 8d 84 04 34 02 00 	lea    0x234(%rsp,%rax,1),%rax
  401ebc:	00 
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:60
	if (na->nla_type == CTRL_ATTR_FAMILY_ID)
  401ebd:	66 83 78 02 01       	cmpw   $0x1,0x2(%rax)
  401ec2:	75 2c                	jne    401ef0 <_ZL13get_family_idi+0x110>
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:61
		return *(__u16 *) NLA_DATA(na);
  401ec4:	0f b7 40 04          	movzwl 0x4(%rax),%eax
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:63
}
  401ec8:	48 8b b4 24 38 04 00 	mov    0x438(%rsp),%rsi
  401ecf:	00 
  401ed0:	64 48 2b 34 25 28 00 	sub    %fs:0x28,%rsi
  401ed7:	00 00 
  401ed9:	75 1c                	jne    401ef7 <_ZL13get_family_idi+0x117>
  401edb:	48 81 c4 48 04 00 00 	add    $0x448,%rsp
  401ee2:	5d                   	pop    %rbp
  401ee3:	41 5c                	pop    %r12
  401ee5:	c3                   	retq   
  401ee6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  401eed:	00 00 00 
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:51
		return -1;
  401ef0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401ef5:	eb d1                	jmp    401ec8 <_ZL13get_family_idi+0xe8>
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:63
}
  401ef7:	e8 e4 f4 ff ff       	callq  4013e0 <__stack_chk_fail@plt>
  401efc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401f00 <_Z16start_time_statsv>:
_Z16start_time_statsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:37
void start_time_stats(){
  401f00:	f3 0f 1e fa          	endbr64 
  401f04:	48 83 ec 08          	sub    $0x8,%rsp
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:38
	gettimeofday(&wall_time_start, NULL);
  401f08:	31 f6                	xor    %esi,%esi
  401f0a:	48 8d 3d 5f 57 00 00 	lea    0x575f(%rip),%rdi        # 407670 <wall_time_start>
  401f11:	e8 ba f5 ff ff       	callq  4014d0 <gettimeofday@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:39
	getrusage(RUSAGE_SELF, &usage_start);
  401f16:	48 8d 35 03 58 00 00 	lea    0x5803(%rip),%rsi        # 407720 <usage_start>
  401f1d:	31 ff                	xor    %edi,%edi
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:40
}
  401f1f:	48 83 c4 08          	add    $0x8,%rsp
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:39
	getrusage(RUSAGE_SELF, &usage_start);
  401f23:	e9 38 f4 ff ff       	jmpq   401360 <getrusage@plt>
  401f28:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  401f2f:	00 

0000000000401f30 <_Z15stop_time_statsv>:
_Z15stop_time_statsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:42
void stop_time_stats(){
  401f30:	f3 0f 1e fa          	endbr64 
  401f34:	48 83 ec 08          	sub    $0x8,%rsp
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:43
	gettimeofday(&wall_time_end, NULL);
  401f38:	31 f6                	xor    %esi,%esi
  401f3a:	48 8d 3d 1f 57 00 00 	lea    0x571f(%rip),%rdi        # 407660 <wall_time_end>
  401f41:	e8 8a f5 ff ff       	callq  4014d0 <gettimeofday@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:44
	getrusage(RUSAGE_SELF, &usage_end);
  401f46:	48 8d 35 33 57 00 00 	lea    0x5733(%rip),%rsi        # 407680 <usage_end>
  401f4d:	31 ff                	xor    %edi,%edi
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:45
}
  401f4f:	48 83 c4 08          	add    $0x8,%rsp
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:44
	getrusage(RUSAGE_SELF, &usage_end);
  401f53:	e9 08 f4 ff ff       	jmpq   401360 <getrusage@plt>
  401f58:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  401f5f:	00 

0000000000401f60 <_Z18measure_time_statsv>:
_Z18measure_time_statsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:47
void measure_time_stats(){
  401f60:	f3 0f 1e fa          	endbr64 
  401f64:	41 54                	push   %r12
  401f66:	55                   	push   %rbp
  401f67:	53                   	push   %rbx
  401f68:	48 83 ec 20          	sub    $0x20,%rsp
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:50
	timersub(&usage_end.ru_utime,&usage_start.ru_utime,&user_time_diff);
  401f6c:	48 8b 3d 0d 57 00 00 	mov    0x570d(%rip),%rdi        # 407680 <usage_end>
  401f73:	48 8b 05 0e 57 00 00 	mov    0x570e(%rip),%rax        # 407688 <usage_end+0x8>
  401f7a:	48 2b 3d 9f 57 00 00 	sub    0x579f(%rip),%rdi        # 407720 <usage_start>
  401f81:	48 2b 05 a0 57 00 00 	sub    0x57a0(%rip),%rax        # 407728 <usage_start+0x8>
  401f88:	48 89 c2             	mov    %rax,%rdx
  401f8b:	79 0b                	jns    401f98 <_Z18measure_time_statsv+0x38>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:50 (discriminator 1)
  401f8d:	48 83 ef 01          	sub    $0x1,%rdi
  401f91:	48 81 c2 40 42 0f 00 	add    $0xf4240,%rdx
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:51
	timersub(&usage_end.ru_stime,&usage_start.ru_stime,&sys_time_diff);
  401f98:	48 8b 35 f1 56 00 00 	mov    0x56f1(%rip),%rsi        # 407690 <usage_end+0x10>
  401f9f:	48 8b 05 f2 56 00 00 	mov    0x56f2(%rip),%rax        # 407698 <usage_end+0x18>
  401fa6:	48 2b 35 83 57 00 00 	sub    0x5783(%rip),%rsi        # 407730 <usage_start+0x10>
  401fad:	48 2b 05 84 57 00 00 	sub    0x5784(%rip),%rax        # 407738 <usage_start+0x18>
  401fb4:	79 0a                	jns    401fc0 <_Z18measure_time_statsv+0x60>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:51 (discriminator 1)
  401fb6:	48 83 ee 01          	sub    $0x1,%rsi
  401fba:	48 05 40 42 0f 00    	add    $0xf4240,%rax
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:52
	timersub(&wall_time_end,&wall_time_start,&wall_time_diff);
  401fc0:	4c 8b 05 99 56 00 00 	mov    0x5699(%rip),%r8        # 407660 <wall_time_end>
  401fc7:	48 8b 0d 9a 56 00 00 	mov    0x569a(%rip),%rcx        # 407668 <wall_time_end+0x8>
  401fce:	4c 2b 05 9b 56 00 00 	sub    0x569b(%rip),%r8        # 407670 <wall_time_start>
  401fd5:	48 2b 0d 9c 56 00 00 	sub    0x569c(%rip),%rcx        # 407678 <wall_time_start+0x8>
  401fdc:	79 0b                	jns    401fe9 <_Z18measure_time_statsv+0x89>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:52 (discriminator 1)
  401fde:	49 83 e8 01          	sub    $0x1,%r8
  401fe2:	48 81 c1 40 42 0f 00 	add    $0xf4240,%rcx
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:53
	wall_time = (double) wall_time_diff.tv_sec + (0.000001 * (double) wall_time_diff.tv_usec);
  401fe9:	66 0f ef db          	pxor   %xmm3,%xmm3
  401fed:	f2 0f 10 15 1b 28 00 	movsd  0x281b(%rip),%xmm2        # 404810 <_IO_stdin_used+0x810>
  401ff4:	00 
  401ff5:	66 0f ef c0          	pxor   %xmm0,%xmm0
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:54
	user_time = (double) user_time_diff.tv_sec + (0.000001 * (double) user_time_diff.tv_usec);
  401ff9:	66 0f ef c9          	pxor   %xmm1,%xmm1
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:53
	wall_time = (double) wall_time_diff.tv_sec + (0.000001 * (double) wall_time_diff.tv_usec);
  401ffd:	f2 48 0f 2a d9       	cvtsi2sd %rcx,%xmm3
  402002:	f2 49 0f 2a c0       	cvtsi2sd %r8,%xmm0
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:54
	user_time = (double) user_time_diff.tv_sec + (0.000001 * (double) user_time_diff.tv_usec);
  402007:	f2 48 0f 2a cf       	cvtsi2sd %rdi,%xmm1
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:58
	FILE *f = fopen("time.stats", "w");
  40200c:	48 8d 3d 03 20 00 00 	lea    0x2003(%rip),%rdi        # 404016 <_IO_stdin_used+0x16>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:53
	wall_time = (double) wall_time_diff.tv_sec + (0.000001 * (double) wall_time_diff.tv_usec);
  402013:	f2 0f 59 da          	mulsd  %xmm2,%xmm3
  402017:	f2 0f 58 d8          	addsd  %xmm0,%xmm3
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:54
	user_time = (double) user_time_diff.tv_sec + (0.000001 * (double) user_time_diff.tv_usec);
  40201b:	66 0f ef c0          	pxor   %xmm0,%xmm0
  40201f:	f2 48 0f 2a c2       	cvtsi2sd %rdx,%xmm0
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:56
	idle_time = (wall_time * NUM_CORES) - (user_time + sys_time);
  402024:	f2 0f 11 5c 24 08    	movsd  %xmm3,0x8(%rsp)
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:54
	user_time = (double) user_time_diff.tv_sec + (0.000001 * (double) user_time_diff.tv_usec);
  40202a:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
  40202e:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:55
	sys_time = (double) sys_time_diff.tv_sec + (0.000001 * (double) sys_time_diff.tv_usec);
  402032:	66 0f ef c9          	pxor   %xmm1,%xmm1
  402036:	f2 48 0f 2a c8       	cvtsi2sd %rax,%xmm1
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:56
	idle_time = (wall_time * NUM_CORES) - (user_time + sys_time);
  40203b:	66 0f 28 e0          	movapd %xmm0,%xmm4
  40203f:	f2 0f 11 44 24 18    	movsd  %xmm0,0x18(%rsp)
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:55
	sys_time = (double) sys_time_diff.tv_sec + (0.000001 * (double) sys_time_diff.tv_usec);
  402045:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
  402049:	66 0f ef d2          	pxor   %xmm2,%xmm2
  40204d:	f2 48 0f 2a d6       	cvtsi2sd %rsi,%xmm2
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:58
	FILE *f = fopen("time.stats", "w");
  402052:	48 8d 35 bb 1f 00 00 	lea    0x1fbb(%rip),%rsi        # 404014 <_IO_stdin_used+0x14>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:55
	sys_time = (double) sys_time_diff.tv_sec + (0.000001 * (double) sys_time_diff.tv_usec);
  402059:	f2 0f 58 ca          	addsd  %xmm2,%xmm1
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:56
	idle_time = (wall_time * NUM_CORES) - (user_time + sys_time);
  40205d:	66 0f 28 d3          	movapd %xmm3,%xmm2
  402061:	f2 0f 58 e1          	addsd  %xmm1,%xmm4
  402065:	f2 0f 11 4c 24 10    	movsd  %xmm1,0x10(%rsp)
  40206b:	f2 0f 5c d4          	subsd  %xmm4,%xmm2
  40206f:	f2 0f 11 14 24       	movsd  %xmm2,(%rsp)
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:58
	FILE *f = fopen("time.stats", "w");
  402074:	e8 97 f3 ff ff       	callq  401410 <fopen@plt>
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
  402079:	48 83 ec 08          	sub    $0x8,%rsp
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  40207d:	4c 8d 0d 9d 1f 00 00 	lea    0x1f9d(%rip),%r9        # 404021 <_IO_stdin_used+0x21>
  402084:	4c 8d 05 9b 1f 00 00 	lea    0x1f9b(%rip),%r8        # 404026 <_IO_stdin_used+0x26>
_Z18measure_time_statsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:58
  40208b:	48 89 c5             	mov    %rax,%rbp
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  40208e:	48 8d 05 9d 1f 00 00 	lea    0x1f9d(%rip),%rax        # 404032 <_IO_stdin_used+0x32>
  402095:	48 8d 0d 91 1f 00 00 	lea    0x1f91(%rip),%rcx        # 40402d <_IO_stdin_used+0x2d>
  40209c:	be 01 00 00 00       	mov    $0x1,%esi
  4020a1:	50                   	push   %rax
  4020a2:	f2 0f 10 5c 24 18    	movsd  0x18(%rsp),%xmm3
  4020a8:	48 89 ef             	mov    %rbp,%rdi
  4020ab:	b8 04 00 00 00       	mov    $0x4,%eax
  4020b0:	f2 0f 10 54 24 10    	movsd  0x10(%rsp),%xmm2
  4020b6:	f2 0f 10 4c 24 20    	movsd  0x20(%rsp),%xmm1
  4020bc:	48 8d 15 4d 22 00 00 	lea    0x224d(%rip),%rdx        # 404310 <_IO_stdin_used+0x310>
  4020c3:	f2 0f 10 44 24 28    	movsd  0x28(%rsp),%xmm0
  4020c9:	e8 12 f4 ff ff       	callq  4014e0 <__fprintf_chk@plt>
_Z18measure_time_statsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:68
	fclose(f);
  4020ce:	58                   	pop    %rax
  4020cf:	48 89 ef             	mov    %rbp,%rdi
  4020d2:	5a                   	pop    %rdx
  4020d3:	e8 f8 f2 ff ff       	callq  4013d0 <fclose@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:72
  f = fopen("faults.stats", "w");
  4020d8:	48 8d 35 35 1f 00 00 	lea    0x1f35(%rip),%rsi        # 404014 <_IO_stdin_used+0x14>
  4020df:	48 8d 3d 54 1f 00 00 	lea    0x1f54(%rip),%rdi        # 40403a <_IO_stdin_used+0x3a>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:70
  auto major_faults = usage_end.ru_majflt - usage_start.ru_majflt;
  4020e6:	48 8b 1d db 55 00 00 	mov    0x55db(%rip),%rbx        # 4076c8 <usage_end+0x48>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:71
  auto minor_faults = usage_end.ru_minflt - usage_start.ru_minflt;
  4020ed:	4c 8b 25 cc 55 00 00 	mov    0x55cc(%rip),%r12        # 4076c0 <usage_end+0x40>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:70
  auto major_faults = usage_end.ru_majflt - usage_start.ru_majflt;
  4020f4:	48 2b 1d 6d 56 00 00 	sub    0x566d(%rip),%rbx        # 407768 <usage_start+0x48>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:71
  auto minor_faults = usage_end.ru_minflt - usage_start.ru_minflt;
  4020fb:	4c 2b 25 5e 56 00 00 	sub    0x565e(%rip),%r12        # 407760 <usage_start+0x40>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:72
  f = fopen("faults.stats", "w");
  402102:	e8 09 f3 ff ff       	callq  401410 <fopen@plt>
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  402107:	48 83 ec 08          	sub    $0x8,%rsp
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  40210b:	49 89 d8             	mov    %rbx,%r8
  40210e:	4c 8d 0d 32 1f 00 00 	lea    0x1f32(%rip),%r9        # 404047 <_IO_stdin_used+0x47>
  402115:	41 54                	push   %r12
_Z18measure_time_statsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:72
  402117:	48 89 c5             	mov    %rax,%rbp
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  40211a:	48 89 c7             	mov    %rax,%rdi
  40211d:	48 8d 0d 30 1f 00 00 	lea    0x1f30(%rip),%rcx        # 404054 <_IO_stdin_used+0x54>
  402124:	48 8d 15 36 1f 00 00 	lea    0x1f36(%rip),%rdx        # 404061 <_IO_stdin_used+0x61>
  40212b:	be 01 00 00 00       	mov    $0x1,%esi
  402130:	31 c0                	xor    %eax,%eax
  402132:	e8 a9 f3 ff ff       	callq  4014e0 <__fprintf_chk@plt>
_Z18measure_time_statsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:79
}
  402137:	48 83 c4 30          	add    $0x30,%rsp
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:78
  fclose(f);
  40213b:	48 89 ef             	mov    %rbp,%rdi
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:79
}
  40213e:	5b                   	pop    %rbx
  40213f:	5d                   	pop    %rbp
  402140:	41 5c                	pop    %r12
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:78
  fclose(f);
  402142:	e9 89 f2 ff ff       	jmpq   4013d0 <fclose@plt>
  402147:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40214e:	00 00 

0000000000402150 <_Z12trace_markerPKc>:
_Z12trace_markerPKc():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:86
void trace_marker(const char *msg) {
  402150:	f3 0f 1e fa          	endbr64 
  402154:	41 54                	push   %r12
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:87
  FILE *f = fopen("/sys/kernel/debug/tracing/tracing_on", "r");
  402156:	48 8d 35 d3 1e 00 00 	lea    0x1ed3(%rip),%rsi        # 404030 <_IO_stdin_used+0x30>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:86
void trace_marker(const char *msg) {
  40215d:	49 89 fc             	mov    %rdi,%r12
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:87
  FILE *f = fopen("/sys/kernel/debug/tracing/tracing_on", "r");
  402160:	48 8d 3d e1 21 00 00 	lea    0x21e1(%rip),%rdi        # 404348 <_IO_stdin_used+0x348>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:86
void trace_marker(const char *msg) {
  402167:	55                   	push   %rbp
  402168:	48 83 ec 18          	sub    $0x18,%rsp
  40216c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402173:	00 00 
  402175:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40217a:	31 c0                	xor    %eax,%eax
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:87
  FILE *f = fopen("/sys/kernel/debug/tracing/tracing_on", "r");
  40217c:	e8 8f f2 ff ff       	callq  401410 <fopen@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:88
  if (f) {
  402181:	48 85 c0             	test   %rax,%rax
  402184:	74 36                	je     4021bc <_Z12trace_markerPKc+0x6c>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:91
    if (fscanf(f, "%d", &tracing_enabled) == 1 && tracing_enabled) { 
  402186:	48 89 c7             	mov    %rax,%rdi
  402189:	48 89 c5             	mov    %rax,%rbp
  40218c:	48 8d 54 24 04       	lea    0x4(%rsp),%rdx
  402191:	31 c0                	xor    %eax,%eax
  402193:	48 8d 35 e0 1e 00 00 	lea    0x1ee0(%rip),%rsi        # 40407a <_IO_stdin_used+0x7a>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:89
    int tracing_enabled = 0;
  40219a:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%rsp)
  4021a1:	00 
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:91
    if (fscanf(f, "%d", &tracing_enabled) == 1 && tracing_enabled) { 
  4021a2:	e8 59 f3 ff ff       	callq  401500 <__isoc99_fscanf@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:92
      fclose(f);
  4021a7:	48 89 ef             	mov    %rbp,%rdi
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:91
    if (fscanf(f, "%d", &tracing_enabled) == 1 && tracing_enabled) { 
  4021aa:	83 f8 01             	cmp    $0x1,%eax
  4021ad:	75 08                	jne    4021b7 <_Z12trace_markerPKc+0x67>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:91 (discriminator 2)
  4021af:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4021b3:	85 c0                	test   %eax,%eax
  4021b5:	75 21                	jne    4021d8 <_Z12trace_markerPKc+0x88>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:96
        fclose(f);
  4021b7:	e8 14 f2 ff ff       	callq  4013d0 <fclose@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:102
}
  4021bc:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  4021c1:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  4021c8:	00 00 
  4021ca:	75 4a                	jne    402216 <_Z12trace_markerPKc+0xc6>
  4021cc:	48 83 c4 18          	add    $0x18,%rsp
  4021d0:	5d                   	pop    %rbp
  4021d1:	41 5c                	pop    %r12
  4021d3:	c3                   	retq   
  4021d4:	0f 1f 40 00          	nopl   0x0(%rax)
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:92
      fclose(f);
  4021d8:	e8 f3 f1 ff ff       	callq  4013d0 <fclose@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:93
      f = fopen("/sys/kernel/debug/tracing/trace_marker", "w");
  4021dd:	48 8d 35 30 1e 00 00 	lea    0x1e30(%rip),%rsi        # 404014 <_IO_stdin_used+0x14>
  4021e4:	48 8d 3d 85 21 00 00 	lea    0x2185(%rip),%rdi        # 404370 <_IO_stdin_used+0x370>
  4021eb:	e8 20 f2 ff ff       	callq  401410 <fopen@plt>
  4021f0:	48 89 c5             	mov    %rax,%rbp
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:94
      if (f) {
  4021f3:	48 85 c0             	test   %rax,%rax
  4021f6:	74 c4                	je     4021bc <_Z12trace_markerPKc+0x6c>
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  4021f8:	48 89 c7             	mov    %rax,%rdi
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  4021fb:	4c 89 e1             	mov    %r12,%rcx
  4021fe:	be 01 00 00 00       	mov    $0x1,%esi
  402203:	31 c0                	xor    %eax,%eax
  402205:	48 8d 15 4d 25 00 00 	lea    0x254d(%rip),%rdx        # 404759 <_IO_stdin_used+0x759>
  40220c:	e8 cf f2 ff ff       	callq  4014e0 <__fprintf_chk@plt>
_Z12trace_markerPKc():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:96
        fclose(f);
  402211:	48 89 ef             	mov    %rbp,%rdi
  402214:	eb a1                	jmp    4021b7 <_Z12trace_markerPKc+0x67>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:102
}
  402216:	e8 c5 f1 ff ff       	callq  4013e0 <__stack_chk_fail@plt>
  40221b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402220 <_Z14setup_countersv>:
_Z14setup_countersv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:158
struct perf_counters setup_counters(void) {
  402220:	f3 0f 1e fa          	endbr64 
  402224:	41 56                	push   %r14
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71
  return __builtin___memset_chk (__dest, __ch, __len, __bos0 (__dest));
  402226:	b9 0c 00 00 00       	mov    $0xc,%ecx
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:123
  return syscall(__NR_perf_event_open, hw_event, pid, cpu, group_fd, flags);
  40222b:	45 31 c9             	xor    %r9d,%r9d
perf_event_open():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:123
  40222e:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
_Z14setup_countersv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:158
struct perf_counters setup_counters(void) {
  402234:	41 55                	push   %r13
  402236:	41 54                	push   %r12
  402238:	55                   	push   %rbp
  402239:	53                   	push   %rbx
  40223a:	48 81 ec d0 01 00 00 	sub    $0x1d0,%rsp
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:131
  pe.type = type;
  402241:	4c 8b 2d d0 25 00 00 	mov    0x25d0(%rip),%r13        # 404818 <_IO_stdin_used+0x818>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:158
struct perf_counters setup_counters(void) {
  402248:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40224f:	00 00 
  402251:	48 89 84 24 c8 01 00 	mov    %rax,0x1c8(%rsp)
  402258:	00 
  402259:	31 c0                	xor    %eax,%eax
memset():
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71
  40225b:	48 8d 94 24 60 01 00 	lea    0x160(%rsp),%rdx
  402262:	00 
  402263:	48 8d b4 24 50 01 00 	lea    0x150(%rsp),%rsi
  40226a:	00 
open_counter():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:133
  pe.config = config;
  40226b:	48 c7 84 24 58 01 00 	movq   $0x0,0x158(%rsp)
  402272:	00 00 00 00 00 
memset():
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71
  402277:	48 89 d7             	mov    %rdx,%rdi
perf_event_open():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:123
  return syscall(__NR_perf_event_open, hw_event, pid, cpu, group_fd, flags);
  40227a:	31 d2                	xor    %edx,%edx
open_counter():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:131
  pe.type = type;
  40227c:	4c 89 ac 24 50 01 00 	mov    %r13,0x150(%rsp)
  402283:	00 
memset():
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71
  402284:	f3 48 ab             	rep stos %rax,%es:(%rdi)
perf_event_open():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:123
  return syscall(__NR_perf_event_open, hw_event, pid, cpu, group_fd, flags);
  402287:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
  40228c:	bf 2a 01 00 00       	mov    $0x12a,%edi
open_counter():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:134
  pe.disabled = 1;
  402291:	c6 84 24 78 01 00 00 	movb   $0xe3,0x178(%rsp)
  402298:	e3 
perf_event_open():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:123
  return syscall(__NR_perf_event_open, hw_event, pid, cpu, group_fd, flags);
  402299:	e8 32 f0 ff ff       	callq  4012d0 <syscall@plt>
open_counter():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:143
  if (fd == -1) {
  40229e:	83 f8 ff             	cmp    $0xffffffff,%eax
  4022a1:	0f 84 45 01 00 00    	je     4023ec <_Z14setup_countersv+0x1cc>
  4022a7:	45 31 f6             	xor    %r14d,%r14d
  4022aa:	48 89 c3             	mov    %rax,%rbx
_Z14setup_countersv():
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71
  4022ad:	b9 0c 00 00 00       	mov    $0xc,%ecx
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:123
  return syscall(__NR_perf_event_open, hw_event, pid, cpu, group_fd, flags);
  4022b2:	45 31 c9             	xor    %r9d,%r9d
memset():
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71
  4022b5:	48 8d 94 24 f0 00 00 	lea    0xf0(%rsp),%rdx
  4022bc:	00 
  4022bd:	4c 89 f0             	mov    %r14,%rax
  4022c0:	48 8d b4 24 e0 00 00 	lea    0xe0(%rsp),%rsi
  4022c7:	00 
perf_event_open():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:123
  4022c8:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
memset():
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71
  4022ce:	48 89 d7             	mov    %rdx,%rdi
perf_event_open():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:123
  4022d1:	31 d2                	xor    %edx,%edx
_Z14setup_countersv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:131
  pe.type = type;
  4022d3:	4c 89 ac 24 e0 00 00 	mov    %r13,0xe0(%rsp)
  4022da:	00 
memset():
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71
  4022db:	f3 48 ab             	rep stos %rax,%es:(%rdi)
perf_event_open():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:123
  return syscall(__NR_perf_event_open, hw_event, pid, cpu, group_fd, flags);
  4022de:	31 c0                	xor    %eax,%eax
  4022e0:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
  4022e5:	bf 2a 01 00 00       	mov    $0x12a,%edi
open_counter():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:133
  pe.config = config;
  4022ea:	48 c7 84 24 e8 00 00 	movq   $0x0,0xe8(%rsp)
  4022f1:	00 00 00 00 00 
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:134
  pe.disabled = 1;
  4022f6:	c6 84 24 08 01 00 00 	movb   $0xd3,0x108(%rsp)
  4022fd:	d3 
perf_event_open():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:123
  return syscall(__NR_perf_event_open, hw_event, pid, cpu, group_fd, flags);
  4022fe:	e8 cd ef ff ff       	callq  4012d0 <syscall@plt>
  402303:	49 89 c4             	mov    %rax,%r12
open_counter():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:143
  if (fd == -1) {
  402306:	83 f8 ff             	cmp    $0xffffffff,%eax
  402309:	0f 84 dd 00 00 00    	je     4023ec <_Z14setup_countersv+0x1cc>
_Z14setup_countersv():
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71
  40230f:	4c 89 f0             	mov    %r14,%rax
memset():
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71
  402312:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402317:	48 8d 74 24 70       	lea    0x70(%rsp),%rsi
_Z14setup_countersv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:123
  return syscall(__NR_perf_event_open, hw_event, pid, cpu, group_fd, flags);
  40231c:	45 31 c9             	xor    %r9d,%r9d
memset():
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71
  40231f:	48 8d 94 24 80 00 00 	lea    0x80(%rsp),%rdx
  402326:	00 
perf_event_open():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:123
  402327:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
_Z14setup_countersv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:131
  pe.type = type;
  40232d:	4c 89 6c 24 70       	mov    %r13,0x70(%rsp)
open_counter():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:133
  pe.config = config;
  402332:	48 c7 44 24 78 01 00 	movq   $0x1,0x78(%rsp)
  402339:	00 00 
memset():
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71
  40233b:	48 89 d7             	mov    %rdx,%rdi
perf_event_open():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:123
  return syscall(__NR_perf_event_open, hw_event, pid, cpu, group_fd, flags);
  40233e:	31 d2                	xor    %edx,%edx
memset():
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71
  402340:	f3 48 ab             	rep stos %rax,%es:(%rdi)
perf_event_open():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:123
  402343:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
  402348:	bf 2a 01 00 00       	mov    $0x12a,%edi
  40234d:	31 c0                	xor    %eax,%eax
open_counter():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:134
  pe.disabled = 1;
  40234f:	c6 84 24 98 00 00 00 	movb   $0xe3,0x98(%rsp)
  402356:	e3 
perf_event_open():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:123
  return syscall(__NR_perf_event_open, hw_event, pid, cpu, group_fd, flags);
  402357:	e8 74 ef ff ff       	callq  4012d0 <syscall@plt>
  40235c:	48 89 c5             	mov    %rax,%rbp
open_counter():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:143
  if (fd == -1) {
  40235f:	83 f8 ff             	cmp    $0xffffffff,%eax
  402362:	0f 84 84 00 00 00    	je     4023ec <_Z14setup_countersv+0x1cc>
_Z14setup_countersv():
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71
  402368:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
memset():
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71
  40236d:	4c 89 f0             	mov    %r14,%rax
  402370:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402375:	48 89 e6             	mov    %rsp,%rsi
  402378:	48 89 d7             	mov    %rdx,%rdi
_Z14setup_countersv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:123
  return syscall(__NR_perf_event_open, hw_event, pid, cpu, group_fd, flags);
  40237b:	45 31 c9             	xor    %r9d,%r9d
perf_event_open():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:123
  40237e:	31 d2                	xor    %edx,%edx
  402380:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
memset():
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71
  402386:	f3 48 ab             	rep stos %rax,%es:(%rdi)
perf_event_open():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:123
  402389:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
  40238e:	31 c0                	xor    %eax,%eax
  402390:	bf 2a 01 00 00       	mov    $0x12a,%edi
_Z14setup_countersv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:131
  pe.type = type;
  402395:	4c 89 2c 24          	mov    %r13,(%rsp)
open_counter():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:133
  pe.config = config;
  402399:	48 c7 44 24 08 01 00 	movq   $0x1,0x8(%rsp)
  4023a0:	00 00 
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:134
  pe.disabled = 1;
  4023a2:	c6 44 24 28 d3       	movb   $0xd3,0x28(%rsp)
perf_event_open():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:123
  return syscall(__NR_perf_event_open, hw_event, pid, cpu, group_fd, flags);
  4023a7:	e8 24 ef ff ff       	callq  4012d0 <syscall@plt>
  4023ac:	48 89 c2             	mov    %rax,%rdx
open_counter():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:143
  if (fd == -1) {
  4023af:	83 f8 ff             	cmp    $0xffffffff,%eax
  4023b2:	74 38                	je     4023ec <_Z14setup_countersv+0x1cc>
_Z14setup_countersv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:168
  return c;
  4023b4:	48 89 d1             	mov    %rdx,%rcx
  4023b7:	49 c1 e4 20          	shl    $0x20,%r12
  4023bb:	89 d8                	mov    %ebx,%eax
  4023bd:	89 ea                	mov    %ebp,%edx
  4023bf:	48 c1 e1 20          	shl    $0x20,%rcx
  4023c3:	4c 09 e0             	or     %r12,%rax
  4023c6:	48 09 ca             	or     %rcx,%rdx
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:169
}
  4023c9:	48 8b 9c 24 c8 01 00 	mov    0x1c8(%rsp),%rbx
  4023d0:	00 
  4023d1:	64 48 2b 1c 25 28 00 	sub    %fs:0x28,%rbx
  4023d8:	00 00 
  4023da:	75 15                	jne    4023f1 <_Z14setup_countersv+0x1d1>
  4023dc:	48 81 c4 d0 01 00 00 	add    $0x1d0,%rsp
  4023e3:	5b                   	pop    %rbx
  4023e4:	5d                   	pop    %rbp
  4023e5:	41 5c                	pop    %r12
  4023e7:	41 5d                	pop    %r13
  4023e9:	41 5e                	pop    %r14
  4023eb:	c3                   	retq   
open_counter():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:169
  4023ec:	e8 cf f9 ff ff       	callq  401dc0 <_ZL12open_counterjmiii.part.0>
_Z14setup_countersv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:169
  4023f1:	e8 ea ef ff ff       	callq  4013e0 <__stack_chk_fail@plt>
  4023f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4023fd:	00 00 00 

0000000000402400 <_Z28initialize_perf_measurementsv>:
_Z28initialize_perf_measurementsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:174
void initialize_perf_measurements(){
  402400:	f3 0f 1e fa          	endbr64 
  402404:	48 83 ec 08          	sub    $0x8,%rsp
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:175
  perf_ctrs = setup_counters();
  402408:	e8 13 fe ff ff       	callq  402220 <_Z14setup_countersv>
  40240d:	48 89 05 3c 52 00 00 	mov    %rax,0x523c(%rip)        # 407650 <perf_ctrs>
  402414:	48 89 15 3d 52 00 00 	mov    %rdx,0x523d(%rip)        # 407658 <perf_ctrs+0x8>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:176
}
  40241b:	48 83 c4 08          	add    $0x8,%rsp
  40241f:	c3                   	retq   

0000000000402420 <_Z14start_countersP13perf_counters>:
_Z14start_countersP13perf_counters():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:178
void start_counters(struct perf_counters *c) {
  402420:	f3 0f 1e fa          	endbr64 
  402424:	53                   	push   %rbx
  402425:	48 89 fb             	mov    %rdi,%rbx
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:180
  ioctl(c->fd_user_time, PERF_EVENT_IOC_RESET, 0);
  402428:	8b 3f                	mov    (%rdi),%edi
  40242a:	31 d2                	xor    %edx,%edx
  40242c:	be 03 24 00 00       	mov    $0x2403,%esi
  402431:	31 c0                	xor    %eax,%eax
  402433:	e8 38 f0 ff ff       	callq  401470 <ioctl@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:181
  ioctl(c->fd_kernel_time, PERF_EVENT_IOC_RESET, 0);
  402438:	8b 7b 04             	mov    0x4(%rbx),%edi
  40243b:	31 d2                	xor    %edx,%edx
  40243d:	be 03 24 00 00       	mov    $0x2403,%esi
  402442:	31 c0                	xor    %eax,%eax
  402444:	e8 27 f0 ff ff       	callq  401470 <ioctl@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:182
  ioctl(c->fd_user_instr, PERF_EVENT_IOC_RESET, 0);
  402449:	8b 7b 08             	mov    0x8(%rbx),%edi
  40244c:	31 d2                	xor    %edx,%edx
  40244e:	be 03 24 00 00       	mov    $0x2403,%esi
  402453:	31 c0                	xor    %eax,%eax
  402455:	e8 16 f0 ff ff       	callq  401470 <ioctl@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:183
  ioctl(c->fd_kernel_instr, PERF_EVENT_IOC_RESET, 0);
  40245a:	8b 7b 0c             	mov    0xc(%rbx),%edi
  40245d:	31 d2                	xor    %edx,%edx
  40245f:	be 03 24 00 00       	mov    $0x2403,%esi
  402464:	31 c0                	xor    %eax,%eax
  402466:	e8 05 f0 ff ff       	callq  401470 <ioctl@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:185
  ioctl(c->fd_user_time, PERF_EVENT_IOC_ENABLE, 0);
  40246b:	8b 3b                	mov    (%rbx),%edi
  40246d:	31 d2                	xor    %edx,%edx
  40246f:	be 00 24 00 00       	mov    $0x2400,%esi
  402474:	31 c0                	xor    %eax,%eax
  402476:	e8 f5 ef ff ff       	callq  401470 <ioctl@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:186
  ioctl(c->fd_kernel_time, PERF_EVENT_IOC_ENABLE, 0);
  40247b:	8b 7b 04             	mov    0x4(%rbx),%edi
  40247e:	31 d2                	xor    %edx,%edx
  402480:	be 00 24 00 00       	mov    $0x2400,%esi
  402485:	31 c0                	xor    %eax,%eax
  402487:	e8 e4 ef ff ff       	callq  401470 <ioctl@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:187
  ioctl(c->fd_user_instr, PERF_EVENT_IOC_ENABLE, 0);
  40248c:	8b 7b 08             	mov    0x8(%rbx),%edi
  40248f:	31 d2                	xor    %edx,%edx
  402491:	be 00 24 00 00       	mov    $0x2400,%esi
  402496:	31 c0                	xor    %eax,%eax
  402498:	e8 d3 ef ff ff       	callq  401470 <ioctl@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:188
  ioctl(c->fd_kernel_instr, PERF_EVENT_IOC_ENABLE, 0);
  40249d:	8b 7b 0c             	mov    0xc(%rbx),%edi
  4024a0:	31 d2                	xor    %edx,%edx
  4024a2:	be 00 24 00 00       	mov    $0x2400,%esi
  4024a7:	31 c0                	xor    %eax,%eax
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:189
}
  4024a9:	5b                   	pop    %rbx
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:188
  ioctl(c->fd_kernel_instr, PERF_EVENT_IOC_ENABLE, 0);
  4024aa:	e9 c1 ef ff ff       	jmpq   401470 <ioctl@plt>
  4024af:	90                   	nop

00000000004024b0 <_Z17get_cpu_frequencyv>:
_Z17get_cpu_frequencyv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:191
double get_cpu_frequency() {
  4024b0:	f3 0f 1e fa          	endbr64 
  4024b4:	41 54                	push   %r12
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:192
  FILE *fp = fopen("/proc/cpuinfo", "r");
  4024b6:	48 8d 35 73 1b 00 00 	lea    0x1b73(%rip),%rsi        # 404030 <_IO_stdin_used+0x30>
  4024bd:	48 8d 3d c8 1b 00 00 	lea    0x1bc8(%rip),%rdi        # 40408c <_IO_stdin_used+0x8c>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:191
double get_cpu_frequency() {
  4024c4:	55                   	push   %rbp
  4024c5:	53                   	push   %rbx
  4024c6:	48 81 ec 20 01 00 00 	sub    $0x120,%rsp
  4024cd:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4024d4:	00 00 
  4024d6:	48 89 84 24 18 01 00 	mov    %rax,0x118(%rsp)
  4024dd:	00 
  4024de:	31 c0                	xor    %eax,%eax
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:192
  FILE *fp = fopen("/proc/cpuinfo", "r");
  4024e0:	e8 2b ef ff ff       	callq  401410 <fopen@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:193
  if (!fp) {
  4024e5:	48 85 c0             	test   %rax,%rax
  4024e8:	0f 84 9f 00 00 00    	je     40258d <_Z17get_cpu_frequencyv+0xdd>
  4024ee:	48 89 c5             	mov    %rax,%rbp
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:199
  double freq_mhz = 0.0;
  4024f1:	48 8d 5c 24 10       	lea    0x10(%rsp),%rbx
  4024f6:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  4024fd:	00 00 
strstr():
/usr/include/string.h:319

# ifdef __OPTIMIZE__
__extern_always_inline char *
strstr (char *__haystack, const char *__needle) __THROW
{
  return __builtin_strstr (__haystack, __needle);
  4024ff:	4c 8d 25 94 1b 00 00 	lea    0x1b94(%rip),%r12        # 40409a <_IO_stdin_used+0x9a>
  402506:	eb 18                	jmp    402520 <_Z17get_cpu_frequencyv+0x70>
  402508:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40250f:	00 
  402510:	4c 89 e6             	mov    %r12,%rsi
  402513:	48 89 df             	mov    %rbx,%rdi
  402516:	e8 d5 ed ff ff       	callq  4012f0 <strstr@plt>
_Z17get_cpu_frequencyv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:202
    if (strstr(line, "cpu MHz")) {
  40251b:	48 85 c0             	test   %rax,%rax
  40251e:	75 50                	jne    402570 <_Z17get_cpu_frequencyv+0xc0>
/usr/include/x86_64-linux-gnu/bits/stdio2.h:265
	return __fgets_chk (__s, __bos (__s), __n, __stream);

      if ((size_t) __n > __bos (__s))
	return __fgets_chk_warn (__s, __bos (__s), __n, __stream);
    }
  return __fgets_alias (__s, __n, __stream);
  402520:	48 89 ea             	mov    %rbp,%rdx
fgets():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:265
  402523:	be 00 01 00 00       	mov    $0x100,%esi
  402528:	48 89 df             	mov    %rbx,%rdi
  40252b:	e8 90 ef ff ff       	callq  4014c0 <fgets@plt>
_Z17get_cpu_frequencyv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:201
  while (fgets(line, sizeof(line), fp)) {
  402530:	48 85 c0             	test   %rax,%rax
  402533:	75 db                	jne    402510 <_Z17get_cpu_frequencyv+0x60>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:208
  fclose(fp);
  402535:	48 89 ef             	mov    %rbp,%rdi
  402538:	e8 93 ee ff ff       	callq  4013d0 <fclose@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:210
  return freq_mhz * 1e6; // Convert MHz to Hz
  40253d:	f2 0f 10 05 db 22 00 	movsd  0x22db(%rip),%xmm0        # 404820 <_IO_stdin_used+0x820>
  402544:	00 
  402545:	f2 0f 59 44 24 08    	mulsd  0x8(%rsp),%xmm0
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:211
}
  40254b:	48 8b 84 24 18 01 00 	mov    0x118(%rsp),%rax
  402552:	00 
  402553:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  40255a:	00 00 
  40255c:	75 41                	jne    40259f <_Z17get_cpu_frequencyv+0xef>
  40255e:	48 81 c4 20 01 00 00 	add    $0x120,%rsp
  402565:	5b                   	pop    %rbx
  402566:	5d                   	pop    %rbp
  402567:	41 5c                	pop    %r12
  402569:	c3                   	retq   
  40256a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:203
      if (sscanf(line, "cpu MHz : %lf", &freq_mhz) == 1) {
  402570:	31 c0                	xor    %eax,%eax
  402572:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
  402577:	48 8d 35 24 1b 00 00 	lea    0x1b24(%rip),%rsi        # 4040a2 <_IO_stdin_used+0xa2>
  40257e:	48 89 df             	mov    %rbx,%rdi
  402581:	e8 3a ee ff ff       	callq  4013c0 <__isoc99_sscanf@plt>
  402586:	83 f8 01             	cmp    $0x1,%eax
  402589:	75 95                	jne    402520 <_Z17get_cpu_frequencyv+0x70>
  40258b:	eb a8                	jmp    402535 <_Z17get_cpu_frequencyv+0x85>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:194
    perror("Failed to open /proc/cpuinfo");
  40258d:	48 8d 3d e9 1a 00 00 	lea    0x1ae9(%rip),%rdi        # 40407d <_IO_stdin_used+0x7d>
  402594:	e8 f7 ed ff ff       	callq  401390 <perror@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:195
    return 0.0;
  402599:	66 0f ef c0          	pxor   %xmm0,%xmm0
  40259d:	eb ac                	jmp    40254b <_Z17get_cpu_frequencyv+0x9b>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:211
}
  40259f:	e8 3c ee ff ff       	callq  4013e0 <__stack_chk_fail@plt>
  4025a4:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4025ab:	00 00 00 00 
  4025af:	90                   	nop

00000000004025b0 <_Z13stop_countersP13perf_countersPxS1_S1_S1_>:
_Z13stop_countersP13perf_countersPxS1_S1_S1_():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:215
                   long long *instr_user, long long *instr_kernel) {
  4025b0:	f3 0f 1e fa          	endbr64 
  4025b4:	41 57                	push   %r15
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:217
  ioctl(c->fd_user_time, PERF_EVENT_IOC_DISABLE, 0);
  4025b6:	31 c0                	xor    %eax,%eax
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:215
                   long long *instr_user, long long *instr_kernel) {
  4025b8:	4d 89 c7             	mov    %r8,%r15
  4025bb:	41 56                	push   %r14
  4025bd:	49 89 ce             	mov    %rcx,%r14
  4025c0:	41 55                	push   %r13
  4025c2:	41 54                	push   %r12
  4025c4:	49 89 d4             	mov    %rdx,%r12
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:217
  ioctl(c->fd_user_time, PERF_EVENT_IOC_DISABLE, 0);
  4025c7:	31 d2                	xor    %edx,%edx
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:215
                   long long *instr_user, long long *instr_kernel) {
  4025c9:	55                   	push   %rbp
  4025ca:	48 89 f5             	mov    %rsi,%rbp
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:217
  ioctl(c->fd_user_time, PERF_EVENT_IOC_DISABLE, 0);
  4025cd:	be 01 24 00 00       	mov    $0x2401,%esi
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:215
                   long long *instr_user, long long *instr_kernel) {
  4025d2:	53                   	push   %rbx
  4025d3:	48 89 fb             	mov    %rdi,%rbx
  4025d6:	48 83 ec 18          	sub    $0x18,%rsp
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:217
  ioctl(c->fd_user_time, PERF_EVENT_IOC_DISABLE, 0);
  4025da:	8b 3f                	mov    (%rdi),%edi
  4025dc:	e8 8f ee ff ff       	callq  401470 <ioctl@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:218
  ioctl(c->fd_kernel_time, PERF_EVENT_IOC_DISABLE, 0);
  4025e1:	8b 7b 04             	mov    0x4(%rbx),%edi
  4025e4:	31 d2                	xor    %edx,%edx
  4025e6:	be 01 24 00 00       	mov    $0x2401,%esi
  4025eb:	31 c0                	xor    %eax,%eax
  4025ed:	e8 7e ee ff ff       	callq  401470 <ioctl@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:219
  ioctl(c->fd_user_instr, PERF_EVENT_IOC_DISABLE, 0);
  4025f2:	8b 7b 08             	mov    0x8(%rbx),%edi
  4025f5:	31 d2                	xor    %edx,%edx
  4025f7:	be 01 24 00 00       	mov    $0x2401,%esi
  4025fc:	31 c0                	xor    %eax,%eax
  4025fe:	e8 6d ee ff ff       	callq  401470 <ioctl@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:220
  ioctl(c->fd_kernel_instr, PERF_EVENT_IOC_DISABLE, 0);
  402603:	8b 7b 0c             	mov    0xc(%rbx),%edi
  402606:	31 d2                	xor    %edx,%edx
  402608:	be 01 24 00 00       	mov    $0x2401,%esi
  40260d:	31 c0                	xor    %eax,%eax
  40260f:	e8 5c ee ff ff       	callq  401470 <ioctl@plt>
/usr/include/x86_64-linux-gnu/bits/unistd.h:44
	return __read_chk (__fd, __buf, __nbytes, __bos0 (__buf));

      if (__nbytes > __bos0 (__buf))
	return __read_chk_warn (__fd, __buf, __nbytes, __bos0 (__buf));
    }
  return __read_alias (__fd, __buf, __nbytes);
  402614:	8b 3b                	mov    (%rbx),%edi
read():
/usr/include/x86_64-linux-gnu/bits/unistd.h:44
  402616:	ba 08 00 00 00       	mov    $0x8,%edx
  40261b:	48 89 ee             	mov    %rbp,%rsi
  40261e:	e8 5d ee ff ff       	callq  401480 <read@plt>
_Z13stop_countersP13perf_countersPxS1_S1_S1_():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:224
  if (ret != (ssize_t)sizeof(long long)) {
  402623:	48 83 f8 08          	cmp    $0x8,%rax
  402627:	74 14                	je     40263d <_Z13stop_countersP13perf_countersPxS1_S1_S1_+0x8d>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:225
    perror("read user_time");
  402629:	48 8d 3d 80 1a 00 00 	lea    0x1a80(%rip),%rdi        # 4040b0 <_IO_stdin_used+0xb0>
  402630:	e8 5b ed ff ff       	callq  401390 <perror@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:226
    *cycles_user = -1;
  402635:	48 c7 45 00 ff ff ff 	movq   $0xffffffffffffffff,0x0(%rbp)
  40263c:	ff 
/usr/include/x86_64-linux-gnu/bits/unistd.h:44
  40263d:	8b 7b 04             	mov    0x4(%rbx),%edi
read():
/usr/include/x86_64-linux-gnu/bits/unistd.h:44
  402640:	ba 08 00 00 00       	mov    $0x8,%edx
  402645:	4c 89 e6             	mov    %r12,%rsi
  402648:	e8 33 ee ff ff       	callq  401480 <read@plt>
_Z13stop_countersP13perf_countersPxS1_S1_S1_():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:230
  if (ret != (ssize_t)sizeof(long long)) {
  40264d:	48 83 f8 08          	cmp    $0x8,%rax
  402651:	74 14                	je     402667 <_Z13stop_countersP13perf_countersPxS1_S1_S1_+0xb7>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:231
    perror("read kernel_time");
  402653:	48 8d 3d 65 1a 00 00 	lea    0x1a65(%rip),%rdi        # 4040bf <_IO_stdin_used+0xbf>
  40265a:	e8 31 ed ff ff       	callq  401390 <perror@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:232
    *cycles_kernel = -1;
  40265f:	49 c7 04 24 ff ff ff 	movq   $0xffffffffffffffff,(%r12)
  402666:	ff 
/usr/include/x86_64-linux-gnu/bits/unistd.h:44
  402667:	8b 7b 08             	mov    0x8(%rbx),%edi
read():
/usr/include/x86_64-linux-gnu/bits/unistd.h:44
  40266a:	ba 08 00 00 00       	mov    $0x8,%edx
  40266f:	4c 89 f6             	mov    %r14,%rsi
  402672:	e8 09 ee ff ff       	callq  401480 <read@plt>
_Z13stop_countersP13perf_countersPxS1_S1_S1_():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:236
  if (ret != (ssize_t)sizeof(long long)) {
  402677:	48 83 f8 08          	cmp    $0x8,%rax
  40267b:	74 13                	je     402690 <_Z13stop_countersP13perf_countersPxS1_S1_S1_+0xe0>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:237
    perror("read user_instr");
  40267d:	48 8d 3d 4c 1a 00 00 	lea    0x1a4c(%rip),%rdi        # 4040d0 <_IO_stdin_used+0xd0>
  402684:	e8 07 ed ff ff       	callq  401390 <perror@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:238
    *instr_user = -1;
  402689:	49 c7 06 ff ff ff ff 	movq   $0xffffffffffffffff,(%r14)
/usr/include/x86_64-linux-gnu/bits/unistd.h:44
  402690:	8b 7b 0c             	mov    0xc(%rbx),%edi
read():
/usr/include/x86_64-linux-gnu/bits/unistd.h:44
  402693:	ba 08 00 00 00       	mov    $0x8,%edx
  402698:	4c 89 fe             	mov    %r15,%rsi
  40269b:	e8 e0 ed ff ff       	callq  401480 <read@plt>
_Z13stop_countersP13perf_countersPxS1_S1_S1_():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:242
  if (ret != (ssize_t)sizeof(long long)) {
  4026a0:	48 83 f8 08          	cmp    $0x8,%rax
  4026a4:	74 13                	je     4026b9 <_Z13stop_countersP13perf_countersPxS1_S1_S1_+0x109>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:243
    perror("read kernel_instr");
  4026a6:	48 8d 3d 33 1a 00 00 	lea    0x1a33(%rip),%rdi        # 4040e0 <_IO_stdin_used+0xe0>
  4026ad:	e8 de ec ff ff       	callq  401390 <perror@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:244
    *instr_kernel = -1;
  4026b2:	49 c7 07 ff ff ff ff 	movq   $0xffffffffffffffff,(%r15)
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:248
  double cpu_freq_hz = get_cpu_frequency(); // in Hz
  4026b9:	e8 f2 fd ff ff       	callq  4024b0 <_Z17get_cpu_frequencyv>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:249
  if (*cycles_user != -1)
  4026be:	48 8b 45 00          	mov    0x0(%rbp),%rax
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:247
  double time_user_s = 0, time_kernel_s = 0;
  4026c2:	66 0f ef d2          	pxor   %xmm2,%xmm2
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:249
  if (*cycles_user != -1)
  4026c6:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  4026ca:	74 0d                	je     4026d9 <_Z13stop_countersP13perf_countersPxS1_S1_S1_+0x129>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:250
    time_user_s = (*cycles_user) / cpu_freq_hz;
  4026cc:	66 0f ef d2          	pxor   %xmm2,%xmm2
  4026d0:	f2 48 0f 2a d0       	cvtsi2sd %rax,%xmm2
  4026d5:	f2 0f 5e d0          	divsd  %xmm0,%xmm2
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:251
  if (*cycles_kernel != -1)
  4026d9:	49 8b 04 24          	mov    (%r12),%rax
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:247
  double time_user_s = 0, time_kernel_s = 0;
  4026dd:	66 0f ef c9          	pxor   %xmm1,%xmm1
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:251
  if (*cycles_kernel != -1)
  4026e1:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  4026e5:	74 0d                	je     4026f4 <_Z13stop_countersP13perf_countersPxS1_S1_S1_+0x144>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:252
    time_kernel_s = (*cycles_kernel) / cpu_freq_hz;
  4026e7:	66 0f ef c9          	pxor   %xmm1,%xmm1
  4026eb:	f2 48 0f 2a c8       	cvtsi2sd %rax,%xmm1
  4026f0:	f2 0f 5e c8          	divsd  %xmm0,%xmm1
/usr/include/x86_64-linux-gnu/bits/stdio2.h:107
  return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
  4026f4:	bf 01 00 00 00       	mov    $0x1,%edi
printf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:107
  4026f9:	b8 01 00 00 00       	mov    $0x1,%eax
  4026fe:	f2 0f 11 14 24       	movsd  %xmm2,(%rsp)
  402703:	48 8d 35 8e 1c 00 00 	lea    0x1c8e(%rip),%rsi        # 404398 <_IO_stdin_used+0x398>
  40270a:	f2 0f 11 4c 24 08    	movsd  %xmm1,0x8(%rsp)
  402710:	e8 9b eb ff ff       	callq  4012b0 <__printf_chk@plt>
_Z13stop_countersP13perf_countersPxS1_S1_S1_():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:256
  FILE *f = fopen("perf.stats", "w");
  402715:	48 8d 35 f8 18 00 00 	lea    0x18f8(%rip),%rsi        # 404014 <_IO_stdin_used+0x14>
  40271c:	48 8d 3d cf 19 00 00 	lea    0x19cf(%rip),%rdi        # 4040f2 <_IO_stdin_used+0xf2>
  402723:	e8 e8 ec ff ff       	callq  401410 <fopen@plt>
  402728:	49 89 c5             	mov    %rax,%r13
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:257
  if (f) {
  40272b:	48 85 c0             	test   %rax,%rax
  40272e:	0f 84 9c 00 00 00    	je     4027d0 <_Z13stop_countersP13perf_countersPxS1_S1_S1_+0x220>
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
  402734:	48 83 ec 08          	sub    $0x8,%rsp
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  402738:	48 8d 05 e7 19 00 00 	lea    0x19e7(%rip),%rax        # 404126 <_IO_stdin_used+0x126>
  40273f:	4c 89 ef             	mov    %r13,%rdi
  402742:	be 01 00 00 00       	mov    $0x1,%esi
  402747:	48 8d 0d e7 19 00 00 	lea    0x19e7(%rip),%rcx        # 404135 <_IO_stdin_used+0x135>
  40274e:	50                   	push   %rax
  40274f:	4c 8d 0d a7 19 00 00 	lea    0x19a7(%rip),%r9        # 4040fd <_IO_stdin_used+0xfd>
  402756:	41 ff 37             	pushq  (%r15)
  402759:	4c 8d 05 aa 19 00 00 	lea    0x19aa(%rip),%r8        # 40410a <_IO_stdin_used+0x10a>
  402760:	48 8d 15 59 1c 00 00 	lea    0x1c59(%rip),%rdx        # 4043c0 <_IO_stdin_used+0x3c0>
  402767:	51                   	push   %rcx
  402768:	48 8d 0d db 19 00 00 	lea    0x19db(%rip),%rcx        # 40414a <_IO_stdin_used+0x14a>
  40276f:	50                   	push   %rax
  402770:	41 ff 36             	pushq  (%r14)
  402773:	51                   	push   %rcx
  402774:	48 8d 0d e2 19 00 00 	lea    0x19e2(%rip),%rcx        # 40415d <_IO_stdin_used+0x15d>
  40277b:	50                   	push   %rax
  40277c:	41 ff 34 24          	pushq  (%r12)
  402780:	51                   	push   %rcx
  402781:	48 8d 0d 93 19 00 00 	lea    0x1993(%rip),%rcx        # 40411b <_IO_stdin_used+0x11b>
  402788:	50                   	push   %rax
  402789:	48 8d 05 dc 19 00 00 	lea    0x19dc(%rip),%rax        # 40416c <_IO_stdin_used+0x16c>
  402790:	ff 75 00             	pushq  0x0(%rbp)
  402793:	50                   	push   %rax
  402794:	48 8d 05 de 19 00 00 	lea    0x19de(%rip),%rax        # 404179 <_IO_stdin_used+0x179>
  40279b:	50                   	push   %rax
  40279c:	f2 0f 10 54 24 70    	movsd  0x70(%rsp),%xmm2
  4027a2:	b8 02 00 00 00       	mov    $0x2,%eax
  4027a7:	f2 0f 10 4c 24 78    	movsd  0x78(%rsp),%xmm1
  4027ad:	66 0f 28 c2          	movapd %xmm2,%xmm0
  4027b1:	e8 2a ed ff ff       	callq  4014e0 <__fprintf_chk@plt>
_Z13stop_countersP13perf_countersPxS1_S1_S1_():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:273
}
  4027b6:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:271
    fclose(f);
  4027bd:	4c 89 ef             	mov    %r13,%rdi
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:273
}
  4027c0:	5b                   	pop    %rbx
  4027c1:	5d                   	pop    %rbp
  4027c2:	41 5c                	pop    %r12
  4027c4:	41 5d                	pop    %r13
  4027c6:	41 5e                	pop    %r14
  4027c8:	41 5f                	pop    %r15
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:271
    fclose(f);
  4027ca:	e9 01 ec ff ff       	jmpq   4013d0 <fclose@plt>
  4027cf:	90                   	nop
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:273
}
  4027d0:	48 83 c4 18          	add    $0x18,%rsp
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:272
  } else perror("Failed to open perf.stats for writing");
  4027d4:	48 8d 3d 4d 1c 00 00 	lea    0x1c4d(%rip),%rdi        # 404428 <_IO_stdin_used+0x428>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:273
}
  4027db:	5b                   	pop    %rbx
  4027dc:	5d                   	pop    %rbp
  4027dd:	41 5c                	pop    %r12
  4027df:	41 5d                	pop    %r13
  4027e1:	41 5e                	pop    %r14
  4027e3:	41 5f                	pop    %r15
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:272
  } else perror("Failed to open perf.stats for writing");
  4027e5:	e9 a6 eb ff ff       	jmpq   401390 <perror@plt>
  4027ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004027f0 <_Z16cleanup_countersP13perf_counters>:
_Z16cleanup_countersP13perf_counters():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:275
void cleanup_counters(struct perf_counters *c) {
  4027f0:	f3 0f 1e fa          	endbr64 
  4027f4:	53                   	push   %rbx
  4027f5:	48 89 fb             	mov    %rdi,%rbx
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:276
  close(c->fd_user_time);
  4027f8:	8b 3f                	mov    (%rdi),%edi
  4027fa:	e8 21 ed ff ff       	callq  401520 <close@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:277
  close(c->fd_kernel_time);
  4027ff:	8b 7b 04             	mov    0x4(%rbx),%edi
  402802:	e8 19 ed ff ff       	callq  401520 <close@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:278
  close(c->fd_user_instr);
  402807:	8b 7b 08             	mov    0x8(%rbx),%edi
  40280a:	e8 11 ed ff ff       	callq  401520 <close@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:279
  close(c->fd_kernel_instr);
  40280f:	8b 7b 0c             	mov    0xc(%rbx),%edi
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:280
}
  402812:	5b                   	pop    %rbx
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:279
  close(c->fd_kernel_instr);
  402813:	e9 08 ed ff ff       	jmpq   401520 <close@plt>
  402818:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40281f:	00 

0000000000402820 <_Z14move_to_cgroupPKci>:
_Z14move_to_cgroupPKci():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:292
void move_to_cgroup(const char *cgroup_path, pid_t pid){
  402820:	f3 0f 1e fa          	endbr64 
  402824:	41 56                	push   %r14
  402826:	49 89 f9             	mov    %rdi,%r9
/usr/include/x86_64-linux-gnu/bits/stdio2.h:67
  return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
  402829:	b9 00 01 00 00       	mov    $0x100,%ecx
snprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:67
  40282e:	ba 01 00 00 00       	mov    $0x1,%edx
_Z14move_to_cgroupPKci():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:292
  402833:	41 55                	push   %r13
snprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:67
  402835:	4c 8d 05 4e 19 00 00 	lea    0x194e(%rip),%r8        # 40418a <_IO_stdin_used+0x18a>
_Z14move_to_cgroupPKci():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:292
  40283c:	41 54                	push   %r12
  40283e:	41 89 f4             	mov    %esi,%r12d
snprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:67
  402841:	be 00 01 00 00       	mov    $0x100,%esi
_Z14move_to_cgroupPKci():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:292
  402846:	55                   	push   %rbp
  402847:	48 81 ec 18 01 00 00 	sub    $0x118,%rsp
  40284e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402855:	00 00 
  402857:	48 89 84 24 08 01 00 	mov    %rax,0x108(%rsp)
  40285e:	00 
  40285f:	31 c0                	xor    %eax,%eax
snprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:67
  402861:	49 89 e5             	mov    %rsp,%r13
  402864:	4c 89 ef             	mov    %r13,%rdi
  402867:	e8 04 eb ff ff       	callq  401370 <__snprintf_chk@plt>
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc():
/usr/include/c++/10/ostream:611
  40286c:	ba 13 00 00 00       	mov    $0x13,%edx
  402871:	48 8d 35 22 19 00 00 	lea    0x1922(%rip),%rsi        # 40419a <_IO_stdin_used+0x19a>
  402878:	48 8d 3d 01 49 00 00 	lea    0x4901(%rip),%rdi        # 407180 <_ZSt4cout@@GLIBCXX_3.4>
  40287f:	e8 6c eb ff ff       	callq  4013f0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
_Z14move_to_cgroupPKci():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:295
	std::cout << "moving the process " << pid << " to " << path << std::endl;
  402884:	44 89 e6             	mov    %r12d,%esi
  402887:	48 8d 3d f2 48 00 00 	lea    0x48f2(%rip),%rdi        # 407180 <_ZSt4cout@@GLIBCXX_3.4>
  40288e:	e8 5d ec ff ff       	callq  4014f0 <_ZNSolsEi@plt>
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc():
/usr/include/c++/10/ostream:611
  402893:	ba 04 00 00 00       	mov    $0x4,%edx
  402898:	48 8d 35 0f 19 00 00 	lea    0x190f(%rip),%rsi        # 4041ae <_IO_stdin_used+0x1ae>
  40289f:	48 89 c7             	mov    %rax,%rdi
_Z14move_to_cgroupPKci():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:295
  4028a2:	48 89 c5             	mov    %rax,%rbp
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc():
/usr/include/c++/10/ostream:611
  4028a5:	e8 46 eb ff ff       	callq  4013f0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
_ZNSt11char_traitsIcE6lengthEPKc():
/usr/include/c++/10/bits/char_traits.h:399
      {
#if __cplusplus >= 201703L
	if (__constant_string_p(__s))
	  return __gnu_cxx::char_traits<char_type>::length(__s);
#endif
	return __builtin_strlen(__s);
  4028aa:	4c 89 ef             	mov    %r13,%rdi
  4028ad:	e8 8e ea ff ff       	callq  401340 <strlen@plt>
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc():
/usr/include/c++/10/ostream:611
  4028b2:	4c 89 ee             	mov    %r13,%rsi
  4028b5:	48 89 ef             	mov    %rbp,%rdi
_ZNSt11char_traitsIcE6lengthEPKc():
/usr/include/c++/10/bits/char_traits.h:399
  4028b8:	48 89 c2             	mov    %rax,%rdx
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc():
/usr/include/c++/10/ostream:611
  4028bb:	e8 30 eb ff ff       	callq  4013f0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_():
/usr/include/c++/10/ostream:682
   *  for more on this subject.
  */
  template<typename _CharT, typename _Traits>
    inline basic_ostream<_CharT, _Traits>&
    endl(basic_ostream<_CharT, _Traits>& __os)
    { return flush(__os.put(__os.widen('\n'))); }
  4028c0:	48 8b 45 00          	mov    0x0(%rbp),%rax
  4028c4:	48 8b 40 e8          	mov    -0x18(%rax),%rax
  4028c8:	4c 8b b4 05 f0 00 00 	mov    0xf0(%rbp,%rax,1),%r14
  4028cf:	00 
_ZSt13__check_facetISt5ctypeIcEERKT_PS3_():
/usr/include/c++/10/bits/basic_ios.h:49

  template<typename _Facet>
    inline const _Facet&
    __check_facet(const _Facet* __f)
    {
      if (!__f)
  4028d0:	4d 85 f6             	test   %r14,%r14
  4028d3:	0f 84 be 00 00 00    	je     402997 <_Z14move_to_cgroupPKci+0x177>
_ZNKSt5ctypeIcE5widenEc():
/usr/include/c++/10/bits/locale_facets.h:874
       *  @return  The converted character.
      */
      char_type
      widen(char __c) const
      {
	if (_M_widen_ok)
  4028d9:	41 80 7e 38 00       	cmpb   $0x0,0x38(%r14)
  4028de:	74 70                	je     402950 <_Z14move_to_cgroupPKci+0x130>
_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_():
/usr/include/c++/10/ostream:682
  4028e0:	41 0f be 76 43       	movsbl 0x43(%r14),%esi
  4028e5:	48 89 ef             	mov    %rbp,%rdi
  4028e8:	e8 d3 e9 ff ff       	callq  4012c0 <_ZNSo3putEc@plt>
  4028ed:	48 89 c7             	mov    %rax,%rdi
_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_():
/usr/include/c++/10/ostream:704
   *  This manipulator simply calls the stream's @c flush() member function.
  */
  template<typename _CharT, typename _Traits>
    inline basic_ostream<_CharT, _Traits>&
    flush(basic_ostream<_CharT, _Traits>& __os)
    { return __os.flush(); }
  4028f0:	e8 8b ea ff ff       	callq  401380 <_ZNSo5flushEv@plt>
_Z14move_to_cgroupPKci():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:296
	FILE *f = fopen(path, "w");
  4028f5:	48 8d 35 18 17 00 00 	lea    0x1718(%rip),%rsi        # 404014 <_IO_stdin_used+0x14>
  4028fc:	4c 89 ef             	mov    %r13,%rdi
  4028ff:	e8 0c eb ff ff       	callq  401410 <fopen@plt>
  402904:	48 89 c5             	mov    %rax,%rbp
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:297
	if (f == NULL) {
  402907:	48 85 c0             	test   %rax,%rax
  40290a:	74 75                	je     402981 <_Z14move_to_cgroupPKci+0x161>
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
  40290c:	48 89 c7             	mov    %rax,%rdi
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  40290f:	44 89 e1             	mov    %r12d,%ecx
  402912:	31 c0                	xor    %eax,%eax
  402914:	be 01 00 00 00       	mov    $0x1,%esi
  402919:	48 8d 15 5a 17 00 00 	lea    0x175a(%rip),%rdx        # 40407a <_IO_stdin_used+0x7a>
  402920:	e8 bb eb ff ff       	callq  4014e0 <__fprintf_chk@plt>
_Z14move_to_cgroupPKci():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:302
	fclose(f);
  402925:	48 89 ef             	mov    %rbp,%rdi
  402928:	e8 a3 ea ff ff       	callq  4013d0 <fclose@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:303
}
  40292d:	48 8b 84 24 08 01 00 	mov    0x108(%rsp),%rax
  402934:	00 
  402935:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  40293c:	00 00 
  40293e:	75 5c                	jne    40299c <_Z14move_to_cgroupPKci+0x17c>
  402940:	48 81 c4 18 01 00 00 	add    $0x118,%rsp
  402947:	5d                   	pop    %rbp
  402948:	41 5c                	pop    %r12
  40294a:	41 5d                	pop    %r13
  40294c:	41 5e                	pop    %r14
  40294e:	c3                   	retq   
  40294f:	90                   	nop
_ZNKSt5ctypeIcE5widenEc():
/usr/include/c++/10/bits/locale_facets.h:876
	  return _M_widen[static_cast<unsigned char>(__c)];
	this->_M_widen_init();
  402950:	4c 89 f7             	mov    %r14,%rdi
  402953:	e8 a8 ea ff ff       	callq  401400 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
/usr/include/c++/10/bits/locale_facets.h:877
	return this->do_widen(__c);
  402958:	49 8b 06             	mov    (%r14),%rax
  40295b:	be 0a 00 00 00       	mov    $0xa,%esi
  402960:	48 8d 15 79 06 00 00 	lea    0x679(%rip),%rdx        # 402fe0 <_ZNKSt5ctypeIcE8do_widenEc>
  402967:	48 8b 40 30          	mov    0x30(%rax),%rax
  40296b:	48 39 d0             	cmp    %rdx,%rax
  40296e:	0f 84 71 ff ff ff    	je     4028e5 <_Z14move_to_cgroupPKci+0xc5>
  402974:	4c 89 f7             	mov    %r14,%rdi
  402977:	ff d0                	callq  *%rax
_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_():
/usr/include/c++/10/ostream:682
    { return flush(__os.put(__os.widen('\n'))); }
  402979:	0f be f0             	movsbl %al,%esi
  40297c:	e9 64 ff ff ff       	jmpq   4028e5 <_Z14move_to_cgroupPKci+0xc5>
_Z14move_to_cgroupPKci():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:298
		perror("Failed to open cgroup.procs");
  402981:	48 8d 3d 2b 18 00 00 	lea    0x182b(%rip),%rdi        # 4041b3 <_IO_stdin_used+0x1b3>
  402988:	e8 03 ea ff ff       	callq  401390 <perror@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:299
		exit(EXIT_FAILURE);
  40298d:	bf 01 00 00 00       	mov    $0x1,%edi
  402992:	e8 99 ea ff ff       	callq  401430 <exit@plt>
_ZSt13__check_facetISt5ctypeIcEERKT_PS3_():
/usr/include/c++/10/bits/basic_ios.h:50
	__throw_bad_cast();
  402997:	e8 a4 ea ff ff       	callq  401440 <_ZSt16__throw_bad_castv@plt>
_Z14move_to_cgroupPKci():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:303
}
  40299c:	e8 3f ea ff ff       	callq  4013e0 <__stack_chk_fail@plt>
  4029a1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4029a8:	00 00 00 00 
  4029ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004029b0 <_Z13get_taskstatsP9taskstats>:
_Z13get_taskstatsP9taskstats():
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:143

#define FIELD_AVAIL(len, field) ((len) >= (offsetof(struct taskstats, field) + sizeof(((struct taskstats*)0)->field)))

// Only master thread should call this function to get stats for the entire process
int get_taskstats(struct taskstats *ts){
  4029b0:	f3 0f 1e fa          	endbr64 
  4029b4:	41 55                	push   %r13
  4029b6:	41 54                	push   %r12
  4029b8:	49 89 fc             	mov    %rdi,%r12
  4029bb:	55                   	push   %rbp
  4029bc:	53                   	push   %rbx
  4029bd:	48 83 ec 28          	sub    $0x28,%rsp
  4029c1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4029c8:	00 00 
  4029ca:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  4029cf:	31 c0                	xor    %eax,%eax
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:144
  pid_t tgid = getpid();
  4029d1:	e8 ba ea ff ff       	callq  401490 <getpid@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:145
  if (tgid <= 0) {
  4029d6:	85 c0                	test   %eax,%eax
  4029d8:	0f 8e da 00 00 00    	jle    402ab8 <_Z13get_taskstatsP9taskstats+0x108>
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:66
	int sd = socket(AF_NETLINK, SOCK_RAW, NETLINK_GENERIC);
  4029de:	ba 10 00 00 00       	mov    $0x10,%edx
open_taskstats_socket():
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:66
  4029e3:	be 03 00 00 00       	mov    $0x3,%esi
  4029e8:	bf 10 00 00 00       	mov    $0x10,%edi
  4029ed:	41 89 c5             	mov    %eax,%r13d
  4029f0:	e8 0b e9 ff ff       	callq  401300 <socket@plt>
  4029f5:	89 c5                	mov    %eax,%ebp
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:67
	if (sd < 0)
  4029f7:	85 c0                	test   %eax,%eax
  4029f9:	0f 88 f1 00 00 00    	js     402af0 <_Z13get_taskstatsP9taskstats+0x140>
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:71
	addr.nl_family = AF_NETLINK;
  4029ff:	b8 10 00 00 00       	mov    $0x10,%eax
_Z13get_taskstatsP9taskstats():
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71
  402a04:	48 8d 5c 24 08       	lea    0x8(%rsp),%rbx
memset():
/usr/include/x86_64-linux-gnu/bits/string_fortified.h:71
  402a09:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  402a10:	00 00 
  402a12:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%rsp)
  402a19:	00 
open_taskstats_socket():
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:71
  402a1a:	66 89 44 24 08       	mov    %ax,0x8(%rsp)
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:72
	addr.nl_pid = getpid();
  402a1f:	e8 6c ea ff ff       	callq  401490 <getpid@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:73
	if (bind(sd, (struct sockaddr *)&addr, sizeof(addr)) < 0) {
  402a24:	89 ef                	mov    %ebp,%edi
  402a26:	ba 0c 00 00 00       	mov    $0xc,%edx
  402a2b:	48 89 de             	mov    %rbx,%rsi
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:72
	addr.nl_pid = getpid();
  402a2e:	89 44 24 0c          	mov    %eax,0xc(%rsp)
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:73
	if (bind(sd, (struct sockaddr *)&addr, sizeof(addr)) < 0) {
  402a32:	e8 a9 e8 ff ff       	callq  4012e0 <bind@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:74
		close(sd);
  402a37:	89 ef                	mov    %ebp,%edi
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:73
	if (bind(sd, (struct sockaddr *)&addr, sizeof(addr)) < 0) {
  402a39:	85 c0                	test   %eax,%eax
  402a3b:	0f 88 aa 00 00 00    	js     402aeb <_Z13get_taskstatsP9taskstats+0x13b>
_Z13get_taskstatsP9taskstats():
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:151
		fprintf(stderr, "Invalid PID\n");
		return 1;
	}
  int sd = open_taskstats_socket();
  if (sd < 0) { perror("socket/bind"); return 1; }
  int family_id = get_family_id(sd);
  402a41:	e8 9a f3 ff ff       	callq  401de0 <_ZL13get_family_idi>
  402a46:	89 c6                	mov    %eax,%esi
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:152
  if (family_id < 0) {
  402a48:	85 c0                	test   %eax,%eax
  402a4a:	0f 88 b8 00 00 00    	js     402b08 <_Z13get_taskstatsP9taskstats+0x158>
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:158
		fprintf(stderr, "TASKSTATS family not found (need CONFIG_TASKSTATS + privileges)\n");
		close(sd);
		return 1;
	}
  size_t ts_len;
  if (request_taskstats_pid(sd, family_id, tgid, ts, &ts_len) < 0 || ts_len == 0) {
  402a50:	49 89 d8             	mov    %rbx,%r8
  402a53:	4c 89 e1             	mov    %r12,%rcx
  402a56:	44 89 ea             	mov    %r13d,%edx
  402a59:	89 ef                	mov    %ebp,%edi
  402a5b:	e8 b0 f0 ff ff       	callq  401b10 <_ZL21request_taskstats_pidiiiP9taskstatsPm>
  402a60:	85 c0                	test   %eax,%eax
  402a62:	78 08                	js     402a6c <_Z13get_taskstatsP9taskstats+0xbc>
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:158 (discriminator 3)
  402a64:	48 83 7c 24 08 00    	cmpq   $0x0,0x8(%rsp)
  402a6a:	75 74                	jne    402ae0 <_Z13get_taskstatsP9taskstats+0x130>
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  402a6c:	48 8b 3d 2d 48 00 00 	mov    0x482d(%rip),%rdi        # 4072a0 <stderr@@GLIBC_2.2.5>
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  402a73:	44 89 e9             	mov    %r13d,%ecx
  402a76:	be 01 00 00 00       	mov    $0x1,%esi
  402a7b:	31 c0                	xor    %eax,%eax
  402a7d:	48 8d 15 14 1a 00 00 	lea    0x1a14(%rip),%rdx        # 404498 <_IO_stdin_used+0x498>
  402a84:	e8 57 ea ff ff       	callq  4014e0 <__fprintf_chk@plt>
_Z13get_taskstatsP9taskstats():
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:160
    fprintf(stderr, "Failed to obtain taskstats for %d\n", tgid);
    close(sd);
  402a89:	89 ef                	mov    %ebp,%edi
  402a8b:	e8 90 ea ff ff       	callq  401520 <close@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:161
    return 1;
  402a90:	b8 01 00 00 00       	mov    $0x1,%eax
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:165
  }
  close(sd);
  return 0;
}
  402a95:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  402a9a:	64 48 2b 0c 25 28 00 	sub    %fs:0x28,%rcx
  402aa1:	00 00 
  402aa3:	0f 85 8a 00 00 00    	jne    402b33 <_Z13get_taskstatsP9taskstats+0x183>
  402aa9:	48 83 c4 28          	add    $0x28,%rsp
  402aad:	5b                   	pop    %rbx
  402aae:	5d                   	pop    %rbp
  402aaf:	41 5c                	pop    %r12
  402ab1:	41 5d                	pop    %r13
  402ab3:	c3                   	retq   
  402ab4:	0f 1f 40 00          	nopl   0x0(%rax)
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  402ab8:	48 8b 3d e1 47 00 00 	mov    0x47e1(%rip),%rdi        # 4072a0 <stderr@@GLIBC_2.2.5>
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  402abf:	48 8d 15 09 17 00 00 	lea    0x1709(%rip),%rdx        # 4041cf <_IO_stdin_used+0x1cf>
  402ac6:	be 01 00 00 00       	mov    $0x1,%esi
  402acb:	31 c0                	xor    %eax,%eax
  402acd:	e8 0e ea ff ff       	callq  4014e0 <__fprintf_chk@plt>
_Z13get_taskstatsP9taskstats():
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:147
		return 1;
  402ad2:	b8 01 00 00 00       	mov    $0x1,%eax
  402ad7:	eb bc                	jmp    402a95 <_Z13get_taskstatsP9taskstats+0xe5>
  402ad9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:163
  close(sd);
  402ae0:	89 ef                	mov    %ebp,%edi
  402ae2:	e8 39 ea ff ff       	callq  401520 <close@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:164
  return 0;
  402ae7:	31 c0                	xor    %eax,%eax
  402ae9:	eb aa                	jmp    402a95 <_Z13get_taskstatsP9taskstats+0xe5>
open_taskstats_socket():
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:74
		close(sd);
  402aeb:	e8 30 ea ff ff       	callq  401520 <close@plt>
_Z13get_taskstatsP9taskstats():
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:150 (discriminator 1)
  if (sd < 0) { perror("socket/bind"); return 1; }
  402af0:	48 8d 3d e5 16 00 00 	lea    0x16e5(%rip),%rdi        # 4041dc <_IO_stdin_used+0x1dc>
  402af7:	e8 94 e8 ff ff       	callq  401390 <perror@plt>
  402afc:	b8 01 00 00 00       	mov    $0x1,%eax
  402b01:	eb 92                	jmp    402a95 <_Z13get_taskstatsP9taskstats+0xe5>
  402b03:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  402b08:	48 8b 3d 91 47 00 00 	mov    0x4791(%rip),%rdi        # 4072a0 <stderr@@GLIBC_2.2.5>
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  402b0f:	48 8d 15 3a 19 00 00 	lea    0x193a(%rip),%rdx        # 404450 <_IO_stdin_used+0x450>
  402b16:	be 01 00 00 00       	mov    $0x1,%esi
  402b1b:	31 c0                	xor    %eax,%eax
  402b1d:	e8 be e9 ff ff       	callq  4014e0 <__fprintf_chk@plt>
_Z13get_taskstatsP9taskstats():
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:154
		close(sd);
  402b22:	89 ef                	mov    %ebp,%edi
  402b24:	e8 f7 e9 ff ff       	callq  401520 <close@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:155
		return 1;
  402b29:	b8 01 00 00 00       	mov    $0x1,%eax
  402b2e:	e9 62 ff ff ff       	jmpq   402a95 <_Z13get_taskstatsP9taskstats+0xe5>
/home/aliha951/ipdps-artifact/gups-modified/src/taskstats_helper.h:165
}
  402b33:	e8 a8 e8 ff ff       	callq  4013e0 <__stack_chk_fail@plt>
  402b38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402b3f:	00 

0000000000402b40 <_Z15start_taskstatsv>:
_Z15start_taskstatsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:398
 * TASKSTATS-RELATED FUNCTIONS
 * start / stop / meausre taskstats counters
 * ========================================================================== */
#include "taskstats_helper.h"
struct taskstats ts_start, ts_end;
void start_taskstats(){
  402b40:	f3 0f 1e fa          	endbr64 
  402b44:	48 83 ec 08          	sub    $0x8,%rsp
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:399
  if (get_taskstats( &ts_start) == -1) {
  402b48:	48 8d 3d 31 49 00 00 	lea    0x4931(%rip),%rdi        # 407480 <ts_start>
  402b4f:	e8 5c fe ff ff       	callq  4029b0 <_Z13get_taskstatsP9taskstats>
  402b54:	83 f8 ff             	cmp    $0xffffffff,%eax
  402b57:	74 05                	je     402b5e <_Z15start_taskstatsv+0x1e>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:403
    perror("get_taskstats - start");
    exit(EXIT_FAILURE);
  }
}
  402b59:	48 83 c4 08          	add    $0x8,%rsp
  402b5d:	c3                   	retq   
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:400
    perror("get_taskstats - start");
  402b5e:	48 8d 3d 83 16 00 00 	lea    0x1683(%rip),%rdi        # 4041e8 <_IO_stdin_used+0x1e8>
  402b65:	e8 26 e8 ff ff       	callq  401390 <perror@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:401
    exit(EXIT_FAILURE);
  402b6a:	bf 01 00 00 00       	mov    $0x1,%edi
  402b6f:	e8 bc e8 ff ff       	callq  401430 <exit@plt>
  402b74:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  402b7b:	00 00 00 00 
  402b7f:	90                   	nop

0000000000402b80 <_Z14stop_taskstatsv>:
_Z14stop_taskstatsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:404
void stop_taskstats(){
  402b80:	f3 0f 1e fa          	endbr64 
  402b84:	55                   	push   %rbp
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:405
  if (get_taskstats(&ts_end) == -1) {
  402b85:	48 8d 3d 34 47 00 00 	lea    0x4734(%rip),%rdi        # 4072c0 <ts_end>
  402b8c:	e8 1f fe ff ff       	callq  4029b0 <_Z13get_taskstatsP9taskstats>
  402b91:	83 f8 ff             	cmp    $0xffffffff,%eax
  402b94:	0f 84 83 01 00 00    	je     402d1d <_Z14stop_taskstatsv+0x19d>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:409
    perror("get_taskstats - end");
    exit(EXIT_FAILURE);
  }
  FILE *f = fopen("taskstats.stats", "w");
  402b9a:	48 8d 35 73 14 00 00 	lea    0x1473(%rip),%rsi        # 404014 <_IO_stdin_used+0x14>
  402ba1:	48 8d 3d 6a 16 00 00 	lea    0x166a(%rip),%rdi        # 404212 <_IO_stdin_used+0x212>
  402ba8:	e8 63 e8 ff ff       	callq  401410 <fopen@plt>
  402bad:	48 89 c5             	mov    %rax,%rbp
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:410
  if (f) {
  402bb0:	48 85 c0             	test   %rax,%rax
  402bb3:	0f 84 57 01 00 00    	je     402d10 <_Z14stop_taskstatsv+0x190>
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  402bb9:	48 83 ec 08          	sub    $0x8,%rsp
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:411
        fprintf(f,
  402bbd:	48 8b 05 a4 48 00 00 	mov    0x48a4(%rip),%rax        # 407468 <ts_end+0x1a8>
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  402bc4:	48 89 ef             	mov    %rbp,%rdi
_Z14stop_taskstatsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:411
  402bc7:	48 2b 05 5a 4a 00 00 	sub    0x4a5a(%rip),%rax        # 407628 <ts_start+0x1a8>
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  402bce:	50                   	push   %rax
_Z14stop_taskstatsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:411
  402bcf:	48 8b 05 3a 48 00 00 	mov    0x483a(%rip),%rax        # 407410 <ts_end+0x150>
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  402bd6:	be 01 00 00 00       	mov    $0x1,%esi
  402bdb:	48 8d 15 de 18 00 00 	lea    0x18de(%rip),%rdx        # 4044c0 <_IO_stdin_used+0x4c0>
_Z14stop_taskstatsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:411
  402be2:	48 2b 05 e7 49 00 00 	sub    0x49e7(%rip),%rax        # 4075d0 <ts_start+0x150>
  402be9:	48 8b 0d 10 47 00 00 	mov    0x4710(%rip),%rcx        # 407300 <ts_end+0x40>
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  402bf0:	50                   	push   %rax
_Z14stop_taskstatsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:411
  402bf1:	48 8b 05 00 47 00 00 	mov    0x4700(%rip),%rax        # 4072f8 <ts_end+0x38>
  402bf8:	48 2b 05 b9 48 00 00 	sub    0x48b9(%rip),%rax        # 4074b8 <ts_start+0x38>
  402bff:	48 2b 0d ba 48 00 00 	sub    0x48ba(%rip),%rcx        # 4074c0 <ts_start+0x40>
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  402c06:	50                   	push   %rax
_Z14stop_taskstatsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:411
  402c07:	48 8b 05 da 46 00 00 	mov    0x46da(%rip),%rax        # 4072e8 <ts_end+0x28>
  402c0e:	48 2b 05 93 48 00 00 	sub    0x4893(%rip),%rax        # 4074a8 <ts_start+0x28>
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  402c15:	50                   	push   %rax
_Z14stop_taskstatsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:411
  402c16:	48 8b 05 4b 47 00 00 	mov    0x474b(%rip),%rax        # 407368 <ts_end+0xa8>
  402c1d:	48 2b 05 04 49 00 00 	sub    0x4904(%rip),%rax        # 407528 <ts_start+0xa8>
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  402c24:	50                   	push   %rax
_Z14stop_taskstatsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:411
  402c25:	48 8b 05 44 47 00 00 	mov    0x4744(%rip),%rax        # 407370 <ts_end+0xb0>
  402c2c:	48 2b 05 fd 48 00 00 	sub    0x48fd(%rip),%rax        # 407530 <ts_start+0xb0>
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  402c33:	50                   	push   %rax
_Z14stop_taskstatsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:411
  402c34:	48 8b 05 8d 47 00 00 	mov    0x478d(%rip),%rax        # 4073c8 <ts_end+0x108>
  402c3b:	48 2b 05 46 49 00 00 	sub    0x4946(%rip),%rax        # 407588 <ts_start+0x108>
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  402c42:	50                   	push   %rax
_Z14stop_taskstatsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:411
  402c43:	48 8b 05 76 47 00 00 	mov    0x4776(%rip),%rax        # 4073c0 <ts_end+0x100>
  402c4a:	48 2b 05 2f 49 00 00 	sub    0x492f(%rip),%rax        # 407580 <ts_start+0x100>
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  402c51:	50                   	push   %rax
_Z14stop_taskstatsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:411
  402c52:	48 8b 05 5f 47 00 00 	mov    0x475f(%rip),%rax        # 4073b8 <ts_end+0xf8>
  402c59:	48 2b 05 18 49 00 00 	sub    0x4918(%rip),%rax        # 407578 <ts_start+0xf8>
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  402c60:	50                   	push   %rax
_Z14stop_taskstatsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:411
  402c61:	48 8b 05 48 47 00 00 	mov    0x4748(%rip),%rax        # 4073b0 <ts_end+0xf0>
  402c68:	48 2b 05 01 49 00 00 	sub    0x4901(%rip),%rax        # 407570 <ts_start+0xf0>
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  402c6f:	50                   	push   %rax
_Z14stop_taskstatsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:411
  402c70:	48 8b 05 31 47 00 00 	mov    0x4731(%rip),%rax        # 4073a8 <ts_end+0xe8>
  402c77:	48 2b 05 ea 48 00 00 	sub    0x48ea(%rip),%rax        # 407568 <ts_start+0xe8>
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  402c7e:	4c 8b 0d db 46 00 00 	mov    0x46db(%rip),%r9        # 407360 <ts_end+0xa0>
  402c85:	4c 8b 05 cc 46 00 00 	mov    0x46cc(%rip),%r8        # 407358 <ts_end+0x98>
  402c8c:	4c 2b 0d 8d 48 00 00 	sub    0x488d(%rip),%r9        # 407520 <ts_start+0xa0>
  402c93:	50                   	push   %rax
_Z14stop_taskstatsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:411
  402c94:	48 8b 05 05 47 00 00 	mov    0x4705(%rip),%rax        # 4073a0 <ts_end+0xe0>
  402c9b:	48 2b 05 be 48 00 00 	sub    0x48be(%rip),%rax        # 407560 <ts_start+0xe0>
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  402ca2:	50                   	push   %rax
_Z14stop_taskstatsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:411
  402ca3:	48 8b 05 ee 46 00 00 	mov    0x46ee(%rip),%rax        # 407398 <ts_end+0xd8>
  402caa:	48 2b 05 a7 48 00 00 	sub    0x48a7(%rip),%rax        # 407558 <ts_start+0xd8>
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  402cb1:	4c 2b 05 60 48 00 00 	sub    0x4860(%rip),%r8        # 407518 <ts_start+0x98>
  402cb8:	50                   	push   %rax
_Z14stop_taskstatsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:411
  402cb9:	48 8b 05 30 47 00 00 	mov    0x4730(%rip),%rax        # 4073f0 <ts_end+0x130>
  402cc0:	48 2b 05 e9 48 00 00 	sub    0x48e9(%rip),%rax        # 4075b0 <ts_start+0x130>
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  402cc7:	50                   	push   %rax
_Z14stop_taskstatsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:411
  402cc8:	48 8b 05 19 47 00 00 	mov    0x4719(%rip),%rax        # 4073e8 <ts_end+0x128>
  402ccf:	48 2b 05 d2 48 00 00 	sub    0x48d2(%rip),%rax        # 4075a8 <ts_start+0x128>
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  402cd6:	50                   	push   %rax
_Z14stop_taskstatsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:411
  402cd7:	48 8b 05 02 47 00 00 	mov    0x4702(%rip),%rax        # 4073e0 <ts_end+0x120>
  402cde:	48 2b 05 bb 48 00 00 	sub    0x48bb(%rip),%rax        # 4075a0 <ts_start+0x120>
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  402ce5:	50                   	push   %rax
_Z14stop_taskstatsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:411
  402ce6:	8b 05 5c 46 00 00    	mov    0x465c(%rip),%eax        # 407348 <ts_end+0x88>
  402cec:	2b 05 16 48 00 00    	sub    0x4816(%rip),%eax        # 407508 <ts_start+0x88>
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  402cf2:	50                   	push   %rax
  402cf3:	31 c0                	xor    %eax,%eax
  402cf5:	e8 e6 e7 ff ff       	callq  4014e0 <__fprintf_chk@plt>
_Z14stop_taskstatsv():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:453
          ts_end.blkio_delay_total - ts_start.blkio_delay_total,
          ts_end.swapin_delay_total - ts_start.swapin_delay_total,
          ts_end.thrashing_delay_total - ts_start.thrashing_delay_total,
          ts_end.irq_delay_total - ts_start.irq_delay_total
        );
        fclose(f);
  402cfa:	48 81 c4 90 00 00 00 	add    $0x90,%rsp
  402d01:	48 89 ef             	mov    %rbp,%rdi
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:455
      } else perror("Failed to open taskstats.stats for writing");
}
  402d04:	5d                   	pop    %rbp
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:453
        fclose(f);
  402d05:	e9 c6 e6 ff ff       	jmpq   4013d0 <fclose@plt>
  402d0a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:454
      } else perror("Failed to open taskstats.stats for writing");
  402d10:	48 8d 3d 39 19 00 00 	lea    0x1939(%rip),%rdi        # 404650 <_IO_stdin_used+0x650>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:455
}
  402d17:	5d                   	pop    %rbp
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:454
      } else perror("Failed to open taskstats.stats for writing");
  402d18:	e9 73 e6 ff ff       	jmpq   401390 <perror@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:406
    perror("get_taskstats - end");
  402d1d:	48 8d 3d da 14 00 00 	lea    0x14da(%rip),%rdi        # 4041fe <_IO_stdin_used+0x1fe>
  402d24:	e8 67 e6 ff ff       	callq  401390 <perror@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:407
    exit(EXIT_FAILURE);
  402d29:	bf 01 00 00 00       	mov    $0x1,%edi
  402d2e:	e8 fd e6 ff ff       	callq  401430 <exit@plt>
  402d33:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  402d3a:	00 00 00 00 
  402d3e:	66 90                	xchg   %ax,%ax

0000000000402d40 <_Z11HPCC_startsx>:
_Z11HPCC_startsx():
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:148
{
  402d40:	f3 0f 1e fa          	endbr64 
  402d44:	48 81 ec 18 02 00 00 	sub    $0x218,%rsp
  402d4b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402d52:	00 00 
  402d54:	48 89 84 24 08 02 00 	mov    %rax,0x208(%rsp)
  402d5b:	00 
  402d5c:	31 c0                	xor    %eax,%eax
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:153
  while (n < 0) n += PERIOD;
  402d5e:	48 85 ff             	test   %rdi,%rdi
  402d61:	0f 89 68 01 00 00    	jns    402ecf <_Z11HPCC_startsx+0x18f>
  402d67:	49 b9 49 92 24 49 92 	movabs $0x1249249249249249,%r9
  402d6e:	24 49 12 
  402d71:	49 01 f9             	add    %rdi,%r9
  402d74:	0f 89 e0 01 00 00    	jns    402f5a <_Z11HPCC_startsx+0x21a>
  402d7a:	49 b9 92 24 49 92 24 	movabs $0x2492492492492492,%r9
  402d81:	49 92 24 
  402d84:	49 01 f9             	add    %rdi,%r9
  402d87:	0f 89 cd 01 00 00    	jns    402f5a <_Z11HPCC_startsx+0x21a>
  402d8d:	49 b9 db b6 6d db b6 	movabs $0x36db6db6db6db6db,%r9
  402d94:	6d db 36 
  402d97:	49 01 f9             	add    %rdi,%r9
  402d9a:	0f 89 ba 01 00 00    	jns    402f5a <_Z11HPCC_startsx+0x21a>
  402da0:	49 b9 24 49 92 24 49 	movabs $0x4924924924924924,%r9
  402da7:	92 24 49 
  402daa:	49 01 f9             	add    %rdi,%r9
  402dad:	0f 89 a7 01 00 00    	jns    402f5a <_Z11HPCC_startsx+0x21a>
  402db3:	49 b9 6d db b6 6d db 	movabs $0x5b6db6db6db6db6d,%r9
  402dba:	b6 6d 5b 
  402dbd:	49 01 f9             	add    %rdi,%r9
  402dc0:	0f 89 94 01 00 00    	jns    402f5a <_Z11HPCC_startsx+0x21a>
  402dc6:	49 b9 b6 6d db b6 6d 	movabs $0x6db6db6db6db6db6,%r9
  402dcd:	db b6 6d 
  402dd0:	49 01 f9             	add    %rdi,%r9
  402dd3:	0f 89 81 01 00 00    	jns    402f5a <_Z11HPCC_startsx+0x21a>
  402dd9:	49 b9 ff ff ff ff ff 	movabs $0x7fffffffffffffff,%r9
  402de0:	ff ff 7f 
  402de3:	49 01 f9             	add    %rdi,%r9
  402de6:	49 83 f9 ff          	cmp    $0xffffffffffffffff,%r9
  402dea:	0f 85 6a 01 00 00    	jne    402f5a <_Z11HPCC_startsx+0x21a>
  402df0:	49 b9 48 92 24 49 92 	movabs $0x1249249249249248,%r9
  402df7:	24 49 12 
  402dfa:	48 89 e1             	mov    %rsp,%rcx
  402dfd:	4c 8d 84 24 00 02 00 	lea    0x200(%rsp),%r8
  402e04:	00 
  402e05:	b8 01 00 00 00       	mov    $0x1,%eax
  402e0a:	48 89 ce             	mov    %rcx,%rsi
  402e0d:	0f 1f 00             	nopl   (%rax)
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:160
    temp = (temp << 1) ^ ((s64Int) temp < 0 ? POLY : 0);
  402e10:	48 8d 14 00          	lea    (%rax,%rax,1),%rdx
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:159
    m2[i] = temp;
  402e14:	48 89 06             	mov    %rax,(%rsi)
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:160
    temp = (temp << 1) ^ ((s64Int) temp < 0 ? POLY : 0);
  402e17:	48 89 d7             	mov    %rdx,%rdi
  402e1a:	48 83 f7 07          	xor    $0x7,%rdi
  402e1e:	48 85 c0             	test   %rax,%rax
  402e21:	48 0f 48 d7          	cmovs  %rdi,%rdx
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:161
    temp = (temp << 1) ^ ((s64Int) temp < 0 ? POLY : 0);
  402e25:	48 8d 04 12          	lea    (%rdx,%rdx,1),%rax
  402e29:	48 89 c7             	mov    %rax,%rdi
  402e2c:	48 83 f7 07          	xor    $0x7,%rdi
  402e30:	48 85 d2             	test   %rdx,%rdx
  402e33:	48 0f 48 c7          	cmovs  %rdi,%rax
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:158
  for (i=0; i<64; i++) {
  402e37:	48 83 c6 08          	add    $0x8,%rsi
  402e3b:	4c 39 c6             	cmp    %r8,%rsi
  402e3e:	75 d0                	jne    402e10 <_Z11HPCC_startsx+0xd0>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:164
  for (i=62; i>=0; i--)
  402e40:	be 3e 00 00 00       	mov    $0x3e,%esi
  402e45:	eb 12                	jmp    402e59 <_Z11HPCC_startsx+0x119>
  402e47:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  402e4e:	00 00 
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:164 (discriminator 2)
  402e50:	83 ee 01             	sub    $0x1,%esi
  402e53:	0f 82 15 01 00 00    	jb     402f6e <_Z11HPCC_startsx+0x22e>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:165
    if ((n >> i) & 1)
  402e59:	49 0f a3 f1          	bt     %rsi,%r9
  402e5d:	73 f1                	jae    402e50 <_Z11HPCC_startsx+0x110>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:169
  while (i > 0) {
  402e5f:	41 b8 02 00 00 00    	mov    $0x2,%r8d
  402e65:	85 f6                	test   %esi,%esi
  402e67:	74 44                	je     402ead <_Z11HPCC_startsx+0x16d>
  402e69:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  402e70:	31 c0                	xor    %eax,%eax
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:170
    temp = 0;
  402e72:	31 d2                	xor    %edx,%edx
  402e74:	0f 1f 40 00          	nopl   0x0(%rax)
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:172
      if ((ran >> j) & 1)
  402e78:	49 0f a3 c0          	bt     %rax,%r8
  402e7c:	73 04                	jae    402e82 <_Z11HPCC_startsx+0x142>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:173
        temp ^= m2[j];
  402e7e:	48 33 14 c1          	xor    (%rcx,%rax,8),%rdx
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:171
    for (j=0; j<64; j++)
  402e82:	48 83 c0 01          	add    $0x1,%rax
  402e86:	48 83 f8 40          	cmp    $0x40,%rax
  402e8a:	75 ec                	jne    402e78 <_Z11HPCC_startsx+0x138>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:175
    i -= 1;
  402e8c:	83 ee 01             	sub    $0x1,%esi
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:176
    if ((n >> i) & 1)
  402e8f:	49 89 d0             	mov    %rdx,%r8
  402e92:	49 0f a3 f1          	bt     %rsi,%r9
  402e96:	73 11                	jae    402ea9 <_Z11HPCC_startsx+0x169>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:177
      ran = (ran << 1) ^ ((s64Int) ran < 0 ? POLY : 0);
  402e98:	4d 01 c0             	add    %r8,%r8
  402e9b:	4c 89 c0             	mov    %r8,%rax
  402e9e:	48 83 f0 07          	xor    $0x7,%rax
  402ea2:	48 85 d2             	test   %rdx,%rdx
  402ea5:	4c 0f 48 c0          	cmovs  %rax,%r8
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:169
  while (i > 0) {
  402ea9:	85 f6                	test   %esi,%esi
  402eab:	75 c3                	jne    402e70 <_Z11HPCC_startsx+0x130>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:181
}
  402ead:	48 8b 84 24 08 02 00 	mov    0x208(%rsp),%rax
  402eb4:	00 
  402eb5:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  402ebc:	00 00 
  402ebe:	0f 85 b5 00 00 00    	jne    402f79 <_Z11HPCC_startsx+0x239>
  402ec4:	4c 89 c0             	mov    %r8,%rax
  402ec7:	48 81 c4 18 02 00 00 	add    $0x218,%rsp
  402ece:	c3                   	retq   
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:154
  while (n > PERIOD) n -= PERIOD;
  402ecf:	48 b8 49 92 24 49 92 	movabs $0x1249249249249249,%rax
  402ed6:	24 49 12 
  402ed9:	48 39 c7             	cmp    %rax,%rdi
  402edc:	7e 79                	jle    402f57 <_Z11HPCC_startsx+0x217>
  402ede:	49 89 f9             	mov    %rdi,%r9
  402ee1:	49 29 c1             	sub    %rax,%r9
  402ee4:	49 39 c1             	cmp    %rax,%r9
  402ee7:	0f 8e 0d ff ff ff    	jle    402dfa <_Z11HPCC_startsx+0xba>
  402eed:	49 b9 6e db b6 6d db 	movabs $0xdb6db6db6db6db6e,%r9
  402ef4:	b6 6d db 
  402ef7:	49 01 f9             	add    %rdi,%r9
  402efa:	49 39 c1             	cmp    %rax,%r9
  402efd:	0f 8e f7 fe ff ff    	jle    402dfa <_Z11HPCC_startsx+0xba>
  402f03:	49 b9 25 49 92 24 49 	movabs $0xc924924924924925,%r9
  402f0a:	92 24 c9 
  402f0d:	49 01 f9             	add    %rdi,%r9
  402f10:	49 39 c1             	cmp    %rax,%r9
  402f13:	0f 8e e1 fe ff ff    	jle    402dfa <_Z11HPCC_startsx+0xba>
  402f19:	49 b9 dc b6 6d db b6 	movabs $0xb6db6db6db6db6dc,%r9
  402f20:	6d db b6 
  402f23:	49 01 f9             	add    %rdi,%r9
  402f26:	49 39 c1             	cmp    %rax,%r9
  402f29:	0f 8e cb fe ff ff    	jle    402dfa <_Z11HPCC_startsx+0xba>
  402f2f:	49 b9 93 24 49 92 24 	movabs $0xa492492492492493,%r9
  402f36:	49 92 a4 
  402f39:	49 01 f9             	add    %rdi,%r9
  402f3c:	49 39 c1             	cmp    %rax,%r9
  402f3f:	0f 8e b5 fe ff ff    	jle    402dfa <_Z11HPCC_startsx+0xba>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:154 (discriminator 1)
  402f45:	49 b9 4a 92 24 49 92 	movabs $0x924924924924924a,%r9
  402f4c:	24 49 92 
  402f4f:	49 01 f9             	add    %rdi,%r9
  402f52:	e9 a3 fe ff ff       	jmpq   402dfa <_Z11HPCC_startsx+0xba>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:154
  402f57:	49 89 f9             	mov    %rdi,%r9
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:155
  if (n == 0) return 0x1;
  402f5a:	4d 85 c9             	test   %r9,%r9
  402f5d:	0f 85 97 fe ff ff    	jne    402dfa <_Z11HPCC_startsx+0xba>
  402f63:	41 b8 01 00 00 00    	mov    $0x1,%r8d
  402f69:	e9 3f ff ff ff       	jmpq   402ead <_Z11HPCC_startsx+0x16d>
  402f6e:	41 b8 02 00 00 00    	mov    $0x2,%r8d
  402f74:	e9 34 ff ff ff       	jmpq   402ead <_Z11HPCC_startsx+0x16d>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:181
}
  402f79:	e8 62 e4 ff ff       	callq  4013e0 <__stack_chk_fail@plt>
  402f7e:	66 90                	xchg   %ax,%ax

0000000000402f80 <_Z8get_timev>:
_Z8get_timev():
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:185
{
  402f80:	f3 0f 1e fa          	endbr64 
  402f84:	48 83 ec 28          	sub    $0x28,%rsp
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:187
  gettimeofday(&tv, NULL);
  402f88:	31 f6                	xor    %esi,%esi
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:185
{
  402f8a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402f91:	00 00 
  402f93:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  402f98:	31 c0                	xor    %eax,%eax
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:187
  gettimeofday(&tv, NULL);
  402f9a:	48 89 e7             	mov    %rsp,%rdi
  402f9d:	e8 2e e5 ff ff       	callq  4014d0 <gettimeofday@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:188
  return tv.tv_sec + tv.tv_usec / 1000000.0;
  402fa2:	66 0f ef c9          	pxor   %xmm1,%xmm1
  402fa6:	66 0f ef c0          	pxor   %xmm0,%xmm0
  402faa:	f2 48 0f 2a 0c 24    	cvtsi2sdq (%rsp),%xmm1
  402fb0:	f2 48 0f 2a 44 24 08 	cvtsi2sdq 0x8(%rsp),%xmm0
  402fb7:	f2 0f 5e 05 61 18 00 	divsd  0x1861(%rip),%xmm0        # 404820 <_IO_stdin_used+0x820>
  402fbe:	00 
  402fbf:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
/home/aliha951/ipdps-artifact/gups-modified/src/gups_single_threaded.cc:189
  402fc3:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  402fc8:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  402fcf:	00 00 
  402fd1:	75 05                	jne    402fd8 <_Z8get_timev+0x58>
  402fd3:	48 83 c4 28          	add    $0x28,%rsp
  402fd7:	c3                   	retq   
  402fd8:	e8 03 e4 ff ff       	callq  4013e0 <__stack_chk_fail@plt>
  402fdd:	0f 1f 00             	nopl   (%rax)

0000000000402fe0 <_ZNKSt5ctypeIcE8do_widenEc>:
_ZNKSt5ctypeIcE8do_widenEc():
/usr/include/c++/10/bits/locale_facets.h:1084
       *
       *  @param __c  The char to convert.
       *  @return  The converted character.
      */
      virtual char_type
      do_widen(char __c) const
  402fe0:	f3 0f 1e fa          	endbr64 
  402fe4:	89 f0                	mov    %esi,%eax
/usr/include/c++/10/bits/locale_facets.h:1085
      { return __c; }
  402fe6:	c3                   	retq   
  402fe7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  402fee:	00 00 

0000000000402ff0 <_Z17snapshot_proc_pid13SnapshotPoint>:
_Z17snapshot_proc_pid13SnapshotPoint():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:371
inline void snapshot_proc_pid(SnapshotPoint point) {
  402ff0:	f3 0f 1e fa          	endbr64 
  402ff4:	41 57                	push   %r15
  402ff6:	41 56                	push   %r14
  402ff8:	41 55                	push   %r13
  402ffa:	41 54                	push   %r12
  402ffc:	55                   	push   %rbp
  402ffd:	53                   	push   %rbx
  402ffe:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  403005:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  40300a:	48 81 ec 28 02 00 00 	sub    $0x228,%rsp
  403011:	89 fb                	mov    %edi,%ebx
/usr/include/x86_64-linux-gnu/bits/stdio2.h:67
  return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
  403013:	4c 8d 6c 24 10       	lea    0x10(%rsp),%r13
  403018:	4c 8d bc 24 10 01 00 	lea    0x110(%rsp),%r15
  40301f:	00 
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:371
  403020:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  403027:	00 00 
  403029:	48 89 84 24 18 12 00 	mov    %rax,0x1218(%rsp)
  403030:	00 
  403031:	31 c0                	xor    %eax,%eax
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:372
  pid_t pid = getpid();
  403033:	e8 58 e4 ff ff       	callq  401490 <getpid@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:373
  const char* suffix = (point == BEGIN) ? "begin" : "end";
  403038:	85 db                	test   %ebx,%ebx
snprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:67
  40303a:	b9 00 01 00 00       	mov    $0x100,%ecx
  40303f:	4c 89 ef             	mov    %r13,%rdi
_Z17snapshot_proc_pid13SnapshotPoint():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:372
  pid_t pid = getpid();
  403042:	41 89 c1             	mov    %eax,%r9d
  403045:	89 44 24 0c          	mov    %eax,0xc(%rsp)
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:373
  const char* suffix = (point == BEGIN) ? "begin" : "end";
  403049:	48 8d 05 be 11 00 00 	lea    0x11be(%rip),%rax        # 40420e <_IO_stdin_used+0x20e>
  403050:	48 8d 15 d4 16 00 00 	lea    0x16d4(%rip),%rdx        # 40472b <_IO_stdin_used+0x72b>
  403057:	48 89 c3             	mov    %rax,%rbx
snprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:67
  40305a:	4c 8d 05 d0 16 00 00 	lea    0x16d0(%rip),%r8        # 404731 <_IO_stdin_used+0x731>
  403061:	be 00 01 00 00       	mov    $0x100,%esi
_Z17snapshot_proc_pid13SnapshotPoint():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:373
  403066:	48 0f 44 da          	cmove  %rdx,%rbx
snprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:67
  40306a:	ba 01 00 00 00       	mov    $0x1,%edx
  40306f:	31 c0                	xor    %eax,%eax
_Z17snapshot_proc_pid13SnapshotPoint():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:373
  403071:	48 89 1c 24          	mov    %rbx,(%rsp)
snprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:67
  403075:	e8 f6 e2 ff ff       	callq  401370 <__snprintf_chk@plt>
  40307a:	be 00 01 00 00       	mov    $0x100,%esi
  40307f:	4c 89 ff             	mov    %r15,%rdi
  403082:	31 c0                	xor    %eax,%eax
  403084:	49 89 d9             	mov    %rbx,%r9
  403087:	b9 00 01 00 00       	mov    $0x100,%ecx
  40308c:	ba 01 00 00 00       	mov    $0x1,%edx
  403091:	4c 8d 05 69 17 00 00 	lea    0x1769(%rip),%r8        # 404801 <_IO_stdin_used+0x801>
  403098:	e8 d3 e2 ff ff       	callq  401370 <__snprintf_chk@plt>
_Z17snapshot_proc_pid13SnapshotPoint():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:342
  FILE* src = fopen(src_path, "r");
  40309d:	48 8d 35 8c 0f 00 00 	lea    0xf8c(%rip),%rsi        # 404030 <_IO_stdin_used+0x30>
copy_file_c():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:342
  4030a4:	4c 89 ef             	mov    %r13,%rdi
  4030a7:	e8 64 e3 ff ff       	callq  401410 <fopen@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:343
  if (!src) {
  4030ac:	48 85 c0             	test   %rax,%rax
  4030af:	0f 84 0b 02 00 00    	je     4032c0 <_Z17snapshot_proc_pid13SnapshotPoint+0x2d0>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:348
  FILE* dest = fopen(dest_path, "w");
  4030b5:	48 8d 35 58 0f 00 00 	lea    0xf58(%rip),%rsi        # 404014 <_IO_stdin_used+0x14>
  4030bc:	4c 89 ff             	mov    %r15,%rdi
  4030bf:	48 89 c5             	mov    %rax,%rbp
  4030c2:	e8 49 e3 ff ff       	callq  401410 <fopen@plt>
  4030c7:	48 8d 9c 24 10 02 00 	lea    0x210(%rsp),%rbx
  4030ce:	00 
  4030cf:	49 89 c4             	mov    %rax,%r12
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:349
  if (!dest) {
  4030d2:	48 85 c0             	test   %rax,%rax
  4030d5:	75 25                	jne    4030fc <_Z17snapshot_proc_pid13SnapshotPoint+0x10c>
  4030d7:	e9 fc 01 00 00       	jmpq   4032d8 <_Z17snapshot_proc_pid13SnapshotPoint+0x2e8>
  4030dc:	0f 1f 40 00          	nopl   0x0(%rax)
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:358
    if (fwrite(buffer, 1, bytes_read, dest) != bytes_read) {
  4030e0:	4c 89 e1             	mov    %r12,%rcx
  4030e3:	48 89 c2             	mov    %rax,%rdx
  4030e6:	be 01 00 00 00       	mov    $0x1,%esi
  4030eb:	48 89 df             	mov    %rbx,%rdi
  4030ee:	e8 1d e4 ff ff       	callq  401510 <fwrite@plt>
  4030f3:	49 39 c6             	cmp    %rax,%r14
  4030f6:	0f 85 34 01 00 00    	jne    403230 <_Z17snapshot_proc_pid13SnapshotPoint+0x240>
_Z17snapshot_proc_pid13SnapshotPoint():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:297
	return __fread_chk (__ptr, __bos0 (__ptr), __size, __n, __stream);

      if (__size * __n > __bos0 (__ptr))
	return __fread_chk_warn (__ptr, __bos0 (__ptr), __size, __n, __stream);
    }
  return __fread_alias (__ptr, __size, __n, __stream);
  4030fc:	48 89 e9             	mov    %rbp,%rcx
fread():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:297
  4030ff:	ba 00 10 00 00       	mov    $0x1000,%edx
  403104:	be 01 00 00 00       	mov    $0x1,%esi
  403109:	48 89 df             	mov    %rbx,%rdi
  40310c:	e8 8f e3 ff ff       	callq  4014a0 <fread@plt>
  403111:	49 89 c6             	mov    %rax,%r14
copy_file_c():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:357
  while ((bytes_read = fread(buffer, 1, sizeof(buffer), src)) > 0) {
  403114:	48 85 c0             	test   %rax,%rax
  403117:	75 c7                	jne    4030e0 <_Z17snapshot_proc_pid13SnapshotPoint+0xf0>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:366
  fclose(src);
  403119:	48 89 ef             	mov    %rbp,%rdi
  40311c:	e8 af e2 ff ff       	callq  4013d0 <fclose@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:367
  fclose(dest);
  403121:	4c 89 e7             	mov    %r12,%rdi
  403124:	e8 a7 e2 ff ff       	callq  4013d0 <fclose@plt>
_Z17snapshot_proc_pid13SnapshotPoint():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:67
  return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
  403129:	44 8b 4c 24 0c       	mov    0xc(%rsp),%r9d
snprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:67
  40312e:	b9 00 01 00 00       	mov    $0x100,%ecx
  403133:	4c 89 ef             	mov    %r13,%rdi
  403136:	31 c0                	xor    %eax,%eax
  403138:	4c 8d 05 1e 16 00 00 	lea    0x161e(%rip),%r8        # 40475d <_IO_stdin_used+0x75d>
  40313f:	ba 01 00 00 00       	mov    $0x1,%edx
  403144:	be 00 01 00 00       	mov    $0x100,%esi
  403149:	e8 22 e2 ff ff       	callq  401370 <__snprintf_chk@plt>
_Z17snapshot_proc_pid13SnapshotPoint():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:67
  40314e:	4c 8b 0c 24          	mov    (%rsp),%r9
snprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:67
  403152:	b9 00 01 00 00       	mov    $0x100,%ecx
  403157:	31 c0                	xor    %eax,%eax
  403159:	4c 8d 05 0c 16 00 00 	lea    0x160c(%rip),%r8        # 40476c <_IO_stdin_used+0x76c>
  403160:	ba 01 00 00 00       	mov    $0x1,%edx
  403165:	be 00 01 00 00       	mov    $0x100,%esi
  40316a:	4c 89 ff             	mov    %r15,%rdi
  40316d:	e8 fe e1 ff ff       	callq  401370 <__snprintf_chk@plt>
_Z17snapshot_proc_pid13SnapshotPoint():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:342
  FILE* src = fopen(src_path, "r");
  403172:	48 8d 35 b7 0e 00 00 	lea    0xeb7(%rip),%rsi        # 404030 <_IO_stdin_used+0x30>
copy_file_c():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:342
  403179:	4c 89 ef             	mov    %r13,%rdi
  40317c:	e8 8f e2 ff ff       	callq  401410 <fopen@plt>
  403181:	49 89 c4             	mov    %rax,%r12
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:343
  if (!src) {
  403184:	48 85 c0             	test   %rax,%rax
  403187:	0f 84 23 01 00 00    	je     4032b0 <_Z17snapshot_proc_pid13SnapshotPoint+0x2c0>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:348
  FILE* dest = fopen(dest_path, "w");
  40318d:	48 8d 35 80 0e 00 00 	lea    0xe80(%rip),%rsi        # 404014 <_IO_stdin_used+0x14>
  403194:	4c 89 ff             	mov    %r15,%rdi
  403197:	48 8d 9c 24 10 02 00 	lea    0x210(%rsp),%rbx
  40319e:	00 
  40319f:	e8 6c e2 ff ff       	callq  401410 <fopen@plt>
  4031a4:	49 89 c6             	mov    %rax,%r14
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:349
  if (!dest) {
  4031a7:	48 85 c0             	test   %rax,%rax
  4031aa:	75 28                	jne    4031d4 <_Z17snapshot_proc_pid13SnapshotPoint+0x1e4>
  4031ac:	e9 47 01 00 00       	jmpq   4032f8 <_Z17snapshot_proc_pid13SnapshotPoint+0x308>
  4031b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:358
    if (fwrite(buffer, 1, bytes_read, dest) != bytes_read) {
  4031b8:	4c 89 f1             	mov    %r14,%rcx
  4031bb:	48 89 c2             	mov    %rax,%rdx
  4031be:	be 01 00 00 00       	mov    $0x1,%esi
  4031c3:	48 89 df             	mov    %rbx,%rdi
  4031c6:	e8 45 e3 ff ff       	callq  401510 <fwrite@plt>
  4031cb:	48 39 c5             	cmp    %rax,%rbp
  4031ce:	0f 85 9c 00 00 00    	jne    403270 <_Z17snapshot_proc_pid13SnapshotPoint+0x280>
_Z17snapshot_proc_pid13SnapshotPoint():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:297
  return __fread_alias (__ptr, __size, __n, __stream);
  4031d4:	4c 89 e1             	mov    %r12,%rcx
fread():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:297
  4031d7:	ba 00 10 00 00       	mov    $0x1000,%edx
  4031dc:	be 01 00 00 00       	mov    $0x1,%esi
  4031e1:	48 89 df             	mov    %rbx,%rdi
  4031e4:	e8 b7 e2 ff ff       	callq  4014a0 <fread@plt>
  4031e9:	48 89 c5             	mov    %rax,%rbp
copy_file_c():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:357
  while ((bytes_read = fread(buffer, 1, sizeof(buffer), src)) > 0) {
  4031ec:	48 85 c0             	test   %rax,%rax
  4031ef:	75 c7                	jne    4031b8 <_Z17snapshot_proc_pid13SnapshotPoint+0x1c8>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:366
  fclose(src);
  4031f1:	4c 89 e7             	mov    %r12,%rdi
  4031f4:	e8 d7 e1 ff ff       	callq  4013d0 <fclose@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:367
  fclose(dest);
  4031f9:	4c 89 f7             	mov    %r14,%rdi
  4031fc:	e8 cf e1 ff ff       	callq  4013d0 <fclose@plt>
_Z17snapshot_proc_pid13SnapshotPoint():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:391
}
  403201:	48 8b 84 24 18 12 00 	mov    0x1218(%rsp),%rax
  403208:	00 
  403209:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  403210:	00 00 
  403212:	0f 85 f9 00 00 00    	jne    403311 <_Z17snapshot_proc_pid13SnapshotPoint+0x321>
  403218:	48 81 c4 28 12 00 00 	add    $0x1228,%rsp
  40321f:	5b                   	pop    %rbx
  403220:	5d                   	pop    %rbp
  403221:	41 5c                	pop    %r12
  403223:	41 5d                	pop    %r13
  403225:	41 5e                	pop    %r14
  403227:	41 5f                	pop    %r15
  403229:	c3                   	retq   
  40322a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
copy_file_c():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:359
      perror("Failed to write to destination file");
  403230:	48 8d 3d a1 15 00 00 	lea    0x15a1(%rip),%rdi        # 4047d8 <_IO_stdin_used+0x7d8>
  403237:	e8 54 e1 ff ff       	callq  401390 <perror@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:360
      fclose(src);
  40323c:	48 89 ef             	mov    %rbp,%rdi
  40323f:	e8 8c e1 ff ff       	callq  4013d0 <fclose@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:361
      fclose(dest);
  403244:	4c 89 e7             	mov    %r12,%rdi
  403247:	e8 84 e1 ff ff       	callq  4013d0 <fclose@plt>
_Z17snapshot_proc_pid13SnapshotPoint():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
  40324c:	48 8b 3d 4d 40 00 00 	mov    0x404d(%rip),%rdi        # 4072a0 <stderr@@GLIBC_2.2.5>
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  403253:	4c 89 e9             	mov    %r13,%rcx
  403256:	be 01 00 00 00       	mov    $0x1,%esi
  40325b:	31 c0                	xor    %eax,%eax
  40325d:	48 8d 15 db 14 00 00 	lea    0x14db(%rip),%rdx        # 40473f <_IO_stdin_used+0x73f>
  403264:	e8 77 e2 ff ff       	callq  4014e0 <__fprintf_chk@plt>
/usr/include/x86_64-linux-gnu/bits/stdio2.h:101
			__va_arg_pack ());
  403269:	e9 bb fe ff ff       	jmpq   403129 <_Z17snapshot_proc_pid13SnapshotPoint+0x139>
  40326e:	66 90                	xchg   %ax,%ax
copy_file_c():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:359
      perror("Failed to write to destination file");
  403270:	48 8d 3d 61 15 00 00 	lea    0x1561(%rip),%rdi        # 4047d8 <_IO_stdin_used+0x7d8>
  403277:	e8 14 e1 ff ff       	callq  401390 <perror@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:360
      fclose(src);
  40327c:	4c 89 e7             	mov    %r12,%rdi
  40327f:	e8 4c e1 ff ff       	callq  4013d0 <fclose@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:361
      fclose(dest);
  403284:	4c 89 f7             	mov    %r14,%rdi
  403287:	e8 44 e1 ff ff       	callq  4013d0 <fclose@plt>
_Z17snapshot_proc_pid13SnapshotPoint():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
  40328c:	48 8b 3d 0d 40 00 00 	mov    0x400d(%rip),%rdi        # 4072a0 <stderr@@GLIBC_2.2.5>
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  403293:	4c 89 e9             	mov    %r13,%rcx
  403296:	be 01 00 00 00       	mov    $0x1,%esi
  40329b:	31 c0                	xor    %eax,%eax
  40329d:	48 8d 15 9b 14 00 00 	lea    0x149b(%rip),%rdx        # 40473f <_IO_stdin_used+0x73f>
  4032a4:	e8 37 e2 ff ff       	callq  4014e0 <__fprintf_chk@plt>
_Z17snapshot_proc_pid13SnapshotPoint():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:391
}
  4032a9:	e9 53 ff ff ff       	jmpq   403201 <_Z17snapshot_proc_pid13SnapshotPoint+0x211>
  4032ae:	66 90                	xchg   %ax,%ax
copy_file_c():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:344
    perror("Failed to open source file for reading");
  4032b0:	48 8d 3d c9 14 00 00 	lea    0x14c9(%rip),%rdi        # 404780 <_IO_stdin_used+0x780>
  4032b7:	e8 d4 e0 ff ff       	callq  401390 <perror@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:345
    return 0; // Failure
  4032bc:	eb ce                	jmp    40328c <_Z17snapshot_proc_pid13SnapshotPoint+0x29c>
  4032be:	66 90                	xchg   %ax,%ax
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:344
    perror("Failed to open source file for reading");
  4032c0:	48 8d 3d b9 14 00 00 	lea    0x14b9(%rip),%rdi        # 404780 <_IO_stdin_used+0x780>
  4032c7:	e8 c4 e0 ff ff       	callq  401390 <perror@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:345
    return 0; // Failure
  4032cc:	e9 7b ff ff ff       	jmpq   40324c <_Z17snapshot_proc_pid13SnapshotPoint+0x25c>
  4032d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:350
    fclose(src);
  4032d8:	48 89 ef             	mov    %rbp,%rdi
  4032db:	e8 f0 e0 ff ff       	callq  4013d0 <fclose@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:351
    perror("Failed to open destination file for writing");
  4032e0:	48 8d 3d c1 14 00 00 	lea    0x14c1(%rip),%rdi        # 4047a8 <_IO_stdin_used+0x7a8>
  4032e7:	e8 a4 e0 ff ff       	callq  401390 <perror@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:352
    return 0; // Failure
  4032ec:	e9 5b ff ff ff       	jmpq   40324c <_Z17snapshot_proc_pid13SnapshotPoint+0x25c>
  4032f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:350
    fclose(src);
  4032f8:	4c 89 e7             	mov    %r12,%rdi
  4032fb:	e8 d0 e0 ff ff       	callq  4013d0 <fclose@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:351
    perror("Failed to open destination file for writing");
  403300:	48 8d 3d a1 14 00 00 	lea    0x14a1(%rip),%rdi        # 4047a8 <_IO_stdin_used+0x7a8>
  403307:	e8 84 e0 ff ff       	callq  401390 <perror@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:352
    return 0; // Failure
  40330c:	e9 7b ff ff ff       	jmpq   40328c <_Z17snapshot_proc_pid13SnapshotPoint+0x29c>
_Z17snapshot_proc_pid13SnapshotPoint():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:391
}
  403311:	e8 ca e0 ff ff       	callq  4013e0 <__stack_chk_fail@plt>
  403316:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40331d:	00 00 00 

0000000000403320 <_Z18snapshot_proc_stat13SnapshotPoint>:
_Z18snapshot_proc_stat13SnapshotPoint():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:464
 * snapshot 
 * use snapshot_proc_stat(BEGIN) and snapshot_proc_stat(END) at the beginning and end of
 * the ROI
 * ========================================================================== */

inline void snapshot_proc_stat(SnapshotPoint point) {
  403320:	f3 0f 1e fa          	endbr64 
  403324:	41 56                	push   %r14
  403326:	41 55                	push   %r13
  403328:	41 54                	push   %r12
  40332a:	55                   	push   %rbp
  40332b:	53                   	push   %rbx
  40332c:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  403333:	48 83 0c 24 00       	orq    $0x0,(%rsp)
  403338:	48 81 ec 10 02 00 00 	sub    $0x210,%rsp
/usr/include/x86_64-linux-gnu/bits/stdio2.h:67
  return __builtin___snprintf_chk (__s, __n, __USE_FORTIFY_LEVEL - 1,
  40333f:	be 00 01 00 00       	mov    $0x100,%esi
snprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:67
  403344:	b9 00 01 00 00       	mov    $0x100,%ecx
  403349:	ba 01 00 00 00       	mov    $0x1,%edx
_Z18snapshot_proc_stat13SnapshotPoint():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:465
  const char* suffix = (point == BEGIN) ? "begin" : "end";
  40334e:	4c 8d 0d d6 13 00 00 	lea    0x13d6(%rip),%r9        # 40472b <_IO_stdin_used+0x72b>
snprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:67
  403355:	4c 8d 05 a0 14 00 00 	lea    0x14a0(%rip),%r8        # 4047fc <_IO_stdin_used+0x7fc>
_Z18snapshot_proc_stat13SnapshotPoint():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:464
inline void snapshot_proc_stat(SnapshotPoint point) {
  40335c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  403363:	00 00 
  403365:	48 89 84 24 08 12 00 	mov    %rax,0x1208(%rsp)
  40336c:	00 
  40336d:	31 c0                	xor    %eax,%eax
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:465
  const char* suffix = (point == BEGIN) ? "begin" : "end";
  40336f:	85 ff                	test   %edi,%edi
  403371:	48 8d 05 96 0e 00 00 	lea    0xe96(%rip),%rax        # 40420e <_IO_stdin_used+0x20e>
/usr/include/x86_64-linux-gnu/bits/stdio2.h:67
  403378:	49 89 e6             	mov    %rsp,%r14
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:465
  40337b:	4c 0f 45 c8          	cmovne %rax,%r9
snprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:67
  40337f:	48 8d ac 24 00 01 00 	lea    0x100(%rsp),%rbp
  403386:	00 
  403387:	c6 44 24 0a 00       	movb   $0x0,0xa(%rsp)
  40338c:	48 b8 2f 70 72 6f 63 	movabs $0x74732f636f72702f,%rax
  403393:	2f 73 74 
  403396:	48 89 04 24          	mov    %rax,(%rsp)
  40339a:	b8 61 74 00 00       	mov    $0x7461,%eax
  40339f:	48 89 ef             	mov    %rbp,%rdi
  4033a2:	66 89 44 24 08       	mov    %ax,0x8(%rsp)
  4033a7:	31 c0                	xor    %eax,%eax
  4033a9:	e8 c2 df ff ff       	callq  401370 <__snprintf_chk@plt>
_Z18snapshot_proc_stat13SnapshotPoint():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:342
  FILE* src = fopen(src_path, "r");
  4033ae:	48 8d 35 7b 0c 00 00 	lea    0xc7b(%rip),%rsi        # 404030 <_IO_stdin_used+0x30>
copy_file_c():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:342
  4033b5:	4c 89 f7             	mov    %r14,%rdi
  4033b8:	e8 53 e0 ff ff       	callq  401410 <fopen@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:343
  if (!src) {
  4033bd:	48 85 c0             	test   %rax,%rax
  4033c0:	0f 84 da 00 00 00    	je     4034a0 <_Z18snapshot_proc_stat13SnapshotPoint+0x180>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:348
  FILE* dest = fopen(dest_path, "w");
  4033c6:	48 89 ef             	mov    %rbp,%rdi
  4033c9:	48 8d 35 44 0c 00 00 	lea    0xc44(%rip),%rsi        # 404014 <_IO_stdin_used+0x14>
  4033d0:	49 89 c4             	mov    %rax,%r12
  4033d3:	e8 38 e0 ff ff       	callq  401410 <fopen@plt>
  4033d8:	48 8d ac 24 00 02 00 	lea    0x200(%rsp),%rbp
  4033df:	00 
  4033e0:	49 89 c5             	mov    %rax,%r13
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:349
  if (!dest) {
  4033e3:	48 85 c0             	test   %rax,%rax
  4033e6:	75 20                	jne    403408 <_Z18snapshot_proc_stat13SnapshotPoint+0xe8>
  4033e8:	e9 c3 00 00 00       	jmpq   4034b0 <_Z18snapshot_proc_stat13SnapshotPoint+0x190>
  4033ed:	0f 1f 00             	nopl   (%rax)
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:358
    if (fwrite(buffer, 1, bytes_read, dest) != bytes_read) {
  4033f0:	4c 89 e9             	mov    %r13,%rcx
  4033f3:	48 89 c2             	mov    %rax,%rdx
  4033f6:	be 01 00 00 00       	mov    $0x1,%esi
  4033fb:	48 89 ef             	mov    %rbp,%rdi
  4033fe:	e8 0d e1 ff ff       	callq  401510 <fwrite@plt>
  403403:	48 39 c3             	cmp    %rax,%rbx
  403406:	75 58                	jne    403460 <_Z18snapshot_proc_stat13SnapshotPoint+0x140>
_Z18snapshot_proc_stat13SnapshotPoint():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:297
  return __fread_alias (__ptr, __size, __n, __stream);
  403408:	4c 89 e1             	mov    %r12,%rcx
fread():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:297
  40340b:	ba 00 10 00 00       	mov    $0x1000,%edx
  403410:	be 01 00 00 00       	mov    $0x1,%esi
  403415:	48 89 ef             	mov    %rbp,%rdi
  403418:	e8 83 e0 ff ff       	callq  4014a0 <fread@plt>
  40341d:	48 89 c3             	mov    %rax,%rbx
copy_file_c():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:357
  while ((bytes_read = fread(buffer, 1, sizeof(buffer), src)) > 0) {
  403420:	48 85 c0             	test   %rax,%rax
  403423:	75 cb                	jne    4033f0 <_Z18snapshot_proc_stat13SnapshotPoint+0xd0>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:366
  fclose(src);
  403425:	4c 89 e7             	mov    %r12,%rdi
  403428:	e8 a3 df ff ff       	callq  4013d0 <fclose@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:367
  fclose(dest);
  40342d:	4c 89 ef             	mov    %r13,%rdi
  403430:	e8 9b df ff ff       	callq  4013d0 <fclose@plt>
_Z18snapshot_proc_stat13SnapshotPoint():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:476
  snprintf(src_path, sizeof(src_path), "/proc/stat");
  snprintf(dest_path, sizeof(dest_path), "proc_stat_%s.stats", suffix);
  if (!copy_file_c(src_path, dest_path)) {
    fprintf(stderr, "Error: Could not snapshot %s\n", src_path);
  }
}
  403435:	48 8b 84 24 08 12 00 	mov    0x1208(%rsp),%rax
  40343c:	00 
  40343d:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
  403444:	00 00 
  403446:	75 7e                	jne    4034c6 <_Z18snapshot_proc_stat13SnapshotPoint+0x1a6>
  403448:	48 81 c4 10 12 00 00 	add    $0x1210,%rsp
  40344f:	5b                   	pop    %rbx
  403450:	5d                   	pop    %rbp
  403451:	41 5c                	pop    %r12
  403453:	41 5d                	pop    %r13
  403455:	41 5e                	pop    %r14
  403457:	c3                   	retq   
  403458:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40345f:	00 
copy_file_c():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:359
      perror("Failed to write to destination file");
  403460:	48 8d 3d 71 13 00 00 	lea    0x1371(%rip),%rdi        # 4047d8 <_IO_stdin_used+0x7d8>
  403467:	e8 24 df ff ff       	callq  401390 <perror@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:360
      fclose(src);
  40346c:	4c 89 e7             	mov    %r12,%rdi
  40346f:	e8 5c df ff ff       	callq  4013d0 <fclose@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:361
      fclose(dest);
  403474:	4c 89 ef             	mov    %r13,%rdi
  403477:	e8 54 df ff ff       	callq  4013d0 <fclose@plt>
_Z18snapshot_proc_stat13SnapshotPoint():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  return __fprintf_chk (__stream, __USE_FORTIFY_LEVEL - 1, __fmt,
  40347c:	48 8b 3d 1d 3e 00 00 	mov    0x3e1d(%rip),%rdi        # 4072a0 <stderr@@GLIBC_2.2.5>
fprintf():
/usr/include/x86_64-linux-gnu/bits/stdio2.h:100
  403483:	4c 89 f1             	mov    %r14,%rcx
  403486:	be 01 00 00 00       	mov    $0x1,%esi
  40348b:	31 c0                	xor    %eax,%eax
  40348d:	48 8d 15 ab 12 00 00 	lea    0x12ab(%rip),%rdx        # 40473f <_IO_stdin_used+0x73f>
  403494:	e8 47 e0 ff ff       	callq  4014e0 <__fprintf_chk@plt>
_Z18snapshot_proc_stat13SnapshotPoint():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:476
}
  403499:	eb 9a                	jmp    403435 <_Z18snapshot_proc_stat13SnapshotPoint+0x115>
  40349b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
copy_file_c():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:344
    perror("Failed to open source file for reading");
  4034a0:	48 8d 3d d9 12 00 00 	lea    0x12d9(%rip),%rdi        # 404780 <_IO_stdin_used+0x780>
  4034a7:	e8 e4 de ff ff       	callq  401390 <perror@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:345
    return 0; // Failure
  4034ac:	eb ce                	jmp    40347c <_Z18snapshot_proc_stat13SnapshotPoint+0x15c>
  4034ae:	66 90                	xchg   %ax,%ax
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:350
    fclose(src);
  4034b0:	4c 89 e7             	mov    %r12,%rdi
  4034b3:	e8 18 df ff ff       	callq  4013d0 <fclose@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:351
    perror("Failed to open destination file for writing");
  4034b8:	48 8d 3d e9 12 00 00 	lea    0x12e9(%rip),%rdi        # 4047a8 <_IO_stdin_used+0x7a8>
  4034bf:	e8 cc de ff ff       	callq  401390 <perror@plt>
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:352
    return 0; // Failure
  4034c4:	eb b6                	jmp    40347c <_Z18snapshot_proc_stat13SnapshotPoint+0x15c>
_Z18snapshot_proc_stat13SnapshotPoint():
/home/aliha951/ipdps-artifact/gups-modified/src/profiling_utils.h:476
}
  4034c6:	e8 15 df ff ff       	callq  4013e0 <__stack_chk_fail@plt>
  4034cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000004034d0 <__libc_csu_init>:
__libc_csu_init():
  4034d0:	f3 0f 1e fa          	endbr64 
  4034d4:	41 57                	push   %r15
  4034d6:	4c 8d 3d 13 39 00 00 	lea    0x3913(%rip),%r15        # 406df0 <__frame_dummy_init_array_entry>
  4034dd:	41 56                	push   %r14
  4034df:	49 89 d6             	mov    %rdx,%r14
  4034e2:	41 55                	push   %r13
  4034e4:	49 89 f5             	mov    %rsi,%r13
  4034e7:	41 54                	push   %r12
  4034e9:	41 89 fc             	mov    %edi,%r12d
  4034ec:	55                   	push   %rbp
  4034ed:	48 8d 2d 0c 39 00 00 	lea    0x390c(%rip),%rbp        # 406e00 <__do_global_dtors_aux_fini_array_entry>
  4034f4:	53                   	push   %rbx
  4034f5:	4c 29 fd             	sub    %r15,%rbp
  4034f8:	48 83 ec 08          	sub    $0x8,%rsp
  4034fc:	e8 ff da ff ff       	callq  401000 <_init>
  403501:	48 c1 fd 03          	sar    $0x3,%rbp
  403505:	74 1f                	je     403526 <__libc_csu_init+0x56>
  403507:	31 db                	xor    %ebx,%ebx
  403509:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
  403510:	4c 89 f2             	mov    %r14,%rdx
  403513:	4c 89 ee             	mov    %r13,%rsi
  403516:	44 89 e7             	mov    %r12d,%edi
  403519:	41 ff 14 df          	callq  *(%r15,%rbx,8)
  40351d:	48 83 c3 01          	add    $0x1,%rbx
  403521:	48 39 dd             	cmp    %rbx,%rbp
  403524:	75 ea                	jne    403510 <__libc_csu_init+0x40>
  403526:	48 83 c4 08          	add    $0x8,%rsp
  40352a:	5b                   	pop    %rbx
  40352b:	5d                   	pop    %rbp
  40352c:	41 5c                	pop    %r12
  40352e:	41 5d                	pop    %r13
  403530:	41 5e                	pop    %r14
  403532:	41 5f                	pop    %r15
  403534:	c3                   	retq   
  403535:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  40353c:	00 00 00 00 

0000000000403540 <__libc_csu_fini>:
__libc_csu_fini():
  403540:	f3 0f 1e fa          	endbr64 
  403544:	c3                   	retq   

Disassembly of section .fini:

0000000000403548 <_fini>:
_fini():
  403548:	f3 0f 1e fa          	endbr64 
  40354c:	48 83 ec 08          	sub    $0x8,%rsp
  403550:	48 83 c4 08          	add    $0x8,%rsp
  403554:	c3                   	retq   
