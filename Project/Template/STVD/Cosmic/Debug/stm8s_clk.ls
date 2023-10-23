   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.8.1 - 09 Jan 2023
   3                     ; Generator (Limited) V4.5.5 - 08 Nov 2022
   4                     ; Optimizer V4.5.5 - 08 Nov 2022
  20                     .const:	section	.text
  21  0000               _HSIDivFactor:
  22  0000 01            	dc.b	1
  23  0001 02            	dc.b	2
  24  0002 04            	dc.b	4
  25  0003 08            	dc.b	8
  26  0004               _CLKPrescTable:
  27  0004 01            	dc.b	1
  28  0005 02            	dc.b	2
  29  0006 04            	dc.b	4
  30  0007 08            	dc.b	8
  31  0008 0a            	dc.b	10
  32  0009 10            	dc.b	16
  33  000a 14            	dc.b	20
  34  000b 28            	dc.b	40
  63                     ; 66 void CLK_DeInit(void)
  63                     ; 67 {
  65                     	switch	.text
  66  0000               _CLK_DeInit:
  70                     ; 69     CLK->ICKR = CLK_ICKR_RESET_VALUE;
  72  0000 350150c0      	mov	20672,#1
  73                     ; 70     CLK->ECKR = CLK_ECKR_RESET_VALUE;
  75  0004 725f50c1      	clr	20673
  76                     ; 71     CLK->SWR  = CLK_SWR_RESET_VALUE;
  78  0008 35e150c4      	mov	20676,#225
  79                     ; 72     CLK->SWCR = CLK_SWCR_RESET_VALUE;
  81  000c 725f50c5      	clr	20677
  82                     ; 73     CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
  84  0010 351850c6      	mov	20678,#24
  85                     ; 74     CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
  87  0014 35ff50c7      	mov	20679,#255
  88                     ; 75     CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
  90  0018 35ff50ca      	mov	20682,#255
  91                     ; 76     CLK->CSSR = CLK_CSSR_RESET_VALUE;
  93  001c 725f50c8      	clr	20680
  94                     ; 77     CLK->CCOR = CLK_CCOR_RESET_VALUE;
  96  0020 725f50c9      	clr	20681
  98  0024               L52:
  99                     ; 78     while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
 101  0024 720050c9fb    	btjt	20681,#0,L52
 102                     ; 80     CLK->CCOR = CLK_CCOR_RESET_VALUE;
 104  0029 725f50c9      	clr	20681
 105                     ; 81     CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
 107  002d 725f50cc      	clr	20684
 108                     ; 82     CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
 110  0031 725f50cd      	clr	20685
 111                     ; 84 }
 114  0035 81            	ret	
 171                     ; 95 void CLK_FastHaltWakeUpCmd(FunctionalState NewState)
 171                     ; 96 {
 172                     	switch	.text
 173  0036               _CLK_FastHaltWakeUpCmd:
 175  0036 88            	push	a
 176       00000000      OFST:	set	0
 179                     ; 99     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 181  0037 4d            	tnz	a
 182  0038 2711          	jreq	L41
 183  003a 4a            	dec	a
 184  003b 270e          	jreq	L41
 185  003d ae0063        	ldw	x,#99
 186  0040 89            	pushw	x
 187  0041 5f            	clrw	x
 188  0042 89            	pushw	x
 189  0043 ae000c        	ldw	x,#L75
 190  0046 cd0000        	call	_assert_failed
 192  0049 5b04          	addw	sp,#4
 193  004b               L41:
 194                     ; 101     if (NewState != DISABLE)
 196  004b 7b01          	ld	a,(OFST+1,sp)
 197  004d 2706          	jreq	L16
 198                     ; 104         CLK->ICKR |= CLK_ICKR_FHWU;
 200  004f 721450c0      	bset	20672,#2
 202  0053 2004          	jra	L36
 203  0055               L16:
 204                     ; 109         CLK->ICKR &= (uint8_t)(~CLK_ICKR_FHWU);
 206  0055 721550c0      	bres	20672,#2
 207  0059               L36:
 208                     ; 112 }
 211  0059 84            	pop	a
 212  005a 81            	ret	
 248                     ; 119 void CLK_HSECmd(FunctionalState NewState)
 248                     ; 120 {
 249                     	switch	.text
 250  005b               _CLK_HSECmd:
 252  005b 88            	push	a
 253       00000000      OFST:	set	0
 256                     ; 123     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 258  005c 4d            	tnz	a
 259  005d 2711          	jreq	L62
 260  005f 4a            	dec	a
 261  0060 270e          	jreq	L62
 262  0062 ae007b        	ldw	x,#123
 263  0065 89            	pushw	x
 264  0066 5f            	clrw	x
 265  0067 89            	pushw	x
 266  0068 ae000c        	ldw	x,#L75
 267  006b cd0000        	call	_assert_failed
 269  006e 5b04          	addw	sp,#4
 270  0070               L62:
 271                     ; 125     if (NewState != DISABLE)
 273  0070 7b01          	ld	a,(OFST+1,sp)
 274  0072 2706          	jreq	L301
 275                     ; 128         CLK->ECKR |= CLK_ECKR_HSEEN;
 277  0074 721050c1      	bset	20673,#0
 279  0078 2004          	jra	L501
 280  007a               L301:
 281                     ; 133         CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
 283  007a 721150c1      	bres	20673,#0
 284  007e               L501:
 285                     ; 136 }
 288  007e 84            	pop	a
 289  007f 81            	ret	
 325                     ; 143 void CLK_HSICmd(FunctionalState NewState)
 325                     ; 144 {
 326                     	switch	.text
 327  0080               _CLK_HSICmd:
 329  0080 88            	push	a
 330       00000000      OFST:	set	0
 333                     ; 147     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 335  0081 4d            	tnz	a
 336  0082 2711          	jreq	L04
 337  0084 4a            	dec	a
 338  0085 270e          	jreq	L04
 339  0087 ae0093        	ldw	x,#147
 340  008a 89            	pushw	x
 341  008b 5f            	clrw	x
 342  008c 89            	pushw	x
 343  008d ae000c        	ldw	x,#L75
 344  0090 cd0000        	call	_assert_failed
 346  0093 5b04          	addw	sp,#4
 347  0095               L04:
 348                     ; 149     if (NewState != DISABLE)
 350  0095 7b01          	ld	a,(OFST+1,sp)
 351  0097 2706          	jreq	L521
 352                     ; 152         CLK->ICKR |= CLK_ICKR_HSIEN;
 354  0099 721050c0      	bset	20672,#0
 356  009d 2004          	jra	L721
 357  009f               L521:
 358                     ; 157         CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
 360  009f 721150c0      	bres	20672,#0
 361  00a3               L721:
 362                     ; 160 }
 365  00a3 84            	pop	a
 366  00a4 81            	ret	
 402                     ; 167 void CLK_LSICmd(FunctionalState NewState)
 402                     ; 168 {
 403                     	switch	.text
 404  00a5               _CLK_LSICmd:
 406  00a5 88            	push	a
 407       00000000      OFST:	set	0
 410                     ; 171     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 412  00a6 4d            	tnz	a
 413  00a7 2711          	jreq	L25
 414  00a9 4a            	dec	a
 415  00aa 270e          	jreq	L25
 416  00ac ae00ab        	ldw	x,#171
 417  00af 89            	pushw	x
 418  00b0 5f            	clrw	x
 419  00b1 89            	pushw	x
 420  00b2 ae000c        	ldw	x,#L75
 421  00b5 cd0000        	call	_assert_failed
 423  00b8 5b04          	addw	sp,#4
 424  00ba               L25:
 425                     ; 173     if (NewState != DISABLE)
 427  00ba 7b01          	ld	a,(OFST+1,sp)
 428  00bc 2706          	jreq	L741
 429                     ; 176         CLK->ICKR |= CLK_ICKR_LSIEN;
 431  00be 721650c0      	bset	20672,#3
 433  00c2 2004          	jra	L151
 434  00c4               L741:
 435                     ; 181         CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
 437  00c4 721750c0      	bres	20672,#3
 438  00c8               L151:
 439                     ; 184 }
 442  00c8 84            	pop	a
 443  00c9 81            	ret	
 479                     ; 192 void CLK_CCOCmd(FunctionalState NewState)
 479                     ; 193 {
 480                     	switch	.text
 481  00ca               _CLK_CCOCmd:
 483  00ca 88            	push	a
 484       00000000      OFST:	set	0
 487                     ; 196     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 489  00cb 4d            	tnz	a
 490  00cc 2711          	jreq	L46
 491  00ce 4a            	dec	a
 492  00cf 270e          	jreq	L46
 493  00d1 ae00c4        	ldw	x,#196
 494  00d4 89            	pushw	x
 495  00d5 5f            	clrw	x
 496  00d6 89            	pushw	x
 497  00d7 ae000c        	ldw	x,#L75
 498  00da cd0000        	call	_assert_failed
 500  00dd 5b04          	addw	sp,#4
 501  00df               L46:
 502                     ; 198     if (NewState != DISABLE)
 504  00df 7b01          	ld	a,(OFST+1,sp)
 505  00e1 2706          	jreq	L171
 506                     ; 201         CLK->CCOR |= CLK_CCOR_CCOEN;
 508  00e3 721050c9      	bset	20681,#0
 510  00e7 2004          	jra	L371
 511  00e9               L171:
 512                     ; 206         CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOEN);
 514  00e9 721150c9      	bres	20681,#0
 515  00ed               L371:
 516                     ; 209 }
 519  00ed 84            	pop	a
 520  00ee 81            	ret	
 556                     ; 218 void CLK_ClockSwitchCmd(FunctionalState NewState)
 556                     ; 219 {
 557                     	switch	.text
 558  00ef               _CLK_ClockSwitchCmd:
 560  00ef 88            	push	a
 561       00000000      OFST:	set	0
 564                     ; 222     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 566  00f0 4d            	tnz	a
 567  00f1 2711          	jreq	L67
 568  00f3 4a            	dec	a
 569  00f4 270e          	jreq	L67
 570  00f6 ae00de        	ldw	x,#222
 571  00f9 89            	pushw	x
 572  00fa 5f            	clrw	x
 573  00fb 89            	pushw	x
 574  00fc ae000c        	ldw	x,#L75
 575  00ff cd0000        	call	_assert_failed
 577  0102 5b04          	addw	sp,#4
 578  0104               L67:
 579                     ; 224     if (NewState != DISABLE )
 581  0104 7b01          	ld	a,(OFST+1,sp)
 582  0106 2706          	jreq	L312
 583                     ; 227         CLK->SWCR |= CLK_SWCR_SWEN;
 585  0108 721250c5      	bset	20677,#1
 587  010c 2004          	jra	L512
 588  010e               L312:
 589                     ; 232         CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
 591  010e 721350c5      	bres	20677,#1
 592  0112               L512:
 593                     ; 235 }
 596  0112 84            	pop	a
 597  0113 81            	ret	
 634                     ; 245 void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
 634                     ; 246 {
 635                     	switch	.text
 636  0114               _CLK_SlowActiveHaltWakeUpCmd:
 638  0114 88            	push	a
 639       00000000      OFST:	set	0
 642                     ; 249     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 644  0115 4d            	tnz	a
 645  0116 2711          	jreq	L011
 646  0118 4a            	dec	a
 647  0119 270e          	jreq	L011
 648  011b ae00f9        	ldw	x,#249
 649  011e 89            	pushw	x
 650  011f 5f            	clrw	x
 651  0120 89            	pushw	x
 652  0121 ae000c        	ldw	x,#L75
 653  0124 cd0000        	call	_assert_failed
 655  0127 5b04          	addw	sp,#4
 656  0129               L011:
 657                     ; 251     if (NewState != DISABLE)
 659  0129 7b01          	ld	a,(OFST+1,sp)
 660  012b 2706          	jreq	L532
 661                     ; 254         CLK->ICKR |= CLK_ICKR_SWUAH;
 663  012d 721a50c0      	bset	20672,#5
 665  0131 2004          	jra	L732
 666  0133               L532:
 667                     ; 259         CLK->ICKR &= (uint8_t)(~CLK_ICKR_SWUAH);
 669  0133 721b50c0      	bres	20672,#5
 670  0137               L732:
 671                     ; 262 }
 674  0137 84            	pop	a
 675  0138 81            	ret	
 835                     ; 272 void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
 835                     ; 273 {
 836                     	switch	.text
 837  0139               _CLK_PeripheralClockConfig:
 839  0139 89            	pushw	x
 840       00000000      OFST:	set	0
 843                     ; 276     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 845  013a 9f            	ld	a,xl
 846  013b 4d            	tnz	a
 847  013c 270a          	jreq	L221
 848  013e 9f            	ld	a,xl
 849  013f 4a            	dec	a
 850  0140 2706          	jreq	L221
 851  0142 ae0114        	ldw	x,#276
 852  0145 cd01cb        	call	LC004
 853  0148               L221:
 854                     ; 277     assert_param(IS_CLK_PERIPHERAL_OK(CLK_Peripheral));
 856  0148 7b01          	ld	a,(OFST+1,sp)
 857  014a 272f          	jreq	L231
 858  014c a101          	cp	a,#1
 859  014e 272b          	jreq	L231
 860  0150 a103          	cp	a,#3
 861  0152 2727          	jreq	L231
 862  0154 a104          	cp	a,#4
 863  0156 2723          	jreq	L231
 864  0158 a105          	cp	a,#5
 865  015a 271f          	jreq	L231
 866  015c a104          	cp	a,#4
 867  015e 271b          	jreq	L231
 868  0160 a106          	cp	a,#6
 869  0162 2717          	jreq	L231
 870  0164 a107          	cp	a,#7
 871  0166 2713          	jreq	L231
 872  0168 a117          	cp	a,#23
 873  016a 270f          	jreq	L231
 874  016c a113          	cp	a,#19
 875  016e 270b          	jreq	L231
 876  0170 a112          	cp	a,#18
 877  0172 2707          	jreq	L231
 878  0174 ae0115        	ldw	x,#277
 879  0177 ad52          	call	LC004
 880  0179 7b01          	ld	a,(OFST+1,sp)
 881  017b               L231:
 882                     ; 279     if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
 884  017b a510          	bcp	a,#16
 885  017d 2622          	jrne	L323
 886                     ; 281         if (NewState != DISABLE)
 888  017f 0d02          	tnz	(OFST+2,sp)
 889  0181 270d          	jreq	L523
 890                     ; 284             CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
 892  0183 ad3e          	call	LC003
 893  0185 2704          	jreq	L631
 894  0187               L041:
 895  0187 48            	sll	a
 896  0188 5a            	decw	x
 897  0189 26fc          	jrne	L041
 898  018b               L631:
 899  018b ca50c7        	or	a,20679
 901  018e 200c          	jp	LC002
 902  0190               L523:
 903                     ; 289             CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
 905  0190 ad31          	call	LC003
 906  0192 2704          	jreq	L241
 907  0194               L441:
 908  0194 48            	sll	a
 909  0195 5a            	decw	x
 910  0196 26fc          	jrne	L441
 911  0198               L241:
 912  0198 43            	cpl	a
 913  0199 c450c7        	and	a,20679
 914  019c               LC002:
 915  019c c750c7        	ld	20679,a
 916  019f 2020          	jra	L133
 917  01a1               L323:
 918                     ; 294         if (NewState != DISABLE)
 920  01a1 0d02          	tnz	(OFST+2,sp)
 921  01a3 270d          	jreq	L333
 922                     ; 297             CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
 924  01a5 ad1c          	call	LC003
 925  01a7 2704          	jreq	L641
 926  01a9               L051:
 927  01a9 48            	sll	a
 928  01aa 5a            	decw	x
 929  01ab 26fc          	jrne	L051
 930  01ad               L641:
 931  01ad ca50ca        	or	a,20682
 933  01b0 200c          	jp	LC001
 934  01b2               L333:
 935                     ; 302             CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
 937  01b2 ad0f          	call	LC003
 938  01b4 2704          	jreq	L251
 939  01b6               L451:
 940  01b6 48            	sll	a
 941  01b7 5a            	decw	x
 942  01b8 26fc          	jrne	L451
 943  01ba               L251:
 944  01ba 43            	cpl	a
 945  01bb c450ca        	and	a,20682
 946  01be               LC001:
 947  01be c750ca        	ld	20682,a
 948  01c1               L133:
 949                     ; 306 }
 952  01c1 85            	popw	x
 953  01c2 81            	ret	
 954  01c3               LC003:
 955  01c3 a40f          	and	a,#15
 956  01c5 5f            	clrw	x
 957  01c6 97            	ld	xl,a
 958  01c7 a601          	ld	a,#1
 959  01c9 5d            	tnzw	x
 960  01ca 81            	ret	
 961  01cb               LC004:
 962  01cb 89            	pushw	x
 963  01cc 5f            	clrw	x
 964  01cd 89            	pushw	x
 965  01ce ae000c        	ldw	x,#L75
 966  01d1 cd0000        	call	_assert_failed
 968  01d4 5b04          	addw	sp,#4
 969  01d6 81            	ret	
