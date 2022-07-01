/*=================================================================================
Project Name 		:	TPV HD Type (HD IP THERMOGRAPHY PTZ CAMERA)
Author			:	phs@tbtsys.com
==================================================================================*/ 

/*******************************************************************************
* INCLUDE
*******************************************************************************/
#include <stdio.h>
#include <string.h>
#include "Device.h"
#include "stm32f10x.h"
#include "stm32f10x_wwdg.h"
#include "Define.h"
#include "Variable_Define.h"
#include "I2c.h"
#include "Delay.h"
#include "OSD_String.h"
#include "Function.h"
#include "Temperature.h"
#include "Eeprom.h"

/*******************************************************************************
* Function
*******************************************************************************/
void MDIN_Sprite_Initialization(u8 u_Layer, u8 u_OnOff);
void AT24C256C_EEPROM_Write(u16 EepAddr, u8 EepData);
u8 AT24C256C_EEPROM_Read(u16 EepAddr);

/*******************************************************************************
* IBDR Main Function
*******************************************************************************/
int main(void);

void MDIN_I550_Initialization(void);
void VIDEO_Initialization(u8 u_Video_Mode);
void Module_Auto_Sync(void);