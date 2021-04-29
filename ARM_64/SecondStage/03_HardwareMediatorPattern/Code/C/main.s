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
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #88
	bl	RobotArmManager_Create
	str	r0, [fp, #-8]
	sub	r3, fp, #16
	ldr	r0, [fp, #-8]
	mov	r1, r3
	bl	RobotArmManager_addItsRotatingArmJoint
	sub	r3, fp, #24
	ldr	r0, [fp, #-8]
	mov	r1, r3
	bl	RobotArmManager_addItsRotatingArmJoint
	sub	r3, fp, #32
	ldr	r0, [fp, #-8]
	mov	r1, r3
	bl	RobotArmManager_addItsRotatingArmJoint
	sub	r3, fp, #40
	ldr	r0, [fp, #-8]
	mov	r1, r3
	bl	RobotArmManager_addItsRotatingArmJoint
	sub	r3, fp, #56
	ldr	r0, [fp, #-8]
	mov	r1, r3
	bl	RobotArmManager_addItsSlidingArmJoint
	sub	r3, fp, #72
	ldr	r0, [fp, #-8]
	mov	r1, r3
	bl	RobotArmManager_addItsSlidingArmJoint
	sub	r3, fp, #80
	ldr	r0, [fp, #-8]
	mov	r1, r3
	bl	RobotArmManager_setItsGraspingManipulator
	mov	r3, #4
	str	r3, [sp]
	ldr	r0, [fp, #-8]
	mov	r1, #1
	mov	r2, #2
	mov	r3, #3
	bl	RobotArmManager_computeTrajectory
	ldr	r0, [fp, #-8]
	bl	RobotArmManager_executeStep
	mov	r3, #1
	str	r3, [sp]
	ldr	r0, [fp, #-8]
	mov	r1, #4
	mov	r2, #3
	mov	r3, #2
	bl	RobotArmManager_graspAt
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.size	main, .-main
	.ident	"GCC: (Raspbian 4.9.2-10+deb8u1) 4.9.2"
	.section	.note.GNU-stack,"",%progbits
