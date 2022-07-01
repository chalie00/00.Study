/*=================================================================================
Project Name 		:	TPV HD Type (HD IP THERMOGRAPHY PTZ CAMERA)
Author			:	phs@tbtsys.com
==================================================================================*/ 

/*******************************************************************************
* INCLUDE
*******************************************************************************/
#include "Delay.h"

/*******************************************************************************
* Delay Fuction
*******************************************************************************/
void Delay_1us(__IO uint16_t nTime)
{
	u16 i, dTime;
	
	for (i=0; i<nTime; i++)
	{
		for (dTime=0; dTime<8; dTime++);//about 1.04us
	}
}

void Delay_1ms(__IO uint16_t nTime)
{
	u16 i;
	
	for(i=0; i<nTime; i++)
	{
		Delay_1us(1000);
	}
}
/*******************************************************************************/

volatile uint32_t i2cDelay;
volatile uint32_t TimDelay;
static volatile uint32_t TimDelay;
static volatile uint32_t TimingDelay;

void delay_100ms(void)
{
    Delay(100);
}

void i2c_Delay(__IO uint32_t nTime)
{ 
	i2cDelay = nTime;

	while(i2cDelay != 0);
}

void Delay(__IO uint32_t nTime)
{ 
	TimingDelay = nTime;

	while(TimingDelay != 0);
}


void TimingDelay_Decrement(void)
{
	if (TimingDelay != 0x00)
	{ 
		TimingDelay--;
	}
}



void i2cDelay_Decrement(void)
{
	if (i2cDelay != 0x00)
	{ 
		i2cDelay--;
	}
}
void Delay_Us(unsigned int time_us)
{
	Delay_1us(time_us);
}

void Delay_ms(uint16_t time_ms)
{
    for(; time_ms != 0; time_ms--)
    {
        Delay_Us(1000);
    }
}


void delayS(__IO uint32_t nTime)
{
  TimDelay = nTime;

  while(TimDelay != 0);
}
void Delay_Decrement(void)
{
  if (TimDelay != 0x00)
  { 
    TimDelay--;
  }
}

void delay(__IO uint16_t nTime)
{
  	while(nTime--) { 
  	}
}

void LongDelay(u8 Value)
{
  u8 x;
  for(x = 0; x < Value; x++){
    delay(50000);
    delay(50000);
    delay(50000);
    delay(50000);
    }
}