1156                     ; 319 ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
1156                     ; 320 {
1157                     	switch	.text
1158  01d7               _CLK_ClockSwitchConfig:
1160  01d7 89            	pushw	x
1161  01d8 5204          	subw	sp,#4
1162       00000004      OFST:	set	4
1165                     ; 323     uint16_t DownCounter = CLK_TIMEOUT;
1167  01da ae0491        	ldw	x,#1169
1168  01dd 1f03          	ldw	(OFST-1,sp),x
1170                     ; 324     ErrorStatus Swif = ERROR;
1172                     ; 327     assert_param(IS_CLK_SOURCE_OK(CLK_NewClock));
1174  01df 7b06          	ld	a,(OFST+2,sp)
1175  01e1 a1e1          	cp	a,#225
1176  01e3 270e          	jreq	L461
1177  01e5 a1d2          	cp	a,#210
1178  01e7 270a          	jreq	L461
1179  01e9 a1b4          	cp	a,#180
1180  01eb 2706          	jreq	L461
1181  01ed ae0147        	ldw	x,#327
1182  01f0 cd029b        	call	LC006
1183  01f3               L461:
1184                     ; 328     assert_param(IS_CLK_SWITCHMODE_OK(CLK_SwitchMode));
1186  01f3 7b05          	ld	a,(OFST+1,sp)
1187  01f5 2709          	jreq	L471
1188  01f7 4a            	dec	a
1189  01f8 2706          	jreq	L471
1190  01fa ae0148        	ldw	x,#328
1191  01fd cd029b        	call	LC006
1192  0200               L471:
1193                     ; 329     assert_param(IS_FUNCTIONALSTATE_OK(ITState));
1195  0200 7b09          	ld	a,(OFST+5,sp)
1196  0202 2709          	jreq	L402
1197  0204 4a            	dec	a
1198  0205 2706          	jreq	L402
1199  0207 ae0149        	ldw	x,#329
1200  020a cd029b        	call	LC006
1201  020d               L402:
1202                     ; 330     assert_param(IS_CLK_CURRENTCLOCKSTATE_OK(CLK_CurrentClockState));
1204  020d 7b0a          	ld	a,(OFST+6,sp)
1205  020f 2709          	jreq	L412
1206  0211 4a            	dec	a
1207  0212 2706          	jreq	L412
1208  0214 ae014a        	ldw	x,#330
1209  0217 cd029b        	call	LC006
1210  021a               L412:
1211                     ; 333     clock_master = (CLK_Source_TypeDef)CLK->CMSR;
1213  021a c650c3        	ld	a,20675
1214  021d 6b01          	ld	(OFST-3,sp),a
1216                     ; 336     if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
1218  021f 7b05          	ld	a,(OFST+1,sp)
1219  0221 4a            	dec	a
1220  0222 262d          	jrne	L544
1221                     ; 340         CLK->SWCR |= CLK_SWCR_SWEN;
1223  0224 721250c5      	bset	20677,#1
1224                     ; 343         if (ITState != DISABLE)
1226  0228 7b09          	ld	a,(OFST+5,sp)
1227  022a 2706          	jreq	L744
1228                     ; 345             CLK->SWCR |= CLK_SWCR_SWIEN;
1230  022c 721450c5      	bset	20677,#2
1232  0230 2004          	jra	L154
1233  0232               L744:
1234                     ; 349             CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1236  0232 721550c5      	bres	20677,#2
1237  0236               L154:
1238                     ; 353         CLK->SWR = (uint8_t)CLK_NewClock;
1240  0236 7b06          	ld	a,(OFST+2,sp)
1241  0238 c750c4        	ld	20676,a
1243  023b 2003          	jra	L754
1244  023d               L354:
1245                     ; 357             DownCounter--;
1247  023d 5a            	decw	x
1248  023e 1f03          	ldw	(OFST-1,sp),x
1250  0240               L754:
1251                     ; 355         while ((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
1253  0240 720150c504    	btjf	20677,#0,L364
1255  0245 1e03          	ldw	x,(OFST-1,sp)
1256  0247 26f4          	jrne	L354
1257  0249               L364:
1258                     ; 360         if (DownCounter != 0)
1260  0249 1e03          	ldw	x,(OFST-1,sp)
1261                     ; 362             Swif = SUCCESS;
1263  024b 2617          	jrne	LC005
1264                     ; 366             Swif = ERROR;
1266  024d 0f02          	clr	(OFST-2,sp)
1268  024f 2017          	jra	L174
1269  0251               L544:
1270                     ; 374         if (ITState != DISABLE)
1272  0251 7b09          	ld	a,(OFST+5,sp)
1273  0253 2706          	jreq	L374
1274                     ; 376             CLK->SWCR |= CLK_SWCR_SWIEN;
1276  0255 721450c5      	bset	20677,#2
1278  0259 2004          	jra	L574
1279  025b               L374:
1280                     ; 380             CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1282  025b 721550c5      	bres	20677,#2
1283  025f               L574:
1284                     ; 384         CLK->SWR = (uint8_t)CLK_NewClock;
1286  025f 7b06          	ld	a,(OFST+2,sp)
1287  0261 c750c4        	ld	20676,a
1288                     ; 388         Swif = SUCCESS;
1290  0264               LC005:
1292  0264 a601          	ld	a,#1
1293  0266 6b02          	ld	(OFST-2,sp),a
1295  0268               L174:
1296                     ; 393     if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
1298  0268 7b0a          	ld	a,(OFST+6,sp)
1299  026a 260c          	jrne	L774
1301  026c 7b01          	ld	a,(OFST-3,sp)
1302  026e a1e1          	cp	a,#225
1303  0270 2606          	jrne	L774
1304                     ; 395         CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
1306  0272 721150c0      	bres	20672,#0
1308  0276 201e          	jra	L105
1309  0278               L774:
1310                     ; 397     else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
1312  0278 7b0a          	ld	a,(OFST+6,sp)
1313  027a 260c          	jrne	L305
1315  027c 7b01          	ld	a,(OFST-3,sp)
1316  027e a1d2          	cp	a,#210
1317  0280 2606          	jrne	L305
1318                     ; 399         CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
1320  0282 721750c0      	bres	20672,#3
1322  0286 200e          	jra	L105
1323  0288               L305:
1324                     ; 401     else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
1326  0288 7b0a          	ld	a,(OFST+6,sp)
1327  028a 260a          	jrne	L105
1329  028c 7b01          	ld	a,(OFST-3,sp)
1330  028e a1b4          	cp	a,#180
1331  0290 2604          	jrne	L105
1332                     ; 403         CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
1334  0292 721150c1      	bres	20673,#0
1335  0296               L105:
1336                     ; 406     return(Swif);
1338  0296 7b02          	ld	a,(OFST-2,sp)
1341  0298 5b06          	addw	sp,#6
1342  029a 81            	ret	
1343  029b               LC006:
1344  029b 89            	pushw	x
1345  029c 5f            	clrw	x
1346  029d 89            	pushw	x
1347  029e ae000c        	ldw	x,#L75
1348  02a1 cd0000        	call	_assert_failed
1350  02a4 5b04          	addw	sp,#4
1351  02a6 81            	ret	
1490                     ; 416 void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
1490                     ; 417 {
1491                     	switch	.text
1492  02a7               _CLK_HSIPrescalerConfig:
1494  02a7 88            	push	a
1495       00000000      OFST:	set	0
1498                     ; 420     assert_param(IS_CLK_HSIPRESCALER_OK(HSIPrescaler));
1500  02a8 4d            	tnz	a
1501  02a9 271a          	jreq	L622
1502  02ab a108          	cp	a,#8
1503  02ad 2716          	jreq	L622
1504  02af a110          	cp	a,#16
1505  02b1 2712          	jreq	L622
1506  02b3 a118          	cp	a,#24
1507  02b5 270e          	jreq	L622
1508  02b7 ae01a4        	ldw	x,#420
1509  02ba 89            	pushw	x
1510  02bb 5f            	clrw	x
1511  02bc 89            	pushw	x
1512  02bd ae000c        	ldw	x,#L75
1513  02c0 cd0000        	call	_assert_failed
1515  02c3 5b04          	addw	sp,#4
1516  02c5               L622:
1517                     ; 423     CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
1519  02c5 c650c6        	ld	a,20678
1520  02c8 a4e7          	and	a,#231
1521  02ca c750c6        	ld	20678,a
1522                     ; 426     CLK->CKDIVR |= (uint8_t)HSIPrescaler;
1524  02cd c650c6        	ld	a,20678
1525  02d0 1a01          	or	a,(OFST+1,sp)
1526  02d2 c750c6        	ld	20678,a
1527                     ; 428 }
1530  02d5 84            	pop	a
1531  02d6 81            	ret	
1667                     ; 439 void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
1667                     ; 440 {
1668                     	switch	.text
1669  02d7               _CLK_CCOConfig:
1671  02d7 88            	push	a
1672       00000000      OFST:	set	0
1675                     ; 443     assert_param(IS_CLK_OUTPUT_OK(CLK_CCO));
1677  02d8 4d            	tnz	a
1678  02d9 273e          	jreq	L042
1679  02db a104          	cp	a,#4
1680  02dd 273a          	jreq	L042
1681  02df a102          	cp	a,#2
1682  02e1 2736          	jreq	L042
1683  02e3 a108          	cp	a,#8
1684  02e5 2732          	jreq	L042
1685  02e7 a10a          	cp	a,#10
1686  02e9 272e          	jreq	L042
1687  02eb a10c          	cp	a,#12
1688  02ed 272a          	jreq	L042
1689  02ef a10e          	cp	a,#14
1690  02f1 2726          	jreq	L042
1691  02f3 a110          	cp	a,#16
1692  02f5 2722          	jreq	L042
1693  02f7 a112          	cp	a,#18
1694  02f9 271e          	jreq	L042
1695  02fb a114          	cp	a,#20
1696  02fd 271a          	jreq	L042
1697  02ff a116          	cp	a,#22
1698  0301 2716          	jreq	L042
1699  0303 a118          	cp	a,#24
1700  0305 2712          	jreq	L042
1701  0307 a11a          	cp	a,#26
1702  0309 270e          	jreq	L042
1703  030b ae01bb        	ldw	x,#443
1704  030e 89            	pushw	x
1705  030f 5f            	clrw	x
1706  0310 89            	pushw	x
1707  0311 ae000c        	ldw	x,#L75
1708  0314 cd0000        	call	_assert_failed
1710  0317 5b04          	addw	sp,#4
1711  0319               L042:
1712                     ; 446     CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
1714  0319 c650c9        	ld	a,20681
1715  031c a4e1          	and	a,#225
1716  031e c750c9        	ld	20681,a
1717                     ; 449     CLK->CCOR |= (uint8_t)CLK_CCO;
1719  0321 c650c9        	ld	a,20681
1720  0324 1a01          	or	a,(OFST+1,sp)
1721  0326 c750c9        	ld	20681,a
1722                     ; 452     CLK->CCOR |= CLK_CCOR_CCOEN;
1724  0329 721050c9      	bset	20681,#0
1725                     ; 454 }
1728  032d 84            	pop	a
1729  032e 81            	ret	
1795                     ; 464 void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
1795                     ; 465 {
1796                     	switch	.text
1797  032f               _CLK_ITConfig:
1799  032f 89            	pushw	x
1800       00000000      OFST:	set	0
1803                     ; 468     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1805  0330 9f            	ld	a,xl
1806  0331 4d            	tnz	a
1807  0332 2709          	jreq	L252
1808  0334 9f            	ld	a,xl
1809  0335 4a            	dec	a
1810  0336 2705          	jreq	L252
1811  0338 ae01d4        	ldw	x,#468
1812  033b ad3f          	call	LC007
1813  033d               L252:
1814                     ; 469     assert_param(IS_CLK_IT_OK(CLK_IT));
1816  033d 7b01          	ld	a,(OFST+1,sp)
1817  033f a10c          	cp	a,#12
1818  0341 2709          	jreq	L262
1819  0343 a11c          	cp	a,#28
1820  0345 2705          	jreq	L262
1821  0347 ae01d5        	ldw	x,#469
1822  034a ad30          	call	LC007
1823  034c               L262:
1824                     ; 471     if (NewState != DISABLE)
1826  034c 7b02          	ld	a,(OFST+2,sp)
1827  034e 2716          	jreq	L507
1828                     ; 473         switch (CLK_IT)
1830  0350 7b01          	ld	a,(OFST+1,sp)
1832                     ; 481         default:
1832                     ; 482             break;
1833  0352 a00c          	sub	a,#12
1834  0354 270a          	jreq	L146
1835  0356 a010          	sub	a,#16
1836  0358 2620          	jrne	L317
1837                     ; 475         case CLK_IT_SWIF: /* Enable the clock switch interrupt */
1837                     ; 476             CLK->SWCR |= CLK_SWCR_SWIEN;
1839  035a 721450c5      	bset	20677,#2
1840                     ; 477             break;
1842  035e 201a          	jra	L317
1843  0360               L146:
1844                     ; 478         case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
1844                     ; 479             CLK->CSSR |= CLK_CSSR_CSSDIE;
1846  0360 721450c8      	bset	20680,#2
1847                     ; 480             break;
1849  0364 2014          	jra	L317
1850                     ; 481         default:
1850                     ; 482             break;
1853  0366               L507:
1854                     ; 487         switch (CLK_IT)
1856  0366 7b01          	ld	a,(OFST+1,sp)
1858                     ; 495         default:
1858                     ; 496             break;
1859  0368 a00c          	sub	a,#12
1860  036a 270a          	jreq	L746
1861  036c a010          	sub	a,#16
1862  036e 260a          	jrne	L317
1863                     ; 489         case CLK_IT_SWIF: /* Disable the clock switch interrupt */
1863                     ; 490             CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
1865  0370 721550c5      	bres	20677,#2
1866                     ; 491             break;
1868  0374 2004          	jra	L317
1869  0376               L746:
1870                     ; 492         case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
1870                     ; 493             CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
1872  0376 721550c8      	bres	20680,#2
1873                     ; 494             break;
1874  037a               L317:
1875                     ; 500 }
1878  037a 85            	popw	x
1879  037b 81            	ret	
1880                     ; 495         default:
1880                     ; 496             break;
1882  037c               LC007:
1883  037c 89            	pushw	x
1884  037d 5f            	clrw	x
1885  037e 89            	pushw	x
1886  037f ae000c        	ldw	x,#L75
1887  0382 cd0000        	call	_assert_failed
1889  0385 5b04          	addw	sp,#4
1890  0387 81            	ret	
1926                     ; 507 void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
1926                     ; 508 {
1927                     	switch	.text
1928  0388               _CLK_SYSCLKConfig:
1930  0388 88            	push	a
1931       00000000      OFST:	set	0
1934                     ; 511     assert_param(IS_CLK_PRESCALER_OK(CLK_Prescaler));
1936  0389 4d            	tnz	a
1937  038a 273a          	jreq	L472
1938  038c a108          	cp	a,#8
1939  038e 2736          	jreq	L472
1940  0390 a110          	cp	a,#16
1941  0392 2732          	jreq	L472
1942  0394 a118          	cp	a,#24
1943  0396 272e          	jreq	L472
1944  0398 a180          	cp	a,#128
1945  039a 272a          	jreq	L472
1946  039c a181          	cp	a,#129
1947  039e 2726          	jreq	L472
1948  03a0 a182          	cp	a,#130
1949  03a2 2722          	jreq	L472
1950  03a4 a183          	cp	a,#131
1951  03a6 271e          	jreq	L472
1952  03a8 a184          	cp	a,#132
1953  03aa 271a          	jreq	L472
1954  03ac a185          	cp	a,#133
1955  03ae 2716          	jreq	L472
1956  03b0 a186          	cp	a,#134
1957  03b2 2712          	jreq	L472
1958  03b4 a187          	cp	a,#135
1959  03b6 270e          	jreq	L472
1960  03b8 ae01ff        	ldw	x,#511
1961  03bb 89            	pushw	x
1962  03bc 5f            	clrw	x
1963  03bd 89            	pushw	x
1964  03be ae000c        	ldw	x,#L75
1965  03c1 cd0000        	call	_assert_failed
1967  03c4 5b04          	addw	sp,#4
1968  03c6               L472:
1969                     ; 513     if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
1971  03c6 7b01          	ld	a,(OFST+1,sp)
1972  03c8 2b0e          	jrmi	L737
1973                     ; 515         CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
1975  03ca c650c6        	ld	a,20678
1976  03cd a4e7          	and	a,#231
1977  03cf c750c6        	ld	20678,a
1978                     ; 516         CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
1980  03d2 7b01          	ld	a,(OFST+1,sp)
1981  03d4 a418          	and	a,#24
1983  03d6 200c          	jra	L147
1984  03d8               L737:
1985                     ; 520         CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
1987  03d8 c650c6        	ld	a,20678
1988  03db a4f8          	and	a,#248
1989  03dd c750c6        	ld	20678,a
1990                     ; 521         CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
1992  03e0 7b01          	ld	a,(OFST+1,sp)
1993  03e2 a407          	and	a,#7
1994  03e4               L147:
1995  03e4 ca50c6        	or	a,20678
1996  03e7 c750c6        	ld	20678,a
1997                     ; 524 }
2000  03ea 84            	pop	a
2001  03eb 81            	ret	
2058                     ; 531 void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
2058                     ; 532 {
2059                     	switch	.text
2060  03ec               _CLK_SWIMConfig:
2062  03ec 88            	push	a
2063       00000000      OFST:	set	0
2066                     ; 535     assert_param(IS_CLK_SWIMDIVIDER_OK(CLK_SWIMDivider));
2068  03ed 4d            	tnz	a
2069  03ee 2711          	jreq	L603
2070  03f0 4a            	dec	a
2071  03f1 270e          	jreq	L603
2072  03f3 ae0217        	ldw	x,#535
2073  03f6 89            	pushw	x
2074  03f7 5f            	clrw	x
2075  03f8 89            	pushw	x
2076  03f9 ae000c        	ldw	x,#L75
2077  03fc cd0000        	call	_assert_failed
2079  03ff 5b04          	addw	sp,#4
2080  0401               L603:
2081                     ; 537     if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
2083  0401 7b01          	ld	a,(OFST+1,sp)
2084  0403 2706          	jreq	L177
2085                     ; 540         CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
2087  0405 721050cd      	bset	20685,#0
2089  0409 2004          	jra	L377
2090  040b               L177:
2091                     ; 545         CLK->SWIMCCR &= (uint8_t)(~CLK_SWIMCCR_SWIMDIV);
2093  040b 721150cd      	bres	20685,#0
2094  040f               L377:
2095                     ; 548 }
2098  040f 84            	pop	a
2099  0410 81            	ret	
2123                     ; 557 void CLK_ClockSecuritySystemEnable(void)
2123                     ; 558 {
2124                     	switch	.text
2125  0411               _CLK_ClockSecuritySystemEnable:
2129                     ; 560     CLK->CSSR |= CLK_CSSR_CSSEN;
2131  0411 721050c8      	bset	20680,#0
2132                     ; 561 }
2135  0415 81            	ret	
2160                     ; 569 CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
2160                     ; 570 {
2161                     	switch	.text
2162  0416               _CLK_GetSYSCLKSource:
2166                     ; 571     return((CLK_Source_TypeDef)CLK->CMSR);
2168  0416 c650c3        	ld	a,20675
2171  0419 81            	ret	
2228                     ; 579 uint32_t CLK_GetClockFreq(void)
2228                     ; 580 {
2229                     	switch	.text
2230  041a               _CLK_GetClockFreq:
2232  041a 5209          	subw	sp,#9
2233       00000009      OFST:	set	9
2236                     ; 582     uint32_t clockfrequency = 0;
2238                     ; 583     CLK_Source_TypeDef clocksource = CLK_SOURCE_HSI;
2240                     ; 584     uint8_t tmp = 0, presc = 0;
2244                     ; 587     clocksource = (CLK_Source_TypeDef)CLK->CMSR;
2246  041c c650c3        	ld	a,20675
2247  041f 6b09          	ld	(OFST+0,sp),a
2249                     ; 589     if (clocksource == CLK_SOURCE_HSI)
2251  0421 a1e1          	cp	a,#225
2252  0423 2634          	jrne	L1401
2253                     ; 591         tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
2255  0425 c650c6        	ld	a,20678
2256  0428 a418          	and	a,#24
2257  042a 44            	srl	a
2258  042b 44            	srl	a
2259  042c 44            	srl	a
2261                     ; 592         tmp = (uint8_t)(tmp >> 3);
2264                     ; 593         presc = HSIDivFactor[tmp];
2266  042d 5f            	clrw	x
2267  042e 97            	ld	xl,a
2268  042f d60000        	ld	a,(_HSIDivFactor,x)
2269  0432 6b09          	ld	(OFST+0,sp),a
2271                     ; 594         clockfrequency = HSI_VALUE / presc;
2273  0434 b703          	ld	c_lreg+3,a
2274  0436 3f02          	clr	c_lreg+2
2275  0438 3f01          	clr	c_lreg+1
2276  043a 3f00          	clr	c_lreg
2277  043c 96            	ldw	x,sp
2278  043d 5c            	incw	x
2279  043e cd0000        	call	c_rtol
2282  0441 ae2400        	ldw	x,#9216
2283  0444 bf02          	ldw	c_lreg+2,x
2284  0446 ae00f4        	ldw	x,#244
2285  0449 bf00          	ldw	c_lreg,x
2286  044b 96            	ldw	x,sp
2287  044c 5c            	incw	x
2288  044d cd0000        	call	c_ludv
2290  0450 96            	ldw	x,sp
2291  0451 1c0005        	addw	x,#OFST-4
2292  0454 cd0000        	call	c_rtol
2296  0457 2018          	jra	L3401
2297  0459               L1401:
2298                     ; 596     else if ( clocksource == CLK_SOURCE_LSI)
2300  0459 a1d2          	cp	a,#210
2301  045b 260a          	jrne	L5401
2302                     ; 598         clockfrequency = LSI_VALUE;
2304  045d aef400        	ldw	x,#62464
2305  0460 1f07          	ldw	(OFST-2,sp),x
2306  0462 ae0001        	ldw	x,#1
2308  0465 2008          	jp	LC008
2309  0467               L5401:
2310                     ; 602         clockfrequency = HSE_VALUE;
2312  0467 ae2400        	ldw	x,#9216
2313  046a 1f07          	ldw	(OFST-2,sp),x
2314  046c ae00f4        	ldw	x,#244
2315  046f               LC008:
2316  046f 1f05          	ldw	(OFST-4,sp),x
2318  0471               L3401:
2319                     ; 605     return((uint32_t)clockfrequency);
2321  0471 96            	ldw	x,sp
2322  0472 1c0005        	addw	x,#OFST-4
2323  0475 cd0000        	call	c_ltor
2327  0478 5b09          	addw	sp,#9
2328  047a 81            	ret	
2428                     ; 616 void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
2428                     ; 617 {
2429                     	switch	.text
2430  047b               _CLK_AdjustHSICalibrationValue:
2432  047b 88            	push	a
2433       00000000      OFST:	set	0
2436                     ; 620     assert_param(IS_CLK_HSITRIMVALUE_OK(CLK_HSICalibrationValue));
2438  047c 4d            	tnz	a
2439  047d 272a          	jreq	L623
2440  047f a101          	cp	a,#1
2441  0481 2726          	jreq	L623
2442  0483 a102          	cp	a,#2
2443  0485 2722          	jreq	L623
2444  0487 a103          	cp	a,#3
2445  0489 271e          	jreq	L623
2446  048b a104          	cp	a,#4
2447  048d 271a          	jreq	L623
2448  048f a105          	cp	a,#5
2449  0491 2716          	jreq	L623
2450  0493 a106          	cp	a,#6
2451  0495 2712          	jreq	L623
2452  0497 a107          	cp	a,#7
2453  0499 270e          	jreq	L623
2454  049b ae026c        	ldw	x,#620
2455  049e 89            	pushw	x
2456  049f 5f            	clrw	x
2457  04a0 89            	pushw	x
2458  04a1 ae000c        	ldw	x,#L75
2459  04a4 cd0000        	call	_assert_failed
2461  04a7 5b04          	addw	sp,#4
2462  04a9               L623:
2463                     ; 623     CLK->HSITRIMR = (uint8_t)( (uint8_t)(CLK->HSITRIMR & (uint8_t)(~CLK_HSITRIMR_HSITRIM))|((uint8_t)CLK_HSICalibrationValue));
2465  04a9 c650cc        	ld	a,20684
2466  04ac a4f8          	and	a,#248
2467  04ae 1a01          	or	a,(OFST+1,sp)
2468  04b0 c750cc        	ld	20684,a
2469                     ; 625 }
2472  04b3 84            	pop	a
2473  04b4 81            	ret	
2497                     ; 636 void CLK_SYSCLKEmergencyClear(void)
2497                     ; 637 {
2498                     	switch	.text
2499  04b5               _CLK_SYSCLKEmergencyClear:
2503                     ; 638     CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWBSY);
2505  04b5 721150c5      	bres	20677,#0
2506                     ; 639 }
2509  04b9 81            	ret	
2659                     ; 648 FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
2659                     ; 649 {
2660                     	switch	.text
2661  04ba               _CLK_GetFlagStatus:
2663  04ba 89            	pushw	x
2664  04bb 5203          	subw	sp,#3
2665       00000003      OFST:	set	3
2668                     ; 651     uint16_t statusreg = 0;
2670                     ; 652     uint8_t tmpreg = 0;
2672                     ; 653     FlagStatus bitstatus = RESET;
2674                     ; 656     assert_param(IS_CLK_FLAG_OK(CLK_FLAG));
2676  04bd a30110        	cpw	x,#272
2677  04c0 2736          	jreq	L243
2678  04c2 a30102        	cpw	x,#258
2679  04c5 2731          	jreq	L243
2680  04c7 a30202        	cpw	x,#514
2681  04ca 272c          	jreq	L243
2682  04cc a30308        	cpw	x,#776
2683  04cf 2727          	jreq	L243
2684  04d1 a30301        	cpw	x,#769
2685  04d4 2722          	jreq	L243
2686  04d6 a30408        	cpw	x,#1032
2687  04d9 271d          	jreq	L243
2688  04db a30402        	cpw	x,#1026
2689  04de 2718          	jreq	L243
2690  04e0 a30504        	cpw	x,#1284
2691  04e3 2713          	jreq	L243
2692  04e5 a30502        	cpw	x,#1282
2693  04e8 270e          	jreq	L243
2694  04ea ae0290        	ldw	x,#656
2695  04ed 89            	pushw	x
2696  04ee 5f            	clrw	x
2697  04ef 89            	pushw	x
2698  04f0 ae000c        	ldw	x,#L75
2699  04f3 cd0000        	call	_assert_failed
2701  04f6 5b04          	addw	sp,#4
2702  04f8               L243:
2703                     ; 659     statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
2705  04f8 7b04          	ld	a,(OFST+1,sp)
2706  04fa 97            	ld	xl,a
2707  04fb 4f            	clr	a
2708  04fc 02            	rlwa	x,a
2709  04fd 1f01          	ldw	(OFST-2,sp),x
2711                     ; 662     if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
2713  04ff a30100        	cpw	x,#256
2714  0502 2605          	jrne	L7021
2715                     ; 664         tmpreg = CLK->ICKR;
2717  0504 c650c0        	ld	a,20672
2719  0507 2021          	jra	L1121
2720  0509               L7021:
2721                     ; 666     else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
2723  0509 a30200        	cpw	x,#512
2724  050c 2605          	jrne	L3121
2725                     ; 668         tmpreg = CLK->ECKR;
2727  050e c650c1        	ld	a,20673
2729  0511 2017          	jra	L1121
2730  0513               L3121:
2731                     ; 670     else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
2733  0513 a30300        	cpw	x,#768
2734  0516 2605          	jrne	L7121
2735                     ; 672         tmpreg = CLK->SWCR;
2737  0518 c650c5        	ld	a,20677
2739  051b 200d          	jra	L1121
2740  051d               L7121:
2741                     ; 674     else if (statusreg == 0x0400) /* The flag to check is in CSS register */
2743  051d a30400        	cpw	x,#1024
2744  0520 2605          	jrne	L3221
2745                     ; 676         tmpreg = CLK->CSSR;
2747  0522 c650c8        	ld	a,20680
2749  0525 2003          	jra	L1121
2750  0527               L3221:
2751                     ; 680         tmpreg = CLK->CCOR;
2753  0527 c650c9        	ld	a,20681
2754  052a               L1121:
2755  052a 6b03          	ld	(OFST+0,sp),a
2757                     ; 683     if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
2759  052c 7b05          	ld	a,(OFST+2,sp)
2760  052e 1503          	bcp	a,(OFST+0,sp)
2761  0530 2704          	jreq	L7221
2762                     ; 685         bitstatus = SET;
2764  0532 a601          	ld	a,#1
2767  0534 2001          	jra	L1321
2768  0536               L7221:
2769                     ; 689         bitstatus = RESET;
2771  0536 4f            	clr	a
2773  0537               L1321:
2774                     ; 693     return((FlagStatus)bitstatus);
2778  0537 5b05          	addw	sp,#5
2779  0539 81            	ret	
2826                     ; 703 ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
2826                     ; 704 {
2827                     	switch	.text
2828  053a               _CLK_GetITStatus:
2830  053a 88            	push	a
2831  053b 88            	push	a
2832       00000001      OFST:	set	1
2835                     ; 706     ITStatus bitstatus = RESET;
2837                     ; 709     assert_param(IS_CLK_IT_OK(CLK_IT));
2839  053c a10c          	cp	a,#12
2840  053e 2712          	jreq	L453
2841  0540 a11c          	cp	a,#28
2842  0542 270e          	jreq	L453
2843  0544 ae02c5        	ldw	x,#709
2844  0547 89            	pushw	x
2845  0548 5f            	clrw	x
2846  0549 89            	pushw	x
2847  054a ae000c        	ldw	x,#L75
2848  054d cd0000        	call	_assert_failed
2850  0550 5b04          	addw	sp,#4
2851  0552               L453:
2852                     ; 711     if (CLK_IT == CLK_IT_SWIF)
2854  0552 7b02          	ld	a,(OFST+1,sp)
2855  0554 a11c          	cp	a,#28
2856  0556 260b          	jrne	L5521
2857                     ; 714         if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
2859  0558 c650c5        	ld	a,20677
2860  055b 1402          	and	a,(OFST+1,sp)
2861  055d a10c          	cp	a,#12
2862  055f 260f          	jrne	L5621
2863                     ; 716             bitstatus = SET;
2865  0561 2009          	jp	LC010
2866                     ; 720             bitstatus = RESET;
2867  0563               L5521:
2868                     ; 726         if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
2870  0563 c650c8        	ld	a,20680
2871  0566 1402          	and	a,(OFST+1,sp)
2872  0568 a10c          	cp	a,#12
2873  056a 2604          	jrne	L5621
2874                     ; 728             bitstatus = SET;
2876  056c               LC010:
2878  056c a601          	ld	a,#1
2881  056e 2001          	jra	L3621
2882  0570               L5621:
2883                     ; 732             bitstatus = RESET;
2886  0570 4f            	clr	a
2888  0571               L3621:
2889                     ; 737     return bitstatus;
2893  0571 85            	popw	x
2894  0572 81            	ret	
2931                     ; 747 void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
2931                     ; 748 {
2932                     	switch	.text
2933  0573               _CLK_ClearITPendingBit:
2935  0573 88            	push	a
2936       00000000      OFST:	set	0
2939                     ; 751     assert_param(IS_CLK_IT_OK(CLK_IT));
2941  0574 a10c          	cp	a,#12
2942  0576 2712          	jreq	L663
2943  0578 a11c          	cp	a,#28
2944  057a 270e          	jreq	L663
2945  057c ae02ef        	ldw	x,#751
2946  057f 89            	pushw	x
2947  0580 5f            	clrw	x
2948  0581 89            	pushw	x
2949  0582 ae000c        	ldw	x,#L75
2950  0585 cd0000        	call	_assert_failed
2952  0588 5b04          	addw	sp,#4
2953  058a               L663:
2954                     ; 753     if (CLK_IT == (uint8_t)CLK_IT_CSSD)
2956  058a 7b01          	ld	a,(OFST+1,sp)
2957  058c a10c          	cp	a,#12
2958  058e 2606          	jrne	L7031
2959                     ; 756         CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSD);
2961  0590 721750c8      	bres	20680,#3
2963  0594 2004          	jra	L1131
2964  0596               L7031:
2965                     ; 761         CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
2967  0596 721750c5      	bres	20677,#3
2968  059a               L1131:
2969                     ; 764 }
2972  059a 84            	pop	a
2973  059b 81            	ret	
3008                     	xdef	_CLKPrescTable
3009                     	xdef	_HSIDivFactor
3010                     	xdef	_CLK_ClearITPendingBit
3011                     	xdef	_CLK_GetITStatus
3012                     	xdef	_CLK_GetFlagStatus
3013                     	xdef	_CLK_GetSYSCLKSource
3014                     	xdef	_CLK_GetClockFreq
3015                     	xdef	_CLK_AdjustHSICalibrationValue
3016                     	xdef	_CLK_SYSCLKEmergencyClear
3017                     	xdef	_CLK_ClockSecuritySystemEnable
3018                     	xdef	_CLK_SWIMConfig
3019                     	xdef	_CLK_SYSCLKConfig
3020                     	xdef	_CLK_ITConfig
3021                     	xdef	_CLK_CCOConfig
3022                     	xdef	_CLK_HSIPrescalerConfig
3023                     	xdef	_CLK_ClockSwitchConfig
3024                     	xdef	_CLK_PeripheralClockConfig
3025                     	xdef	_CLK_SlowActiveHaltWakeUpCmd
3026                     	xdef	_CLK_FastHaltWakeUpCmd
3027                     	xdef	_CLK_ClockSwitchCmd
3028                     	xdef	_CLK_CCOCmd
3029                     	xdef	_CLK_LSICmd
3030                     	xdef	_CLK_HSICmd
3031                     	xdef	_CLK_HSECmd
3032                     	xdef	_CLK_DeInit
3033                     	xref	_assert_failed
3034                     	switch	.const
3035  000c               L75:
3036  000c 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
3037  001e 6965735c7374  	dc.b	"ies\stm8s_stdperip"
3038  0030 685f64726976  	dc.b	"h_driver\src\stm8s"
3039  0042 5f636c6b2e63  	dc.b	"_clk.c",0
3040                     	xref.b	c_lreg
3041                     	xref.b	c_x
3061                     	xref	c_ltor
3062                     	xref	c_ludv
3063                     	xref	c_rtol
3064                     	end
