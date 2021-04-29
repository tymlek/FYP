///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.22.2.15995/W32 for ARM      21/Apr/2018  16:38:14
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\03_HardwareMediatorPattern\Code\Cpp\RobotArmManager.cpp
//    Command line =  
//        -f C:\Users\Tim\AppData\Local\Temp\EWBCBD.tmp
//        (C:\Users\Tim\Programming\Code\ARM_32\Patterns\03_HardwareMediatorPattern\Code\Cpp\RobotArmManager.cpp
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
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\03_HardwareMediatorPattern\Code\Cpp\Debug\List\RobotArmManager.s
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

        EXTERN _ZN15SlidingArmJoint4zeroEv
        EXTERN _ZN15SlidingArmJoint9setLengthEi
        EXTERN _ZN16RotatingArmJoint4zeroEv
        EXTERN _ZN16RotatingArmJoint6rotateEi
        EXTERN _ZN19GraspingManipulator11setMaxForceEi
        EXTERN _ZN19GraspingManipulator4openEv
        EXTERN _ZN19GraspingManipulator5closeEv

        PUBLIC _ZN15RobotArmManager11executeStepEv
        PUBLIC _ZN15RobotArmManager12addItsActionEP6Action
        PUBLIC _ZN15RobotArmManager12getItsActionEv
        PUBLIC _ZN15RobotArmManager14clearItsActionEv
        PUBLIC _ZN15RobotArmManager15removeItsActionEP6Action
        PUBLIC _ZN15RobotArmManager17computeTrajectoryEiiii
        PUBLIC _ZN15RobotArmManager21addItsSlidingArmJointEP15SlidingArmJoint
        PUBLIC _ZN15RobotArmManager21getItsSlidingArmJointEv
        PUBLIC _ZN15RobotArmManager22addItsRotatingArmJointEP16RotatingArmJoint
        PUBLIC _ZN15RobotArmManager22getItsRotatingArmJointEv
        PUBLIC _ZN15RobotArmManager23clearItsSlidingArmJointEv
        PUBLIC _ZN15RobotArmManager23removeItsSlidingAmJointEP15SlidingArmJoint
        PUBLIC _ZN15RobotArmManager24clearItsRotatingArmJointEv
        PUBLIC _ZN15RobotArmManager25getItsGraspingManipulatorEv
        PUBLIC _ZN15RobotArmManager25removeItsRotatingArmJointEP16RotatingArmJoint
        PUBLIC _ZN15RobotArmManager25setItsGraspingManipulatorEP19GraspingManipulator
        PUBLIC _ZN15RobotArmManager4zeroEv
        PUBLIC _ZN15RobotArmManager7graspAtEiiii
        
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
        
// C:\Users\Tim\Programming\Code\ARM_32\Patterns\03_HardwareMediatorPattern\Code\Cpp\RobotArmManager.cpp
//    1 #include <stdlib.h>
//    2 #include "RobotArmManager.h"
//    3 
//    4 static void cleanUpRelations(RobotArmManager* const me);
//    5 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function _ZN15RobotArmManager17computeTrajectoryEiiii
        THUMB
