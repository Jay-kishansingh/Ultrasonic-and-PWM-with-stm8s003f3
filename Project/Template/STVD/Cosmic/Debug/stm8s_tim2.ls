   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.8.1 - 09 Jan 2023
   3                     ; Generator (Limited) V4.5.5 - 08 Nov 2022
   4                     ; Optimizer V4.5.5 - 08 Nov 2022
  48                     ; 46 void TIM2_DeInit(void)
  48                     ; 47 {
  50                     	switch	.text
  51  0000               _TIM2_DeInit:
  55                     ; 49     TIM2->CR1 = (uint8_t)TIM2_CR1_RESET_VALUE;
  57  0000 725f5300      	clr	21248
  58                     ; 50     TIM2->IER = (uint8_t)TIM2_IER_RESET_VALUE;
  60  0004 725f5301      	clr	21249
  61                     ; 51     TIM2->SR2 = (uint8_t)TIM2_SR2_RESET_VALUE;
  63  0008 725f5303      	clr	21251
  64                     ; 54     TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
  66  000c 725f5308      	clr	21256
  67                     ; 55     TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
  69  0010 725f5309      	clr	21257
  70                     ; 59     TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
  72  0014 725f5308      	clr	21256
  73                     ; 60     TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
  75  0018 725f5309      	clr	21257
  76                     ; 61     TIM2->CCMR1 = (uint8_t)TIM2_CCMR1_RESET_VALUE;
  78  001c 725f5305      	clr	21253
  79                     ; 62     TIM2->CCMR2 = (uint8_t)TIM2_CCMR2_RESET_VALUE;
  81  0020 725f5306      	clr	21254
  82                     ; 63     TIM2->CCMR3 = (uint8_t)TIM2_CCMR3_RESET_VALUE;
  84  0024 725f5307      	clr	21255
  85                     ; 64     TIM2->CNTRH = (uint8_t)TIM2_CNTRH_RESET_VALUE;
  87  0028 725f530a      	clr	21258
  88                     ; 65     TIM2->CNTRL = (uint8_t)TIM2_CNTRL_RESET_VALUE;
  90  002c 725f530b      	clr	21259
  91                     ; 66     TIM2->PSCR = (uint8_t)TIM2_PSCR_RESET_VALUE;
  93  0030 725f530c      	clr	21260
  94                     ; 67     TIM2->ARRH  = (uint8_t)TIM2_ARRH_RESET_VALUE;
  96  0034 35ff530d      	mov	21261,#255
  97                     ; 68     TIM2->ARRL  = (uint8_t)TIM2_ARRL_RESET_VALUE;
  99  0038 35ff530e      	mov	21262,#255
 100                     ; 69     TIM2->CCR1H = (uint8_t)TIM2_CCR1H_RESET_VALUE;
 102  003c 725f530f      	clr	21263
 103                     ; 70     TIM2->CCR1L = (uint8_t)TIM2_CCR1L_RESET_VALUE;
 105  0040 725f5310      	clr	21264
 106                     ; 71     TIM2->CCR2H = (uint8_t)TIM2_CCR2H_RESET_VALUE;
 108  0044 725f5311      	clr	21265
 109                     ; 72     TIM2->CCR2L = (uint8_t)TIM2_CCR2L_RESET_VALUE;
 111  0048 725f5312      	clr	21266
 112                     ; 73     TIM2->CCR3H = (uint8_t)TIM2_CCR3H_RESET_VALUE;
 114  004c 725f5313      	clr	21267
 115                     ; 74     TIM2->CCR3L = (uint8_t)TIM2_CCR3L_RESET_VALUE;
 117  0050 725f5314      	clr	21268
 118                     ; 75     TIM2->SR1 = (uint8_t)TIM2_SR1_RESET_VALUE;
 120  0054 725f5302      	clr	21250
 121                     ; 76 }
 124  0058 81            	ret	
 290                     ; 85 void TIM2_TimeBaseInit( TIM2_Prescaler_TypeDef TIM2_Prescaler,
 290                     ; 86                         uint16_t TIM2_Period)
 290                     ; 87 {
 291                     	switch	.text
 292  0059               _TIM2_TimeBaseInit:
 294       ffffffff      OFST: set -1
 297                     ; 89     TIM2->PSCR = (uint8_t)(TIM2_Prescaler);
 299  0059 c7530c        	ld	21260,a
 300                     ; 91     TIM2->ARRH = (uint8_t)(TIM2_Period >> 8);
 302  005c 7b03          	ld	a,(OFST+4,sp)
 303  005e c7530d        	ld	21261,a
 304                     ; 92     TIM2->ARRL = (uint8_t)(TIM2_Period);
 306  0061 7b04          	ld	a,(OFST+5,sp)
 307  0063 c7530e        	ld	21262,a
 308                     ; 93 }
 311  0066 81            	ret	
 467                     ; 104 void TIM2_OC1Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 467                     ; 105                   TIM2_OutputState_TypeDef TIM2_OutputState,
 467                     ; 106                   uint16_t TIM2_Pulse,
 467                     ; 107                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 467                     ; 108 {
 468                     	switch	.text
 469  0067               _TIM2_OC1Init:
 471  0067 89            	pushw	x
 472  0068 88            	push	a
 473       00000001      OFST:	set	1
 476                     ; 110     assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 478  0069 9e            	ld	a,xh
 479  006a 4d            	tnz	a
 480  006b 271e          	jreq	L61
 481  006d 9e            	ld	a,xh
 482  006e a110          	cp	a,#16
 483  0070 2719          	jreq	L61
 484  0072 9e            	ld	a,xh
 485  0073 a120          	cp	a,#32
 486  0075 2714          	jreq	L61
 487  0077 9e            	ld	a,xh
 488  0078 a130          	cp	a,#48
 489  007a 270f          	jreq	L61
 490  007c 9e            	ld	a,xh
 491  007d a160          	cp	a,#96
 492  007f 270a          	jreq	L61
 493  0081 9e            	ld	a,xh
 494  0082 a170          	cp	a,#112
 495  0084 2705          	jreq	L61
 496  0086 ae006e        	ldw	x,#110
 497  0089 ad4b          	call	LC001
 498  008b               L61:
 499                     ; 111     assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 501  008b 7b03          	ld	a,(OFST+2,sp)
 502  008d 2709          	jreq	L62
 503  008f a111          	cp	a,#17
 504  0091 2705          	jreq	L62
 505  0093 ae006f        	ldw	x,#111
 506  0096 ad3e          	call	LC001
 507  0098               L62:
 508                     ; 112     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 510  0098 7b08          	ld	a,(OFST+7,sp)
 511  009a 2709          	jreq	L63
 512  009c a122          	cp	a,#34
 513  009e 2705          	jreq	L63
 514  00a0 ae0070        	ldw	x,#112
 515  00a3 ad31          	call	LC001
 516  00a5               L63:
 517                     ; 115     TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC1E | TIM2_CCER1_CC1P));
 519  00a5 c65308        	ld	a,21256
 520  00a8 a4fc          	and	a,#252
 521  00aa c75308        	ld	21256,a
 522                     ; 117     TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER1_CC1E ) | 
 522                     ; 118                              (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC1P));
 524  00ad 7b08          	ld	a,(OFST+7,sp)
 525  00af a402          	and	a,#2
 526  00b1 6b01          	ld	(OFST+0,sp),a
 528  00b3 7b03          	ld	a,(OFST+2,sp)
 529  00b5 a401          	and	a,#1
 530  00b7 1a01          	or	a,(OFST+0,sp)
 531  00b9 ca5308        	or	a,21256
 532  00bc c75308        	ld	21256,a
 533                     ; 121     TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM)) |
 533                     ; 122                             (uint8_t)TIM2_OCMode);
 535  00bf c65305        	ld	a,21253
 536  00c2 a48f          	and	a,#143
 537  00c4 1a02          	or	a,(OFST+1,sp)
 538  00c6 c75305        	ld	21253,a
 539                     ; 125     TIM2->CCR1H = (uint8_t)(TIM2_Pulse >> 8);
 541  00c9 7b06          	ld	a,(OFST+5,sp)
 542  00cb c7530f        	ld	21263,a
 543                     ; 126     TIM2->CCR1L = (uint8_t)(TIM2_Pulse);
 545  00ce 7b07          	ld	a,(OFST+6,sp)
 546  00d0 c75310        	ld	21264,a
 547                     ; 127 }
 550  00d3 5b03          	addw	sp,#3
 551  00d5 81            	ret	
 552  00d6               LC001:
 553  00d6 89            	pushw	x
 554  00d7 5f            	clrw	x
 555  00d8 89            	pushw	x
 556  00d9 ae0000        	ldw	x,#L302
 557  00dc cd0000        	call	_assert_failed
 559  00df 5b04          	addw	sp,#4
 560  00e1 81            	ret	
 623                     ; 138 void TIM2_OC2Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 623                     ; 139                   TIM2_OutputState_TypeDef TIM2_OutputState,
 623                     ; 140                   uint16_t TIM2_Pulse,
 623                     ; 141                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 623                     ; 142 {
 624                     	switch	.text
 625  00e2               _TIM2_OC2Init:
 627  00e2 89            	pushw	x
 628  00e3 88            	push	a
 629       00000001      OFST:	set	1
 632                     ; 144     assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 634  00e4 9e            	ld	a,xh
 635  00e5 4d            	tnz	a
 636  00e6 271e          	jreq	L05
 637  00e8 9e            	ld	a,xh
 638  00e9 a110          	cp	a,#16
 639  00eb 2719          	jreq	L05
 640  00ed 9e            	ld	a,xh
 641  00ee a120          	cp	a,#32
 642  00f0 2714          	jreq	L05
 643  00f2 9e            	ld	a,xh
 644  00f3 a130          	cp	a,#48
 645  00f5 270f          	jreq	L05
 646  00f7 9e            	ld	a,xh
 647  00f8 a160          	cp	a,#96
 648  00fa 270a          	jreq	L05
 649  00fc 9e            	ld	a,xh
 650  00fd a170          	cp	a,#112
 651  00ff 2705          	jreq	L05
 652  0101 ae0090        	ldw	x,#144
 653  0104 ad4b          	call	LC002
 654  0106               L05:
 655                     ; 145     assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 657  0106 7b03          	ld	a,(OFST+2,sp)
 658  0108 2709          	jreq	L06
 659  010a a111          	cp	a,#17
 660  010c 2705          	jreq	L06
 661  010e ae0091        	ldw	x,#145
 662  0111 ad3e          	call	LC002
 663  0113               L06:
 664                     ; 146     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 666  0113 7b08          	ld	a,(OFST+7,sp)
 667  0115 2709          	jreq	L07
 668  0117 a122          	cp	a,#34
 669  0119 2705          	jreq	L07
 670  011b ae0092        	ldw	x,#146
 671  011e ad31          	call	LC002
 672  0120               L07:
 673                     ; 150     TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC2E |  TIM2_CCER1_CC2P ));
 675  0120 c65308        	ld	a,21256
 676  0123 a4cf          	and	a,#207
 677  0125 c75308        	ld	21256,a
 678                     ; 152     TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState  & TIM2_CCER1_CC2E ) |
 678                     ; 153                         (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC2P));
 680  0128 7b08          	ld	a,(OFST+7,sp)
 681  012a a420          	and	a,#32
 682  012c 6b01          	ld	(OFST+0,sp),a
 684  012e 7b03          	ld	a,(OFST+2,sp)
 685  0130 a410          	and	a,#16
 686  0132 1a01          	or	a,(OFST+0,sp)
 687  0134 ca5308        	or	a,21256
 688  0137 c75308        	ld	21256,a
 689                     ; 157     TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM)) | 
 689                     ; 158                             (uint8_t)TIM2_OCMode);
 691  013a c65306        	ld	a,21254
 692  013d a48f          	and	a,#143
 693  013f 1a02          	or	a,(OFST+1,sp)
 694  0141 c75306        	ld	21254,a
 695                     ; 162     TIM2->CCR2H = (uint8_t)(TIM2_Pulse >> 8);
 697  0144 7b06          	ld	a,(OFST+5,sp)
 698  0146 c75311        	ld	21265,a
 699                     ; 163     TIM2->CCR2L = (uint8_t)(TIM2_Pulse);
 701  0149 7b07          	ld	a,(OFST+6,sp)
 702  014b c75312        	ld	21266,a
 703                     ; 164 }
 706  014e 5b03          	addw	sp,#3
 707  0150 81            	ret	
 708  0151               LC002:
 709  0151 89            	pushw	x
 710  0152 5f            	clrw	x
 711  0153 89            	pushw	x
 712  0154 ae0000        	ldw	x,#L302
 713  0157 cd0000        	call	_assert_failed
 715  015a 5b04          	addw	sp,#4
 716  015c 81            	ret	
 779                     ; 175 void TIM2_OC3Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 779                     ; 176                   TIM2_OutputState_TypeDef TIM2_OutputState,
 779                     ; 177                   uint16_t TIM2_Pulse,
 779                     ; 178                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 779                     ; 179 {
 780                     	switch	.text
 781  015d               _TIM2_OC3Init:
 783  015d 89            	pushw	x
 784  015e 88            	push	a
 785       00000001      OFST:	set	1
 788                     ; 181     assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 790  015f 9e            	ld	a,xh
 791  0160 4d            	tnz	a
 792  0161 271e          	jreq	L201
 793  0163 9e            	ld	a,xh
 794  0164 a110          	cp	a,#16
 795  0166 2719          	jreq	L201
 796  0168 9e            	ld	a,xh
 797  0169 a120          	cp	a,#32
 798  016b 2714          	jreq	L201
 799  016d 9e            	ld	a,xh
 800  016e a130          	cp	a,#48
 801  0170 270f          	jreq	L201
 802  0172 9e            	ld	a,xh
 803  0173 a160          	cp	a,#96
 804  0175 270a          	jreq	L201
 805  0177 9e            	ld	a,xh
 806  0178 a170          	cp	a,#112
 807  017a 2705          	jreq	L201
 808  017c ae00b5        	ldw	x,#181
 809  017f ad4b          	call	LC003
 810  0181               L201:
 811                     ; 182     assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 813  0181 7b03          	ld	a,(OFST+2,sp)
 814  0183 2709          	jreq	L211
 815  0185 a111          	cp	a,#17
 816  0187 2705          	jreq	L211
 817  0189 ae00b6        	ldw	x,#182
 818  018c ad3e          	call	LC003
 819  018e               L211:
 820                     ; 183     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 822  018e 7b08          	ld	a,(OFST+7,sp)
 823  0190 2709          	jreq	L221
 824  0192 a122          	cp	a,#34
 825  0194 2705          	jreq	L221
 826  0196 ae00b7        	ldw	x,#183
 827  0199 ad31          	call	LC003
 828  019b               L221:
 829                     ; 185     TIM2->CCER2 &= (uint8_t)(~( TIM2_CCER2_CC3E  | TIM2_CCER2_CC3P));
 831  019b c65309        	ld	a,21257
 832  019e a4fc          	and	a,#252
 833  01a0 c75309        	ld	21257,a
 834                     ; 187     TIM2->CCER2 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER2_CC3E) |  
 834                     ; 188                              (uint8_t)(TIM2_OCPolarity & TIM2_CCER2_CC3P));
 836  01a3 7b08          	ld	a,(OFST+7,sp)
 837  01a5 a402          	and	a,#2
 838  01a7 6b01          	ld	(OFST+0,sp),a
 840  01a9 7b03          	ld	a,(OFST+2,sp)
 841  01ab a401          	and	a,#1
 842  01ad 1a01          	or	a,(OFST+0,sp)
 843  01af ca5309        	or	a,21257
 844  01b2 c75309        	ld	21257,a
 845                     ; 191     TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM)) |
 845                     ; 192                             (uint8_t)TIM2_OCMode);
 847  01b5 c65307        	ld	a,21255
 848  01b8 a48f          	and	a,#143
 849  01ba 1a02          	or	a,(OFST+1,sp)
 850  01bc c75307        	ld	21255,a
 851                     ; 195     TIM2->CCR3H = (uint8_t)(TIM2_Pulse >> 8);
 853  01bf 7b06          	ld	a,(OFST+5,sp)
 854  01c1 c75313        	ld	21267,a
 855                     ; 196     TIM2->CCR3L = (uint8_t)(TIM2_Pulse);
 857  01c4 7b07          	ld	a,(OFST+6,sp)
 858  01c6 c75314        	ld	21268,a
 859                     ; 198 }
 862  01c9 5b03          	addw	sp,#3
 863  01cb 81            	ret	
 864  01cc               LC003:
 865  01cc 89            	pushw	x
 866  01cd 5f            	clrw	x
 867  01ce 89            	pushw	x
 868  01cf ae0000        	ldw	x,#L302
 869  01d2 cd0000        	call	_assert_failed
 871  01d5 5b04          	addw	sp,#4
 872  01d7 81            	ret	
