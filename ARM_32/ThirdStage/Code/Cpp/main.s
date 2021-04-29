///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.22.2.15995/W32 for ARM      23/Apr/2018  02:50:34
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\04_ECG\ECGcpp\main.cpp
//    Command line =  
//        -f C:\Users\Tim\AppData\Local\Temp\EW2106.tmp
//        (C:\Users\Tim\Programming\Code\ARM_32\Patterns\04_ECG\ECGcpp\main.cpp
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
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\04_ECG\ECGcpp\Debug\List\main.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__CPP_Exceptions", "Disabled"
        RTMODEL "__CPP_Language", "C++14"
        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "0"
        RTMODEL "__dlib_version", "6"
        RTMODEL "__iar_require _Printf", ""
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN _ZN10ECG_Module12acquireValueEv
        EXTERN _ZN10ECG_Module14setItsTMDQueueEP8TMDQueue
        EXTERN _ZN11TestBuilder15getItsHistogramEv
        EXTERN _ZN11TestBuilder16getItsECG_ModuleEv
        EXTERN _ZN16HistogramDisplay14setItsTMDQueueEP8TMDQueue
        EXTERN _ZN16HistogramDisplay8getValueEv
        EXTERN _ZdaPv
        EXTERN _ZdlPv
        EXTERN _Znwj
        EXTERN printf

        PUBLIC _ZN10ECG_ModuleC1Ev
        PUBLIC _ZN10ECG_ModuleD1Ev
        PUBLIC _ZN11TestBuilderC1Ev
        PUBLIC _ZN11TestBuilderD1Ev
        PUBLIC _ZN14TimeMarkedDataC1EP8TMDQueue
        PUBLIC _ZN16HistogramDisplayC1Ev
        PUBLIC _ZN16HistogramDisplayD1Ev
        PUBLIC _ZN8TMDQueueC1Ev
        PUBLIC _ZN8TMDQueueD1Ev
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
        
// C:\Users\Tim\Programming\Code\ARM_32\Patterns\04_ECG\ECGcpp\main.cpp
//    1 #include "TestBuilder.h"

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN10ECG_ModuleC1Ev
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function _ZN10ECG_ModuleC1Ev
          CFI NoCalls
        THUMB
// __code __interwork __softfp ECG_Module::ECG_Module()
_ZN10ECG_ModuleC1Ev:
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
        BX       LR               ;; return
          CFI EndBlock cfiBlock0

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN10ECG_ModuleD1Ev
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function _ZN10ECG_ModuleD1Ev
        THUMB
