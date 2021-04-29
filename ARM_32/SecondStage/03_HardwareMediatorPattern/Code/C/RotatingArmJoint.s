///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.22.2.15995/W32 for ARM      21/Apr/2018  15:49:22
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\03_HardwareMediatorPattern\Code\C\RotatingArmJoint.c
//    Command line =  
//        -f C:\Users\Tim\AppData\Local\Temp\EW13.tmp
//        (C:\Users\Tim\Programming\Code\ARM_32\Patterns\03_HardwareMediatorPattern\Code\C\RotatingArmJoint.c
//        -lC
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\03_HardwareMediatorPattern\Code\C\Debug\List
//        -lA
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\03_HardwareMediatorPattern\Code\C\Debug\List
//        -o
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\03_HardwareMediatorPattern\Code\C\Debug\Obj
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 --fpu=None --dlib_config "C:\Program Files (x86)\IAR
//        Systems\Embedded Workbench 8.0\arm\INC\c\DLib_Config_Normal.h" -On)
//    Locale       =  C
//    List file    =  
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\03_HardwareMediatorPattern\Code\C\Debug\List\RotatingArmJoint.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        PUBLIC RotatingArmJoint_getRotation
        PUBLIC RotatingArmJoint_rotate
        PUBLIC RotatingArmJoint_zero
        
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
        
// C:\Users\Tim\Programming\Code\ARM_32\Patterns\03_HardwareMediatorPattern\Code\C\RotatingArmJoint.c
//    1 #include "RotatingArmJoint.h"
//    2 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function RotatingArmJoint_getRotation
          CFI NoCalls
        THUMB
//    3 int RotatingArmJoint_getRotation(const RotatingArmJoint* const me) {
RotatingArmJoint_getRotation:
        MOVS     R1,R0
//    4 	if (!me) {
        CMP      R1,#+0
        BNE.N    ??RotatingArmJoint_getRotation_0
//    5 		return -1;
        MOVS     R0,#-1
        B.N      ??RotatingArmJoint_getRotation_1
//    6 	}
//    7 
//    8 	return me->angle;
??RotatingArmJoint_getRotation_0:
        LDR      R0,[R1, #+0]
??RotatingArmJoint_getRotation_1:
        BX       LR               ;; return
//    9 }
          CFI EndBlock cfiBlock0
//   10 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function RotatingArmJoint_rotate
          CFI NoCalls
        THUMB
//   11 int RotatingArmJoint_rotate(RotatingArmJoint* const me, int x) {
RotatingArmJoint_rotate:
        MOVS     R2,R0
//   12 	if ((x + me->angle) < 360) {
        LDR      R0,[R2, #+0]
        ADDS     R0,R0,R1
        CMP      R0,#+360
        BGE.N    ??RotatingArmJoint_rotate_0
//   13 		me->angle += x;
        LDR      R0,[R2, #+0]
        ADDS     R0,R1,R0
        STR      R0,[R2, #+0]
//   14 		return 0;
        MOVS     R0,#+0
        B.N      ??RotatingArmJoint_rotate_1
//   15 	}
//   16 
//   17 	return -1;
??RotatingArmJoint_rotate_0:
        MOVS     R0,#-1
??RotatingArmJoint_rotate_1:
        BX       LR               ;; return
//   18 }
          CFI EndBlock cfiBlock1
//   19 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function RotatingArmJoint_zero
          CFI NoCalls
        THUMB
//   20 int RotatingArmJoint_zero(RotatingArmJoint* const me) {
RotatingArmJoint_zero:
        MOVS     R1,R0
//   21 	me->angle = 0;
        MOVS     R0,#+0
        STR      R0,[R1, #+0]
//   22 
//   23 	if (me->angle == 0) {
        LDR      R0,[R1, #+0]
        CMP      R0,#+0
        BNE.N    ??RotatingArmJoint_zero_0
//   24 		return 0;
        MOVS     R0,#+0
        B.N      ??RotatingArmJoint_zero_1
//   25 	}
//   26 
//   27 	return -1;
??RotatingArmJoint_zero_0:
        MOVS     R0,#-1
??RotatingArmJoint_zero_1:
        BX       LR               ;; return
//   28 }
          CFI EndBlock cfiBlock2

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
// 66 bytes in section .text
// 
// 66 bytes of CODE memory
//
//Errors: none
//Warnings: none
