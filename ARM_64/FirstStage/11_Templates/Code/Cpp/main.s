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
	.global	main
	.type	main, %function
main:
	.fnstart
.LFB2:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	sub	r3, fp, #8
	mov	r0, r3
	mov	r1, #1
	bl	_ZN1AIiEC1Ei
	sub	r3, fp, #8
	mov	r0, r3
	bl	_ZN1AIiE1fEv
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.cantunwind
	.fnend
	.size	main, .-main
	.section	.text._ZN1AIiEC2Ei,"axG",%progbits,_ZN1AIiEC5Ei,comdat
	.align	2
	.weak	_ZN1AIiEC2Ei
	.type	_ZN1AIiEC2Ei, %function
_ZN1AIiEC2Ei:
	.fnstart
.LFB4:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-12]
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN1AIiEC2Ei, .-_ZN1AIiEC2Ei
	.weak	_ZN1AIiEC1Ei
_ZN1AIiEC1Ei = _ZN1AIiEC2Ei
	.section	.text._ZN1AIiE1fEv,"axG",%progbits,_ZN1AIiE1fEv,comdat
	.align	2
	.weak	_ZN1AIiE1fEv
	.type	_ZN1AIiE1fEv, %function
_ZN1AIiE1fEv:
	.fnstart
.LFB6:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN1AIiE1fEv, .-_ZN1AIiE1fEv
	.ident	"GCC: (Raspbian 4.9.2-10+deb8u1) 4.9.2"
	.section	.note.GNU-stack,"",%progbits
