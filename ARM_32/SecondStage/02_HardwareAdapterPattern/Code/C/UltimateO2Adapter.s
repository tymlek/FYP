///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.22.2.15995/W32 for ARM      21/Apr/2018  09:33:35
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\02_HardwareAdapterPattern\Code\C\UltimateO2Adapter.c
//    Command line =  
//        -f C:\Users\Tim\AppData\Local\Temp\EWF50B.tmp
//        (C:\Users\Tim\Programming\Code\ARM_32\Patterns\02_HardwareAdapterPattern\Code\C\UltimateO2Adapter.c
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
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\02_HardwareAdapterPattern\Code\C\Debug\List\UltimateO2Adapter.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_full_locale_support", "0"
        RTMODEL "__dlib_version", "6"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_d2iz
        EXTERN __aeabi_ddiv
        EXTERN __aeabi_dmul
        EXTERN free
        EXTERN malloc

        PUBLIC UltimateO2Adapter_Create
        PUBLIC UltimateO2Adapter_Destroy
        PUBLIC UltimateO2Adapter_Init
        PUBLIC UltimateO2Adapter_configure
        PUBLIC UltimateO2Adapter_gimmeO2Conc
        PUBLIC UltimateO2Adapter_gimmeO2Flow
        
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
        
// C:\Users\Tim\Programming\Code\ARM_32\Patterns\02_HardwareAdapterPattern\Code\C\UltimateO2Adapter.c
//    1 #include <stdlib.h>
//    2 #include "UltimateO2Adapter.h"
//    3 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function UltimateO2Adapter_gimmeO2Conc
        THUMB
//    4 int UltimateO2Adapter_gimmeO2Conc(UltimateO2Adapter* const me) {
UltimateO2Adapter_gimmeO2Conc:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//    5 	return (int)(me->itsUltimateO2SensorProxy->accessO2Conc(me->itsUltimateO2SensorProxy)) * 100;
        LDR      R0,[R4, #+0]
        LDR      R1,[R4, #+0]
        LDR      R1,[R1, #+4]
          CFI FunCall
        BLX      R1
          CFI FunCall __aeabi_d2iz
        BL       __aeabi_d2iz
        MOVS     R1,#+100
        MULS     R0,R1,R0
        POP      {R4,PC}          ;; return
//    6 }
          CFI EndBlock cfiBlock0
//    7 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function UltimateO2Adapter_gimmeO2Flow
        THUMB
//    8 int UltimateO2Adapter_gimmeO2Flow(UltimateO2Adapter* const me) {
UltimateO2Adapter_gimmeO2Flow:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R6,R0
//    9 	double totalFlow;
//   10 
//   11 	// Convert from liters/hr to cc/min
//   12 	totalFlow = (me->itsUltimateO2SensorProxy->accessGasFlow(me->itsUltimateO2SensorProxy)) * 1000.0 / 60.0;
        LDR      R0,[R6, #+0]
        LDR      R1,[R6, #+0]
        LDR      R1,[R1, #+8]
          CFI FunCall
        BLX      R1
        MOVS     R2,#+0
        LDR.N    R3,??DataTable2  ;; 0x408f4000
          CFI FunCall __aeabi_dmul
        BL       __aeabi_dmul
        MOVS     R2,#+0
        LDR.N    R3,??DataTable2_1  ;; 0x404e0000
          CFI FunCall __aeabi_ddiv
        BL       __aeabi_ddiv
        MOVS     R4,R0
        MOVS     R5,R1
//   13 	return (int)(totalFlow * me->itsUltimateO2SensorProxy->accessO2Conc(me->itsUltimateO2SensorProxy));
        LDR      R0,[R6, #+0]
        LDR      R1,[R6, #+0]
        LDR      R1,[R1, #+4]
          CFI FunCall
        BLX      R1
        MOVS     R2,R4
        MOVS     R3,R5
          CFI FunCall __aeabi_dmul
        BL       __aeabi_dmul
          CFI FunCall __aeabi_d2iz
        BL       __aeabi_d2iz
        POP      {R4-R6,PC}       ;; return
//   14 }
          CFI EndBlock cfiBlock1
//   15 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function UltimateO2Adapter_configure
          CFI NoCalls
        THUMB
//   16 void UltimateO2Adapter_configure(UltimateO2Adapter* const me, UltimateO2SensorProxy* ultimateO2SensorProxy) {
//   17 	me->itsUltimateO2SensorProxy = ultimateO2SensorProxy;
UltimateO2Adapter_configure:
        STR      R1,[R0, #+0]
//   18 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//   19 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function UltimateO2Adapter_Create
        THUMB
//   20 UltimateO2Adapter* UltimateO2Adapter_Create(void) {
UltimateO2Adapter_Create:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//   21 	UltimateO2Adapter* me = (UltimateO2Adapter*)malloc(sizeof(UltimateO2Adapter));
        MOVS     R0,#+12
          CFI FunCall malloc
        BL       malloc
        MOVS     R4,R0
//   22 
//   23 	if (me != NULL) {
        CMP      R4,#+0
        BEQ.N    ??UltimateO2Adapter_Create_0
//   24 		UltimateO2Adapter_Init(me);
        MOVS     R0,R4
          CFI FunCall UltimateO2Adapter_Init
        BL       UltimateO2Adapter_Init
//   25 	}
//   26 
//   27 	return me;
??UltimateO2Adapter_Create_0:
        MOVS     R0,R4
        POP      {R4,PC}          ;; return
//   28 }
          CFI EndBlock cfiBlock3
//   29 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function UltimateO2Adapter_Destroy
        THUMB
//   30 void UltimateO2Adapter_Destroy(UltimateO2Adapter* const me) {
UltimateO2Adapter_Destroy:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//   31 	if (me != NULL) {
        CMP      R4,#+0
        BEQ.N    ??UltimateO2Adapter_Destroy_0
//   32 		free(me);
        MOVS     R0,R4
          CFI FunCall free
        BL       free
//   33 		//IO2Sensor_Cleanup(me);
//   34 	}
//   35 }
??UltimateO2Adapter_Destroy_0:
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock4
//   36 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function UltimateO2Adapter_Init
          CFI NoCalls
        THUMB
//   37 void UltimateO2Adapter_Init(UltimateO2Adapter* const me) {
//   38 	me->gimmeO2Conc = UltimateO2Adapter_gimmeO2Conc;
UltimateO2Adapter_Init:
        LDR.N    R1,??DataTable2_2
        STR      R1,[R0, #+4]
//   39 	me->gimmeO2Flow = UltimateO2Adapter_gimmeO2Flow;
        LDR.N    R1,??DataTable2_3
        STR      R1,[R0, #+8]
//   40 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0x408f4000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     0x404e0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     UltimateO2Adapter_gimmeO2Conc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_3:
        DC32     UltimateO2Adapter_gimmeO2Flow

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
// 146 bytes in section .text
// 
// 146 bytes of CODE memory
//
//Errors: none
//Warnings: none
