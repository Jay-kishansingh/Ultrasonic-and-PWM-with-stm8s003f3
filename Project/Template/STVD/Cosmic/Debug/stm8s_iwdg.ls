   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.8.1 - 09 Jan 2023
   3                     ; Generator (Limited) V4.5.5 - 08 Nov 2022
   4                     ; Optimizer V4.5.5 - 08 Nov 2022
  84                     ; 42 void IWDG_WriteAccessCmd(IWDG_WriteAccess_TypeDef IWDG_WriteAccess)
  84                     ; 43 {
  86                     	switch	.text
  87  0000               _IWDG_WriteAccessCmd:
  89  0000 88            	push	a
  90       00000000      OFST:	set	0
  93                     ; 45     assert_param(IS_IWDG_WRITEACCESS_MODE_OK(IWDG_WriteAccess));
  95  0001 a155          	cp	a,#85
  96  0003 2711          	jreq	L21
  97  0005 4d            	tnz	a
  98  0006 270e          	jreq	L21
  99  0008 ae002d        	ldw	x,#45
 100  000b 89            	pushw	x
 101  000c 5f            	clrw	x
 102  000d 89            	pushw	x
 103  000e ae0000        	ldw	x,#L73
 104  0011 cd0000        	call	_assert_failed
 106  0014 5b04          	addw	sp,#4
 107  0016               L21:
 108                     ; 47     IWDG->KR = (uint8_t)IWDG_WriteAccess; /* Write Access */
 110  0016 7b01          	ld	a,(OFST+1,sp)
 111  0018 c750e0        	ld	20704,a
 112                     ; 48 }
 115  001b 84            	pop	a
 116  001c 81            	ret	
 207                     ; 57 void IWDG_SetPrescaler(IWDG_Prescaler_TypeDef IWDG_Prescaler)
 207                     ; 58 {
 208                     	switch	.text
 209  001d               _IWDG_SetPrescaler:
 211  001d 88            	push	a
 212       00000000      OFST:	set	0
 215                     ; 60     assert_param(IS_IWDG_PRESCALER_OK(IWDG_Prescaler));
 217  001e 4d            	tnz	a
 218  001f 2726          	jreq	L42
 219  0021 a101          	cp	a,#1
 220  0023 2722          	jreq	L42
 221  0025 a102          	cp	a,#2
 222  0027 271e          	jreq	L42
 223  0029 a103          	cp	a,#3
 224  002b 271a          	jreq	L42
 225  002d a104          	cp	a,#4
 226  002f 2716          	jreq	L42
 227  0031 a105          	cp	a,#5
 228  0033 2712          	jreq	L42
 229  0035 a106          	cp	a,#6
 230  0037 270e          	jreq	L42
 231  0039 ae003c        	ldw	x,#60
 232  003c 89            	pushw	x
 233  003d 5f            	clrw	x
 234  003e 89            	pushw	x
 235  003f ae0000        	ldw	x,#L73
 236  0042 cd0000        	call	_assert_failed
 238  0045 5b04          	addw	sp,#4
 239  0047               L42:
 240                     ; 62     IWDG->PR = (uint8_t)IWDG_Prescaler;
 242  0047 7b01          	ld	a,(OFST+1,sp)
 243  0049 c750e1        	ld	20705,a
 244                     ; 63 }
 247  004c 84            	pop	a
 248  004d 81            	ret	
 282                     ; 72 void IWDG_SetReload(uint8_t IWDG_Reload)
 282                     ; 73 {
 283                     	switch	.text
 284  004e               _IWDG_SetReload:
 288                     ; 74     IWDG->RLR = IWDG_Reload;
 290  004e c750e2        	ld	20706,a
 291                     ; 75 }
 294  0051 81            	ret	
 317                     ; 83 void IWDG_ReloadCounter(void)
 317                     ; 84 {
 318                     	switch	.text
 319  0052               _IWDG_ReloadCounter:
 323                     ; 85     IWDG->KR = IWDG_KEY_REFRESH;
 325  0052 35aa50e0      	mov	20704,#170
 326                     ; 86 }
 329  0056 81            	ret	
 352                     ; 93 void IWDG_Enable(void)
 352                     ; 94 {
 353                     	switch	.text
 354  0057               _IWDG_Enable:
 358                     ; 95     IWDG->KR = IWDG_KEY_ENABLE;
 360  0057 35cc50e0      	mov	20704,#204
 361                     ; 96 }
 364  005b 81            	ret	
 377                     	xdef	_IWDG_Enable
 378                     	xdef	_IWDG_ReloadCounter
 379                     	xdef	_IWDG_SetReload
 380                     	xdef	_IWDG_SetPrescaler
 381                     	xdef	_IWDG_WriteAccessCmd
 382                     	xref	_assert_failed
 383                     .const:	section	.text
 384  0000               L73:
 385  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
 386  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
 387  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
 388  0036 5f697764672e  	dc.b	"_iwdg.c",0
 408                     	end
