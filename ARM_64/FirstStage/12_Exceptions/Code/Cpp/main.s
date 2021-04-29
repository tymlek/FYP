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
	.ascii	"Negative Argument to factorial\000"
	.text
	.align	2
	.global	_Z9factoriali
	.type	_Z9factoriali, %function
_Z9factoriali:
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
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bge	.L2
	mov	r0, #4
	bl	__cxa_allocate_exception
	mov	r3, r0
	mov	r2, r3
	ldr	r3, .L5
	str	r3, [r2]
	mov	r0, r2
	ldr	r1, .L5+4
	mov	r2, #0
	bl	__cxa_throw
.L2:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	ble	.L3
	ldr	r3, [fp, #-8]
	sub	r3, r3, #1
	mov	r0, r3
	bl	_Z9factoriali
	mov	r2, r0
	ldr	r3, [fp, #-8]
	mul	r3, r3, r2
	b	.L4
.L3:
	mov	r3, #1
.L4:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L6:
	.align	2
.L5:
	.word	.LC0
	.word	_ZTIPKc
	.fnend
	.size	_Z9factoriali, .-_Z9factoriali
	.section	.rodata
	.align	2
.LC1:
	.ascii	"factorial(10) = %d\000"
	.align	2
.LC2:
	.ascii	"factorial threw exception: %s\000"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
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
	mov	r0, #10
.LEHB0:
	bl	_Z9factoriali
	mov	r3, r0
	str	r3, [fp, #-8]
	ldr	r0, .L17
	ldr	r1, [fp, #-8]
	bl	printf
.LEHE0:
.L13:
	mov	r3, #0
	b	.L16
.L15:
	bl	__cxa_end_catch
.LEHB1:
	bl	__cxa_end_cleanup
.L14:
	mov	r2, r0
	mov	r3, r1
	cmp	r3, #1
	beq	.L12
	bl	__cxa_end_cleanup
.LEHE1:
.L12:
	mov	r3, r2
	mov	r0, r3
	bl	__cxa_begin_catch
	mov	r3, r0
	str	r3, [fp, #-12]
	ldr	r0, .L17+4
	ldr	r1, [fp, #-12]
.LEHB2:
	bl	printf
.LEHE2:
	bl	__cxa_end_catch
	b	.L13
.L16:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L18:
	.align	2
.L17:
	.word	.LC1
	.word	.LC2
	.global	__gxx_personality_v0
	.personality	__gxx_personality_v0
	.handlerdata
	.align	2
.LLSDA1:
	.byte	0xff
	.byte	0x90
	.uleb128 .LLSDATT1-.LLSDATTD1
.LLSDATTD1:
	.byte	0x1
	.uleb128 .LLSDACSE1-.LLSDACSB1
.LLSDACSB1:
	.uleb128 .LEHB0-.LFB1
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L14-.LFB1
	.uleb128 0x1
	.uleb128 .LEHB1-.LFB1
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB2-.LFB1
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L15-.LFB1
	.uleb128 0
.LLSDACSE1:
	.byte	0x1
	.byte	0
	.align	2
	.word	_ZTIPKc(TARGET2)
.LLSDATT1:
	.text
	.fnend
	.size	main, .-main
	.ident	"GCC: (Raspbian 4.9.2-10+deb8u1) 4.9.2"
	.section	.note.GNU-stack,"",%progbits
