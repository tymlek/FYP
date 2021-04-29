	.arch armv6
	.eabi_attribute 27, 3
	.eabi_attribute 28, 1
	.fpu vfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"main.cpp"
	.section	.rodata
	.align	2
	.type	_ZStL19piecewise_construct, %object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.space	1
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,4
	.align	2
	.type	_ZStL13allocator_arg, %object
	.size	_ZStL13allocator_arg, 1
_ZStL13allocator_arg:
	.space	1
	.align	2
	.type	_ZStL6ignore, %object
	.size	_ZStL6ignore, 1
_ZStL6ignore:
	.space	1
	.section	.text._ZN3sql9SQLStringD2Ev,"axG",%progbits,_ZN3sql9SQLStringD5Ev,comdat
	.align	2
	.weak	_ZN3sql9SQLStringD2Ev
	.type	_ZN3sql9SQLStringD2Ev, %function
_ZN3sql9SQLStringD2Ev:
	.fnstart
.LFB4234:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	bl	_ZNSsD1Ev
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.cantunwind
	.fnend
	.size	_ZN3sql9SQLStringD2Ev, .-_ZN3sql9SQLStringD2Ev
	.weak	_ZN3sql9SQLStringD1Ev
_ZN3sql9SQLStringD1Ev = _ZN3sql9SQLStringD2Ev
	.section	.text._ZN3sql9SQLStringC2EPKc,"axG",%progbits,_ZN3sql9SQLStringC5EPKc,comdat
	.align	2
	.weak	_ZN3sql9SQLStringC2EPKc
	.type	_ZN3sql9SQLStringC2EPKc, %function
_ZN3sql9SQLStringC2EPKc:
	.fnstart
