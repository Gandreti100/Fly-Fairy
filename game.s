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
	.file	"game.c"
	.text
	.align	2
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateWingedFairy1.part.0, %function
updateWingedFairy1.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #4
	ldr	r1, .L6
	ldr	r3, .L6+4
	ldr	r2, [r1, #24]
	str	lr, [sp, #-4]!
	smull	lr, r0, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r0, asr #3
	add	r3, r3, r3, lsl #2
	subs	r3, r2, r3, lsl #2
	str	ip, [r1, #40]
	bne	.L2
	ldr	r0, [r1, #36]
	cmp	r0, #2
	addle	r0, r0, #1
	strle	r0, [r1, #36]
	strgt	r3, [r1, #36]
.L2:
	add	r2, r2, #1
	str	r2, [r1, #24]
	ldr	lr, [sp], #4
	bx	lr
.L7:
	.align	2
.L6:
	.word	fairy
	.word	1717986919
	.size	updateWingedFairy1.part.0, .-updateWingedFairy1.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFairy1.part.0, %function
drawFairy1.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L9
	ldr	r2, .L9+4
	ldr	r3, [r0]
	ldr	r2, [r2]
	sub	r3, r3, r2
	and	r3, r3, #255
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r1, .L9+8
	ldr	r2, [r0, #4]
	ldr	ip, [r1]
	ldr	r1, [r0, #28]
	sub	r2, r2, ip
	ldr	ip, [r0, #36]
	lsl	r2, r2, #23
	ldr	r0, .L9+12
	add	r1, r1, #18
	lsr	r2, r2, #23
	add	r1, r1, ip, lsl #6
	strh	r3, [r0]	@ movhi
	strh	r2, [r0, #2]	@ movhi
	strh	r1, [r0, #4]	@ movhi
	bx	lr
.L10:
	.align	2
.L9:
	.word	fairy
	.word	vOff
	.word	hOff
	.word	shadowOAM
	.size	drawFairy1.part.0, .-drawFairy1.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawWings1.part.0, %function
drawWings1.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L12
	ldr	r1, .L12+4
	ldr	r3, [r2, #4]
	ldr	r1, [r1]
	sub	r3, r3, r1
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	ldr	r1, .L12+8
	ldr	r2, [r2]
	ldr	r1, [r1]
	sub	r2, r2, r1
	ldr	r0, .L12+12
	ldr	r1, .L12+16
	and	r2, r2, #255
	orr	r2, r2, #16384
	strh	r3, [r1, #10]	@ movhi
	strh	r2, [r1, #8]	@ movhi
	strh	r0, [r1, #12]	@ movhi
	bx	lr
.L13:
	.align	2
.L12:
	.word	wings
	.word	hOff
	.word	vOff
	.word	559
	.word	shadowOAM
	.size	drawWings1.part.0, .-drawWings1.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePortal2.part.0, %function
updatePortal2.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L24
	push	{r4, r5, r6, lr}
	ldr	r3, [r2, #232]
	ldr	r5, .L24+4
	ldr	r2, [r2, #244]
	ldr	r0, [r5, #4]
	add	r3, r3, r2
	add	r3, r3, #50
	cmp	r0, r3
	sub	sp, sp, #16
	bgt	.L23
.L14:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L23:
	mov	lr, #0
	ldr	r4, .L24+8
	ldr	ip, [r4, #4]
	ldr	r3, [r4, #12]
	ldr	r1, [r4, #20]
	sub	ip, ip, r3
	ldr	r2, [r4, #16]
	ldr	r3, [r4]
	str	r1, [sp, #12]
	str	r2, [sp, #8]
	str	ip, [sp]
	str	r3, [sp, #4]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r5]
	ldr	r6, .L24+12
	str	lr, [r4, #56]
	str	ip, [r4, #4]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L17
	ldr	r3, [r4, #56]
	cmp	r3, #0
	moveq	r3, #1
	streq	r3, [r5, #68]
	streq	r3, [r4, #56]
.L17:
	ldm	r4, {r2, r3}
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r5]
	ldr	r0, [r5, #4]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	bne	.L14
	ldr	r3, [r4, #4]
	ldr	r1, [r4, #16]
	ldr	r2, [r5, #4]
	sub	r3, r3, r1
	cmp	r2, r3
	strge	r0, [r4, #12]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L25:
	.align	2
.L24:
	.word	dragons
	.word	fairy
	.word	portal
	.word	collision
	.size	updatePortal2.part.0, .-updatePortal2.part.0
	.align	2
	.global	initGame1
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame1, %function
initGame1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r8, #50
	mov	r7, #10
	mov	r4, #122
	mov	r5, #126
	ldr	r3, .L43
	mov	lr, pc
	bx	r3
	mov	r6, #8
	mov	r2, #0
	mov	r0, #16
	mov	r1, #1
	mov	lr, #2
	mov	ip, #20
	ldr	r3, .L43+4
	str	r8, [r3]
	ldr	r3, .L43+8
	str	r7, [r3]
	ldr	r3, .L43+12
	str	r4, [r3, #4]
	ldr	r4, .L43+16
	str	r5, [r3]
	ldr	r5, .L43+20
	str	r6, [r3, #16]
	str	lr, [r3, #40]
	str	r0, [r3, #20]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	str	r2, [r3, #28]
	str	r2, [r3, #72]
	str	r2, [r3, #44]
	str	r2, [r3, #68]
	str	r0, [r4, #20]
	str	ip, [r4, #16]
	mov	lr, pc
	bx	r5
	rsbs	r3, r0, #0
	and	r3, r3, #7
	and	r0, r0, #7
	rsbpl	r0, r3, #0
	add	r0, r0, #1
	ldr	r3, .L43+24
	cmp	r0, #1
	str	r0, [r3]
	beq	.L36
	cmp	r0, #2
	beq	.L37
	cmp	r0, #3
	beq	.L38
	cmp	r0, #4
	beq	.L39
	cmp	r0, #5
	beq	.L40
	cmp	r0, #6
	beq	.L41
	cmp	r0, #7
	beq	.L42
	cmp	r0, #8
	moveq	r2, #216
	moveq	r3, #232
	stmeq	r4, {r2, r3}
	b	.L28
.L37:
	mov	r2, #48
	mov	r3, #160
	stm	r4, {r2, r3}
.L28:
	mov	lr, pc
	bx	r5
	mov	ip, #1
	mov	r5, #240
	mov	r4, #16
	mov	lr, #32
	mov	r1, #0
	ldr	r2, .L43+28
	smull	r3, r2, r0, r2
	asr	r3, r0, #31
	add	r2, r2, r0
	rsb	r3, r3, r2, asr #4
	rsb	r3, r3, r3, lsl #4
	sub	r0, r0, r3, lsl ip
	ldr	r3, .L43+32
	add	r0, r0, #140
	stm	r3, {r0, r5}
	str	r4, [r3, #16]
	str	lr, [r3, #20]
	str	ip, [r3, #56]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L36:
	mov	r2, #48
	mov	r3, #72
	stm	r4, {r2, r3}
	b	.L28
.L39:
	mov	r2, #128
	mov	r3, #104
	stm	r4, {r2, r3}
	b	.L28
.L38:
	mov	r2, #48
	mov	r3, #232
	stm	r4, {r2, r3}
	b	.L28
.L40:
	mov	r2, #128
	mov	r3, #208
	stm	r4, {r2, r3}
	b	.L28
.L41:
	mov	r2, #216
	mov	r3, #72
	stm	r4, {r2, r3}
	b	.L28
.L42:
	mov	r2, #216
	mov	r3, #160
	stm	r4, {r2, r3}
	b	.L28
.L44:
	.align	2
.L43:
	.word	hideSprites
	.word	vOff
	.word	hOff
	.word	fairy
	.word	wings
	.word	rand
	.word	house
	.word	-2004318071
	.word	portal
	.size	initGame1, .-initGame1
	.global	__aeabi_idivmod
	.align	2
	.global	updateFairy1
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateFairy1, %function
updateFairy1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r4, .L84
	ldr	r3, [r4, #72]
	cmp	r3, #1
	moveq	r3, #24
	moveq	r2, #20
	streq	r3, [r4, #20]
	ldr	r3, .L84+4
	ldrh	r3, [r3, #48]
	streq	r2, [r4, #16]
	tst	r3, #64
	ldr	r7, [r4]
	ldr	r6, [r4, #4]
	sub	sp, sp, #20
	bne	.L47
	cmp	r7, #0
	bgt	.L79
.L47:
	ldr	r3, .L84+4
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L50
	ldr	r3, [r4, #20]
	add	r3, r7, r3
	cmp	r3, #255
	ble	.L80
.L50:
	ldr	r3, .L84+4
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L53
	cmp	r6, #0
	bgt	.L81
.L53:
	ldr	r3, .L84+4
	ldrh	r3, [r3, #48]
	tst	r3, #16
	ldr	r8, [r4, #16]
	bne	.L56
	add	r2, r6, r8
	cmp	r2, #255
	ble	.L82
.L56:
	mov	r2, #4
	ldr	r5, [r4, #24]
	ldr	r1, .L84+8
	smull	r0, r3, r1, r5
	asr	r1, r5, #31
	rsb	r1, r1, r3, asr #3
	ldr	r9, [r4, #28]
	add	r1, r1, r1, lsl #2
	cmp	r5, r1, lsl #2
	str	r2, [r4, #28]
	str	r9, [r4, #32]
	bne	.L59
	ldr	r0, [r4, #36]
	ldr	r3, .L84+12
	ldr	r1, [r4, #40]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #36]
.L59:
	ldr	r3, .L84+4
	ldrh	r3, [r3, #48]
	tst	r3, #64
	moveq	r3, #1
	streq	r3, [r4, #28]
	ldr	r3, .L84+4
	ldrh	r3, [r3, #48]
	ands	r3, r3, #128
	streq	r3, [r4, #28]
	ldr	r3, .L84+4
	ldrh	r2, [r3, #48]
	tst	r2, #32
	bne	.L62
	mov	r2, #3
	ldrh	r3, [r3, #48]
	tst	r3, #16
	str	r2, [r4, #28]
	bne	.L64
.L65:
	mov	r3, #2
	str	r3, [r4, #28]
.L64:
	add	r5, r5, #1
	str	r5, [r4, #24]
.L66:
	stm	sp, {r6, r7, r8}
	ldr	r5, .L84+16
	ldr	ip, [r4, #20]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r5]
	ldr	r0, [r5, #4]
	ldr	r6, .L84+20
	str	ip, [sp, #12]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L45
	ldr	r3, [r5, #56]
	cmp	r3, #1
	beq	.L83
.L45:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L81:
	ldr	r2, [r4, #12]
	ldr	r8, .L84+24
	mov	r3, r7
	mov	r1, #256
	ldr	r0, [r8]
	ldr	r5, .L84+28
	sub	r2, r6, r2
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L54
.L77:
	ldr	r6, [r4, #4]
	ldr	r7, [r4]
	b	.L53
.L79:
	ldr	r3, [r4, #8]
	ldr	r8, .L84+24
	mov	r2, r6
	mov	r1, #256
	ldr	r0, [r8]
	ldr	r5, .L84+28
	sub	r3, r7, r3
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L48
.L75:
	ldr	r7, [r4]
	ldr	r6, [r4, #4]
	b	.L47
.L62:
	ldrh	r3, [r3, #48]
	tst	r3, #16
	beq	.L65
	ldr	r3, [r4, #28]
	cmp	r3, #4
	bne	.L64
	mov	r3, #0
	str	r9, [r4, #28]
	str	r3, [r4, #36]
	str	r3, [r4, #24]
	b	.L66
.L83:
	mov	r2, #0
	ldr	r0, .L84+32
	ldr	r1, .L84+36
	str	r3, [r4, #72]
	str	r2, [r5, #56]
	str	r2, [r0, #56]
	str	r2, [r1]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L80:
	ldr	r7, .L84+24
	mov	r2, r6
	mov	r1, #256
	ldr	r0, [r7]
	ldr	r5, .L84+28
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L51
.L76:
	ldr	r7, [r4]
	ldr	r6, [r4, #4]
	b	.L50
.L82:
	ldr	r6, .L84+24
	mov	r3, r7
	mov	r1, #256
	ldr	r0, [r6]
	ldr	r5, .L84+28
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	bne	.L57
.L78:
	ldr	r6, [r4, #4]
	ldr	r7, [r4]
	ldr	r8, [r4, #16]
	b	.L56
.L54:
	ldr	r1, [r4]
	ldr	r3, [r4, #20]
	ldmib	r4, {ip, lr}
	ldr	r2, [r4, #12]
	add	r3, r1, r3
	ldr	r0, [r8]
	mov	r1, #256
	sub	r3, r3, lr
	sub	r2, ip, r2
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L77
	ldr	r2, .L84+40
	ldr	r6, [r4, #4]
	ldr	r3, [r2]
	ldr	r1, [r4, #12]
	cmp	r3, #0
	sub	r6, r6, r1
	str	r6, [r4, #4]
	ldr	r7, [r4]
	ble	.L53
	sub	r1, r6, r3
	cmp	r1, #120
	suble	r3, r3, #1
	strle	r3, [r2]
	b	.L53
.L48:
	ldr	r1, [r4, #4]
	ldr	r2, [r4, #16]
	ldr	lr, [r4, #12]
	ldr	ip, [r4]
	ldr	r3, [r4, #8]
	add	r2, r1, r2
	ldr	r0, [r8]
	mov	r1, #256
	sub	r2, r2, lr
	sub	r3, ip, r3
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L75
	ldr	r2, .L84+44
	ldr	r7, [r4]
	ldr	r3, [r2]
	ldr	r1, [r4, #8]
	cmp	r3, #0
	sub	r7, r7, r1
	str	r7, [r4]
	ldr	r6, [r4, #4]
	ble	.L47
	sub	r1, r7, r3
	cmp	r1, #80
	suble	r3, r3, #1
	strle	r3, [r2]
	b	.L47
.L51:
	ldr	r3, [r4, #16]
	ldr	r2, [r4, #4]
	ldr	r1, [r4]
	ldr	ip, [r4, #12]
	add	r2, r2, r3
	ldr	r3, [r4, #20]
	ldr	r0, [r7]
	add	r3, r1, r3
	sub	r2, r2, ip
	mov	r1, #256
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L76
	ldr	r2, .L84+44
	ldr	r7, [r4]
	ldr	r3, [r2]
	ldr	r1, [r4, #8]
	cmp	r3, #95
	add	r7, r7, r1
	str	r7, [r4]
	ldr	r6, [r4, #4]
	bgt	.L50
	sub	r1, r7, r3
	cmp	r1, #79
	addgt	r3, r3, #1
	strgt	r3, [r2]
	b	.L50
.L57:
	ldr	r2, [r4, #20]
	ldr	r3, [r4]
	ldmib	r4, {r1, ip}
	add	r3, r3, r2
	ldr	r2, [r4, #16]
	ldr	r0, [r6]
	add	r2, r1, r2
	sub	r3, r3, ip
	mov	r1, #256
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L78
	ldr	r2, .L84+40
	ldr	r6, [r4, #4]
	ldr	r3, [r2]
	ldr	r1, [r4, #12]
	cmp	r3, #15
	add	r6, r6, r1
	str	r6, [r4, #4]
	ldr	r7, [r4]
	ldr	r8, [r4, #16]
	bgt	.L56
	sub	r1, r6, r3
	cmp	r1, #79
	addgt	r3, r3, #1
	strgt	r3, [r2]
	b	.L56
.L85:
	.align	2
.L84:
	.word	fairy
	.word	67109120
	.word	1717986919
	.word	__aeabi_idivmod
	.word	wings
	.word	collision
	.word	.LANCHOR0
	.word	collisionCheck
	.word	portal
	.word	cheat
	.word	hOff
	.word	vOff
	.size	updateFairy1, .-updateFairy1
	.align	2
	.global	updateWingedFairy1
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateWingedFairy1, %function
updateWingedFairy1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L88
	ldr	r3, [r3, #72]
	cmp	r3, #1
	bxne	lr
	b	updateWingedFairy1.part.0
.L89:
	.align	2
.L88:
	.word	fairy
	.size	updateWingedFairy1, .-updateWingedFairy1
	.align	2
	.global	updateHouse
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateHouse, %function
updateHouse:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L144
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L135
.L91:
	ldr	r3, .L144+4
	ldrh	r3, [r3]
	tst	r3, #1
	bxeq	lr
	ldr	r3, .L144+8
	ldrh	r3, [r3]
	tst	r3, #1
	bxne	lr
	ldr	r3, .L144+12
	ldr	r2, [r3]
	cmp	r2, #64
	push	{r4, lr}
	beq	.L136
	cmp	r2, #144
	beq	.L137
	cmp	r2, #232
	beq	.L138
.L90:
	pop	{r4, lr}
	bx	lr
.L135:
	ldr	r3, .L144+12
	ldr	r3, [r3, #72]
	cmp	r3, #0
	bne	.L91
	mov	r2, #1
	ldr	r3, .L144+16
	str	r2, [r3, #56]
	bx	lr
.L136:
	ldr	r2, [r3, #4]
	sub	r2, r2, #24
	cmp	r2, #39
	bls	.L139
.L96:
	ldr	r2, [r3, #4]
	sub	r2, r2, #112
	cmp	r2, #39
	bls	.L140
.L98:
	ldr	r2, [r3, #4]
	sub	r2, r2, #192
	cmp	r2, #39
	bhi	.L90
	ldr	r2, [r3, #28]
	cmp	r2, #1
	bne	.L90
	ldr	r3, [r3, #72]
	cmp	r3, #0
	bne	.L90
	ldr	r3, .L144+20
	mov	r0, #3
	mov	lr, pc
	bx	r3
	ldr	r3, .L144+24
	ldr	r3, [r3]
	cmp	r3, #3
	bne	.L90
.L97:
	mov	r2, #1
	ldr	r3, .L144+16
	str	r2, [r3, #56]
	b	.L90
.L137:
	ldr	r2, [r3, #4]
	sub	r2, r2, #56
	cmp	r2, #39
	bls	.L141
.L99:
	ldr	r2, [r3, #4]
	sub	r2, r2, #160
	cmp	r2, #39
	bhi	.L90
	ldr	r2, [r3, #28]
	cmp	r2, #1
	bne	.L90
	ldr	r3, [r3, #72]
	cmp	r3, #0
	bne	.L90
	ldr	r3, .L144+20
	mov	r0, #3
	mov	lr, pc
	bx	r3
	ldr	r3, .L144+24
	ldr	r3, [r3]
	cmp	r3, #5
	bne	.L90
	b	.L97
.L138:
	ldr	r2, [r3, #4]
	sub	r2, r2, #24
	cmp	r2, #39
	bls	.L142
.L100:
	ldr	r2, [r3, #4]
	sub	r2, r2, #112
	cmp	r2, #39
	bls	.L143
.L101:
	ldr	r2, [r3, #4]
	sub	r2, r2, #192
	cmp	r2, #39
	bhi	.L90
	ldr	r2, [r3, #28]
	cmp	r2, #1
	bne	.L90
	ldr	r3, [r3, #72]
	cmp	r3, #0
	bne	.L90
	ldr	r3, .L144+20
	mov	r0, #3
	mov	lr, pc
	bx	r3
	ldr	r3, .L144+24
	ldr	r3, [r3]
	cmp	r3, #8
	bne	.L90
	b	.L97
.L139:
	ldr	r2, [r3, #28]
	cmp	r2, #1
	bne	.L96
	ldr	r2, [r3, #72]
	cmp	r2, #0
	bne	.L96
	ldr	r3, .L144+20
	mov	r0, #3
	mov	lr, pc
	bx	r3
	ldr	r3, .L144+24
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L90
	b	.L97
.L140:
	ldr	r2, [r3, #28]
	cmp	r2, #1
	bne	.L98
	ldr	r2, [r3, #72]
	cmp	r2, #0
	bne	.L98
	ldr	r3, .L144+20
	mov	r0, #3
	mov	lr, pc
	bx	r3
	ldr	r3, .L144+24
	ldr	r3, [r3]
	cmp	r3, #2
	bne	.L90
	b	.L97
.L141:
	ldr	r2, [r3, #28]
	cmp	r2, #1
	bne	.L99
	ldr	r2, [r3, #72]
	cmp	r2, #0
	bne	.L99
	ldr	r3, .L144+20
	mov	r0, #3
	mov	lr, pc
	bx	r3
	ldr	r3, .L144+24
	ldr	r3, [r3]
	cmp	r3, #4
	bne	.L90
	b	.L97
.L143:
	ldr	r2, [r3, #28]
	cmp	r2, #1
	bne	.L101
	ldr	r2, [r3, #72]
	cmp	r2, #0
	bne	.L101
	ldr	r3, .L144+20
	mov	r0, #3
	mov	lr, pc
	bx	r3
	ldr	r3, .L144+24
	ldr	r3, [r3]
	cmp	r3, #7
	bne	.L90
	b	.L97
.L142:
	ldr	r2, [r3, #28]
	cmp	r2, #1
	bne	.L100
	ldr	r2, [r3, #72]
	cmp	r2, #0
	bne	.L100
	ldr	r3, .L144+20
	mov	r0, #3
	mov	lr, pc
	bx	r3
	ldr	r3, .L144+24
	ldr	r3, [r3]
	cmp	r3, #6
	bne	.L90
	b	.L97
.L145:
	.align	2
.L144:
	.word	cheat
	.word	oldButtons
	.word	buttons
	.word	fairy
	.word	wings
	.word	playAnotherSong
	.word	house
	.size	updateHouse, .-updateHouse
	.align	2
	.global	updatePortal1
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePortal1, %function
updatePortal1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L152
	ldm	r4, {r2, r3}
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #16]
	sub	sp, sp, #16
	ldr	r5, .L152+4
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r5]
	ldr	r0, [r5, #4]
	ldr	r6, .L152+8
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L146
	ldr	r3, [r4, #56]
	cmp	r3, #0
	moveq	r3, #1
	streq	r3, [r4, #56]
	streq	r3, [r5, #68]
.L146:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L153:
	.align	2
.L152:
	.word	portal
	.word	fairy
	.word	collision
	.size	updatePortal1, .-updatePortal1
	.align	2
	.global	updateGame1
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame1, %function
updateGame1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	updateFairy1
	ldr	r3, .L157
	ldr	r3, [r3, #72]
	cmp	r3, #1
	bleq	updateWingedFairy1.part.0
.L155:
	bl	updateHouse
	pop	{r4, lr}
	b	updatePortal1
.L158:
	.align	2
.L157:
	.word	fairy
	.size	updateGame1, .-updateGame1
	.align	2
	.global	drawFairy1
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFairy1, %function
drawFairy1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L163
	ldr	r3, [r3, #56]
	cmp	r3, #0
	beq	.L160
	ldr	r2, .L163+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L160:
	b	drawFairy1.part.0
.L164:
	.align	2
.L163:
	.word	fairy
	.word	shadowOAM
	.size	drawFairy1, .-drawFairy1
	.align	2
	.global	drawWingedFairy1
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawWingedFairy1, %function
drawWingedFairy1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L168
	ldr	r3, [r2, #72]
	cmp	r3, #1
	bxne	lr
	ldr	r1, .L168+4
	ldr	r3, [r2, #4]
	ldr	ip, [r1]
	ldr	r1, .L168+8
	ldr	r0, .L168+12
	sub	r3, r3, ip
	ldr	ip, [r1]
	ldr	r1, [r2]
	ldr	r2, [r2, #36]
	ldrh	r0, [r0, #48]
	lsl	r3, r3, #23
	lsl	r2, r2, #23
	tst	r0, #32
	lsr	r2, r2, #16
	ldr	r0, .L168+16
	lsr	r3, r3, #23
	sub	r1, r1, ip
	orr	r3, r3, #32768
	and	r1, r1, #255
	addeq	r2, r2, #22
	addne	r2, r2, #8
	strh	r2, [r0, #4]	@ movhi
	strh	r1, [r0]	@ movhi
	strh	r3, [r0, #2]	@ movhi
	bx	lr
.L169:
	.align	2
.L168:
	.word	fairy
	.word	hOff
	.word	vOff
	.word	67109120
	.word	shadowOAM
	.size	drawWingedFairy1, .-drawWingedFairy1
	.align	2
	.global	drawWings1
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawWings1, %function
drawWings1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L174
	ldr	r3, [r3, #56]
	cmp	r3, #0
	bne	.L171
	ldr	r2, .L174+4
	ldrh	r3, [r2, #8]
	orr	r3, r3, #512
	strh	r3, [r2, #8]	@ movhi
	bx	lr
.L171:
	b	drawWings1.part.0
.L175:
	.align	2
.L174:
	.word	wings
	.word	shadowOAM
	.size	drawWings1, .-drawWings1
	.align	2
	.global	drawPortal1
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPortal1, %function
drawPortal1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L188
	ldr	r3, [r3, #72]
	cmp	r3, #1
	beq	.L187
	ldr	r1, .L188+4
	ldr	r3, [r1, #56]
	cmp	r3, #1
	moveq	r2, #512
	ldreq	r3, .L188+8
	strheq	r2, [r3, #16]	@ movhi
	bx	lr
.L187:
	ldr	r1, .L188+4
	ldr	r2, .L188+12
	ldr	r0, .L188+16
	ldr	r2, [r2]
	ldr	r3, [r1, #4]
	ldr	r0, [r0]
	sub	r3, r3, r2
	ldr	r2, [r1]
	ldr	ip, .L188+20
	lsl	r3, r3, #23
	sub	r2, r2, r0
	lsr	r3, r3, #23
	ldr	r0, .L188+8
	orr	r3, r3, ip
	str	lr, [sp, #-4]!
	strh	r3, [r0, #18]	@ movhi
	ldr	r3, [r1, #56]
	and	r2, r2, #255
	orr	r2, r2, ip
	cmp	r3, #1
	mov	lr, #552
	strh	r2, [r0, #16]	@ movhi
	moveq	r2, #512
	ldreq	r3, .L188+8
	strh	lr, [r0, #20]	@ movhi
	strheq	r2, [r3, #16]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L189:
	.align	2
.L188:
	.word	fairy
	.word	portal
	.word	shadowOAM
	.word	hOff
	.word	vOff
	.word	-32768
	.size	drawPortal1, .-drawPortal1
	.align	2
	.global	drawGame1
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame1, %function
drawGame1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L196
	ldr	r3, [r3, #56]
	cmp	r3, #0
	push	{r4, lr}
	beq	.L191
	ldr	r2, .L196+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
.L192:
	bl	drawWingedFairy1
	ldr	r3, .L196+8
	ldr	r3, [r3, #56]
	cmp	r3, #0
	bne	.L193
	ldr	r2, .L196+4
	ldrh	r3, [r2, #8]
	orr	r3, r3, #512
	strh	r3, [r2, #8]	@ movhi
.L194:
	bl	drawPortal1
	ldr	r4, .L196+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L196+4
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L191:
	bl	drawFairy1.part.0
	b	.L192
.L193:
	bl	drawWings1.part.0
	b	.L194
.L197:
	.align	2
.L196:
	.word	fairy
	.word	shadowOAM
	.word	wings
	.word	DMANow
	.size	drawGame1, .-drawGame1
	.align	2
	.global	initGame2
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame2, %function
initGame2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, #0
	mov	r6, #16
	mov	r9, #1
	ldr	r3, .L202
	mov	lr, pc
	bx	r3
	mov	r2, #4
	mov	ip, #120
	mov	r1, #24
	mov	r0, #20
	ldr	r7, .L202+4
	ldr	r3, .L202+8
	ldr	r5, .L202+12
	str	r4, [r7, #8]
	str	r4, [r7, #56]
	str	r6, [r7, #16]
	str	r6, [r7, #20]
	str	r9, [r7, #12]
	str	r4, [r3]
	str	r4, [r3, #12]
	str	r4, [r3, #36]
	str	r4, [r3, #44]
	str	r4, [r3, #48]
	str	r4, [r3, #52]
	str	r4, [r3, #60]
	str	r4, [r3, #72]
	str	r4, [r3, #68]
	str	ip, [r3, #4]
	str	r1, [r3, #20]
	str	r0, [r3, #16]
	str	r2, [r3, #8]
	str	r2, [r3, #40]
	mov	lr, pc
	bx	r5
	ldr	r8, .L202+16
	smull	r3, r2, r8, r0
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #5
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3, lsl #2
	add	r0, r0, #10
	str	r6, [r7, #92]
	str	r6, [r7, #96]
	str	r4, [r7, #84]
	str	r9, [r7, #88]
	str	r4, [r7, #132]
	str	r0, [r7]
	mov	lr, pc
	bx	r5
	ldr	r6, .L202+20
	mov	r2, #200
	mov	r10, #64
	mov	r4, r6
	mov	r9, #40
	smull	r3, r8, r0, r8
	asr	r3, r0, #31
	rsb	r3, r3, r8, asr #5
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3, lsl #2
	ldr	r3, .L202+24
	add	r0, r0, #10
	str	r0, [r7, #76]
	str	r2, [r7, #4]
	str	r3, [r7, #80]
	ldr	r8, .L202+28
.L199:
	mov	fp, #0
	mov	r7, #1
	str	r10, [r4, #16]
	str	r9, [r4, #20]
	str	fp, [r4, #8]
	str	fp, [r4, #56]
	str	r7, [r4, #12]
	mov	lr, pc
	bx	r5
	mov	r1, #3
	smull	r3, ip, r8, r0
	asr	r3, r0, #31
	add	ip, ip, r0
	rsb	r3, r3, ip, asr #6
	add	r3, r3, r3, lsl r7
	rsb	r3, r3, r3, lsl #4
	sub	r3, r0, r3, lsl r7
	str	r3, [r4]
	ldr	r3, .L202+32
	str	fp, [r4, #36]
	str	fp, [r4, #64]
	str	r1, [r4, #40]
	add	r4, r4, #76
	cmp	r3, r4
	bne	.L199
	mov	r3, #250
	mov	r4, #16
	mov	r1, #400
	mov	r0, #2
	mov	ip, #200
	str	r3, [r6, #80]
	ldr	r3, .L202+36
	str	r1, [r6, #156]
	str	r7, [r3, #56]
	str	r4, [r3, #16]
	str	r4, [r3, #20]
	str	fp, [r3, #8]
	str	fp, [r3, #4]
	str	fp, [r3]
	add	r1, r1, #50
	str	r0, [r3, #12]
	ldr	r3, .L202+40
	str	ip, [r6, #4]
	str	r1, [r6, #232]
	str	fp, [r3, #56]
	mov	lr, pc
	bx	r5
	mov	lr, #240
	mov	ip, #32
	ldr	r3, .L202+16
	smull	r2, r1, r3, r0
	asr	r3, r0, #31
	rsb	r3, r3, r1, asr #5
	add	r3, r3, r3, lsl #2
	ldr	r1, .L202+44
	add	r3, r3, r3, lsl #2
	str	r4, [r1, #16]
	ldr	r2, .L202+48
	ldr	r4, .L202+52
	sub	r0, r0, r3, lsl #2
	ldr	r3, .L202+56
	add	r0, r0, #30
	str	fp, [r3]
	str	fp, [r1, #8]
	str	r7, [r1, #12]
	str	r7, [r1, #56]
	str	lr, [r1, #4]
	str	fp, [r4]
	str	fp, [r2]
	str	r0, [r1]
	str	ip, [r1, #20]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	and	r0, r0, r7
	ldr	r3, .L202+60
	rsblt	r0, r0, #0
	add	r0, r0, #2
	str	r0, [r3]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L203:
	.align	2
.L202:
	.word	hideSprites
	.word	stars
	.word	fairy
	.word	rand
	.word	1374389535
	.word	dragons
	.word	370
	.word	-1240768329
	.word	dragons+304
	.word	fire
	.word	wings
	.word	portal
	.word	ftimer
	.word	timer
	.word	round
	.word	awake
	.size	initGame2, .-initGame2
	.align	2
	.global	updateFairy2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateFairy2, %function
updateFairy2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L214
	ldr	r3, .L214+4
	ldr	r2, [r4, #24]
	smull	r0, r1, r3, r2
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #3
	add	r3, r3, r3, lsl #2
	subs	r3, r2, r3, lsl #2
	sub	sp, sp, #16
	bne	.L205
	add	r0, r4, #36
	ldm	r0, {r0, r1}
	sub	r1, r1, #1
	cmp	r0, r1
	addlt	r0, r0, #1
	strlt	r0, [r4, #36]
	strge	r3, [r4, #36]
.L205:
	ldr	r3, .L214+8
	ldrh	r1, [r3, #48]
	tst	r1, #64
	ldr	r1, [r4]
	bne	.L207
	cmp	r1, #0
	ldrgt	r3, [r4, #8]
	subgt	r1, r1, r3
	strgt	r1, [r4]
.L208:
	ldr	r5, .L214+12
	ldr	r0, [r5]
	ldr	r3, [r5, #4]
	ldr	lr, [r5, #16]
	ldr	r6, [r5, #20]
	stmib	sp, {r0, lr}
	asr	r3, r3, #3
	str	r6, [sp, #12]
	str	r3, [sp]
	add	ip, r2, #1
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r0, [r4, #4]
	ldr	r6, .L214+16
	str	ip, [r4, #24]
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L204
	ldr	r3, .L214+20
	ldr	r2, [r5, #56]
	ldr	r3, [r3]
	orrs	r3, r2, r3
	moveq	r3, #1
	streq	r3, [r4, #44]
.L204:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	lr
.L207:
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L208
	cmp	r1, #127
	ldrle	r3, [r4, #8]
	addle	r1, r1, r3
	strle	r1, [r4]
	b	.L208
.L215:
	.align	2
.L214:
	.word	fairy
	.word	1717986919
	.word	67109120
	.word	fire
	.word	collision
	.word	cheat
	.size	updateFairy2, .-updateFairy2
	.align	2
	.global	updateDragons2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateDragons2, %function
updateDragons2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r9, .L247
	mov	r10, r9
	mov	r4, r9
	ldr	r3, .L247+4
	ldr	r5, .L247+8
	ldr	fp, .L247+12
	sub	sp, sp, #20
	add	r8, r3, #152
.L234:
	add	r1, r4, #12
	ldm	r1, {r1, r2}
	ldr	r3, [r4, #4]
	sub	r3, r3, r1
	add	r1, r3, r2
	cmp	r1, #0
	movle	r1, #1
	ldr	r0, [r4, #20]
	strle	r1, [r4, #56]
	ldr	r1, [r4]
	str	r3, [r4, #4]
	str	r2, [sp, #8]
	str	r0, [sp, #12]
	str	r1, [sp, #4]
	str	r3, [sp]
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r5]
	ldr	r0, [r5, #4]
	mov	lr, pc
	bx	fp
	cmp	r0, #0
	beq	.L218
	ldr	r3, [r4, #56]
	cmp	r3, #0
	moveq	r3, #1
	streq	r3, [r5, #44]
.L218:
	ldr	r3, .L247+16
	ldr	r3, [r3]
	add	lr, r3, r3, lsl #3
	add	lr, r3, lr, lsl #1
	add	r6, r10, lr, lsl #2
	ldr	r2, [r6, #4]
	ldr	r1, [r5, #4]
	sub	r0, r2, #9
	cmp	r0, r1
	ldr	r0, .L247+20
	lsl	ip, r3, #3
	ldr	r0, [r0]
	bgt	.L219
	ldr	r7, [r6, #16]
	add	r2, r2, r7
	add	r2, r2, #9
	cmp	r1, r2
	bgt	.L219
	ldr	r2, [r5, #60]
	cmp	r2, #0
	bne	.L219
	ldr	lr, [r10, lr, lsl #2]
	ldr	r2, [r5]
	cmp	lr, r2
	blt	.L245
.L219:
	add	r2, ip, r3
	add	r2, r3, r2, lsl #1
	add	r2, r10, r2, lsl #2
	ldr	r2, [r2, #64]
	cmp	r2, #1
	beq	.L220
	cmp	r0, #2
	bgt	.L226
	cmp	r2, #0
	bne	.L226
.L224:
	ldr	r3, [r10, #232]
	ldr	r2, [r10, #244]
	add	r3, r3, r2
	add	r3, r3, #90
	cmp	r1, r3
	bgt	.L229
.L226:
	ldr	r3, .L247+4
	ldr	r0, [r3, #4]
.L225:
	mov	r7, r9
	ldr	r6, .L247+4
.L233:
	add	r1, r7, #16
	ldm	r7, {r2, r3}
	ldm	r1, {r1, ip}
	str	r2, [sp, #4]
	str	ip, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r6, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r6]
	mov	lr, pc
	bx	fp
	cmp	r0, #0
	bne	.L246
.L231:
	add	r6, r6, #76
	cmp	r6, r8
	add	r7, r7, #76
	ldrne	r0, [r6, #4]
	bne	.L233
.L232:
	ldr	r3, .L247+24
	add	r4, r4, #76
	cmp	r4, r3
	bne	.L234
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L246:
	ldr	r3, .L247+28
	mov	lr, pc
	bx	r3
	ldr	r2, .L247+32
	smull	r3, r2, r0, r2
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #5
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r0, r0, r3, lsl #2
	add	r0, r0, #10
	str	r0, [r6]
	b	.L231
.L245:
	ldr	r2, [r6, #56]
	cmp	r2, #0
	moveq	r2, #1
	streq	r2, [r6, #64]
	bne	.L219
.L220:
	ldr	r7, .L247+36
	ldr	r2, [r7]
	ldr	lr, .L247+40
	ldr	r6, .L247+44
	add	r2, r2, #1
	mla	r6, r2, r6, lr
	mov	lr, r6
	ldr	r6, .L247+48
	cmp	r6, lr, ror #3
	str	r2, [r7]
	bcc	.L222
	mov	r7, #0
	ldr	r6, [r5]
	ldr	lr, .L247+52
	add	r6, r6, #10
	str	r6, [lr]
	sub	r6, r1, #60
	lsl	r6, r6, #3
	str	r7, [lr, #56]
	str	r6, [lr, #4]
.L222:
	cmp	r2, #800
	blt	.L223
	mov	lr, #1
	mov	r2, #0
	add	ip, ip, r3
	add	r3, r3, ip, lsl lr
	add	r3, r10, r3, lsl #2
	str	r2, [r3, #64]
	ldr	ip, .L247+36
	ldr	r3, .L247+52
	cmp	r0, #2
	str	r2, [ip]
	str	lr, [r3, #56]
	ble	.L224
	b	.L226
.L223:
	cmp	r2, #201
	ble	.L226
	ldr	r2, .L247+52
	ldr	r1, [r2, #4]
	ldr	r3, [r2, #12]
	add	r1, r1, r3
	ldr	r3, .L247+56
	and	r3, r3, r1, asr #3
	mvn	r3, r3, lsl #17
	mov	r0, #0
	mvn	r3, r3, lsr #17
	str	r0, [r2, #56]
	str	r1, [r2, #4]
	ldrb	r0, [r2]	@ zero_extendqisi2
	ldr	r1, .L247+60
	ldr	r2, .L247+64
	strh	r3, [r2, #66]	@ movhi
	strh	r0, [r2, #64]	@ movhi
	strh	r1, [r2, #68]	@ movhi
	b	.L226
.L229:
	ldr	r3, .L247+20
	add	r0, r0, #1
	str	r0, [r3]
	ldr	r3, .L247+28
	mov	lr, pc
	bx	r3
	mov	r6, r9
	subs	r3, r0, #0
	and	r3, r3, #1
	ldr	r2, .L247+16
	rsblt	r3, r3, #0
	add	r3, r3, #2
	str	r3, [r2]
.L230:
	mov	r3, #64
	str	r3, [r6, #16]
	mov	r3, #40
	mov	r7, #0
	str	r3, [r6, #20]
	mov	r3, #1
	str	r7, [r6, #8]
	str	r3, [r6, #12]
	str	r7, [r6, #56]
	ldr	r3, .L247+28
	mov	lr, pc
	bx	r3
	ldr	lr, .L247+68
	smull	r3, lr, r0, lr
	asr	r3, r0, #31
	add	lr, lr, r0
	rsb	r3, r3, lr, asr #6
	add	r3, r3, r3, lsl #1
	rsb	r3, r3, r3, lsl #4
	sub	r3, r0, r3, lsl #1
	str	r3, [r6], #76
	ldr	r3, .L247+24
	mov	ip, #250
	mov	r1, #300
	mov	r2, #400
	cmp	r6, r3
	mov	r3, #200
	str	ip, [r10, #80]
	str	r3, [r10, #4]
	str	r1, [r10, #156]
	str	r2, [r10, #232]
	bne	.L230
	mov	r6, #16
	mov	r2, #1
	ldr	r3, .L247+4
	ldr	r1, .L247+28
	str	r2, [r3, #12]
	str	r6, [r3, #16]
	str	r6, [r3, #20]
	str	r7, [r3, #8]
	str	r7, [r3, #56]
	mov	lr, pc
	bx	r1
	ldr	r2, .L247+4
	str	r6, [r2, #92]
	str	r6, [r2, #96]
	str	r7, [r2, #84]
	mov	r6, r2
	mov	r2, #1
	ldr	ip, .L247+32
	smull	lr, ip, r0, ip
	asr	r3, r0, #31
	rsb	r3, r3, ip, asr #5
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #2
	add	r3, r3, #10
	str	r2, [r6, #88]
	str	r3, [r6]
	ldr	r1, .L247+28
	str	r7, [r6, #132]
	mov	lr, pc
	bx	r1
	mov	r3, r0
	mov	r0, #200
	ldr	r1, .L247+32
	smull	r2, r1, r3, r1
	asr	r2, r3, #31
	rsb	r2, r2, r1, asr #5
	add	r2, r2, r2, lsl #2
	add	r2, r2, r2, lsl #2
	sub	r3, r3, r2, lsl #2
	ldr	r2, .L247+72
	add	r3, r3, #10
	str	r0, [r6, #4]
	str	r3, [r6, #76]
	str	r2, [r6, #80]
	b	.L225
.L248:
	.align	2
.L247:
	.word	dragons
	.word	stars
	.word	fairy
	.word	collision
	.word	awake
	.word	round
	.word	dragons+304
	.word	rand
	.word	1374389535
	.word	ftimer
	.word	85899344
	.word	-1030792151
	.word	21474836
	.word	fire
	.word	511
	.word	555
	.word	shadowOAM
	.word	-1240768329
	.word	370
	.size	updateDragons2, .-updateDragons2
	.align	2
	.global	updateStars2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateStars2, %function
updateStars2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, #0
	mov	r7, #1
	ldr	r4, .L267
	ldr	r5, .L267+4
	ldr	r9, .L267+8
	ldr	r8, .L267+12
	ldr	r10, .L267+16
	ldr	fp, .L267+20
	sub	sp, sp, #20
.L254:
	add	r1, r4, #12
	ldm	r1, {r1, r2}
	ldr	r3, [r4, #4]
	sub	r3, r3, r1
	add	r1, r3, r2
	cmp	r1, #0
	ldr	r0, [r4, #20]
	ldr	r1, [r4]
	str	r2, [sp, #8]
	str	r0, [sp, #12]
	str	r1, [sp, #4]
	str	r3, [sp]
	add	r2, r5, #16
	str	r3, [r4, #4]
	ldr	r1, [r5]
	ldm	r2, {r2, r3}
	ldr	r0, [r5, #4]
	strle	r7, [r4, #56]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L251
	ldr	r3, [r4, #56]
	cmp	r3, #0
	beq	.L266
.L252:
	str	r7, [r4, #56]
.L251:
	ldrh	r3, [r8]
	tst	r3, #1
	beq	.L253
	ldrh	r3, [r10]
	tst	r3, #1
	bne	.L253
	ldr	r3, [fp]
	add	r2, r3, r3, lsl #3
	add	r3, r3, r2, lsl #1
	ldr	r2, .L267+24
	add	r3, r2, r3, lsl #2
	ldr	r3, [r3, #64]
	cmp	r3, #1
	strne	r7, [r5, #52]
.L253:
	cmp	r6, #1
	add	r4, r4, #76
	bne	.L255
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L255:
	mov	r6, #1
	b	.L254
.L266:
	ldr	r3, [r5, #48]
	add	r3, r3, #1
	str	r3, [r5, #48]
	mov	r0, #2
	ldr	r3, .L267+28
	mov	lr, pc
	bx	r3
	b	.L252
.L268:
	.align	2
.L267:
	.word	stars
	.word	fairy
	.word	collision
	.word	oldButtons
	.word	buttons
	.word	awake
	.word	dragons
	.word	playAnotherSong
	.size	updateStars2, .-updateStars2
	.align	2
	.global	updatePortal2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePortal2, %function
updatePortal2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L271
	ldr	r3, [r3]
	cmp	r3, #3
	bxne	lr
	ldr	r3, .L271+4
	ldr	r3, [r3]
	ldr	r2, .L271+8
	add	r1, r3, r3, lsl #3
	add	r3, r3, r1, lsl #1
	add	r3, r2, r3, lsl #2
	ldr	r3, [r3, #64]
	cmp	r3, #0
	bxne	lr
	b	updatePortal2.part.0
.L272:
	.align	2
.L271:
	.word	round
	.word	awake
	.word	dragons
	.size	updatePortal2, .-updatePortal2
	.align	2
	.global	drawFairy2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFairy2, %function
drawFairy2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L281
	ldr	r3, [r0, #4]
	ldr	r2, [r0, #36]
	lsl	r3, r3, #23
	ldr	ip, .L281+4
	push	{r4, r5, r6, lr}
	lsl	r2, r2, #23
	ldr	lr, [r0, #52]
	lsr	r3, r3, #23
	orr	r3, r3, #32768
	ldrb	r1, [r0]	@ zero_extendqisi2
	lsr	r2, r2, #16
	strh	r3, [ip, #2]	@ movhi
	cmp	lr, #1
	add	r3, r2, #8
	strh	r3, [ip, #4]	@ movhi
	strh	r1, [ip]	@ movhi
	beq	.L280
.L273:
	pop	{r4, r5, r6, lr}
	bx	lr
.L280:
	ldr	r4, [r0, #48]
	cmp	r4, #0
	ble	.L273
	ldr	r3, .L281+8
	ldr	r3, [r3]
	ldr	r5, .L281+12
	add	r6, r3, r3, lsl #3
	add	r3, r3, r6, lsl #1
	add	r3, r5, r3, lsl #2
	ldr	r3, [r3, #64]
	cmp	r3, #1
	beq	.L273
	ldr	r5, .L281+16
	ldr	r3, [r5]
	add	r3, r3, #1
	cmp	r3, #240
	str	r3, [r5]
	bgt	.L275
	mov	r3, #67108864
	mov	r4, #1104
	add	r2, r2, #12
	strh	r2, [ip, #4]	@ movhi
	ldr	r2, .L281+20
	orr	r1, r1, #1024
	str	lr, [r0, #60]
	strh	r4, [r3, #80]	@ movhi
	strh	r2, [r3, #82]	@ movhi
	strh	r1, [ip]	@ movhi
	b	.L273
.L275:
	mov	r3, #0
	mov	r2, #67108864
	sub	r4, r4, #1
	str	r4, [r0, #48]
	str	r3, [r5]
	str	r3, [r0, #60]
	str	r3, [r0, #52]
	strh	r3, [r2, #80]	@ movhi
	strh	r3, [r2, #82]	@ movhi
	b	.L273
.L282:
	.align	2
.L281:
	.word	fairy
	.word	shadowOAM
	.word	awake
	.word	dragons
	.word	timer
	.word	2056
	.size	drawFairy2, .-drawFairy2
	.align	2
	.global	drawDragons2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawDragons2, %function
drawDragons2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L298
	mov	r5, r0
	mov	r3, r4
	mov	r10, r0
	mov	r7, #288
	mov	r9, #512
	ldr	ip, .L298+4
	ldr	r1, [ip, #4]
	ldr	r6, .L298+8
	ldr	r2, .L298+12
	ldrb	ip, [ip]	@ zero_extendqisi2
	sub	r1, r1, #120
	ldr	r2, [r2, #56]
	and	r1, r1, r6
	ldr	lr, .L298+16
	sub	sp, sp, #20
	orr	ip, ip, #16384
	orr	r1, r1, #49152
	mov	fp, r6
	str	r2, [sp, #4]
	ldrh	r6, [r4, #64]
	ldr	r8, [lr]
	ldr	r2, .L298+20
	str	ip, [sp, #8]
	str	r1, [sp, #12]
.L290:
	ldr	r1, [r2, #56]
	cmp	r1, #1
	ldr	r1, [r2, #4]
	and	r1, r1, fp
	mvn	r1, r1, lsl #18
	ldrb	r4, [r2]	@ zero_extendqisi2
	moveq	ip, r9
	movne	ip, r4
	cmp	r8, r0
	movne	lr, r7
	moveq	lr, r10
	mvn	r1, r1, lsr #18
	strh	lr, [r3, #12]	@ movhi
	ldr	lr, [r2, #64]
	cmp	lr, #1
	strh	ip, [r3, #8]	@ movhi
	strh	r1, [r3, #10]	@ movhi
	beq	.L297
.L286:
	ldr	r1, [sp, #4]
	add	r0, r0, #1
	cmp	r1, #1
	moveq	r5, #1
	moveq	r6, #512
	cmp	r0, #4
	add	r2, r2, #76
	add	r3, r3, #8
	bne	.L290
	cmp	r5, #0
	ldrne	r3, .L298
	strhne	r6, [r3, #64]	@ movhi
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L297:
	ldr	ip, [r2, #24]
	ldr	lr, .L298+24
	smull	r1, lr, ip, lr
	asr	r1, ip, #31
	rsb	r1, r1, lr, asr #3
	add	r1, r1, r1, lsl #2
	subs	r1, ip, r1, lsl #2
	bne	.L287
	ldr	r4, [r2, #40]
	ldr	lr, [r2, #36]
	sub	r4, r4, #1
	cmp	lr, r4
	add	lr, lr, #1
	strlt	lr, [r2, #36]
	strge	r1, [r2, #36]
.L287:
	add	ip, ip, #1
	ldr	r1, [r2, #36]
	str	ip, [r2, #24]
	ldr	ip, [sp, #8]
	lsl	r1, r1, #7
	strh	ip, [r3, #8]	@ movhi
	ldr	ip, [sp, #12]
	add	r1, r1, #576
	strh	ip, [r3, #10]	@ movhi
	strh	r1, [r3, #12]	@ movhi
	b	.L286
.L299:
	.align	2
.L298:
	.word	shadowOAM
	.word	fairy
	.word	511
	.word	fire
	.word	awake
	.word	dragons
	.word	1717986919
	.size	drawDragons2, .-drawDragons2
	.align	2
	.global	drawStars2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawStars2, %function
drawStars2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L304
	ldr	r3, [r1, #4]
	str	lr, [sp, #-4]!
	lsl	r3, r3, #23
	ldr	lr, [r1, #56]
	ldr	r2, .L304+4
	lsr	r3, r3, #23
	orr	r3, r3, #16384
	cmp	lr, #1
	strh	r3, [r2, #42]	@ movhi
	moveq	r3, #512
	mov	r0, #16
	ldrb	ip, [r1]	@ zero_extendqisi2
	strh	ip, [r2, #40]	@ movhi
	strheq	r3, [r2, #40]	@ movhi
	ldr	r3, [r1, #80]
	ldr	ip, [r1, #132]
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	orr	r3, r3, #16384
	cmp	ip, #1
	strh	r0, [r2, #44]	@ movhi
	strh	r3, [r2, #50]	@ movhi
	mov	r0, #16
	moveq	r3, #512
	ldrb	r1, [r1, #76]	@ zero_extendqisi2
	strh	r0, [r2, #52]	@ movhi
	strh	r1, [r2, #48]	@ movhi
	ldr	lr, [sp], #4
	strheq	r3, [r2, #48]	@ movhi
	bx	lr
.L305:
	.align	2
.L304:
	.word	stars
	.word	shadowOAM
	.size	drawStars2, .-drawStars2
	.align	2
	.global	drawPortal2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPortal2, %function
drawPortal2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L309
	ldr	r3, [r2, #4]
	str	lr, [sp, #-4]!
	ldr	r0, .L309+4
	ldr	lr, [r2, #56]
	lsl	r3, r3, #23
	ldrb	r1, [r2]	@ zero_extendqisi2
	lsr	r3, r3, #23
	ldr	r2, .L309+8
	orr	r3, r3, r0
	cmp	lr, #1
	mov	ip, #552
	strh	r3, [r2, #58]	@ movhi
	moveq	r3, #512
	orr	r1, r1, r0
	strh	r1, [r2, #56]	@ movhi
	strh	ip, [r2, #60]	@ movhi
	strheq	r3, [r2, #56]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L310:
	.align	2
.L309:
	.word	portal
	.word	-32768
	.word	shadowOAM
	.size	drawPortal2, .-drawPortal2
	.align	2
	.global	updateGame2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame2, %function
updateGame2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	updateFairy2
	bl	updateDragons2
	bl	updateStars2
	ldr	r3, .L315
	ldr	r3, [r3]
	cmp	r3, #3
	beq	.L314
.L311:
	pop	{r4, lr}
	bx	lr
.L314:
	ldr	r3, .L315+4
	ldr	r3, [r3]
	ldr	r2, .L315+8
	add	r1, r3, r3, lsl #3
	add	r3, r3, r1, lsl #1
	add	r3, r2, r3, lsl #2
	ldr	r3, [r3, #64]
	cmp	r3, #0
	bne	.L311
	pop	{r4, lr}
	b	updatePortal2.part.0
.L316:
	.align	2
.L315:
	.word	round
	.word	awake
	.word	dragons
	.size	updateGame2, .-updateGame2
	.align	2
	.global	drawGame2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame2, %function
drawGame2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	drawFairy2
	bl	drawDragons2
	bl	drawStars2
	ldr	r2, .L320
	ldr	r3, [r2, #4]
	ldr	lr, [r2, #56]
	ldr	r0, .L320+4
	lsl	r3, r3, #23
	ldrb	r1, [r2]	@ zero_extendqisi2
	lsr	r3, r3, #23
	ldr	r2, .L320+8
	orr	r3, r3, r0
	cmp	lr, #1
	strh	r3, [r2, #58]	@ movhi
	mov	ip, #552
	moveq	r3, #512
	orr	r1, r1, r0
	strh	r1, [r2, #56]	@ movhi
	strh	ip, [r2, #60]	@ movhi
	strheq	r3, [r2, #56]	@ movhi
	ldr	r4, .L320+12
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L320+8
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L321:
	.align	2
.L320:
	.word	portal
	.word	-32768
	.word	shadowOAM
	.word	DMANow
	.size	drawGame2, .-drawGame2
	.global	collisionMap
	.comm	cheat,4,4
	.comm	house,4,4
	.comm	round,4,4
	.comm	ftimer,4,4
	.comm	awake,4,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	timer,4,4
	.comm	wings,76,4
	.comm	power,76,4
	.comm	damage,76,4
	.comm	enemy,76,4
	.comm	portal,76,4
	.comm	fire,76,4
	.comm	stars,152,4
	.comm	dragons,304,4
	.comm	fairy,76,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.comm	songs,36,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	collisionMap, %object
	.size	collisionMap, 4
collisionMap:
	.word	mapBitmap
	.ident	"GCC: (devkitARM release 53) 9.1.0"
