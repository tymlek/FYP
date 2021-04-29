///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.22.2.15995/W32 for ARM      23/Apr/2018  02:41:31
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\04_ECG\ECG\ECG_Module.c
//    Command line =  
//        -f C:\Users\Tim\AppData\Local\Temp\EWD3DB.tmp
//        (C:\Users\Tim\Programming\Code\ARM_32\Patterns\04_ECG\ECG\ECG_Module.c
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
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\04_ECG\ECG\Debug\List\ECG_Module.s
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

        EXTERN TMDQueue_insert
        EXTERN TimeMarkedData_Create
        EXTERN free
        EXTERN malloc
        EXTERN rand

        PUBLIC ECG_Module_Cleanup
        PUBLIC ECG_Module_Create
        PUBLIC ECG_Module_Destroy
        PUBLIC ECG_Module_Init
        PUBLIC ECG_Module_acquireValue
        PUBLIC ECG_Module_getItsTMDQueue
        PUBLIC ECG_Module_setItsTMDQueue
        PUBLIC ECG_Module_setLeadsPair
        
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
        
// C:\Users\Tim\Programming\Code\ARM_32\Patterns\04_ECG\ECG\ECG_Module.c
//    1 #include <stdlib.h>
//    2 #include "ECG_Module.h"
//    3 #include "TMDQueue.h"
//    4 
//    5 static void cleanUpRelations(ECG_Module* const me);
//    6 
//    7 /* Constructor and Destructor */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function ECG_Module_Init
          CFI NoCalls
        THUMB
//    8 void ECG_Module_Init(ECG_Module* const me) {
//    9 	me->dataNum = 0;
ECG_Module_Init:
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   10 	me->itsTMDQueue = NULL;
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
//   11 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//   12 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function ECG_Module_Cleanup
        THUMB
//   13 void ECG_Module_Cleanup(ECG_Module* const me) {
ECG_Module_Cleanup:
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
          CFI Function ECG_Module_acquireValue
        THUMB
//   18 void ECG_Module_acquireValue(ECG_Module* const me) {
ECG_Module_acquireValue:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
//   19 	TimeMarkedData* tmd = TimeMarkedData_Create();
          CFI FunCall TimeMarkedData_Create
        BL       TimeMarkedData_Create
        MOVS     R5,R0
//   20 
//   21 	tmd->dataValue = rand();
          CFI FunCall rand
        BL       rand
        STR      R0,[R5, #+4]
//   22 	tmd->timeInterval = ++me->dataNum;
        LDR      R0,[R4, #+0]
        ADDS     R0,R0,#+1
        STR      R0,[R4, #+0]
        LDR      R0,[R4, #+0]
        STR      R0,[R5, #+0]
//   23 
//   24 	TMDQueue_insert(me->itsTMDQueue, tmd);
        MOVS     R1,R5
        LDR      R0,[R4, #+12]
          CFI FunCall TMDQueue_insert
        BL       TMDQueue_insert
//   25 }
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock2
//   26 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function ECG_Module_setLeadsPair
          CFI NoCalls
        THUMB
//   27 void ECG_Module_setLeadsPair(ECG_Module* const me, int l1, int l2) {
//   28 	me->lead1 = l1;
ECG_Module_setLeadsPair:
        STR      R1,[R0, #+4]
//   29 	me->lead2 = l2;
        STR      R2,[R0, #+8]
//   30 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//   31 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function ECG_Module_getItsTMDQueue
          CFI NoCalls
        THUMB
//   32 struct TMDQueue* ECG_Module_getItsTMDQueue(const ECG_Module* const me) {
//   33 	return (struct TMDQueue*)me->itsTMDQueue;
ECG_Module_getItsTMDQueue:
        LDR      R0,[R0, #+12]
        BX       LR               ;; return
//   34 }
          CFI EndBlock cfiBlock4
//   35 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function ECG_Module_setItsTMDQueue
          CFI NoCalls
        THUMB
//   36 void ECG_Module_setItsTMDQueue(ECG_Module* const me, struct TMDQueue* p_TMDQueue) {
//   37 	me->itsTMDQueue = p_TMDQueue;
ECG_Module_setItsTMDQueue:
        STR      R1,[R0, #+12]
//   38 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock5
//   39 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function ECG_Module_Create
        THUMB
//   40 ECG_Module* ECG_Module_Create() {
ECG_Module_Create:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//   41 	ECG_Module* me = (ECG_Module*)malloc(sizeof(ECG_Module));
        MOVS     R0,#+16
          CFI FunCall malloc
        BL       malloc
        MOVS     R4,R0
//   42 
//   43 	if (me != NULL) {
        CMP      R4,#+0
        BEQ.N    ??ECG_Module_Create_0
//   44 		ECG_Module_Init(me);
        MOVS     R0,R4
          CFI FunCall ECG_Module_Init
        BL       ECG_Module_Init
//   45 	}
//   46 
//   47 	return me;
??ECG_Module_Create_0:
        MOVS     R0,R4
        POP      {R4,PC}          ;; return
//   48 }
          CFI EndBlock cfiBlock6
//   49 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function ECG_Module_Destroy
        THUMB
//   50 void ECG_Module_Destroy(ECG_Module* const me) {
ECG_Module_Destroy:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//   51 	if (me != NULL) {
        CMP      R4,#+0
        BEQ.N    ??ECG_Module_Destroy_0
//   52 		ECG_Module_Cleanup(me);
        MOVS     R0,R4
          CFI FunCall ECG_Module_Cleanup
        BL       ECG_Module_Cleanup
//   53 	}
//   54 
//   55 	free(me);
??ECG_Module_Destroy_0:
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
//   58 static void cleanUpRelations(ECG_Module* const me) {
//   59 	if (me->itsTMDQueue != NULL) {
cleanUpRelations:
        LDR      R1,[R0, #+12]
        CMP      R1,#+0
//   60 		me->itsTMDQueue;
//   61 	}
//   62 }
??cleanUpRelations_0:
        BX       LR               ;; return
          CFI EndBlock cfiBlock8

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
// 124 bytes in section .text
// 
// 124 bytes of CODE memory
//
//Errors: none
//Warnings: 1