.LFB4246:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	.save {r4, fp, lr}
	.setfp fp, sp, #8
	add	fp, sp, #8
	.pad #20
	sub	sp, sp, #20
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	ldr	r4, [fp, #-24]
	sub	r3, fp, #16
	mov	r0, r3
	bl	_ZNSaIcEC1Ev
	sub	r3, fp, #16
	mov	r0, r4
	ldr	r1, [fp, #-28]
	mov	r2, r3
.LEHB0:
	bl	_ZNSsC1EPKcRKSaIcE
.LEHE0:
	sub	r3, fp, #16
	mov	r0, r3
	bl	_ZNSaIcED1Ev
	ldr	r3, [fp, #-24]
	b	.L9
.L8:
	sub	r3, fp, #16
	mov	r0, r3
	bl	_ZNSaIcED1Ev
.LEHB1:
	bl	__cxa_end_cleanup
.LEHE1:
.L9:
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	ldmfd	sp!, {r4, fp, pc}
	.global	__gxx_personality_v0
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA4246:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4246-.LLSDACSB4246
.LLSDACSB4246:
	.uleb128 .LEHB0-.LFB4246
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L8-.LFB4246
	.uleb128 0
	.uleb128 .LEHB1-.LFB4246
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE4246:
	.section	.text._ZN3sql9SQLStringC2EPKc,"axG",%progbits,_ZN3sql9SQLStringC5EPKc,comdat
	.fnend
	.size	_ZN3sql9SQLStringC2EPKc, .-_ZN3sql9SQLStringC2EPKc
	.weak	_ZN3sql9SQLStringC1EPKc
_ZN3sql9SQLStringC1EPKc = _ZN3sql9SQLStringC2EPKc
	.section	.text._ZNK3sql9SQLString11asStdStringEv,"axG",%progbits,_ZNK3sql9SQLString11asStdStringEv,comdat
	.align	2
	.weak	_ZNK3sql9SQLString11asStdStringEv
	.type	_ZNK3sql9SQLString11asStdStringEv, %function
_ZNK3sql9SQLString11asStdStringEv:
	.fnstart
.LFB4259:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNK3sql9SQLString11asStdStringEv, .-_ZNK3sql9SQLString11asStdStringEv
	.section	.text._ZStlsRSoRKN3sql9SQLStringE,"axG",%progbits,_ZStlsRSoRKN3sql9SQLStringE,comdat
	.align	2
	.weak	_ZStlsRSoRKN3sql9SQLStringE
	.type	_ZStlsRSoRKN3sql9SQLStringE, %function
_ZStlsRSoRKN3sql9SQLStringE:
	.fnstart
.LFB4276:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r0, [fp, #-12]
	bl	_ZNK3sql9SQLString11asStdStringEv
	mov	r3, r0
	ldr	r0, [fp, #-8]
	mov	r1, r3
	bl	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKSbIS4_S5_T1_E
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	_ZStlsRSoRKN3sql9SQLStringE, .-_ZStlsRSoRKN3sql9SQLStringE
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Cannot connect to spi device\000"
	.section	.text._ZN7MCP3008C2Ev,"axG",%progbits,_ZN7MCP3008C5Ev,comdat
	.align	2
	.weak	_ZN7MCP3008C2Ev
	.type	_ZN7MCP3008C2Ev, %function
_ZN7MCP3008C2Ev:
	.fnstart
.LFB4723:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	.save {r4, fp, lr}
	.setfp fp, sp, #8
	add	fp, sp, #8
	.pad #20
	sub	sp, sp, #20
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-24]
	mov	r2, #0
	str	r2, [r3]
	ldr	r3, [fp, #-24]
	ldr	r2, .L22
	str	r2, [r3, #4]
	ldr	r3, [fp, #-24]
	ldr	r2, [r3]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #4]
	mov	r0, r2
	mov	r1, r3
.LEHB2:
	bl	wiringPiSPISetup
.LEHE2:
	mov	r3, r0
	mov	r3, r3, lsr #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L15
	mov	r0, #8
	bl	__cxa_allocate_exception
	mov	r3, r0
	mov	r4, r3
	sub	r3, fp, #16
	mov	r0, r3
	bl	_ZNSaIcEC1Ev
	sub	r2, fp, #20
	sub	r3, fp, #16
	mov	r0, r2
	ldr	r1, .L22+4
	mov	r2, r3
.LEHB3:
	bl	_ZNSsC1EPKcRKSaIcE
.LEHE3:
	sub	r3, fp, #20
	mov	r0, r4
	mov	r1, r3
.LEHB4:
	bl	_ZNSt13runtime_errorC1ERKSs
.LEHE4:
	sub	r3, fp, #20
	mov	r0, r3
	bl	_ZNSsD1Ev
	sub	r3, fp, #16
	mov	r0, r3
	bl	_ZNSaIcED1Ev
	mov	r0, r4
	ldr	r1, .L22+8
	ldr	r2, .L22+12
.LEHB5:
	bl	__cxa_throw
.L15:
	ldr	r3, [fp, #-24]
	b	.L21
.L20:
	sub	r3, fp, #20
	mov	r0, r3
	bl	_ZNSsD1Ev
	b	.L18
.L19:
.L18:
	sub	r3, fp, #16
	mov	r0, r3
	bl	_ZNSaIcED1Ev
	mov	r0, r4
	bl	__cxa_free_exception
	bl	__cxa_end_cleanup
.LEHE5:
.L21:
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	ldmfd	sp!, {r4, fp, pc}
.L23:
	.align	2
.L22:
	.word	1000000
	.word	.LC0
	.word	_ZTISt13runtime_error
	.word	_ZNSt13runtime_errorD1Ev
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA4723:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4723-.LLSDACSB4723
.LLSDACSB4723:
	.uleb128 .LEHB2-.LFB4723
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB4723
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L19-.LFB4723
	.uleb128 0
	.uleb128 .LEHB4-.LFB4723
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L20-.LFB4723
	.uleb128 0
	.uleb128 .LEHB5-.LFB4723
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE4723:
	.section	.text._ZN7MCP3008C2Ev,"axG",%progbits,_ZN7MCP3008C5Ev,comdat
	.fnend
	.size	_ZN7MCP3008C2Ev, .-_ZN7MCP3008C2Ev
	.weak	_ZN7MCP3008C1Ev
_ZN7MCP3008C1Ev = _ZN7MCP3008C2Ev
	.section	.text._ZN7MCP300810analogReadEi,"axG",%progbits,_ZN7MCP300810analogReadEi,comdat
	.align	2
	.weak	_ZN7MCP300810analogReadEi
	.type	_ZN7MCP300810analogReadEi, %function
_ZN7MCP300810analogReadEi:
	.fnstart
.LFB4728:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #16
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asl #4
	uxtb	r3, r3
	mvn	r3, r3, asl #25
	mvn	r3, r3, lsr #25
	uxtb	r3, r3
	strb	r3, [fp, #-5]
	ldr	r3, [fp, #-16]
	mov	r2, #1
	strb	r2, [r3, #8]
	ldr	r3, [fp, #-16]
	ldrb	r2, [fp, #-5]
	strb	r2, [r3, #9]
	ldr	r3, [fp, #-16]
	mov	r2, #0
	strb	r2, [r3, #10]
	ldr	r3, [fp, #-16]
	ldr	r2, [r3]
	ldr	r3, [fp, #-16]
	add	r3, r3, #8
	mov	r0, r2
	mov	r1, r3
	mov	r2, #3
	bl	wiringPiSPIDataRW
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #9]	@ zero_extendqisi2
	mov	r3, r3, asl #8
	ldr	r2, [fp, #-16]
	ldrb	r2, [r2, #10]	@ zero_extendqisi2
	orr	r3, r3, r2
	mov	r3, r3, asl #22
	mov	r3, r3, lsr #22
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	_ZN7MCP300810analogReadEi, .-_ZN7MCP300810analogReadEi
	.section	.rodata
	.align	2
.LC1:
	.ascii	"Current temperature: \000"
	.align	2
.LC2:
	.ascii	"C\000"
	.text
	.align	2
	.global	_Z10getReadingP7MCP3008id
	.type	_Z10getReadingP7MCP3008id, %function
_Z10getReadingP7MCP3008id:
	.fnstart
.LFB4729:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #24
	sub	sp, sp, #24
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	fstd	d0, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-8]
	mov	r3, #0
	str	r3, [fp, #-12]
	ldr	r0, [fp, #-16]
	ldr	r1, [fp, #-20]
	bl	_ZN7MCP300810analogReadEi
	mov	r3, r0
	str	r3, [fp, #-12]
	ldr	r0, .L28+24
	bl	usleep
	ldr	r0, [fp, #-16]
	ldr	r1, [fp, #-20]
	bl	_ZN7MCP300810analogReadEi
	mov	r3, r0
	str	r3, [fp, #-12]
	ldr	r0, .L28+24
	bl	usleep
	ldr	r0, [fp, #-16]
	ldr	r1, [fp, #-20]
	bl	_ZN7MCP300810analogReadEi
	mov	r3, r0
	str	r3, [fp, #-12]
	fldd	d7, [fp, #-28]
	fldd	d6, .L28
	fmuld	d6, d7, d6
	ldr	r3, [fp, #-12]
	fmsr	s15, r3	@ int
	fsitod	d7, s15
	fmuld	d7, d6, d7
	fldd	d6, .L28+8
	fdivd	d7, d7, d6
	fcpyd	d0, d7
	bl	round
	fcpyd	d6, d0
	fldd	d7, .L28+16
	faddd	d7, d6, d7
	ftosizd	s15, d7
	fmrs	r3, s15	@ int
	str	r3, [fp, #-8]
	ldr	r0, .L28+28
	ldr	r1, .L28+32
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	r3, r0
	mov	r0, r3
	ldr	r1, [fp, #-8]
	bl	_ZNSolsEi
	mov	r3, r0
	mov	r0, r3
	ldr	r1, .L28+36
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	r3, r0
	mov	r0, r3
	ldr	r1, .L28+40
	bl	_ZNSolsEPFRSoS_E
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L29:
	.align	3
.L28:
	.word	0
	.word	1079574528
	.word	0
	.word	1083176960
	.word	0
	.word	1075314688
	.word	60000
	.word	_ZSt4cout
	.word	.LC1
	.word	.LC2
	.word	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.fnend
	.size	_Z10getReadingP7MCP3008id, .-_Z10getReadingP7MCP3008id
	.section	.rodata
	.align	2
.LC3:
	.ascii	"insert into tempData (tDate,tTime,tLoc,temp) values"
	.ascii	" (date(current_date()),time(current_time()),'Bedroo"
	.ascii	"m',?)\000"
	.text
	.align	2
	.global	_Z9writeToDBPN3sql10ConnectionEi
	.type	_Z9writeToDBPN3sql10ConnectionEi, %function
_Z9writeToDBPN3sql10ConnectionEi:
	.fnstart
.LFB4730:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	.save {r4, fp, lr}
	.setfp fp, sp, #8
	add	fp, sp, #8
	.pad #20
	sub	sp, sp, #20
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3]
	add	r3, r3, #72
	ldr	r4, [r3]
	sub	r3, fp, #20
	mov	r0, r3
	ldr	r1, .L35
.LEHB6:
	bl	_ZN3sql9SQLStringC1EPKc
.LEHE6:
	sub	r3, fp, #20
	ldr	r0, [fp, #-24]
	mov	r1, r3
.LEHB7:
	blx	r4
.LEHE7:
	mov	r3, r0
	str	r3, [fp, #-16]
	sub	r3, fp, #20
	mov	r0, r3
	bl	_ZN3sql9SQLStringD1Ev
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	add	r3, r3, #144
	ldr	r3, [r3]
	ldr	r0, [fp, #-16]
	mov	r1, #1
	ldr	r2, [fp, #-28]
.LEHB8:
	blx	r3
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	add	r3, r3, #112
	ldr	r3, [r3]
	ldr	r0, [fp, #-16]
	blx	r3
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	beq	.L34
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	add	r3, r3, #4
	ldr	r3, [r3]
	ldr	r0, [fp, #-16]
	blx	r3
	b	.L34
.L33:
	sub	r3, fp, #20
	mov	r0, r3
	bl	_ZN3sql9SQLStringD1Ev
	bl	__cxa_end_cleanup
.LEHE8:
.L34:
	sub	sp, fp, #8
	@ sp needed
	ldmfd	sp!, {r4, fp, pc}
.L36:
	.align	2
.L35:
	.word	.LC3
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA4730:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4730-.LLSDACSB4730
.LLSDACSB4730:
	.uleb128 .LEHB6-.LFB4730
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB4730
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L33-.LFB4730
	.uleb128 0
	.uleb128 .LEHB8-.LFB4730
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE4730:
	.text
	.fnend
	.size	_Z9writeToDBPN3sql10ConnectionEi, .-_Z9writeToDBPN3sql10ConnectionEi
	.section	.rodata
	.align	2
.LC4:
	.ascii	"select * from tempData\000"
	.align	2
.LC5:
	.ascii	"tDate\000"
	.align	2
.LC6:
	.ascii	"\011\000"
	.align	2
.LC7:
	.ascii	"tTime\000"
	.align	2
.LC8:
	.ascii	"tLoc\000"
	.align	2
.LC9:
	.ascii	"temp\000"
	.text
	.align	2
	.global	_Z10readFromDBPN3sql10ConnectionE
	.type	_Z10readFromDBPN3sql10ConnectionE, %function
_Z10readFromDBPN3sql10ConnectionE:
	.fnstart
.LFB4731:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, fp, lr}
	.save {r4, r5, fp, lr}
	.setfp fp, sp, #12
	add	fp, sp, #12
	.pad #48
	sub	sp, sp, #48
	str	r0, [fp, #-56]
	ldr	r3, [fp, #-56]
	ldr	r3, [r3]
	add	r3, r3, #12
	ldr	r3, [r3]
	ldr	r0, [fp, #-56]
.LEHB9:
	blx	r3
	mov	r3, r0
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	add	r3, r3, #28
	ldr	r4, [r3]
	sub	r3, fp, #52
	mov	r0, r3
	ldr	r1, .L59
	bl	_ZN3sql9SQLStringC1EPKc
.LEHE9:
	sub	r3, fp, #52
	ldr	r0, [fp, #-16]
	mov	r1, r3
.LEHB10:
	blx	r4
.LEHE10:
	mov	r3, r0
	str	r3, [fp, #-20]
	sub	r3, fp, #52
	mov	r0, r3
	bl	_ZN3sql9SQLStringD1Ev
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	beq	.L38
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	add	r3, r3, #4
	ldr	r3, [r3]
	ldr	r0, [fp, #-16]
	blx	r3
.L38:
	b	.L39
.L40:
	ldr	r3, [fp, #-20]
	ldr	r3, [r3]
	add	r3, r3, #140
	ldr	r4, [r3]
	sub	r3, fp, #44
	mov	r0, r3
	ldr	r1, .L59+4
.LEHB11:
	bl	_ZN3sql9SQLStringC1EPKc
.LEHE11:
	sub	r2, fp, #48
	sub	r3, fp, #44
	mov	r0, r2
	ldr	r1, [fp, #-20]
	mov	r2, r3
.LEHB12:
	blx	r4
.LEHE12:
	sub	r3, fp, #48
	ldr	r0, .L59+8
	mov	r1, r3
.LEHB13:
	bl	_ZStlsRSoRKN3sql9SQLStringE
	mov	r3, r0
	mov	r0, r3
	ldr	r1, .L59+12
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	r5, r0
	ldr	r3, [fp, #-20]
	ldr	r3, [r3]
	add	r3, r3, #140
	ldr	r4, [r3]
	sub	r3, fp, #36
	mov	r0, r3
	ldr	r1, .L59+16
	bl	_ZN3sql9SQLStringC1EPKc
.LEHE13:
	sub	r2, fp, #40
	sub	r3, fp, #36
	mov	r0, r2
	ldr	r1, [fp, #-20]
	mov	r2, r3
.LEHB14:
	blx	r4
.LEHE14:
	sub	r3, fp, #40
	mov	r0, r5
	mov	r1, r3
.LEHB15:
	bl	_ZStlsRSoRKN3sql9SQLStringE
	mov	r3, r0
	mov	r0, r3
	ldr	r1, .L59+12
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	r5, r0
	ldr	r3, [fp, #-20]
	ldr	r3, [r3]
	add	r3, r3, #140
	ldr	r4, [r3]
	sub	r3, fp, #28
	mov	r0, r3
	ldr	r1, .L59+20
	bl	_ZN3sql9SQLStringC1EPKc
.LEHE15:
	sub	r2, fp, #32
	sub	r3, fp, #28
	mov	r0, r2
	ldr	r1, [fp, #-20]
	mov	r2, r3
.LEHB16:
	blx	r4
.LEHE16:
	sub	r3, fp, #32
	mov	r0, r5
	mov	r1, r3
.LEHB17:
	bl	_ZStlsRSoRKN3sql9SQLStringE
	mov	r3, r0
	mov	r0, r3
	ldr	r1, .L59+12
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	r5, r0
	ldr	r3, [fp, #-20]
	ldr	r3, [r3]
	add	r3, r3, #88
	ldr	r4, [r3]
	sub	r3, fp, #24
	mov	r0, r3
	ldr	r1, .L59+24
	bl	_ZN3sql9SQLStringC1EPKc
.LEHE17:
	sub	r3, fp, #24
	ldr	r0, [fp, #-20]
	mov	r1, r3
.LEHB18:
	blx	r4
	mov	r3, r0
	mov	r0, r5
	mov	r1, r3
	bl	_ZNSolsEi
	mov	r3, r0
	mov	r0, r3
	ldr	r1, .L59+28
	bl	_ZNSolsEPFRSoS_E
.LEHE18:
	sub	r3, fp, #24
	mov	r0, r3
	bl	_ZN3sql9SQLStringD1Ev
	sub	r3, fp, #32
	mov	r0, r3
	bl	_ZN3sql9SQLStringD1Ev
	sub	r3, fp, #28
	mov	r0, r3
	bl	_ZN3sql9SQLStringD1Ev
	sub	r3, fp, #40
	mov	r0, r3
	bl	_ZN3sql9SQLStringD1Ev
	sub	r3, fp, #36
	mov	r0, r3
	bl	_ZN3sql9SQLStringD1Ev
	sub	r3, fp, #48
	mov	r0, r3
	bl	_ZN3sql9SQLStringD1Ev
	sub	r3, fp, #44
	mov	r0, r3
	bl	_ZN3sql9SQLStringD1Ev
.L39:
	ldr	r3, [fp, #-20]
	ldr	r3, [r3]
	add	r3, r3, #188
	ldr	r3, [r3]
	ldr	r0, [fp, #-20]
.LEHB19:
	blx	r3
	mov	r3, r0
	cmp	r3, #0
	bne	.L40
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	beq	.L58
	ldr	r3, [fp, #-20]
	ldr	r3, [r3]
	add	r3, r3, #4
	ldr	r3, [r3]
	ldr	r0, [fp, #-20]
	blx	r3
	b	.L58
.L50:
	sub	r3, fp, #52
	mov	r0, r3
	bl	_ZN3sql9SQLStringD1Ev
	bl	__cxa_end_cleanup
.L57:
	sub	r3, fp, #24
	mov	r0, r3
	bl	_ZN3sql9SQLStringD1Ev
	b	.L44
.L56:
.L44:
	sub	r3, fp, #32
	mov	r0, r3
	bl	_ZN3sql9SQLStringD1Ev
	b	.L45
.L55:
.L45:
	sub	r3, fp, #28
	mov	r0, r3
	bl	_ZN3sql9SQLStringD1Ev
	b	.L46
.L54:
.L46:
	sub	r3, fp, #40
	mov	r0, r3
	bl	_ZN3sql9SQLStringD1Ev
	b	.L47
.L53:
.L47:
	sub	r3, fp, #36
	mov	r0, r3
	bl	_ZN3sql9SQLStringD1Ev
	b	.L48
.L52:
.L48:
	sub	r3, fp, #48
	mov	r0, r3
	bl	_ZN3sql9SQLStringD1Ev
	b	.L49
.L51:
.L49:
	sub	r3, fp, #44
	mov	r0, r3
	bl	_ZN3sql9SQLStringD1Ev
	bl	__cxa_end_cleanup
.LEHE19:
.L58:
	sub	sp, fp, #12
	@ sp needed
	ldmfd	sp!, {r4, r5, fp, pc}
.L60:
	.align	2
.L59:
	.word	.LC4
	.word	.LC5
	.word	_ZSt4cout
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA4731:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4731-.LLSDACSB4731
.LLSDACSB4731:
	.uleb128 .LEHB9-.LFB4731
	.uleb128 .LEHE9-.LEHB9
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB10-.LFB4731
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L50-.LFB4731
	.uleb128 0
	.uleb128 .LEHB11-.LFB4731
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB12-.LFB4731
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L51-.LFB4731
	.uleb128 0
	.uleb128 .LEHB13-.LFB4731
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L52-.LFB4731
	.uleb128 0
	.uleb128 .LEHB14-.LFB4731
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L53-.LFB4731
	.uleb128 0
	.uleb128 .LEHB15-.LFB4731
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L54-.LFB4731
	.uleb128 0
	.uleb128 .LEHB16-.LFB4731
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L55-.LFB4731
	.uleb128 0
	.uleb128 .LEHB17-.LFB4731
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L56-.LFB4731
	.uleb128 0
	.uleb128 .LEHB18-.LFB4731
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L57-.LFB4731
	.uleb128 0
	.uleb128 .LEHB19-.LFB4731
	.uleb128 .LEHE19-.LEHB19
	.uleb128 0
	.uleb128 0
.LLSDACSE4731:
	.text
	.fnend
	.size	_Z10readFromDBPN3sql10ConnectionE, .-_Z10readFromDBPN3sql10ConnectionE
	.section	.rodata
	.align	2
.LC10:
	.ascii	"localhost\000"
	.align	2
.LC11:
	.ascii	"root\000"
	.align	2
.LC12:
	.ascii	"pass\000"
	.align	2
.LC13:
	.ascii	"test_db\000"
	.align	2
.LC14:
	.ascii	"Running...\000"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	.fnstart
.LFB4732:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, fp, lr}
	.save {r4, r5, r6, fp, lr}
	.setfp fp, sp, #16
	add	fp, sp, #16
	.pad #76
	sub	sp, sp, #76
	str	r0, [fp, #-88]
	str	r1, [fp, #-92]
	mov	r3, #0
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-88]
	cmp	r3, #1
	ble	.L62
	ldr	r3, [fp, #-92]
	add	r3, r3, #4
	ldr	r3, [r3]
	mov	r0, r3
	bl	atoi
	mov	r3, r0
	b	.L63
.L62:
	mov	r3, #10
.L63:
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-88]
	cmp	r3, #2
	ble	.L64
	ldr	r3, [fp, #-92]
	add	r3, r3, #8
	ldr	r3, [r3]
	mov	r0, r3
	bl	atoi
	mov	r3, r0
	b	.L65
.L64:
	mov	r3, #5
.L65:
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-88]
	cmp	r3, #3
	ble	.L66
	ldr	r3, [fp, #-92]
	add	r3, r3, #12
	ldr	r3, [r3]
	mov	r0, r3
	bl	atof
	fcpyd	d7, d0
	b	.L67
.L66:
	fldd	d7, .L89
.L67:
	fstd	d7, [fp, #-44]
	mov	r0, #12
.LEHB20:
	bl	_Znwj
.LEHE20:
	mov	r4, r0
	mov	r0, r4
.LEHB21:
	bl	_ZN7MCP3008C1Ev
.LEHE21:
	str	r4, [fp, #-48]
.LEHB22:
	bl	get_driver_instance
	mov	r3, r0
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-52]
	ldr	r3, [r3]
	add	r3, r3, #8
	ldr	r4, [r3]
	sub	r3, fp, #80
	mov	r0, r3
	ldr	r1, .L89+8
	bl	_ZN3sql9SQLStringC1EPKc
.LEHE22:
	sub	r3, fp, #76
	mov	r0, r3
	ldr	r1, .L89+12
.LEHB23:
	bl	_ZN3sql9SQLStringC1EPKc
.LEHE23:
	sub	r3, fp, #72
	mov	r0, r3
	ldr	r1, .L89+16
.LEHB24:
	bl	_ZN3sql9SQLStringC1EPKc
.LEHE24:
	sub	r1, fp, #80
	sub	r2, fp, #76
	sub	r3, fp, #72
	ldr	r0, [fp, #-52]
.LEHB25:
	blx	r4
.LEHE25:
	mov	r3, r0
	str	r3, [fp, #-56]
	sub	r3, fp, #72
	mov	r0, r3
	bl	_ZN3sql9SQLStringD1Ev
	sub	r3, fp, #76
	mov	r0, r3
	bl	_ZN3sql9SQLStringD1Ev
	sub	r3, fp, #80
	mov	r0, r3
	bl	_ZN3sql9SQLStringD1Ev
	ldr	r3, [fp, #-56]
	ldr	r3, [r3]
	add	r3, r3, #116
	ldr	r4, [r3]
	sub	r3, fp, #68
	mov	r0, r3
	ldr	r1, .L89+20
.LEHB26:
	bl	_ZN3sql9SQLStringC1EPKc
.LEHE26:
	sub	r3, fp, #68
	ldr	r0, [fp, #-56]
	mov	r1, r3
.LEHB27:
	blx	r4
.LEHE27:
	sub	r3, fp, #68
	mov	r0, r3
	bl	_ZN3sql9SQLStringD1Ev
	ldr	r0, .L89+24
	ldr	r1, .L89+28
.LEHB28:
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	r3, r0
	mov	r0, r3
	ldr	r1, .L89+32
	bl	_ZNSolsEPFRSoS_E
	mov	r3, #0
	str	r3, [fp, #-60]
	ldr	r0, [fp, #-48]
	mov	r1, #0
	fldd	d0, [fp, #-44]
	bl	_Z10getReadingP7MCP3008id
	mov	r3, r0
	str	r3, [fp, #-60]
	ldr	r0, [fp, #-56]
	ldr	r1, [fp, #-60]
	bl	_Z9writeToDBPN3sql10ConnectionEi
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L68
.L69:
	ldr	r3, [fp, #-32]
	mov	r0, r3
	bl	sleep
	ldr	r0, [fp, #-48]
	mov	r1, #0
	fldd	d0, [fp, #-44]
	bl	_Z10getReadingP7MCP3008id
	mov	r3, r0
	str	r3, [fp, #-60]
	ldr	r0, [fp, #-56]
	ldr	r1, [fp, #-60]
	bl	_Z9writeToDBPN3sql10ConnectionEi
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L68:
	ldr	r3, [fp, #-36]
	sub	r2, r3, #1
	ldr	r3, [fp, #-24]
	cmp	r2, r3
	bgt	.L69
	ldr	r0, [fp, #-56]
	bl	_Z10readFromDBPN3sql10ConnectionE
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	beq	.L70
	ldr	r3, [fp, #-56]
	ldr	r3, [r3]
	add	r3, r3, #4
	ldr	r3, [r3]
	ldr	r0, [fp, #-56]
	blx	r3
.L70:
	ldr	r0, [fp, #-48]
	bl	_ZdlPv
	mov	r3, #0
	b	.L88
.L82:
	mov	r6, r0
	mov	r5, r1
	mov	r0, r4
	bl	_ZdlPv
	mov	r2, r6
	mov	r3, r5
	b	.L73
.L85:
	mov	r5, r0
	mov	r4, r1
	sub	r3, fp, #72
	mov	r0, r3
	bl	_ZN3sql9SQLStringD1Ev
	b	.L75
.L84:
	mov	r5, r0
	mov	r4, r1
.L75:
	sub	r3, fp, #76
	mov	r0, r3
	bl	_ZN3sql9SQLStringD1Ev
	b	.L76
.L83:
	mov	r5, r0
	mov	r4, r1
.L76:
	sub	r3, fp, #80
	mov	r0, r3
	bl	_ZN3sql9SQLStringD1Ev
	mov	r2, r5
	mov	r3, r4
	b	.L73
.L86:
	mov	r5, r0
	mov	r4, r1
	sub	r3, fp, #68
	mov	r0, r3
	bl	_ZN3sql9SQLStringD1Ev
	mov	r2, r5
	mov	r3, r4
	b	.L73
.L87:
	bl	__cxa_end_catch
	bl	__cxa_end_cleanup
.L81:
	mov	r2, r0
	mov	r3, r1
.L73:
	cmp	r3, #1
	beq	.L80
	bl	__cxa_end_cleanup
.LEHE28:
.L80:
	mov	r3, r2
	mov	r0, r3
	bl	__cxa_begin_catch
	mov	r3, r0
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-64]
	ldr	r3, [r3]
	add	r3, r3, #8
	ldr	r3, [r3]
	ldr	r0, [fp, #-64]
	blx	r3
	mov	r3, r0
	ldr	r0, .L89+36
	mov	r1, r3
.LEHB29:
	bl	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mov	r3, r0
	mov	r0, r3
	ldr	r1, .L89+32
	bl	_ZNSolsEPFRSoS_E
.LEHE29:
	mov	r0, #1
	bl	exit
.L88:
	mov	r0, r3
	sub	sp, fp, #16
	@ sp needed
	ldmfd	sp!, {r4, r5, r6, fp, pc}
.L90:
	.align	3
.L89:
	.word	-2061584302
	.word	1074418155
	.word	.LC10
	.word	.LC11
	.word	.LC12
	.word	.LC13
	.word	_ZSt4cout
	.word	.LC14
	.word	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	.word	_ZSt4cerr
	.personality	__gxx_personality_v0
	.handlerdata
	.align	2
.LLSDA4732:
	.byte	0xff
	.byte	0x90
	.uleb128 .LLSDATT4732-.LLSDATTD4732
.LLSDATTD4732:
	.byte	0x1
	.uleb128 .LLSDACSE4732-.LLSDACSB4732
.LLSDACSB4732:
	.uleb128 .LEHB20-.LFB4732
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L81-.LFB4732
	.uleb128 0x1
	.uleb128 .LEHB21-.LFB4732
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L82-.LFB4732
	.uleb128 0x3
	.uleb128 .LEHB22-.LFB4732
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L81-.LFB4732
	.uleb128 0x1
	.uleb128 .LEHB23-.LFB4732
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L83-.LFB4732
	.uleb128 0x3
	.uleb128 .LEHB24-.LFB4732
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L84-.LFB4732
	.uleb128 0x3
	.uleb128 .LEHB25-.LFB4732
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L85-.LFB4732
	.uleb128 0x3
	.uleb128 .LEHB26-.LFB4732
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L81-.LFB4732
	.uleb128 0x1
	.uleb128 .LEHB27-.LFB4732
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L86-.LFB4732
	.uleb128 0x3
	.uleb128 .LEHB28-.LFB4732
	.uleb128 .LEHE28-.LEHB28
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB29-.LFB4732
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L87-.LFB4732
	.uleb128 0
.LLSDACSE4732:
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x7d
	.align	2
	.word	_ZTISt9exception(TARGET2)
.LLSDATT4732:
	.text
	.fnend
	.size	main, .-main
	.align	2
	.type	_Z41__static_initialization_and_destruction_0ii, %function
_Z41__static_initialization_and_destruction_0ii:
	.fnstart
.LFB5178:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-8]
	cmp	r3, #1
	bne	.L91
	ldr	r3, [fp, #-12]
	ldr	r2, .L93
	cmp	r3, r2
	bne	.L91
	ldr	r0, .L93+4
	bl	_ZNSt8ios_base4InitC1Ev
	ldr	r0, .L93+4
	ldr	r1, .L93+8
	ldr	r2, .L93+12
	bl	__aeabi_atexit
.L91:
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L94:
	.align	2
.L93:
	.word	65535
	.word	_ZStL8__ioinit
	.word	_ZNSt8ios_base4InitD1Ev
	.word	__dso_handle
	.cantunwind
	.fnend
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.section	.rodata
	.align	2
	.type	_ZN5boost6detail15aligned_storageL22alignment_of_max_alignE, %object
	.size	_ZN5boost6detail15aligned_storageL22alignment_of_max_alignE, 4
_ZN5boost6detail15aligned_storageL22alignment_of_max_alignE:
	.word	8
	.align	2
	.type	_ZN9__gnu_cxxL21__default_lock_policyE, %object
	.size	_ZN9__gnu_cxxL21__default_lock_policyE, 4
_ZN9__gnu_cxxL21__default_lock_policyE:
	.word	1
	.text
	.align	2
	.type	_GLOBAL__sub_I__Z10getReadingP7MCP3008id, %function
_GLOBAL__sub_I__Z10getReadingP7MCP3008id:
	.fnstart
.LFB5184:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	mov	r0, #1
	ldr	r1, .L96
	bl	_Z41__static_initialization_and_destruction_0ii
	ldmfd	sp!, {fp, pc}
.L97:
	.align	2
.L96:
	.word	65535
	.cantunwind
	.fnend
	.size	_GLOBAL__sub_I__Z10getReadingP7MCP3008id, .-_GLOBAL__sub_I__Z10getReadingP7MCP3008id
	.section	.init_array,"aw"
	.align	2
	.word	_GLOBAL__sub_I__Z10getReadingP7MCP3008id
	.section	.rodata
	.align	2
	.type	_ZZL18__gthread_active_pvE20__gthread_active_ptr, %object
	.size	_ZZL18__gthread_active_pvE20__gthread_active_ptr, 4
_ZZL18__gthread_active_pvE20__gthread_active_ptr:
	.word	_ZL28__gthrw___pthread_key_createPjPFvPvE
	.weakref	_ZL28__gthrw___pthread_key_createPjPFvPvE,__pthread_key_create
	.hidden	__dso_handle
	.ident	"GCC: (Raspbian 4.9.2-10+deb8u1) 4.9.2"
	.section	.note.GNU-stack,"",%progbits
