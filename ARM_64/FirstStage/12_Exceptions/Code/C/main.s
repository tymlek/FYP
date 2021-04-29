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
	.comm	ConstCharStarException,392,8
	.comm	ConstCharStarExceptionValue,4,4
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Negative argument to factorial\000"
	.text
	.align	2
	.global	factorial
	.type	factorial, %function
factorial:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bge	.L2
	ldr	r3, .L5
	ldr	r2, .L5+4
	str	r2, [r3]
	ldr	r0, .L5+8
	mov	r1, #0
	bl	longjmp
.L2:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	ble	.L3
	ldr	r3, [fp, #-8]
	sub	r3, r3, #1
	mov	r0, r3
	bl	factorial
	mov	r2, r0
	ldr	r3, [fp, #-8]
	mul	r3, r3, r2
	b	.L4
.L3:
	mov	r3, #1
.L4:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L6:
	.align	2
.L5:
	.word	ConstCharStarExceptionValue
	.word	.LC0
	.word	ConstCharStarException
	.size	factorial, .-factorial
	.section	.rodata
	.align	2
.LC1:
	.ascii	"factorial(10) = %d\000"
	.align	2
.LC2:
	.ascii	"factorial threw exception: %s\012\000"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	ldr	r0, .L13
	bl	_setjmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L12
	mov	r0, #10
	bl	factorial
	mov	r3, r0
	str	r3, [fp, #-8]
	ldr	r0, .L13+4
	ldr	r1, [fp, #-8]
	bl	printf
	b	.L10
.L12:
	ldr	r3, .L13+8
	ldr	r3, [r3]
	ldr	r0, .L13+12
	mov	r1, r3
	bl	printf
.L10:
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L14:
	.align	2
.L13:
	.word	ConstCharStarException
	.word	.LC1
	.word	ConstCharStarExceptionValue
	.word	.LC2
	.size	main, .-main
	.ident	"GCC: (Raspbian 4.9.2-10+deb8u1) 4.9.2"
	.section	.note.GNU-stack,"",%progbits
