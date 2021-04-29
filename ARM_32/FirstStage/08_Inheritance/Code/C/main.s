///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.22.2.15995/W32 for ARM      18/Apr/2018  15:36:11
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Inheritance\Code\C\main.c
//    Command line =  
//        -f C:\Users\Tim\AppData\Local\Temp\EW8F30.tmp
//        (C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Inheritance\Code\C\main.c
//        -lC
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Inheritance\Code\C\Debug\List
//        -lA
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Inheritance\Code\C\Debug\List
//        -o
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Inheritance\Code\C\Debug\Obj
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 --fpu=None --dlib_config "C:\Program Files (x86)\IAR
//        Systems\Embedded Workbench 8.0\arm\INC\c\DLib_Config_Normal.h" -On)
//    Locale       =  C
//    List file    =  
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Inheritance\Code\C\Debug\List\main.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        PUBLIC ChildConstructor
        PUBLIC ParConstructor
        PUBLIC func_Child
        PUBLIC func_Par
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
        
// C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Inheritance\Code\C\main.c
//    1 /* C style substitute for inheritance */
//    2 
//    3 struct Parent {
//    4 	int value;
//    5 };
//    6 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function ParConstructor
          CFI NoCalls
        THUMB
//    7 void ParConstructor(struct Parent* this) {
//    8 	this->value = 1;
ParConstructor:
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
//    9 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//   10 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function func_Par
          CFI NoCalls
        THUMB
//   11 int func_Par(struct Parent* this) {
//   12 	return this->value;
func_Par:
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
//   13 }
          CFI EndBlock cfiBlock1
//   14 
//   15 struct Child {
//   16 	struct Parent parent;
//   17 	int sec_value;
//   18 };
//   19 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function ChildConstructor
        THUMB
//   20 void ChildConstructor(struct Child* this) {
ChildConstructor:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//   21 	ParConstructor(&this->parent);
        MOVS     R0,R4
          CFI FunCall ParConstructor
        BL       ParConstructor
//   22 	this->sec_value = 2;
        MOVS     R0,#+2
        STR      R0,[R4, #+4]
//   23 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock2
//   24 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function func_Child
          CFI NoCalls
        THUMB
//   25 int func_Child(struct Child* this) {
//   26 	return this->sec_value;
func_Child:
        LDR      R0,[R0, #+4]
        BX       LR               ;; return
//   27 }
          CFI EndBlock cfiBlock3
//   28 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function main
        THUMB
//   29 int main() {
main:
        PUSH     {R5-R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+16
//   30 	struct Child child;
//   31 
//   32 	ChildConstructor(&child);
        MOV      R0,SP
          CFI FunCall ChildConstructor
        BL       ChildConstructor
//   33 	func_Par((struct Parent*)&child);
        MOV      R0,SP
          CFI FunCall func_Par
        BL       func_Par
//   34 	func_Child(&child);
        MOV      R0,SP
          CFI FunCall func_Child
        BL       func_Child
//   35 	
//   36 	while (1) {
??main_0:
        B.N      ??main_0
//   37 		
//   38 	}
//   39 }
          CFI EndBlock cfiBlock4

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
// 
// 52 bytes in section .text
// 
// 52 bytes of CODE memory
//
//Errors: none
//Warnings: none
