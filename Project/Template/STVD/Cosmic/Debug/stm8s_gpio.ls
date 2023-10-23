   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.8.1 - 09 Jan 2023
   3                     ; Generator (Limited) V4.5.5 - 08 Nov 2022
   4                     ; Optimizer V4.5.5 - 08 Nov 2022
 114                     ; 47 void GPIO_DeInit(GPIO_TypeDef* GPIOx)
 114                     ; 48 {
 116                     	switch	.text
 117  0000               _GPIO_DeInit:
 121                     ; 49     GPIOx->ODR = GPIO_ODR_RESET_VALUE; /* Reset Output Data Register */
 123  0000 7f            	clr	(x)
 124                     ; 50     GPIOx->DDR = GPIO_DDR_RESET_VALUE; /* Reset Data Direction Register */
 126  0001 6f02          	clr	(2,x)
 127                     ; 51     GPIOx->CR1 = GPIO_CR1_RESET_VALUE; /* Reset Control Register 1 */
 129  0003 6f03          	clr	(3,x)
 130                     ; 52     GPIOx->CR2 = GPIO_CR2_RESET_VALUE; /* Reset Control Register 2 */
 132  0005 6f04          	clr	(4,x)
 133                     ; 53 }
 136  0007 81            	ret	
 377                     ; 65 void GPIO_Init(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, GPIO_Mode_TypeDef GPIO_Mode)
 377                     ; 66 {
 378                     	switch	.text
 379  0008               _GPIO_Init:
 381  0008 89            	pushw	x
 382       00000000      OFST:	set	0
 385                     ; 71     assert_param(IS_GPIO_MODE_OK(GPIO_Mode));
 387  0009 7b06          	ld	a,(OFST+6,sp)
 388  000b 2731          	jreq	L41
 389  000d a140          	cp	a,#64
 390  000f 272d          	jreq	L41
 391  0011 a120          	cp	a,#32
 392  0013 2729          	jreq	L41
 393  0015 a160          	cp	a,#96
 394  0017 2725          	jreq	L41
 395  0019 a1a0          	cp	a,#160
 396  001b 2721          	jreq	L41
 397  001d a1e0          	cp	a,#224
 398  001f 271d          	jreq	L41
 399  0021 a180          	cp	a,#128
 400  0023 2719          	jreq	L41
 401  0025 a1c0          	cp	a,#192
 402  0027 2715          	jreq	L41
 403  0029 a1b0          	cp	a,#176
 404  002b 2711          	jreq	L41
 405  002d a1f0          	cp	a,#240
 406  002f 270d          	jreq	L41
 407  0031 a190          	cp	a,#144
 408  0033 2709          	jreq	L41
 409  0035 a1d0          	cp	a,#208
 410  0037 2705          	jreq	L41
 411  0039 ae0047        	ldw	x,#71
 412  003c ad5d          	call	LC001
 413  003e               L41:
 414                     ; 72     assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
 416  003e 7b05          	ld	a,(OFST+5,sp)
 417  0040 2607          	jrne	L22
 418  0042 ae0048        	ldw	x,#72
 419  0045 ad54          	call	LC001
 420  0047 7b05          	ld	a,(OFST+5,sp)
 421  0049               L22:
 422                     ; 75   GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
 424  0049 1e01          	ldw	x,(OFST+1,sp)
 425  004b 43            	cpl	a
 426  004c e404          	and	a,(4,x)
 427  004e e704          	ld	(4,x),a
 428                     ; 81     if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x80) != (uint8_t)0x00) /* Output mode */
 430  0050 7b06          	ld	a,(OFST+6,sp)
 431  0052 2a14          	jrpl	L102
 432                     ; 83         if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x10) != (uint8_t)0x00) /* High level */
 434  0054 a510          	bcp	a,#16
 435  0056 2705          	jreq	L302
 436                     ; 85             GPIOx->ODR |= (uint8_t)GPIO_Pin;
 438  0058 f6            	ld	a,(x)
 439  0059 1a05          	or	a,(OFST+5,sp)
 441  005b 2004          	jra	L502
 442  005d               L302:
 443                     ; 89             GPIOx->ODR &= (uint8_t)(~(GPIO_Pin));
 445  005d 7b05          	ld	a,(OFST+5,sp)
 446  005f 43            	cpl	a
 447  0060 f4            	and	a,(x)
 448  0061               L502:
 449  0061 f7            	ld	(x),a
 450                     ; 92         GPIOx->DDR |= (uint8_t)GPIO_Pin;
 452  0062 e602          	ld	a,(2,x)
 453  0064 1a05          	or	a,(OFST+5,sp)
 455  0066 2005          	jra	L702
 456  0068               L102:
 457                     ; 97         GPIOx->DDR &= (uint8_t)(~(GPIO_Pin));
 459  0068 7b05          	ld	a,(OFST+5,sp)
 460  006a 43            	cpl	a
 461  006b e402          	and	a,(2,x)
 462  006d               L702:
 463  006d e702          	ld	(2,x),a
 464                     ; 104     if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x40) != (uint8_t)0x00) /* Pull-Up or Push-Pull */
 466  006f 7b06          	ld	a,(OFST+6,sp)
 467  0071 a540          	bcp	a,#64
 468  0073 2706          	jreq	L112
 469                     ; 106         GPIOx->CR1 |= (uint8_t)GPIO_Pin;
 471  0075 e603          	ld	a,(3,x)
 472  0077 1a05          	or	a,(OFST+5,sp)
 474  0079 2005          	jra	L312
 475  007b               L112:
 476                     ; 110         GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
 478  007b 7b05          	ld	a,(OFST+5,sp)
 479  007d 43            	cpl	a
 480  007e e403          	and	a,(3,x)
 481  0080               L312:
 482  0080 e703          	ld	(3,x),a
 483                     ; 117     if ((((uint8_t)(GPIO_Mode)) & (uint8_t)0x20) != (uint8_t)0x00) /* Interrupt or Slow slope */
 485  0082 7b06          	ld	a,(OFST+6,sp)
 486  0084 a520          	bcp	a,#32
 487  0086 2708          	jreq	L512
 488                     ; 119         GPIOx->CR2 |= (uint8_t)GPIO_Pin;
 490  0088 1e01          	ldw	x,(OFST+1,sp)
 491  008a e604          	ld	a,(4,x)
 492  008c 1a05          	or	a,(OFST+5,sp)
 494  008e 2007          	jra	L712
 495  0090               L512:
 496                     ; 123         GPIOx->CR2 &= (uint8_t)(~(GPIO_Pin));
 498  0090 1e01          	ldw	x,(OFST+1,sp)
 499  0092 7b05          	ld	a,(OFST+5,sp)
 500  0094 43            	cpl	a
 501  0095 e404          	and	a,(4,x)
 502  0097               L712:
 503  0097 e704          	ld	(4,x),a
 504                     ; 125 }
 507  0099 85            	popw	x
 508  009a 81            	ret	
 509  009b               LC001:
 510  009b 89            	pushw	x
 511  009c 5f            	clrw	x
 512  009d 89            	pushw	x
 513  009e ae0000        	ldw	x,#L771
 514  00a1 cd0000        	call	_assert_failed
 516  00a4 5b04          	addw	sp,#4
 517  00a6 81            	ret	
 561                     ; 135 void GPIO_Write(GPIO_TypeDef* GPIOx, uint8_t PortVal)
 561                     ; 136 {
 562                     	switch	.text
 563  00a7               _GPIO_Write:
 565       fffffffe      OFST: set -2
 568                     ; 137     GPIOx->ODR = PortVal;
 570  00a7 7b03          	ld	a,(OFST+5,sp)
 571  00a9 f7            	ld	(x),a
 572                     ; 138 }
 575  00aa 81            	ret	
 622                     ; 148 void GPIO_WriteHigh(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
 622                     ; 149 {
 623                     	switch	.text
 624  00ab               _GPIO_WriteHigh:
 626       fffffffe      OFST: set -2
 629                     ; 150     GPIOx->ODR |= (uint8_t)PortPins;
 631  00ab f6            	ld	a,(x)
 632  00ac 1a03          	or	a,(OFST+5,sp)
 633  00ae f7            	ld	(x),a
 634                     ; 151 }
 637  00af 81            	ret	
 684                     ; 161 void GPIO_WriteLow(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
 684                     ; 162 {
 685                     	switch	.text
 686  00b0               _GPIO_WriteLow:
 688       fffffffe      OFST: set -2
 691                     ; 163     GPIOx->ODR &= (uint8_t)(~PortPins);
 693  00b0 7b03          	ld	a,(OFST+5,sp)
 694  00b2 43            	cpl	a
 695  00b3 f4            	and	a,(x)
 696  00b4 f7            	ld	(x),a
 697                     ; 164 }
 700  00b5 81            	ret	
 747                     ; 174 void GPIO_WriteReverse(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef PortPins)
 747                     ; 175 {
 748                     	switch	.text
 749  00b6               _GPIO_WriteReverse:
 751       fffffffe      OFST: set -2
 754                     ; 176     GPIOx->ODR ^= (uint8_t)PortPins;
 756  00b6 f6            	ld	a,(x)
 757  00b7 1803          	xor	a,(OFST+5,sp)
 758  00b9 f7            	ld	(x),a
 759                     ; 177 }
 762  00ba 81            	ret	
 800                     ; 185 uint8_t GPIO_ReadOutputData(GPIO_TypeDef* GPIOx)
 800                     ; 186 {
 801                     	switch	.text
 802  00bb               _GPIO_ReadOutputData:
 806                     ; 187     return ((uint8_t)GPIOx->ODR);
 808  00bb f6            	ld	a,(x)
 811  00bc 81            	ret	
 848                     ; 196 uint8_t GPIO_ReadInputData(GPIO_TypeDef* GPIOx)
 848                     ; 197 {
 849                     	switch	.text
 850  00bd               _GPIO_ReadInputData:
 854                     ; 198     return ((uint8_t)GPIOx->IDR);
 856  00bd e601          	ld	a,(1,x)
 859  00bf 81            	ret	
 927                     ; 207 BitStatus GPIO_ReadInputPin(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin)
 927                     ; 208 {
 928                     	switch	.text
 929  00c0               _GPIO_ReadInputPin:
 931       fffffffe      OFST: set -2
 934                     ; 209     return ((BitStatus)(GPIOx->IDR & (uint8_t)GPIO_Pin));
 936  00c0 e601          	ld	a,(1,x)
 937  00c2 1403          	and	a,(OFST+5,sp)
 940  00c4 81            	ret	
1019                     ; 219 void GPIO_ExternalPullUpConfig(GPIO_TypeDef* GPIOx, GPIO_Pin_TypeDef GPIO_Pin, FunctionalState NewState)
1019                     ; 220 {
1020                     	switch	.text
1021  00c5               _GPIO_ExternalPullUpConfig:
1023  00c5 89            	pushw	x
1024       00000000      OFST:	set	0
1027                     ; 222     assert_param(IS_GPIO_PIN_OK(GPIO_Pin));
1029  00c6 7b05          	ld	a,(OFST+5,sp)
1030  00c8 2605          	jrne	L05
1031  00ca ae00de        	ldw	x,#222
1032  00cd ad23          	call	LC002
1033  00cf               L05:
1034                     ; 223     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1036  00cf 7b06          	ld	a,(OFST+6,sp)
1037  00d1 2708          	jreq	L06
1038  00d3 4a            	dec	a
1039  00d4 2705          	jreq	L06
1040  00d6 ae00df        	ldw	x,#223
1041  00d9 ad17          	call	LC002
1042  00db               L06:
1043                     ; 225     if (NewState != DISABLE) /* External Pull-Up Set*/
1045  00db 7b06          	ld	a,(OFST+6,sp)
1046  00dd 2708          	jreq	L374
1047                     ; 227         GPIOx->CR1 |= (uint8_t)GPIO_Pin;
1049  00df 1e01          	ldw	x,(OFST+1,sp)
1050  00e1 e603          	ld	a,(3,x)
1051  00e3 1a05          	or	a,(OFST+5,sp)
1053  00e5 2007          	jra	L574
1054  00e7               L374:
1055                     ; 230         GPIOx->CR1 &= (uint8_t)(~(GPIO_Pin));
1057  00e7 1e01          	ldw	x,(OFST+1,sp)
1058  00e9 7b05          	ld	a,(OFST+5,sp)
1059  00eb 43            	cpl	a
1060  00ec e403          	and	a,(3,x)
1061  00ee               L574:
1062  00ee e703          	ld	(3,x),a
1063                     ; 232 }
1066  00f0 85            	popw	x
1067  00f1 81            	ret	
1068  00f2               LC002:
1069  00f2 89            	pushw	x
1070  00f3 5f            	clrw	x
1071  00f4 89            	pushw	x
1072  00f5 ae0000        	ldw	x,#L771
1073  00f8 cd0000        	call	_assert_failed
1075  00fb 5b04          	addw	sp,#4
1076  00fd 81            	ret	
1089                     	xdef	_GPIO_ExternalPullUpConfig
1090                     	xdef	_GPIO_ReadInputPin
1091                     	xdef	_GPIO_ReadOutputData
1092                     	xdef	_GPIO_ReadInputData
1093                     	xdef	_GPIO_WriteReverse
1094                     	xdef	_GPIO_WriteLow
1095                     	xdef	_GPIO_WriteHigh
1096                     	xdef	_GPIO_Write
1097                     	xdef	_GPIO_Init
1098                     	xdef	_GPIO_DeInit
1099                     	xref	_assert_failed
1100                     .const:	section	.text
1101  0000               L771:
1102  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
1103  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
1104  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
1105  0036 5f6770696f2e  	dc.b	"_gpio.c",0
1125                     	end
