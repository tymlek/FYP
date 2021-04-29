///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.22.2.15995/W32 for ARM      23/Apr/2018  02:50:34
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\04_ECG\ECGcpp\TestBuilder.cpp
//    Command line =  
//        -f C:\Users\Tim\AppData\Local\Temp\EW2107.tmp
//        (C:\Users\Tim\Programming\Code\ARM_32\Patterns\04_ECG\ECGcpp\TestBuilder.cpp
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
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\04_ECG\ECGcpp\Debug\List\TestBuilder.s
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

        PUBLIC _ZN11TestBuilder14getItsTMDQueueEv
        PUBLIC _ZN11TestBuilder15getItsHistogramEv
        PUBLIC _ZN11TestBuilder16getItsECG_ModuleEv
        
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
        
// C:\Users\Tim\Programming\Code\ARM_32\Patterns\04_ECG\ECGcpp\TestBuilder.cpp
//    1 #include <stdlib.h>
//    2 #include "TestBuilder.h"
//    3 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function _ZN11TestBuilder16getItsECG_ModuleEv
          CFI NoCalls
        THUMB
//    4 ECG_Module* TestBuilder::getItsECG_Module() {
//    5 	return &(this->itsECG_Module);
_ZN11TestBuilder16getItsECG_ModuleEv:
        ADDS     R0,R0,#+88
        BX       LR               ;; return
//    6 }
          CFI EndBlock cfiBlock0
//    7 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function _ZN11TestBuilder15getItsHistogramEv
          CFI NoCalls
        THUMB
//    8 HistogramDisplay* TestBuilder::getItsHistogram() {
//    9 	return &(this->itsHistogramDisplay);
_ZN11TestBuilder15getItsHistogramEv:
        ADDS     R0,R0,#+104
        BX       LR               ;; return
//   10 }
          CFI EndBlock cfiBlock1
//   11 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function _ZN11TestBuilder14getItsTMDQueueEv
          CFI NoCalls
        THUMB
//   12 struct TMDQueue* TestBuilder::getItsTMDQueue() {
//   13 	return &(this->itsTMEQueue);
_ZN11TestBuilder14getItsTMDQueueEv:
        BX       LR               ;; return
//   14 }
          CFI EndBlock cfiBlock2

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
// 10 bytes in section .text
// 
// 10 bytes of CODE memory
//
//Errors: none
//Warnings: 2