1064                     ; 210 void TIM2_ICInit(TIM2_Channel_TypeDef TIM2_Channel,
1064                     ; 211                  TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
1064                     ; 212                  TIM2_ICSelection_TypeDef TIM2_ICSelection,
1064                     ; 213                  TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
1064                     ; 214                  uint8_t TIM2_ICFilter)
1064                     ; 215 {
1065                     	switch	.text
1066  01d8               _TIM2_ICInit:
1068  01d8 89            	pushw	x
1069       00000000      OFST:	set	0
1072                     ; 217     assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
1074  01d9 9e            	ld	a,xh
1075  01da 4d            	tnz	a
1076  01db 270f          	jreq	L431
1077  01dd 9e            	ld	a,xh
1078  01de 4a            	dec	a
1079  01df 270b          	jreq	L431
1080  01e1 9e            	ld	a,xh
1081  01e2 a102          	cp	a,#2
1082  01e4 2706          	jreq	L431
1083  01e6 ae00d9        	ldw	x,#217
1084  01e9 cd026f        	call	LC004
1085  01ec               L431:
1086                     ; 218     assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
1088  01ec 7b02          	ld	a,(OFST+2,sp)
1089  01ee 2709          	jreq	L441
1090  01f0 a144          	cp	a,#68
1091  01f2 2705          	jreq	L441
1092  01f4 ae00da        	ldw	x,#218
1093  01f7 ad76          	call	LC004
1094  01f9               L441:
1095                     ; 219     assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
1097  01f9 7b05          	ld	a,(OFST+5,sp)
1098  01fb a101          	cp	a,#1
1099  01fd 270d          	jreq	L451
1100  01ff a102          	cp	a,#2
1101  0201 2709          	jreq	L451
1102  0203 a103          	cp	a,#3
1103  0205 2705          	jreq	L451
1104  0207 ae00db        	ldw	x,#219
1105  020a ad63          	call	LC004
1106  020c               L451:
1107                     ; 220     assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
1109  020c 7b06          	ld	a,(OFST+6,sp)
1110  020e 2711          	jreq	L461
1111  0210 a104          	cp	a,#4
1112  0212 270d          	jreq	L461
1113  0214 a108          	cp	a,#8
1114  0216 2709          	jreq	L461
1115  0218 a10c          	cp	a,#12
1116  021a 2705          	jreq	L461
1117  021c ae00dc        	ldw	x,#220
1118  021f ad4e          	call	LC004
1119  0221               L461:
1120                     ; 221     assert_param(IS_TIM2_IC_FILTER_OK(TIM2_ICFilter));
1122  0221 7b07          	ld	a,(OFST+7,sp)
1123  0223 a110          	cp	a,#16
1124  0225 2505          	jrult	L271
1125  0227 ae00dd        	ldw	x,#221
1126  022a ad43          	call	LC004
1127  022c               L271:
1128                     ; 223     if (TIM2_Channel == TIM2_CHANNEL_1)
1130  022c 7b01          	ld	a,(OFST+1,sp)
1131  022e 2614          	jrne	L173
1132                     ; 226         TI1_Config((uint8_t)TIM2_ICPolarity,
1132                     ; 227                    (uint8_t)TIM2_ICSelection,
1132                     ; 228                    (uint8_t)TIM2_ICFilter);
1134  0230 7b07          	ld	a,(OFST+7,sp)
1135  0232 88            	push	a
1136  0233 7b06          	ld	a,(OFST+6,sp)
1137  0235 97            	ld	xl,a
1138  0236 7b03          	ld	a,(OFST+3,sp)
1139  0238 95            	ld	xh,a
1140  0239 cd08c9        	call	L3_TI1_Config
1142  023c 84            	pop	a
1143                     ; 231         TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1145  023d 7b06          	ld	a,(OFST+6,sp)
1146  023f cd0709        	call	_TIM2_SetIC1Prescaler
1149  0242 2029          	jra	L373
1150  0244               L173:
1151                     ; 233     else if (TIM2_Channel == TIM2_CHANNEL_2)
1153  0244 4a            	dec	a
1154  0245 2614          	jrne	L573
1155                     ; 236         TI2_Config((uint8_t)TIM2_ICPolarity,
1155                     ; 237                    (uint8_t)TIM2_ICSelection,
1155                     ; 238                    (uint8_t)TIM2_ICFilter);
1157  0247 7b07          	ld	a,(OFST+7,sp)
1158  0249 88            	push	a
1159  024a 7b06          	ld	a,(OFST+6,sp)
1160  024c 97            	ld	xl,a
1161  024d 7b03          	ld	a,(OFST+3,sp)
1162  024f 95            	ld	xh,a
1163  0250 cd08f9        	call	L5_TI2_Config
1165  0253 84            	pop	a
1166                     ; 241         TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1168  0254 7b06          	ld	a,(OFST+6,sp)
1169  0256 cd0733        	call	_TIM2_SetIC2Prescaler
1172  0259 2012          	jra	L373
1173  025b               L573:
1174                     ; 246         TI3_Config((uint8_t)TIM2_ICPolarity,
1174                     ; 247                    (uint8_t)TIM2_ICSelection,
1174                     ; 248                    (uint8_t)TIM2_ICFilter);
1176  025b 7b07          	ld	a,(OFST+7,sp)
1177  025d 88            	push	a
1178  025e 7b06          	ld	a,(OFST+6,sp)
1179  0260 97            	ld	xl,a
1180  0261 7b03          	ld	a,(OFST+3,sp)
1181  0263 95            	ld	xh,a
1182  0264 cd0929        	call	L7_TI3_Config
1184  0267 84            	pop	a
1185                     ; 251         TIM2_SetIC3Prescaler(TIM2_ICPrescaler);
1187  0268 7b06          	ld	a,(OFST+6,sp)
1188  026a cd075d        	call	_TIM2_SetIC3Prescaler
1190  026d               L373:
1191                     ; 253 }
1194  026d 85            	popw	x
1195  026e 81            	ret	
1196  026f               LC004:
1197  026f 89            	pushw	x
1198  0270 5f            	clrw	x
1199  0271 89            	pushw	x
1200  0272 ae0000        	ldw	x,#L302
1201  0275 cd0000        	call	_assert_failed
1203  0278 5b04          	addw	sp,#4
1204  027a 81            	ret	
1295                     ; 265 void TIM2_PWMIConfig(TIM2_Channel_TypeDef TIM2_Channel,
1295                     ; 266                      TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
1295                     ; 267                      TIM2_ICSelection_TypeDef TIM2_ICSelection,
1295                     ; 268                      TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
1295                     ; 269                      uint8_t TIM2_ICFilter)
1295                     ; 270 {
1296                     	switch	.text
1297  027b               _TIM2_PWMIConfig:
1299  027b 89            	pushw	x
1300  027c 89            	pushw	x
1301       00000002      OFST:	set	2
1304                     ; 271     uint8_t icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
1306                     ; 272     uint8_t icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
1308                     ; 275     assert_param(IS_TIM2_PWMI_CHANNEL_OK(TIM2_Channel));
1310  027d 9e            	ld	a,xh
1311  027e 4d            	tnz	a
1312  027f 270a          	jreq	L022
1313  0281 9e            	ld	a,xh
1314  0282 4a            	dec	a
1315  0283 2706          	jreq	L022
1316  0285 ae0113        	ldw	x,#275
1317  0288 cd032e        	call	LC005
1318  028b               L022:
1319                     ; 276     assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
1321  028b 7b04          	ld	a,(OFST+2,sp)
1322  028d 270a          	jreq	L032
1323  028f a144          	cp	a,#68
1324  0291 2706          	jreq	L032
1325  0293 ae0114        	ldw	x,#276
1326  0296 cd032e        	call	LC005
1327  0299               L032:
1328                     ; 277     assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
1330  0299 7b07          	ld	a,(OFST+5,sp)
1331  029b a101          	cp	a,#1
1332  029d 270e          	jreq	L042
1333  029f a102          	cp	a,#2
1334  02a1 270a          	jreq	L042
1335  02a3 a103          	cp	a,#3
1336  02a5 2706          	jreq	L042
1337  02a7 ae0115        	ldw	x,#277
1338  02aa cd032e        	call	LC005
1339  02ad               L042:
1340                     ; 278     assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
1342  02ad 7b08          	ld	a,(OFST+6,sp)
1343  02af 2711          	jreq	L052
1344  02b1 a104          	cp	a,#4
1345  02b3 270d          	jreq	L052
1346  02b5 a108          	cp	a,#8
1347  02b7 2709          	jreq	L052
1348  02b9 a10c          	cp	a,#12
1349  02bb 2705          	jreq	L052
1350  02bd ae0116        	ldw	x,#278
1351  02c0 ad6c          	call	LC005
1352  02c2               L052:
1353                     ; 281     if (TIM2_ICPolarity != TIM2_ICPOLARITY_FALLING)
1355  02c2 7b04          	ld	a,(OFST+2,sp)
1356  02c4 a144          	cp	a,#68
1357  02c6 2706          	jreq	L144
1358                     ; 283         icpolarity = (uint8_t)TIM2_ICPOLARITY_FALLING;
1360  02c8 a644          	ld	a,#68
1361  02ca 6b01          	ld	(OFST-1,sp),a
1364  02cc 2002          	jra	L344
1365  02ce               L144:
1366                     ; 287         icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
1368  02ce 0f01          	clr	(OFST-1,sp)
1370  02d0               L344:
1371                     ; 291     if (TIM2_ICSelection == TIM2_ICSELECTION_DIRECTTI)
1373  02d0 7b07          	ld	a,(OFST+5,sp)
1374  02d2 4a            	dec	a
1375  02d3 2604          	jrne	L544
1376                     ; 293         icselection = (uint8_t)TIM2_ICSELECTION_INDIRECTTI;
1378  02d5 a602          	ld	a,#2
1380  02d7 2002          	jra	L744
1381  02d9               L544:
1382                     ; 297         icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
1384  02d9 a601          	ld	a,#1
1385  02db               L744:
1386  02db 6b02          	ld	(OFST+0,sp),a
1388                     ; 300     if (TIM2_Channel == TIM2_CHANNEL_1)
1390  02dd 7b03          	ld	a,(OFST+1,sp)
1391  02df 2626          	jrne	L154
1392                     ; 303         TI1_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
1392                     ; 304                    (uint8_t)TIM2_ICFilter);
1394  02e1 7b09          	ld	a,(OFST+7,sp)
1395  02e3 88            	push	a
1396  02e4 7b08          	ld	a,(OFST+6,sp)
1397  02e6 97            	ld	xl,a
1398  02e7 7b05          	ld	a,(OFST+3,sp)
1399  02e9 95            	ld	xh,a
1400  02ea cd08c9        	call	L3_TI1_Config
1402  02ed 84            	pop	a
1403                     ; 307         TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1405  02ee 7b08          	ld	a,(OFST+6,sp)
1406  02f0 cd0709        	call	_TIM2_SetIC1Prescaler
1408                     ; 310         TI2_Config(icpolarity, icselection, TIM2_ICFilter);
1410  02f3 7b09          	ld	a,(OFST+7,sp)
1411  02f5 88            	push	a
1412  02f6 7b03          	ld	a,(OFST+1,sp)
1413  02f8 97            	ld	xl,a
1414  02f9 7b02          	ld	a,(OFST+0,sp)
1415  02fb 95            	ld	xh,a
1416  02fc cd08f9        	call	L5_TI2_Config
1418  02ff 84            	pop	a
1419                     ; 313         TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1421  0300 7b08          	ld	a,(OFST+6,sp)
1422  0302 cd0733        	call	_TIM2_SetIC2Prescaler
1425  0305 2024          	jra	L354
1426  0307               L154:
1427                     ; 318         TI2_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
1427                     ; 319                    (uint8_t)TIM2_ICFilter);
1429  0307 7b09          	ld	a,(OFST+7,sp)
1430  0309 88            	push	a
1431  030a 7b08          	ld	a,(OFST+6,sp)
1432  030c 97            	ld	xl,a
1433  030d 7b05          	ld	a,(OFST+3,sp)
1434  030f 95            	ld	xh,a
1435  0310 cd08f9        	call	L5_TI2_Config
1437  0313 84            	pop	a
1438                     ; 322         TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1440  0314 7b08          	ld	a,(OFST+6,sp)
1441  0316 cd0733        	call	_TIM2_SetIC2Prescaler
1443                     ; 325         TI1_Config((uint8_t)icpolarity, icselection, (uint8_t)TIM2_ICFilter);
1445  0319 7b09          	ld	a,(OFST+7,sp)
1446  031b 88            	push	a
1447  031c 7b03          	ld	a,(OFST+1,sp)
1448  031e 97            	ld	xl,a
1449  031f 7b02          	ld	a,(OFST+0,sp)
1450  0321 95            	ld	xh,a
1451  0322 cd08c9        	call	L3_TI1_Config
1453  0325 84            	pop	a
1454                     ; 328         TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1456  0326 7b08          	ld	a,(OFST+6,sp)
1457  0328 cd0709        	call	_TIM2_SetIC1Prescaler
1459  032b               L354:
1460                     ; 330 }
1463  032b 5b04          	addw	sp,#4
1464  032d 81            	ret	
1465  032e               LC005:
1466  032e 89            	pushw	x
1467  032f 5f            	clrw	x
1468  0330 89            	pushw	x
1469  0331 ae0000        	ldw	x,#L302
1470  0334 cd0000        	call	_assert_failed
1472  0337 5b04          	addw	sp,#4
1473  0339 81            	ret	
1529                     ; 339 void TIM2_Cmd(FunctionalState NewState)
1529                     ; 340 {
1530                     	switch	.text
1531  033a               _TIM2_Cmd:
1533  033a 88            	push	a
1534       00000000      OFST:	set	0
1537                     ; 342     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1539  033b 4d            	tnz	a
1540  033c 2711          	jreq	L203
1541  033e 4a            	dec	a
1542  033f 270e          	jreq	L203
1543  0341 ae0156        	ldw	x,#342
1544  0344 89            	pushw	x
1545  0345 5f            	clrw	x
1546  0346 89            	pushw	x
1547  0347 ae0000        	ldw	x,#L302
1548  034a cd0000        	call	_assert_failed
1550  034d 5b04          	addw	sp,#4
1551  034f               L203:
1552                     ; 345     if (NewState != DISABLE)
1554  034f 7b01          	ld	a,(OFST+1,sp)
1555  0351 2706          	jreq	L305
1556                     ; 347         TIM2->CR1 |= (uint8_t)TIM2_CR1_CEN;
1558  0353 72105300      	bset	21248,#0
1560  0357 2004          	jra	L505
1561  0359               L305:
1562                     ; 351         TIM2->CR1 &= (uint8_t)(~TIM2_CR1_CEN);
1564  0359 72115300      	bres	21248,#0
1565  035d               L505:
1566                     ; 353 }
1569  035d 84            	pop	a
1570  035e 81            	ret	
1650                     ; 369 void TIM2_ITConfig(TIM2_IT_TypeDef TIM2_IT, FunctionalState NewState)
1650                     ; 370 {
1651                     	switch	.text
1652  035f               _TIM2_ITConfig:
1654  035f 89            	pushw	x
1655       00000000      OFST:	set	0
1658                     ; 372     assert_param(IS_TIM2_IT_OK(TIM2_IT));
1660  0360 9e            	ld	a,xh
1661  0361 4d            	tnz	a
1662  0362 2705          	jreq	L013
1663  0364 9e            	ld	a,xh
1664  0365 a110          	cp	a,#16
1665  0367 2505          	jrult	L213
1666  0369               L013:
1667  0369 ae0174        	ldw	x,#372
1668  036c ad22          	call	LC006
1669  036e               L213:
1670                     ; 373     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1672  036e 7b02          	ld	a,(OFST+2,sp)
1673  0370 2708          	jreq	L223
1674  0372 4a            	dec	a
1675  0373 2705          	jreq	L223
1676  0375 ae0175        	ldw	x,#373
1677  0378 ad16          	call	LC006
1678  037a               L223:
1679                     ; 375     if (NewState != DISABLE)
1681  037a 7b02          	ld	a,(OFST+2,sp)
1682  037c 2707          	jreq	L545
1683                     ; 378         TIM2->IER |= (uint8_t)TIM2_IT;
1685  037e c65301        	ld	a,21249
1686  0381 1a01          	or	a,(OFST+1,sp)
1688  0383 2006          	jra	L745
1689  0385               L545:
1690                     ; 383         TIM2->IER &= (uint8_t)(~TIM2_IT);
1692  0385 7b01          	ld	a,(OFST+1,sp)
1693  0387 43            	cpl	a
1694  0388 c45301        	and	a,21249
1695  038b               L745:
1696  038b c75301        	ld	21249,a
1697                     ; 385 }
1700  038e 85            	popw	x
1701  038f 81            	ret	
1702  0390               LC006:
1703  0390 89            	pushw	x
1704  0391 5f            	clrw	x
1705  0392 89            	pushw	x
1706  0393 ae0000        	ldw	x,#L302
1707  0396 cd0000        	call	_assert_failed
1709  0399 5b04          	addw	sp,#4
1710  039b 81            	ret	
1747                     ; 394 void TIM2_UpdateDisableConfig(FunctionalState NewState)
1747                     ; 395 {
1748                     	switch	.text
1749  039c               _TIM2_UpdateDisableConfig:
1751  039c 88            	push	a
1752       00000000      OFST:	set	0
1755                     ; 397     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1757  039d 4d            	tnz	a
1758  039e 2711          	jreq	L433
1759  03a0 4a            	dec	a
1760  03a1 270e          	jreq	L433
1761  03a3 ae018d        	ldw	x,#397
1762  03a6 89            	pushw	x
1763  03a7 5f            	clrw	x
1764  03a8 89            	pushw	x
1765  03a9 ae0000        	ldw	x,#L302
1766  03ac cd0000        	call	_assert_failed
1768  03af 5b04          	addw	sp,#4
1769  03b1               L433:
1770                     ; 400     if (NewState != DISABLE)
1772  03b1 7b01          	ld	a,(OFST+1,sp)
1773  03b3 2706          	jreq	L765
1774                     ; 402         TIM2->CR1 |= (uint8_t)TIM2_CR1_UDIS;
1776  03b5 72125300      	bset	21248,#1
1778  03b9 2004          	jra	L175
1779  03bb               L765:
1780                     ; 406         TIM2->CR1 &= (uint8_t)(~TIM2_CR1_UDIS);
1782  03bb 72135300      	bres	21248,#1
1783  03bf               L175:
1784                     ; 408 }
1787  03bf 84            	pop	a
1788  03c0 81            	ret	
1847                     ; 418 void TIM2_UpdateRequestConfig(TIM2_UpdateSource_TypeDef TIM2_UpdateSource)
1847                     ; 419 {
1848                     	switch	.text
1849  03c1               _TIM2_UpdateRequestConfig:
1851  03c1 88            	push	a
1852       00000000      OFST:	set	0
1855                     ; 421     assert_param(IS_TIM2_UPDATE_SOURCE_OK(TIM2_UpdateSource));
1857  03c2 4d            	tnz	a
1858  03c3 2711          	jreq	L643
1859  03c5 4a            	dec	a
1860  03c6 270e          	jreq	L643
1861  03c8 ae01a5        	ldw	x,#421
1862  03cb 89            	pushw	x
1863  03cc 5f            	clrw	x
1864  03cd 89            	pushw	x
1865  03ce ae0000        	ldw	x,#L302
1866  03d1 cd0000        	call	_assert_failed
1868  03d4 5b04          	addw	sp,#4
1869  03d6               L643:
1870                     ; 424     if (TIM2_UpdateSource != TIM2_UPDATESOURCE_GLOBAL)
1872  03d6 7b01          	ld	a,(OFST+1,sp)
1873  03d8 2706          	jreq	L126
1874                     ; 426         TIM2->CR1 |= (uint8_t)TIM2_CR1_URS;
1876  03da 72145300      	bset	21248,#2
1878  03de 2004          	jra	L326
1879  03e0               L126:
1880                     ; 430         TIM2->CR1 &= (uint8_t)(~TIM2_CR1_URS);
1882  03e0 72155300      	bres	21248,#2
1883  03e4               L326:
1884                     ; 432 }
1887  03e4 84            	pop	a
1888  03e5 81            	ret	
1946                     ; 443 void TIM2_SelectOnePulseMode(TIM2_OPMode_TypeDef TIM2_OPMode)
1946                     ; 444 {
1947                     	switch	.text
1948  03e6               _TIM2_SelectOnePulseMode:
1950  03e6 88            	push	a
1951       00000000      OFST:	set	0
1954                     ; 446     assert_param(IS_TIM2_OPM_MODE_OK(TIM2_OPMode));
1956  03e7 a101          	cp	a,#1
1957  03e9 2711          	jreq	L063
1958  03eb 4d            	tnz	a
1959  03ec 270e          	jreq	L063
1960  03ee ae01be        	ldw	x,#446
1961  03f1 89            	pushw	x
1962  03f2 5f            	clrw	x
1963  03f3 89            	pushw	x
1964  03f4 ae0000        	ldw	x,#L302
1965  03f7 cd0000        	call	_assert_failed
1967  03fa 5b04          	addw	sp,#4
1968  03fc               L063:
1969                     ; 449     if (TIM2_OPMode != TIM2_OPMODE_REPETITIVE)
1971  03fc 7b01          	ld	a,(OFST+1,sp)
1972  03fe 2706          	jreq	L356
1973                     ; 451         TIM2->CR1 |= (uint8_t)TIM2_CR1_OPM;
1975  0400 72165300      	bset	21248,#3
1977  0404 2004          	jra	L556
1978  0406               L356:
1979                     ; 455         TIM2->CR1 &= (uint8_t)(~TIM2_CR1_OPM);
1981  0406 72175300      	bres	21248,#3
1982  040a               L556:
1983                     ; 458 }
1986  040a 84            	pop	a
1987  040b 81            	ret	
2056                     ; 489 void TIM2_PrescalerConfig(TIM2_Prescaler_TypeDef Prescaler,
2056                     ; 490                           TIM2_PSCReloadMode_TypeDef TIM2_PSCReloadMode)
2056                     ; 491 {
2057                     	switch	.text
2058  040c               _TIM2_PrescalerConfig:
2060  040c 89            	pushw	x
2061       00000000      OFST:	set	0
2064                     ; 493     assert_param(IS_TIM2_PRESCALER_RELOAD_OK(TIM2_PSCReloadMode));
2066  040d 9f            	ld	a,xl
2067  040e 4d            	tnz	a
2068  040f 2709          	jreq	L273
2069  0411 9f            	ld	a,xl
2070  0412 4a            	dec	a
2071  0413 2705          	jreq	L273
2072  0415 ae01ed        	ldw	x,#493
2073  0418 ad51          	call	LC007
2074  041a               L273:
2075                     ; 494     assert_param(IS_TIM2_PRESCALER_OK(Prescaler));
2077  041a 7b01          	ld	a,(OFST+1,sp)
2078  041c 2743          	jreq	L204
2079  041e a101          	cp	a,#1
2080  0420 273f          	jreq	L204
2081  0422 a102          	cp	a,#2
2082  0424 273b          	jreq	L204
2083  0426 a103          	cp	a,#3
2084  0428 2737          	jreq	L204
2085  042a a104          	cp	a,#4
2086  042c 2733          	jreq	L204
2087  042e a105          	cp	a,#5
2088  0430 272f          	jreq	L204
2089  0432 a106          	cp	a,#6
2090  0434 272b          	jreq	L204
2091  0436 a107          	cp	a,#7
2092  0438 2727          	jreq	L204
2093  043a a108          	cp	a,#8
2094  043c 2723          	jreq	L204
2095  043e a109          	cp	a,#9
2096  0440 271f          	jreq	L204
2097  0442 a10a          	cp	a,#10
2098  0444 271b          	jreq	L204
2099  0446 a10b          	cp	a,#11
2100  0448 2717          	jreq	L204
2101  044a a10c          	cp	a,#12
2102  044c 2713          	jreq	L204
2103  044e a10d          	cp	a,#13
2104  0450 270f          	jreq	L204
2105  0452 a10e          	cp	a,#14
2106  0454 270b          	jreq	L204
2107  0456 a10f          	cp	a,#15
2108  0458 2707          	jreq	L204
2109  045a ae01ee        	ldw	x,#494
2110  045d ad0c          	call	LC007
2111  045f 7b01          	ld	a,(OFST+1,sp)
2112  0461               L204:
2113                     ; 497     TIM2->PSCR = (uint8_t)Prescaler;
2115  0461 c7530c        	ld	21260,a
2116                     ; 500     TIM2->EGR = (uint8_t)TIM2_PSCReloadMode;
2118  0464 7b02          	ld	a,(OFST+2,sp)
2119  0466 c75304        	ld	21252,a
2120                     ; 501 }
2123  0469 85            	popw	x
2124  046a 81            	ret	
2125  046b               LC007:
2126  046b 89            	pushw	x
2127  046c 5f            	clrw	x
2128  046d 89            	pushw	x
2129  046e ae0000        	ldw	x,#L302
2130  0471 cd0000        	call	_assert_failed
2132  0474 5b04          	addw	sp,#4
2133  0476 81            	ret	
2192                     ; 512 void TIM2_ForcedOC1Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2192                     ; 513 {
2193                     	switch	.text
2194  0477               _TIM2_ForcedOC1Config:
2196  0477 88            	push	a
2197       00000000      OFST:	set	0
2200                     ; 515     assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
2202  0478 a150          	cp	a,#80
2203  047a 2712          	jreq	L414
2204  047c a140          	cp	a,#64
2205  047e 270e          	jreq	L414
2206  0480 ae0203        	ldw	x,#515
2207  0483 89            	pushw	x
2208  0484 5f            	clrw	x
2209  0485 89            	pushw	x
2210  0486 ae0000        	ldw	x,#L302
2211  0489 cd0000        	call	_assert_failed
2213  048c 5b04          	addw	sp,#4
2214  048e               L414:
2215                     ; 518     TIM2->CCMR1  =  (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))  
2215                     ; 519                               | (uint8_t)TIM2_ForcedAction);
2217  048e c65305        	ld	a,21253
2218  0491 a48f          	and	a,#143
2219  0493 1a01          	or	a,(OFST+1,sp)
2220  0495 c75305        	ld	21253,a
2221                     ; 520 }
2224  0498 84            	pop	a
2225  0499 81            	ret	
2262                     ; 531 void TIM2_ForcedOC2Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2262                     ; 532 {
2263                     	switch	.text
2264  049a               _TIM2_ForcedOC2Config:
2266  049a 88            	push	a
2267       00000000      OFST:	set	0
2270                     ; 534     assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
2272  049b a150          	cp	a,#80
2273  049d 2712          	jreq	L624
2274  049f a140          	cp	a,#64
2275  04a1 270e          	jreq	L624
2276  04a3 ae0216        	ldw	x,#534
2277  04a6 89            	pushw	x
2278  04a7 5f            	clrw	x
2279  04a8 89            	pushw	x
2280  04a9 ae0000        	ldw	x,#L302
2281  04ac cd0000        	call	_assert_failed
2283  04af 5b04          	addw	sp,#4
2284  04b1               L624:
2285                     ; 537     TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))  
2285                     ; 538                             | (uint8_t)TIM2_ForcedAction);
2287  04b1 c65306        	ld	a,21254
2288  04b4 a48f          	and	a,#143
2289  04b6 1a01          	or	a,(OFST+1,sp)
2290  04b8 c75306        	ld	21254,a
2291                     ; 539 }
2294  04bb 84            	pop	a
2295  04bc 81            	ret	
2332                     ; 550 void TIM2_ForcedOC3Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2332                     ; 551 {
2333                     	switch	.text
2334  04bd               _TIM2_ForcedOC3Config:
2336  04bd 88            	push	a
2337       00000000      OFST:	set	0
2340                     ; 553     assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
2342  04be a150          	cp	a,#80
2343  04c0 2712          	jreq	L044
2344  04c2 a140          	cp	a,#64
2345  04c4 270e          	jreq	L044
2346  04c6 ae0229        	ldw	x,#553
2347  04c9 89            	pushw	x
2348  04ca 5f            	clrw	x
2349  04cb 89            	pushw	x
2350  04cc ae0000        	ldw	x,#L302
2351  04cf cd0000        	call	_assert_failed
2353  04d2 5b04          	addw	sp,#4
2354  04d4               L044:
2355                     ; 556     TIM2->CCMR3  =  (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
2355                     ; 557                               | (uint8_t)TIM2_ForcedAction);
2357  04d4 c65307        	ld	a,21255
2358  04d7 a48f          	and	a,#143
2359  04d9 1a01          	or	a,(OFST+1,sp)
2360  04db c75307        	ld	21255,a
2361                     ; 558 }
2364  04de 84            	pop	a
2365  04df 81            	ret	
2402                     ; 567 void TIM2_ARRPreloadConfig(FunctionalState NewState)
2402                     ; 568 {
2403                     	switch	.text
2404  04e0               _TIM2_ARRPreloadConfig:
2406  04e0 88            	push	a
2407       00000000      OFST:	set	0
2410                     ; 570     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2412  04e1 4d            	tnz	a
2413  04e2 2711          	jreq	L254
2414  04e4 4a            	dec	a
2415  04e5 270e          	jreq	L254
2416  04e7 ae023a        	ldw	x,#570
2417  04ea 89            	pushw	x
2418  04eb 5f            	clrw	x
2419  04ec 89            	pushw	x
2420  04ed ae0000        	ldw	x,#L302
2421  04f0 cd0000        	call	_assert_failed
2423  04f3 5b04          	addw	sp,#4
2424  04f5               L254:
2425                     ; 573     if (NewState != DISABLE)
2427  04f5 7b01          	ld	a,(OFST+1,sp)
2428  04f7 2706          	jreq	L1101
2429                     ; 575         TIM2->CR1 |= (uint8_t)TIM2_CR1_ARPE;
2431  04f9 721e5300      	bset	21248,#7
2433  04fd 2004          	jra	L3101
2434  04ff               L1101:
2435                     ; 579         TIM2->CR1 &= (uint8_t)(~TIM2_CR1_ARPE);
2437  04ff 721f5300      	bres	21248,#7
2438  0503               L3101:
2439                     ; 581 }
2442  0503 84            	pop	a
2443  0504 81            	ret	
2480                     ; 590 void TIM2_OC1PreloadConfig(FunctionalState NewState)
2480                     ; 591 {
2481                     	switch	.text
2482  0505               _TIM2_OC1PreloadConfig:
2484  0505 88            	push	a
2485       00000000      OFST:	set	0
2488                     ; 593     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2490  0506 4d            	tnz	a
2491  0507 2711          	jreq	L464
2492  0509 4a            	dec	a
2493  050a 270e          	jreq	L464
2494  050c ae0251        	ldw	x,#593
2495  050f 89            	pushw	x
2496  0510 5f            	clrw	x
2497  0511 89            	pushw	x
2498  0512 ae0000        	ldw	x,#L302
2499  0515 cd0000        	call	_assert_failed
2501  0518 5b04          	addw	sp,#4
2502  051a               L464:
2503                     ; 596     if (NewState != DISABLE)
2505  051a 7b01          	ld	a,(OFST+1,sp)
2506  051c 2706          	jreq	L3301
2507                     ; 598         TIM2->CCMR1 |= (uint8_t)TIM2_CCMR_OCxPE;
2509  051e 72165305      	bset	21253,#3
2511  0522 2004          	jra	L5301
2512  0524               L3301:
2513                     ; 602         TIM2->CCMR1 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2515  0524 72175305      	bres	21253,#3
2516  0528               L5301:
2517                     ; 604 }
2520  0528 84            	pop	a
2521  0529 81            	ret	
2558                     ; 613 void TIM2_OC2PreloadConfig(FunctionalState NewState)
2558                     ; 614 {
2559                     	switch	.text
2560  052a               _TIM2_OC2PreloadConfig:
2562  052a 88            	push	a
2563       00000000      OFST:	set	0
2566                     ; 616     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2568  052b 4d            	tnz	a
2569  052c 2711          	jreq	L674
2570  052e 4a            	dec	a
2571  052f 270e          	jreq	L674
2572  0531 ae0268        	ldw	x,#616
2573  0534 89            	pushw	x
2574  0535 5f            	clrw	x
2575  0536 89            	pushw	x
2576  0537 ae0000        	ldw	x,#L302
2577  053a cd0000        	call	_assert_failed
2579  053d 5b04          	addw	sp,#4
2580  053f               L674:
2581                     ; 619     if (NewState != DISABLE)
2583  053f 7b01          	ld	a,(OFST+1,sp)
2584  0541 2706          	jreq	L5501
2585                     ; 621         TIM2->CCMR2 |= (uint8_t)TIM2_CCMR_OCxPE;
2587  0543 72165306      	bset	21254,#3
2589  0547 2004          	jra	L7501
2590  0549               L5501:
2591                     ; 625         TIM2->CCMR2 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2593  0549 72175306      	bres	21254,#3
2594  054d               L7501:
2595                     ; 627 }
2598  054d 84            	pop	a
2599  054e 81            	ret	
2636                     ; 636 void TIM2_OC3PreloadConfig(FunctionalState NewState)
2636                     ; 637 {
2637                     	switch	.text
2638  054f               _TIM2_OC3PreloadConfig:
2640  054f 88            	push	a
2641       00000000      OFST:	set	0
2644                     ; 639     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2646  0550 4d            	tnz	a
2647  0551 2711          	jreq	L015
2648  0553 4a            	dec	a
2649  0554 270e          	jreq	L015
2650  0556 ae027f        	ldw	x,#639
2651  0559 89            	pushw	x
2652  055a 5f            	clrw	x
2653  055b 89            	pushw	x
2654  055c ae0000        	ldw	x,#L302
2655  055f cd0000        	call	_assert_failed
2657  0562 5b04          	addw	sp,#4
2658  0564               L015:
2659                     ; 642     if (NewState != DISABLE)
2661  0564 7b01          	ld	a,(OFST+1,sp)
2662  0566 2706          	jreq	L7701
2663                     ; 644         TIM2->CCMR3 |= (uint8_t)TIM2_CCMR_OCxPE;
2665  0568 72165307      	bset	21255,#3
2667  056c 2004          	jra	L1011
2668  056e               L7701:
2669                     ; 648         TIM2->CCMR3 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2671  056e 72175307      	bres	21255,#3
2672  0572               L1011:
2673                     ; 650 }
2676  0572 84            	pop	a
2677  0573 81            	ret	
2751                     ; 663 void TIM2_GenerateEvent(TIM2_EventSource_TypeDef TIM2_EventSource)
2751                     ; 664 {
2752                     	switch	.text
2753  0574               _TIM2_GenerateEvent:
2755  0574 88            	push	a
2756       00000000      OFST:	set	0
2759                     ; 666     assert_param(IS_TIM2_EVENT_SOURCE_OK(TIM2_EventSource));
2761  0575 4d            	tnz	a
2762  0576 260e          	jrne	L025
2763  0578 ae029a        	ldw	x,#666
2764  057b 89            	pushw	x
2765  057c 5f            	clrw	x
2766  057d 89            	pushw	x
2767  057e ae0000        	ldw	x,#L302
2768  0581 cd0000        	call	_assert_failed
2770  0584 5b04          	addw	sp,#4
2771  0586               L025:
2772                     ; 669     TIM2->EGR = (uint8_t)TIM2_EventSource;
2774  0586 7b01          	ld	a,(OFST+1,sp)
2775  0588 c75304        	ld	21252,a
2776                     ; 670 }
2779  058b 84            	pop	a
2780  058c 81            	ret	
2817                     ; 681 void TIM2_OC1PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2817                     ; 682 {
2818                     	switch	.text
2819  058d               _TIM2_OC1PolarityConfig:
2821  058d 88            	push	a
2822       00000000      OFST:	set	0
2825                     ; 684     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
2827  058e 4d            	tnz	a
2828  058f 2712          	jreq	L235
2829  0591 a122          	cp	a,#34
2830  0593 270e          	jreq	L235
2831  0595 ae02ac        	ldw	x,#684
2832  0598 89            	pushw	x
2833  0599 5f            	clrw	x
2834  059a 89            	pushw	x
2835  059b ae0000        	ldw	x,#L302
2836  059e cd0000        	call	_assert_failed
2838  05a1 5b04          	addw	sp,#4
2839  05a3               L235:
2840                     ; 687     if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
2842  05a3 7b01          	ld	a,(OFST+1,sp)
2843  05a5 2706          	jreq	L3511
2844                     ; 689         TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1P;
2846  05a7 72125308      	bset	21256,#1
2848  05ab 2004          	jra	L5511
2849  05ad               L3511:
2850                     ; 693         TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
2852  05ad 72135308      	bres	21256,#1
2853  05b1               L5511:
2854                     ; 695 }
2857  05b1 84            	pop	a
2858  05b2 81            	ret	
2895                     ; 706 void TIM2_OC2PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2895                     ; 707 {
2896                     	switch	.text
2897  05b3               _TIM2_OC2PolarityConfig:
2899  05b3 88            	push	a
2900       00000000      OFST:	set	0
2903                     ; 709     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
2905  05b4 4d            	tnz	a
2906  05b5 2712          	jreq	L445
2907  05b7 a122          	cp	a,#34
2908  05b9 270e          	jreq	L445
2909  05bb ae02c5        	ldw	x,#709
2910  05be 89            	pushw	x
2911  05bf 5f            	clrw	x
2912  05c0 89            	pushw	x
2913  05c1 ae0000        	ldw	x,#L302
2914  05c4 cd0000        	call	_assert_failed
2916  05c7 5b04          	addw	sp,#4
2917  05c9               L445:
2918                     ; 712     if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
2920  05c9 7b01          	ld	a,(OFST+1,sp)
2921  05cb 2706          	jreq	L5711
2922                     ; 714         TIM2->CCER1 |= TIM2_CCER1_CC2P;
2924  05cd 721a5308      	bset	21256,#5
2926  05d1 2004          	jra	L7711
2927  05d3               L5711:
2928                     ; 718         TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
2930  05d3 721b5308      	bres	21256,#5
2931  05d7               L7711:
2932                     ; 720 }
2935  05d7 84            	pop	a
2936  05d8 81            	ret	
2973                     ; 731 void TIM2_OC3PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2973                     ; 732 {
2974                     	switch	.text
2975  05d9               _TIM2_OC3PolarityConfig:
2977  05d9 88            	push	a
2978       00000000      OFST:	set	0
2981                     ; 734     assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
2983  05da 4d            	tnz	a
2984  05db 2712          	jreq	L655
2985  05dd a122          	cp	a,#34
2986  05df 270e          	jreq	L655
2987  05e1 ae02de        	ldw	x,#734
2988  05e4 89            	pushw	x
2989  05e5 5f            	clrw	x
2990  05e6 89            	pushw	x
2991  05e7 ae0000        	ldw	x,#L302
2992  05ea cd0000        	call	_assert_failed
2994  05ed 5b04          	addw	sp,#4
2995  05ef               L655:
2996                     ; 737     if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
2998  05ef 7b01          	ld	a,(OFST+1,sp)
2999  05f1 2706          	jreq	L7121
3000                     ; 739         TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3P;
3002  05f3 72125309      	bset	21257,#1
3004  05f7 2004          	jra	L1221
3005  05f9               L7121:
3006                     ; 743         TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
3008  05f9 72135309      	bres	21257,#1
3009  05fd               L1221:
3010                     ; 745 }
3013  05fd 84            	pop	a
3014  05fe 81            	ret	
3060                     ; 759 void TIM2_CCxCmd(TIM2_Channel_TypeDef TIM2_Channel, FunctionalState NewState)
3060                     ; 760 {
3061                     	switch	.text
3062  05ff               _TIM2_CCxCmd:
3064  05ff 89            	pushw	x
3065       00000000      OFST:	set	0
3068                     ; 762     assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
3070  0600 9e            	ld	a,xh
3071  0601 4d            	tnz	a
3072  0602 270e          	jreq	L075
3073  0604 9e            	ld	a,xh
3074  0605 4a            	dec	a
3075  0606 270a          	jreq	L075
3076  0608 9e            	ld	a,xh
3077  0609 a102          	cp	a,#2
3078  060b 2705          	jreq	L075
3079  060d ae02fa        	ldw	x,#762
3080  0610 ad43          	call	LC008
3081  0612               L075:
3082                     ; 763     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3084  0612 7b02          	ld	a,(OFST+2,sp)
3085  0614 2708          	jreq	L006
3086  0616 4a            	dec	a
3087  0617 2705          	jreq	L006
3088  0619 ae02fb        	ldw	x,#763
3089  061c ad37          	call	LC008
3090  061e               L006:
3091                     ; 765     if (TIM2_Channel == TIM2_CHANNEL_1)
3093  061e 7b01          	ld	a,(OFST+1,sp)
3094  0620 2610          	jrne	L5421
3095                     ; 768         if (NewState != DISABLE)
3097  0622 7b02          	ld	a,(OFST+2,sp)
3098  0624 2706          	jreq	L7421
3099                     ; 770             TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1E;
3101  0626 72105308      	bset	21256,#0
3103  062a 2027          	jra	L3521
3104  062c               L7421:
3105                     ; 774             TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
3107  062c 72115308      	bres	21256,#0
3108  0630 2021          	jra	L3521
3109  0632               L5421:
3110                     ; 778     else if (TIM2_Channel == TIM2_CHANNEL_2)
3112  0632 4a            	dec	a
3113  0633 2610          	jrne	L5521
3114                     ; 781         if (NewState != DISABLE)
3116  0635 7b02          	ld	a,(OFST+2,sp)
3117  0637 2706          	jreq	L7521
3118                     ; 783             TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC2E;
3120  0639 72185308      	bset	21256,#4
3122  063d 2014          	jra	L3521
3123  063f               L7521:
3124                     ; 787             TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
3126  063f 72195308      	bres	21256,#4
3127  0643 200e          	jra	L3521
3128  0645               L5521:
3129                     ; 793         if (NewState != DISABLE)
3131  0645 7b02          	ld	a,(OFST+2,sp)
3132  0647 2706          	jreq	L5621
3133                     ; 795             TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3E;
3135  0649 72105309      	bset	21257,#0
3137  064d 2004          	jra	L3521
3138  064f               L5621:
3139                     ; 799             TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
3141  064f 72115309      	bres	21257,#0
3142  0653               L3521:
3143                     ; 802 }
3146  0653 85            	popw	x
3147  0654 81            	ret	
3148  0655               LC008:
3149  0655 89            	pushw	x
3150  0656 5f            	clrw	x
3151  0657 89            	pushw	x
3152  0658 ae0000        	ldw	x,#L302
3153  065b cd0000        	call	_assert_failed
3155  065e 5b04          	addw	sp,#4
3156  0660 81            	ret	
3202                     ; 824 void TIM2_SelectOCxM(TIM2_Channel_TypeDef TIM2_Channel, TIM2_OCMode_TypeDef TIM2_OCMode)
3202                     ; 825 {
3203                     	switch	.text
3204  0661               _TIM2_SelectOCxM:
3206  0661 89            	pushw	x
3207       00000000      OFST:	set	0
3210                     ; 827     assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
3212  0662 9e            	ld	a,xh
3213  0663 4d            	tnz	a
3214  0664 270e          	jreq	L216
3215  0666 9e            	ld	a,xh
3216  0667 4a            	dec	a
3217  0668 270a          	jreq	L216
3218  066a 9e            	ld	a,xh
3219  066b a102          	cp	a,#2
3220  066d 2705          	jreq	L216
3221  066f ae033b        	ldw	x,#827
3222  0672 ad5c          	call	LC009
3223  0674               L216:
3224                     ; 828     assert_param(IS_TIM2_OCM_OK(TIM2_OCMode));
3226  0674 7b02          	ld	a,(OFST+2,sp)
3227  0676 2721          	jreq	L226
3228  0678 a110          	cp	a,#16
3229  067a 271d          	jreq	L226
3230  067c a120          	cp	a,#32
3231  067e 2719          	jreq	L226
3232  0680 a130          	cp	a,#48
3233  0682 2715          	jreq	L226
3234  0684 a160          	cp	a,#96
3235  0686 2711          	jreq	L226
3236  0688 a170          	cp	a,#112
3237  068a 270d          	jreq	L226
3238  068c a150          	cp	a,#80
3239  068e 2709          	jreq	L226
3240  0690 a140          	cp	a,#64
3241  0692 2705          	jreq	L226
3242  0694 ae033c        	ldw	x,#828
3243  0697 ad37          	call	LC009
3244  0699               L226:
3245                     ; 830     if (TIM2_Channel == TIM2_CHANNEL_1)
3247  0699 7b01          	ld	a,(OFST+1,sp)
3248  069b 2610          	jrne	L3131
3249                     ; 833         TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
3251  069d 72115308      	bres	21256,#0
3252                     ; 836         TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))
3252                     ; 837                                | (uint8_t)TIM2_OCMode);
3254  06a1 c65305        	ld	a,21253
3255  06a4 a48f          	and	a,#143
3256  06a6 1a02          	or	a,(OFST+2,sp)
3257  06a8 c75305        	ld	21253,a
3259  06ab 2021          	jra	L5131
3260  06ad               L3131:
3261                     ; 839     else if (TIM2_Channel == TIM2_CHANNEL_2)
3263  06ad 4a            	dec	a
3264  06ae 2610          	jrne	L7131
3265                     ; 842         TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
3267  06b0 72195308      	bres	21256,#4
3268                     ; 845         TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))
3268                     ; 846                                 | (uint8_t)TIM2_OCMode);
3270  06b4 c65306        	ld	a,21254
3271  06b7 a48f          	and	a,#143
3272  06b9 1a02          	or	a,(OFST+2,sp)
3273  06bb c75306        	ld	21254,a
3275  06be 200e          	jra	L5131
3276  06c0               L7131:
3277                     ; 851         TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
3279  06c0 72115309      	bres	21257,#0
3280                     ; 854         TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
3280                     ; 855                                 | (uint8_t)TIM2_OCMode);
3282  06c4 c65307        	ld	a,21255
3283  06c7 a48f          	and	a,#143
3284  06c9 1a02          	or	a,(OFST+2,sp)
3285  06cb c75307        	ld	21255,a
3286  06ce               L5131:
3287                     ; 857 }
3290  06ce 85            	popw	x
3291  06cf 81            	ret	
3292  06d0               LC009:
3293  06d0 89            	pushw	x
3294  06d1 5f            	clrw	x
3295  06d2 89            	pushw	x
3296  06d3 ae0000        	ldw	x,#L302
3297  06d6 cd0000        	call	_assert_failed
3299  06d9 5b04          	addw	sp,#4
3300  06db 81            	ret	
3332                     ; 866 void TIM2_SetCounter(uint16_t Counter)
3332                     ; 867 {
3333                     	switch	.text
3334  06dc               _TIM2_SetCounter:
3338                     ; 869     TIM2->CNTRH = (uint8_t)(Counter >> 8);
3340  06dc 9e            	ld	a,xh
3341  06dd c7530a        	ld	21258,a
3342                     ; 870     TIM2->CNTRL = (uint8_t)(Counter);
3344  06e0 9f            	ld	a,xl
3345  06e1 c7530b        	ld	21259,a
3346                     ; 872 }
3349  06e4 81            	ret	
3381                     ; 881 void TIM2_SetAutoreload(uint16_t Autoreload)
3381                     ; 882 {
3382                     	switch	.text
3383  06e5               _TIM2_SetAutoreload:
3387                     ; 885     TIM2->ARRH = (uint8_t)(Autoreload >> 8);
3389  06e5 9e            	ld	a,xh
3390  06e6 c7530d        	ld	21261,a
3391                     ; 886     TIM2->ARRL = (uint8_t)(Autoreload);
3393  06e9 9f            	ld	a,xl
3394  06ea c7530e        	ld	21262,a
3395                     ; 888 }
3398  06ed 81            	ret	
3430                     ; 897 void TIM2_SetCompare1(uint16_t Compare1)
3430                     ; 898 {
3431                     	switch	.text
3432  06ee               _TIM2_SetCompare1:
3436                     ; 900     TIM2->CCR1H = (uint8_t)(Compare1 >> 8);
3438  06ee 9e            	ld	a,xh
3439  06ef c7530f        	ld	21263,a
3440                     ; 901     TIM2->CCR1L = (uint8_t)(Compare1);
3442  06f2 9f            	ld	a,xl
3443  06f3 c75310        	ld	21264,a
3444                     ; 903 }
3447  06f6 81            	ret	
3479                     ; 912 void TIM2_SetCompare2(uint16_t Compare2)
3479                     ; 913 {
3480                     	switch	.text
3481  06f7               _TIM2_SetCompare2:
3485                     ; 915     TIM2->CCR2H = (uint8_t)(Compare2 >> 8);
3487  06f7 9e            	ld	a,xh
3488  06f8 c75311        	ld	21265,a
3489                     ; 916     TIM2->CCR2L = (uint8_t)(Compare2);
3491  06fb 9f            	ld	a,xl
3492  06fc c75312        	ld	21266,a
3493                     ; 918 }
3496  06ff 81            	ret	
3528                     ; 927 void TIM2_SetCompare3(uint16_t Compare3)
3528                     ; 928 {
3529                     	switch	.text
3530  0700               _TIM2_SetCompare3:
3534                     ; 930     TIM2->CCR3H = (uint8_t)(Compare3 >> 8);
3536  0700 9e            	ld	a,xh
3537  0701 c75313        	ld	21267,a
3538                     ; 931     TIM2->CCR3L = (uint8_t)(Compare3);
3540  0704 9f            	ld	a,xl
3541  0705 c75314        	ld	21268,a
3542                     ; 933 }
3545  0708 81            	ret	
3582                     ; 946 void TIM2_SetIC1Prescaler(TIM2_ICPSC_TypeDef TIM2_IC1Prescaler)
3582                     ; 947 {
3583                     	switch	.text
3584  0709               _TIM2_SetIC1Prescaler:
3586  0709 88            	push	a
3587       00000000      OFST:	set	0
3590                     ; 949     assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC1Prescaler));
3592  070a 4d            	tnz	a
3593  070b 271a          	jreq	L646
3594  070d a104          	cp	a,#4
3595  070f 2716          	jreq	L646
3596  0711 a108          	cp	a,#8
3597  0713 2712          	jreq	L646
3598  0715 a10c          	cp	a,#12
3599  0717 270e          	jreq	L646
3600  0719 ae03b5        	ldw	x,#949
3601  071c 89            	pushw	x
3602  071d 5f            	clrw	x
3603  071e 89            	pushw	x
3604  071f ae0000        	ldw	x,#L302
3605  0722 cd0000        	call	_assert_failed
3607  0725 5b04          	addw	sp,#4
3608  0727               L646:
3609                     ; 952     TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3609                     ; 953                             | (uint8_t)TIM2_IC1Prescaler);
3611  0727 c65305        	ld	a,21253
3612  072a a4f3          	and	a,#243
3613  072c 1a01          	or	a,(OFST+1,sp)
3614  072e c75305        	ld	21253,a
3615                     ; 954 }
3618  0731 84            	pop	a
3619  0732 81            	ret	
3656                     ; 966 void TIM2_SetIC2Prescaler(TIM2_ICPSC_TypeDef TIM2_IC2Prescaler)
3656                     ; 967 {
3657                     	switch	.text
3658  0733               _TIM2_SetIC2Prescaler:
3660  0733 88            	push	a
3661       00000000      OFST:	set	0
3664                     ; 969     assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC2Prescaler));
3666  0734 4d            	tnz	a
3667  0735 271a          	jreq	L066
3668  0737 a104          	cp	a,#4
3669  0739 2716          	jreq	L066
3670  073b a108          	cp	a,#8
3671  073d 2712          	jreq	L066
3672  073f a10c          	cp	a,#12
3673  0741 270e          	jreq	L066
3674  0743 ae03c9        	ldw	x,#969
3675  0746 89            	pushw	x
3676  0747 5f            	clrw	x
3677  0748 89            	pushw	x
3678  0749 ae0000        	ldw	x,#L302
3679  074c cd0000        	call	_assert_failed
3681  074f 5b04          	addw	sp,#4
3682  0751               L066:
3683                     ; 972     TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3683                     ; 973                             | (uint8_t)TIM2_IC2Prescaler);
3685  0751 c65306        	ld	a,21254
3686  0754 a4f3          	and	a,#243
3687  0756 1a01          	or	a,(OFST+1,sp)
3688  0758 c75306        	ld	21254,a
3689                     ; 974 }
3692  075b 84            	pop	a
3693  075c 81            	ret	
3730                     ; 986 void TIM2_SetIC3Prescaler(TIM2_ICPSC_TypeDef TIM2_IC3Prescaler)
3730                     ; 987 {
3731                     	switch	.text
3732  075d               _TIM2_SetIC3Prescaler:
3734  075d 88            	push	a
3735       00000000      OFST:	set	0
3738                     ; 990     assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC3Prescaler));
3740  075e 4d            	tnz	a
3741  075f 271a          	jreq	L276
3742  0761 a104          	cp	a,#4
3743  0763 2716          	jreq	L276
3744  0765 a108          	cp	a,#8
3745  0767 2712          	jreq	L276
3746  0769 a10c          	cp	a,#12
3747  076b 270e          	jreq	L276
3748  076d ae03de        	ldw	x,#990
3749  0770 89            	pushw	x
3750  0771 5f            	clrw	x
3751  0772 89            	pushw	x
3752  0773 ae0000        	ldw	x,#L302
3753  0776 cd0000        	call	_assert_failed
3755  0779 5b04          	addw	sp,#4
3756  077b               L276:
3757                     ; 992     TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3757                     ; 993                             | (uint8_t)TIM2_IC3Prescaler);
3759  077b c65307        	ld	a,21255
3760  077e a4f3          	and	a,#243
3761  0780 1a01          	or	a,(OFST+1,sp)
3762  0782 c75307        	ld	21255,a
3763                     ; 994 }
3766  0785 84            	pop	a
3767  0786 81            	ret	
3813                     ; 1001 uint16_t TIM2_GetCapture1(void)
3813                     ; 1002 {
3814                     	switch	.text
3815  0787               _TIM2_GetCapture1:
3817  0787 5204          	subw	sp,#4
3818       00000004      OFST:	set	4
3821                     ; 1004     uint16_t tmpccr1 = 0;
3823                     ; 1005     uint8_t tmpccr1l=0, tmpccr1h=0;
3827                     ; 1007     tmpccr1h = TIM2->CCR1H;
3829  0789 c6530f        	ld	a,21263
3830  078c 6b02          	ld	(OFST-2,sp),a
3832                     ; 1008     tmpccr1l = TIM2->CCR1L;
3834  078e c65310        	ld	a,21264
3835  0791 6b01          	ld	(OFST-3,sp),a
3837                     ; 1010     tmpccr1 = (uint16_t)(tmpccr1l);
3839  0793 5f            	clrw	x
3840  0794 97            	ld	xl,a
3841  0795 1f03          	ldw	(OFST-1,sp),x
3843                     ; 1011     tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
3845  0797 5f            	clrw	x
3846  0798 7b02          	ld	a,(OFST-2,sp)
3847  079a 97            	ld	xl,a
3848  079b 7b04          	ld	a,(OFST+0,sp)
3849  079d 01            	rrwa	x,a
3850  079e 1a03          	or	a,(OFST-1,sp)
3851  07a0 01            	rrwa	x,a
3853                     ; 1013     return (uint16_t)tmpccr1;
3857  07a1 5b04          	addw	sp,#4
3858  07a3 81            	ret	
3904                     ; 1021 uint16_t TIM2_GetCapture2(void)
3904                     ; 1022 {
3905                     	switch	.text
3906  07a4               _TIM2_GetCapture2:
3908  07a4 5204          	subw	sp,#4
3909       00000004      OFST:	set	4
3912                     ; 1024     uint16_t tmpccr2 = 0;
3914                     ; 1025     uint8_t tmpccr2l=0, tmpccr2h=0;
3918                     ; 1027     tmpccr2h = TIM2->CCR2H;
3920  07a6 c65311        	ld	a,21265
3921  07a9 6b02          	ld	(OFST-2,sp),a
3923                     ; 1028     tmpccr2l = TIM2->CCR2L;
3925  07ab c65312        	ld	a,21266
3926  07ae 6b01          	ld	(OFST-3,sp),a
3928                     ; 1030     tmpccr2 = (uint16_t)(tmpccr2l);
3930  07b0 5f            	clrw	x
3931  07b1 97            	ld	xl,a
3932  07b2 1f03          	ldw	(OFST-1,sp),x
3934                     ; 1031     tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
3936  07b4 5f            	clrw	x
3937  07b5 7b02          	ld	a,(OFST-2,sp)
3938  07b7 97            	ld	xl,a
3939  07b8 7b04          	ld	a,(OFST+0,sp)
3940  07ba 01            	rrwa	x,a
3941  07bb 1a03          	or	a,(OFST-1,sp)
3942  07bd 01            	rrwa	x,a
3944                     ; 1033     return (uint16_t)tmpccr2;
3948  07be 5b04          	addw	sp,#4
3949  07c0 81            	ret	
3995                     ; 1041 uint16_t TIM2_GetCapture3(void)
3995                     ; 1042 {
3996                     	switch	.text
3997  07c1               _TIM2_GetCapture3:
3999  07c1 5204          	subw	sp,#4
4000       00000004      OFST:	set	4
4003                     ; 1044     uint16_t tmpccr3 = 0;
4005                     ; 1045     uint8_t tmpccr3l=0, tmpccr3h=0;
4009                     ; 1047     tmpccr3h = TIM2->CCR3H;
4011  07c3 c65313        	ld	a,21267
4012  07c6 6b02          	ld	(OFST-2,sp),a
4014                     ; 1048     tmpccr3l = TIM2->CCR3L;
4016  07c8 c65314        	ld	a,21268
4017  07cb 6b01          	ld	(OFST-3,sp),a
4019                     ; 1050     tmpccr3 = (uint16_t)(tmpccr3l);
4021  07cd 5f            	clrw	x
4022  07ce 97            	ld	xl,a
4023  07cf 1f03          	ldw	(OFST-1,sp),x
4025                     ; 1051     tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
4027  07d1 5f            	clrw	x
4028  07d2 7b02          	ld	a,(OFST-2,sp)
4029  07d4 97            	ld	xl,a
4030  07d5 7b04          	ld	a,(OFST+0,sp)
4031  07d7 01            	rrwa	x,a
4032  07d8 1a03          	or	a,(OFST-1,sp)
4033  07da 01            	rrwa	x,a
4035                     ; 1053     return (uint16_t)tmpccr3;
4039  07db 5b04          	addw	sp,#4
4040  07dd 81            	ret	
4072                     ; 1061 uint16_t TIM2_GetCounter(void)
4072                     ; 1062 {
4073                     	switch	.text
4074  07de               _TIM2_GetCounter:
4076  07de 89            	pushw	x
4077       00000002      OFST:	set	2
4080                     ; 1063      uint16_t tmpcntr = 0;
4082                     ; 1065     tmpcntr =  ((uint16_t)TIM2->CNTRH << 8);
4084  07df c6530a        	ld	a,21258
4085  07e2 97            	ld	xl,a
4086  07e3 4f            	clr	a
4087  07e4 02            	rlwa	x,a
4088  07e5 1f01          	ldw	(OFST-1,sp),x
4090                     ; 1067     return (uint16_t)( tmpcntr| (uint16_t)(TIM2->CNTRL));
4092  07e7 c6530b        	ld	a,21259
4093  07ea 5f            	clrw	x
4094  07eb 97            	ld	xl,a
4095  07ec 01            	rrwa	x,a
4096  07ed 1a02          	or	a,(OFST+0,sp)
4097  07ef 01            	rrwa	x,a
4098  07f0 1a01          	or	a,(OFST-1,sp)
4099  07f2 01            	rrwa	x,a
4102  07f3 5b02          	addw	sp,#2
4103  07f5 81            	ret	
4127                     ; 1076 TIM2_Prescaler_TypeDef TIM2_GetPrescaler(void)
4127                     ; 1077 {
4128                     	switch	.text
4129  07f6               _TIM2_GetPrescaler:
4133                     ; 1079     return (TIM2_Prescaler_TypeDef)(TIM2->PSCR);
4135  07f6 c6530c        	ld	a,21260
4138  07f9 81            	ret	
4274                     ; 1096 FlagStatus TIM2_GetFlagStatus(TIM2_FLAG_TypeDef TIM2_FLAG)
4274                     ; 1097 {
4275                     	switch	.text
4276  07fa               _TIM2_GetFlagStatus:
4278  07fa 89            	pushw	x
4279  07fb 89            	pushw	x
4280       00000002      OFST:	set	2
4283                     ; 1098     FlagStatus bitstatus = RESET;
4285                     ; 1099     uint8_t tim2_flag_l = 0, tim2_flag_h = 0;
4289                     ; 1102     assert_param(IS_TIM2_GET_FLAG_OK(TIM2_FLAG));
4291  07fc a30001        	cpw	x,#1
4292  07ff 272c          	jreq	L617
4293  0801 a30002        	cpw	x,#2
4294  0804 2727          	jreq	L617
4295  0806 a30004        	cpw	x,#4
4296  0809 2722          	jreq	L617
4297  080b a30008        	cpw	x,#8
4298  080e 271d          	jreq	L617
4299  0810 a30200        	cpw	x,#512
4300  0813 2718          	jreq	L617
4301  0815 a30400        	cpw	x,#1024
4302  0818 2713          	jreq	L617
4303  081a a30800        	cpw	x,#2048
4304  081d 270e          	jreq	L617
4305  081f ae044e        	ldw	x,#1102
4306  0822 89            	pushw	x
4307  0823 5f            	clrw	x
4308  0824 89            	pushw	x
4309  0825 ae0000        	ldw	x,#L302
4310  0828 cd0000        	call	_assert_failed
4312  082b 5b04          	addw	sp,#4
4313  082d               L617:
4314                     ; 1104     tim2_flag_l = (uint8_t)(TIM2->SR1 & (uint8_t)TIM2_FLAG);
4316  082d c65302        	ld	a,21250
4317  0830 1404          	and	a,(OFST+2,sp)
4318  0832 6b01          	ld	(OFST-1,sp),a
4320                     ; 1105     tim2_flag_h = (uint8_t)((uint16_t)TIM2_FLAG >> 8);
4322  0834 7b03          	ld	a,(OFST+1,sp)
4323  0836 6b02          	ld	(OFST+0,sp),a
4325                     ; 1107     if ((tim2_flag_l | (uint8_t)(TIM2->SR2 & tim2_flag_h)) != (uint8_t)RESET )
4327  0838 c45303        	and	a,21251
4328  083b 1a01          	or	a,(OFST-1,sp)
4329  083d 2702          	jreq	L5561
4330                     ; 1109         bitstatus = SET;
4332  083f a601          	ld	a,#1
4335  0841               L5561:
4336                     ; 1113         bitstatus = RESET;
4339                     ; 1115     return (FlagStatus)bitstatus;
4343  0841 5b04          	addw	sp,#4
4344  0843 81            	ret	
4380                     ; 1132 void TIM2_ClearFlag(TIM2_FLAG_TypeDef TIM2_FLAG)
4380                     ; 1133 {
4381                     	switch	.text
4382  0844               _TIM2_ClearFlag:
4384  0844 89            	pushw	x
4385       00000000      OFST:	set	0
4388                     ; 1135     assert_param(IS_TIM2_CLEAR_FLAG_OK(TIM2_FLAG));
4390  0845 01            	rrwa	x,a
4391  0846 a4f0          	and	a,#240
4392  0848 01            	rrwa	x,a
4393  0849 a4f1          	and	a,#241
4394  084b 01            	rrwa	x,a
4395  084c 5d            	tnzw	x
4396  084d 2604          	jrne	L427
4397  084f 1e01          	ldw	x,(OFST+1,sp)
4398  0851 260e          	jrne	L627
4399  0853               L427:
4400  0853 ae046f        	ldw	x,#1135
4401  0856 89            	pushw	x
4402  0857 5f            	clrw	x
4403  0858 89            	pushw	x
4404  0859 ae0000        	ldw	x,#L302
4405  085c cd0000        	call	_assert_failed
4407  085f 5b04          	addw	sp,#4
4408  0861               L627:
4409                     ; 1138     TIM2->SR1 = (uint8_t)(~((uint8_t)(TIM2_FLAG)));
4411  0861 7b02          	ld	a,(OFST+2,sp)
4412  0863 43            	cpl	a
4413  0864 c75302        	ld	21250,a
4414                     ; 1139     TIM2->SR2 = (uint8_t)(~((uint8_t)((uint8_t)TIM2_FLAG >> 8)));
4416  0867 35ff5303      	mov	21251,#255
4417                     ; 1140 }
4420  086b 85            	popw	x
4421  086c 81            	ret	
4482                     ; 1154 ITStatus TIM2_GetITStatus(TIM2_IT_TypeDef TIM2_IT)
4482                     ; 1155 {
4483                     	switch	.text
4484  086d               _TIM2_GetITStatus:
4486  086d 88            	push	a
4487  086e 89            	pushw	x
4488       00000002      OFST:	set	2
4491                     ; 1156     ITStatus bitstatus = RESET;
4493                     ; 1157     uint8_t TIM2_itStatus = 0, TIM2_itEnable = 0;
4497                     ; 1160     assert_param(IS_TIM2_GET_IT_OK(TIM2_IT));
4499  086f a101          	cp	a,#1
4500  0871 271a          	jreq	L047
4501  0873 a102          	cp	a,#2
4502  0875 2716          	jreq	L047
4503  0877 a104          	cp	a,#4
4504  0879 2712          	jreq	L047
4505  087b a108          	cp	a,#8
4506  087d 270e          	jreq	L047
4507  087f ae0488        	ldw	x,#1160
4508  0882 89            	pushw	x
4509  0883 5f            	clrw	x
4510  0884 89            	pushw	x
4511  0885 ae0000        	ldw	x,#L302
4512  0888 cd0000        	call	_assert_failed
4514  088b 5b04          	addw	sp,#4
4515  088d               L047:
4516                     ; 1162     TIM2_itStatus = (uint8_t)(TIM2->SR1 & TIM2_IT);
4518  088d c65302        	ld	a,21250
4519  0890 1403          	and	a,(OFST+1,sp)
4520  0892 6b01          	ld	(OFST-1,sp),a
4522                     ; 1164     TIM2_itEnable = (uint8_t)(TIM2->IER & TIM2_IT);
4524  0894 c65301        	ld	a,21249
4525  0897 1403          	and	a,(OFST+1,sp)
4526  0899 6b02          	ld	(OFST+0,sp),a
4528                     ; 1166     if ((TIM2_itStatus != (uint8_t)RESET ) && (TIM2_itEnable != (uint8_t)RESET ))
4530  089b 7b01          	ld	a,(OFST-1,sp)
4531  089d 2708          	jreq	L5271
4533  089f 7b02          	ld	a,(OFST+0,sp)
4534  08a1 2704          	jreq	L5271
4535                     ; 1168         bitstatus = SET;
4537  08a3 a601          	ld	a,#1
4540  08a5 2001          	jra	L7271
4541  08a7               L5271:
4542                     ; 1172         bitstatus = RESET;
4544  08a7 4f            	clr	a
4546  08a8               L7271:
4547                     ; 1174     return (ITStatus)(bitstatus);
4551  08a8 5b03          	addw	sp,#3
4552  08aa 81            	ret	
4589                     ; 1188 void TIM2_ClearITPendingBit(TIM2_IT_TypeDef TIM2_IT)
4589                     ; 1189 {
4590                     	switch	.text
4591  08ab               _TIM2_ClearITPendingBit:
4593  08ab 88            	push	a
4594       00000000      OFST:	set	0
4597                     ; 1191     assert_param(IS_TIM2_IT_OK(TIM2_IT));
4599  08ac 4d            	tnz	a
4600  08ad 2704          	jreq	L647
4601  08af a110          	cp	a,#16
4602  08b1 250e          	jrult	L057
4603  08b3               L647:
4604  08b3 ae04a7        	ldw	x,#1191
4605  08b6 89            	pushw	x
4606  08b7 5f            	clrw	x
4607  08b8 89            	pushw	x
4608  08b9 ae0000        	ldw	x,#L302
4609  08bc cd0000        	call	_assert_failed
4611  08bf 5b04          	addw	sp,#4
4612  08c1               L057:
4613                     ; 1194     TIM2->SR1 = (uint8_t)(~TIM2_IT);
4615  08c1 7b01          	ld	a,(OFST+1,sp)
4616  08c3 43            	cpl	a
4617  08c4 c75302        	ld	21250,a
4618                     ; 1195 }
4621  08c7 84            	pop	a
4622  08c8 81            	ret	
4668                     ; 1214 static void TI1_Config(uint8_t TIM2_ICPolarity,
4668                     ; 1215                        uint8_t TIM2_ICSelection,
4668                     ; 1216                        uint8_t TIM2_ICFilter)
4668                     ; 1217 {
4669                     	switch	.text
4670  08c9               L3_TI1_Config:
4672  08c9 89            	pushw	x
4673  08ca 88            	push	a
4674       00000001      OFST:	set	1
4677                     ; 1219     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
4679  08cb 72115308      	bres	21256,#0
4680                     ; 1222     TIM2->CCMR1  = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF )))
4680                     ; 1223                              | (uint8_t)(((TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
4682  08cf 7b06          	ld	a,(OFST+5,sp)
4683  08d1 97            	ld	xl,a
4684  08d2 a610          	ld	a,#16
4685  08d4 42            	mul	x,a
4686  08d5 9f            	ld	a,xl
4687  08d6 1a03          	or	a,(OFST+2,sp)
4688  08d8 6b01          	ld	(OFST+0,sp),a
4690  08da c65305        	ld	a,21253
4691  08dd a40c          	and	a,#12
4692  08df 1a01          	or	a,(OFST+0,sp)
4693  08e1 c75305        	ld	21253,a
4694                     ; 1226     if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
4696  08e4 7b02          	ld	a,(OFST+1,sp)
4697  08e6 2706          	jreq	L7671
4698                     ; 1228         TIM2->CCER1 |= TIM2_CCER1_CC1P;
4700  08e8 72125308      	bset	21256,#1
4702  08ec 2004          	jra	L1771
4703  08ee               L7671:
4704                     ; 1232         TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
4706  08ee 72135308      	bres	21256,#1
4707  08f2               L1771:
4708                     ; 1235     TIM2->CCER1 |= TIM2_CCER1_CC1E;
4710  08f2 72105308      	bset	21256,#0
4711                     ; 1236 }
4714  08f6 5b03          	addw	sp,#3
4715  08f8 81            	ret	
4761                     ; 1255 static void TI2_Config(uint8_t TIM2_ICPolarity,
4761                     ; 1256                        uint8_t TIM2_ICSelection,
4761                     ; 1257                        uint8_t TIM2_ICFilter)
4761                     ; 1258 {
4762                     	switch	.text
4763  08f9               L5_TI2_Config:
4765  08f9 89            	pushw	x
4766  08fa 88            	push	a
4767       00000001      OFST:	set	1
4770                     ; 1260     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
4772  08fb 72195308      	bres	21256,#4
4773                     ; 1263     TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF ))) 
4773                     ; 1264                             | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
4775  08ff 7b06          	ld	a,(OFST+5,sp)
4776  0901 97            	ld	xl,a
4777  0902 a610          	ld	a,#16
4778  0904 42            	mul	x,a
4779  0905 9f            	ld	a,xl
4780  0906 1a03          	or	a,(OFST+2,sp)
4781  0908 6b01          	ld	(OFST+0,sp),a
4783  090a c65306        	ld	a,21254
4784  090d a40c          	and	a,#12
4785  090f 1a01          	or	a,(OFST+0,sp)
4786  0911 c75306        	ld	21254,a
4787                     ; 1268     if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
4789  0914 7b02          	ld	a,(OFST+1,sp)
4790  0916 2706          	jreq	L3102
4791                     ; 1270         TIM2->CCER1 |= TIM2_CCER1_CC2P;
4793  0918 721a5308      	bset	21256,#5
4795  091c 2004          	jra	L5102
4796  091e               L3102:
4797                     ; 1274         TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
4799  091e 721b5308      	bres	21256,#5
4800  0922               L5102:
4801                     ; 1278     TIM2->CCER1 |= TIM2_CCER1_CC2E;
4803  0922 72185308      	bset	21256,#4
4804                     ; 1280 }
4807  0926 5b03          	addw	sp,#3
4808  0928 81            	ret	
4854                     ; 1296 static void TI3_Config(uint8_t TIM2_ICPolarity, uint8_t TIM2_ICSelection,
4854                     ; 1297                        uint8_t TIM2_ICFilter)
4854                     ; 1298 {
4855                     	switch	.text
4856  0929               L7_TI3_Config:
4858  0929 89            	pushw	x
4859  092a 88            	push	a
4860       00000001      OFST:	set	1
4863                     ; 1300     TIM2->CCER2 &=  (uint8_t)(~TIM2_CCER2_CC3E);
4865  092b 72115309      	bres	21257,#0
4866                     ; 1303     TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF))) 
4866                     ; 1304                             | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
4868  092f 7b06          	ld	a,(OFST+5,sp)
4869  0931 97            	ld	xl,a
4870  0932 a610          	ld	a,#16
4871  0934 42            	mul	x,a
4872  0935 9f            	ld	a,xl
4873  0936 1a03          	or	a,(OFST+2,sp)
4874  0938 6b01          	ld	(OFST+0,sp),a
4876  093a c65307        	ld	a,21255
4877  093d a40c          	and	a,#12
4878  093f 1a01          	or	a,(OFST+0,sp)
4879  0941 c75307        	ld	21255,a
4880                     ; 1308     if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
4882  0944 7b02          	ld	a,(OFST+1,sp)
4883  0946 2706          	jreq	L7302
4884                     ; 1310         TIM2->CCER2 |= TIM2_CCER2_CC3P;
4886  0948 72125309      	bset	21257,#1
4888  094c 2004          	jra	L1402
4889  094e               L7302:
4890                     ; 1314         TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
4892  094e 72135309      	bres	21257,#1
4893  0952               L1402:
4894                     ; 1317     TIM2->CCER2 |= TIM2_CCER2_CC3E;
4896  0952 72105309      	bset	21257,#0
4897                     ; 1318 }
4900  0956 5b03          	addw	sp,#3
4901  0958 81            	ret	
4914                     	xdef	_TIM2_ClearITPendingBit
4915                     	xdef	_TIM2_GetITStatus
4916                     	xdef	_TIM2_ClearFlag
4917                     	xdef	_TIM2_GetFlagStatus
4918                     	xdef	_TIM2_GetPrescaler
4919                     	xdef	_TIM2_GetCounter
4920                     	xdef	_TIM2_GetCapture3
4921                     	xdef	_TIM2_GetCapture2
4922                     	xdef	_TIM2_GetCapture1
4923                     	xdef	_TIM2_SetIC3Prescaler
4924                     	xdef	_TIM2_SetIC2Prescaler
4925                     	xdef	_TIM2_SetIC1Prescaler
4926                     	xdef	_TIM2_SetCompare3
4927                     	xdef	_TIM2_SetCompare2
4928                     	xdef	_TIM2_SetCompare1
4929                     	xdef	_TIM2_SetAutoreload
4930                     	xdef	_TIM2_SetCounter
4931                     	xdef	_TIM2_SelectOCxM
4932                     	xdef	_TIM2_CCxCmd
4933                     	xdef	_TIM2_OC3PolarityConfig
4934                     	xdef	_TIM2_OC2PolarityConfig
4935                     	xdef	_TIM2_OC1PolarityConfig
4936                     	xdef	_TIM2_GenerateEvent
4937                     	xdef	_TIM2_OC3PreloadConfig
4938                     	xdef	_TIM2_OC2PreloadConfig
4939                     	xdef	_TIM2_OC1PreloadConfig
4940                     	xdef	_TIM2_ARRPreloadConfig
4941                     	xdef	_TIM2_ForcedOC3Config
4942                     	xdef	_TIM2_ForcedOC2Config
4943                     	xdef	_TIM2_ForcedOC1Config
4944                     	xdef	_TIM2_PrescalerConfig
4945                     	xdef	_TIM2_SelectOnePulseMode
4946                     	xdef	_TIM2_UpdateRequestConfig
4947                     	xdef	_TIM2_UpdateDisableConfig
4948                     	xdef	_TIM2_ITConfig
4949                     	xdef	_TIM2_Cmd
4950                     	xdef	_TIM2_PWMIConfig
4951                     	xdef	_TIM2_ICInit
4952                     	xdef	_TIM2_OC3Init
4953                     	xdef	_TIM2_OC2Init
4954                     	xdef	_TIM2_OC1Init
4955                     	xdef	_TIM2_TimeBaseInit
4956                     	xdef	_TIM2_DeInit
4957                     	xref	_assert_failed
4958                     .const:	section	.text
4959  0000               L302:
4960  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
4961  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
4962  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
4963  0036 5f74696d322e  	dc.b	"_tim2.c",0
4983                     	end
