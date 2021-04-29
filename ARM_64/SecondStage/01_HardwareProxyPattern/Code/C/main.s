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
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	sub	r3, fp, #16
	str	r3, [fp, #-8]
	sub	r3, fp, #20
	ldr	r0, [fp, #-8]
	mov	r1, #0
	mov	r2, r3
	bl	MotorProxy_configure
	ldr	r0, [fp, #-8]
	bl	MotorProxy_initialize
	ldr	r0, [fp, #-8]
	mov	r1, #1
	mov	r2, #10
	bl	MotorProxy_writeMotorSpeed
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	ldr	r0, .L3
	mov	r1, r3
	bl	printf
	ldr	r0, [fp, #-8]
	bl	MotorProxy_accessMotorDirection
	mov	r3, r0
	ldr	r0, .L3+4
	mov	r1, r3
	bl	printf
	ldr	r0, [fp, #-8]
	bl	MotorProxy_accessMotorSpeed
	mov	r3, r0
	ldr	r0, .L3+8
	mov	r1, r3
	bl	printf
	ldr	r0, [fp, #-8]
	bl	MotorProxy_accessMotorState
	mov	r3, r0
	ldr	r0, .L3+12
	mov	r1, r3
	bl	printf
	ldr	r0, [fp, #-8]
	bl	MotorProxy_disable
	ldr	r0, [fp, #-8]
	bl	MotorProxy_enable
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L4:
	.align	2
.L3:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.size	main, .-main
	.ident	"GCC: (Raspbian 4.9.2-10+deb8u1) 4.9.2"
	.section	.note.GNU-stack,"",%progbits
