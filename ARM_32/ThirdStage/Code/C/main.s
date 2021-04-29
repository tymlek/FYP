///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.22.2.15995/W32 for ARM      23/Apr/2018  02:41:30
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\04_ECG\ECG\main.c
//    Command line =  
//        -f C:\Users\Tim\AppData\Local\Temp\EWD3DC.tmp
//        (C:\Users\Tim\Programming\Code\ARM_32\Patterns\04_ECG\ECG\main.c -lC
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\04_ECG\ECG\Debug\List
//        -lA
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\04_ECG\ECG\Debug\List
//        -o C:\Users\Tim\Programming\Code\ARM_32\Patterns\04_ECG\ECG\Debug\Obj
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 --fpu=None --dlib_config "C:\Program Files (x86)\IAR
//        Systems\Embedded Workbench 8.0\arm\INC\c\DLib_Config_Normal.h" -On)
//    Locale       =  C
//    List file    =  
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\04_ECG\ECG\Debug\List\main.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "0"
        RTMODEL "__dlib_version", "6"
        RTMODEL "__iar_require _Printf", ""
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN ECG_Module_acquireValue
        EXTERN HistogramDisplay_getValue
        EXTERN TestBuilder_Create
        EXTERN TestBuilder_Destroy
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
        
// C:\Users\Tim\Programming\Code\ARM_32\Patterns\04_ECG\ECG\main.c
//    1 //#include "ECGPkg.h"
//    2 //#include "ECG_Module.h"
//    3 //#include "TMDQueue.h"
//    4 //#include "HistogramDisplay.h"
//    5 #include "TestBuilder.h"
//    6 

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function main
        THUMB
//    7 int main() {
main:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
//    8 	int status = 0;
        MOVS     R4,#+0
//    9 
//   10 	TestBuilder* p_TestBuilder;
//   11 	p_TestBuilder = TestBuilder_Create();
          CFI FunCall TestBuilder_Create
        BL       TestBuilder_Create
        MOVS     R5,R0
//   12 
//   13 	ECG_Module_acquireValue(&(p_TestBuilder->itsECG_Module));
        MOVS     R0,R5
          CFI FunCall ECG_Module_acquireValue
        BL       ECG_Module_acquireValue
//   14 	ECG_Module_acquireValue(&(p_TestBuilder->itsECG_Module));
        MOVS     R0,R5
          CFI FunCall ECG_Module_acquireValue
        BL       ECG_Module_acquireValue
//   15 	ECG_Module_acquireValue(&(p_TestBuilder->itsECG_Module));
        MOVS     R0,R5
          CFI FunCall ECG_Module_acquireValue
        BL       ECG_Module_acquireValue
//   16 	ECG_Module_acquireValue(&(p_TestBuilder->itsECG_Module));
        MOVS     R0,R5
          CFI FunCall ECG_Module_acquireValue
        BL       ECG_Module_acquireValue
//   17 	ECG_Module_acquireValue(&(p_TestBuilder->itsECG_Module));
        MOVS     R0,R5
          CFI FunCall ECG_Module_acquireValue
        BL       ECG_Module_acquireValue
//   18 
//   19 	HistogramDisplay_getValue(&(p_TestBuilder->itsHistogramDisplay));
        ADDS     R0,R5,#+16
          CFI FunCall HistogramDisplay_getValue
        BL       HistogramDisplay_getValue
//   20 	HistogramDisplay_getValue(&(p_TestBuilder->itsHistogramDisplay));
        ADDS     R0,R5,#+16
          CFI FunCall HistogramDisplay_getValue
        BL       HistogramDisplay_getValue
//   21 	HistogramDisplay_getValue(&(p_TestBuilder->itsHistogramDisplay));
        ADDS     R0,R5,#+16
          CFI FunCall HistogramDisplay_getValue
        BL       HistogramDisplay_getValue
//   22 	HistogramDisplay_getValue(&(p_TestBuilder->itsHistogramDisplay));
        ADDS     R0,R5,#+16
          CFI FunCall HistogramDisplay_getValue
        BL       HistogramDisplay_getValue
//   23 	HistogramDisplay_getValue(&(p_TestBuilder->itsHistogramDisplay));
        ADDS     R0,R5,#+16
          CFI FunCall HistogramDisplay_getValue
        BL       HistogramDisplay_getValue
//   24 
//   25 	printf("Done\n");
        LDR.N    R0,??main_0
          CFI FunCall printf
        BL       printf
//   26 
//   27 	TestBuilder_Destroy(p_TestBuilder);
        MOVS     R0,R5
          CFI FunCall TestBuilder_Destroy
        BL       TestBuilder_Destroy
//   28 
//   29 	while (1) {
??main_1:
        B.N      ??main_1
        Nop      
        DATA
??main_0:
        DC32     ?_0
//   30         }
//   31 }
          CFI EndBlock cfiBlock0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_0:
        DC8 "Done\012"
        DC8 0, 0

        END
// 
//   8 bytes in section .rodata
// 100 bytes in section .text
// 
// 100 bytes of CODE  memory
//   8 bytes of CONST memory
//
//Errors: none
//Warnings: 1
