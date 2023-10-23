   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.8.1 - 09 Jan 2023
   3                     ; Generator (Limited) V4.5.5 - 08 Nov 2022
   4                     ; Optimizer V4.5.5 - 08 Nov 2022
  20                     .const:	section	.text
  21  0000               __vectab:
  22  0000 82            	dc.b	130
  24  0001 00            	dc.b	page(__stext)
  25  0002 0000          	dc.w	__stext
  26  0004 82            	dc.b	130
  28  0005 00            	dc.b	page(f_NonHandledInterrupt)
  29  0006 0000          	dc.w	f_NonHandledInterrupt
  30  0008 82            	dc.b	130
  32  0009 00            	dc.b	page(f_NonHandledInterrupt)
  33  000a 0000          	dc.w	f_NonHandledInterrupt
  34  000c 82            	dc.b	130
  36  000d 00            	dc.b	page(f_NonHandledInterrupt)
  37  000e 0000          	dc.w	f_NonHandledInterrupt
  38  0010 82            	dc.b	130
  40  0011 00            	dc.b	page(f_NonHandledInterrupt)
  41  0012 0000          	dc.w	f_NonHandledInterrupt
  42  0014 82            	dc.b	130
  44  0015 00            	dc.b	page(f_NonHandledInterrupt)
  45  0016 0000          	dc.w	f_NonHandledInterrupt
  46  0018 82            	dc.b	130
  48  0019 00            	dc.b	page(f_NonHandledInterrupt)
  49  001a 0000          	dc.w	f_NonHandledInterrupt
  50  001c 82            	dc.b	130
  52  001d 00            	dc.b	page(f_NonHandledInterrupt)
  53  001e 0000          	dc.w	f_NonHandledInterrupt
  54  0020 82            	dc.b	130
  56  0021 00            	dc.b	page(f_NonHandledInterrupt)
  57  0022 0000          	dc.w	f_NonHandledInterrupt
  58  0024 82            	dc.b	130
  60  0025 00            	dc.b	page(f_NonHandledInterrupt)
  61  0026 0000          	dc.w	f_NonHandledInterrupt
  62  0028 82            	dc.b	130
  64  0029 00            	dc.b	page(f_NonHandledInterrupt)
  65  002a 0000          	dc.w	f_NonHandledInterrupt
  66  002c 82            	dc.b	130
  68  002d 00            	dc.b	page(f_NonHandledInterrupt)
  69  002e 0000          	dc.w	f_NonHandledInterrupt
  70  0030 82            	dc.b	130
  72  0031 00            	dc.b	page(f_NonHandledInterrupt)
  73  0032 0000          	dc.w	f_NonHandledInterrupt
  74  0034 82            	dc.b	130
  76  0035 00            	dc.b	page(f_NonHandledInterrupt)
  77  0036 0000          	dc.w	f_NonHandledInterrupt
  78  0038 82            	dc.b	130
  80  0039 00            	dc.b	page(f_NonHandledInterrupt)
  81  003a 0000          	dc.w	f_NonHandledInterrupt
  82  003c 82            	dc.b	130
  84  003d 00            	dc.b	page(f_NonHandledInterrupt)
  85  003e 0000          	dc.w	f_NonHandledInterrupt
  86  0040 82            	dc.b	130
  88  0041 00            	dc.b	page(f_NonHandledInterrupt)
  89  0042 0000          	dc.w	f_NonHandledInterrupt
  90  0044 82            	dc.b	130
  92  0045 00            	dc.b	page(f_NonHandledInterrupt)
  93  0046 0000          	dc.w	f_NonHandledInterrupt
  94  0048 82            	dc.b	130
  96  0049 00            	dc.b	page(f_NonHandledInterrupt)
  97  004a 0000          	dc.w	f_NonHandledInterrupt
  98  004c 82            	dc.b	130
 100  004d 00            	dc.b	page(f_NonHandledInterrupt)
 101  004e 0000          	dc.w	f_NonHandledInterrupt
 102  0050 82            	dc.b	130
 104  0051 00            	dc.b	page(f_NonHandledInterrupt)
 105  0052 0000          	dc.w	f_NonHandledInterrupt
 106  0054 82            	dc.b	130
 108  0055 00            	dc.b	page(f_NonHandledInterrupt)
 109  0056 0000          	dc.w	f_NonHandledInterrupt
 110  0058 82            	dc.b	130
 112  0059 00            	dc.b	page(f_NonHandledInterrupt)
 113  005a 0000          	dc.w	f_NonHandledInterrupt
 114  005c 82            	dc.b	130
 116  005d 00            	dc.b	page(f_UART2_RX_IRQHandler)
 117  005e 0000          	dc.w	f_UART2_RX_IRQHandler
 118  0060 82            	dc.b	130
 120  0061 00            	dc.b	page(f_NonHandledInterrupt)
 121  0062 0000          	dc.w	f_NonHandledInterrupt
 122  0064 82            	dc.b	130
 124  0065 00            	dc.b	page(f_TIM4_UPD_OVF_IRQHandler)
 125  0066 0000          	dc.w	f_TIM4_UPD_OVF_IRQHandler
 126  0068 82            	dc.b	130
 128  0069 00            	dc.b	page(f_NonHandledInterrupt)
 129  006a 0000          	dc.w	f_NonHandledInterrupt
 130  006c 82            	dc.b	130
 132  006d 00            	dc.b	page(f_NonHandledInterrupt)
 133  006e 0000          	dc.w	f_NonHandledInterrupt
 134  0070 82            	dc.b	130
 136  0071 00            	dc.b	page(f_NonHandledInterrupt)
 137  0072 0000          	dc.w	f_NonHandledInterrupt
 138  0074 82            	dc.b	130
 140  0075 00            	dc.b	page(f_NonHandledInterrupt)
 141  0076 0000          	dc.w	f_NonHandledInterrupt
 142  0078 82            	dc.b	130
 144  0079 00            	dc.b	page(f_NonHandledInterrupt)
 145  007a 0000          	dc.w	f_NonHandledInterrupt
 146  007c 82            	dc.b	130
 148  007d 00            	dc.b	page(f_NonHandledInterrupt)
 149  007e 0000          	dc.w	f_NonHandledInterrupt
 209                     	xdef	__vectab
 210                     	xref	f_TIM4_UPD_OVF_IRQHandler
 211                     	xref	f_UART2_RX_IRQHandler
 212                     	xref	f_NonHandledInterrupt
 213                     	xref	__stext
 232                     	end
