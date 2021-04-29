///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.22.2.15995/W32 for ARM      19/Apr/2018  09:35:43
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Container\Code\C\main.c
//    Command line =  
//        -f C:\Users\Tim\AppData\Local\Temp\EW961D.tmp
//        (C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Container\Code\C\main.c
//        -lC
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Container\Code\C\Debug\List
//        -lA
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Container\Code\C\Debug\List
//        -o
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Container\Code\C\Debug\Obj
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 --fpu=None --dlib_config "C:\Program Files (x86)\IAR
//        Systems\Embedded Workbench 8.0\arm\INC\c\DLib_Config_Normal.h" -On)
//    Locale       =  C
//    List file    =  
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Container\Code\C\Debug\List\main.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "0"
        RTMODEL "__dlib_full_locale_support", "0"
        RTMODEL "__dlib_version", "6"
        RTMODEL "__iar_require _Printf", ""
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_memcpy4
        EXTERN free
        EXTERN malloc
        EXTERN printf

        PUBLIC int_container_create
        PUBLIC int_container_destroy
        PUBLIC int_container_value
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
        
// C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Container\Code\C\main.c
//    1 /* C approximation */
//    2 
//    3 #include <stdio.h>
//    4 #include <stdlib.h>
//    5 
//    6 typedef struct int_container int_container;
//    7 struct int_container {
//    8 	int* data;
//    9 	unsigned len;
//   10 };
//   11 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function int_container_create
        THUMB
//   12 void int_container_create (int_container* this, const int* data_in, unsigned len_in) {
int_container_create:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//   13 	this->data = (int*)malloc(len_in * sizeof(int));
        LSLS     R0,R6,#+2
          CFI FunCall malloc
        BL       malloc
        STR      R0,[R4, #+0]
//   14 	this->len = (this->data == 0) ? 0 : len_in;
        LDR      R0,[R4, #+0]
        CMP      R0,#+0
        BNE.N    ??int_container_create_0
        MOVS     R0,#+0
        B.N      ??int_container_create_1
??int_container_create_0:
        MOVS     R0,R6
??int_container_create_1:
        STR      R0,[R4, #+4]
//   15 		
//   16 	for (unsigned n = 0; n < len_in; ++n) {
        MOVS     R0,#+0
??int_container_create_2:
        CMP      R0,R6
        BCS.N    ??int_container_create_3
//   17 		this->data[n] = data_in[n];
        LDR      R1,[R5, R0, LSL #+2]
        LDR      R2,[R4, #+0]
        STR      R1,[R2, R0, LSL #+2]
//   18 	}
        ADDS     R0,R0,#+1
        B.N      ??int_container_create_2
//   19 }
??int_container_create_3:
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock0
//   20 	

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function int_container_destroy
        THUMB
//   21 void int_container_destroy (int_container* this) {
int_container_destroy:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//   22 	free(this->data);
        LDR      R0,[R4, #+0]
          CFI FunCall free
        BL       free
//   23 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock1
//   24 	

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function int_container_value
          CFI NoCalls
        THUMB
//   25 int int_container_value (int_container* this, int index) {
//   26 	return ((index >= 0 && ((unsigned)index) < this->len) ? this->data[index] : 0);
int_container_value:
        CMP      R1,#+0
        BMI.N    ??int_container_value_0
        LDR      R2,[R0, #+4]
        CMP      R1,R2
        BCS.N    ??int_container_value_0
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        B.N      ??int_container_value_1
??int_container_value_0:
        MOVS     R0,#+0
??int_container_value_1:
        BX       LR               ;; return
//   27 }
          CFI EndBlock cfiBlock2
//   28 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function main
        THUMB
//   29 int main(void)
//   30 {
main:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
        SUB      SP,SP,#+24
          CFI CFA R13+32
//   31 	int my_data[4] = {0,1,2,3};
        ADD      R0,SP,#+8
        LDR.N    R1,??DataTable1_1
        MOVS     R2,#+16
          CFI FunCall __aeabi_memcpy4
        BL       __aeabi_memcpy4
//   32 	int_container container;
//   33 	
//   34 	int_container_create(&container,my_data,4);
        MOVS     R2,#+4
        ADD      R1,SP,#+8
        MOV      R0,SP
          CFI FunCall int_container_create
        BL       int_container_create
//   35 	
//   36 	printf("%d", int_container_value(&container,2));
        MOVS     R1,#+2
        MOV      R0,SP
          CFI FunCall int_container_value
        BL       int_container_value
        MOVS     R1,R0
        ADR.N    R0,??DataTable1  ;; 0x25, 0x64, 0x00, 0x00
          CFI FunCall printf
        BL       printf
//   37 	
//   38 	int_container_destroy(&container);
        MOV      R0,SP
          CFI FunCall int_container_destroy
        BL       int_container_destroy
//   39 	
//   40 	while (1)
??main_0:
        B.N      ??main_0
//   41 	{
//   42 		
//   43 	}
//   44 }
          CFI EndBlock cfiBlock3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC8      0x25, 0x64, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     ?_0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_0:
        DC32 0, 1, 2, 3

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
        DC8 "%d"
        DC8 0

        END
// 
//  20 bytes in section .rodata
// 142 bytes in section .text
// 
// 142 bytes of CODE  memory
//  20 bytes of CONST memory
//
//Errors: none
//Warnings: none
