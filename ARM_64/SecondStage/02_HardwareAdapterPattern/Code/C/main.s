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
	.ascii	"O2 Concentration: %d\012\000"
	.align	2
.LC1:
	.ascii	"O2 Flow: %d\012\000"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	bl	IO2Sensor_Create
	str	r0, [fp, #-8]
	sub	r3, fp, #20
	mov	r0, r3
	bl	AcmeO2SensorProxy_Init
	sub	r3, fp, #32
	mov	r0, r3
	bl	AcmeO2Adapter_Init
	sub	r2, fp, #32
	sub	r3, fp, #20
	mov	r0, r2
	mov	r1, r3
	bl	AcmeO2Adapter_configure
	ldr	r0, [fp, #-8]
	bl	IO2Sensor_Init
	sub	r3, fp, #32
	mov	r0, r3
	bl	AcmeO2Adapter_gimmeO2Conc
	mov	r3, r0
	ldr	r0, .L3
	mov	r1, r3
	bl	printf
	sub	r3, fp, #32
	mov	r0, r3
	bl	AcmeO2Adapter_gimmeO2Flow
	mov	r3, r0
	ldr	r0, .L3+4
	mov	r1, r3
	bl	printf
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #4]
	sub	r2, fp, #32
	mov	r0, r2
	blx	r3
	mov	r3, r0
	ldr	r0, .L3
	mov	r1, r3
	bl	printf
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #8]
	sub	r2, fp, #32
	mov	r0, r2
	blx	r3
	mov	r3, r0
	ldr	r0, .L3+4
	mov	r1, r3
	bl	printf
	ldr	r0, [fp, #-8]
	bl	IO2Sensor_Destroy
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
	.size	main, .-main
	.ident	"GCC: (Raspbian 4.9.2-10+deb8u1) 4.9.2"
	.section	.note.GNU-stack,"",%progbits
