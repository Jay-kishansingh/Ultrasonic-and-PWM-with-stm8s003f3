#ifndef MY_STM8S_I2C_H_
#define MY_STM8S_I2C_H_

void I2C_Setup(void);
void I2C_ByteWrite (u8 I2C_Slave_Address, u8 iData);
u8 I2C_ByteRead(uint8_t reg, uint8_t ReadAddr);

#endif