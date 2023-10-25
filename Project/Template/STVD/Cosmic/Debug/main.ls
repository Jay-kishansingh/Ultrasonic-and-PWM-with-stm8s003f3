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
 402  00cf 89            	pushw	x
 403       00000002      OFST:	set	2
 406                     ; 73 		uint16_t duty_cycle = 1000;
 408                     ; 75     CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1); // Set the clock frequency
 410  00d0 4f            	clr	a
 411  00d1 cd0000        	call	_CLK_HSIPrescalerConfig
 413                     ; 76     init_GPIO();
 415  00d4 cd000b        	call	_init_GPIO
 417                     ; 77     init_TIM1_PWM();
 419  00d7 cd002d        	call	_init_TIM1_PWM
 421  00da               L331:
 422                     ; 80         distance = measure_distance();
 424  00da ad84          	call	_measure_distance
 426  00dc 1f01          	ldw	(OFST-1,sp),x
 428                     ; 83         if (distance <= 1) {
 430  00de a30002        	cpw	x,#2
 431                     ; 84             duty_cycle = 1000; // LED OFF
 434  00e1 251a          	jrult	L141
 435                     ; 85 				} else if(distance>2 && distance<12) {
 437  00e3 a30003        	cpw	x,#3
 438  00e6 2515          	jrult	L141
 440  00e8 a3000c        	cpw	x,#12
 441  00eb 2410          	jruge	L141
 442                     ; 86 						duty_cycle = ((12 - distance) * 100); //Linear mapping to PWM
 444  00ed ae000c        	ldw	x,#12
 445  00f0 72f001        	subw	x,(OFST-1,sp)
 446  00f3 a664          	ld	a,#100
 447  00f5 cd0000        	call	c_bmulx
 449  00f8 1f01          	ldw	(OFST-1,sp),x
 451                     ; 88 						TIM1_SetCompare1(duty_cycle);
 453  00fa cd0000        	call	_TIM1_SetCompare1
 455  00fd               L141:
 456                     ; 92         delay_us(1000000); // Add a delay for stability
 458  00fd ae4240        	ldw	x,#16960
 459  0100 cd0000        	call	_delay_us
 462  0103 20d5          	jra	L331
 497                     ; 178 void assert_failed(uint8_t* file, uint32_t line)
 497                     ; 179 { 
 498                     	switch	.text
 499  0105               _assert_failed:
 503  0105               L361:
 504  0105 20fe          	jra	L361
 517                     	xdef	_main
 518                     	xdef	_measure_distance
 519                     	xdef	_init_TIM1_PWM
 520                     	xdef	_init_GPIO
 521                     	xdef	_delay_us
 522                     	xdef	_assert_failed
 523                     	xref	_TIM1_SetCompare1
 524                     	xref	_TIM1_CtrlPWMOutputs
 525                     	xref	_TIM1_Cmd
 526                     	xref	_TIM1_OC1Init
 527                     	xref	_TIM1_TimeBaseInit
 528                     	xref	_TIM1_DeInit
 529                     	xref	_GPIO_ReadInputPin
 530                     	xref	_GPIO_WriteLow
 531                     	xref	_GPIO_WriteHigh
 532                     	xref	_GPIO_Init
 533                     	xref	_CLK_HSIPrescalerConfig
 534                     .const:	section	.text
 535  0000               L111:
 536  0000 3d0c7e28      	dc.w	15628,32296
 537                     	xref.b	c_lreg
 538                     	xref.b	c_x
 558                     	xref	c_bmulx
 559                     	xref	c_ftoi
 560                     	xref	c_fmul
 561                     	xref	c_ultof
 562                     	xref	c_ltor
 563                     	xref	c_lgadc
 564                     	end
