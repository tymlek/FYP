///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.22.2.15995/W32 for ARM      21/Apr/2018  16:38:14
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\03_HardwareMediatorPattern\Code\Cpp\main.cpp
//    Command line =  
//        -f C:\Users\Tim\AppData\Local\Temp\EWBCBC.tmp
//        (C:\Users\Tim\Programming\Code\ARM_32\Patterns\03_HardwareMediatorPattern\Code\Cpp\main.cpp
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
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\03_HardwareMediatorPattern\Code\Cpp\Debug\List\main.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__CPP_Exceptions", "Disabled"
        RTMODEL "__CPP_Language", "C++14"
        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_full_locale_support", "0"
        RTMODEL "__dlib_version", "6"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN _ZN15RobotArmManager11executeStepEv
        EXTERN _ZN15RobotArmManager17computeTrajectoryEiiii
        EXTERN _ZN15RobotArmManager21addItsSlidingArmJointEP15SlidingArmJoint
        EXTERN _ZN15RobotArmManager22addItsRotatingArmJointEP16RotatingArmJoint
        EXTERN _ZN15RobotArmManager25setItsGraspingManipulatorEP19GraspingManipulator
        EXTERN _ZN15RobotArmManager7graspAtEiiii

        PUBLIC _ZN15RobotArmManagerC1Ev
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
        
// C:\Users\Tim\Programming\Code\ARM_32\Patterns\03_HardwareMediatorPattern\Code\Cpp\main.cpp
//    1 #include "RobotArmManager.h"

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN15RobotArmManagerC1Ev
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function _ZN15RobotArmManagerC1Ev
          CFI NoCalls
        THUMB
