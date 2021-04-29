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
	.text
	.align	2
	.global	_ZN6ParentC2Ev
	.type	_ZN6ParentC2Ev, %function
_ZN6ParentC2Ev:
	.fnstart
.LFB1:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r2, #1
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN6ParentC2Ev, .-_ZN6ParentC2Ev
	.global	_ZN6ParentC1Ev
_ZN6ParentC1Ev = _ZN6ParentC2Ev
	.align	2
	.global	_ZN6Parent1fEv
	.type	_ZN6Parent1fEv, %function
_ZN6Parent1fEv:
	.fnstart
.LFB3:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN6Parent1fEv, .-_ZN6Parent1fEv
	.align	2
	.global	_ZN5ChildC2Ev
	.type	_ZN5ChildC2Ev, %function
_ZN5ChildC2Ev:
	.fnstart
.LFB5:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	bl	_ZN6ParentC2Ev
	ldr	r3, [fp, #-8]
	mov	r2, #2
	str	r2, [r3, #4]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.cantunwind
	.fnend
	.size	_ZN5ChildC2Ev, .-_ZN5ChildC2Ev
	.global	_ZN5ChildC1Ev
_ZN5ChildC1Ev = _ZN5ChildC2Ev
	.align	2
	.global	_ZN5Child1gEv
	.type	_ZN5Child1gEv, %function
_ZN5Child1gEv:
	.fnstart
.LFB7:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #4]
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN5Child1gEv, .-_ZN5Child1gEv
	.align	2
	.global	main
	.type	main, %function
main:
	.fnstart
.LFB8:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	sub	r3, fp, #12
	mov	r0, r3
	bl	_ZN5ChildC2Ev
	sub	r3, fp, #12
	mov	r0, r3
	bl	_ZN6Parent1fEv
	sub	r3, fp, #12
	mov	r0, r3
	bl	_ZN5Child1gEv
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.cantunwind
	.fnend
	.size	main, .-main
	.ident	"GCC: (Raspbian 4.9.2-10+deb8u1) 4.9.2"
	.section	.note.GNU-stack,"",%progbits
