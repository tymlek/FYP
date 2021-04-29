///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.22.2.15995/W32 for ARM      23/Apr/2018  02:50:34
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\04_ECG\ECGcpp\HistogramDisplay.cpp
//    Command line =  
//        -f C:\Users\Tim\AppData\Local\Temp\EW2105.tmp
//        (C:\Users\Tim\Programming\Code\ARM_32\Patterns\04_ECG\ECGcpp\HistogramDisplay.cpp
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
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\04_ECG\ECGcpp\Debug\List\HistogramDisplay.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__CPP_Exceptions", "Disabled"
        RTMODEL "__CPP_Language", "C++14"
        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "0"
        RTMODEL "__dlib_full_locale_support", "0"
        RTMODEL "__dlib_version", "6"
        RTMODEL "__iar_require _Printf", ""
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN _ZN8TMDQueue12getNextIndexEi
        EXTERN _ZN8TMDQueue6removeEi
        EXTERN _Znwj
        EXTERN printf

        PUBLIC _ZN14TimeMarkedData12getDataValueEv
        PUBLIC _ZN14TimeMarkedData15getTimeIntervalEv
        PUBLIC _ZN14TimeMarkedDataC1Ev
        PUBLIC _ZN16HistogramDisplay14getItsTMDQueueEv
        PUBLIC _ZN16HistogramDisplay14setItsTMDQueueEP8TMDQueue
        PUBLIC _ZN16HistogramDisplay15updateHistogramEv
        PUBLIC _ZN16HistogramDisplay8getValueEv
        
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
        
// C:\Users\Tim\Programming\Code\ARM_32\Patterns\04_ECG\ECGcpp\HistogramDisplay.cpp
//    1 #include <stdlib.h>
//    2 #include "HistogramDisplay.h"
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
        SECTION_GROUP _ZN14TimeMarkedData15getTimeIntervalEv
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function _ZN14TimeMarkedData15getTimeIntervalEv
          CFI NoCalls
        THUMB
// __interwork __softfp int TimeMarkedData::getTimeInterval()
_ZN14TimeMarkedData15getTimeIntervalEv:
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock1

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN14TimeMarkedData12getDataValueEv
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function _ZN14TimeMarkedData12getDataValueEv
          CFI NoCalls
        THUMB
// __interwork __softfp int TimeMarkedData::getDataValue()
_ZN14TimeMarkedData12getDataValueEv:
        LDR      R0,[R0, #+4]
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//    4 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function _ZN16HistogramDisplay8getValueEv
        THUMB
//    5 void HistogramDisplay::getValue() {
_ZN16HistogramDisplay8getValueEv:
        PUSH     {R3-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI R7 Frame(CFA, -8)
          CFI R6 Frame(CFA, -12)
          CFI R5 Frame(CFA, -16)
          CFI R4 Frame(CFA, -20)
          CFI CFA R13+24
        MOVS     R4,R0
//    6 	TimeMarkedData* tmd = new TimeMarkedData();
        MOVS     R0,#+12
          CFI FunCall _Znwj
        BL       _Znwj
        CMP      R0,#+0
        BEQ.N    ??getValue_0
          CFI FunCall _ZN14TimeMarkedDataC1Ev
        BL       _ZN14TimeMarkedDataC1Ev
        MOVS     R5,R0
        B.N      ??getValue_1
??getValue_0:
        MOVS     R5,#+0
//    7 
//    8 	tmd = this->itsTMDQueue->remove(this->index);
??getValue_1:
        LDR      R1,[R4, #+0]
        LDR      R0,[R4, #+4]
          CFI FunCall _ZN8TMDQueue6removeEi
        BL       _ZN8TMDQueue6removeEi
        MOVS     R6,R0
//    9 
//   10 	printf("Histogram index: %d Time Interval: %d Data Value: %d\n"
//   11 		, this->index, tmd->getTimeInterval(), tmd->getDataValue());
        MOVS     R0,R6
          CFI FunCall _ZN14TimeMarkedData12getDataValueEv
        BL       _ZN14TimeMarkedData12getDataValueEv
        MOVS     R7,R0
        MOVS     R0,R6
          CFI FunCall _ZN14TimeMarkedData15getTimeIntervalEv
        BL       _ZN14TimeMarkedData15getTimeIntervalEv
        MOVS     R2,R0
        MOVS     R3,R7
        LDR      R1,[R4, #+0]
        LDR.N    R0,??DataTable0
          CFI FunCall printf
        BL       printf
//   12 
//   13 	this->index = this->itsTMDQueue->getNextIndex(this->index);
        LDR      R1,[R4, #+0]
        LDR      R0,[R4, #+4]
          CFI FunCall _ZN8TMDQueue12getNextIndexEi
        BL       _ZN8TMDQueue12getNextIndexEi
        STR      R0,[R4, #+0]
//   14 }
        POP      {R0,R4-R7,PC}    ;; return
          CFI EndBlock cfiBlock3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable0:
        DC32     ?_0
//   15 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function _ZN16HistogramDisplay15updateHistogramEv
          CFI NoCalls
        THUMB
//   16 void HistogramDisplay::updateHistogram() {
//   17 
//   18 }
_ZN16HistogramDisplay15updateHistogramEv:
        BX       LR               ;; return
          CFI EndBlock cfiBlock4
//   19 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function _ZN16HistogramDisplay14getItsTMDQueueEv
          CFI NoCalls
        THUMB
//   20 TMDQueue* HistogramDisplay::getItsTMDQueue() {
//   21 	return this->itsTMDQueue;
_ZN16HistogramDisplay14getItsTMDQueueEv:
        LDR      R0,[R0, #+4]
        BX       LR               ;; return
//   22 }
          CFI EndBlock cfiBlock5
//   23 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function _ZN16HistogramDisplay14setItsTMDQueueEP8TMDQueue
          CFI NoCalls
        THUMB
//   24 void HistogramDisplay::setItsTMDQueue(TMDQueue* p_TMDQueue) {
//   25 	this->itsTMDQueue = p_TMDQueue;
_ZN16HistogramDisplay14setItsTMDQueueEP8TMDQueue:
        STR      R1,[R0, #+4]
//   26 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock6

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
// 108 bytes in section .text
// 
// 86 bytes of CODE  memory (+ 22 bytes shared)
// 56 bytes of CONST memory
//
//Errors: none
//Warnings: 1
