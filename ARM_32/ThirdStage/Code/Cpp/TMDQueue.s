///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.22.2.15995/W32 for ARM      23/Apr/2018  02:50:35
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\04_ECG\ECGcpp\TMDQueue.cpp
//    Command line =  
//        -f C:\Users\Tim\AppData\Local\Temp\EW21D3.tmp
//        (C:\Users\Tim\Programming\Code\ARM_32\Patterns\04_ECG\ECGcpp\TMDQueue.cpp
//        -lC
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\04_ECG\ECGcpp\Debug\List
//        -lA
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\04_ECG\ECGcpp\Debug\List
//        -o
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\04_ECG\ECGcpp\Debug\Obj
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 --fpu=None --dlib_config "C:\Program Files (x86)\IAR
//        Systems\Embedded Workbench 8.0\arm\INC\c\DLib_Config_Normal.h" -On
//        --c++ --no_exceptions --no_rtti --no_static_destruction)
//    Locale       =  C
//    List file    =  
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\04_ECG\ECGcpp\Debug\List\TMDQueue.s
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

        EXTERN _Znwj
        EXTERN printf

        PUBLIC _ZN14TimeMarkedData12getDataValueEv
        PUBLIC _ZN14TimeMarkedData12setDataValueEi
        PUBLIC _ZN14TimeMarkedData15getTimeIntervalEv
        PUBLIC _ZN14TimeMarkedData15setTimeIntervalEi
        PUBLIC _ZN14TimeMarkedDataC1Ev
        PUBLIC _ZN8TMDQueue12getNextIndexEi
        PUBLIC _ZN8TMDQueue6insertEP14TimeMarkedData
        PUBLIC _ZN8TMDQueue6removeEi
        PUBLIC _ZN8TMDQueue7isEmptyEv
        PUBLIC _ZN8TMDQueue9getBufferEv
        
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
        
// C:\Users\Tim\Programming\Code\ARM_32\Patterns\04_ECG\ECGcpp\TMDQueue.cpp
//    1 #include <stdlib.h>
//    2 #include "TMDQueue.h"

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN14TimeMarkedDataC1Ev
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function _ZN14TimeMarkedDataC1Ev
          CFI NoCalls
        THUMB
// __code __interwork __softfp TimeMarkedData::TimeMarkedData()
_ZN14TimeMarkedDataC1Ev:
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        BX       LR               ;; return
          CFI EndBlock cfiBlock0

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN14TimeMarkedData15getTimeIntervalEv
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function _ZN14TimeMarkedData15getTimeIntervalEv
          CFI NoCalls
        THUMB
