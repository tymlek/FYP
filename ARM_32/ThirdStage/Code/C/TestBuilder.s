///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.22.2.15995/W32 for ARM      23/Apr/2018  02:41:31
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\04_ECG\ECG\TestBuilder.c
//    Command line =  
//        -f C:\Users\Tim\AppData\Local\Temp\EWD3DD.tmp
//        (C:\Users\Tim\Programming\Code\ARM_32\Patterns\04_ECG\ECG\TestBuilder.c
//        -lC
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\04_ECG\ECG\Debug\List
//        -lA
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\04_ECG\ECG\Debug\List
//        -o C:\Users\Tim\Programming\Code\ARM_32\Patterns\04_ECG\ECG\Debug\Obj
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 --fpu=None --dlib_config "C:\Program Files (x86)\IAR
//        Systems\Embedded Workbench 8.0\arm\INC\c\DLib_Config_Normal.h" -On)
//    Locale       =  C
//    List file    =  
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\04_ECG\ECG\Debug\List\TestBuilder.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "0"
        RTMODEL "__dlib_full_locale_support", "0"
        RTMODEL "__dlib_version", "6"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN ECG_Module_Cleanup
        EXTERN ECG_Module_Init
        EXTERN ECG_Module_setItsTMDQueue
        EXTERN HistogramDisplay_Cleanup
        EXTERN HistogramDisplay_Init
        EXTERN HistogramDisplay_setItsTMDQueue
        EXTERN TMDQueue_Cleanup
        EXTERN TMDQueue_Init
        EXTERN free
        EXTERN malloc

        PUBLIC TestBuilder_Cleanup
        PUBLIC TestBuilder_Create
        PUBLIC TestBuilder_Destroy
        PUBLIC TestBuilder_Init
        PUBLIC TestBuilder_getItsECG_Module
        PUBLIC TestBuilder_getItsHistogram
        PUBLIC TestBuilder_getItsTMDQueue
        
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
        
// C:\Users\Tim\Programming\Code\ARM_32\Patterns\04_ECG\ECG\TestBuilder.c
//    1 #include <stdlib.h>
//    2 #include "TestBuilder.h"
//    3 
//    4 static void initRelations(TestBuilder* const me);
//    5 static void cleanUpRelations(TestBuilder* const me);
//    6 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function TestBuilder_Init
        THUMB
//    7 void TestBuilder_Init(TestBuilder* const me) {
TestBuilder_Init:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//    8 	initRelations(me);
        MOVS     R0,R4
          CFI FunCall initRelations
        BL       initRelations
//    9 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock0
//   10 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function TestBuilder_Cleanup
        THUMB
//   11 void TestBuilder_Cleanup(TestBuilder* const me) {
TestBuilder_Cleanup:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//   12 	cleanUpRelations(me);
        MOVS     R0,R4
          CFI FunCall cleanUpRelations
        BL       cleanUpRelations
//   13 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock1
//   14 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function TestBuilder_getItsECG_Module
          CFI NoCalls
        THUMB
//   15 struct ECG_Module* TestBuilder_getItsECG_Module(const TestBuilder* const me) {
//   16 	return (ECG_Module*)&(me->itsECG_Module);
TestBuilder_getItsECG_Module:
        BX       LR               ;; return
//   17 }
          CFI EndBlock cfiBlock2
//   18 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function TestBuilder_getItsHistogram
          CFI NoCalls
        THUMB
//   19 struct HistogramDisplay* TestBuilder_getItsHistogram(const TestBuilder* const me) {
//   20 	return (HistogramDisplay*)&(me->itsHistogramDisplay);
TestBuilder_getItsHistogram:
        ADDS     R0,R0,#+16
        BX       LR               ;; return
//   21 }
          CFI EndBlock cfiBlock3
//   22 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function TestBuilder_getItsTMDQueue
          CFI NoCalls
        THUMB
//   23 struct TMDQueue* TestBuilder_getItsTMDQueue(const TestBuilder* const me) {
//   24 	return (TMDQueue*)&(me->itsTMEQueue);
TestBuilder_getItsTMDQueue:
        ADDS     R0,R0,#+24
        BX       LR               ;; return
