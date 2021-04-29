///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.22.2.15995/W32 for ARM      18/Apr/2018  18:22:05
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\VirtualFunc\Code\C\main.c
//    Command line =  
//        -f C:\Users\Tim\AppData\Local\Temp\EW7827.tmp
//        (C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\VirtualFunc\Code\C\main.c
//        -lC
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\VirtualFunc\Code\C\Debug\List
//        -lA
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\VirtualFunc\Code\C\Debug\List
//        -o
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\VirtualFunc\Code\C\Debug\Obj
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 --fpu=None --dlib_config "C:\Program Files (x86)\IAR
//        Systems\Embedded Workbench 8.0\arm\INC\c\DLib_Config_Normal.h" -On)
//    Locale       =  C
//    List file    =  
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\VirtualFunc\Code\C\Debug\List\main.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        PUBLIC constructor_A
        PUBLIC constructor_B
        PUBLIC f_A
        PUBLIC f_B
        PUBLIC main
        PUBLIC vTable_A
        PUBLIC vTable_B
        
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
        
// C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\VirtualFunc\Code\C\main.c
//    1 /* C approximation */
//    2 
//    3 typedef struct A A;
//    4 struct A {
//    5 	void** vTable;
//    6 	int value;
//    7 };
//    8 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function f_A
          CFI NoCalls
        THUMB
//    9 int f_A(A* this) {
f_A:
        MOVS     R1,R0
//   10 	return 0;
        MOVS     R0,#+0
        BX       LR               ;; return
//   11 }
          CFI EndBlock cfiBlock0
//   12 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   13 void* vTable_A[] = {
vTable_A:
        DC32 f_A
//   14 	(void*) &f_A
//   15 };
//   16 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function constructor_A
          CFI NoCalls
        THUMB
//   17 void constructor_A(A* this) {
//   18 	this->vTable = vTable_A;
constructor_A:
        LDR.N    R1,??DataTable2
        STR      R1,[R0, #+0]
//   19 	this->value = 0;
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
//   20 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//   21 
//   22 typedef struct B B;
//   23 struct B {
//   24 	A a;
//   25 };
//   26 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function f_B
          CFI NoCalls
        THUMB
//   27 int f_B(B* this) {
f_B:
        MOVS     R1,R0
//   28 	return 1;
        MOVS     R0,#+1
        BX       LR               ;; return
//   29 }
          CFI EndBlock cfiBlock2
//   30 

        SECTION `.data`:DATA:REORDER:NOROOT(2)
        DATA
//   31 void* vTable_B[] = {
vTable_B:
        DC32 f_B
//   32 	(void*) &f_B
//   33 };
//   34 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function constructor_B
        THUMB
//   35 void constructor_B(B* this) {
constructor_B:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//   36 	constructor_A((A*) this);
        MOVS     R0,R4
          CFI FunCall constructor_A
        BL       constructor_A
//   37 	this->a.vTable = vTable_B;
        LDR.N    R0,??DataTable2_1
        STR      R0,[R4, #+0]
//   38 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     vTable_A

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     vTable_B
//   39 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function main
        THUMB
//   40 int main(void)
//   41 {
main:
        PUSH     {R2-R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+16
//   42 	B b;
//   43 	A* aPtr;
//   44 	
//   45 	constructor_B(&b);
        MOV      R0,SP
          CFI FunCall constructor_B
        BL       constructor_B
//   46 	typedef void (*f_A_Type) (A*);
//   47 	
//   48 	aPtr = (A*) &b;
        MOV      R4,SP
//   49 	((f_A_Type) aPtr->vTable[0]) (aPtr);
        MOVS     R0,R4
        LDR      R1,[R4, #+0]
        LDR      R1,[R1, #+0]
          CFI FunCall
        BLX      R1
//   50 	
//   51 	while (1)
??main_0:
        B.N      ??main_0
//   52 	{
//   53 		
//   54 	}
//   55 }
          CFI EndBlock cfiBlock4

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
//  8 bytes in section .data
// 66 bytes in section .text
// 
// 66 bytes of CODE memory
//  8 bytes of DATA memory
//
//Errors: none
//Warnings: none
