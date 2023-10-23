   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.8.1 - 09 Jan 2023
   3                     ; Generator (Limited) V4.5.5 - 08 Nov 2022
   4                     ; Optimizer V4.5.5 - 08 Nov 2022
2468                     ; 41 INTERRUPT_HANDLER(NonHandledInterrupt, 25)
2468                     ; 42 {
2469                     	switch	.text
2470  0000               f_NonHandledInterrupt:
2474                     ; 46 }
2477  0000 80            	iret	
2503                     ; 50 INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
2503                     ; 51  {
2504                     	switch	.text
2505  0001               f_TIM4_UPD_OVF_IRQHandler:
2509                     ; 56 	if(f.g_ultrasonic_timeout==1){
2511  0001 7209000011    	btjf	_f,#4,L5161
2512                     ; 57 		if(ultrasonic_count_var++>=100)
2514  0006 ce0000        	ldw	x,_ultrasonic_count_var
2515  0009 5c            	incw	x
2516  000a cf0000        	ldw	_ultrasonic_count_var,x
2517  000d 5a            	decw	x
2518  000e a30064        	cpw	x,#100
2519  0011 2f04          	jrslt	L5161
2520                     ; 59 			f.g_ultrasonic_timeout=0;
2522  0013 72190000      	bres	_f,#4
2523  0017               L5161:
2524                     ; 67    TIM4_SR = 0X00;
2526  0017 725f5344      	clr	_TIM4_SR
2527                     ; 68  }
2530  001b 80            	iret	
2553                     ; 77  INTERRUPT_HANDLER(UART2_RX_IRQHandler, 21)
2553                     ; 78 {
2554                     	switch	.text
2555  001c               f_UART2_RX_IRQHandler:
2559                     ; 87 }
2562  001c 80            	iret	
2583                     	switch	.bss
2584  0000               _buff_subscrpt:
2585  0000 0000          	ds.b	2
2586                     	xdef	_buff_subscrpt
2587                     	xref	_f
2588                     	xref	_ultrasonic_count_var
2589                     	xdef	f_TIM4_UPD_OVF_IRQHandler
2590                     	xdef	f_UART2_RX_IRQHandler
2591                     	xdef	f_NonHandledInterrupt
2611                     	end
