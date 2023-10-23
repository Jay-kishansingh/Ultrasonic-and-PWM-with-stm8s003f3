   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.8.1 - 09 Jan 2023
   3                     ; Generator (Limited) V4.5.5 - 08 Nov 2022
   4                     ; Optimizer V4.5.5 - 08 Nov 2022
 123                     ; 48 FlagStatus RST_GetFlagStatus(RST_Flag_TypeDef RST_Flag)
 123                     ; 49 {
 125                     	switch	.text
 126  0000               _RST_GetFlagStatus:
 128  0000 88            	push	a
 129       00000000      OFST:	set	0
 132                     ; 51     assert_param(IS_RST_FLAG_OK(RST_Flag));
 134  0001 a110          	cp	a,#16
 135  0003 271d          	jreq	L21
 136  0005 a108          	cp	a,#8
 137  0007 2719          	jreq	L21
 138  0009 a104          	cp	a,#4
 139  000b 2715          	jreq	L21
 140  000d a102          	cp	a,#2
 141  000f 2711          	jreq	L21
 142  0011 4a            	dec	a
 143  0012 270e          	jreq	L21
 144  0014 ae0033        	ldw	x,#51
 145  0017 89            	pushw	x
 146  0018 5f            	clrw	x
 147  0019 89            	pushw	x
 148  001a ae0000        	ldw	x,#L55
 149  001d cd0000        	call	_assert_failed
 151  0020 5b04          	addw	sp,#4
 152  0022               L21:
 153                     ; 55     return ((FlagStatus)((uint8_t)RST->SR & (uint8_t)RST_Flag));
 155  0022 c650b3        	ld	a,20659
 156  0025 1401          	and	a,(OFST+1,sp)
 159  0027 5b01          	addw	sp,#1
 160  0029 81            	ret	
 196                     ; 64 void RST_ClearFlag(RST_Flag_TypeDef RST_Flag)
 196                     ; 65 {
 197                     	switch	.text
 198  002a               _RST_ClearFlag:
 200  002a 88            	push	a
 201       00000000      OFST:	set	0
 204                     ; 67     assert_param(IS_RST_FLAG_OK(RST_Flag));
 206  002b a110          	cp	a,#16
 207  002d 271d          	jreq	L42
 208  002f a108          	cp	a,#8
 209  0031 2719          	jreq	L42
 210  0033 a104          	cp	a,#4
 211  0035 2715          	jreq	L42
 212  0037 a102          	cp	a,#2
 213  0039 2711          	jreq	L42
 214  003b 4a            	dec	a
 215  003c 270e          	jreq	L42
 216  003e ae0043        	ldw	x,#67
 217  0041 89            	pushw	x
 218  0042 5f            	clrw	x
 219  0043 89            	pushw	x
 220  0044 ae0000        	ldw	x,#L55
 221  0047 cd0000        	call	_assert_failed
 223  004a 5b04          	addw	sp,#4
 224  004c               L42:
 225                     ; 69     RST->SR = (uint8_t)RST_Flag;
 227  004c 7b01          	ld	a,(OFST+1,sp)
 228  004e c750b3        	ld	20659,a
 229                     ; 70 }
 232  0051 84            	pop	a
 233  0052 81            	ret	
 246                     	xdef	_RST_ClearFlag
 247                     	xdef	_RST_GetFlagStatus
 248                     	xref	_assert_failed
 249                     .const:	section	.text
 250  0000               L55:
 251  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
 252  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
 253  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
 254  0036 5f7273742e63  	dc.b	"_rst.c",0
 274                     	end
