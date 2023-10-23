   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.8.1 - 09 Jan 2023
   3                     ; Generator (Limited) V4.5.5 - 08 Nov 2022
   4                     ; Optimizer V4.5.5 - 08 Nov 2022
  48                     ; 48 void ADC1_DeInit(void)
  48                     ; 49 {
  50                     	switch	.text
  51  0000               _ADC1_DeInit:
  55                     ; 50     ADC1->CSR  = ADC1_CSR_RESET_VALUE;
  57  0000 725f5400      	clr	21504
  58                     ; 51     ADC1->CR1  = ADC1_CR1_RESET_VALUE;
  60  0004 725f5401      	clr	21505
  61                     ; 52     ADC1->CR2  = ADC1_CR2_RESET_VALUE;
  63  0008 725f5402      	clr	21506
  64                     ; 53     ADC1->CR3  = ADC1_CR3_RESET_VALUE;
  66  000c 725f5403      	clr	21507
  67                     ; 54     ADC1->TDRH = ADC1_TDRH_RESET_VALUE;
  69  0010 725f5406      	clr	21510
  70                     ; 55     ADC1->TDRL = ADC1_TDRL_RESET_VALUE;
  72  0014 725f5407      	clr	21511
  73                     ; 56     ADC1->HTRH = ADC1_HTRH_RESET_VALUE;
  75  0018 35ff5408      	mov	21512,#255
  76                     ; 57     ADC1->HTRL = ADC1_HTRL_RESET_VALUE;
  78  001c 35035409      	mov	21513,#3
  79                     ; 58     ADC1->LTRH = ADC1_LTRH_RESET_VALUE;
  81  0020 725f540a      	clr	21514
  82                     ; 59     ADC1->LTRL = ADC1_LTRL_RESET_VALUE;
  84  0024 725f540b      	clr	21515
  85                     ; 60     ADC1->AWCRH = ADC1_AWCRH_RESET_VALUE;
  87  0028 725f540e      	clr	21518
  88                     ; 61     ADC1->AWCRL = ADC1_AWCRL_RESET_VALUE;
  90  002c 725f540f      	clr	21519
  91                     ; 62 }
  94  0030 81            	ret	
 546                     ; 85 void ADC1_Init(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_PresSel_TypeDef ADC1_PrescalerSelection, ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState ADC1_ExtTriggerState, ADC1_Align_TypeDef ADC1_Align, ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState ADC1_SchmittTriggerState)
 546                     ; 86 {
 547                     	switch	.text
 548  0031               _ADC1_Init:
 550  0031 89            	pushw	x
 551       00000000      OFST:	set	0
 554                     ; 89     assert_param(IS_ADC1_CONVERSIONMODE_OK(ADC1_ConversionMode));
 556  0032 9e            	ld	a,xh
 557  0033 4d            	tnz	a
 558  0034 270a          	jreq	L41
 559  0036 9e            	ld	a,xh
 560  0037 4a            	dec	a
 561  0038 2706          	jreq	L41
 562  003a ae0059        	ldw	x,#89
 563  003d cd012a        	call	LC001
 564  0040               L41:
 565                     ; 90     assert_param(IS_ADC1_CHANNEL_OK(ADC1_Channel));
 567  0040 7b02          	ld	a,(OFST+2,sp)
 568  0042 272e          	jreq	L42
 569  0044 a101          	cp	a,#1
 570  0046 272a          	jreq	L42
 571  0048 a102          	cp	a,#2
 572  004a 2726          	jreq	L42
 573  004c a103          	cp	a,#3
 574  004e 2722          	jreq	L42
 575  0050 a104          	cp	a,#4
 576  0052 271e          	jreq	L42
 577  0054 a105          	cp	a,#5
 578  0056 271a          	jreq	L42
 579  0058 a106          	cp	a,#6
 580  005a 2716          	jreq	L42
 581  005c a107          	cp	a,#7
 582  005e 2712          	jreq	L42
 583  0060 a108          	cp	a,#8
 584  0062 270e          	jreq	L42
 585  0064 a10c          	cp	a,#12
 586  0066 270a          	jreq	L42
 587  0068 a109          	cp	a,#9
 588  006a 2706          	jreq	L42
 589  006c ae005a        	ldw	x,#90
 590  006f cd012a        	call	LC001
 591  0072               L42:
 592                     ; 91     assert_param(IS_ADC1_PRESSEL_OK(ADC1_PrescalerSelection));
 594  0072 7b05          	ld	a,(OFST+5,sp)
 595  0074 2722          	jreq	L43
 596  0076 a110          	cp	a,#16
 597  0078 271e          	jreq	L43
 598  007a a120          	cp	a,#32
 599  007c 271a          	jreq	L43
 600  007e a130          	cp	a,#48
 601  0080 2716          	jreq	L43
 602  0082 a140          	cp	a,#64
 603  0084 2712          	jreq	L43
 604  0086 a150          	cp	a,#80
 605  0088 270e          	jreq	L43
 606  008a a160          	cp	a,#96
 607  008c 270a          	jreq	L43
 608  008e a170          	cp	a,#112
 609  0090 2706          	jreq	L43
 610  0092 ae005b        	ldw	x,#91
 611  0095 cd012a        	call	LC001
 612  0098               L43:
 613                     ; 92     assert_param(IS_ADC1_EXTTRIG_OK(ADC1_ExtTrigger));
 615  0098 7b06          	ld	a,(OFST+6,sp)
 616  009a 270a          	jreq	L44
 617  009c a110          	cp	a,#16
 618  009e 2706          	jreq	L44
 619  00a0 ae005c        	ldw	x,#92
 620  00a3 cd012a        	call	LC001
 621  00a6               L44:
 622                     ; 93     assert_param(IS_FUNCTIONALSTATE_OK(((ADC1_ExtTriggerState))));
 624  00a6 7b07          	ld	a,(OFST+7,sp)
 625  00a8 2708          	jreq	L45
 626  00aa 4a            	dec	a
 627  00ab 2705          	jreq	L45
 628  00ad ae005d        	ldw	x,#93
 629  00b0 ad78          	call	LC001
 630  00b2               L45:
 631                     ; 94     assert_param(IS_ADC1_ALIGN_OK(ADC1_Align));
 633  00b2 7b08          	ld	a,(OFST+8,sp)
 634  00b4 2709          	jreq	L46
 635  00b6 a108          	cp	a,#8
 636  00b8 2705          	jreq	L46
 637  00ba ae005e        	ldw	x,#94
 638  00bd ad6b          	call	LC001
 639  00bf               L46:
 640                     ; 95     assert_param(IS_ADC1_SCHMITTTRIG_OK(ADC1_SchmittTriggerChannel));
 642  00bf 7b09          	ld	a,(OFST+9,sp)
 643  00c1 2731          	jreq	L47
 644  00c3 a101          	cp	a,#1
 645  00c5 272d          	jreq	L47
 646  00c7 a102          	cp	a,#2
 647  00c9 2729          	jreq	L47
 648  00cb a103          	cp	a,#3
 649  00cd 2725          	jreq	L47
 650  00cf a104          	cp	a,#4
 651  00d1 2721          	jreq	L47
 652  00d3 a105          	cp	a,#5
 653  00d5 271d          	jreq	L47
 654  00d7 a106          	cp	a,#6
 655  00d9 2719          	jreq	L47
 656  00db a107          	cp	a,#7
 657  00dd 2715          	jreq	L47
 658  00df a108          	cp	a,#8
 659  00e1 2711          	jreq	L47
 660  00e3 a10c          	cp	a,#12
 661  00e5 270d          	jreq	L47
 662  00e7 a1ff          	cp	a,#255
 663  00e9 2709          	jreq	L47
 664  00eb a109          	cp	a,#9
 665  00ed 2705          	jreq	L47
 666  00ef ae005f        	ldw	x,#95
 667  00f2 ad36          	call	LC001
 668  00f4               L47:
 669                     ; 96     assert_param(IS_FUNCTIONALSTATE_OK(ADC1_SchmittTriggerState));
 671  00f4 7b0a          	ld	a,(OFST+10,sp)
 672  00f6 2708          	jreq	L401
 673  00f8 4a            	dec	a
 674  00f9 2705          	jreq	L401
 675  00fb ae0060        	ldw	x,#96
 676  00fe ad2a          	call	LC001
 677  0100               L401:
 678                     ; 101     ADC1_ConversionConfig(ADC1_ConversionMode, ADC1_Channel, ADC1_Align);
 680  0100 7b08          	ld	a,(OFST+8,sp)
 681  0102 88            	push	a
 682  0103 7b03          	ld	a,(OFST+3,sp)
 683  0105 97            	ld	xl,a
 684  0106 7b02          	ld	a,(OFST+2,sp)
 685  0108 95            	ld	xh,a
 686  0109 cd02ee        	call	_ADC1_ConversionConfig
 688  010c 84            	pop	a
 689                     ; 103     ADC1_PrescalerConfig(ADC1_PrescalerSelection);
 691  010d 7b05          	ld	a,(OFST+5,sp)
 692  010f cd01e3        	call	_ADC1_PrescalerConfig
 694                     ; 108     ADC1_ExternalTriggerConfig(ADC1_ExtTrigger, ADC1_ExtTriggerState);
 696  0112 7b07          	ld	a,(OFST+7,sp)
 697  0114 97            	ld	xl,a
 698  0115 7b06          	ld	a,(OFST+6,sp)
 699  0117 95            	ld	xh,a
 700  0118 cd0373        	call	_ADC1_ExternalTriggerConfig
 702                     ; 113     ADC1_SchmittTriggerConfig(ADC1_SchmittTriggerChannel, ADC1_SchmittTriggerState);
 704  011b 7b0a          	ld	a,(OFST+10,sp)
 705  011d 97            	ld	xl,a
 706  011e 7b09          	ld	a,(OFST+9,sp)
 707  0120 95            	ld	xh,a
 708  0121 cd0223        	call	_ADC1_SchmittTriggerConfig
 710                     ; 116     ADC1->CR1 |= ADC1_CR1_ADON;
 712  0124 72105401      	bset	21505,#0
 713                     ; 118 }
 716  0128 85            	popw	x
 717  0129 81            	ret	
 718  012a               LC001:
 719  012a 89            	pushw	x
 720  012b 5f            	clrw	x
 721  012c 89            	pushw	x
 722  012d ae0000        	ldw	x,#L542
 723  0130 cd0000        	call	_assert_failed
 725  0133 5b04          	addw	sp,#4
 726  0135 81            	ret	
 762                     ; 126 void ADC1_Cmd(FunctionalState NewState)
 762                     ; 127 {
 763                     	switch	.text
 764  0136               _ADC1_Cmd:
 766  0136 88            	push	a
 767       00000000      OFST:	set	0
 770                     ; 130     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 772  0137 4d            	tnz	a
 773  0138 2711          	jreq	L621
 774  013a 4a            	dec	a
 775  013b 270e          	jreq	L621
 776  013d ae0082        	ldw	x,#130
 777  0140 89            	pushw	x
 778  0141 5f            	clrw	x
 779  0142 89            	pushw	x
 780  0143 ae0000        	ldw	x,#L542
 781  0146 cd0000        	call	_assert_failed
 783  0149 5b04          	addw	sp,#4
 784  014b               L621:
 785                     ; 132     if (NewState != DISABLE)
 787  014b 7b01          	ld	a,(OFST+1,sp)
 788  014d 2706          	jreq	L562
 789                     ; 134         ADC1->CR1 |= ADC1_CR1_ADON;
 791  014f 72105401      	bset	21505,#0
 793  0153 2004          	jra	L762
 794  0155               L562:
 795                     ; 138         ADC1->CR1 &= (uint8_t)(~ADC1_CR1_ADON);
 797  0155 72115401      	bres	21505,#0
 798  0159               L762:
 799                     ; 141 }
 802  0159 84            	pop	a
 803  015a 81            	ret	
 839                     ; 148 void ADC1_ScanModeCmd(FunctionalState NewState)
 839                     ; 149 {
 840                     	switch	.text
 841  015b               _ADC1_ScanModeCmd:
 843  015b 88            	push	a
 844       00000000      OFST:	set	0
 847                     ; 152     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 849  015c 4d            	tnz	a
 850  015d 2711          	jreq	L041
 851  015f 4a            	dec	a
 852  0160 270e          	jreq	L041
 853  0162 ae0098        	ldw	x,#152
 854  0165 89            	pushw	x
 855  0166 5f            	clrw	x
 856  0167 89            	pushw	x
 857  0168 ae0000        	ldw	x,#L542
 858  016b cd0000        	call	_assert_failed
 860  016e 5b04          	addw	sp,#4
 861  0170               L041:
 862                     ; 154     if (NewState != DISABLE)
 864  0170 7b01          	ld	a,(OFST+1,sp)
 865  0172 2706          	jreq	L703
 866                     ; 156         ADC1->CR2 |= ADC1_CR2_SCAN;
 868  0174 72125402      	bset	21506,#1
 870  0178 2004          	jra	L113
 871  017a               L703:
 872                     ; 160         ADC1->CR2 &= (uint8_t)(~ADC1_CR2_SCAN);
 874  017a 72135402      	bres	21506,#1
 875  017e               L113:
 876                     ; 163 }
 879  017e 84            	pop	a
 880  017f 81            	ret	
 916                     ; 170 void ADC1_DataBufferCmd(FunctionalState NewState)
 916                     ; 171 {
 917                     	switch	.text
 918  0180               _ADC1_DataBufferCmd:
 920  0180 88            	push	a
 921       00000000      OFST:	set	0
 924                     ; 174     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 926  0181 4d            	tnz	a
 927  0182 2711          	jreq	L251
 928  0184 4a            	dec	a
 929  0185 270e          	jreq	L251
 930  0187 ae00ae        	ldw	x,#174
 931  018a 89            	pushw	x
 932  018b 5f            	clrw	x
 933  018c 89            	pushw	x
 934  018d ae0000        	ldw	x,#L542
 935  0190 cd0000        	call	_assert_failed
 937  0193 5b04          	addw	sp,#4
 938  0195               L251:
 939                     ; 176     if (NewState != DISABLE)
 941  0195 7b01          	ld	a,(OFST+1,sp)
 942  0197 2706          	jreq	L133
 943                     ; 178         ADC1->CR3 |= ADC1_CR3_DBUF;
 945  0199 721e5403      	bset	21507,#7
 947  019d 2004          	jra	L333
 948  019f               L133:
 949                     ; 182         ADC1->CR3 &= (uint8_t)(~ADC1_CR3_DBUF);
 951  019f 721f5403      	bres	21507,#7
 952  01a3               L333:
 953                     ; 185 }
 956  01a3 84            	pop	a
 957  01a4 81            	ret	
