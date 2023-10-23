#ifndef APDS9960_H_
#define APDS9960_H_

#define APDS9960_I2C_ADDR 0x39

//function prototype here
void I2C_Init1();
void I2C_Start1(void);
void I2C_Stop1(void);
void APDS9960_Init(void);
void I2C_Write1(uint8_t data);
uint8_t I2C_Read1(void);
uint8_t APDS9960_ReadGesture(void);
uint8_t APDS9960_ReadGesture(void);
//int readUltrasonic(void);

#endif