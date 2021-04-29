///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.22.2.15995/W32 for ARM      19/Apr/2018  09:37:30
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Exceptions\Code\C\main.c
//    Command line =  
//        -f C:\Users\Tim\AppData\Local\Temp\EW3675.tmp
//        (C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Exceptions\Code\C\main.c
//        -lC
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Exceptions\Code\C\Debug\List
//        -lA
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Exceptions\Code\C\Debug\List
//        -o
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Exceptions\Code\C\Debug\Obj
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 --fpu=None --dlib_config "C:\Program Files (x86)\IAR
//        Systems\Embedded Workbench 8.0\arm\INC\c\DLib_Config_Normal.h" -On)
//    Locale       =  C
//    List file    =  
//        C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Exceptions\Code\C\Debug\List\main.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_file_descriptor", "0"
        RTMODEL "__dlib_jmp_buf_num_elements", "8"
        RTMODEL "__dlib_version", "6"
        RTMODEL "__iar_require _Printf", ""
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN longjmp
        EXTERN printf
        EXTERN setjmp

        PUBLIC ConstCharStarException
        PUBLIC ConstCharStarExceptionValue
        PUBLIC factorial
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
        
// C:\Users\Tim\Programming\Code\ARM_32\SimpleFeatures\Exceptions\Code\C\main.c
//    1 /* C approximation of excepion handling */
//    2 
//    3 #include <stdio.h>
//    4 #include <setjmp.h>
//    5 

        SECTION `.bss`:DATA:REORDER:NOROOT(3)
        DATA
//    6 jmp_buf ConstCharStarException;
ConstCharStarException:
        DS8 64

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
        DATA
//    7 const char* ConstCharStarExceptionValue;
ConstCharStarExceptionValue:
        DS8 4
//    8 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function factorial
        THUMB
//    9 int factorial(int n) {
factorial:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//   10 	if (n < 0) {
        CMP      R4,#+0
        BPL.N    ??factorial_0
//   11 		ConstCharStarExceptionValue = "Negative argument to factorial";
        LDR.N    R0,??DataTable1
        LDR.N    R1,??DataTable1_1
        STR      R0,[R1, #+0]
//   12 		longjmp(ConstCharStarException, 0);
        MOVS     R1,#+0
        LDR.N    R0,??DataTable1_2
          CFI FunCall longjmp
        BL       longjmp
//   13 	}
//   14 
//   15 	if (n > 0) {
??factorial_0:
        CMP      R4,#+1
        BLT.N    ??factorial_1
//   16 		return (n * factorial(n - 1));
        SUBS     R0,R4,#+1
          CFI FunCall factorial
        BL       factorial
        MUL      R0,R0,R4
        B.N      ??factorial_2
//   17 	}
//   18 
//   19 	return 1;
??factorial_1:
        MOVS     R0,#+1
??factorial_2:
        POP      {R4,PC}          ;; return
//   20 }
          CFI EndBlock cfiBlock0
//   21 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function main
        THUMB
//   22 int main() {
main:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//   23 
//   24 	if (setjmp(ConstCharStarException) == 0) {
        LDR.N    R0,??DataTable1_2
          CFI FunCall setjmp
        BL       setjmp
        CMP      R0,#+0
        BNE.N    ??main_0
//   25 		int n = factorial(10);
        MOVS     R0,#+10
          CFI FunCall factorial
        BL       factorial
        MOVS     R4,R0
//   26 		printf("factorial(10) = %d",n);
        MOVS     R1,R4
        LDR.N    R0,??DataTable1_3
          CFI FunCall printf
        BL       printf
        B.N      ??main_1
//   27 	}
//   28 	else {
//   29 		printf("factorial threw exception: %s\n",ConstCharStarExceptionValue);
??main_0:
        LDR.N    R0,??DataTable1_1
        LDR      R1,[R0, #+0]
        LDR.N    R0,??DataTable1_4
          CFI FunCall printf
        BL       printf
//   30 	}
//   31 
//   32 	while (1) {
??main_1:
        B.N      ??main_1
//   33 		
//   34 	}
//   35 }
          CFI EndBlock cfiBlock1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     ?_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     ConstCharStarExceptionValue

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     ConstCharStarException

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     ?_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_4:
        DC32     ?_2

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_0:
        DC8 "Negative argument to factorial"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_1:
        DC8 "factorial(10) = %d"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_2:
        DC8 "factorial threw exception: %s\012"
        DC8 0

        END
// 
//  68 bytes in section .bss
//  84 bytes in section .rodata
// 104 bytes in section .text
// 
// 104 bytes of CODE  memory
//  84 bytes of CONST memory
//  68 bytes of DATA  memory
//
//Errors: none
//Warnings: none
