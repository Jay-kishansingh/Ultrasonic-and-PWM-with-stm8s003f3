   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.8.1 - 09 Jan 2023
   3                     ; Generator (Limited) V4.5.5 - 08 Nov 2022
   4                     ; Optimizer V4.5.5 - 08 Nov 2022
  81                     ; 81 void FLASH_Unlock(FLASH_MemType_TypeDef FLASH_MemType)
  81                     ; 82 {
  83                     	switch	.text
  84  0000               _FLASH_Unlock:
  86  0000 88            	push	a
  87       00000000      OFST:	set	0
  90                     ; 84     assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
  92  0001 a1fd          	cp	a,#253
  93  0003 2712          	jreq	L21
  94  0005 a1f7          	cp	a,#247
  95  0007 270e          	jreq	L21
  96  0009 ae0054        	ldw	x,#84
  97  000c 89            	pushw	x
  98  000d 5f            	clrw	x
  99  000e 89            	pushw	x
 100  000f ae0010        	ldw	x,#L73
 101  0012 cd0000        	call	_assert_failed
 103  0015 5b04          	addw	sp,#4
 104  0017               L21:
 105                     ; 87     if (FLASH_MemType == FLASH_MEMTYPE_PROG)
 107  0017 7b01          	ld	a,(OFST+1,sp)
 108  0019 a1fd          	cp	a,#253
 109  001b 260a          	jrne	L14
 110                     ; 89         FLASH->PUKR = FLASH_RASS_KEY1;
 112  001d 35565062      	mov	20578,#86
 113                     ; 90         FLASH->PUKR = FLASH_RASS_KEY2;
 115  0021 35ae5062      	mov	20578,#174
 117  0025 2008          	jra	L34
 118  0027               L14:
 119                     ; 95         FLASH->DUKR = FLASH_RASS_KEY2; /* Warning: keys are reversed on data memory !!! */
 121  0027 35ae5064      	mov	20580,#174
 122                     ; 96         FLASH->DUKR = FLASH_RASS_KEY1;
 124  002b 35565064      	mov	20580,#86
 125  002f               L34:
 126                     ; 98 }
 129  002f 84            	pop	a
 130  0030 81            	ret	
 166                     ; 106 void FLASH_Lock(FLASH_MemType_TypeDef FLASH_MemType)
 166                     ; 107 {
 167                     	switch	.text
 168  0031               _FLASH_Lock:
 170  0031 88            	push	a
 171       00000000      OFST:	set	0
 174                     ; 109     assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
 176  0032 a1fd          	cp	a,#253
 177  0034 2712          	jreq	L42
 178  0036 a1f7          	cp	a,#247
 179  0038 270e          	jreq	L42
 180  003a ae006d        	ldw	x,#109
 181  003d 89            	pushw	x
 182  003e 5f            	clrw	x
 183  003f 89            	pushw	x
 184  0040 ae0010        	ldw	x,#L73
 185  0043 cd0000        	call	_assert_failed
 187  0046 5b04          	addw	sp,#4
 188  0048               L42:
 189                     ; 112   FLASH->IAPSR &= (uint8_t)FLASH_MemType;
 191  0048 c6505f        	ld	a,20575
 192  004b 1401          	and	a,(OFST+1,sp)
 193  004d c7505f        	ld	20575,a
 194                     ; 113 }
 197  0050 84            	pop	a
 198  0051 81            	ret	
 221                     ; 120 void FLASH_DeInit(void)
 221                     ; 121 {
 222                     	switch	.text
 223  0052               _FLASH_DeInit:
 227                     ; 122     FLASH->CR1 = FLASH_CR1_RESET_VALUE;
 229  0052 725f505a      	clr	20570
 230                     ; 123     FLASH->CR2 = FLASH_CR2_RESET_VALUE;
 232  0056 725f505b      	clr	20571
 233                     ; 124     FLASH->NCR2 = FLASH_NCR2_RESET_VALUE;
 235  005a 35ff505c      	mov	20572,#255
 236                     ; 125     FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_DUL);
 238  005e 7217505f      	bres	20575,#3
 239                     ; 126     FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_PUL);
 241  0062 7213505f      	bres	20575,#1
 242                     ; 127     (void) FLASH->IAPSR; /* Reading of this register causes the clearing of status flags */
 244  0066 c6505f        	ld	a,20575
 245                     ; 128 }
 248  0069 81            	ret	
 304                     ; 136 void FLASH_ITConfig(FunctionalState NewState)
 304                     ; 137 {
 305                     	switch	.text
 306  006a               _FLASH_ITConfig:
 308  006a 88            	push	a
 309       00000000      OFST:	set	0
 312                     ; 139   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 314  006b 4d            	tnz	a
 315  006c 2711          	jreq	L04
 316  006e 4a            	dec	a
 317  006f 270e          	jreq	L04
 318  0071 ae008b        	ldw	x,#139
 319  0074 89            	pushw	x
 320  0075 5f            	clrw	x
 321  0076 89            	pushw	x
 322  0077 ae0010        	ldw	x,#L73
 323  007a cd0000        	call	_assert_failed
 325  007d 5b04          	addw	sp,#4
 326  007f               L04:
 327                     ; 141     if (NewState != DISABLE)
 329  007f 7b01          	ld	a,(OFST+1,sp)
 330  0081 2706          	jreq	L121
 331                     ; 143         FLASH->CR1 |= FLASH_CR1_IE; /* Enables the interrupt sources */
 333  0083 7212505a      	bset	20570,#1
 335  0087 2004          	jra	L321
 336  0089               L121:
 337                     ; 147         FLASH->CR1 &= (uint8_t)(~FLASH_CR1_IE); /* Disables the interrupt sources */
 339  0089 7213505a      	bres	20570,#1
 340  008d               L321:
 341                     ; 149 }
 344  008d 84            	pop	a
 345  008e 81            	ret	
 378                     .const:	section	.text
 379  0000               L45:
 380  0000 00008000      	dc.l	32768
 381  0004               L65:
 382  0004 00010000      	dc.l	65536
 383  0008               L06:
 384  0008 00004000      	dc.l	16384
 385  000c               L26:
 386  000c 00004400      	dc.l	17408
 387                     ; 158 void FLASH_EraseByte(uint32_t Address)
 387                     ; 159 {
 388                     	switch	.text
 389  008f               _FLASH_EraseByte:
 391       00000000      OFST:	set	0
 394                     ; 161     assert_param(IS_FLASH_ADDRESS_OK(Address));
 396  008f 96            	ldw	x,sp
 397  0090 1c0003        	addw	x,#OFST+3
 398  0093 cd0000        	call	c_ltor
 400  0096 ae0000        	ldw	x,#L45
 401  0099 cd0000        	call	c_lcmp
 403  009c 250f          	jrult	L25
 404  009e 96            	ldw	x,sp
 405  009f 1c0003        	addw	x,#OFST+3
 406  00a2 cd0000        	call	c_ltor
 408  00a5 ae0004        	ldw	x,#L65
 409  00a8 cd0000        	call	c_lcmp
 411  00ab 252c          	jrult	L46
 412  00ad               L25:
 413  00ad 96            	ldw	x,sp
 414  00ae 1c0003        	addw	x,#OFST+3
 415  00b1 cd0000        	call	c_ltor
 417  00b4 ae0008        	ldw	x,#L06
 418  00b7 cd0000        	call	c_lcmp
 420  00ba 250f          	jrult	L64
 421  00bc 96            	ldw	x,sp
 422  00bd 1c0003        	addw	x,#OFST+3
 423  00c0 cd0000        	call	c_ltor
 425  00c3 ae000c        	ldw	x,#L26
 426  00c6 cd0000        	call	c_lcmp
 428  00c9 250e          	jrult	L46
 429  00cb               L64:
 430  00cb ae00a1        	ldw	x,#161
 431  00ce 89            	pushw	x
 432  00cf 5f            	clrw	x
 433  00d0 89            	pushw	x
 434  00d1 ae0010        	ldw	x,#L73
 435  00d4 cd0000        	call	_assert_failed
 437  00d7 5b04          	addw	sp,#4
 438  00d9               L46:
 439                     ; 164    *(PointerAttr uint8_t*) (uint16_t)Address = FLASH_CLEAR_BYTE; 
 441  00d9 1e05          	ldw	x,(OFST+5,sp)
 442  00db 7f            	clr	(x)
 443                     ; 166 }
 446  00dc 81            	ret	
 486                     ; 176 void FLASH_ProgramByte(uint32_t Address, uint8_t Data)
 486                     ; 177 {
 487                     	switch	.text
 488  00dd               _FLASH_ProgramByte:
 490       00000000      OFST:	set	0
 493                     ; 179     assert_param(IS_FLASH_ADDRESS_OK(Address));
 495  00dd 96            	ldw	x,sp
 496  00de 1c0003        	addw	x,#OFST+3
 497  00e1 cd0000        	call	c_ltor
 499  00e4 ae0000        	ldw	x,#L45
 500  00e7 cd0000        	call	c_lcmp
 502  00ea 250f          	jrult	L67
 503  00ec 96            	ldw	x,sp
 504  00ed 1c0003        	addw	x,#OFST+3
 505  00f0 cd0000        	call	c_ltor
 507  00f3 ae0004        	ldw	x,#L65
 508  00f6 cd0000        	call	c_lcmp
 510  00f9 252c          	jrult	L001
 511  00fb               L67:
 512  00fb 96            	ldw	x,sp
 513  00fc 1c0003        	addw	x,#OFST+3
 514  00ff cd0000        	call	c_ltor
 516  0102 ae0008        	ldw	x,#L06
 517  0105 cd0000        	call	c_lcmp
 519  0108 250f          	jrult	L27
 520  010a 96            	ldw	x,sp
 521  010b 1c0003        	addw	x,#OFST+3
 522  010e cd0000        	call	c_ltor
 524  0111 ae000c        	ldw	x,#L26
 525  0114 cd0000        	call	c_lcmp
 527  0117 250e          	jrult	L001
 528  0119               L27:
 529  0119 ae00b3        	ldw	x,#179
 530  011c 89            	pushw	x
 531  011d 5f            	clrw	x
 532  011e 89            	pushw	x
 533  011f ae0010        	ldw	x,#L73
 534  0122 cd0000        	call	_assert_failed
 536  0125 5b04          	addw	sp,#4
 537  0127               L001:
 538                     ; 180     *(PointerAttr uint8_t*) (uint16_t)Address = Data;
 540  0127 1e05          	ldw	x,(OFST+5,sp)
 541  0129 7b07          	ld	a,(OFST+7,sp)
 542  012b f7            	ld	(x),a
 543                     ; 181 }
 546  012c 81            	ret	
 579                     ; 190 uint8_t FLASH_ReadByte(uint32_t Address)
 579                     ; 191 {
 580                     	switch	.text
 581  012d               _FLASH_ReadByte:
 583       00000000      OFST:	set	0
 586                     ; 193     assert_param(IS_FLASH_ADDRESS_OK(Address));
 588  012d 96            	ldw	x,sp
 589  012e 1c0003        	addw	x,#OFST+3
 590  0131 cd0000        	call	c_ltor
 592  0134 ae0000        	ldw	x,#L45
 593  0137 cd0000        	call	c_lcmp
 595  013a 250f          	jrult	L211
 596  013c 96            	ldw	x,sp
 597  013d 1c0003        	addw	x,#OFST+3
 598  0140 cd0000        	call	c_ltor
 600  0143 ae0004        	ldw	x,#L65
 601  0146 cd0000        	call	c_lcmp
 603  0149 252c          	jrult	L411
 604  014b               L211:
 605  014b 96            	ldw	x,sp
 606  014c 1c0003        	addw	x,#OFST+3
 607  014f cd0000        	call	c_ltor
 609  0152 ae0008        	ldw	x,#L06
 610  0155 cd0000        	call	c_lcmp
 612  0158 250f          	jrult	L601
 613  015a 96            	ldw	x,sp
 614  015b 1c0003        	addw	x,#OFST+3
 615  015e cd0000        	call	c_ltor
 617  0161 ae000c        	ldw	x,#L26
 618  0164 cd0000        	call	c_lcmp
 620  0167 250e          	jrult	L411
 621  0169               L601:
 622  0169 ae00c1        	ldw	x,#193
 623  016c 89            	pushw	x
 624  016d 5f            	clrw	x
 625  016e 89            	pushw	x
 626  016f ae0010        	ldw	x,#L73
 627  0172 cd0000        	call	_assert_failed
 629  0175 5b04          	addw	sp,#4
 630  0177               L411:
 631                     ; 196     return(*(PointerAttr uint8_t *) (uint16_t)Address); 
 633  0177 1e05          	ldw	x,(OFST+5,sp)
 634  0179 f6            	ld	a,(x)
 637  017a 81            	ret	
 677                     ; 207 void FLASH_ProgramWord(uint32_t Address, uint32_t Data)
 677                     ; 208 {
 678                     	switch	.text
 679  017b               _FLASH_ProgramWord:
 681       00000000      OFST:	set	0
 684                     ; 210     assert_param(IS_FLASH_ADDRESS_OK(Address));
 686  017b 96            	ldw	x,sp
 687  017c 1c0003        	addw	x,#OFST+3
 688  017f cd0000        	call	c_ltor
 690  0182 ae0000        	ldw	x,#L45
 691  0185 cd0000        	call	c_lcmp
 693  0188 250f          	jrult	L621
 694  018a 96            	ldw	x,sp
 695  018b 1c0003        	addw	x,#OFST+3
 696  018e cd0000        	call	c_ltor
 698  0191 ae0004        	ldw	x,#L65
 699  0194 cd0000        	call	c_lcmp
 701  0197 252c          	jrult	L031
 702  0199               L621:
 703  0199 96            	ldw	x,sp
 704  019a 1c0003        	addw	x,#OFST+3
 705  019d cd0000        	call	c_ltor
 707  01a0 ae0008        	ldw	x,#L06
 708  01a3 cd0000        	call	c_lcmp
 710  01a6 250f          	jrult	L221
 711  01a8 96            	ldw	x,sp
 712  01a9 1c0003        	addw	x,#OFST+3
 713  01ac cd0000        	call	c_ltor
 715  01af ae000c        	ldw	x,#L26
 716  01b2 cd0000        	call	c_lcmp
 718  01b5 250e          	jrult	L031
 719  01b7               L221:
 720  01b7 ae00d2        	ldw	x,#210
 721  01ba 89            	pushw	x
 722  01bb 5f            	clrw	x
 723  01bc 89            	pushw	x
 724  01bd ae0010        	ldw	x,#L73
 725  01c0 cd0000        	call	_assert_failed
 727  01c3 5b04          	addw	sp,#4
 728  01c5               L031:
 729                     ; 213     FLASH->CR2 |= FLASH_CR2_WPRG;
 731  01c5 721c505b      	bset	20571,#6
 732                     ; 214     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NWPRG);
 734  01c9 721d505c      	bres	20572,#6
 735                     ; 217     *((PointerAttr uint8_t*)(uint16_t)Address)       = *((uint8_t*)(&Data));
 737  01cd 1e05          	ldw	x,(OFST+5,sp)
 738  01cf 7b07          	ld	a,(OFST+7,sp)
 739  01d1 f7            	ld	(x),a
 740                     ; 219     *(((PointerAttr uint8_t*)(uint16_t)Address) + 1) = *((uint8_t*)(&Data)+1); 
 742  01d2 7b08          	ld	a,(OFST+8,sp)
 743  01d4 e701          	ld	(1,x),a
 744                     ; 221     *(((PointerAttr uint8_t*)(uint16_t)Address) + 2) = *((uint8_t*)(&Data)+2); 
 746  01d6 7b09          	ld	a,(OFST+9,sp)
 747  01d8 e702          	ld	(2,x),a
 748                     ; 223     *(((PointerAttr uint8_t*)(uint16_t)Address) + 3) = *((uint8_t*)(&Data)+3); 
 750  01da 7b0a          	ld	a,(OFST+10,sp)
 751  01dc e703          	ld	(3,x),a
 752                     ; 224 }
 755  01de 81            	ret	
 797                     ; 232 void FLASH_ProgramOptionByte(uint16_t Address, uint8_t Data)
 797                     ; 233 {
 798                     	switch	.text
 799  01df               _FLASH_ProgramOptionByte:
 801  01df 89            	pushw	x
 802       00000000      OFST:	set	0
 805                     ; 235     assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
 807  01e0 a34800        	cpw	x,#18432
 808  01e3 2505          	jrult	L631
 809  01e5 a34880        	cpw	x,#18560
 810  01e8 250e          	jrult	L041
 811  01ea               L631:
 812  01ea ae00eb        	ldw	x,#235
 813  01ed 89            	pushw	x
 814  01ee 5f            	clrw	x
 815  01ef 89            	pushw	x
 816  01f0 ae0010        	ldw	x,#L73
 817  01f3 cd0000        	call	_assert_failed
 819  01f6 5b04          	addw	sp,#4
 820  01f8               L041:
 821                     ; 238     FLASH->CR2 |= FLASH_CR2_OPT;
 823  01f8 721e505b      	bset	20571,#7
 824                     ; 239     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
 826  01fc 721f505c      	bres	20572,#7
 827                     ; 242     if (Address == 0x4800)
 829  0200 1e01          	ldw	x,(OFST+1,sp)
 830  0202 a34800        	cpw	x,#18432
 831  0205 2605          	jrne	L722
 832                     ; 245        *((NEAR uint8_t*)Address) = Data;
 834  0207 7b05          	ld	a,(OFST+5,sp)
 835  0209 f7            	ld	(x),a
 837  020a 2006          	jra	L132
 838  020c               L722:
 839                     ; 250        *((NEAR uint8_t*)Address) = Data;
 841  020c 7b05          	ld	a,(OFST+5,sp)
 842  020e f7            	ld	(x),a
 843                     ; 251        *((NEAR uint8_t*)((uint16_t)(Address + 1))) = (uint8_t)(~Data);
 845  020f 43            	cpl	a
 846  0210 e701          	ld	(1,x),a
 847  0212               L132:
 848                     ; 253     FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
 850  0212 a6fd          	ld	a,#253
 851  0214 cd036c        	call	_FLASH_WaitForLastOperation
 853                     ; 256     FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
 855  0217 721f505b      	bres	20571,#7
 856                     ; 257     FLASH->NCR2 |= FLASH_NCR2_NOPT;
 858  021b 721e505c      	bset	20572,#7
 859                     ; 258 }
 862  021f 85            	popw	x
 863  0220 81            	ret	
 898                     ; 265 void FLASH_EraseOptionByte(uint16_t Address)
 898                     ; 266 {
 899                     	switch	.text
 900  0221               _FLASH_EraseOptionByte:
 902  0221 89            	pushw	x
 903       00000000      OFST:	set	0
 906                     ; 268     assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
 908  0222 a34800        	cpw	x,#18432
 909  0225 2505          	jrult	L051
 910  0227 a34880        	cpw	x,#18560
 911  022a 250e          	jrult	L251
 912  022c               L051:
 913  022c ae010c        	ldw	x,#268
 914  022f 89            	pushw	x
 915  0230 5f            	clrw	x
 916  0231 89            	pushw	x
 917  0232 ae0010        	ldw	x,#L73
 918  0235 cd0000        	call	_assert_failed
 920  0238 5b04          	addw	sp,#4
 921  023a               L251:
 922                     ; 271     FLASH->CR2 |= FLASH_CR2_OPT;
 924  023a 721e505b      	bset	20571,#7
 925                     ; 272     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
 927  023e 721f505c      	bres	20572,#7
 928                     ; 275      if (Address == 0x4800)
 930  0242 1e01          	ldw	x,(OFST+1,sp)
 931  0244 a34800        	cpw	x,#18432
 932  0247 2603          	jrne	L742
 933                     ; 278        *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
 935  0249 7f            	clr	(x)
 937  024a 2005          	jra	L152
 938  024c               L742:
 939                     ; 283        *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
 941  024c 7f            	clr	(x)
 942                     ; 284        *((NEAR uint8_t*)((uint16_t)(Address + (uint16_t)1 ))) = FLASH_SET_BYTE;
 944  024d a6ff          	ld	a,#255
 945  024f e701          	ld	(1,x),a
 946  0251               L152:
 947                     ; 286     FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
 949  0251 a6fd          	ld	a,#253
 950  0253 cd036c        	call	_FLASH_WaitForLastOperation
 952                     ; 289     FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
 954  0256 721f505b      	bres	20571,#7
 955                     ; 290     FLASH->NCR2 |= FLASH_NCR2_NOPT;
 957  025a 721e505c      	bset	20572,#7
 958                     ; 291 }
 961  025e 85            	popw	x
 962  025f 81            	ret	
