#include "stm8s.h"
#include "STM8S003F3.h"
//#include "stm8s_i2c.h"
#include "apds9960.h"

void I2C_Init1(){
    // Initialize I2C peripheral and set the clock frequency
    I2C_CR1 = 0x00;  // Disable I2C
    I2C_FREQR = 16;  // Set I2C clock frequency to 16 MHz
    I2C_CR1 = I2C_CR1_PE;  // Enable I2C
}

void I2C_Start1(){
    // Generate a start condition
    I2C_CR2 = I2C_CR2_START;
    while (!(I2C_SR1 & I2C_SR1_SB));
}

void I2C_Stop1(){

    // Generate a stop condition
    I2C_CR2 |= I2C_CR2_STOP;
}


void I2C_Write1(uint8_t data){

    // Write data to the I2C bus
    I2C_DR = data;
    while (!(I2C_SR1 & I2C_SR1_TXE));
}

 

uint8_t I2C_Read1(){

    // Read data from the I2C bus
    while (!(I2C_SR1 & I2C_SR1_RXNE));
    return I2C_DR;
}

 

