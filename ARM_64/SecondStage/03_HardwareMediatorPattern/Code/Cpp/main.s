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
	.section	.text._ZN15RobotArmManagerC2Ev,"axG",%progbits,_ZN15RobotArmManagerC5Ev,comdat
	.align	2
	.weak	_ZN15RobotArmManagerC2Ev
	.type	_ZN15RobotArmManagerC2Ev, %function
_ZN15RobotArmManagerC2Ev:
	.fnstart
.LFB3:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-24]
	mov	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [fp, #-24]
	mov	r2, #0
	str	r2, [r3]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L2
.L3:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-8]
	add	r3, r3, #8
	mov	r3, r3, asl #2
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L2:
	ldr	r3, [fp, #-8]
	cmp	r3, #99
	ble	.L3
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L4
.L5:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-12]
	add	r3, r3, #2
	mov	r3, r3, asl #2
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L4:
	ldr	r3, [fp, #-12]
	cmp	r3, #3
	ble	.L5
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L6
.L7:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-16]
	add	r3, r3, #6
	mov	r3, r3, asl #2
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L6:
	ldr	r3, [fp, #-16]
	cmp	r3, #1
	ble	.L7
	ldr	r3, [fp, #-24]
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN15RobotArmManagerC2Ev, .-_ZN15RobotArmManagerC2Ev
	.weak	_ZN15RobotArmManagerC1Ev
_ZN15RobotArmManagerC1Ev = _ZN15RobotArmManagerC2Ev
	.section	.text._ZN15RobotArmManagerD2Ev,"axG",%progbits,_ZN15RobotArmManagerD5Ev,comdat
	.align	2
	.weak	_ZN15RobotArmManagerD2Ev
	.type	_ZN15RobotArmManagerD2Ev, %function
_ZN15RobotArmManagerD2Ev:
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
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L12
	ldr	r3, [fp, #-8]
	mov	r2, #0
	str	r2, [r3, #8]
.L12:
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN15RobotArmManagerD2Ev, .-_ZN15RobotArmManagerD2Ev
	.weak	_ZN15RobotArmManagerD1Ev
_ZN15RobotArmManagerD1Ev = _ZN15RobotArmManagerD2Ev
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	.fnstart
.LFB8:
	@ args = 0, pretend = 0, frame = 512
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	.save {r4, fp, lr}
	.setfp fp, sp, #8
	add	fp, sp, #8
	.pad #524
	sub	sp, sp, #524
	sub	r3, fp, #524
	mov	r0, r3
	bl	_ZN15RobotArmManagerC1Ev
	sub	r2, fp, #524
	sub	r3, fp, #20
	mov	r0, r2
	mov	r1, r3
.LEHB0:
	bl	_ZN15RobotArmManager22addItsRotatingArmJointEP16RotatingArmJoint
	sub	r2, fp, #524
	sub	r3, fp, #28
	mov	r0, r2
	mov	r1, r3
	bl	_ZN15RobotArmManager22addItsRotatingArmJointEP16RotatingArmJoint
	sub	r2, fp, #524
	sub	r3, fp, #36
	mov	r0, r2
	mov	r1, r3
	bl	_ZN15RobotArmManager22addItsRotatingArmJointEP16RotatingArmJoint
	sub	r2, fp, #524
	sub	r3, fp, #44
	mov	r0, r2
	mov	r1, r3
	bl	_ZN15RobotArmManager22addItsRotatingArmJointEP16RotatingArmJoint
	sub	r2, fp, #524
	sub	r3, fp, #60
	mov	r0, r2
	mov	r1, r3
	bl	_ZN15RobotArmManager21addItsSlidingArmJointEP15SlidingArmJoint
	sub	r2, fp, #524
	sub	r3, fp, #76
	mov	r0, r2
	mov	r1, r3
	bl	_ZN15RobotArmManager21addItsSlidingArmJointEP15SlidingArmJoint
	sub	r2, fp, #524
	sub	r3, fp, #84
	mov	r0, r2
	mov	r1, r3
	bl	_ZN15RobotArmManager25setItsGraspingManipulatorEP19GraspingManipulator
	sub	r2, fp, #524
	mov	r3, #4
	str	r3, [sp]
	mov	r0, r2
	mov	r1, #1
	mov	r2, #2
	mov	r3, #3
	bl	_ZN15RobotArmManager17computeTrajectoryEiiii
	sub	r3, fp, #524
	mov	r0, r3
	bl	_ZN15RobotArmManager11executeStepEv
	sub	r2, fp, #524
	mov	r3, #1
	str	r3, [sp]
	mov	r0, r2
	mov	r1, #4
	mov	r2, #3
	mov	r3, #2
	bl	_ZN15RobotArmManager7graspAtEiiii
.LEHE0:
	mov	r4, #0
	sub	r3, fp, #524
	mov	r0, r3
	bl	_ZN15RobotArmManagerD1Ev
	mov	r3, r4
	b	.L18
.L17:
	sub	r3, fp, #524
	mov	r0, r3
	bl	_ZN15RobotArmManagerD1Ev
.LEHB1:
	bl	__cxa_end_cleanup
.LEHE1:
.L18:
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	ldmfd	sp!, {r4, fp, pc}
	.global	__gxx_personality_v0
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA8:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8-.LLSDACSB8
.LLSDACSB8:
	.uleb128 .LEHB0-.LFB8
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L17-.LFB8
	.uleb128 0
	.uleb128 .LEHB1-.LFB8
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE8:
	.text
	.fnend
	.size	main, .-main
	.ident	"GCC: (Raspbian 4.9.2-10+deb8u1) 4.9.2"
	.section	.note.GNU-stack,"",%progbits
