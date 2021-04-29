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
	.section	.text._ZN1A4setXEi,"axG",%progbits,_ZN1A4setXEi,comdat
	.align	2
	.weak	_ZN1A4setXEi
	.type	_ZN1A4setXEi, %function
_ZN1A4setXEi:
	.fnstart
.LFB0:
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
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN1A4setXEi, .-_ZN1A4setXEi
	.section	.text._ZN1A4getXEv,"axG",%progbits,_ZN1A4getXEv,comdat
	.align	2
	.weak	_ZN1A4getXEv
	.type	_ZN1A4getXEv, %function
_ZN1A4getXEv:
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
	ldr	r3, [r3]
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN1A4getXEv, .-_ZN1A4getXEv
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Property x: %d\012\000"
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
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
	sub	sp, sp, #8
	mov	r3, #5
	str	r3, [fp, #-8]
	sub	r3, fp, #12
	mov	r0, r3
	ldr	r1, [fp, #-8]
	bl	_ZN1A4setXEi
	sub	r3, fp, #12
	mov	r0, r3
	bl	_ZN1A4getXEv
	mov	r3, r0
	ldr	r0, .L6
	mov	r1, r3
	bl	printf
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L7:
	.align	2
.L6:
	.word	.LC0
	.fnend
	.size	main, .-main
	.ident	"GCC: (Raspbian 4.9.2-10+deb8u1) 4.9.2"
	.section	.note.GNU-stack,"",%progbits
