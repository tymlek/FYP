///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.22.2.15995/W32 for ARM      21/Apr/2018  15:49:22
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\03_HardwareMediatorPattern\Code\C\main.c
//    Command line =  
//        -f C:\Users\Tim\AppData\Local\Temp\EWFF56.tmp
//        (C:\Users\Tim\Programming\Code\ARM_32\Patterns\03_HardwareMediatorPattern\Code\C\main.c
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
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\03_HardwareMediatorPattern\Code\C\Debug\List\main.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_full_locale_support", "0"
        RTMODEL "__dlib_version", "6"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN RobotArmManager_Create
        EXTERN RobotArmManager_addItsRotatingArmJoint
        EXTERN RobotArmManager_addItsSlidingArmJoint
        EXTERN RobotArmManager_computeTrajectory
        EXTERN RobotArmManager_executeStep
        EXTERN RobotArmManager_graspAt
        EXTERN RobotArmManager_setItsGraspingManipulator

        PUBLIC main
        
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
        
// C:\Users\Tim\Programming\Code\ARM_32\Patterns\03_HardwareMediatorPattern\Code\C\main.c
//    1 #include "RobotArmManager.h"
//    2 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function main
        THUMB
//    3 int main(void) {
main:
        PUSH     {R3,R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+12
        SUB      SP,SP,#+76
          CFI CFA R13+88
//    4 	RobotArmManager* robotArm = RobotArmManager_Create();
          CFI FunCall RobotArmManager_Create
        BL       RobotArmManager_Create
        MOVS     R4,R0
//    5 	RotatingArmJoint rotatingArmJoint1;
//    6 	RotatingArmJoint rotatingArmJoint2;
//    7 	RotatingArmJoint rotatingArmJoint3;
//    8 	RotatingArmJoint rotatingArmJoint4;
//    9 	SlidingArmJoint slidingArmJoint1;
//   10 	SlidingArmJoint slidingArmJoint2;
//   11 	GraspingManipulator graspingManipulator;
//   12 	
//   13 	RobotArmManager_addItsRotatingArmJoint(robotArm, &rotatingArmJoint1);
        ADD      R1,SP,#+36
        MOVS     R0,R4
          CFI FunCall RobotArmManager_addItsRotatingArmJoint
        BL       RobotArmManager_addItsRotatingArmJoint
//   14 	RobotArmManager_addItsRotatingArmJoint(robotArm, &rotatingArmJoint2);
        ADD      R1,SP,#+28
        MOVS     R0,R4
          CFI FunCall RobotArmManager_addItsRotatingArmJoint
        BL       RobotArmManager_addItsRotatingArmJoint
//   15 	RobotArmManager_addItsRotatingArmJoint(robotArm, &rotatingArmJoint3);
        ADD      R1,SP,#+20
        MOVS     R0,R4
          CFI FunCall RobotArmManager_addItsRotatingArmJoint
        BL       RobotArmManager_addItsRotatingArmJoint
//   16 	RobotArmManager_addItsRotatingArmJoint(robotArm, &rotatingArmJoint4);
        ADD      R1,SP,#+12
        MOVS     R0,R4
          CFI FunCall RobotArmManager_addItsRotatingArmJoint
        BL       RobotArmManager_addItsRotatingArmJoint
//   17 
//   18 	RobotArmManager_addItsSlidingArmJoint(robotArm, &slidingArmJoint1);
        ADD      R1,SP,#+60
        MOVS     R0,R4
          CFI FunCall RobotArmManager_addItsSlidingArmJoint
        BL       RobotArmManager_addItsSlidingArmJoint
//   19 	RobotArmManager_addItsSlidingArmJoint(robotArm, &slidingArmJoint2);
        ADD      R1,SP,#+44
        MOVS     R0,R4
          CFI FunCall RobotArmManager_addItsSlidingArmJoint
        BL       RobotArmManager_addItsSlidingArmJoint
//   20 
//   21 	RobotArmManager_setItsGraspingManipulator(robotArm, &graspingManipulator);
        ADD      R1,SP,#+4
        MOVS     R0,R4
          CFI FunCall RobotArmManager_setItsGraspingManipulator
        BL       RobotArmManager_setItsGraspingManipulator
//   22 
//   23 	RobotArmManager_computeTrajectory(robotArm,1,2,3,4);
        MOVS     R0,#+4
        STR      R0,[SP, #+0]
        MOVS     R3,#+3
        MOVS     R2,#+2
        MOVS     R1,#+1
        MOVS     R0,R4
          CFI FunCall RobotArmManager_computeTrajectory
        BL       RobotArmManager_computeTrajectory
//   24 	RobotArmManager_executeStep(robotArm);
        MOVS     R0,R4
          CFI FunCall RobotArmManager_executeStep
        BL       RobotArmManager_executeStep
//   25 	RobotArmManager_graspAt(robotArm,4,3,2,1);
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,#+2
        MOVS     R2,#+3
        MOVS     R1,#+4
        MOVS     R0,R4
          CFI FunCall RobotArmManager_graspAt
        BL       RobotArmManager_graspAt
//   26 
//   27 	while (1) {
??main_0:
        B.N      ??main_0
//   28 		
//   29 	}
//   30 }
          CFI EndBlock cfiBlock0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
// 106 bytes in section .text
// 
// 106 bytes of CODE memory
//
//Errors: none
//Warnings: none
