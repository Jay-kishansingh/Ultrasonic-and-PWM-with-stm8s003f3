   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.8.1 - 09 Jan 2023
   3                     ; Generator (Limited) V4.5.5 - 08 Nov 2022
   4                     ; Optimizer V4.5.5 - 08 Nov 2022
  20                     .const:	section	.text
  21  0000               _APR_Array:
  22  0000 00            	dc.b	0
  23  0001 1e            	dc.b	30
  24  0002 1e            	dc.b	30
  25  0003 1e            	dc.b	30
  26  0004 1e            	dc.b	30
  27  0005 1e            	dc.b	30
  28  0006 1e            	dc.b	30
  29  0007 1e            	dc.b	30
  30  0008 1e            	dc.b	30
  31  0009 1e            	dc.b	30
  32  000a 1e            	dc.b	30
  33  000b 1e            	dc.b	30
  34  000c 1e            	dc.b	30
  35  000d 3d            	dc.b	61
  36  000e 17            	dc.b	23
  37  000f 17            	dc.b	23
  38  0010 3e            	dc.b	62
  39  0011               _TBR_Array:
  40  0011 00            	dc.b	0
  41  0012 01            	dc.b	1
  42  0013 02            	dc.b	2
  43  0014 03            	dc.b	3
  44  0015 04            	dc.b	4
  45  0016 05            	dc.b	5
  46  0017 06            	dc.b	6
  47  0018 07            	dc.b	7
  48  0019 08            	dc.b	8
  49  001a 09            	dc.b	9
  50  001b 0a            	dc.b	10
  51  001c 0b            	dc.b	11
  52  001d 0c            	dc.b	12
  53  001e 0c            	dc.b	12
  54  001f 0e            	dc.b	14
  55  0020 0f            	dc.b	15
  56  0021 0f            	dc.b	15
  85                     ; 67 void AWU_DeInit(void)
  85                     ; 68 {
  87                     	switch	.text
  88  0000               _AWU_DeInit:
  92                     ; 69     AWU->CSR = AWU_CSR_RESET_VALUE;
  94  0000 725f50f0      	clr	20720
  95                     ; 70     AWU->APR = AWU_APR_RESET_VALUE;
  97  0004 353f50f1      	mov	20721,#63
  98                     ; 71     AWU->TBR = AWU_TBR_RESET_VALUE;
 100  0008 725f50f2      	clr	20722
 101                     ; 72 }
 104  000c 81            	ret	
 267                     ; 82 void AWU_Init(AWU_Timebase_TypeDef AWU_TimeBase)
 267                     ; 83 {
 268                     	switch	.text
 269  000d               _AWU_Init:
 271  000d 88            	push	a
 272       00000000      OFST:	set	0
 275                     ; 86     assert_param(IS_AWU_TIMEBASE_OK(AWU_TimeBase));
 277  000e 4d            	tnz	a
 278  000f 274e          	jreq	L41
 279  0011 a101          	cp	a,#1
 280  0013 274a          	jreq	L41
 281  0015 a102          	cp	a,#2
 282  0017 2746          	jreq	L41
 283  0019 a103          	cp	a,#3
 284  001b 2742          	jreq	L41
 285  001d a104          	cp	a,#4
 286  001f 273e          	jreq	L41
 287  0021 a105          	cp	a,#5
 288  0023 273a          	jreq	L41
 289  0025 a106          	cp	a,#6
 290  0027 2736          	jreq	L41
 291  0029 a107          	cp	a,#7
 292  002b 2732          	jreq	L41
 293  002d a108          	cp	a,#8
 294  002f 272e          	jreq	L41
 295  0031 a109          	cp	a,#9
 296  0033 272a          	jreq	L41
 297  0035 a10a          	cp	a,#10
 298  0037 2726          	jreq	L41
 299  0039 a10b          	cp	a,#11
 300  003b 2722          	jreq	L41
 301  003d a10c          	cp	a,#12
 302  003f 271e          	jreq	L41
 303  0041 a10d          	cp	a,#13
 304  0043 271a          	jreq	L41
 305  0045 a10e          	cp	a,#14
 306  0047 2716          	jreq	L41
 307  0049 a10f          	cp	a,#15
 308  004b 2712          	jreq	L41
 309  004d a110          	cp	a,#16
 310  004f 270e          	jreq	L41
 311  0051 ae0056        	ldw	x,#86
 312  0054 89            	pushw	x
 313  0055 5f            	clrw	x
 314  0056 89            	pushw	x
 315  0057 ae002e        	ldw	x,#L501
 316  005a cd0000        	call	_assert_failed
 318  005d 5b04          	addw	sp,#4
 319  005f               L41:
 320                     ; 89     AWU->CSR |= AWU_CSR_AWUEN;
 322  005f 721850f0      	bset	20720,#4
 323                     ; 92     AWU->TBR &= (uint8_t)(~AWU_TBR_AWUTB);
 325  0063 c650f2        	ld	a,20722
 326  0066 a4f0          	and	a,#240
 327  0068 c750f2        	ld	20722,a
 328                     ; 93     AWU->TBR |= TBR_Array[(uint8_t)AWU_TimeBase];
 330  006b 7b01          	ld	a,(OFST+1,sp)
 331  006d 5f            	clrw	x
 332  006e 97            	ld	xl,a
 333  006f c650f2        	ld	a,20722
 334  0072 da0011        	or	a,(_TBR_Array,x)
 335  0075 c750f2        	ld	20722,a
 336                     ; 96     AWU->APR &= (uint8_t)(~AWU_APR_APR);
 338  0078 c650f1        	ld	a,20721
 339  007b a4c0          	and	a,#192
 340  007d c750f1        	ld	20721,a
 341                     ; 97     AWU->APR |= APR_Array[(uint8_t)AWU_TimeBase];
 343  0080 7b01          	ld	a,(OFST+1,sp)
 344  0082 5f            	clrw	x
 345  0083 97            	ld	xl,a
 346  0084 c650f1        	ld	a,20721
 347  0087 da0000        	or	a,(_APR_Array,x)
 348  008a c750f1        	ld	20721,a
 349                     ; 99 }
 352  008d 84            	pop	a
 353  008e 81            	ret	
 408                     ; 108 void AWU_Cmd(FunctionalState NewState)
 408                     ; 109 {
 409                     	switch	.text
 410  008f               _AWU_Cmd:
 414                     ; 110     if (NewState != DISABLE)
 416  008f 4d            	tnz	a
 417  0090 2705          	jreq	L531
 418                     ; 113         AWU->CSR |= AWU_CSR_AWUEN;
 420  0092 721850f0      	bset	20720,#4
 423  0096 81            	ret	
 424  0097               L531:
 425                     ; 118         AWU->CSR &= (uint8_t)(~AWU_CSR_AWUEN);
 427  0097 721950f0      	bres	20720,#4
 428                     ; 120 }
 431  009b 81            	ret	
 479                     	switch	.const
 480  0022               L62:
 481  0022 0001adb0      	dc.l	110000
 482  0026               L03:
 483  0026 000249f1      	dc.l	150001
 484  002a               L63:
 485  002a 000003e8      	dc.l	1000
 486                     ; 135 void AWU_LSICalibrationConfig(uint32_t LSIFreqHz)
 486                     ; 136 {
 487                     	switch	.text
 488  009c               _AWU_LSICalibrationConfig:
 490  009c 5206          	subw	sp,#6
 491       00000006      OFST:	set	6
 494                     ; 138     uint16_t lsifreqkhz = 0x0;
 496                     ; 139     uint16_t A = 0x0;
 498                     ; 142     assert_param(IS_LSI_FREQUENCY_OK(LSIFreqHz));
 500  009e 96            	ldw	x,sp
 501  009f 1c0009        	addw	x,#OFST+3
 502  00a2 cd0000        	call	c_ltor
 504  00a5 ae0022        	ldw	x,#L62
 505  00a8 cd0000        	call	c_lcmp
 507  00ab 250f          	jrult	L42
 508  00ad 96            	ldw	x,sp
 509  00ae 1c0009        	addw	x,#OFST+3
 510  00b1 cd0000        	call	c_ltor
 512  00b4 ae0026        	ldw	x,#L03
 513  00b7 cd0000        	call	c_lcmp
 515  00ba 250e          	jrult	L23
 516  00bc               L42:
 517  00bc ae008e        	ldw	x,#142
 518  00bf 89            	pushw	x
 519  00c0 5f            	clrw	x
 520  00c1 89            	pushw	x
 521  00c2 ae002e        	ldw	x,#L501
 522  00c5 cd0000        	call	_assert_failed
 524  00c8 5b04          	addw	sp,#4
 525  00ca               L23:
 526                     ; 144     lsifreqkhz = (uint16_t)(LSIFreqHz / 1000); /* Converts value in kHz */
 528  00ca 96            	ldw	x,sp
 529  00cb 1c0009        	addw	x,#OFST+3
 530  00ce cd0000        	call	c_ltor
 532  00d1 ae002a        	ldw	x,#L63
 533  00d4 cd0000        	call	c_ludv
 535  00d7 be02          	ldw	x,c_lreg+2
 536  00d9 1f03          	ldw	(OFST-3,sp),x
 538                     ; 148     A = (uint16_t)(lsifreqkhz >> 2U); /* Division by 4, keep integer part only */
 540  00db 54            	srlw	x
 541  00dc 54            	srlw	x
 542  00dd 1f05          	ldw	(OFST-1,sp),x
 544                     ; 150     if ((4U * A) >= ((lsifreqkhz - (4U * A)) * (1U + (2U * A))))
 546  00df 58            	sllw	x
 547  00e0 58            	sllw	x
 548  00e1 1f01          	ldw	(OFST-5,sp),x
 550  00e3 1e03          	ldw	x,(OFST-3,sp)
 551  00e5 72f001        	subw	x,(OFST-5,sp)
 552  00e8 1605          	ldw	y,(OFST-1,sp)
 553  00ea 9058          	sllw	y
 554  00ec 905c          	incw	y
 555  00ee cd0000        	call	c_imul
 557  00f1 1605          	ldw	y,(OFST-1,sp)
 558  00f3 9058          	sllw	y
 559  00f5 bf00          	ldw	c_x,x
 560  00f7 9058          	sllw	y
 561  00f9 90b300        	cpw	y,c_x
 562  00fc 7b06          	ld	a,(OFST+0,sp)
 563  00fe 2504          	jrult	L161
 564                     ; 152         AWU->APR = (uint8_t)(A - 2U);
 566  0100 a002          	sub	a,#2
 568  0102 2001          	jra	L361
 569  0104               L161:
 570                     ; 156         AWU->APR = (uint8_t)(A - 1U);
 572  0104 4a            	dec	a
 573  0105               L361:
 574  0105 c750f1        	ld	20721,a
 575                     ; 158 }
 578  0108 5b06          	addw	sp,#6
 579  010a 81            	ret	
 602                     ; 165 void AWU_IdleModeEnable(void)
 602                     ; 166 {
 603                     	switch	.text
 604  010b               _AWU_IdleModeEnable:
 608                     ; 168     AWU->CSR &= (uint8_t)(~AWU_CSR_AWUEN);
 610  010b 721950f0      	bres	20720,#4
 611                     ; 171     AWU->TBR = (uint8_t)(~AWU_TBR_AWUTB);
 613  010f 35f050f2      	mov	20722,#240
 614                     ; 172 }
 617  0113 81            	ret	
 661                     ; 180 FlagStatus AWU_GetFlagStatus(void)
 661                     ; 181 {
 662                     	switch	.text
 663  0114               _AWU_GetFlagStatus:
 667                     ; 182     return((FlagStatus)(((uint8_t)(AWU->CSR & AWU_CSR_AWUF) == (uint8_t)0x00) ? RESET : SET));
 669  0114 720a50f002    	btjt	20720,#5,L44
 670  0119 4f            	clr	a
 672  011a 81            	ret	
 673  011b               L44:
 674  011b a601          	ld	a,#1
 677  011d 81            	ret	
 712                     	xdef	_TBR_Array
 713                     	xdef	_APR_Array
 714                     	xdef	_AWU_GetFlagStatus
 715                     	xdef	_AWU_IdleModeEnable
 716                     	xdef	_AWU_LSICalibrationConfig
 717                     	xdef	_AWU_Cmd
 718                     	xdef	_AWU_Init
 719                     	xdef	_AWU_DeInit
 720                     	xref	_assert_failed
 721                     	switch	.const
 722  002e               L501:
 723  002e 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
 724  0040 6965735c7374  	dc.b	"ies\stm8s_stdperip"
 725  0052 685f64726976  	dc.b	"h_driver\src\stm8s"
 726  0064 5f6177752e63  	dc.b	"_awu.c",0
 727                     	xref.b	c_lreg
 728                     	xref.b	c_x
 748                     	xref	c_imul
 749                     	xref	c_ludv
 750                     	xref	c_lcmp
 751                     	xref	c_ltor
 752                     	end
