   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.8.1 - 09 Jan 2023
   3                     ; Generator (Limited) V4.5.5 - 08 Nov 2022
   4                     ; Optimizer V4.5.5 - 08 Nov 2022
  48                     ; 44 void SPI_DeInit(void)
  48                     ; 45 {
  50                     	switch	.text
  51  0000               _SPI_DeInit:
  55                     ; 46     SPI->CR1    = SPI_CR1_RESET_VALUE;
  57  0000 725f5200      	clr	20992
  58                     ; 47     SPI->CR2    = SPI_CR2_RESET_VALUE;
  60  0004 725f5201      	clr	20993
  61                     ; 48     SPI->ICR    = SPI_ICR_RESET_VALUE;
  63  0008 725f5202      	clr	20994
  64                     ; 49     SPI->SR     = SPI_SR_RESET_VALUE;
  66  000c 35025203      	mov	20995,#2
  67                     ; 50     SPI->CRCPR  = SPI_CRCPR_RESET_VALUE;
  69  0010 35075205      	mov	20997,#7
  70                     ; 51 }
  73  0014 81            	ret	
 390                     ; 72 void SPI_Init(SPI_FirstBit_TypeDef FirstBit, SPI_BaudRatePrescaler_TypeDef BaudRatePrescaler, SPI_Mode_TypeDef Mode, SPI_ClockPolarity_TypeDef ClockPolarity, SPI_ClockPhase_TypeDef ClockPhase, SPI_DataDirection_TypeDef Data_Direction, SPI_NSS_TypeDef Slave_Management, uint8_t CRCPolynomial)
 390                     ; 73 {
 391                     	switch	.text
 392  0015               _SPI_Init:
 394  0015 89            	pushw	x
 395  0016 88            	push	a
 396       00000001      OFST:	set	1
 399                     ; 75     assert_param(IS_SPI_FIRSTBIT_OK(FirstBit));
 401  0017 9e            	ld	a,xh
 402  0018 4d            	tnz	a
 403  0019 270b          	jreq	L41
 404  001b 9e            	ld	a,xh
 405  001c a180          	cp	a,#128
 406  001e 2706          	jreq	L41
 407  0020 ae004b        	ldw	x,#75
 408  0023 cd00d5        	call	LC001
 409  0026               L41:
 410                     ; 76     assert_param(IS_SPI_BAUDRATE_PRESCALER_OK(BaudRatePrescaler));
 412  0026 7b03          	ld	a,(OFST+2,sp)
 413  0028 2722          	jreq	L42
 414  002a a108          	cp	a,#8
 415  002c 271e          	jreq	L42
 416  002e a110          	cp	a,#16
 417  0030 271a          	jreq	L42
 418  0032 a118          	cp	a,#24
 419  0034 2716          	jreq	L42
 420  0036 a120          	cp	a,#32
 421  0038 2712          	jreq	L42
 422  003a a128          	cp	a,#40
 423  003c 270e          	jreq	L42
 424  003e a130          	cp	a,#48
 425  0040 270a          	jreq	L42
 426  0042 a138          	cp	a,#56
 427  0044 2706          	jreq	L42
 428  0046 ae004c        	ldw	x,#76
 429  0049 cd00d5        	call	LC001
 430  004c               L42:
 431                     ; 77     assert_param(IS_SPI_MODE_OK(Mode));
 433  004c 7b06          	ld	a,(OFST+5,sp)
 434  004e a104          	cp	a,#4
 435  0050 2708          	jreq	L43
 436  0052 4d            	tnz	a
 437  0053 2705          	jreq	L43
 438  0055 ae004d        	ldw	x,#77
 439  0058 ad7b          	call	LC001
 440  005a               L43:
 441                     ; 78     assert_param(IS_SPI_POLARITY_OK(ClockPolarity));
 443  005a 7b07          	ld	a,(OFST+6,sp)
 444  005c 2709          	jreq	L44
 445  005e a102          	cp	a,#2
 446  0060 2705          	jreq	L44
 447  0062 ae004e        	ldw	x,#78
 448  0065 ad6e          	call	LC001
 449  0067               L44:
 450                     ; 79     assert_param(IS_SPI_PHASE_OK(ClockPhase));
 452  0067 7b08          	ld	a,(OFST+7,sp)
 453  0069 2708          	jreq	L45
 454  006b 4a            	dec	a
 455  006c 2705          	jreq	L45
 456  006e ae004f        	ldw	x,#79
 457  0071 ad62          	call	LC001
 458  0073               L45:
 459                     ; 80     assert_param(IS_SPI_DATA_DIRECTION_OK(Data_Direction));
 461  0073 7b09          	ld	a,(OFST+8,sp)
 462  0075 2711          	jreq	L46
 463  0077 a104          	cp	a,#4
 464  0079 270d          	jreq	L46
 465  007b a180          	cp	a,#128
 466  007d 2709          	jreq	L46
 467  007f a1c0          	cp	a,#192
 468  0081 2705          	jreq	L46
 469  0083 ae0050        	ldw	x,#80
 470  0086 ad4d          	call	LC001
 471  0088               L46:
 472                     ; 81     assert_param(IS_SPI_SLAVEMANAGEMENT_OK(Slave_Management));
 474  0088 7b0a          	ld	a,(OFST+9,sp)
 475  008a a102          	cp	a,#2
 476  008c 2708          	jreq	L47
 477  008e 4d            	tnz	a
 478  008f 2705          	jreq	L47
 479  0091 ae0051        	ldw	x,#81
 480  0094 ad3f          	call	LC001
 481  0096               L47:
 482                     ; 82     assert_param(IS_SPI_CRC_POLYNOMIAL_OK(CRCPolynomial));
 484  0096 7b0b          	ld	a,(OFST+10,sp)
 485  0098 2605          	jrne	L201
 486  009a ae0052        	ldw	x,#82
 487  009d ad36          	call	LC001
 488  009f               L201:
 489                     ; 85     SPI->CR1 = (uint8_t)((uint8_t)((uint8_t)FirstBit | BaudRatePrescaler) |
 489                     ; 86                     (uint8_t)((uint8_t)ClockPolarity | ClockPhase));
 491  009f 7b07          	ld	a,(OFST+6,sp)
 492  00a1 1a08          	or	a,(OFST+7,sp)
 493  00a3 6b01          	ld	(OFST+0,sp),a
 495  00a5 7b02          	ld	a,(OFST+1,sp)
 496  00a7 1a03          	or	a,(OFST+2,sp)
 497  00a9 1a01          	or	a,(OFST+0,sp)
 498  00ab c75200        	ld	20992,a
 499                     ; 89     SPI->CR2 = (uint8_t)((uint8_t)(Data_Direction) | (uint8_t)(Slave_Management));
 501  00ae 7b09          	ld	a,(OFST+8,sp)
 502  00b0 1a0a          	or	a,(OFST+9,sp)
 503  00b2 c75201        	ld	20993,a
 504                     ; 91     if (Mode == SPI_MODE_MASTER)
 506  00b5 7b06          	ld	a,(OFST+5,sp)
 507  00b7 a104          	cp	a,#4
 508  00b9 2606          	jrne	L502
 509                     ; 93         SPI->CR2 |= (uint8_t)SPI_CR2_SSI;
 511  00bb 72105201      	bset	20993,#0
 513  00bf 2004          	jra	L702
 514  00c1               L502:
 515                     ; 97         SPI->CR2 &= (uint8_t)~(SPI_CR2_SSI);
 517  00c1 72115201      	bres	20993,#0
 518  00c5               L702:
 519                     ; 101     SPI->CR1 |= (uint8_t)(Mode);
 521  00c5 c65200        	ld	a,20992
 522  00c8 1a06          	or	a,(OFST+5,sp)
 523  00ca c75200        	ld	20992,a
 524                     ; 104     SPI->CRCPR = (uint8_t)CRCPolynomial;
 526  00cd 7b0b          	ld	a,(OFST+10,sp)
 527  00cf c75205        	ld	20997,a
 528                     ; 105 }
 531  00d2 5b03          	addw	sp,#3
 532  00d4 81            	ret	
 533  00d5               LC001:
 534  00d5 89            	pushw	x
 535  00d6 5f            	clrw	x
 536  00d7 89            	pushw	x
 537  00d8 ae0000        	ldw	x,#L302
 538  00db cd0000        	call	_assert_failed
 540  00de 5b04          	addw	sp,#4
 541  00e0 81            	ret	
 597                     ; 113 void SPI_Cmd(FunctionalState NewState)
 597                     ; 114 {
 598                     	switch	.text
 599  00e1               _SPI_Cmd:
 601  00e1 88            	push	a
 602       00000000      OFST:	set	0
 605                     ; 116     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 607  00e2 4d            	tnz	a
 608  00e3 2711          	jreq	L411
 609  00e5 4a            	dec	a
 610  00e6 270e          	jreq	L411
 611  00e8 ae0074        	ldw	x,#116
 612  00eb 89            	pushw	x
 613  00ec 5f            	clrw	x
 614  00ed 89            	pushw	x
 615  00ee ae0000        	ldw	x,#L302
 616  00f1 cd0000        	call	_assert_failed
 618  00f4 5b04          	addw	sp,#4
 619  00f6               L411:
 620                     ; 118     if (NewState != DISABLE)
 622  00f6 7b01          	ld	a,(OFST+1,sp)
 623  00f8 2706          	jreq	L732
 624                     ; 120         SPI->CR1 |= SPI_CR1_SPE; /* Enable the SPI peripheral*/
 626  00fa 721c5200      	bset	20992,#6
 628  00fe 2004          	jra	L142
 629  0100               L732:
 630                     ; 124         SPI->CR1 &= (uint8_t)(~SPI_CR1_SPE); /* Disable the SPI peripheral*/
 632  0100 721d5200      	bres	20992,#6
 633  0104               L142:
 634                     ; 126 }
 637  0104 84            	pop	a
 638  0105 81            	ret	
 748                     ; 135 void SPI_ITConfig(SPI_IT_TypeDef SPI_IT, FunctionalState NewState)
 748                     ; 136 {
 749                     	switch	.text
 750  0106               _SPI_ITConfig:
 752  0106 89            	pushw	x
 753  0107 88            	push	a
 754       00000001      OFST:	set	1
 757                     ; 137     uint8_t itpos = 0;
 759                     ; 139     assert_param(IS_SPI_CONFIG_IT_OK(SPI_IT));
 761  0108 9e            	ld	a,xh
 762  0109 a117          	cp	a,#23
 763  010b 2714          	jreq	L621
 764  010d 9e            	ld	a,xh
 765  010e a106          	cp	a,#6
 766  0110 270f          	jreq	L621
 767  0112 9e            	ld	a,xh
 768  0113 a105          	cp	a,#5
 769  0115 270a          	jreq	L621
 770  0117 9e            	ld	a,xh
 771  0118 a134          	cp	a,#52
 772  011a 2705          	jreq	L621
 773  011c ae008b        	ldw	x,#139
 774  011f ad32          	call	LC002
 775  0121               L621:
 776                     ; 140     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 778  0121 7b03          	ld	a,(OFST+2,sp)
 779  0123 2708          	jreq	L631
 780  0125 4a            	dec	a
 781  0126 2705          	jreq	L631
 782  0128 ae008c        	ldw	x,#140
 783  012b ad26          	call	LC002
 784  012d               L631:
 785                     ; 143     itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)SPI_IT & (uint8_t)0x0F));
 787  012d 7b02          	ld	a,(OFST+1,sp)
 788  012f a40f          	and	a,#15
 789  0131 5f            	clrw	x
 790  0132 97            	ld	xl,a
 791  0133 a601          	ld	a,#1
 792  0135 5d            	tnzw	x
 793  0136 2704          	jreq	L241
 794  0138               L441:
 795  0138 48            	sll	a
 796  0139 5a            	decw	x
 797  013a 26fc          	jrne	L441
 798  013c               L241:
 799  013c 6b01          	ld	(OFST+0,sp),a
 801                     ; 145     if (NewState != DISABLE)
 803  013e 0d03          	tnz	(OFST+2,sp)
 804  0140 2707          	jreq	L313
 805                     ; 147         SPI->ICR |= itpos; /* Enable interrupt*/
 807  0142 c65202        	ld	a,20994
 808  0145 1a01          	or	a,(OFST+0,sp)
 810  0147 2004          	jra	L513
 811  0149               L313:
 812                     ; 151         SPI->ICR &= (uint8_t)(~itpos); /* Disable interrupt*/
 814  0149 43            	cpl	a
 815  014a c45202        	and	a,20994
 816  014d               L513:
 817  014d c75202        	ld	20994,a
 818                     ; 153 }
 821  0150 5b03          	addw	sp,#3
 822  0152 81            	ret	
 823  0153               LC002:
 824  0153 89            	pushw	x
 825  0154 5f            	clrw	x
 826  0155 89            	pushw	x
 827  0156 ae0000        	ldw	x,#L302
 828  0159 cd0000        	call	_assert_failed
 830  015c 5b04          	addw	sp,#4
 831  015e 81            	ret	
 865                     ; 159 void SPI_SendData(uint8_t Data)
 865                     ; 160 {
 866                     	switch	.text
 867  015f               _SPI_SendData:
 871                     ; 161     SPI->DR = Data; /* Write in the DR register the data to be sent*/
 873  015f c75204        	ld	20996,a
 874                     ; 162 }
 877  0162 81            	ret	
 900                     ; 169 uint8_t SPI_ReceiveData(void)
 900                     ; 170 {
 901                     	switch	.text
 902  0163               _SPI_ReceiveData:
 906                     ; 171     return ((uint8_t)SPI->DR); /* Return the data in the DR register*/
 908  0163 c65204        	ld	a,20996
 911  0166 81            	ret	
 948                     ; 180 void SPI_NSSInternalSoftwareCmd(FunctionalState NewState)
 948                     ; 181 {
 949                     	switch	.text
 950  0167               _SPI_NSSInternalSoftwareCmd:
 952  0167 88            	push	a
 953       00000000      OFST:	set	0
 956                     ; 183     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 958  0168 4d            	tnz	a
 959  0169 2711          	jreq	L061
 960  016b 4a            	dec	a
 961  016c 270e          	jreq	L061
 962  016e ae00b7        	ldw	x,#183
 963  0171 89            	pushw	x
 964  0172 5f            	clrw	x
 965  0173 89            	pushw	x
 966  0174 ae0000        	ldw	x,#L302
 967  0177 cd0000        	call	_assert_failed
 969  017a 5b04          	addw	sp,#4
 970  017c               L061:
 971                     ; 185     if (NewState != DISABLE)
 973  017c 7b01          	ld	a,(OFST+1,sp)
 974  017e 2706          	jreq	L363
 975                     ; 187         SPI->CR2 |= SPI_CR2_SSI; /* Set NSS pin internally by software*/
 977  0180 72105201      	bset	20993,#0
 979  0184 2004          	jra	L563
 980  0186               L363:
 981                     ; 191         SPI->CR2 &= (uint8_t)(~SPI_CR2_SSI); /* Reset NSS pin internally by software*/
 983  0186 72115201      	bres	20993,#0
 984  018a               L563:
 985                     ; 193 }
 988  018a 84            	pop	a
 989  018b 81            	ret	
1012                     ; 200 void SPI_TransmitCRC(void)
1012                     ; 201 {
1013                     	switch	.text
1014  018c               _SPI_TransmitCRC:
1018                     ; 202     SPI->CR2 |= SPI_CR2_CRCNEXT; /* Enable the CRC transmission*/
1020  018c 72185201      	bset	20993,#4
1021                     ; 203 }
1024  0190 81            	ret	
1061                     ; 211 void SPI_CalculateCRCCmd(FunctionalState NewState)
1061                     ; 212 {
1062                     	switch	.text
1063  0191               _SPI_CalculateCRCCmd:
1065  0191 88            	push	a
1066       00000000      OFST:	set	0
1069                     ; 214     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1071  0192 4d            	tnz	a
1072  0193 2711          	jreq	L471
1073  0195 4a            	dec	a
1074  0196 270e          	jreq	L471
1075  0198 ae00d6        	ldw	x,#214
1076  019b 89            	pushw	x
1077  019c 5f            	clrw	x
1078  019d 89            	pushw	x
1079  019e ae0000        	ldw	x,#L302
1080  01a1 cd0000        	call	_assert_failed
1082  01a4 5b04          	addw	sp,#4
1083  01a6               L471:
1084                     ; 216     if (NewState != DISABLE)
1086  01a6 7b01          	ld	a,(OFST+1,sp)
1087  01a8 2706          	jreq	L514
1088                     ; 218         SPI->CR2 |= SPI_CR2_CRCEN; /* Enable the CRC calculation*/
1090  01aa 721a5201      	bset	20993,#5
1092  01ae 2004          	jra	L714
1093  01b0               L514:
1094                     ; 222         SPI->CR2 &= (uint8_t)(~SPI_CR2_CRCEN); /* Disable the CRC calculation*/
1096  01b0 721b5201      	bres	20993,#5
1097  01b4               L714:
1098                     ; 224 }
1101  01b4 84            	pop	a
1102  01b5 81            	ret	
1167                     ; 231 uint8_t SPI_GetCRC(SPI_CRC_TypeDef SPI_CRC)
1167                     ; 232 {
1168                     	switch	.text
1169  01b6               _SPI_GetCRC:
1171  01b6 88            	push	a
1172  01b7 88            	push	a
1173       00000001      OFST:	set	1
1176                     ; 233     uint8_t crcreg = 0;
1178                     ; 236     assert_param(IS_SPI_CRC_OK(SPI_CRC));
1180  01b8 a101          	cp	a,#1
1181  01ba 2711          	jreq	L602
1182  01bc 4d            	tnz	a
1183  01bd 270e          	jreq	L602
1184  01bf ae00ec        	ldw	x,#236
1185  01c2 89            	pushw	x
1186  01c3 5f            	clrw	x
1187  01c4 89            	pushw	x
1188  01c5 ae0000        	ldw	x,#L302
1189  01c8 cd0000        	call	_assert_failed
1191  01cb 5b04          	addw	sp,#4
1192  01cd               L602:
1193                     ; 238     if (SPI_CRC != SPI_CRC_RX)
1195  01cd 7b02          	ld	a,(OFST+1,sp)
1196  01cf 2705          	jreq	L354
1197                     ; 240         crcreg = SPI->TXCRCR;  /* Get the Tx CRC register*/
1199  01d1 c65207        	ld	a,20999
1202  01d4 2003          	jra	L554
1203  01d6               L354:
1204                     ; 244         crcreg = SPI->RXCRCR; /* Get the Rx CRC register*/
1206  01d6 c65206        	ld	a,20998
1208  01d9               L554:
1209                     ; 248     return crcreg;
1213  01d9 85            	popw	x
1214  01da 81            	ret	
1239                     ; 256 void SPI_ResetCRC(void)
1239                     ; 257 {
1240                     	switch	.text
1241  01db               _SPI_ResetCRC:
1245                     ; 260     SPI_CalculateCRCCmd(ENABLE);
1247  01db a601          	ld	a,#1
1248  01dd adb2          	call	_SPI_CalculateCRCCmd
1250                     ; 263     SPI_Cmd(ENABLE);
1252  01df a601          	ld	a,#1
1254                     ; 264 }
1257  01e1 cc00e1        	jp	_SPI_Cmd
1281                     ; 271 uint8_t SPI_GetCRCPolynomial(void)
1281                     ; 272 {
1282                     	switch	.text
1283  01e4               _SPI_GetCRCPolynomial:
1287                     ; 273     return SPI->CRCPR; /* Return the CRC polynomial register */
1289  01e4 c65205        	ld	a,20997
1292  01e7 81            	ret	
1349                     ; 281 void SPI_BiDirectionalLineConfig(SPI_Direction_TypeDef SPI_Direction)
1349                     ; 282 {
1350                     	switch	.text
1351  01e8               _SPI_BiDirectionalLineConfig:
1353  01e8 88            	push	a
1354       00000000      OFST:	set	0
1357                     ; 284     assert_param(IS_SPI_DIRECTION_OK(SPI_Direction));
1359  01e9 4d            	tnz	a
1360  01ea 2711          	jreq	L032
1361  01ec 4a            	dec	a
1362  01ed 270e          	jreq	L032
1363  01ef ae011c        	ldw	x,#284
1364  01f2 89            	pushw	x
1365  01f3 5f            	clrw	x
1366  01f4 89            	pushw	x
1367  01f5 ae0000        	ldw	x,#L302
1368  01f8 cd0000        	call	_assert_failed
1370  01fb 5b04          	addw	sp,#4
1371  01fd               L032:
1372                     ; 286     if (SPI_Direction != SPI_DIRECTION_RX)
1374  01fd 7b01          	ld	a,(OFST+1,sp)
1375  01ff 2706          	jreq	L525
1376                     ; 288         SPI->CR2 |= SPI_CR2_BDOE; /* Set the Tx only mode*/
1378  0201 721c5201      	bset	20993,#6
1380  0205 2004          	jra	L725
1381  0207               L525:
1382                     ; 292         SPI->CR2 &= (uint8_t)(~SPI_CR2_BDOE); /* Set the Rx only mode*/
1384  0207 721d5201      	bres	20993,#6
1385  020b               L725:
1386                     ; 294 }
1389  020b 84            	pop	a
1390  020c 81            	ret	
1512                     ; 304 FlagStatus SPI_GetFlagStatus(SPI_Flag_TypeDef SPI_FLAG)
1512                     ; 305 {
1513                     	switch	.text
1514  020d               _SPI_GetFlagStatus:
1516  020d 88            	push	a
1517  020e 88            	push	a
1518       00000001      OFST:	set	1
1521                     ; 306     FlagStatus status = RESET;
1523                     ; 308     assert_param(IS_SPI_FLAGS_OK(SPI_FLAG));
1525  020f a140          	cp	a,#64
1526  0211 2726          	jreq	L242
1527  0213 a120          	cp	a,#32
1528  0215 2722          	jreq	L242
1529  0217 a110          	cp	a,#16
1530  0219 271e          	jreq	L242
1531  021b a108          	cp	a,#8
1532  021d 271a          	jreq	L242
1533  021f a102          	cp	a,#2
1534  0221 2716          	jreq	L242
1535  0223 a101          	cp	a,#1
1536  0225 2712          	jreq	L242
1537  0227 a180          	cp	a,#128
1538  0229 270e          	jreq	L242
1539  022b ae0134        	ldw	x,#308
1540  022e 89            	pushw	x
1541  022f 5f            	clrw	x
1542  0230 89            	pushw	x
1543  0231 ae0000        	ldw	x,#L302
1544  0234 cd0000        	call	_assert_failed
1546  0237 5b04          	addw	sp,#4
1547  0239               L242:
1548                     ; 311     if ((SPI->SR & (uint8_t)SPI_FLAG) != (uint8_t)RESET)
1550  0239 c65203        	ld	a,20995
1551  023c 1502          	bcp	a,(OFST+1,sp)
1552  023e 2704          	jreq	L506
1553                     ; 313         status = SET; /* SPI_FLAG is set */
1555  0240 a601          	ld	a,#1
1558  0242 2001          	jra	L706
1559  0244               L506:
1560                     ; 317         status = RESET; /* SPI_FLAG is reset*/
1562  0244 4f            	clr	a
1564  0245               L706:
1565                     ; 321     return status;
1569  0245 85            	popw	x
1570  0246 81            	ret	
1606                     ; 339 void SPI_ClearFlag(SPI_Flag_TypeDef SPI_FLAG)
1606                     ; 340 {
1607                     	switch	.text
1608  0247               _SPI_ClearFlag:
1610  0247 88            	push	a
1611       00000000      OFST:	set	0
1614                     ; 341     assert_param(IS_SPI_CLEAR_FLAGS_OK(SPI_FLAG));
1616  0248 a110          	cp	a,#16
1617  024a 2712          	jreq	L452
1618  024c a108          	cp	a,#8
1619  024e 270e          	jreq	L452
1620  0250 ae0155        	ldw	x,#341
1621  0253 89            	pushw	x
1622  0254 5f            	clrw	x
1623  0255 89            	pushw	x
1624  0256 ae0000        	ldw	x,#L302
1625  0259 cd0000        	call	_assert_failed
1627  025c 5b04          	addw	sp,#4
1628  025e               L452:
1629                     ; 343     SPI->SR = (uint8_t)(~SPI_FLAG);
1631  025e 7b01          	ld	a,(OFST+1,sp)
1632  0260 43            	cpl	a
1633  0261 c75203        	ld	20995,a
1634                     ; 344 }
1637  0264 84            	pop	a
1638  0265 81            	ret	
1721                     ; 359 ITStatus SPI_GetITStatus(SPI_IT_TypeDef SPI_IT)
1721                     ; 360 {
1722                     	switch	.text
1723  0266               _SPI_GetITStatus:
1725  0266 88            	push	a
1726  0267 89            	pushw	x
1727       00000002      OFST:	set	2
1730                     ; 361     ITStatus pendingbitstatus = RESET;
1732                     ; 362     uint8_t itpos = 0;
1734                     ; 363     uint8_t itmask1 = 0;
1736                     ; 364     uint8_t itmask2 = 0;
1738                     ; 365     uint8_t enablestatus = 0;
1740                     ; 366     assert_param(IS_SPI_GET_IT_OK(SPI_IT));
1742  0268 a165          	cp	a,#101
1743  026a 2722          	jreq	L662
1744  026c a155          	cp	a,#85
1745  026e 271e          	jreq	L662
1746  0270 a145          	cp	a,#69
1747  0272 271a          	jreq	L662
1748  0274 a134          	cp	a,#52
1749  0276 2716          	jreq	L662
1750  0278 a117          	cp	a,#23
1751  027a 2712          	jreq	L662
1752  027c a106          	cp	a,#6
1753  027e 270e          	jreq	L662
1754  0280 ae016e        	ldw	x,#366
1755  0283 89            	pushw	x
1756  0284 5f            	clrw	x
1757  0285 89            	pushw	x
1758  0286 ae0000        	ldw	x,#L302
1759  0289 cd0000        	call	_assert_failed
1761  028c 5b04          	addw	sp,#4
1762  028e               L662:
1763                     ; 368     itpos = (uint8_t)((uint8_t)1 << ((uint8_t)SPI_IT & (uint8_t)0x0F));
1765  028e 7b03          	ld	a,(OFST+1,sp)
1766  0290 a40f          	and	a,#15
1767  0292 5f            	clrw	x
1768  0293 97            	ld	xl,a
1769  0294 a601          	ld	a,#1
1770  0296 5d            	tnzw	x
1771  0297 2704          	jreq	L272
1772  0299               L472:
1773  0299 48            	sll	a
1774  029a 5a            	decw	x
1775  029b 26fc          	jrne	L472
1776  029d               L272:
1777  029d 6b01          	ld	(OFST-1,sp),a
1779                     ; 371     itmask1 = (uint8_t)((uint8_t)SPI_IT >> (uint8_t)4);
1781  029f 7b03          	ld	a,(OFST+1,sp)
1782  02a1 4e            	swap	a
1783  02a2 a40f          	and	a,#15
1784  02a4 6b02          	ld	(OFST+0,sp),a
1786                     ; 373     itmask2 = (uint8_t)((uint8_t)1 << itmask1);
1788  02a6 5f            	clrw	x
1789  02a7 97            	ld	xl,a
1790  02a8 a601          	ld	a,#1
1791  02aa 5d            	tnzw	x
1792  02ab 2704          	jreq	L672
1793  02ad               L003:
1794  02ad 48            	sll	a
1795  02ae 5a            	decw	x
1796  02af 26fc          	jrne	L003
1797  02b1               L672:
1799                     ; 375     enablestatus = (uint8_t)((uint8_t)SPI->SR & itmask2);
1801  02b1 c45203        	and	a,20995
1802  02b4 6b02          	ld	(OFST+0,sp),a
1804                     ; 377     if (((SPI->ICR & itpos) != RESET) && enablestatus)
1806  02b6 c65202        	ld	a,20994
1807  02b9 1501          	bcp	a,(OFST-1,sp)
1808  02bb 2708          	jreq	L176
1810  02bd 7b02          	ld	a,(OFST+0,sp)
1811  02bf 2704          	jreq	L176
1812                     ; 380         pendingbitstatus = SET;
1814  02c1 a601          	ld	a,#1
1817  02c3 2001          	jra	L376
1818  02c5               L176:
1819                     ; 385         pendingbitstatus = RESET;
1821  02c5 4f            	clr	a
1823  02c6               L376:
1824                     ; 388     return  pendingbitstatus;
1828  02c6 5b03          	addw	sp,#3
1829  02c8 81            	ret	
1875                     ; 404 void SPI_ClearITPendingBit(SPI_IT_TypeDef SPI_IT)
1875                     ; 405 {
1876                     	switch	.text
1877  02c9               _SPI_ClearITPendingBit:
1879  02c9 88            	push	a
1880  02ca 88            	push	a
1881       00000001      OFST:	set	1
1884                     ; 406     uint8_t itpos = 0;
1886                     ; 407     assert_param(IS_SPI_CLEAR_IT_OK(SPI_IT));
1888  02cb a145          	cp	a,#69
1889  02cd 2712          	jreq	L013
1890  02cf a134          	cp	a,#52
1891  02d1 270e          	jreq	L013
1892  02d3 ae0197        	ldw	x,#407
1893  02d6 89            	pushw	x
1894  02d7 5f            	clrw	x
1895  02d8 89            	pushw	x
1896  02d9 ae0000        	ldw	x,#L302
1897  02dc cd0000        	call	_assert_failed
1899  02df 5b04          	addw	sp,#4
1900  02e1               L013:
1901                     ; 412     itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)(SPI_IT & (uint8_t)0xF0) >> 4));
1903  02e1 7b02          	ld	a,(OFST+1,sp)
1904  02e3 4e            	swap	a
1905  02e4 a40f          	and	a,#15
1906  02e6 5f            	clrw	x
1907  02e7 97            	ld	xl,a
1908  02e8 a601          	ld	a,#1
1909  02ea 5d            	tnzw	x
1910  02eb 2704          	jreq	L413
1911  02ed               L613:
1912  02ed 48            	sll	a
1913  02ee 5a            	decw	x
1914  02ef 26fc          	jrne	L613
1915  02f1               L413:
1917                     ; 414     SPI->SR = (uint8_t)(~itpos);
1919  02f1 43            	cpl	a
1920  02f2 c75203        	ld	20995,a
1921                     ; 416 }
1924  02f5 85            	popw	x
1925  02f6 81            	ret	
1938                     	xdef	_SPI_ClearITPendingBit
1939                     	xdef	_SPI_GetITStatus
1940                     	xdef	_SPI_ClearFlag
1941                     	xdef	_SPI_GetFlagStatus
1942                     	xdef	_SPI_BiDirectionalLineConfig
1943                     	xdef	_SPI_GetCRCPolynomial
1944                     	xdef	_SPI_ResetCRC
1945                     	xdef	_SPI_GetCRC
1946                     	xdef	_SPI_CalculateCRCCmd
1947                     	xdef	_SPI_TransmitCRC
1948                     	xdef	_SPI_NSSInternalSoftwareCmd
1949                     	xdef	_SPI_ReceiveData
1950                     	xdef	_SPI_SendData
1951                     	xdef	_SPI_ITConfig
1952                     	xdef	_SPI_Cmd
1953                     	xdef	_SPI_Init
1954                     	xdef	_SPI_DeInit
1955                     	xref	_assert_failed
1956                     .const:	section	.text
1957  0000               L302:
1958  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
1959  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
1960  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
1961  0036 5f7370692e63  	dc.b	"_spi.c",0
1981                     	end