// __interwork __softfp int TimeMarkedData::getTimeInterval()
_ZN14TimeMarkedData15getTimeIntervalEv:
        LDR      R0,[R0, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock1

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN14TimeMarkedData12getDataValueEv
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function _ZN14TimeMarkedData12getDataValueEv
          CFI NoCalls
        THUMB
// __interwork __softfp int TimeMarkedData::getDataValue()
_ZN14TimeMarkedData12getDataValueEv:
        LDR      R0,[R0, #+4]
        BX       LR               ;; return
          CFI EndBlock cfiBlock2

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN14TimeMarkedData15setTimeIntervalEi
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function _ZN14TimeMarkedData15setTimeIntervalEi
          CFI NoCalls
        THUMB
// __interwork __softfp void TimeMarkedData::setTimeInterval(int)
_ZN14TimeMarkedData15setTimeIntervalEi:
        STR      R1,[R0, #+0]
        BX       LR               ;; return
          CFI EndBlock cfiBlock3

        SECTION `.text`:CODE:REORDER:NOROOT(1)
        SECTION_GROUP _ZN14TimeMarkedData12setDataValueEi
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function _ZN14TimeMarkedData12setDataValueEi
          CFI NoCalls
        THUMB
// __interwork __softfp void TimeMarkedData::setDataValue(int)
_ZN14TimeMarkedData12setDataValueEi:
        STR      R1,[R0, #+4]
        BX       LR               ;; return
          CFI EndBlock cfiBlock4
//    3 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function _ZN8TMDQueue12getNextIndexEi
          CFI NoCalls
        THUMB
//    4 int TMDQueue::getNextIndex(int index) {
_ZN8TMDQueue12getNextIndexEi:
        MOVS     R2,R0
//    5 	return (index + 1) % QUEUE_SIZE;
        ADDS     R1,R1,#+1
        MOVS     R0,#+20
        SDIV     R3,R1,R0
        MLS      R1,R0,R3,R1
        MOVS     R0,R1
        BX       LR               ;; return
//    6 }
          CFI EndBlock cfiBlock5
//    7 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function _ZN8TMDQueue6insertEP14TimeMarkedData
        THUMB
//    8 void TMDQueue::insert(TimeMarkedData* tmd) {
_ZN8TMDQueue6insertEP14TimeMarkedData:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
//    9 	printf("Inserting at: %d Data #: %d", this->head, tmd->getTimeInterval());
        MOVS     R0,R5
          CFI FunCall _ZN14TimeMarkedData15getTimeIntervalEv
        BL       _ZN14TimeMarkedData15getTimeIntervalEv
        MOVS     R2,R0
        LDR      R1,[R4, #+0]
        LDR.N    R0,??DataTable2
          CFI FunCall printf
        BL       printf
//   10 	this->buffer[this->head] = tmd;
        LDR      R0,[R4, #+0]
        ADD      R0,R4,R0, LSL #+2
        STR      R5,[R0, #+8]
//   11 	this->head = getNextIndex(this->head);
        LDR      R1,[R4, #+0]
        MOVS     R0,R4
          CFI FunCall _ZN8TMDQueue12getNextIndexEi
        BL       _ZN8TMDQueue12getNextIndexEi
        STR      R0,[R4, #+0]
//   12 
//   13 	if (this->size < QUEUE_SIZE) {
        LDR      R0,[R4, #+4]
        CMP      R0,#+20
        BGE.N    ??insert_0
//   14 		++this->size;
        LDR      R0,[R4, #+4]
        ADDS     R0,R0,#+1
        STR      R0,[R4, #+4]
//   15 	}
//   16 
//   17 	printf("Storing data value: %d\n", tmd->getDataValue());
??insert_0:
        MOVS     R0,R5
          CFI FunCall _ZN14TimeMarkedData12getDataValueEv
        BL       _ZN14TimeMarkedData12getDataValueEv
        MOVS     R1,R0
        LDR.N    R0,??DataTable2_1
          CFI FunCall printf
        BL       printf
//   18 }
        POP      {R0,R4,R5,PC}    ;; return
          CFI EndBlock cfiBlock6
//   19 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function _ZN8TMDQueue7isEmptyEv
          CFI NoCalls
        THUMB
//   20 bool TMDQueue::isEmpty() {
//   21 	return (bool)(this->size == 0);
_ZN8TMDQueue7isEmptyEv:
        LDR      R0,[R0, #+4]
        CMP      R0,#+0
        BNE.N    ??isEmpty_0
        MOVS     R0,#+1
        B.N      ??isEmpty_1
??isEmpty_0:
        MOVS     R0,#+0
??isEmpty_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return
//   22 }
          CFI EndBlock cfiBlock7
//   23 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function _ZN8TMDQueue6removeEi
        THUMB
//   24 TimeMarkedData* TMDQueue::remove(int index) {
_ZN8TMDQueue6removeEi:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        MOVS     R4,R0
        MOVS     R5,R1
//   25 	TimeMarkedData* tmd = new TimeMarkedData();
        MOVS     R0,#+12
          CFI FunCall _Znwj
        BL       _Znwj
        CMP      R0,#+0
        BEQ.N    ??remove_0
          CFI FunCall _ZN14TimeMarkedDataC1Ev
        BL       _ZN14TimeMarkedDataC1Ev
        MOVS     R6,R0
        B.N      ??remove_1
??remove_0:
        MOVS     R6,#+0
//   26 	tmd->setTimeInterval(-1);
??remove_1:
        MOVS     R1,#-1
        MOVS     R0,R6
          CFI FunCall _ZN14TimeMarkedData15setTimeIntervalEi
        BL       _ZN14TimeMarkedData15setTimeIntervalEi
//   27 	tmd->setDataValue(-9999);
        LDR.N    R1,??DataTable2_2  ;; 0xffffd8f1
        MOVS     R0,R6
          CFI FunCall _ZN14TimeMarkedData12setDataValueEi
        BL       _ZN14TimeMarkedData12setDataValueEi
//   28 
//   29 	if (!isEmpty() && (index >= 0) && (index < QUEUE_SIZE)) {
        MOVS     R0,R4
          CFI FunCall _ZN8TMDQueue7isEmptyEv
        BL       _ZN8TMDQueue7isEmptyEv
        CMP      R0,#+0
        BNE.N    ??remove_2
        CMP      R5,#+0
        BMI.N    ??remove_2
        CMP      R5,#+20
        BGE.N    ??remove_2
//   30 		tmd = this->buffer[index];
        ADD      R0,R4,R5, LSL #+2
        LDR      R0,[R0, #+8]
        MOVS     R6,R0
//   31 	}
//   32 
//   33 	return tmd;
??remove_2:
        MOVS     R0,R6
        POP      {R4-R6,PC}       ;; return
//   34 }
          CFI EndBlock cfiBlock8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     ?_0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_1:
        DC32     ?_1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2_2:
        DC32     0xffffd8f1
//   35 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function _ZN8TMDQueue9getBufferEv
          CFI NoCalls
        THUMB
//   36 int TMDQueue::getBuffer() {
_ZN8TMDQueue9getBufferEv:
        MOVS     R1,R0
//   37 	int iter = 0;
        MOVS     R0,#+0
//   38 	
//   39 	return iter;
        BX       LR               ;; return
//   40 }
          CFI EndBlock cfiBlock9

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_0:
        DC8 "Inserting at: %d Data #: %d"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
        DATA
?_1:
        DC8 "Storing data value: %d\012"

        END
// 
//  52 bytes in section .rodata
// 224 bytes in section .text
// 
// 194 bytes of CODE  memory (+ 30 bytes shared)
//  52 bytes of CONST memory
//
//Errors: none
//Warnings: none
