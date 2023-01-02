	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"play.c"
	.text
	.align	2
	.global	interruptHandler
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	interruptHandler, %function
interruptHandler:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	ldr	r3, .L21
	ldrh	r1, [r3, #2]
	tst	r1, #1
	push	{r4, lr}
	strh	r2, [r3, #8]	@ movhi
	beq	.L3
	ldr	r3, .L21+4
	ldr	r2, [r3, #12]
	cmp	r2, #0
	beq	.L5
	ldr	r2, [r3, #28]
	ldr	r1, [r3, #20]
	add	r2, r2, #1
	cmp	r2, r1
	str	r2, [r3, #28]
	ble	.L5
	ldr	r2, [r3, #16]
	cmp	r2, #0
	bne	.L18
	ldr	r1, .L21+8
	ldr	r0, .L21+12
	ldr	r1, [r1]
	strh	r2, [r0, #2]	@ movhi
	str	r2, [r3, #12]
	str	r2, [r1, #20]
.L5:
	ldr	r3, .L21+16
	ldr	r2, [r3, #12]
	cmp	r2, #0
	bne	.L19
.L3:
	ldr	r3, .L21
	ldrh	r3, [r3, #2]
	tst	r3, #32
	beq	.L11
	ldr	r2, .L21+20
	ldr	r3, [r2]
	add	r3, r3, #1
	cmp	r3, #4
	str	r3, [r2]
	ble	.L11
	ldr	r1, .L21+24
	ldr	r3, [r1]
	cmp	r3, #22
	ble	.L11
	mov	ip, #0
	add	r0, r3, #32
	ldr	lr, .L21+28
	lsl	r0, r0, #1
	sub	r3, r3, #1
	strh	ip, [lr, r0]	@ movhi
	str	r3, [r1]
	str	ip, [r2]
.L11:
	mov	r1, #1
	ldr	r3, .L21
	ldrh	r2, [r3, #2]
	strh	r1, [r3, #8]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	pop	{r4, lr}
	bx	lr
.L19:
	ldr	r2, [r3, #28]
	ldr	r1, [r3, #20]
	add	r2, r2, #1
	cmp	r2, r1
	str	r2, [r3, #28]
	ble	.L3
	ldr	r2, [r3, #16]
	cmp	r2, #0
	bne	.L20
	ldr	r1, .L21+8
	ldr	r0, .L21+12
	ldr	r1, [r1]
	strh	r2, [r0, #6]	@ movhi
	str	r2, [r3, #12]
	str	r2, [r1, #32]
	b	.L3
.L18:
	ldm	r3, {r0, r1}
	ldr	r3, .L21+32
	mov	lr, pc
	bx	r3
	b	.L5
.L20:
	ldm	r3, {r0, r1}
	ldr	r3, .L21+36
	mov	lr, pc
	bx	r3
	b	.L3
.L22:
	.align	2
.L21:
	.word	67109376
	.word	soundA
	.word	dma
	.word	67109120
	.word	soundB
	.word	second
	.word	i
	.word	100726784
	.word	playSoundA
	.word	playSoundB
	.size	interruptHandler, .-interruptHandler
	.align	2
	.global	init
	.syntax unified
	.arm
	.fpu softvfp
	.type	init, %function
init:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	lr, #28
	ldr	ip, .L25
	ldr	r0, .L25+4
	ldr	r2, .L25+8
	ldr	r4, [ip]
	ldr	ip, [r0]
	ldr	r0, [r2]
	ldr	r2, .L25+12
	ldr	r3, .L25+16
	ldr	r5, [r2]
	ldr	r2, .L25+20
	ldr	r1, [r3]
	ldr	r3, .L25+24
	ldr	r2, [r2]
	str	ip, [r3, #12]
	ldr	ip, .L25+28
	str	r4, [r3]
	str	r0, [r3, #16]
	str	r2, [r3, #28]
	ldr	r0, .L25+32
	ldr	r2, .L25+36
	ldr	r4, .L25+40
	ldr	ip, [ip]
	ldr	r4, [r4]
	str	r0, [r3, #20]
	str	r2, [r3, #32]
	ldr	r0, .L25+44
	ldr	r2, .L25+48
	str	ip, [r3, #40]
	ldr	ip, .L25+52
	str	r4, [r3, #36]
	str	r2, [r3, #44]
	str	r5, [r3, #24]
	str	r1, [r3, #4]
	str	r0, [r3, #8]
	mov	r2, #1
	ldr	r3, .L25+56
	str	lr, [ip]
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L26:
	.align	2
.L25:
	.word	intro_sampleRate
	.word	gameplay_sampleRate
	.word	gameplay_length
	.word	star_sampleRate
	.word	intro_length
	.word	star_length
	.word	songs
	.word	bell_length
	.word	gameplay_data
	.word	star_data
	.word	bell_sampleRate
	.word	intro_data
	.word	bell_data
	.word	i
	.word	playSoundA
	.size	init, .-init
	.align	2
	.global	playSong
	.syntax unified
	.arm
	.fpu softvfp
	.type	playSong, %function
playSong:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L29
	add	r0, r0, r0, lsl #1
	add	r0, r3, r0, lsl #2
	ldr	r1, [r0, #4]
	mov	r2, #1
	ldr	r0, [r0, #8]
	ldr	r3, .L29+4
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L30:
	.align	2
.L29:
	.word	songs
	.word	playSoundA
	.size	playSong, .-playSong
	.align	2
	.global	playAnotherSong
	.syntax unified
	.arm
	.fpu softvfp
	.type	playAnotherSong, %function
playAnotherSong:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L33
	push	{r4, lr}
	add	r0, r0, r0, lsl #1
	add	r0, r3, r0, lsl #2
	ldr	r1, [r0, #4]
	mov	r2, #0
	ldr	r0, [r0, #8]
	ldr	r3, .L33+4
	sub	r1, r1, #200
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L34:
	.align	2
.L33:
	.word	songs
	.word	playSoundB
	.size	playAnotherSong, .-playAnotherSong
	.align	2
	.global	setupInterrupts
	.syntax unified
	.arm
	.fpu softvfp
	.type	setupInterrupts, %function
setupInterrupts:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #1
	mov	lr, #8
	mov	ip, #67108864
	ldr	r3, .L37
	ldr	r1, .L37+4
	ldr	r0, .L37+8
	strh	r2, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	strh	lr, [ip, #4]	@ movhi
	str	r0, [r1, #4092]
	ldr	lr, [sp], #4
	bx	lr
.L38:
	.align	2
.L37:
	.word	67109376
	.word	50360320
	.word	interruptHandler
	.size	setupInterrupts, .-setupInterrupts
	.comm	i,4,4
	.comm	second,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.comm	songs,36,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
