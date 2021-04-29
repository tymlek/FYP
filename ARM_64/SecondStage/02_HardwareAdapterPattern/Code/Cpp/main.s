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
	.section	.text._ZN17AcmeO2SensorProxyC2Ev,"axG",%progbits,_ZN17AcmeO2SensorProxyC5Ev,comdat
	.align	2
	.weak	_ZN17AcmeO2SensorProxyC2Ev
	.type	_ZN17AcmeO2SensorProxyC2Ev, %function
_ZN17AcmeO2SensorProxyC2Ev:
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
	mov	r2, #0
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN17AcmeO2SensorProxyC2Ev, .-_ZN17AcmeO2SensorProxyC2Ev
	.weak	_ZN17AcmeO2SensorProxyC1Ev
_ZN17AcmeO2SensorProxyC1Ev = _ZN17AcmeO2SensorProxyC2Ev
	.section	.text._ZN9IO2SensorC2Ev,"axG",%progbits,_ZN9IO2SensorC5Ev,comdat
	.align	2
	.weak	_ZN9IO2SensorC2Ev
	.type	_ZN9IO2SensorC2Ev, %function
_ZN9IO2SensorC2Ev:
	.fnstart
.LFB10:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r2, .L7
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L8:
	.align	2
.L7:
	.word	_ZTV9IO2Sensor+8
	.cantunwind
	.fnend
	.size	_ZN9IO2SensorC2Ev, .-_ZN9IO2SensorC2Ev
	.weak	_ZN9IO2SensorC1Ev
_ZN9IO2SensorC1Ev = _ZN9IO2SensorC2Ev
	.section	.text._ZN13AcmeO2AdapterC2EP17AcmeO2SensorProxy,"axG",%progbits,_ZN13AcmeO2AdapterC5EP17AcmeO2SensorProxy,comdat
	.align	2
	.weak	_ZN13AcmeO2AdapterC2EP17AcmeO2SensorProxy
	.type	_ZN13AcmeO2AdapterC2EP17AcmeO2SensorProxy, %function
_ZN13AcmeO2AdapterC2EP17AcmeO2SensorProxy:
	.fnstart
.LFB15:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	bl	_ZN9IO2SensorC2Ev
	ldr	r3, [fp, #-8]
	ldr	r2, .L12
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-12]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L13:
	.align	2
.L12:
	.word	_ZTV13AcmeO2Adapter+8
	.cantunwind
	.fnend
	.size	_ZN13AcmeO2AdapterC2EP17AcmeO2SensorProxy, .-_ZN13AcmeO2AdapterC2EP17AcmeO2SensorProxy
	.weak	_ZN13AcmeO2AdapterC1EP17AcmeO2SensorProxy
_ZN13AcmeO2AdapterC1EP17AcmeO2SensorProxy = _ZN13AcmeO2AdapterC2EP17AcmeO2SensorProxy
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
	.fnstart
.LFB29:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	.save {r4, fp, lr}
	.setfp fp, sp, #8
	add	fp, sp, #8
	.pad #20
	sub	sp, sp, #20
	sub	r3, fp, #20
	mov	r0, r3
	bl	_ZN17AcmeO2SensorProxyC1Ev
	sub	r2, fp, #28
	sub	r3, fp, #20
	mov	r0, r2
	mov	r1, r3
	bl	_ZN13AcmeO2AdapterC1EP17AcmeO2SensorProxy
	mov	r0, #8
	bl	_Znwj
	mov	r4, r0
	sub	r3, fp, #20
	mov	r0, r4
	mov	r1, r3
	bl	_ZN13AcmeO2AdapterC1EP17AcmeO2SensorProxy
	str	r4, [fp, #-16]
	sub	r3, fp, #28
	mov	r0, r3
	bl	_ZN13AcmeO2Adapter11gimmeO2ConcEv
	mov	r3, r0
	ldr	r0, .L16
	mov	r1, r3
	bl	printf
	sub	r3, fp, #28
	mov	r0, r3
	bl	_ZN13AcmeO2Adapter11gimmeO2FlowEv
	mov	r3, r0
	ldr	r0, .L16+4
	mov	r1, r3
	bl	printf
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r0, [fp, #-16]
	blx	r3
	mov	r3, r0
	ldr	r0, .L16
	mov	r1, r3
	bl	printf
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	add	r3, r3, #4
	ldr	r3, [r3]
	ldr	r0, [fp, #-16]
	blx	r3
	mov	r3, r0
	ldr	r0, .L16+4
	mov	r1, r3
	bl	printf
	ldr	r0, [fp, #-16]
	bl	_ZdlPv
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	ldmfd	sp!, {r4, fp, pc}
.L17:
	.align	2
.L16:
	.word	.LC0
	.word	.LC1
	.fnend
	.size	main, .-main
	.weak	_ZTV9IO2Sensor
	.section	.rodata._ZTV9IO2Sensor,"aG",%progbits,_ZTV9IO2Sensor,comdat
	.align	3
	.type	_ZTV9IO2Sensor, %object
	.size	_ZTV9IO2Sensor, 16
_ZTV9IO2Sensor:
	.word	0
	.word	_ZTI9IO2Sensor
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.weak	_ZTS9IO2Sensor
	.section	.rodata._ZTS9IO2Sensor,"aG",%progbits,_ZTS9IO2Sensor,comdat
	.align	2
	.type	_ZTS9IO2Sensor, %object
	.size	_ZTS9IO2Sensor, 11
_ZTS9IO2Sensor:
	.ascii	"9IO2Sensor\000"
	.weak	_ZTI9IO2Sensor
	.section	.rodata._ZTI9IO2Sensor,"aG",%progbits,_ZTI9IO2Sensor,comdat
	.align	2
	.type	_ZTI9IO2Sensor, %object
	.size	_ZTI9IO2Sensor, 8
_ZTI9IO2Sensor:
	.word	_ZTVN10__cxxabiv117__class_type_infoE+8
	.word	_ZTS9IO2Sensor
	.ident	"GCC: (Raspbian 4.9.2-10+deb8u1) 4.9.2"
	.section	.note.GNU-stack,"",%progbits
