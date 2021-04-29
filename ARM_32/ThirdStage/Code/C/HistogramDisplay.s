///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.22.2.15995/W32 for ARM      23/Apr/2018  02:33:24
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\04_ECG\ECG\HistogramDisplay.c
//    Command line =  
//        -f C:\Users\Tim\AppData\Local\Temp\EW68AF.tmp
//        (C:\Users\Tim\Programming\Code\ARM_32\Patterns\04_ECG\ECG\HistogramDisplay.c
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
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\04_ECG\ECG\Debug\List\HistogramDisplay.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "0"
        RTMODEL "__dlib_full_locale_support", "0"
        RTMODEL "__dlib_version", "6"
        RTMODEL "__iar_require _Printf", ""
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN TMDQueue_getNextIndex
        EXTERN TMDQueue_remove
        EXTERN TimeMarkedData_Create
        EXTERN free
        EXTERN malloc
        EXTERN printf

        PUBLIC HistogramDisplay_Cleanup
        PUBLIC HistogramDisplay_Create
        PUBLIC HistogramDisplay_Destroy
        PUBLIC HistogramDisplay_Init
        PUBLIC HistogramDisplay_getItsTMDQueue
        PUBLIC HistogramDisplay_getValue
        PUBLIC HistogramDisplay_setItsTMDQueue
        PUBLIC HistogramDisplay_updateHistogram
        
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
        
// C:\Users\Tim\Programming\Code\ARM_32\Patterns\04_ECG\ECG\HistogramDisplay.c
//    1 #include <stdlib.h>
//    2 #include "HistogramDisplay.h"
//    3 #include "TMDQueue.h"
//    4 
//    5 static void cleanUpRelations(HistogramDisplay* const me);
//    6 
//    7 /* Constructor and Destructor */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function HistogramDisplay_Init
          CFI NoCalls
        THUMB
//    8 void HistogramDisplay_Init(HistogramDisplay* const me) {
//    9 	me->index = 0;
HistogramDisplay_Init:
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   10 	me->itsTMDQueue = NULL;
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
//   11 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//   12 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function HistogramDisplay_Cleanup
        THUMB
//   13 void HistogramDisplay_Cleanup(HistogramDisplay* const me) {
HistogramDisplay_Cleanup:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//   14 	cleanUpRelations(me);
        MOVS     R0,R4
          CFI FunCall cleanUpRelations
        BL       cleanUpRelations
//   15 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock1
//   16 
//   17 /* Operations */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function HistogramDisplay_getValue
        THUMB
//   18 void HistogramDisplay_getValue(HistogramDisplay* const me) {
HistogramDisplay_getValue:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
//   19 	TimeMarkedData* tmd = TimeMarkedData_Create();
          CFI FunCall TimeMarkedData_Create
        BL       TimeMarkedData_Create
        MOVS     R5,R0
