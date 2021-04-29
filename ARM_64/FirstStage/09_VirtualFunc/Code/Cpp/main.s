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
	.text
	.align	2
	.global	_ZN1AC2Ev
	.type	_ZN1AC2Ev, %function
_ZN1AC2Ev:
	.fnstart
.LFB1:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r2, .L4
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	mov	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L5:
	.align	2
.L4:
	.word	_ZTV1A+8
	.cantunwind
	.fnend
	.size	_ZN1AC2Ev, .-_ZN1AC2Ev
	.global	_ZN1AC1Ev
_ZN1AC1Ev = _ZN1AC2Ev
	.align	2
	.global	_ZN1A1fEv
	.type	_ZN1A1fEv, %function
_ZN1A1fEv:
	.fnstart
.LFB3:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN1A1fEv, .-_ZN1A1fEv
	.align	2
	.global	_ZN1BC2Ev
	.type	_ZN1BC2Ev, %function
_ZN1BC2Ev:
	.fnstart
.LFB5:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	bl	_ZN1AC2Ev
	ldr	r3, [fp, #-8]
	ldr	r2, .L11
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L12:
	.align	2
.L11:
	.word	_ZTV1B+8
	.cantunwind
	.fnend
	.size	_ZN1BC2Ev, .-_ZN1BC2Ev
	.global	_ZN1BC1Ev
_ZN1BC1Ev = _ZN1BC2Ev
	.align	2
	.global	_ZN1B1fEv
	.type	_ZN1B1fEv, %function
_ZN1B1fEv:
	.fnstart
.LFB7:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	mov	r3, #1
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN1B1fEv, .-_ZN1B1fEv
	.align	2
	.global	main
	.type	main, %function
main:
	.fnstart
.LFB8:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #16
	sub	sp, sp, #16
	sub	r3, fp, #16
	mov	r0, r3
	bl	_ZN1BC2Ev
	sub	r3, fp, #16
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r0, [fp, #-8]
	blx	r3
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	main, .-main
	.global	_ZTV1B
	.section	.rodata
	.align	3
	.type	_ZTV1B, %object
	.size	_ZTV1B, 12
_ZTV1B:
	.word	0
	.word	_ZTI1B
	.word	_ZN1B1fEv
	.global	_ZTV1A
	.align	3
	.type	_ZTV1A, %object
	.size	_ZTV1A, 12
_ZTV1A:
	.word	0
	.word	_ZTI1A
	.word	_ZN1A1fEv
	.global	_ZTI1B
	.align	2
	.type	_ZTI1B, %object
	.size	_ZTI1B, 12
_ZTI1B:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTS1B
	.word	_ZTI1A
	.global	_ZTS1B
	.align	2
	.type	_ZTS1B, %object
	.size	_ZTS1B, 3
_ZTS1B:
	.ascii	"1B\000"
	.global	_ZTI1A
	.align	2
	.type	_ZTI1A, %object
	.size	_ZTI1A, 8
_ZTI1A:
	.word	_ZTVN10__cxxabiv117__class_type_infoE+8
	.word	_ZTS1A
	.global	_ZTS1A
	.align	2
	.type	_ZTS1A, %object
	.size	_ZTS1A, 3
_ZTS1A:
	.ascii	"1A\000"
	.ident	"GCC: (Raspbian 4.9.2-10+deb8u1) 4.9.2"
	.section	.note.GNU-stack,"",%progbits
