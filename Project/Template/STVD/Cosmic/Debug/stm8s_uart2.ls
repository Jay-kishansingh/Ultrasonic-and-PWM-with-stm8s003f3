   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.8.1 - 09 Jan 2023
   3                     ; Generator (Limited) V4.5.5 - 08 Nov 2022
   4                     ; Optimizer V4.5.5 - 08 Nov 2022
  48                     ; 47 void UART2_DeInit(void)
  48                     ; 48 {
  50                     	switch	.text
  51  0000               _UART2_DeInit:
  55                     ; 51     (void) UART2->SR;
  57  0000 c65240        	ld	a,21056
  58                     ; 52     (void)UART2->DR;
  60  0003 c65241        	ld	a,21057
  61                     ; 54     UART2->BRR2 = UART2_BRR2_RESET_VALUE;  /*  Set UART2_BRR2 to reset value 0x00 */
  63  0006 725f5243      	clr	21059
  64                     ; 55     UART2->BRR1 = UART2_BRR1_RESET_VALUE;  /*  Set UART2_BRR1 to reset value 0x00 */
  66  000a 725f5242      	clr	21058
  67                     ; 57     UART2->CR1 = UART2_CR1_RESET_VALUE; /*  Set UART2_CR1 to reset value 0x00  */
  69  000e 725f5244      	clr	21060
  70                     ; 58     UART2->CR2 = UART2_CR2_RESET_VALUE; /*  Set UART2_CR2 to reset value 0x00  */
  72  0012 725f5245      	clr	21061
  73                     ; 59     UART2->CR3 = UART2_CR3_RESET_VALUE; /*  Set UART2_CR3 to reset value 0x00  */
  75  0016 725f5246      	clr	21062
  76                     ; 60     UART2->CR4 = UART2_CR4_RESET_VALUE; /*  Set UART2_CR4 to reset value 0x00  */
  78  001a 725f5247      	clr	21063
  79                     ; 61     UART2->CR5 = UART2_CR5_RESET_VALUE; /*  Set UART2_CR5 to reset value 0x00  */
  81  001e 725f5248      	clr	21064
  82                     ; 62     UART2->CR6 = UART2_CR6_RESET_VALUE; /*  Set UART2_CR6 to reset value 0x00  */
  84  0022 725f5249      	clr	21065
  85                     ; 64 }
  88  0026 81            	ret	
 410                     .const:	section	.text
 411  0000               L21:
 412  0000 00098969      	dc.l	625001
 413  0004               L27:
 414  0004 00000064      	dc.l	100
 415                     ; 80 void UART2_Init(uint32_t BaudRate, UART2_WordLength_TypeDef WordLength, UART2_StopBits_TypeDef StopBits, UART2_Parity_TypeDef Parity, UART2_SyncMode_TypeDef SyncMode, UART2_Mode_TypeDef Mode)
 415                     ; 81 {
 416                     	switch	.text
 417  0027               _UART2_Init:
 419  0027 520e          	subw	sp,#14
 420       0000000e      OFST:	set	14
 423                     ; 82     uint8_t BRR2_1 = 0, BRR2_2 = 0;
 427                     ; 83     uint32_t BaudRate_Mantissa = 0, BaudRate_Mantissa100 = 0;
 431                     ; 86     assert_param(IS_UART2_BAUDRATE_OK(BaudRate));
 433  0029 96            	ldw	x,sp
 434  002a 1c0011        	addw	x,#OFST+3
 435  002d cd0000        	call	c_ltor
 437  0030 ae0000        	ldw	x,#L21
 438  0033 cd0000        	call	c_lcmp
 440  0036 2506          	jrult	L41
 441  0038 ae0056        	ldw	x,#86
 442  003b cd01c7        	call	LC001
 443  003e               L41:
 444                     ; 87     assert_param(IS_UART2_WORDLENGTH_OK(WordLength));
 446  003e 7b15          	ld	a,(OFST+7,sp)
 447  0040 270a          	jreq	L42
 448  0042 a110          	cp	a,#16
 449  0044 2706          	jreq	L42
 450  0046 ae0057        	ldw	x,#87
 451  0049 cd01c7        	call	LC001
 452  004c               L42:
 453                     ; 88     assert_param(IS_UART2_STOPBITS_OK(StopBits));
 455  004c 7b16          	ld	a,(OFST+8,sp)
 456  004e 2712          	jreq	L43
 457  0050 a110          	cp	a,#16
 458  0052 270e          	jreq	L43
 459  0054 a120          	cp	a,#32
 460  0056 270a          	jreq	L43
 461  0058 a130          	cp	a,#48
 462  005a 2706          	jreq	L43
 463  005c ae0058        	ldw	x,#88
 464  005f cd01c7        	call	LC001
 465  0062               L43:
 466                     ; 89     assert_param(IS_UART2_PARITY_OK(Parity));
 468  0062 7b17          	ld	a,(OFST+9,sp)
 469  0064 270e          	jreq	L44
 470  0066 a104          	cp	a,#4
 471  0068 270a          	jreq	L44
 472  006a a106          	cp	a,#6
 473  006c 2706          	jreq	L44
 474  006e ae0059        	ldw	x,#89
 475  0071 cd01c7        	call	LC001
 476  0074               L44:
 477                     ; 90     assert_param(IS_UART2_MODE_OK((uint8_t)Mode));
 479  0074 7b19          	ld	a,(OFST+11,sp)
 480  0076 a108          	cp	a,#8
 481  0078 2722          	jreq	L45
 482  007a a140          	cp	a,#64
 483  007c 271e          	jreq	L45
 484  007e a104          	cp	a,#4
 485  0080 271a          	jreq	L45
 486  0082 a180          	cp	a,#128
 487  0084 2716          	jreq	L45
 488  0086 a10c          	cp	a,#12
 489  0088 2712          	jreq	L45
 490  008a a144          	cp	a,#68
 491  008c 270e          	jreq	L45
 492  008e a1c0          	cp	a,#192
 493  0090 270a          	jreq	L45
 494  0092 a188          	cp	a,#136
 495  0094 2706          	jreq	L45
 496  0096 ae005a        	ldw	x,#90
 497  0099 cd01c7        	call	LC001
 498  009c               L45:
 499                     ; 91     assert_param(IS_UART2_SYNCMODE_OK((uint8_t)SyncMode));
 501  009c 7b18          	ld	a,(OFST+10,sp)
 502  009e a488          	and	a,#136
 503  00a0 a188          	cp	a,#136
 504  00a2 2718          	jreq	L06
 505  00a4 7b18          	ld	a,(OFST+10,sp)
 506  00a6 a444          	and	a,#68
 507  00a8 a144          	cp	a,#68
 508  00aa 2710          	jreq	L06
 509  00ac 7b18          	ld	a,(OFST+10,sp)
 510  00ae a422          	and	a,#34
 511  00b0 a122          	cp	a,#34
 512  00b2 2708          	jreq	L06
 513  00b4 7b18          	ld	a,(OFST+10,sp)
 514  00b6 a411          	and	a,#17
 515  00b8 a111          	cp	a,#17
 516  00ba 2606          	jrne	L26
 517  00bc               L06:
 518  00bc ae005b        	ldw	x,#91
 519  00bf cd01c7        	call	LC001
 520  00c2               L26:
 521                     ; 94     UART2->CR1 &= (uint8_t)(~UART2_CR1_M);
 523  00c2 72195244      	bres	21060,#4
 524                     ; 96     UART2->CR1 |= (uint8_t)WordLength; 
 526  00c6 c65244        	ld	a,21060
 527  00c9 1a15          	or	a,(OFST+7,sp)
 528  00cb c75244        	ld	21060,a
 529                     ; 99     UART2->CR3 &= (uint8_t)(~UART2_CR3_STOP);
 531  00ce c65246        	ld	a,21062
 532  00d1 a4cf          	and	a,#207
 533  00d3 c75246        	ld	21062,a
 534                     ; 101     UART2->CR3 |= (uint8_t)StopBits; 
 536  00d6 c65246        	ld	a,21062
 537  00d9 1a16          	or	a,(OFST+8,sp)
 538  00db c75246        	ld	21062,a
 539                     ; 104     UART2->CR1 &= (uint8_t)(~(UART2_CR1_PCEN | UART2_CR1_PS  ));
 541  00de c65244        	ld	a,21060
 542  00e1 a4f9          	and	a,#249
 543  00e3 c75244        	ld	21060,a
 544                     ; 106     UART2->CR1 |= (uint8_t)Parity;
 546  00e6 c65244        	ld	a,21060
 547  00e9 1a17          	or	a,(OFST+9,sp)
 548  00eb c75244        	ld	21060,a
 549                     ; 109     UART2->BRR1 &= (uint8_t)(~UART2_BRR1_DIVM);
 551  00ee 725f5242      	clr	21058
 552                     ; 111     UART2->BRR2 &= (uint8_t)(~UART2_BRR2_DIVM);
 554  00f2 c65243        	ld	a,21059
 555  00f5 a40f          	and	a,#15
 556  00f7 c75243        	ld	21059,a
 557                     ; 113     UART2->BRR2 &= (uint8_t)(~UART2_BRR2_DIVF);
 559  00fa c65243        	ld	a,21059
 560  00fd a4f0          	and	a,#240
 561  00ff c75243        	ld	21059,a
 562                     ; 116     BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
 564  0102 96            	ldw	x,sp
 565  0103 cd01d3        	call	LC002
 567  0106 96            	ldw	x,sp
 568  0107 5c            	incw	x
 569  0108 cd0000        	call	c_rtol
 572  010b cd0000        	call	_CLK_GetClockFreq
 574  010e 96            	ldw	x,sp
 575  010f 5c            	incw	x
 576  0110 cd0000        	call	c_ludv
 578  0113 96            	ldw	x,sp
 579  0114 1c000b        	addw	x,#OFST-3
 580  0117 cd0000        	call	c_rtol
 583                     ; 117     BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
 585  011a 96            	ldw	x,sp
 586  011b cd01d3        	call	LC002
 588  011e 96            	ldw	x,sp
 589  011f 5c            	incw	x
 590  0120 cd0000        	call	c_rtol
 593  0123 cd0000        	call	_CLK_GetClockFreq
 595  0126 a664          	ld	a,#100
 596  0128 cd0000        	call	c_smul
 598  012b 96            	ldw	x,sp
 599  012c 5c            	incw	x
 600  012d cd0000        	call	c_ludv
 602  0130 96            	ldw	x,sp
 603  0131 1c0007        	addw	x,#OFST-7
 604  0134 cd0000        	call	c_rtol
 607                     ; 121     BRR2_1 = (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100))
 607                     ; 122                         << 4) / 100) & (uint8_t)0x0F); 
 609  0137 96            	ldw	x,sp
 610  0138 1c000b        	addw	x,#OFST-3
 611  013b cd0000        	call	c_ltor
 613  013e a664          	ld	a,#100
 614  0140 cd0000        	call	c_smul
 616  0143 96            	ldw	x,sp
 617  0144 5c            	incw	x
 618  0145 cd0000        	call	c_rtol
 621  0148 96            	ldw	x,sp
 622  0149 1c0007        	addw	x,#OFST-7
 623  014c cd0000        	call	c_ltor
 625  014f 96            	ldw	x,sp
 626  0150 5c            	incw	x
 627  0151 cd0000        	call	c_lsub
 629  0154 a604          	ld	a,#4
 630  0156 cd0000        	call	c_llsh
 632  0159 ae0004        	ldw	x,#L27
 633  015c cd0000        	call	c_ludv
 635  015f b603          	ld	a,c_lreg+3
 636  0161 a40f          	and	a,#15
 637  0163 6b05          	ld	(OFST-9,sp),a
 639                     ; 123     BRR2_2 = (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0);
 641  0165 1e0d          	ldw	x,(OFST-1,sp)
 642  0167 54            	srlw	x
 643  0168 54            	srlw	x
 644  0169 54            	srlw	x
 645  016a 54            	srlw	x
 646  016b 01            	rrwa	x,a
 647  016c a4f0          	and	a,#240
 648  016e 6b06          	ld	(OFST-8,sp),a
 650                     ; 125     UART2->BRR2 = (uint8_t)(BRR2_1 | BRR2_2);
 652  0170 1a05          	or	a,(OFST-9,sp)
 653  0172 c75243        	ld	21059,a
 654                     ; 127     UART2->BRR1 = (uint8_t)BaudRate_Mantissa;           
 656  0175 7b0e          	ld	a,(OFST+0,sp)
 657  0177 c75242        	ld	21058,a
 658                     ; 130     UART2->CR2 &= (uint8_t)~(UART2_CR2_TEN | UART2_CR2_REN);
 660  017a c65245        	ld	a,21061
 661  017d a4f3          	and	a,#243
 662  017f c75245        	ld	21061,a
 663                     ; 132     UART2->CR3 &= (uint8_t)~(UART2_CR3_CPOL | UART2_CR3_CPHA | UART2_CR3_LBCL);
 665  0182 c65246        	ld	a,21062
 666  0185 a4f8          	and	a,#248
 667  0187 c75246        	ld	21062,a
 668                     ; 134     UART2->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART2_CR3_CPOL | \
 668                     ; 135                                               UART2_CR3_CPHA | UART2_CR3_LBCL));
 670  018a 7b18          	ld	a,(OFST+10,sp)
 671  018c a407          	and	a,#7
 672  018e ca5246        	or	a,21062
 673  0191 c75246        	ld	21062,a
 674                     ; 137     if ((uint8_t)(Mode & UART2_MODE_TX_ENABLE))
 676  0194 7b19          	ld	a,(OFST+11,sp)
 677  0196 a504          	bcp	a,#4
 678  0198 2706          	jreq	L502
 679                     ; 140         UART2->CR2 |= (uint8_t)UART2_CR2_TEN;
 681  019a 72165245      	bset	21061,#3
 683  019e 2004          	jra	L702
 684  01a0               L502:
 685                     ; 145         UART2->CR2 &= (uint8_t)(~UART2_CR2_TEN);
 687  01a0 72175245      	bres	21061,#3
 688  01a4               L702:
 689                     ; 147     if ((uint8_t)(Mode & UART2_MODE_RX_ENABLE))
 691  01a4 a508          	bcp	a,#8
 692  01a6 2706          	jreq	L112
 693                     ; 150         UART2->CR2 |= (uint8_t)UART2_CR2_REN;
 695  01a8 72145245      	bset	21061,#2
 697  01ac 2004          	jra	L312
 698  01ae               L112:
 699                     ; 155         UART2->CR2 &= (uint8_t)(~UART2_CR2_REN);
 701  01ae 72155245      	bres	21061,#2
 702  01b2               L312:
 703                     ; 159     if ((uint8_t)(SyncMode & UART2_SYNCMODE_CLOCK_DISABLE))
 705  01b2 7b18          	ld	a,(OFST+10,sp)
 706  01b4 2a06          	jrpl	L512
 707                     ; 162         UART2->CR3 &= (uint8_t)(~UART2_CR3_CKEN); 
 709  01b6 72175246      	bres	21062,#3
 711  01ba 2008          	jra	L712
 712  01bc               L512:
 713                     ; 166         UART2->CR3 |= (uint8_t)((uint8_t)SyncMode & UART2_CR3_CKEN);
 715  01bc a408          	and	a,#8
 716  01be ca5246        	or	a,21062
 717  01c1 c75246        	ld	21062,a
 718  01c4               L712:
 719                     ; 168 }
 722  01c4 5b0e          	addw	sp,#14
 723  01c6 81            	ret	
 724  01c7               LC001:
 725  01c7 89            	pushw	x
 726  01c8 5f            	clrw	x
 727  01c9 89            	pushw	x
 728  01ca ae0008        	ldw	x,#L302
 729  01cd cd0000        	call	_assert_failed
 731  01d0 5b04          	addw	sp,#4
 732  01d2 81            	ret	
 733  01d3               LC002:
 734  01d3 1c0011        	addw	x,#OFST+3
 735  01d6 cd0000        	call	c_ltor
 737  01d9 a604          	ld	a,#4
 738  01db cc0000        	jp	c_llsh
 793                     ; 176 void UART2_Cmd(FunctionalState NewState)
 793                     ; 177 {
 794                     	switch	.text
 795  01de               _UART2_Cmd:
 799                     ; 179     if (NewState != DISABLE)
 801  01de 4d            	tnz	a
 802  01df 2705          	jreq	L742
 803                     ; 182         UART2->CR1 &= (uint8_t)(~UART2_CR1_UARTD);
 805  01e1 721b5244      	bres	21060,#5
 808  01e5 81            	ret	
 809  01e6               L742:
 810                     ; 187         UART2->CR1 |= UART2_CR1_UARTD; 
 812  01e6 721a5244      	bset	21060,#5
 813                     ; 189 }
 816  01ea 81            	ret	
 949                     ; 206 void UART2_ITConfig(UART2_IT_TypeDef UART2_IT, FunctionalState NewState)
 949                     ; 207 {
 950                     	switch	.text
 951  01eb               _UART2_ITConfig:
 953  01eb 89            	pushw	x
 954  01ec 89            	pushw	x
 955       00000002      OFST:	set	2
 958                     ; 208     uint8_t uartreg = 0, itpos = 0x00;
 962                     ; 211     assert_param(IS_UART2_CONFIG_IT_OK(UART2_IT));
 964  01ed a30100        	cpw	x,#256
 965  01f0 2724          	jreq	L401
 966  01f2 a30277        	cpw	x,#631
 967  01f5 271f          	jreq	L401
 968  01f7 a30266        	cpw	x,#614
 969  01fa 271a          	jreq	L401
 970  01fc a30205        	cpw	x,#517
 971  01ff 2715          	jreq	L401
 972  0201 a30244        	cpw	x,#580
 973  0204 2710          	jreq	L401
 974  0206 a30412        	cpw	x,#1042
 975  0209 270b          	jreq	L401
 976  020b a30346        	cpw	x,#838
 977  020e 2706          	jreq	L401
 978  0210 ae00d3        	ldw	x,#211
 979  0213 cd02a0        	call	LC007
 980  0216               L401:
 981                     ; 212     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 983  0216 7b07          	ld	a,(OFST+5,sp)
 984  0218 2708          	jreq	L411
 985  021a 4a            	dec	a
 986  021b 2705          	jreq	L411
 987  021d ae00d4        	ldw	x,#212
 988  0220 ad7e          	call	LC007
 989  0222               L411:
 990                     ; 215     uartreg = (uint8_t)((uint16_t)UART2_IT >> 0x08);
 992  0222 7b03          	ld	a,(OFST+1,sp)
 993  0224 6b01          	ld	(OFST-1,sp),a
 995                     ; 218     itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART2_IT & (uint8_t)0x0F));
 997  0226 7b04          	ld	a,(OFST+2,sp)
 998  0228 a40f          	and	a,#15
 999  022a 5f            	clrw	x
