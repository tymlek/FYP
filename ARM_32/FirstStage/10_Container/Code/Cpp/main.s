///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.22.2.15995/W32 for ARM      19/Apr/2018  09:36:45
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Container\Code\Cpp\main.cpp
//    Command line =  
//        -f C:\Users\Tim\AppData\Local\Temp\EW8879.tmp
//        (C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Container\Code\Cpp\main.cpp
//        -lC
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Container\Code\Cpp\Debug\List
//        -lA
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Container\Code\Cpp\Debug\List
//        -o
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Container\Code\Cpp\Debug\Obj
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 --fpu=None --dlib_config "C:\Program Files (x86)\IAR
//        Systems\Embedded Workbench 8.0\arm\INC\c\DLib_Config_Normal.h" -On
//        --c++ --no_exceptions --no_rtti --no_static_destruction)
//    Locale       =  C
//    List file    =  
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Container\Code\Cpp\Debug\List\main.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__CPP_Exceptions", "Disabled"
        RTMODEL "__CPP_Language", "C++14"
        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "0"
        RTMODEL "__dlib_full_locale_support", "0"
        RTMODEL "__dlib_version", "6"
        RTMODEL "__iar_require _Printf", ""
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN _Znaj
        EXTERN __aeabi_memcpy4
        EXTERN printf

        PUBLIC _ZN13int_containerC1EPKij
        PUBLIC _ZNK13int_containerixEi
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
        
// C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Container\Code\Cpp\main.cpp
//    1 /* C++ implementation */
//    2 
//    3 #include <stdio.h>
//    4 #include <stdlib.h>
//    5 
//    6 class int_container {
//    7 	public:

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN13int_containerC1EPKij
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function _ZN13int_containerC1EPKij
        THUMB
//    8 	int_container (const int* data_in, unsigned len_in) {
_ZN13int_containerC1EPKij:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//    9           data = new int[len_in];
        LSLS     R0,R6,#+2
          CFI FunCall _Znaj
        BL       _Znaj
        STR      R0,[R4, #+0]
//   10 		len = (data == 0) ? 0 : len_in;
        LDR      R0,[R4, #+0]
        CMP      R0,#+0
        BNE.N    ??int_container_0
        MOVS     R0,#+0
        B.N      ??int_container_1
??int_container_0:
        MOVS     R0,R6
??int_container_1:
        STR      R0,[R4, #+4]
//   11 		
//   12 		for (unsigned n = 0; n < len; ++n) {
        MOVS     R0,#+0
??int_container_2:
        LDR      R1,[R4, #+4]
        CMP      R0,R1
        BCS.N    ??int_container_3
//   13 			data[n] = data_in[n];
        LDR      R1,[R5, R0, LSL #+2]
        LDR      R2,[R4, #+0]
        STR      R1,[R2, R0, LSL #+2]
//   14 		}
        ADDS     R0,R0,#+1
        B.N      ??int_container_2
//   15 	}
??int_container_3:
        MOVS     R0,R4
        POP      {R4-R6,PC}       ;; return
          CFI EndBlock cfiBlock0
//   16 	
//   17 	~int_container() {
//   18 		delete [] data;
//   19 	}
//   20 	

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZNK13int_containerixEi
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function _ZNK13int_containerixEi
          CFI NoCalls
        THUMB
//   21 	int operator[] (int index) const {
//   22 		return ((index >= 0 && ((unsigned)index) < len) ? data[index] : 0);
_ZNK13int_containerixEi:
        CMP      R1,#+0
        BMI.N    `??operator[]_0`
        LDR      R2,[R0, #+4]
        CMP      R1,R2
        BCS.N    `??operator[]_0`
        LDR      R0,[R0, #+0]
        LDR      R0,[R0, R1, LSL #+2]
        B.N      `??operator[]_1`
`??operator[]_0`:
        MOVS     R0,#+0
`??operator[]_1`:
        BX       LR               ;; return
//   23 	}
          CFI EndBlock cfiBlock1
//   24 	
//   25 	private:
//   26 	int* data;
//   27 	unsigned len;
//   28 };
//   29 

        SECTION `.text`:CODE:NOROOT(2)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function main
        THUMB
//   30 int main(void)
//   31 {
main:
        PUSH     {R7,LR}
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
        SUB      SP,SP,#+24
          CFI CFA R13+32
//   32 	int my_data[4] = {0,1,2,3};
        ADD      R0,SP,#+8
        LDR.N    R1,??main_0+0x4
        MOVS     R2,#+16
          CFI FunCall __aeabi_memcpy4
        BL       __aeabi_memcpy4
//   33 	int_container container(my_data,4);
        MOVS     R2,#+4
        ADD      R1,SP,#+8
        MOV      R0,SP
          CFI FunCall _ZN13int_containerC1EPKij
        BL       _ZN13int_containerC1EPKij
//   34 	
//   35 	printf("%d", container[2]);
        MOVS     R1,#+2
          CFI FunCall _ZNK13int_containerixEi
        BL       _ZNK13int_containerixEi
        MOVS     R1,R0
        ADR.N    R0,??main_0      ;; 0x25, 0x64, 0x00, 0x00
          CFI FunCall printf
        BL       printf
//   36 	
//   37 	while (1)
??main_1:
        B.N      ??main_1
        DATA
??main_0:
        DC8      0x25, 0x64, 0x00, 0x00
        DC32     ?_0
//   38 	{
//   39 		
//   40 	}
//   41 }
          CFI EndBlock cfiBlock2

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
// 126 bytes in section .text
// 
// 48 bytes of CODE  memory (+ 78 bytes shared)
// 20 bytes of CONST memory
//
//Errors: none
//Warnings: none
