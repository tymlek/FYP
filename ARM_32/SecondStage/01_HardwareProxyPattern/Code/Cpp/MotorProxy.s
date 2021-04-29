///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V8.22.2.15995/W32 for ARM      21/Apr/2018  09:23:11
// Copyright 1999-2018 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\01_HardwareProxyPattern\Code\Cpp\MotorProxy.cpp
//    Command line =  
//        -f C:\Users\Tim\AppData\Local\Temp\EW705E.tmp
//        (C:\Users\Tim\Programming\Code\ARM_32\Patterns\01_HardwareProxyPattern\Code\Cpp\MotorProxy.cpp
//        -lC
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\01_HardwareProxyPattern\Code\Cpp\Debug\List
//        -lA
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\01_HardwareProxyPattern\Code\Cpp\Debug\List
//        -o
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\01_HardwareProxyPattern\Code\Cpp\Debug\Obj
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4 --fpu=None --dlib_config "C:\Program Files (x86)\IAR
//        Systems\Embedded Workbench 8.0\arm\INC\c\DLib_Config_Normal.h" -On
//        --c++ --no_exceptions --no_rtti --no_static_destruction)
//    Locale       =  C
//    List file    =  
//        C:\Users\Tim\Programming\Code\ARM_32\Patterns\01_HardwareProxyPattern\Code\Cpp\Debug\List\MotorProxy.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__CPP_Exceptions", "Disabled"
        RTMODEL "__CPP_Language", "C++14"
        RTMODEL "__SystemLibrary", "DLib"
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

        PUBLIC _ZN10MotorProxy10initializeEv
        PUBLIC _ZN10MotorProxy13getMotorSpeedEv
        PUBLIC _ZN10MotorProxy13getMotorStateEv
        PUBLIC _ZN10MotorProxy13setMotorSpeedE13DirectionTypej
        PUBLIC _ZN10MotorProxy16clearErrorStatusEv
        PUBLIC _ZN10MotorProxy17getMotorDirectionEv
        PUBLIC _ZN10MotorProxy6enableEv
        PUBLIC _ZN10MotorProxy7disableEv
        PUBLIC _ZN10MotorProxy7marshalERK9MotorData
        PUBLIC _ZN10MotorProxy9configureEjPj
        PUBLIC _ZN10MotorProxy9unmarshalEj
        
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
        
// C:\Users\Tim\Programming\Code\ARM_32\Patterns\01_HardwareProxyPattern\Code\Cpp\MotorProxy.cpp
//    1 #include "MotorProxy.h"
//    2 
//    3 //-----------------------------------------------------------------------------
//    4 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function _ZN10MotorProxy17getMotorDirectionEv
        THUMB
//    5 DirectionType MotorProxy::getMotorDirection() {
_ZN10MotorProxy17getMotorDirectionEv:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        SUB      SP,SP,#+40
          CFI CFA R13+48
        MOVS     R4,R0
