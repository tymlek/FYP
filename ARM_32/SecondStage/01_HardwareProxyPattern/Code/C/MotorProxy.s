///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.22.2.15995/W32 for ARM      21/Apr/2018  09:13:14
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\01_HardwareProxyPattern\Code\C\MotorProxy.c
//    Command line =  
//        -f C:\Users\Tim\AppData\Local\Temp\EW50DE.tmp
//        (C:\Users\Tim\Programming\Code\ARM_32\Patterns\01_HardwareProxyPattern\Code\C\MotorProxy.c
//        -lC
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\01_HardwareProxyPattern\Code\C\Debug\List
//        -lA
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\01_HardwareProxyPattern\Code\C\Debug\List
//        -o
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\01_HardwareProxyPattern\Code\C\Debug\Obj
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 --fpu=None --dlib_config "C:\Program Files (x86)\IAR
//        Systems\Embedded Workbench 8.0\arm\INC\c\DLib_Config_Normal.h" -On)
//    Locale       =  C
//    List file    =  
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\01_HardwareProxyPattern\Code\C\Debug\List\MotorProxy.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__dlib_full_locale_support", "0"
        RTMODEL "__dlib_version", "6"
        AAPCS BASE,INTERWORK
        PRESERVE8
        REQUIRE8

        #define SHT_PROGBITS 0x1

        EXTERN __aeabi_d2iz
        EXTERN __aeabi_ddiv
        EXTERN __aeabi_dmul
        EXTERN __aeabi_memcpy4
        EXTERN __aeabi_ui2d
        EXTERN free
        EXTERN malloc

        PUBLIC MotorProxy_Cleanup
        PUBLIC MotorProxy_Create
        PUBLIC MotorProxy_Destroy
        PUBLIC MotorProxy_Init
        PUBLIC MotorProxy_accessMotorDirection
        PUBLIC MotorProxy_accessMotorSpeed
        PUBLIC MotorProxy_accessMotorState
        PUBLIC MotorProxy_clearErrorStatus
        PUBLIC MotorProxy_configure
        PUBLIC MotorProxy_disable
        PUBLIC MotorProxy_enable
        PUBLIC MotorProxy_initialize
        PUBLIC MotorProxy_writeMotorSpeed
        
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
        
// C:\Users\Tim\Programming\Code\ARM_32\Patterns\01_HardwareProxyPattern\Code\C\MotorProxy.c
//    1 #include <stdlib.h>
//    2 #include "MotorProxy.h"
//    3 
//    4 //-----------------------------------------------------------------------------
//    5 
//    6 static unsigned int marshal(const struct MotorData mData);
//    7 static struct MotorData unmarshal(unsigned int encodedMData);
//    8 
//    9 //-----------------------------------------------------------------------------
//   10 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function MotorProxy_Init
          CFI NoCalls
        THUMB
//   11 void MotorProxy_Init(MotorProxy* const me) {
//   12 	me->motorAddr = NULL;
MotorProxy_Init:
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//   13 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock0
//   14 
//   15 //-----------------------------------------------------------------------------
//   16 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function MotorProxy_Cleanup
          CFI NoCalls
        THUMB
//   17 void MotorProxy_Cleanup(MotorProxy* const me) {
//   18 
//   19 }
MotorProxy_Cleanup:
        BX       LR               ;; return
          CFI EndBlock cfiBlock1
//   20 
//   21 //-----------------------------------------------------------------------------
//   22 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function MotorProxy_accessMotorDirection
        THUMB
