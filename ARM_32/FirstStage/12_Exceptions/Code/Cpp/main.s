///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.22.2.15995/W32 for ARM      19/Apr/2018  09:38:13
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Exceptions\Code\Cpp\main.cpp
//    Command line =  
//        -f C:\Users\Tim\AppData\Local\Temp\EWE1D3.tmp
//        (C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Exceptions\Code\Cpp\main.cpp
//        -lC
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Exceptions\Code\Cpp\Debug\List
//        -lA
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Exceptions\Code\Cpp\Debug\List
//        -o
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Exceptions\Code\Cpp\Debug\Obj
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 --fpu=None --dlib_config "C:\Program Files (x86)\IAR
//        Systems\Embedded Workbench 8.0\arm\INC\c\DLib_Config_Normal.h" -On
//        --c++ --no_rtti --no_static_destruction)
//    Locale       =  C
//    List file    =  
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Exceptions\Code\Cpp\Debug\List\main.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__CPP_Exceptions", "*"
        RTMODEL "__CPP_Language", "C++14"
        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "0"
        RTMODEL "__dlib_version", "6"
        RTMODEL "__iar_require _Printf", ""
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1
        #define SHF_ALLOC 0x2
        #define SHF_LINK_ORDER 0x80

        EXTERN _ZTIc
        EXTERN _ZTVN10__cxxabiv119__pointer_type_infoE
        EXTERN __aeabi_unwind_cpp_pr0
        EXTERN __cxa_allocate_exception
        EXTERN __cxa_begin_catch
        EXTERN __cxa_end_catch
        EXTERN __cxa_throw
        EXTERN printf

        PUBLIC _Z9factoriali
        PUBLIC _ZTIPKc
        PUBLIC _ZTSPKc
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
        
// C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Exceptions\Code\Cpp\main.cpp
//    1 /* C++ implementation of exceptions */
//    2 
//    3 #include <stdio.h>
//    4 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function _Z9factoriali
        THUMB
//    5 int factorial(int n) {
_Z9factoriali:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//    6 	if (n < 0) {
        CMP      R4,#+0
        BPL.N    ??factorial_0
//    7 		throw "Negative Argument to factorial";
        MOVS     R0,#+4
          CFI FunCall __cxa_allocate_exception
        BL       __cxa_allocate_exception
        LDR.N    R1,??DataTable1
        STR      R1,[R0, #+0]
        MOVS     R2,#+0
        LDR.N    R1,??DataTable1_1
          CFI FunCall __cxa_throw
        BL       __cxa_throw
//    8 	}
//    9 
//   10 	if (n > 0) {
??factorial_0:
        CMP      R4,#+1
        BLT.N    ??factorial_1
//   11 		return (n * factorial(n-1));
        SUBS     R0,R4,#+1
          CFI FunCall _Z9factoriali
        BL       _Z9factoriali
        MULS     R4,R0,R4
        MOVS     R0,R4
        B.N      ??factorial_2
//   12 	}
//   13 
//   14 	return 1;
??factorial_1:
        MOVS     R0,#+1
??factorial_2:
        POP      {R4,PC}          ;; return
//   15 }
          CFI EndBlock cfiBlock0
//   16 

        SECTION `.exc.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function main
          CFI R4 Frame(CFA, -8)
          CFI R14 Frame(CFA, -4)
          CFI CFA R13+8
          CFI FunCall __cxa_begin_catch
        THUMB
?_3:
        BL       __cxa_begin_catch
        LDR      R4,[R0, #+0]
        MOVS     R1,R4
        LDR.N    R0,??DataTable5
          CFI FunCall printf
        BL       printf
          CFI FunCall __cxa_end_catch
        BL       __cxa_end_catch
        ANOTE "branch"
        BL       ??CrossCallReturnLabel_0
          CFI EndBlock cfiBlock1

        SECTION `.exc.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     ?_2

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function main
        THUMB
//   17 int main() {
main:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//   18 	try {
//   19 		int n = factorial(10);
        MOVS     R0,#+10
          CFI FunCall _Z9factoriali
        BL       _Z9factoriali
        MOVS     R4,R0
//   20 		printf("factorial(10) = %d",n);
        MOVS     R1,R4
        LDR.N    R0,??DataTable1_2
          CFI FunCall printf
        BL       printf
//   21 	}
//   22 	catch (const char* s) {
//   23 		printf("factorial threw exception: %s",s);
//   24 	}
//   25 
//   26 	while (1) {
??CrossCallReturnLabel_0:
        B.N      ??CrossCallReturnLabel_0
//   27 		
//   28 	}
//   29 }
          CFI EndBlock cfiBlock2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     ?_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     _ZTIPKc

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     ?_1

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP _Z9factoriali
        SECTION_LINK _Z9factoriali
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(_Z9factoriali))
        DC32 0x80a8b0b0
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.exidx`:CONST:REORDER:NOROOT(2)
        SECTION_TYPE 0x70000001, SHF_ALLOC | SHF_LINK_ORDER
        SECTION_GROUP main
        SECTION_LINK main
        DATA
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(main))
        DC32 RELOC_ARM_PREL31(`.extab for main`)
        REQUIRE __aeabi_unwind_cpp_pr0

        SECTION `.ARM.extab`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP main
`.extab for main`:
        DATA
        DC32 0x80a8b0b0
        DC16 15, 8
        DC32 RELOC_ARM_PREL31(RELOC_LOCAL(?_3))
        DC32 RELOC_ARM_TARGET2 _ZTIPKc
        DC16 15, 8
        DC32 0, -2
        DC16 0, 0

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTIPKc
        DATA
// __absolute __pointer_type_info const <Typeinfo for char const *>
_ZTIPKc:
        DC32 _ZTVN10__cxxabiv119__pointer_type_infoE + 8H, _ZTSPKc, 1, _ZTIc

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        SECTION_GROUP _ZTSPKc
        DATA
// __absolute char const <Typeinfo name for char const *>[4]
_ZTSPKc:
        DC8 "PKc"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_0:
        DC8 "Negative Argument to factorial"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_1:
        DC8 "factorial(10) = %d"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_2:
        DC8 "factorial threw exception: %s"
        DC8 0, 0

        END
// 
//  16 bytes in section .ARM.exidx
//  32 bytes in section .ARM.extab
//  26 bytes in section .exc.text
// 104 bytes in section .rodata
//  78 bytes in section .text
// 
// 104 bytes of CODE  memory
// 132 bytes of CONST memory (+ 20 bytes shared)
//
//Errors: none
//Warnings: none
