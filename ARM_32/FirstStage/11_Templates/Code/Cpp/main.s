///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.22.2.15995/W32 for ARM      18/Apr/2018  18:14:45
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Templates\Code\Cpp\main.cpp
//    Command line =  
//        -f C:\Users\Tim\AppData\Local\Temp\EWBFB7.tmp
//        (C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Templates\Code\Cpp\main.cpp
//        -lC
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Templates\Code\Cpp\Debug\List
//        -lA
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Templates\Code\Cpp\Debug\List
//        -o
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Templates\Code\Cpp\Debug\Obj
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 --fpu=None --dlib_config "C:\Program Files (x86)\IAR
//        Systems\Embedded Workbench 8.0\arm\INC\c\DLib_Config_Normal.h" -On
//        --c++ --no_exceptions --no_rtti --no_static_destruction)
//    Locale       =  C
//    List file    =  
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Templates\Code\Cpp\Debug\List\main.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__CPP_Exceptions", "Disabled"
        RTMODEL "__CPP_Language", "C++14"
        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        PUBLIC _ZN1AIiE1fEv
        PUBLIC _ZN1AIiEC1Ei
        PUBLIC _ZN1AIiEC2Ei
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
        
// C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Templates\Code\Cpp\main.cpp
//    1 /* Simple template class in C++ */
//    2 
//    3 template<typename T>

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN1AIiEC2Ei
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function _ZN1AIiEC2Ei
        THUMB
// __code __interwork __softfp A<int>::subobject A(int)
_ZN1AIiEC2Ei:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//    4 class A {
        MOVS     R0,R4
          CFI FunCall _ZN1AIiEC1Ei
        BL       _ZN1AIiEC1Ei
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock0
//    5 	public:
//    6 	A(T init);
//    7 	T f();
//    8 	private:
//    9 	T value;
//   10 };
//   11 
//   12 template<typename T>

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN1AIiEC1Ei
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function _ZN1AIiEC1Ei
          CFI NoCalls
        THUMB
//   13 A<T>::A(T init) {
//   14 	value = init;
// __code __interwork __softfp A<int>::A(int)
_ZN1AIiEC1Ei:
        STR      R1,[R0, #+0]
//   15 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//   16 
//   17 template<typename T>

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN1AIiE1fEv
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function _ZN1AIiE1fEv
          CFI NoCalls
        THUMB
//   18 T A<T>::f() {
//   19 	return value;
// __interwork __softfp int A<int>::f()
_ZN1AIiE1fEv:
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
//   20 }
          CFI EndBlock cfiBlock2
//   21 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function main
        THUMB
//   22 int main() {
main:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
//   23 	A<int> a(1);
        MOVS     R1,#+1
        MOV      R0,SP
          CFI FunCall _ZN1AIiEC1Ei
        BL       _ZN1AIiEC1Ei
//   24 	a.f();
          CFI FunCall _ZN1AIiE1fEv
        BL       _ZN1AIiE1fEv
//   25 	
//   26 	while (1) {
??main_0:
        B.N      ??main_0
//   27 		
//   28 	}
//   29 }
          CFI EndBlock cfiBlock3

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
// 36 bytes in section .text
// 
// 16 bytes of CODE memory (+ 20 bytes shared)
//
//Errors: none
//Warnings: none
