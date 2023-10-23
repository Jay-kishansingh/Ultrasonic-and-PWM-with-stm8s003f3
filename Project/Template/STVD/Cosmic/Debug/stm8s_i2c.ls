   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.8.1 - 09 Jan 2023
   3                     ; Generator (Limited) V4.5.5 - 08 Nov 2022
   4                     ; Optimizer V4.5.5 - 08 Nov 2022
  48                     ; 61 void I2C_DeInit(void)
  48                     ; 62 {
  50                     	switch	.text
  51  0000               _I2C_DeInit:
  55                     ; 63   I2C->CR1 = I2C_CR1_RESET_VALUE;
  57  0000 725f5210      	clr	21008
  58                     ; 64   I2C->CR2 = I2C_CR2_RESET_VALUE;
  60  0004 725f5211      	clr	21009
  61                     ; 65   I2C->FREQR = I2C_FREQR_RESET_VALUE;
  63  0008 725f5212      	clr	21010
  64                     ; 66   I2C->OARL = I2C_OARL_RESET_VALUE;
  66  000c 725f5213      	clr	21011
  67                     ; 67   I2C->OARH = I2C_OARH_RESET_VALUE;
  69  0010 725f5214      	clr	21012
  70                     ; 68   I2C->ITR = I2C_ITR_RESET_VALUE;
  72  0014 725f521a      	clr	21018
  73                     ; 69   I2C->CCRL = I2C_CCRL_RESET_VALUE;
  75  0018 725f521b      	clr	21019
  76                     ; 70   I2C->CCRH = I2C_CCRH_RESET_VALUE;
  78  001c 725f521c      	clr	21020
  79                     ; 71   I2C->TRISER = I2C_TRISER_RESET_VALUE;
  81  0020 3502521d      	mov	21021,#2
  82                     ; 72 }
  85  0024 81            	ret	
 253                     .const:	section	.text
 254  0000               L65:
 255  0000 00061a81      	dc.l	400001
 256  0004               L46:
 257  0004 000186a1      	dc.l	100001
 258  0008               L66:
 259  0008 000f4240      	dc.l	1000000
 260                     ; 90 void I2C_Init(uint32_t OutputClockFrequencyHz, uint16_t OwnAddress, 
 260                     ; 91               I2C_DutyCycle_TypeDef I2C_DutyCycle, I2C_Ack_TypeDef Ack, 
 260                     ; 92               I2C_AddMode_TypeDef AddMode, uint8_t InputClockFrequencyMHz )
 260                     ; 93 {
 261                     	switch	.text
 262  0025               _I2C_Init:
 264  0025 5209          	subw	sp,#9
 265       00000009      OFST:	set	9
 268                     ; 94   uint16_t result = 0x0004;
 270                     ; 95   uint16_t tmpval = 0;
 272                     ; 96   uint8_t tmpccrh = 0;
 274  0027 0f07          	clr	(OFST-2,sp)
 276                     ; 99   assert_param(IS_I2C_ACK_OK(Ack));
 278  0029 7b13          	ld	a,(OFST+10,sp)
 279  002b 270e          	jreq	L41
 280  002d a101          	cp	a,#1
 281  002f 270a          	jreq	L41
 282  0031 a102          	cp	a,#2
 283  0033 2706          	jreq	L41
 284  0035 ae0063        	ldw	x,#99
 285  0038 cd017d        	call	LC001
 286  003b               L41:
 287                     ; 100   assert_param(IS_I2C_ADDMODE_OK(AddMode));
 289  003b 7b14          	ld	a,(OFST+11,sp)
 290  003d 270a          	jreq	L42
 291  003f a180          	cp	a,#128
 292  0041 2706          	jreq	L42
 293  0043 ae0064        	ldw	x,#100
 294  0046 cd017d        	call	LC001
 295  0049               L42:
 296                     ; 101   assert_param(IS_I2C_OWN_ADDRESS_OK(OwnAddress));
 298  0049 1e10          	ldw	x,(OFST+7,sp)
 299  004b a30400        	cpw	x,#1024
 300  004e 2506          	jrult	L23
 301  0050 ae0065        	ldw	x,#101
 302  0053 cd017d        	call	LC001
 303  0056               L23:
 304                     ; 102   assert_param(IS_I2C_DUTYCYCLE_OK(I2C_DutyCycle));  
 306  0056 7b12          	ld	a,(OFST+9,sp)
 307  0058 270a          	jreq	L24
 308  005a a140          	cp	a,#64
 309  005c 2706          	jreq	L24
 310  005e ae0066        	ldw	x,#102
 311  0061 cd017d        	call	LC001
 312  0064               L24:
 313                     ; 103   assert_param(IS_I2C_INPUT_CLOCK_FREQ_OK(InputClockFrequencyMHz));
 315  0064 7b15          	ld	a,(OFST+12,sp)
 316  0066 2704          	jreq	L64
 317  0068 a111          	cp	a,#17
 318  006a 2506          	jrult	L05
 319  006c               L64:
 320  006c ae0067        	ldw	x,#103
 321  006f cd017d        	call	LC001
 322  0072               L05:
 323                     ; 104   assert_param(IS_I2C_OUTPUT_CLOCK_FREQ_OK(OutputClockFrequencyHz));
 325  0072 96            	ldw	x,sp
 326  0073 1c000c        	addw	x,#OFST+3
 327  0076 cd0000        	call	c_lzmp
 329  0079 270f          	jreq	L45
 330  007b 96            	ldw	x,sp
 331  007c 1c000c        	addw	x,#OFST+3
 332  007f cd0000        	call	c_ltor
 334  0082 ae0000        	ldw	x,#L65
 335  0085 cd0000        	call	c_lcmp
 337  0088 2506          	jrult	L06
 338  008a               L45:
 339  008a ae0068        	ldw	x,#104
 340  008d cd017d        	call	LC001
 341  0090               L06:
 342                     ; 109   I2C->FREQR &= (uint8_t)(~I2C_FREQR_FREQ);
 344  0090 c65212        	ld	a,21010
 345  0093 a4c0          	and	a,#192
 346  0095 c75212        	ld	21010,a
 347                     ; 111   I2C->FREQR |= InputClockFrequencyMHz;
 349  0098 c65212        	ld	a,21010
 350  009b 1a15          	or	a,(OFST+12,sp)
 351  009d c75212        	ld	21010,a
 352                     ; 115   I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
 354  00a0 72115210      	bres	21008,#0
 355                     ; 118   I2C->CCRH &= (uint8_t)(~(I2C_CCRH_FS | I2C_CCRH_DUTY | I2C_CCRH_CCR));
 357  00a4 c6521c        	ld	a,21020
 358  00a7 a430          	and	a,#48
 359  00a9 c7521c        	ld	21020,a
 360                     ; 119   I2C->CCRL &= (uint8_t)(~I2C_CCRL_CCR);
 362  00ac 725f521b      	clr	21019
 363                     ; 122   if (OutputClockFrequencyHz > I2C_MAX_STANDARD_FREQ) /* FAST MODE */
 365  00b0 96            	ldw	x,sp
 366  00b1 1c000c        	addw	x,#OFST+3
 367  00b4 cd0000        	call	c_ltor
 369  00b7 ae0004        	ldw	x,#L46
 370  00ba cd0000        	call	c_lcmp
 372  00bd 2560          	jrult	L711
 373                     ; 125     tmpccrh = I2C_CCRH_FS;
 375  00bf a680          	ld	a,#128
 376  00c1 6b07          	ld	(OFST-2,sp),a
 378                     ; 127     if (I2C_DutyCycle == I2C_DUTYCYCLE_2)
 380  00c3 96            	ldw	x,sp
 381  00c4 0d12          	tnz	(OFST+9,sp)
 382  00c6 261d          	jrne	L121
 383                     ; 130       result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 3));
 385  00c8 1c000c        	addw	x,#OFST+3
 386  00cb cd0000        	call	c_ltor
 388  00ce a603          	ld	a,#3
 389  00d0 cd0000        	call	c_smul
 391  00d3 96            	ldw	x,sp
 392  00d4 5c            	incw	x
 393  00d5 cd0000        	call	c_rtol
 396  00d8 7b15          	ld	a,(OFST+12,sp)
 397  00da cd0189        	call	LC002
 399  00dd 96            	ldw	x,sp
 400  00de cd0197        	call	LC003
 401  00e1 1f08          	ldw	(OFST-1,sp),x
 404  00e3 2021          	jra	L321
 405  00e5               L121:
 406                     ; 135       result = (uint16_t) ((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz * 25));
 408  00e5 1c000c        	addw	x,#OFST+3
 409  00e8 cd0000        	call	c_ltor
 411  00eb a619          	ld	a,#25
 412  00ed cd0000        	call	c_smul
 414  00f0 96            	ldw	x,sp
 415  00f1 5c            	incw	x
 416  00f2 cd0000        	call	c_rtol
 419  00f5 7b15          	ld	a,(OFST+12,sp)
 420  00f7 cd0189        	call	LC002
 422  00fa 96            	ldw	x,sp
 423  00fb cd0197        	call	LC003
 424  00fe 1f08          	ldw	(OFST-1,sp),x
 426                     ; 137       tmpccrh |= I2C_CCRH_DUTY;
 428  0100 7b07          	ld	a,(OFST-2,sp)
 429  0102 aa40          	or	a,#64
 430  0104 6b07          	ld	(OFST-2,sp),a
 432  0106               L321:
 433                     ; 141     if (result < (uint16_t)0x01)
 435  0106 1e08          	ldw	x,(OFST-1,sp)
 436  0108 2603          	jrne	L521
 437                     ; 144       result = (uint16_t)0x0001;
 439  010a 5c            	incw	x
 440  010b 1f08          	ldw	(OFST-1,sp),x
 442  010d               L521:
 443                     ; 150     tmpval = ((InputClockFrequencyMHz * 3) / 10) + 1;
 445  010d 7b15          	ld	a,(OFST+12,sp)
 446  010f 97            	ld	xl,a
 447  0110 a603          	ld	a,#3
 448  0112 42            	mul	x,a
 449  0113 a60a          	ld	a,#10
 450  0115 cd0000        	call	c_sdivx
 452  0118 5c            	incw	x
 453  0119 1f05          	ldw	(OFST-4,sp),x
 455                     ; 151     I2C->TRISER = (uint8_t)tmpval;
 457  011b 7b06          	ld	a,(OFST-3,sp)
 459  011d 2028          	jra	L721
 460  011f               L711:
 461                     ; 158     result = (uint16_t)((InputClockFrequencyMHz * 1000000) / (OutputClockFrequencyHz << (uint8_t)1));
 463  011f 96            	ldw	x,sp
 464  0120 1c000c        	addw	x,#OFST+3
 465  0123 cd0000        	call	c_ltor
 467  0126 3803          	sll	c_lreg+3
 468  0128 3902          	rlc	c_lreg+2
 469  012a 3901          	rlc	c_lreg+1
 470  012c 96            	ldw	x,sp
 471  012d 3900          	rlc	c_lreg
 472  012f 5c            	incw	x
 473  0130 cd0000        	call	c_rtol
 476  0133 7b15          	ld	a,(OFST+12,sp)
 477  0135 ad52          	call	LC002
 479  0137 96            	ldw	x,sp
 480  0138 ad5d          	call	LC003
 482                     ; 161     if (result < (uint16_t)0x0004)
 484  013a a30004        	cpw	x,#4
 485  013d 2403          	jruge	L131
 486                     ; 164       result = (uint16_t)0x0004;
 488  013f ae0004        	ldw	x,#4
 490  0142               L131:
 491  0142 1f08          	ldw	(OFST-1,sp),x
 492                     ; 170     I2C->TRISER = (uint8_t)(InputClockFrequencyMHz + (uint8_t)1);
 494  0144 7b15          	ld	a,(OFST+12,sp)
 495  0146 4c            	inc	a
 496  0147               L721:
 497  0147 c7521d        	ld	21021,a
 498                     ; 175   I2C->CCRL = (uint8_t)result;
 500  014a 7b09          	ld	a,(OFST+0,sp)
 501  014c c7521b        	ld	21019,a
 502                     ; 176   I2C->CCRH = (uint8_t)((uint8_t)((uint8_t)(result >> 8) & I2C_CCRH_CCR) | tmpccrh);
 504  014f 7b08          	ld	a,(OFST-1,sp)
 505  0151 a40f          	and	a,#15
 506  0153 1a07          	or	a,(OFST-2,sp)
 507  0155 c7521c        	ld	21020,a
 508                     ; 179   I2C->CR1 |= I2C_CR1_PE;
 510  0158 72105210      	bset	21008,#0
 511                     ; 182   I2C_AcknowledgeConfig(Ack);
 513  015c 7b13          	ld	a,(OFST+10,sp)
 514  015e cd027c        	call	_I2C_AcknowledgeConfig
 516                     ; 185   I2C->OARL = (uint8_t)(OwnAddress);
 518  0161 7b11          	ld	a,(OFST+8,sp)
 519  0163 c75213        	ld	21011,a
 520                     ; 186   I2C->OARH = (uint8_t)((uint8_t)(AddMode | I2C_OARH_ADDCONF) |
 520                     ; 187                    (uint8_t)((OwnAddress & (uint16_t)0x0300) >> (uint8_t)7));
 522  0166 1e10          	ldw	x,(OFST+7,sp)
 523  0168 4f            	clr	a
 524  0169 01            	rrwa	x,a
 525  016a 48            	sll	a
 526  016b 01            	rrwa	x,a
 527  016c 49            	rlc	a
 528  016d a406          	and	a,#6
 529  016f 6b04          	ld	(OFST-5,sp),a
 531  0171 7b14          	ld	a,(OFST+11,sp)
 532  0173 aa40          	or	a,#64
 533  0175 1a04          	or	a,(OFST-5,sp)
 534  0177 c75214        	ld	21012,a
 535                     ; 188 }
 538  017a 5b09          	addw	sp,#9
 539  017c 81            	ret	
 540  017d               LC001:
 541  017d 89            	pushw	x
 542  017e 5f            	clrw	x
 543  017f 89            	pushw	x
 544  0180 ae000c        	ldw	x,#L511
 545  0183 cd0000        	call	_assert_failed
 547  0186 5b04          	addw	sp,#4
 548  0188 81            	ret	
 549  0189               LC002:
 550  0189 b703          	ld	c_lreg+3,a
 551  018b 3f02          	clr	c_lreg+2
 552  018d 3f01          	clr	c_lreg+1
 553  018f 3f00          	clr	c_lreg
 554  0191 ae0008        	ldw	x,#L66
 555  0194 cc0000        	jp	c_lmul
 556  0197               LC003:
 557  0197 5c            	incw	x
 558  0198 cd0000        	call	c_ludv
 560  019b be02          	ldw	x,c_lreg+2
 561  019d 81            	ret	
 617                     ; 196 void I2C_Cmd(FunctionalState NewState)
 617                     ; 197 {
 618                     	switch	.text
 619  019e               _I2C_Cmd:
 621  019e 88            	push	a
 622       00000000      OFST:	set	0
 625                     ; 200   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 627  019f 4d            	tnz	a
 628  01a0 2711          	jreq	L001
 629  01a2 4a            	dec	a
 630  01a3 270e          	jreq	L001
 631  01a5 ae00c8        	ldw	x,#200
 632  01a8 89            	pushw	x
 633  01a9 5f            	clrw	x
 634  01aa 89            	pushw	x
 635  01ab ae000c        	ldw	x,#L511
 636  01ae cd0000        	call	_assert_failed
 638  01b1 5b04          	addw	sp,#4
 639  01b3               L001:
 640                     ; 202   if (NewState != DISABLE)
 642  01b3 7b01          	ld	a,(OFST+1,sp)
 643  01b5 2706          	jreq	L161
 644                     ; 205     I2C->CR1 |= I2C_CR1_PE;
 646  01b7 72105210      	bset	21008,#0
 648  01bb 2004          	jra	L361
 649  01bd               L161:
 650                     ; 210     I2C->CR1 &= (uint8_t)(~I2C_CR1_PE);
 652  01bd 72115210      	bres	21008,#0
 653  01c1               L361:
 654                     ; 212 }
 657  01c1 84            	pop	a
 658  01c2 81            	ret	
 694                     ; 220 void I2C_GeneralCallCmd(FunctionalState NewState)
 694                     ; 221 {
 695                     	switch	.text
 696  01c3               _I2C_GeneralCallCmd:
 698  01c3 88            	push	a
 699       00000000      OFST:	set	0
 702                     ; 224   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 704  01c4 4d            	tnz	a
 705  01c5 2711          	jreq	L211
 706  01c7 4a            	dec	a
 707  01c8 270e          	jreq	L211
 708  01ca ae00e0        	ldw	x,#224
 709  01cd 89            	pushw	x
 710  01ce 5f            	clrw	x
 711  01cf 89            	pushw	x
 712  01d0 ae000c        	ldw	x,#L511
 713  01d3 cd0000        	call	_assert_failed
 715  01d6 5b04          	addw	sp,#4
 716  01d8               L211:
 717                     ; 226   if (NewState != DISABLE)
 719  01d8 7b01          	ld	a,(OFST+1,sp)
 720  01da 2706          	jreq	L302
 721                     ; 229     I2C->CR1 |= I2C_CR1_ENGC;
 723  01dc 721c5210      	bset	21008,#6
 725  01e0 2004          	jra	L502
 726  01e2               L302:
 727                     ; 234     I2C->CR1 &= (uint8_t)(~I2C_CR1_ENGC);
 729  01e2 721d5210      	bres	21008,#6
 730  01e6               L502:
 731                     ; 236 }
 734  01e6 84            	pop	a
 735  01e7 81            	ret	
 771                     ; 246 void I2C_GenerateSTART(FunctionalState NewState)
 771                     ; 247 {
 772                     	switch	.text
 773  01e8               _I2C_GenerateSTART:
 775  01e8 88            	push	a
 776       00000000      OFST:	set	0
 779                     ; 250   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 781  01e9 4d            	tnz	a
 782  01ea 2711          	jreq	L421
 783  01ec 4a            	dec	a
 784  01ed 270e          	jreq	L421
 785  01ef ae00fa        	ldw	x,#250
 786  01f2 89            	pushw	x
 787  01f3 5f            	clrw	x
 788  01f4 89            	pushw	x
 789  01f5 ae000c        	ldw	x,#L511
 790  01f8 cd0000        	call	_assert_failed
 792  01fb 5b04          	addw	sp,#4
 793  01fd               L421:
 794                     ; 252   if (NewState != DISABLE)
 796  01fd 7b01          	ld	a,(OFST+1,sp)
 797  01ff 2706          	jreq	L522
 798                     ; 255     I2C->CR2 |= I2C_CR2_START;
 800  0201 72105211      	bset	21009,#0
 802  0205 2004          	jra	L722
 803  0207               L522:
 804                     ; 260     I2C->CR2 &= (uint8_t)(~I2C_CR2_START);
 806  0207 72115211      	bres	21009,#0
 807  020b               L722:
 808                     ; 262 }
 811  020b 84            	pop	a
 812  020c 81            	ret	
 848                     ; 270 void I2C_GenerateSTOP(FunctionalState NewState)
 848                     ; 271 {
 849                     	switch	.text
 850  020d               _I2C_GenerateSTOP:
 852  020d 88            	push	a
 853       00000000      OFST:	set	0
 856                     ; 274   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 858  020e 4d            	tnz	a
 859  020f 2711          	jreq	L631
 860  0211 4a            	dec	a
 861  0212 270e          	jreq	L631
 862  0214 ae0112        	ldw	x,#274
 863  0217 89            	pushw	x
 864  0218 5f            	clrw	x
 865  0219 89            	pushw	x
 866  021a ae000c        	ldw	x,#L511
 867  021d cd0000        	call	_assert_failed
 869  0220 5b04          	addw	sp,#4
 870  0222               L631:
 871                     ; 276   if (NewState != DISABLE)
 873  0222 7b01          	ld	a,(OFST+1,sp)
 874  0224 2706          	jreq	L742
 875                     ; 279     I2C->CR2 |= I2C_CR2_STOP;
 877  0226 72125211      	bset	21009,#1
 879  022a 2004          	jra	L152
 880  022c               L742:
 881                     ; 284     I2C->CR2 &= (uint8_t)(~I2C_CR2_STOP);
 883  022c 72135211      	bres	21009,#1
 884  0230               L152:
 885                     ; 286 }
 888  0230 84            	pop	a
 889  0231 81            	ret	
 926                     ; 294 void I2C_SoftwareResetCmd(FunctionalState NewState)
 926                     ; 295 {
 927                     	switch	.text
 928  0232               _I2C_SoftwareResetCmd:
 930  0232 88            	push	a
 931       00000000      OFST:	set	0
 934                     ; 297   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 936  0233 4d            	tnz	a
 937  0234 2711          	jreq	L051
 938  0236 4a            	dec	a
 939  0237 270e          	jreq	L051
 940  0239 ae0129        	ldw	x,#297
 941  023c 89            	pushw	x
 942  023d 5f            	clrw	x
 943  023e 89            	pushw	x
 944  023f ae000c        	ldw	x,#L511
 945  0242 cd0000        	call	_assert_failed
 947  0245 5b04          	addw	sp,#4
 948  0247               L051:
 949                     ; 299   if (NewState != DISABLE)
 951  0247 7b01          	ld	a,(OFST+1,sp)
 952  0249 2706          	jreq	L172
 953                     ; 302     I2C->CR2 |= I2C_CR2_SWRST;
 955  024b 721e5211      	bset	21009,#7
 957  024f 2004          	jra	L372
 958  0251               L172:
 959                     ; 307     I2C->CR2 &= (uint8_t)(~I2C_CR2_SWRST);
 961  0251 721f5211      	bres	21009,#7
 962  0255               L372:
 963                     ; 309 }
 966  0255 84            	pop	a
 967  0256 81            	ret	
