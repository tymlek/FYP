///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.22.2.15995/W32 for ARM      21/Apr/2018  09:51:20
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\02_HardwareAdapterPattern\Code\Cpp\AcmeO2SensorProxy.cpp
//    Command line =  
//        -f C:\Users\Tim\AppData\Local\Temp\EW36F3.tmp
//        (C:\Users\Tim\Programming\Code\ARM_32\Patterns\02_HardwareAdapterPattern\Code\Cpp\AcmeO2SensorProxy.cpp
//        -lC
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\02_HardwareAdapterPattern\Code\Cpp\Debug\List
//        -lA
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\02_HardwareAdapterPattern\Code\Cpp\Debug\List
//        -o
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\02_HardwareAdapterPattern\Code\Cpp\Debug\Obj
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 --fpu=None --dlib_config "C:\Program Files (x86)\IAR
//        Systems\Embedded Workbench 8.0\arm\INC\c\DLib_Config_Normal.h" -On
//        --c++ --no_exceptions --no_rtti --no_static_destruction)
//    Locale       =  C
//    List file    =  
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\02_HardwareAdapterPattern\Code\Cpp\Debug\List\AcmeO2SensorProxy.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__CPP_Exceptions", "Disabled"
        RTMODEL "__CPP_Language", "C++14"
        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        PUBLIC _ZN17AcmeO2SensorProxy9getO2ConcEv
        PUBLIC _ZN17AcmeO2SensorProxy9getO2FlowEv
        
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
        
// C:\Users\Tim\Programming\Code\ARM_32\Patterns\02_HardwareAdapterPattern\Code\Cpp\AcmeO2SensorProxy.cpp
//    1 #include "AcmeO2SensorProxy.h"
//    2 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function _ZN17AcmeO2SensorProxy9getO2ConcEv
          CFI NoCalls
        THUMB
//    3 unsigned int AcmeO2SensorProxy::getO2Conc() {
_ZN17AcmeO2SensorProxy9getO2ConcEv:
        MOVS     R1,R0
//    4 	return 20;
        MOVS     R0,#+20
        BX       LR               ;; return
//    5 }
          CFI EndBlock cfiBlock0
//    6 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function _ZN17AcmeO2SensorProxy9getO2FlowEv
          CFI NoCalls
        THUMB
//    7 unsigned long AcmeO2SensorProxy::getO2Flow() {
_ZN17AcmeO2SensorProxy9getO2FlowEv:
        MOVS     R1,R0
//    8 	return 50;
        MOVS     R0,#+50
        BX       LR               ;; return
//    9 }
          CFI EndBlock cfiBlock1

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
// 12 bytes in section .text
// 
// 12 bytes of CODE memory
//
//Errors: none
//Warnings: none
