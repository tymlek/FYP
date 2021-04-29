///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.22.2.15995/W32 for ARM      21/Apr/2018  09:33:35
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\02_HardwareAdapterPattern\Code\C\AcmeO2Adapter.c
//    Command line =  
//        -f C:\Users\Tim\AppData\Local\Temp\EWF48A.tmp
//        (C:\Users\Tim\Programming\Code\ARM_32\Patterns\02_HardwareAdapterPattern\Code\C\AcmeO2Adapter.c
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
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\02_HardwareAdapterPattern\Code\C\Debug\List\AcmeO2Adapter.s
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

        PUBLIC AcmeO2Adapter_Create
        PUBLIC AcmeO2Adapter_Destroy
        PUBLIC AcmeO2Adapter_Init
        PUBLIC AcmeO2Adapter_configure
        PUBLIC AcmeO2Adapter_gimmeO2Conc
        PUBLIC AcmeO2Adapter_gimmeO2Flow
        
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
        
// C:\Users\Tim\Programming\Code\ARM_32\Patterns\02_HardwareAdapterPattern\Code\C\AcmeO2Adapter.c
//    1 #include <stdlib.h>
//    2 #include "AcmeO2Adapter.h"
//    3 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function AcmeO2Adapter_gimmeO2Conc
        THUMB
//    4 int AcmeO2Adapter_gimmeO2Conc(AcmeO2Adapter* const me) {
AcmeO2Adapter_gimmeO2Conc:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//    5 	return me->itsAcmeO2SensorProxy->getO2Conc(me->itsAcmeO2SensorProxy);
        LDR      R0,[R4, #+0]
        LDR      R1,[R4, #+0]
        LDR      R1,[R1, #+4]
          CFI FunCall
        BLX      R1
        POP      {R4,PC}          ;; return
//    6 }
          CFI EndBlock cfiBlock0
//    7 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function AcmeO2Adapter_gimmeO2Flow
        THUMB
//    8 int AcmeO2Adapter_gimmeO2Flow(AcmeO2Adapter* const me) {
AcmeO2Adapter_gimmeO2Flow:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//    9 	return (me->itsAcmeO2SensorProxy->getO2Flow(me->itsAcmeO2SensorProxy) * 60) / 100;
        LDR      R0,[R4, #+0]
        LDR      R1,[R4, #+0]
        LDR      R1,[R1, #+8]
          CFI FunCall
        BLX      R1
        MOVS     R1,#+60
        MULS     R0,R1,R0
        MOVS     R1,#+100
        UDIV     R0,R0,R1
        POP      {R4,PC}          ;; return
//   10 }
          CFI EndBlock cfiBlock1
//   11 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function AcmeO2Adapter_configure
          CFI NoCalls
        THUMB
//   12 void AcmeO2Adapter_configure(AcmeO2Adapter* const me, AcmeO2SensorProxy* acmeO2SensorProxy) {
//   13 	me->itsAcmeO2SensorProxy = acmeO2SensorProxy;
AcmeO2Adapter_configure:
        STR      R1,[R0, #+0]
//   14 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//   15 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function AcmeO2Adapter_Create
        THUMB
//   16 AcmeO2Adapter* AcmeO2Adapter_Create(void) {
AcmeO2Adapter_Create:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//   17 	AcmeO2Adapter* me = (AcmeO2Adapter*)malloc(sizeof(AcmeO2Adapter));
        MOVS     R0,#+12
          CFI FunCall malloc
        BL       malloc
        MOVS     R4,R0
//   18 
//   19 	if (me != NULL) {
        CMP      R4,#+0
        BEQ.N    ??AcmeO2Adapter_Create_0
//   20 		AcmeO2Adapter_Init(me);
        MOVS     R0,R4
          CFI FunCall AcmeO2Adapter_Init
        BL       AcmeO2Adapter_Init
//   21 	}
//   22 
//   23 	return me;
??AcmeO2Adapter_Create_0:
        MOVS     R0,R4
        POP      {R4,PC}          ;; return
//   24 }
          CFI EndBlock cfiBlock3
//   25 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function AcmeO2Adapter_Destroy
        THUMB
//   26 void AcmeO2Adapter_Destroy(AcmeO2Adapter* const me) {
AcmeO2Adapter_Destroy:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//   27 	if (me != NULL) {
        CMP      R4,#+0
        BEQ.N    ??AcmeO2Adapter_Destroy_0
//   28 		free(me);
        MOVS     R0,R4
          CFI FunCall free
        BL       free
//   29 		//IO2Sensor_Cleanup(me);
//   30 	}
//   31 }
??AcmeO2Adapter_Destroy_0:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock4
//   32 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function AcmeO2Adapter_Init
          CFI NoCalls
        THUMB
//   33 void AcmeO2Adapter_Init(AcmeO2Adapter* const me) {
//   34 	me->gimmeO2Conc = AcmeO2Adapter_gimmeO2Conc;
AcmeO2Adapter_Init:
        LDR.N    R1,??DataTable1
        STR      R1,[R0, #+4]
//   35 	me->gimmeO2Flow = AcmeO2Adapter_gimmeO2Flow;
        LDR.N    R1,??DataTable1_1
        STR      R1,[R0, #+8]
//   36 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     AcmeO2Adapter_gimmeO2Conc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     AcmeO2Adapter_gimmeO2Flow

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
// 100 bytes in section .text
// 
// 100 bytes of CODE memory
//
//Errors: none
//Warnings: none