//    6 void RobotArmManager::computeTrajectory(int x, int y, int z, int t) {
_ZN15RobotArmManager17computeTrajectoryEiiii:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        SUB      SP,SP,#+96
          CFI CFA R13+120
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
//    7 	Action ap1;
//    8 
//    9 	this->nSteps = 0;
        MOVS     R0,#+0
        STR      R0,[R4, #+4]
//   10 	this->clearItsAction();
        MOVS     R0,R4
          CFI FunCall _ZN15RobotArmManager14clearItsActionEv
        BL       _ZN15RobotArmManager14clearItsActionEv
//   11 
//   12 	this->addItsAction(&ap1);
        ADD      R1,SP,#+64
        MOVS     R0,R4
          CFI FunCall _ZN15RobotArmManager12addItsActionEP6Action
        BL       _ZN15RobotArmManager12addItsActionEP6Action
//   13 
//   14 	ap1.rotatingArmJoint1 = 1;
        MOVS     R0,#+1
        STR      R0,[SP, #+64]
//   15 	ap1.rotatingArmJoint2 = 2;
        MOVS     R0,#+2
        STR      R0,[SP, #+68]
//   16 	ap1.rotatingArmJoint3 = 3;
        MOVS     R0,#+3
        STR      R0,[SP, #+72]
//   17 	ap1.rotatingArmJoint4 = 4;
        MOVS     R0,#+4
        STR      R0,[SP, #+76]
//   18 
//   19 	ap1.slidingArmJoint1 = 10;
        MOVS     R0,#+10
        STR      R0,[SP, #+80]
//   20 	ap1.slidingArmJoint2 = 20;
        MOVS     R0,#+20
        STR      R0,[SP, #+84]
//   21 
//   22 	ap1.manipulatorForce = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+88]
//   23 	ap1.manipulatorOpen = 1;
        MOVS     R0,#+1
        STR      R0,[SP, #+92]
//   24 
//   25 	Action ap2;
//   26 	this->addItsAction(&ap2);
        ADD      R1,SP,#+32
        MOVS     R0,R4
          CFI FunCall _ZN15RobotArmManager12addItsActionEP6Action
        BL       _ZN15RobotArmManager12addItsActionEP6Action
//   27 
//   28 	ap2.rotatingArmJoint1 = 1;
        MOVS     R0,#+1
        STR      R0,[SP, #+32]
//   29 	ap2.rotatingArmJoint2 = 2;
        MOVS     R0,#+2
        STR      R0,[SP, #+36]
//   30 	ap2.rotatingArmJoint3 = 3;
        MOVS     R0,#+3
        STR      R0,[SP, #+40]
//   31 	ap2.rotatingArmJoint4 = 4;
        MOVS     R0,#+4
        STR      R0,[SP, #+44]
//   32 
//   33 	ap2.slidingArmJoint1 = 10;
        MOVS     R0,#+10
        STR      R0,[SP, #+48]
//   34 	ap2.slidingArmJoint2 = 20;
        MOVS     R0,#+20
        STR      R0,[SP, #+52]
//   35 
//   36 	ap2.manipulatorForce = 10;
        MOVS     R0,#+10
        STR      R0,[SP, #+56]
//   37 	ap2.manipulatorOpen = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+60]
//   38 
//   39 	Action ap3;
//   40 	this->addItsAction(&ap3);
        MOV      R1,SP
        MOVS     R0,R4
          CFI FunCall _ZN15RobotArmManager12addItsActionEP6Action
        BL       _ZN15RobotArmManager12addItsActionEP6Action
//   41 
//   42 	ap3.rotatingArmJoint1 = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
//   43 	ap3.rotatingArmJoint2 = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
//   44 	ap3.rotatingArmJoint3 = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
//   45 	ap3.rotatingArmJoint4 = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//   46 
//   47 	ap3.slidingArmJoint1 = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+16]
//   48 	ap3.slidingArmJoint2 = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//   49 
//   50 	ap3.manipulatorForce = 10;
        MOVS     R0,#+10
        STR      R0,[SP, #+24]
//   51 	ap3.manipulatorOpen = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+28]
//   52 
//   53 	this->nSteps = 3;
        MOVS     R0,#+3
        STR      R0,[R4, #+4]
//   54 }
        ADD      SP,SP,#+100
          CFI CFA R13+20
        POP      {R4-R7,PC}       ;; return
          CFI EndBlock cfiBlock0
//   55 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function _ZN15RobotArmManager11executeStepEv
        THUMB
//   56 int RobotArmManager::executeStep() {
_ZN15RobotArmManager11executeStepEv:
        PUSH     {R4-R10,LR}
          CFI R14 Frame(CFA, -4)
          CFI R10 Frame(CFA, -8)
          CFI R9 Frame(CFA, -12)
          CFI R8 Frame(CFA, -16)
          CFI R7 Frame(CFA, -20)
          CFI R6 Frame(CFA, -24)
          CFI R5 Frame(CFA, -28)
          CFI R4 Frame(CFA, -32)
          CFI CFA R13+32
        MOVS     R6,R0
//   57 	int actionValue = 0;
        MOVS     R8,#+0
//   58 	int step = this->currentStep;
        LDR      R7,[R6, #+0]
//   59 	int status = 0;
        MOVS     R5,#+0
//   60 
//   61 	if (this->itsAction[step]) {
        ADD      R0,R6,R7, LSL #+2
        LDR      R0,[R0, #+36]
        CMP      R0,#+0
        BEQ.N    ??executeStep_0
//   62 		actionValue = this->itsAction[step]->rotatingArmJoint1;
        ADD      R0,R6,R7, LSL #+2
        LDR      R0,[R0, #+36]
        LDR      R9,[R0, #+0]
//   63 		status = this->itsRotatingArmJoint[0]->rotate(actionValue);
        MOV      R1,R9
        LDR      R0,[R6, #+12]
          CFI FunCall _ZN16RotatingArmJoint6rotateEi
        BL       _ZN16RotatingArmJoint6rotateEi
        MOVS     R4,R0
//   64 		if (status) {
        CMP      R4,#+0
        BEQ.N    ??executeStep_1
//   65 			return status;
        MOVS     R0,R4
        B.N      ??executeStep_2
//   66 		}
//   67 
//   68 		actionValue = this->itsAction[step]->rotatingArmJoint2;
??executeStep_1:
        ADD      R0,R6,R7, LSL #+2
        LDR      R0,[R0, #+36]
        LDR      R8,[R0, #+4]
//   69 		status = this->itsRotatingArmJoint[1]->rotate(actionValue);
        MOV      R1,R8
        LDR      R0,[R6, #+16]
          CFI FunCall _ZN16RotatingArmJoint6rotateEi
        BL       _ZN16RotatingArmJoint6rotateEi
        MOVS     R5,R0
//   70 		if (status) {
        CMP      R5,#+0
        BEQ.N    ??executeStep_3
//   71 			return status;
        MOVS     R0,R5
        B.N      ??executeStep_2
//   72 		}
//   73 
//   74 		actionValue = this->itsAction[step]->rotatingArmJoint3;
??executeStep_3:
        ADD      R0,R6,R7, LSL #+2
        LDR      R0,[R0, #+36]
        LDR      R9,[R0, #+8]
//   75 		status = this->itsRotatingArmJoint[2]->rotate(actionValue);
        MOV      R1,R9
        LDR      R0,[R6, #+20]
          CFI FunCall _ZN16RotatingArmJoint6rotateEi
        BL       _ZN16RotatingArmJoint6rotateEi
        MOVS     R4,R0
//   76 		if (status) {
        CMP      R4,#+0
        BEQ.N    ??executeStep_4
//   77 			return status;
        MOVS     R0,R4
        B.N      ??executeStep_2
//   78 		}
//   79 
//   80 		actionValue = this->itsAction[step]->rotatingArmJoint4;
??executeStep_4:
        ADD      R0,R6,R7, LSL #+2
        LDR      R0,[R0, #+36]
        LDR      R8,[R0, #+12]
//   81 		status = this->itsRotatingArmJoint[3]->rotate(actionValue);
        MOV      R1,R8
        LDR      R0,[R6, #+24]
          CFI FunCall _ZN16RotatingArmJoint6rotateEi
        BL       _ZN16RotatingArmJoint6rotateEi
        MOVS     R5,R0
//   82 		if (status) {
        CMP      R5,#+0
        BEQ.N    ??executeStep_5
//   83 			return status;
        MOVS     R0,R5
        B.N      ??executeStep_2
//   84 		}
//   85 
//   86 		actionValue = this->itsAction[step]->slidingArmJoint1;
??executeStep_5:
        ADD      R0,R6,R7, LSL #+2
        LDR      R0,[R0, #+36]
        LDR      R9,[R0, #+16]
//   87 		status = this->itsSlidingArmJoint[0]->setLength(actionValue);
        MOV      R1,R9
        LDR      R0,[R6, #+28]
          CFI FunCall _ZN15SlidingArmJoint9setLengthEi
        BL       _ZN15SlidingArmJoint9setLengthEi
        MOVS     R4,R0
//   88 		if (status) {
        CMP      R4,#+0
        BEQ.N    ??executeStep_6
//   89 			return status;
        MOVS     R0,R4
        B.N      ??executeStep_2
//   90 		}
//   91 
//   92 		actionValue = this->itsAction[step]->slidingArmJoint2;
??executeStep_6:
        ADD      R0,R6,R7, LSL #+2
        LDR      R0,[R0, #+36]
        LDR      R10,[R0, #+20]
//   93 		status = this->itsSlidingArmJoint[1]->setLength(actionValue);
        MOV      R1,R10
        LDR      R0,[R6, #+32]
          CFI FunCall _ZN15SlidingArmJoint9setLengthEi
        BL       _ZN15SlidingArmJoint9setLengthEi
        MOVS     R5,R0
//   94 		if (status) {
        CMP      R5,#+0
        BEQ.N    ??executeStep_7
//   95 			return status;
        MOVS     R0,R5
        B.N      ??executeStep_2
//   96 		}
//   97 
//   98 		actionValue = this->itsAction[step]->manipulatorForce;
??executeStep_7:
        ADD      R0,R6,R7, LSL #+2
        LDR      R0,[R0, #+36]
        LDR      R8,[R0, #+24]
//   99 		status = this->itsGraspingManipulator->setMaxForce(actionValue);
        MOV      R1,R8
        LDR      R0,[R6, #+8]
          CFI FunCall _ZN19GraspingManipulator11setMaxForceEi
        BL       _ZN19GraspingManipulator11setMaxForceEi
        MOVS     R4,R0
//  100 		if (status) {
        CMP      R4,#+0
        BEQ.N    ??executeStep_8
//  101 			return status;
        MOVS     R0,R4
        B.N      ??executeStep_2
//  102 		}
//  103 
//  104 		if (this->itsAction[step]->manipulatorOpen) {
??executeStep_8:
        ADD      R0,R6,R7, LSL #+2
        LDR      R0,[R0, #+36]
        LDR      R0,[R0, #+28]
        CMP      R0,#+0
        BEQ.N    ??executeStep_9
//  105 			status = this->itsGraspingManipulator->open();
        LDR      R0,[R6, #+8]
          CFI FunCall _ZN19GraspingManipulator4openEv
        BL       _ZN19GraspingManipulator4openEv
        MOVS     R5,R0
        B.N      ??executeStep_0
//  106 		}
//  107 		else {
//  108 			status = this->itsGraspingManipulator->close();
??executeStep_9:
        LDR      R0,[R6, #+8]
          CFI FunCall _ZN19GraspingManipulator5closeEv
        BL       _ZN19GraspingManipulator5closeEv
        MOVS     R5,R0
//  109 		}
//  110 	}
//  111 
//  112 	return status;
??executeStep_0:
        MOVS     R0,R5
??executeStep_2:
        POP      {R4-R10,PC}      ;; return
//  113 }
          CFI EndBlock cfiBlock1
//  114 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function _ZN15RobotArmManager7graspAtEiiii
        THUMB
//  115 int RobotArmManager::graspAt(int x, int y, int z, int t) {
_ZN15RobotArmManager7graspAtEiiii:
        PUSH     {R2-R8,LR}
          CFI R14 Frame(CFA, -4)
          CFI R8 Frame(CFA, -8)
          CFI R7 Frame(CFA, -12)
          CFI R6 Frame(CFA, -16)
          CFI R5 Frame(CFA, -20)
          CFI R4 Frame(CFA, -24)
          CFI CFA R13+32
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        LDR      R8,[SP, #+32]
//  116 	this->currentStep = -1;
        MOVS     R0,#-1
        STR      R0,[R4, #+0]
//  117 	this->nSteps = 0;
        MOVS     R0,#+0
        STR      R0,[R4, #+4]
//  118 	this->zero();
        MOVS     R0,R4
          CFI FunCall _ZN15RobotArmManager4zeroEv
        BL       _ZN15RobotArmManager4zeroEv
//  119 	this->computeTrajectory(x, y, z, t);
        STR      R8,[SP, #+0]
        MOVS     R3,R7
        MOVS     R2,R6
        MOVS     R1,R5
        MOVS     R0,R4
          CFI FunCall _ZN15RobotArmManager17computeTrajectoryEiiii
        BL       _ZN15RobotArmManager17computeTrajectoryEiiii
//  120 
//  121 	if (this->nSteps == 0) {
        LDR      R0,[R4, #+4]
        CMP      R0,#+0
        BNE.N    ??graspAt_0
//  122 		this->status = -1;
        MOVS     R0,#-1
        STR      R0,[R4, #+436]
        B.N      ??graspAt_1
//  123 	}
//  124 	else {
//  125 		do {
//  126 			this->currentStep++;
??graspAt_0:
        LDR      R0,[R4, #+0]
        ADDS     R0,R0,#+1
        STR      R0,[R4, #+0]
//  127 			this->status = this->executeStep();
        MOVS     R0,R4
          CFI FunCall _ZN15RobotArmManager11executeStepEv
        BL       _ZN15RobotArmManager11executeStepEv
        STR      R0,[R4, #+436]
//  128 		} while (this->status == 0 && this->currentStep < this->nSteps);
        LDR      R0,[R4, #+436]
        CMP      R0,#+0
        BNE.N    ??graspAt_1
        LDR      R0,[R4, #+0]
        LDR      R1,[R4, #+4]
        CMP      R0,R1
        BCC.N    ??graspAt_0
//  129 	}
//  130 
//  131 	return this->status;
??graspAt_1:
        LDR      R0,[R4, #+436]
        POP      {R1,R2,R4-R8,PC}  ;; return
//  132 }
          CFI EndBlock cfiBlock2
//  133 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function _ZN15RobotArmManager4zeroEv
        THUMB
//  134 int RobotArmManager::zero() {
_ZN15RobotArmManager4zeroEv:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
//  135 	for (int j = 0; j < 4; ++j) {
        MOVS     R5,#+0
??zero_0:
        CMP      R5,#+4
        BGE.N    ??zero_1
//  136 		if (this->itsRotatingArmJoint[j] == nullptr) {
        ADD      R0,R4,R5, LSL #+2
        LDR      R0,[R0, #+12]
        CMP      R0,#+0
        BNE.N    ??zero_2
//  137 			return -1;
        MOVS     R0,#-1
        B.N      ??zero_3
//  138 		}
//  139 
//  140 		if (this->itsRotatingArmJoint[j]->zero()) {
??zero_2:
        ADD      R0,R4,R5, LSL #+2
        LDR      R0,[R0, #+12]
          CFI FunCall _ZN16RotatingArmJoint4zeroEv
        BL       _ZN16RotatingArmJoint4zeroEv
        CMP      R0,#+0
        BEQ.N    ??zero_4
//  141 			return -1;
        MOVS     R0,#-1
        B.N      ??zero_3
//  142 		}
//  143 	}
??zero_4:
        ADDS     R5,R5,#+1
        B.N      ??zero_0
//  144 
//  145 	for (int j = 0; j < 2; ++j) {
??zero_1:
        MOVS     R5,#+0
??zero_5:
        CMP      R5,#+2
        BGE.N    ??zero_6
//  146 		if (this->itsSlidingArmJoint[j] == nullptr) {
        ADD      R0,R4,R5, LSL #+2
        LDR      R0,[R0, #+28]
        CMP      R0,#+0
        BNE.N    ??zero_7
//  147 			return -1;
        MOVS     R0,#-1
        B.N      ??zero_3
//  148 		}
//  149 
//  150 		if (this->itsSlidingArmJoint[j]->zero()) {
??zero_7:
        ADD      R0,R4,R5, LSL #+2
        LDR      R0,[R0, #+28]
          CFI FunCall _ZN15SlidingArmJoint4zeroEv
        BL       _ZN15SlidingArmJoint4zeroEv
        CMP      R0,#+0
        BEQ.N    ??zero_8
//  151 			return -1;
        MOVS     R0,#-1
        B.N      ??zero_3
//  152 		}
//  153 	}
??zero_8:
        ADDS     R5,R5,#+1
        B.N      ??zero_5
//  154 
//  155 	if (this->itsGraspingManipulator == nullptr) {
??zero_6:
        LDR      R0,[R4, #+8]
        CMP      R0,#+0
        BNE.N    ??zero_9
//  156 		return -1;
        MOVS     R0,#-1
        B.N      ??zero_3
//  157 	}
//  158 	
//  159 	if (this->itsGraspingManipulator->open()) {
??zero_9:
        LDR      R0,[R4, #+8]
          CFI FunCall _ZN19GraspingManipulator4openEv
        BL       _ZN19GraspingManipulator4openEv
        CMP      R0,#+0
        BEQ.N    ??zero_10
//  160 		return -1;
        MOVS     R0,#-1
        B.N      ??zero_3
//  161 	}
//  162 
//  163 	return 0;
??zero_10:
        MOVS     R0,#+0
??zero_3:
        POP      {R1,R4,R5,PC}    ;; return
//  164 }
          CFI EndBlock cfiBlock3
//  165 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function _ZN15RobotArmManager25getItsGraspingManipulatorEv
          CFI NoCalls
        THUMB
//  166 GraspingManipulator* RobotArmManager::getItsGraspingManipulator() {
//  167 	return (GraspingManipulator*)this->itsGraspingManipulator;
_ZN15RobotArmManager25getItsGraspingManipulatorEv:
        LDR      R0,[R0, #+8]
        BX       LR               ;; return
//  168 }
          CFI EndBlock cfiBlock4
//  169 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function _ZN15RobotArmManager25setItsGraspingManipulatorEP19GraspingManipulator
          CFI NoCalls
        THUMB
//  170 void RobotArmManager::setItsGraspingManipulator(GraspingManipulator* p_GraspingManipulator) {
//  171 	this->itsGraspingManipulator = p_GraspingManipulator;
_ZN15RobotArmManager25setItsGraspingManipulatorEP19GraspingManipulator:
        STR      R1,[R0, #+8]
//  172 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock5
//  173 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function _ZN15RobotArmManager22getItsRotatingArmJointEv
          CFI NoCalls
        THUMB
//  174 unsigned int* RobotArmManager::getItsRotatingArmJoint() {
//  175 	return (unsigned int*)&(this->itsRotatingArmJoint[0]);
_ZN15RobotArmManager22getItsRotatingArmJointEv:
        ADDS     R0,R0,#+12
        BX       LR               ;; return
//  176 }
          CFI EndBlock cfiBlock6
//  177 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function _ZN15RobotArmManager22addItsRotatingArmJointEP16RotatingArmJoint
          CFI NoCalls
        THUMB
//  178 void RobotArmManager::addItsRotatingArmJoint(RotatingArmJoint* p_RotatingArmJoint) {
//  179 	for (int pos = 0; pos < 4; ++pos) {
_ZN15RobotArmManager22addItsRotatingArmJointEP16RotatingArmJoint:
        MOVS     R3,#+0
??addItsRotatingArmJoint_0:
        CMP      R3,#+4
        BGE.N    ??addItsRotatingArmJoint_1
//  180 		if (!this->itsRotatingArmJoint[pos]) {
        ADD      R2,R0,R3, LSL #+2
        LDR      R2,[R2, #+12]
        CMP      R2,#+0
        BNE.N    ??addItsRotatingArmJoint_2
//  181 			this->itsRotatingArmJoint[pos] = p_RotatingArmJoint;
        ADD      R2,R0,R3, LSL #+2
        STR      R1,[R2, #+12]
//  182 			break;
        B.N      ??addItsRotatingArmJoint_1
//  183 		}
//  184 	}
??addItsRotatingArmJoint_2:
        ADDS     R3,R3,#+1
        B.N      ??addItsRotatingArmJoint_0
//  185 }
??addItsRotatingArmJoint_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock7
//  186 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function _ZN15RobotArmManager25removeItsRotatingArmJointEP16RotatingArmJoint
          CFI NoCalls
        THUMB
//  187 void RobotArmManager::removeItsRotatingArmJoint(RotatingArmJoint* p_RotatingArmJoint) {
_ZN15RobotArmManager25removeItsRotatingArmJointEP16RotatingArmJoint:
        PUSH     {R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
//  188 	for (int pos = 0; pos < 4; ++pos) {
        MOVS     R2,#+0
??removeItsRotatingArmJoint_0:
        CMP      R2,#+4
        BGE.N    ??removeItsRotatingArmJoint_1
//  189 		if (this->itsRotatingArmJoint[pos] == p_RotatingArmJoint) {
        ADD      R3,R0,R2, LSL #+2
        LDR      R3,[R3, #+12]
        CMP      R3,R1
        BNE.N    ??removeItsRotatingArmJoint_2
//  190 			this->itsRotatingArmJoint[pos] = nullptr;
        MOVS     R3,#+0
        ADD      R4,R0,R2, LSL #+2
        STR      R3,[R4, #+12]
//  191 			break;
        B.N      ??removeItsRotatingArmJoint_1
//  192 		}
//  193 	}
??removeItsRotatingArmJoint_2:
        ADDS     R2,R2,#+1
        B.N      ??removeItsRotatingArmJoint_0
//  194 }
??removeItsRotatingArmJoint_1:
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock8
//  195 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function _ZN15RobotArmManager24clearItsRotatingArmJointEv
          CFI NoCalls
        THUMB
//  196 void RobotArmManager::clearItsRotatingArmJoint() {
//  197 	for (int pos = 0; pos < 4; ++pos) {
_ZN15RobotArmManager24clearItsRotatingArmJointEv:
        MOVS     R1,#+0
??clearItsRotatingArmJoint_0:
        CMP      R1,#+4
        BGE.N    ??clearItsRotatingArmJoint_1
//  198 		this->itsRotatingArmJoint[pos] = nullptr;
        MOVS     R2,#+0
        ADD      R3,R0,R1, LSL #+2
        STR      R2,[R3, #+12]
//  199 	}
        ADDS     R1,R1,#+1
        B.N      ??clearItsRotatingArmJoint_0
//  200 }
??clearItsRotatingArmJoint_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock9
//  201 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function _ZN15RobotArmManager21getItsSlidingArmJointEv
          CFI NoCalls
        THUMB
//  202 unsigned int* RobotArmManager::getItsSlidingArmJoint() {
//  203 	return (unsigned int*)&(this->itsSlidingArmJoint[0]);
_ZN15RobotArmManager21getItsSlidingArmJointEv:
        ADDS     R0,R0,#+28
        BX       LR               ;; return
//  204 }
          CFI EndBlock cfiBlock10
//  205 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function _ZN15RobotArmManager21addItsSlidingArmJointEP15SlidingArmJoint
          CFI NoCalls
        THUMB
//  206 void RobotArmManager::addItsSlidingArmJoint(SlidingArmJoint* p_SlidingArmJoint) {
//  207 	for (int pos = 0; pos < 2; ++pos) {
_ZN15RobotArmManager21addItsSlidingArmJointEP15SlidingArmJoint:
        MOVS     R3,#+0
??addItsSlidingArmJoint_0:
        CMP      R3,#+2
        BGE.N    ??addItsSlidingArmJoint_1
//  208 		if (!this->itsSlidingArmJoint[pos]) {
        ADD      R2,R0,R3, LSL #+2
        LDR      R2,[R2, #+28]
        CMP      R2,#+0
        BNE.N    ??addItsSlidingArmJoint_2
//  209 			this->itsSlidingArmJoint[pos] = p_SlidingArmJoint;
        ADD      R2,R0,R3, LSL #+2
        STR      R1,[R2, #+28]
//  210 			break;
        B.N      ??addItsSlidingArmJoint_1
//  211 		}
//  212 	}
??addItsSlidingArmJoint_2:
        ADDS     R3,R3,#+1
        B.N      ??addItsSlidingArmJoint_0
//  213 }
??addItsSlidingArmJoint_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock11
//  214 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function _ZN15RobotArmManager23removeItsSlidingAmJointEP15SlidingArmJoint
          CFI NoCalls
        THUMB
//  215 void RobotArmManager::removeItsSlidingAmJoint(SlidingArmJoint* p_SlidingArmJoint) {
_ZN15RobotArmManager23removeItsSlidingAmJointEP15SlidingArmJoint:
        PUSH     {R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
//  216 	for (int pos = 0; pos < 2; ++pos) {
        MOVS     R2,#+0
??removeItsSlidingAmJoint_0:
        CMP      R2,#+2
        BGE.N    ??removeItsSlidingAmJoint_1
//  217 		if (this->itsSlidingArmJoint[pos] == p_SlidingArmJoint) {
        ADD      R3,R0,R2, LSL #+2
        LDR      R3,[R3, #+28]
        CMP      R3,R1
        BNE.N    ??removeItsSlidingAmJoint_2
//  218 			this->itsSlidingArmJoint[pos] = nullptr;
        MOVS     R3,#+0
        ADD      R4,R0,R2, LSL #+2
        STR      R3,[R4, #+28]
//  219 			break;
        B.N      ??removeItsSlidingAmJoint_1
//  220 		}
//  221 	}
??removeItsSlidingAmJoint_2:
        ADDS     R2,R2,#+1
        B.N      ??removeItsSlidingAmJoint_0
//  222 }
??removeItsSlidingAmJoint_1:
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock12
//  223 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function _ZN15RobotArmManager23clearItsSlidingArmJointEv
          CFI NoCalls
        THUMB
//  224 void RobotArmManager::clearItsSlidingArmJoint() {
//  225 	for (int pos = 0; pos < 2; ++pos) {
_ZN15RobotArmManager23clearItsSlidingArmJointEv:
        MOVS     R1,#+0
??clearItsSlidingArmJoint_0:
        CMP      R1,#+2
        BGE.N    ??clearItsSlidingArmJoint_1
//  226 		this->itsSlidingArmJoint[pos] = nullptr;
        MOVS     R2,#+0
        ADD      R3,R0,R1, LSL #+2
        STR      R2,[R3, #+28]
//  227 	}
        ADDS     R1,R1,#+1
        B.N      ??clearItsSlidingArmJoint_0
//  228 }
??clearItsSlidingArmJoint_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock13
//  229 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function _ZN15RobotArmManager12getItsActionEv
          CFI NoCalls
        THUMB
//  230 unsigned int* RobotArmManager::getItsAction() {
//  231 	return (unsigned int*)&(this->itsAction[0]);
_ZN15RobotArmManager12getItsActionEv:
        ADDS     R0,R0,#+36
        BX       LR               ;; return
//  232 }
          CFI EndBlock cfiBlock14
//  233 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock15 Using cfiCommon0
          CFI Function _ZN15RobotArmManager12addItsActionEP6Action
          CFI NoCalls
        THUMB
//  234 void RobotArmManager::addItsAction(Action* p_Action) {
//  235 	for (int pos = 0; pos < 100; ++pos) {
_ZN15RobotArmManager12addItsActionEP6Action:
        MOVS     R3,#+0
??addItsAction_0:
        CMP      R3,#+100
        BGE.N    ??addItsAction_1
//  236 		if (!this->itsAction[pos]) {
        ADD      R2,R0,R3, LSL #+2
        LDR      R2,[R2, #+36]
        CMP      R2,#+0
        BNE.N    ??addItsAction_2
//  237 			this->itsAction[pos] = p_Action;
        ADD      R2,R0,R3, LSL #+2
        STR      R1,[R2, #+36]
//  238 			break;
        B.N      ??addItsAction_1
//  239 		}
//  240 	}
??addItsAction_2:
        ADDS     R3,R3,#+1
        B.N      ??addItsAction_0
//  241 }
??addItsAction_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock15
//  242 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock16 Using cfiCommon0
          CFI Function _ZN15RobotArmManager15removeItsActionEP6Action
          CFI NoCalls
        THUMB
//  243 void RobotArmManager::removeItsAction(Action* p_Action) {
_ZN15RobotArmManager15removeItsActionEP6Action:
        PUSH     {R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
//  244 	for (int pos = 0; pos < 100; ++pos) {
        MOVS     R2,#+0
??removeItsAction_0:
        CMP      R2,#+100
        BGE.N    ??removeItsAction_1
//  245 		if (this->itsAction[pos] == p_Action) {
        ADD      R3,R0,R2, LSL #+2
        LDR      R3,[R3, #+36]
        CMP      R3,R1
        BNE.N    ??removeItsAction_2
//  246 			this->itsAction[pos] = nullptr;
        MOVS     R3,#+0
        ADD      R4,R0,R2, LSL #+2
        STR      R3,[R4, #+36]
//  247 			break;
        B.N      ??removeItsAction_1
//  248 		}
//  249 	}
??removeItsAction_2:
        ADDS     R2,R2,#+1
        B.N      ??removeItsAction_0
//  250 }
??removeItsAction_1:
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock16
//  251 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock17 Using cfiCommon0
          CFI Function _ZN15RobotArmManager14clearItsActionEv
          CFI NoCalls
        THUMB
//  252 void RobotArmManager::clearItsAction() {
//  253 	for (int pos = 0; pos < 100; ++pos) {
_ZN15RobotArmManager14clearItsActionEv:
        MOVS     R1,#+0
??clearItsAction_0:
        CMP      R1,#+100
        BGE.N    ??clearItsAction_1
//  254 		this->itsAction[pos] = nullptr;
        MOVS     R2,#+0
        ADD      R3,R0,R1, LSL #+2
        STR      R2,[R3, #+36]
//  255 	}
        ADDS     R1,R1,#+1
        B.N      ??clearItsAction_0
//  256 }
??clearItsAction_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock17

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
// 916 bytes in section .text
// 
// 916 bytes of CODE memory
//
//Errors: none
//Warnings: 1
