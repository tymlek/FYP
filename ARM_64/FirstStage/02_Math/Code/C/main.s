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
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	mov	r2, #0
	mov	r3, #0
	strd	r2, [fp, #-12]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [fp, #-20]
	mov	r2, #0
	mov	r3, #1073741824
	strd	r2, [fp, #-28]
	fldd	d7, [fp, #-28]
	fldd	d6, .L3
	fmuld	d7, d7, d6
	fstd	d7, [fp, #-12]
	fldd	d7, [fp, #-28]
	fldd	d6, .L3+8
	fmuld	d6, d7, d6
	fldd	d7, [fp, #-28]
	fmuld	d7, d6, d7
	fstd	d7, [fp, #-20]
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L4:
	.align	3
.L3:
	.word	1414677840
	.word	1075388923
	.word	1414677840
	.word	1074340347
	.size	main, .-main
	.ident	"GCC: (Raspbian 4.9.2-10+deb8u1) 4.9.2"
	.section	.note.GNU-stack,"",%progbits
