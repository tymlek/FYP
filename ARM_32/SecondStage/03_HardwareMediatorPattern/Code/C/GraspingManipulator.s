///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.22.2.15995/W32 for ARM      21/Apr/2018  15:49:22
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\03_HardwareMediatorPattern\Code\C\GraspingManipulator.c
//    Command line =  
//        -f C:\Users\Tim\AppData\Local\Temp\EWFF55.tmp
//        (C:\Users\Tim\Programming\Code\ARM_32\Patterns\03_HardwareMediatorPattern\Code\C\GraspingManipulator.c
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
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\03_HardwareMediatorPattern\Code\C\Debug\List\GraspingManipulator.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        PUBLIC GraspingManipulator_close
        PUBLIC GraspingManipulator_getClosure
        PUBLIC GraspingManipulator_open
        PUBLIC GraspingManipulator_setMaxForce
        
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
        
// C:\Users\Tim\Programming\Code\ARM_32\Patterns\03_HardwareMediatorPattern\Code\C\GraspingManipulator.c
//    1 #include "GraspingManipulator.h"
//    2 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function GraspingManipulator_open
          CFI NoCalls
        THUMB
//    3 int GraspingManipulator_open(GraspingManipulator* const me) {
GraspingManipulator_open:
        MOVS     R1,R0
//    4 	return 0;
        MOVS     R0,#+0
        BX       LR               ;; return
//    5 }
          CFI EndBlock cfiBlock0
//    6 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function GraspingManipulator_close
          CFI NoCalls
        THUMB
//    7 int GraspingManipulator_close(GraspingManipulator* const me) {
GraspingManipulator_close:
        MOVS     R1,R0
//    8 	return 0;
        MOVS     R0,#+0
        BX       LR               ;; return
//    9 }
          CFI EndBlock cfiBlock1
//   10 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function GraspingManipulator_setMaxForce
          CFI NoCalls
        THUMB
//   11 int GraspingManipulator_setMaxForce(GraspingManipulator* const me, int m) {
GraspingManipulator_setMaxForce:
        MOVS     R2,R0
//   12 	me->maxForce = m;
        STR      R1,[R2, #+0]
//   13 
//   14 	if (me->maxForce == m) {
        LDR      R0,[R2, #+0]
        CMP      R0,R1
        BNE.N    ??GraspingManipulator_setMaxForce_0
//   15 		return 0;
        MOVS     R0,#+0
        B.N      ??GraspingManipulator_setMaxForce_1
//   16 	}
//   17 
//   18 	return -1;
??GraspingManipulator_setMaxForce_0:
        MOVS     R0,#-1
??GraspingManipulator_setMaxForce_1:
        BX       LR               ;; return
//   19 }
          CFI EndBlock cfiBlock2
//   20 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function GraspingManipulator_getClosure
          CFI NoCalls
        THUMB
//   21 int GraspingManipulator_getClosure(const GraspingManipulator* const me) {
//   22 	return me->maxForce;
GraspingManipulator_getClosure:
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
//   23 }
          CFI EndBlock cfiBlock3

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
// 36 bytes in section .text
// 
// 36 bytes of CODE memory
//
//Errors: none
//Warnings: none
