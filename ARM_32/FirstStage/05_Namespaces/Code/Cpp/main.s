///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.22.2.15995/W32 for ARM      18/Apr/2018  17:31:29
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Namespaces\Code\Cpp\main.cpp
//    Command line =  
//        -f C:\Users\Tim\AppData\Local\Temp\EW2129.tmp
//        (C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Namespaces\Code\Cpp\main.cpp
//        -lC
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Namespaces\Code\Cpp\Debug\List
//        -lA
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Namespaces\Code\Cpp\Debug\List
//        -o
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Namespaces\Code\Cpp\Debug\Obj
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 --fpu=None --dlib_config "C:\Program Files (x86)\IAR
//        Systems\Embedded Workbench 8.0\arm\INC\c\DLib_Config_Normal.h" -On
//        --c++ --no_exceptions --no_rtti --no_static_destruction)
//    Locale       =  C
//    List file    =  
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Namespaces\Code\Cpp\Debug\List\main.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__CPP_Exceptions", "Disabled"
        RTMODEL "__CPP_Language", "C++14"
        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        PUBLIC _ZN3ns16func_fEv
        PUBLIC _ZN3ns16func_gEv
        PUBLIC _ZN3ns26func_fEv
        PUBLIC _ZN3ns26func_gEv
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
        
// C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Namespaces\Code\Cpp\main.cpp
//    1 /* C++ implementation */
//    2 
//    3 namespace ns1 {

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function _ZN3ns16func_fEv
          CFI NoCalls
        THUMB
//    4 	void func_f() {
//    5 
//    6 	}
_ZN3ns16func_fEv:
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//    7 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function _ZN3ns16func_gEv
        THUMB
//    8 	void func_g () {
_ZN3ns16func_gEv:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//    9 		func_f();           // Calls ns1::func_f() implicitly
          CFI FunCall _ZN3ns16func_fEv
        BL       _ZN3ns16func_fEv
//   10 	}
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock1
//   11 }
//   12 
//   13 namespace ns2 {

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function _ZN3ns26func_fEv
          CFI NoCalls
        THUMB
//   14 	void func_f() {
//   15 
//   16 	}
_ZN3ns26func_fEv:
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//   17 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function _ZN3ns26func_gEv
        THUMB
//   18 	void func_g() {
_ZN3ns26func_gEv:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   19 		func_f();           // Calls ns2::func_f() implicitly
          CFI FunCall _ZN3ns26func_fEv
        BL       _ZN3ns26func_fEv
//   20 	}
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock3
//   21 }
//   22 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function main
        THUMB
//   23 int main() {
main:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   24 	ns1::func_g();
          CFI FunCall _ZN3ns16func_gEv
        BL       _ZN3ns16func_gEv
//   25 	ns2::func_g();
          CFI FunCall _ZN3ns26func_gEv
        BL       _ZN3ns26func_gEv
//   26 	
//   27 	while (1) {
??main_0:
        B.N      ??main_0
//   28 		
//   29 	}
//   30 }
          CFI EndBlock cfiBlock4

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
// 32 bytes in section .text
// 
// 32 bytes of CODE memory
//
//Errors: none
//Warnings: none