//   25 }
          CFI EndBlock cfiBlock4
//   26 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function TestBuilder_Create
        THUMB
//   27 TestBuilder* TestBuilder_Create() {
TestBuilder_Create:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//   28 	TestBuilder* me = (TestBuilder*)malloc(sizeof(TestBuilder));
        MOVS     R0,#+112
          CFI FunCall malloc
        BL       malloc
        MOVS     R4,R0
//   29 
//   30 	if (me != NULL) {
        CMP      R4,#+0
        BEQ.N    ??TestBuilder_Create_0
//   31 		TestBuilder_Init(me);
        MOVS     R0,R4
          CFI FunCall TestBuilder_Init
        BL       TestBuilder_Init
//   32 	}
//   33 
//   34 	return me;
??TestBuilder_Create_0:
        MOVS     R0,R4
        POP      {R4,PC}          ;; return
//   35 }
          CFI EndBlock cfiBlock5

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function TestBuilder_Destroy
        THUMB
//   36 void TestBuilder_Destroy(TestBuilder* const me) {
TestBuilder_Destroy:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//   37 	if (me != NULL) {
        CMP      R4,#+0
        BEQ.N    ??TestBuilder_Destroy_0
//   38 		TestBuilder_Cleanup(me);
        MOVS     R0,R4
          CFI FunCall TestBuilder_Cleanup
        BL       TestBuilder_Cleanup
//   39 	}
//   40 
//   41 	free(me);
??TestBuilder_Destroy_0:
        MOVS     R0,R4
          CFI FunCall free
        BL       free
//   42 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock6
//   43 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function initRelations
        THUMB
//   44 static void initRelations(TestBuilder* const me) {
initRelations:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//   45 	ECG_Module_Init(&(me->itsECG_Module));
        MOVS     R0,R4
          CFI FunCall ECG_Module_Init
        BL       ECG_Module_Init
//   46 	HistogramDisplay_Init(&(me->itsHistogramDisplay));
        ADDS     R0,R4,#+16
          CFI FunCall HistogramDisplay_Init
        BL       HistogramDisplay_Init
//   47 	TMDQueue_Init(&(me->itsTMEQueue));
        ADDS     R0,R4,#+24
          CFI FunCall TMDQueue_Init
        BL       TMDQueue_Init
//   48 
//   49 	ECG_Module_setItsTMDQueue(&(me->itsECG_Module), &(me->itsTMEQueue));
        ADDS     R1,R4,#+24
        MOVS     R0,R4
          CFI FunCall ECG_Module_setItsTMDQueue
        BL       ECG_Module_setItsTMDQueue
//   50 	HistogramDisplay_setItsTMDQueue(&(me->itsHistogramDisplay), &(me->itsTMEQueue));
        ADDS     R1,R4,#+24
        ADDS     R0,R4,#+16
          CFI FunCall HistogramDisplay_setItsTMDQueue
        BL       HistogramDisplay_setItsTMDQueue
//   51 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock7

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function cleanUpRelations
        THUMB
//   52 static void cleanUpRelations(TestBuilder* const me) {
cleanUpRelations:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//   53 	TMDQueue_Cleanup(&(me->itsTMEQueue));
        ADDS     R0,R4,#+24
          CFI FunCall TMDQueue_Cleanup
        BL       TMDQueue_Cleanup
//   54 	HistogramDisplay_Cleanup(&(me->itsHistogramDisplay));
        ADDS     R0,R4,#+16
          CFI FunCall HistogramDisplay_Cleanup
        BL       HistogramDisplay_Cleanup
//   55 	ECG_Module_Cleanup(&(me->itsECG_Module));
        MOVS     R0,R4
          CFI FunCall ECG_Module_Cleanup
        BL       ECG_Module_Cleanup
//   56 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock8

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
// 158 bytes in section .text
// 
// 158 bytes of CODE memory
//
//Errors: none
//Warnings: none
