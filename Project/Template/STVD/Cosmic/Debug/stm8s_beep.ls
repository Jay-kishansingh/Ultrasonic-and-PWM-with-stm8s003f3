   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.8.1 - 09 Jan 2023
   3                     ; Generator (Limited) V4.5.5 - 08 Nov 2022
   4                     ; Optimizer V4.5.5 - 08 Nov 2022
  48                     ; 48 void BEEP_DeInit(void)
  48                     ; 49 {
  50                     	switch	.text
  51  0000               _BEEP_DeInit:
  55                     ; 50     BEEP->CSR = BEEP_CSR_RESET_VALUE;
  57  0000 351f50f3      	mov	20723,#31
  58                     ; 51 }
  61  0004 81            	ret	
 127                     ; 61 void BEEP_Init(BEEP_Frequency_TypeDef BEEP_Frequency)
 127                     ; 62 {
 128                     	switch	.text
 129  0005               _BEEP_Init:
 131  0005 88            	push	a
 132       00000000      OFST:	set	0
 135                     ; 65     assert_param(IS_BEEP_FREQUENCY_OK(BEEP_Frequency));
 137  0006 4d            	tnz	a
 138  0007 2716          	jreq	L41
 139  0009 a140          	cp	a,#64
 140  000b 2712          	jreq	L41
 141  000d a180          	cp	a,#128
 142  000f 270e          	jreq	L41
 143  0011 ae0041        	ldw	x,#65
 144  0014 89            	pushw	x
 145  0015 5f            	clrw	x
 146  0016 89            	pushw	x
 147  0017 ae000c        	ldw	x,#L15
 148  001a cd0000        	call	_assert_failed
 150  001d 5b04          	addw	sp,#4
 151  001f               L41:
 152                     ; 68     if ((BEEP->CSR & BEEP_CSR_BEEPDIV) == BEEP_CSR_BEEPDIV)
 154  001f c650f3        	ld	a,20723
 155  0022 a41f          	and	a,#31
 156  0024 a11f          	cp	a,#31
 157  0026 2610          	jrne	L35
 158                     ; 70         BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPDIV); /* Clear bits */
 160  0028 c650f3        	ld	a,20723
 161  002b a4e0          	and	a,#224
 162  002d c750f3        	ld	20723,a
 163                     ; 71         BEEP->CSR |= BEEP_CALIBRATION_DEFAULT;
 165  0030 c650f3        	ld	a,20723
 166  0033 aa0b          	or	a,#11
 167  0035 c750f3        	ld	20723,a
 168  0038               L35:
 169                     ; 75     BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPSEL);
 171  0038 c650f3        	ld	a,20723
 172  003b a43f          	and	a,#63
 173  003d c750f3        	ld	20723,a
 174                     ; 76     BEEP->CSR |= (uint8_t)(BEEP_Frequency);
 176  0040 c650f3        	ld	a,20723
 177  0043 1a01          	or	a,(OFST+1,sp)
 178  0045 c750f3        	ld	20723,a
 179                     ; 78 }
 182  0048 84            	pop	a
 183  0049 81            	ret	
 238                     ; 87 void BEEP_Cmd(FunctionalState NewState)
 238                     ; 88 {
 239                     	switch	.text
 240  004a               _BEEP_Cmd:
 244                     ; 89     if (NewState != DISABLE)
 246  004a 4d            	tnz	a
 247  004b 2705          	jreq	L301
 248                     ; 92         BEEP->CSR |= BEEP_CSR_BEEPEN;
 250  004d 721a50f3      	bset	20723,#5
 253  0051 81            	ret	
 254  0052               L301:
 255                     ; 97         BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPEN);
 257  0052 721b50f3      	bres	20723,#5
 258                     ; 99 }
 261  0056 81            	ret	
 315                     .const:	section	.text
 316  0000               L62:
 317  0000 0001adb0      	dc.l	110000
 318  0004               L03:
 319  0004 000249f1      	dc.l	150001
 320  0008               L63:
 321  0008 000003e8      	dc.l	1000
 322                     ; 114 void BEEP_LSICalibrationConfig(uint32_t LSIFreqHz)
 322                     ; 115 {
 323                     	switch	.text
 324  0057               _BEEP_LSICalibrationConfig:
 326  0057 5206          	subw	sp,#6
 327       00000006      OFST:	set	6
 330                     ; 121     assert_param(IS_LSI_FREQUENCY_OK(LSIFreqHz));
 332  0059 96            	ldw	x,sp
 333  005a 1c0009        	addw	x,#OFST+3
 334  005d cd0000        	call	c_ltor
 336  0060 ae0000        	ldw	x,#L62
 337  0063 cd0000        	call	c_lcmp
 339  0066 250f          	jrult	L42
 340  0068 96            	ldw	x,sp
 341  0069 1c0009        	addw	x,#OFST+3
 342  006c cd0000        	call	c_ltor
 344  006f ae0004        	ldw	x,#L03
 345  0072 cd0000        	call	c_lcmp
 347  0075 250e          	jrult	L23
 348  0077               L42:
 349  0077 ae0079        	ldw	x,#121
 350  007a 89            	pushw	x
 351  007b 5f            	clrw	x
 352  007c 89            	pushw	x
 353  007d ae000c        	ldw	x,#L15
 354  0080 cd0000        	call	_assert_failed
 356  0083 5b04          	addw	sp,#4
 357  0085               L23:
 358                     ; 123     lsifreqkhz = (uint16_t)(LSIFreqHz / 1000); /* Converts value in kHz */
 360  0085 96            	ldw	x,sp
 361  0086 1c0009        	addw	x,#OFST+3
 362  0089 cd0000        	call	c_ltor
 364  008c ae0008        	ldw	x,#L63
 365  008f cd0000        	call	c_ludv
 367  0092 be02          	ldw	x,c_lreg+2
 368  0094 1f03          	ldw	(OFST-3,sp),x
 370                     ; 127     BEEP->CSR &= (uint8_t)(~BEEP_CSR_BEEPDIV); /* Clear bits */
 372  0096 c650f3        	ld	a,20723
 373  0099 a4e0          	and	a,#224
 374  009b c750f3        	ld	20723,a
 375                     ; 129     A = (uint16_t)(lsifreqkhz >> 3U); /* Division by 8, keep integer part only */
 377  009e 54            	srlw	x
 378  009f 54            	srlw	x
 379  00a0 54            	srlw	x
 380  00a1 1f05          	ldw	(OFST-1,sp),x
 382                     ; 131     if ((8U * A) >= ((lsifreqkhz - (8U * A)) * (1U + (2U * A))))
 384  00a3 58            	sllw	x
 385  00a4 58            	sllw	x
 386  00a5 58            	sllw	x
 387  00a6 1f01          	ldw	(OFST-5,sp),x
 389  00a8 1e03          	ldw	x,(OFST-3,sp)
 390  00aa 72f001        	subw	x,(OFST-5,sp)
 391  00ad 1605          	ldw	y,(OFST-1,sp)
 392  00af 9058          	sllw	y
 393  00b1 905c          	incw	y
 394  00b3 cd0000        	call	c_imul
 396  00b6 1605          	ldw	y,(OFST-1,sp)
 397  00b8 9058          	sllw	y
 398  00ba 9058          	sllw	y
 399  00bc bf00          	ldw	c_x,x
 400  00be 9058          	sllw	y
 401  00c0 90b300        	cpw	y,c_x
 402  00c3 7b06          	ld	a,(OFST+0,sp)
 403  00c5 2504          	jrult	L531
 404                     ; 133         BEEP->CSR |= (uint8_t)(A - 2U);
 406  00c7 a002          	sub	a,#2
 408  00c9 2001          	jra	L731
 409  00cb               L531:
 410                     ; 137         BEEP->CSR |= (uint8_t)(A - 1U);
 412  00cb 4a            	dec	a
 413  00cc               L731:
 414  00cc ca50f3        	or	a,20723
 415  00cf c750f3        	ld	20723,a
 416                     ; 139 }
 419  00d2 5b06          	addw	sp,#6
 420  00d4 81            	ret	
 433                     	xdef	_BEEP_LSICalibrationConfig
 434                     	xdef	_BEEP_Cmd
 435                     	xdef	_BEEP_Init
 436                     	xdef	_BEEP_DeInit
 437                     	xref	_assert_failed
 438                     	switch	.const
 439  000c               L15:
 440  000c 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
 441  001e 6965735c7374  	dc.b	"ies\stm8s_stdperip"
 442  0030 685f64726976  	dc.b	"h_driver\src\stm8s"
 443  0042 5f626565702e  	dc.b	"_beep.c",0
 444                     	xref.b	c_lreg
 445                     	xref.b	c_x
 465                     	xref	c_imul
 466                     	xref	c_ludv
 467                     	xref	c_lcmp
 468                     	xref	c_ltor
 469                     	end
