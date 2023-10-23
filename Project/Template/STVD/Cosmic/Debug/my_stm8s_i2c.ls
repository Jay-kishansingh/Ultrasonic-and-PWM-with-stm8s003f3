   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.8.1 - 09 Jan 2023
   3                     ; Generator (Limited) V4.5.5 - 08 Nov 2022
   4                     ; Optimizer V4.5.5 - 08 Nov 2022
  52                     .const:	section	.text
  53  0000               L41:
  54  0000 000f4240      	dc.l	1000000
  55                     ; 9 void I2C_Setup(void)
  55                     ; 10 {
  56                     	scross	off
  57                     	switch	.text
  58  0000               _I2C_Setup:
  62                     ; 11 	I2C_DeInit();
  64  0000 cd0000        	call	_I2C_DeInit
  66                     ; 12   I2C_Init(I2C_Speed, Device_I2C_ADDR, I2C_DUTYCYCLE_2, I2C_ACK_CURR, I2C_ADDMODE_7BIT, (CLK_GetClockFreq()/1000000));
  68  0003 cd0000        	call	_CLK_GetClockFreq
  70  0006 ae0000        	ldw	x,#L41
  71  0009 cd0000        	call	c_ludv
  73  000c b603          	ld	a,c_lreg+3
  74  000e 88            	push	a
  75  000f 4b00          	push	#0
  76  0011 4b01          	push	#1
  77  0013 4b00          	push	#0
  78  0015 ae0039        	ldw	x,#57
  79  0018 89            	pushw	x
  80  0019 ae86a0        	ldw	x,#34464
  81  001c 89            	pushw	x
  82  001d ae0001        	ldw	x,#1
  83  0020 89            	pushw	x
  84  0021 cd0000        	call	_I2C_Init
  86  0024 5b0a          	addw	sp,#10
  87                     ; 13 	I2C_Cmd(ENABLE); //enable I2C
  89  0026 a601          	ld	a,#1
  91                     ; 14 }
  94  0028 cc0000        	jp	_I2C_Cmd
 142                     ; 21 void I2C_ByteWrite (u8 I2C_Slave_Address, u8 iData)
 142                     ; 22 {
 143                     	switch	.text
 144  002b               _I2C_ByteWrite:
 146  002b 89            	pushw	x
 147       00000000      OFST:	set	0
 150                     ; 23                 I2C_GenerateSTART(ENABLE);
 152  002c a601          	ld	a,#1
 153  002e cd0000        	call	_I2C_GenerateSTART
 156  0031               L54:
 157                     ; 24                 while(!I2C_CheckEvent(I2C_EVENT_MASTER_MODE_SELECT));
 159  0031 ae0301        	ldw	x,#769
 160  0034 cd0000        	call	_I2C_CheckEvent
 162  0037 4d            	tnz	a
 163  0038 27f7          	jreq	L54
 164                     ; 25                 I2C_Send7bitAddress(I2C_Slave_Address, I2C_DIRECTION_TX);
 166  003a 7b01          	ld	a,(OFST+1,sp)
 167  003c 5f            	clrw	x
 168  003d 95            	ld	xh,a
 169  003e cd0000        	call	_I2C_Send7bitAddress
 172  0041 2005          	jra	L35
 173  0043               L15:
 174                     ; 27                 I2C_SendData(iData);
 176  0043 7b02          	ld	a,(OFST+2,sp)
 177  0045 cd0000        	call	_I2C_SendData
 179  0048               L35:
 180                     ; 26                 while(!I2C_CheckEvent(I2C_EVENT_MASTER_TRANSMITTER_MODE_SELECTED))
 182  0048 ae0782        	ldw	x,#1922
 183  004b cd0000        	call	_I2C_CheckEvent
 185  004e 4d            	tnz	a
 186  004f 27f2          	jreq	L15
 188  0051               L16:
 189                     ; 28                 while(!I2C_CheckEvent(I2C_EVENT_MASTER_BYTE_TRANSMITTED));
 191  0051 ae0784        	ldw	x,#1924
 192  0054 cd0000        	call	_I2C_CheckEvent
 194  0057 4d            	tnz	a
 195  0058 27f7          	jreq	L16
 196                     ; 29                 I2C_GenerateSTOP(ENABLE);
 198  005a a601          	ld	a,#1
 199  005c cd0000        	call	_I2C_GenerateSTOP
 201                     ; 30 }
 204  005f 85            	popw	x
 205  0060 81            	ret	
 265                     ; 32 u8 I2C_ByteRead(uint8_t I2C_Slave_Address, uint8_t ReadAddr)
 265                     ; 33 {
 266                     	switch	.text
 267  0061               _I2C_ByteRead:
 269  0061 89            	pushw	x
 270  0062 89            	pushw	x
 271       00000002      OFST:	set	2
 274  0063               L511:
 275                     ; 35                 while(I2C_GetFlagStatus(I2C_FLAG_BUSBUSY));
 277  0063 ae0302        	ldw	x,#770
 278  0066 cd0000        	call	_I2C_GetFlagStatus
 280  0069 4d            	tnz	a
 281  006a 26f7          	jrne	L511
 282                     ; 36                 I2C_GenerateSTART(ENABLE);
 284  006c 4c            	inc	a
 285  006d cd0000        	call	_I2C_GenerateSTART
 288  0070               L321:
 289                     ; 37                 while(!I2C_CheckEvent(I2C_EVENT_MASTER_MODE_SELECT));
 291  0070 ae0301        	ldw	x,#769
 292  0073 cd0000        	call	_I2C_CheckEvent
 294  0076 4d            	tnz	a
 295  0077 27f7          	jreq	L321
 296                     ; 38                 I2C_Send7bitAddress(I2C_Slave_Address, I2C_DIRECTION_TX);
 298  0079 7b03          	ld	a,(OFST+1,sp)
 299  007b 5f            	clrw	x
 300  007c 95            	ld	xh,a
 301  007d cd0000        	call	_I2C_Send7bitAddress
 304  0080               L131:
 305                     ; 39                 while(!I2C_CheckEvent(I2C_EVENT_MASTER_TRANSMITTER_MODE_SELECTED));
 307  0080 ae0782        	ldw	x,#1922
 308  0083 cd0000        	call	_I2C_CheckEvent
 310  0086 4d            	tnz	a
 311  0087 27f7          	jreq	L131
 312                     ; 40                 I2C_SendData((u8)(ReadAddr));
 314  0089 7b04          	ld	a,(OFST+2,sp)
 315  008b cd0000        	call	_I2C_SendData
 318  008e               L731:
 319                     ; 41                 while(!I2C_CheckEvent(I2C_EVENT_MASTER_BYTE_TRANSMITTED));
 321  008e ae0784        	ldw	x,#1924
 322  0091 cd0000        	call	_I2C_CheckEvent
 324  0094 4d            	tnz	a
 325  0095 27f7          	jreq	L731
 326                     ; 42                 I2C_GenerateSTART(ENABLE);
 328  0097 a601          	ld	a,#1
 329  0099 cd0000        	call	_I2C_GenerateSTART
 332  009c               L541:
 333                     ; 43                 while(!I2C_CheckEvent(I2C_EVENT_MASTER_MODE_SELECT));
 335  009c ae0301        	ldw	x,#769
 336  009f cd0000        	call	_I2C_CheckEvent
 338  00a2 4d            	tnz	a
 339  00a3 27f7          	jreq	L541
 340                     ; 44                 I2C_Send7bitAddress(I2C_Slave_Address, I2C_DIRECTION_RX);
 342  00a5 7b03          	ld	a,(OFST+1,sp)
 343  00a7 ae0001        	ldw	x,#1
 344  00aa 95            	ld	xh,a
 345  00ab cd0000        	call	_I2C_Send7bitAddress
 348  00ae               L351:
 349                     ; 45                 while(!I2C_CheckEvent(I2C_EVENT_MASTER_RECEIVER_MODE_SELECTED));
 351  00ae ae0302        	ldw	x,#770
 352  00b1 cd0000        	call	_I2C_CheckEvent
 354  00b4 4d            	tnz	a
 355  00b5 27f7          	jreq	L351
 357  00b7               L161:
 358                     ; 46                 while(!I2C_CheckEvent(I2C_EVENT_MASTER_BYTE_RECEIVED));
 360  00b7 ae0340        	ldw	x,#832
 361  00ba cd0000        	call	_I2C_CheckEvent
 363  00bd 4d            	tnz	a
 364  00be 27f7          	jreq	L161
 365                     ; 47                 pBuffer = I2C_ReceiveData();
 367  00c0 cd0000        	call	_I2C_ReceiveData
 369  00c3 5f            	clrw	x
 370  00c4 97            	ld	xl,a
 371  00c5 1f01          	ldw	(OFST-1,sp),x
 373                     ; 48                 I2C_AcknowledgeConfig(I2C_ACK_NONE);
 375  00c7 4f            	clr	a
 376  00c8 cd0000        	call	_I2C_AcknowledgeConfig
 378                     ; 49                 I2C_GenerateSTOP(ENABLE);
 380  00cb a601          	ld	a,#1
 381  00cd cd0000        	call	_I2C_GenerateSTOP
 383                     ; 50                 return pBuffer;
 385  00d0 7b02          	ld	a,(OFST+0,sp)
 388  00d2 5b04          	addw	sp,#4
 389  00d4 81            	ret	
 402                     	xdef	_I2C_ByteRead
 403                     	xdef	_I2C_ByteWrite
 404                     	xdef	_I2C_Setup
 405                     	xref	_I2C_GetFlagStatus
 406                     	xref	_I2C_CheckEvent
 407                     	xref	_I2C_SendData
 408                     	xref	_I2C_Send7bitAddress
 409                     	xref	_I2C_ReceiveData
 410                     	xref	_I2C_AcknowledgeConfig
 411                     	xref	_I2C_GenerateSTOP
 412                     	xref	_I2C_GenerateSTART
 413                     	xref	_I2C_Cmd
 414                     	xref	_I2C_Init
 415                     	xref	_I2C_DeInit
 416                     	xref	_CLK_GetClockFreq
 417                     	xref.b	c_lreg
 418                     	xref.b	c_x
 437                     	xref	c_ludv
 438                     	end
