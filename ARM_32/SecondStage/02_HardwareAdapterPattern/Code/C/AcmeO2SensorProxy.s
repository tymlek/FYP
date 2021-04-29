///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.22.2.15995/W32 for ARM      21/Apr/2018  09:33:35
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\02_HardwareAdapterPattern\Code\C\AcmeO2SensorProxy.c
//    Command line =  
//        -f C:\Users\Tim\AppData\Local\Temp\EWF48B.tmp
//        (C:\Users\Tim\Programming\Code\ARM_32\Patterns\02_HardwareAdapterPattern\Code\C\AcmeO2SensorProxy.c
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
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\02_HardwareAdapterPattern\Code\C\Debug\List\AcmeO2SensorProxy.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_full_locale_support", "0"
        RTMODEL "__dlib_version", "6"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN free
        EXTERN malloc

        PUBLIC AcmeO2SensorProxy_Create
        PUBLIC AcmeO2SensorProxy_Destroy
        PUBLIC AcmeO2SensorProxy_Init
        PUBLIC AcmeO2SensorProxy_configure
        PUBLIC AcmeO2SensorProxy_getO2Conc
        PUBLIC AcmeO2SensorProxy_getO2Flow
        
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
        
// C:\Users\Tim\Programming\Code\ARM_32\Patterns\02_HardwareAdapterPattern\Code\C\AcmeO2SensorProxy.c
//    1 #include <stdlib.h>
//    2 #include "AcmeO2SensorProxy.h"
//    3 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function AcmeO2SensorProxy_Create
        THUMB
//    4 AcmeO2SensorProxy* AcmeO2SensorProxy_Create(void) {
AcmeO2SensorProxy_Create:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//    5 	AcmeO2SensorProxy* me = (AcmeO2SensorProxy*)malloc(sizeof(AcmeO2SensorProxy));
        MOVS     R0,#+12
          CFI FunCall malloc
        BL       malloc
        MOVS     R4,R0
//    6 
//    7 	if (me != NULL) {
        CMP      R4,#+0
        BEQ.N    ??AcmeO2SensorProxy_Create_0
//    8 		AcmeO2SensorProxy_Init(me);
        MOVS     R0,R4
          CFI FunCall AcmeO2SensorProxy_Init
        BL       AcmeO2SensorProxy_Init
//    9 	}
//   10 
//   11 	return me;
??AcmeO2SensorProxy_Create_0:
        MOVS     R0,R4
        POP      {R4,PC}          ;; return
//   12 }
          CFI EndBlock cfiBlock0
//   13 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function AcmeO2SensorProxy_Destroy
        THUMB
//   14 void AcmeO2SensorProxy_Destroy(AcmeO2SensorProxy* const me) {
AcmeO2SensorProxy_Destroy:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//   15 	if (me != NULL) {
        CMP      R4,#+0
        BEQ.N    ??AcmeO2SensorProxy_Destroy_0
//   16 		free(me);
        MOVS     R0,R4
          CFI FunCall free
        BL       free
//   17 		//IO2Sensor_Cleanup(me);
//   18 	}
//   19 }
??AcmeO2SensorProxy_Destroy_0:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock1
//   20 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function AcmeO2SensorProxy_Init
          CFI NoCalls
        THUMB
//   21 void AcmeO2SensorProxy_Init(AcmeO2SensorProxy* const me) {
//   22 	me->getO2Conc = AcmeO2SensorProxy_getO2Conc;
AcmeO2SensorProxy_Init:
        ADR.W    R1,AcmeO2SensorProxy_getO2Conc
        STR      R1,[R0, #+4]
//   23 	me->getO2Flow = AcmeO2SensorProxy_getO2Flow;
        ADR.W    R1,AcmeO2SensorProxy_getO2Flow
        STR      R1,[R0, #+8]
//   24 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//   25 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function AcmeO2SensorProxy_configure
          CFI NoCalls
        THUMB
//   26 void AcmeO2SensorProxy_configure(AcmeO2SensorProxy* const me, unsigned int* location) {
//   27 
//   28 	me->sensorAddr = location;
AcmeO2SensorProxy_configure:
        STR      R1,[R0, #+0]
//   29 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//   30 

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function AcmeO2SensorProxy_getO2Conc
          CFI NoCalls
        THUMB
//   31 unsigned int AcmeO2SensorProxy_getO2Conc(AcmeO2SensorProxy* const me) {
AcmeO2SensorProxy_getO2Conc:
        MOVS     R1,R0
//   32 	return 20;
        MOVS     R0,#+20
        BX       LR               ;; return
//   33 }
          CFI EndBlock cfiBlock4
//   34 

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function AcmeO2SensorProxy_getO2Flow
          CFI NoCalls
        THUMB
//   35 unsigned long AcmeO2SensorProxy_getO2Flow(AcmeO2SensorProxy* const me) {
AcmeO2SensorProxy_getO2Flow:
        MOVS     R1,R0
//   36 	return 50;
        MOVS     R0,#+50
        BX       LR               ;; return
//   37 }
          CFI EndBlock cfiBlock5

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
// 70 bytes in section .text
// 
// 70 bytes of CODE memory
//
//Errors: none
//Warnings: none
