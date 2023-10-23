#include "stm8s.h"
#include "stm8s_i2c.h"
#include "my_stm8s_i2c.h"


#define Device_I2C_ADDR 			0x39		//put actual device address here
#define I2C_Speed							100000

void I2C_Setup(void)
{
	I2C_DeInit();
  I2C_Init(I2C_Speed, Device_I2C_ADDR, I2C_DUTYCYCLE_2, I2C_ACK_CURR, I2C_ADDMODE_7BIT, (CLK_GetClockFreq()/1000000));
	I2C_Cmd(ENABLE); //enable I2C
}

/*
*@brief			Funciton to write data on slave register address
*@param[0]	slave/register addresss where data has to be written
*@param[1]	actual data which would be written
*/
void I2C_ByteWrite (u8 I2C_Slave_Address, u8 iData)
{
                I2C_GenerateSTART(ENABLE);
                while(!I2C_CheckEvent(I2C_EVENT_MASTER_MODE_SELECT));
                I2C_Send7bitAddress(I2C_Slave_Address, I2C_DIRECTION_TX);
                while(!I2C_CheckEvent(I2C_EVENT_MASTER_TRANSMITTER_MODE_SELECTED))
                I2C_SendData(iData);
                while(!I2C_CheckEvent(I2C_EVENT_MASTER_BYTE_TRANSMITTED));
                I2C_GenerateSTOP(ENABLE);
}

u8 I2C_ByteRead(uint8_t I2C_Slave_Address, uint8_t ReadAddr)
{
                u16 pBuffer;
                while(I2C_GetFlagStatus(I2C_FLAG_BUSBUSY));
                I2C_GenerateSTART(ENABLE);
                while(!I2C_CheckEvent(I2C_EVENT_MASTER_MODE_SELECT));
                I2C_Send7bitAddress(I2C_Slave_Address, I2C_DIRECTION_TX);
                while(!I2C_CheckEvent(I2C_EVENT_MASTER_TRANSMITTER_MODE_SELECTED));
                I2C_SendData((u8)(ReadAddr));
                while(!I2C_CheckEvent(I2C_EVENT_MASTER_BYTE_TRANSMITTED));
                I2C_GenerateSTART(ENABLE);
                while(!I2C_CheckEvent(I2C_EVENT_MASTER_MODE_SELECT));
                I2C_Send7bitAddress(I2C_Slave_Address, I2C_DIRECTION_RX);
                while(!I2C_CheckEvent(I2C_EVENT_MASTER_RECEIVER_MODE_SELECTED));
                while(!I2C_CheckEvent(I2C_EVENT_MASTER_BYTE_RECEIVED));
                pBuffer = I2C_ReceiveData();
                I2C_AcknowledgeConfig(I2C_ACK_NONE);
                I2C_GenerateSTOP(ENABLE);
                return pBuffer;
}