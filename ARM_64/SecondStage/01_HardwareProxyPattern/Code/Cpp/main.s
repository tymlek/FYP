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
	.section	.text._ZN10MotorProxyC2Ev,"axG",%progbits,_ZN10MotorProxyC5Ev,comdat
	.align	2
	.weak	_ZN10MotorProxyC2Ev
	.type	_ZN10MotorProxyC2Ev, %function
_ZN10MotorProxyC2Ev:
	.fnstart
.LFB7:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r2, #0
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN10MotorProxyC2Ev, .-_ZN10MotorProxyC2Ev
	.weak	_ZN10MotorProxyC1Ev
_ZN10MotorProxyC1Ev = _ZN10MotorProxyC2Ev
	.section	.text._ZN10MotorProxyD2Ev,"axG",%progbits,_ZN10MotorProxyD5Ev,comdat
	.align	2
	.weak	_ZN10MotorProxyD2Ev
	.type	_ZN10MotorProxyD2Ev, %function
_ZN10MotorProxyD2Ev:
	.fnstart
.LFB10:
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
	.size	_ZN10MotorProxyD2Ev, .-_ZN10MotorProxyD2Ev
	.weak	_ZN10MotorProxyD1Ev
_ZN10MotorProxyD1Ev = _ZN10MotorProxyD2Ev
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Motor address: 0x%X\012\000"
	.align	2
.LC1:
	.ascii	"Motor direction: %d\012\000"
	.align	2
.LC2:
	.ascii	"Motor speed: %d\012\000"
	.align	2
.LC3:
	.ascii	"Motor error state: %d\012\000"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	.fnstart
.LFB12:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	.save {r4, fp, lr}
	.setfp fp, sp, #8
	add	fp, sp, #8
	.pad #20
	sub	sp, sp, #20
	sub	r3, fp, #20
	mov	r0, r3
	bl	_ZN10MotorProxyC1Ev
	sub	r2, fp, #20
	sub	r3, fp, #24
	mov	r0, r2
	mov	r1, #0
	mov	r2, r3
.LEHB0:
	bl	_ZN10MotorProxy9configureEjPj
	sub	r3, fp, #20
	mov	r0, r3
	bl	_ZN10MotorProxy10initializeEv
	sub	r3, fp, #20
	mov	r0, r3
	mov	r1, #1
	mov	r2, #10
	bl	_ZN10MotorProxy13setMotorSpeedE13DirectionTypej
	sub	r3, fp, #24
	ldr	r0, .L12
	mov	r1, r3
	bl	printf
	sub	r3, fp, #20
	mov	r0, r3
	bl	_ZN10MotorProxy17getMotorDirectionEv
	mov	r3, r0
	ldr	r0, .L12+4
	mov	r1, r3
	bl	printf
	sub	r3, fp, #20
	mov	r0, r3
	bl	_ZN10MotorProxy13getMotorSpeedEv
	mov	r3, r0
	ldr	r0, .L12+8
	mov	r1, r3
	bl	printf
	sub	r3, fp, #20
	mov	r0, r3
	bl	_ZN10MotorProxy13getMotorStateEv
	mov	r3, r0
	ldr	r0, .L12+12
	mov	r1, r3
	bl	printf
	sub	r3, fp, #20
	mov	r0, r3
	bl	_ZN10MotorProxy7disableEv
	sub	r3, fp, #20
	mov	r0, r3
	bl	_ZN10MotorProxy6enableEv
.LEHE0:
	mov	r4, #0
	sub	r3, fp, #20
	mov	r0, r3
	bl	_ZN10MotorProxyD1Ev
	mov	r3, r4
	b	.L11
.L10:
	sub	r3, fp, #20
	mov	r0, r3
	bl	_ZN10MotorProxyD1Ev
.LEHB1:
	bl	__cxa_end_cleanup
.LEHE1:
.L11:
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	ldmfd	sp!, {r4, fp, pc}
.L13:
	.align	2
.L12:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.global	__gxx_personality_v0
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA12:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE12-.LLSDACSB12
.LLSDACSB12:
	.uleb128 .LEHB0-.LFB12
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L10-.LFB12
	.uleb128 0
	.uleb128 .LEHB1-.LFB12
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE12:
	.text
	.fnend
	.size	main, .-main
	.ident	"GCC: (Raspbian 4.9.2-10+deb8u1) 4.9.2"
	.section	.note.GNU-stack,"",%progbits