//   23 DirectionType MotorProxy_accessMotorDirection(MotorProxy* const me) {
MotorProxy_accessMotorDirection:
        PUSH     {R0-R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+24
        MOVS     R4,R0
//   24 	MotorData mData;
//   25 
//   26 	if (!me->motorAddr) {
        LDR      R0,[R4, #+0]
        CMP      R0,#+0
        BNE.N    ??MotorProxy_accessMotorDirection_0
//   27 		return NO_DIRECTION;
        MOVS     R0,#+0
        B.N      ??MotorProxy_accessMotorDirection_1
//   28 	}
//   29 
//   30 mData = unmarshal(*me->motorAddr);
??MotorProxy_accessMotorDirection_0:
        LDR      R0,[R4, #+0]
        LDR      R1,[R0, #+0]
        MOV      R0,SP
          CFI FunCall unmarshal
        BL       unmarshal
//   31 
//   32 return mData.direction;
        LDRB     R0,[SP, #+1]
??MotorProxy_accessMotorDirection_1:
        ADD      SP,SP,#+16
          CFI CFA R13+8
        POP      {R4,PC}          ;; return
//   33 }
          CFI EndBlock cfiBlock2
//   34 
//   35 //-----------------------------------------------------------------------------
//   36 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function MotorProxy_accessMotorSpeed
        THUMB
//   37 unsigned int MotorProxy_accessMotorSpeed(MotorProxy* const me) {
MotorProxy_accessMotorSpeed:
        PUSH     {R0-R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+24
        MOVS     R4,R0
//   38 	MotorData mData;
//   39 
//   40 	if (!me->motorAddr) {
        LDR      R0,[R4, #+0]
        CMP      R0,#+0
        BNE.N    ??MotorProxy_accessMotorSpeed_0
//   41 		return 0;
        MOVS     R0,#+0
        B.N      ??MotorProxy_accessMotorSpeed_1
//   42 	}
//   43 
//   44 	mData = unmarshal(*me->motorAddr);
??MotorProxy_accessMotorSpeed_0:
        LDR      R0,[R4, #+0]
        LDR      R1,[R0, #+0]
        MOV      R0,SP
          CFI FunCall unmarshal
        BL       unmarshal
//   45 
//   46 	return mData.speed;
        LDR      R0,[SP, #+4]
??MotorProxy_accessMotorSpeed_1:
        ADD      SP,SP,#+16
          CFI CFA R13+8
        POP      {R4,PC}          ;; return
//   47 }
          CFI EndBlock cfiBlock3
//   48 
//   49 //-----------------------------------------------------------------------------
//   50 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function MotorProxy_accessMotorState
        THUMB
//   51 unsigned int MotorProxy_accessMotorState(MotorProxy* const me) {
MotorProxy_accessMotorState:
        PUSH     {R0-R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+24
        MOVS     R4,R0
//   52 	MotorData mData;
//   53 
//   54 	if (!me->motorAddr) {
        LDR      R0,[R4, #+0]
        CMP      R0,#+0
        BNE.N    ??MotorProxy_accessMotorState_0
//   55 		return 0;
        MOVS     R0,#+0
        B.N      ??MotorProxy_accessMotorState_1
//   56 	}
//   57 
//   58 	mData = unmarshal(*me->motorAddr);
??MotorProxy_accessMotorState_0:
        LDR      R0,[R4, #+0]
        LDR      R1,[R0, #+0]
        MOV      R0,SP
          CFI FunCall unmarshal
        BL       unmarshal
//   59 
//   60 	return mData.errorStatus;
        LDRB     R0,[SP, #+8]
??MotorProxy_accessMotorState_1:
        ADD      SP,SP,#+16
          CFI CFA R13+8
        POP      {R4,PC}          ;; return
//   61 }
          CFI EndBlock cfiBlock4
//   62 
//   63 //-----------------------------------------------------------------------------
//   64 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function MotorProxy_clearErrorStatus
          CFI NoCalls
        THUMB
//   65 void MotorProxy_clearErrorStatus(MotorProxy* const me) {
//   66 	if (!me->motorAddr) {
MotorProxy_clearErrorStatus:
        LDR      R1,[R0, #+0]
        CMP      R1,#+0
        BEQ.N    ??MotorProxy_clearErrorStatus_0
//   67 		return;
//   68 	}
//   69 
//   70 	*me->motorAddr &= 0xFF;
??MotorProxy_clearErrorStatus_1:
        LDR      R1,[R0, #+0]
        LDRB     R1,[R1, #+0]
        AND      R1,R1,#0xFF
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
//   71 }
??MotorProxy_clearErrorStatus_0:
        BX       LR               ;; return
          CFI EndBlock cfiBlock5
//   72 
//   73 //-----------------------------------------------------------------------------
//   74 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function MotorProxy_configure
          CFI NoCalls
        THUMB
//   75 void MotorProxy_configure(MotorProxy* const me, unsigned int length,
//   76 	unsigned int* location) {
//   77 	me->rotaryArmLength = length;
MotorProxy_configure:
        STR      R1,[R0, #+4]
//   78 	me->motorAddr = location;
        STR      R2,[R0, #+0]
//   79 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock6
//   80 
//   81 //-----------------------------------------------------------------------------
//   82 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function MotorProxy_disable
          CFI NoCalls
        THUMB
//   83 void MotorProxy_disable(MotorProxy* const me) {
//   84 	if (!me->motorAddr) {
MotorProxy_disable:
        LDR      R1,[R0, #+0]
        CMP      R1,#+0
        BEQ.N    ??MotorProxy_disable_0
//   85 		return;
//   86 	}
//   87 
//   88 	*me->motorAddr &= 0xFFFE;
??MotorProxy_disable_1:
        LDR      R1,[R0, #+0]
        LDR      R2,[R1, #+0]
        MOVW     R1,#+65534
        ANDS     R2,R1,R2
        LDR      R1,[R0, #+0]
        STR      R2,[R1, #+0]
//   89 }
??MotorProxy_disable_0:
        BX       LR               ;; return
          CFI EndBlock cfiBlock7
//   90 
//   91 //-----------------------------------------------------------------------------
//   92 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function MotorProxy_enable
          CFI NoCalls
        THUMB
//   93 void MotorProxy_enable(MotorProxy* const me) {
//   94 	if (!me->motorAddr) {
MotorProxy_enable:
        LDR      R1,[R0, #+0]
        CMP      R1,#+0
        BEQ.N    ??MotorProxy_enable_0
//   95 		return;
//   96 	}
//   97 
//   98 	*me->motorAddr |= 1;
??MotorProxy_enable_1:
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x1
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
//   99 }
??MotorProxy_enable_0:
        BX       LR               ;; return
          CFI EndBlock cfiBlock8
//  100 
//  101 //-----------------------------------------------------------------------------
//  102 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function MotorProxy_initialize
        THUMB
//  103 void MotorProxy_initialize(MotorProxy* const me) {
MotorProxy_initialize:
        PUSH     {R0-R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+24
        MOVS     R4,R0
//  104 	MotorData mData;
//  105 
//  106 	if (!me->motorAddr) {
        LDR      R0,[R4, #+0]
        CMP      R0,#+0
        BEQ.N    ??MotorProxy_initialize_0
//  107 		return;
//  108 	}
//  109 
//  110 	mData.on_off = 1;
??MotorProxy_initialize_1:
        MOVS     R0,#+1
        STRB     R0,[SP, #+0]
//  111 	mData.direction = NO_DIRECTION;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
//  112 	mData.speed = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
//  113 	mData.errorStatus = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
//  114 	mData.noPowerError = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+9]
//  115 	mData.noTorqueError = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+10]
//  116 	mData.BITError = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+11]
//  117 	mData.overTemperatureError = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+12]
//  118 	mData.reservedError1 = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+13]
//  119 	mData.reservedError2 = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+14]
//  120 	mData.unknownError = 0;
        MOVS     R0,#+0
        STRB     R0,[SP, #+15]
//  121 
//  122 	*me->motorAddr = marshal(mData);
        MOV      R0,SP
        LDM      R0,{R0-R3}
          CFI FunCall marshal
        BL       marshal
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
//  123 }
??MotorProxy_initialize_0:
        POP      {R0-R4,PC}       ;; return
          CFI EndBlock cfiBlock9
//  124 
//  125 //-----------------------------------------------------------------------------
//  126 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function MotorProxy_writeMotorSpeed
        THUMB
//  127 void MotorProxy_writeMotorSpeed(MotorProxy* const me,
//  128 	const DirectionType direction,
//  129 	unsigned int speed) {
MotorProxy_writeMotorSpeed:
        PUSH     {R4-R6,R8-R11,LR}
          CFI R14 Frame(CFA, -4)
          CFI R11 Frame(CFA, -8)
          CFI R10 Frame(CFA, -12)
          CFI R9 Frame(CFA, -16)
          CFI R8 Frame(CFA, -20)
          CFI R6 Frame(CFA, -24)
          CFI R5 Frame(CFA, -28)
          CFI R4 Frame(CFA, -32)
          CFI CFA R13+32
        SUB      SP,SP,#+24
          CFI CFA R13+56
        MOVS     R4,R0
        MOVS     R6,R1
        MOVS     R5,R2
//  130 	MotorData mData;
//  131 
//  132 	double dPi;
//  133 	double dArmLength;
//  134 	double dSpeed;
//  135 	double dAdjSpeed;
//  136 
//  137 	if (!me->motorAddr) {
        LDR      R0,[R4, #+0]
        CMP      R0,#+0
        BEQ.N    ??MotorProxy_writeMotorSpeed_0
//  138 		return;
//  139 	}
//  140 
//  141 	mData = unmarshal(*me->motorAddr);
??MotorProxy_writeMotorSpeed_1:
        LDR      R0,[R4, #+0]
        LDR      R1,[R0, #+0]
        ADD      R0,SP,#+8
          CFI FunCall unmarshal
        BL       unmarshal
//  142 	mData.direction = direction;
        STRB     R6,[SP, #+9]
//  143 
//  144 	if (me->rotaryArmLength > 0) {
        LDR      R0,[R4, #+4]
        CMP      R0,#+0
        BEQ.N    ??MotorProxy_writeMotorSpeed_2
//  145 		dSpeed = speed;
        MOVS     R0,R5
          CFI FunCall __aeabi_ui2d
        BL       __aeabi_ui2d
        MOV      R8,R0
        MOV      R9,R1
//  146 		dArmLength = me->rotaryArmLength;
        LDR      R0,[R4, #+4]
          CFI FunCall __aeabi_ui2d
        BL       __aeabi_ui2d
        STRD     R0,R1,[SP, #+0]
//  147 		dAdjSpeed = dSpeed / 2.0 / 3.14159 / dArmLength * 10.0;
        MOV      R0,R8
        MOV      R1,R9
        MOVS     R2,#+0
        MOVS     R3,#+1073741824
          CFI FunCall __aeabi_ddiv
        BL       __aeabi_ddiv
        LDR.N    R2,??DataTable1  ;; 0xf01b866e
        LDR.N    R3,??DataTable1_1  ;; 0x400921f9
          CFI FunCall __aeabi_ddiv
        BL       __aeabi_ddiv
        LDRD     R2,R3,[SP, #+0]
          CFI FunCall __aeabi_ddiv
        BL       __aeabi_ddiv
        MOVS     R2,#+0
        LDR.N    R3,??DataTable1_2  ;; 0x40240000
          CFI FunCall __aeabi_dmul
        BL       __aeabi_dmul
        MOV      R10,R0
        MOV      R11,R1
//  148 		mData.speed = (int)dAdjSpeed;
        MOV      R0,R10
        MOV      R1,R11
          CFI FunCall __aeabi_d2iz
        BL       __aeabi_d2iz
        STR      R0,[SP, #+12]
        B.N      ??MotorProxy_writeMotorSpeed_3
//  149 	}
//  150 	else {
//  151 		mData.speed = speed;
??MotorProxy_writeMotorSpeed_2:
        STR      R5,[SP, #+12]
//  152 	}
//  153 
//  154 	*me->motorAddr = marshal(mData);
??MotorProxy_writeMotorSpeed_3:
        ADD      R0,SP,#+8
        LDM      R0,{R0-R3}
          CFI FunCall marshal
        BL       marshal
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
//  155 }
??MotorProxy_writeMotorSpeed_0:
        ADD      SP,SP,#+24
          CFI CFA R13+32
        POP      {R4-R6,R8-R11,PC}  ;; return
          CFI EndBlock cfiBlock10

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     0xf01b866e

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     0x400921f9

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     0x40240000
//  156 
//  157 //-----------------------------------------------------------------------------
//  158 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function marshal
          CFI NoCalls
        THUMB
//  159 static unsigned int marshal(const struct MotorData mData) {
marshal:
        PUSH     {R0-R3}
          CFI CFA R13+16
//  160 	unsigned int deviceCmd;
//  161 
//  162 	deviceCmd = 0;
        MOVS     R0,#+0
//  163 	if (mData.on_off) {
        LDRB     R1,[SP, #+0]
        CMP      R1,#+0
        BEQ.N    ??marshal_0
//  164 		deviceCmd |= 1;
        ORRS     R0,R0,#0x1
//  165 	}
//  166 
//  167 	if (mData.direction == FORWARD) {
??marshal_0:
        LDRB     R1,[SP, #+1]
        CMP      R1,#+1
        BNE.N    ??marshal_1
//  168 		deviceCmd |= (1 << 2);
        ORRS     R0,R0,#0x4
        B.N      ??marshal_2
//  169 	}
//  170 	else if (mData.direction == REVERSE) {
??marshal_1:
        LDRB     R1,[SP, #+1]
        CMP      R1,#+2
        BNE.N    ??marshal_2
//  171 		deviceCmd |= (1 << 1);
        ORRS     R0,R0,#0x2
//  172 	}
//  173 
//  174 	if (mData.speed < 32 && mData.speed >= 0) {
??marshal_2:
        LDR      R1,[SP, #+4]
        CMP      R1,#+32
        BCS.N    ??marshal_3
//  175 		deviceCmd |= (mData.speed << 3);
        LDR      R1,[SP, #+4]
        ORRS     R0,R0,R1, LSL #+3
//  176 	}
//  177 
//  178 	if (mData.errorStatus) {
??marshal_3:
        LDRB     R1,[SP, #+8]
        CMP      R1,#+0
        BEQ.N    ??marshal_4
//  179 		deviceCmd |= (1 << 8);
        ORRS     R0,R0,#0x100
//  180 	}
//  181 
//  182 	if (mData.noPowerError) {
??marshal_4:
        LDRB     R1,[SP, #+9]
        CMP      R1,#+0
        BEQ.N    ??marshal_5
//  183 		deviceCmd |= (1 << 9);
        ORRS     R0,R0,#0x200
//  184 	}
//  185 
//  186 	if (mData.noTorqueError) {
??marshal_5:
        LDRB     R1,[SP, #+10]
        CMP      R1,#+0
        BEQ.N    ??marshal_6
//  187 		deviceCmd |= (1 << 10);
        ORRS     R0,R0,#0x400
//  188 	}
//  189 
//  190 	if (mData.BITError) {
??marshal_6:
        LDRB     R1,[SP, #+11]
        CMP      R1,#+0
        BEQ.N    ??marshal_7
//  191 		deviceCmd |= (1 << 11);
        ORRS     R0,R0,#0x800
//  192 	}
//  193 
//  194 	if (mData.overTemperatureError) {
??marshal_7:
        LDRB     R1,[SP, #+12]
        CMP      R1,#+0
        BEQ.N    ??marshal_8
//  195 		deviceCmd |= (1 << 12);
        ORRS     R0,R0,#0x1000
//  196 	}
//  197 
//  198 	if (mData.reservedError1) {
??marshal_8:
        LDRB     R1,[SP, #+13]
        CMP      R1,#+0
        BEQ.N    ??marshal_9
//  199 		deviceCmd |= (1 << 13);
        ORRS     R0,R0,#0x2000
//  200 	}
//  201 
//  202 	if (mData.reservedError2) {
??marshal_9:
        LDRB     R1,[SP, #+14]
        CMP      R1,#+0
        BEQ.N    ??marshal_10
//  203 		deviceCmd |= (1 << 14);
        ORRS     R0,R0,#0x4000
//  204 	}
//  205 
//  206 	if (mData.unknownError) {
??marshal_10:
        LDRB     R1,[SP, #+15]
        CMP      R1,#+0
        BEQ.N    ??marshal_11
//  207 		deviceCmd |= (1 << 15);
        ORRS     R0,R0,#0x8000
//  208 	}
//  209 
//  210 	return deviceCmd;
??marshal_11:
        ADD      SP,SP,#+16
          CFI CFA R13+0
        BX       LR               ;; return
//  211 }
          CFI EndBlock cfiBlock11
//  212 
//  213 //-----------------------------------------------------------------------------
//  214 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function unmarshal
        THUMB
//  215 static struct MotorData unmarshal(unsigned int encodedMData) {
unmarshal:
        PUSH     {R3-R5,LR}
          CFI R14 Frame(CFA, -4)
          CFI R5 Frame(CFA, -8)
          CFI R4 Frame(CFA, -12)
          CFI CFA R13+16
        SUB      SP,SP,#+16
          CFI CFA R13+32
        MOVS     R4,R1
//  216 	MotorData mData;
//  217 	int temp;
//  218 
//  219 	mData.on_off = encodedMData & 1;
        ANDS     R1,R4,#0x1
        STRB     R1,[SP, #+0]
//  220 	temp = (encodedMData & (3 << 1)) >> 1;
        UBFX     R5,R4,#+1,#+2
//  221 
//  222 	if (temp == 1) {
        CMP      R5,#+1
        BNE.N    ??unmarshal_0
//  223 		mData.direction = REVERSE;
        MOVS     R1,#+2
        STRB     R1,[SP, #+1]
        B.N      ??unmarshal_1
//  224 	}
//  225 	else if (temp == 2) {
??unmarshal_0:
        CMP      R5,#+2
        BNE.N    ??unmarshal_2
//  226 		mData.direction = FORWARD;
        MOVS     R1,#+1
        STRB     R1,[SP, #+1]
        B.N      ??unmarshal_1
//  227 	}
//  228 	else {
//  229 		mData.direction = NO_DIRECTION;
??unmarshal_2:
        MOVS     R1,#+0
        STRB     R1,[SP, #+1]
//  230 	}
//  231 
//  232 	mData.speed = (encodedMData & (31 << 3)) >> 3;
??unmarshal_1:
        UBFX     R1,R4,#+3,#+5
        STR      R1,[SP, #+4]
//  233 	mData.errorStatus = (encodedMData & (1 << 8));
        MOVS     R1,#+0
        STRB     R1,[SP, #+8]
//  234 	mData.noPowerError = (encodedMData & (1 << 9));
        MOVS     R1,#+0
        STRB     R1,[SP, #+9]
//  235 	mData.noTorqueError = (encodedMData & (1 << 10));
        MOVS     R1,#+0
        STRB     R1,[SP, #+10]
//  236 	mData.BITError = (encodedMData & (1 << 11));
        MOVS     R1,#+0
        STRB     R1,[SP, #+11]
//  237 	mData.overTemperatureError = (encodedMData & (1 << 12));
        MOVS     R1,#+0
        STRB     R1,[SP, #+12]
//  238 	mData.reservedError1 = (encodedMData & (1 << 13));
        MOVS     R1,#+0
        STRB     R1,[SP, #+13]
//  239 	mData.reservedError2 = (encodedMData & (1 << 14));
        MOVS     R1,#+0
        STRB     R1,[SP, #+14]
//  240 	mData.unknownError = (encodedMData & (1 << 15));
        MOVS     R1,#+0
        STRB     R1,[SP, #+15]
//  241 
//  242 	return mData;
        MOV      R1,SP
        MOVS     R2,#+16
          CFI FunCall __aeabi_memcpy4
        BL       __aeabi_memcpy4
        ADD      SP,SP,#+20
          CFI CFA R13+12
        POP      {R4,R5,PC}       ;; return
//  243 }
          CFI EndBlock cfiBlock12
//  244 
//  245 //-----------------------------------------------------------------------------
//  246 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function MotorProxy_Create
        THUMB
//  247 MotorProxy* MotorProxy_Create(void) {
MotorProxy_Create:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
//  248 	MotorProxy* me = (MotorProxy*)malloc(sizeof(MotorProxy));
        MOVS     R0,#+8
          CFI FunCall malloc
        BL       malloc
        MOVS     R4,R0
//  249 
//  250 	if (me != NULL) {
        CMP      R4,#+0
        BEQ.N    ??MotorProxy_Create_0
//  251 		MotorProxy_Init(me);
        MOVS     R0,R4
          CFI FunCall MotorProxy_Init
        BL       MotorProxy_Init
//  252 	}
//  253 
//  254 	return me;
??MotorProxy_Create_0:
        MOVS     R0,R4
        POP      {R4,PC}          ;; return
//  255 }
          CFI EndBlock cfiBlock13
//  256 
//  257 //-----------------------------------------------------------------------------
//  258 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function MotorProxy_Destroy
        THUMB
//  259 void MotorProxy_Destroy(MotorProxy* const me) {
MotorProxy_Destroy:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        MOVS     R4,R0
//  260 	if (me != NULL) {
        CMP      R4,#+0
        BEQ.N    ??MotorProxy_Destroy_0
//  261 		MotorProxy_Cleanup(me);
        MOVS     R0,R4
          CFI FunCall MotorProxy_Cleanup
        BL       MotorProxy_Cleanup
//  262 	}
//  263 
//  264 	free(me);
??MotorProxy_Destroy_0:
        MOVS     R0,R4
          CFI FunCall free
        BL       free
//  265 }
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock14

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  266 
//  267 //-----------------------------------------------------------------------------
// 
// 716 bytes in section .text
// 
// 716 bytes of CODE memory
//
//Errors: none
//Warnings: 2
