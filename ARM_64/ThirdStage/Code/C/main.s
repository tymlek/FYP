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
	.global	MCP3008_Create
	.type	MCP3008_Create, %function
MCP3008_Create:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	mov	r0, #12
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.size	MCP3008_Create, .-MCP3008_Create
	.align	2
	.global	MCP3008_Delete
	.type	MCP3008_Delete, %function
MCP3008_Delete:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L3
	ldr	r0, [fp, #-8]
	bl	free
.L3:
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.size	MCP3008_Delete, .-MCP3008_Delete
	.align	2
	.global	MCP3008_Init
	.type	MCP3008_Init, %function
MCP3008_Init:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r2, #0
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	ldr	r2, .L7
	str	r2, [r3, #4]
	ldr	r3, [fp, #-8]
	ldr	r2, [r3]
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #4]
	mov	r0, r2
	mov	r1, r3
	bl	wiringPiSPISetup
	mov	r3, r0
	cmp	r3, #0
	bge	.L5
	mov	r0, #1
	bl	exit
.L5:
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L8:
	.align	2
.L7:
	.word	1000000
	.size	MCP3008_Init, .-MCP3008_Init
	.align	2
	.global	MCP3008_config
	.type	MCP3008_config, %function
MCP3008_config:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-12]
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-16]
	str	r2, [r3, #4]
	ldr	r0, [fp, #-12]
	ldr	r1, [fp, #-16]
	bl	wiringPiSPISetup
	mov	r3, r0
	cmp	r3, #0
	bge	.L9
	mov	r0, #1
	bl	exit
.L9:
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.size	MCP3008_config, .-MCP3008_config
	.align	2
	.global	MCP3008_analogRead
	.type	MCP3008_analogRead, %function
MCP3008_analogRead:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asl #4
	uxtb	r3, r3
	mvn	r3, r3, asl #25
	mvn	r3, r3, lsr #25
	uxtb	r3, r3
	strb	r3, [fp, #-5]
	ldr	r3, [fp, #-16]
	mov	r2, #1
	strb	r2, [r3, #8]
	ldr	r3, [fp, #-16]
	ldrb	r2, [fp, #-5]
	strb	r2, [r3, #9]
	ldr	r3, [fp, #-16]
	mov	r2, #0
	strb	r2, [r3, #10]
	ldr	r3, [fp, #-16]
	ldr	r2, [r3]
	ldr	r3, [fp, #-16]
	add	r3, r3, #8
	mov	r0, r2
	mov	r1, r3
	mov	r2, #3
	bl	wiringPiSPIDataRW
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #9]	@ zero_extendqisi2
	mov	r3, r3, asl #8
	ldr	r2, [fp, #-16]
	ldrb	r2, [r2, #10]	@ zero_extendqisi2
	orr	r3, r3, r2
	mov	r3, r3, asl #22
	mov	r3, r3, lsr #22
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
	.size	MCP3008_analogRead, .-MCP3008_analogRead
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Current temperature: %dC\012\000"
	.text
	.align	2
	.global	getReading
	.type	getReading, %function
getReading:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	fstd	d0, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-8]
	mov	r3, #0
	str	r3, [fp, #-12]
	ldr	r0, [fp, #-16]
	ldr	r1, [fp, #-20]
	bl	MCP3008_analogRead
	str	r0, [fp, #-12]
	ldr	r0, .L15+24
	bl	usleep
	ldr	r0, [fp, #-16]
	ldr	r1, [fp, #-20]
	bl	MCP3008_analogRead
	str	r0, [fp, #-12]
	ldr	r0, .L15+24
	bl	usleep
	ldr	r0, [fp, #-16]
	ldr	r1, [fp, #-20]
	bl	MCP3008_analogRead
	str	r0, [fp, #-12]
	fldd	d7, [fp, #-28]
	fldd	d6, .L15
	fmuld	d6, d7, d6
	ldr	r3, [fp, #-12]
	fmsr	s15, r3	@ int
	fsitod	d7, s15
	fmuld	d7, d6, d7
	fldd	d6, .L15+8
	fdivd	d7, d7, d6
	fcpyd	d0, d7
	bl	round
	fcpyd	d6, d0
	fldd	d7, .L15+16
	faddd	d7, d6, d7
	ftosizd	s15, d7
	fmrs	r3, s15	@ int
	str	r3, [fp, #-8]
	ldr	r0, .L15+28
	ldr	r1, [fp, #-8]
	bl	printf
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L16:
	.align	3
.L15:
	.word	0
	.word	1079574528
	.word	0
	.word	1083176960
	.word	0
	.word	1075314688
	.word	60000
	.word	.LC0
	.size	getReading, .-getReading
	.section	.rodata
	.align	2
.LC1:
	.ascii	"%d\000"
	.align	2
.LC2:
	.ascii	"insert into tempData (tDate,tTime,tLoc,temp) values"
	.ascii	" (date(current_date()),time(current_time()),'Bedroo"
	.ascii	"m',\000"
	.align	2
.LC3:
	.ascii	")\000"
	.align	2
.LC4:
	.ascii	"Error writing to database\012\000"
	.text
	.align	2
	.global	writeToDB
	.type	writeToDB, %function
writeToDB:
	@ args = 0, pretend = 0, frame = 432
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #432
	str	r0, [fp, #-432]
	str	r1, [fp, #-436]
	sub	r3, fp, #424
	mov	r0, r3
	ldr	r1, .L20
	ldr	r2, [fp, #-436]
	bl	sprintf
	sub	r3, fp, #404
	ldr	r2, .L20+4
	mov	r1, r3
	mov	r3, #106
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	memcpy
	sub	r2, fp, #404
	sub	r3, fp, #424
	mov	r0, r2
	mov	r1, r3
	bl	strcat
	sub	r3, fp, #404
	mov	r0, r3
	bl	strlen
	mov	r3, r0
	mov	r2, r3
	sub	r3, fp, #404
	add	r3, r3, r2
	ldr	r1, .L20+8
	mov	r2, r3
	mov	r3, r1
	ldrh	r3, [r3]	@ unaligned
	strh	r3, [r2]	@ unaligned
	sub	r3, fp, #404
	ldr	r0, [fp, #-432]
	mov	r1, r3
	bl	mysql_query
	mov	r3, r0
	cmp	r3, #0
	beq	.L17
	ldr	r3, .L20+12
	ldr	r3, [r3]
	ldr	r0, .L20+16
	mov	r1, #1
	mov	r2, #26
	bl	fwrite
	ldr	r0, [fp, #-432]
	bl	mysql_close
.L17:
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L21:
	.align	2
.L20:
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	stderr
	.word	.LC4
	.size	writeToDB, .-writeToDB
	.section	.rodata
	.align	2
.LC5:
	.ascii	"select * from tempData\000"
	.align	2
.LC6:
	.ascii	"%s\011%s\011%s\011%s\012\000"
	.text
	.align	2
	.global	readFromDB
	.type	readFromDB, %function
readFromDB:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-16]
	ldr	r0, [fp, #-16]
	ldr	r1, .L26
	bl	mysql_query
	mov	r3, r0
	cmp	r3, #0
	bne	.L22
	ldr	r0, [fp, #-16]
	bl	mysql_store_result
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L22
	b	.L24
.L25:
	ldr	r3, [fp, #-12]
	ldr	r1, [r3]
	ldr	r3, [fp, #-12]
	add	r3, r3, #4
	ldr	r2, [r3]
	ldr	r3, [fp, #-12]
	add	r3, r3, #8
	ldr	ip, [r3]
	ldr	r3, [fp, #-12]
	add	r3, r3, #12
	ldr	r3, [r3]
	str	r3, [sp]
	ldr	r0, .L26+4
	mov	r3, ip
	bl	printf
.L24:
	ldr	r0, [fp, #-8]
	bl	mysql_fetch_row
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	bne	.L25
	ldr	r0, [fp, #-8]
	bl	mysql_free_result
.L22:
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L27:
	.align	2
.L26:
	.word	.LC5
	.word	.LC6
	.size	readFromDB, .-readFromDB
	.section	.rodata
	.align	2
.LC7:
	.ascii	"Error creating connection to database\012\000"
	.align	2
.LC8:
	.ascii	"localhost\000"
	.align	2
.LC9:
	.ascii	"root\000"
	.align	2
.LC10:
	.ascii	"pass\000"
	.align	2
.LC11:
	.ascii	"test_db\000"
	.align	2
.LC12:
	.ascii	"Error connecting to database\012\000"
	.align	2
.LC13:
	.ascii	"Running...\000"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #64
	str	r0, [fp, #-48]
	str	r1, [fp, #-52]
	mov	r0, #0
	bl	mysql_init
	str	r0, [fp, #-28]
	bl	MCP3008_Create
	str	r0, [fp, #-32]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [fp, #-12]
	mov	r3, #0
	str	r3, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	beq	.L29
	ldr	r0, [fp, #-32]
	bl	MCP3008_Init
.L29:
	ldr	r3, [fp, #-48]
	cmp	r3, #1
	ble	.L30
	ldr	r3, [fp, #-52]
	add	r3, r3, #4
	ldr	r3, [r3]
	mov	r0, r3
	bl	atoi
	str	r0, [fp, #-20]
	b	.L31
.L30:
	mov	r3, #10
	str	r3, [fp, #-20]
.L31:
	ldr	r3, [fp, #-48]
	cmp	r3, #2
	ble	.L32
	ldr	r3, [fp, #-52]
	add	r3, r3, #8
	ldr	r3, [r3]
	mov	r0, r3
	bl	atoi
	str	r0, [fp, #-16]
	b	.L33
.L32:
	mov	r3, #5
	str	r3, [fp, #-16]
.L33:
	ldr	r3, [fp, #-48]
	cmp	r3, #3
	ble	.L34
	ldr	r3, [fp, #-52]
	add	r3, r3, #12
	ldr	r3, [r3]
	mov	r0, r3
	bl	atof
	fstd	d0, [fp, #-12]
	b	.L35
.L34:
	ldr	r2, .L41
	ldr	r3, .L41+4
	strd	r2, [fp, #-12]
.L35:
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	bne	.L36
	ldr	r3, .L41+8
	ldr	r3, [r3]
	ldr	r0, .L41+12
	mov	r1, #1
	mov	r2, #38
	bl	fwrite
	mov	r0, #1
	bl	exit
.L36:
	ldr	r3, .L41+16
	str	r3, [sp]
	mov	r3, #0
	str	r3, [sp, #4]
	mov	r3, #0
	str	r3, [sp, #8]
	mov	r3, #0
	str	r3, [sp, #12]
	ldr	r0, [fp, #-28]
	ldr	r1, .L41+20
	ldr	r2, .L41+24
	ldr	r3, .L41+28
	bl	mysql_real_connect
	mov	r3, r0
	cmp	r3, #0
	bne	.L37
	ldr	r3, .L41+8
	ldr	r3, [r3]
	ldr	r0, .L41+32
	mov	r1, #1
	mov	r2, #29
	bl	fwrite
	mov	r0, #1
	bl	exit
.L37:
	ldr	r0, .L41+36
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-40]
	ldr	r0, [fp, #-32]
	ldr	r1, [fp, #-36]
	fldd	d0, [fp, #-12]
	bl	getReading
	str	r0, [fp, #-40]
	ldr	r0, [fp, #-28]
	ldr	r1, [fp, #-40]
	bl	writeToDB
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L38
.L39:
	ldr	r3, [fp, #-20]
	mov	r0, r3
	bl	sleep
	ldr	r0, [fp, #-32]
	ldr	r1, [fp, #-36]
	fldd	d0, [fp, #-12]
	bl	getReading
	str	r0, [fp, #-40]
	ldr	r0, [fp, #-28]
	ldr	r1, [fp, #-40]
	bl	writeToDB
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L38:
	ldr	r3, [fp, #-16]
	sub	r2, r3, #1
	ldr	r3, [fp, #-24]
	cmp	r2, r3
	bgt	.L39
	ldr	r0, [fp, #-28]
	bl	readFromDB
	ldr	r0, [fp, #-28]
	bl	mysql_close
	ldr	r0, [fp, #-32]
	bl	MCP3008_Delete
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L42:
	.align	2
.L41:
	.word	-2061584302
	.word	1074418155
	.word	stderr
	.word	.LC7
	.word	.LC11
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	.LC12
	.word	.LC13
	.size	main, .-main
	.ident	"GCC: (Raspbian 4.9.2-10+deb8u1) 4.9.2"
	.section	.note.GNU-stack,"",%progbits
