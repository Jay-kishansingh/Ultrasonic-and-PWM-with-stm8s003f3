   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.8.1 - 09 Jan 2023
   3                     ; Generator (Limited) V4.5.5 - 08 Nov 2022
   4                     ; Optimizer V4.5.5 - 08 Nov 2022
  48                     ; 58 void TIM1_DeInit(void)
  48                     ; 59 {
  50                     	switch	.text
  51  0000               _TIM1_DeInit:
  55                     ; 60   TIM1->CR1  = TIM1_CR1_RESET_VALUE;
  57  0000 725f5250      	clr	21072
  58                     ; 61   TIM1->CR2  = TIM1_CR2_RESET_VALUE;
  60  0004 725f5251      	clr	21073
  61                     ; 62   TIM1->SMCR = TIM1_SMCR_RESET_VALUE;
  63  0008 725f5252      	clr	21074
  64                     ; 63   TIM1->ETR  = TIM1_ETR_RESET_VALUE;
  66  000c 725f5253      	clr	21075
  67                     ; 64   TIM1->IER  = TIM1_IER_RESET_VALUE;
  69  0010 725f5254      	clr	21076
  70                     ; 65   TIM1->SR2  = TIM1_SR2_RESET_VALUE;
  72  0014 725f5256      	clr	21078
  73                     ; 67   TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  75  0018 725f525c      	clr	21084
  76                     ; 68   TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  78  001c 725f525d      	clr	21085
  79                     ; 70   TIM1->CCMR1 = 0x01;
  81  0020 35015258      	mov	21080,#1
  82                     ; 71   TIM1->CCMR2 = 0x01;
  84  0024 35015259      	mov	21081,#1
  85                     ; 72   TIM1->CCMR3 = 0x01;
  87  0028 3501525a      	mov	21082,#1
  88                     ; 73   TIM1->CCMR4 = 0x01;
  90  002c 3501525b      	mov	21083,#1
  91                     ; 75   TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  93  0030 725f525c      	clr	21084
  94                     ; 76   TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  96  0034 725f525d      	clr	21085
  97                     ; 77   TIM1->CCMR1 = TIM1_CCMR1_RESET_VALUE;
  99  0038 725f5258      	clr	21080
 100                     ; 78   TIM1->CCMR2 = TIM1_CCMR2_RESET_VALUE;
 102  003c 725f5259      	clr	21081
 103                     ; 79   TIM1->CCMR3 = TIM1_CCMR3_RESET_VALUE;
 105  0040 725f525a      	clr	21082
 106                     ; 80   TIM1->CCMR4 = TIM1_CCMR4_RESET_VALUE;
 108  0044 725f525b      	clr	21083
 109                     ; 81   TIM1->CNTRH = TIM1_CNTRH_RESET_VALUE;
 111  0048 725f525e      	clr	21086
 112                     ; 82   TIM1->CNTRL = TIM1_CNTRL_RESET_VALUE;
 114  004c 725f525f      	clr	21087
 115                     ; 83   TIM1->PSCRH = TIM1_PSCRH_RESET_VALUE;
 117  0050 725f5260      	clr	21088
 118                     ; 84   TIM1->PSCRL = TIM1_PSCRL_RESET_VALUE;
 120  0054 725f5261      	clr	21089
 121                     ; 85   TIM1->ARRH  = TIM1_ARRH_RESET_VALUE;
 123  0058 35ff5262      	mov	21090,#255
 124                     ; 86   TIM1->ARRL  = TIM1_ARRL_RESET_VALUE;
 126  005c 35ff5263      	mov	21091,#255
 127                     ; 87   TIM1->CCR1H = TIM1_CCR1H_RESET_VALUE;
 129  0060 725f5265      	clr	21093
 130                     ; 88   TIM1->CCR1L = TIM1_CCR1L_RESET_VALUE;
 132  0064 725f5266      	clr	21094
 133                     ; 89   TIM1->CCR2H = TIM1_CCR2H_RESET_VALUE;
 135  0068 725f5267      	clr	21095
 136                     ; 90   TIM1->CCR2L = TIM1_CCR2L_RESET_VALUE;
 138  006c 725f5268      	clr	21096
 139                     ; 91   TIM1->CCR3H = TIM1_CCR3H_RESET_VALUE;
 141  0070 725f5269      	clr	21097
 142                     ; 92   TIM1->CCR3L = TIM1_CCR3L_RESET_VALUE;
 144  0074 725f526a      	clr	21098
 145                     ; 93   TIM1->CCR4H = TIM1_CCR4H_RESET_VALUE;
 147  0078 725f526b      	clr	21099
 148                     ; 94   TIM1->CCR4L = TIM1_CCR4L_RESET_VALUE;
 150  007c 725f526c      	clr	21100
 151                     ; 95   TIM1->OISR  = TIM1_OISR_RESET_VALUE;
 153  0080 725f526f      	clr	21103
 154                     ; 96   TIM1->EGR   = 0x01; /* TIM1_EGR_UG */
 156  0084 35015257      	mov	21079,#1
 157                     ; 97   TIM1->DTR   = TIM1_DTR_RESET_VALUE;
 159  0088 725f526e      	clr	21102
 160                     ; 98   TIM1->BKR   = TIM1_BKR_RESET_VALUE;
 162  008c 725f526d      	clr	21101
 163                     ; 99   TIM1->RCR   = TIM1_RCR_RESET_VALUE;
 165  0090 725f5264      	clr	21092
 166                     ; 100   TIM1->SR1   = TIM1_SR1_RESET_VALUE;
 168  0094 725f5255      	clr	21077
 169                     ; 101 }
 172  0098 81            	ret	
 276                     ; 111 void TIM1_TimeBaseInit(uint16_t TIM1_Prescaler,
 276                     ; 112                        TIM1_CounterMode_TypeDef TIM1_CounterMode,
 276                     ; 113                        uint16_t TIM1_Period,
 276                     ; 114                        uint8_t TIM1_RepetitionCounter)
 276                     ; 115 {
 277                     	switch	.text
 278  0099               _TIM1_TimeBaseInit:
 280  0099 89            	pushw	x
 281       00000000      OFST:	set	0
 284                     ; 117   assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
 286  009a 7b05          	ld	a,(OFST+5,sp)
 287  009c 271e          	jreq	L41
 288  009e a110          	cp	a,#16
 289  00a0 271a          	jreq	L41
 290  00a2 a120          	cp	a,#32
 291  00a4 2716          	jreq	L41
 292  00a6 a140          	cp	a,#64
 293  00a8 2712          	jreq	L41
 294  00aa a160          	cp	a,#96
 295  00ac 270e          	jreq	L41
 296  00ae ae0075        	ldw	x,#117
 297  00b1 89            	pushw	x
 298  00b2 5f            	clrw	x
 299  00b3 89            	pushw	x
 300  00b4 ae0000        	ldw	x,#L37
 301  00b7 cd0000        	call	_assert_failed
 303  00ba 5b04          	addw	sp,#4
 304  00bc               L41:
 305                     ; 120   TIM1->ARRH = (uint8_t)(TIM1_Period >> 8);
 307  00bc 7b06          	ld	a,(OFST+6,sp)
 308  00be c75262        	ld	21090,a
 309                     ; 121   TIM1->ARRL = (uint8_t)(TIM1_Period);
 311  00c1 7b07          	ld	a,(OFST+7,sp)
 312  00c3 c75263        	ld	21091,a
 313                     ; 124   TIM1->PSCRH = (uint8_t)(TIM1_Prescaler >> 8);
 315  00c6 7b01          	ld	a,(OFST+1,sp)
 316  00c8 c75260        	ld	21088,a
 317                     ; 125   TIM1->PSCRL = (uint8_t)(TIM1_Prescaler);
 319  00cb 7b02          	ld	a,(OFST+2,sp)
 320  00cd c75261        	ld	21089,a
 321                     ; 128   TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)(~(TIM1_CR1_CMS | TIM1_CR1_DIR)))
 321                     ; 129                         | (uint8_t)(TIM1_CounterMode));
 323  00d0 c65250        	ld	a,21072
 324  00d3 a48f          	and	a,#143
 325  00d5 1a05          	or	a,(OFST+5,sp)
 326  00d7 c75250        	ld	21072,a
 327                     ; 132   TIM1->RCR = TIM1_RepetitionCounter;
 329  00da 7b08          	ld	a,(OFST+8,sp)
 330  00dc c75264        	ld	21092,a
 331                     ; 133 }
 334  00df 85            	popw	x
 335  00e0 81            	ret	
 619                     ; 154 void TIM1_OC1Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 619                     ; 155                   TIM1_OutputState_TypeDef TIM1_OutputState,
 619                     ; 156                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 619                     ; 157                   uint16_t TIM1_Pulse,
 619                     ; 158                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 619                     ; 159                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 619                     ; 160                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 619                     ; 161                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 619                     ; 162 {
 620                     	switch	.text
 621  00e1               _TIM1_OC1Init:
 623  00e1 89            	pushw	x
 624  00e2 5203          	subw	sp,#3
 625       00000003      OFST:	set	3
 628                     ; 164   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 630  00e4 9e            	ld	a,xh
 631  00e5 4d            	tnz	a
 632  00e6 271f          	jreq	L62
 633  00e8 9e            	ld	a,xh
 634  00e9 a110          	cp	a,#16
 635  00eb 271a          	jreq	L62
 636  00ed 9e            	ld	a,xh
 637  00ee a120          	cp	a,#32
 638  00f0 2715          	jreq	L62
 639  00f2 9e            	ld	a,xh
 640  00f3 a130          	cp	a,#48
 641  00f5 2710          	jreq	L62
 642  00f7 9e            	ld	a,xh
 643  00f8 a160          	cp	a,#96
 644  00fa 270b          	jreq	L62
 645  00fc 9e            	ld	a,xh
 646  00fd a170          	cp	a,#112
 647  00ff 2706          	jreq	L62
 648  0101 ae00a4        	ldw	x,#164
 649  0104 cd01b5        	call	LC001
 650  0107               L62:
 651                     ; 165   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 653  0107 7b05          	ld	a,(OFST+2,sp)
 654  0109 270a          	jreq	L63
 655  010b a111          	cp	a,#17
 656  010d 2706          	jreq	L63
 657  010f ae00a5        	ldw	x,#165
 658  0112 cd01b5        	call	LC001
 659  0115               L63:
 660                     ; 166   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 662  0115 7b08          	ld	a,(OFST+5,sp)
 663  0117 270a          	jreq	L64
 664  0119 a144          	cp	a,#68
 665  011b 2706          	jreq	L64
 666  011d ae00a6        	ldw	x,#166
 667  0120 cd01b5        	call	LC001
 668  0123               L64:
 669                     ; 167   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 671  0123 7b0b          	ld	a,(OFST+8,sp)
 672  0125 270a          	jreq	L65
 673  0127 a122          	cp	a,#34
 674  0129 2706          	jreq	L65
 675  012b ae00a7        	ldw	x,#167
 676  012e cd01b5        	call	LC001
 677  0131               L65:
 678                     ; 168   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 680  0131 7b0c          	ld	a,(OFST+9,sp)
 681  0133 2709          	jreq	L66
 682  0135 a188          	cp	a,#136
 683  0137 2705          	jreq	L66
 684  0139 ae00a8        	ldw	x,#168
 685  013c ad77          	call	LC001
 686  013e               L66:
 687                     ; 169   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 689  013e 7b0d          	ld	a,(OFST+10,sp)
 690  0140 a155          	cp	a,#85
 691  0142 2708          	jreq	L67
 692  0144 4d            	tnz	a
 693  0145 2705          	jreq	L67
 694  0147 ae00a9        	ldw	x,#169
 695  014a ad69          	call	LC001
 696  014c               L67:
 697                     ; 170   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 699  014c 7b0e          	ld	a,(OFST+11,sp)
 700  014e a12a          	cp	a,#42
 701  0150 2708          	jreq	L601
 702  0152 4d            	tnz	a
 703  0153 2705          	jreq	L601
 704  0155 ae00aa        	ldw	x,#170
 705  0158 ad5b          	call	LC001
 706  015a               L601:
 707                     ; 174   TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC1E | TIM1_CCER1_CC1NE 
 707                     ; 175                              | TIM1_CCER1_CC1P | TIM1_CCER1_CC1NP));
 709  015a c6525c        	ld	a,21084
 710  015d a4f0          	and	a,#240
 711  015f c7525c        	ld	21084,a
 712                     ; 178   TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC1E)
 712                     ; 179                                      | (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC1NE))
 712                     ; 180                            | (uint8_t)( (uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC1P)
 712                     ; 181                                        | (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC1NP)));
 714  0162 7b0c          	ld	a,(OFST+9,sp)
 715  0164 a408          	and	a,#8
 716  0166 6b03          	ld	(OFST+0,sp),a
 718  0168 7b0b          	ld	a,(OFST+8,sp)
 719  016a a402          	and	a,#2
 720  016c 1a03          	or	a,(OFST+0,sp)
 721  016e 6b02          	ld	(OFST-1,sp),a
 723  0170 7b08          	ld	a,(OFST+5,sp)
 724  0172 a404          	and	a,#4
 725  0174 6b01          	ld	(OFST-2,sp),a
 727  0176 7b05          	ld	a,(OFST+2,sp)
 728  0178 a401          	and	a,#1
 729  017a 1a01          	or	a,(OFST-2,sp)
 730  017c 1a02          	or	a,(OFST-1,sp)
 731  017e ca525c        	or	a,21084
 732  0181 c7525c        	ld	21084,a
 733                     ; 184   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) | 
 733                     ; 185                           (uint8_t)TIM1_OCMode);
 735  0184 c65258        	ld	a,21080
 736  0187 a48f          	and	a,#143
 737  0189 1a04          	or	a,(OFST+1,sp)
 738  018b c75258        	ld	21080,a
 739                     ; 188   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS1 | TIM1_OISR_OIS1N));
 741  018e c6526f        	ld	a,21103
 742  0191 a4fc          	and	a,#252
 743  0193 c7526f        	ld	21103,a
 744                     ; 190   TIM1->OISR |= (uint8_t)((uint8_t)( TIM1_OCIdleState & TIM1_OISR_OIS1 ) | 
 744                     ; 191                           (uint8_t)( TIM1_OCNIdleState & TIM1_OISR_OIS1N ));
 746  0196 7b0e          	ld	a,(OFST+11,sp)
 747  0198 a402          	and	a,#2
 748  019a 6b03          	ld	(OFST+0,sp),a
 750  019c 7b0d          	ld	a,(OFST+10,sp)
 751  019e a401          	and	a,#1
 752  01a0 1a03          	or	a,(OFST+0,sp)
 753  01a2 ca526f        	or	a,21103
 754  01a5 c7526f        	ld	21103,a
 755                     ; 194   TIM1->CCR1H = (uint8_t)(TIM1_Pulse >> 8);
 757  01a8 7b09          	ld	a,(OFST+6,sp)
 758  01aa c75265        	ld	21093,a
 759                     ; 195   TIM1->CCR1L = (uint8_t)(TIM1_Pulse);
 761  01ad 7b0a          	ld	a,(OFST+7,sp)
 762  01af c75266        	ld	21094,a
 763                     ; 196 }
 766  01b2 5b05          	addw	sp,#5
 767  01b4 81            	ret	
 768  01b5               LC001:
 769  01b5 89            	pushw	x
 770  01b6 5f            	clrw	x
 771  01b7 89            	pushw	x
 772  01b8 ae0000        	ldw	x,#L37
 773  01bb cd0000        	call	_assert_failed
 775  01be 5b04          	addw	sp,#4
 776  01c0 81            	ret	
 879                     ; 217 void TIM1_OC2Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 879                     ; 218                   TIM1_OutputState_TypeDef TIM1_OutputState,
 879                     ; 219                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 879                     ; 220                   uint16_t TIM1_Pulse,
 879                     ; 221                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 879                     ; 222                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 879                     ; 223                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 879                     ; 224                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 879                     ; 225 {
 880                     	switch	.text
 881  01c1               _TIM1_OC2Init:
 883  01c1 89            	pushw	x
 884  01c2 5203          	subw	sp,#3
 885       00000003      OFST:	set	3
 888                     ; 227   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 890  01c4 9e            	ld	a,xh
 891  01c5 4d            	tnz	a
 892  01c6 271f          	jreq	L021
 893  01c8 9e            	ld	a,xh
 894  01c9 a110          	cp	a,#16
 895  01cb 271a          	jreq	L021
 896  01cd 9e            	ld	a,xh
 897  01ce a120          	cp	a,#32
 898  01d0 2715          	jreq	L021
 899  01d2 9e            	ld	a,xh
 900  01d3 a130          	cp	a,#48
 901  01d5 2710          	jreq	L021
 902  01d7 9e            	ld	a,xh
 903  01d8 a160          	cp	a,#96
 904  01da 270b          	jreq	L021
 905  01dc 9e            	ld	a,xh
 906  01dd a170          	cp	a,#112
 907  01df 2706          	jreq	L021
 908  01e1 ae00e3        	ldw	x,#227
 909  01e4 cd0295        	call	LC002
 910  01e7               L021:
 911                     ; 228   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 913  01e7 7b05          	ld	a,(OFST+2,sp)
 914  01e9 270a          	jreq	L031
 915  01eb a111          	cp	a,#17
 916  01ed 2706          	jreq	L031
 917  01ef ae00e4        	ldw	x,#228
 918  01f2 cd0295        	call	LC002
 919  01f5               L031:
 920                     ; 229   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 922  01f5 7b08          	ld	a,(OFST+5,sp)
 923  01f7 270a          	jreq	L041
 924  01f9 a144          	cp	a,#68
 925  01fb 2706          	jreq	L041
 926  01fd ae00e5        	ldw	x,#229
 927  0200 cd0295        	call	LC002
 928  0203               L041:
 929                     ; 230   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 931  0203 7b0b          	ld	a,(OFST+8,sp)
 932  0205 270a          	jreq	L051
 933  0207 a122          	cp	a,#34
 934  0209 2706          	jreq	L051
 935  020b ae00e6        	ldw	x,#230
 936  020e cd0295        	call	LC002
 937  0211               L051:
 938                     ; 231   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 940  0211 7b0c          	ld	a,(OFST+9,sp)
 941  0213 2709          	jreq	L061
 942  0215 a188          	cp	a,#136
 943  0217 2705          	jreq	L061
 944  0219 ae00e7        	ldw	x,#231
 945  021c ad77          	call	LC002
 946  021e               L061:
 947                     ; 232   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 949  021e 7b0d          	ld	a,(OFST+10,sp)
 950  0220 a155          	cp	a,#85
 951  0222 2708          	jreq	L071
 952  0224 4d            	tnz	a
 953  0225 2705          	jreq	L071
 954  0227 ae00e8        	ldw	x,#232
 955  022a ad69          	call	LC002
 956  022c               L071:
 957                     ; 233   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 959  022c 7b0e          	ld	a,(OFST+11,sp)
 960  022e a12a          	cp	a,#42
 961  0230 2708          	jreq	L002
 962  0232 4d            	tnz	a
 963  0233 2705          	jreq	L002
 964  0235 ae00e9        	ldw	x,#233
 965  0238 ad5b          	call	LC002
 966  023a               L002:
 967                     ; 237   TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC2E | TIM1_CCER1_CC2NE | 
 967                     ; 238                              TIM1_CCER1_CC2P | TIM1_CCER1_CC2NP));
 969  023a c6525c        	ld	a,21084
 970  023d a40f          	and	a,#15
 971  023f c7525c        	ld	21084,a
 972                     ; 242   TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC2E  ) | 
 972                     ; 243                                      (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC2NE )) | 
 972                     ; 244                            (uint8_t)((uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC2P  ) | 
 972                     ; 245                                      (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC2NP )));
 974  0242 7b0c          	ld	a,(OFST+9,sp)
 975  0244 a480          	and	a,#128
 976  0246 6b03          	ld	(OFST+0,sp),a
 978  0248 7b0b          	ld	a,(OFST+8,sp)
 979  024a a420          	and	a,#32
 980  024c 1a03          	or	a,(OFST+0,sp)
 981  024e 6b02          	ld	(OFST-1,sp),a
 983  0250 7b08          	ld	a,(OFST+5,sp)
 984  0252 a440          	and	a,#64
 985  0254 6b01          	ld	(OFST-2,sp),a
 987  0256 7b05          	ld	a,(OFST+2,sp)
 988  0258 a410          	and	a,#16
 989  025a 1a01          	or	a,(OFST-2,sp)
 990  025c 1a02          	or	a,(OFST-1,sp)
 991  025e ca525c        	or	a,21084
 992  0261 c7525c        	ld	21084,a
 993                     ; 248   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM)) | 
 993                     ; 249                           (uint8_t)TIM1_OCMode);
 995  0264 c65259        	ld	a,21081
 996  0267 a48f          	and	a,#143
 997  0269 1a04          	or	a,(OFST+1,sp)
 998  026b c75259        	ld	21081,a
 999                     ; 252   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS2 | TIM1_OISR_OIS2N));