1004                     ; 318 void I2C_StretchClockCmd(FunctionalState NewState)
1004                     ; 319 {
1005                     	switch	.text
1006  0257               _I2C_StretchClockCmd:
1008  0257 88            	push	a
1009       00000000      OFST:	set	0
1012                     ; 321   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1014  0258 4d            	tnz	a
1015  0259 2711          	jreq	L261
1016  025b 4a            	dec	a
1017  025c 270e          	jreq	L261
1018  025e ae0141        	ldw	x,#321
1019  0261 89            	pushw	x
1020  0262 5f            	clrw	x
1021  0263 89            	pushw	x
1022  0264 ae000c        	ldw	x,#L511
1023  0267 cd0000        	call	_assert_failed
1025  026a 5b04          	addw	sp,#4
1026  026c               L261:
1027                     ; 323   if (NewState != DISABLE)
1029  026c 7b01          	ld	a,(OFST+1,sp)
1030  026e 2706          	jreq	L313
1031                     ; 326     I2C->CR1 &= (uint8_t)(~I2C_CR1_NOSTRETCH);
1033  0270 721f5210      	bres	21008,#7
1035  0274 2004          	jra	L513
1036  0276               L313:
1037                     ; 332     I2C->CR1 |= I2C_CR1_NOSTRETCH;
1039  0276 721e5210      	bset	21008,#7
1040  027a               L513:
1041                     ; 334 }
1044  027a 84            	pop	a
1045  027b 81            	ret	
1082                     ; 343 void I2C_AcknowledgeConfig(I2C_Ack_TypeDef Ack)
1082                     ; 344 {
1083                     	switch	.text
1084  027c               _I2C_AcknowledgeConfig:
1086  027c 88            	push	a
1087       00000000      OFST:	set	0
1090                     ; 347   assert_param(IS_I2C_ACK_OK(Ack));
1092  027d 4d            	tnz	a
1093  027e 2716          	jreq	L471
1094  0280 a101          	cp	a,#1
1095  0282 2712          	jreq	L471
1096  0284 a102          	cp	a,#2
1097  0286 270e          	jreq	L471
1098  0288 ae015b        	ldw	x,#347
1099  028b 89            	pushw	x
1100  028c 5f            	clrw	x
1101  028d 89            	pushw	x
1102  028e ae000c        	ldw	x,#L511
1103  0291 cd0000        	call	_assert_failed
1105  0294 5b04          	addw	sp,#4
1106  0296               L471:
1107                     ; 349   if (Ack == I2C_ACK_NONE)
1109  0296 7b01          	ld	a,(OFST+1,sp)
1110  0298 2606          	jrne	L533
1111                     ; 352     I2C->CR2 &= (uint8_t)(~I2C_CR2_ACK);
1113  029a 72155211      	bres	21009,#2
1115  029e 2011          	jra	L733
1116  02a0               L533:
1117                     ; 357     I2C->CR2 |= I2C_CR2_ACK;
1119  02a0 72145211      	bset	21009,#2
1120                     ; 359     if (Ack == I2C_ACK_CURR)
1122  02a4 4a            	dec	a
1123  02a5 2606          	jrne	L143
1124                     ; 362       I2C->CR2 &= (uint8_t)(~I2C_CR2_POS);
1126  02a7 72175211      	bres	21009,#3
1128  02ab 2004          	jra	L733
1129  02ad               L143:
1130                     ; 367       I2C->CR2 |= I2C_CR2_POS;
1132  02ad 72165211      	bset	21009,#3
1133  02b1               L733:
1134                     ; 370 }
1137  02b1 84            	pop	a
1138  02b2 81            	ret	
1211                     ; 380 void I2C_ITConfig(I2C_IT_TypeDef I2C_IT, FunctionalState NewState)
1211                     ; 381 {
1212                     	switch	.text
1213  02b3               _I2C_ITConfig:
1215  02b3 89            	pushw	x
1216       00000000      OFST:	set	0
1219                     ; 384   assert_param(IS_I2C_INTERRUPT_OK(I2C_IT));
1221  02b4 9e            	ld	a,xh
1222  02b5 4a            	dec	a
1223  02b6 2723          	jreq	L602
1224  02b8 9e            	ld	a,xh
1225  02b9 a102          	cp	a,#2
1226  02bb 271e          	jreq	L602
1227  02bd 9e            	ld	a,xh
1228  02be a104          	cp	a,#4
1229  02c0 2719          	jreq	L602
1230  02c2 9e            	ld	a,xh
1231  02c3 a103          	cp	a,#3
1232  02c5 2714          	jreq	L602
1233  02c7 9e            	ld	a,xh
1234  02c8 a105          	cp	a,#5
1235  02ca 270f          	jreq	L602
1236  02cc 9e            	ld	a,xh
1237  02cd a106          	cp	a,#6
1238  02cf 270a          	jreq	L602
1239  02d1 9e            	ld	a,xh
1240  02d2 a107          	cp	a,#7
1241  02d4 2705          	jreq	L602
1242  02d6 ae0180        	ldw	x,#384
1243  02d9 ad22          	call	LC004
1244  02db               L602:
1245                     ; 385   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1247  02db 7b02          	ld	a,(OFST+2,sp)
1248  02dd 2708          	jreq	L612
1249  02df 4a            	dec	a
1250  02e0 2705          	jreq	L612
1251  02e2 ae0181        	ldw	x,#385
1252  02e5 ad16          	call	LC004
1253  02e7               L612:
1254                     ; 387   if (NewState != DISABLE)
1256  02e7 7b02          	ld	a,(OFST+2,sp)
1257  02e9 2707          	jreq	L104
1258                     ; 390     I2C->ITR |= (uint8_t)I2C_IT;
1260  02eb c6521a        	ld	a,21018
1261  02ee 1a01          	or	a,(OFST+1,sp)
1263  02f0 2006          	jra	L304
1264  02f2               L104:
1265                     ; 395     I2C->ITR &= (uint8_t)(~(uint8_t)I2C_IT);
1267  02f2 7b01          	ld	a,(OFST+1,sp)
1268  02f4 43            	cpl	a
1269  02f5 c4521a        	and	a,21018
1270  02f8               L304:
1271  02f8 c7521a        	ld	21018,a
1272                     ; 397 }
1275  02fb 85            	popw	x
1276  02fc 81            	ret	
1277  02fd               LC004:
1278  02fd 89            	pushw	x
1279  02fe 5f            	clrw	x
1280  02ff 89            	pushw	x
1281  0300 ae000c        	ldw	x,#L511
1282  0303 cd0000        	call	_assert_failed
1284  0306 5b04          	addw	sp,#4
1285  0308 81            	ret	
1322                     ; 405 void I2C_FastModeDutyCycleConfig(I2C_DutyCycle_TypeDef I2C_DutyCycle)
1322                     ; 406 {
1323                     	switch	.text
1324  0309               _I2C_FastModeDutyCycleConfig:
1326  0309 88            	push	a
1327       00000000      OFST:	set	0
1330                     ; 409   assert_param(IS_I2C_DUTYCYCLE_OK(I2C_DutyCycle));
1332  030a 4d            	tnz	a
1333  030b 2712          	jreq	L032
1334  030d a140          	cp	a,#64
1335  030f 270e          	jreq	L032
1336  0311 ae0199        	ldw	x,#409
1337  0314 89            	pushw	x
1338  0315 5f            	clrw	x
1339  0316 89            	pushw	x
1340  0317 ae000c        	ldw	x,#L511
1341  031a cd0000        	call	_assert_failed
1343  031d 5b04          	addw	sp,#4
1344  031f               L032:
1345                     ; 411   if (I2C_DutyCycle == I2C_DUTYCYCLE_16_9)
1347  031f 7b01          	ld	a,(OFST+1,sp)
1348  0321 a140          	cp	a,#64
1349  0323 2606          	jrne	L324
1350                     ; 414     I2C->CCRH |= I2C_CCRH_DUTY;
1352  0325 721c521c      	bset	21020,#6
1354  0329 2004          	jra	L524
1355  032b               L324:
1356                     ; 419     I2C->CCRH &= (uint8_t)(~I2C_CCRH_DUTY);
1358  032b 721d521c      	bres	21020,#6
1359  032f               L524:
1360                     ; 421 }
1363  032f 84            	pop	a
1364  0330 81            	ret	
1387                     ; 428 uint8_t I2C_ReceiveData(void)
1387                     ; 429 {
1388                     	switch	.text
1389  0331               _I2C_ReceiveData:
1393                     ; 431   return ((uint8_t)I2C->DR);
1395  0331 c65216        	ld	a,21014
1398  0334 81            	ret	
1462                     ; 441 void I2C_Send7bitAddress(uint8_t Address, I2C_Direction_TypeDef Direction)
1462                     ; 442 {
1463                     	switch	.text
1464  0335               _I2C_Send7bitAddress:
1466  0335 89            	pushw	x
1467       00000000      OFST:	set	0
1470                     ; 444   assert_param(IS_I2C_ADDRESS_OK(Address));
1472  0336 9e            	ld	a,xh
1473  0337 a501          	bcp	a,#1
1474  0339 2705          	jreq	L242
1475  033b ae01bc        	ldw	x,#444
1476  033e ad19          	call	LC005
1477  0340               L242:
1478                     ; 445   assert_param(IS_I2C_DIRECTION_OK(Direction));
1480  0340 7b02          	ld	a,(OFST+2,sp)
1481  0342 2708          	jreq	L252
1482  0344 4a            	dec	a
1483  0345 2705          	jreq	L252
1484  0347 ae01bd        	ldw	x,#445
1485  034a ad0d          	call	LC005
1486  034c               L252:
1487                     ; 448   Address &= (uint8_t)0xFE;
1489  034c 7b01          	ld	a,(OFST+1,sp)
1490  034e a4fe          	and	a,#254
1491  0350 6b01          	ld	(OFST+1,sp),a
1492                     ; 451   I2C->DR = (uint8_t)(Address | (uint8_t)Direction);
1494  0352 1a02          	or	a,(OFST+2,sp)
1495  0354 c75216        	ld	21014,a
1496                     ; 452 }
1499  0357 85            	popw	x
1500  0358 81            	ret	
1501  0359               LC005:
1502  0359 89            	pushw	x
1503  035a 5f            	clrw	x
1504  035b 89            	pushw	x
1505  035c ae000c        	ldw	x,#L511
1506  035f cd0000        	call	_assert_failed
1508  0362 5b04          	addw	sp,#4
1509  0364 81            	ret	
1541                     ; 459 void I2C_SendData(uint8_t Data)
1541                     ; 460 {
1542                     	switch	.text
1543  0365               _I2C_SendData:
1547                     ; 462   I2C->DR = Data;
1549  0365 c75216        	ld	21014,a
1550                     ; 463 }
1553  0368 81            	ret	
1774                     ; 579 ErrorStatus I2C_CheckEvent(I2C_Event_TypeDef I2C_Event)
1774                     ; 580 {
1775                     	switch	.text
1776  0369               _I2C_CheckEvent:
1778  0369 89            	pushw	x
1779  036a 5206          	subw	sp,#6
1780       00000006      OFST:	set	6
1783                     ; 581   __IO uint16_t lastevent = 0x00;
1785  036c 5f            	clrw	x
1786  036d 1f04          	ldw	(OFST-2,sp),x
1788                     ; 582   uint8_t flag1 = 0x00 ;
1790                     ; 583   uint8_t flag2 = 0x00;
1792                     ; 584   ErrorStatus status = ERROR;
1794                     ; 587   assert_param(IS_I2C_EVENT_OK(I2C_Event));
1796  036f 1e07          	ldw	x,(OFST+1,sp)
1797  0371 a30682        	cpw	x,#1666
1798  0374 275b          	jreq	L662
1799  0376 a30202        	cpw	x,#514
1800  0379 2756          	jreq	L662
1801  037b a31200        	cpw	x,#4608
1802  037e 2751          	jreq	L662
1803  0380 a30240        	cpw	x,#576
1804  0383 274c          	jreq	L662
1805  0385 a30350        	cpw	x,#848
1806  0388 2747          	jreq	L662
1807  038a a30684        	cpw	x,#1668
1808  038d 2742          	jreq	L662
1809  038f a30794        	cpw	x,#1940
1810  0392 273d          	jreq	L662
1811  0394 a30004        	cpw	x,#4
1812  0397 2738          	jreq	L662
1813  0399 a30010        	cpw	x,#16
1814  039c 2733          	jreq	L662
1815  039e a30301        	cpw	x,#769
1816  03a1 272e          	jreq	L662
1817  03a3 a30782        	cpw	x,#1922
1818  03a6 2729          	jreq	L662
1819  03a8 a30302        	cpw	x,#770
1820  03ab 2724          	jreq	L662
1821  03ad a30340        	cpw	x,#832
1822  03b0 271f          	jreq	L662
1823  03b2 a30784        	cpw	x,#1924
1824  03b5 271a          	jreq	L662
1825  03b7 a30780        	cpw	x,#1920
1826  03ba 2715          	jreq	L662
1827  03bc a30308        	cpw	x,#776
1828  03bf 2710          	jreq	L662
1829  03c1 ae024b        	ldw	x,#587
1830  03c4 89            	pushw	x
1831  03c5 5f            	clrw	x
1832  03c6 89            	pushw	x
1833  03c7 ae000c        	ldw	x,#L511
1834  03ca cd0000        	call	_assert_failed
1836  03cd 5b04          	addw	sp,#4
1837  03cf 1e07          	ldw	x,(OFST+1,sp)
1838  03d1               L662:
1839                     ; 589   if (I2C_Event == I2C_EVENT_SLAVE_ACK_FAILURE)
1841  03d1 a30004        	cpw	x,#4
1842  03d4 2609          	jrne	L706
1843                     ; 591     lastevent = I2C->SR2 & I2C_SR2_AF;
1845  03d6 c65218        	ld	a,21016
1846  03d9 a404          	and	a,#4
1847  03db 5f            	clrw	x
1848  03dc 97            	ld	xl,a
1850  03dd 201a          	jra	L116
1851  03df               L706:
1852                     ; 595     flag1 = I2C->SR1;
1854  03df c65217        	ld	a,21015
1855  03e2 6b03          	ld	(OFST-3,sp),a
1857                     ; 596     flag2 = I2C->SR3;
1859  03e4 c65219        	ld	a,21017
1860  03e7 6b06          	ld	(OFST+0,sp),a
1862                     ; 597     lastevent = ((uint16_t)((uint16_t)flag2 << (uint16_t)8) | (uint16_t)flag1);
1864  03e9 5f            	clrw	x
1865  03ea 7b03          	ld	a,(OFST-3,sp)
1866  03ec 97            	ld	xl,a
1867  03ed 1f01          	ldw	(OFST-5,sp),x
1869  03ef 5f            	clrw	x
1870  03f0 7b06          	ld	a,(OFST+0,sp)
1871  03f2 97            	ld	xl,a
1872  03f3 7b02          	ld	a,(OFST-4,sp)
1873  03f5 01            	rrwa	x,a
1874  03f6 1a01          	or	a,(OFST-5,sp)
1875  03f8 01            	rrwa	x,a
1876  03f9               L116:
1877  03f9 1f04          	ldw	(OFST-2,sp),x
1879                     ; 600   if (((uint16_t)lastevent & (uint16_t)I2C_Event) == (uint16_t)I2C_Event)
1881  03fb 1e04          	ldw	x,(OFST-2,sp)
1882  03fd 01            	rrwa	x,a
1883  03fe 1408          	and	a,(OFST+2,sp)
1884  0400 01            	rrwa	x,a
1885  0401 1407          	and	a,(OFST+1,sp)
1886  0403 01            	rrwa	x,a
1887  0404 1307          	cpw	x,(OFST+1,sp)
1888  0406 2604          	jrne	L316
1889                     ; 603     status = SUCCESS;
1891  0408 a601          	ld	a,#1
1894  040a 2001          	jra	L516
1895  040c               L316:
1896                     ; 608     status = ERROR;
1898  040c 4f            	clr	a
1900  040d               L516:
1901                     ; 612   return status;
1905  040d 5b08          	addw	sp,#8
1906  040f 81            	ret	
1955                     ; 629 I2C_Event_TypeDef I2C_GetLastEvent(void)
1955                     ; 630 {
1956                     	switch	.text
1957  0410               _I2C_GetLastEvent:
1959  0410 5206          	subw	sp,#6
1960       00000006      OFST:	set	6
1963                     ; 631   __IO uint16_t lastevent = 0;
1965  0412 5f            	clrw	x
1966  0413 1f05          	ldw	(OFST-1,sp),x
1968                     ; 632   uint16_t flag1 = 0;
1970                     ; 633   uint16_t flag2 = 0;
1972                     ; 635   if ((I2C->SR2 & I2C_SR2_AF) != 0x00)
1974  0415 7205521805    	btjf	21016,#2,L146
1975                     ; 637     lastevent = I2C_EVENT_SLAVE_ACK_FAILURE;
1977  041a ae0004        	ldw	x,#4
1979  041d 2013          	jra	L346
1980  041f               L146:
1981                     ; 642     flag1 = I2C->SR1;
1983  041f c65217        	ld	a,21015
1984  0422 97            	ld	xl,a
1985  0423 1f01          	ldw	(OFST-5,sp),x
1987                     ; 643     flag2 = I2C->SR3;
1989  0425 c65219        	ld	a,21017
1990  0428 5f            	clrw	x
1991  0429 97            	ld	xl,a
1992  042a 1f03          	ldw	(OFST-3,sp),x
1994                     ; 646     lastevent = ((uint16_t)((uint16_t)flag2 << 8) | (uint16_t)flag1);
1996  042c 7b02          	ld	a,(OFST-4,sp)
1997  042e 01            	rrwa	x,a
1998  042f 1a01          	or	a,(OFST-5,sp)
1999  0431 01            	rrwa	x,a
2000  0432               L346:
2001  0432 1f05          	ldw	(OFST-1,sp),x
2003                     ; 649   return (I2C_Event_TypeDef)lastevent;
2005  0434 1e05          	ldw	x,(OFST-1,sp)
2008  0436 5b06          	addw	sp,#6
2009  0438 81            	ret	
2221                     ; 680 FlagStatus I2C_GetFlagStatus(I2C_Flag_TypeDef I2C_Flag)
2221                     ; 681 {
2222                     	switch	.text
2223  0439               _I2C_GetFlagStatus:
2225  0439 89            	pushw	x
2226  043a 89            	pushw	x
2227       00000002      OFST:	set	2
2230                     ; 682   uint8_t tempreg = 0;
2232  043b 0f02          	clr	(OFST+0,sp)
2234                     ; 683   uint8_t regindex = 0;
2236                     ; 684   FlagStatus bitstatus = RESET;
2238                     ; 687   assert_param(IS_I2C_FLAG_OK(I2C_Flag));
2240  043d a30180        	cpw	x,#384
2241  0440 2759          	jreq	L203
2242  0442 a30140        	cpw	x,#320
2243  0445 2754          	jreq	L203
2244  0447 a30110        	cpw	x,#272
2245  044a 274f          	jreq	L203
2246  044c a30108        	cpw	x,#264
2247  044f 274a          	jreq	L203
2248  0451 a30104        	cpw	x,#260
2249  0454 2745          	jreq	L203
2250  0456 a30102        	cpw	x,#258
2251  0459 2740          	jreq	L203
2252  045b a30101        	cpw	x,#257
2253  045e 273b          	jreq	L203
2254  0460 a30220        	cpw	x,#544
2255  0463 2736          	jreq	L203
2256  0465 a30208        	cpw	x,#520
2257  0468 2731          	jreq	L203
2258  046a a30204        	cpw	x,#516
2259  046d 272c          	jreq	L203
2260  046f a30202        	cpw	x,#514
2261  0472 2727          	jreq	L203
2262  0474 a30201        	cpw	x,#513
2263  0477 2722          	jreq	L203
2264  0479 a30310        	cpw	x,#784
2265  047c 271d          	jreq	L203
2266  047e a30304        	cpw	x,#772
2267  0481 2718          	jreq	L203
2268  0483 a30302        	cpw	x,#770
2269  0486 2713          	jreq	L203
2270  0488 a30301        	cpw	x,#769
2271  048b 270e          	jreq	L203
2272  048d ae02af        	ldw	x,#687
2273  0490 89            	pushw	x
2274  0491 5f            	clrw	x
2275  0492 89            	pushw	x
2276  0493 ae000c        	ldw	x,#L511
2277  0496 cd0000        	call	_assert_failed
2279  0499 5b04          	addw	sp,#4
2280  049b               L203:
2281                     ; 690   regindex = (uint8_t)((uint16_t)I2C_Flag >> 8);
2283  049b 7b03          	ld	a,(OFST+1,sp)
2284  049d 6b01          	ld	(OFST-1,sp),a
2286                     ; 692   switch (regindex)
2289                     ; 709     default:
2289                     ; 710       break;
2290  049f 4a            	dec	a
2291  04a0 2708          	jreq	L546
2292  04a2 4a            	dec	a
2293  04a3 270a          	jreq	L746
2294  04a5 4a            	dec	a
2295  04a6 270c          	jreq	L156
2296  04a8 200f          	jra	L167
2297  04aa               L546:
2298                     ; 695     case 0x01:
2298                     ; 696       tempreg = (uint8_t)I2C->SR1;
2300  04aa c65217        	ld	a,21015
2301                     ; 697       break;
2303  04ad 2008          	jp	LC006
2304  04af               L746:
2305                     ; 700     case 0x02:
2305                     ; 701       tempreg = (uint8_t)I2C->SR2;
2307  04af c65218        	ld	a,21016
2308                     ; 702       break;
2310  04b2 2003          	jp	LC006
2311  04b4               L156:
2312                     ; 705     case 0x03:
2312                     ; 706       tempreg = (uint8_t)I2C->SR3;
2314  04b4 c65219        	ld	a,21017
2315  04b7               LC006:
2316  04b7 6b02          	ld	(OFST+0,sp),a
2318                     ; 707       break;
2320                     ; 709     default:
2320                     ; 710       break;
2322  04b9               L167:
2323                     ; 714   if ((tempreg & (uint8_t)I2C_Flag ) != 0)
2325  04b9 7b04          	ld	a,(OFST+2,sp)
2326  04bb 1502          	bcp	a,(OFST+0,sp)
2327  04bd 2704          	jreq	L367
2328                     ; 717     bitstatus = SET;
2330  04bf a601          	ld	a,#1
2333  04c1 2001          	jra	L567
2334  04c3               L367:
2335                     ; 722     bitstatus = RESET;
2337  04c3 4f            	clr	a
2339  04c4               L567:
2340                     ; 725   return bitstatus;
2344  04c4 5b04          	addw	sp,#4
2345  04c6 81            	ret	
2388                     ; 760 void I2C_ClearFlag(I2C_Flag_TypeDef I2C_FLAG)
2388                     ; 761 {
2389                     	switch	.text
2390  04c7               _I2C_ClearFlag:
2392  04c7 89            	pushw	x
2393  04c8 89            	pushw	x
2394       00000002      OFST:	set	2
2397                     ; 762   uint16_t flagpos = 0;
2399                     ; 764   assert_param(IS_I2C_CLEAR_FLAG_OK(I2C_FLAG));
2401  04c9 01            	rrwa	x,a
2402  04ca 9f            	ld	a,xl
2403  04cb a4fd          	and	a,#253
2404  04cd 97            	ld	xl,a
2405  04ce 4f            	clr	a
2406  04cf 02            	rlwa	x,a
2407  04d0 5d            	tnzw	x
2408  04d1 2604          	jrne	L013
2409  04d3 1e03          	ldw	x,(OFST+1,sp)
2410  04d5 260e          	jrne	L213
2411  04d7               L013:
2412  04d7 ae02fc        	ldw	x,#764
2413  04da 89            	pushw	x
2414  04db 5f            	clrw	x
2415  04dc 89            	pushw	x
2416  04dd ae000c        	ldw	x,#L511
2417  04e0 cd0000        	call	_assert_failed
2419  04e3 5b04          	addw	sp,#4
2420  04e5               L213:
2421                     ; 767   flagpos = (uint16_t)I2C_FLAG & FLAG_Mask;
2423  04e5 7b04          	ld	a,(OFST+2,sp)
2424  04e7 5f            	clrw	x
2425  04e8 02            	rlwa	x,a
2426  04e9 1f01          	ldw	(OFST-1,sp),x
2428                     ; 769   I2C->SR2 = (uint8_t)((uint16_t)(~flagpos));
2430  04eb 7b02          	ld	a,(OFST+0,sp)
2431  04ed 43            	cpl	a
2432  04ee c75218        	ld	21016,a
2433                     ; 770 }
2436  04f1 5b04          	addw	sp,#4
2437  04f3 81            	ret	
2602                     ; 792 ITStatus I2C_GetITStatus(I2C_ITPendingBit_TypeDef I2C_ITPendingBit)
2602                     ; 793 {
2603                     	switch	.text
2604  04f4               _I2C_GetITStatus:
2606  04f4 89            	pushw	x
2607  04f5 5204          	subw	sp,#4
2608       00000004      OFST:	set	4
2611                     ; 794   ITStatus bitstatus = RESET;
2613                     ; 795   __IO uint8_t enablestatus = 0;
2615  04f7 0f03          	clr	(OFST-1,sp)
2617                     ; 796   uint16_t tempregister = 0;
2619                     ; 799     assert_param(IS_I2C_ITPENDINGBIT_OK(I2C_ITPendingBit));
2621  04f9 a31680        	cpw	x,#5760
2622  04fc 2745          	jreq	L423
2623  04fe a31640        	cpw	x,#5696
2624  0501 2740          	jreq	L423
2625  0503 a31210        	cpw	x,#4624
2626  0506 273b          	jreq	L423
2627  0508 a31208        	cpw	x,#4616
2628  050b 2736          	jreq	L423
2629  050d a31204        	cpw	x,#4612
2630  0510 2731          	jreq	L423
2631  0512 a31202        	cpw	x,#4610
2632  0515 272c          	jreq	L423
2633  0517 a31201        	cpw	x,#4609
2634  051a 2727          	jreq	L423
2635  051c a32220        	cpw	x,#8736
2636  051f 2722          	jreq	L423
2637  0521 a32108        	cpw	x,#8456
2638  0524 271d          	jreq	L423
2639  0526 a32104        	cpw	x,#8452
2640  0529 2718          	jreq	L423
2641  052b a32102        	cpw	x,#8450
2642  052e 2713          	jreq	L423
2643  0530 a32101        	cpw	x,#8449
2644  0533 270e          	jreq	L423
2645  0535 ae031f        	ldw	x,#799
2646  0538 89            	pushw	x
2647  0539 5f            	clrw	x
2648  053a 89            	pushw	x
2649  053b ae000c        	ldw	x,#L511
2650  053e cd0000        	call	_assert_failed
2652  0541 5b04          	addw	sp,#4
2653  0543               L423:
2654                     ; 801   tempregister = (uint8_t)( ((uint16_t)((uint16_t)I2C_ITPendingBit & ITEN_Mask)) >> 8);
2656  0543 7b05          	ld	a,(OFST+1,sp)
2657  0545 a407          	and	a,#7
2658  0547 5f            	clrw	x
2659  0548 97            	ld	xl,a
2660  0549 1f01          	ldw	(OFST-3,sp),x
2662                     ; 804   enablestatus = (uint8_t)(I2C->ITR & ( uint8_t)tempregister);
2664  054b c6521a        	ld	a,21018
2665  054e 1402          	and	a,(OFST-2,sp)
2666  0550 6b03          	ld	(OFST-1,sp),a
2668                     ; 806   if ((uint16_t)((uint16_t)I2C_ITPendingBit & REGISTER_Mask) == REGISTER_SR1_Index)
2670  0552 7b05          	ld	a,(OFST+1,sp)
2671  0554 a430          	and	a,#48
2672  0556 97            	ld	xl,a
2673  0557 4f            	clr	a
2674  0558 02            	rlwa	x,a
2675  0559 a30100        	cpw	x,#256
2676  055c 260d          	jrne	L3701
2677                     ; 809     if (((I2C->SR1 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
2679  055e c65217        	ld	a,21015
2680  0561 1506          	bcp	a,(OFST+2,sp)
2681  0563 2715          	jreq	L3011
2683  0565 0d03          	tnz	(OFST-1,sp)
2684  0567 2711          	jreq	L3011
2685                     ; 812       bitstatus = SET;
2687  0569 200b          	jp	LC008
2688                     ; 817       bitstatus = RESET;
2689  056b               L3701:
2690                     ; 823     if (((I2C->SR2 & (uint8_t)I2C_ITPendingBit) != RESET) && enablestatus)
2692  056b c65218        	ld	a,21016
2693  056e 1506          	bcp	a,(OFST+2,sp)
2694  0570 2708          	jreq	L3011
2696  0572 0d03          	tnz	(OFST-1,sp)
2697  0574 2704          	jreq	L3011
2698                     ; 826       bitstatus = SET;
2700  0576               LC008:
2702  0576 a601          	ld	a,#1
2705  0578 2001          	jra	L1011
2706  057a               L3011:
2707                     ; 831       bitstatus = RESET;
2710  057a 4f            	clr	a
2712  057b               L1011:
2713                     ; 835   return  bitstatus;
2717  057b 5b06          	addw	sp,#6
2718  057d 81            	ret	
2762                     ; 873 void I2C_ClearITPendingBit(I2C_ITPendingBit_TypeDef I2C_ITPendingBit)
2762                     ; 874 {
2763                     	switch	.text
2764  057e               _I2C_ClearITPendingBit:
2766  057e 89            	pushw	x
2767  057f 89            	pushw	x
2768       00000002      OFST:	set	2
2771                     ; 875   uint16_t flagpos = 0;
2773                     ; 878   assert_param(IS_I2C_CLEAR_ITPENDINGBIT_OK(I2C_ITPendingBit));
2775  0580 a32220        	cpw	x,#8736
2776  0583 2722          	jreq	L633
2777  0585 a32108        	cpw	x,#8456
2778  0588 271d          	jreq	L633
2779  058a a32104        	cpw	x,#8452
2780  058d 2718          	jreq	L633
2781  058f a32102        	cpw	x,#8450
2782  0592 2713          	jreq	L633
2783  0594 a32101        	cpw	x,#8449
2784  0597 270e          	jreq	L633
2785  0599 ae036e        	ldw	x,#878
2786  059c 89            	pushw	x
2787  059d 5f            	clrw	x
2788  059e 89            	pushw	x
2789  059f ae000c        	ldw	x,#L511
2790  05a2 cd0000        	call	_assert_failed
2792  05a5 5b04          	addw	sp,#4
2793  05a7               L633:
2794                     ; 881   flagpos = (uint16_t)I2C_ITPendingBit & FLAG_Mask;
2796  05a7 7b04          	ld	a,(OFST+2,sp)
2797  05a9 5f            	clrw	x
2798  05aa 02            	rlwa	x,a
2799  05ab 1f01          	ldw	(OFST-1,sp),x
2801                     ; 884   I2C->SR2 = (uint8_t)((uint16_t)~flagpos);
2803  05ad 7b02          	ld	a,(OFST+0,sp)
2804  05af 43            	cpl	a
2805  05b0 c75218        	ld	21016,a
2806                     ; 885 }
2809  05b3 5b04          	addw	sp,#4
2810  05b5 81            	ret	
2823                     	xdef	_I2C_ClearITPendingBit
2824                     	xdef	_I2C_GetITStatus
2825                     	xdef	_I2C_ClearFlag
2826                     	xdef	_I2C_GetFlagStatus
2827                     	xdef	_I2C_GetLastEvent
2828                     	xdef	_I2C_CheckEvent
2829                     	xdef	_I2C_SendData
2830                     	xdef	_I2C_Send7bitAddress
2831                     	xdef	_I2C_ReceiveData
2832                     	xdef	_I2C_ITConfig
2833                     	xdef	_I2C_FastModeDutyCycleConfig
2834                     	xdef	_I2C_AcknowledgeConfig
2835                     	xdef	_I2C_StretchClockCmd
2836                     	xdef	_I2C_SoftwareResetCmd
2837                     	xdef	_I2C_GenerateSTOP
2838                     	xdef	_I2C_GenerateSTART
2839                     	xdef	_I2C_GeneralCallCmd
2840                     	xdef	_I2C_Cmd
2841                     	xdef	_I2C_Init
2842                     	xdef	_I2C_DeInit
2843                     	xref	_assert_failed
2844                     	switch	.const
2845  000c               L511:
2846  000c 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
2847  001e 6965735c7374  	dc.b	"ies\stm8s_stdperip"
2848  0030 685f64726976  	dc.b	"h_driver\src\stm8s"
2849  0042 5f6932632e63  	dc.b	"_i2c.c",0
2850                     	xref.b	c_lreg
2851                     	xref.b	c_x
2871                     	xref	c_sdivx
2872                     	xref	c_ludv
2873                     	xref	c_rtol
2874                     	xref	c_smul
2875                     	xref	c_lmul
2876                     	xref	c_lcmp
2877                     	xref	c_ltor
2878                     	xref	c_lzmp
2879                     	end
