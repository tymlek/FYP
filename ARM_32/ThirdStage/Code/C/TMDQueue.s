///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.22.2.15995/W32 for ARM      23/Apr/2018  02:33:25
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\04_ECG\ECG\TMDQueue.c
//    Command line =  
//        -f C:\Users\Tim\AppData\Local\Temp\EW693F.tmp
//        (C:\Users\Tim\Programming\Code\ARM_32\Patterns\04_ECG\ECG\TMDQueue.c
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
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\04_ECG\ECG\Debug\List\TMDQueue.s
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

        EXTERN TimeMarkedData_Cleanup
        EXTERN TimeMarkedData_Create
        EXTERN TimeMarkedData_setItsTMDQueue
        EXTERN free
        EXTERN malloc
        EXTERN printf

        PUBLIC TMDQueue_Cleanup
        PUBLIC TMDQueue_Create
        PUBLIC TMDQueue_Destroy
        PUBLIC TMDQueue_Init
        PUBLIC TMDQueue_getBuffer
        PUBLIC TMDQueue_getNextIndex
        PUBLIC TMDQueue_insert
        PUBLIC TMDQueue_isEmpty
        PUBLIC TMDQueue_remove
        
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
        
// C:\Users\Tim\Programming\Code\ARM_32\Patterns\04_ECG\ECG\TMDQueue.c
//    1 #include <stdlib.h>
//    2 #include "TMDQueue.h"
//    3 
//    4 static void initReleatioins(TMDQueue* const me);
//    5 static void cleanUpReleations(TMDQueue* const me);
//    6 
//    7 /* Constructor and Destructor */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function TMDQueue_Init
        THUMB
