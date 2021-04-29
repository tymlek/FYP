///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.22.2.15995/W32 for ARM      19/Apr/2018  09:33:48
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Class\Code\C\main.c
//    Command line =  
//        -f C:\Users\Tim\AppData\Local\Temp\EWD3A5.tmp
//        (C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Class\Code\C\main.c
//        -lC
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Class\Code\C\Debug\List
//        -lA
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Class\Code\C\Debug\List
//        -o
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Class\Code\C\Debug\Obj
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 --fpu=None --dlib_config "C:\Program Files (x86)\IAR
//        Systems\Embedded Workbench 8.0\arm\INC\c\DLib_Config_Normal.h" -On)
//    Locale       =  C
//    List file    =  
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Class\Code\C\Debug\List\main.s
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

        EXTERN printf

        PUBLIC getX_A
        PUBLIC main
        PUBLIC setX_A
        
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
        
// C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Class\Code\C\main.c
//    1 /* C approximation */
//    2 
//    3 #include <stdio.h>
//    4 
//    5 struct A {
//    6 	int x;
//    7 };
//    8 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function setX_A
          CFI NoCalls
        THUMB
//    9 void setX_A(struct A* this, int num) {
//   10 	this->x = num;
setX_A:
        STR      R1,[R0, #+0]
//   11 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//   12 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function getX_A
          CFI NoCalls
        THUMB
//   13 int getX_A(struct A* this) {
//   14 	return this->x;
getX_A:
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
//   15 }
          CFI EndBlock cfiBlock1
//   16 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function main
        THUMB
//   17 int main() {
main:
        PUSH     {R2-R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+16
//   18 	struct A a;
//   19 	int number = 5;
        MOVS     R4,#+5
//   20 
//   21 	setX_A(&a,number);
        MOVS     R1,R4
        MOV      R0,SP
          CFI FunCall setX_A
        BL       setX_A
//   22 
//   23 	printf("Property x: %d\n",getX_A(&a));
        MOV      R0,SP
          CFI FunCall getX_A
        BL       getX_A
        MOVS     R1,R0
        LDR.N    R0,??DataTable1
          CFI FunCall printf
        BL       printf
//   24 	
//   25 	while (1) {
??main_0:
        B.N      ??main_0
//   26 		
//   27 	}
//   28 }
          CFI EndBlock cfiBlock2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     ?_0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_0:
        DC8 "Property x: %d\012"

        END
// 
// 16 bytes in section .rodata
// 40 bytes in section .text
// 
// 40 bytes of CODE  memory
// 16 bytes of CONST memory
//
//Errors: none
//Warnings: none
