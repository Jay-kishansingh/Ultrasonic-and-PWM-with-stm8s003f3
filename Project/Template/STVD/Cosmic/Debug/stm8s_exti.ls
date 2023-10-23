   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.8.1 - 09 Jan 2023
   3                     ; Generator (Limited) V4.5.5 - 08 Nov 2022
   4                     ; Optimizer V4.5.5 - 08 Nov 2022
  48                     ; 47 void EXTI_DeInit(void)
  48                     ; 48 {
  50                     	switch	.text
  51  0000               _EXTI_DeInit:
  55                     ; 49     EXTI->CR1 = EXTI_CR1_RESET_VALUE;
  57  0000 725f50a0      	clr	20640
  58                     ; 50     EXTI->CR2 = EXTI_CR2_RESET_VALUE;
  60  0004 725f50a1      	clr	20641
  61                     ; 51 }
  64  0008 81            	ret	
 190                     ; 64 void EXTI_SetExtIntSensitivity(EXTI_Port_TypeDef Port, EXTI_Sensitivity_TypeDef SensitivityValue)
 190                     ; 65 {
 191                     	switch	.text
 192  0009               _EXTI_SetExtIntSensitivity:
 194  0009 89            	pushw	x
 195       00000000      OFST:	set	0
 198                     ; 68     assert_param(IS_EXTI_PORT_OK(Port));
 200  000a 9e            	ld	a,xh
 201  000b 4d            	tnz	a
 202  000c 2718          	jreq	L41
 203  000e 9e            	ld	a,xh
 204  000f 4a            	dec	a
 205  0010 2714          	jreq	L41
 206  0012 9e            	ld	a,xh
 207  0013 a102          	cp	a,#2
 208  0015 270f          	jreq	L41
 209  0017 9e            	ld	a,xh
 210  0018 a103          	cp	a,#3
 211  001a 270a          	jreq	L41
 212  001c 9e            	ld	a,xh
 213  001d a104          	cp	a,#4
 214  001f 2705          	jreq	L41
 215  0021 ae0044        	ldw	x,#68
 216  0024 ad7c          	call	LC004
 217  0026               L41:
 218                     ; 69     assert_param(IS_EXTI_SENSITIVITY_OK(SensitivityValue));
 220  0026 7b02          	ld	a,(OFST+2,sp)
 221  0028 2711          	jreq	L42
 222  002a a101          	cp	a,#1
 223  002c 270d          	jreq	L42
 224  002e a102          	cp	a,#2
 225  0030 2709          	jreq	L42
 226  0032 a103          	cp	a,#3
 227  0034 2705          	jreq	L42
 228  0036 ae0045        	ldw	x,#69
 229  0039 ad67          	call	LC004
 230  003b               L42:
 231                     ; 72     switch (Port)
 233  003b 7b01          	ld	a,(OFST+1,sp)
 235                     ; 94     default:
 235                     ; 95         break;
 236  003d 270e          	jreq	L12
 237  003f 4a            	dec	a
 238  0040 271a          	jreq	L32
 239  0042 4a            	dec	a
 240  0043 2725          	jreq	L52
 241  0045 4a            	dec	a
 242  0046 2731          	jreq	L72
 243  0048 4a            	dec	a
 244  0049 2745          	jreq	L13
 245  004b 2053          	jra	L511
 246  004d               L12:
 247                     ; 74     case EXTI_PORT_GPIOA:
 247                     ; 75         EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PAIS);
 249  004d c650a0        	ld	a,20640
 250  0050 a4fc          	and	a,#252
 251  0052 c750a0        	ld	20640,a
 252                     ; 76         EXTI->CR1 |= (uint8_t)(SensitivityValue);
 254  0055 c650a0        	ld	a,20640
 255  0058 1a02          	or	a,(OFST+2,sp)
 256                     ; 77         break;
 258  005a 202f          	jp	LC001
 259  005c               L32:
 260                     ; 78     case EXTI_PORT_GPIOB:
 260                     ; 79         EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PBIS);
 262  005c c650a0        	ld	a,20640
 263  005f a4f3          	and	a,#243
 264  0061 c750a0        	ld	20640,a
 265                     ; 80         EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 2);
 267  0064 7b02          	ld	a,(OFST+2,sp)
 268  0066 48            	sll	a
 269  0067 48            	sll	a
 270                     ; 81         break;
 272  0068 201e          	jp	LC002
 273  006a               L52:
 274                     ; 82     case EXTI_PORT_GPIOC:
 274                     ; 83         EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PCIS);
 276  006a c650a0        	ld	a,20640
 277  006d a4cf          	and	a,#207
 278  006f c750a0        	ld	20640,a
 279                     ; 84         EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 4);
 281  0072 7b02          	ld	a,(OFST+2,sp)
 282  0074 97            	ld	xl,a
 283  0075 a610          	ld	a,#16
 284                     ; 85         break;
 286  0077 200d          	jp	LC003
 287  0079               L72:
 288                     ; 86     case EXTI_PORT_GPIOD:
 288                     ; 87         EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PDIS);
 290  0079 c650a0        	ld	a,20640
 291  007c a43f          	and	a,#63
 292  007e c750a0        	ld	20640,a
 293                     ; 88         EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 6);
 295  0081 7b02          	ld	a,(OFST+2,sp)
 296  0083 97            	ld	xl,a
 297  0084 a640          	ld	a,#64
 298  0086               LC003:
 299  0086 42            	mul	x,a
 300  0087 9f            	ld	a,xl
 301  0088               LC002:
 302  0088 ca50a0        	or	a,20640
 303  008b               LC001:
 304  008b c750a0        	ld	20640,a
 305                     ; 89         break;
 307  008e 2010          	jra	L511
 308  0090               L13:
 309                     ; 90     case EXTI_PORT_GPIOE:
 309                     ; 91         EXTI->CR2 &= (uint8_t)(~EXTI_CR2_PEIS);
 311  0090 c650a1        	ld	a,20641
 312  0093 a4fc          	and	a,#252
 313  0095 c750a1        	ld	20641,a
 314                     ; 92         EXTI->CR2 |= (uint8_t)(SensitivityValue);
 316  0098 c650a1        	ld	a,20641
 317  009b 1a02          	or	a,(OFST+2,sp)
 318  009d c750a1        	ld	20641,a
 319                     ; 93         break;
 321                     ; 94     default:
 321                     ; 95         break;
 323  00a0               L511:
 324                     ; 97 }
 327  00a0 85            	popw	x
 328  00a1 81            	ret	
 329  00a2               LC004:
 330  00a2 89            	pushw	x
 331  00a3 5f            	clrw	x
 332  00a4 89            	pushw	x
 333  00a5 ae0000        	ldw	x,#L111
 334  00a8 cd0000        	call	_assert_failed
 336  00ab 5b04          	addw	sp,#4
 337  00ad 81            	ret	
 396                     ; 106 void EXTI_SetTLISensitivity(EXTI_TLISensitivity_TypeDef SensitivityValue)
 396                     ; 107 {
 397                     	switch	.text
 398  00ae               _EXTI_SetTLISensitivity:
 400  00ae 88            	push	a
 401       00000000      OFST:	set	0
 404                     ; 109     assert_param(IS_EXTI_TLISENSITIVITY_OK(SensitivityValue));
 406  00af 4d            	tnz	a
 407  00b0 2712          	jreq	L63
 408  00b2 a104          	cp	a,#4
 409  00b4 270e          	jreq	L63
 410  00b6 ae006d        	ldw	x,#109
 411  00b9 89            	pushw	x
 412  00ba 5f            	clrw	x
 413  00bb 89            	pushw	x
 414  00bc ae0000        	ldw	x,#L111
 415  00bf cd0000        	call	_assert_failed
 417  00c2 5b04          	addw	sp,#4
 418  00c4               L63:
 419                     ; 112     EXTI->CR2 &= (uint8_t)(~EXTI_CR2_TLIS);
 421  00c4 721550a1      	bres	20641,#2
 422                     ; 113     EXTI->CR2 |= (uint8_t)(SensitivityValue);
 424  00c8 c650a1        	ld	a,20641
 425  00cb 1a01          	or	a,(OFST+1,sp)
 426  00cd c750a1        	ld	20641,a
 427                     ; 114 }
 430  00d0 84            	pop	a
 431  00d1 81            	ret	
 476                     ; 121 EXTI_Sensitivity_TypeDef EXTI_GetExtIntSensitivity(EXTI_Port_TypeDef Port)
 476                     ; 122 {
 477                     	switch	.text
 478  00d2               _EXTI_GetExtIntSensitivity:
 480  00d2 88            	push	a
 481  00d3 88            	push	a
 482       00000001      OFST:	set	1
 485                     ; 123     uint8_t value = 0;
 487  00d4 0f01          	clr	(OFST+0,sp)
 489                     ; 126     assert_param(IS_EXTI_PORT_OK(Port));
 491  00d6 4d            	tnz	a
 492  00d7 271e          	jreq	L05
 493  00d9 a101          	cp	a,#1
 494  00db 271a          	jreq	L05
 495  00dd a102          	cp	a,#2
 496  00df 2716          	jreq	L05
 497  00e1 a103          	cp	a,#3
 498  00e3 2712          	jreq	L05
 499  00e5 a104          	cp	a,#4
 500  00e7 270e          	jreq	L05
 501  00e9 ae007e        	ldw	x,#126
 502  00ec 89            	pushw	x
 503  00ed 5f            	clrw	x
 504  00ee 89            	pushw	x
 505  00ef ae0000        	ldw	x,#L111
 506  00f2 cd0000        	call	_assert_failed
 508  00f5 5b04          	addw	sp,#4
 509  00f7               L05:
 510                     ; 128     switch (Port)
 512  00f7 7b02          	ld	a,(OFST+1,sp)
 514                     ; 145     default:
 514                     ; 146         break;
 515  00f9 2710          	jreq	L541
 516  00fb 4a            	dec	a
 517  00fc 2712          	jreq	L741
 518  00fe 4a            	dec	a
 519  00ff 2718          	jreq	L151
 520  0101 4a            	dec	a
 521  0102 271b          	jreq	L351
 522  0104 4a            	dec	a
 523  0105 2722          	jreq	L551
 524  0107 7b01          	ld	a,(OFST+0,sp)
 525  0109 2023          	jra	LC005
 526  010b               L541:
 527                     ; 130     case EXTI_PORT_GPIOA:
 527                     ; 131         value = (uint8_t)(EXTI->CR1 & EXTI_CR1_PAIS);
 529  010b c650a0        	ld	a,20640
 530                     ; 132         break;
 532  010e 201c          	jp	LC006
 533  0110               L741:
 534                     ; 133     case EXTI_PORT_GPIOB:
 534                     ; 134         value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PBIS) >> 2);
 536  0110 c650a0        	ld	a,20640
 537  0113 a40c          	and	a,#12
 538  0115 44            	srl	a
 539  0116 44            	srl	a
 540                     ; 135         break;
 542  0117 2015          	jp	LC005
 543  0119               L151:
 544                     ; 136     case EXTI_PORT_GPIOC:
 544                     ; 137         value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PCIS) >> 4);
 546  0119 c650a0        	ld	a,20640
 547  011c 4e            	swap	a
 548                     ; 138         break;
 550  011d 200d          	jp	LC006
 551  011f               L351:
 552                     ; 139     case EXTI_PORT_GPIOD:
 552                     ; 140         value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PDIS) >> 6);
 554  011f c650a0        	ld	a,20640
 555  0122 4e            	swap	a
 556  0123 a40c          	and	a,#12
 557  0125 44            	srl	a
 558  0126 44            	srl	a
 559                     ; 141         break;
 561  0127 2003          	jp	LC006
 562  0129               L551:
 563                     ; 142     case EXTI_PORT_GPIOE:
 563                     ; 143         value = (uint8_t)(EXTI->CR2 & EXTI_CR2_PEIS);
 565  0129 c650a1        	ld	a,20641
 566  012c               LC006:
 567  012c a403          	and	a,#3
 568  012e               LC005:
 570                     ; 144         break;
 572                     ; 145     default:
 572                     ; 146         break;
 574                     ; 149     return((EXTI_Sensitivity_TypeDef)value);
 578  012e 85            	popw	x
 579  012f 81            	ret	
 613                     ; 157 EXTI_TLISensitivity_TypeDef EXTI_GetTLISensitivity(void)
 613                     ; 158 {
 614                     	switch	.text
 615  0130               _EXTI_GetTLISensitivity:
 617       00000001      OFST:	set	1
 620                     ; 160     uint8_t value = 0;
 622                     ; 163     value = (uint8_t)(EXTI->CR2 & EXTI_CR2_TLIS);
 624  0130 c650a1        	ld	a,20641
 625  0133 a404          	and	a,#4
 627                     ; 165     return((EXTI_TLISensitivity_TypeDef)value);
 631  0135 81            	ret	
 644                     	xdef	_EXTI_GetTLISensitivity
 645                     	xdef	_EXTI_GetExtIntSensitivity
 646                     	xdef	_EXTI_SetTLISensitivity
 647                     	xdef	_EXTI_SetExtIntSensitivity
 648                     	xdef	_EXTI_DeInit
 649                     	xref	_assert_failed
 650                     .const:	section	.text
 651  0000               L111:
 652  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
 653  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
 654  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
 655  0036 5f657874692e  	dc.b	"_exti.c",0
 675                     	end