//    6 	MotorData mData;
//    7 
//    8 	if (motorAddr == nullptr) {
        LDR      R0,[R4, #+0]
        CMP      R0,#+0
        BNE.N    ??getMotorDirection_0
//    9 		return NO_DIRECTION;
        MOVS     R0,#+0
        B.N      ??getMotorDirection_1
//   10 	}
//   11 
//   12 	mData = unmarshal(*this->motorAddr);
??getMotorDirection_0:
        LDR      R0,[R4, #+0]
        LDR      R2,[R0, #+0]
        MOVS     R1,R4
        MOV      R0,SP
          CFI FunCall _ZN10MotorProxy9unmarshalEj
        BL       _ZN10MotorProxy9unmarshalEj
//   13 
//   14 	return mData.direction;
        LDRB     R0,[SP, #+1]
??getMotorDirection_1:
        ADD      SP,SP,#+40
          CFI CFA R13+8
        POP      {R4,PC}          ;; return
//   15 }
          CFI EndBlock cfiBlock0
//   16 
//   17 //-----------------------------------------------------------------------------
//   18 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function _ZN10MotorProxy13getMotorSpeedEv
        THUMB
//   19 unsigned int MotorProxy::getMotorSpeed() {
_ZN10MotorProxy13getMotorSpeedEv:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        SUB      SP,SP,#+40
          CFI CFA R13+48
        MOVS     R4,R0
//   20 	MotorData mData;
//   21 
//   22 	if (this->motorAddr == nullptr) {
        LDR      R0,[R4, #+0]
        CMP      R0,#+0
        BNE.N    ??getMotorSpeed_0
//   23 		return 0;
        MOVS     R0,#+0
        B.N      ??getMotorSpeed_1
//   24 	}
//   25 
//   26 	mData = unmarshal(*this->motorAddr);
??getMotorSpeed_0:
        LDR      R0,[R4, #+0]
        LDR      R2,[R0, #+0]
        MOVS     R1,R4
        MOV      R0,SP
          CFI FunCall _ZN10MotorProxy9unmarshalEj
        BL       _ZN10MotorProxy9unmarshalEj
//   27 
//   28 	return mData.speed;
        LDR      R0,[SP, #+4]
??getMotorSpeed_1:
        ADD      SP,SP,#+40
          CFI CFA R13+8
        POP      {R4,PC}          ;; return
//   29 }
          CFI EndBlock cfiBlock1
//   30 
//   31 //-----------------------------------------------------------------------------
//   32 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function _ZN10MotorProxy13getMotorStateEv
        THUMB
//   33 unsigned int MotorProxy::getMotorState() {
_ZN10MotorProxy13getMotorStateEv:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        SUB      SP,SP,#+40
          CFI CFA R13+48
        MOVS     R4,R0
//   34 	MotorData mData;
//   35 
//   36 	if (this->motorAddr == nullptr) {
        LDR      R0,[R4, #+0]
        CMP      R0,#+0
        BNE.N    ??getMotorState_0
//   37 		return 0;
        MOVS     R0,#+0
        B.N      ??getMotorState_1
//   38 	}
//   39 
//   40 	mData = unmarshal(*this->motorAddr);
??getMotorState_0:
        LDR      R0,[R4, #+0]
        LDR      R2,[R0, #+0]
        MOVS     R1,R4
        MOV      R0,SP
          CFI FunCall _ZN10MotorProxy9unmarshalEj
        BL       _ZN10MotorProxy9unmarshalEj
//   41 
//   42 	return mData.errorStatus;
        LDR      R0,[SP, #+8]
??getMotorState_1:
        ADD      SP,SP,#+40
          CFI CFA R13+8
        POP      {R4,PC}          ;; return
//   43 }
          CFI EndBlock cfiBlock2
//   44 
//   45 //-----------------------------------------------------------------------------
//   46 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock3 Using cfiCommon0
          CFI Function _ZN10MotorProxy16clearErrorStatusEv
          CFI NoCalls
        THUMB
//   47 void MotorProxy::clearErrorStatus() {
//   48 	if (this->motorAddr == nullptr) {
_ZN10MotorProxy16clearErrorStatusEv:
        LDR      R1,[R0, #+0]
        CMP      R1,#+0
        BEQ.N    ??clearErrorStatus_0
//   49 		return;
//   50 	}
//   51 
//   52 	*this->motorAddr &= 0xFF;
??clearErrorStatus_1:
        LDR      R1,[R0, #+0]
        LDRB     R1,[R1, #+0]
        AND      R1,R1,#0xFF
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
//   53 }
??clearErrorStatus_0:
        BX       LR               ;; return
          CFI EndBlock cfiBlock3
//   54 
//   55 //-----------------------------------------------------------------------------
//   56 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock4 Using cfiCommon0
          CFI Function _ZN10MotorProxy9configureEjPj
          CFI NoCalls
        THUMB
//   57 void MotorProxy::configure(unsigned int length, unsigned int* location) {
//   58 	this->rotaryArmLength = length;
_ZN10MotorProxy9configureEjPj:
        STR      R1,[R0, #+4]
//   59 	this->motorAddr = location;
        STR      R2,[R0, #+0]
//   60 }
        BX       LR               ;; return
          CFI EndBlock cfiBlock4
//   61 
//   62 //-----------------------------------------------------------------------------
//   63 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function _ZN10MotorProxy7disableEv
          CFI NoCalls
        THUMB
//   64 void MotorProxy::disable() {
//   65 	if (this->motorAddr == nullptr) {
_ZN10MotorProxy7disableEv:
        LDR      R1,[R0, #+0]
        CMP      R1,#+0
        BEQ.N    ??disable_0
//   66 		return;
//   67 	}
//   68 
//   69 	*this->motorAddr &= 0xFFFE;
??disable_1:
        LDR      R1,[R0, #+0]
        LDR      R2,[R1, #+0]
        MOVW     R1,#+65534
        ANDS     R2,R1,R2
        LDR      R1,[R0, #+0]
        STR      R2,[R1, #+0]
//   70 }
??disable_0:
        BX       LR               ;; return
          CFI EndBlock cfiBlock5
//   71 
//   72 //-----------------------------------------------------------------------------
//   73 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function _ZN10MotorProxy6enableEv
          CFI NoCalls
        THUMB
//   74 void MotorProxy::enable() {
//   75 	if (this->motorAddr == nullptr) {
_ZN10MotorProxy6enableEv:
        LDR      R1,[R0, #+0]
        CMP      R1,#+0
        BEQ.N    ??enable_0
//   76 		return;
//   77 	}
//   78 
//   79 	*this->motorAddr |= 1;
??enable_1:
        LDR      R1,[R0, #+0]
        LDR      R1,[R1, #+0]
        ORRS     R1,R1,#0x1
        LDR      R2,[R0, #+0]
        STR      R1,[R2, #+0]
//   80 }
??enable_0:
        BX       LR               ;; return
          CFI EndBlock cfiBlock6
//   81 
//   82 //-----------------------------------------------------------------------------
//   83 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function _ZN10MotorProxy10initializeEv
        THUMB
//   84 void MotorProxy::initialize() {
_ZN10MotorProxy10initializeEv:
        PUSH     {R4,LR}
          CFI R14 Frame(CFA, -4)
          CFI R4 Frame(CFA, -8)
          CFI CFA R13+8
        SUB      SP,SP,#+40
          CFI CFA R13+48
        MOVS     R4,R0
//   85 	MotorData mData;
//   86 
//   87 	if (this->motorAddr == nullptr) {
        LDR      R0,[R4, #+0]
        CMP      R0,#+0
        BEQ.N    ??initialize_0
//   88 		return;
//   89 	}
//   90 
//   91 	mData.on_off = 1;
??initialize_1:
        MOVS     R0,#+1
        STRB     R0,[SP, #+0]
//   92 	mData.direction = NO_DIRECTION;
        MOVS     R0,#+0
        STRB     R0,[SP, #+1]
//   93 	mData.speed = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
//   94 	mData.errorStatus = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
//   95 	mData.noPowerError = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
//   96 	mData.noTorqueError = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+16]
//   97 	mData.BITError = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//   98 	mData.overTemperatureError = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+24]
//   99 	mData.reservedError1 = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+28]
//  100 	mData.reservedError2 = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+32]
//  101 	mData.unknownError = 0;
        MOVS     R0,#+0
        STR      R0,[SP, #+36]
//  102 
//  103 	*this->motorAddr = marshal(mData);
        MOV      R1,SP
        MOVS     R0,R4
          CFI FunCall _ZN10MotorProxy7marshalERK9MotorData
        BL       _ZN10MotorProxy7marshalERK9MotorData
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
//  104 }
??initialize_0:
        ADD      SP,SP,#+40
          CFI CFA R13+8
        POP      {R4,PC}          ;; return
          CFI EndBlock cfiBlock7
//  105 
//  106 //-----------------------------------------------------------------------------
//  107 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock8 Using cfiCommon0
          CFI Function _ZN10MotorProxy13setMotorSpeedE13DirectionTypej
        THUMB
//  108 void MotorProxy::setMotorSpeed(const DirectionType direction, unsigned int speed) {
_ZN10MotorProxy13setMotorSpeedE13DirectionTypej:
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
        SUB      SP,SP,#+48
          CFI CFA R13+80
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  109 	MotorData mData;
//  110 
//  111 	double dPi;
//  112 	double dArmLength;
//  113 	double dSpeed;
//  114 	double dAdjSpeed;
//  115 
//  116 	if (this->motorAddr == nullptr) {
        LDR      R0,[R4, #+0]
        CMP      R0,#+0
        BEQ.N    ??setMotorSpeed_0
//  117 		return;
//  118 	}
//  119 
//  120 	mData = unmarshal(*this->motorAddr);
??setMotorSpeed_1:
        LDR      R0,[R4, #+0]
        LDR      R2,[R0, #+0]
        MOVS     R1,R4
        ADD      R0,SP,#+8
          CFI FunCall _ZN10MotorProxy9unmarshalEj
        BL       _ZN10MotorProxy9unmarshalEj
//  121 	mData.direction = direction;
        STRB     R5,[SP, #+9]
//  122 
//  123 	if (this->rotaryArmLength > 0) {
        LDR      R0,[R4, #+4]
        CMP      R0,#+0
        BEQ.N    ??setMotorSpeed_2
//  124 		dSpeed = speed;
        MOVS     R0,R6
          CFI FunCall __aeabi_ui2d
        BL       __aeabi_ui2d
        MOV      R8,R0
        MOV      R9,R1
//  125 		dArmLength = this->rotaryArmLength;
        LDR      R0,[R4, #+4]
          CFI FunCall __aeabi_ui2d
        BL       __aeabi_ui2d
        STRD     R0,R1,[SP, #+0]
//  126 		dAdjSpeed = dSpeed / 2.0 / 3.14159 / dArmLength * 10.0;
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
//  127 		mData.speed = (int)dAdjSpeed;
        MOV      R0,R10
        MOV      R1,R11
          CFI FunCall __aeabi_d2iz
        BL       __aeabi_d2iz
        STR      R0,[SP, #+12]
        B.N      ??setMotorSpeed_3
//  128 	}
//  129 	else {
//  130 		mData.speed = speed;
??setMotorSpeed_2:
        STR      R6,[SP, #+12]
//  131 	}
//  132 
//  133 	*this->motorAddr = marshal(mData);
??setMotorSpeed_3:
        ADD      R1,SP,#+8
        MOVS     R0,R4
          CFI FunCall _ZN10MotorProxy7marshalERK9MotorData
        BL       _ZN10MotorProxy7marshalERK9MotorData
        LDR      R1,[R4, #+0]
        STR      R0,[R1, #+0]
//  134 }
??setMotorSpeed_0:
        ADD      SP,SP,#+48
          CFI CFA R13+32
        POP      {R4-R6,R8-R11,PC}  ;; return
          CFI EndBlock cfiBlock8

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
//  135 
//  136 //-----------------------------------------------------------------------------
//  137 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function _ZN10MotorProxy7marshalERK9MotorData
          CFI NoCalls
        THUMB
//  138 unsigned int MotorProxy::marshal(const MotorData& mData) {
_ZN10MotorProxy7marshalERK9MotorData:
        MOVS     R3,R0
//  139 	unsigned int deviceCmd;
//  140 
//  141 	deviceCmd = 0;
        MOVS     R0,#+0
//  142 	if (mData.on_off) {
        LDRB     R2,[R1, #+0]
        CMP      R2,#+0
        BEQ.N    ??marshal_0
//  143 		deviceCmd |= 1;
        ORRS     R0,R0,#0x1
//  144 	}
//  145 
//  146 	if (mData.direction == FORWARD) {
??marshal_0:
        LDRB     R2,[R1, #+1]
        CMP      R2,#+1
        BNE.N    ??marshal_1
//  147 		deviceCmd |= (1 << 2);
        ORRS     R0,R0,#0x4
        B.N      ??marshal_2
//  148 	}
//  149 	else if (mData.direction == REVERSE) {
??marshal_1:
        LDRB     R2,[R1, #+1]
        CMP      R2,#+2
        BNE.N    ??marshal_2
//  150 		deviceCmd |= (1 << 1);
        ORRS     R0,R0,#0x2
//  151 	}
//  152 
//  153 	if (mData.speed < 32 && mData.speed >= 0) {
??marshal_2:
        LDR      R2,[R1, #+4]
        CMP      R2,#+32
        BCS.N    ??marshal_3
//  154 		deviceCmd |= (mData.speed << 3);
        LDR      R2,[R1, #+4]
        ORRS     R0,R0,R2, LSL #+3
//  155 	}
//  156 
//  157 	if (mData.errorStatus) {
??marshal_3:
        LDR      R2,[R1, #+8]
        CMP      R2,#+0
        BEQ.N    ??marshal_4
//  158 		deviceCmd |= (1 << 8);
        ORRS     R0,R0,#0x100
//  159 	}
//  160 
//  161 	if (mData.noPowerError) {
??marshal_4:
        LDR      R2,[R1, #+12]
        CMP      R2,#+0
        BEQ.N    ??marshal_5
//  162 		deviceCmd |= (1 << 9);
        ORRS     R0,R0,#0x200
//  163 	}
//  164 
//  165 	if (mData.noTorqueError) {
??marshal_5:
        LDR      R2,[R1, #+16]
        CMP      R2,#+0
        BEQ.N    ??marshal_6
//  166 		deviceCmd |= (1 << 10);
        ORRS     R0,R0,#0x400
//  167 	}
//  168 
//  169 	if (mData.BITError) {
??marshal_6:
        LDR      R2,[R1, #+20]
        CMP      R2,#+0
        BEQ.N    ??marshal_7
//  170 		deviceCmd |= (1 << 11);
        ORRS     R0,R0,#0x800
//  171 	}
//  172 
//  173 	if (mData.overTemperatureError) {
??marshal_7:
        LDR      R2,[R1, #+24]
        CMP      R2,#+0
        BEQ.N    ??marshal_8
//  174 		deviceCmd |= (1 << 12);
        ORRS     R0,R0,#0x1000
//  175 	}
//  176 
//  177 	if (mData.reservedError1) {
??marshal_8:
        LDR      R2,[R1, #+28]
        CMP      R2,#+0
        BEQ.N    ??marshal_9
//  178 		deviceCmd |= (1 << 13);
        ORRS     R0,R0,#0x2000
//  179 	}
//  180 
//  181 	if (mData.reservedError2) {
??marshal_9:
        LDR      R2,[R1, #+32]
        CMP      R2,#+0
        BEQ.N    ??marshal_10
//  182 		deviceCmd |= (1 << 14);
        ORRS     R0,R0,#0x4000
//  183 	}
//  184 
//  185 	if (mData.unknownError) {
??marshal_10:
        LDR      R2,[R1, #+36]
        CMP      R2,#+0
        BEQ.N    ??marshal_11
//  186 		deviceCmd |= (1 << 15);
        ORRS     R0,R0,#0x8000
//  187 	}
//  188 
//  189 	return deviceCmd;
??marshal_11:
        BX       LR               ;; return
//  190 }
          CFI EndBlock cfiBlock9
//  191 
//  192 //-----------------------------------------------------------------------------
//  193 

        SECTION `.text`:CODE:NOROOT(1)
          CFI Block cfiBlock10 Using cfiCommon0
          CFI Function _ZN10MotorProxy9unmarshalEj
        THUMB
//  194 MotorData MotorProxy::unmarshal(unsigned int encodedMData) {
_ZN10MotorProxy9unmarshalEj:
        PUSH     {R4-R6,LR}
          CFI R14 Frame(CFA, -4)
          CFI R6 Frame(CFA, -8)
          CFI R5 Frame(CFA, -12)
          CFI R4 Frame(CFA, -16)
          CFI CFA R13+16
        SUB      SP,SP,#+40
          CFI CFA R13+56
        MOVS     R4,R1
        MOVS     R5,R2
//  195 	MotorData mData;
//  196 	int temp;
//  197 
//  198 	mData.on_off = encodedMData & 1;
        ANDS     R1,R5,#0x1
        STRB     R1,[SP, #+0]
//  199 	temp = (encodedMData & (3 << 1)) >> 1;
        UBFX     R6,R5,#+1,#+2
//  200 
//  201 	if (temp == 1) {
        CMP      R6,#+1
        BNE.N    ??unmarshal_0
//  202 		mData.direction = REVERSE;
        MOVS     R1,#+2
        STRB     R1,[SP, #+1]
        B.N      ??unmarshal_1
//  203 	}
//  204 	else if (temp == 2) {
??unmarshal_0:
        CMP      R6,#+2
        BNE.N    ??unmarshal_2
//  205 		mData.direction = FORWARD;
        MOVS     R1,#+1
        STRB     R1,[SP, #+1]
        B.N      ??unmarshal_1
//  206 	}
//  207 	else {
//  208 		mData.direction = NO_DIRECTION;
??unmarshal_2:
        MOVS     R1,#+0
        STRB     R1,[SP, #+1]
//  209 	}
//  210 
//  211 	mData.speed = (encodedMData & (31 << 3)) >> 3;
??unmarshal_1:
        UBFX     R1,R5,#+3,#+5
        STR      R1,[SP, #+4]
//  212 	mData.errorStatus = (encodedMData & (1 << 8));
        ANDS     R1,R5,#0x100
        STR      R1,[SP, #+8]
//  213 	mData.noPowerError = (encodedMData & (1 << 9));
        ANDS     R1,R5,#0x200
        STR      R1,[SP, #+12]
//  214 	mData.noTorqueError = (encodedMData & (1 << 10));
        ANDS     R1,R5,#0x400
        STR      R1,[SP, #+16]
//  215 	mData.BITError = (encodedMData & (1 << 11));
        ANDS     R1,R5,#0x800
        STR      R1,[SP, #+20]
//  216 	mData.overTemperatureError = (encodedMData & (1 << 12));
        ANDS     R1,R5,#0x1000
        STR      R1,[SP, #+24]
//  217 	mData.reservedError1 = (encodedMData & (1 << 13));
        ANDS     R1,R5,#0x2000
        STR      R1,[SP, #+28]
//  218 	mData.reservedError2 = (encodedMData & (1 << 14));
        ANDS     R1,R5,#0x4000
        STR      R1,[SP, #+32]
//  219 	mData.unknownError = (encodedMData & (1 << 15));
        ANDS     R1,R5,#0x8000
        STR      R1,[SP, #+36]
//  220 
//  221 	return mData;
        MOV      R1,SP
        MOVS     R2,#+40
          CFI FunCall __aeabi_memcpy4
        BL       __aeabi_memcpy4
        ADD      SP,SP,#+40
          CFI CFA R13+16
        POP      {R4-R6,PC}       ;; return
//  222 }
          CFI EndBlock cfiBlock10

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        END
//  223 
//  224 //-----------------------------------------------------------------------------
// 
// 640 bytes in section .text
// 
// 640 bytes of CODE memory
//
//Errors: none
//Warnings: 2
