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
	.file	"main.c"
	.text
	.align	2
	.global	f_A
	.type	f_A, %function
f_A:
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
	.size	f_A, .-f_A
	.global	vTable_A
	.data
	.align	2
	.type	vTable_A, %object
	.size	vTable_A, 4
vTable_A:
	.word	f_A
	.text
	.align	2
	.global	constructor_A
	.type	constructor_A, %function
constructor_A:
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
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L5:
	.align	2
.L4:
	.word	vTable_A
	.size	constructor_A, .-constructor_A
	.align	2
	.global	f_B
	.type	f_B, %function
f_B:
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
	.size	f_B, .-f_B
	.global	vTable_B
	.data
	.align	2
	.type	vTable_B, %object
	.size	vTable_B, 4
vTable_B:
	.word	f_B
	.text
	.align	2
	.global	constructor_B
	.type	constructor_B, %function
constructor_B:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r0, [fp, #-8]
	bl	constructor_A
	ldr	r3, [fp, #-8]
	ldr	r2, .L9
	str	r2, [r3]
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L10:
	.align	2
.L9:
	.word	vTable_B
	.size	constructor_B, .-constructor_B
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	sub	r3, fp, #16
	mov	r0, r3
	bl	constructor_B
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
	.size	main, .-main
	.ident	"GCC: (Raspbian 4.9.2-10+deb8u1) 4.9.2"
	.section	.note.GNU-stack,"",%progbits
