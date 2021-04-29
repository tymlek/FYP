///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.22.2.15995/W32 for ARM      21/Apr/2018  09:54:13
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\02_HardwareAdapterPattern\Code\Cpp\AcmeO2Adapter.cpp
//    Command line =  
//        -f C:\Users\Tim\AppData\Local\Temp\EWD92A.tmp
//        (C:\Users\Tim\Programming\Code\ARM_32\Patterns\02_HardwareAdapterPattern\Code\Cpp\AcmeO2Adapter.cpp
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
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\02_HardwareAdapterPattern\Code\Cpp\Debug\List\AcmeO2Adapter.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__CPP_Exceptions", "Disabled"
        RTMODEL "__CPP_Language", "C++14"
        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_full_locale_support", "0"
        RTMODEL "__dlib_version", "6"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN _ZN17AcmeO2SensorProxy9getO2ConcEv
        EXTERN _ZN17AcmeO2SensorProxy9getO2FlowEv
        EXTERN _ZTVN10__cxxabiv117__class_type_infoE
        EXTERN _ZTVN10__cxxabiv120__si_class_type_infoE

        PUBLIC _ZN13AcmeO2Adapter11gimmeO2ConcEv
        PUBLIC _ZN13AcmeO2Adapter11gimmeO2FlowEv
        PUBLIC _ZTI13AcmeO2Adapter
        PUBLIC _ZTI9IO2Sensor
        PUBLIC _ZTS13AcmeO2Adapter
        PUBLIC _ZTS9IO2Sensor
        PUBLIC _ZTV13AcmeO2Adapter
        
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
        
// C:\Users\Tim\Programming\Code\ARM_32\Patterns\02_HardwareAdapterPattern\Code\Cpp\AcmeO2Adapter.cpp
//    1 #include <stdlib.h>
//    2 #include "AcmeO2Adapter.h"
//    3 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function _ZN13AcmeO2Adapter11gimmeO2ConcEv
        THUMB
//    4 int AcmeO2Adapter::gimmeO2Conc() {
_ZN13AcmeO2Adapter11gimmeO2ConcEv:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//    5 	return this->itsAcmeO2SensorProxy->getO2Conc();
        LDR      R0,[R4, #+4]
          CFI FunCall _ZN17AcmeO2SensorProxy9getO2ConcEv
        BL       _ZN17AcmeO2SensorProxy9getO2ConcEv
        POP      {R4,PC}          ;; return
//    6 }
          CFI EndBlock cfiBlock0
//    7 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function _ZN13AcmeO2Adapter11gimmeO2FlowEv
        THUMB
//    8 int AcmeO2Adapter::gimmeO2Flow() {
_ZN13AcmeO2Adapter11gimmeO2FlowEv:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//    9 	return (this->itsAcmeO2SensorProxy->getO2Flow() * 60) / 100;
        LDR      R0,[R4, #+4]
          CFI FunCall _ZN17AcmeO2SensorProxy9getO2FlowEv
        BL       _ZN17AcmeO2SensorProxy9getO2FlowEv
        MOVS     R1,#+60
        MULS     R0,R1,R0
        MOVS     R1,#+100
        UDIV     R0,R0,R1
        POP      {R4,PC}          ;; return
//   10 }
          CFI EndBlock cfiBlock1

        SECTION `.iar_vfe_vtableinfo_ZTV13AcmeO2Adapter`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        SECTION_GROUP _ZTV13AcmeO2Adapter
        DATA
        DC32    _ZTV13AcmeO2Adapter
        DC32    4
        DC32    2
        DC32    _ZTI13AcmeO2Adapter
        DC32    1
        DC32    2
        DC32    0
        DC32    _ZTI9IO2Sensor
        DC32    0
        DC32    1
        DC32    _ZTI13AcmeO2Adapter
        DC32    1
        DC32    2
        DC32    0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTV13AcmeO2Adapter
        DATA
// __absolute void (*const AcmeO2Adapter::__vtbl[4])()
_ZTV13AcmeO2Adapter:
        DC32 0H, _ZTI13AcmeO2Adapter, _ZN13AcmeO2Adapter11gimmeO2ConcEv
        DC32 _ZN13AcmeO2Adapter11gimmeO2FlowEv

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTI9IO2Sensor
        DATA
// __absolute __class_type_info const <Typeinfo for IO2Sensor>
_ZTI9IO2Sensor:
        DC32 _ZTVN10__cxxabiv117__class_type_infoE + 8H, _ZTS9IO2Sensor

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTI13AcmeO2Adapter
        DATA
// __absolute __si_class_type_info const <Typeinfo for AcmeO2Adapter>
_ZTI13AcmeO2Adapter:
        DC32 _ZTVN10__cxxabiv120__si_class_type_infoE + 8H, _ZTS13AcmeO2Adapter
        DC32 _ZTI9IO2Sensor

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTS9IO2Sensor
        DATA
// __absolute char const <Typeinfo name for IO2Sensor>[11]
_ZTS9IO2Sensor:
        DC8 "9IO2Sensor"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTS13AcmeO2Adapter
        DATA
// __absolute char const <Typeinfo name for AcmeO2Adapter>[16]
_ZTS13AcmeO2Adapter:
        DC8 "13AcmeO2Adapter"

        END
// 
// 64 bytes in section .rodata
// 34 bytes in section .text
// 
// 34 bytes of CODE  memory
//  0 bytes of CONST memory (+ 64 bytes shared)
//
//Errors: none
//Warnings: none
