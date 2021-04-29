///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.22.2.15995/W32 for ARM      23/Apr/2018  02:50:34
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\04_ECG\ECGcpp\ECG_Module.cpp
//    Command line =  
//        -f C:\Users\Tim\AppData\Local\Temp\EW2104.tmp
//        (C:\Users\Tim\Programming\Code\ARM_32\Patterns\04_ECG\ECGcpp\ECG_Module.cpp
//        -lC
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\04_ECG\ECGcpp\Debug\List
//        -lA
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\04_ECG\ECGcpp\Debug\List
//        -o
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\04_ECG\ECGcpp\Debug\Obj
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 --fpu=None --dlib_config "C:\Program Files (x86)\IAR
//        Systems\Embedded Workbench 8.0\arm\INC\c\DLib_Config_Normal.h" -On
//        --c++ --no_exceptions --no_rtti --no_static_destruction)
//    Locale       =  C
//    List file    =  
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\04_ECG\ECGcpp\Debug\List\ECG_Module.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__CPP_Exceptions", "Disabled"
        RTMODEL "__CPP_Language", "C++14"
        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "0"
        RTMODEL "__dlib_full_locale_support", "0"
        RTMODEL "__dlib_version", "6"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN _ZN8TMDQueue6insertEP14TimeMarkedData
        EXTERN _Znwj
        EXTERN rand

        PUBLIC _ZN10ECG_Module12acquireValueEv
        PUBLIC _ZN10ECG_Module12setLeadsPairEii
        PUBLIC _ZN10ECG_Module14getItsTMDQueueEv
        PUBLIC _ZN10ECG_Module14setItsTMDQueueEP8TMDQueue
        PUBLIC _ZN14TimeMarkedData12setDataValueEi
        PUBLIC _ZN14TimeMarkedData15setTimeIntervalEi
        PUBLIC _ZN14TimeMarkedDataC1Ev
        
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
        
// C:\Users\Tim\Programming\Code\ARM_32\Patterns\04_ECG\ECGcpp\ECG_Module.cpp
//    1 #include <stdlib.h>
//    2 #include "ECG_Module.h"
//    3 #include "TMDQueue.h"

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN14TimeMarkedDataC1Ev
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function _ZN14TimeMarkedDataC1Ev
          CFI NoCalls
        THUMB
// __code __interwork __softfp TimeMarkedData::TimeMarkedData()
_ZN14TimeMarkedDataC1Ev:
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        BX       LR               ;; return
          CFI EndBlock cfiBlock0

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN14TimeMarkedData15setTimeIntervalEi
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function _ZN14TimeMarkedData15setTimeIntervalEi
          CFI NoCalls
        THUMB
// __interwork __softfp void TimeMarkedData::setTimeInterval(int)
_ZN14TimeMarkedData15setTimeIntervalEi:
        STR      R1,[R0, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock1

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN14TimeMarkedData12setDataValueEi
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function _ZN14TimeMarkedData12setDataValueEi
          CFI NoCalls
        THUMB
// __interwork __softfp void TimeMarkedData::setDataValue(int)
_ZN14TimeMarkedData12setDataValueEi:
        STR      R1,[R0, #+4]
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//    4 
//    5 
//    6 /* Operations */

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function _ZN10ECG_Module12acquireValueEv
        THUMB
//    7 void ECG_Module::acquireValue() {
_ZN10ECG_Module12acquireValueEv:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
//    8 	TimeMarkedData* tmd = new TimeMarkedData();
        MOVS     R0,#+12
          CFI FunCall _Znwj
        BL       _Znwj
        CMP      R0,#+0
        BEQ.N    ??acquireValue_0
          CFI FunCall _ZN14TimeMarkedDataC1Ev
        BL       _ZN14TimeMarkedDataC1Ev
        MOVS     R5,R0
        B.N      ??acquireValue_1
??acquireValue_0:
        MOVS     R5,#+0
//    9 
//   10 	tmd->setDataValue(rand());
??acquireValue_1:
          CFI FunCall rand
        BL       rand
        MOVS     R1,R0
        MOVS     R0,R5
          CFI FunCall _ZN14TimeMarkedData12setDataValueEi
        BL       _ZN14TimeMarkedData12setDataValueEi
//   11 	tmd->setTimeInterval(++(this->dataNum));
        LDR      R0,[R4, #+0]
        ADDS     R0,R0,#+1
        STR      R0,[R4, #+0]
        LDR      R1,[R4, #+0]
        MOVS     R0,R5
          CFI FunCall _ZN14TimeMarkedData15setTimeIntervalEi
        BL       _ZN14TimeMarkedData15setTimeIntervalEi
//   12 
//   13 	this->itsTMDQueue->insert(tmd);
        MOVS     R1,R5
        LDR      R0,[R4, #+12]
          CFI FunCall _ZN8TMDQueue6insertEP14TimeMarkedData
        BL       _ZN8TMDQueue6insertEP14TimeMarkedData
//   14 }
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock3
//   15 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function _ZN10ECG_Module12setLeadsPairEii
          CFI NoCalls
        THUMB
//   16 void ECG_Module::setLeadsPair(int l1, int l2) {
//   17 	this->lead1 = l1;
_ZN10ECG_Module12setLeadsPairEii:
        STR      R1,[R0, #+4]
//   18 	this->lead2 = l2;
        STR      R2,[R0, #+8]
//   19 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock4
//   20 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function _ZN10ECG_Module14getItsTMDQueueEv
          CFI NoCalls
        THUMB
//   21 TMDQueue* ECG_Module::getItsTMDQueue() {
//   22 	return this->itsTMDQueue;
_ZN10ECG_Module14getItsTMDQueueEv:
        LDR      R0,[R0, #+12]
        BX       LR               ;; return
//   23 }
          CFI EndBlock cfiBlock5
//   24 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function _ZN10ECG_Module14setItsTMDQueueEP8TMDQueue
          CFI NoCalls
        THUMB
//   25 void ECG_Module::setItsTMDQueue(TMDQueue* p_TMDQueue) {
//   26 	this->itsTMDQueue = p_TMDQueue;
_ZN10ECG_Module14setItsTMDQueueEP8TMDQueue:
        STR      R1,[R0, #+12]
//   27 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock6

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
// 96 bytes in section .text
// 
// 74 bytes of CODE memory (+ 22 bytes shared)
//
//Errors: none
//Warnings: 1