1000  022b 97            	ld	xl,a
1001  022c a601          	ld	a,#1
1002  022e 5d            	tnzw	x
1003  022f 2704          	jreq	L021
1004  0231               L221:
1005  0231 48            	sll	a
1006  0232 5a            	decw	x
1007  0233 26fc          	jrne	L221
1008  0235               L021:
1009  0235 6b02          	ld	(OFST+0,sp),a
1011                     ; 220     if (NewState != DISABLE)
1013  0237 7b07          	ld	a,(OFST+5,sp)
1014  0239 272a          	jreq	L333
1015                     ; 223         if (uartreg == 0x01)
1017  023b 7b01          	ld	a,(OFST-1,sp)
1018  023d a101          	cp	a,#1
1019  023f 2607          	jrne	L533
1020                     ; 225             UART2->CR1 |= itpos;
1022  0241 c65244        	ld	a,21060
1023  0244 1a02          	or	a,(OFST+0,sp)
1025  0246 2029          	jp	LC005
1026  0248               L533:
1027                     ; 227         else if (uartreg == 0x02)
1029  0248 a102          	cp	a,#2
1030  024a 2607          	jrne	L143
1031                     ; 229             UART2->CR2 |= itpos;
1033  024c c65245        	ld	a,21061
1034  024f 1a02          	or	a,(OFST+0,sp)
1036  0251 202d          	jp	LC004
1037  0253               L143:
1038                     ; 231         else if (uartreg == 0x03)
1040  0253 a103          	cp	a,#3
1041  0255 2607          	jrne	L543
1042                     ; 233             UART2->CR4 |= itpos;
1044  0257 c65247        	ld	a,21063
1045  025a 1a02          	or	a,(OFST+0,sp)
1047  025c 2031          	jp	LC006
1048  025e               L543:
1049                     ; 237             UART2->CR6 |= itpos;
1051  025e c65249        	ld	a,21065
1052  0261 1a02          	or	a,(OFST+0,sp)
1053  0263 2035          	jp	LC003
1054  0265               L333:
1055                     ; 243         if (uartreg == 0x01)
1057  0265 7b01          	ld	a,(OFST-1,sp)
1058  0267 a101          	cp	a,#1
1059  0269 260b          	jrne	L353
1060                     ; 245             UART2->CR1 &= (uint8_t)(~itpos);
1062  026b 7b02          	ld	a,(OFST+0,sp)
1063  026d 43            	cpl	a
1064  026e c45244        	and	a,21060
1065  0271               LC005:
1066  0271 c75244        	ld	21060,a
1068  0274 2027          	jra	L153
1069  0276               L353:
1070                     ; 247         else if (uartreg == 0x02)
1072  0276 a102          	cp	a,#2
1073  0278 260b          	jrne	L753
1074                     ; 249             UART2->CR2 &= (uint8_t)(~itpos);
1076  027a 7b02          	ld	a,(OFST+0,sp)
1077  027c 43            	cpl	a
1078  027d c45245        	and	a,21061
1079  0280               LC004:
1080  0280 c75245        	ld	21061,a
1082  0283 2018          	jra	L153
1083  0285               L753:
1084                     ; 251         else if (uartreg == 0x03)
1086  0285 a103          	cp	a,#3
1087  0287 260b          	jrne	L363
1088                     ; 253             UART2->CR4 &= (uint8_t)(~itpos);
1090  0289 7b02          	ld	a,(OFST+0,sp)
1091  028b 43            	cpl	a
1092  028c c45247        	and	a,21063
1093  028f               LC006:
1094  028f c75247        	ld	21063,a
1096  0292 2009          	jra	L153
1097  0294               L363:
1098                     ; 257             UART2->CR6 &= (uint8_t)(~itpos);
1100  0294 7b02          	ld	a,(OFST+0,sp)
1101  0296 43            	cpl	a
1102  0297 c45249        	and	a,21065
1103  029a               LC003:
1104  029a c75249        	ld	21065,a
1105  029d               L153:
1106                     ; 260 }
1109  029d 5b04          	addw	sp,#4
1110  029f 81            	ret	
1111  02a0               LC007:
1112  02a0 89            	pushw	x
1113  02a1 5f            	clrw	x
1114  02a2 89            	pushw	x
1115  02a3 ae0008        	ldw	x,#L302
1116  02a6 cd0000        	call	_assert_failed
1118  02a9 5b04          	addw	sp,#4
1119  02ab 81            	ret	
1177                     ; 267 void UART2_IrDAConfig(UART2_IrDAMode_TypeDef UART2_IrDAMode)
1177                     ; 268 {
1178                     	switch	.text
1179  02ac               _UART2_IrDAConfig:
1181  02ac 88            	push	a
1182       00000000      OFST:	set	0
1185                     ; 269     assert_param(IS_UART2_IRDAMODE_OK(UART2_IrDAMode));
1187  02ad a101          	cp	a,#1
1188  02af 2711          	jreq	L231
1189  02b1 4d            	tnz	a
1190  02b2 270e          	jreq	L231
1191  02b4 ae010d        	ldw	x,#269
1192  02b7 89            	pushw	x
1193  02b8 5f            	clrw	x
1194  02b9 89            	pushw	x
1195  02ba ae0008        	ldw	x,#L302
1196  02bd cd0000        	call	_assert_failed
1198  02c0 5b04          	addw	sp,#4
1199  02c2               L231:
1200                     ; 271     if (UART2_IrDAMode != UART2_IRDAMODE_NORMAL)
1202  02c2 7b01          	ld	a,(OFST+1,sp)
1203  02c4 2706          	jreq	L514
1204                     ; 273         UART2->CR5 |= UART2_CR5_IRLP;
1206  02c6 72145248      	bset	21064,#2
1208  02ca 2004          	jra	L714
1209  02cc               L514:
1210                     ; 277         UART2->CR5 &= ((uint8_t)~UART2_CR5_IRLP);
1212  02cc 72155248      	bres	21064,#2
1213  02d0               L714:
1214                     ; 279 }
1217  02d0 84            	pop	a
1218  02d1 81            	ret	
1254                     ; 287 void UART2_IrDACmd(FunctionalState NewState)
1254                     ; 288 {
1255                     	switch	.text
1256  02d2               _UART2_IrDACmd:
1258  02d2 88            	push	a
1259       00000000      OFST:	set	0
1262                     ; 290     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1264  02d3 4d            	tnz	a
1265  02d4 2711          	jreq	L441
1266  02d6 4a            	dec	a
1267  02d7 270e          	jreq	L441
1268  02d9 ae0122        	ldw	x,#290
1269  02dc 89            	pushw	x
1270  02dd 5f            	clrw	x
1271  02de 89            	pushw	x
1272  02df ae0008        	ldw	x,#L302
1273  02e2 cd0000        	call	_assert_failed
1275  02e5 5b04          	addw	sp,#4
1276  02e7               L441:
1277                     ; 292     if (NewState != DISABLE)
1279  02e7 7b01          	ld	a,(OFST+1,sp)
1280  02e9 2706          	jreq	L734
1281                     ; 295         UART2->CR5 |= UART2_CR5_IREN;
1283  02eb 72125248      	bset	21064,#1
1285  02ef 2004          	jra	L144
1286  02f1               L734:
1287                     ; 300         UART2->CR5 &= ((uint8_t)~UART2_CR5_IREN);
1289  02f1 72135248      	bres	21064,#1
1290  02f5               L144:
1291                     ; 302 }
1294  02f5 84            	pop	a
1295  02f6 81            	ret	
1355                     ; 311 void UART2_LINBreakDetectionConfig(UART2_LINBreakDetectionLength_TypeDef UART2_LINBreakDetectionLength)
1355                     ; 312 {
1356                     	switch	.text
1357  02f7               _UART2_LINBreakDetectionConfig:
1359  02f7 88            	push	a
1360       00000000      OFST:	set	0
1363                     ; 314     assert_param(IS_UART2_LINBREAKDETECTIONLENGTH_OK(UART2_LINBreakDetectionLength));
1365  02f8 4d            	tnz	a
1366  02f9 2711          	jreq	L651
1367  02fb 4a            	dec	a
1368  02fc 270e          	jreq	L651
1369  02fe ae013a        	ldw	x,#314
1370  0301 89            	pushw	x
1371  0302 5f            	clrw	x
1372  0303 89            	pushw	x
1373  0304 ae0008        	ldw	x,#L302
1374  0307 cd0000        	call	_assert_failed
1376  030a 5b04          	addw	sp,#4
1377  030c               L651:
1378                     ; 316     if (UART2_LINBreakDetectionLength != UART2_LINBREAKDETECTIONLENGTH_10BITS)
1380  030c 7b01          	ld	a,(OFST+1,sp)
1381  030e 2706          	jreq	L174
1382                     ; 318         UART2->CR4 |= UART2_CR4_LBDL;
1384  0310 721a5247      	bset	21063,#5
1386  0314 2004          	jra	L374
1387  0316               L174:
1388                     ; 322         UART2->CR4 &= ((uint8_t)~UART2_CR4_LBDL);
1390  0316 721b5247      	bres	21063,#5
1391  031a               L374:
1392                     ; 324 }
1395  031a 84            	pop	a
1396  031b 81            	ret	
1518                     ; 336 void UART2_LINConfig(UART2_LinMode_TypeDef UART2_Mode, 
1518                     ; 337                      UART2_LinAutosync_TypeDef UART2_Autosync, 
1518                     ; 338                      UART2_LinDivUp_TypeDef UART2_DivUp)
1518                     ; 339 {
1519                     	switch	.text
1520  031c               _UART2_LINConfig:
1522  031c 89            	pushw	x
1523       00000000      OFST:	set	0
1526                     ; 341     assert_param(IS_UART2_SLAVE_OK(UART2_Mode));
1528  031d 9e            	ld	a,xh
1529  031e 4d            	tnz	a
1530  031f 2709          	jreq	L071
1531  0321 9e            	ld	a,xh
1532  0322 4a            	dec	a
1533  0323 2705          	jreq	L071
1534  0325 ae0155        	ldw	x,#341
1535  0328 ad46          	call	LC008
1536  032a               L071:
1537                     ; 342     assert_param(IS_UART2_AUTOSYNC_OK(UART2_Autosync));
1539  032a 7b02          	ld	a,(OFST+2,sp)
1540  032c 4a            	dec	a
1541  032d 2709          	jreq	L002
1542  032f 7b02          	ld	a,(OFST+2,sp)
1543  0331 2705          	jreq	L002
1544  0333 ae0156        	ldw	x,#342
1545  0336 ad38          	call	LC008
1546  0338               L002:
1547                     ; 343     assert_param(IS_UART2_DIVUP_OK(UART2_DivUp));
1549  0338 7b05          	ld	a,(OFST+5,sp)
1550  033a 2708          	jreq	L012
1551  033c 4a            	dec	a
1552  033d 2705          	jreq	L012
1553  033f ae0157        	ldw	x,#343
1554  0342 ad2c          	call	LC008
1555  0344               L012:
1556                     ; 345     if (UART2_Mode != UART2_LIN_MODE_MASTER)
1558  0344 7b01          	ld	a,(OFST+1,sp)
1559  0346 2706          	jreq	L355
1560                     ; 347         UART2->CR6 |=  UART2_CR6_LSLV;
1562  0348 721a5249      	bset	21065,#5
1564  034c 2004          	jra	L555
1565  034e               L355:
1566                     ; 351         UART2->CR6 &= ((uint8_t)~UART2_CR6_LSLV);
1568  034e 721b5249      	bres	21065,#5
1569  0352               L555:
1570                     ; 354     if (UART2_Autosync != UART2_LIN_AUTOSYNC_DISABLE)
1572  0352 7b02          	ld	a,(OFST+2,sp)
1573  0354 2706          	jreq	L755
1574                     ; 356         UART2->CR6 |=  UART2_CR6_LASE ;
1576  0356 72185249      	bset	21065,#4
1578  035a 2004          	jra	L165
1579  035c               L755:
1580                     ; 360         UART2->CR6 &= ((uint8_t)~ UART2_CR6_LASE );
1582  035c 72195249      	bres	21065,#4
1583  0360               L165:
1584                     ; 363     if (UART2_DivUp != UART2_LIN_DIVUP_LBRR1)
1586  0360 7b05          	ld	a,(OFST+5,sp)
1587  0362 2706          	jreq	L365
1588                     ; 365         UART2->CR6 |=  UART2_CR6_LDUM;
1590  0364 721e5249      	bset	21065,#7
1592  0368 2004          	jra	L565
1593  036a               L365:
1594                     ; 369         UART2->CR6 &= ((uint8_t)~ UART2_CR6_LDUM);
1596  036a 721f5249      	bres	21065,#7
1597  036e               L565:
1598                     ; 371 }
1601  036e 85            	popw	x
1602  036f 81            	ret	
1603  0370               LC008:
1604  0370 89            	pushw	x
1605  0371 5f            	clrw	x
1606  0372 89            	pushw	x
1607  0373 ae0008        	ldw	x,#L302
1608  0376 cd0000        	call	_assert_failed
1610  0379 5b04          	addw	sp,#4
1611  037b 81            	ret	
1647                     ; 379 void UART2_LINCmd(FunctionalState NewState)
1647                     ; 380 {
1648                     	switch	.text
1649  037c               _UART2_LINCmd:
1651  037c 88            	push	a
1652       00000000      OFST:	set	0
1655                     ; 381     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1657  037d 4d            	tnz	a
1658  037e 2711          	jreq	L222
1659  0380 4a            	dec	a
1660  0381 270e          	jreq	L222
1661  0383 ae017d        	ldw	x,#381
1662  0386 89            	pushw	x
1663  0387 5f            	clrw	x
1664  0388 89            	pushw	x
1665  0389 ae0008        	ldw	x,#L302
1666  038c cd0000        	call	_assert_failed
1668  038f 5b04          	addw	sp,#4
1669  0391               L222:
1670                     ; 383     if (NewState != DISABLE)
1672  0391 7b01          	ld	a,(OFST+1,sp)
1673  0393 2706          	jreq	L506
1674                     ; 386         UART2->CR3 |= UART2_CR3_LINEN;
1676  0395 721c5246      	bset	21062,#6
1678  0399 2004          	jra	L706
1679  039b               L506:
1680                     ; 391         UART2->CR3 &= ((uint8_t)~UART2_CR3_LINEN);
1682  039b 721d5246      	bres	21062,#6
1683  039f               L706:
1684                     ; 393 }
1687  039f 84            	pop	a
1688  03a0 81            	ret	
1724                     ; 400 void UART2_SmartCardCmd(FunctionalState NewState)
1724                     ; 401 {
1725                     	switch	.text
1726  03a1               _UART2_SmartCardCmd:
1728  03a1 88            	push	a
1729       00000000      OFST:	set	0
1732                     ; 403     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1734  03a2 4d            	tnz	a
1735  03a3 2711          	jreq	L432
1736  03a5 4a            	dec	a
1737  03a6 270e          	jreq	L432
1738  03a8 ae0193        	ldw	x,#403
1739  03ab 89            	pushw	x
1740  03ac 5f            	clrw	x
1741  03ad 89            	pushw	x
1742  03ae ae0008        	ldw	x,#L302
1743  03b1 cd0000        	call	_assert_failed
1745  03b4 5b04          	addw	sp,#4
1746  03b6               L432:
1747                     ; 405     if (NewState != DISABLE)
1749  03b6 7b01          	ld	a,(OFST+1,sp)
1750  03b8 2706          	jreq	L726
1751                     ; 408         UART2->CR5 |= UART2_CR5_SCEN;
1753  03ba 721a5248      	bset	21064,#5
1755  03be 2004          	jra	L136
1756  03c0               L726:
1757                     ; 413         UART2->CR5 &= ((uint8_t)(~UART2_CR5_SCEN));
1759  03c0 721b5248      	bres	21064,#5
1760  03c4               L136:
1761                     ; 415 }
1764  03c4 84            	pop	a
1765  03c5 81            	ret	
1802                     ; 423 void UART2_SmartCardNACKCmd(FunctionalState NewState)
1802                     ; 424 {
1803                     	switch	.text
1804  03c6               _UART2_SmartCardNACKCmd:
1806  03c6 88            	push	a
1807       00000000      OFST:	set	0
1810                     ; 426     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1812  03c7 4d            	tnz	a
1813  03c8 2711          	jreq	L642
1814  03ca 4a            	dec	a
1815  03cb 270e          	jreq	L642
1816  03cd ae01aa        	ldw	x,#426
1817  03d0 89            	pushw	x
1818  03d1 5f            	clrw	x
1819  03d2 89            	pushw	x
1820  03d3 ae0008        	ldw	x,#L302
1821  03d6 cd0000        	call	_assert_failed
1823  03d9 5b04          	addw	sp,#4
1824  03db               L642:
1825                     ; 428     if (NewState != DISABLE)
1827  03db 7b01          	ld	a,(OFST+1,sp)
1828  03dd 2706          	jreq	L156
1829                     ; 431         UART2->CR5 |= UART2_CR5_NACK;
1831  03df 72185248      	bset	21064,#4
1833  03e3 2004          	jra	L356
1834  03e5               L156:
1835                     ; 436         UART2->CR5 &= ((uint8_t)~(UART2_CR5_NACK));
1837  03e5 72195248      	bres	21064,#4
1838  03e9               L356:
1839                     ; 438 }
1842  03e9 84            	pop	a
1843  03ea 81            	ret	
1901                     ; 446 void UART2_WakeUpConfig(UART2_WakeUp_TypeDef UART2_WakeUp)
1901                     ; 447 {
1902                     	switch	.text
1903  03eb               _UART2_WakeUpConfig:
1905  03eb 88            	push	a
1906       00000000      OFST:	set	0
1909                     ; 448     assert_param(IS_UART2_WAKEUP_OK(UART2_WakeUp));
1911  03ec 4d            	tnz	a
1912  03ed 2712          	jreq	L062
1913  03ef a108          	cp	a,#8
1914  03f1 270e          	jreq	L062
1915  03f3 ae01c0        	ldw	x,#448
1916  03f6 89            	pushw	x
1917  03f7 5f            	clrw	x
1918  03f8 89            	pushw	x
1919  03f9 ae0008        	ldw	x,#L302
1920  03fc cd0000        	call	_assert_failed
1922  03ff 5b04          	addw	sp,#4
1923  0401               L062:
1924                     ; 450     UART2->CR1 &= ((uint8_t)~UART2_CR1_WAKE);
1926  0401 72175244      	bres	21060,#3
1927                     ; 451     UART2->CR1 |= (uint8_t)UART2_WakeUp;
1929  0405 c65244        	ld	a,21060
1930  0408 1a01          	or	a,(OFST+1,sp)
1931  040a c75244        	ld	21060,a
1932                     ; 452 }
1935  040d 84            	pop	a
1936  040e 81            	ret	
1973                     ; 460 void UART2_ReceiverWakeUpCmd(FunctionalState NewState)
1973                     ; 461 {
1974                     	switch	.text
1975  040f               _UART2_ReceiverWakeUpCmd:
1977  040f 88            	push	a
1978       00000000      OFST:	set	0
1981                     ; 462     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1983  0410 4d            	tnz	a
1984  0411 2711          	jreq	L272
1985  0413 4a            	dec	a
1986  0414 270e          	jreq	L272
1987  0416 ae01ce        	ldw	x,#462
1988  0419 89            	pushw	x
1989  041a 5f            	clrw	x
1990  041b 89            	pushw	x
1991  041c ae0008        	ldw	x,#L302
1992  041f cd0000        	call	_assert_failed
1994  0422 5b04          	addw	sp,#4
1995  0424               L272:
1996                     ; 464     if (NewState != DISABLE)
1998  0424 7b01          	ld	a,(OFST+1,sp)
1999  0426 2706          	jreq	L127
2000                     ; 467         UART2->CR2 |= UART2_CR2_RWU;
2002  0428 72125245      	bset	21061,#1
2004  042c 2004          	jra	L327
2005  042e               L127:
2006                     ; 472         UART2->CR2 &= ((uint8_t)~UART2_CR2_RWU);
2008  042e 72135245      	bres	21061,#1
2009  0432               L327:
2010                     ; 474 }
2013  0432 84            	pop	a
2014  0433 81            	ret	
2037                     ; 481 uint8_t UART2_ReceiveData8(void)
2037                     ; 482 {
2038                     	switch	.text
2039  0434               _UART2_ReceiveData8:
2043                     ; 483     return ((uint8_t)UART2->DR);
2045  0434 c65241        	ld	a,21057
2048  0437 81            	ret	
2082                     ; 491 uint16_t UART2_ReceiveData9(void)
2082                     ; 492 {
2083                     	switch	.text
2084  0438               _UART2_ReceiveData9:
2086  0438 89            	pushw	x
2087       00000002      OFST:	set	2
2090                     ; 493   uint16_t temp = 0;
2092                     ; 495   temp = ((uint16_t)(((uint16_t)((uint16_t)UART2->CR1 & (uint16_t)UART2_CR1_R8)) << 1));
2094  0439 c65244        	ld	a,21060
2095  043c a480          	and	a,#128
2096  043e 5f            	clrw	x
2097  043f 02            	rlwa	x,a
2098  0440 58            	sllw	x
2099  0441 1f01          	ldw	(OFST-1,sp),x
2101                     ; 497   return (uint16_t)((((uint16_t)UART2->DR) | temp) & ((uint16_t)0x01FF));
2103  0443 c65241        	ld	a,21057
2104  0446 5f            	clrw	x
2105  0447 97            	ld	xl,a
2106  0448 01            	rrwa	x,a
2107  0449 1a02          	or	a,(OFST+0,sp)
2108  044b 01            	rrwa	x,a
2109  044c 1a01          	or	a,(OFST-1,sp)
2110  044e a401          	and	a,#1
2111  0450 01            	rrwa	x,a
2114  0451 5b02          	addw	sp,#2
2115  0453 81            	ret	
2149                     ; 505 void UART2_SendData8(uint8_t Data)
2149                     ; 506 {
2150                     	switch	.text
2151  0454               _UART2_SendData8:
2155                     ; 508     UART2->DR = Data;
2157  0454 c75241        	ld	21057,a
2158                     ; 509 }
2161  0457 81            	ret	
2195                     ; 516 void UART2_SendData9(uint16_t Data)
2195                     ; 517 {
2196                     	switch	.text
2197  0458               _UART2_SendData9:
2199  0458 89            	pushw	x
2200       00000000      OFST:	set	0
2203                     ; 519     UART2->CR1 &= ((uint8_t)~UART2_CR1_T8);                  
2205  0459 721d5244      	bres	21060,#6
2206                     ; 522     UART2->CR1 |= (uint8_t)(((uint8_t)(Data >> 2)) & UART2_CR1_T8); 
2208  045d 54            	srlw	x
2209  045e 54            	srlw	x
2210  045f 9f            	ld	a,xl
2211  0460 a440          	and	a,#64
2212  0462 ca5244        	or	a,21060
2213  0465 c75244        	ld	21060,a
2214                     ; 525     UART2->DR   = (uint8_t)(Data);                    
2216  0468 7b02          	ld	a,(OFST+2,sp)
2217  046a c75241        	ld	21057,a
2218                     ; 527 }
2221  046d 85            	popw	x
2222  046e 81            	ret	
2245                     ; 534 void UART2_SendBreak(void)
2245                     ; 535 {
2246                     	switch	.text
2247  046f               _UART2_SendBreak:
2251                     ; 536     UART2->CR2 |= UART2_CR2_SBK;
2253  046f 72105245      	bset	21061,#0
2254                     ; 537 }
2257  0473 81            	ret	
2292                     ; 544 void UART2_SetAddress(uint8_t UART2_Address)
2292                     ; 545 {
2293                     	switch	.text
2294  0474               _UART2_SetAddress:
2296  0474 88            	push	a
2297       00000000      OFST:	set	0
2300                     ; 547     assert_param(IS_UART2_ADDRESS_OK(UART2_Address));
2302  0475 a110          	cp	a,#16
2303  0477 250e          	jrult	L413
2304  0479 ae0223        	ldw	x,#547
2305  047c 89            	pushw	x
2306  047d 5f            	clrw	x
2307  047e 89            	pushw	x
2308  047f ae0008        	ldw	x,#L302
2309  0482 cd0000        	call	_assert_failed
2311  0485 5b04          	addw	sp,#4
2312  0487               L413:
2313                     ; 550     UART2->CR4 &= ((uint8_t)~UART2_CR4_ADD);
2315  0487 c65247        	ld	a,21063
2316  048a a4f0          	and	a,#240
2317  048c c75247        	ld	21063,a
2318                     ; 552     UART2->CR4 |= UART2_Address;
2320  048f c65247        	ld	a,21063
2321  0492 1a01          	or	a,(OFST+1,sp)
2322  0494 c75247        	ld	21063,a
2323                     ; 553 }
2326  0497 84            	pop	a
2327  0498 81            	ret	
2361                     ; 561 void UART2_SetGuardTime(uint8_t UART2_GuardTime)
2361                     ; 562 {
2362                     	switch	.text
2363  0499               _UART2_SetGuardTime:
2367                     ; 564     UART2->GTR = UART2_GuardTime;
2369  0499 c7524a        	ld	21066,a
2370                     ; 565 }
2373  049c 81            	ret	
2407                     ; 589 void UART2_SetPrescaler(uint8_t UART2_Prescaler)
2407                     ; 590 {
2408                     	switch	.text
2409  049d               _UART2_SetPrescaler:
2413                     ; 592     UART2->PSCR = UART2_Prescaler;
2415  049d c7524b        	ld	21067,a
2416                     ; 593 }
2419  04a0 81            	ret	
2577                     ; 601 FlagStatus UART2_GetFlagStatus(UART2_Flag_TypeDef UART2_FLAG)
2577                     ; 602 {
2578                     	switch	.text
2579  04a1               _UART2_GetFlagStatus:
2581  04a1 89            	pushw	x
2582  04a2 88            	push	a
2583       00000001      OFST:	set	1
2586                     ; 603     FlagStatus status = RESET;
2588                     ; 606     assert_param(IS_UART2_FLAG_OK(UART2_FLAG));
2590  04a3 a30080        	cpw	x,#128
2591  04a6 2745          	jreq	L233
2592  04a8 a30040        	cpw	x,#64
2593  04ab 2740          	jreq	L233
2594  04ad a30020        	cpw	x,#32
2595  04b0 273b          	jreq	L233
2596  04b2 a30010        	cpw	x,#16
2597  04b5 2736          	jreq	L233
2598  04b7 a30008        	cpw	x,#8
2599  04ba 2731          	jreq	L233
2600  04bc a30004        	cpw	x,#4
2601  04bf 272c          	jreq	L233
2602  04c1 a30002        	cpw	x,#2
2603  04c4 2727          	jreq	L233
2604  04c6 a30001        	cpw	x,#1
2605  04c9 2722          	jreq	L233
2606  04cb a30101        	cpw	x,#257
2607  04ce 271d          	jreq	L233
2608  04d0 a30301        	cpw	x,#769
2609  04d3 2718          	jreq	L233
2610  04d5 a30302        	cpw	x,#770
2611  04d8 2713          	jreq	L233
2612  04da a30210        	cpw	x,#528
2613  04dd 270e          	jreq	L233
2614  04df ae025e        	ldw	x,#606
2615  04e2 89            	pushw	x
2616  04e3 5f            	clrw	x
2617  04e4 89            	pushw	x
2618  04e5 ae0008        	ldw	x,#L302
2619  04e8 cd0000        	call	_assert_failed
2621  04eb 5b04          	addw	sp,#4
2622  04ed               L233:
2623                     ; 609     if (UART2_FLAG == UART2_FLAG_LBDF)
2625  04ed 1e02          	ldw	x,(OFST+1,sp)
2626  04ef a30210        	cpw	x,#528
2627  04f2 2609          	jrne	L7511
2628                     ; 611         if ((UART2->CR4 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
2630  04f4 c65247        	ld	a,21063
2631  04f7 1503          	bcp	a,(OFST+2,sp)
2632  04f9 2725          	jreq	L3021
2633                     ; 614             status = SET;
2635  04fb 201f          	jp	LC010
2636                     ; 619             status = RESET;
2637  04fd               L7511:
2638                     ; 622     else if (UART2_FLAG == UART2_FLAG_SBK)
2640  04fd a30101        	cpw	x,#257
2641  0500 2609          	jrne	L7611
2642                     ; 624         if ((UART2->CR2 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
2644  0502 c65245        	ld	a,21061
2645  0505 1503          	bcp	a,(OFST+2,sp)
2646  0507 2717          	jreq	L3021
2647                     ; 627             status = SET;
2649  0509 2011          	jp	LC010
2650                     ; 632             status = RESET;
2651  050b               L7611:
2652                     ; 635     else if ((UART2_FLAG == UART2_FLAG_LHDF) || (UART2_FLAG == UART2_FLAG_LSF))
2654  050b a30302        	cpw	x,#770
2655  050e 2705          	jreq	L1021
2657  0510 a30301        	cpw	x,#769
2658  0513 260f          	jrne	L7711
2659  0515               L1021:
2660                     ; 637         if ((UART2->CR6 & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
2662  0515 c65249        	ld	a,21065
2663  0518 1503          	bcp	a,(OFST+2,sp)
2664  051a 2704          	jreq	L3021
2665                     ; 640             status = SET;
2667  051c               LC010:
2671  051c a601          	ld	a,#1
2674  051e 2001          	jra	L5611
2675  0520               L3021:
2676                     ; 645             status = RESET;
2681  0520 4f            	clr	a
2683  0521               L5611:
2684                     ; 663     return  status;
2688  0521 5b03          	addw	sp,#3
2689  0523 81            	ret	
2690  0524               L7711:
2691                     ; 650         if ((UART2->SR & (uint8_t)UART2_FLAG) != (uint8_t)0x00)
2693  0524 c65240        	ld	a,21056
2694  0527 1503          	bcp	a,(OFST+2,sp)
2695  0529 27f5          	jreq	L3021
2696                     ; 653             status = SET;
2698  052b 20ef          	jp	LC010
2699                     ; 658             status = RESET;
2735                     ; 693 void UART2_ClearFlag(UART2_Flag_TypeDef UART2_FLAG)
2735                     ; 694 {
2736                     	switch	.text
2737  052d               _UART2_ClearFlag:
2739  052d 89            	pushw	x
2740       00000000      OFST:	set	0
2743                     ; 695     assert_param(IS_UART2_CLEAR_FLAG_OK(UART2_FLAG));
2745  052e a30020        	cpw	x,#32
2746  0531 271d          	jreq	L443
2747  0533 a30302        	cpw	x,#770
2748  0536 2718          	jreq	L443
2749  0538 a30301        	cpw	x,#769
2750  053b 2713          	jreq	L443
2751  053d a30210        	cpw	x,#528
2752  0540 270e          	jreq	L443
2753  0542 ae02b7        	ldw	x,#695
2754  0545 89            	pushw	x
2755  0546 5f            	clrw	x
2756  0547 89            	pushw	x
2757  0548 ae0008        	ldw	x,#L302
2758  054b cd0000        	call	_assert_failed
2760  054e 5b04          	addw	sp,#4
2761  0550               L443:
2762                     ; 698     if (UART2_FLAG == UART2_FLAG_RXNE)
2764  0550 1e01          	ldw	x,(OFST+1,sp)
2765  0552 a30020        	cpw	x,#32
2766  0555 2606          	jrne	L3321
2767                     ; 700         UART2->SR = (uint8_t)~(UART2_SR_RXNE);
2769  0557 35df5240      	mov	21056,#223
2771  055b 201a          	jra	L5321
2772  055d               L3321:
2773                     ; 703     else if (UART2_FLAG == UART2_FLAG_LBDF)
2775  055d a30210        	cpw	x,#528
2776  0560 2606          	jrne	L7321
2777                     ; 705         UART2->CR4 &= (uint8_t)(~UART2_CR4_LBDF);
2779  0562 72195247      	bres	21063,#4
2781  0566 200f          	jra	L5321
2782  0568               L7321:
2783                     ; 708     else if (UART2_FLAG == UART2_FLAG_LHDF)
2785  0568 a30302        	cpw	x,#770
2786  056b 2606          	jrne	L3421
2787                     ; 710         UART2->CR6 &= (uint8_t)(~UART2_CR6_LHDF);
2789  056d 72135249      	bres	21065,#1
2791  0571 2004          	jra	L5321
2792  0573               L3421:
2793                     ; 715         UART2->CR6 &= (uint8_t)(~UART2_CR6_LSF);
2795  0573 72115249      	bres	21065,#0
2796  0577               L5321:
2797                     ; 717 }
2800  0577 85            	popw	x
2801  0578 81            	ret	
2884                     ; 732 ITStatus UART2_GetITStatus(UART2_IT_TypeDef UART2_IT)
2884                     ; 733 {
2885                     	switch	.text
2886  0579               _UART2_GetITStatus:
2888  0579 89            	pushw	x
2889  057a 89            	pushw	x
2890       00000002      OFST:	set	2
2893                     ; 734     ITStatus pendingbitstatus = RESET;
2895                     ; 735     uint8_t itpos = 0;
2897                     ; 736     uint8_t itmask1 = 0;
2899                     ; 737     uint8_t itmask2 = 0;
2901                     ; 738     uint8_t enablestatus = 0;
2903                     ; 741     assert_param(IS_UART2_GET_IT_OK(UART2_IT));
2905  057b a30277        	cpw	x,#631
2906  057e 2731          	jreq	L653
2907  0580 a30266        	cpw	x,#614
2908  0583 272c          	jreq	L653
2909  0585 a30255        	cpw	x,#597
2910  0588 2727          	jreq	L653
2911  058a a30244        	cpw	x,#580
2912  058d 2722          	jreq	L653
2913  058f a30235        	cpw	x,#565
2914  0592 271d          	jreq	L653
2915  0594 a30346        	cpw	x,#838
2916  0597 2718          	jreq	L653
2917  0599 a30412        	cpw	x,#1042
2918  059c 2713          	jreq	L653
2919  059e a30100        	cpw	x,#256
2920  05a1 270e          	jreq	L653
2921  05a3 ae02e5        	ldw	x,#741
2922  05a6 89            	pushw	x
2923  05a7 5f            	clrw	x
2924  05a8 89            	pushw	x
2925  05a9 ae0008        	ldw	x,#L302
2926  05ac cd0000        	call	_assert_failed
2928  05af 5b04          	addw	sp,#4
2929  05b1               L653:
2930                     ; 744     itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART2_IT & (uint8_t)0x0F));
2932  05b1 7b04          	ld	a,(OFST+2,sp)
2933  05b3 a40f          	and	a,#15
2934  05b5 5f            	clrw	x
2935  05b6 97            	ld	xl,a
2936  05b7 a601          	ld	a,#1
2937  05b9 5d            	tnzw	x
2938  05ba 2704          	jreq	L263
2939  05bc               L463:
2940  05bc 48            	sll	a
2941  05bd 5a            	decw	x
2942  05be 26fc          	jrne	L463
2943  05c0               L263:
2944  05c0 6b01          	ld	(OFST-1,sp),a
2946                     ; 746     itmask1 = (uint8_t)((uint8_t)UART2_IT >> (uint8_t)4);
2948  05c2 7b04          	ld	a,(OFST+2,sp)
2949  05c4 4e            	swap	a
2950  05c5 a40f          	and	a,#15
2951  05c7 6b02          	ld	(OFST+0,sp),a
2953                     ; 748     itmask2 = (uint8_t)((uint8_t)1 << itmask1);
2955  05c9 5f            	clrw	x
2956  05ca 97            	ld	xl,a
2957  05cb a601          	ld	a,#1
2958  05cd 5d            	tnzw	x
2959  05ce 2704          	jreq	L663
2960  05d0               L073:
2961  05d0 48            	sll	a
2962  05d1 5a            	decw	x
2963  05d2 26fc          	jrne	L073
2964  05d4               L663:
2965  05d4 6b02          	ld	(OFST+0,sp),a
2967                     ; 751     if (UART2_IT == UART2_IT_PE)
2969  05d6 1e03          	ldw	x,(OFST+1,sp)
2970  05d8 a30100        	cpw	x,#256
2971  05db 260c          	jrne	L1131
2972                     ; 754         enablestatus = (uint8_t)((uint8_t)UART2->CR1 & itmask2);
2974  05dd c65244        	ld	a,21060
2975  05e0 1402          	and	a,(OFST+0,sp)
2976  05e2 6b02          	ld	(OFST+0,sp),a
2978                     ; 757         if (((UART2->SR & itpos) != (uint8_t)0x00) && enablestatus)
2980  05e4 c65240        	ld	a,21056
2982                     ; 760             pendingbitstatus = SET;
2984  05e7 2020          	jp	LC013
2985                     ; 765             pendingbitstatus = RESET;
2986  05e9               L1131:
2987                     ; 768     else if (UART2_IT == UART2_IT_LBDF)
2989  05e9 a30346        	cpw	x,#838
2990  05ec 260c          	jrne	L1231
2991                     ; 771         enablestatus = (uint8_t)((uint8_t)UART2->CR4 & itmask2);
2993  05ee c65247        	ld	a,21063
2994  05f1 1402          	and	a,(OFST+0,sp)
2995  05f3 6b02          	ld	(OFST+0,sp),a
2997                     ; 773         if (((UART2->CR4 & itpos) != (uint8_t)0x00) && enablestatus)
2999  05f5 c65247        	ld	a,21063
3001                     ; 776             pendingbitstatus = SET;
3003  05f8 200f          	jp	LC013
3004                     ; 781             pendingbitstatus = RESET;
3005  05fa               L1231:
3006                     ; 784     else if (UART2_IT == UART2_IT_LHDF)
3008  05fa a30412        	cpw	x,#1042
3009  05fd 2616          	jrne	L1331
3010                     ; 787         enablestatus = (uint8_t)((uint8_t)UART2->CR6 & itmask2);
3012  05ff c65249        	ld	a,21065
3013  0602 1402          	and	a,(OFST+0,sp)
3014  0604 6b02          	ld	(OFST+0,sp),a
3016                     ; 789         if (((UART2->CR6 & itpos) != (uint8_t)0x00) && enablestatus)
3018  0606 c65249        	ld	a,21065
3020  0609               LC013:
3021  0609 1501          	bcp	a,(OFST-1,sp)
3022  060b 271a          	jreq	L1431
3023  060d 7b02          	ld	a,(OFST+0,sp)
3024  060f 2716          	jreq	L1431
3025                     ; 792             pendingbitstatus = SET;
3027  0611               LC012:
3031  0611 a601          	ld	a,#1
3034  0613 2013          	jra	L7131
3035                     ; 797             pendingbitstatus = RESET;
3036  0615               L1331:
3037                     ; 803         enablestatus = (uint8_t)((uint8_t)UART2->CR2 & itmask2);
3039  0615 c65245        	ld	a,21061
3040  0618 1402          	and	a,(OFST+0,sp)
3041  061a 6b02          	ld	(OFST+0,sp),a
3043                     ; 805         if (((UART2->SR & itpos) != (uint8_t)0x00) && enablestatus)
3045  061c c65240        	ld	a,21056
3046  061f 1501          	bcp	a,(OFST-1,sp)
3047  0621 2704          	jreq	L1431
3049  0623 7b02          	ld	a,(OFST+0,sp)
3050                     ; 808             pendingbitstatus = SET;
3052  0625 26ea          	jrne	LC012
3053  0627               L1431:
3054                     ; 813             pendingbitstatus = RESET;
3059  0627 4f            	clr	a
3061  0628               L7131:
3062                     ; 817     return  pendingbitstatus;
3066  0628 5b04          	addw	sp,#4
3067  062a 81            	ret	
3104                     ; 846 void UART2_ClearITPendingBit(UART2_IT_TypeDef UART2_IT)
3104                     ; 847 {
3105                     	switch	.text
3106  062b               _UART2_ClearITPendingBit:
3108  062b 89            	pushw	x
3109       00000000      OFST:	set	0
3112                     ; 848     assert_param(IS_UART2_CLEAR_IT_OK(UART2_IT));
3114  062c a30255        	cpw	x,#597
3115  062f 2718          	jreq	L004
3116  0631 a30412        	cpw	x,#1042
3117  0634 2713          	jreq	L004
3118  0636 a30346        	cpw	x,#838
3119  0639 270e          	jreq	L004
3120  063b ae0350        	ldw	x,#848
3121  063e 89            	pushw	x
3122  063f 5f            	clrw	x
3123  0640 89            	pushw	x
3124  0641 ae0008        	ldw	x,#L302
3125  0644 cd0000        	call	_assert_failed
3127  0647 5b04          	addw	sp,#4
3128  0649               L004:
3129                     ; 851     if (UART2_IT == UART2_IT_RXNE)
3131  0649 1e01          	ldw	x,(OFST+1,sp)
3132  064b a30255        	cpw	x,#597
3133  064e 2606          	jrne	L3631
3134                     ; 853         UART2->SR = (uint8_t)~(UART2_SR_RXNE);
3136  0650 35df5240      	mov	21056,#223
3138  0654 200f          	jra	L5631
3139  0656               L3631:
3140                     ; 856     else if (UART2_IT == UART2_IT_LBDF)
3142  0656 a30346        	cpw	x,#838
3143  0659 2606          	jrne	L7631
3144                     ; 858         UART2->CR4 &= (uint8_t)~(UART2_CR4_LBDF);
3146  065b 72195247      	bres	21063,#4
3148  065f 2004          	jra	L5631
3149  0661               L7631:
3150                     ; 863         UART2->CR6 &= (uint8_t)(~UART2_CR6_LHDF);
3152  0661 72135249      	bres	21065,#1
3153  0665               L5631:
3154                     ; 865 }
3157  0665 85            	popw	x
3158  0666 81            	ret	
3171                     	xdef	_UART2_ClearITPendingBit
3172                     	xdef	_UART2_GetITStatus
3173                     	xdef	_UART2_ClearFlag
3174                     	xdef	_UART2_GetFlagStatus
3175                     	xdef	_UART2_SetPrescaler
3176                     	xdef	_UART2_SetGuardTime
3177                     	xdef	_UART2_SetAddress
3178                     	xdef	_UART2_SendBreak
3179                     	xdef	_UART2_SendData9
3180                     	xdef	_UART2_SendData8
3181                     	xdef	_UART2_ReceiveData9
3182                     	xdef	_UART2_ReceiveData8
3183                     	xdef	_UART2_ReceiverWakeUpCmd
3184                     	xdef	_UART2_WakeUpConfig
3185                     	xdef	_UART2_SmartCardNACKCmd
3186                     	xdef	_UART2_SmartCardCmd
3187                     	xdef	_UART2_LINCmd
3188                     	xdef	_UART2_LINConfig
3189                     	xdef	_UART2_LINBreakDetectionConfig
3190                     	xdef	_UART2_IrDACmd
3191                     	xdef	_UART2_IrDAConfig
3192                     	xdef	_UART2_ITConfig
3193                     	xdef	_UART2_Cmd
3194                     	xdef	_UART2_Init
3195                     	xdef	_UART2_DeInit
3196                     	xref	_assert_failed
3197                     	xref	_CLK_GetClockFreq
3198                     	switch	.const
3199  0008               L302:
3200  0008 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
3201  001a 6965735c7374  	dc.b	"ies\stm8s_stdperip"
3202  002c 685f64726976  	dc.b	"h_driver\src\stm8s"
3203  003e 5f7561727432  	dc.b	"_uart2.c",0
3204                     	xref.b	c_lreg
3205                     	xref.b	c_x
3225                     	xref	c_lsub
3226                     	xref	c_smul
3227                     	xref	c_ludv
3228                     	xref	c_rtol
3229                     	xref	c_llsh
3230                     	xref	c_lcmp
3231                     	xref	c_ltor
3232                     	end
