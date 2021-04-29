///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.22.2.15995/W32 for ARM      21/Apr/2018  09:13:14
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\01_HardwareProxyPattern\Code\C\main.c
//    Command line =  
//        -f C:\Users\Tim\AppData\Local\Temp\EW50DD.tmp
//        (C:\Users\Tim\Programming\Code\ARM_32\Patterns\01_HardwareProxyPattern\Code\C\main.c
//        -lC
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\01_HardwareProxyPattern\Code\C\Debug\List
//        -lA
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\01_HardwareProxyPattern\Code\C\Debug\List
//        -o
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\01_HardwareProxyPattern\Code\C\Debug\Obj
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 --fpu=None --dlib_config "C:\Program Files (x86)\IAR
//        Systems\Embedded Workbench 8.0\arm\INC\c\DLib_Config_Normal.h" -On)
//    Locale       =  C
//    List file    =  
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\01_HardwareProxyPattern\Code\C\Debug\List\main.s
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

        EXTERN MotorProxy_accessMotorDirection
        EXTERN MotorProxy_accessMotorSpeed
        EXTERN MotorProxy_accessMotorState
        EXTERN MotorProxy_configure
        EXTERN MotorProxy_disable
        EXTERN MotorProxy_enable
        EXTERN MotorProxy_initialize
        EXTERN MotorProxy_writeMotorSpeed
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
        
// C:\Users\Tim\Programming\Code\ARM_32\Patterns\01_HardwareProxyPattern\Code\C\main.c
//    1 #include <stdlib.h>
//    2 #include <stdio.h>
//    3 #include "MotorProxy.h"
//    4 

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function main
        THUMB
//    5 int main(void) {
main:
        PUSH     {R0-R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+24
//    6 	MotorProxy motor;
//    7 	MotorProxy* myMotor = &motor;
        ADD      R4,SP,#+4
//    8 	unsigned int hwAddr;
//    9 
//   10 	MotorProxy_configure(myMotor, 0, &hwAddr);
        MOV      R2,SP
        MOVS     R1,#+0
        MOVS     R0,R4
          CFI FunCall MotorProxy_configure
        BL       MotorProxy_configure
//   11 	MotorProxy_initialize(myMotor);
        MOVS     R0,R4
          CFI FunCall MotorProxy_initialize
        BL       MotorProxy_initialize
//   12 
//   13 	MotorProxy_writeMotorSpeed(myMotor, FORWARD, 10);
        MOVS     R2,#+10
        MOVS     R1,#+1
        MOVS     R0,R4
          CFI FunCall MotorProxy_writeMotorSpeed
        BL       MotorProxy_writeMotorSpeed
//   14 
//   15 	printf("Motor address: 0x%X\n", myMotor->motorAddr);
        LDR      R1,[R4, #+0]
        LDR.N    R0,??main_0
          CFI FunCall printf
        BL       printf
//   16 	printf("Motor direction: %d\n", MotorProxy_accessMotorDirection(myMotor));
        MOVS     R0,R4
          CFI FunCall MotorProxy_accessMotorDirection
        BL       MotorProxy_accessMotorDirection
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??main_0+0x4
          CFI FunCall printf
        BL       printf
//   17 	printf("Motor speed: %d\n", MotorProxy_accessMotorSpeed(myMotor));
        MOVS     R0,R4
          CFI FunCall MotorProxy_accessMotorSpeed
        BL       MotorProxy_accessMotorSpeed
        MOVS     R1,R0
        LDR.N    R0,??main_0+0x8
          CFI FunCall printf
        BL       printf
//   18 	printf("Motor error state: %d\n", MotorProxy_accessMotorState(myMotor));
        MOVS     R0,R4
          CFI FunCall MotorProxy_accessMotorState
        BL       MotorProxy_accessMotorState
        MOVS     R1,R0
        LDR.N    R0,??main_0+0xC
          CFI FunCall printf
        BL       printf
//   19 
//   20 	MotorProxy_disable(myMotor);
        MOVS     R0,R4
          CFI FunCall MotorProxy_disable
        BL       MotorProxy_disable
//   21 
//   22 	MotorProxy_enable(myMotor);
        MOVS     R0,R4
          CFI FunCall MotorProxy_enable
        BL       MotorProxy_enable
//   23 
//   24 	while (1) {
??main_1:
        B.N      ??main_1
        DATA
??main_0:
        DC32     ?_0
        DC32     ?_1
        DC32     ?_2
        DC32     ?_3
//   25 
//   26 	}
//   27 }
          CFI EndBlock cfiBlock0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_0:
        DC8 "Motor address: 0x%X\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_1:
        DC8 "Motor direction: %d\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_2:
        DC8 "Motor speed: %d\012"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_3:
        DC8 "Motor error state: %d\012"
        DC8 0

        END
// 
//  92 bytes in section .rodata
// 112 bytes in section .text
// 
// 112 bytes of CODE  memory
//  92 bytes of CONST memory
//
//Errors: none
//Warnings: none
