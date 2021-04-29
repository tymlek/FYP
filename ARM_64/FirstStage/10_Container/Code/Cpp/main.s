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
	.section	.text._ZN13int_containerC2EPKij,"axG",%progbits,_ZN13int_containerC5EPKij,comdat
	.align	2
	.weak	_ZN13int_containerC2EPKij
	.type	_ZN13int_containerC2EPKij, %function
_ZN13int_containerC2EPKij:
	.fnstart
.LFB3:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	.save {fp, lr}
	.setfp fp, sp, #4
	add	fp, sp, #4
	.pad #24
	sub	sp, sp, #24
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	ldr	r3, [fp, #-24]
	cmp	r3, #532676608
	bhi	.L2
	mov	r3, r3, asl #2
	mov	r0, r3
	bl	_Znaj
	mov	r2, r0
	ldr	r3, [fp, #-16]
	str	r2, [r3]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L4
	b	.L10
.L2:
	bl	__cxa_throw_bad_array_new_length
.L10:
	ldr	r3, [fp, #-24]
	b	.L5
.L4:
	mov	r3, #0
.L5:
	ldr	r2, [fp, #-16]
	str	r3, [r2, #4]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L6
.L7:
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
.L6:
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-8]
	cmp	r2, r3
	bhi	.L7
	ldr	r3, [fp, #-16]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.fnend
	.size	_ZN13int_containerC2EPKij, .-_ZN13int_containerC2EPKij
	.weak	_ZN13int_containerC1EPKij
_ZN13int_containerC1EPKij = _ZN13int_containerC2EPKij
	.section	.text._ZN13int_containerD2Ev,"axG",%progbits,_ZN13int_containerD5Ev,comdat
	.align	2
	.weak	_ZN13int_containerD2Ev
	.type	_ZN13int_containerD2Ev, %function
_ZN13int_containerD2Ev:
	.fnstart
.LFB6:
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
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.cantunwind
	.fnend
	.size	_ZN13int_containerD2Ev, .-_ZN13int_containerD2Ev
	.weak	_ZN13int_containerD1Ev
_ZN13int_containerD1Ev = _ZN13int_containerD2Ev
	.section	.text._ZNK13int_containerixEi,"axG",%progbits,_ZNK13int_containerixEi,comdat
	.align	2
	.weak	_ZNK13int_containerixEi
	.type	_ZNK13int_containerixEi, %function
_ZNK13int_containerixEi:
	.fnstart
.LFB8:
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
	blt	.L15
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bcs	.L15
	ldr	r3, [fp, #-8]
	ldr	r2, [r3]
	ldr	r3, [fp, #-12]
	mov	r3, r3, asl #2
	add	r3, r2, r3
	ldr	r3, [r3]
	b	.L17
.L15:
	mov	r3, #0
.L17:
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNK13int_containerixEi, .-_ZNK13int_containerixEi
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
	.fnstart
.LFB9:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	.save {r4, fp, lr}
	.setfp fp, sp, #8
	add	fp, sp, #8
	.pad #28
	sub	sp, sp, #28
	ldr	r3, .L23
	sub	ip, fp, #28
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	sub	r2, fp, #36
	sub	r3, fp, #28
	mov	r0, r2
	mov	r1, r3
	mov	r2, #4
.LEHB0:
	bl	_ZN13int_containerC1EPKij
.LEHE0:
	sub	r3, fp, #36
	mov	r0, r3
	mov	r1, #2
	bl	_ZNK13int_containerixEi
	mov	r3, r0
	ldr	r0, .L23+4
	mov	r1, r3
.LEHB1:
	bl	printf
.LEHE1:
	mov	r4, #0
	sub	r3, fp, #36
	mov	r0, r3
	bl	_ZN13int_containerD1Ev
	mov	r3, r4
	b	.L22
.L21:
	sub	r3, fp, #36
	mov	r0, r3
	bl	_ZN13int_containerD1Ev
.LEHB2:
	bl	__cxa_end_cleanup
.LEHE2:
.L22:
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	ldmfd	sp!, {r4, fp, pc}
.L24:
	.align	2
.L23:
	.word	.LC0
	.word	.LC1
	.global	__gxx_personality_v0
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA9:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE9-.LLSDACSB9
.LLSDACSB9:
	.uleb128 .LEHB0-.LFB9
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB9
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L21-.LFB9
	.uleb128 0
	.uleb128 .LEHB2-.LFB9
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE9:
	.text
	.fnend
	.size	main, .-main
	.ident	"GCC: (Raspbian 4.9.2-10+deb8u1) 4.9.2"
	.section	.note.GNU-stack,"",%progbits