// __code __interwork __softfp ECG_Module::~ECG_Module()
_ZN10ECG_ModuleD1Ev:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
        LDR      R0,[R4, #+12]
        CMP      R0,#+0
        BEQ.N    `?~ECG_Module_0`
        LDR      R0,[R4, #+12]
          CFI FunCall _ZdlPv
        BL       _ZdlPv
`?~ECG_Module_0`:
        MOVS     R0,R4
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock1

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN16HistogramDisplayC1Ev
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function _ZN16HistogramDisplayC1Ev
          CFI NoCalls
        THUMB
// __code __interwork __softfp HistogramDisplay::HistogramDisplay()
_ZN16HistogramDisplayC1Ev:
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        BX       LR               ;; return
          CFI EndBlock cfiBlock2

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN16HistogramDisplayD1Ev
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function _ZN16HistogramDisplayD1Ev
        THUMB
// __code __interwork __softfp HistogramDisplay::~HistogramDisplay()
_ZN16HistogramDisplayD1Ev:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
        LDR      R0,[R4, #+4]
        CMP      R0,#+0
        BEQ.N    `?~HistogramDisplay_0`
        LDR      R0,[R4, #+4]
          CFI FunCall _ZdlPv
        BL       _ZdlPv
`?~HistogramDisplay_0`:
        MOVS     R0,R4
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock3

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN14TimeMarkedDataC1EP8TMDQueue
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function _ZN14TimeMarkedDataC1EP8TMDQueue
          CFI NoCalls
        THUMB
// __code __interwork __softfp TimeMarkedData::TimeMarkedData(TMDQueue *)
_ZN14TimeMarkedDataC1EP8TMDQueue:
        MOVS     R2,#+0
        STR      R2,[R0, #+4]
        MOVS     R2,#+0
        STR      R2,[R0, #+0]
        STR      R1,[R0, #+8]
        BX       LR               ;; return
          CFI EndBlock cfiBlock4

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN8TMDQueueC1Ev
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function _ZN8TMDQueueC1Ev
        THUMB
// __code __interwork __softfp TMDQueue::TMDQueue()
_ZN8TMDQueueC1Ev:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R0,#+0
        STR      R0,[R4, #+0]
        MOVS     R0,#+0
        STR      R0,[R4, #+4]
        MOVS     R5,#+0
??TMDQueue_0:
        CMP      R5,#+20
        BGE.N    ??TMDQueue_1
        MOVS     R0,#+12
          CFI FunCall _Znwj
        BL       _Znwj
        CMP      R0,#+0
        BEQ.N    ??TMDQueue_2
        MOVS     R1,R4
          CFI FunCall _ZN14TimeMarkedDataC1EP8TMDQueue
        BL       _ZN14TimeMarkedDataC1EP8TMDQueue
        B.N      ??TMDQueue_3
??TMDQueue_2:
        MOVS     R0,#+0
??TMDQueue_3:
        ADD      R1,R4,R5, LSL #+2
        STR      R0,[R1, #+8]
        ADDS     R5,R5,#+1
        B.N      ??TMDQueue_0
??TMDQueue_1:
        MOVS     R0,R4
        POP      {R1,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock5

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN8TMDQueueD1Ev
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function _ZN8TMDQueueD1Ev
        THUMB
// __code __interwork __softfp TMDQueue::~TMDQueue()
_ZN8TMDQueueD1Ev:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
        ADDS     R0,R4,#+8
          CFI FunCall _ZdaPv
        BL       _ZdaPv
        MOVS     R0,R4
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock6

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN11TestBuilderD1Ev
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function _ZN11TestBuilderD1Ev
        THUMB
// __code __interwork __softfp TestBuilder::~TestBuilder()
_ZN11TestBuilderD1Ev:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
        ADDS     R0,R4,#+104
          CFI FunCall _ZN16HistogramDisplayD1Ev
        BL       _ZN16HistogramDisplayD1Ev
        ADDS     R0,R4,#+88
          CFI FunCall _ZN10ECG_ModuleD1Ev
        BL       _ZN10ECG_ModuleD1Ev
        MOVS     R0,R4
          CFI FunCall _ZN8TMDQueueD1Ev
        BL       _ZN8TMDQueueD1Ev
        MOVS     R0,R4
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock7

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN11TestBuilderC1Ev
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function _ZN11TestBuilderC1Ev
        THUMB
// __code __interwork __softfp TestBuilder::TestBuilder()
_ZN11TestBuilderC1Ev:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
        MOVS     R0,R4
          CFI FunCall _ZN8TMDQueueC1Ev
        BL       _ZN8TMDQueueC1Ev
        ADDS     R0,R4,#+88
          CFI FunCall _ZN10ECG_ModuleC1Ev
        BL       _ZN10ECG_ModuleC1Ev
        ADDS     R0,R4,#+104
          CFI FunCall _ZN16HistogramDisplayC1Ev
        BL       _ZN16HistogramDisplayC1Ev
        MOVS     R1,R4
        ADDS     R0,R4,#+88
          CFI FunCall _ZN10ECG_Module14setItsTMDQueueEP8TMDQueue
        BL       _ZN10ECG_Module14setItsTMDQueueEP8TMDQueue
        MOVS     R1,R4
        ADDS     R0,R4,#+104
          CFI FunCall _ZN16HistogramDisplay14setItsTMDQueueEP8TMDQueue
        BL       _ZN16HistogramDisplay14setItsTMDQueueEP8TMDQueue
        MOVS     R0,R4
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock8
//    2 

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function main
        THUMB
//    3 int main() {
main:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
//    4 	int status = 0;
        MOVS     R5,#+0
//    5 
//    6 	TestBuilder* p_TestBuilder = new TestBuilder();
        MOVS     R0,#+112
          CFI FunCall _Znwj
        BL       _Znwj
        CMP      R0,#+0
        BEQ.N    ??main_1
          CFI FunCall _ZN11TestBuilderC1Ev
        BL       _ZN11TestBuilderC1Ev
        MOVS     R4,R0
        B.N      ??main_2
??main_1:
        MOVS     R4,#+0
//    7 
//    8 	p_TestBuilder->getItsECG_Module()->acquireValue();
??main_2:
        MOVS     R0,R4
          CFI FunCall _ZN11TestBuilder16getItsECG_ModuleEv
        BL       _ZN11TestBuilder16getItsECG_ModuleEv
          CFI FunCall _ZN10ECG_Module12acquireValueEv
        BL       _ZN10ECG_Module12acquireValueEv
//    9 	p_TestBuilder->getItsECG_Module()->acquireValue();
        MOVS     R0,R4
          CFI FunCall _ZN11TestBuilder16getItsECG_ModuleEv
        BL       _ZN11TestBuilder16getItsECG_ModuleEv
          CFI FunCall _ZN10ECG_Module12acquireValueEv
        BL       _ZN10ECG_Module12acquireValueEv
//   10 	p_TestBuilder->getItsECG_Module()->acquireValue();
        MOVS     R0,R4
          CFI FunCall _ZN11TestBuilder16getItsECG_ModuleEv
        BL       _ZN11TestBuilder16getItsECG_ModuleEv
          CFI FunCall _ZN10ECG_Module12acquireValueEv
        BL       _ZN10ECG_Module12acquireValueEv
//   11 	p_TestBuilder->getItsECG_Module()->acquireValue();
        MOVS     R0,R4
          CFI FunCall _ZN11TestBuilder16getItsECG_ModuleEv
        BL       _ZN11TestBuilder16getItsECG_ModuleEv
          CFI FunCall _ZN10ECG_Module12acquireValueEv
        BL       _ZN10ECG_Module12acquireValueEv
//   12 	p_TestBuilder->getItsECG_Module()->acquireValue();
        MOVS     R0,R4
          CFI FunCall _ZN11TestBuilder16getItsECG_ModuleEv
        BL       _ZN11TestBuilder16getItsECG_ModuleEv
          CFI FunCall _ZN10ECG_Module12acquireValueEv
        BL       _ZN10ECG_Module12acquireValueEv
//   13 	
//   14 	p_TestBuilder->getItsHistogram()->getValue();
        MOVS     R0,R4
          CFI FunCall _ZN11TestBuilder15getItsHistogramEv
        BL       _ZN11TestBuilder15getItsHistogramEv
          CFI FunCall _ZN16HistogramDisplay8getValueEv
        BL       _ZN16HistogramDisplay8getValueEv
//   15 	p_TestBuilder->getItsHistogram()->getValue();
        MOVS     R0,R4
          CFI FunCall _ZN11TestBuilder15getItsHistogramEv
        BL       _ZN11TestBuilder15getItsHistogramEv
          CFI FunCall _ZN16HistogramDisplay8getValueEv
        BL       _ZN16HistogramDisplay8getValueEv
//   16 	p_TestBuilder->getItsHistogram()->getValue();
        MOVS     R0,R4
          CFI FunCall _ZN11TestBuilder15getItsHistogramEv
        BL       _ZN11TestBuilder15getItsHistogramEv
          CFI FunCall _ZN16HistogramDisplay8getValueEv
        BL       _ZN16HistogramDisplay8getValueEv
//   17 	p_TestBuilder->getItsHistogram()->getValue();
        MOVS     R0,R4
          CFI FunCall _ZN11TestBuilder15getItsHistogramEv
        BL       _ZN11TestBuilder15getItsHistogramEv
          CFI FunCall _ZN16HistogramDisplay8getValueEv
        BL       _ZN16HistogramDisplay8getValueEv
//   18 	p_TestBuilder->getItsHistogram()->getValue();
        MOVS     R0,R4
          CFI FunCall _ZN11TestBuilder15getItsHistogramEv
        BL       _ZN11TestBuilder15getItsHistogramEv
          CFI FunCall _ZN16HistogramDisplay8getValueEv
        BL       _ZN16HistogramDisplay8getValueEv
//   19 
//   20 	printf("Done\n");
        LDR.N    R0,??main_0
          CFI FunCall printf
        BL       printf
//   21 
//   22 	delete p_TestBuilder;
        CMP      R4,#+0
        BEQ.N    ??main_3
        MOVS     R0,R4
          CFI FunCall _ZN11TestBuilderD1Ev
        BL       _ZN11TestBuilderD1Ev
          CFI FunCall _ZdlPv
        BL       _ZdlPv
//   23 
//   24 	return 0;
??main_3:
        MOVS     R0,#+0
        POP      {R1,R4,R5,PC}    ;; return
        DATA
??main_0:
        DC32     ?_0
//   25 }
          CFI EndBlock cfiBlock9

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_0:
        DC8 "Done\012"
        DC8 0, 0

        END
// 
//   8 bytes in section .rodata
// 372 bytes in section .text
// 
// 152 bytes of CODE  memory (+ 220 bytes shared)
//   8 bytes of CONST memory
//
//Errors: none
//Warnings: 3
