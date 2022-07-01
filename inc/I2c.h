#include "stm32f10x.h"
#include "Define.h"
#include "Extern.h"

void I2C1_Write(u8 ObjAddr, u16 Addr, u8 bData);
u8 I2C1_Read(u8 ObjAddr, u16 Addr);
void I2C2_Write(u8 ObjAddr, u16 Addr, u8 bData);
u8 I2C2_Read(u8 ObjAddr, u16 Addr);

uint8_t EEP_I2C_Read(uint16_t luw_Addr);
uint32_t TW9900_I2C1_ByteWrite(uint8_t slave_addr, uint8_t AddrByte, int32_t StartAddress, uint8_t Data);
uint8_t TW9900_I2C1_ByteRead(uint8_t slave_addr, uint8_t AddrByte, uint32_t StartAddress);


//void i2cDelay_Decrement(void);
void EpromWrite(u16 EepAddr, u8 EepData);
u8 EpromRead(u16 EepAddr);
//void Delay_Us(unsigned int time_us);
//void Delay_1us(__IO uint16_t nTime);