//    8 void TMDQueue_Init(TMDQueue* const me) {
TMDQueue_Init:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//    9 	me->head = 0;
        MOVS     R0,#+0
        STR      R0,[R4, #+0]
//   10 	me->size = 0;
        MOVS     R0,#+0
        STR      R0,[R4, #+4]
//   11 	initReleatioins(me);
        MOVS     R0,R4
          CFI FunCall initReleatioins
        BL       initReleatioins
//   12 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock0
//   13 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function TMDQueue_Cleanup
        THUMB
//   14 void TMDQueue_Cleanup(TMDQueue* const me) {
TMDQueue_Cleanup:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//   15 	cleanUpReleations(me);
        MOVS     R0,R4
          CFI FunCall cleanUpReleations
        BL       cleanUpReleations
//   16 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock1
//   17 
//   18 /* Operations */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function TMDQueue_getNextIndex
          CFI NoCalls
        THUMB
//   19 int TMDQueue_getNextIndex(TMDQueue* const me, int index) {
TMDQueue_getNextIndex:
        MOVS     R2,R0
//   20 	return (index + 1) % QUEUE_SIZE;
        ADDS     R1,R1,#+1
        MOVS     R0,#+20
        SDIV     R3,R1,R0
        MLS      R1,R0,R3,R1
        MOVS     R0,R1
        BX       LR               ;; return
//   21 }
          CFI EndBlock cfiBlock2
//   22 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function TMDQueue_insert
        THUMB
//   23 void TMDQueue_insert(TMDQueue* const me, struct TimeMarkedData* tmd) {
TMDQueue_insert:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
//   24 	printf("Inserting at: %d Data #: %d", me->head, tmd->timeInterval);
        LDR      R2,[R5, #+0]
        LDR      R1,[R4, #+0]
        LDR.N    R0,??DataTable2
          CFI FunCall printf
        BL       printf
//   25 	me->buffer[me->head] = tmd;
        LDR      R0,[R4, #+0]
        ADD      R0,R4,R0, LSL #+2
        STR      R5,[R0, #+8]
//   26 	me->head = TMDQueue_getNextIndex(me, me->head);
        LDR      R1,[R4, #+0]
        MOVS     R0,R4
          CFI FunCall TMDQueue_getNextIndex
        BL       TMDQueue_getNextIndex
        STR      R0,[R4, #+0]
//   27 
//   28 	if (me->size < QUEUE_SIZE) {
        LDR      R0,[R4, #+4]
        CMP      R0,#+20
        BGE.N    ??TMDQueue_insert_0
//   29 		++me->size;
        LDR      R0,[R4, #+4]
        ADDS     R0,R0,#+1
        STR      R0,[R4, #+4]
//   30 	}
//   31 
//   32 	printf("Storing data value: %d\n", tmd->dataValue);
??TMDQueue_insert_0:
        LDR      R1,[R5, #+4]
        LDR.N    R0,??DataTable2_1
          CFI FunCall printf
        BL       printf
//   33 }
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock3
//   34 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function TMDQueue_isEmpty
          CFI NoCalls
        THUMB
//   35 boolean TMDQueue_isEmpty(TMDQueue* const me) {
//   36 	return (boolean)(me->size == 0);
TMDQueue_isEmpty:
        LDR      R0,[R0, #+4]
        CMP      R0,#+0
        BNE.N    ??TMDQueue_isEmpty_0
        MOVS     R0,#+1
        B.N      ??TMDQueue_isEmpty_1
??TMDQueue_isEmpty_0:
        MOVS     R0,#+0
??TMDQueue_isEmpty_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
//   37 }
          CFI EndBlock cfiBlock4
//   38 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function TMDQueue_remove
        THUMB
//   39 struct TimeMarkedData* TMDQueue_remove(TMDQueue* const me, int index) {
TMDQueue_remove:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
//   40 	TimeMarkedData* tmd = TimeMarkedData_Create();
          CFI FunCall TimeMarkedData_Create
        BL       TimeMarkedData_Create
        MOVS     R6,R0
//   41 	tmd->timeInterval = -1;
        MOVS     R0,#-1
        STR      R0,[R6, #+0]
//   42 	tmd->dataValue = -9999;
        LDR.N    R0,??DataTable2_2  ;; 0xffffd8f1
        STR      R0,[R6, #+4]
//   43 
//   44 	if (!TMDQueue_isEmpty(me) && (index >= 0) && (index < QUEUE_SIZE)) {
        MOVS     R0,R4
          CFI FunCall TMDQueue_isEmpty
        BL       TMDQueue_isEmpty
        CMP      R0,#+0
        BNE.N    ??TMDQueue_remove_0
        CMP      R5,#+0
        BMI.N    ??TMDQueue_remove_0
        CMP      R5,#+20
        BGE.N    ??TMDQueue_remove_0
//   45 		tmd = me->buffer[index];
        ADD      R0,R4,R5, LSL #+2
        LDR      R0,[R0, #+8]
        MOVS     R6,R0
//   46 	}
//   47 
//   48 	return tmd;
??TMDQueue_remove_0:
        MOVS     R0,R6
        POP      {R4-R6,PC}       ;; return
//   49 }
          CFI EndBlock cfiBlock5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     ?_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     ?_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     0xffffd8f1
//   50 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function TMDQueue_getBuffer
          CFI NoCalls
        THUMB
//   51 int TMDQueue_getBuffer(const TMDQueue* const me) {
TMDQueue_getBuffer:
        MOVS     R1,R0
//   52 	int iter = 0;
        MOVS     R0,#+0
//   53 	
//   54 	return iter;
        BX       LR               ;; return
//   55 }
          CFI EndBlock cfiBlock6
//   56 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function TMDQueue_Create
        THUMB
//   57 TMDQueue* TMDQueue_Create(void) {
TMDQueue_Create:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//   58 	TMDQueue* me = (TMDQueue*)malloc(sizeof(TMDQueue));
        MOVS     R0,#+88
          CFI FunCall malloc
        BL       malloc
        MOVS     R4,R0
//   59 
//   60 	if (me != NULL) {
        CMP      R4,#+0
        BEQ.N    ??TMDQueue_Create_0
//   61 		TMDQueue_Init(me);
        MOVS     R0,R4
          CFI FunCall TMDQueue_Init
        BL       TMDQueue_Init
//   62 	}
//   63 
//   64 	return me;
??TMDQueue_Create_0:
        MOVS     R0,R4
        POP      {R4,PC}          ;; return
//   65 }
          CFI EndBlock cfiBlock7

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function TMDQueue_Destroy
        THUMB
//   66 void TMDQueue_Destroy(TMDQueue* const me) {
TMDQueue_Destroy:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//   67 	if (me != NULL) {
        CMP      R4,#+0
        BEQ.N    ??TMDQueue_Destroy_0
//   68 		TMDQueue_Cleanup(me);
        MOVS     R0,R4
          CFI FunCall TMDQueue_Cleanup
        BL       TMDQueue_Cleanup
//   69 	}
//   70 
//   71 	free(me);
??TMDQueue_Destroy_0:
        MOVS     R0,R4
          CFI FunCall free
        BL       free
//   72 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock8
//   73 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function initReleatioins
        THUMB
//   74 static void initReleatioins(TMDQueue* const me) {
initReleatioins:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
//   75 	int iter = 0;
        MOVS     R5,#+0
//   76 
//   77 	while (iter < QUEUE_SIZE) {
??initReleatioins_0:
        CMP      R5,#+20
        BGE.N    ??initReleatioins_1
//   78 		me->buffer[iter] = TimeMarkedData_Create();
          CFI FunCall TimeMarkedData_Create
        BL       TimeMarkedData_Create
        ADD      R1,R4,R5, LSL #+2
        STR      R0,[R1, #+8]
//   79 		//TimeMarkedData_Init(((me->buffer)[iter]));
//   80 		TimeMarkedData_setItsTMDQueue(((me->buffer)[iter]), me);
        MOVS     R1,R4
        ADD      R0,R4,R5, LSL #+2
        LDR      R0,[R0, #+8]
          CFI FunCall TimeMarkedData_setItsTMDQueue
        BL       TimeMarkedData_setItsTMDQueue
//   81 		++iter;
        ADDS     R5,R5,#+1
        B.N      ??initReleatioins_0
//   82 	}
//   83 }
??initReleatioins_1:
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock9
//   84 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function cleanUpReleations
        THUMB
//   85 static void cleanUpReleations(TMDQueue* const me) {
cleanUpReleations:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
//   86 	int iter = 0;
        MOVS     R5,#+0
//   87 
//   88 	while (iter < QUEUE_SIZE) {
??cleanUpReleations_0:
        CMP      R5,#+20
        BGE.N    ??cleanUpReleations_1
//   89 		TimeMarkedData_Cleanup(((me->buffer)[iter]));
        ADD      R0,R4,R5, LSL #+2
        LDR      R0,[R0, #+8]
          CFI FunCall TimeMarkedData_Cleanup
        BL       TimeMarkedData_Cleanup
//   90 		++iter;
        ADDS     R5,R5,#+1
        B.N      ??cleanUpReleations_0
//   91 	}
//   92 }
??cleanUpReleations_1:
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock10

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_0:
        DC8 "Inserting at: %d Data #: %d"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_1:
        DC8 "Storing data value: %d\012"

        END
// 
//  52 bytes in section .rodata
// 302 bytes in section .text
// 
// 302 bytes of CODE  memory
//  52 bytes of CONST memory
//
//Errors: none
//Warnings: none
