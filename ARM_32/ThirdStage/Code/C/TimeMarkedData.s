///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.22.2.15995/W32 for ARM      23/Apr/2018  02:33:24
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\04_ECG\ECG\TimeMarkedData.c
//    Command line =  
//        -f C:\Users\Tim\AppData\Local\Temp\EW692F.tmp
//        (C:\Users\Tim\Programming\Code\ARM_32\Patterns\04_ECG\ECG\TimeMarkedData.c
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
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\04_ECG\ECG\Debug\List\TimeMarkedData.s
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

        EXTERN free
        EXTERN malloc

        PUBLIC TimeMarkedData_Cleanup
        PUBLIC TimeMarkedData_Create
        PUBLIC TimeMarkedData_Destroy
        PUBLIC TimeMarkedData_Init
        PUBLIC TimeMarkedData_setItsTMDQueue
        
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
        
// C:\Users\Tim\Programming\Code\ARM_32\Patterns\04_ECG\ECG\TimeMarkedData.c
//    1 #include <stdlib.h>
//    2 #include "TimeMarkedData.h"
//    3 
//    4 /* Constructor and Destructor */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function TimeMarkedData_Init
          CFI NoCalls
        THUMB
//    5 void TimeMarkedData_Init(TimeMarkedData* const me) {
//    6 	me->dataValue = 0;
TimeMarkedData_Init:
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
//    7 	me->timeInterval = 0;
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//    8 	me->itsTMDQueue = NULL;
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
//    9 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//   10 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function TimeMarkedData_Cleanup
          CFI NoCalls
        THUMB
//   11 void TimeMarkedData_Cleanup(TimeMarkedData* const me) {
//   12 
//   13 }
TimeMarkedData_Cleanup:
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//   14 
//   15 /* Operations */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function TimeMarkedData_setItsTMDQueue
          CFI NoCalls
        THUMB
//   16 void TimeMarkedData_setItsTMDQueue(TimeMarkedData* const me, struct TMDQueue* p_TMDQueue) {
//   17 	me->itsTMDQueue = p_TMDQueue;
TimeMarkedData_setItsTMDQueue:
        STR      R1,[R0, #+8]
//   18 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//   19 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function TimeMarkedData_Create
        THUMB
//   20 TimeMarkedData* TimeMarkedData_Create() {
TimeMarkedData_Create:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//   21 	TimeMarkedData* me = (TimeMarkedData*)malloc(sizeof(TimeMarkedData));
        MOVS     R0,#+12
          CFI FunCall malloc
        BL       malloc
        MOVS     R4,R0
//   22 
//   23 	if (me != NULL) {
        CMP      R4,#+0
        BEQ.N    ??TimeMarkedData_Create_0
//   24 		TimeMarkedData_Init(me);
        MOVS     R0,R4
          CFI FunCall TimeMarkedData_Init
        BL       TimeMarkedData_Init
//   25 	}
//   26 
//   27 	return me;
??TimeMarkedData_Create_0:
        MOVS     R0,R4
        POP      {R4,PC}          ;; return
//   28 }
          CFI EndBlock cfiBlock3
//   29 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function TimeMarkedData_Destroy
        THUMB
//   30 void TimeMarkedData_Destroy(TimeMarkedData* const me) {
TimeMarkedData_Destroy:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//   31 	if (me != NULL) {
        CMP      R4,#+0
        BEQ.N    ??TimeMarkedData_Destroy_0
//   32 		TimeMarkedData_Cleanup(me);
        MOVS     R0,R4
          CFI FunCall TimeMarkedData_Cleanup
        BL       TimeMarkedData_Cleanup
//   33 	}
//   34 
//   35 	free(me);
??TimeMarkedData_Destroy_0:
        MOVS     R0,R4
          CFI FunCall free
        BL       free
//   36 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock4

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
