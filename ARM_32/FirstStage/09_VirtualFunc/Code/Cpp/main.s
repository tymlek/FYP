///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.22.2.15995/W32 for ARM      18/Apr/2018  18:33:26
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\VirtualFunc\Code\Cpp\main.cpp
//    Command line =  
//        -f C:\Users\Tim\AppData\Local\Temp\EWDCDD.tmp
//        (C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\VirtualFunc\Code\Cpp\main.cpp
//        -lC
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\VirtualFunc\Code\Cpp\Debug\List
//        -lA
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\VirtualFunc\Code\Cpp\Debug\List
//        -o
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\VirtualFunc\Code\Cpp\Debug\Obj
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 --fpu=None --dlib_config "C:\Program Files (x86)\IAR
//        Systems\Embedded Workbench 8.0\arm\INC\c\DLib_Config_Normal.h" -On
//        --c++ --no_exceptions --no_rtti --no_static_destruction)
//    Locale       =  C
//    List file    =  
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\VirtualFunc\Code\Cpp\Debug\List\main.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__CPP_Exceptions", "Disabled"
        RTMODEL "__CPP_Language", "C++14"
        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN _ZTVN10__cxxabiv117__class_type_infoE
        EXTERN _ZTVN10__cxxabiv120__si_class_type_infoE

        PUBLIC _ZN1A1fEv
        PUBLIC _ZN1AC1Ev
        PUBLIC _ZN1AC2Ev
        PUBLIC _ZN1B1fEv
        PUBLIC _ZN1BC1Ev
        PUBLIC _ZN1BC2Ev
        PUBLIC _ZTI1A
        PUBLIC _ZTI1B
        PUBLIC _ZTS1A
        PUBLIC _ZTS1B
        PUBLIC _ZTV1A
        PUBLIC _ZTV1B
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
        
// C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\VirtualFunc\Code\Cpp\main.cpp
//    1 /* C++ implementation */ 
//    2 
//    3 class A {
//    4 	public:
//    5 	A();
//    6 	virtual int f();
//    7 	
//    8 	private:
//    9 	int value;
//   10 };
//   11 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function _ZN1AC2Ev
        THUMB
// __code __interwork __softfp A::subobject A()
_ZN1AC2Ev:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
        MOVS     R0,R4
          CFI FunCall _ZN1AC1Ev
        BL       _ZN1AC1Ev
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock0

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function _ZN1BC2Ev
        THUMB
// __code __interwork __softfp B::subobject B()
_ZN1BC2Ev:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
        MOVS     R0,R4
          CFI FunCall _ZN1BC1Ev
        BL       _ZN1BC1Ev
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock1

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function _ZN1AC1Ev
          CFI NoCalls
        THUMB
//   12 A::A() {
_ZN1AC1Ev:
        LDR.N    R1,??DataTable2
        STR      R1,[R0, #+0]
//   13 	value = 0;
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
//   14 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock2
//   15 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function _ZN1A1fEv
          CFI NoCalls
        THUMB
//   16 int A::f() {
_ZN1A1fEv:
        MOVS     R1,R0
//   17 	return 0;
        MOVS     R0,#+0
        BX       LR               ;; return
//   18 }
          CFI EndBlock cfiBlock3
//   19 
//   20 class B : public A {
//   21 	public:
//   22 	B();
//   23 	virtual int f() override;
//   24 };
//   25 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function _ZN1BC1Ev
        THUMB
//   26 B::B() {
_ZN1BC1Ev:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
        MOVS     R0,R4
          CFI FunCall _ZN1AC2Ev
        BL       _ZN1AC2Ev
        LDR.N    R0,??DataTable2_1
        STR      R0,[R4, #+0]
//   27 	
//   28 }
        MOVS     R0,R4
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     _ZTV1A+0x8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     _ZTV1B+0x8
//   29 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function _ZN1B1fEv
          CFI NoCalls
        THUMB
//   30 int B::f() {
_ZN1B1fEv:
        MOVS     R1,R0
//   31 	return 1;
        MOVS     R0,#+1
        BX       LR               ;; return
//   32 }
          CFI EndBlock cfiBlock5
//   33 
//   34 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function main
        THUMB
//   35 int main(void)
//   36 {
main:
        PUSH     {R2-R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+16
//   37 	B b;
        MOV      R0,SP
          CFI FunCall _ZN1BC1Ev
        BL       _ZN1BC1Ev
//   38 	A* aPtr = &b;
        MOV      R4,SP
//   39 	
//   40 	aPtr->f();
        MOVS     R0,R4
        LDR      R1,[R4, #+0]
        LDR      R1,[R1, #+0]
          CFI FunCall
        BLX      R1
//   41     
//   42     while (1) 
??main_0:
        B.N      ??main_0
//   43     {
//   44 		
//   45     }
//   46 }
          CFI EndBlock cfiBlock6

        SECTION `.iar_vfe_vtableinfo_ZTV1A`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        SECTION_GROUP _ZTV1A
        DATA
        DC32    _ZTV1A
        DC32    3
        DC32    1
        DC32    _ZTI1A
        DC32    1
        DC32    2
        DC32    0

        SECTION `.iar_vfe_vtableinfo_ZTV1B`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        SECTION_GROUP _ZTV1B
        DATA
        DC32    _ZTV1B
        DC32    3
        DC32    2
        DC32    _ZTI1A
        DC32    0
        DC32    1
        DC32    _ZTI1B
        DC32    1
        DC32    2
        DC32    0
        DC32    _ZTI1B
        DC32    1
        DC32    2
        DC32    0

        SECTION `.iar_vfe_vcallinfomain`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        SECTION_GROUP main
        DATA
        DC32    main
        DC32    0
        DC32    0
        DC32    1
        DC32    _ZTI1A
        DC32    1
        DC32    1
        DC32    0
        DC32    0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTV1A
        DATA
// __absolute void (*const A::__vtbl[3])()
_ZTV1A:
        DC32 0H, _ZTI1A, _ZN1A1fEv

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTV1B
        DATA
// __absolute void (*const B::__vtbl[3])()
_ZTV1B:
        DC32 0H, _ZTI1B, _ZN1B1fEv

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTI1A
        DATA
// __absolute __class_type_info const <Typeinfo for A>
_ZTI1A:
        DC32 _ZTVN10__cxxabiv117__class_type_infoE + 8H, _ZTS1A

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTI1B
        DATA
// __absolute __si_class_type_info const <Typeinfo for B>
_ZTI1B:
        DC32 _ZTVN10__cxxabiv120__si_class_type_infoE + 8H, _ZTS1B, _ZTI1A

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTS1A
        DATA
// __absolute char const <Typeinfo name for A>[3]
_ZTS1A:
        DC8 "1A"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTS1B
        DATA
// __absolute char const <Typeinfo name for B>[3]
_ZTS1B:
        DC8 "1B"
        DC8 0

        END
// 
// 52 bytes in section .rodata
// 92 bytes in section .text
// 
// 92 bytes of CODE  memory
//  0 bytes of CONST memory (+ 52 bytes shared)
//
//Errors: none
//Warnings: none
