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
	.section	.rodata
	.align	2
.LC0:
	.ascii	"%d\000"
	.text
	.align	2
	.global	_Z8functioni
	.type	_Z8functioni, %function
_Z8functioni:
	.fnstart
.LFB0:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
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
	.fnend
	.size	_Z8functioni, .-_Z8functioni
	.section	.rodata
	.align	2
.LC1:
	.ascii	"%f\000"
	.text
	.align	2
	.global	_Z8functiond
	.type	_Z8functiond, %function
_Z8functiond:
	.fnstart
.LFB1:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #8
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
	.fnend
	.size	_Z8functiond, .-_Z8functiond
	.align	2
	.global	main
	.type	main, %function
main:
	.fnstart
.LFB2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	mov	r0, #2
	bl	_Z8functioni
	fldd	d0, .L9
	bl	_Z8functiond
	mov	r3, #0
	mov	r0, r3
	ldmfd	sp!, {fp, pc}
.L10:
	.align	3
.L9:
	.word	1374389535
	.word	1074339512
	.fnend
	.size	main, .-main
	.ident	"GCC: (Raspbian 4.9.2-10+deb8u1) 4.9.2"
	.section	.note.GNU-stack,"",%progbits
