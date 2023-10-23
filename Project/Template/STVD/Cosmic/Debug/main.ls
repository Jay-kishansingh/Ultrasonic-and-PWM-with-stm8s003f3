   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.8.1 - 09 Jan 2023
   3                     ; Generator (Limited) V4.5.5 - 08 Nov 2022
   4                     ; Optimizer V4.5.5 - 08 Nov 2022
  57                     ; 8 void delay_us(uint16_t us) {
  59                     	switch	.text
  60  0000               _delay_us:
  62  0000 89            	pushw	x
  63       00000000      OFST:	set	0
  66  0001               L72:
  67                     ; 9     while (us--) {
  69  0001 1e01          	ldw	x,(OFST+1,sp)
  70  0003 5a            	decw	x
  71  0004 1f01          	ldw	(OFST+1,sp),x
  72  0006 5c            	incw	x
  73  0007 26f8          	jrne	L72
  74                     ; 12 }
  77  0009 85            	popw	x
  78  000a 81            	ret	
 102                     ; 14 void init_GPIO(void) {
 103                     	switch	.text
 104  000b               _init_GPIO:
 108                     ; 16     GPIO_Init(GPIOD, TRIG_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
 110  000b 4be0          	push	#224
 111  000d 4b04          	push	#4
 112  000f ae500f        	ldw	x,#20495
 113  0012 cd0000        	call	_GPIO_Init
 115  0015 85            	popw	x
 116                     ; 17     GPIO_Init(GPIOD, ECHO_PIN, GPIO_MODE_IN_PU_NO_IT);
 118  0016 4b40          	push	#64
 119  0018 4b08          	push	#8
 120  001a ae500f        	ldw	x,#20495
 121  001d cd0000        	call	_GPIO_Init
 123  0020 85            	popw	x
 124                     ; 18     GPIO_Init(GPIOC, LED_PIN, GPIO_MODE_OUT_PP_LOW_FAST);
 126  0021 4be0          	push	#224
 127  0023 4b40          	push	#64
 128  0025 ae500a        	ldw	x,#20490
 129  0028 cd0000        	call	_GPIO_Init
 131  002b 85            	popw	x
 132                     ; 19 }
 135  002c 81            	ret	
 163                     ; 21 void init_TIM1_PWM(void) {
 164                     	switch	.text
 165  002d               _init_TIM1_PWM:
 169                     ; 22     TIM1_DeInit();
 171  002d cd0000        	call	_TIM1_DeInit
 173                     ; 24      TIM1_TimeBaseInit(16, TIM1_COUNTERMODE_UP, 1000, 1);
 175  0030 4b01          	push	#1
 176  0032 ae03e8        	ldw	x,#1000
 177  0035 89            	pushw	x
 178  0036 4b00          	push	#0
 179  0038 ae0010        	ldw	x,#16
 180  003b cd0000        	call	_TIM1_TimeBaseInit
 182  003e 5b04          	addw	sp,#4
 183                     ; 26      TIM1_OC1Init(TIM1_OCMODE_PWM1, 
 183                     ; 27                   TIM1_OUTPUTSTATE_ENABLE, 
 183                     ; 28                   TIM1_OUTPUTNSTATE_ENABLE, 
 183                     ; 29                   1000, 
 183                     ; 30                   TIM1_OCPOLARITY_LOW, 
 183                     ; 31                   TIM1_OCNPOLARITY_LOW, 
 183                     ; 32                   TIM1_OCIDLESTATE_RESET, 
 183                     ; 33                   TIM1_OCNIDLESTATE_RESET);
 185  0040 4b00          	push	#0
 186  0042 4b00          	push	#0
 187  0044 4b88          	push	#136
 188  0046 4b22          	push	#34
 189  0048 ae03e8        	ldw	x,#1000
 190  004b 89            	pushw	x
 191  004c 4b44          	push	#68
 192  004e ae6011        	ldw	x,#24593
 193  0051 cd0000        	call	_TIM1_OC1Init
 195  0054 5b07          	addw	sp,#7
 196                     ; 35     TIM1_CtrlPWMOutputs(ENABLE);
 198  0056 a601          	ld	a,#1
 199  0058 cd0000        	call	_TIM1_CtrlPWMOutputs
 201                     ; 36     TIM1_Cmd(ENABLE);
 203  005b a601          	ld	a,#1
 205                     ; 37 }
 208  005d cc0000        	jp	_TIM1_Cmd
 251                     ; 39 uint16_t measure_distance(void) {
 252                     	switch	.text
 253  0060               _measure_distance:
 255  0060 5206          	subw	sp,#6
 256       00000006      OFST:	set	6
 259                     ; 41     uint32_t pulse_width = 0;
 261  0062 5f            	clrw	x
 262  0063 1f05          	ldw	(OFST-1,sp),x
 263  0065 1f03          	ldw	(OFST-3,sp),x
 265                     ; 44 		GPIO_WriteLow(GPIOD, TRIG_PIN);  // Ensure TRIG pin is low initially
 267  0067 4b04          	push	#4
 268  0069 ae500f        	ldw	x,#20495
 269  006c cd0000        	call	_GPIO_WriteLow
 271  006f ae0002        	ldw	x,#2
 272  0072 84            	pop	a
 273                     ; 45     delay_us(2);  // Wait for 2 microseconds (min trigger pulse width)
 275  0073 ad8b          	call	_delay_us
 277                     ; 48     GPIO_WriteHigh(GPIOD, TRIG_PIN);
 279  0075 4b04          	push	#4
 280  0077 ae500f        	ldw	x,#20495
 281  007a cd0000        	call	_GPIO_WriteHigh
 283  007d ae000a        	ldw	x,#10
 284  0080 84            	pop	a
 285                     ; 49     delay_us(10);
 287  0081 cd0000        	call	_delay_us
 289                     ; 50     GPIO_WriteLow(GPIOD, TRIG_PIN);
 291  0084 4b04          	push	#4
 292  0086 ae500f        	ldw	x,#20495
 293  0089 cd0000        	call	_GPIO_WriteLow
 295  008c 84            	pop	a
 297  008d               L37:
 298                     ; 53     while (!GPIO_ReadInputPin(GPIOD, ECHO_PIN)) {
 300  008d ad34          	call	LC001
 301  008f 27fc          	jreq	L37
 303  0091 200e          	jra	L101
 304  0093               L77:
 305                     ; 58         pulse_width++;
 307  0093 1c0003        	addw	x,#OFST-3
 308  0096 a601          	ld	a,#1
 309  0098 cd0000        	call	c_lgadc
 312                     ; 59         delay_us(1);  // You may need to adjust the delay based on your clock frequency
 314  009b ae0001        	ldw	x,#1
 315  009e cd0000        	call	_delay_us
 317  00a1               L101:
 318                     ; 56     while (GPIO_ReadInputPin(GPIOD, ECHO_PIN)) {
 320  00a1 ad20          	call	LC001
 321  00a3 96            	ldw	x,sp
 322  00a4 26ed          	jrne	L77
 323                     ; 65     distance = (uint16_t)((pulse_width / 2) * 0.0343);
 325  00a6 1c0003        	addw	x,#OFST-3
 326  00a9 cd0000        	call	c_ltor
 328  00ac 3400          	srl	c_lreg
 329  00ae 3601          	rrc	c_lreg+1
 330  00b0 3602          	rrc	c_lreg+2
 331  00b2 3603          	rrc	c_lreg+3
 332  00b4 cd0000        	call	c_ultof
 334  00b7 ae0000        	ldw	x,#L111
 335  00ba cd0000        	call	c_fmul
 337  00bd cd0000        	call	c_ftoi
 340                     ; 67     return distance;
 344  00c0 5b06          	addw	sp,#6
 345  00c2 81            	ret	
 346  00c3               LC001:
 347  00c3 4b08          	push	#8
 348  00c5 ae500f        	ldw	x,#20495
 349  00c8 cd0000        	call	_GPIO_ReadInputPin
 351  00cb 5b01          	addw	sp,#1
 352  00cd 4d            	tnz	a
 353  00ce 81            	ret	
 398                     ; 71 void main(void) {
 399                     	switch	.text
 400  00cf               _main:
 402  00cf 5204          	subw	sp,#4
 403       00000004      OFST:	set	4
 406                     ; 73 		uint16_t duty_cycle = 1000;
 408  00d1 ae03e8        	ldw	x,#1000
 409  00d4 1f03          	ldw	(OFST-1,sp),x
 411                     ; 75     CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1); // Set the clock frequency
 413  00d6 4f            	clr	a
 414  00d7 cd0000        	call	_CLK_HSIPrescalerConfig
 416                     ; 76     init_GPIO();
 418  00da cd000b        	call	_init_GPIO
 420                     ; 77     init_TIM1_PWM();
 422  00dd cd002d        	call	_init_TIM1_PWM
 424  00e0               L331:
 425                     ; 80         distance = measure_distance();
 427  00e0 cd0060        	call	_measure_distance
 429  00e3 1f01          	ldw	(OFST-3,sp),x
 431                     ; 83         if (distance <= 1) {
 433  00e5 a30002        	cpw	x,#2
 434  00e8 2407          	jruge	L731
 435                     ; 84             duty_cycle = 1000; // LED OFF
 437  00ea ae03e8        	ldw	x,#1000
 438  00ed 1f03          	ldw	(OFST-1,sp),x
 440  00ef 1e01          	ldw	x,(OFST-3,sp)
 441  00f1               L731:
 442                     ; 86 				if (distance == 2) {
 444  00f1 a30002        	cpw	x,#2
 445  00f4 2607          	jrne	L141
 446                     ; 87             duty_cycle = 910; // LED OFF
 448  00f6 ae038e        	ldw	x,#910
 449  00f9 1f03          	ldw	(OFST-1,sp),x
 451  00fb 1e01          	ldw	x,(OFST-3,sp)
 452  00fd               L141:
 453                     ; 89 				if (distance == 3) {
 455  00fd a30003        	cpw	x,#3
 456  0100 2607          	jrne	L341
 457                     ; 90             duty_cycle = 820; // LED OFF
 459  0102 ae0334        	ldw	x,#820
 460  0105 1f03          	ldw	(OFST-1,sp),x
 462  0107 1e01          	ldw	x,(OFST-3,sp)
 463  0109               L341:
 464                     ; 92 				if (distance == 4) {
 466  0109 a30004        	cpw	x,#4
 467  010c 2607          	jrne	L541
 468                     ; 93             duty_cycle = 730; // LED OFF
 470  010e ae02da        	ldw	x,#730
 471  0111 1f03          	ldw	(OFST-1,sp),x
 473  0113 1e01          	ldw	x,(OFST-3,sp)
 474  0115               L541:
 475                     ; 95 				if (distance == 5) {
 477  0115 a30005        	cpw	x,#5
 478  0118 2607          	jrne	L741
 479                     ; 96             duty_cycle = 640; // LED OFF
 481  011a ae0280        	ldw	x,#640
 482  011d 1f03          	ldw	(OFST-1,sp),x
 484  011f 1e01          	ldw	x,(OFST-3,sp)
 485  0121               L741:
 486                     ; 98 				if (distance == 6) {
 488  0121 a30006        	cpw	x,#6
 489  0124 2607          	jrne	L151
 490                     ; 99             duty_cycle = 550; // LED OFF
 492  0126 ae0226        	ldw	x,#550
 493  0129 1f03          	ldw	(OFST-1,sp),x
 495  012b 1e01          	ldw	x,(OFST-3,sp)
 496  012d               L151:
 497                     ; 101 				if (distance == 7) {
 499  012d a30007        	cpw	x,#7
 500  0130 2607          	jrne	L351
 501                     ; 102             duty_cycle = 460; // LED OFF
 503  0132 ae01cc        	ldw	x,#460
 504  0135 1f03          	ldw	(OFST-1,sp),x
 506  0137 1e01          	ldw	x,(OFST-3,sp)
 507  0139               L351:
 508                     ; 104 				if (distance == 8) {
 510  0139 a30008        	cpw	x,#8
 511  013c 2607          	jrne	L551
 512                     ; 105             duty_cycle = 370; // LED OFF
 514  013e ae0172        	ldw	x,#370
 515  0141 1f03          	ldw	(OFST-1,sp),x
 517  0143 1e01          	ldw	x,(OFST-3,sp)
 518  0145               L551:
 519                     ; 107 				if (distance == 9) {
 521  0145 a30009        	cpw	x,#9
 522  0148 2607          	jrne	L751
 523                     ; 108             duty_cycle = 280; // LED OFF
 525  014a ae0118        	ldw	x,#280
 526  014d 1f03          	ldw	(OFST-1,sp),x
 528  014f 1e01          	ldw	x,(OFST-3,sp)
 529  0151               L751:
 530                     ; 110 				if (distance == 10) {
 532  0151 a3000a        	cpw	x,#10
 533  0154 2607          	jrne	L161
 534                     ; 111             duty_cycle = 190; // LED OFF
 536  0156 ae00be        	ldw	x,#190
 537  0159 1f03          	ldw	(OFST-1,sp),x
 539  015b 1e01          	ldw	x,(OFST-3,sp)
 540  015d               L161:
 541                     ; 113 				if (distance == 11) {
 543  015d a3000b        	cpw	x,#11
 544  0160 2607          	jrne	L361
 545                     ; 114             duty_cycle = 100; // LED OFF
 547  0162 ae0064        	ldw	x,#100
 548  0165 1f03          	ldw	(OFST-1,sp),x
 550  0167 1e01          	ldw	x,(OFST-3,sp)
 551  0169               L361:
 552                     ; 116 				if (distance == 12) {
 554  0169 a3000c        	cpw	x,#12
 555  016c 2603          	jrne	L561
 556                     ; 117             duty_cycle = 0; // LED OFF
 558  016e 5f            	clrw	x
 559  016f 1f03          	ldw	(OFST-1,sp),x
 561  0171               L561:
 562                     ; 166         TIM1_SetCompare1(duty_cycle);
 564  0171 1e03          	ldw	x,(OFST-1,sp)
 565  0173 cd0000        	call	_TIM1_SetCompare1
 567                     ; 168         delay_us(6000000); // Add a delay for stability
 569  0176 ae8d80        	ldw	x,#36224
 570  0179 cd0000        	call	_delay_us
 573  017c cc00e0        	jra	L331
 608                     ; 173 void assert_failed(uint8_t* file, uint32_t line)
 608                     ; 174 { 
 609                     	switch	.text
 610  017f               _assert_failed:
 614  017f               L502:
 615  017f 20fe          	jra	L502
 628                     	xdef	_main
 629                     	xdef	_measure_distance
 630                     	xdef	_init_TIM1_PWM
 631                     	xdef	_init_GPIO
 632                     	xdef	_delay_us
 633                     	xdef	_assert_failed
 634                     	xref	_TIM1_SetCompare1
 635                     	xref	_TIM1_CtrlPWMOutputs
 636                     	xref	_TIM1_Cmd
 637                     	xref	_TIM1_OC1Init
 638                     	xref	_TIM1_TimeBaseInit
 639                     	xref	_TIM1_DeInit
 640                     	xref	_GPIO_ReadInputPin
 641                     	xref	_GPIO_WriteLow
 642                     	xref	_GPIO_WriteHigh
 643                     	xref	_GPIO_Init
 644                     	xref	_CLK_HSIPrescalerConfig
 645                     .const:	section	.text
 646  0000               L111:
 647  0000 3d0c7e28      	dc.w	15628,32296
 648                     	xref.b	c_lreg
 649                     	xref.b	c_x
 669                     	xref	c_ftoi
 670                     	xref	c_fmul
 671                     	xref	c_ultof
 672                     	xref	c_ltor
 673                     	xref	c_lgadc
 674                     	end