1114                     ; 196 void ADC1_ITConfig(ADC1_IT_TypeDef ADC1_IT, FunctionalState NewState)
1114                     ; 197 {
1115                     	switch	.text
1116  01a5               _ADC1_ITConfig:
1118  01a5 89            	pushw	x
1119       00000000      OFST:	set	0
1122                     ; 200     assert_param(IS_ADC1_IT_OK(ADC1_IT));
1124  01a6 a30020        	cpw	x,#32
1125  01a9 270a          	jreq	L461
1126  01ab a30010        	cpw	x,#16
1127  01ae 2705          	jreq	L461
1128  01b0 ae00c8        	ldw	x,#200
1129  01b3 ad22          	call	LC002
1130  01b5               L461:
1131                     ; 201     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1133  01b5 7b05          	ld	a,(OFST+5,sp)
1134  01b7 2708          	jreq	L471
1135  01b9 4a            	dec	a
1136  01ba 2705          	jreq	L471
1137  01bc ae00c9        	ldw	x,#201
1138  01bf ad16          	call	LC002
1139  01c1               L471:
1140                     ; 203     if (NewState != DISABLE)
1142  01c1 7b05          	ld	a,(OFST+5,sp)
1143  01c3 2707          	jreq	L124
1144                     ; 206         ADC1->CSR |= (uint8_t)ADC1_IT;
1146  01c5 c65400        	ld	a,21504
1147  01c8 1a02          	or	a,(OFST+2,sp)
1149  01ca 2006          	jra	L324
1150  01cc               L124:
1151                     ; 211         ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ADC1_IT);
1153  01cc 7b02          	ld	a,(OFST+2,sp)
1154  01ce 43            	cpl	a
1155  01cf c45400        	and	a,21504
1156  01d2               L324:
1157  01d2 c75400        	ld	21504,a
1158                     ; 214 }
1161  01d5 85            	popw	x
1162  01d6 81            	ret	
1163  01d7               LC002:
1164  01d7 89            	pushw	x
1165  01d8 5f            	clrw	x
1166  01d9 89            	pushw	x
1167  01da ae0000        	ldw	x,#L542
1168  01dd cd0000        	call	_assert_failed
1170  01e0 5b04          	addw	sp,#4
1171  01e2 81            	ret	
1208                     ; 222 void ADC1_PrescalerConfig(ADC1_PresSel_TypeDef ADC1_Prescaler)
1208                     ; 223 {
1209                     	switch	.text
1210  01e3               _ADC1_PrescalerConfig:
1212  01e3 88            	push	a
1213       00000000      OFST:	set	0
1216                     ; 226     assert_param(IS_ADC1_PRESSEL_OK(ADC1_Prescaler));
1218  01e4 4d            	tnz	a
1219  01e5 272a          	jreq	L602
1220  01e7 a110          	cp	a,#16
1221  01e9 2726          	jreq	L602
1222  01eb a120          	cp	a,#32
1223  01ed 2722          	jreq	L602
1224  01ef a130          	cp	a,#48
1225  01f1 271e          	jreq	L602
1226  01f3 a140          	cp	a,#64
1227  01f5 271a          	jreq	L602
1228  01f7 a150          	cp	a,#80
1229  01f9 2716          	jreq	L602
1230  01fb a160          	cp	a,#96
1231  01fd 2712          	jreq	L602
1232  01ff a170          	cp	a,#112
1233  0201 270e          	jreq	L602
1234  0203 ae00e2        	ldw	x,#226
1235  0206 89            	pushw	x
1236  0207 5f            	clrw	x
1237  0208 89            	pushw	x
1238  0209 ae0000        	ldw	x,#L542
1239  020c cd0000        	call	_assert_failed
1241  020f 5b04          	addw	sp,#4
1242  0211               L602:
1243                     ; 229     ADC1->CR1 &= (uint8_t)(~ADC1_CR1_SPSEL);
1245  0211 c65401        	ld	a,21505
1246  0214 a48f          	and	a,#143
1247  0216 c75401        	ld	21505,a
1248                     ; 231     ADC1->CR1 |= (uint8_t)(ADC1_Prescaler);
1250  0219 c65401        	ld	a,21505
1251  021c 1a01          	or	a,(OFST+1,sp)
1252  021e c75401        	ld	21505,a
1253                     ; 233 }
1256  0221 84            	pop	a
1257  0222 81            	ret	
1305                     ; 244 void ADC1_SchmittTriggerConfig(ADC1_SchmittTrigg_TypeDef ADC1_SchmittTriggerChannel, FunctionalState NewState)
1305                     ; 245 {
1306                     	switch	.text
1307  0223               _ADC1_SchmittTriggerConfig:
1309  0223 89            	pushw	x
1310       00000000      OFST:	set	0
1313                     ; 248     assert_param(IS_ADC1_SCHMITTTRIG_OK(ADC1_SchmittTriggerChannel));
1315  0224 9e            	ld	a,xh
1316  0225 4d            	tnz	a
1317  0226 273b          	jreq	L022
1318  0228 9e            	ld	a,xh
1319  0229 4a            	dec	a
1320  022a 2737          	jreq	L022
1321  022c 9e            	ld	a,xh
1322  022d a102          	cp	a,#2
1323  022f 2732          	jreq	L022
1324  0231 9e            	ld	a,xh
1325  0232 a103          	cp	a,#3
1326  0234 272d          	jreq	L022
1327  0236 9e            	ld	a,xh
1328  0237 a104          	cp	a,#4
1329  0239 2728          	jreq	L022
1330  023b 9e            	ld	a,xh
1331  023c a105          	cp	a,#5
1332  023e 2723          	jreq	L022
1333  0240 9e            	ld	a,xh
1334  0241 a106          	cp	a,#6
1335  0243 271e          	jreq	L022
1336  0245 9e            	ld	a,xh
1337  0246 a107          	cp	a,#7
1338  0248 2719          	jreq	L022
1339  024a 9e            	ld	a,xh
1340  024b a108          	cp	a,#8
1341  024d 2714          	jreq	L022
1342  024f 9e            	ld	a,xh
1343  0250 a10c          	cp	a,#12
1344  0252 270f          	jreq	L022
1345  0254 9e            	ld	a,xh
1346  0255 4c            	inc	a
1347  0256 270b          	jreq	L022
1348  0258 9e            	ld	a,xh
1349  0259 a109          	cp	a,#9
1350  025b 2706          	jreq	L022
1351  025d ae00f8        	ldw	x,#248
1352  0260 cd02e2        	call	LC006
1353  0263               L022:
1354                     ; 249     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1356  0263 7b02          	ld	a,(OFST+2,sp)
1357  0265 2708          	jreq	L032
1358  0267 4a            	dec	a
1359  0268 2705          	jreq	L032
1360  026a ae00f9        	ldw	x,#249
1361  026d ad73          	call	LC006
1362  026f               L032:
1363                     ; 251     if (ADC1_SchmittTriggerChannel == ADC1_SCHMITTTRIG_ALL)
1365  026f 7b01          	ld	a,(OFST+1,sp)
1366  0271 a1ff          	cp	a,#255
1367  0273 261d          	jrne	L564
1368                     ; 253         if (NewState != DISABLE)
1370  0275 7b02          	ld	a,(OFST+2,sp)
1371  0277 270a          	jreq	L764
1372                     ; 255             ADC1->TDRL &= (uint8_t)0x0;
1374  0279 725f5407      	clr	21511
1375                     ; 256             ADC1->TDRH &= (uint8_t)0x0;
1377  027d 725f5406      	clr	21510
1379  0281 2057          	jra	L374
1380  0283               L764:
1381                     ; 260             ADC1->TDRL |= (uint8_t)0xFF;
1383  0283 c65407        	ld	a,21511
1384  0286 aaff          	or	a,#255
1385  0288 c75407        	ld	21511,a
1386                     ; 261             ADC1->TDRH |= (uint8_t)0xFF;
1388  028b c65406        	ld	a,21510
1389  028e aaff          	or	a,#255
1390  0290 2045          	jp	LC003
1391  0292               L564:
1392                     ; 264     else if (ADC1_SchmittTriggerChannel < ADC1_SCHMITTTRIG_CHANNEL8)
1394  0292 a108          	cp	a,#8
1395  0294 0d02          	tnz	(OFST+2,sp)
1396  0296 2420          	jruge	L574
1397                     ; 266         if (NewState != DISABLE)
1399  0298 2711          	jreq	L774
1400                     ; 268             ADC1->TDRL &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel));
1402  029a ad40          	call	LC005
1403  029c 2704          	jreq	L432
1404  029e               L632:
1405  029e 48            	sll	a
1406  029f 5a            	decw	x
1407  02a0 26fc          	jrne	L632
1408  02a2               L432:
1409  02a2 43            	cpl	a
1410  02a3 c45407        	and	a,21511
1411  02a6               LC004:
1412  02a6 c75407        	ld	21511,a
1414  02a9 202f          	jra	L374
1415  02ab               L774:
1416                     ; 272             ADC1->TDRL |= (uint8_t)((uint8_t)0x01 << (uint8_t)ADC1_SchmittTriggerChannel);
1418  02ab ad2f          	call	LC005
1419  02ad 2704          	jreq	L042
1420  02af               L242:
1421  02af 48            	sll	a
1422  02b0 5a            	decw	x
1423  02b1 26fc          	jrne	L242
1424  02b3               L042:
1425  02b3 ca5407        	or	a,21511
1426  02b6 20ee          	jp	LC004
1427  02b8               L574:
1428                     ; 277         if (NewState != DISABLE)
1430  02b8 2710          	jreq	L505
1431                     ; 279             ADC1->TDRH &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8)));
1433  02ba a008          	sub	a,#8
1434  02bc ad1e          	call	LC005
1435  02be 2704          	jreq	L442
1436  02c0               L642:
1437  02c0 48            	sll	a
1438  02c1 5a            	decw	x
1439  02c2 26fc          	jrne	L642
1440  02c4               L442:
1441  02c4 43            	cpl	a
1442  02c5 c45406        	and	a,21510
1444  02c8 200d          	jp	LC003
1445  02ca               L505:
1446                     ; 283             ADC1->TDRH |= (uint8_t)((uint8_t)0x01 << ((uint8_t)ADC1_SchmittTriggerChannel - (uint8_t)8));
1448  02ca a008          	sub	a,#8
1449  02cc ad0e          	call	LC005
1450  02ce 2704          	jreq	L052
1451  02d0               L252:
1452  02d0 48            	sll	a
1453  02d1 5a            	decw	x
1454  02d2 26fc          	jrne	L252
1455  02d4               L052:
1456  02d4 ca5406        	or	a,21510
1457  02d7               LC003:
1458  02d7 c75406        	ld	21510,a
1459  02da               L374:
1460                     ; 287 }
1463  02da 85            	popw	x
1464  02db 81            	ret	
1465  02dc               LC005:
1466  02dc 5f            	clrw	x
1467  02dd 97            	ld	xl,a
1468  02de a601          	ld	a,#1
1469  02e0 5d            	tnzw	x
1470  02e1 81            	ret	
1471  02e2               LC006:
1472  02e2 89            	pushw	x
1473  02e3 5f            	clrw	x
1474  02e4 89            	pushw	x
1475  02e5 ae0000        	ldw	x,#L542
1476  02e8 cd0000        	call	_assert_failed
1478  02eb 5b04          	addw	sp,#4
1479  02ed 81            	ret	
1537                     ; 300 void ADC1_ConversionConfig(ADC1_ConvMode_TypeDef ADC1_ConversionMode, ADC1_Channel_TypeDef ADC1_Channel, ADC1_Align_TypeDef ADC1_Align)
1537                     ; 301 {
1538                     	switch	.text
1539  02ee               _ADC1_ConversionConfig:
1541  02ee 89            	pushw	x
1542       00000000      OFST:	set	0
1545                     ; 304     assert_param(IS_ADC1_CONVERSIONMODE_OK(ADC1_ConversionMode));
1547  02ef 9e            	ld	a,xh
1548  02f0 4d            	tnz	a
1549  02f1 2709          	jreq	L262
1550  02f3 9e            	ld	a,xh
1551  02f4 4a            	dec	a
1552  02f5 2705          	jreq	L262
1553  02f7 ae0130        	ldw	x,#304
1554  02fa ad6b          	call	LC007
1555  02fc               L262:
1556                     ; 305     assert_param(IS_ADC1_CHANNEL_OK(ADC1_Channel));
1558  02fc 7b02          	ld	a,(OFST+2,sp)
1559  02fe 272d          	jreq	L272
1560  0300 a101          	cp	a,#1
1561  0302 2729          	jreq	L272
1562  0304 a102          	cp	a,#2
1563  0306 2725          	jreq	L272
1564  0308 a103          	cp	a,#3
1565  030a 2721          	jreq	L272
1566  030c a104          	cp	a,#4
1567  030e 271d          	jreq	L272
1568  0310 a105          	cp	a,#5
1569  0312 2719          	jreq	L272
1570  0314 a106          	cp	a,#6
1571  0316 2715          	jreq	L272
1572  0318 a107          	cp	a,#7
1573  031a 2711          	jreq	L272
1574  031c a108          	cp	a,#8
1575  031e 270d          	jreq	L272
1576  0320 a10c          	cp	a,#12
1577  0322 2709          	jreq	L272
1578  0324 a109          	cp	a,#9
1579  0326 2705          	jreq	L272
1580  0328 ae0131        	ldw	x,#305
1581  032b ad3a          	call	LC007
1582  032d               L272:
1583                     ; 306     assert_param(IS_ADC1_ALIGN_OK(ADC1_Align));
1585  032d 7b05          	ld	a,(OFST+5,sp)
1586  032f 2709          	jreq	L203
1587  0331 a108          	cp	a,#8
1588  0333 2705          	jreq	L203
1589  0335 ae0132        	ldw	x,#306
1590  0338 ad2d          	call	LC007
1591  033a               L203:
1592                     ; 309     ADC1->CR2 &= (uint8_t)(~ADC1_CR2_ALIGN);
1594  033a 72175402      	bres	21506,#3
1595                     ; 311     ADC1->CR2 |= (uint8_t)(ADC1_Align);
1597  033e c65402        	ld	a,21506
1598  0341 1a05          	or	a,(OFST+5,sp)
1599  0343 c75402        	ld	21506,a
1600                     ; 313     if (ADC1_ConversionMode == ADC1_CONVERSIONMODE_CONTINUOUS)
1602  0346 7b01          	ld	a,(OFST+1,sp)
1603  0348 4a            	dec	a
1604  0349 2606          	jrne	L735
1605                     ; 316         ADC1->CR1 |= ADC1_CR1_CONT;
1607  034b 72125401      	bset	21505,#1
1609  034f 2004          	jra	L145
1610  0351               L735:
1611                     ; 321         ADC1->CR1 &= (uint8_t)(~ADC1_CR1_CONT);
1613  0351 72135401      	bres	21505,#1
1614  0355               L145:
1615                     ; 325     ADC1->CSR &= (uint8_t)(~ADC1_CSR_CH);
1617  0355 c65400        	ld	a,21504
1618  0358 a4f0          	and	a,#240
1619  035a c75400        	ld	21504,a
1620                     ; 327     ADC1->CSR |= (uint8_t)(ADC1_Channel);
1622  035d c65400        	ld	a,21504
1623  0360 1a02          	or	a,(OFST+2,sp)
1624  0362 c75400        	ld	21504,a
1625                     ; 329 }
1628  0365 85            	popw	x
1629  0366 81            	ret	
1630  0367               LC007:
1631  0367 89            	pushw	x
1632  0368 5f            	clrw	x
1633  0369 89            	pushw	x
1634  036a ae0000        	ldw	x,#L542
1635  036d cd0000        	call	_assert_failed
1637  0370 5b04          	addw	sp,#4
1638  0372 81            	ret	
1685                     ; 342 void ADC1_ExternalTriggerConfig(ADC1_ExtTrig_TypeDef ADC1_ExtTrigger, FunctionalState NewState)
1685                     ; 343 {
1686                     	switch	.text
1687  0373               _ADC1_ExternalTriggerConfig:
1689  0373 89            	pushw	x
1690       00000000      OFST:	set	0
1693                     ; 346     assert_param(IS_ADC1_EXTTRIG_OK(ADC1_ExtTrigger));
1695  0374 9e            	ld	a,xh
1696  0375 4d            	tnz	a
1697  0376 270a          	jreq	L413
1698  0378 9e            	ld	a,xh
1699  0379 a110          	cp	a,#16
1700  037b 2705          	jreq	L413
1701  037d ae015a        	ldw	x,#346
1702  0380 ad2c          	call	LC008
1703  0382               L413:
1704                     ; 347     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1706  0382 7b02          	ld	a,(OFST+2,sp)
1707  0384 2708          	jreq	L423
1708  0386 4a            	dec	a
1709  0387 2705          	jreq	L423
1710  0389 ae015b        	ldw	x,#347
1711  038c ad20          	call	LC008
1712  038e               L423:
1713                     ; 350     ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTSEL);
1715  038e c65402        	ld	a,21506
1716  0391 a4cf          	and	a,#207
1717  0393 c75402        	ld	21506,a
1718                     ; 352     if (NewState != DISABLE)
1720  0396 7b02          	ld	a,(OFST+2,sp)
1721  0398 2706          	jreq	L565
1722                     ; 355         ADC1->CR2 |= (uint8_t)(ADC1_CR2_EXTTRIG);
1724  039a 721c5402      	bset	21506,#6
1726  039e 2004          	jra	L765
1727  03a0               L565:
1728                     ; 360         ADC1->CR2 &= (uint8_t)(~ADC1_CR2_EXTTRIG);
1730  03a0 721d5402      	bres	21506,#6
1731  03a4               L765:
1732                     ; 364     ADC1->CR2 |= (uint8_t)(ADC1_ExtTrigger);
1734  03a4 c65402        	ld	a,21506
1735  03a7 1a01          	or	a,(OFST+1,sp)
1736  03a9 c75402        	ld	21506,a
1737                     ; 366 }
1740  03ac 85            	popw	x
1741  03ad 81            	ret	
1742  03ae               LC008:
1743  03ae 89            	pushw	x
1744  03af 5f            	clrw	x
1745  03b0 89            	pushw	x
1746  03b1 ae0000        	ldw	x,#L542
1747  03b4 cd0000        	call	_assert_failed
1749  03b7 5b04          	addw	sp,#4
1750  03b9 81            	ret	
1774                     ; 378 void ADC1_StartConversion(void)
1774                     ; 379 {
1775                     	switch	.text
1776  03ba               _ADC1_StartConversion:
1780                     ; 380     ADC1->CR1 |= ADC1_CR1_ADON;
1782  03ba 72105401      	bset	21505,#0
1783                     ; 381 }
1786  03be 81            	ret	
1826                     ; 390 uint16_t ADC1_GetConversionValue(void)
1826                     ; 391 {
1827                     	switch	.text
1828  03bf               _ADC1_GetConversionValue:
1830  03bf 5205          	subw	sp,#5
1831       00000005      OFST:	set	5
1834                     ; 393     uint16_t temph = 0;
1836                     ; 394     uint8_t templ = 0;
1838                     ; 396     if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
1840  03c1 720754020e    	btjf	21506,#3,L716
1841                     ; 399         templ = ADC1->DRL;
1843  03c6 c65405        	ld	a,21509
1844  03c9 6b03          	ld	(OFST-2,sp),a
1846                     ; 401         temph = ADC1->DRH;
1848  03cb c65404        	ld	a,21508
1849  03ce 97            	ld	xl,a
1851                     ; 403         temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
1853  03cf 7b03          	ld	a,(OFST-2,sp)
1854  03d1 02            	rlwa	x,a
1857  03d2 201a          	jra	L126
1858  03d4               L716:
1859                     ; 408         temph = ADC1->DRH;
1861  03d4 c65404        	ld	a,21508
1862  03d7 97            	ld	xl,a
1864                     ; 410         templ = ADC1->DRL;
1866  03d8 c65405        	ld	a,21509
1867  03db 6b03          	ld	(OFST-2,sp),a
1869                     ; 412         temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)((uint16_t)temph << 8));
1871  03dd 4f            	clr	a
1872  03de 02            	rlwa	x,a
1873  03df 1f01          	ldw	(OFST-4,sp),x
1875  03e1 7b03          	ld	a,(OFST-2,sp)
1876  03e3 97            	ld	xl,a
1877  03e4 a640          	ld	a,#64
1878  03e6 42            	mul	x,a
1879  03e7 01            	rrwa	x,a
1880  03e8 1a02          	or	a,(OFST-3,sp)
1881  03ea 01            	rrwa	x,a
1882  03eb 1a01          	or	a,(OFST-4,sp)
1883  03ed 01            	rrwa	x,a
1885  03ee               L126:
1886                     ; 415     return ((uint16_t)temph);
1890  03ee 5b05          	addw	sp,#5
1891  03f0 81            	ret	
1938                     ; 427 void ADC1_AWDChannelConfig(ADC1_Channel_TypeDef Channel, FunctionalState NewState)
1938                     ; 428 {
1939                     	switch	.text
1940  03f1               _ADC1_AWDChannelConfig:
1942  03f1 89            	pushw	x
1943       00000000      OFST:	set	0
1946                     ; 430     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1948  03f2 9f            	ld	a,xl
1949  03f3 4d            	tnz	a
1950  03f4 270a          	jreq	L243
1951  03f6 9f            	ld	a,xl
1952  03f7 4a            	dec	a
1953  03f8 2706          	jreq	L243
1954  03fa ae01ae        	ldw	x,#430
1955  03fd cd0483        	call	LC012
1956  0400               L243:
1957                     ; 431     assert_param(IS_ADC1_CHANNEL_OK(Channel));
1959  0400 7b01          	ld	a,(OFST+1,sp)
1960  0402 272f          	jreq	L253
1961  0404 a101          	cp	a,#1
1962  0406 272b          	jreq	L253
1963  0408 a102          	cp	a,#2
1964  040a 2727          	jreq	L253
1965  040c a103          	cp	a,#3
1966  040e 2723          	jreq	L253
1967  0410 a104          	cp	a,#4
1968  0412 271f          	jreq	L253
1969  0414 a105          	cp	a,#5
1970  0416 271b          	jreq	L253
1971  0418 a106          	cp	a,#6
1972  041a 2717          	jreq	L253
1973  041c a107          	cp	a,#7
1974  041e 2713          	jreq	L253
1975  0420 a108          	cp	a,#8
1976  0422 270f          	jreq	L253
1977  0424 a10c          	cp	a,#12
1978  0426 270b          	jreq	L253
1979  0428 a109          	cp	a,#9
1980  042a 2707          	jreq	L253
1981  042c ae01af        	ldw	x,#431
1982  042f ad52          	call	LC012
1983  0431 7b01          	ld	a,(OFST+1,sp)
1984  0433               L253:
1985                     ; 433     if (Channel < (uint8_t)8)
1987  0433 a108          	cp	a,#8
1988  0435 0d02          	tnz	(OFST+2,sp)
1989  0437 2420          	jruge	L546
1990                     ; 435         if (NewState != DISABLE)
1992  0439 270d          	jreq	L746
1993                     ; 437             ADC1->AWCRL |= (uint8_t)((uint8_t)1 << Channel);
1995  043b ad40          	call	LC011
1996  043d 2704          	jreq	L653
1997  043f               L063:
1998  043f 48            	sll	a
1999  0440 5a            	decw	x
2000  0441 26fc          	jrne	L063
2001  0443               L653:
2002  0443 ca540f        	or	a,21519
2004  0446 200c          	jp	LC010
2005  0448               L746:
2006                     ; 441             ADC1->AWCRL &= (uint8_t)~(uint8_t)((uint8_t)1 << Channel);
2008  0448 ad33          	call	LC011
2009  044a 2704          	jreq	L263
2010  044c               L463:
2011  044c 48            	sll	a
2012  044d 5a            	decw	x
2013  044e 26fc          	jrne	L463
2014  0450               L263:
2015  0450 43            	cpl	a
2016  0451 c4540f        	and	a,21519
2017  0454               LC010:
2018  0454 c7540f        	ld	21519,a
2019  0457 2022          	jra	L356
2020  0459               L546:
2021                     ; 446         if (NewState != DISABLE)
2023  0459 270f          	jreq	L556
2024                     ; 448             ADC1->AWCRH |= (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8));
2026  045b a008          	sub	a,#8
2027  045d ad1e          	call	LC011
2028  045f 2704          	jreq	L663
2029  0461               L073:
2030  0461 48            	sll	a
2031  0462 5a            	decw	x
2032  0463 26fc          	jrne	L073
2033  0465               L663:
2034  0465 ca540e        	or	a,21518
2036  0468 200e          	jp	LC009
2037  046a               L556:
2038                     ; 452             ADC1->AWCRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (uint8_t)(Channel - (uint8_t)8));
2040  046a a008          	sub	a,#8
2041  046c ad0f          	call	LC011
2042  046e 2704          	jreq	L273
2043  0470               L473:
2044  0470 48            	sll	a
2045  0471 5a            	decw	x
2046  0472 26fc          	jrne	L473
2047  0474               L273:
2048  0474 43            	cpl	a
2049  0475 c4540e        	and	a,21518
2050  0478               LC009:
2051  0478 c7540e        	ld	21518,a
2052  047b               L356:
2053                     ; 455 }
2056  047b 85            	popw	x
2057  047c 81            	ret	
2058  047d               LC011:
2059  047d 5f            	clrw	x
2060  047e 97            	ld	xl,a
2061  047f a601          	ld	a,#1
2062  0481 5d            	tnzw	x
2063  0482 81            	ret	
2064  0483               LC012:
2065  0483 89            	pushw	x
2066  0484 5f            	clrw	x
2067  0485 89            	pushw	x
2068  0486 ae0000        	ldw	x,#L542
2069  0489 cd0000        	call	_assert_failed
2071  048c 5b04          	addw	sp,#4
2072  048e 81            	ret	
2105                     ; 463 void ADC1_SetHighThreshold(uint16_t Threshold)
2105                     ; 464 {
2106                     	switch	.text
2107  048f               _ADC1_SetHighThreshold:
2109  048f 89            	pushw	x
2110       00000000      OFST:	set	0
2113                     ; 465     ADC1->HTRH = (uint8_t)(Threshold >> (uint8_t)2);
2115  0490 54            	srlw	x
2116  0491 54            	srlw	x
2117  0492 9f            	ld	a,xl
2118  0493 c75408        	ld	21512,a
2119                     ; 466     ADC1->HTRL = (uint8_t)Threshold;
2121  0496 7b02          	ld	a,(OFST+2,sp)
2122  0498 c75409        	ld	21513,a
2123                     ; 467 }
2126  049b 85            	popw	x
2127  049c 81            	ret	
2160                     ; 475 void ADC1_SetLowThreshold(uint16_t Threshold)
2160                     ; 476 {
2161                     	switch	.text
2162  049d               _ADC1_SetLowThreshold:
2166                     ; 477     ADC1->LTRL = (uint8_t)Threshold;
2168  049d 9f            	ld	a,xl
2169  049e c7540b        	ld	21515,a
2170                     ; 478     ADC1->LTRH = (uint8_t)(Threshold >> (uint8_t)2);
2172  04a1 54            	srlw	x
2173  04a2 54            	srlw	x
2174  04a3 9f            	ld	a,xl
2175  04a4 c7540a        	ld	21514,a
2176                     ; 479 }
2179  04a7 81            	ret	
2227                     ; 488 uint16_t ADC1_GetBufferValue(uint8_t Buffer)
2227                     ; 489 {
2228                     	switch	.text
2229  04a8               _ADC1_GetBufferValue:
2231  04a8 88            	push	a
2232  04a9 5205          	subw	sp,#5
2233       00000005      OFST:	set	5
2236                     ; 491     uint16_t temph = 0;
2238                     ; 492     uint8_t templ = 0;
2240                     ; 495     assert_param(IS_ADC1_BUFFER_OK(Buffer));
2242  04ab a10a          	cp	a,#10
2243  04ad 250e          	jrult	L604
2244  04af ae01ef        	ldw	x,#495
2245  04b2 89            	pushw	x
2246  04b3 5f            	clrw	x
2247  04b4 89            	pushw	x
2248  04b5 ae0000        	ldw	x,#L542
2249  04b8 cd0000        	call	_assert_failed
2251  04bb 5b04          	addw	sp,#4
2252  04bd               L604:
2253                     ; 497     if ((ADC1->CR2 & ADC1_CR2_ALIGN) != 0) /* Right alignment */
2255  04bd 7b06          	ld	a,(OFST+1,sp)
2256  04bf 48            	sll	a
2257  04c0 5f            	clrw	x
2258  04c1 97            	ld	xl,a
2259  04c2 7207540213    	btjf	21506,#3,L137
2260                     ; 500         templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
2262  04c7 d653e1        	ld	a,(21473,x)
2263  04ca 6b03          	ld	(OFST-2,sp),a
2265                     ; 502         temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
2267  04cc 7b06          	ld	a,(OFST+1,sp)
2268  04ce 48            	sll	a
2269  04cf 5f            	clrw	x
2270  04d0 97            	ld	xl,a
2271  04d1 d653e0        	ld	a,(21472,x)
2272  04d4 97            	ld	xl,a
2274                     ; 504         temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
2276  04d5 7b03          	ld	a,(OFST-2,sp)
2277  04d7 02            	rlwa	x,a
2280  04d8 2024          	jra	L337
2281  04da               L137:
2282                     ; 509         temph = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1));
2284  04da d653e0        	ld	a,(21472,x)
2285  04dd 5f            	clrw	x
2286  04de 97            	ld	xl,a
2287  04df 1f04          	ldw	(OFST-1,sp),x
2289                     ; 511         templ = *(uint8_t*)(uint16_t)((uint16_t)ADC1_BaseAddress + (uint8_t)(Buffer << 1) + 1);
2291  04e1 7b06          	ld	a,(OFST+1,sp)
2292  04e3 48            	sll	a
2293  04e4 5f            	clrw	x
2294  04e5 97            	ld	xl,a
2295  04e6 d653e1        	ld	a,(21473,x)
2296  04e9 6b03          	ld	(OFST-2,sp),a
2298                     ; 513         temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)(temph << 8));
2300  04eb 4f            	clr	a
2301  04ec 1e04          	ldw	x,(OFST-1,sp)
2302  04ee 02            	rlwa	x,a
2303  04ef 1f01          	ldw	(OFST-4,sp),x
2305  04f1 7b03          	ld	a,(OFST-2,sp)
2306  04f3 97            	ld	xl,a
2307  04f4 a640          	ld	a,#64
2308  04f6 42            	mul	x,a
2309  04f7 01            	rrwa	x,a
2310  04f8 1a02          	or	a,(OFST-3,sp)
2311  04fa 01            	rrwa	x,a
2312  04fb 1a01          	or	a,(OFST-4,sp)
2313  04fd 01            	rrwa	x,a
2315  04fe               L337:
2316                     ; 516     return ((uint16_t)temph);
2320  04fe 5b06          	addw	sp,#6
2321  0500 81            	ret	
2386                     ; 526 FlagStatus ADC1_GetAWDChannelStatus(ADC1_Channel_TypeDef Channel)
2386                     ; 527 {
2387                     	switch	.text
2388  0501               _ADC1_GetAWDChannelStatus:
2390  0501 88            	push	a
2391  0502 88            	push	a
2392       00000001      OFST:	set	1
2395                     ; 528     uint8_t status = 0;
2397                     ; 531     assert_param(IS_ADC1_CHANNEL_OK(Channel));
2399  0503 4d            	tnz	a
2400  0504 2736          	jreq	L024
2401  0506 a101          	cp	a,#1
2402  0508 2732          	jreq	L024
2403  050a a102          	cp	a,#2
2404  050c 272e          	jreq	L024
2405  050e a103          	cp	a,#3
2406  0510 272a          	jreq	L024
2407  0512 a104          	cp	a,#4
2408  0514 2726          	jreq	L024
2409  0516 a105          	cp	a,#5
2410  0518 2722          	jreq	L024
2411  051a a106          	cp	a,#6
2412  051c 271e          	jreq	L024
2413  051e a107          	cp	a,#7
2414  0520 271a          	jreq	L024
2415  0522 a108          	cp	a,#8
2416  0524 2716          	jreq	L024
2417  0526 a10c          	cp	a,#12
2418  0528 2712          	jreq	L024
2419  052a a109          	cp	a,#9
2420  052c 270e          	jreq	L024
2421  052e ae0213        	ldw	x,#531
2422  0531 89            	pushw	x
2423  0532 5f            	clrw	x
2424  0533 89            	pushw	x
2425  0534 ae0000        	ldw	x,#L542
2426  0537 cd0000        	call	_assert_failed
2428  053a 5b04          	addw	sp,#4
2429  053c               L024:
2430                     ; 533     if (Channel < (uint8_t)8)
2432  053c 7b02          	ld	a,(OFST+1,sp)
2433  053e a108          	cp	a,#8
2434  0540 2410          	jruge	L567
2435                     ; 535         status = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << Channel));
2437  0542 5f            	clrw	x
2438  0543 97            	ld	xl,a
2439  0544 a601          	ld	a,#1
2440  0546 5d            	tnzw	x
2441  0547 2704          	jreq	L424
2442  0549               L624:
2443  0549 48            	sll	a
2444  054a 5a            	decw	x
2445  054b 26fc          	jrne	L624
2446  054d               L424:
2447  054d c4540d        	and	a,21517
2450  0550 2010          	jra	L767
2451  0552               L567:
2452                     ; 539         status = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (Channel - (uint8_t)8)));
2454  0552 a008          	sub	a,#8
2455  0554 5f            	clrw	x
2456  0555 97            	ld	xl,a
2457  0556 a601          	ld	a,#1
2458  0558 5d            	tnzw	x
2459  0559 2704          	jreq	L034
2460  055b               L234:
2461  055b 48            	sll	a
2462  055c 5a            	decw	x
2463  055d 26fc          	jrne	L234
2464  055f               L034:
2465  055f c4540c        	and	a,21516
2467  0562               L767:
2468                     ; 542     return ((FlagStatus)status);
2472  0562 85            	popw	x
2473  0563 81            	ret	
2628                     ; 551 FlagStatus ADC1_GetFlagStatus(ADC1_Flag_TypeDef Flag)
2628                     ; 552 {
2629                     	switch	.text
2630  0564               _ADC1_GetFlagStatus:
2632  0564 88            	push	a
2633  0565 88            	push	a
2634       00000001      OFST:	set	1
2637                     ; 553     uint8_t flagstatus = 0;
2639                     ; 554     uint8_t temp = 0;
2641                     ; 557     assert_param(IS_ADC1_FLAG_OK(Flag));
2643  0566 a180          	cp	a,#128
2644  0568 273e          	jreq	L244
2645  056a a141          	cp	a,#65
2646  056c 273a          	jreq	L244
2647  056e a140          	cp	a,#64
2648  0570 2736          	jreq	L244
2649  0572 a110          	cp	a,#16
2650  0574 2732          	jreq	L244
2651  0576 a111          	cp	a,#17
2652  0578 272e          	jreq	L244
2653  057a a112          	cp	a,#18
2654  057c 272a          	jreq	L244
2655  057e a113          	cp	a,#19
2656  0580 2726          	jreq	L244
2657  0582 a114          	cp	a,#20
2658  0584 2722          	jreq	L244
2659  0586 a115          	cp	a,#21
2660  0588 271e          	jreq	L244
2661  058a a116          	cp	a,#22
2662  058c 271a          	jreq	L244
2663  058e a117          	cp	a,#23
2664  0590 2716          	jreq	L244
2665  0592 a118          	cp	a,#24
2666  0594 2712          	jreq	L244
2667  0596 a119          	cp	a,#25
2668  0598 270e          	jreq	L244
2669  059a ae022d        	ldw	x,#557
2670  059d 89            	pushw	x
2671  059e 5f            	clrw	x
2672  059f 89            	pushw	x
2673  05a0 ae0000        	ldw	x,#L542
2674  05a3 cd0000        	call	_assert_failed
2676  05a6 5b04          	addw	sp,#4
2677  05a8               L244:
2678                     ; 559     if ((Flag & 0x0F) == 0x01)
2680  05a8 7b02          	ld	a,(OFST+1,sp)
2681  05aa a40f          	and	a,#15
2682  05ac 4a            	dec	a
2683  05ad 2607          	jrne	L3501
2684                     ; 562         flagstatus = (uint8_t)(ADC1->CR3 & ADC1_CR3_OVR);
2686  05af c65403        	ld	a,21507
2687  05b2 a440          	and	a,#64
2690  05b4 2039          	jra	L5501
2691  05b6               L3501:
2692                     ; 564     else if ((Flag & 0xF0) == 0x10)
2694  05b6 7b02          	ld	a,(OFST+1,sp)
2695  05b8 a4f0          	and	a,#240
2696  05ba a110          	cp	a,#16
2697  05bc 262c          	jrne	L7501
2698                     ; 567         temp = (uint8_t)(Flag & (uint8_t)0x0F);
2700  05be 7b02          	ld	a,(OFST+1,sp)
2701  05c0 a40f          	and	a,#15
2702  05c2 6b01          	ld	(OFST+0,sp),a
2704                     ; 568         if (temp < 8)
2706  05c4 a108          	cp	a,#8
2707  05c6 2410          	jruge	L1601
2708                     ; 570             flagstatus = (uint8_t)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
2710  05c8 5f            	clrw	x
2711  05c9 97            	ld	xl,a
2712  05ca a601          	ld	a,#1
2713  05cc 5d            	tnzw	x
2714  05cd 2704          	jreq	L644
2715  05cf               L054:
2716  05cf 48            	sll	a
2717  05d0 5a            	decw	x
2718  05d1 26fc          	jrne	L054
2719  05d3               L644:
2720  05d3 c4540d        	and	a,21517
2723  05d6 2017          	jra	L5501
2724  05d8               L1601:
2725                     ; 574             flagstatus = (uint8_t)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
2727  05d8 a008          	sub	a,#8
2728  05da 5f            	clrw	x
2729  05db 97            	ld	xl,a
2730  05dc a601          	ld	a,#1
2731  05de 5d            	tnzw	x
2732  05df 2704          	jreq	L254
2733  05e1               L454:
2734  05e1 48            	sll	a
2735  05e2 5a            	decw	x
2736  05e3 26fc          	jrne	L454
2737  05e5               L254:
2738  05e5 c4540c        	and	a,21516
2740  05e8 2005          	jra	L5501
2741  05ea               L7501:
2742                     ; 579         flagstatus = (uint8_t)(ADC1->CSR & Flag);
2744  05ea c65400        	ld	a,21504
2745  05ed 1402          	and	a,(OFST+1,sp)
2747  05ef               L5501:
2748                     ; 581     return ((FlagStatus)flagstatus);
2752  05ef 85            	popw	x
2753  05f0 81            	ret	
2796                     ; 591 void ADC1_ClearFlag(ADC1_Flag_TypeDef Flag)
2796                     ; 592 {
2797                     	switch	.text
2798  05f1               _ADC1_ClearFlag:
2800  05f1 88            	push	a
2801  05f2 88            	push	a
2802       00000001      OFST:	set	1
2805                     ; 593     uint8_t temp = 0;
2807                     ; 596     assert_param(IS_ADC1_FLAG_OK(Flag));
2809  05f3 a180          	cp	a,#128
2810  05f5 273e          	jreq	L464
2811  05f7 a141          	cp	a,#65
2812  05f9 273a          	jreq	L464
2813  05fb a140          	cp	a,#64
2814  05fd 2736          	jreq	L464
2815  05ff a110          	cp	a,#16
2816  0601 2732          	jreq	L464
2817  0603 a111          	cp	a,#17
2818  0605 272e          	jreq	L464
2819  0607 a112          	cp	a,#18
2820  0609 272a          	jreq	L464
2821  060b a113          	cp	a,#19
2822  060d 2726          	jreq	L464
2823  060f a114          	cp	a,#20
2824  0611 2722          	jreq	L464
2825  0613 a115          	cp	a,#21
2826  0615 271e          	jreq	L464
2827  0617 a116          	cp	a,#22
2828  0619 271a          	jreq	L464
2829  061b a117          	cp	a,#23
2830  061d 2716          	jreq	L464
2831  061f a118          	cp	a,#24
2832  0621 2712          	jreq	L464
2833  0623 a119          	cp	a,#25
2834  0625 270e          	jreq	L464
2835  0627 ae0254        	ldw	x,#596
2836  062a 89            	pushw	x
2837  062b 5f            	clrw	x
2838  062c 89            	pushw	x
2839  062d ae0000        	ldw	x,#L542
2840  0630 cd0000        	call	_assert_failed
2842  0633 5b04          	addw	sp,#4
2843  0635               L464:
2844                     ; 598     if ((Flag & 0x0F) == 0x01)
2846  0635 7b02          	ld	a,(OFST+1,sp)
2847  0637 a40f          	and	a,#15
2848  0639 4a            	dec	a
2849  063a 2606          	jrne	L7011
2850                     ; 601         ADC1->CR3 &= (uint8_t)(~ADC1_CR3_OVR);
2852  063c 721d5403      	bres	21507,#6
2854  0640 2045          	jra	L1111
2855  0642               L7011:
2856                     ; 603     else if ((Flag & 0xF0) == 0x10)
2858  0642 7b02          	ld	a,(OFST+1,sp)
2859  0644 a4f0          	and	a,#240
2860  0646 a110          	cp	a,#16
2861  0648 2634          	jrne	L3111
2862                     ; 606         temp = (uint8_t)(Flag & (uint8_t)0x0F);
2864  064a 7b02          	ld	a,(OFST+1,sp)
2865  064c a40f          	and	a,#15
2866  064e 6b01          	ld	(OFST+0,sp),a
2868                     ; 607         if (temp < 8)
2870  0650 a108          	cp	a,#8
2871  0652 2414          	jruge	L5111
2872                     ; 609             ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
2874  0654 5f            	clrw	x
2875  0655 97            	ld	xl,a
2876  0656 a601          	ld	a,#1
2877  0658 5d            	tnzw	x
2878  0659 2704          	jreq	L074
2879  065b               L274:
2880  065b 48            	sll	a
2881  065c 5a            	decw	x
2882  065d 26fc          	jrne	L274
2883  065f               L074:
2884  065f 43            	cpl	a
2885  0660 c4540d        	and	a,21517
2886  0663 c7540d        	ld	21517,a
2888  0666 201f          	jra	L1111
2889  0668               L5111:
2890                     ; 613             ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
2892  0668 a008          	sub	a,#8
2893  066a 5f            	clrw	x
2894  066b 97            	ld	xl,a
2895  066c a601          	ld	a,#1
2896  066e 5d            	tnzw	x
2897  066f 2704          	jreq	L474
2898  0671               L674:
2899  0671 48            	sll	a
2900  0672 5a            	decw	x
2901  0673 26fc          	jrne	L674
2902  0675               L474:
2903  0675 43            	cpl	a
2904  0676 c4540c        	and	a,21516
2905  0679 c7540c        	ld	21516,a
2906  067c 2009          	jra	L1111
2907  067e               L3111:
2908                     ; 618         ADC1->CSR &= (uint8_t) (~Flag);
2910  067e 7b02          	ld	a,(OFST+1,sp)
2911  0680 43            	cpl	a
2912  0681 c45400        	and	a,21504
2913  0684 c75400        	ld	21504,a
2914  0687               L1111:
2915                     ; 620 }
2918  0687 85            	popw	x
2919  0688 81            	ret	
2973                     ; 640 ITStatus ADC1_GetITStatus(ADC1_IT_TypeDef ITPendingBit)
2973                     ; 641 {
2974                     	switch	.text
2975  0689               _ADC1_GetITStatus:
2977  0689 89            	pushw	x
2978  068a 88            	push	a
2979       00000001      OFST:	set	1
2982                     ; 642     ITStatus itstatus = RESET;
2984                     ; 643     uint8_t temp = 0;
2986                     ; 646     assert_param(IS_ADC1_ITPENDINGBIT_OK(ITPendingBit));
2988  068b a30080        	cpw	x,#128
2989  068e 274a          	jreq	L605
2990  0690 a30140        	cpw	x,#320
2991  0693 2745          	jreq	L605
2992  0695 a30110        	cpw	x,#272
2993  0698 2740          	jreq	L605
2994  069a a30111        	cpw	x,#273
2995  069d 273b          	jreq	L605
2996  069f a30112        	cpw	x,#274
2997  06a2 2736          	jreq	L605
2998  06a4 a30113        	cpw	x,#275
2999  06a7 2731          	jreq	L605
3000  06a9 a30114        	cpw	x,#276
3001  06ac 272c          	jreq	L605
3002  06ae a30115        	cpw	x,#277
3003  06b1 2727          	jreq	L605
3004  06b3 a30116        	cpw	x,#278
3005  06b6 2722          	jreq	L605
3006  06b8 a30117        	cpw	x,#279
3007  06bb 271d          	jreq	L605
3008  06bd a30118        	cpw	x,#280
3009  06c0 2718          	jreq	L605
3010  06c2 a3011c        	cpw	x,#284
3011  06c5 2713          	jreq	L605
3012  06c7 a30119        	cpw	x,#281
3013  06ca 270e          	jreq	L605
3014  06cc ae0286        	ldw	x,#646
3015  06cf 89            	pushw	x
3016  06d0 5f            	clrw	x
3017  06d1 89            	pushw	x
3018  06d2 ae0000        	ldw	x,#L542
3019  06d5 cd0000        	call	_assert_failed
3021  06d8 5b04          	addw	sp,#4
3022  06da               L605:
3023                     ; 648     if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
3025  06da 7b03          	ld	a,(OFST+2,sp)
3026  06dc a4f0          	and	a,#240
3027  06de 5f            	clrw	x
3028  06df 02            	rlwa	x,a
3029  06e0 a30010        	cpw	x,#16
3030  06e3 262c          	jrne	L7411
3031                     ; 651         temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
3033  06e5 7b03          	ld	a,(OFST+2,sp)
3034  06e7 a40f          	and	a,#15
3035  06e9 6b01          	ld	(OFST+0,sp),a
3037                     ; 652         if (temp < 8)
3039  06eb a108          	cp	a,#8
3040  06ed 2410          	jruge	L1511
3041                     ; 654             itstatus = (ITStatus)(ADC1->AWSRL & (uint8_t)((uint8_t)1 << temp));
3043  06ef 5f            	clrw	x
3044  06f0 97            	ld	xl,a
3045  06f1 a601          	ld	a,#1
3046  06f3 5d            	tnzw	x
3047  06f4 2704          	jreq	L215
3048  06f6               L415:
3049  06f6 48            	sll	a
3050  06f7 5a            	decw	x
3051  06f8 26fc          	jrne	L415
3052  06fa               L215:
3053  06fa c4540d        	and	a,21517
3056  06fd 2017          	jra	L5511
3057  06ff               L1511:
3058                     ; 658             itstatus = (ITStatus)(ADC1->AWSRH & (uint8_t)((uint8_t)1 << (temp - 8)));
3060  06ff a008          	sub	a,#8
3061  0701 5f            	clrw	x
3062  0702 97            	ld	xl,a
3063  0703 a601          	ld	a,#1
3064  0705 5d            	tnzw	x
3065  0706 2704          	jreq	L615
3066  0708               L025:
3067  0708 48            	sll	a
3068  0709 5a            	decw	x
3069  070a 26fc          	jrne	L025
3070  070c               L615:
3071  070c c4540c        	and	a,21516
3073  070f 2005          	jra	L5511
3074  0711               L7411:
3075                     ; 663         itstatus = (ITStatus)(ADC1->CSR & (uint8_t)ITPendingBit);
3077  0711 c65400        	ld	a,21504
3078  0714 1403          	and	a,(OFST+2,sp)
3080  0716               L5511:
3081                     ; 665     return ((ITStatus)itstatus);
3085  0716 5b03          	addw	sp,#3
3086  0718 81            	ret	
3130                     ; 687 void ADC1_ClearITPendingBit(ADC1_IT_TypeDef ITPendingBit)
3130                     ; 688 {
3131                     	switch	.text
3132  0719               _ADC1_ClearITPendingBit:
3134  0719 89            	pushw	x
3135  071a 88            	push	a
3136       00000001      OFST:	set	1
3139                     ; 689     uint8_t temp = 0;
3141                     ; 692     assert_param(IS_ADC1_ITPENDINGBIT_OK(ITPendingBit));
3143  071b a30080        	cpw	x,#128
3144  071e 274a          	jreq	L035
3145  0720 a30140        	cpw	x,#320
3146  0723 2745          	jreq	L035
3147  0725 a30110        	cpw	x,#272
3148  0728 2740          	jreq	L035
3149  072a a30111        	cpw	x,#273
3150  072d 273b          	jreq	L035
3151  072f a30112        	cpw	x,#274
3152  0732 2736          	jreq	L035
3153  0734 a30113        	cpw	x,#275
3154  0737 2731          	jreq	L035
3155  0739 a30114        	cpw	x,#276
3156  073c 272c          	jreq	L035
3157  073e a30115        	cpw	x,#277
3158  0741 2727          	jreq	L035
3159  0743 a30116        	cpw	x,#278
3160  0746 2722          	jreq	L035
3161  0748 a30117        	cpw	x,#279
3162  074b 271d          	jreq	L035
3163  074d a30118        	cpw	x,#280
3164  0750 2718          	jreq	L035
3165  0752 a3011c        	cpw	x,#284
3166  0755 2713          	jreq	L035
3167  0757 a30119        	cpw	x,#281
3168  075a 270e          	jreq	L035
3169  075c ae02b4        	ldw	x,#692
3170  075f 89            	pushw	x
3171  0760 5f            	clrw	x
3172  0761 89            	pushw	x
3173  0762 ae0000        	ldw	x,#L542
3174  0765 cd0000        	call	_assert_failed
3176  0768 5b04          	addw	sp,#4
3177  076a               L035:
3178                     ; 694     if (((uint16_t)ITPendingBit & 0xF0) == 0x10)
3180  076a 7b03          	ld	a,(OFST+2,sp)
3181  076c a4f0          	and	a,#240
3182  076e 5f            	clrw	x
3183  076f 02            	rlwa	x,a
3184  0770 a30010        	cpw	x,#16
3185  0773 2634          	jrne	L7711
3186                     ; 697         temp = (uint8_t)((uint16_t)ITPendingBit & 0x0F);
3188  0775 7b03          	ld	a,(OFST+2,sp)
3189  0777 a40f          	and	a,#15
3190  0779 6b01          	ld	(OFST+0,sp),a
3192                     ; 698         if (temp < 8)
3194  077b a108          	cp	a,#8
3195  077d 2414          	jruge	L1021
3196                     ; 700             ADC1->AWSRL &= (uint8_t)~(uint8_t)((uint8_t)1 << temp);
3198  077f 5f            	clrw	x
3199  0780 97            	ld	xl,a
3200  0781 a601          	ld	a,#1
3201  0783 5d            	tnzw	x
3202  0784 2704          	jreq	L435
3203  0786               L635:
3204  0786 48            	sll	a
3205  0787 5a            	decw	x
3206  0788 26fc          	jrne	L635
3207  078a               L435:
3208  078a 43            	cpl	a
3209  078b c4540d        	and	a,21517
3210  078e c7540d        	ld	21517,a
3212  0791 201f          	jra	L5021
3213  0793               L1021:
3214                     ; 704             ADC1->AWSRH &= (uint8_t)~(uint8_t)((uint8_t)1 << (temp - 8));
3216  0793 a008          	sub	a,#8
3217  0795 5f            	clrw	x
3218  0796 97            	ld	xl,a
3219  0797 a601          	ld	a,#1
3220  0799 5d            	tnzw	x
3221  079a 2704          	jreq	L045
3222  079c               L245:
3223  079c 48            	sll	a
3224  079d 5a            	decw	x
3225  079e 26fc          	jrne	L245
3226  07a0               L045:
3227  07a0 43            	cpl	a
3228  07a1 c4540c        	and	a,21516
3229  07a4 c7540c        	ld	21516,a
3230  07a7 2009          	jra	L5021
3231  07a9               L7711:
3232                     ; 709         ADC1->CSR &= (uint8_t)((uint16_t)~(uint16_t)ITPendingBit);
3234  07a9 7b03          	ld	a,(OFST+2,sp)
3235  07ab 43            	cpl	a
3236  07ac c45400        	and	a,21504
3237  07af c75400        	ld	21504,a
3238  07b2               L5021:
3239                     ; 711 }
3242  07b2 5b03          	addw	sp,#3
3243  07b4 81            	ret	
3256                     	xdef	_ADC1_ClearITPendingBit
3257                     	xdef	_ADC1_GetITStatus
3258                     	xdef	_ADC1_ClearFlag
3259                     	xdef	_ADC1_GetFlagStatus
3260                     	xdef	_ADC1_GetAWDChannelStatus
3261                     	xdef	_ADC1_GetBufferValue
3262                     	xdef	_ADC1_SetLowThreshold
3263                     	xdef	_ADC1_SetHighThreshold
3264                     	xdef	_ADC1_GetConversionValue
3265                     	xdef	_ADC1_StartConversion
3266                     	xdef	_ADC1_AWDChannelConfig
3267                     	xdef	_ADC1_ExternalTriggerConfig
3268                     	xdef	_ADC1_ConversionConfig
3269                     	xdef	_ADC1_SchmittTriggerConfig
3270                     	xdef	_ADC1_PrescalerConfig
3271                     	xdef	_ADC1_ITConfig
3272                     	xdef	_ADC1_DataBufferCmd
3273                     	xdef	_ADC1_ScanModeCmd
3274                     	xdef	_ADC1_Cmd
3275                     	xdef	_ADC1_Init
3276                     	xdef	_ADC1_DeInit
3277                     	xref	_assert_failed
3278                     .const:	section	.text
3279  0000               L542:
3280  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
3281  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
3282  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
3283  0036 5f616463312e  	dc.b	"_adc1.c",0
3303                     	end
