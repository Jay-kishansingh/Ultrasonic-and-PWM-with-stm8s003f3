   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.8.1 - 09 Jan 2023
   3                     ; Generator (Limited) V4.5.5 - 08 Nov 2022
   4                     ; Optimizer V4.5.5 - 08 Nov 2022
  69                     ; 47 void WWDG_Init(uint8_t Counter, uint8_t WindowValue)
  69                     ; 48 {
  71                     	switch	.text
  72  0000               _WWDG_Init:
  74  0000 89            	pushw	x
  75       00000000      OFST:	set	0
  78                     ; 50     assert_param(IS_WWDG_WINDOWLIMITVALUE_OK(WindowValue));
  80  0001 9f            	ld	a,xl
  81  0002 a180          	cp	a,#128
  82  0004 250e          	jrult	L01
  83  0006 ae0032        	ldw	x,#50
  84  0009 89            	pushw	x
  85  000a 5f            	clrw	x
  86  000b 89            	pushw	x
  87  000c ae0000        	ldw	x,#L33
  88  000f cd0000        	call	_assert_failed
  90  0012 5b04          	addw	sp,#4
  91  0014               L01:
  92                     ; 52     WWDG->WR = WWDG_WR_RESET_VALUE;
  94  0014 357f50d2      	mov	20690,#127
  95                     ; 53     WWDG->CR = (uint8_t)((uint8_t)(WWDG_CR_WDGA | WWDG_CR_T6) | (uint8_t)Counter);
  97  0018 7b01          	ld	a,(OFST+1,sp)
  98  001a aac0          	or	a,#192
  99  001c c750d1        	ld	20689,a
 100                     ; 54     WWDG->WR = (uint8_t)((uint8_t)(~WWDG_CR_WDGA) & (uint8_t)(WWDG_CR_T6 | WindowValue));
 102  001f 7b02          	ld	a,(OFST+2,sp)
 103  0021 a47f          	and	a,#127
 104  0023 aa40          	or	a,#64
 105  0025 c750d2        	ld	20690,a
 106                     ; 55 }
 109  0028 85            	popw	x
 110  0029 81            	ret	
 145                     ; 63 void WWDG_SetCounter(uint8_t Counter)
 145                     ; 64 {
 146                     	switch	.text
 147  002a               _WWDG_SetCounter:
 149  002a 88            	push	a
 150       00000000      OFST:	set	0
 153                     ; 67     assert_param(IS_WWDG_COUNTERVALUE_OK(Counter));
 155  002b a180          	cp	a,#128
 156  002d 250e          	jrult	L02
 157  002f ae0043        	ldw	x,#67
 158  0032 89            	pushw	x
 159  0033 5f            	clrw	x
 160  0034 89            	pushw	x
 161  0035 ae0000        	ldw	x,#L33
 162  0038 cd0000        	call	_assert_failed
 164  003b 5b04          	addw	sp,#4
 165  003d               L02:
 166                     ; 71   WWDG->CR = (uint8_t)(Counter & (uint8_t)BIT_MASK);
 168  003d 7b01          	ld	a,(OFST+1,sp)
 169  003f a47f          	and	a,#127
 170  0041 c750d1        	ld	20689,a
 171                     ; 73 }
 174  0044 84            	pop	a
 175  0045 81            	ret	
 198                     ; 82 uint8_t WWDG_GetCounter(void)
 198                     ; 83 {
 199                     	switch	.text
 200  0046               _WWDG_GetCounter:
 204                     ; 84     return(WWDG->CR);
 206  0046 c650d1        	ld	a,20689
 209  0049 81            	ret	
 232                     ; 92 void WWDG_SWReset(void)
 232                     ; 93 {
 233                     	switch	.text
 234  004a               _WWDG_SWReset:
 238                     ; 94     WWDG->CR = WWDG_CR_WDGA; /* Activate WWDG, with clearing T6 */
 240  004a 358050d1      	mov	20689,#128
 241                     ; 95 }
 244  004e 81            	ret	
 280                     ; 104 void WWDG_SetWindowValue(uint8_t WindowValue)
 280                     ; 105 {
 281                     	switch	.text
 282  004f               _WWDG_SetWindowValue:
 284  004f 88            	push	a
 285       00000000      OFST:	set	0
 288                     ; 107     assert_param(IS_WWDG_WINDOWLIMITVALUE_OK(WindowValue));
 290  0050 a180          	cp	a,#128
 291  0052 250e          	jrult	L43
 292  0054 ae006b        	ldw	x,#107
 293  0057 89            	pushw	x
 294  0058 5f            	clrw	x
 295  0059 89            	pushw	x
 296  005a ae0000        	ldw	x,#L33
 297  005d cd0000        	call	_assert_failed
 299  0060 5b04          	addw	sp,#4
 300  0062               L43:
 301                     ; 109     WWDG->WR = (uint8_t)((uint8_t)(~WWDG_CR_WDGA) & (uint8_t)(WWDG_CR_T6 | WindowValue));
 303  0062 7b01          	ld	a,(OFST+1,sp)
 304  0064 a47f          	and	a,#127
 305  0066 aa40          	or	a,#64
 306  0068 c750d2        	ld	20690,a
 307                     ; 110 }
 310  006b 84            	pop	a
 311  006c 81            	ret	
 324                     	xdef	_WWDG_SetWindowValue
 325                     	xdef	_WWDG_SWReset
 326                     	xdef	_WWDG_GetCounter
 327                     	xdef	_WWDG_SetCounter
 328                     	xdef	_WWDG_Init
 329                     	xref	_assert_failed
 330                     .const:	section	.text
 331  0000               L33:
 332  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
 333  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
 334  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
 335  0036 5f777764672e  	dc.b	"_wwdg.c",0
 355                     	end
