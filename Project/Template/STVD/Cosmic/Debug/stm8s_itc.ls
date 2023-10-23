   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.8.1 - 09 Jan 2023
   3                     ; Generator (Limited) V4.5.5 - 08 Nov 2022
   4                     ; Optimizer V4.5.5 - 08 Nov 2022
  48                     ; 44 uint8_t ITC_GetCPUCC(void)
  48                     ; 45 {
  50                     	switch	.text
  51  0000               _ITC_GetCPUCC:
  55                     ; 47   _asm("push cc");
  58  0000 8a            	push	cc
  60                     ; 48   _asm("pop a");
  63  0001 84            	pop	a
  65                     ; 49   return ; /* Ignore compiler warning, the returned value is in A register */
  68  0002 81            	ret	
  91                     ; 75 void ITC_DeInit(void)
  91                     ; 76 {
  92                     	switch	.text
  93  0003               _ITC_DeInit:
  97                     ; 77     ITC->ISPR1 = ITC_SPRX_RESET_VALUE;
  99  0003 35ff7f70      	mov	32624,#255
 100                     ; 78     ITC->ISPR2 = ITC_SPRX_RESET_VALUE;
 102  0007 35ff7f71      	mov	32625,#255
 103                     ; 79     ITC->ISPR3 = ITC_SPRX_RESET_VALUE;
 105  000b 35ff7f72      	mov	32626,#255
 106                     ; 80     ITC->ISPR4 = ITC_SPRX_RESET_VALUE;
 108  000f 35ff7f73      	mov	32627,#255
 109                     ; 81     ITC->ISPR5 = ITC_SPRX_RESET_VALUE;
 111  0013 35ff7f74      	mov	32628,#255
 112                     ; 82     ITC->ISPR6 = ITC_SPRX_RESET_VALUE;
 114  0017 35ff7f75      	mov	32629,#255
 115                     ; 83     ITC->ISPR7 = ITC_SPRX_RESET_VALUE;
 117  001b 35ff7f76      	mov	32630,#255
 118                     ; 84     ITC->ISPR8 = ITC_SPRX_RESET_VALUE;
 120  001f 35ff7f77      	mov	32631,#255
 121                     ; 85 }
 124  0023 81            	ret	
 149                     ; 92 uint8_t ITC_GetSoftIntStatus(void)
 149                     ; 93 {
 150                     	switch	.text
 151  0024               _ITC_GetSoftIntStatus:
 155                     ; 94     return (uint8_t)(ITC_GetCPUCC() & CPU_CC_I1I0);
 157  0024 adda          	call	_ITC_GetCPUCC
 159  0026 a428          	and	a,#40
 162  0028 81            	ret	
 422                     .const:	section	.text
 423  0000               L23:
 424  0000 005e          	dc.w	L14
 425  0002 005e          	dc.w	L14
 426  0004 005e          	dc.w	L14
 427  0006 005e          	dc.w	L14
 428  0008 0063          	dc.w	L34
 429  000a 0063          	dc.w	L34
 430  000c 0063          	dc.w	L34
 431  000e 0063          	dc.w	L34
 432  0010 0083          	dc.w	L502
 433  0012 0083          	dc.w	L502
 434  0014 0068          	dc.w	L54
 435  0016 0068          	dc.w	L54
 436  0018 006d          	dc.w	L74
 437  001a 006d          	dc.w	L74
 438  001c 006d          	dc.w	L74
 439  001e 006d          	dc.w	L74
 440  0020 0072          	dc.w	L15
 441  0022 0072          	dc.w	L15
 442  0024 0072          	dc.w	L15
 443  0026 0072          	dc.w	L15
 444  0028 0077          	dc.w	L35
 445  002a 0077          	dc.w	L35
 446  002c 0077          	dc.w	L35
 447  002e 0077          	dc.w	L35
 448  0030 007c          	dc.w	L55
 449                     ; 102 ITC_PriorityLevel_TypeDef ITC_GetSoftwarePriority(ITC_Irq_TypeDef IrqNum)
 449                     ; 103 {
 450                     	switch	.text
 451  0029               _ITC_GetSoftwarePriority:
 453  0029 88            	push	a
 454  002a 89            	pushw	x
 455       00000002      OFST:	set	2
 458                     ; 105     uint8_t Value = 0;
 460  002b 0f02          	clr	(OFST+0,sp)
 462                     ; 106     uint8_t Mask = 0;
 464                     ; 109     assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
 466  002d a119          	cp	a,#25
 467  002f 250e          	jrult	L02
 468  0031 ae006d        	ldw	x,#109
 469  0034 89            	pushw	x
 470  0035 5f            	clrw	x
 471  0036 89            	pushw	x
 472  0037 ae0064        	ldw	x,#L102
 473  003a cd0000        	call	_assert_failed
 475  003d 5b04          	addw	sp,#4
 476  003f               L02:
 477                     ; 112     Mask = (uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U));
 479  003f 7b03          	ld	a,(OFST+1,sp)
 480  0041 a403          	and	a,#3
 481  0043 48            	sll	a
 482  0044 5f            	clrw	x
 483  0045 97            	ld	xl,a
 484  0046 a603          	ld	a,#3
 485  0048 5d            	tnzw	x
 486  0049 2704          	jreq	L42
 487  004b               L62:
 488  004b 48            	sll	a
 489  004c 5a            	decw	x
 490  004d 26fc          	jrne	L62
 491  004f               L42:
 492  004f 6b01          	ld	(OFST-1,sp),a
 494                     ; 114     switch (IrqNum)
 496  0051 7b03          	ld	a,(OFST+1,sp)
 498                     ; 184     default:
 498                     ; 185         break;
 499  0053 a119          	cp	a,#25
 500  0055 242c          	jruge	L502
 501  0057 5f            	clrw	x
 502  0058 97            	ld	xl,a
 503  0059 58            	sllw	x
 504  005a de0000        	ldw	x,(L23,x)
 505  005d fc            	jp	(x)
 506  005e               L14:
 507                     ; 116     case ITC_IRQ_TLI: /* TLI software priority can be read but has no meaning */
 507                     ; 117     case ITC_IRQ_AWU:
 507                     ; 118     case ITC_IRQ_CLK:
 507                     ; 119     case ITC_IRQ_PORTA:
 507                     ; 120         Value = (uint8_t)(ITC->ISPR1 & Mask); /* Read software priority */
 509  005e c67f70        	ld	a,32624
 510                     ; 121         break;
 512  0061 201c          	jp	LC001
 513  0063               L34:
 514                     ; 122     case ITC_IRQ_PORTB:
 514                     ; 123     case ITC_IRQ_PORTC:
 514                     ; 124     case ITC_IRQ_PORTD:
 514                     ; 125     case ITC_IRQ_PORTE:
 514                     ; 126         Value = (uint8_t)(ITC->ISPR2 & Mask); /* Read software priority */
 516  0063 c67f71        	ld	a,32625
 517                     ; 127         break;
 519  0066 2017          	jp	LC001
 520  0068               L54:
 521                     ; 137     case ITC_IRQ_SPI:
 521                     ; 138     case ITC_IRQ_TIM1_OVF:
 521                     ; 139         Value = (uint8_t)(ITC->ISPR3 & Mask); /* Read software priority */
 523  0068 c67f72        	ld	a,32626
 524                     ; 140         break;
 526  006b 2012          	jp	LC001
 527  006d               L74:
 528                     ; 141     case ITC_IRQ_TIM1_CAPCOM:
 528                     ; 142 #ifdef STM8S903
 528                     ; 143     case ITC_IRQ_TIM5_OVFTRI:
 528                     ; 144     case ITC_IRQ_TIM5_CAPCOM:
 528                     ; 145 #else
 528                     ; 146     case ITC_IRQ_TIM2_OVF:
 528                     ; 147     case ITC_IRQ_TIM2_CAPCOM:
 528                     ; 148 #endif /*STM8S903*/
 528                     ; 149 
 528                     ; 150     case ITC_IRQ_TIM3_OVF:
 528                     ; 151         Value = (uint8_t)(ITC->ISPR4 & Mask); /* Read software priority */
 530  006d c67f73        	ld	a,32627
 531                     ; 152         break;
 533  0070 200d          	jp	LC001
 534  0072               L15:
 535                     ; 153     case ITC_IRQ_TIM3_CAPCOM:
 535                     ; 154     case ITC_IRQ_UART1_TX:
 535                     ; 155     case ITC_IRQ_UART1_RX:
 535                     ; 156     case ITC_IRQ_I2C:
 535                     ; 157         Value = (uint8_t)(ITC->ISPR5 & Mask); /* Read software priority */
 537  0072 c67f74        	ld	a,32628
 538                     ; 158         break;
 540  0075 2008          	jp	LC001
 541  0077               L35:
 542                     ; 160     case ITC_IRQ_UART2_TX:
 542                     ; 161     case ITC_IRQ_UART2_RX:
 542                     ; 162 #endif /*STM8S105 or STM8AF626x*/
 542                     ; 163 
 542                     ; 164 #if defined(STM8S208) || defined(STM8S207) || defined(STM8AF52Ax) || defined(STM8AF62Ax)
 542                     ; 165     case ITC_IRQ_UART3_TX:
 542                     ; 166     case ITC_IRQ_UART3_RX:
 542                     ; 167     case ITC_IRQ_ADC2:
 542                     ; 168 #endif /*STM8S208 or STM8S207 or STM8AF52Ax or STM8AF62Ax */
 542                     ; 169 
 542                     ; 170 #if defined(STM8S105) ||defined(STM8S103) ||defined(STM8S905) || defined(STM8AF626x)
 542                     ; 171     case ITC_IRQ_ADC1:
 542                     ; 172 #endif /*STM8S105, STM8S103 or STM8S905 or STM8AF626x */
 542                     ; 173 
 542                     ; 174 #ifdef STM8S903
 542                     ; 175     case ITC_IRQ_TIM6_OVFTRI:
 542                     ; 176 #else
 542                     ; 177     case ITC_IRQ_TIM4_OVF:
 542                     ; 178 #endif /*STM8S903*/
 542                     ; 179         Value = (uint8_t)(ITC->ISPR6 & Mask); /* Read software priority */
 544  0077 c67f75        	ld	a,32629
 545                     ; 180         break;
 547  007a 2003          	jp	LC001
 548  007c               L55:
 549                     ; 181     case ITC_IRQ_EEPROM_EEC:
 549                     ; 182         Value = (uint8_t)(ITC->ISPR7 & Mask); /* Read software priority */
 551  007c c67f76        	ld	a,32630
 552  007f               LC001:
 553  007f 1401          	and	a,(OFST-1,sp)
 554  0081 6b02          	ld	(OFST+0,sp),a
 556                     ; 183         break;
 558                     ; 184     default:
 558                     ; 185         break;
 560  0083               L502:
 561                     ; 188     Value >>= (uint8_t)(((uint8_t)IrqNum % 4u) * 2u);
 563  0083 7b03          	ld	a,(OFST+1,sp)
 564  0085 a403          	and	a,#3
 565  0087 48            	sll	a
 566  0088 5f            	clrw	x
 567  0089 97            	ld	xl,a
 568  008a 7b02          	ld	a,(OFST+0,sp)
 569  008c 5d            	tnzw	x
 570  008d 2704          	jreq	L43
 571  008f               L63:
 572  008f 44            	srl	a
 573  0090 5a            	decw	x
 574  0091 26fc          	jrne	L63
 575  0093               L43:
 577                     ; 190     return((ITC_PriorityLevel_TypeDef)Value);
 581  0093 5b03          	addw	sp,#3
 582  0095 81            	ret	
 644                     	switch	.const
 645  0032               L201:
 646  0032 00fc          	dc.w	L702
 647  0034 00fc          	dc.w	L702
 648  0036 00fc          	dc.w	L702
 649  0038 00fc          	dc.w	L702
 650  003a 010e          	dc.w	L112
 651  003c 010e          	dc.w	L112
 652  003e 010e          	dc.w	L112
 653  0040 010e          	dc.w	L112
 654  0042 0178          	dc.w	L752
 655  0044 0178          	dc.w	L752
 656  0046 0120          	dc.w	L312
 657  0048 0120          	dc.w	L312
 658  004a 0132          	dc.w	L512
 659  004c 0132          	dc.w	L512
 660  004e 0132          	dc.w	L512
 661  0050 0132          	dc.w	L512
 662  0052 0144          	dc.w	L712
 663  0054 0144          	dc.w	L712
 664  0056 0144          	dc.w	L712
 665  0058 0144          	dc.w	L712
 666  005a 0156          	dc.w	L122
 667  005c 0156          	dc.w	L122
 668  005e 0156          	dc.w	L122
 669  0060 0156          	dc.w	L122
 670  0062 0168          	dc.w	L322
 671                     ; 207 void ITC_SetSoftwarePriority(ITC_Irq_TypeDef IrqNum, ITC_PriorityLevel_TypeDef PriorityValue)
 671                     ; 208 {
 672                     	switch	.text
 673  0096               _ITC_SetSoftwarePriority:
 675  0096 89            	pushw	x
 676  0097 89            	pushw	x
 677       00000002      OFST:	set	2
 680                     ; 210     uint8_t Mask = 0;
 682                     ; 211     uint8_t NewPriority = 0;
 684                     ; 214     assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
 686  0098 9e            	ld	a,xh
 687  0099 a119          	cp	a,#25
 688  009b 2506          	jrult	L44
 689  009d ae00d6        	ldw	x,#214
 690  00a0 cd017b        	call	LC002
 691  00a3               L44:
 692                     ; 215     assert_param(IS_ITC_PRIORITY_OK(PriorityValue));
 694  00a3 7b04          	ld	a,(OFST+2,sp)
 695  00a5 a102          	cp	a,#2
 696  00a7 2711          	jreq	L45
 697  00a9 a101          	cp	a,#1
 698  00ab 270d          	jreq	L45
 699  00ad 4d            	tnz	a
 700  00ae 270a          	jreq	L45
 701  00b0 a103          	cp	a,#3
 702  00b2 2706          	jreq	L45
 703  00b4 ae00d7        	ldw	x,#215
 704  00b7 cd017b        	call	LC002
 705  00ba               L45:
 706                     ; 218     assert_param(IS_ITC_INTERRUPTS_DISABLED);
 708  00ba cd0024        	call	_ITC_GetSoftIntStatus
 710  00bd a128          	cp	a,#40
 711  00bf 2706          	jreq	L46
 712  00c1 ae00da        	ldw	x,#218
 713  00c4 cd017b        	call	LC002
 714  00c7               L46:
 715                     ; 222     Mask = (uint8_t)(~(uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U)));
 717  00c7 7b03          	ld	a,(OFST+1,sp)
 718  00c9 a403          	and	a,#3
 719  00cb 48            	sll	a
 720  00cc 5f            	clrw	x
 721  00cd 97            	ld	xl,a
 722  00ce a603          	ld	a,#3
 723  00d0 5d            	tnzw	x
 724  00d1 2704          	jreq	L07
 725  00d3               L27:
 726  00d3 48            	sll	a
 727  00d4 5a            	decw	x
 728  00d5 26fc          	jrne	L27
 729  00d7               L07:
 730  00d7 43            	cpl	a
 731  00d8 6b01          	ld	(OFST-1,sp),a
 733                     ; 225     NewPriority = (uint8_t)((uint8_t)(PriorityValue) << (((uint8_t)IrqNum % 4U) * 2U));
 735  00da 7b03          	ld	a,(OFST+1,sp)
 736  00dc a403          	and	a,#3
 737  00de 48            	sll	a
 738  00df 5f            	clrw	x
 739  00e0 97            	ld	xl,a
 740  00e1 7b04          	ld	a,(OFST+2,sp)
 741  00e3 5d            	tnzw	x
 742  00e4 2704          	jreq	L47
 743  00e6               L67:
 744  00e6 48            	sll	a
 745  00e7 5a            	decw	x
 746  00e8 26fc          	jrne	L67
 747  00ea               L47:
 748  00ea 6b02          	ld	(OFST+0,sp),a
 750                     ; 227     switch (IrqNum)
 752  00ec 7b03          	ld	a,(OFST+1,sp)
 754                     ; 311     default:
 754                     ; 312         break;
 755  00ee a119          	cp	a,#25
 756  00f0 2503cc0178    	jruge	L752
 757  00f5 5f            	clrw	x
 758  00f6 97            	ld	xl,a
 759  00f7 58            	sllw	x
 760  00f8 de0032        	ldw	x,(L201,x)
 761  00fb fc            	jp	(x)
 762  00fc               L702:
 763                     ; 230     case ITC_IRQ_TLI: /* TLI software priority can be written but has no meaning */
 763                     ; 231     case ITC_IRQ_AWU:
 763                     ; 232     case ITC_IRQ_CLK:
 763                     ; 233     case ITC_IRQ_PORTA:
 763                     ; 234         ITC->ISPR1 &= Mask;
 765  00fc c67f70        	ld	a,32624
 766  00ff 1401          	and	a,(OFST-1,sp)
 767  0101 c77f70        	ld	32624,a
 768                     ; 235         ITC->ISPR1 |= NewPriority;
 770  0104 c67f70        	ld	a,32624
 771  0107 1a02          	or	a,(OFST+0,sp)
 772  0109 c77f70        	ld	32624,a
 773                     ; 236         break;
 775  010c 206a          	jra	L752
 776  010e               L112:
 777                     ; 238     case ITC_IRQ_PORTB:
 777                     ; 239     case ITC_IRQ_PORTC:
 777                     ; 240     case ITC_IRQ_PORTD:
 777                     ; 241     case ITC_IRQ_PORTE:
 777                     ; 242         ITC->ISPR2 &= Mask;
 779  010e c67f71        	ld	a,32625
 780  0111 1401          	and	a,(OFST-1,sp)
 781  0113 c77f71        	ld	32625,a
 782                     ; 243         ITC->ISPR2 |= NewPriority;
 784  0116 c67f71        	ld	a,32625
 785  0119 1a02          	or	a,(OFST+0,sp)
 786  011b c77f71        	ld	32625,a
 787                     ; 244         break;
 789  011e 2058          	jra	L752
 790  0120               L312:
 791                     ; 254     case ITC_IRQ_SPI:
 791                     ; 255     case ITC_IRQ_TIM1_OVF:
 791                     ; 256         ITC->ISPR3 &= Mask;
 793  0120 c67f72        	ld	a,32626
 794  0123 1401          	and	a,(OFST-1,sp)
 795  0125 c77f72        	ld	32626,a
 796                     ; 257         ITC->ISPR3 |= NewPriority;
 798  0128 c67f72        	ld	a,32626
 799  012b 1a02          	or	a,(OFST+0,sp)
 800  012d c77f72        	ld	32626,a
 801                     ; 258         break;
 803  0130 2046          	jra	L752
 804  0132               L512:
 805                     ; 260     case ITC_IRQ_TIM1_CAPCOM:
 805                     ; 261 #ifdef STM8S903
 805                     ; 262     case ITC_IRQ_TIM5_OVFTRI:
 805                     ; 263     case ITC_IRQ_TIM5_CAPCOM:
 805                     ; 264 #else
 805                     ; 265     case ITC_IRQ_TIM2_OVF:
 805                     ; 266     case ITC_IRQ_TIM2_CAPCOM:
 805                     ; 267 #endif /*STM8S903*/
 805                     ; 268 
 805                     ; 269     case ITC_IRQ_TIM3_OVF:
 805                     ; 270         ITC->ISPR4 &= Mask;
 807  0132 c67f73        	ld	a,32627
 808  0135 1401          	and	a,(OFST-1,sp)
 809  0137 c77f73        	ld	32627,a
 810                     ; 271         ITC->ISPR4 |= NewPriority;
 812  013a c67f73        	ld	a,32627
 813  013d 1a02          	or	a,(OFST+0,sp)
 814  013f c77f73        	ld	32627,a
 815                     ; 272         break;
 817  0142 2034          	jra	L752
 818  0144               L712:
 819                     ; 274     case ITC_IRQ_TIM3_CAPCOM:
 819                     ; 275     case ITC_IRQ_UART1_TX:
 819                     ; 276     case ITC_IRQ_UART1_RX:
 819                     ; 277     case ITC_IRQ_I2C:
 819                     ; 278         ITC->ISPR5 &= Mask;
 821  0144 c67f74        	ld	a,32628
 822  0147 1401          	and	a,(OFST-1,sp)
 823  0149 c77f74        	ld	32628,a
 824                     ; 279         ITC->ISPR5 |= NewPriority;
 826  014c c67f74        	ld	a,32628
 827  014f 1a02          	or	a,(OFST+0,sp)
 828  0151 c77f74        	ld	32628,a
 829                     ; 280         break;
 831  0154 2022          	jra	L752
 832  0156               L122:
 833                     ; 283     case ITC_IRQ_UART2_TX:
 833                     ; 284     case ITC_IRQ_UART2_RX:
 833                     ; 285 #endif /*STM8S105 or STM8AF626x */
 833                     ; 286 
 833                     ; 287 #if defined(STM8S208) || defined(STM8S207) || defined(STM8AF52Ax) || defined(STM8AF62Ax)
 833                     ; 288     case ITC_IRQ_UART3_TX:
 833                     ; 289     case ITC_IRQ_UART3_RX:
 833                     ; 290     case ITC_IRQ_ADC2:
 833                     ; 291 #endif /*STM8S208 or STM8S207 or STM8AF52Ax or STM8AF62Ax */
 833                     ; 292 
 833                     ; 293 #if defined(STM8S105) ||defined(STM8S103) ||defined(STM8S905) || defined(STM8AF626x)
 833                     ; 294     case ITC_IRQ_ADC1:
 833                     ; 295 #endif /*STM8S105, STM8S103 or STM8S905 or STM8AF626x */
 833                     ; 296 
 833                     ; 297 #ifdef STM8S903
 833                     ; 298     case ITC_IRQ_TIM6_OVFTRI:
 833                     ; 299 #else
 833                     ; 300     case ITC_IRQ_TIM4_OVF:
 833                     ; 301 #endif /*STM8S903*/
 833                     ; 302         ITC->ISPR6 &= Mask;
 835  0156 c67f75        	ld	a,32629
 836  0159 1401          	and	a,(OFST-1,sp)
 837  015b c77f75        	ld	32629,a
 838                     ; 303         ITC->ISPR6 |= NewPriority;
 840  015e c67f75        	ld	a,32629
 841  0161 1a02          	or	a,(OFST+0,sp)
 842  0163 c77f75        	ld	32629,a
 843                     ; 304         break;
 845  0166 2010          	jra	L752
 846  0168               L322:
 847                     ; 306     case ITC_IRQ_EEPROM_EEC:
 847                     ; 307         ITC->ISPR7 &= Mask;
 849  0168 c67f76        	ld	a,32630
 850  016b 1401          	and	a,(OFST-1,sp)
 851  016d c77f76        	ld	32630,a
 852                     ; 308         ITC->ISPR7 |= NewPriority;
 854  0170 c67f76        	ld	a,32630
 855  0173 1a02          	or	a,(OFST+0,sp)
 856  0175 c77f76        	ld	32630,a
 857                     ; 309         break;
 859                     ; 311     default:
 859                     ; 312         break;
 861  0178               L752:
 862                     ; 316 }
 865  0178 5b04          	addw	sp,#4
 866  017a 81            	ret	
 867  017b               LC002:
 868  017b 89            	pushw	x
 869  017c 5f            	clrw	x
 870  017d 89            	pushw	x
 871  017e ae0064        	ldw	x,#L102
 872  0181 cd0000        	call	_assert_failed
 874  0184 5b04          	addw	sp,#4
 875  0186 81            	ret	
 888                     	xdef	_ITC_GetSoftwarePriority
 889                     	xdef	_ITC_SetSoftwarePriority
 890                     	xdef	_ITC_GetSoftIntStatus
 891                     	xdef	_ITC_DeInit
 892                     	xdef	_ITC_GetCPUCC
 893                     	xref	_assert_failed
 894                     	switch	.const
 895  0064               L102:
 896  0064 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
 897  0076 6965735c7374  	dc.b	"ies\stm8s_stdperip"
 898  0088 685f64726976  	dc.b	"h_driver\src\stm8s"
 899  009a 5f6974632e63  	dc.b	"_itc.c",0
 919                     	end
