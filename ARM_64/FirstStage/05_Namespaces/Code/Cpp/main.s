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
	.global	_ZN3ns16func_fEv
	.type	_ZN3ns16func_fEv, %function
_ZN3ns16func_fEv:
	.fnstart
.LFB0:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN3ns16func_fEv, .-_ZN3ns16func_fEv
	.align	2
	.global	_ZN3ns16func_gEv
	.type	_ZN3ns16func_gEv, %function
_ZN3ns16func_gEv:
	.fnstart
.LFB1:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	bl	_ZN3ns16func_fEv
	ldmfd	sp!, {fp, pc}
	.cantunwind
	.fnend
	.size	_ZN3ns16func_gEv, .-_ZN3ns16func_gEv
	.align	2
	.global	_ZN3ns26func_fEv
	.type	_ZN3ns26func_fEv, %function
_ZN3ns26func_fEv:
	.fnstart
.LFB2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN3ns26func_fEv, .-_ZN3ns26func_fEv
	.align	2
	.global	_ZN3ns26func_gEv
	.type	_ZN3ns26func_gEv, %function
_ZN3ns26func_gEv:
	.fnstart
.LFB3:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	bl	_ZN3ns26func_fEv
	ldmfd	sp!, {fp, pc}
	.cantunwind
	.fnend
	.size	_ZN3ns26func_gEv, .-_ZN3ns26func_gEv
	.align	2
	.global	main
	.type	main, %function
main:
	.fnstart
.LFB4:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	bl	_ZN3ns16func_gEv
	bl	_ZN3ns26func_gEv
	mov	r3, #0
	mov	r0, r3
	ldmfd	sp!, {fp, pc}
	.cantunwind
	.fnend
	.size	main, .-main
	.ident	"GCC: (Raspbian 4.9.2-10+deb8u1) 4.9.2"
	.section	.note.GNU-stack,"",%progbits
