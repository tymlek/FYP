///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.22.2.15995/W32 for ARM      19/Apr/2018  09:34:41
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Class\Code\Cpp\main.cpp
//    Command line =  
//        -f C:\Users\Tim\AppData\Local\Temp\EWA113.tmp
//        (C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Class\Code\Cpp\main.cpp
//        -lC
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Class\Code\Cpp\Debug\List
//        -lA
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Class\Code\Cpp\Debug\List
//        -o
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Class\Code\Cpp\Debug\Obj
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 --fpu=None --dlib_config "C:\Program Files (x86)\IAR
//        Systems\Embedded Workbench 8.0\arm\INC\c\DLib_Config_Normal.h" -On
//        --c++ --no_exceptions --no_rtti --no_static_destruction)
//    Locale       =  C
//    List file    =  
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Class\Code\Cpp\Debug\List\main.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__CPP_Exceptions", "Disabled"
        RTMODEL "__CPP_Language", "C++14"
        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "0"
        RTMODEL "__dlib_version", "6"
        RTMODEL "__iar_require _Printf", ""
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN printf

        PUBLIC _ZN1A4getXEv
        PUBLIC _ZN1A4setXEi
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
        
// C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Class\Code\Cpp\main.cpp
//    1 /* C++ implementation */
//    2 
//    3 #include <stdio.h>
//    4 
//    5 class A {
//    6 	public:

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN1A4setXEi
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function _ZN1A4setXEi
          CFI NoCalls
        THUMB
//    7 	void setX(int num) {
//    8 		this->x = num;
_ZN1A4setXEi:
        STR      R1,[R0, #+0]
//    9 	}
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//   10 

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN1A4getXEv
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function _ZN1A4getXEv
          CFI NoCalls
        THUMB
//   11 	int getX() {
//   12 		return this->x;
_ZN1A4getXEv:
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
//   13 	}
          CFI EndBlock cfiBlock1
//   14 	private:
//   15 	int x;
//   16 };
//   17 

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function main
        THUMB
//   18 int main() {
main:
        PUSH     {R2-R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+16
//   19 	A a;
//   20 	int number = 5;
        MOVS     R4,#+5
//   21 
//   22 	a.setX(number);
        MOVS     R1,R4
        MOV      R0,SP
          CFI FunCall _ZN1A4setXEi
        BL       _ZN1A4setXEi
//   23 
//   24 	printf("Property x: %d\n",a.getX());
        MOV      R0,SP
          CFI FunCall _ZN1A4getXEv
        BL       _ZN1A4getXEv
        MOVS     R1,R0
        LDR.N    R0,??main_0
          CFI FunCall printf
        BL       printf
//   25 	
//   26 	while (1) {
??main_1:
        B.N      ??main_1
        DATA
??main_0:
        DC32     ?_0
//   27 		
//   28 	}
//   29 }
          CFI EndBlock cfiBlock2

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
// 32 bytes of CODE  memory (+ 8 bytes shared)
// 16 bytes of CONST memory
//
//Errors: none
//Warnings: none
