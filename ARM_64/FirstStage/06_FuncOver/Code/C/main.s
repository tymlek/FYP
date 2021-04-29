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
	.section	.rodata
	.align	2
.LC0:
	.ascii	"%d\000"
	.text
	.align	2
	.global	function_int
	.type	function_int, %function
function_int:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r0, .L2
	ldr	r1, [fp, #-8]
	bl	printf
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L3:
	.align	2
.L2:
	.word	.LC0
	.size	function_int, .-function_int
	.section	.rodata
	.align	2
.LC1:
	.ascii	"%f\000"
	.text
	.align	2
	.global	function_double
	.type	function_double, %function
function_double:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	fstd	d0, [fp, #-12]
	ldr	r0, .L5
	ldrd	r2, [fp, #-12]
	bl	printf
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L6:
	.align	2
.L5:
	.word	.LC1
	.size	function_double, .-function_double
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	mov	r0, #2
	bl	function_int
	fldd	d0, .L9
	bl	function_double
	mov	r3, #0
	mov	r0, r3
	ldmfd	sp!, {fp, pc}
.L10:
	.align	3
.L9:
	.word	1374389535
	.word	1074339512
	.size	main, .-main
	.ident	"GCC: (Raspbian 4.9.2-10+deb8u1) 4.9.2"
	.section	.note.GNU-stack,"",%progbits
