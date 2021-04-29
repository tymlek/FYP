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
	.global	int_container_create
	.type	int_container_create, %function
int_container_create:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #2
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-16]
	str	r2, [r3]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L2
	ldr	r3, [fp, #-24]
	b	.L3
.L2:
	mov	r3, #0
.L3:
	ldr	r2, [fp, #-16]
	str	r3, [r2, #4]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L4
.L5:
	ldr	r3, [fp, #-16]
	ldr	r2, [r3]
	ldr	r3, [fp, #-8]
	mov	r3, r3, asl #2
	add	r3, r2, r3
	ldr	r2, [fp, #-8]
	mov	r2, r2, asl #2
	ldr	r1, [fp, #-20]
	add	r2, r1, r2
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L4:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-24]
	cmp	r2, r3
	bcc	.L5
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.size	int_container_create, .-int_container_create
	.align	2
	.global	int_container_destroy
	.type	int_container_destroy, %function
int_container_destroy:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	mov	r0, r3
	bl	free
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.size	int_container_destroy, .-int_container_destroy
	.align	2
	.global	int_container_value
	.type	int_container_value, %function
int_container_value:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	blt	.L8
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bcs	.L8
	ldr	r3, [fp, #-8]
	ldr	r2, [r3]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	add	r3, r2, r3
	ldr	r3, [r3]
	b	.L9
.L8:
	mov	r3, #0
.L9:
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	int_container_value, .-int_container_value
	.section	.rodata
	.align	2
.LC1:
	.ascii	"%d\000"
	.align	2
.LC0:
	.word	0
	.word	1
	.word	2
	.word	3
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	ldr	r3, .L13
	sub	ip, fp, #20
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	sub	r2, fp, #28
	sub	r3, fp, #20
	mov	r0, r2
	mov	r1, r3
	mov	r2, #4
	bl	int_container_create
	sub	r3, fp, #28
	mov	r0, r3
	mov	r1, #2
	bl	int_container_value
	mov	r3, r0
	ldr	r0, .L13+4
	mov	r1, r3
	bl	printf
	sub	r3, fp, #28
	mov	r0, r3
	bl	int_container_destroy
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L14:
	.align	2
.L13:
	.word	.LC0
	.word	.LC1
	.size	main, .-main
	.ident	"GCC: (Raspbian 4.9.2-10+deb8u1) 4.9.2"
	.section	.note.GNU-stack,"",%progbits