// __code __interwork __softfp RobotArmManager::RobotArmManager()
_ZN15RobotArmManagerC1Ev:
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        MOVS     R1,#+0
??RobotArmManager_0:
        CMP      R1,#+100
        BGE.N    ??RobotArmManager_1
        MOVS     R2,#+0
        ADD      R3,R0,R1, LSL #+2
        STR      R2,[R3, #+36]
        ADDS     R1,R1,#+1
        B.N      ??RobotArmManager_0
??RobotArmManager_1:
        MOVS     R1,#+0
??RobotArmManager_2:
        CMP      R1,#+4
        BGE.N    ??RobotArmManager_3
        MOVS     R2,#+0
        ADD      R3,R0,R1, LSL #+2
        STR      R2,[R3, #+12]
        ADDS     R1,R1,#+1
        B.N      ??RobotArmManager_2
??RobotArmManager_3:
        MOVS     R1,#+0
??RobotArmManager_4:
        CMP      R1,#+2
        BGE.N    ??RobotArmManager_5
        MOVS     R2,#+0
        ADD      R3,R0,R1, LSL #+2
        STR      R2,[R3, #+28]
        ADDS     R1,R1,#+1
        B.N      ??RobotArmManager_4
??RobotArmManager_5:
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//    2 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function main
        THUMB
//    3 int main(void) {
main:
        PUSH     {LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+4
        SUB      SP,SP,#+516
          CFI CFA R13+520
//    4 	RobotArmManager robotArm;
        ADD      R0,SP,#+76
          CFI FunCall _ZN15RobotArmManagerC1Ev
        BL       _ZN15RobotArmManagerC1Ev
//    5 	RotatingArmJoint rotatingArmJoint1;
//    6 	RotatingArmJoint rotatingArmJoint2;
//    7 	RotatingArmJoint rotatingArmJoint3;
//    8 	RotatingArmJoint rotatingArmJoint4;
//    9 	SlidingArmJoint slidingArmJoint1;
//   10 	SlidingArmJoint slidingArmJoint2;
//   11 	GraspingManipulator graspingManipulator;
//   12 
//   13 	robotArm.addItsRotatingArmJoint(&rotatingArmJoint1);
        ADD      R1,SP,#+36
          CFI FunCall _ZN15RobotArmManager22addItsRotatingArmJointEP16RotatingArmJoint
        BL       _ZN15RobotArmManager22addItsRotatingArmJointEP16RotatingArmJoint
//   14 	robotArm.addItsRotatingArmJoint(&rotatingArmJoint2);
        ADD      R1,SP,#+28
        ADD      R0,SP,#+76
          CFI FunCall _ZN15RobotArmManager22addItsRotatingArmJointEP16RotatingArmJoint
        BL       _ZN15RobotArmManager22addItsRotatingArmJointEP16RotatingArmJoint
//   15 	robotArm.addItsRotatingArmJoint(&rotatingArmJoint3);
        ADD      R1,SP,#+20
        ADD      R0,SP,#+76
          CFI FunCall _ZN15RobotArmManager22addItsRotatingArmJointEP16RotatingArmJoint
        BL       _ZN15RobotArmManager22addItsRotatingArmJointEP16RotatingArmJoint
//   16 	robotArm.addItsRotatingArmJoint(&rotatingArmJoint4);
        ADD      R1,SP,#+12
        ADD      R0,SP,#+76
          CFI FunCall _ZN15RobotArmManager22addItsRotatingArmJointEP16RotatingArmJoint
        BL       _ZN15RobotArmManager22addItsRotatingArmJointEP16RotatingArmJoint
//   17 
//   18 	robotArm.addItsSlidingArmJoint(&slidingArmJoint1);
        ADD      R1,SP,#+60
        ADD      R0,SP,#+76
          CFI FunCall _ZN15RobotArmManager21addItsSlidingArmJointEP15SlidingArmJoint
        BL       _ZN15RobotArmManager21addItsSlidingArmJointEP15SlidingArmJoint
//   19 	robotArm.addItsSlidingArmJoint(&slidingArmJoint2);
        ADD      R1,SP,#+44
        ADD      R0,SP,#+76
          CFI FunCall _ZN15RobotArmManager21addItsSlidingArmJointEP15SlidingArmJoint
        BL       _ZN15RobotArmManager21addItsSlidingArmJointEP15SlidingArmJoint
//   20 
//   21 	robotArm.setItsGraspingManipulator(&graspingManipulator);
        ADD      R1,SP,#+4
        ADD      R0,SP,#+76
          CFI FunCall _ZN15RobotArmManager25setItsGraspingManipulatorEP19GraspingManipulator
        BL       _ZN15RobotArmManager25setItsGraspingManipulatorEP19GraspingManipulator
//   22 
//   23 	robotArm.computeTrajectory(1,2,3,4);
        MOVS     R0,#+4
        STR      R0,[SP, #+0]
        MOVS     R3,#+3
        MOVS     R2,#+2
        MOVS     R1,#+1
        ADD      R0,SP,#+76
          CFI FunCall _ZN15RobotArmManager17computeTrajectoryEiiii
        BL       _ZN15RobotArmManager17computeTrajectoryEiiii
//   24 	robotArm.executeStep();
        ADD      R0,SP,#+76
          CFI FunCall _ZN15RobotArmManager11executeStepEv
        BL       _ZN15RobotArmManager11executeStepEv
//   25 	robotArm.graspAt(4,3,2,1);
        MOVS     R0,#+1
        STR      R0,[SP, #+0]
        MOVS     R3,#+2
        MOVS     R2,#+3
        MOVS     R1,#+4
        ADD      R0,SP,#+76
          CFI FunCall _ZN15RobotArmManager7graspAtEiiii
        BL       _ZN15RobotArmManager7graspAtEiiii
//   26 
//   27 	while (1) {
??main_0:
        B.N      ??main_0
//   28 		
//   29 	}
//   30 }
          CFI EndBlock cfiBlock1

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
// 170 bytes in section .text
// 
// 106 bytes of CODE memory (+ 64 bytes shared)
//
//Errors: none
//Warnings: none