//   20 
//   21 	tmd = TMDQueue_remove(me->itsTMDQueue, me->index);
        LDR      R1,[R4, #+0]
        LDR      R0,[R4, #+4]
          CFI FunCall TMDQueue_remove
        BL       TMDQueue_remove
        MOVS     R6,R0
//   22 
//   23 	printf("Histogram index: %d Time Interval: %d Data Value: %d\n"
//   24 		, me->index, tmd->timeInterval, tmd->dataValue);
        LDR      R3,[R6, #+4]
        LDR      R2,[R6, #+0]
        LDR      R1,[R4, #+0]
        LDR.N    R0,??DataTable1
          CFI FunCall printf
        BL       printf
//   25 
//   26 	me->index = TMDQueue_getNextIndex(me->itsTMDQueue, me->index);
        LDR      R1,[R4, #+0]
        LDR      R0,[R4, #+4]
          CFI FunCall TMDQueue_getNextIndex
        BL       TMDQueue_getNextIndex
        STR      R0,[R4, #+0]
//   27 }
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     ?_0
//   28 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function HistogramDisplay_updateHistogram
          CFI NoCalls
        THUMB
//   29 void HistogramDisplay_updateHistogram(HistogramDisplay* me) {
//   30 
//   31 }
HistogramDisplay_updateHistogram:
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//   32 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function HistogramDisplay_getItsTMDQueue
          CFI NoCalls
        THUMB
//   33 struct TMDQueue* HistogramDisplay_getItsTMDQueue(const HistogramDisplay* const me) {
//   34 	return (struct TMDQueue*)me->itsTMDQueue;
HistogramDisplay_getItsTMDQueue:
        LDR      R0,[R0, #+4]
        BX       LR               ;; return
//   35 }
          CFI EndBlock cfiBlock4
//   36 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function HistogramDisplay_setItsTMDQueue
          CFI NoCalls
        THUMB
//   37 void HistogramDisplay_setItsTMDQueue(HistogramDisplay* const me, struct TMDQueue* p_TMDQueue) {
//   38 	me->itsTMDQueue = p_TMDQueue;
HistogramDisplay_setItsTMDQueue:
        STR      R1,[R0, #+4]
//   39 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock5
//   40 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function HistogramDisplay_Create
        THUMB
//   41 HistogramDisplay* HistogramDisplay_Create() {
HistogramDisplay_Create:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//   42 	HistogramDisplay* me = (HistogramDisplay*)malloc(sizeof(HistogramDisplay));
        MOVS     R0,#+8
          CFI FunCall malloc
        BL       malloc
        MOVS     R4,R0
//   43 
//   44 	if (me != NULL) {
        CMP      R4,#+0
        BEQ.N    ??HistogramDisplay_Create_0
//   45 		HistogramDisplay_Init(me);
        MOVS     R0,R4
          CFI FunCall HistogramDisplay_Init
        BL       HistogramDisplay_Init
//   46 	}
//   47 
//   48 	return me;
??HistogramDisplay_Create_0:
        MOVS     R0,R4
        POP      {R4,PC}          ;; return
//   49 }
          CFI EndBlock cfiBlock6

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function HistogramDisplay_Destroy
        THUMB
//   50 void HistogramDisplay_Destroy(HistogramDisplay* const me) {
HistogramDisplay_Destroy:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//   51 	if (me != NULL) {
        CMP      R4,#+0
        BEQ.N    ??HistogramDisplay_Destroy_0
//   52 		HistogramDisplay_Cleanup(me);
        MOVS     R0,R4
          CFI FunCall HistogramDisplay_Cleanup
        BL       HistogramDisplay_Cleanup
//   53 	}
//   54 
//   55 	free(me);
??HistogramDisplay_Destroy_0:
        MOVS     R0,R4
          CFI FunCall free
        BL       free
//   56 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock7
//   57 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function cleanUpRelations
          CFI NoCalls
        THUMB
//   58 static void cleanUpRelations(HistogramDisplay* const me) {
//   59 	if (me->itsTMDQueue != NULL) {
cleanUpRelations:
        LDR      R1,[R0, #+4]
        CMP      R1,#+0
        BEQ.N    ??cleanUpRelations_0
//   60 		me->itsTMDQueue = NULL;
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
//   61 	}
//   62 }
??cleanUpRelations_0:
        BX       LR               ;; return
          CFI EndBlock cfiBlock8

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_0:
        DC8 48H, 69H, 73H, 74H, 6FH, 67H, 72H, 61H
        DC8 6DH, 20H, 69H, 6EH, 64H, 65H, 78H, 3AH
        DC8 20H, 25H, 64H, 20H, 54H, 69H, 6DH, 65H
        DC8 20H, 49H, 6EH, 74H, 65H, 72H, 76H, 61H
        DC8 6CH, 3AH, 20H, 25H, 64H, 20H, 44H, 61H
        DC8 74H, 61H, 20H, 56H, 61H, 6CH, 75H, 65H
        DC8 3AH, 20H, 25H, 64H, 0AH, 0
        DC8 0, 0

        END
// 
//  56 bytes in section .rodata
// 138 bytes in section .text
// 
// 138 bytes of CODE  memory
//  56 bytes of CONST memory
//
//Errors: none
//Warnings: none