1001  026e c6526f        	ld	a,21103
1002  0271 a4f3          	and	a,#243
1003  0273 c7526f        	ld	21103,a
1004                     ; 254   TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS2 & TIM1_OCIdleState) | 
1004                     ; 255                           (uint8_t)(TIM1_OISR_OIS2N & TIM1_OCNIdleState));
1006  0276 7b0e          	ld	a,(OFST+11,sp)
1007  0278 a408          	and	a,#8
1008  027a 6b03          	ld	(OFST+0,sp),a
1010  027c 7b0d          	ld	a,(OFST+10,sp)
1011  027e a404          	and	a,#4
1012  0280 1a03          	or	a,(OFST+0,sp)
1013  0282 ca526f        	or	a,21103
1014  0285 c7526f        	ld	21103,a
1015                     ; 258   TIM1->CCR2H = (uint8_t)(TIM1_Pulse >> 8);
1017  0288 7b09          	ld	a,(OFST+6,sp)
1018  028a c75267        	ld	21095,a
1019                     ; 259   TIM1->CCR2L = (uint8_t)(TIM1_Pulse);
1021  028d 7b0a          	ld	a,(OFST+7,sp)
1022  028f c75268        	ld	21096,a
1023                     ; 260 }
1026  0292 5b05          	addw	sp,#5
1027  0294 81            	ret	
1028  0295               LC002:
1029  0295 89            	pushw	x
1030  0296 5f            	clrw	x
1031  0297 89            	pushw	x
1032  0298 ae0000        	ldw	x,#L37
1033  029b cd0000        	call	_assert_failed
1035  029e 5b04          	addw	sp,#4
1036  02a0 81            	ret	
1139                     ; 281 void TIM1_OC3Init(TIM1_OCMode_TypeDef TIM1_OCMode,
1139                     ; 282                   TIM1_OutputState_TypeDef TIM1_OutputState,
1139                     ; 283                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
1139                     ; 284                   uint16_t TIM1_Pulse,
1139                     ; 285                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
1139                     ; 286                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
1139                     ; 287                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
1139                     ; 288                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
1139                     ; 289 {
1140                     	switch	.text
1141  02a1               _TIM1_OC3Init:
1143  02a1 89            	pushw	x
1144  02a2 5203          	subw	sp,#3
1145       00000003      OFST:	set	3
1148                     ; 291   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
1150  02a4 9e            	ld	a,xh
1151  02a5 4d            	tnz	a
1152  02a6 271f          	jreq	L212
1153  02a8 9e            	ld	a,xh
1154  02a9 a110          	cp	a,#16
1155  02ab 271a          	jreq	L212
1156  02ad 9e            	ld	a,xh
1157  02ae a120          	cp	a,#32
1158  02b0 2715          	jreq	L212
1159  02b2 9e            	ld	a,xh
1160  02b3 a130          	cp	a,#48
1161  02b5 2710          	jreq	L212
1162  02b7 9e            	ld	a,xh
1163  02b8 a160          	cp	a,#96
1164  02ba 270b          	jreq	L212
1165  02bc 9e            	ld	a,xh
1166  02bd a170          	cp	a,#112
1167  02bf 2706          	jreq	L212
1168  02c1 ae0123        	ldw	x,#291
1169  02c4 cd0375        	call	LC003
1170  02c7               L212:
1171                     ; 292   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1173  02c7 7b05          	ld	a,(OFST+2,sp)
1174  02c9 270a          	jreq	L222
1175  02cb a111          	cp	a,#17
1176  02cd 2706          	jreq	L222
1177  02cf ae0124        	ldw	x,#292
1178  02d2 cd0375        	call	LC003
1179  02d5               L222:
1180                     ; 293   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
1182  02d5 7b08          	ld	a,(OFST+5,sp)
1183  02d7 270a          	jreq	L232
1184  02d9 a144          	cp	a,#68
1185  02db 2706          	jreq	L232
1186  02dd ae0125        	ldw	x,#293
1187  02e0 cd0375        	call	LC003
1188  02e3               L232:
1189                     ; 294   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1191  02e3 7b0b          	ld	a,(OFST+8,sp)
1192  02e5 270a          	jreq	L242
1193  02e7 a122          	cp	a,#34
1194  02e9 2706          	jreq	L242
1195  02eb ae0126        	ldw	x,#294
1196  02ee cd0375        	call	LC003
1197  02f1               L242:
1198                     ; 295   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
1200  02f1 7b0c          	ld	a,(OFST+9,sp)
1201  02f3 2709          	jreq	L252
1202  02f5 a188          	cp	a,#136
1203  02f7 2705          	jreq	L252
1204  02f9 ae0127        	ldw	x,#295
1205  02fc ad77          	call	LC003
1206  02fe               L252:
1207                     ; 296   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1209  02fe 7b0d          	ld	a,(OFST+10,sp)
1210  0300 a155          	cp	a,#85
1211  0302 2708          	jreq	L262
1212  0304 4d            	tnz	a
1213  0305 2705          	jreq	L262
1214  0307 ae0128        	ldw	x,#296
1215  030a ad69          	call	LC003
1216  030c               L262:
1217                     ; 297   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
1219  030c 7b0e          	ld	a,(OFST+11,sp)
1220  030e a12a          	cp	a,#42
1221  0310 2708          	jreq	L272
1222  0312 4d            	tnz	a
1223  0313 2705          	jreq	L272
1224  0315 ae0129        	ldw	x,#297
1225  0318 ad5b          	call	LC003
1226  031a               L272:
1227                     ; 301   TIM1->CCER2 &= (uint8_t)(~( TIM1_CCER2_CC3E | TIM1_CCER2_CC3NE | 
1227                     ; 302                              TIM1_CCER2_CC3P | TIM1_CCER2_CC3NP));
1229  031a c6525d        	ld	a,21085
1230  031d a4f0          	and	a,#240
1231  031f c7525d        	ld	21085,a
1232                     ; 305   TIM1->CCER2 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState  & TIM1_CCER2_CC3E   ) |
1232                     ; 306                                      (uint8_t)(TIM1_OutputNState & TIM1_CCER2_CC3NE  )) | 
1232                     ; 307                            (uint8_t)((uint8_t)(TIM1_OCPolarity   & TIM1_CCER2_CC3P   ) | 
1232                     ; 308                                      (uint8_t)(TIM1_OCNPolarity  & TIM1_CCER2_CC3NP  )));
1234  0322 7b0c          	ld	a,(OFST+9,sp)
1235  0324 a408          	and	a,#8
1236  0326 6b03          	ld	(OFST+0,sp),a
1238  0328 7b0b          	ld	a,(OFST+8,sp)
1239  032a a402          	and	a,#2
1240  032c 1a03          	or	a,(OFST+0,sp)
1241  032e 6b02          	ld	(OFST-1,sp),a
1243  0330 7b08          	ld	a,(OFST+5,sp)
1244  0332 a404          	and	a,#4
1245  0334 6b01          	ld	(OFST-2,sp),a
1247  0336 7b05          	ld	a,(OFST+2,sp)
1248  0338 a401          	and	a,#1
1249  033a 1a01          	or	a,(OFST-2,sp)
1250  033c 1a02          	or	a,(OFST-1,sp)
1251  033e ca525d        	or	a,21085
1252  0341 c7525d        	ld	21085,a
1253                     ; 311   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1253                     ; 312                           (uint8_t)TIM1_OCMode);
1255  0344 c6525a        	ld	a,21082
1256  0347 a48f          	and	a,#143
1257  0349 1a04          	or	a,(OFST+1,sp)
1258  034b c7525a        	ld	21082,a
1259                     ; 315   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS3 | TIM1_OISR_OIS3N));
1261  034e c6526f        	ld	a,21103
1262  0351 a4cf          	and	a,#207
1263  0353 c7526f        	ld	21103,a
1264                     ; 317   TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS3 & TIM1_OCIdleState) | 
1264                     ; 318                           (uint8_t)(TIM1_OISR_OIS3N & TIM1_OCNIdleState));
1266  0356 7b0e          	ld	a,(OFST+11,sp)
1267  0358 a420          	and	a,#32
1268  035a 6b03          	ld	(OFST+0,sp),a
1270  035c 7b0d          	ld	a,(OFST+10,sp)
1271  035e a410          	and	a,#16
1272  0360 1a03          	or	a,(OFST+0,sp)
1273  0362 ca526f        	or	a,21103
1274  0365 c7526f        	ld	21103,a
1275                     ; 321   TIM1->CCR3H = (uint8_t)(TIM1_Pulse >> 8);
1277  0368 7b09          	ld	a,(OFST+6,sp)
1278  036a c75269        	ld	21097,a
1279                     ; 322   TIM1->CCR3L = (uint8_t)(TIM1_Pulse);
1281  036d 7b0a          	ld	a,(OFST+7,sp)
1282  036f c7526a        	ld	21098,a
1283                     ; 323 }
1286  0372 5b05          	addw	sp,#5
1287  0374 81            	ret	
1288  0375               LC003:
1289  0375 89            	pushw	x
1290  0376 5f            	clrw	x
1291  0377 89            	pushw	x
1292  0378 ae0000        	ldw	x,#L37
1293  037b cd0000        	call	_assert_failed
1295  037e 5b04          	addw	sp,#4
1296  0380 81            	ret	
1369                     ; 338 void TIM1_OC4Init(TIM1_OCMode_TypeDef TIM1_OCMode,
1369                     ; 339                   TIM1_OutputState_TypeDef TIM1_OutputState,
1369                     ; 340                   uint16_t TIM1_Pulse,
1369                     ; 341                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
1369                     ; 342                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState)
1369                     ; 343 {
1370                     	switch	.text
1371  0381               _TIM1_OC4Init:
1373  0381 89            	pushw	x
1374  0382 88            	push	a
1375       00000001      OFST:	set	1
1378                     ; 345   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
1380  0383 9e            	ld	a,xh
1381  0384 4d            	tnz	a
1382  0385 271e          	jreq	L403
1383  0387 9e            	ld	a,xh
1384  0388 a110          	cp	a,#16
1385  038a 2719          	jreq	L403
1386  038c 9e            	ld	a,xh
1387  038d a120          	cp	a,#32
1388  038f 2714          	jreq	L403
1389  0391 9e            	ld	a,xh
1390  0392 a130          	cp	a,#48
1391  0394 270f          	jreq	L403
1392  0396 9e            	ld	a,xh
1393  0397 a160          	cp	a,#96
1394  0399 270a          	jreq	L403
1395  039b 9e            	ld	a,xh
1396  039c a170          	cp	a,#112
1397  039e 2705          	jreq	L403
1398  03a0 ae0159        	ldw	x,#345
1399  03a3 ad6b          	call	LC004
1400  03a5               L403:
1401                     ; 346   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1403  03a5 7b03          	ld	a,(OFST+2,sp)
1404  03a7 2709          	jreq	L413
1405  03a9 a111          	cp	a,#17
1406  03ab 2705          	jreq	L413
1407  03ad ae015a        	ldw	x,#346
1408  03b0 ad5e          	call	LC004
1409  03b2               L413:
1410                     ; 347   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1412  03b2 7b08          	ld	a,(OFST+7,sp)
1413  03b4 2709          	jreq	L423
1414  03b6 a122          	cp	a,#34
1415  03b8 2705          	jreq	L423
1416  03ba ae015b        	ldw	x,#347
1417  03bd ad51          	call	LC004
1418  03bf               L423:
1419                     ; 348   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1421  03bf 7b09          	ld	a,(OFST+8,sp)
1422  03c1 a155          	cp	a,#85
1423  03c3 2708          	jreq	L433
1424  03c5 4d            	tnz	a
1425  03c6 2705          	jreq	L433
1426  03c8 ae015c        	ldw	x,#348
1427  03cb ad43          	call	LC004
1428  03cd               L433:
1429                     ; 351   TIM1->CCER2 &= (uint8_t)(~(TIM1_CCER2_CC4E | TIM1_CCER2_CC4P));
1431  03cd c6525d        	ld	a,21085
1432  03d0 a4cf          	and	a,#207
1433  03d2 c7525d        	ld	21085,a
1434                     ; 353   TIM1->CCER2 |= (uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER2_CC4E ) |  
1434                     ; 354                            (uint8_t)(TIM1_OCPolarity  & TIM1_CCER2_CC4P ));
1436  03d5 7b08          	ld	a,(OFST+7,sp)
1437  03d7 a420          	and	a,#32
1438  03d9 6b01          	ld	(OFST+0,sp),a
1440  03db 7b03          	ld	a,(OFST+2,sp)
1441  03dd a410          	and	a,#16
1442  03df 1a01          	or	a,(OFST+0,sp)
1443  03e1 ca525d        	or	a,21085
1444  03e4 c7525d        	ld	21085,a
1445                     ; 357   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1445                     ; 358                           TIM1_OCMode);
1447  03e7 c6525b        	ld	a,21083
1448  03ea a48f          	and	a,#143
1449  03ec 1a02          	or	a,(OFST+1,sp)
1450  03ee c7525b        	ld	21083,a
1451                     ; 361   if (TIM1_OCIdleState != TIM1_OCIDLESTATE_RESET)
1453  03f1 7b09          	ld	a,(OFST+8,sp)
1454  03f3 270a          	jreq	L124
1455                     ; 363     TIM1->OISR |= (uint8_t)(~TIM1_CCER2_CC4P);
1457  03f5 c6526f        	ld	a,21103
1458  03f8 aadf          	or	a,#223
1459  03fa c7526f        	ld	21103,a
1461  03fd 2004          	jra	L324
1462  03ff               L124:
1463                     ; 367     TIM1->OISR &= (uint8_t)(~TIM1_OISR_OIS4);
1465  03ff 721d526f      	bres	21103,#6
1466  0403               L324:
1467                     ; 371   TIM1->CCR4H = (uint8_t)(TIM1_Pulse >> 8);
1469  0403 7b06          	ld	a,(OFST+5,sp)
1470  0405 c7526b        	ld	21099,a
1471                     ; 372   TIM1->CCR4L = (uint8_t)(TIM1_Pulse);
1473  0408 7b07          	ld	a,(OFST+6,sp)
1474  040a c7526c        	ld	21100,a
1475                     ; 373 }
1478  040d 5b03          	addw	sp,#3
1479  040f 81            	ret	
1480  0410               LC004:
1481  0410 89            	pushw	x
1482  0411 5f            	clrw	x
1483  0412 89            	pushw	x
1484  0413 ae0000        	ldw	x,#L37
1485  0416 cd0000        	call	_assert_failed
1487  0419 5b04          	addw	sp,#4
1488  041b 81            	ret	
1692                     ; 388 void TIM1_BDTRConfig(TIM1_OSSIState_TypeDef TIM1_OSSIState,
1692                     ; 389                      TIM1_LockLevel_TypeDef TIM1_LockLevel,
1692                     ; 390                      uint8_t TIM1_DeadTime,
1692                     ; 391                      TIM1_BreakState_TypeDef TIM1_Break,
1692                     ; 392                      TIM1_BreakPolarity_TypeDef TIM1_BreakPolarity,
1692                     ; 393                      TIM1_AutomaticOutput_TypeDef TIM1_AutomaticOutput)
1692                     ; 394 {
1693                     	switch	.text
1694  041c               _TIM1_BDTRConfig:
1696  041c 89            	pushw	x
1697  041d 88            	push	a
1698       00000001      OFST:	set	1
1701                     ; 396   assert_param(IS_TIM1_OSSI_STATE_OK(TIM1_OSSIState));
1703  041e 9e            	ld	a,xh
1704  041f a104          	cp	a,#4
1705  0421 2709          	jreq	L643
1706  0423 9e            	ld	a,xh
1707  0424 4d            	tnz	a
1708  0425 2705          	jreq	L643
1709  0427 ae018c        	ldw	x,#396
1710  042a ad57          	call	LC005
1711  042c               L643:
1712                     ; 397   assert_param(IS_TIM1_LOCK_LEVEL_OK(TIM1_LockLevel));
1714  042c 7b03          	ld	a,(OFST+2,sp)
1715  042e 2711          	jreq	L653
1716  0430 a101          	cp	a,#1
1717  0432 270d          	jreq	L653
1718  0434 a102          	cp	a,#2
1719  0436 2709          	jreq	L653
1720  0438 a103          	cp	a,#3
1721  043a 2705          	jreq	L653
1722  043c ae018d        	ldw	x,#397
1723  043f ad42          	call	LC005
1724  0441               L653:
1725                     ; 398   assert_param(IS_TIM1_BREAK_STATE_OK(TIM1_Break));
1727  0441 7b07          	ld	a,(OFST+6,sp)
1728  0443 a110          	cp	a,#16
1729  0445 2708          	jreq	L663
1730  0447 4d            	tnz	a
1731  0448 2705          	jreq	L663
1732  044a ae018e        	ldw	x,#398
1733  044d ad34          	call	LC005
1734  044f               L663:
1735                     ; 399   assert_param(IS_TIM1_BREAK_POLARITY_OK(TIM1_BreakPolarity));
1737  044f 7b08          	ld	a,(OFST+7,sp)
1738  0451 2709          	jreq	L673
1739  0453 a120          	cp	a,#32
1740  0455 2705          	jreq	L673
1741  0457 ae018f        	ldw	x,#399
1742  045a ad27          	call	LC005
1743  045c               L673:
1744                     ; 400   assert_param(IS_TIM1_AUTOMATIC_OUTPUT_STATE_OK(TIM1_AutomaticOutput));
1746  045c 7b09          	ld	a,(OFST+8,sp)
1747  045e a140          	cp	a,#64
1748  0460 2708          	jreq	L604
1749  0462 4d            	tnz	a
1750  0463 2705          	jreq	L604
1751  0465 ae0190        	ldw	x,#400
1752  0468 ad19          	call	LC005
1753  046a               L604:
1754                     ; 402   TIM1->DTR = (uint8_t)(TIM1_DeadTime);
1756  046a 7b06          	ld	a,(OFST+5,sp)
1757  046c c7526e        	ld	21102,a
1758                     ; 406   TIM1->BKR  =  (uint8_t)((uint8_t)(TIM1_OSSIState | (uint8_t)TIM1_LockLevel)  | 
1758                     ; 407                           (uint8_t)((uint8_t)(TIM1_Break | (uint8_t)TIM1_BreakPolarity)  | 
1758                     ; 408                           (uint8_t)TIM1_AutomaticOutput));
1760  046f 7b07          	ld	a,(OFST+6,sp)
1761  0471 1a08          	or	a,(OFST+7,sp)
1762  0473 1a09          	or	a,(OFST+8,sp)
1763  0475 6b01          	ld	(OFST+0,sp),a
1765  0477 7b02          	ld	a,(OFST+1,sp)
1766  0479 1a03          	or	a,(OFST+2,sp)
1767  047b 1a01          	or	a,(OFST+0,sp)
1768  047d c7526d        	ld	21101,a
1769                     ; 409 }
1772  0480 5b03          	addw	sp,#3
1773  0482 81            	ret	
1774  0483               LC005:
1775  0483 89            	pushw	x
1776  0484 5f            	clrw	x
1777  0485 89            	pushw	x
1778  0486 ae0000        	ldw	x,#L37
1779  0489 cd0000        	call	_assert_failed
1781  048c 5b04          	addw	sp,#4
1782  048e 81            	ret	
1983                     ; 423 void TIM1_ICInit(TIM1_Channel_TypeDef TIM1_Channel,
1983                     ; 424                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
1983                     ; 425                  TIM1_ICSelection_TypeDef TIM1_ICSelection,
1983                     ; 426                  TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
1983                     ; 427                  uint8_t TIM1_ICFilter)
1983                     ; 428 {
1984                     	switch	.text
1985  048f               _TIM1_ICInit:
1987  048f 89            	pushw	x
1988       00000000      OFST:	set	0
1991                     ; 430   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
1993  0490 9e            	ld	a,xh
1994  0491 4d            	tnz	a
1995  0492 2714          	jreq	L024
1996  0494 9e            	ld	a,xh
1997  0495 4a            	dec	a
1998  0496 2710          	jreq	L024
1999  0498 9e            	ld	a,xh
2000  0499 a102          	cp	a,#2
2001  049b 270b          	jreq	L024
2002  049d 9e            	ld	a,xh
2003  049e a103          	cp	a,#3
2004  04a0 2706          	jreq	L024
2005  04a2 ae01ae        	ldw	x,#430
2006  04a5 cd0544        	call	LC006
2007  04a8               L024:
2008                     ; 431   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
2010  04a8 7b02          	ld	a,(OFST+2,sp)
2011  04aa 2709          	jreq	L034
2012  04ac 4a            	dec	a
2013  04ad 2706          	jreq	L034
2014  04af ae01af        	ldw	x,#431
2015  04b2 cd0544        	call	LC006
2016  04b5               L034:
2017                     ; 432   assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
2019  04b5 7b05          	ld	a,(OFST+5,sp)
2020  04b7 a101          	cp	a,#1
2021  04b9 270d          	jreq	L044
2022  04bb a102          	cp	a,#2
2023  04bd 2709          	jreq	L044
2024  04bf a103          	cp	a,#3
2025  04c1 2705          	jreq	L044
2026  04c3 ae01b0        	ldw	x,#432
2027  04c6 ad7c          	call	LC006
2028  04c8               L044:
2029                     ; 433   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
2031  04c8 7b06          	ld	a,(OFST+6,sp)
2032  04ca 2711          	jreq	L054
2033  04cc a104          	cp	a,#4
2034  04ce 270d          	jreq	L054
2035  04d0 a108          	cp	a,#8
2036  04d2 2709          	jreq	L054
2037  04d4 a10c          	cp	a,#12
2038  04d6 2705          	jreq	L054
2039  04d8 ae01b1        	ldw	x,#433
2040  04db ad67          	call	LC006
2041  04dd               L054:
2042                     ; 434   assert_param(IS_TIM1_IC_FILTER_OK(TIM1_ICFilter));
2044  04dd 7b07          	ld	a,(OFST+7,sp)
2045  04df a110          	cp	a,#16
2046  04e1 2505          	jrult	L654
2047  04e3 ae01b2        	ldw	x,#434
2048  04e6 ad5c          	call	LC006
2049  04e8               L654:
2050                     ; 436   if (TIM1_Channel == TIM1_CHANNEL_1)
2052  04e8 7b01          	ld	a,(OFST+1,sp)
2053  04ea 2614          	jrne	L746
2054                     ; 439     TI1_Config((uint8_t)TIM1_ICPolarity,
2054                     ; 440                (uint8_t)TIM1_ICSelection,
2054                     ; 441                (uint8_t)TIM1_ICFilter);
2056  04ec 7b07          	ld	a,(OFST+7,sp)
2057  04ee 88            	push	a
2058  04ef 7b06          	ld	a,(OFST+6,sp)
2059  04f1 97            	ld	xl,a
2060  04f2 7b03          	ld	a,(OFST+3,sp)
2061  04f4 95            	ld	xh,a
2062  04f5 cd10f4        	call	L3_TI1_Config
2064  04f8 84            	pop	a
2065                     ; 443     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2067  04f9 7b06          	ld	a,(OFST+6,sp)
2068  04fb cd0eb0        	call	_TIM1_SetIC1Prescaler
2071  04fe 2042          	jra	L156
2072  0500               L746:
2073                     ; 445   else if (TIM1_Channel == TIM1_CHANNEL_2)
2075  0500 a101          	cp	a,#1
2076  0502 2614          	jrne	L356
2077                     ; 448     TI2_Config((uint8_t)TIM1_ICPolarity,
2077                     ; 449                (uint8_t)TIM1_ICSelection,
2077                     ; 450                (uint8_t)TIM1_ICFilter);
2079  0504 7b07          	ld	a,(OFST+7,sp)
2080  0506 88            	push	a
2081  0507 7b06          	ld	a,(OFST+6,sp)
2082  0509 97            	ld	xl,a
2083  050a 7b03          	ld	a,(OFST+3,sp)
2084  050c 95            	ld	xh,a
2085  050d cd1124        	call	L5_TI2_Config
2087  0510 84            	pop	a
2088                     ; 452     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2090  0511 7b06          	ld	a,(OFST+6,sp)
2091  0513 cd0eda        	call	_TIM1_SetIC2Prescaler
2094  0516 202a          	jra	L156
2095  0518               L356:
2096                     ; 454   else if (TIM1_Channel == TIM1_CHANNEL_3)
2098  0518 a102          	cp	a,#2
2099  051a 2614          	jrne	L756
2100                     ; 457     TI3_Config((uint8_t)TIM1_ICPolarity,
2100                     ; 458                (uint8_t)TIM1_ICSelection,
2100                     ; 459                (uint8_t)TIM1_ICFilter);
2102  051c 7b07          	ld	a,(OFST+7,sp)
2103  051e 88            	push	a
2104  051f 7b06          	ld	a,(OFST+6,sp)
2105  0521 97            	ld	xl,a
2106  0522 7b03          	ld	a,(OFST+3,sp)
2107  0524 95            	ld	xh,a
2108  0525 cd1154        	call	L7_TI3_Config
2110  0528 84            	pop	a
2111                     ; 461     TIM1_SetIC3Prescaler(TIM1_ICPrescaler);
2113  0529 7b06          	ld	a,(OFST+6,sp)
2114  052b cd0f04        	call	_TIM1_SetIC3Prescaler
2117  052e 2012          	jra	L156
2118  0530               L756:
2119                     ; 466     TI4_Config((uint8_t)TIM1_ICPolarity,
2119                     ; 467                (uint8_t)TIM1_ICSelection,
2119                     ; 468                (uint8_t)TIM1_ICFilter);
2121  0530 7b07          	ld	a,(OFST+7,sp)
2122  0532 88            	push	a
2123  0533 7b06          	ld	a,(OFST+6,sp)
2124  0535 97            	ld	xl,a
2125  0536 7b03          	ld	a,(OFST+3,sp)
2126  0538 95            	ld	xh,a
2127  0539 cd1184        	call	L11_TI4_Config
2129  053c 84            	pop	a
2130                     ; 470     TIM1_SetIC4Prescaler(TIM1_ICPrescaler);
2132  053d 7b06          	ld	a,(OFST+6,sp)
2133  053f cd0f2e        	call	_TIM1_SetIC4Prescaler
2135  0542               L156:
2136                     ; 472 }
2139  0542 85            	popw	x
2140  0543 81            	ret	
2141  0544               LC006:
2142  0544 89            	pushw	x
2143  0545 5f            	clrw	x
2144  0546 89            	pushw	x
2145  0547 ae0000        	ldw	x,#L37
2146  054a cd0000        	call	_assert_failed
2148  054d 5b04          	addw	sp,#4
2149  054f 81            	ret	
2240                     ; 488 void TIM1_PWMIConfig(TIM1_Channel_TypeDef TIM1_Channel,
2240                     ; 489                      TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
2240                     ; 490                      TIM1_ICSelection_TypeDef TIM1_ICSelection,
2240                     ; 491                      TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
2240                     ; 492                      uint8_t TIM1_ICFilter)
2240                     ; 493 {
2241                     	switch	.text
2242  0550               _TIM1_PWMIConfig:
2244  0550 89            	pushw	x
2245  0551 89            	pushw	x
2246       00000002      OFST:	set	2
2249                     ; 494   uint8_t icpolarity = TIM1_ICPOLARITY_RISING;
2251                     ; 495   uint8_t icselection = TIM1_ICSELECTION_DIRECTTI;
2253                     ; 498   assert_param(IS_TIM1_PWMI_CHANNEL_OK(TIM1_Channel));
2255  0552 9e            	ld	a,xh
2256  0553 4d            	tnz	a
2257  0554 270a          	jreq	L015
2258  0556 9e            	ld	a,xh
2259  0557 4a            	dec	a
2260  0558 2706          	jreq	L015
2261  055a ae01f2        	ldw	x,#498
2262  055d cd05fc        	call	LC007
2263  0560               L015:
2264                     ; 499   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
2266  0560 7b04          	ld	a,(OFST+2,sp)
2267  0562 2709          	jreq	L025
2268  0564 4a            	dec	a
2269  0565 2706          	jreq	L025
2270  0567 ae01f3        	ldw	x,#499
2271  056a cd05fc        	call	LC007
2272  056d               L025:
2273                     ; 500   assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
2275  056d 7b07          	ld	a,(OFST+5,sp)
2276  056f a101          	cp	a,#1
2277  0571 270d          	jreq	L035
2278  0573 a102          	cp	a,#2
2279  0575 2709          	jreq	L035
2280  0577 a103          	cp	a,#3
2281  0579 2705          	jreq	L035
2282  057b ae01f4        	ldw	x,#500
2283  057e ad7c          	call	LC007
2284  0580               L035:
2285                     ; 501   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
2287  0580 7b08          	ld	a,(OFST+6,sp)
2288  0582 2711          	jreq	L045
2289  0584 a104          	cp	a,#4
2290  0586 270d          	jreq	L045
2291  0588 a108          	cp	a,#8
2292  058a 2709          	jreq	L045
2293  058c a10c          	cp	a,#12
2294  058e 2705          	jreq	L045
2295  0590 ae01f5        	ldw	x,#501
2296  0593 ad67          	call	LC007
2297  0595               L045:
2298                     ; 504   if (TIM1_ICPolarity != TIM1_ICPOLARITY_FALLING)
2300  0595 7b04          	ld	a,(OFST+2,sp)
2301  0597 4a            	dec	a
2302  0598 2702          	jreq	L327
2303                     ; 506     icpolarity = TIM1_ICPOLARITY_FALLING;
2305  059a a601          	ld	a,#1
2307  059c               L327:
2308                     ; 510     icpolarity = TIM1_ICPOLARITY_RISING;
2310  059c 6b01          	ld	(OFST-1,sp),a
2312                     ; 514   if (TIM1_ICSelection == TIM1_ICSELECTION_DIRECTTI)
2314  059e 7b07          	ld	a,(OFST+5,sp)
2315  05a0 4a            	dec	a
2316  05a1 2604          	jrne	L727
2317                     ; 516     icselection = TIM1_ICSELECTION_INDIRECTTI;
2319  05a3 a602          	ld	a,#2
2321  05a5 2002          	jra	L137
2322  05a7               L727:
2323                     ; 520     icselection = TIM1_ICSELECTION_DIRECTTI;
2325  05a7 a601          	ld	a,#1
2326  05a9               L137:
2327  05a9 6b02          	ld	(OFST+0,sp),a
2329                     ; 523   if (TIM1_Channel == TIM1_CHANNEL_1)
2331  05ab 7b03          	ld	a,(OFST+1,sp)
2332  05ad 2626          	jrne	L337
2333                     ; 526     TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
2333                     ; 527                (uint8_t)TIM1_ICFilter);
2335  05af 7b09          	ld	a,(OFST+7,sp)
2336  05b1 88            	push	a
2337  05b2 7b08          	ld	a,(OFST+6,sp)
2338  05b4 97            	ld	xl,a
2339  05b5 7b05          	ld	a,(OFST+3,sp)
2340  05b7 95            	ld	xh,a
2341  05b8 cd10f4        	call	L3_TI1_Config
2343  05bb 84            	pop	a
2344                     ; 530     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2346  05bc 7b08          	ld	a,(OFST+6,sp)
2347  05be cd0eb0        	call	_TIM1_SetIC1Prescaler
2349                     ; 533     TI2_Config(icpolarity, icselection, TIM1_ICFilter);
2351  05c1 7b09          	ld	a,(OFST+7,sp)
2352  05c3 88            	push	a
2353  05c4 7b03          	ld	a,(OFST+1,sp)
2354  05c6 97            	ld	xl,a
2355  05c7 7b02          	ld	a,(OFST+0,sp)
2356  05c9 95            	ld	xh,a
2357  05ca cd1124        	call	L5_TI2_Config
2359  05cd 84            	pop	a
2360                     ; 536     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2362  05ce 7b08          	ld	a,(OFST+6,sp)
2363  05d0 cd0eda        	call	_TIM1_SetIC2Prescaler
2366  05d3 2024          	jra	L537
2367  05d5               L337:
2368                     ; 541     TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
2368                     ; 542                (uint8_t)TIM1_ICFilter);
2370  05d5 7b09          	ld	a,(OFST+7,sp)
2371  05d7 88            	push	a
2372  05d8 7b08          	ld	a,(OFST+6,sp)
2373  05da 97            	ld	xl,a
2374  05db 7b05          	ld	a,(OFST+3,sp)
2375  05dd 95            	ld	xh,a
2376  05de cd1124        	call	L5_TI2_Config
2378  05e1 84            	pop	a
2379                     ; 545     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2381  05e2 7b08          	ld	a,(OFST+6,sp)
2382  05e4 cd0eda        	call	_TIM1_SetIC2Prescaler
2384                     ; 548     TI1_Config(icpolarity, icselection, TIM1_ICFilter);
2386  05e7 7b09          	ld	a,(OFST+7,sp)
2387  05e9 88            	push	a
2388  05ea 7b03          	ld	a,(OFST+1,sp)
2389  05ec 97            	ld	xl,a
2390  05ed 7b02          	ld	a,(OFST+0,sp)
2391  05ef 95            	ld	xh,a
2392  05f0 cd10f4        	call	L3_TI1_Config
2394  05f3 84            	pop	a
2395                     ; 551     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2397  05f4 7b08          	ld	a,(OFST+6,sp)
2398  05f6 cd0eb0        	call	_TIM1_SetIC1Prescaler
2400  05f9               L537:
2401                     ; 553 }
2404  05f9 5b04          	addw	sp,#4
2405  05fb 81            	ret	
2406  05fc               LC007:
2407  05fc 89            	pushw	x
2408  05fd 5f            	clrw	x
2409  05fe 89            	pushw	x
2410  05ff ae0000        	ldw	x,#L37
2411  0602 cd0000        	call	_assert_failed
2413  0605 5b04          	addw	sp,#4
2414  0607 81            	ret	
2470                     ; 561 void TIM1_Cmd(FunctionalState NewState)
2470                     ; 562 {
2471                     	switch	.text
2472  0608               _TIM1_Cmd:
2474  0608 88            	push	a
2475       00000000      OFST:	set	0
2478                     ; 564   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2480  0609 4d            	tnz	a
2481  060a 2711          	jreq	L275
2482  060c 4a            	dec	a
2483  060d 270e          	jreq	L275
2484  060f ae0234        	ldw	x,#564
2485  0612 89            	pushw	x
2486  0613 5f            	clrw	x
2487  0614 89            	pushw	x
2488  0615 ae0000        	ldw	x,#L37
2489  0618 cd0000        	call	_assert_failed
2491  061b 5b04          	addw	sp,#4
2492  061d               L275:
2493                     ; 567   if (NewState != DISABLE)
2495  061d 7b01          	ld	a,(OFST+1,sp)
2496  061f 2706          	jreq	L567
2497                     ; 569     TIM1->CR1 |= TIM1_CR1_CEN;
2499  0621 72105250      	bset	21072,#0
2501  0625 2004          	jra	L767
2502  0627               L567:
2503                     ; 573     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_CEN);
2505  0627 72115250      	bres	21072,#0
2506  062b               L767:
2507                     ; 575 }
2510  062b 84            	pop	a
2511  062c 81            	ret	
2548                     ; 583 void TIM1_CtrlPWMOutputs(FunctionalState NewState)
2548                     ; 584 {
2549                     	switch	.text
2550  062d               _TIM1_CtrlPWMOutputs:
2552  062d 88            	push	a
2553       00000000      OFST:	set	0
2556                     ; 586   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2558  062e 4d            	tnz	a
2559  062f 2711          	jreq	L406
2560  0631 4a            	dec	a
2561  0632 270e          	jreq	L406
2562  0634 ae024a        	ldw	x,#586
2563  0637 89            	pushw	x
2564  0638 5f            	clrw	x
2565  0639 89            	pushw	x
2566  063a ae0000        	ldw	x,#L37
2567  063d cd0000        	call	_assert_failed
2569  0640 5b04          	addw	sp,#4
2570  0642               L406:
2571                     ; 590   if (NewState != DISABLE)
2573  0642 7b01          	ld	a,(OFST+1,sp)
2574  0644 2706          	jreq	L7001
2575                     ; 592     TIM1->BKR |= TIM1_BKR_MOE;
2577  0646 721e526d      	bset	21101,#7
2579  064a 2004          	jra	L1101
2580  064c               L7001:
2581                     ; 596     TIM1->BKR &= (uint8_t)(~TIM1_BKR_MOE);
2583  064c 721f526d      	bres	21101,#7
2584  0650               L1101:
2585                     ; 598 }
2588  0650 84            	pop	a
2589  0651 81            	ret	
2697                     ; 617 void TIM1_ITConfig(TIM1_IT_TypeDef  TIM1_IT, FunctionalState NewState)
2697                     ; 618 {
2698                     	switch	.text
2699  0652               _TIM1_ITConfig:
2701  0652 89            	pushw	x
2702       00000000      OFST:	set	0
2705                     ; 620   assert_param(IS_TIM1_IT_OK(TIM1_IT));
2707  0653 9e            	ld	a,xh
2708  0654 4d            	tnz	a
2709  0655 2605          	jrne	L416
2710  0657 ae026c        	ldw	x,#620
2711  065a ad22          	call	LC008
2712  065c               L416:
2713                     ; 621   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2715  065c 7b02          	ld	a,(OFST+2,sp)
2716  065e 2708          	jreq	L426
2717  0660 4a            	dec	a
2718  0661 2705          	jreq	L426
2719  0663 ae026d        	ldw	x,#621
2720  0666 ad16          	call	LC008
2721  0668               L426:
2722                     ; 623   if (NewState != DISABLE)
2724  0668 7b02          	ld	a,(OFST+2,sp)
2725  066a 2707          	jreq	L1601
2726                     ; 626     TIM1->IER |= (uint8_t)TIM1_IT;
2728  066c c65254        	ld	a,21076
2729  066f 1a01          	or	a,(OFST+1,sp)
2731  0671 2006          	jra	L3601
2732  0673               L1601:
2733                     ; 631     TIM1->IER &= (uint8_t)(~(uint8_t)TIM1_IT);
2735  0673 7b01          	ld	a,(OFST+1,sp)
2736  0675 43            	cpl	a
2737  0676 c45254        	and	a,21076
2738  0679               L3601:
2739  0679 c75254        	ld	21076,a
2740                     ; 633 }
2743  067c 85            	popw	x
2744  067d 81            	ret	
2745  067e               LC008:
2746  067e 89            	pushw	x
2747  067f 5f            	clrw	x
2748  0680 89            	pushw	x
2749  0681 ae0000        	ldw	x,#L37
2750  0684 cd0000        	call	_assert_failed
2752  0687 5b04          	addw	sp,#4
2753  0689 81            	ret	
2777                     ; 640 void TIM1_InternalClockConfig(void)
2777                     ; 641 {
2778                     	switch	.text
2779  068a               _TIM1_InternalClockConfig:
2783                     ; 643   TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_SMS);
2785  068a c65252        	ld	a,21074
2786  068d a4f8          	and	a,#248
2787  068f c75252        	ld	21074,a
2788                     ; 644 }
2791  0692 81            	ret	
2907                     ; 662 void TIM1_ETRClockMode1Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
2907                     ; 663                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
2907                     ; 664                               uint8_t ExtTRGFilter)
2907                     ; 665 {
2908                     	switch	.text
2909  0693               _TIM1_ETRClockMode1Config:
2911  0693 89            	pushw	x
2912       00000000      OFST:	set	0
2915                     ; 667   assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
2917  0694 9e            	ld	a,xh
2918  0695 4d            	tnz	a
2919  0696 2714          	jreq	L046
2920  0698 9e            	ld	a,xh
2921  0699 a110          	cp	a,#16
2922  069b 270f          	jreq	L046
2923  069d 9e            	ld	a,xh
2924  069e a120          	cp	a,#32
2925  06a0 270a          	jreq	L046
2926  06a2 9e            	ld	a,xh
2927  06a3 a130          	cp	a,#48
2928  06a5 2705          	jreq	L046
2929  06a7 ae029b        	ldw	x,#667
2930  06aa ad24          	call	LC009
2931  06ac               L046:
2932                     ; 668   assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
2934  06ac 7b02          	ld	a,(OFST+2,sp)
2935  06ae a180          	cp	a,#128
2936  06b0 2708          	jreq	L056
2937  06b2 4d            	tnz	a
2938  06b3 2705          	jreq	L056
2939  06b5 ae029c        	ldw	x,#668
2940  06b8 ad16          	call	LC009
2941  06ba               L056:
2942                     ; 671   TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
2944  06ba 7b05          	ld	a,(OFST+5,sp)
2945  06bc 88            	push	a
2946  06bd 7b03          	ld	a,(OFST+3,sp)
2947  06bf 97            	ld	xl,a
2948  06c0 7b02          	ld	a,(OFST+2,sp)
2949  06c2 95            	ld	xh,a
2950  06c3 ad5c          	call	_TIM1_ETRConfig
2952  06c5 84            	pop	a
2953                     ; 674   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~(uint8_t)(TIM1_SMCR_SMS | TIM1_SMCR_TS )))
2953                     ; 675                          | (uint8_t)((uint8_t)TIM1_SLAVEMODE_EXTERNAL1 | TIM1_TS_ETRF ));
2955  06c6 c65252        	ld	a,21074
2956  06c9 aa77          	or	a,#119
2957  06cb c75252        	ld	21074,a
2958                     ; 676 }
2961  06ce 85            	popw	x
2962  06cf 81            	ret	
2963  06d0               LC009:
2964  06d0 89            	pushw	x
2965  06d1 5f            	clrw	x
2966  06d2 89            	pushw	x
2967  06d3 ae0000        	ldw	x,#L37
2968  06d6 cd0000        	call	_assert_failed
2970  06d9 5b04          	addw	sp,#4
2971  06db 81            	ret	
3028                     ; 694 void TIM1_ETRClockMode2Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3028                     ; 695                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3028                     ; 696                               uint8_t ExtTRGFilter)
3028                     ; 697 {
3029                     	switch	.text
3030  06dc               _TIM1_ETRClockMode2Config:
3032  06dc 89            	pushw	x
3033       00000000      OFST:	set	0
3036                     ; 699   assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
3038  06dd 9e            	ld	a,xh
3039  06de 4d            	tnz	a
3040  06df 2714          	jreq	L466
3041  06e1 9e            	ld	a,xh
3042  06e2 a110          	cp	a,#16
3043  06e4 270f          	jreq	L466
3044  06e6 9e            	ld	a,xh
3045  06e7 a120          	cp	a,#32
3046  06e9 270a          	jreq	L466
3047  06eb 9e            	ld	a,xh
3048  06ec a130          	cp	a,#48
3049  06ee 2705          	jreq	L466
3050  06f0 ae02bb        	ldw	x,#699
3051  06f3 ad20          	call	LC010
3052  06f5               L466:
3053                     ; 700   assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
3055  06f5 7b02          	ld	a,(OFST+2,sp)
3056  06f7 a180          	cp	a,#128
3057  06f9 2708          	jreq	L476
3058  06fb 4d            	tnz	a
3059  06fc 2705          	jreq	L476
3060  06fe ae02bc        	ldw	x,#700
3061  0701 ad12          	call	LC010
3062  0703               L476:
3063                     ; 703   TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
3065  0703 7b05          	ld	a,(OFST+5,sp)
3066  0705 88            	push	a
3067  0706 7b03          	ld	a,(OFST+3,sp)
3068  0708 97            	ld	xl,a
3069  0709 7b02          	ld	a,(OFST+2,sp)
3070  070b 95            	ld	xh,a
3071  070c ad13          	call	_TIM1_ETRConfig
3073  070e 721c5253      	bset	21075,#6
3074                     ; 706   TIM1->ETR |= TIM1_ETR_ECE;
3076                     ; 707 }
3079  0712 5b03          	addw	sp,#3
3080  0714 81            	ret	
3081  0715               LC010:
3082  0715 89            	pushw	x
3083  0716 5f            	clrw	x
3084  0717 89            	pushw	x
3085  0718 ae0000        	ldw	x,#L37
3086  071b cd0000        	call	_assert_failed
3088  071e 5b04          	addw	sp,#4
3089  0720 81            	ret	
3144                     ; 725 void TIM1_ETRConfig(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3144                     ; 726                     TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3144                     ; 727                     uint8_t ExtTRGFilter)
3144                     ; 728 {
3145                     	switch	.text
3146  0721               _TIM1_ETRConfig:
3148  0721 89            	pushw	x
3149       00000000      OFST:	set	0
3152                     ; 730   assert_param(IS_TIM1_EXT_TRG_FILTER_OK(ExtTRGFilter));
3154  0722 7b05          	ld	a,(OFST+5,sp)
3155  0724 a110          	cp	a,#16
3156  0726 250e          	jrult	L607
3157  0728 ae02da        	ldw	x,#730
3158  072b 89            	pushw	x
3159  072c 5f            	clrw	x
3160  072d 89            	pushw	x
3161  072e ae0000        	ldw	x,#L37
3162  0731 cd0000        	call	_assert_failed
3164  0734 5b04          	addw	sp,#4
3165  0736               L607:
3166                     ; 732   TIM1->ETR |= (uint8_t)((uint8_t)(TIM1_ExtTRGPrescaler | (uint8_t)TIM1_ExtTRGPolarity )|
3166                     ; 733                          (uint8_t)ExtTRGFilter );
3168  0736 7b01          	ld	a,(OFST+1,sp)
3169  0738 1a02          	or	a,(OFST+2,sp)
3170  073a 1a05          	or	a,(OFST+5,sp)
3171  073c ca5253        	or	a,21075
3172  073f c75253        	ld	21075,a
3173                     ; 734 }
3176  0742 85            	popw	x
3177  0743 81            	ret	
3265                     ; 751 void TIM1_TIxExternalClockConfig(TIM1_TIxExternalCLK1Source_TypeDef TIM1_TIxExternalCLKSource,
3265                     ; 752                                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
3265                     ; 753                                  uint8_t ICFilter)
3265                     ; 754 {
3266                     	switch	.text
3267  0744               _TIM1_TIxExternalClockConfig:
3269  0744 89            	pushw	x
3270       00000000      OFST:	set	0
3273                     ; 756   assert_param(IS_TIM1_TIXCLK_SOURCE_OK(TIM1_TIxExternalCLKSource));
3275  0745 9e            	ld	a,xh
3276  0746 a140          	cp	a,#64
3277  0748 270f          	jreq	L027
3278  074a 9e            	ld	a,xh
3279  074b a160          	cp	a,#96
3280  074d 270a          	jreq	L027
3281  074f 9e            	ld	a,xh
3282  0750 a150          	cp	a,#80
3283  0752 2705          	jreq	L027
3284  0754 ae02f4        	ldw	x,#756
3285  0757 ad46          	call	LC011
3286  0759               L027:
3287                     ; 757   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
3289  0759 7b02          	ld	a,(OFST+2,sp)
3290  075b 2708          	jreq	L037
3291  075d 4a            	dec	a
3292  075e 2705          	jreq	L037
3293  0760 ae02f5        	ldw	x,#757
3294  0763 ad3a          	call	LC011
3295  0765               L037:
3296                     ; 758   assert_param(IS_TIM1_IC_FILTER_OK(ICFilter));
3298  0765 7b05          	ld	a,(OFST+5,sp)
3299  0767 a110          	cp	a,#16
3300  0769 2505          	jrult	L637
3301  076b ae02f6        	ldw	x,#758
3302  076e ad2f          	call	LC011
3303  0770               L637:
3304                     ; 761   if (TIM1_TIxExternalCLKSource == TIM1_TIXEXTERNALCLK1SOURCE_TI2)
3306  0770 7b01          	ld	a,(OFST+1,sp)
3307  0772 a160          	cp	a,#96
3308  0774 260e          	jrne	L3521
3309                     ; 763     TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
3311  0776 7b05          	ld	a,(OFST+5,sp)
3312  0778 88            	push	a
3313  0779 7b03          	ld	a,(OFST+3,sp)
3314  077b ae0001        	ldw	x,#1
3315  077e 95            	ld	xh,a
3316  077f cd1124        	call	L5_TI2_Config
3319  0782 200c          	jra	L5521
3320  0784               L3521:
3321                     ; 767     TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
3323  0784 7b05          	ld	a,(OFST+5,sp)
3324  0786 88            	push	a
3325  0787 7b03          	ld	a,(OFST+3,sp)
3326  0789 ae0001        	ldw	x,#1
3327  078c 95            	ld	xh,a
3328  078d cd10f4        	call	L3_TI1_Config
3330  0790               L5521:
3331  0790 84            	pop	a
3332                     ; 771   TIM1_SelectInputTrigger((TIM1_TS_TypeDef)TIM1_TIxExternalCLKSource);
3334  0791 7b01          	ld	a,(OFST+1,sp)
3335  0793 ad16          	call	_TIM1_SelectInputTrigger
3337                     ; 774   TIM1->SMCR |= (uint8_t)(TIM1_SLAVEMODE_EXTERNAL1);
3339  0795 c65252        	ld	a,21074
3340  0798 aa07          	or	a,#7
3341  079a c75252        	ld	21074,a
3342                     ; 775 }
3345  079d 85            	popw	x
3346  079e 81            	ret	
3347  079f               LC011:
3348  079f 89            	pushw	x
3349  07a0 5f            	clrw	x
3350  07a1 89            	pushw	x
3351  07a2 ae0000        	ldw	x,#L37
3352  07a5 cd0000        	call	_assert_failed
3354  07a8 5b04          	addw	sp,#4
3355  07aa 81            	ret	
3441                     ; 787 void TIM1_SelectInputTrigger(TIM1_TS_TypeDef TIM1_InputTriggerSource)
3441                     ; 788 {
3442                     	switch	.text
3443  07ab               _TIM1_SelectInputTrigger:
3445  07ab 88            	push	a
3446       00000000      OFST:	set	0
3449                     ; 790   assert_param(IS_TIM1_TRIGGER_SELECTION_OK(TIM1_InputTriggerSource));
3451  07ac a140          	cp	a,#64
3452  07ae 2721          	jreq	L657
3453  07b0 a150          	cp	a,#80
3454  07b2 271d          	jreq	L657
3455  07b4 a160          	cp	a,#96
3456  07b6 2719          	jreq	L657
3457  07b8 a170          	cp	a,#112
3458  07ba 2715          	jreq	L657
3459  07bc a130          	cp	a,#48
3460  07be 2711          	jreq	L657
3461  07c0 4d            	tnz	a
3462  07c1 270e          	jreq	L657
3463  07c3 ae0316        	ldw	x,#790
3464  07c6 89            	pushw	x
3465  07c7 5f            	clrw	x
3466  07c8 89            	pushw	x
3467  07c9 ae0000        	ldw	x,#L37
3468  07cc cd0000        	call	_assert_failed
3470  07cf 5b04          	addw	sp,#4
3471  07d1               L657:
3472                     ; 793   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_TS)) | (uint8_t)TIM1_InputTriggerSource);
3474  07d1 c65252        	ld	a,21074
3475  07d4 a48f          	and	a,#143
3476  07d6 1a01          	or	a,(OFST+1,sp)
3477  07d8 c75252        	ld	21074,a
3478                     ; 794 }
3481  07db 84            	pop	a
3482  07dc 81            	ret	
3519                     ; 803 void TIM1_UpdateDisableConfig(FunctionalState NewState)
3519                     ; 804 {
3520                     	switch	.text
3521  07dd               _TIM1_UpdateDisableConfig:
3523  07dd 88            	push	a
3524       00000000      OFST:	set	0
3527                     ; 806   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3529  07de 4d            	tnz	a
3530  07df 2711          	jreq	L077
3531  07e1 4a            	dec	a
3532  07e2 270e          	jreq	L077
3533  07e4 ae0326        	ldw	x,#806
3534  07e7 89            	pushw	x
3535  07e8 5f            	clrw	x
3536  07e9 89            	pushw	x
3537  07ea ae0000        	ldw	x,#L37
3538  07ed cd0000        	call	_assert_failed
3540  07f0 5b04          	addw	sp,#4
3541  07f2               L077:
3542                     ; 809   if (NewState != DISABLE)
3544  07f2 7b01          	ld	a,(OFST+1,sp)
3545  07f4 2706          	jreq	L3331
3546                     ; 811     TIM1->CR1 |= TIM1_CR1_UDIS;
3548  07f6 72125250      	bset	21072,#1
3550  07fa 2004          	jra	L5331
3551  07fc               L3331:
3552                     ; 815     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_UDIS);
3554  07fc 72135250      	bres	21072,#1
3555  0800               L5331:
3556                     ; 817 }
3559  0800 84            	pop	a
3560  0801 81            	ret	
3619                     ; 827 void TIM1_UpdateRequestConfig(TIM1_UpdateSource_TypeDef TIM1_UpdateSource)
3619                     ; 828 {
3620                     	switch	.text
3621  0802               _TIM1_UpdateRequestConfig:
3623  0802 88            	push	a
3624       00000000      OFST:	set	0
3627                     ; 830   assert_param(IS_TIM1_UPDATE_SOURCE_OK(TIM1_UpdateSource));
3629  0803 4d            	tnz	a
3630  0804 2711          	jreq	L2001
3631  0806 4a            	dec	a
3632  0807 270e          	jreq	L2001
3633  0809 ae033e        	ldw	x,#830
3634  080c 89            	pushw	x
3635  080d 5f            	clrw	x
3636  080e 89            	pushw	x
3637  080f ae0000        	ldw	x,#L37
3638  0812 cd0000        	call	_assert_failed
3640  0815 5b04          	addw	sp,#4
3641  0817               L2001:
3642                     ; 833   if (TIM1_UpdateSource != TIM1_UPDATESOURCE_GLOBAL)
3644  0817 7b01          	ld	a,(OFST+1,sp)
3645  0819 2706          	jreq	L5631
3646                     ; 835     TIM1->CR1 |= TIM1_CR1_URS;
3648  081b 72145250      	bset	21072,#2
3650  081f 2004          	jra	L7631
3651  0821               L5631:
3652                     ; 839     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_URS);
3654  0821 72155250      	bres	21072,#2
3655  0825               L7631:
3656                     ; 841 }
3659  0825 84            	pop	a
3660  0826 81            	ret	
3697                     ; 849 void TIM1_SelectHallSensor(FunctionalState NewState)
3697                     ; 850 {
3698                     	switch	.text
3699  0827               _TIM1_SelectHallSensor:
3701  0827 88            	push	a
3702       00000000      OFST:	set	0
3705                     ; 852   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3707  0828 4d            	tnz	a
3708  0829 2711          	jreq	L4101
3709  082b 4a            	dec	a
3710  082c 270e          	jreq	L4101
3711  082e ae0354        	ldw	x,#852
3712  0831 89            	pushw	x
3713  0832 5f            	clrw	x
3714  0833 89            	pushw	x
3715  0834 ae0000        	ldw	x,#L37
3716  0837 cd0000        	call	_assert_failed
3718  083a 5b04          	addw	sp,#4
3719  083c               L4101:
3720                     ; 855   if (NewState != DISABLE)
3722  083c 7b01          	ld	a,(OFST+1,sp)
3723  083e 2706          	jreq	L7041
3724                     ; 857     TIM1->CR2 |= TIM1_CR2_TI1S;
3726  0840 721e5251      	bset	21073,#7
3728  0844 2004          	jra	L1141
3729  0846               L7041:
3730                     ; 861     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_TI1S);
3732  0846 721f5251      	bres	21073,#7
3733  084a               L1141:
3734                     ; 863 }
3737  084a 84            	pop	a
3738  084b 81            	ret	
3796                     ; 873 void TIM1_SelectOnePulseMode(TIM1_OPMode_TypeDef TIM1_OPMode)
3796                     ; 874 {
3797                     	switch	.text
3798  084c               _TIM1_SelectOnePulseMode:
3800  084c 88            	push	a
3801       00000000      OFST:	set	0
3804                     ; 876   assert_param(IS_TIM1_OPM_MODE_OK(TIM1_OPMode));
3806  084d a101          	cp	a,#1
3807  084f 2711          	jreq	L6201
3808  0851 4d            	tnz	a
3809  0852 270e          	jreq	L6201
3810  0854 ae036c        	ldw	x,#876
3811  0857 89            	pushw	x
3812  0858 5f            	clrw	x
3813  0859 89            	pushw	x
3814  085a ae0000        	ldw	x,#L37
3815  085d cd0000        	call	_assert_failed
3817  0860 5b04          	addw	sp,#4
3818  0862               L6201:
3819                     ; 879   if (TIM1_OPMode != TIM1_OPMODE_REPETITIVE)
3821  0862 7b01          	ld	a,(OFST+1,sp)
3822  0864 2706          	jreq	L1441
3823                     ; 881     TIM1->CR1 |= TIM1_CR1_OPM;
3825  0866 72165250      	bset	21072,#3
3827  086a 2004          	jra	L3441
3828  086c               L1441:
3829                     ; 885     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_OPM);
3831  086c 72175250      	bres	21072,#3
3832  0870               L3441:
3833                     ; 888 }
3836  0870 84            	pop	a
3837  0871 81            	ret	
3936                     ; 903 void TIM1_SelectOutputTrigger(TIM1_TRGOSource_TypeDef TIM1_TRGOSource)
3936                     ; 904 {
3937                     	switch	.text
3938  0872               _TIM1_SelectOutputTrigger:
3940  0872 88            	push	a
3941       00000000      OFST:	set	0
3944                     ; 906   assert_param(IS_TIM1_TRGO_SOURCE_OK(TIM1_TRGOSource));
3946  0873 4d            	tnz	a
3947  0874 2726          	jreq	L0401
3948  0876 a110          	cp	a,#16
3949  0878 2722          	jreq	L0401
3950  087a a120          	cp	a,#32
3951  087c 271e          	jreq	L0401
3952  087e a130          	cp	a,#48
3953  0880 271a          	jreq	L0401
3954  0882 a140          	cp	a,#64
3955  0884 2716          	jreq	L0401
3956  0886 a150          	cp	a,#80
3957  0888 2712          	jreq	L0401
3958  088a a160          	cp	a,#96
3959  088c 270e          	jreq	L0401
3960  088e ae038a        	ldw	x,#906
3961  0891 89            	pushw	x
3962  0892 5f            	clrw	x
3963  0893 89            	pushw	x
3964  0894 ae0000        	ldw	x,#L37
3965  0897 cd0000        	call	_assert_failed
3967  089a 5b04          	addw	sp,#4
3968  089c               L0401:
3969                     ; 909   TIM1->CR2 = (uint8_t)((uint8_t)(TIM1->CR2 & (uint8_t)(~TIM1_CR2_MMS)) | 
3969                     ; 910                         (uint8_t) TIM1_TRGOSource);
3971  089c c65251        	ld	a,21073
3972  089f a48f          	and	a,#143
3973  08a1 1a01          	or	a,(OFST+1,sp)
3974  08a3 c75251        	ld	21073,a
3975                     ; 911 }
3978  08a6 84            	pop	a
3979  08a7 81            	ret	
4054                     ; 923 void TIM1_SelectSlaveMode(TIM1_SlaveMode_TypeDef TIM1_SlaveMode)
4054                     ; 924 {
4055                     	switch	.text
4056  08a8               _TIM1_SelectSlaveMode:
4058  08a8 88            	push	a
4059       00000000      OFST:	set	0
4062                     ; 926   assert_param(IS_TIM1_SLAVE_MODE_OK(TIM1_SlaveMode));
4064  08a9 a104          	cp	a,#4
4065  08ab 271a          	jreq	L2501
4066  08ad a105          	cp	a,#5
4067  08af 2716          	jreq	L2501
4068  08b1 a106          	cp	a,#6
4069  08b3 2712          	jreq	L2501
4070  08b5 a107          	cp	a,#7
4071  08b7 270e          	jreq	L2501
4072  08b9 ae039e        	ldw	x,#926
4073  08bc 89            	pushw	x
4074  08bd 5f            	clrw	x
4075  08be 89            	pushw	x
4076  08bf ae0000        	ldw	x,#L37
4077  08c2 cd0000        	call	_assert_failed
4079  08c5 5b04          	addw	sp,#4
4080  08c7               L2501:
4081                     ; 929   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_SMS)) |
4081                     ; 930                          (uint8_t)TIM1_SlaveMode);
4083  08c7 c65252        	ld	a,21074
4084  08ca a4f8          	and	a,#248
4085  08cc 1a01          	or	a,(OFST+1,sp)
4086  08ce c75252        	ld	21074,a
4087                     ; 931 }
4090  08d1 84            	pop	a
4091  08d2 81            	ret	
4128                     ; 939 void TIM1_SelectMasterSlaveMode(FunctionalState NewState)
4128                     ; 940 {
4129                     	switch	.text
4130  08d3               _TIM1_SelectMasterSlaveMode:
4132  08d3 88            	push	a
4133       00000000      OFST:	set	0
4136                     ; 942   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4138  08d4 4d            	tnz	a
4139  08d5 2711          	jreq	L4601
4140  08d7 4a            	dec	a
4141  08d8 270e          	jreq	L4601
4142  08da ae03ae        	ldw	x,#942
4143  08dd 89            	pushw	x
4144  08de 5f            	clrw	x
4145  08df 89            	pushw	x
4146  08e0 ae0000        	ldw	x,#L37
4147  08e3 cd0000        	call	_assert_failed
4149  08e6 5b04          	addw	sp,#4
4150  08e8               L4601:
4151                     ; 945   if (NewState != DISABLE)
4153  08e8 7b01          	ld	a,(OFST+1,sp)
4154  08ea 2706          	jreq	L5551
4155                     ; 947     TIM1->SMCR |= TIM1_SMCR_MSM;
4157  08ec 721e5252      	bset	21074,#7
4159  08f0 2004          	jra	L7551
4160  08f2               L5551:
4161                     ; 951     TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_MSM);
4163  08f2 721f5252      	bres	21074,#7
4164  08f6               L7551:
4165                     ; 953 }
4168  08f6 84            	pop	a
4169  08f7 81            	ret	
4256                     ; 975 void TIM1_EncoderInterfaceConfig(TIM1_EncoderMode_TypeDef TIM1_EncoderMode,
4256                     ; 976                                  TIM1_ICPolarity_TypeDef TIM1_IC1Polarity,
4256                     ; 977                                  TIM1_ICPolarity_TypeDef TIM1_IC2Polarity)
4256                     ; 978 {
4257                     	switch	.text
4258  08f8               _TIM1_EncoderInterfaceConfig:
4260  08f8 89            	pushw	x
4261       00000000      OFST:	set	0
4264                     ; 980   assert_param(IS_TIM1_ENCODER_MODE_OK(TIM1_EncoderMode));
4266  08f9 9e            	ld	a,xh
4267  08fa 4a            	dec	a
4268  08fb 270f          	jreq	L6701
4269  08fd 9e            	ld	a,xh
4270  08fe a102          	cp	a,#2
4271  0900 270a          	jreq	L6701
4272  0902 9e            	ld	a,xh
4273  0903 a103          	cp	a,#3
4274  0905 2705          	jreq	L6701
4275  0907 ae03d4        	ldw	x,#980
4276  090a ad54          	call	LC012
4277  090c               L6701:
4278                     ; 981   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC1Polarity));
4280  090c 7b02          	ld	a,(OFST+2,sp)
4281  090e 2708          	jreq	L6011
4282  0910 4a            	dec	a
4283  0911 2705          	jreq	L6011
4284  0913 ae03d5        	ldw	x,#981
4285  0916 ad48          	call	LC012
4286  0918               L6011:
4287                     ; 982   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC2Polarity));
4289  0918 7b05          	ld	a,(OFST+5,sp)
4290  091a 2708          	jreq	L6111
4291  091c 4a            	dec	a
4292  091d 2705          	jreq	L6111
4293  091f ae03d6        	ldw	x,#982
4294  0922 ad3c          	call	LC012
4295  0924               L6111:
4296                     ; 985   if (TIM1_IC1Polarity != TIM1_ICPOLARITY_RISING)
4298  0924 7b02          	ld	a,(OFST+2,sp)
4299  0926 2706          	jreq	L1261
4300                     ; 987     TIM1->CCER1 |= TIM1_CCER1_CC1P;
4302  0928 7212525c      	bset	21084,#1
4304  092c 2004          	jra	L3261
4305  092e               L1261:
4306                     ; 991     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
4308  092e 7213525c      	bres	21084,#1
4309  0932               L3261:
4310                     ; 994   if (TIM1_IC2Polarity != TIM1_ICPOLARITY_RISING)
4312  0932 7b05          	ld	a,(OFST+5,sp)
4313  0934 2706          	jreq	L5261
4314                     ; 996     TIM1->CCER1 |= TIM1_CCER1_CC2P;
4316  0936 721a525c      	bset	21084,#5
4318  093a 2004          	jra	L7261
4319  093c               L5261:
4320                     ; 1000     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
4322  093c 721b525c      	bres	21084,#5
4323  0940               L7261:
4324                     ; 1003   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(TIM1_SMCR_MSM | TIM1_SMCR_TS))
4324                     ; 1004                          | (uint8_t) TIM1_EncoderMode);
4326  0940 c65252        	ld	a,21074
4327  0943 a4f0          	and	a,#240
4328  0945 1a01          	or	a,(OFST+1,sp)
4329  0947 c75252        	ld	21074,a
4330                     ; 1007   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_CCxS)) 
4330                     ; 1008                           | (uint8_t) CCMR_TIxDirect_Set);
4332  094a c65258        	ld	a,21080
4333  094d a4fc          	and	a,#252
4334  094f aa01          	or	a,#1
4335  0951 c75258        	ld	21080,a
4336                     ; 1009   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_CCxS))
4336                     ; 1010                           | (uint8_t) CCMR_TIxDirect_Set);
4338  0954 c65259        	ld	a,21081
4339  0957 a4fc          	and	a,#252
4340  0959 aa01          	or	a,#1
4341  095b c75259        	ld	21081,a
4342                     ; 1011 }
4345  095e 85            	popw	x
4346  095f 81            	ret	
4347  0960               LC012:
4348  0960 89            	pushw	x
4349  0961 5f            	clrw	x
4350  0962 89            	pushw	x
4351  0963 ae0000        	ldw	x,#L37
4352  0966 cd0000        	call	_assert_failed
4354  0969 5b04          	addw	sp,#4
4355  096b 81            	ret	
4421                     ; 1023 void TIM1_PrescalerConfig(uint16_t Prescaler,
4421                     ; 1024                           TIM1_PSCReloadMode_TypeDef TIM1_PSCReloadMode)
4421                     ; 1025 {
4422                     	switch	.text
4423  096c               _TIM1_PrescalerConfig:
4425  096c 89            	pushw	x
4426       00000000      OFST:	set	0
4429                     ; 1027   assert_param(IS_TIM1_PRESCALER_RELOAD_OK(TIM1_PSCReloadMode));
4431  096d 7b05          	ld	a,(OFST+5,sp)
4432  096f 2711          	jreq	L0311
4433  0971 4a            	dec	a
4434  0972 270e          	jreq	L0311
4435  0974 ae0403        	ldw	x,#1027
4436  0977 89            	pushw	x
4437  0978 5f            	clrw	x
4438  0979 89            	pushw	x
4439  097a ae0000        	ldw	x,#L37
4440  097d cd0000        	call	_assert_failed
4442  0980 5b04          	addw	sp,#4
4443  0982               L0311:
4444                     ; 1030   TIM1->PSCRH = (uint8_t)(Prescaler >> 8);
4446  0982 7b01          	ld	a,(OFST+1,sp)
4447  0984 c75260        	ld	21088,a
4448                     ; 1031   TIM1->PSCRL = (uint8_t)(Prescaler);
4450  0987 7b02          	ld	a,(OFST+2,sp)
4451  0989 c75261        	ld	21089,a
4452                     ; 1034   TIM1->EGR = (uint8_t)TIM1_PSCReloadMode;
4454  098c 7b05          	ld	a,(OFST+5,sp)
4455  098e c75257        	ld	21079,a
4456                     ; 1035 }
4459  0991 85            	popw	x
4460  0992 81            	ret	
4497                     ; 1048 void TIM1_CounterModeConfig(TIM1_CounterMode_TypeDef TIM1_CounterMode)
4497                     ; 1049 {
4498                     	switch	.text
4499  0993               _TIM1_CounterModeConfig:
4501  0993 88            	push	a
4502       00000000      OFST:	set	0
4505                     ; 1051   assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
4507  0994 4d            	tnz	a
4508  0995 271e          	jreq	L2411
4509  0997 a110          	cp	a,#16
4510  0999 271a          	jreq	L2411
4511  099b a120          	cp	a,#32
4512  099d 2716          	jreq	L2411
4513  099f a140          	cp	a,#64
4514  09a1 2712          	jreq	L2411
4515  09a3 a160          	cp	a,#96
4516  09a5 270e          	jreq	L2411
4517  09a7 ae041b        	ldw	x,#1051
4518  09aa 89            	pushw	x
4519  09ab 5f            	clrw	x
4520  09ac 89            	pushw	x
4521  09ad ae0000        	ldw	x,#L37
4522  09b0 cd0000        	call	_assert_failed
4524  09b3 5b04          	addw	sp,#4
4525  09b5               L2411:
4526                     ; 1055   TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)((uint8_t)(~TIM1_CR1_CMS) & (uint8_t)(~TIM1_CR1_DIR)))
4526                     ; 1056                         | (uint8_t)TIM1_CounterMode);
4528  09b5 c65250        	ld	a,21072
4529  09b8 a48f          	and	a,#143
4530  09ba 1a01          	or	a,(OFST+1,sp)
4531  09bc c75250        	ld	21072,a
4532                     ; 1057 }
4535  09bf 84            	pop	a
4536  09c0 81            	ret	
4595                     ; 1067 void TIM1_ForcedOC1Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
4595                     ; 1068 {
4596                     	switch	.text
4597  09c1               _TIM1_ForcedOC1Config:
4599  09c1 88            	push	a
4600       00000000      OFST:	set	0
4603                     ; 1070   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
4605  09c2 a150          	cp	a,#80
4606  09c4 2712          	jreq	L4511
4607  09c6 a140          	cp	a,#64
4608  09c8 270e          	jreq	L4511
4609  09ca ae042e        	ldw	x,#1070
4610  09cd 89            	pushw	x
4611  09ce 5f            	clrw	x
4612  09cf 89            	pushw	x
4613  09d0 ae0000        	ldw	x,#L37
4614  09d3 cd0000        	call	_assert_failed
4616  09d6 5b04          	addw	sp,#4
4617  09d8               L4511:
4618                     ; 1073   TIM1->CCMR1 =  (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM))|
4618                     ; 1074                            (uint8_t)TIM1_ForcedAction);
4620  09d8 c65258        	ld	a,21080
4621  09db a48f          	and	a,#143
4622  09dd 1a01          	or	a,(OFST+1,sp)
4623  09df c75258        	ld	21080,a
4624                     ; 1075 }
4627  09e2 84            	pop	a
4628  09e3 81            	ret	
4665                     ; 1085 void TIM1_ForcedOC2Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
4665                     ; 1086 {
4666                     	switch	.text
4667  09e4               _TIM1_ForcedOC2Config:
4669  09e4 88            	push	a
4670       00000000      OFST:	set	0
4673                     ; 1088   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
4675  09e5 a150          	cp	a,#80
4676  09e7 2712          	jreq	L6611
4677  09e9 a140          	cp	a,#64
4678  09eb 270e          	jreq	L6611
4679  09ed ae0440        	ldw	x,#1088
4680  09f0 89            	pushw	x
4681  09f1 5f            	clrw	x
4682  09f2 89            	pushw	x
4683  09f3 ae0000        	ldw	x,#L37
4684  09f6 cd0000        	call	_assert_failed
4686  09f9 5b04          	addw	sp,#4
4687  09fb               L6611:
4688                     ; 1091   TIM1->CCMR2  =  (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
4688                     ; 1092                             | (uint8_t)TIM1_ForcedAction);
4690  09fb c65259        	ld	a,21081
4691  09fe a48f          	and	a,#143
4692  0a00 1a01          	or	a,(OFST+1,sp)
4693  0a02 c75259        	ld	21081,a
4694                     ; 1093 }
4697  0a05 84            	pop	a
4698  0a06 81            	ret	
4735                     ; 1104 void TIM1_ForcedOC3Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
4735                     ; 1105 {
4736                     	switch	.text
4737  0a07               _TIM1_ForcedOC3Config:
4739  0a07 88            	push	a
4740       00000000      OFST:	set	0
4743                     ; 1107   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
4745  0a08 a150          	cp	a,#80
4746  0a0a 2712          	jreq	L0021
4747  0a0c a140          	cp	a,#64
4748  0a0e 270e          	jreq	L0021
4749  0a10 ae0453        	ldw	x,#1107
4750  0a13 89            	pushw	x
4751  0a14 5f            	clrw	x
4752  0a15 89            	pushw	x
4753  0a16 ae0000        	ldw	x,#L37
4754  0a19 cd0000        	call	_assert_failed
4756  0a1c 5b04          	addw	sp,#4
4757  0a1e               L0021:
4758                     ; 1110   TIM1->CCMR3  =  (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM))  
4758                     ; 1111                             | (uint8_t)TIM1_ForcedAction);
4760  0a1e c6525a        	ld	a,21082
4761  0a21 a48f          	and	a,#143
4762  0a23 1a01          	or	a,(OFST+1,sp)
4763  0a25 c7525a        	ld	21082,a
4764                     ; 1112 }
4767  0a28 84            	pop	a
4768  0a29 81            	ret	
4805                     ; 1123 void TIM1_ForcedOC4Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
4805                     ; 1124 {
4806                     	switch	.text
4807  0a2a               _TIM1_ForcedOC4Config:
4809  0a2a 88            	push	a
4810       00000000      OFST:	set	0
4813                     ; 1126   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
4815  0a2b a150          	cp	a,#80
4816  0a2d 2712          	jreq	L2121
4817  0a2f a140          	cp	a,#64
4818  0a31 270e          	jreq	L2121
4819  0a33 ae0466        	ldw	x,#1126
4820  0a36 89            	pushw	x
4821  0a37 5f            	clrw	x
4822  0a38 89            	pushw	x
4823  0a39 ae0000        	ldw	x,#L37
4824  0a3c cd0000        	call	_assert_failed
4826  0a3f 5b04          	addw	sp,#4
4827  0a41               L2121:
4828                     ; 1129   TIM1->CCMR4  =  (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
4828                     ; 1130                             | (uint8_t)TIM1_ForcedAction);
4830  0a41 c6525b        	ld	a,21083
4831  0a44 a48f          	and	a,#143
4832  0a46 1a01          	or	a,(OFST+1,sp)
4833  0a48 c7525b        	ld	21083,a
4834                     ; 1131 }
4837  0a4b 84            	pop	a
4838  0a4c 81            	ret	
4875                     ; 1139 void TIM1_ARRPreloadConfig(FunctionalState NewState)
4875                     ; 1140 {
4876                     	switch	.text
4877  0a4d               _TIM1_ARRPreloadConfig:
4879  0a4d 88            	push	a
4880       00000000      OFST:	set	0
4883                     ; 1142   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4885  0a4e 4d            	tnz	a
4886  0a4f 2711          	jreq	L4221
4887  0a51 4a            	dec	a
4888  0a52 270e          	jreq	L4221
4889  0a54 ae0476        	ldw	x,#1142
4890  0a57 89            	pushw	x
4891  0a58 5f            	clrw	x
4892  0a59 89            	pushw	x
4893  0a5a ae0000        	ldw	x,#L37
4894  0a5d cd0000        	call	_assert_failed
4896  0a60 5b04          	addw	sp,#4
4897  0a62               L4221:
4898                     ; 1145   if (NewState != DISABLE)
4900  0a62 7b01          	ld	a,(OFST+1,sp)
4901  0a64 2706          	jreq	L5102
4902                     ; 1147     TIM1->CR1 |= TIM1_CR1_ARPE;
4904  0a66 721e5250      	bset	21072,#7
4906  0a6a 2004          	jra	L7102
4907  0a6c               L5102:
4908                     ; 1151     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_ARPE);
4910  0a6c 721f5250      	bres	21072,#7
4911  0a70               L7102:
4912                     ; 1153 }
4915  0a70 84            	pop	a
4916  0a71 81            	ret	
4952                     ; 1161 void TIM1_SelectCOM(FunctionalState NewState)
4952                     ; 1162 {
4953                     	switch	.text
4954  0a72               _TIM1_SelectCOM:
4956  0a72 88            	push	a
4957       00000000      OFST:	set	0
4960                     ; 1164   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4962  0a73 4d            	tnz	a
4963  0a74 2711          	jreq	L6321
4964  0a76 4a            	dec	a
4965  0a77 270e          	jreq	L6321
4966  0a79 ae048c        	ldw	x,#1164
4967  0a7c 89            	pushw	x
4968  0a7d 5f            	clrw	x
4969  0a7e 89            	pushw	x
4970  0a7f ae0000        	ldw	x,#L37
4971  0a82 cd0000        	call	_assert_failed
4973  0a85 5b04          	addw	sp,#4
4974  0a87               L6321:
4975                     ; 1167   if (NewState != DISABLE)
4977  0a87 7b01          	ld	a,(OFST+1,sp)
4978  0a89 2706          	jreq	L7302
4979                     ; 1169     TIM1->CR2 |= TIM1_CR2_COMS;
4981  0a8b 72145251      	bset	21073,#2
4983  0a8f 2004          	jra	L1402
4984  0a91               L7302:
4985                     ; 1173     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_COMS);
4987  0a91 72155251      	bres	21073,#2
4988  0a95               L1402:
4989                     ; 1175 }
4992  0a95 84            	pop	a
4993  0a96 81            	ret	
5030                     ; 1183 void TIM1_CCPreloadControl(FunctionalState NewState)
5030                     ; 1184 {
5031                     	switch	.text
5032  0a97               _TIM1_CCPreloadControl:
5034  0a97 88            	push	a
5035       00000000      OFST:	set	0
5038                     ; 1186   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5040  0a98 4d            	tnz	a
5041  0a99 2711          	jreq	L0521
5042  0a9b 4a            	dec	a
5043  0a9c 270e          	jreq	L0521
5044  0a9e ae04a2        	ldw	x,#1186
5045  0aa1 89            	pushw	x
5046  0aa2 5f            	clrw	x
5047  0aa3 89            	pushw	x
5048  0aa4 ae0000        	ldw	x,#L37
5049  0aa7 cd0000        	call	_assert_failed
5051  0aaa 5b04          	addw	sp,#4
5052  0aac               L0521:
5053                     ; 1189   if (NewState != DISABLE)
5055  0aac 7b01          	ld	a,(OFST+1,sp)
5056  0aae 2706          	jreq	L1602
5057                     ; 1191     TIM1->CR2 |= TIM1_CR2_CCPC;
5059  0ab0 72105251      	bset	21073,#0
5061  0ab4 2004          	jra	L3602
5062  0ab6               L1602:
5063                     ; 1195     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_CCPC);
5065  0ab6 72115251      	bres	21073,#0
5066  0aba               L3602:
5067                     ; 1197 }
5070  0aba 84            	pop	a
5071  0abb 81            	ret	
5108                     ; 1205 void TIM1_OC1PreloadConfig(FunctionalState NewState)
5108                     ; 1206 {
5109                     	switch	.text
5110  0abc               _TIM1_OC1PreloadConfig:
5112  0abc 88            	push	a
5113       00000000      OFST:	set	0
5116                     ; 1208   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5118  0abd 4d            	tnz	a
5119  0abe 2711          	jreq	L2621
5120  0ac0 4a            	dec	a
5121  0ac1 270e          	jreq	L2621
5122  0ac3 ae04b8        	ldw	x,#1208
5123  0ac6 89            	pushw	x
5124  0ac7 5f            	clrw	x
5125  0ac8 89            	pushw	x
5126  0ac9 ae0000        	ldw	x,#L37
5127  0acc cd0000        	call	_assert_failed
5129  0acf 5b04          	addw	sp,#4
5130  0ad1               L2621:
5131                     ; 1211   if (NewState != DISABLE)
5133  0ad1 7b01          	ld	a,(OFST+1,sp)
5134  0ad3 2706          	jreq	L3012
5135                     ; 1213     TIM1->CCMR1 |= TIM1_CCMR_OCxPE;
5137  0ad5 72165258      	bset	21080,#3
5139  0ad9 2004          	jra	L5012
5140  0adb               L3012:
5141                     ; 1217     TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5143  0adb 72175258      	bres	21080,#3
5144  0adf               L5012:
5145                     ; 1219 }
5148  0adf 84            	pop	a
5149  0ae0 81            	ret	
5186                     ; 1227 void TIM1_OC2PreloadConfig(FunctionalState NewState)
5186                     ; 1228 {
5187                     	switch	.text
5188  0ae1               _TIM1_OC2PreloadConfig:
5190  0ae1 88            	push	a
5191       00000000      OFST:	set	0
5194                     ; 1230   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5196  0ae2 4d            	tnz	a
5197  0ae3 2711          	jreq	L4721
5198  0ae5 4a            	dec	a
5199  0ae6 270e          	jreq	L4721
5200  0ae8 ae04ce        	ldw	x,#1230
5201  0aeb 89            	pushw	x
5202  0aec 5f            	clrw	x
5203  0aed 89            	pushw	x
5204  0aee ae0000        	ldw	x,#L37
5205  0af1 cd0000        	call	_assert_failed
5207  0af4 5b04          	addw	sp,#4
5208  0af6               L4721:
5209                     ; 1233   if (NewState != DISABLE)
5211  0af6 7b01          	ld	a,(OFST+1,sp)
5212  0af8 2706          	jreq	L5212
5213                     ; 1235     TIM1->CCMR2 |= TIM1_CCMR_OCxPE;
5215  0afa 72165259      	bset	21081,#3
5217  0afe 2004          	jra	L7212
5218  0b00               L5212:
5219                     ; 1239     TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5221  0b00 72175259      	bres	21081,#3
5222  0b04               L7212:
5223                     ; 1241 }
5226  0b04 84            	pop	a
5227  0b05 81            	ret	
5264                     ; 1249 void TIM1_OC3PreloadConfig(FunctionalState NewState)
5264                     ; 1250 {
5265                     	switch	.text
5266  0b06               _TIM1_OC3PreloadConfig:
5268  0b06 88            	push	a
5269       00000000      OFST:	set	0
5272                     ; 1252   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5274  0b07 4d            	tnz	a
5275  0b08 2711          	jreq	L6031
5276  0b0a 4a            	dec	a
5277  0b0b 270e          	jreq	L6031
5278  0b0d ae04e4        	ldw	x,#1252
5279  0b10 89            	pushw	x
5280  0b11 5f            	clrw	x
5281  0b12 89            	pushw	x
5282  0b13 ae0000        	ldw	x,#L37
5283  0b16 cd0000        	call	_assert_failed
5285  0b19 5b04          	addw	sp,#4
5286  0b1b               L6031:
5287                     ; 1255   if (NewState != DISABLE)
5289  0b1b 7b01          	ld	a,(OFST+1,sp)
5290  0b1d 2706          	jreq	L7412
5291                     ; 1257     TIM1->CCMR3 |= TIM1_CCMR_OCxPE;
5293  0b1f 7216525a      	bset	21082,#3
5295  0b23 2004          	jra	L1512
5296  0b25               L7412:
5297                     ; 1261     TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5299  0b25 7217525a      	bres	21082,#3
5300  0b29               L1512:
5301                     ; 1263 }
5304  0b29 84            	pop	a
5305  0b2a 81            	ret	
5342                     ; 1271 void TIM1_OC4PreloadConfig(FunctionalState NewState)
5342                     ; 1272 {
5343                     	switch	.text
5344  0b2b               _TIM1_OC4PreloadConfig:
5346  0b2b 88            	push	a
5347       00000000      OFST:	set	0
5350                     ; 1274   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5352  0b2c 4d            	tnz	a
5353  0b2d 2711          	jreq	L0231
5354  0b2f 4a            	dec	a
5355  0b30 270e          	jreq	L0231
5356  0b32 ae04fa        	ldw	x,#1274
5357  0b35 89            	pushw	x
5358  0b36 5f            	clrw	x
5359  0b37 89            	pushw	x
5360  0b38 ae0000        	ldw	x,#L37
5361  0b3b cd0000        	call	_assert_failed
5363  0b3e 5b04          	addw	sp,#4
5364  0b40               L0231:
5365                     ; 1277   if (NewState != DISABLE)
5367  0b40 7b01          	ld	a,(OFST+1,sp)
5368  0b42 2706          	jreq	L1712
5369                     ; 1279     TIM1->CCMR4 |= TIM1_CCMR_OCxPE;
5371  0b44 7216525b      	bset	21083,#3
5373  0b48 2004          	jra	L3712
5374  0b4a               L1712:
5375                     ; 1283     TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5377  0b4a 7217525b      	bres	21083,#3
5378  0b4e               L3712:
5379                     ; 1285 }
5382  0b4e 84            	pop	a
5383  0b4f 81            	ret	
5419                     ; 1293 void TIM1_OC1FastConfig(FunctionalState NewState)
5419                     ; 1294 {
5420                     	switch	.text
5421  0b50               _TIM1_OC1FastConfig:
5423  0b50 88            	push	a
5424       00000000      OFST:	set	0
5427                     ; 1296   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5429  0b51 4d            	tnz	a
5430  0b52 2711          	jreq	L2331
5431  0b54 4a            	dec	a
5432  0b55 270e          	jreq	L2331
5433  0b57 ae0510        	ldw	x,#1296
5434  0b5a 89            	pushw	x
5435  0b5b 5f            	clrw	x
5436  0b5c 89            	pushw	x
5437  0b5d ae0000        	ldw	x,#L37
5438  0b60 cd0000        	call	_assert_failed
5440  0b63 5b04          	addw	sp,#4
5441  0b65               L2331:
5442                     ; 1299   if (NewState != DISABLE)
5444  0b65 7b01          	ld	a,(OFST+1,sp)
5445  0b67 2706          	jreq	L3122
5446                     ; 1301     TIM1->CCMR1 |= TIM1_CCMR_OCxFE;
5448  0b69 72145258      	bset	21080,#2
5450  0b6d 2004          	jra	L5122
5451  0b6f               L3122:
5452                     ; 1305     TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxFE);
5454  0b6f 72155258      	bres	21080,#2
5455  0b73               L5122:
5456                     ; 1307 }
5459  0b73 84            	pop	a
5460  0b74 81            	ret	
5496                     ; 1315 void TIM1_OC2FastConfig(FunctionalState NewState)
5496                     ; 1316 {
5497                     	switch	.text
5498  0b75               _TIM1_OC2FastConfig:
5500  0b75 88            	push	a
5501       00000000      OFST:	set	0
5504                     ; 1318   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5506  0b76 4d            	tnz	a
5507  0b77 2711          	jreq	L4431
5508  0b79 4a            	dec	a
5509  0b7a 270e          	jreq	L4431
5510  0b7c ae0526        	ldw	x,#1318
5511  0b7f 89            	pushw	x
5512  0b80 5f            	clrw	x
5513  0b81 89            	pushw	x
5514  0b82 ae0000        	ldw	x,#L37
5515  0b85 cd0000        	call	_assert_failed
5517  0b88 5b04          	addw	sp,#4
5518  0b8a               L4431:
5519                     ; 1321   if (NewState != DISABLE)
5521  0b8a 7b01          	ld	a,(OFST+1,sp)
5522  0b8c 2706          	jreq	L5322
5523                     ; 1323     TIM1->CCMR2 |= TIM1_CCMR_OCxFE;
5525  0b8e 72145259      	bset	21081,#2
5527  0b92 2004          	jra	L7322
5528  0b94               L5322:
5529                     ; 1327     TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxFE);
5531  0b94 72155259      	bres	21081,#2
5532  0b98               L7322:
5533                     ; 1329 }
5536  0b98 84            	pop	a
5537  0b99 81            	ret	
5573                     ; 1337 void TIM1_OC3FastConfig(FunctionalState NewState)
5573                     ; 1338 {
5574                     	switch	.text
5575  0b9a               _TIM1_OC3FastConfig:
5577  0b9a 88            	push	a
5578       00000000      OFST:	set	0
5581                     ; 1340   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5583  0b9b 4d            	tnz	a
5584  0b9c 2711          	jreq	L6531
5585  0b9e 4a            	dec	a
5586  0b9f 270e          	jreq	L6531
5587  0ba1 ae053c        	ldw	x,#1340
5588  0ba4 89            	pushw	x
5589  0ba5 5f            	clrw	x
5590  0ba6 89            	pushw	x
5591  0ba7 ae0000        	ldw	x,#L37
5592  0baa cd0000        	call	_assert_failed
5594  0bad 5b04          	addw	sp,#4
5595  0baf               L6531:
5596                     ; 1343   if (NewState != DISABLE)
5598  0baf 7b01          	ld	a,(OFST+1,sp)
5599  0bb1 2706          	jreq	L7522
5600                     ; 1345     TIM1->CCMR3 |= TIM1_CCMR_OCxFE;
5602  0bb3 7214525a      	bset	21082,#2
5604  0bb7 2004          	jra	L1622
5605  0bb9               L7522:
5606                     ; 1349     TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxFE);
5608  0bb9 7215525a      	bres	21082,#2
5609  0bbd               L1622:
5610                     ; 1351 }
5613  0bbd 84            	pop	a
5614  0bbe 81            	ret	
5650                     ; 1359 void TIM1_OC4FastConfig(FunctionalState NewState)
5650                     ; 1360 {
5651                     	switch	.text
5652  0bbf               _TIM1_OC4FastConfig:
5654  0bbf 88            	push	a
5655       00000000      OFST:	set	0
5658                     ; 1362   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5660  0bc0 4d            	tnz	a
5661  0bc1 2711          	jreq	L0731
5662  0bc3 4a            	dec	a
5663  0bc4 270e          	jreq	L0731
5664  0bc6 ae0552        	ldw	x,#1362
5665  0bc9 89            	pushw	x
5666  0bca 5f            	clrw	x
5667  0bcb 89            	pushw	x
5668  0bcc ae0000        	ldw	x,#L37
5669  0bcf cd0000        	call	_assert_failed
5671  0bd2 5b04          	addw	sp,#4
5672  0bd4               L0731:
5673                     ; 1365   if (NewState != DISABLE)
5675  0bd4 7b01          	ld	a,(OFST+1,sp)
5676  0bd6 2706          	jreq	L1032
5677                     ; 1367     TIM1->CCMR4 |= TIM1_CCMR_OCxFE;
5679  0bd8 7214525b      	bset	21083,#2
5681  0bdc 2004          	jra	L3032
5682  0bde               L1032:
5683                     ; 1371     TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxFE);
5685  0bde 7215525b      	bres	21083,#2
5686  0be2               L3032:
5687                     ; 1373 }
5690  0be2 84            	pop	a
5691  0be3 81            	ret	
5797                     ; 1389 void TIM1_GenerateEvent(TIM1_EventSource_TypeDef TIM1_EventSource)
5797                     ; 1390 {
5798                     	switch	.text
5799  0be4               _TIM1_GenerateEvent:
5801  0be4 88            	push	a
5802       00000000      OFST:	set	0
5805                     ; 1392   assert_param(IS_TIM1_EVENT_SOURCE_OK(TIM1_EventSource));
5807  0be5 4d            	tnz	a
5808  0be6 260e          	jrne	L0041
5809  0be8 ae0570        	ldw	x,#1392
5810  0beb 89            	pushw	x
5811  0bec 5f            	clrw	x
5812  0bed 89            	pushw	x
5813  0bee ae0000        	ldw	x,#L37
5814  0bf1 cd0000        	call	_assert_failed
5816  0bf4 5b04          	addw	sp,#4
5817  0bf6               L0041:
5818                     ; 1395   TIM1->EGR = (uint8_t)TIM1_EventSource;
5820  0bf6 7b01          	ld	a,(OFST+1,sp)
5821  0bf8 c75257        	ld	21079,a
5822                     ; 1396 }
5825  0bfb 84            	pop	a
5826  0bfc 81            	ret	
5863                     ; 1406 void TIM1_OC1PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
5863                     ; 1407 {
5864                     	switch	.text
5865  0bfd               _TIM1_OC1PolarityConfig:
5867  0bfd 88            	push	a
5868       00000000      OFST:	set	0
5871                     ; 1409   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
5873  0bfe 4d            	tnz	a
5874  0bff 2712          	jreq	L2141
5875  0c01 a122          	cp	a,#34
5876  0c03 270e          	jreq	L2141
5877  0c05 ae0581        	ldw	x,#1409
5878  0c08 89            	pushw	x
5879  0c09 5f            	clrw	x
5880  0c0a 89            	pushw	x
5881  0c0b ae0000        	ldw	x,#L37
5882  0c0e cd0000        	call	_assert_failed
5884  0c11 5b04          	addw	sp,#4
5885  0c13               L2141:
5886                     ; 1412   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
5888  0c13 7b01          	ld	a,(OFST+1,sp)
5889  0c15 2706          	jreq	L5632
5890                     ; 1414     TIM1->CCER1 |= TIM1_CCER1_CC1P;
5892  0c17 7212525c      	bset	21084,#1
5894  0c1b 2004          	jra	L7632
5895  0c1d               L5632:
5896                     ; 1418     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
5898  0c1d 7213525c      	bres	21084,#1
5899  0c21               L7632:
5900                     ; 1420 }
5903  0c21 84            	pop	a
5904  0c22 81            	ret	
5941                     ; 1430 void TIM1_OC1NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
5941                     ; 1431 {
5942                     	switch	.text
5943  0c23               _TIM1_OC1NPolarityConfig:
5945  0c23 88            	push	a
5946       00000000      OFST:	set	0
5949                     ; 1433   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
5951  0c24 4d            	tnz	a
5952  0c25 2712          	jreq	L4241
5953  0c27 a188          	cp	a,#136
5954  0c29 270e          	jreq	L4241
5955  0c2b ae0599        	ldw	x,#1433
5956  0c2e 89            	pushw	x
5957  0c2f 5f            	clrw	x
5958  0c30 89            	pushw	x
5959  0c31 ae0000        	ldw	x,#L37
5960  0c34 cd0000        	call	_assert_failed
5962  0c37 5b04          	addw	sp,#4
5963  0c39               L4241:
5964                     ; 1436   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
5966  0c39 7b01          	ld	a,(OFST+1,sp)
5967  0c3b 2706          	jreq	L7042
5968                     ; 1438     TIM1->CCER1 |= TIM1_CCER1_CC1NP;
5970  0c3d 7216525c      	bset	21084,#3
5972  0c41 2004          	jra	L1142
5973  0c43               L7042:
5974                     ; 1442     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NP);
5976  0c43 7217525c      	bres	21084,#3
5977  0c47               L1142:
5978                     ; 1444 }
5981  0c47 84            	pop	a
5982  0c48 81            	ret	
6019                     ; 1454 void TIM1_OC2PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6019                     ; 1455 {
6020                     	switch	.text
6021  0c49               _TIM1_OC2PolarityConfig:
6023  0c49 88            	push	a
6024       00000000      OFST:	set	0
6027                     ; 1457   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6029  0c4a 4d            	tnz	a
6030  0c4b 2712          	jreq	L6341
6031  0c4d a122          	cp	a,#34
6032  0c4f 270e          	jreq	L6341
6033  0c51 ae05b1        	ldw	x,#1457
6034  0c54 89            	pushw	x
6035  0c55 5f            	clrw	x
6036  0c56 89            	pushw	x
6037  0c57 ae0000        	ldw	x,#L37
6038  0c5a cd0000        	call	_assert_failed
6040  0c5d 5b04          	addw	sp,#4
6041  0c5f               L6341:
6042                     ; 1460   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6044  0c5f 7b01          	ld	a,(OFST+1,sp)
6045  0c61 2706          	jreq	L1342
6046                     ; 1462     TIM1->CCER1 |= TIM1_CCER1_CC2P;
6048  0c63 721a525c      	bset	21084,#5
6050  0c67 2004          	jra	L3342
6051  0c69               L1342:
6052                     ; 1466     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
6054  0c69 721b525c      	bres	21084,#5
6055  0c6d               L3342:
6056                     ; 1468 }
6059  0c6d 84            	pop	a
6060  0c6e 81            	ret	
6097                     ; 1478 void TIM1_OC2NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
6097                     ; 1479 {
6098                     	switch	.text
6099  0c6f               _TIM1_OC2NPolarityConfig:
6101  0c6f 88            	push	a
6102       00000000      OFST:	set	0
6105                     ; 1481   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
6107  0c70 4d            	tnz	a
6108  0c71 2712          	jreq	L0541
6109  0c73 a188          	cp	a,#136
6110  0c75 270e          	jreq	L0541
6111  0c77 ae05c9        	ldw	x,#1481
6112  0c7a 89            	pushw	x
6113  0c7b 5f            	clrw	x
6114  0c7c 89            	pushw	x
6115  0c7d ae0000        	ldw	x,#L37
6116  0c80 cd0000        	call	_assert_failed
6118  0c83 5b04          	addw	sp,#4
6119  0c85               L0541:
6120                     ; 1484   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
6122  0c85 7b01          	ld	a,(OFST+1,sp)
6123  0c87 2706          	jreq	L3542
6124                     ; 1486     TIM1->CCER1 |= TIM1_CCER1_CC2NP;
6126  0c89 721e525c      	bset	21084,#7
6128  0c8d 2004          	jra	L5542
6129  0c8f               L3542:
6130                     ; 1490     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NP);
6132  0c8f 721f525c      	bres	21084,#7
6133  0c93               L5542:
6134                     ; 1492 }
6137  0c93 84            	pop	a
6138  0c94 81            	ret	
6175                     ; 1502 void TIM1_OC3PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6175                     ; 1503 {
6176                     	switch	.text
6177  0c95               _TIM1_OC3PolarityConfig:
6179  0c95 88            	push	a
6180       00000000      OFST:	set	0
6183                     ; 1505   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6185  0c96 4d            	tnz	a
6186  0c97 2712          	jreq	L2641
6187  0c99 a122          	cp	a,#34
6188  0c9b 270e          	jreq	L2641
6189  0c9d ae05e1        	ldw	x,#1505
6190  0ca0 89            	pushw	x
6191  0ca1 5f            	clrw	x
6192  0ca2 89            	pushw	x
6193  0ca3 ae0000        	ldw	x,#L37
6194  0ca6 cd0000        	call	_assert_failed
6196  0ca9 5b04          	addw	sp,#4
6197  0cab               L2641:
6198                     ; 1508   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6200  0cab 7b01          	ld	a,(OFST+1,sp)
6201  0cad 2706          	jreq	L5742
6202                     ; 1510     TIM1->CCER2 |= TIM1_CCER2_CC3P;
6204  0caf 7212525d      	bset	21085,#1
6206  0cb3 2004          	jra	L7742
6207  0cb5               L5742:
6208                     ; 1514     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
6210  0cb5 7213525d      	bres	21085,#1
6211  0cb9               L7742:
6212                     ; 1516 }
6215  0cb9 84            	pop	a
6216  0cba 81            	ret	
6253                     ; 1527 void TIM1_OC3NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
6253                     ; 1528 {
6254                     	switch	.text
6255  0cbb               _TIM1_OC3NPolarityConfig:
6257  0cbb 88            	push	a
6258       00000000      OFST:	set	0
6261                     ; 1530   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
6263  0cbc 4d            	tnz	a
6264  0cbd 2712          	jreq	L4741
6265  0cbf a188          	cp	a,#136
6266  0cc1 270e          	jreq	L4741
6267  0cc3 ae05fa        	ldw	x,#1530
6268  0cc6 89            	pushw	x
6269  0cc7 5f            	clrw	x
6270  0cc8 89            	pushw	x
6271  0cc9 ae0000        	ldw	x,#L37
6272  0ccc cd0000        	call	_assert_failed
6274  0ccf 5b04          	addw	sp,#4
6275  0cd1               L4741:
6276                     ; 1533   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
6278  0cd1 7b01          	ld	a,(OFST+1,sp)
6279  0cd3 2706          	jreq	L7152
6280                     ; 1535     TIM1->CCER2 |= TIM1_CCER2_CC3NP;
6282  0cd5 7216525d      	bset	21085,#3
6284  0cd9 2004          	jra	L1252
6285  0cdb               L7152:
6286                     ; 1539     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NP);
6288  0cdb 7217525d      	bres	21085,#3
6289  0cdf               L1252:
6290                     ; 1541 }
6293  0cdf 84            	pop	a
6294  0ce0 81            	ret	
6331                     ; 1551 void TIM1_OC4PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6331                     ; 1552 {
6332                     	switch	.text
6333  0ce1               _TIM1_OC4PolarityConfig:
6335  0ce1 88            	push	a
6336       00000000      OFST:	set	0
6339                     ; 1554   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6341  0ce2 4d            	tnz	a
6342  0ce3 2712          	jreq	L6051
6343  0ce5 a122          	cp	a,#34
6344  0ce7 270e          	jreq	L6051
6345  0ce9 ae0612        	ldw	x,#1554
6346  0cec 89            	pushw	x
6347  0ced 5f            	clrw	x
6348  0cee 89            	pushw	x
6349  0cef ae0000        	ldw	x,#L37
6350  0cf2 cd0000        	call	_assert_failed
6352  0cf5 5b04          	addw	sp,#4
6353  0cf7               L6051:
6354                     ; 1557   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6356  0cf7 7b01          	ld	a,(OFST+1,sp)
6357  0cf9 2706          	jreq	L1452
6358                     ; 1559     TIM1->CCER2 |= TIM1_CCER2_CC4P;
6360  0cfb 721a525d      	bset	21085,#5
6362  0cff 2004          	jra	L3452
6363  0d01               L1452:
6364                     ; 1563     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
6366  0d01 721b525d      	bres	21085,#5
6367  0d05               L3452:
6368                     ; 1565 }
6371  0d05 84            	pop	a
6372  0d06 81            	ret	
6418                     ; 1579 void TIM1_CCxCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
6418                     ; 1580 {
6419                     	switch	.text
6420  0d07               _TIM1_CCxCmd:
6422  0d07 89            	pushw	x
6423       00000000      OFST:	set	0
6426                     ; 1582   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
6428  0d08 9e            	ld	a,xh
6429  0d09 4d            	tnz	a
6430  0d0a 2713          	jreq	L0251
6431  0d0c 9e            	ld	a,xh
6432  0d0d 4a            	dec	a
6433  0d0e 270f          	jreq	L0251
6434  0d10 9e            	ld	a,xh
6435  0d11 a102          	cp	a,#2
6436  0d13 270a          	jreq	L0251
6437  0d15 9e            	ld	a,xh
6438  0d16 a103          	cp	a,#3
6439  0d18 2705          	jreq	L0251
6440  0d1a ae062e        	ldw	x,#1582
6441  0d1d ad58          	call	LC013
6442  0d1f               L0251:
6443                     ; 1583   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6445  0d1f 7b02          	ld	a,(OFST+2,sp)
6446  0d21 2708          	jreq	L0351
6447  0d23 4a            	dec	a
6448  0d24 2705          	jreq	L0351
6449  0d26 ae062f        	ldw	x,#1583
6450  0d29 ad4c          	call	LC013
6451  0d2b               L0351:
6452                     ; 1585   if (TIM1_Channel == TIM1_CHANNEL_1)
6454  0d2b 7b01          	ld	a,(OFST+1,sp)
6455  0d2d 2610          	jrne	L7652
6456                     ; 1588     if (NewState != DISABLE)
6458  0d2f 7b02          	ld	a,(OFST+2,sp)
6459  0d31 2706          	jreq	L1752
6460                     ; 1590       TIM1->CCER1 |= TIM1_CCER1_CC1E;
6462  0d33 7210525c      	bset	21084,#0
6464  0d37 203c          	jra	L5752
6465  0d39               L1752:
6466                     ; 1594       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
6468  0d39 7211525c      	bres	21084,#0
6469  0d3d 2036          	jra	L5752
6470  0d3f               L7652:
6471                     ; 1598   else if (TIM1_Channel == TIM1_CHANNEL_2)
6473  0d3f a101          	cp	a,#1
6474  0d41 2610          	jrne	L7752
6475                     ; 1601     if (NewState != DISABLE)
6477  0d43 7b02          	ld	a,(OFST+2,sp)
6478  0d45 2706          	jreq	L1062
6479                     ; 1603       TIM1->CCER1 |= TIM1_CCER1_CC2E;
6481  0d47 7218525c      	bset	21084,#4
6483  0d4b 2028          	jra	L5752
6484  0d4d               L1062:
6485                     ; 1607       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
6487  0d4d 7219525c      	bres	21084,#4
6488  0d51 2022          	jra	L5752
6489  0d53               L7752:
6490                     ; 1610   else if (TIM1_Channel == TIM1_CHANNEL_3)
6492  0d53 a102          	cp	a,#2
6493  0d55 2610          	jrne	L7062
6494                     ; 1613     if (NewState != DISABLE)
6496  0d57 7b02          	ld	a,(OFST+2,sp)
6497  0d59 2706          	jreq	L1162
6498                     ; 1615       TIM1->CCER2 |= TIM1_CCER2_CC3E;
6500  0d5b 7210525d      	bset	21085,#0
6502  0d5f 2014          	jra	L5752
6503  0d61               L1162:
6504                     ; 1619       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
6506  0d61 7211525d      	bres	21085,#0
6507  0d65 200e          	jra	L5752
6508  0d67               L7062:
6509                     ; 1625     if (NewState != DISABLE)
6511  0d67 7b02          	ld	a,(OFST+2,sp)
6512  0d69 2706          	jreq	L7162
6513                     ; 1627       TIM1->CCER2 |= TIM1_CCER2_CC4E;
6515  0d6b 7218525d      	bset	21085,#4
6517  0d6f 2004          	jra	L5752
6518  0d71               L7162:
6519                     ; 1631       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
6521  0d71 7219525d      	bres	21085,#4
6522  0d75               L5752:
6523                     ; 1634 }
6526  0d75 85            	popw	x
6527  0d76 81            	ret	
6528  0d77               LC013:
6529  0d77 89            	pushw	x
6530  0d78 5f            	clrw	x
6531  0d79 89            	pushw	x
6532  0d7a ae0000        	ldw	x,#L37
6533  0d7d cd0000        	call	_assert_failed
6535  0d80 5b04          	addw	sp,#4
6536  0d82 81            	ret	
6582                     ; 1647 void TIM1_CCxNCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
6582                     ; 1648 {
6583                     	switch	.text
6584  0d83               _TIM1_CCxNCmd:
6586  0d83 89            	pushw	x
6587       00000000      OFST:	set	0
6590                     ; 1650   assert_param(IS_TIM1_COMPLEMENTARY_CHANNEL_OK(TIM1_Channel));
6592  0d84 9e            	ld	a,xh
6593  0d85 4d            	tnz	a
6594  0d86 270e          	jreq	L2451
6595  0d88 9e            	ld	a,xh
6596  0d89 4a            	dec	a
6597  0d8a 270a          	jreq	L2451
6598  0d8c 9e            	ld	a,xh
6599  0d8d a102          	cp	a,#2
6600  0d8f 2705          	jreq	L2451
6601  0d91 ae0672        	ldw	x,#1650
6602  0d94 ad43          	call	LC014
6603  0d96               L2451:
6604                     ; 1651   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6606  0d96 7b02          	ld	a,(OFST+2,sp)
6607  0d98 2708          	jreq	L2551
6608  0d9a 4a            	dec	a
6609  0d9b 2705          	jreq	L2551
6610  0d9d ae0673        	ldw	x,#1651
6611  0da0 ad37          	call	LC014
6612  0da2               L2551:
6613                     ; 1653   if (TIM1_Channel == TIM1_CHANNEL_1)
6615  0da2 7b01          	ld	a,(OFST+1,sp)
6616  0da4 2610          	jrne	L5462
6617                     ; 1656     if (NewState != DISABLE)
6619  0da6 7b02          	ld	a,(OFST+2,sp)
6620  0da8 2706          	jreq	L7462
6621                     ; 1658       TIM1->CCER1 |= TIM1_CCER1_CC1NE;
6623  0daa 7214525c      	bset	21084,#2
6625  0dae 2027          	jra	L3562
6626  0db0               L7462:
6627                     ; 1662       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NE);
6629  0db0 7215525c      	bres	21084,#2
6630  0db4 2021          	jra	L3562
6631  0db6               L5462:
6632                     ; 1665   else if (TIM1_Channel == TIM1_CHANNEL_2)
6634  0db6 4a            	dec	a
6635  0db7 2610          	jrne	L5562
6636                     ; 1668     if (NewState != DISABLE)
6638  0db9 7b02          	ld	a,(OFST+2,sp)
6639  0dbb 2706          	jreq	L7562
6640                     ; 1670       TIM1->CCER1 |= TIM1_CCER1_CC2NE;
6642  0dbd 721c525c      	bset	21084,#6
6644  0dc1 2014          	jra	L3562
6645  0dc3               L7562:
6646                     ; 1674       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NE);
6648  0dc3 721d525c      	bres	21084,#6
6649  0dc7 200e          	jra	L3562
6650  0dc9               L5562:
6651                     ; 1680     if (NewState != DISABLE)
6653  0dc9 7b02          	ld	a,(OFST+2,sp)
6654  0dcb 2706          	jreq	L5662
6655                     ; 1682       TIM1->CCER2 |= TIM1_CCER2_CC3NE;
6657  0dcd 7214525d      	bset	21085,#2
6659  0dd1 2004          	jra	L3562
6660  0dd3               L5662:
6661                     ; 1686       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NE);
6663  0dd3 7215525d      	bres	21085,#2
6664  0dd7               L3562:
6665                     ; 1689 }
6668  0dd7 85            	popw	x
6669  0dd8 81            	ret	
6670  0dd9               LC014:
6671  0dd9 89            	pushw	x
6672  0dda 5f            	clrw	x
6673  0ddb 89            	pushw	x
6674  0ddc ae0000        	ldw	x,#L37
6675  0ddf cd0000        	call	_assert_failed
6677  0de2 5b04          	addw	sp,#4
6678  0de4 81            	ret	
6724                     ; 1712 void TIM1_SelectOCxM(TIM1_Channel_TypeDef TIM1_Channel, TIM1_OCMode_TypeDef TIM1_OCMode)
6724                     ; 1713 {
6725                     	switch	.text
6726  0de5               _TIM1_SelectOCxM:
6728  0de5 89            	pushw	x
6729       00000000      OFST:	set	0
6732                     ; 1715   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
6734  0de6 9e            	ld	a,xh
6735  0de7 4d            	tnz	a
6736  0de8 2713          	jreq	L4651
6737  0dea 9e            	ld	a,xh
6738  0deb 4a            	dec	a
6739  0dec 270f          	jreq	L4651
6740  0dee 9e            	ld	a,xh
6741  0def a102          	cp	a,#2
6742  0df1 270a          	jreq	L4651
6743  0df3 9e            	ld	a,xh
6744  0df4 a103          	cp	a,#3
6745  0df6 2705          	jreq	L4651
6746  0df8 ae06b3        	ldw	x,#1715
6747  0dfb ad71          	call	LC015
6748  0dfd               L4651:
6749                     ; 1716   assert_param(IS_TIM1_OCM_OK(TIM1_OCMode));
6751  0dfd 7b02          	ld	a,(OFST+2,sp)
6752  0dff 2721          	jreq	L4751
6753  0e01 a110          	cp	a,#16
6754  0e03 271d          	jreq	L4751
6755  0e05 a120          	cp	a,#32
6756  0e07 2719          	jreq	L4751
6757  0e09 a130          	cp	a,#48
6758  0e0b 2715          	jreq	L4751
6759  0e0d a160          	cp	a,#96
6760  0e0f 2711          	jreq	L4751
6761  0e11 a170          	cp	a,#112
6762  0e13 270d          	jreq	L4751
6763  0e15 a150          	cp	a,#80
6764  0e17 2709          	jreq	L4751
6765  0e19 a140          	cp	a,#64
6766  0e1b 2705          	jreq	L4751
6767  0e1d ae06b4        	ldw	x,#1716
6768  0e20 ad4c          	call	LC015
6769  0e22               L4751:
6770                     ; 1718   if (TIM1_Channel == TIM1_CHANNEL_1)
6772  0e22 7b01          	ld	a,(OFST+1,sp)
6773  0e24 2610          	jrne	L3172
6774                     ; 1721     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
6776  0e26 7211525c      	bres	21084,#0
6777                     ; 1724     TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) 
6777                     ; 1725                             | (uint8_t)TIM1_OCMode);
6779  0e2a c65258        	ld	a,21080
6780  0e2d a48f          	and	a,#143
6781  0e2f 1a02          	or	a,(OFST+2,sp)
6782  0e31 c75258        	ld	21080,a
6784  0e34 2036          	jra	L5172
6785  0e36               L3172:
6786                     ; 1727   else if (TIM1_Channel == TIM1_CHANNEL_2)
6788  0e36 a101          	cp	a,#1
6789  0e38 2610          	jrne	L7172
6790                     ; 1730     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
6792  0e3a 7219525c      	bres	21084,#4
6793                     ; 1733     TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
6793                     ; 1734                             | (uint8_t)TIM1_OCMode);
6795  0e3e c65259        	ld	a,21081
6796  0e41 a48f          	and	a,#143
6797  0e43 1a02          	or	a,(OFST+2,sp)
6798  0e45 c75259        	ld	21081,a
6800  0e48 2022          	jra	L5172
6801  0e4a               L7172:
6802                     ; 1736   else if (TIM1_Channel == TIM1_CHANNEL_3)
6804  0e4a a102          	cp	a,#2
6805  0e4c 2610          	jrne	L3272
6806                     ; 1739     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
6808  0e4e 7211525d      	bres	21085,#0
6809                     ; 1742     TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) 
6809                     ; 1743                             | (uint8_t)TIM1_OCMode);
6811  0e52 c6525a        	ld	a,21082
6812  0e55 a48f          	and	a,#143
6813  0e57 1a02          	or	a,(OFST+2,sp)
6814  0e59 c7525a        	ld	21082,a
6816  0e5c 200e          	jra	L5172
6817  0e5e               L3272:
6818                     ; 1748     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
6820  0e5e 7219525d      	bres	21085,#4
6821                     ; 1751     TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
6821                     ; 1752                             | (uint8_t)TIM1_OCMode);
6823  0e62 c6525b        	ld	a,21083
6824  0e65 a48f          	and	a,#143
6825  0e67 1a02          	or	a,(OFST+2,sp)
6826  0e69 c7525b        	ld	21083,a
6827  0e6c               L5172:
6828                     ; 1754 }
6831  0e6c 85            	popw	x
6832  0e6d 81            	ret	
6833  0e6e               LC015:
6834  0e6e 89            	pushw	x
6835  0e6f 5f            	clrw	x
6836  0e70 89            	pushw	x
6837  0e71 ae0000        	ldw	x,#L37
6838  0e74 cd0000        	call	_assert_failed
6840  0e77 5b04          	addw	sp,#4
6841  0e79 81            	ret	
6873                     ; 1762 void TIM1_SetCounter(uint16_t Counter)
6873                     ; 1763 {
6874                     	switch	.text
6875  0e7a               _TIM1_SetCounter:
6879                     ; 1765   TIM1->CNTRH = (uint8_t)(Counter >> 8);
6881  0e7a 9e            	ld	a,xh
6882  0e7b c7525e        	ld	21086,a
6883                     ; 1766   TIM1->CNTRL = (uint8_t)(Counter);
6885  0e7e 9f            	ld	a,xl
6886  0e7f c7525f        	ld	21087,a
6887                     ; 1767 }
6890  0e82 81            	ret	
6922                     ; 1775 void TIM1_SetAutoreload(uint16_t Autoreload)
6922                     ; 1776 {
6923                     	switch	.text
6924  0e83               _TIM1_SetAutoreload:
6928                     ; 1778   TIM1->ARRH = (uint8_t)(Autoreload >> 8);
6930  0e83 9e            	ld	a,xh
6931  0e84 c75262        	ld	21090,a
6932                     ; 1779   TIM1->ARRL = (uint8_t)(Autoreload);
6934  0e87 9f            	ld	a,xl
6935  0e88 c75263        	ld	21091,a
6936                     ; 1780  }
6939  0e8b 81            	ret	
6971                     ; 1788 void TIM1_SetCompare1(uint16_t Compare1)
6971                     ; 1789 {
6972                     	switch	.text
6973  0e8c               _TIM1_SetCompare1:
6977                     ; 1791   TIM1->CCR1H = (uint8_t)(Compare1 >> 8);
6979  0e8c 9e            	ld	a,xh
6980  0e8d c75265        	ld	21093,a
6981                     ; 1792   TIM1->CCR1L = (uint8_t)(Compare1);
6983  0e90 9f            	ld	a,xl
6984  0e91 c75266        	ld	21094,a
6985                     ; 1793 }
6988  0e94 81            	ret	
7020                     ; 1801 void TIM1_SetCompare2(uint16_t Compare2)
7020                     ; 1802 {
7021                     	switch	.text
7022  0e95               _TIM1_SetCompare2:
7026                     ; 1804   TIM1->CCR2H = (uint8_t)(Compare2 >> 8);
7028  0e95 9e            	ld	a,xh
7029  0e96 c75267        	ld	21095,a
7030                     ; 1805   TIM1->CCR2L = (uint8_t)(Compare2);
7032  0e99 9f            	ld	a,xl
7033  0e9a c75268        	ld	21096,a
7034                     ; 1806 }
7037  0e9d 81            	ret	
7069                     ; 1814 void TIM1_SetCompare3(uint16_t Compare3)
7069                     ; 1815 {
7070                     	switch	.text
7071  0e9e               _TIM1_SetCompare3:
7075                     ; 1817   TIM1->CCR3H = (uint8_t)(Compare3 >> 8);
7077  0e9e 9e            	ld	a,xh
7078  0e9f c75269        	ld	21097,a
7079                     ; 1818   TIM1->CCR3L = (uint8_t)(Compare3);
7081  0ea2 9f            	ld	a,xl
7082  0ea3 c7526a        	ld	21098,a
7083                     ; 1819 }
7086  0ea6 81            	ret	
7118                     ; 1827 void TIM1_SetCompare4(uint16_t Compare4)
7118                     ; 1828 {
7119                     	switch	.text
7120  0ea7               _TIM1_SetCompare4:
7124                     ; 1830   TIM1->CCR4H = (uint8_t)(Compare4 >> 8);
7126  0ea7 9e            	ld	a,xh
7127  0ea8 c7526b        	ld	21099,a
7128                     ; 1831   TIM1->CCR4L = (uint8_t)(Compare4);
7130  0eab 9f            	ld	a,xl
7131  0eac c7526c        	ld	21100,a
7132                     ; 1832 }
7135  0eaf 81            	ret	
7172                     ; 1844 void TIM1_SetIC1Prescaler(TIM1_ICPSC_TypeDef TIM1_IC1Prescaler)
7172                     ; 1845 {
7173                     	switch	.text
7174  0eb0               _TIM1_SetIC1Prescaler:
7176  0eb0 88            	push	a
7177       00000000      OFST:	set	0
7180                     ; 1847   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC1Prescaler));
7182  0eb1 4d            	tnz	a
7183  0eb2 271a          	jreq	L2261
7184  0eb4 a104          	cp	a,#4
7185  0eb6 2716          	jreq	L2261
7186  0eb8 a108          	cp	a,#8
7187  0eba 2712          	jreq	L2261
7188  0ebc a10c          	cp	a,#12
7189  0ebe 270e          	jreq	L2261
7190  0ec0 ae0737        	ldw	x,#1847
7191  0ec3 89            	pushw	x
7192  0ec4 5f            	clrw	x
7193  0ec5 89            	pushw	x
7194  0ec6 ae0000        	ldw	x,#L37
7195  0ec9 cd0000        	call	_assert_failed
7197  0ecc 5b04          	addw	sp,#4
7198  0ece               L2261:
7199                     ; 1850   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_ICxPSC)) 
7199                     ; 1851                           | (uint8_t)TIM1_IC1Prescaler);
7201  0ece c65258        	ld	a,21080
7202  0ed1 a4f3          	and	a,#243
7203  0ed3 1a01          	or	a,(OFST+1,sp)
7204  0ed5 c75258        	ld	21080,a
7205                     ; 1852 }
7208  0ed8 84            	pop	a
7209  0ed9 81            	ret	
7246                     ; 1864 void TIM1_SetIC2Prescaler(TIM1_ICPSC_TypeDef TIM1_IC2Prescaler)
7246                     ; 1865 {
7247                     	switch	.text
7248  0eda               _TIM1_SetIC2Prescaler:
7250  0eda 88            	push	a
7251       00000000      OFST:	set	0
7254                     ; 1868   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC2Prescaler));
7256  0edb 4d            	tnz	a
7257  0edc 271a          	jreq	L4361
7258  0ede a104          	cp	a,#4
7259  0ee0 2716          	jreq	L4361
7260  0ee2 a108          	cp	a,#8
7261  0ee4 2712          	jreq	L4361
7262  0ee6 a10c          	cp	a,#12
7263  0ee8 270e          	jreq	L4361
7264  0eea ae074c        	ldw	x,#1868
7265  0eed 89            	pushw	x
7266  0eee 5f            	clrw	x
7267  0eef 89            	pushw	x
7268  0ef0 ae0000        	ldw	x,#L37
7269  0ef3 cd0000        	call	_assert_failed
7271  0ef6 5b04          	addw	sp,#4
7272  0ef8               L4361:
7273                     ; 1871   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_ICxPSC))
7273                     ; 1872                           | (uint8_t)TIM1_IC2Prescaler);
7275  0ef8 c65259        	ld	a,21081
7276  0efb a4f3          	and	a,#243
7277  0efd 1a01          	or	a,(OFST+1,sp)
7278  0eff c75259        	ld	21081,a
7279                     ; 1873 }
7282  0f02 84            	pop	a
7283  0f03 81            	ret	
7320                     ; 1885 void TIM1_SetIC3Prescaler(TIM1_ICPSC_TypeDef TIM1_IC3Prescaler)
7320                     ; 1886 {
7321                     	switch	.text
7322  0f04               _TIM1_SetIC3Prescaler:
7324  0f04 88            	push	a
7325       00000000      OFST:	set	0
7328                     ; 1889   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC3Prescaler));
7330  0f05 4d            	tnz	a
7331  0f06 271a          	jreq	L6461
7332  0f08 a104          	cp	a,#4
7333  0f0a 2716          	jreq	L6461
7334  0f0c a108          	cp	a,#8
7335  0f0e 2712          	jreq	L6461
7336  0f10 a10c          	cp	a,#12
7337  0f12 270e          	jreq	L6461
7338  0f14 ae0761        	ldw	x,#1889
7339  0f17 89            	pushw	x
7340  0f18 5f            	clrw	x
7341  0f19 89            	pushw	x
7342  0f1a ae0000        	ldw	x,#L37
7343  0f1d cd0000        	call	_assert_failed
7345  0f20 5b04          	addw	sp,#4
7346  0f22               L6461:
7347                     ; 1892   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_ICxPSC)) | 
7347                     ; 1893                           (uint8_t)TIM1_IC3Prescaler);
7349  0f22 c6525a        	ld	a,21082
7350  0f25 a4f3          	and	a,#243
7351  0f27 1a01          	or	a,(OFST+1,sp)
7352  0f29 c7525a        	ld	21082,a
7353                     ; 1894 }
7356  0f2c 84            	pop	a
7357  0f2d 81            	ret	
7394                     ; 1906 void TIM1_SetIC4Prescaler(TIM1_ICPSC_TypeDef TIM1_IC4Prescaler)
7394                     ; 1907 {
7395                     	switch	.text
7396  0f2e               _TIM1_SetIC4Prescaler:
7398  0f2e 88            	push	a
7399       00000000      OFST:	set	0
7402                     ; 1910   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC4Prescaler));
7404  0f2f 4d            	tnz	a
7405  0f30 271a          	jreq	L0661
7406  0f32 a104          	cp	a,#4
7407  0f34 2716          	jreq	L0661
7408  0f36 a108          	cp	a,#8
7409  0f38 2712          	jreq	L0661
7410  0f3a a10c          	cp	a,#12
7411  0f3c 270e          	jreq	L0661
7412  0f3e ae0776        	ldw	x,#1910
7413  0f41 89            	pushw	x
7414  0f42 5f            	clrw	x
7415  0f43 89            	pushw	x
7416  0f44 ae0000        	ldw	x,#L37
7417  0f47 cd0000        	call	_assert_failed
7419  0f4a 5b04          	addw	sp,#4
7420  0f4c               L0661:
7421                     ; 1913   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_ICxPSC)) |
7421                     ; 1914                           (uint8_t)TIM1_IC4Prescaler);
7423  0f4c c6525b        	ld	a,21083
7424  0f4f a4f3          	and	a,#243
7425  0f51 1a01          	or	a,(OFST+1,sp)
7426  0f53 c7525b        	ld	21083,a
7427                     ; 1915 }
7430  0f56 84            	pop	a
7431  0f57 81            	ret	
7477                     ; 1922 uint16_t TIM1_GetCapture1(void)
7477                     ; 1923 {
7478                     	switch	.text
7479  0f58               _TIM1_GetCapture1:
7481  0f58 5204          	subw	sp,#4
7482       00000004      OFST:	set	4
7485                     ; 1926   uint16_t tmpccr1 = 0;
7487                     ; 1927   uint8_t tmpccr1l=0, tmpccr1h=0;
7491                     ; 1929   tmpccr1h = TIM1->CCR1H;
7493  0f5a c65265        	ld	a,21093
7494  0f5d 6b02          	ld	(OFST-2,sp),a
7496                     ; 1930   tmpccr1l = TIM1->CCR1L;
7498  0f5f c65266        	ld	a,21094
7499  0f62 6b01          	ld	(OFST-3,sp),a
7501                     ; 1932   tmpccr1 = (uint16_t)(tmpccr1l);
7503  0f64 5f            	clrw	x
7504  0f65 97            	ld	xl,a
7505  0f66 1f03          	ldw	(OFST-1,sp),x
7507                     ; 1933   tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
7509  0f68 5f            	clrw	x
7510  0f69 7b02          	ld	a,(OFST-2,sp)
7511  0f6b 97            	ld	xl,a
7512  0f6c 7b04          	ld	a,(OFST+0,sp)
7513  0f6e 01            	rrwa	x,a
7514  0f6f 1a03          	or	a,(OFST-1,sp)
7515  0f71 01            	rrwa	x,a
7517                     ; 1935   return (uint16_t)tmpccr1;
7521  0f72 5b04          	addw	sp,#4
7522  0f74 81            	ret	
7568                     ; 1943 uint16_t TIM1_GetCapture2(void)
7568                     ; 1944 {
7569                     	switch	.text
7570  0f75               _TIM1_GetCapture2:
7572  0f75 5204          	subw	sp,#4
7573       00000004      OFST:	set	4
7576                     ; 1947   uint16_t tmpccr2 = 0;
7578                     ; 1948   uint8_t tmpccr2l=0, tmpccr2h=0;
7582                     ; 1950   tmpccr2h = TIM1->CCR2H;
7584  0f77 c65267        	ld	a,21095
7585  0f7a 6b02          	ld	(OFST-2,sp),a
7587                     ; 1951   tmpccr2l = TIM1->CCR2L;
7589  0f7c c65268        	ld	a,21096
7590  0f7f 6b01          	ld	(OFST-3,sp),a
7592                     ; 1953   tmpccr2 = (uint16_t)(tmpccr2l);
7594  0f81 5f            	clrw	x
7595  0f82 97            	ld	xl,a
7596  0f83 1f03          	ldw	(OFST-1,sp),x
7598                     ; 1954   tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
7600  0f85 5f            	clrw	x
7601  0f86 7b02          	ld	a,(OFST-2,sp)
7602  0f88 97            	ld	xl,a
7603  0f89 7b04          	ld	a,(OFST+0,sp)
7604  0f8b 01            	rrwa	x,a
7605  0f8c 1a03          	or	a,(OFST-1,sp)
7606  0f8e 01            	rrwa	x,a
7608                     ; 1956   return (uint16_t)tmpccr2;
7612  0f8f 5b04          	addw	sp,#4
7613  0f91 81            	ret	
7659                     ; 1964 uint16_t TIM1_GetCapture3(void)
7659                     ; 1965 {
7660                     	switch	.text
7661  0f92               _TIM1_GetCapture3:
7663  0f92 5204          	subw	sp,#4
7664       00000004      OFST:	set	4
7667                     ; 1967   uint16_t tmpccr3 = 0;
7669                     ; 1968   uint8_t tmpccr3l=0, tmpccr3h=0;
7673                     ; 1970   tmpccr3h = TIM1->CCR3H;
7675  0f94 c65269        	ld	a,21097
7676  0f97 6b02          	ld	(OFST-2,sp),a
7678                     ; 1971   tmpccr3l = TIM1->CCR3L;
7680  0f99 c6526a        	ld	a,21098
7681  0f9c 6b01          	ld	(OFST-3,sp),a
7683                     ; 1973   tmpccr3 = (uint16_t)(tmpccr3l);
7685  0f9e 5f            	clrw	x
7686  0f9f 97            	ld	xl,a
7687  0fa0 1f03          	ldw	(OFST-1,sp),x
7689                     ; 1974   tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
7691  0fa2 5f            	clrw	x
7692  0fa3 7b02          	ld	a,(OFST-2,sp)
7693  0fa5 97            	ld	xl,a
7694  0fa6 7b04          	ld	a,(OFST+0,sp)
7695  0fa8 01            	rrwa	x,a
7696  0fa9 1a03          	or	a,(OFST-1,sp)
7697  0fab 01            	rrwa	x,a
7699                     ; 1976   return (uint16_t)tmpccr3;
7703  0fac 5b04          	addw	sp,#4
7704  0fae 81            	ret	
7750                     ; 1984 uint16_t TIM1_GetCapture4(void)
7750                     ; 1985 {
7751                     	switch	.text
7752  0faf               _TIM1_GetCapture4:
7754  0faf 5204          	subw	sp,#4
7755       00000004      OFST:	set	4
7758                     ; 1987   uint16_t tmpccr4 = 0;
7760                     ; 1988   uint8_t tmpccr4l=0, tmpccr4h=0;
7764                     ; 1990   tmpccr4h = TIM1->CCR4H;
7766  0fb1 c6526b        	ld	a,21099
7767  0fb4 6b02          	ld	(OFST-2,sp),a
7769                     ; 1991   tmpccr4l = TIM1->CCR4L;
7771  0fb6 c6526c        	ld	a,21100
7772  0fb9 6b01          	ld	(OFST-3,sp),a
7774                     ; 1993   tmpccr4 = (uint16_t)(tmpccr4l);
7776  0fbb 5f            	clrw	x
7777  0fbc 97            	ld	xl,a
7778  0fbd 1f03          	ldw	(OFST-1,sp),x
7780                     ; 1994   tmpccr4 |= (uint16_t)((uint16_t)tmpccr4h << 8);
7782  0fbf 5f            	clrw	x
7783  0fc0 7b02          	ld	a,(OFST-2,sp)
7784  0fc2 97            	ld	xl,a
7785  0fc3 7b04          	ld	a,(OFST+0,sp)
7786  0fc5 01            	rrwa	x,a
7787  0fc6 1a03          	or	a,(OFST-1,sp)
7788  0fc8 01            	rrwa	x,a
7790                     ; 1996   return (uint16_t)tmpccr4;
7794  0fc9 5b04          	addw	sp,#4
7795  0fcb 81            	ret	
7827                     ; 2004 uint16_t TIM1_GetCounter(void)
7827                     ; 2005 {
7828                     	switch	.text
7829  0fcc               _TIM1_GetCounter:
7831  0fcc 89            	pushw	x
7832       00000002      OFST:	set	2
7835                     ; 2006   uint16_t tmpcntr = 0;
7837                     ; 2008   tmpcntr = ((uint16_t)TIM1->CNTRH << 8);
7839  0fcd c6525e        	ld	a,21086
7840  0fd0 97            	ld	xl,a
7841  0fd1 4f            	clr	a
7842  0fd2 02            	rlwa	x,a
7843  0fd3 1f01          	ldw	(OFST-1,sp),x
7845                     ; 2011   return (uint16_t)(tmpcntr | (uint16_t)(TIM1->CNTRL));
7847  0fd5 c6525f        	ld	a,21087
7848  0fd8 5f            	clrw	x
7849  0fd9 97            	ld	xl,a
7850  0fda 01            	rrwa	x,a
7851  0fdb 1a02          	or	a,(OFST+0,sp)
7852  0fdd 01            	rrwa	x,a
7853  0fde 1a01          	or	a,(OFST-1,sp)
7854  0fe0 01            	rrwa	x,a
7857  0fe1 5b02          	addw	sp,#2
7858  0fe3 81            	ret	
7890                     ; 2019 uint16_t TIM1_GetPrescaler(void)
7890                     ; 2020 {
7891                     	switch	.text
7892  0fe4               _TIM1_GetPrescaler:
7894  0fe4 89            	pushw	x
7895       00000002      OFST:	set	2
7898                     ; 2021   uint16_t temp = 0;
7900                     ; 2023   temp = ((uint16_t)TIM1->PSCRH << 8);
7902  0fe5 c65260        	ld	a,21088
7903  0fe8 97            	ld	xl,a
7904  0fe9 4f            	clr	a
7905  0fea 02            	rlwa	x,a
7906  0feb 1f01          	ldw	(OFST-1,sp),x
7908                     ; 2026   return (uint16_t)( temp | (uint16_t)(TIM1->PSCRL));
7910  0fed c65261        	ld	a,21089
7911  0ff0 5f            	clrw	x
7912  0ff1 97            	ld	xl,a
7913  0ff2 01            	rrwa	x,a
7914  0ff3 1a02          	or	a,(OFST+0,sp)
7915  0ff5 01            	rrwa	x,a
7916  0ff6 1a01          	or	a,(OFST-1,sp)
7917  0ff8 01            	rrwa	x,a
7920  0ff9 5b02          	addw	sp,#2
7921  0ffb 81            	ret	
8092                     ; 2047 FlagStatus TIM1_GetFlagStatus(TIM1_FLAG_TypeDef TIM1_FLAG)
8092                     ; 2048 {
8093                     	switch	.text
8094  0ffc               _TIM1_GetFlagStatus:
8096  0ffc 89            	pushw	x
8097  0ffd 89            	pushw	x
8098       00000002      OFST:	set	2
8101                     ; 2049   FlagStatus bitstatus = RESET;
8103                     ; 2050   uint8_t tim1_flag_l = 0, tim1_flag_h = 0;
8107                     ; 2053   assert_param(IS_TIM1_GET_FLAG_OK(TIM1_FLAG));
8109  0ffe a30001        	cpw	x,#1
8110  1001 2745          	jreq	L6071
8111  1003 a30002        	cpw	x,#2
8112  1006 2740          	jreq	L6071
8113  1008 a30004        	cpw	x,#4
8114  100b 273b          	jreq	L6071
8115  100d a30008        	cpw	x,#8
8116  1010 2736          	jreq	L6071
8117  1012 a30010        	cpw	x,#16
8118  1015 2731          	jreq	L6071
8119  1017 a30020        	cpw	x,#32
8120  101a 272c          	jreq	L6071
8121  101c a30040        	cpw	x,#64
8122  101f 2727          	jreq	L6071
8123  1021 a30080        	cpw	x,#128
8124  1024 2722          	jreq	L6071
8125  1026 a30200        	cpw	x,#512
8126  1029 271d          	jreq	L6071
8127  102b a30400        	cpw	x,#1024
8128  102e 2718          	jreq	L6071
8129  1030 a30800        	cpw	x,#2048
8130  1033 2713          	jreq	L6071
8131  1035 a31000        	cpw	x,#4096
8132  1038 270e          	jreq	L6071
8133  103a ae0805        	ldw	x,#2053
8134  103d 89            	pushw	x
8135  103e 5f            	clrw	x
8136  103f 89            	pushw	x
8137  1040 ae0000        	ldw	x,#L37
8138  1043 cd0000        	call	_assert_failed
8140  1046 5b04          	addw	sp,#4
8141  1048               L6071:
8142                     ; 2055   tim1_flag_l = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_FLAG);
8144  1048 c65255        	ld	a,21077
8145  104b 1404          	and	a,(OFST+2,sp)
8146  104d 6b01          	ld	(OFST-1,sp),a
8148                     ; 2056   tim1_flag_h = (uint8_t)((uint16_t)TIM1_FLAG >> 8);
8150  104f 7b03          	ld	a,(OFST+1,sp)
8151  1051 6b02          	ld	(OFST+0,sp),a
8153                     ; 2058   if ((tim1_flag_l | (uint8_t)(TIM1->SR2 & tim1_flag_h)) != 0)
8155  1053 c45256        	and	a,21078
8156  1056 1a01          	or	a,(OFST-1,sp)
8157  1058 2702          	jreq	L1533
8158                     ; 2060     bitstatus = SET;
8160  105a a601          	ld	a,#1
8163  105c               L1533:
8164                     ; 2064     bitstatus = RESET;
8167                     ; 2066   return (FlagStatus)(bitstatus);
8171  105c 5b04          	addw	sp,#4
8172  105e 81            	ret	
8208                     ; 2087 void TIM1_ClearFlag(TIM1_FLAG_TypeDef TIM1_FLAG)
8208                     ; 2088 {
8209                     	switch	.text
8210  105f               _TIM1_ClearFlag:
8212  105f 89            	pushw	x
8213       00000000      OFST:	set	0
8216                     ; 2090   assert_param(IS_TIM1_CLEAR_FLAG_OK(TIM1_FLAG));
8218  1060 01            	rrwa	x,a
8219  1061 9f            	ld	a,xl
8220  1062 a4e1          	and	a,#225
8221  1064 97            	ld	xl,a
8222  1065 4f            	clr	a
8223  1066 02            	rlwa	x,a
8224  1067 5d            	tnzw	x
8225  1068 2604          	jrne	L4171
8226  106a 1e01          	ldw	x,(OFST+1,sp)
8227  106c 260e          	jrne	L6171
8228  106e               L4171:
8229  106e ae082a        	ldw	x,#2090
8230  1071 89            	pushw	x
8231  1072 5f            	clrw	x
8232  1073 89            	pushw	x
8233  1074 ae0000        	ldw	x,#L37
8234  1077 cd0000        	call	_assert_failed
8236  107a 5b04          	addw	sp,#4
8237  107c               L6171:
8238                     ; 2093   TIM1->SR1 = (uint8_t)(~(uint8_t)(TIM1_FLAG));
8240  107c 7b02          	ld	a,(OFST+2,sp)
8241  107e 43            	cpl	a
8242  107f c75255        	ld	21077,a
8243                     ; 2094   TIM1->SR2 = (uint8_t)((uint8_t)(~((uint8_t)((uint16_t)TIM1_FLAG >> 8))) & 
8243                     ; 2095                         (uint8_t)0x1E);
8245  1082 7b01          	ld	a,(OFST+1,sp)
8246  1084 43            	cpl	a
8247  1085 a41e          	and	a,#30
8248  1087 c75256        	ld	21078,a
8249                     ; 2096 }
8252  108a 85            	popw	x
8253  108b 81            	ret	
8314                     ; 2112 ITStatus TIM1_GetITStatus(TIM1_IT_TypeDef TIM1_IT)
8314                     ; 2113 {
8315                     	switch	.text
8316  108c               _TIM1_GetITStatus:
8318  108c 88            	push	a
8319  108d 89            	pushw	x
8320       00000002      OFST:	set	2
8323                     ; 2114   ITStatus bitstatus = RESET;
8325                     ; 2115   uint8_t TIM1_itStatus = 0, TIM1_itEnable = 0;
8329                     ; 2118   assert_param(IS_TIM1_GET_IT_OK(TIM1_IT));
8331  108e a101          	cp	a,#1
8332  1090 272a          	jreq	L0371
8333  1092 a102          	cp	a,#2
8334  1094 2726          	jreq	L0371
8335  1096 a104          	cp	a,#4
8336  1098 2722          	jreq	L0371
8337  109a a108          	cp	a,#8
8338  109c 271e          	jreq	L0371
8339  109e a110          	cp	a,#16
8340  10a0 271a          	jreq	L0371
8341  10a2 a120          	cp	a,#32
8342  10a4 2716          	jreq	L0371
8343  10a6 a140          	cp	a,#64
8344  10a8 2712          	jreq	L0371
8345  10aa a180          	cp	a,#128
8346  10ac 270e          	jreq	L0371
8347  10ae ae0846        	ldw	x,#2118
8348  10b1 89            	pushw	x
8349  10b2 5f            	clrw	x
8350  10b3 89            	pushw	x
8351  10b4 ae0000        	ldw	x,#L37
8352  10b7 cd0000        	call	_assert_failed
8354  10ba 5b04          	addw	sp,#4
8355  10bc               L0371:
8356                     ; 2120   TIM1_itStatus = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_IT);
8358  10bc c65255        	ld	a,21077
8359  10bf 1403          	and	a,(OFST+1,sp)
8360  10c1 6b01          	ld	(OFST-1,sp),a
8362                     ; 2122   TIM1_itEnable = (uint8_t)(TIM1->IER & (uint8_t)TIM1_IT);
8364  10c3 c65254        	ld	a,21076
8365  10c6 1403          	and	a,(OFST+1,sp)
8366  10c8 6b02          	ld	(OFST+0,sp),a
8368                     ; 2124   if ((TIM1_itStatus != (uint8_t)RESET ) && (TIM1_itEnable != (uint8_t)RESET ))
8370  10ca 7b01          	ld	a,(OFST-1,sp)
8371  10cc 2708          	jreq	L1243
8373  10ce 7b02          	ld	a,(OFST+0,sp)
8374  10d0 2704          	jreq	L1243
8375                     ; 2126     bitstatus = SET;
8377  10d2 a601          	ld	a,#1
8380  10d4 2001          	jra	L3243
8381  10d6               L1243:
8382                     ; 2130     bitstatus = RESET;
8384  10d6 4f            	clr	a
8386  10d7               L3243:
8387                     ; 2132   return (ITStatus)(bitstatus);
8391  10d7 5b03          	addw	sp,#3
8392  10d9 81            	ret	
8429                     ; 2149 void TIM1_ClearITPendingBit(TIM1_IT_TypeDef TIM1_IT)
8429                     ; 2150 {
8430                     	switch	.text
8431  10da               _TIM1_ClearITPendingBit:
8433  10da 88            	push	a
8434       00000000      OFST:	set	0
8437                     ; 2152   assert_param(IS_TIM1_IT_OK(TIM1_IT));
8439  10db 4d            	tnz	a
8440  10dc 260e          	jrne	L0471
8441  10de ae0868        	ldw	x,#2152
8442  10e1 89            	pushw	x
8443  10e2 5f            	clrw	x
8444  10e3 89            	pushw	x
8445  10e4 ae0000        	ldw	x,#L37
8446  10e7 cd0000        	call	_assert_failed
8448  10ea 5b04          	addw	sp,#4
8449  10ec               L0471:
8450                     ; 2155   TIM1->SR1 = (uint8_t)(~(uint8_t)TIM1_IT);
8452  10ec 7b01          	ld	a,(OFST+1,sp)
8453  10ee 43            	cpl	a
8454  10ef c75255        	ld	21077,a
8455                     ; 2156 }
8458  10f2 84            	pop	a
8459  10f3 81            	ret	
8505                     ; 2174 static void TI1_Config(uint8_t TIM1_ICPolarity,
8505                     ; 2175                        uint8_t TIM1_ICSelection,
8505                     ; 2176                        uint8_t TIM1_ICFilter)
8505                     ; 2177 {
8506                     	switch	.text
8507  10f4               L3_TI1_Config:
8509  10f4 89            	pushw	x
8510  10f5 88            	push	a
8511       00000001      OFST:	set	1
8514                     ; 2179   TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
8516  10f6 7211525c      	bres	21084,#0
8517                     ; 2182   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) | 
8517                     ; 2183                           (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
8519  10fa 7b06          	ld	a,(OFST+5,sp)
8520  10fc 97            	ld	xl,a
8521  10fd a610          	ld	a,#16
8522  10ff 42            	mul	x,a
8523  1100 9f            	ld	a,xl
8524  1101 1a03          	or	a,(OFST+2,sp)
8525  1103 6b01          	ld	(OFST+0,sp),a
8527  1105 c65258        	ld	a,21080
8528  1108 a40c          	and	a,#12
8529  110a 1a01          	or	a,(OFST+0,sp)
8530  110c c75258        	ld	21080,a
8531                     ; 2186   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
8533  110f 7b02          	ld	a,(OFST+1,sp)
8534  1111 2706          	jreq	L3643
8535                     ; 2188     TIM1->CCER1 |= TIM1_CCER1_CC1P;
8537  1113 7212525c      	bset	21084,#1
8539  1117 2004          	jra	L5643
8540  1119               L3643:
8541                     ; 2192     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
8543  1119 7213525c      	bres	21084,#1
8544  111d               L5643:
8545                     ; 2196   TIM1->CCER1 |=  TIM1_CCER1_CC1E;
8547  111d 7210525c      	bset	21084,#0
8548                     ; 2197 }
8551  1121 5b03          	addw	sp,#3
8552  1123 81            	ret	
8598                     ; 2215 static void TI2_Config(uint8_t TIM1_ICPolarity,
8598                     ; 2216                        uint8_t TIM1_ICSelection,
8598                     ; 2217                        uint8_t TIM1_ICFilter)
8598                     ; 2218 {
8599                     	switch	.text
8600  1124               L5_TI2_Config:
8602  1124 89            	pushw	x
8603  1125 88            	push	a
8604       00000001      OFST:	set	1
8607                     ; 2220   TIM1->CCER1 &=  (uint8_t)(~TIM1_CCER1_CC2E);
8609  1126 7219525c      	bres	21084,#4
8610                     ; 2223   TIM1->CCMR2  = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) 
8610                     ; 2224                            | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
8612  112a 7b06          	ld	a,(OFST+5,sp)
8613  112c 97            	ld	xl,a
8614  112d a610          	ld	a,#16
8615  112f 42            	mul	x,a
8616  1130 9f            	ld	a,xl
8617  1131 1a03          	or	a,(OFST+2,sp)
8618  1133 6b01          	ld	(OFST+0,sp),a
8620  1135 c65259        	ld	a,21081
8621  1138 a40c          	and	a,#12
8622  113a 1a01          	or	a,(OFST+0,sp)
8623  113c c75259        	ld	21081,a
8624                     ; 2226   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
8626  113f 7b02          	ld	a,(OFST+1,sp)
8627  1141 2706          	jreq	L7053
8628                     ; 2228     TIM1->CCER1 |= TIM1_CCER1_CC2P;
8630  1143 721a525c      	bset	21084,#5
8632  1147 2004          	jra	L1153
8633  1149               L7053:
8634                     ; 2232     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
8636  1149 721b525c      	bres	21084,#5
8637  114d               L1153:
8638                     ; 2235   TIM1->CCER1 |=  TIM1_CCER1_CC2E;
8640  114d 7218525c      	bset	21084,#4
8641                     ; 2236 }
8644  1151 5b03          	addw	sp,#3
8645  1153 81            	ret	
8691                     ; 2254 static void TI3_Config(uint8_t TIM1_ICPolarity,
8691                     ; 2255                        uint8_t TIM1_ICSelection,
8691                     ; 2256                        uint8_t TIM1_ICFilter)
8691                     ; 2257 {
8692                     	switch	.text
8693  1154               L7_TI3_Config:
8695  1154 89            	pushw	x
8696  1155 88            	push	a
8697       00000001      OFST:	set	1
8700                     ; 2259   TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC3E);
8702  1156 7211525d      	bres	21085,#0
8703                     ; 2262   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF))) 
8703                     ; 2263                           | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
8705  115a 7b06          	ld	a,(OFST+5,sp)
8706  115c 97            	ld	xl,a
8707  115d a610          	ld	a,#16
8708  115f 42            	mul	x,a
8709  1160 9f            	ld	a,xl
8710  1161 1a03          	or	a,(OFST+2,sp)
8711  1163 6b01          	ld	(OFST+0,sp),a
8713  1165 c6525a        	ld	a,21082
8714  1168 a40c          	and	a,#12
8715  116a 1a01          	or	a,(OFST+0,sp)
8716  116c c7525a        	ld	21082,a
8717                     ; 2266   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
8719  116f 7b02          	ld	a,(OFST+1,sp)
8720  1171 2706          	jreq	L3353
8721                     ; 2268     TIM1->CCER2 |= TIM1_CCER2_CC3P;
8723  1173 7212525d      	bset	21085,#1
8725  1177 2004          	jra	L5353
8726  1179               L3353:
8727                     ; 2272     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
8729  1179 7213525d      	bres	21085,#1
8730  117d               L5353:
8731                     ; 2275   TIM1->CCER2 |=  TIM1_CCER2_CC3E;
8733  117d 7210525d      	bset	21085,#0
8734                     ; 2276 }
8737  1181 5b03          	addw	sp,#3
8738  1183 81            	ret	
8784                     ; 2294 static void TI4_Config(uint8_t TIM1_ICPolarity,
8784                     ; 2295                        uint8_t TIM1_ICSelection,
8784                     ; 2296                        uint8_t TIM1_ICFilter)
8784                     ; 2297 {
8785                     	switch	.text
8786  1184               L11_TI4_Config:
8788  1184 89            	pushw	x
8789  1185 88            	push	a
8790       00000001      OFST:	set	1
8793                     ; 2299   TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC4E);
8795  1186 7219525d      	bres	21085,#4
8796                     ; 2302   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF )))
8796                     ; 2303                           | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
8798  118a 7b06          	ld	a,(OFST+5,sp)
8799  118c 97            	ld	xl,a
8800  118d a610          	ld	a,#16
8801  118f 42            	mul	x,a
8802  1190 9f            	ld	a,xl
8803  1191 1a03          	or	a,(OFST+2,sp)
8804  1193 6b01          	ld	(OFST+0,sp),a
8806  1195 c6525b        	ld	a,21083
8807  1198 a40c          	and	a,#12
8808  119a 1a01          	or	a,(OFST+0,sp)
8809  119c c7525b        	ld	21083,a
8810                     ; 2306   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
8812  119f 7b02          	ld	a,(OFST+1,sp)
8813  11a1 2706          	jreq	L7553
8814                     ; 2308     TIM1->CCER2 |= TIM1_CCER2_CC4P;
8816  11a3 721a525d      	bset	21085,#5
8818  11a7 2004          	jra	L1653
8819  11a9               L7553:
8820                     ; 2312     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
8822  11a9 721b525d      	bres	21085,#5
8823  11ad               L1653:
8824                     ; 2316   TIM1->CCER2 |=  TIM1_CCER2_CC4E;
8826  11ad 7218525d      	bset	21085,#4
8827                     ; 2317 }
8830  11b1 5b03          	addw	sp,#3
8831  11b3 81            	ret	
8844                     	xdef	_TIM1_ClearITPendingBit
8845                     	xdef	_TIM1_GetITStatus
8846                     	xdef	_TIM1_ClearFlag
8847                     	xdef	_TIM1_GetFlagStatus
8848                     	xdef	_TIM1_GetPrescaler
8849                     	xdef	_TIM1_GetCounter
8850                     	xdef	_TIM1_GetCapture4
8851                     	xdef	_TIM1_GetCapture3
8852                     	xdef	_TIM1_GetCapture2
8853                     	xdef	_TIM1_GetCapture1
8854                     	xdef	_TIM1_SetIC4Prescaler
8855                     	xdef	_TIM1_SetIC3Prescaler
8856                     	xdef	_TIM1_SetIC2Prescaler
8857                     	xdef	_TIM1_SetIC1Prescaler
8858                     	xdef	_TIM1_SetCompare4
8859                     	xdef	_TIM1_SetCompare3
8860                     	xdef	_TIM1_SetCompare2
8861                     	xdef	_TIM1_SetCompare1
8862                     	xdef	_TIM1_SetAutoreload
8863                     	xdef	_TIM1_SetCounter
8864                     	xdef	_TIM1_SelectOCxM
8865                     	xdef	_TIM1_CCxNCmd
8866                     	xdef	_TIM1_CCxCmd
8867                     	xdef	_TIM1_OC4PolarityConfig
8868                     	xdef	_TIM1_OC3NPolarityConfig
8869                     	xdef	_TIM1_OC3PolarityConfig
8870                     	xdef	_TIM1_OC2NPolarityConfig
8871                     	xdef	_TIM1_OC2PolarityConfig
8872                     	xdef	_TIM1_OC1NPolarityConfig
8873                     	xdef	_TIM1_OC1PolarityConfig
8874                     	xdef	_TIM1_GenerateEvent
8875                     	xdef	_TIM1_OC4FastConfig
8876                     	xdef	_TIM1_OC3FastConfig
8877                     	xdef	_TIM1_OC2FastConfig
8878                     	xdef	_TIM1_OC1FastConfig
8879                     	xdef	_TIM1_OC4PreloadConfig
8880                     	xdef	_TIM1_OC3PreloadConfig
8881                     	xdef	_TIM1_OC2PreloadConfig
8882                     	xdef	_TIM1_OC1PreloadConfig
8883                     	xdef	_TIM1_CCPreloadControl
8884                     	xdef	_TIM1_SelectCOM
8885                     	xdef	_TIM1_ARRPreloadConfig
8886                     	xdef	_TIM1_ForcedOC4Config
8887                     	xdef	_TIM1_ForcedOC3Config
8888                     	xdef	_TIM1_ForcedOC2Config
8889                     	xdef	_TIM1_ForcedOC1Config
8890                     	xdef	_TIM1_CounterModeConfig
8891                     	xdef	_TIM1_PrescalerConfig
8892                     	xdef	_TIM1_EncoderInterfaceConfig
8893                     	xdef	_TIM1_SelectMasterSlaveMode
8894                     	xdef	_TIM1_SelectSlaveMode
8895                     	xdef	_TIM1_SelectOutputTrigger
8896                     	xdef	_TIM1_SelectOnePulseMode
8897                     	xdef	_TIM1_SelectHallSensor
8898                     	xdef	_TIM1_UpdateRequestConfig
8899                     	xdef	_TIM1_UpdateDisableConfig
8900                     	xdef	_TIM1_SelectInputTrigger
8901                     	xdef	_TIM1_TIxExternalClockConfig
8902                     	xdef	_TIM1_ETRConfig
8903                     	xdef	_TIM1_ETRClockMode2Config
8904                     	xdef	_TIM1_ETRClockMode1Config
8905                     	xdef	_TIM1_InternalClockConfig
8906                     	xdef	_TIM1_ITConfig
8907                     	xdef	_TIM1_CtrlPWMOutputs
8908                     	xdef	_TIM1_Cmd
8909                     	xdef	_TIM1_PWMIConfig
8910                     	xdef	_TIM1_ICInit
8911                     	xdef	_TIM1_BDTRConfig
8912                     	xdef	_TIM1_OC4Init
8913                     	xdef	_TIM1_OC3Init
8914                     	xdef	_TIM1_OC2Init
8915                     	xdef	_TIM1_OC1Init
8916                     	xdef	_TIM1_TimeBaseInit
8917                     	xdef	_TIM1_DeInit
8918                     	xref	_assert_failed
8919                     .const:	section	.text
8920  0000               L37:
8921  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
8922  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
8923  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
8924  0036 5f74696d312e  	dc.b	"_tim1.c",0
8944                     	end
