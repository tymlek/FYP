///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.22.2.15995/W32 for ARM      21/Apr/2018  09:23:11
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\01_HardwareProxyPattern\Code\Cpp\main.cpp
//    Command line =  
//        -f C:\Users\Tim\AppData\Local\Temp\EW705D.tmp
//        (C:\Users\Tim\Programming\Code\ARM_32\Patterns\01_HardwareProxyPattern\Code\Cpp\main.cpp
//        -lC
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\01_HardwareProxyPattern\Code\Cpp\Debug\List
//        -lA
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\01_HardwareProxyPattern\Code\Cpp\Debug\List
//        -o
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\01_HardwareProxyPattern\Code\Cpp\Debug\Obj
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 --fpu=None --dlib_config "C:\Program Files (x86)\IAR
//        Systems\Embedded Workbench 8.0\arm\INC\c\DLib_Config_Normal.h" -On
//        --c++ --no_exceptions --no_rtti --no_static_destruction)
//    Locale       =  C
//    List file    =  
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\01_HardwareProxyPattern\Code\Cpp\Debug\List\main.s
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

        EXTERN _ZN10MotorProxy10initializeEv
        EXTERN _ZN10MotorProxy13getMotorSpeedEv
        EXTERN _ZN10MotorProxy13getMotorStateEv
        EXTERN _ZN10MotorProxy13setMotorSpeedE13DirectionTypej
        EXTERN _ZN10MotorProxy17getMotorDirectionEv
        EXTERN _ZN10MotorProxy6enableEv
        EXTERN _ZN10MotorProxy7disableEv
        EXTERN _ZN10MotorProxy9configureEjPj
        EXTERN printf

        PUBLIC _ZN10MotorProxyC1Ev
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
        
// C:\Users\Tim\Programming\Code\ARM_32\Patterns\01_HardwareProxyPattern\Code\Cpp\main.cpp
//    1 #include <stdlib.h>
//    2 #include <stdio.h>
//    3 #include "MotorProxy.h"

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN10MotorProxyC1Ev
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function _ZN10MotorProxyC1Ev
          CFI NoCalls
        THUMB
// __code __interwork __softfp MotorProxy::MotorProxy()
_ZN10MotorProxyC1Ev:
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//    4 

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function main
        THUMB
//    5 int main(void) {
main:
        PUSH     {R5-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+16
//    6 	MotorProxy myMotor;
        MOV      R0,SP
          CFI FunCall _ZN10MotorProxyC1Ev
        BL       _ZN10MotorProxyC1Ev
//    7 	unsigned int hwAddr;
//    8 
//    9 	myMotor.configure(0, &hwAddr);
        ADD      R2,SP,#+8
        MOVS     R1,#+0
          CFI FunCall _ZN10MotorProxy9configureEjPj
        BL       _ZN10MotorProxy9configureEjPj
//   10 	myMotor.initialize();
        MOV      R0,SP
          CFI FunCall _ZN10MotorProxy10initializeEv
        BL       _ZN10MotorProxy10initializeEv
//   11 
//   12 	myMotor.setMotorSpeed(FORWARD, 10);
        MOVS     R2,#+10
        MOVS     R1,#+1
        MOV      R0,SP
          CFI FunCall _ZN10MotorProxy13setMotorSpeedE13DirectionTypej
        BL       _ZN10MotorProxy13setMotorSpeedE13DirectionTypej
//   13 
//   14 	printf("Motor address: 0x%X\n", &hwAddr);
        ADD      R1,SP,#+8
        LDR.N    R0,??main_0
          CFI FunCall printf
        BL       printf
//   15 	printf("Motor direction: %d\n", myMotor.getMotorDirection());
        MOV      R0,SP
          CFI FunCall _ZN10MotorProxy17getMotorDirectionEv
        BL       _ZN10MotorProxy17getMotorDirectionEv
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R1,R0
        LDR.N    R0,??main_0+0x4
          CFI FunCall printf
        BL       printf
//   16 	printf("Motor speed: %d\n", myMotor.getMotorSpeed());
        MOV      R0,SP
          CFI FunCall _ZN10MotorProxy13getMotorSpeedEv
        BL       _ZN10MotorProxy13getMotorSpeedEv
        MOVS     R1,R0
        LDR.N    R0,??main_0+0x8
          CFI FunCall printf
        BL       printf
//   17 	printf("Motor error state: %d\n", myMotor.getMotorState());
        MOV      R0,SP
          CFI FunCall _ZN10MotorProxy13getMotorStateEv
        BL       _ZN10MotorProxy13getMotorStateEv
        MOVS     R1,R0
        LDR.N    R0,??main_0+0xC
          CFI FunCall printf
        BL       printf
//   18 
//   19 	myMotor.disable();
        MOV      R0,SP
          CFI FunCall _ZN10MotorProxy7disableEv
        BL       _ZN10MotorProxy7disableEv
//   20 
//   21 	myMotor.enable();
        MOV      R0,SP
          CFI FunCall _ZN10MotorProxy6enableEv
        BL       _ZN10MotorProxy6enableEv
//   22 
//   23 	while (1) {
??main_1:
        B.N      ??main_1
        Nop      
        DATA
??main_0:
        DC32     ?_0
        DC32     ?_1
        DC32     ?_2
        DC32     ?_3
//   24 
//   25 	}
//   26 }
          CFI EndBlock cfiBlock1

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
// 122 bytes in section .text
// 
// 116 bytes of CODE  memory (+ 6 bytes shared)
//  92 bytes of CONST memory
//
//Errors: none
//Warnings: none
