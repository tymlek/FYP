///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.22.2.15995/W32 for ARM      18/Apr/2018  15:44:44
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Inheritance\Code\Cpp\main.cpp
//    Command line =  
//        -f C:\Users\Tim\AppData\Local\Temp\EW6444.tmp
//        (C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Inheritance\Code\Cpp\main.cpp
//        -lC
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Inheritance\Code\Cpp\Debug\List
//        -lA
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Inheritance\Code\Cpp\Debug\List
//        -o
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Inheritance\Code\Cpp\Debug\Obj
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 --fpu=None --dlib_config "C:\Program Files (x86)\IAR
//        Systems\Embedded Workbench 8.0\arm\INC\c\DLib_Config_Normal.h" -On
//        --c++ --no_exceptions --no_rtti --no_static_destruction)
//    Locale       =  C
//    List file    =  
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Inheritance\Code\Cpp\Debug\List\main.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__CPP_Exceptions", "Disabled"
        RTMODEL "__CPP_Language", "C++14"
        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        PUBLIC _ZN5Child1gEv
        PUBLIC _ZN5ChildC1Ev
        PUBLIC _ZN5ChildC2Ev
        PUBLIC _ZN6Parent1fEv
        PUBLIC _ZN6ParentC1Ev
        PUBLIC _ZN6ParentC2Ev
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
        
// C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Inheritance\Code\Cpp\main.cpp
//    1 /* Simple inheritance in C++ */
//    2 
//    3 class Parent {
//    4 	public:
//    5 	Parent();
//    6 	int f();
//    7 	private:
//    8 	int value;
//    9 };
//   10 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function _ZN6ParentC2Ev
        THUMB
// __code __interwork __softfp Parent::subobject Parent()
_ZN6ParentC2Ev:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
        MOVS     R0,R4
          CFI FunCall _ZN6ParentC1Ev
        BL       _ZN6ParentC1Ev
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock0

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function _ZN5ChildC2Ev
        THUMB
// __code __interwork __softfp Child::subobject Child()
_ZN5ChildC2Ev:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
        MOVS     R0,R4
          CFI FunCall _ZN5ChildC1Ev
        BL       _ZN5ChildC1Ev
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock1

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function _ZN6ParentC1Ev
          CFI NoCalls
        THUMB
//   11 Parent::Parent() {
//   12 	value = 1;
_ZN6ParentC1Ev:
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//   13 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//   14 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function _ZN6Parent1fEv
          CFI NoCalls
        THUMB
//   15 int Parent::f() {
//   16 	return value;
_ZN6Parent1fEv:
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
//   17 }
          CFI EndBlock cfiBlock3
//   18 
//   19 class Child : public Parent {
//   20 	public:
//   21 	Child();
//   22 	int g();
//   23 	private:
//   24 	int sec_value;
//   25 };
//   26 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function _ZN5ChildC1Ev
        THUMB
//   27 Child::Child() {
_ZN5ChildC1Ev:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
        MOVS     R0,R4
          CFI FunCall _ZN6ParentC2Ev
        BL       _ZN6ParentC2Ev
//   28 	sec_value = 2;
        MOVS     R0,#+2
        STR      R0,[R4, #+4]
//   29 }
        MOVS     R0,R4
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock4
//   30 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function _ZN5Child1gEv
          CFI NoCalls
        THUMB
//   31 int Child::g() {
//   32 	return sec_value;
_ZN5Child1gEv:
        LDR      R0,[R0, #+4]
        BX       LR               ;; return
//   33 }
          CFI EndBlock cfiBlock5
//   34 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function main
        THUMB
//   35 int main() {
main:
        PUSH     {R5-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+16
//   36 	Child child;
        MOV      R0,SP
          CFI FunCall _ZN5ChildC1Ev
        BL       _ZN5ChildC1Ev
//   37 	child.f();
          CFI FunCall _ZN6Parent1fEv
        BL       _ZN6Parent1fEv
//   38 	child.g();
        MOV      R0,SP
          CFI FunCall _ZN5Child1gEv
        BL       _ZN5Child1gEv
//   39 	
//   40 	while (1) {
??main_0:
        B.N      ??main_0
//   41 		
//   42 	}
//   43 }
          CFI EndBlock cfiBlock6

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
// 76 bytes in section .text
// 
// 76 bytes of CODE memory
//
//Errors: none
//Warnings: none
