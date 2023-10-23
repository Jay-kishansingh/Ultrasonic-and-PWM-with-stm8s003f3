   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.1 - 30 Jun 2020
   3                     ; Generator (Limited) V4.4.12 - 02 Jul 2020
   4                     ; Optimizer V4.4.12 - 02 Jul 2020
  48                     ; 43 void TIM4_DeInit(void)
  48                     ; 44 {
  50                     	switch	.text
  51  0000               _TIM4_DeInit:
  55                     ; 45     TIM4->CR1 = TIM4_CR1_RESET_VALUE;
  57  0000 725f5340      	clr	21312
  58                     ; 46     TIM4->IER = TIM4_IER_RESET_VALUE;
  60  0004 725f5341      	clr	21313
  61                     ; 47     TIM4->CNTR = TIM4_CNTR_RESET_VALUE;
  63  0008 725f5344      	clr	21316
  64                     ; 48     TIM4->PSCR = TIM4_PSCR_RESET_VALUE;
  66  000c 725f5345      	clr	21317
  67                     ; 49     TIM4->ARR = TIM4_ARR_RESET_VALUE;
  69  0010 35ff5346      	mov	21318,#255
  70                     ; 50     TIM4->SR1 = TIM4_SR1_RESET_VALUE;
  72  0014 725f5342      	clr	21314
  73                     ; 51 }
  76  0018 81            	ret	
 181                     ; 59 void TIM4_TimeBaseInit(TIM4_Prescaler_TypeDef TIM4_Prescaler, uint8_t TIM4_Period)
 181                     ; 60 {
 182                     	switch	.text
 183  0019               _TIM4_TimeBaseInit:
 185  0019 89            	pushw	x
 186       00000000      OFST:	set	0
 189                     ; 62     assert_param(IS_TIM4_PRESCALER_OK(TIM4_Prescaler));
 191  001a 9e            	ld	a,xh
 192  001b 4d            	tnz	a
 193  001c 2730          	jreq	L41
 194  001e 9e            	ld	a,xh
 195  001f 4a            	dec	a
 196  0020 272c          	jreq	L41
 197  0022 9e            	ld	a,xh
 198  0023 a102          	cp	a,#2
 199  0025 2727          	jreq	L41
 200  0027 9e            	ld	a,xh
 201  0028 a103          	cp	a,#3
 202  002a 2722          	jreq	L41
 203  002c 9e            	ld	a,xh
 204  002d a104          	cp	a,#4
 205  002f 271d          	jreq	L41
 206  0031 9e            	ld	a,xh
 207  0032 a105          	cp	a,#5
 208  0034 2718          	jreq	L41
 209  0036 9e            	ld	a,xh
 210  0037 a106          	cp	a,#6
 211  0039 2713          	jreq	L41
 212  003b 9e            	ld	a,xh
 213  003c a107          	cp	a,#7
 214  003e 270e          	jreq	L41
 215  0040 ae003e        	ldw	x,#62
 216  0043 89            	pushw	x
 217  0044 5f            	clrw	x
 218  0045 89            	pushw	x
 219  0046 ae0000        	ldw	x,#L56
 220  0049 cd0000        	call	_assert_failed
 222  004c 5b04          	addw	sp,#4
 223  004e               L41:
 224                     ; 64     TIM4->PSCR = (uint8_t)(TIM4_Prescaler);
 226  004e 7b01          	ld	a,(OFST+1,sp)
 227  0050 c75345        	ld	21317,a
 228                     ; 66     TIM4->ARR = (uint8_t)(TIM4_Period);
 230  0053 7b02          	ld	a,(OFST+2,sp)
 231  0055 c75346        	ld	21318,a
 232                     ; 67 }
 235  0058 85            	popw	x
 236  0059 81            	ret	
 292                     ; 77 void TIM4_Cmd(FunctionalState NewState)
 292                     ; 78 {
 293                     	switch	.text
 294  005a               _TIM4_Cmd:
 296  005a 88            	push	a
 297       00000000      OFST:	set	0
 300                     ; 80     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 302  005b 4d            	tnz	a
 303  005c 2711          	jreq	L62
 304  005e 4a            	dec	a
 305  005f 270e          	jreq	L62
 306  0061 ae0050        	ldw	x,#80
 307  0064 89            	pushw	x
 308  0065 5f            	clrw	x
 309  0066 89            	pushw	x
 310  0067 ae0000        	ldw	x,#L56
 311  006a cd0000        	call	_assert_failed
 313  006d 5b04          	addw	sp,#4
 314  006f               L62:
 315                     ; 83     if (NewState != DISABLE)
 317  006f 7b01          	ld	a,(OFST+1,sp)
 318  0071 2706          	jreq	L511
 319                     ; 85         TIM4->CR1 |= TIM4_CR1_CEN;
 321  0073 72105340      	bset	21312,#0
 323  0077 2004          	jra	L711
 324  0079               L511:
 325                     ; 89         TIM4->CR1 &= (uint8_t)(~TIM4_CR1_CEN);
 327  0079 72115340      	bres	21312,#0
 328  007d               L711:
 329                     ; 91 }
 332  007d 84            	pop	a
 333  007e 81            	ret	
 392                     ; 103 void TIM4_ITConfig(TIM4_IT_TypeDef TIM4_IT, FunctionalState NewState)
 392                     ; 104 {
 393                     	switch	.text
 394  007f               _TIM4_ITConfig:
 396  007f 89            	pushw	x
 397       00000000      OFST:	set	0
 400                     ; 106     assert_param(IS_TIM4_IT_OK(TIM4_IT));
 402  0080 9e            	ld	a,xh
 403  0081 4a            	dec	a
 404  0082 2705          	jreq	L63
 405  0084 ae006a        	ldw	x,#106
 406  0087 ad22          	call	LC001
 407  0089               L63:
 408                     ; 107     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 410  0089 7b02          	ld	a,(OFST+2,sp)
 411  008b 2708          	jreq	L64
 412  008d 4a            	dec	a
 413  008e 2705          	jreq	L64
 414  0090 ae006b        	ldw	x,#107
 415  0093 ad16          	call	LC001
 416  0095               L64:
 417                     ; 109     if (NewState != DISABLE)
 419  0095 7b02          	ld	a,(OFST+2,sp)
 420  0097 2707          	jreq	L151
 421                     ; 112         TIM4->IER |= (uint8_t)TIM4_IT;
 423  0099 c65341        	ld	a,21313
 424  009c 1a01          	or	a,(OFST+1,sp)
 426  009e 2006          	jra	L351
 427  00a0               L151:
 428                     ; 117         TIM4->IER &= (uint8_t)(~TIM4_IT);
 430  00a0 7b01          	ld	a,(OFST+1,sp)
 431  00a2 43            	cpl	a
 432  00a3 c45341        	and	a,21313
 433  00a6               L351:
 434  00a6 c75341        	ld	21313,a
 435                     ; 119 }
 438  00a9 85            	popw	x
 439  00aa 81            	ret	
 440  00ab               LC001:
 441  00ab 89            	pushw	x
 442  00ac 5f            	clrw	x
 443  00ad 89            	pushw	x
 444  00ae ae0000        	ldw	x,#L56
 445  00b1 cd0000        	call	_assert_failed
 447  00b4 5b04          	addw	sp,#4
 448  00b6 81            	ret	
 485                     ; 127 void TIM4_UpdateDisableConfig(FunctionalState NewState)
 485                     ; 128 {
 486                     	switch	.text
 487  00b7               _TIM4_UpdateDisableConfig:
 489  00b7 88            	push	a
 490       00000000      OFST:	set	0
 493                     ; 130     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 495  00b8 4d            	tnz	a
 496  00b9 2711          	jreq	L06
 497  00bb 4a            	dec	a
 498  00bc 270e          	jreq	L06
 499  00be ae0082        	ldw	x,#130
 500  00c1 89            	pushw	x
 501  00c2 5f            	clrw	x
 502  00c3 89            	pushw	x
 503  00c4 ae0000        	ldw	x,#L56
 504  00c7 cd0000        	call	_assert_failed
 506  00ca 5b04          	addw	sp,#4
 507  00cc               L06:
 508                     ; 133     if (NewState != DISABLE)
 510  00cc 7b01          	ld	a,(OFST+1,sp)
 511  00ce 2706          	jreq	L371
 512                     ; 135         TIM4->CR1 |= TIM4_CR1_UDIS;
 514  00d0 72125340      	bset	21312,#1
 516  00d4 2004          	jra	L571
 517  00d6               L371:
 518                     ; 139         TIM4->CR1 &= (uint8_t)(~TIM4_CR1_UDIS);
 520  00d6 72135340      	bres	21312,#1
 521  00da               L571:
 522                     ; 141 }
 525  00da 84            	pop	a
 526  00db 81            	ret	
 585                     ; 151 void TIM4_UpdateRequestConfig(TIM4_UpdateSource_TypeDef TIM4_UpdateSource)
 585                     ; 152 {
 586                     	switch	.text
 587  00dc               _TIM4_UpdateRequestConfig:
 589  00dc 88            	push	a
 590       00000000      OFST:	set	0
 593                     ; 154     assert_param(IS_TIM4_UPDATE_SOURCE_OK(TIM4_UpdateSource));
 595  00dd 4d            	tnz	a
 596  00de 2711          	jreq	L27
 597  00e0 4a            	dec	a
 598  00e1 270e          	jreq	L27
 599  00e3 ae009a        	ldw	x,#154
 600  00e6 89            	pushw	x
 601  00e7 5f            	clrw	x
 602  00e8 89            	pushw	x
 603  00e9 ae0000        	ldw	x,#L56
 604  00ec cd0000        	call	_assert_failed
 606  00ef 5b04          	addw	sp,#4
 607  00f1               L27:
 608                     ; 157     if (TIM4_UpdateSource != TIM4_UPDATESOURCE_GLOBAL)
 610  00f1 7b01          	ld	a,(OFST+1,sp)
 611  00f3 2706          	jreq	L522
 612                     ; 159         TIM4->CR1 |= TIM4_CR1_URS;
 614  00f5 72145340      	bset	21312,#2
 616  00f9 2004          	jra	L722
 617  00fb               L522:
 618                     ; 163         TIM4->CR1 &= (uint8_t)(~TIM4_CR1_URS);
 620  00fb 72155340      	bres	21312,#2
 621  00ff               L722:
 622                     ; 165 }
 625  00ff 84            	pop	a
 626  0100 81            	ret	
 684                     ; 175 void TIM4_SelectOnePulseMode(TIM4_OPMode_TypeDef TIM4_OPMode)
 684                     ; 176 {
 685                     	switch	.text
 686  0101               _TIM4_SelectOnePulseMode:
 688  0101 88            	push	a
 689       00000000      OFST:	set	0
 692                     ; 178     assert_param(IS_TIM4_OPM_MODE_OK(TIM4_OPMode));
 694  0102 a101          	cp	a,#1
 695  0104 2711          	jreq	L401
 696  0106 4d            	tnz	a
 697  0107 270e          	jreq	L401
 698  0109 ae00b2        	ldw	x,#178
 699  010c 89            	pushw	x
 700  010d 5f            	clrw	x
 701  010e 89            	pushw	x
 702  010f ae0000        	ldw	x,#L56
 703  0112 cd0000        	call	_assert_failed
 705  0115 5b04          	addw	sp,#4
 706  0117               L401:
 707                     ; 181     if (TIM4_OPMode != TIM4_OPMODE_REPETITIVE)
 709  0117 7b01          	ld	a,(OFST+1,sp)
 710  0119 2706          	jreq	L752
 711                     ; 183         TIM4->CR1 |= TIM4_CR1_OPM;
 713  011b 72165340      	bset	21312,#3
 715  011f 2004          	jra	L162
 716  0121               L752:
 717                     ; 187         TIM4->CR1 &= (uint8_t)(~TIM4_CR1_OPM);
 719  0121 72175340      	bres	21312,#3
 720  0125               L162:
 721                     ; 190 }
 724  0125 84            	pop	a
 725  0126 81            	ret	
 794                     ; 212 void TIM4_PrescalerConfig(TIM4_Prescaler_TypeDef Prescaler, TIM4_PSCReloadMode_TypeDef TIM4_PSCReloadMode)
 794                     ; 213 {
 795                     	switch	.text
 796  0127               _TIM4_PrescalerConfig:
 798  0127 89            	pushw	x
 799       00000000      OFST:	set	0
 802                     ; 215     assert_param(IS_TIM4_PRESCALER_RELOAD_OK(TIM4_PSCReloadMode));
 804  0128 9f            	ld	a,xl
 805  0129 4d            	tnz	a
 806  012a 2709          	jreq	L611
 807  012c 9f            	ld	a,xl
 808  012d 4a            	dec	a
 809  012e 2705          	jreq	L611
 810  0130 ae00d7        	ldw	x,#215
 811  0133 ad31          	call	LC002
 812  0135               L611:
 813                     ; 216     assert_param(IS_TIM4_PRESCALER_OK(Prescaler));
 815  0135 7b01          	ld	a,(OFST+1,sp)
 816  0137 2723          	jreq	L621
 817  0139 a101          	cp	a,#1
 818  013b 271f          	jreq	L621
 819  013d a102          	cp	a,#2
 820  013f 271b          	jreq	L621
 821  0141 a103          	cp	a,#3
 822  0143 2717          	jreq	L621
 823  0145 a104          	cp	a,#4
 824  0147 2713          	jreq	L621
 825  0149 a105          	cp	a,#5
 826  014b 270f          	jreq	L621
 827  014d a106          	cp	a,#6
 828  014f 270b          	jreq	L621
 829  0151 a107          	cp	a,#7
 830  0153 2707          	jreq	L621
 831  0155 ae00d8        	ldw	x,#216
 832  0158 ad0c          	call	LC002
 833  015a 7b01          	ld	a,(OFST+1,sp)
 834  015c               L621:
 835                     ; 219     TIM4->PSCR = (uint8_t)Prescaler;
 837  015c c75345        	ld	21317,a
 838                     ; 222     TIM4->EGR = (uint8_t)TIM4_PSCReloadMode;
 840  015f 7b02          	ld	a,(OFST+2,sp)
 841  0161 c75343        	ld	21315,a
 842                     ; 223 }
 845  0164 85            	popw	x
 846  0165 81            	ret	
 847  0166               LC002:
 848  0166 89            	pushw	x
 849  0167 5f            	clrw	x
 850  0168 89            	pushw	x
 851  0169 ae0000        	ldw	x,#L56
 852  016c cd0000        	call	_assert_failed
 854  016f 5b04          	addw	sp,#4
 855  0171 81            	ret	
 892                     ; 231 void TIM4_ARRPreloadConfig(FunctionalState NewState)
 892                     ; 232 {
 893                     	switch	.text
 894  0172               _TIM4_ARRPreloadConfig:
 896  0172 88            	push	a
 897       00000000      OFST:	set	0
 900                     ; 234     assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 902  0173 4d            	tnz	a
 903  0174 2711          	jreq	L041
 904  0176 4a            	dec	a
 905  0177 270e          	jreq	L041
 906  0179 ae00ea        	ldw	x,#234
 907  017c 89            	pushw	x
 908  017d 5f            	clrw	x
 909  017e 89            	pushw	x
 910  017f ae0000        	ldw	x,#L56
 911  0182 cd0000        	call	_assert_failed
 913  0185 5b04          	addw	sp,#4
 914  0187               L041:
 915                     ; 237     if (NewState != DISABLE)
 917  0187 7b01          	ld	a,(OFST+1,sp)
 918  0189 2706          	jreq	L333
 919                     ; 239         TIM4->CR1 |= TIM4_CR1_ARPE;
 921  018b 721e5340      	bset	21312,#7
 923  018f 2004          	jra	L533
 924  0191               L333:
 925                     ; 243         TIM4->CR1 &= (uint8_t)(~TIM4_CR1_ARPE);
 927  0191 721f5340      	bres	21312,#7
 928  0195               L533:
 929                     ; 245 }
 932  0195 84            	pop	a
 933  0196 81            	ret	
 983                     ; 254 void TIM4_GenerateEvent(TIM4_EventSource_TypeDef TIM4_EventSource)
 983                     ; 255 {
 984                     	switch	.text
 985  0197               _TIM4_GenerateEvent:
 987  0197 88            	push	a
 988       00000000      OFST:	set	0
 991                     ; 257     assert_param(IS_TIM4_EVENT_SOURCE_OK(TIM4_EventSource));
 993  0198 4a            	dec	a
 994  0199 270e          	jreq	L051
 995  019b ae0101        	ldw	x,#257
 996  019e 89            	pushw	x
 997  019f 5f            	clrw	x
 998  01a0 89            	pushw	x
 999  01a1 ae0000        	ldw	x,#L56
1000  01a4 cd0000        	call	_assert_failed
1002  01a7 5b04          	addw	sp,#4
1003  01a9               L051:
1004                     ; 260     TIM4->EGR = (uint8_t)(TIM4_EventSource);
1006  01a9 7b01          	ld	a,(OFST+1,sp)
1007  01ab c75343        	ld	21315,a
1008                     ; 261 }
1011  01ae 84            	pop	a
1012  01af 81            	ret	
1044                     ; 270 void TIM4_SetCounter(uint8_t Counter)
1044                     ; 271 {
1045                     	switch	.text
1046  01b0               _TIM4_SetCounter:
1050                     ; 273     TIM4->CNTR = (uint8_t)(Counter);
1052  01b0 c75344        	ld	21316,a
1053                     ; 274 }
1056  01b3 81            	ret	
1088                     ; 283 void TIM4_SetAutoreload(uint8_t Autoreload)
1088                     ; 284 {
1089                     	switch	.text
1090  01b4               _TIM4_SetAutoreload:
1094                     ; 286     TIM4->ARR = (uint8_t)(Autoreload);
1096  01b4 c75346        	ld	21318,a
1097                     ; 287 }
1100  01b7 81            	ret	
1123                     ; 294 uint8_t TIM4_GetCounter(void)
1123                     ; 295 {
1124                     	switch	.text
1125  01b8               _TIM4_GetCounter:
1129                     ; 297     return (uint8_t)(TIM4->CNTR);
1131  01b8 c65344        	ld	a,21316
1134  01bb 81            	ret	
1158                     ; 305 TIM4_Prescaler_TypeDef TIM4_GetPrescaler(void)
1158                     ; 306 {
1159                     	switch	.text
1160  01bc               _TIM4_GetPrescaler:
1164                     ; 308     return (TIM4_Prescaler_TypeDef)(TIM4->PSCR);
1166  01bc c65345        	ld	a,21317
1169  01bf 81            	ret	
1249                     ; 318 FlagStatus TIM4_GetFlagStatus(TIM4_FLAG_TypeDef TIM4_FLAG)
1249                     ; 319 {
1250                     	switch	.text
1251  01c0               _TIM4_GetFlagStatus:
1253  01c0 88            	push	a
1254  01c1 88            	push	a
1255       00000001      OFST:	set	1
1258                     ; 320     FlagStatus bitstatus = RESET;
1260                     ; 323     assert_param(IS_TIM4_GET_FLAG_OK(TIM4_FLAG));
1262  01c2 4a            	dec	a
1263  01c3 270e          	jreq	L071
1264  01c5 ae0143        	ldw	x,#323
1265  01c8 89            	pushw	x
1266  01c9 5f            	clrw	x
1267  01ca 89            	pushw	x
1268  01cb ae0000        	ldw	x,#L56
1269  01ce cd0000        	call	_assert_failed
1271  01d1 5b04          	addw	sp,#4
1272  01d3               L071:
1273                     ; 325   if ((TIM4->SR1 & (uint8_t)TIM4_FLAG)  != 0)
1275  01d3 c65342        	ld	a,21314
1276  01d6 1502          	bcp	a,(OFST+1,sp)
1277  01d8 2704          	jreq	L374
1278                     ; 327     bitstatus = SET;
1280  01da a601          	ld	a,#1
1283  01dc 2001          	jra	L574
1284  01de               L374:
1285                     ; 331     bitstatus = RESET;
1287  01de 4f            	clr	a
1289  01df               L574:
1290                     ; 333   return ((FlagStatus)bitstatus);
1294  01df 85            	popw	x
1295  01e0 81            	ret	
1331                     ; 343 void TIM4_ClearFlag(TIM4_FLAG_TypeDef TIM4_FLAG)
1331                     ; 344 {
1332                     	switch	.text
1333  01e1               _TIM4_ClearFlag:
1335  01e1 88            	push	a
1336       00000000      OFST:	set	0
1339                     ; 346     assert_param(IS_TIM4_GET_FLAG_OK(TIM4_FLAG));
1341  01e2 4a            	dec	a
1342  01e3 270e          	jreq	L002
1343  01e5 ae015a        	ldw	x,#346
1344  01e8 89            	pushw	x
1345  01e9 5f            	clrw	x
1346  01ea 89            	pushw	x
1347  01eb ae0000        	ldw	x,#L56
1348  01ee cd0000        	call	_assert_failed
1350  01f1 5b04          	addw	sp,#4
1351  01f3               L002:
1352                     ; 349     TIM4->SR1 = (uint8_t)(~TIM4_FLAG);
1354  01f3 7b01          	ld	a,(OFST+1,sp)
1355  01f5 43            	cpl	a
1356  01f6 c75342        	ld	21314,a
1357                     ; 351 }
1360  01f9 84            	pop	a
1361  01fa 81            	ret	
1422                     ; 360 ITStatus TIM4_GetITStatus(TIM4_IT_TypeDef TIM4_IT)
1422                     ; 361 {
1423                     	switch	.text
1424  01fb               _TIM4_GetITStatus:
1426  01fb 88            	push	a
1427  01fc 89            	pushw	x
1428       00000002      OFST:	set	2
1431                     ; 362     ITStatus bitstatus = RESET;
1433                     ; 364   uint8_t itstatus = 0x0, itenable = 0x0;
1437                     ; 367   assert_param(IS_TIM4_IT_OK(TIM4_IT));
1439  01fd 4a            	dec	a
1440  01fe 270e          	jreq	L012
1441  0200 ae016f        	ldw	x,#367
1442  0203 89            	pushw	x
1443  0204 5f            	clrw	x
1444  0205 89            	pushw	x
1445  0206 ae0000        	ldw	x,#L56
1446  0209 cd0000        	call	_assert_failed
1448  020c 5b04          	addw	sp,#4
1449  020e               L012:
1450                     ; 369   itstatus = (uint8_t)(TIM4->SR1 & (uint8_t)TIM4_IT);
1452  020e c65342        	ld	a,21314
1453  0211 1403          	and	a,(OFST+1,sp)
1454  0213 6b01          	ld	(OFST-1,sp),a
1456                     ; 371   itenable = (uint8_t)(TIM4->IER & (uint8_t)TIM4_IT);
1458  0215 c65341        	ld	a,21313
1459  0218 1403          	and	a,(OFST+1,sp)
1460  021a 6b02          	ld	(OFST+0,sp),a
1462                     ; 373   if ((itstatus != (uint8_t)RESET ) && (itenable != (uint8_t)RESET ))
1464  021c 7b01          	ld	a,(OFST-1,sp)
1465  021e 2708          	jreq	L345
1467  0220 7b02          	ld	a,(OFST+0,sp)
1468  0222 2704          	jreq	L345
1469                     ; 375     bitstatus = (ITStatus)SET;
1471  0224 a601          	ld	a,#1
1474  0226 2001          	jra	L545
1475  0228               L345:
1476                     ; 379     bitstatus = (ITStatus)RESET;
1478  0228 4f            	clr	a
1480  0229               L545:
1481                     ; 381   return ((ITStatus)bitstatus);
1485  0229 5b03          	addw	sp,#3
1486  022b 81            	ret	
1523                     ; 391 void TIM4_ClearITPendingBit(TIM4_IT_TypeDef TIM4_IT)
1523                     ; 392 {
1524                     	switch	.text
1525  022c               _TIM4_ClearITPendingBit:
1527  022c 88            	push	a
1528       00000000      OFST:	set	0
1531                     ; 394     assert_param(IS_TIM4_IT_OK(TIM4_IT));
1533  022d 4a            	dec	a
1534  022e 270e          	jreq	L022
1535  0230 ae018a        	ldw	x,#394
1536  0233 89            	pushw	x
1537  0234 5f            	clrw	x
1538  0235 89            	pushw	x
1539  0236 ae0000        	ldw	x,#L56
1540  0239 cd0000        	call	_assert_failed
1542  023c 5b04          	addw	sp,#4
1543  023e               L022:
1544                     ; 397     TIM4->SR1 = (uint8_t)(~TIM4_IT);
1546  023e 7b01          	ld	a,(OFST+1,sp)
1547  0240 43            	cpl	a
1548  0241 c75342        	ld	21314,a
1549                     ; 398 }
1552  0244 84            	pop	a
1553  0245 81            	ret	
1566                     	xdef	_TIM4_ClearITPendingBit
1567                     	xdef	_TIM4_GetITStatus
1568                     	xdef	_TIM4_ClearFlag
1569                     	xdef	_TIM4_GetFlagStatus
1570                     	xdef	_TIM4_GetPrescaler
1571                     	xdef	_TIM4_GetCounter
1572                     	xdef	_TIM4_SetAutoreload
1573                     	xdef	_TIM4_SetCounter
1574                     	xdef	_TIM4_GenerateEvent
1575                     	xdef	_TIM4_ARRPreloadConfig
1576                     	xdef	_TIM4_PrescalerConfig
1577                     	xdef	_TIM4_SelectOnePulseMode
1578                     	xdef	_TIM4_UpdateRequestConfig
1579                     	xdef	_TIM4_UpdateDisableConfig
1580                     	xdef	_TIM4_ITConfig
1581                     	xdef	_TIM4_Cmd
1582                     	xdef	_TIM4_TimeBaseInit
1583                     	xdef	_TIM4_DeInit
1584                     	xref	_assert_failed
1585                     .const:	section	.text
1586  0000               L56:
1587  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
1588  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
1589  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
1590  0036 5f74696d342e  	dc.b	"_tim4.c",0
1610                     	end
