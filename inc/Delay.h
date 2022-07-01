/*=================================================================================
Project Name 		:	TPV HD Type (HD IP THERMOGRAPHY PTZ CAMERA)
Author			:	phs@tbtsys.com
==================================================================================*/ 

/*******************************************************************************
* INCLUDE
*******************************************************************************/
#include "stm32f10x.h"

/*******************************************************************************
* FUNCTION DEFINE
*******************************************************************************/
void Delay_1us(__IO uint16_t nTime);
void Delay_1ms(__IO uint16_t nTime);
/*******************************************************************************/

void i2c_Delay(__IO uint32_t nTime);
void i2cDelay_Decrement(void);
void Delay_Us(unsigned int time_us);
void Delay_ms(uint16_t time_ms);

void delayS(__IO uint32_t nTime);
void Delay_Decrement(void);
void delay(__IO uint16_t nTime);
void LongDelay(u8 Value);

void delay_100ms(void);
void i2c_Delay(__IO uint32_t nTime);
void Delay(__IO uint32_t nTime);
void TimingDelay_Decrement(void);
