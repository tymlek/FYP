///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.22.2.15995/W32 for ARM      21/Apr/2018  09:33:35
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\02_HardwareAdapterPattern\Code\C\main.c
//    Command line =  
//        -f C:\Users\Tim\AppData\Local\Temp\EWF48D.tmp
//        (C:\Users\Tim\Programming\Code\ARM_32\Patterns\02_HardwareAdapterPattern\Code\C\main.c
//        -lC
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\02_HardwareAdapterPattern\Code\C\Debug\List
//        -lA
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\02_HardwareAdapterPattern\Code\C\Debug\List
//        -o
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\02_HardwareAdapterPattern\Code\C\Debug\Obj
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 --fpu=None --dlib_config "C:\Program Files (x86)\IAR
//        Systems\Embedded Workbench 8.0\arm\INC\c\DLib_Config_Normal.h" -On)
//    Locale       =  C
//    List file    =  
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\02_HardwareAdapterPattern\Code\C\Debug\List\main.s
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

        EXTERN AcmeO2Adapter_Init
        EXTERN AcmeO2Adapter_configure
        EXTERN AcmeO2Adapter_gimmeO2Conc
        EXTERN AcmeO2Adapter_gimmeO2Flow
        EXTERN AcmeO2SensorProxy_Init
        EXTERN IO2Sensor_Create
        EXTERN IO2Sensor_Destroy
        EXTERN IO2Sensor_Init
        EXTERN printf

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
        
// C:\Users\Tim\Programming\Code\ARM_32\Patterns\02_HardwareAdapterPattern\Code\C\main.c
//    1 #include <stdlib.h>
//    2 #include <stdio.h>
//    3 #include "AcmeO2SensorProxy.h"
//    4 #include "UltimateO2SensorProxy.h"
//    5 #include "IO2Sensor.h"
//    6 

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function main
        THUMB
//    7 int main(void) {
main:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        SUB      SP,SP,#+24
          CFI CFA R13+32
//    8 	AcmeO2SensorProxy acmeSensor;
//    9 	AcmeO2Adapter acmeAdapter;
//   10 	IO2Sensor* io2Sensor = IO2Sensor_Create();
          CFI FunCall IO2Sensor_Create
        BL       IO2Sensor_Create
        MOVS     R4,R0
//   11 
//   12 	AcmeO2SensorProxy_Init(&acmeSensor);
        ADD      R0,SP,#+12
          CFI FunCall AcmeO2SensorProxy_Init
        BL       AcmeO2SensorProxy_Init
//   13 	AcmeO2Adapter_Init(&acmeAdapter);
        MOV      R0,SP
          CFI FunCall AcmeO2Adapter_Init
        BL       AcmeO2Adapter_Init
//   14 	AcmeO2Adapter_configure(&acmeAdapter, &acmeSensor);
        ADD      R1,SP,#+12
        MOV      R0,SP
          CFI FunCall AcmeO2Adapter_configure
        BL       AcmeO2Adapter_configure
//   15 	IO2Sensor_Init(io2Sensor);
        MOVS     R0,R4
          CFI FunCall IO2Sensor_Init
        BL       IO2Sensor_Init
//   16 
//   17 	printf("O2 Concentration: %d\n", AcmeO2Adapter_gimmeO2Conc(&acmeAdapter));
        MOV      R0,SP
          CFI FunCall AcmeO2Adapter_gimmeO2Conc
        BL       AcmeO2Adapter_gimmeO2Conc
        MOVS     R1,R0
        LDR.N    R0,??main_0
          CFI FunCall printf
        BL       printf
//   18 	printf("O2 Flow: %d\n", AcmeO2Adapter_gimmeO2Flow(&acmeAdapter));
        MOV      R0,SP
          CFI FunCall AcmeO2Adapter_gimmeO2Flow
        BL       AcmeO2Adapter_gimmeO2Flow
        MOVS     R1,R0
        LDR.N    R0,??main_0+0x4
          CFI FunCall printf
        BL       printf
//   19 
//   20 	printf("O2 Concentration: %d\n",io2Sensor->gimmeO2Conc((IO2Sensor*)&acmeAdapter));
        MOV      R0,SP
        LDR      R1,[R4, #+4]
          CFI FunCall
        BLX      R1
        MOVS     R1,R0
        LDR.N    R0,??main_0
          CFI FunCall printf
        BL       printf
//   21 	printf("O2 Flow: %d\n", io2Sensor->gimmeO2Flow((IO2Sensor*)&acmeAdapter));
        MOV      R0,SP
        LDR      R1,[R4, #+8]
          CFI FunCall
        BLX      R1
        MOVS     R1,R0
        LDR.N    R0,??main_0+0x4
          CFI FunCall printf
        BL       printf
//   22         
//   23         IO2Sensor_Destroy(io2Sensor);
        MOVS     R0,R4
          CFI FunCall IO2Sensor_Destroy
        BL       IO2Sensor_Destroy
//   24 
//   25 	while (1) {
??main_1:
        B.N      ??main_1
        DATA
??main_0:
        DC32     ?_0
        DC32     ?_1
//   26 		
//   27 	}
//   28 }
          CFI EndBlock cfiBlock0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

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
//  40 bytes in section .rodata
// 108 bytes in section .text
// 
// 108 bytes of CODE  memory
//  40 bytes of CONST memory
//
//Errors: none
//Warnings: none
