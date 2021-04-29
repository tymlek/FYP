///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.22.2.15995/W32 for ARM      18/Apr/2018  17:25:21
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Namespaces\Code\C\main.c
//    Command line =  
//        -f C:\Users\Tim\AppData\Local\Temp\EW8415.tmp
//        (C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Namespaces\Code\C\main.c
//        -lC
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Namespaces\Code\C\Debug\List
//        -lA
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Namespaces\Code\C\Debug\List
//        -o
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Namespaces\Code\C\Debug\Obj
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 --fpu=None --dlib_config "C:\Program Files (x86)\IAR
//        Systems\Embedded Workbench 8.0\arm\INC\c\DLib_Config_Normal.h" -On)
//    Locale       =  C
//    List file    =  
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Namespaces\Code\C\Debug\List\main.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        PUBLIC main
        PUBLIC ns1_func_f
        PUBLIC ns1_func_g
        PUBLIC ns2_func_f
        PUBLIC ns2_func_g
        
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
        
// C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Namespaces\Code\C\main.c
//    1 /* C approximation */
//    2 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function ns1_func_f
          CFI NoCalls
        THUMB
//    3 void ns1_func_f() {
//    4 
//    5 }
ns1_func_f:
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//    6 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function ns1_func_g
        THUMB
//    7 void ns1_func_g () {
ns1_func_g:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//    8 	ns1_func_f();
          CFI FunCall ns1_func_f
        BL       ns1_func_f
//    9 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock1
//   10 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function ns2_func_f
          CFI NoCalls
        THUMB
//   11 void ns2_func_f() {
//   12 
//   13 }
ns2_func_f:
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//   14 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function ns2_func_g
        THUMB
//   15 void ns2_func_g() {
ns2_func_g:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   16 	ns2_func_f();
          CFI FunCall ns2_func_f
        BL       ns2_func_f
//   17 }
        POP      {R0,PC}          ;; return
          CFI EndBlock cfiBlock3
//   18 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function main
        THUMB
//   19 int main() {
main:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   20 	ns1_func_g();
          CFI FunCall ns1_func_g
        BL       ns1_func_g
//   21 	ns2_func_g();
          CFI FunCall ns2_func_g
        BL       ns2_func_g
//   22 	
//   23 	while (1) {
??main_0:
        B.N      ??main_0
//   24 		
//   25 	}
//   26 }
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
