///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.22.2.15995/W32 for ARM      21/Apr/2018  16:22:02
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\03_HardwareMediatorPattern\Code\C\RobotArmManager.c
//    Command line =  
//        -f C:\Users\Tim\AppData\Local\Temp\EWE8F6.tmp
//        (C:\Users\Tim\Programming\Code\ARM_32\Patterns\03_HardwareMediatorPattern\Code\C\RobotArmManager.c
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
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\03_HardwareMediatorPattern\Code\C\Debug\List\RobotArmManager.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_full_locale_support", "0"
        RTMODEL "__dlib_version", "6"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN Action_Create
        EXTERN Action_Delete
        EXTERN GraspingManipulator_close
        EXTERN GraspingManipulator_open
        EXTERN GraspingManipulator_setMaxForce
        EXTERN RotatingArmJoint_rotate
        EXTERN RotatingArmJoint_zero
        EXTERN SlidingArmJoint_setLength
        EXTERN SlidingArmJoint_zero
        EXTERN free
        EXTERN malloc

        PUBLIC RobotArmManager_Cleanup
        PUBLIC RobotArmManager_Create
        PUBLIC RobotArmManager_Destroy
        PUBLIC RobotArmManager_Init
        PUBLIC RobotArmManager_addItsAction
        PUBLIC RobotArmManager_addItsRotatingArmJoint
        PUBLIC RobotArmManager_addItsSlidingArmJoint
        PUBLIC RobotArmManager_clearItsAction
        PUBLIC RobotArmManager_clearItsRotatingArmJoint
        PUBLIC RobotArmManager_clearItsSlidingArmJoint
        PUBLIC RobotArmManager_computeTrajectory
        PUBLIC RobotArmManager_executeStep
        PUBLIC RobotArmManager_getItsAction
        PUBLIC RobotArmManager_getItsGraspingManipulator
        PUBLIC RobotArmManager_getItsRotatingArmJoint
        PUBLIC RobotArmManager_getItsSlidingArmJoint
        PUBLIC RobotArmManager_graspAt
        PUBLIC RobotArmManager_removeItsAction
        PUBLIC RobotArmManager_removeItsRotatingArmJoint
        PUBLIC RobotArmManager_removeItsSlidingAmJoint
        PUBLIC RobotArmManager_setItsGraspingManipulator
        PUBLIC RobotArmManager_zero
        
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
        
// C:\Users\Tim\Programming\Code\ARM_32\Patterns\03_HardwareMediatorPattern\Code\C\RobotArmManager.c
//    1 #include <stdlib.h>
//    2 #include "RobotArmManager.h"
//    3 
//    4 static void cleanUpRelations(RobotArmManager* const me);
//    5 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function RobotArmManager_Init
          CFI NoCalls
        THUMB
//    6 void RobotArmManager_Init(RobotArmManager* const me) {
//    7 	int pos;
//    8 
//    9 	me->itsGraspingManipulator = NULL;
RobotArmManager_Init:
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
//   10         me->currentStep = 0;
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   11 
//   12 	for (pos = 0; pos < 100; ++pos) {
        MOVS     R1,#+0
??RobotArmManager_Init_0:
        CMP      R1,#+100
        BGE.N    ??RobotArmManager_Init_1
