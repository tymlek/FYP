///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.22.2.15995/W32 for ARM      21/Apr/2018  09:54:13
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\02_HardwareAdapterPattern\Code\Cpp\main.cpp
//    Command line =  
//        -f C:\Users\Tim\AppData\Local\Temp\EWD92C.tmp
//        (C:\Users\Tim\Programming\Code\ARM_32\Patterns\02_HardwareAdapterPattern\Code\Cpp\main.cpp
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
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\02_HardwareAdapterPattern\Code\Cpp\Debug\List\main.s
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

        EXTERN _ZN13AcmeO2Adapter11gimmeO2ConcEv
        EXTERN _ZN13AcmeO2Adapter11gimmeO2FlowEv
        EXTERN _ZTV13AcmeO2Adapter
        EXTERN _ZTVN10__cxxabiv117__class_type_infoE
        EXTERN _ZdlPv
        EXTERN _Znwj
        EXTERN printf

        PUBLIC _ZN13AcmeO2AdapterC1EP17AcmeO2SensorProxy
        PUBLIC _ZN17AcmeO2SensorProxyC1Ev
        PUBLIC _ZN9IO2SensorC1Ev
        PUBLIC _ZN9IO2SensorC2Ev
        PUBLIC _ZTI9IO2Sensor
        PUBLIC _ZTS9IO2Sensor
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
        
// C:\Users\Tim\Programming\Code\ARM_32\Patterns\02_HardwareAdapterPattern\Code\Cpp\main.cpp
//    1 #include <stdlib.h>
//    2 #include <stdio.h>
//    3 
//    4 #include "AcmeO2SensorProxy.h"

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN17AcmeO2SensorProxyC1Ev
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function _ZN17AcmeO2SensorProxyC1Ev
          CFI NoCalls
        THUMB
// __code __interwork __softfp AcmeO2SensorProxy::AcmeO2SensorProxy()
_ZN17AcmeO2SensorProxyC1Ev:
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//    5 #include "AcmeO2Adapter.h"

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN9IO2SensorC2Ev
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function _ZN9IO2SensorC2Ev
        THUMB
// __code __interwork __softfp IO2Sensor::subobject IO2Sensor()
_ZN9IO2SensorC2Ev:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
        MOVS     R0,R4
          CFI FunCall _ZN9IO2SensorC1Ev
        BL       _ZN9IO2SensorC1Ev
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock1

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN9IO2SensorC1Ev
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function _ZN9IO2SensorC1Ev
          CFI NoCalls
        THUMB
// __code __interwork __softfp IO2Sensor::IO2Sensor()
_ZN9IO2SensorC1Ev:
        BX       LR               ;; return
          CFI EndBlock cfiBlock2

        SECTION `.text`:CODE:REORDER:NOROOT(2)
        SECTION_GROUP _ZN13AcmeO2AdapterC1EP17AcmeO2SensorProxy
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function _ZN13AcmeO2AdapterC1EP17AcmeO2SensorProxy
        THUMB
