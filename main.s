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
	.file	"main.c"
	.text
	.align	2
	.global	goToStart
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r0, #67108864
	mov	r4, #0
	mov	r3, #256
	mov	r2, #7936
	ldr	r1, .L4
	strh	r3, [r0]	@ movhi
	ldr	r5, .L4+4
	strh	r2, [r0, #8]	@ movhi
	str	r4, [r1]
	mov	r2, #83886080
	strh	r4, [r0, #16]	@ movhi
	ldr	r1, .L4+8
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #16384
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L4+12
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L4+16
	ldr	r1, .L4+20
	mov	lr, pc
	bx	r5
	ldr	r3, .L4+24
	str	r4, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	hOff
	.word	DMANow
	.word	startPal
	.word	startTiles
	.word	100726784
	.word	startMap
	.word	state
	.size	goToStart, .-goToStart
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, #0
	ldr	r1, .L8
	ldr	r0, .L8+4
	ldr	lr, .L8+8
	ldr	ip, .L8+12
	str	r4, [r1]
	str	r4, [r0]
	ldr	r5, .L8+16
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L8+20
	ldr	r1, .L8+24
	str	r4, [lr]
	str	r4, [ip]
	mov	lr, pc
	bx	r5
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L8+28
	ldr	r1, .L8+32
	mov	lr, pc
	bx	r5
	mov	r3, #67108864
	mov	r2, #4352
	mov	r1, #7936
	strh	r2, [r3]	@ movhi
	strh	r1, [r3, #8]	@ movhi
	ldr	r2, .L8+36
	ldr	r0, .L8+40
	ldrh	r1, [r2, #48]
	ldr	r2, .L8+44
	ldr	r3, .L8+48
	strh	r4, [r0]	@ movhi
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+52
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+56
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	b	goToStart
.L9:
	.align	2
.L8:
	.word	restore
	.word	resume
	.word	cheat
	.word	p
	.word	DMANow
	.word	83886592
	.word	spritesheetPal
	.word	100728832
	.word	spritesheetTiles
	.word	67109120
	.word	oldButtons
	.word	buttons
	.word	init
	.word	setupSounds
	.word	setupInterrupts
	.size	initialize, .-initialize
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	win.part.0, %function
win.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L12
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	initialize
.L13:
	.align	2
.L12:
	.word	buttons
	.size	win.part.0, .-win.part.0
	.set	lose.part.0,win.part.0
	.align	2
	.global	goToInstructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstructions, %function
goToInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	lr, #1
	mov	r0, #67108864
	mov	ip, #7936
	mov	r3, #256
	mov	r1, #0
	ldr	r2, .L16
	str	lr, [r2]
	ldr	r2, .L16+4
	strh	r3, [r0]	@ movhi
	ldr	r4, .L16+8
	str	r1, [r2]
	strh	r1, [r0, #16]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #8]	@ movhi
	ldr	r1, .L16+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L16+16
	ldr	r1, .L16+20
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L16+24
	ldr	r1, .L16+28
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	state
	.word	hOff
	.word	DMANow
	.word	instructionsPal
	.word	6480
	.word	instructionsTiles
	.word	100726784
	.word	instructionsMap
	.size	goToInstructions, .-goToInstructions
	.align	2
	.global	instructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	instructions, %function
instructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L23
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L23+4
	ldrh	r3, [r3]
	tst	r3, #8
	bxne	lr
	b	goToStart
.L24:
	.align	2
.L23:
	.word	oldButtons
	.word	buttons
	.size	instructions, .-instructions
	.align	2
	.global	goToGame1
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame1, %function
goToGame1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L30
	mov	lr, pc
	bx	r3
	mov	r1, #67108864
	mov	r3, #4864
	mov	r2, #7936
	ldr	r0, .L30+4
	strh	r3, [r1]	@ movhi
	ldr	r4, .L30+8
	strh	r2, [r1, #8]	@ movhi
	mov	r3, #256
	strh	r0, [r1, #10]	@ movhi
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L30+12
	mov	lr, pc
	bx	r4
	mov	r3, #64
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L30+16
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L30+20
	ldr	r1, .L30+24
	mov	lr, pc
	bx	r4
	mov	r3, #3296
	mov	r0, #3
	ldr	r2, .L30+28
	ldr	r1, .L30+32
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L30+36
	ldr	r1, .L30+40
	mov	lr, pc
	bx	r4
	ldr	r3, .L30+44
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L29
	mov	r0, #1
	ldr	r3, .L30+48
	mov	lr, pc
	bx	r3
.L27:
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L30+52
	ldr	r1, .L30+56
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L30+60
	ldr	r1, .L30+64
	mov	lr, pc
	bx	r4
	mov	lr, #0
	mov	ip, #49152
	mov	r0, #195
	mov	r1, #2
	ldr	r3, .L30+68
	ldr	r2, .L30+72
	strh	lr, [r3, #10]	@ movhi
	strh	ip, [r3, #8]	@ movhi
	pop	{r4, lr}
	strh	r0, [r3, #10]	@ movhi
	str	r1, [r2]
	bx	lr
.L29:
	ldr	r3, .L30+76
	mov	lr, pc
	bx	r3
	b	.L27
.L31:
	.align	2
.L30:
	.word	waitForVBlank
	.word	7685
	.word	DMANow
	.word	villagePal
	.word	levelTiles
	.word	100726784
	.word	levelMap
	.word	100679680
	.word	villageTiles
	.word	100724736
	.word	villageMap
	.word	restore
	.word	playSong
	.word	83886592
	.word	spritesheetPal
	.word	100728832
	.word	spritesheetTiles
	.word	67109120
	.word	state
	.word	unpauseSounds
	.size	goToGame1, .-goToGame1
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L49
	ldr	r3, [r2]
	cmp	r3, #0
	push	{r4, lr}
	ble	.L33
	sub	r3, r3, #1
	cmp	r3, #249
	str	r3, [r2]
	ble	.L33
	cmp	r3, #500
	movle	r3, #83886080
	mvnle	r2, #32768
	strhle	r2, [r3, #18]	@ movhi
.L36:
	ldr	r4, .L49+4
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L38
	ldr	r2, .L49+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L47
.L38:
	tst	r3, #4
	beq	.L32
	ldr	r3, .L49+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L48
.L32:
	pop	{r4, lr}
	bx	lr
.L33:
	cmp	r3, #0
	mov	r1, #83886080
	mvn	r0, #64512
	moveq	r3, #500
	strh	r0, [r1, #18]	@ movhi
	streq	r3, [r2]
	b	.L36
.L48:
	pop	{r4, lr}
	b	goToInstructions
.L47:
	bl	goToGame1
	ldr	r3, .L49+12
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	b	.L38
.L50:
	.align	2
.L49:
	.word	.LANCHOR0
	.word	oldButtons
	.word	buttons
	.word	initGame1
	.size	start, .-start
	.align	2
	.global	goToGame2
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame2, %function
goToGame2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L58
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	mov	r2, #0
	mov	ip, #5632
	ldr	r1, .L58+4
	ldr	lr, .L58+8
	str	r2, [lr]
	strh	ip, [r3]	@ movhi
	strh	r1, [r3, #10]	@ movhi
	ldr	r1, .L58+12
	ldr	r0, .L58+16
	ldr	r1, [r1]
	strh	r0, [r3, #12]	@ movhi
	ldr	r3, .L58+20
	cmp	r1, #2
	str	r2, [r3, #68]
	beq	.L56
	ldr	r3, .L58+24
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L57
	mov	r0, #1
	ldr	r3, .L58+28
	mov	lr, pc
	bx	r3
.L53:
	mov	ip, #0
	mov	r0, #67108864
	mov	r1, #64
	ldr	r2, .L58+32
	ldr	r4, .L58+36
	strh	ip, [r2, #10]	@ movhi
	mov	r3, #256
	strh	r1, [r0, #80]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #82]	@ movhi
	ldr	r1, .L58+40
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #32
	mov	r0, #3
	ldr	r2, .L58+44
	ldr	r1, .L58+48
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L58+52
	ldr	r1, .L58+56
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r3, .L58+60
	ldr	r2, .L58+64
	ldr	r1, .L58+68
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L58+72
	ldr	r1, .L58+76
	mov	lr, pc
	bx	r4
	mov	r3, #256
	mov	r0, #3
	ldr	r2, .L58+80
	ldr	r1, .L58+84
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	ldr	r2, .L58+88
	mov	r0, #3
	ldr	r1, .L58+92
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L58+96
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L57:
	ldr	r3, .L58+100
	mov	lr, pc
	bx	r3
	b	.L53
.L56:
	ldr	r3, .L58+104
	mov	lr, pc
	bx	r3
	b	.L53
.L59:
	.align	2
.L58:
	.word	waitForVBlank
	.word	7685
	.word	cheat
	.word	restore
	.word	7434
	.word	fairy
	.word	resume
	.word	playSong
	.word	67109120
	.word	DMANow
	.word	bgPal
	.word	100679680
	.word	bg2Tiles
	.word	100724736
	.word	bg2Map
	.word	4944
	.word	100696064
	.word	bgTiles
	.word	100722688
	.word	bgMap
	.word	83886592
	.word	spritesheetPal
	.word	100728832
	.word	spritesheetTiles
	.word	state
	.word	pauseSounds
	.word	unpauseSounds
	.size	goToGame2, .-goToGame2
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L62
	mov	lr, pc
	bx	r3
	mov	lr, #4
	mov	r0, #67108864
	mov	r3, #256
	mov	r1, #0
	ldr	ip, .L62+4
	ldr	r2, .L62+8
	str	lr, [ip]
	ldr	ip, .L62+12
	strh	r3, [r0]	@ movhi
	ldr	r4, .L62+16
	str	r1, [r2]
	strh	r1, [r0, #16]	@ movhi
	mov	r2, #83886080
	strh	ip, [r0, #8]	@ movhi
	ldr	r1, .L62+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	mov	r0, #3
	ldr	r2, .L62+24
	ldr	r1, .L62+28
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L62+32
	ldr	r1, .L62+36
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L63:
	.align	2
.L62:
	.word	pauseSounds
	.word	state
	.word	hOff
	.word	7684
	.word	DMANow
	.word	pausePal
	.word	100679680
	.word	pauseTiles
	.word	100724736
	.word	pauseMap
	.size	goToPause, .-goToPause
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L78
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L65
	ldr	r2, .L78+4
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L75
.L65:
	tst	r3, #8
	beq	.L64
	ldr	r3, .L78+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L76
.L64:
	pop	{r4, lr}
	bx	lr
.L75:
	ldr	r2, .L78+8
	ldr	r2, [r2]
	cmp	r2, #1
	beq	.L77
	cmp	r2, #2
	bne	.L65
	bl	goToGame2
	ldrh	r3, [r4]
	b	.L65
.L76:
	ldr	r3, .L78+12
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	initialize
.L77:
	bl	goToGame1
	ldrh	r3, [r4]
	b	.L65
.L79:
	.align	2
.L78:
	.word	oldButtons
	.word	buttons
	.word	restore
	.word	unpauseSounds
	.size	pause, .-pause
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #5
	ldr	r2, .L82
	push	{r4, lr}
	ldr	r3, .L82+4
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	mov	ip, #0
	mov	r0, #67108864
	mov	r3, #256
	mov	r2, #7936
	ldr	r1, .L82+8
	strh	r3, [r0]	@ movhi
	ldr	r4, .L82+12
	strh	r2, [r0, #8]	@ movhi
	str	ip, [r1]
	mov	r2, #83886080
	strh	ip, [r0, #16]	@ movhi
	ldr	r1, .L82+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #8640
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L82+20
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L82+24
	ldr	r1, .L82+28
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L83:
	.align	2
.L82:
	.word	state
	.word	stopSounds
	.word	hOff
	.word	DMANow
	.word	winPal
	.word	winTiles
	.word	100726784
	.word	winMap
	.size	goToWin, .-goToWin
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L86
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	b	win.part.0
.L87:
	.align	2
.L86:
	.word	oldButtons
	.size	win, .-win
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #6
	ldr	r2, .L90
	push	{r4, lr}
	ldr	r3, .L90+4
	str	r1, [r2]
	mov	lr, pc
	bx	r3
	mov	ip, #0
	mov	r0, #67108864
	mov	r3, #256
	mov	r2, #7936
	ldr	r1, .L90+8
	strh	r3, [r0]	@ movhi
	ldr	r4, .L90+12
	strh	r2, [r0, #8]	@ movhi
	str	ip, [r1]
	mov	r2, #83886080
	strh	ip, [r0, #16]	@ movhi
	ldr	r1, .L90+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r3, .L90+20
	ldr	r1, .L90+24
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	mov	r0, #3
	ldr	r2, .L90+28
	ldr	r1, .L90+32
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L91:
	.align	2
.L90:
	.word	state
	.word	stopSounds
	.word	hOff
	.word	DMANow
	.word	losePal
	.word	9568
	.word	loseTiles
	.word	100726784
	.word	loseMap
	.size	goToLose, .-goToLose
	.align	2
	.global	game1
	.syntax unified
	.arm
	.fpu softvfp
	.type	game1, %function
game1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r2, #0
	push	{r4, r5, r6, lr}
	ldr	r1, .L112
	strh	r2, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
	ldr	r2, .L112+4
	ldrh	r1, [r1]
	ldrh	r2, [r2]
	strh	r1, [r3, #22]	@ movhi
	ldr	r4, .L112+8
	strh	r2, [r3, #20]	@ movhi
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L93
	ldr	r3, .L112+12
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L111
.L93:
	ldr	r3, .L112+16
	ldrh	r3, [r3, #110]
	ldr	r5, .L112+20
	cmp	r3, #0
	ldr	r3, [r5, #68]
	bne	.L94
	cmp	r3, #1
	beq	.L98
	ldr	r2, .L112+24
	ldr	r3, [r2]
	add	r3, r3, #1
	cmp	r3, #30
	str	r3, [r2]
	ble	.L96
	bl	goToLose
	ldr	r3, [r5, #68]
.L94:
	cmp	r3, #1
	beq	.L98
.L96:
	ldrh	r3, [r4]
	tst	r3, #2
	beq	.L100
	ldr	r3, .L112+12
	ldrh	r3, [r3]
	tst	r3, #2
	moveq	r2, #1
	ldreq	r3, .L112+28
	streq	r2, [r3]
.L100:
	ldr	r3, .L112+32
	mov	lr, pc
	bx	r3
	ldr	r3, .L112+36
	mov	lr, pc
	bx	r3
	ldr	r3, .L112+40
	mov	lr, pc
	bx	r3
	pop	{r4, r5, r6, lr}
	bx	lr
.L98:
	mov	r2, #1
	ldr	r3, .L112+44
	str	r2, [r3]
	bl	goToGame2
	ldr	r3, .L112+48
	mov	lr, pc
	bx	r3
	b	.L96
.L111:
	mov	r2, #1
	ldr	r3, .L112+52
	str	r2, [r3]
	bl	goToPause
	b	.L93
.L113:
	.align	2
.L112:
	.word	vOff
	.word	hOff
	.word	oldButtons
	.word	buttons
	.word	100726784
	.word	fairy
	.word	p
	.word	cheat
	.word	updateGame1
	.word	waitForVBlank
	.word	drawGame1
	.word	resume
	.word	initGame2
	.word	restore
	.size	game1, .-game1
	.align	2
	.global	game2
	.syntax unified
	.arm
	.fpu softvfp
	.type	game2, %function
game2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #67108864
	ldr	ip, .L130
	ldr	r2, [ip]
	add	r2, r2, #1
	add	r3, r2, r2, lsr #31
	asr	r3, r3, #1
	lsl	r3, r3, #16
	lsl	r1, r2, #16
	lsr	r3, r3, #16
	lsr	r1, r1, #16
	push	{r4, lr}
	str	r2, [ip]
	ldr	r4, .L130+4
	strh	r3, [r0, #20]	@ movhi
	strh	r1, [r0, #24]	@ movhi
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L115
	ldr	r3, .L130+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L127
.L115:
	ldr	r3, .L130+12
	mov	lr, pc
	bx	r3
.L116:
	ldrh	r3, [r4]
	tst	r3, #2
	beq	.L117
	ldr	r3, .L130+8
	ldrh	r3, [r3]
	tst	r3, #2
	moveq	r2, #1
	ldreq	r3, .L130+16
	streq	r2, [r3]
.L117:
	ldr	r4, .L130+20
	ldr	r3, [r4, #44]
	cmp	r3, #1
	beq	.L128
.L118:
	ldr	r3, [r4, #68]
	cmp	r3, #1
	beq	.L129
.L119:
	ldr	r3, .L130+24
	mov	lr, pc
	bx	r3
	ldr	r3, .L130+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L130+32
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L127:
	mov	r2, #2
	ldr	r3, .L130+36
	str	r2, [r3]
	bl	goToPause
	b	.L116
.L129:
	bl	goToWin
	b	.L119
.L128:
	bl	goToLose
	b	.L118
.L131:
	.align	2
.L130:
	.word	hOff
	.word	oldButtons
	.word	buttons
	.word	unpauseSounds
	.word	cheat
	.word	fairy
	.word	updateGame2
	.word	waitForVBlank
	.word	drawGame2
	.word	restore
	.size	game2, .-game2
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r7, fp, lr}
	ldr	r4, .L155
	ldr	r3, .L155+4
	mov	lr, pc
	bx	r3
	ldr	r5, .L155+8
	ldrh	r3, [r4]
	ldr	r8, .L155+12
	ldr	r7, .L155+16
	ldr	fp, .L155+20
	ldr	r10, .L155+24
	ldr	r9, .L155+28
	ldr	r6, .L155+32
.L143:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r6, #48]
	strh	r3, [r4]	@ movhi
	mov	lr, pc
	bx	r8
	ldr	r3, [r7]
	cmp	r3, #6
	ldrls	pc, [pc, r3, asl #2]
	b	.L154
.L136:
	.word	.L142
	.word	.L141
	.word	.L140
	.word	.L139
	.word	.L138
	.word	.L137
	.word	.L135
.L135:
	ldrh	r3, [r5]
	tst	r3, #8
	beq	.L154
	ldr	r3, .L155+36
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	b	.L143
.L137:
	ldrh	r3, [r5]
	tst	r3, #8
	ldrne	r3, .L155+40
	movne	lr, pc
	bxne	r3
.L154:
	ldrh	r3, [r4]
	b	.L143
.L138:
	ldr	r3, .L155+44
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	b	.L143
.L139:
	mov	lr, pc
	bx	r9
	ldrh	r3, [r4]
	b	.L143
.L140:
	mov	lr, pc
	bx	r10
	ldrh	r3, [r4]
	b	.L143
.L142:
	mov	lr, pc
	bx	fp
	ldrh	r3, [r4]
	b	.L143
.L141:
	ldrh	r3, [r5]
	tst	r3, #8
	ldrh	r3, [r4]
	beq	.L143
	tst	r3, #8
	bne	.L143
	ldr	r3, .L155+48
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	b	.L143
.L156:
	.align	2
.L155:
	.word	buttons
	.word	initialize
	.word	oldButtons
	.word	mgba_open
	.word	state
	.word	start
	.word	game1
	.word	game2
	.word	67109120
	.word	lose.part.0
	.word	win.part.0
	.word	pause
	.word	goToStart
	.size	main, .-main
	.text
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	win
	.size	lose, .-lose
	.comm	shadowOAM,1024,4
	.comm	cheat,4,4
	.global	ptimer
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	fairy,76,4
	.comm	p,4,4
	.comm	resume,4,4
	.comm	restore,4,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	state,4,4
	.comm	songs,36,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	ptimer, %object
	.size	ptimer, 4
ptimer:
	.word	500
	.ident	"GCC: (devkitARM release 53) 9.1.0"