//   13 		me->itsAction[pos] = NULL;
        MOVS     R2,#+0
        ADD      R3,R0,R1, LSL #+2
        STR      R2,[R3, #+36]
//   14 	}
        ADDS     R1,R1,#+1
        B.N      ??RobotArmManager_Init_0
//   15 
//   16 	for (pos = 0; pos < 4; ++pos) {
??RobotArmManager_Init_1:
        MOVS     R2,#+0
??RobotArmManager_Init_2:
        CMP      R2,#+4
        BGE.N    ??RobotArmManager_Init_3
//   17 		me->itsRotatingArmJoint[pos] = NULL;
        MOVS     R1,#+0
        ADD      R3,R0,R2, LSL #+2
        STR      R1,[R3, #+12]
//   18 	}
        ADDS     R2,R2,#+1
        B.N      ??RobotArmManager_Init_2
//   19 
//   20 	for (pos = 0; pos < 2; ++pos) {
??RobotArmManager_Init_3:
        MOVS     R1,#+0
??RobotArmManager_Init_4:
        CMP      R1,#+2
        BGE.N    ??RobotArmManager_Init_5
//   21 		me->itsSlidingArmJoint[pos] = NULL;
        MOVS     R2,#+0
        ADD      R3,R0,R1, LSL #+2
        STR      R2,[R3, #+28]
//   22 	}
        ADDS     R1,R1,#+1
        B.N      ??RobotArmManager_Init_4
//   23 }
??RobotArmManager_Init_5:
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//   24 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function RobotArmManager_Cleanup
        THUMB
//   25 void RobotArmManager_Cleanup(RobotArmManager* const me) {
RobotArmManager_Cleanup:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//   26 	cleanUpRelations(me);
        MOVS     R0,R4
          CFI FunCall cleanUpRelations
        BL       cleanUpRelations
//   27 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock1
//   28 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function RobotArmManager_computeTrajectory
        THUMB
//   29 void RobotArmManager_computeTrajectory(RobotArmManager* const me, int x, int y, int z, int t) {
RobotArmManager_computeTrajectory:
        PUSH     {R3-R11,LR}
          CFI R14 Frame(CFA, -4)
          CFI R11 Frame(CFA, -8)
          CFI R10 Frame(CFA, -12)
          CFI R9 Frame(CFA, -16)
          CFI R8 Frame(CFA, -20)
          CFI R7 Frame(CFA, -24)
          CFI R6 Frame(CFA, -28)
          CFI R5 Frame(CFA, -32)
          CFI R4 Frame(CFA, -36)
          CFI CFA R13+40
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
//   30 	Action* ap = NULL;
        MOVS     R8,#+0
//   31 
//   32 	me->nSteps = 0;
        MOVS     R0,#+0
        STR      R0,[R4, #+4]
//   33 	RobotArmManager_clearItsAction(me);
        MOVS     R0,R4
          CFI FunCall RobotArmManager_clearItsAction
        BL       RobotArmManager_clearItsAction
//   34 
//   35 	ap = Action_Create();
          CFI FunCall Action_Create
        BL       Action_Create
        MOV      R9,R0
//   36 	RobotArmManager_addItsAction(me, ap);
        MOV      R1,R9
        MOVS     R0,R4
          CFI FunCall RobotArmManager_addItsAction
        BL       RobotArmManager_addItsAction
//   37 
//   38 	ap->rotatingArmJoint1 = 1;
        MOVS     R0,#+1
        STR      R0,[R9, #+0]
//   39 	ap->rotatingArmJoint2 = 2;
        MOVS     R0,#+2
        STR      R0,[R9, #+4]
//   40 	ap->rotatingArmJoint3 = 3;
        MOVS     R0,#+3
        STR      R0,[R9, #+8]
//   41 	ap->rotatingArmJoint4 = 4;
        MOVS     R0,#+4
        STR      R0,[R9, #+12]
//   42 
//   43 	ap->slidingArmJoint1 = 10;
        MOVS     R0,#+10
        STR      R0,[R9, #+16]
//   44 	ap->slidingArmJoint2 = 20;
        MOVS     R0,#+20
        STR      R0,[R9, #+20]
//   45 
//   46 	ap->manipulatorForce = 0;
        MOVS     R0,#+0
        STR      R0,[R9, #+24]
//   47 	ap->manipulatorOpen = 1;
        MOVS     R0,#+1
        STR      R0,[R9, #+28]
//   48 
//   49 	ap = Action_Create();
          CFI FunCall Action_Create
        BL       Action_Create
        MOV      R10,R0
//   50 	RobotArmManager_addItsAction(me, ap);
        MOV      R1,R10
        MOVS     R0,R4
          CFI FunCall RobotArmManager_addItsAction
        BL       RobotArmManager_addItsAction
//   51 
//   52 	ap->rotatingArmJoint1 = 1;
        MOVS     R0,#+1
        STR      R0,[R10, #+0]
//   53 	ap->rotatingArmJoint2 = 2;
        MOVS     R0,#+2
        STR      R0,[R10, #+4]
//   54 	ap->rotatingArmJoint3 = 3;
        MOVS     R0,#+3
        STR      R0,[R10, #+8]
//   55 	ap->rotatingArmJoint4 = 4;
        MOVS     R0,#+4
        STR      R0,[R10, #+12]
//   56 
//   57 	ap->slidingArmJoint1 = 10;
        MOVS     R0,#+10
        STR      R0,[R10, #+16]
//   58 	ap->slidingArmJoint2 = 20;
        MOVS     R0,#+20
        STR      R0,[R10, #+20]
//   59 
//   60 	ap->manipulatorForce = 10;
        MOVS     R0,#+10
        STR      R0,[R10, #+24]
//   61 	ap->manipulatorOpen = 0;
        MOVS     R0,#+0
        STR      R0,[R10, #+28]
//   62 
//   63 	ap = Action_Create();
          CFI FunCall Action_Create
        BL       Action_Create
        MOV      R11,R0
//   64 	RobotArmManager_addItsAction(me, ap);
        MOV      R1,R11
        MOVS     R0,R4
          CFI FunCall RobotArmManager_addItsAction
        BL       RobotArmManager_addItsAction
//   65 
//   66 	ap->rotatingArmJoint1 = 0;
        MOVS     R0,#+0
        STR      R0,[R11, #+0]
//   67 	ap->rotatingArmJoint2 = 0;
        MOVS     R0,#+0
        STR      R0,[R11, #+4]
//   68 	ap->rotatingArmJoint3 = 0;
        MOVS     R0,#+0
        STR      R0,[R11, #+8]
//   69 	ap->rotatingArmJoint4 = 0;
        MOVS     R0,#+0
        STR      R0,[R11, #+12]
//   70 
//   71 	ap->slidingArmJoint1 = 0;
        MOVS     R0,#+0
        STR      R0,[R11, #+16]
//   72 	ap->slidingArmJoint2 = 0;
        MOVS     R0,#+0
        STR      R0,[R11, #+20]
//   73 
//   74 	ap->manipulatorForce = 10;
        MOVS     R0,#+10
        STR      R0,[R11, #+24]
//   75 	ap->manipulatorOpen = 0;
        MOVS     R0,#+0
        STR      R0,[R11, #+28]
//   76 
//   77 	me->nSteps = 3;
        MOVS     R0,#+3
        STR      R0,[R4, #+4]
//   78 }
        POP      {R0,R4-R11,PC}   ;; return
          CFI EndBlock cfiBlock2
//   79 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function RobotArmManager_executeStep
        THUMB
//   80 int RobotArmManager_executeStep(RobotArmManager* const me) {
RobotArmManager_executeStep:
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
//   81 	int actionValue = 0;
        MOVS     R8,#+0
//   82 	int step = me->currentStep;
        LDR      R7,[R6, #+0]
//   83 	int status = 0;
        MOVS     R5,#+0
//   84 
//   85 	if (me->itsAction[step]) {
        ADD      R0,R6,R7, LSL #+2
        LDR      R0,[R0, #+36]
        CMP      R0,#+0
        BEQ.N    ??RobotArmManager_executeStep_0
//   86 		actionValue = me->itsAction[step]->rotatingArmJoint1;
        ADD      R0,R6,R7, LSL #+2
        LDR      R0,[R0, #+36]
        LDR      R9,[R0, #+0]
//   87 		status = RotatingArmJoint_rotate(me->itsRotatingArmJoint[0], actionValue);
        MOV      R1,R9
        LDR      R0,[R6, #+12]
          CFI FunCall RotatingArmJoint_rotate
        BL       RotatingArmJoint_rotate
        MOVS     R4,R0
//   88 		if (status) {
        CMP      R4,#+0
        BEQ.N    ??RobotArmManager_executeStep_1
//   89 			return status;
        MOVS     R0,R4
        B.N      ??RobotArmManager_executeStep_2
//   90 		}
//   91 
//   92 		actionValue = me->itsAction[step]->rotatingArmJoint2;
??RobotArmManager_executeStep_1:
        ADD      R0,R6,R7, LSL #+2
        LDR      R0,[R0, #+36]
        LDR      R8,[R0, #+4]
//   93 		status = RotatingArmJoint_rotate(me->itsRotatingArmJoint[1], actionValue);
        MOV      R1,R8
        LDR      R0,[R6, #+16]
          CFI FunCall RotatingArmJoint_rotate
        BL       RotatingArmJoint_rotate
        MOVS     R5,R0
//   94 		if (status) {
        CMP      R5,#+0
        BEQ.N    ??RobotArmManager_executeStep_3
//   95 			return status;
        MOVS     R0,R5
        B.N      ??RobotArmManager_executeStep_2
//   96 		}
//   97 
//   98 		actionValue = me->itsAction[step]->rotatingArmJoint3;
??RobotArmManager_executeStep_3:
        ADD      R0,R6,R7, LSL #+2
        LDR      R0,[R0, #+36]
        LDR      R9,[R0, #+8]
//   99 		status = RotatingArmJoint_rotate(me->itsRotatingArmJoint[2], actionValue);
        MOV      R1,R9
        LDR      R0,[R6, #+20]
          CFI FunCall RotatingArmJoint_rotate
        BL       RotatingArmJoint_rotate
        MOVS     R4,R0
//  100 		if (status) {
        CMP      R4,#+0
        BEQ.N    ??RobotArmManager_executeStep_4
//  101 			return status;
        MOVS     R0,R4
        B.N      ??RobotArmManager_executeStep_2
//  102 		}
//  103 
//  104 		actionValue = me->itsAction[step]->rotatingArmJoint4;
??RobotArmManager_executeStep_4:
        ADD      R0,R6,R7, LSL #+2
        LDR      R0,[R0, #+36]
        LDR      R8,[R0, #+12]
//  105 		status = RotatingArmJoint_rotate(me->itsRotatingArmJoint[3], actionValue);
        MOV      R1,R8
        LDR      R0,[R6, #+24]
          CFI FunCall RotatingArmJoint_rotate
        BL       RotatingArmJoint_rotate
        MOVS     R5,R0
//  106 		if (status) {
        CMP      R5,#+0
        BEQ.N    ??RobotArmManager_executeStep_5
//  107 			return status;
        MOVS     R0,R5
        B.N      ??RobotArmManager_executeStep_2
//  108 		}
//  109 
//  110 		actionValue = me->itsAction[step]->slidingArmJoint1;
??RobotArmManager_executeStep_5:
        ADD      R0,R6,R7, LSL #+2
        LDR      R0,[R0, #+36]
        LDR      R9,[R0, #+16]
//  111 		status = SlidingArmJoint_setLength(me->itsSlidingArmJoint[0], actionValue);
        MOV      R1,R9
        LDR      R0,[R6, #+28]
          CFI FunCall SlidingArmJoint_setLength
        BL       SlidingArmJoint_setLength
        MOVS     R4,R0
//  112 		if (status) {
        CMP      R4,#+0
        BEQ.N    ??RobotArmManager_executeStep_6
//  113 			return status;
        MOVS     R0,R4
        B.N      ??RobotArmManager_executeStep_2
//  114 		}
//  115 
//  116 		actionValue = me->itsAction[step]->slidingArmJoint2;
??RobotArmManager_executeStep_6:
        ADD      R0,R6,R7, LSL #+2
        LDR      R0,[R0, #+36]
        LDR      R10,[R0, #+20]
//  117 		status = SlidingArmJoint_setLength(me->itsSlidingArmJoint[1], actionValue);
        MOV      R1,R10
        LDR      R0,[R6, #+32]
          CFI FunCall SlidingArmJoint_setLength
        BL       SlidingArmJoint_setLength
        MOVS     R5,R0
//  118 		if (status) {
        CMP      R5,#+0
        BEQ.N    ??RobotArmManager_executeStep_7
//  119 			return status;
        MOVS     R0,R5
        B.N      ??RobotArmManager_executeStep_2
//  120 		}
//  121 
//  122 		actionValue = me->itsAction[step]->manipulatorForce;
??RobotArmManager_executeStep_7:
        ADD      R0,R6,R7, LSL #+2
        LDR      R0,[R0, #+36]
        LDR      R8,[R0, #+24]
//  123 		status = GraspingManipulator_setMaxForce(me->itsGraspingManipulator, actionValue);
        MOV      R1,R8
        LDR      R0,[R6, #+8]
          CFI FunCall GraspingManipulator_setMaxForce
        BL       GraspingManipulator_setMaxForce
        MOVS     R4,R0
//  124 		if (status) {
        CMP      R4,#+0
        BEQ.N    ??RobotArmManager_executeStep_8
//  125 			return status;
        MOVS     R0,R4
        B.N      ??RobotArmManager_executeStep_2
//  126 		}
//  127 
//  128 		if (me->itsAction[step]->manipulatorOpen) {
??RobotArmManager_executeStep_8:
        ADD      R0,R6,R7, LSL #+2
        LDR      R0,[R0, #+36]
        LDR      R0,[R0, #+28]
        CMP      R0,#+0
        BEQ.N    ??RobotArmManager_executeStep_9
//  129 			status = GraspingManipulator_open(me->itsGraspingManipulator);
        LDR      R0,[R6, #+8]
          CFI FunCall GraspingManipulator_open
        BL       GraspingManipulator_open
        MOVS     R5,R0
        B.N      ??RobotArmManager_executeStep_0
//  130 		}
//  131 		else {
//  132 			status = GraspingManipulator_close(me->itsGraspingManipulator);
??RobotArmManager_executeStep_9:
        LDR      R0,[R6, #+8]
          CFI FunCall GraspingManipulator_close
        BL       GraspingManipulator_close
        MOVS     R5,R0
//  133 		}
//  134 	}
//  135 
//  136 	return status;
??RobotArmManager_executeStep_0:
        MOVS     R0,R5
??RobotArmManager_executeStep_2:
        POP      {R4-R10,PC}      ;; return
//  137 }
          CFI EndBlock cfiBlock3
//  138 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function RobotArmManager_graspAt
        THUMB
//  139 int RobotArmManager_graspAt(RobotArmManager* const me, int x, int y, int z, int t) {
RobotArmManager_graspAt:
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
//  140 	me->currentStep = -1;
        MOVS     R0,#-1
        STR      R0,[R4, #+0]
//  141 	me->nSteps = 0;
        MOVS     R0,#+0
        STR      R0,[R4, #+4]
//  142 	RobotArmManager_zero(me);
        MOVS     R0,R4
          CFI FunCall RobotArmManager_zero
        BL       RobotArmManager_zero
//  143 	RobotArmManager_computeTrajectory(me, x, y, z, t);
        STR      R8,[SP, #+0]
        MOVS     R3,R7
        MOVS     R2,R6
        MOVS     R1,R5
        MOVS     R0,R4
          CFI FunCall RobotArmManager_computeTrajectory
        BL       RobotArmManager_computeTrajectory
//  144 
//  145 	if (me->nSteps == 0) {
        LDR      R0,[R4, #+4]
        CMP      R0,#+0
        BNE.N    ??RobotArmManager_graspAt_0
//  146 		me->status = -1;
        MOVS     R0,#-1
        STR      R0,[R4, #+436]
        B.N      ??RobotArmManager_graspAt_1
//  147 	}
//  148 	else {
//  149 		do {
//  150 			me->currentStep++;
??RobotArmManager_graspAt_0:
        LDR      R0,[R4, #+0]
        ADDS     R0,R0,#+1
        STR      R0,[R4, #+0]
//  151 			me->status = RobotArmManager_executeStep(me);
        MOVS     R0,R4
          CFI FunCall RobotArmManager_executeStep
        BL       RobotArmManager_executeStep
        STR      R0,[R4, #+436]
//  152 		} while (me->status == 0 && me->currentStep < me->nSteps);
        LDR      R0,[R4, #+436]
        CMP      R0,#+0
        BNE.N    ??RobotArmManager_graspAt_1
        LDR      R0,[R4, #+0]
        LDR      R1,[R4, #+4]
        CMP      R0,R1
        BCC.N    ??RobotArmManager_graspAt_0
//  153 	}
//  154 
//  155 	return me->status;
??RobotArmManager_graspAt_1:
        LDR      R0,[R4, #+436]
        POP      {R1,R2,R4-R8,PC}  ;; return
//  156 }
          CFI EndBlock cfiBlock4
//  157 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function RobotArmManager_zero
        THUMB
//  158 int RobotArmManager_zero(RobotArmManager* const me) {
RobotArmManager_zero:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
//  159 	int j;
//  160 
//  161 	for (j = 0; j < 4; ++j) {
        MOVS     R5,#+0
??RobotArmManager_zero_0:
        CMP      R5,#+4
        BGE.N    ??RobotArmManager_zero_1
//  162 		if (me->itsRotatingArmJoint[j] == NULL) {
        ADD      R0,R4,R5, LSL #+2
        LDR      R0,[R0, #+12]
        CMP      R0,#+0
        BNE.N    ??RobotArmManager_zero_2
//  163 			return -1;
        MOVS     R0,#-1
        B.N      ??RobotArmManager_zero_3
//  164 		}
//  165 
//  166 		if (RotatingArmJoint_zero(me->itsRotatingArmJoint[j])) {
??RobotArmManager_zero_2:
        ADD      R0,R4,R5, LSL #+2
        LDR      R0,[R0, #+12]
          CFI FunCall RotatingArmJoint_zero
        BL       RotatingArmJoint_zero
        CMP      R0,#+0
        BEQ.N    ??RobotArmManager_zero_4
//  167 			return -1;
        MOVS     R0,#-1
        B.N      ??RobotArmManager_zero_3
//  168 		}
//  169 	}
??RobotArmManager_zero_4:
        ADDS     R5,R5,#+1
        B.N      ??RobotArmManager_zero_0
//  170 
//  171 	for (j = 0; j < 2; ++j) {
??RobotArmManager_zero_1:
        MOVS     R6,#+0
??RobotArmManager_zero_5:
        CMP      R6,#+2
        BGE.N    ??RobotArmManager_zero_6
//  172 		if (me->itsSlidingArmJoint[j] == NULL) {
        ADD      R0,R4,R6, LSL #+2
        LDR      R0,[R0, #+28]
        CMP      R0,#+0
        BNE.N    ??RobotArmManager_zero_7
//  173 			return -1;
        MOVS     R0,#-1
        B.N      ??RobotArmManager_zero_3
//  174 		}
//  175 
//  176 		if (SlidingArmJoint_zero(me->itsSlidingArmJoint[j])) {
??RobotArmManager_zero_7:
        ADD      R0,R4,R6, LSL #+2
        LDR      R0,[R0, #+28]
          CFI FunCall SlidingArmJoint_zero
        BL       SlidingArmJoint_zero
        CMP      R0,#+0
        BEQ.N    ??RobotArmManager_zero_8
//  177 			return -1;
        MOVS     R0,#-1
        B.N      ??RobotArmManager_zero_3
//  178 		}
//  179 	}
??RobotArmManager_zero_8:
        ADDS     R6,R6,#+1
        B.N      ??RobotArmManager_zero_5
//  180 
//  181 	if (me->itsGraspingManipulator == NULL) {
??RobotArmManager_zero_6:
        LDR      R0,[R4, #+8]
        CMP      R0,#+0
        BNE.N    ??RobotArmManager_zero_9
//  182 		return -1;
        MOVS     R0,#-1
        B.N      ??RobotArmManager_zero_3
//  183 	}
//  184 	
//  185 	if (GraspingManipulator_open(me->itsGraspingManipulator)) {
??RobotArmManager_zero_9:
        LDR      R0,[R4, #+8]
          CFI FunCall GraspingManipulator_open
        BL       GraspingManipulator_open
        CMP      R0,#+0
        BEQ.N    ??RobotArmManager_zero_10
//  186 		return -1;
        MOVS     R0,#-1
        B.N      ??RobotArmManager_zero_3
//  187 	}
//  188 
//  189 	return 0;
??RobotArmManager_zero_10:
        MOVS     R0,#+0
??RobotArmManager_zero_3:
        POP      {R4-R6,PC}       ;; return
//  190 }
          CFI EndBlock cfiBlock5
//  191 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function RobotArmManager_getItsGraspingManipulator
          CFI NoCalls
        THUMB
//  192 GraspingManipulator* RobotArmManager_getItsGraspingManipulator(const RobotArmManager* const me) {
//  193 	return (GraspingManipulator*)me->itsGraspingManipulator;
RobotArmManager_getItsGraspingManipulator:
        LDR      R0,[R0, #+8]
        BX       LR               ;; return
//  194 }
          CFI EndBlock cfiBlock6
//  195 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function RobotArmManager_setItsGraspingManipulator
          CFI NoCalls
        THUMB
//  196 void RobotArmManager_setItsGraspingManipulator(RobotArmManager* const me, GraspingManipulator* p_GraspingManipulator) {
//  197 	me->itsGraspingManipulator = p_GraspingManipulator;
RobotArmManager_setItsGraspingManipulator:
        STR      R1,[R0, #+8]
//  198 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock7
//  199 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function RobotArmManager_getItsRotatingArmJoint
          CFI NoCalls
        THUMB
//  200 unsigned int* RobotArmManager_getItsRotatingArmJoint(const RobotArmManager* const me) {
//  201 	return (unsigned int*)&(me->itsRotatingArmJoint[0]);
RobotArmManager_getItsRotatingArmJoint:
        ADDS     R0,R0,#+12
        BX       LR               ;; return
//  202 }
          CFI EndBlock cfiBlock8
//  203 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function RobotArmManager_addItsRotatingArmJoint
          CFI NoCalls
        THUMB
//  204 void RobotArmManager_addItsRotatingArmJoint(RobotArmManager* const me, RotatingArmJoint* p_RotatingArmJoint) {
//  205 	int pos;
//  206 
//  207 	for (pos = 0; pos < 4; ++pos) {
RobotArmManager_addItsRotatingArmJoint:
        MOVS     R3,#+0
??RobotArmManager_addItsRotatingArmJoint_0:
        CMP      R3,#+4
        BGE.N    ??RobotArmManager_addItsRotatingArmJoint_1
//  208 		if (!me->itsRotatingArmJoint[pos]) {
        ADD      R2,R0,R3, LSL #+2
        LDR      R2,[R2, #+12]
        CMP      R2,#+0
        BNE.N    ??RobotArmManager_addItsRotatingArmJoint_2
//  209 			me->itsRotatingArmJoint[pos] = p_RotatingArmJoint;
        ADD      R2,R0,R3, LSL #+2
        STR      R1,[R2, #+12]
//  210 			break;
        B.N      ??RobotArmManager_addItsRotatingArmJoint_1
//  211 		}
//  212 	}
??RobotArmManager_addItsRotatingArmJoint_2:
        ADDS     R3,R3,#+1
        B.N      ??RobotArmManager_addItsRotatingArmJoint_0
//  213 }
??RobotArmManager_addItsRotatingArmJoint_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock9
//  214 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function RobotArmManager_removeItsRotatingArmJoint
          CFI NoCalls
        THUMB
//  215 void RobotArmManager_removeItsRotatingArmJoint(RobotArmManager* const me, RotatingArmJoint* p_RotatingArmJoint) {
RobotArmManager_removeItsRotatingArmJoint:
        PUSH     {R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
//  216 	int pos;
//  217 
//  218 	for (pos = 0; pos < 4; ++pos) {
        MOVS     R2,#+0
??RobotArmManager_removeItsRotatingArmJoint_0:
        CMP      R2,#+4
        BGE.N    ??RobotArmManager_removeItsRotatingArmJoint_1
//  219 		if (me->itsRotatingArmJoint[pos] == p_RotatingArmJoint) {
        ADD      R3,R0,R2, LSL #+2
        LDR      R3,[R3, #+12]
        CMP      R3,R1
        BNE.N    ??RobotArmManager_removeItsRotatingArmJoint_2
//  220 			me->itsRotatingArmJoint[pos] = NULL;
        MOVS     R3,#+0
        ADD      R4,R0,R2, LSL #+2
        STR      R3,[R4, #+12]
//  221 			break;
        B.N      ??RobotArmManager_removeItsRotatingArmJoint_1
//  222 		}
//  223 	}
??RobotArmManager_removeItsRotatingArmJoint_2:
        ADDS     R2,R2,#+1
        B.N      ??RobotArmManager_removeItsRotatingArmJoint_0
//  224 }
??RobotArmManager_removeItsRotatingArmJoint_1:
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock10
//  225 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function RobotArmManager_clearItsRotatingArmJoint
          CFI NoCalls
        THUMB
//  226 void RobotArmManager_clearItsRotatingArmJoint(RobotArmManager* const me) {
//  227 	int pos;
//  228 
//  229 	for (pos = 0; pos < 4; ++pos) {
RobotArmManager_clearItsRotatingArmJoint:
        MOVS     R1,#+0
??RobotArmManager_clearItsRotatingArmJoint_0:
        CMP      R1,#+4
        BGE.N    ??RobotArmManager_clearItsRotatingArmJoint_1
//  230 		me->itsRotatingArmJoint[pos] = NULL;
        MOVS     R2,#+0
        ADD      R3,R0,R1, LSL #+2
        STR      R2,[R3, #+12]
//  231 	}
        ADDS     R1,R1,#+1
        B.N      ??RobotArmManager_clearItsRotatingArmJoint_0
//  232 }
??RobotArmManager_clearItsRotatingArmJoint_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock11
//  233 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function RobotArmManager_getItsSlidingArmJoint
          CFI NoCalls
        THUMB
//  234 unsigned int* RobotArmManager_getItsSlidingArmJoint(const RobotArmManager* const me) {
//  235 	return (unsigned int*)&(me->itsSlidingArmJoint[0]);
RobotArmManager_getItsSlidingArmJoint:
        ADDS     R0,R0,#+28
        BX       LR               ;; return
//  236 }
          CFI EndBlock cfiBlock12
//  237 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function RobotArmManager_addItsSlidingArmJoint
          CFI NoCalls
        THUMB
//  238 void RobotArmManager_addItsSlidingArmJoint(RobotArmManager* const me, SlidingArmJoint* p_SlidingArmJoint) {
//  239 	int pos;
//  240 
//  241 	for (pos = 0; pos < 2; ++pos) {
RobotArmManager_addItsSlidingArmJoint:
        MOVS     R3,#+0
??RobotArmManager_addItsSlidingArmJoint_0:
        CMP      R3,#+2
        BGE.N    ??RobotArmManager_addItsSlidingArmJoint_1
//  242 		if (!me->itsSlidingArmJoint[pos]) {
        ADD      R2,R0,R3, LSL #+2
        LDR      R2,[R2, #+28]
        CMP      R2,#+0
        BNE.N    ??RobotArmManager_addItsSlidingArmJoint_2
//  243 			me->itsSlidingArmJoint[pos] = p_SlidingArmJoint;
        ADD      R2,R0,R3, LSL #+2
        STR      R1,[R2, #+28]
//  244 			break;
        B.N      ??RobotArmManager_addItsSlidingArmJoint_1
//  245 		}
//  246 	}
??RobotArmManager_addItsSlidingArmJoint_2:
        ADDS     R3,R3,#+1
        B.N      ??RobotArmManager_addItsSlidingArmJoint_0
//  247 }
??RobotArmManager_addItsSlidingArmJoint_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock13
//  248 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function RobotArmManager_removeItsSlidingAmJoint
          CFI NoCalls
        THUMB
//  249 void RobotArmManager_removeItsSlidingAmJoint(RobotArmManager* const me, SlidingArmJoint* p_SlidingArmJoint) {
RobotArmManager_removeItsSlidingAmJoint:
        PUSH     {R4}
          CFI R4 Frame(CFA, -4)
          CFI CFA R13+4
//  250 	int pos;
//  251 
//  252 	for (pos = 0; pos < 2; ++pos) {
        MOVS     R2,#+0
??RobotArmManager_removeItsSlidingAmJoint_0:
        CMP      R2,#+2
        BGE.N    ??RobotArmManager_removeItsSlidingAmJoint_1
//  253 		if (me->itsSlidingArmJoint[pos] == p_SlidingArmJoint) {
        ADD      R3,R0,R2, LSL #+2
        LDR      R3,[R3, #+28]
        CMP      R3,R1
        BNE.N    ??RobotArmManager_removeItsSlidingAmJoint_2
//  254 			me->itsSlidingArmJoint[pos] = NULL;
        MOVS     R3,#+0
        ADD      R4,R0,R2, LSL #+2
        STR      R3,[R4, #+28]
//  255 			break;
        B.N      ??RobotArmManager_removeItsSlidingAmJoint_1
//  256 		}
//  257 	}
??RobotArmManager_removeItsSlidingAmJoint_2:
        ADDS     R2,R2,#+1
        B.N      ??RobotArmManager_removeItsSlidingAmJoint_0
//  258 }
??RobotArmManager_removeItsSlidingAmJoint_1:
        POP      {R4}
          CFI R4 SameValue
          CFI CFA R13+0
        BX       LR               ;; return
          CFI EndBlock cfiBlock14
//  259 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock15 Using cfiCommon0
          CFI Function RobotArmManager_clearItsSlidingArmJoint
          CFI NoCalls
        THUMB
//  260 void RobotArmManager_clearItsSlidingArmJoint(RobotArmManager* const me) {
//  261 	int pos;
//  262 
//  263 	for (pos = 0; pos < 2; ++pos) {
RobotArmManager_clearItsSlidingArmJoint:
        MOVS     R1,#+0
??RobotArmManager_clearItsSlidingArmJoint_0:
        CMP      R1,#+2
        BGE.N    ??RobotArmManager_clearItsSlidingArmJoint_1
//  264 		me->itsSlidingArmJoint[pos] = NULL;
        MOVS     R2,#+0
        ADD      R3,R0,R1, LSL #+2
        STR      R2,[R3, #+28]
//  265 	}
        ADDS     R1,R1,#+1
        B.N      ??RobotArmManager_clearItsSlidingArmJoint_0
//  266 }
??RobotArmManager_clearItsSlidingArmJoint_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock15
//  267 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock16 Using cfiCommon0
          CFI Function RobotArmManager_getItsAction
          CFI NoCalls
        THUMB
//  268 unsigned int* RobotArmManager_getItsAction(const RobotArmManager* const me) {
//  269 	return (unsigned int*)&(me->itsAction[0]);
RobotArmManager_getItsAction:
        ADDS     R0,R0,#+36
        BX       LR               ;; return
//  270 }
          CFI EndBlock cfiBlock16
//  271 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock17 Using cfiCommon0
          CFI Function RobotArmManager_addItsAction
          CFI NoCalls
        THUMB
//  272 void RobotArmManager_addItsAction(RobotArmManager* const me, Action* p_Action) {
//  273 	int pos;
//  274 
//  275 	for (pos = 0; pos < 100; ++pos) {
RobotArmManager_addItsAction:
        MOVS     R3,#+0
??RobotArmManager_addItsAction_0:
        CMP      R3,#+100
        BGE.N    ??RobotArmManager_addItsAction_1
//  276 		if (!me->itsAction[pos]) {
        ADD      R2,R0,R3, LSL #+2
        LDR      R2,[R2, #+36]
        CMP      R2,#+0
        BNE.N    ??RobotArmManager_addItsAction_2
//  277 			me->itsAction[pos] = p_Action;
        ADD      R2,R0,R3, LSL #+2
        STR      R1,[R2, #+36]
//  278 			break;
        B.N      ??RobotArmManager_addItsAction_1
//  279 		}
//  280 	}
??RobotArmManager_addItsAction_2:
        ADDS     R3,R3,#+1
        B.N      ??RobotArmManager_addItsAction_0
//  281 }
??RobotArmManager_addItsAction_1:
        BX       LR               ;; return
          CFI EndBlock cfiBlock17
//  282 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock18 Using cfiCommon0
          CFI Function RobotArmManager_removeItsAction
        THUMB
//  283 void RobotArmManager_removeItsAction(RobotArmManager* const me, Action* p_Action) {
RobotArmManager_removeItsAction:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
//  284 	int pos;
//  285 
//  286 	for (pos = 0; pos < 100; ++pos) {
        MOVS     R6,#+0
??RobotArmManager_removeItsAction_0:
        CMP      R6,#+100
        BGE.N    ??RobotArmManager_removeItsAction_1
//  287 		if (me->itsAction[pos] == p_Action) {
        ADD      R0,R4,R6, LSL #+2
        LDR      R0,[R0, #+36]
        CMP      R0,R5
        BNE.N    ??RobotArmManager_removeItsAction_2
//  288 			Action_Delete(me->itsAction[pos]);
        ADD      R0,R4,R6, LSL #+2
        LDR      R0,[R0, #+36]
          CFI FunCall Action_Delete
        BL       Action_Delete
//  289 			me->itsAction[pos] = NULL;
        MOVS     R0,#+0
        ADD      R1,R4,R6, LSL #+2
        STR      R0,[R1, #+36]
//  290 			break;
        B.N      ??RobotArmManager_removeItsAction_1
//  291 		}
//  292 	}
??RobotArmManager_removeItsAction_2:
        ADDS     R6,R6,#+1
        B.N      ??RobotArmManager_removeItsAction_0
//  293 }
??RobotArmManager_removeItsAction_1:
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock18
//  294 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock19 Using cfiCommon0
          CFI Function RobotArmManager_clearItsAction
        THUMB
//  295 void RobotArmManager_clearItsAction(RobotArmManager* const me) {
RobotArmManager_clearItsAction:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
//  296 	int pos;
//  297 
//  298 	for (pos = 0; pos < 100; ++pos) {
        MOVS     R5,#+0
??RobotArmManager_clearItsAction_0:
        CMP      R5,#+100
        BGE.N    ??RobotArmManager_clearItsAction_1
//  299 		Action_Delete(me->itsAction[pos]);
        ADD      R0,R4,R5, LSL #+2
        LDR      R0,[R0, #+36]
          CFI FunCall Action_Delete
        BL       Action_Delete
//  300 		me->itsAction[pos] = NULL;
        MOVS     R0,#+0
        ADD      R1,R4,R5, LSL #+2
        STR      R0,[R1, #+36]
//  301 	}
        ADDS     R5,R5,#+1
        B.N      ??RobotArmManager_clearItsAction_0
//  302 }
??RobotArmManager_clearItsAction_1:
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock19
//  303 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock20 Using cfiCommon0
          CFI Function RobotArmManager_Create
        THUMB
//  304 RobotArmManager* RobotArmManager_Create(void) {
RobotArmManager_Create:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  305 	RobotArmManager* me = (RobotArmManager*)malloc(sizeof(RobotArmManager));
        MOV      R0,#+440
          CFI FunCall malloc
        BL       malloc
        MOVS     R4,R0
//  306 
//  307 	if (me != NULL) {
        CMP      R4,#+0
        BEQ.N    ??RobotArmManager_Create_0
//  308 		RobotArmManager_Init(me);
        MOVS     R0,R4
          CFI FunCall RobotArmManager_Init
        BL       RobotArmManager_Init
//  309 	}
//  310 
//  311 	return me;
??RobotArmManager_Create_0:
        MOVS     R0,R4
        POP      {R4,PC}          ;; return
//  312 }
          CFI EndBlock cfiBlock20
//  313 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock21 Using cfiCommon0
          CFI Function RobotArmManager_Destroy
        THUMB
//  314 void RobotArmManager_Destroy(RobotArmManager* const me) {
RobotArmManager_Destroy:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  315 	if (me != NULL) {
        CMP      R4,#+0
        BEQ.N    ??RobotArmManager_Destroy_0
//  316 		RobotArmManager_Cleanup(me);
        MOVS     R0,R4
          CFI FunCall RobotArmManager_Cleanup
        BL       RobotArmManager_Cleanup
//  317 	}
//  318 
//  319 	free(me);
??RobotArmManager_Destroy_0:
        MOVS     R0,R4
          CFI FunCall free
        BL       free
//  320 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock21
//  321 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock22 Using cfiCommon0
          CFI Function cleanUpRelations
          CFI NoCalls
        THUMB
//  322 static void cleanUpRelations(RobotArmManager* const me) {
//  323 	if (me->itsGraspingManipulator != NULL) {
cleanUpRelations:
        LDR      R1,[R0, #+8]
        CMP      R1,#+0
        BEQ.N    ??cleanUpRelations_0
//  324 		me->itsGraspingManipulator = NULL;
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
//  325 	}
//  326 }
??cleanUpRelations_0:
        BX       LR               ;; return
          CFI EndBlock cfiBlock22

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
// 1 148 bytes in section .text
// 
// 1 148 bytes of CODE memory
//
//Errors: none
//Warnings: none