// __code __interwork __softfp AcmeO2Adapter::AcmeO2Adapter(AcmeO2SensorProxy *)
_ZN13AcmeO2AdapterC1EP17AcmeO2SensorProxy:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R0,R4
          CFI FunCall _ZN9IO2SensorC2Ev
        BL       _ZN9IO2SensorC2Ev
        LDR.N    R0,??AcmeO2Adapter_0
        STR      R0,[R4, #+0]
        STR      R5,[R4, #+4]
        MOVS     R0,R4
        POP      {R1,R4,R5,PC}    ;; return
        Nop      
        DATA
??AcmeO2Adapter_0:
        DC32     _ZTV13AcmeO2Adapter+0x8
          CFI EndBlock cfiBlock3
//    6 #include "UltimateO2SensorProxy.h"
//    7 #include "UltimateO2Adapter.h"
//    8 #include "IO2Sensor.h"
//    9 

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function main
        THUMB
//   10 int main(void) {
main:
        PUSH     {R0-R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+24
//   11 	AcmeO2SensorProxy acmeSensor;
        MOV      R0,SP
          CFI FunCall _ZN17AcmeO2SensorProxyC1Ev
        BL       _ZN17AcmeO2SensorProxyC1Ev
        MOVS     R1,R0
//   12 	AcmeO2Adapter acmeAdapter(&acmeSensor);
        ADD      R0,SP,#+4
          CFI FunCall _ZN13AcmeO2AdapterC1EP17AcmeO2SensorProxy
        BL       _ZN13AcmeO2AdapterC1EP17AcmeO2SensorProxy
//   13 	IO2Sensor* io2Sensor = new AcmeO2Adapter(&acmeSensor);
        MOVS     R0,#+8
          CFI FunCall _Znwj
        BL       _Znwj
        CMP      R0,#+0
        BEQ.N    ??main_1
        MOV      R1,SP
          CFI FunCall _ZN13AcmeO2AdapterC1EP17AcmeO2SensorProxy
        BL       _ZN13AcmeO2AdapterC1EP17AcmeO2SensorProxy
        MOVS     R4,R0
        B.N      ??main_2
??main_1:
        MOVS     R4,#+0
//   14 
//   15 	printf("O2 Concentration: %d\n", acmeAdapter.gimmeO2Conc());
??main_2:
        ADD      R0,SP,#+4
          CFI FunCall _ZN13AcmeO2Adapter11gimmeO2ConcEv
        BL       _ZN13AcmeO2Adapter11gimmeO2ConcEv
        MOVS     R1,R0
        LDR.N    R0,??main_0
          CFI FunCall printf
        BL       printf
//   16 	printf("O2 Flow: %d\n", acmeAdapter.gimmeO2Flow());
        ADD      R0,SP,#+4
          CFI FunCall _ZN13AcmeO2Adapter11gimmeO2FlowEv
        BL       _ZN13AcmeO2Adapter11gimmeO2FlowEv
        MOVS     R1,R0
        LDR.N    R0,??main_0+0x4
          CFI FunCall printf
        BL       printf
//   17 
//   18 	printf("O2 Concentration: %d\n",io2Sensor->gimmeO2Conc());
        MOVS     R0,R4
        LDR      R1,[R4, #+0]
        LDR      R1,[R1, #+0]
          CFI FunCall
        BLX      R1
        MOVS     R1,R0
        LDR.N    R0,??main_0
          CFI FunCall printf
        BL       printf
//   19 	printf("O2 Flow: %d\n", io2Sensor->gimmeO2Flow());
        MOVS     R0,R4
        LDR      R1,[R4, #+0]
        LDR      R1,[R1, #+4]
          CFI FunCall
        BLX      R1
        MOVS     R1,R0
        LDR.N    R0,??main_0+0x4
          CFI FunCall printf
        BL       printf
//   20 
//   21 	delete io2Sensor;
        MOVS     R0,R4
          CFI FunCall _ZdlPv
        BL       _ZdlPv
//   22 
//   23 	while (1) {
??main_3:
        B.N      ??main_3
        Nop      
        DATA
??main_0:
        DC32     ?_0
        DC32     ?_1
//   24           
//   25         }
//   26 }
          CFI EndBlock cfiBlock4

        SECTION `.iar_vfe_vcallinfomain`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        SECTION_GROUP main
        DATA
        DC32    main
        DC32    0
        DC32    0
        DC32    1
        DC32    _ZTI9IO2Sensor
        DC32    1
        DC32    3
        DC32    0
        DC32    0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTI9IO2Sensor
        DATA
// __absolute __class_type_info const <Typeinfo for IO2Sensor>
_ZTI9IO2Sensor:
        DC32 _ZTVN10__cxxabiv117__class_type_infoE + 8H, _ZTS9IO2Sensor

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTS9IO2Sensor
        DATA
// __absolute char const <Typeinfo name for IO2Sensor>[11]
_ZTS9IO2Sensor:
        DC8 "9IO2Sensor"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_0:
        DC8 "O2 Concentration: %d\012"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_1:
        DC8 "O2 Flow: %d\012"
        DC8 0, 0, 0

        END
// 
//  60 bytes in section .rodata
// 164 bytes in section .text
// 
// 116 bytes of CODE  memory (+ 48 bytes shared)
//  40 bytes of CONST memory (+ 20 bytes shared)
//
//Errors: none
//Warnings: 1
