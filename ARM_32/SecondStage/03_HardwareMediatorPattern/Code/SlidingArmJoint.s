///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.22.2.15995/W32 for ARM      21/Apr/2018  16:38:14
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\03_HardwareMediatorPattern\Code\Cpp\SlidingArmJoint.cpp
//    Command line =  
//        -f C:\Users\Tim\AppData\Local\Temp\EWBD6B.tmp
//        (C:\Users\Tim\Programming\Code\ARM_32\Patterns\03_HardwareMediatorPattern\Code\Cpp\SlidingArmJoint.cpp
//        -lC
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\03_HardwareMediatorPattern\Code\Cpp\Debug\List
//        -lA
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\03_HardwareMediatorPattern\Code\Cpp\Debug\List
//        -o
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\03_HardwareMediatorPattern\Code\Cpp\Debug\Obj
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 --fpu=None --dlib_config "C:\Program Files (x86)\IAR
//        Systems\Embedded Workbench 8.0\arm\INC\c\DLib_Config_Normal.h" -On
//        --c++ --no_exceptions --no_rtti --no_static_destruction)
//    Locale       =  C
//    List file    =  
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\03_HardwareMediatorPattern\Code\Cpp\Debug\List\SlidingArmJoint.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__CPP_Exceptions", "Disabled"
        RTMODEL "__CPP_Language", "C++14"
        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        PUBLIC _ZN15SlidingArmJoint4zeroEv
        PUBLIC _ZN15SlidingArmJoint9getLengthEv
        PUBLIC _ZN15SlidingArmJoint9setLengthEi
        
          CFI Names cfiNames0
          CFI StackFrame CFA R13 DATA
          CFI Resource R0:32, R1:32, R2:32, R3:32, R4:32, R5:32, R6:32, R7:32
          CFI Resource R8:32, R9:32, R10:32, R11:32, R12:32, R13:32, R14:32
          CFI EndNames cfiNames0
        
          CFI Common cfiCommon0 Using cfiNames0
          CFI CodeAlign 2
          CFI DataAlign 4
          CFI ReturnAddress R14 CODE
          CFI CFA R13+0
          CFI R0 Undefined
          CFI R1 Undefined
          CFI R2 Undefined
          CFI R3 Undefined
          CFI R4 SameValue
          CFI R5 SameValue
          CFI R6 SameValue
          CFI R7 SameValue
          CFI R8 SameValue
          CFI R9 SameValue
          CFI R10 SameValue
          CFI R11 SameValue
          CFI R12 Undefined
          CFI R14 SameValue
          CFI EndCommon cfiCommon0
        
// C:\Users\Tim\Programming\Code\ARM_32\Patterns\03_HardwareMediatorPattern\Code\Cpp\SlidingArmJoint.cpp
//    1 #include "SlidingArmJoint.h"
//    2 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function _ZN15SlidingArmJoint9getLengthEv
          CFI NoCalls
        THUMB
//    3 int SlidingArmJoint::getLength() {
//    4 	return this->currentLength;
_ZN15SlidingArmJoint9getLengthEv:
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
//    5 }
          CFI EndBlock cfiBlock0
//    6 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function _ZN15SlidingArmJoint9setLengthEi
          CFI NoCalls
        THUMB
//    7 int SlidingArmJoint::setLength(int x) {
_ZN15SlidingArmJoint9setLengthEi:
        MOVS     R2,R0
//    8 	if ((x > this->minArmLength) && (x < this->maxArmLength)) {
        LDR      R0,[R2, #+4]
        CMP      R0,R1
        BGE.N    ??setLength_0
        LDR      R0,[R2, #+8]
        CMP      R1,R0
        BGE.N    ??setLength_0
//    9 		this->currentLength = x;
        STR      R1,[R2, #+0]
//   10 		return 0;
        MOVS     R0,#+0
        B.N      ??setLength_1
//   11 	}
//   12 
//   13 	return -1;
??setLength_0:
        MOVS     R0,#-1
??setLength_1:
        BX       LR               ;; return
//   14 }
          CFI EndBlock cfiBlock1
//   15 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function _ZN15SlidingArmJoint4zeroEv
          CFI NoCalls
        THUMB
//   16 int SlidingArmJoint::zero() {
_ZN15SlidingArmJoint4zeroEv:
        MOVS     R1,R0
//   17 	this->currentLength = 0;
        MOVS     R0,#+0
        STR      R0,[R1, #+0]
//   18 
//   19 	if (this->currentLength) {
        LDR      R0,[R1, #+0]
        CMP      R0,#+0
        BEQ.N    ??zero_0
//   20 		return 0;
        MOVS     R0,#+0
        B.N      ??zero_1
//   21 	}
//   22 
//   23 	return -1;
??zero_0:
        MOVS     R0,#-1
??zero_1:
        BX       LR               ;; return
//   24 }
          CFI EndBlock cfiBlock2

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
// 52 bytes in section .text
// 
// 52 bytes of CODE memory
//
//Errors: none
//Warnings: none
