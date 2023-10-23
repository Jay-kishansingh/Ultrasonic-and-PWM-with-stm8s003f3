   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Parser V4.12.8.1 - 09 Jan 2023
   3                     ; Generator (Limited) V4.5.5 - 08 Nov 2022
   4                     ; Optimizer V4.5.5 - 08 Nov 2022
2469                     ; 6 void I2C_Init1(){
2471                     	switch	.text
2472  0000               _I2C_Init1:
2476                     ; 8     I2C_CR1 = 0x00;  // Disable I2C
2478  0000 725f5210      	clr	_I2C_CR1
2479                     ; 9     I2C_FREQR = 16;  // Set I2C clock frequency to 16 MHz
2481  0004 35105212      	mov	_I2C_FREQR,#16
2482                     ; 10     I2C_CR1 = I2C_CR1_PE;  // Enable I2C
2484  0008 35015210      	mov	_I2C_CR1,#1
2485                     ; 11 }
2488  000c 81            	ret	
2513                     ; 13 void I2C_Start1(){
2514                     	switch	.text
2515  000d               _I2C_Start1:
2519                     ; 15     I2C_CR2 = I2C_CR2_START;
2521  000d 35015211      	mov	_I2C_CR2,#1
2523  0011               L5161:
2524                     ; 16     while (!(I2C_SR1 & I2C_SR1_SB));
2526  0011 72015217fb    	btjf	_I2C_SR1,#0,L5161
2527                     ; 17 }
2530  0016 81            	ret	
2554                     ; 19 void I2C_Stop1(){
2555                     	switch	.text
2556  0017               _I2C_Stop1:
2560                     ; 22     I2C_CR2 |= I2C_CR2_STOP;
2562  0017 72125211      	bset	_I2C_CR2,#1
2563                     ; 23 }
2566  001b 81            	ret	
2600                     ; 26 void I2C_Write1(uint8_t data){
2601                     	switch	.text
2602  001c               _I2C_Write1:
2606                     ; 29     I2C_DR = data;
2608  001c c75216        	ld	_I2C_DR,a
2610  001f               L1561:
2611                     ; 30     while (!(I2C_SR1 & I2C_SR1_TXE));
2613  001f 720f5217fb    	btjf	_I2C_SR1,#7,L1561
2614                     ; 31 }
2617  0024 81            	ret	
2642                     ; 35 uint8_t I2C_Read1(){
2643                     	switch	.text
2644  0025               _I2C_Read1:
2648  0025               L7661:
2649                     ; 38     while (!(I2C_SR1 & I2C_SR1_RXNE));
2651  0025 720d5217fb    	btjf	_I2C_SR1,#6,L7661
2652                     ; 39     return I2C_DR;
2654  002a c65216        	ld	a,_I2C_DR
2657  002d 81            	ret	
2670                     	xdef	_I2C_Read1
2671                     	xdef	_I2C_Write1
2672                     	xdef	_I2C_Stop1
2673                     	xdef	_I2C_Start1
2674                     	xdef	_I2C_Init1
2693                     	end