1018                     ; 297 uint16_t FLASH_ReadOptionByte(uint16_t Address)
1018                     ; 298 {
1019                     	switch	.text
1020  0260               _FLASH_ReadOptionByte:
1022  0260 89            	pushw	x
1023  0261 5204          	subw	sp,#4
1024       00000004      OFST:	set	4
1027                     ; 299     uint8_t value_optbyte, value_optbyte_complement = 0;
1029                     ; 300     uint16_t res_value = 0;
1031                     ; 303     assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
1033  0263 a34800        	cpw	x,#18432
1034  0266 2505          	jrult	L261
1035  0268 a34880        	cpw	x,#18560
1036  026b 250e          	jrult	L461
1037  026d               L261:
1038  026d ae012f        	ldw	x,#303
1039  0270 89            	pushw	x
1040  0271 5f            	clrw	x
1041  0272 89            	pushw	x
1042  0273 ae0010        	ldw	x,#L73
1043  0276 cd0000        	call	_assert_failed
1045  0279 5b04          	addw	sp,#4
1046  027b               L461:
1047                     ; 306     value_optbyte = *((NEAR uint8_t*)Address); /* Read option byte */
1049  027b 1e05          	ldw	x,(OFST+1,sp)
1050  027d f6            	ld	a,(x)
1051  027e 6b01          	ld	(OFST-3,sp),a
1053                     ; 307     value_optbyte_complement = *(((NEAR uint8_t*)Address) + 1); /* Read option byte complement */
1055  0280 e601          	ld	a,(1,x)
1056  0282 6b02          	ld	(OFST-2,sp),a
1058                     ; 310     if (Address == 0x4800)	 
1060  0284 a34800        	cpw	x,#18432
1061  0287 2606          	jrne	L572
1062                     ; 312         res_value =	 value_optbyte;
1064  0289 7b01          	ld	a,(OFST-3,sp)
1065  028b 5f            	clrw	x
1066  028c 97            	ld	xl,a
1069  028d 201c          	jra	L772
1070  028f               L572:
1071                     ; 316         if (value_optbyte == (uint8_t)(~value_optbyte_complement))
1073  028f 43            	cpl	a
1074  0290 1101          	cp	a,(OFST-3,sp)
1075  0292 2614          	jrne	L103
1076                     ; 318             res_value = (uint16_t)((uint16_t)value_optbyte << 8);
1078  0294 7b01          	ld	a,(OFST-3,sp)
1079  0296 97            	ld	xl,a
1080  0297 4f            	clr	a
1081  0298 02            	rlwa	x,a
1082  0299 1f03          	ldw	(OFST-1,sp),x
1084                     ; 319             res_value = res_value | (uint16_t)value_optbyte_complement;
1086  029b 5f            	clrw	x
1087  029c 7b02          	ld	a,(OFST-2,sp)
1088  029e 97            	ld	xl,a
1089  029f 01            	rrwa	x,a
1090  02a0 1a04          	or	a,(OFST+0,sp)
1091  02a2 01            	rrwa	x,a
1092  02a3 1a03          	or	a,(OFST-1,sp)
1093  02a5 01            	rrwa	x,a
1096  02a6 2003          	jra	L772
1097  02a8               L103:
1098                     ; 323             res_value = FLASH_OPTIONBYTE_ERROR;
1100  02a8 ae5555        	ldw	x,#21845
1102  02ab               L772:
1103                     ; 326     return(res_value);
1107  02ab 5b06          	addw	sp,#6
1108  02ad 81            	ret	
1183                     ; 335 void FLASH_SetLowPowerMode(FLASH_LPMode_TypeDef FLASH_LPMode)
1183                     ; 336 {
1184                     	switch	.text
1185  02ae               _FLASH_SetLowPowerMode:
1187  02ae 88            	push	a
1188       00000000      OFST:	set	0
1191                     ; 338     assert_param(IS_FLASH_LOW_POWER_MODE_OK(FLASH_LPMode));
1193  02af a104          	cp	a,#4
1194  02b1 2719          	jreq	L671
1195  02b3 a108          	cp	a,#8
1196  02b5 2715          	jreq	L671
1197  02b7 4d            	tnz	a
1198  02b8 2712          	jreq	L671
1199  02ba a10c          	cp	a,#12
1200  02bc 270e          	jreq	L671
1201  02be ae0152        	ldw	x,#338
1202  02c1 89            	pushw	x
1203  02c2 5f            	clrw	x
1204  02c3 89            	pushw	x
1205  02c4 ae0010        	ldw	x,#L73
1206  02c7 cd0000        	call	_assert_failed
1208  02ca 5b04          	addw	sp,#4
1209  02cc               L671:
1210                     ; 341     FLASH->CR1 &= (uint8_t)(~(FLASH_CR1_HALT | FLASH_CR1_AHALT)); 
1212  02cc c6505a        	ld	a,20570
1213  02cf a4f3          	and	a,#243
1214  02d1 c7505a        	ld	20570,a
1215                     ; 344     FLASH->CR1 |= (uint8_t)FLASH_LPMode; 
1217  02d4 c6505a        	ld	a,20570
1218  02d7 1a01          	or	a,(OFST+1,sp)
1219  02d9 c7505a        	ld	20570,a
1220                     ; 345 }
1223  02dc 84            	pop	a
1224  02dd 81            	ret	
1283                     ; 353 void FLASH_SetProgrammingTime(FLASH_ProgramTime_TypeDef FLASH_ProgTime)
1283                     ; 354 {
1284                     	switch	.text
1285  02de               _FLASH_SetProgrammingTime:
1287  02de 88            	push	a
1288       00000000      OFST:	set	0
1291                     ; 356     assert_param(IS_FLASH_PROGRAM_TIME_OK(FLASH_ProgTime));
1293  02df 4d            	tnz	a
1294  02e0 2711          	jreq	L012
1295  02e2 4a            	dec	a
1296  02e3 270e          	jreq	L012
1297  02e5 ae0164        	ldw	x,#356
1298  02e8 89            	pushw	x
1299  02e9 5f            	clrw	x
1300  02ea 89            	pushw	x
1301  02eb ae0010        	ldw	x,#L73
1302  02ee cd0000        	call	_assert_failed
1304  02f1 5b04          	addw	sp,#4
1305  02f3               L012:
1306                     ; 358     FLASH->CR1 &= (uint8_t)(~FLASH_CR1_FIX);
1308  02f3 7211505a      	bres	20570,#0
1309                     ; 359     FLASH->CR1 |= (uint8_t)FLASH_ProgTime;
1311  02f7 c6505a        	ld	a,20570
1312  02fa 1a01          	or	a,(OFST+1,sp)
1313  02fc c7505a        	ld	20570,a
1314                     ; 360 }
1317  02ff 84            	pop	a
1318  0300 81            	ret	
1343                     ; 367 FLASH_LPMode_TypeDef FLASH_GetLowPowerMode(void)
1343                     ; 368 {
1344                     	switch	.text
1345  0301               _FLASH_GetLowPowerMode:
1349                     ; 369     return((FLASH_LPMode_TypeDef)(FLASH->CR1 & (uint8_t)(FLASH_CR1_HALT | FLASH_CR1_AHALT)));
1351  0301 c6505a        	ld	a,20570
1352  0304 a40c          	and	a,#12
1355  0306 81            	ret	
1380                     ; 377 FLASH_ProgramTime_TypeDef FLASH_GetProgrammingTime(void)
1380                     ; 378 {
1381                     	switch	.text
1382  0307               _FLASH_GetProgrammingTime:
1386                     ; 379     return((FLASH_ProgramTime_TypeDef)(FLASH->CR1 & FLASH_CR1_FIX));
1388  0307 c6505a        	ld	a,20570
1389  030a a401          	and	a,#1
1392  030c 81            	ret	
1424                     ; 387 uint32_t FLASH_GetBootSize(void)
1424                     ; 388 {
1425                     	switch	.text
1426  030d               _FLASH_GetBootSize:
1428  030d 5204          	subw	sp,#4
1429       00000004      OFST:	set	4
1432                     ; 389     uint32_t temp = 0;
1434                     ; 392     temp = (uint32_t)((uint32_t)FLASH->FPR * (uint32_t)512);
1436  030f c6505d        	ld	a,20573
1437  0312 5f            	clrw	x
1438  0313 97            	ld	xl,a
1439  0314 90ae0200      	ldw	y,#512
1440  0318 cd0000        	call	c_umul
1442  031b 96            	ldw	x,sp
1443  031c 5c            	incw	x
1444  031d cd0000        	call	c_rtol
1447                     ; 395     if (FLASH->FPR == 0xFF)
1449  0320 c6505d        	ld	a,20573
1450  0323 4c            	inc	a
1451  0324 260d          	jrne	L124
1452                     ; 397         temp += 512;
1454  0326 ae0200        	ldw	x,#512
1455  0329 bf02          	ldw	c_lreg+2,x
1456  032b 5f            	clrw	x
1457  032c bf00          	ldw	c_lreg,x
1458  032e 96            	ldw	x,sp
1459  032f 5c            	incw	x
1460  0330 cd0000        	call	c_lgadd
1463  0333               L124:
1464                     ; 401     return(temp);
1466  0333 96            	ldw	x,sp
1467  0334 5c            	incw	x
1468  0335 cd0000        	call	c_ltor
1472  0338 5b04          	addw	sp,#4
1473  033a 81            	ret	
1583                     ; 412 FlagStatus FLASH_GetFlagStatus(FLASH_Flag_TypeDef FLASH_FLAG)
1583                     ; 413 {
1584                     	switch	.text
1585  033b               _FLASH_GetFlagStatus:
1587  033b 88            	push	a
1588  033c 88            	push	a
1589       00000001      OFST:	set	1
1592                     ; 414     FlagStatus status = RESET;
1594                     ; 416     assert_param(IS_FLASH_FLAGS_OK(FLASH_FLAG));
1596  033d a140          	cp	a,#64
1597  033f 271d          	jreq	L032
1598  0341 a108          	cp	a,#8
1599  0343 2719          	jreq	L032
1600  0345 a104          	cp	a,#4
1601  0347 2715          	jreq	L032
1602  0349 a102          	cp	a,#2
1603  034b 2711          	jreq	L032
1604  034d 4a            	dec	a
1605  034e 270e          	jreq	L032
1606  0350 ae01a0        	ldw	x,#416
1607  0353 89            	pushw	x
1608  0354 5f            	clrw	x
1609  0355 89            	pushw	x
1610  0356 ae0010        	ldw	x,#L73
1611  0359 cd0000        	call	_assert_failed
1613  035c 5b04          	addw	sp,#4
1614  035e               L032:
1615                     ; 419     if ((FLASH->IAPSR & (uint8_t)FLASH_FLAG) != (uint8_t)RESET)
1617  035e c6505f        	ld	a,20575
1618  0361 1502          	bcp	a,(OFST+1,sp)
1619  0363 2704          	jreq	L374
1620                     ; 421         status = SET; /* FLASH_FLAG is set */
1622  0365 a601          	ld	a,#1
1625  0367 2001          	jra	L574
1626  0369               L374:
1627                     ; 425         status = RESET; /* FLASH_FLAG is reset*/
1629  0369 4f            	clr	a
1631  036a               L574:
1632                     ; 429     return status;
1636  036a 85            	popw	x
1637  036b 81            	ret	
1726                     ; 531 IN_RAM(FLASH_Status_TypeDef FLASH_WaitForLastOperation(FLASH_MemType_TypeDef FLASH_MemType)) 
1726                     ; 532 {
1727                     	switch	.text
1728  036c               _FLASH_WaitForLastOperation:
1730  036c 5205          	subw	sp,#5
1731       00000005      OFST:	set	5
1734                     ; 533     uint8_t flagstatus = 0x00;
1736  036e 0f05          	clr	(OFST+0,sp)
1738                     ; 534     uint32_t timeout = OPERATION_TIMEOUT;
1740  0370 aeffff        	ldw	x,#65535
1741  0373 1f03          	ldw	(OFST-2,sp),x
1742  0375 ae000f        	ldw	x,#15
1743  0378 1f01          	ldw	(OFST-4,sp),x
1745                     ; 539     if (FLASH_MemType == FLASH_MEMTYPE_PROG)
1747  037a a1fd          	cp	a,#253
1748  037c 262b          	jrne	L355
1750  037e 200e          	jra	L145
1751  0380               L735:
1752                     ; 543             flagstatus = (uint8_t)(FLASH->IAPSR & (uint8_t)(FLASH_IAPSR_EOP |
1752                     ; 544                                               FLASH_IAPSR_WR_PG_DIS));
1754  0380 c6505f        	ld	a,20575
1755  0383 a405          	and	a,#5
1756  0385 6b05          	ld	(OFST+0,sp),a
1758                     ; 545             timeout--;
1760  0387 96            	ldw	x,sp
1761  0388 5c            	incw	x
1762  0389 a601          	ld	a,#1
1763  038b cd0000        	call	c_lgsbc
1766  038e               L145:
1767                     ; 541         while ((flagstatus == 0x00) && (timeout != 0x00))
1769  038e 7b05          	ld	a,(OFST+0,sp)
1770  0390 2622          	jrne	L745
1772  0392 96            	ldw	x,sp
1773  0393 5c            	incw	x
1774  0394 cd0000        	call	c_lzmp
1776  0397 26e7          	jrne	L735
1777  0399 2019          	jra	L745
1778  039b               L155:
1779                     ; 552             flagstatus = (uint8_t)(FLASH->IAPSR & (uint8_t)(FLASH_IAPSR_HVOFF |
1779                     ; 553                                               FLASH_IAPSR_WR_PG_DIS));
1781  039b c6505f        	ld	a,20575
1782  039e a441          	and	a,#65
1783  03a0 6b05          	ld	(OFST+0,sp),a
1785                     ; 554             timeout--;
1787  03a2 96            	ldw	x,sp
1788  03a3 5c            	incw	x
1789  03a4 a601          	ld	a,#1
1790  03a6 cd0000        	call	c_lgsbc
1793  03a9               L355:
1794                     ; 550         while ((flagstatus == 0x00) && (timeout != 0x00))
1796  03a9 7b05          	ld	a,(OFST+0,sp)
1797  03ab 2607          	jrne	L745
1799  03ad 96            	ldw	x,sp
1800  03ae 5c            	incw	x
1801  03af cd0000        	call	c_lzmp
1803  03b2 26e7          	jrne	L155
1804  03b4               L745:
1805                     ; 566     if (timeout == 0x00 )
1807  03b4 96            	ldw	x,sp
1808  03b5 5c            	incw	x
1809  03b6 cd0000        	call	c_lzmp
1811  03b9 2604          	jrne	L165
1812                     ; 568         flagstatus = FLASH_STATUS_TIMEOUT;
1814  03bb a602          	ld	a,#2
1815  03bd 6b05          	ld	(OFST+0,sp),a
1817  03bf               L165:
1818                     ; 571     return((FLASH_Status_TypeDef)flagstatus);
1820  03bf 7b05          	ld	a,(OFST+0,sp)
1823  03c1 5b05          	addw	sp,#5
1824  03c3 81            	ret	
1884                     ; 581 IN_RAM(void FLASH_EraseBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType))
1884                     ; 582 {
1885                     	switch	.text
1886  03c4               _FLASH_EraseBlock:
1888  03c4 89            	pushw	x
1889  03c5 5206          	subw	sp,#6
1890       00000006      OFST:	set	6
1893                     ; 583   uint32_t startaddress = 0;
1895                     ; 592   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
1897  03c7 7b0b          	ld	a,(OFST+5,sp)
1898  03c9 a1fd          	cp	a,#253
1899  03cb 270b          	jreq	L442
1900  03cd a1f7          	cp	a,#247
1901  03cf 2707          	jreq	L442
1902  03d1 ae0250        	ldw	x,#592
1903  03d4 ad50          	call	LC001
1904  03d6 7b0b          	ld	a,(OFST+5,sp)
1905  03d8               L442:
1906                     ; 593   if (FLASH_MemType == FLASH_MEMTYPE_PROG)
1908  03d8 a1fd          	cp	a,#253
1909  03da 2611          	jrne	L116
1910                     ; 595       assert_param(IS_FLASH_PROG_BLOCK_NUMBER_OK(BlockNum));
1912  03dc 1e07          	ldw	x,(OFST+1,sp)
1913  03de a30100        	cpw	x,#256
1914  03e1 2505          	jrult	L252
1915  03e3 ae0253        	ldw	x,#595
1916  03e6 ad3e          	call	LC001
1917  03e8               L252:
1918                     ; 596       startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
1920  03e8 ae8000        	ldw	x,#32768
1922  03eb 200f          	jra	L316
1923  03ed               L116:
1924                     ; 600       assert_param(IS_FLASH_DATA_BLOCK_NUMBER_OK(BlockNum));
1926  03ed 1e07          	ldw	x,(OFST+1,sp)
1927  03ef a30008        	cpw	x,#8
1928  03f2 2505          	jrult	L062
1929  03f4 ae0258        	ldw	x,#600
1930  03f7 ad2d          	call	LC001
1931  03f9               L062:
1932                     ; 601       startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
1934  03f9 ae4000        	ldw	x,#16384
1935  03fc               L316:
1936  03fc 1f05          	ldw	(OFST-1,sp),x
1937  03fe 5f            	clrw	x
1938  03ff 1f03          	ldw	(OFST-3,sp),x
1940                     ; 608     pwFlash = (PointerAttr uint32_t *)(uint16_t)(startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE));
1942  0401 a680          	ld	a,#128
1943  0403 1e07          	ldw	x,(OFST+1,sp)
1944  0405 cd0000        	call	c_cmulx
1946  0408 96            	ldw	x,sp
1947  0409 1c0003        	addw	x,#OFST-3
1948  040c cd0000        	call	c_ladd
1950  040f be02          	ldw	x,c_lreg+2
1951  0411 1f01          	ldw	(OFST-5,sp),x
1953                     ; 612     FLASH->CR2 |= FLASH_CR2_ERASE;
1955  0413 721a505b      	bset	20571,#5
1956                     ; 613     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NERASE);
1958  0417 721b505c      	bres	20572,#5
1959                     ; 616     *pwFlash = (uint32_t)0;
1961  041b 4f            	clr	a
1962  041c e703          	ld	(3,x),a
1963  041e e702          	ld	(2,x),a
1964  0420 e701          	ld	(1,x),a
1965  0422 f7            	ld	(x),a
1966                     ; 623 }
1969  0423 5b08          	addw	sp,#8
1970  0425 81            	ret	
1971  0426               LC001:
1972  0426 89            	pushw	x
1973  0427 5f            	clrw	x
1974  0428 89            	pushw	x
1975  0429 ae0010        	ldw	x,#L73
1976  042c cd0000        	call	_assert_failed
1978  042f 5b04          	addw	sp,#4
1979  0431 81            	ret	
2078                     ; 634 IN_RAM(void FLASH_ProgramBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType, 
2078                     ; 635                         FLASH_ProgramMode_TypeDef FLASH_ProgMode, uint8_t *Buffer))
2078                     ; 636 {
2079                     	switch	.text
2080  0432               _FLASH_ProgramBlock:
2082  0432 89            	pushw	x
2083  0433 5206          	subw	sp,#6
2084       00000006      OFST:	set	6
2087                     ; 637     uint16_t Count = 0;
2089                     ; 638     uint32_t startaddress = 0;
2091                     ; 641     assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
2093  0435 7b0b          	ld	a,(OFST+5,sp)
2094  0437 a1fd          	cp	a,#253
2095  0439 2709          	jreq	L272
2096  043b a1f7          	cp	a,#247
2097  043d 2705          	jreq	L272
2098  043f ae0281        	ldw	x,#641
2099  0442 ad76          	call	LC002
2100  0444               L272:
2101                     ; 642     assert_param(IS_FLASH_PROGRAM_MODE_OK(FLASH_ProgMode));
2103  0444 7b0c          	ld	a,(OFST+6,sp)
2104  0446 2709          	jreq	L203
2105  0448 a110          	cp	a,#16
2106  044a 2705          	jreq	L203
2107  044c ae0282        	ldw	x,#642
2108  044f ad69          	call	LC002
2109  0451               L203:
2110                     ; 643     if (FLASH_MemType == FLASH_MEMTYPE_PROG)
2112  0451 7b0b          	ld	a,(OFST+5,sp)
2113  0453 a1fd          	cp	a,#253
2114  0455 2611          	jrne	L166
2115                     ; 645         assert_param(IS_FLASH_PROG_BLOCK_NUMBER_OK(BlockNum));
2117  0457 1e07          	ldw	x,(OFST+1,sp)
2118  0459 a30100        	cpw	x,#256
2119  045c 2505          	jrult	L013
2120  045e ae0285        	ldw	x,#645
2121  0461 ad57          	call	LC002
2122  0463               L013:
2123                     ; 646         startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
2125  0463 ae8000        	ldw	x,#32768
2127  0466 200f          	jra	L366
2128  0468               L166:
2129                     ; 650         assert_param(IS_FLASH_DATA_BLOCK_NUMBER_OK(BlockNum));
2131  0468 1e07          	ldw	x,(OFST+1,sp)
2132  046a a30008        	cpw	x,#8
2133  046d 2505          	jrult	L613
2134  046f ae028a        	ldw	x,#650
2135  0472 ad46          	call	LC002
2136  0474               L613:
2137                     ; 651         startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
2139  0474 ae4000        	ldw	x,#16384
2140  0477               L366:
2141  0477 1f03          	ldw	(OFST-3,sp),x
2142  0479 5f            	clrw	x
2143  047a 1f01          	ldw	(OFST-5,sp),x
2145                     ; 655     startaddress = startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE);
2147  047c a680          	ld	a,#128
2148  047e 1e07          	ldw	x,(OFST+1,sp)
2149  0480 cd0000        	call	c_cmulx
2151  0483 96            	ldw	x,sp
2152  0484 5c            	incw	x
2153  0485 cd0000        	call	c_lgadd
2156                     ; 658     if (FLASH_ProgMode == FLASH_PROGRAMMODE_STANDARD)
2158  0488 7b0c          	ld	a,(OFST+6,sp)
2159  048a 260a          	jrne	L566
2160                     ; 661         FLASH->CR2 |= FLASH_CR2_PRG;
2162  048c 7210505b      	bset	20571,#0
2163                     ; 662         FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NPRG);
2165  0490 7211505c      	bres	20572,#0
2167  0494 2008          	jra	L766
2168  0496               L566:
2169                     ; 667         FLASH->CR2 |= FLASH_CR2_FPRG;
2171  0496 7218505b      	bset	20571,#4
2172                     ; 668         FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NFPRG);
2174  049a 7219505c      	bres	20572,#4
2175  049e               L766:
2176                     ; 672     for (Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
2178  049e 5f            	clrw	x
2179  049f 1f05          	ldw	(OFST-1,sp),x
2181  04a1               L176:
2182                     ; 676   *((PointerAttr uint8_t*) (uint16_t)startaddress + Count) = ((uint8_t)(Buffer[Count]));
2184  04a1 1e0d          	ldw	x,(OFST+7,sp)
2185  04a3 72fb05        	addw	x,(OFST-1,sp)
2186  04a6 f6            	ld	a,(x)
2187  04a7 1e03          	ldw	x,(OFST-3,sp)
2188  04a9 72fb05        	addw	x,(OFST-1,sp)
2189  04ac f7            	ld	(x),a
2190                     ; 672     for (Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
2192  04ad 1e05          	ldw	x,(OFST-1,sp)
2193  04af 5c            	incw	x
2194  04b0 1f05          	ldw	(OFST-1,sp),x
2198  04b2 a30080        	cpw	x,#128
2199  04b5 25ea          	jrult	L176
2200                     ; 681 }
2203  04b7 5b08          	addw	sp,#8
2204  04b9 81            	ret	
2205  04ba               LC002:
2206  04ba 89            	pushw	x
2207  04bb 5f            	clrw	x
2208  04bc 89            	pushw	x
2209  04bd ae0010        	ldw	x,#L73
2210  04c0 cd0000        	call	_assert_failed
2212  04c3 5b04          	addw	sp,#4
2213  04c5 81            	ret	
2226                     	xdef	_FLASH_WaitForLastOperation
2227                     	xdef	_FLASH_ProgramBlock
2228                     	xdef	_FLASH_EraseBlock
2229                     	xdef	_FLASH_GetFlagStatus
2230                     	xdef	_FLASH_GetBootSize
2231                     	xdef	_FLASH_GetProgrammingTime
2232                     	xdef	_FLASH_GetLowPowerMode
2233                     	xdef	_FLASH_SetProgrammingTime
2234                     	xdef	_FLASH_SetLowPowerMode
2235                     	xdef	_FLASH_EraseOptionByte
2236                     	xdef	_FLASH_ProgramOptionByte
2237                     	xdef	_FLASH_ReadOptionByte
2238                     	xdef	_FLASH_ProgramWord
2239                     	xdef	_FLASH_ReadByte
2240                     	xdef	_FLASH_ProgramByte
2241                     	xdef	_FLASH_EraseByte
2242                     	xdef	_FLASH_ITConfig
2243                     	xdef	_FLASH_DeInit
2244                     	xdef	_FLASH_Lock
2245                     	xdef	_FLASH_Unlock
2246                     	xref	_assert_failed
2247                     	switch	.const
2248  0010               L73:
2249  0010 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
2250  0022 6965735c7374  	dc.b	"ies\stm8s_stdperip"
2251  0034 685f64726976  	dc.b	"h_driver\src\stm8s"
2252  0046 5f666c617368  	dc.b	"_flash.c",0
2253                     	xref.b	c_lreg
2254                     	xref.b	c_x
2255                     	xref.b	c_y
2275                     	xref	c_ladd
2276                     	xref	c_cmulx
2277                     	xref	c_lzmp
2278                     	xref	c_lgsbc
2279                     	xref	c_lgadd
2280                     	xref	c_rtol
2281                     	xref	c_umul
2282                     	xref	c_lcmp
2283                     	xref	c_ltor
2284                     	end
