/*=================================================================================
Project Name 		:	TPV HD Type - TILT BOARD (HD IP THERMOGRAPHY PTZ CAMERA)
Author			:	phs@tbtsys.com
==================================================================================

---------------------------------------------------------------------------------
CPU					: 	STM32F103RCT
---------------------------------------------------------------------------------
Z:LQFP144 	(R:LQFP64, V:LQFP100)
E:512KB 		(B:128KB, C:256KB, F:768KB, G:1024KB)
T:LQFP		(H:UFBGA, Y:WLCSP)
7:-40~105'C	(6:-40~85'C)
---------------------------------------------------------------------------------
CPU Infomation 	:  ARM 32-bit Cortex-M3 CPU, 120MHz max
Package			: 	LQFP144(20x20mm)
---------------------------------------------------------------------------------
Clock			: 	4~26MHz Crystal oscillator
	Internal 16MHz RC(factory-trimmed)
	32kHz oscillator for RTC with calibration
	Internal 32kHz RC with calibration
---------------------------------------------------------------------------------
Program Memory		: 	1MBytes Flash Memory
Data Memory			: 	128KBytes(112+16) + 4KBytes SRAM(BackUp)
OTP Memory			: 	512 Bytes
---------------------------------------------------------------------------------
Timer				: 10-General, 2-Advanced, 2-Basic, IWDG, WWDG
RTC					: Yes
I2C					: 3
USART				: 4
UART				: 2
USB OTG FS			: Yes (full speed)
USB OTG HS			: Yes (High Speed)
CAN					: 2
Camera Interface		: No
GPIO				: 114
SDIO				: Yes
12-bit ADC			: 3 * 24Channel
12-bit DAC			: 2
Max CPU Frequency	: 120MHz
Operation Volatage		: 1.8V ~ 3.6V
ADC					: 3*12bit up to 24Channel
DAC					: 2*12bit
SPI					: 3 SPIs
---------------------------------------------------------------------------------
//===============================================================================*/

/* ==========================================
	Clock Speed Compute
// ==========================================
Clock : 16Mhz 
int Clock : 80Mhz
 
Xtal=16Mhz
SysFreq=80Mhz
Desired Baud Rate = 2400 / 38400
----------2400----------------------------
UxBRG = ((16000000/2400)/16)-1 
      = 415.667
Calculated Baud Rate = 16000000/(16(416+1))
                     = 2403
                     = 0.1%
----------38400----------------------------                      
UxBRG = ((16000000/38400)/16)-1 
      = 25.042
Calculated Baud Rate = 16000000/(16(25+1))
                     = 38461.5
                     = 0.16%
--------------------------------------------------------*/

/*******************************************************************************
* INCLUDE
*******************************************************************************/
#include "main.h"
#include "Common.h"
#include <stdio.h>
#include "stm32f10x.h"
#include "sysclk.h"
#include "systickdelay.h"
#include "stm32f10x_it.h"



/*******************************************************************************
* Function : Send_Sony_Data
*******************************************************************************/
void Send_Sony_Data(u8 u_Cmd, u8 u_Data1, u8 u_Data2, u8 u_Leng, u8 u_Timer)
{
   switch (u_Leng)
   {
   case 0x05:

      stUART4.TX_BUF[0] = 0x81;
      stUART4.TX_BUF[1] = 0x09;
      stUART4.TX_BUF[2] = 0x04;
      stUART4.TX_BUF[3] = u_Cmd;
      stUART4.TX_BUF[4] = 0xFF;

      stUART4.TX_CNT = 0;
      stUART4.TX_MAX = u_Leng;

      break;

   case 0x06:

      stUART4.TX_BUF[0] = 0x81;
      stUART4.TX_BUF[1] = 0x01;
      stUART4.TX_BUF[2] = 0x04;
      stUART4.TX_BUF[3] = u_Cmd;
      stUART4.TX_BUF[4] = u_Data1;
      stUART4.TX_BUF[5] = 0xFF;

      stUART4.TX_CNT = 0;
      stUART4.TX_MAX = u_Leng;

      break;

   case 0x08:

      stUART4.TX_BUF[0] = 0x81;
      stUART4.TX_BUF[1] = 0x01;
      stUART4.TX_BUF[2] = 0x04;
      stUART4.TX_BUF[3] = 0x24;
      stUART4.TX_BUF[4] = u_Cmd;
      stUART4.TX_BUF[5] = u_Data1;
      stUART4.TX_BUF[6] = u_Data2;
      stUART4.TX_BUF[7] = 0xFF;

      stUART4.TX_CNT = 0;
      stUART4.TX_MAX = u_Leng;

      break;

   case 0x09:

      stUART4.TX_BUF[0] = 0x81;
      stUART4.TX_BUF[1] = 0x01;
      stUART4.TX_BUF[2] = 0x04;
      stUART4.TX_BUF[3] = u_Cmd;
      stUART4.TX_BUF[4] = (u_Data1 >> 4) & 0x0F;
      stUART4.TX_BUF[5] = u_Data1 & 0x0F;
      stUART4.TX_BUF[6] = (u_Data2 >> 4) & 0x0F;
      stUART4.TX_BUF[7] = u_Data2 & 0x0F;
      stUART4.TX_BUF[8] = 0xFF;


      stUART4.TX_CNT = 0;
      stUART4.TX_MAX = u_Leng;

   case 0xFF:

      stUART4.TX_CNT = 0;
      stUART4.TX_MAX = u_Leng;

      break;

      break;

   default:
      break;
   }

   USART_SendData(UART4, stUART4.TX_BUF[stUART4.TX_CNT++]);
   Delay_1ms(u_Timer);
}

/*******************************************************************************
* Function : Send_LRF_Data
*******************************************************************************/
void Send_LRF_Data(u8 u_Cmd, u16 u_Timer)
{
   switch (u_Cmd)
   {
   case LRF_INIT:

      //ID1
      stUSART2.TX_BUF[0] = 0x49;	// I
      stUSART2.TX_BUF[1] = 0x44;	// D
      stUSART2.TX_BUF[2] = 0x31;	// 1
      stUSART2.TX_BUF[3] = 0x0D;	// CR

      stUSART2.TX_CNT = 0;
      stUSART2.TX_MAX = 0x04;

      USART_SendData(USART2, stUSART2.TX_BUF[stUSART2.TX_CNT++]);
      Delay_1ms(u_Timer);

      break;

   case LRF_MAX_TIME:

      // MT 3 (500ms)
      stUSART2.TX_BUF[0] = 0x4D;	// M
      stUSART2.TX_BUF[1] = 0x54;	// T
      stUSART2.TX_BUF[2] = 0x20;	// SP
      stUSART2.TX_BUF[3] = 0x33;	// 3
      stUSART2.TX_BUF[4] = 0x0D;	// CR

      stUSART2.TX_CNT = 0;
      stUSART2.TX_MAX = 0x05;

      USART_SendData(USART2, stUSART2.TX_BUF[stUSART2.TX_CNT++]);
      Delay_1ms(u_Timer);

      break;

   case LRF_LIMIT:

      // MW 1 5000
      stUSART2.TX_BUF[0] = 0x4D;	// M
      stUSART2.TX_BUF[1] = 0x57;	// W
      stUSART2.TX_BUF[2] = 0x20;	// SP
      stUSART2.TX_BUF[3] = 0x31;	// 1
      stUSART2.TX_BUF[4] = 0x20;	// SP
      stUSART2.TX_BUF[5] = 0x35;	// 5
      stUSART2.TX_BUF[6] = 0x30;	// 0
      stUSART2.TX_BUF[7] = 0x30;	// 0
      stUSART2.TX_BUF[8] = 0x30;	// 0
      stUSART2.TX_BUF[9] = 0x0D;	// CR

      stUSART2.TX_CNT = 0;
      stUSART2.TX_MAX = 0x0A;

      USART_SendData(USART2, stUSART2.TX_BUF[stUSART2.TX_CNT++]);
      Delay_1ms(u_Timer);

      break;

   case LRF_CALL_DATA:

      // dm1 1
      stUSART2.TX_BUF[0] = 0x64;	// d
      stUSART2.TX_BUF[1] = 0x6D;	// m
      stUSART2.TX_BUF[2] = 0x31;	// 1
      stUSART2.TX_BUF[3] = 0x20;	// SP
      stUSART2.TX_BUF[4] = 0x31;	// 1
      stUSART2.TX_BUF[5] = 0x0D;	// CR

      stUSART2.TX_CNT = 0;
      stUSART2.TX_MAX = 0x06;

      USART_SendData(USART2, stUSART2.TX_BUF[stUSART2.TX_CNT++]);
      Delay_1ms(u_Timer);

      break;

   }
}

/*******************************************************************************
* Function : Send_MDIN_String_Data
*******************************************************************************/
void Send_MDIN_String_Data(u16 u_Cmd, u8 u_Leng, u8 u_Timer)
{
   u8 i, i_Max = 0x00;
   u8 u_Checksum = 0x00;
   u8 u_Rx_Data[50];

   stUSART2.TX_BUF[0] = 0xA0;
   stUSART2.TX_BUF[1] = 0x60;
   stUSART2.TX_BUF[2] = (u8)(u_Cmd & 0xFF);
   stUSART2.TX_BUF[3] = (u8)(u_Cmd >> 8);
   stUSART2.TX_BUF[4] = u_Leng - 2;

   i_Max = u_Leng + 3;

   for (i = 5; i < i_Max; i++)
   {
      stUSART2.TX_BUF[i] = stSYS.RX_BUF[0][i + 1];
   }

   for (i = 2; i < i_Max; i++)
   {
      u_Checksum += stUSART2.TX_BUF[i];
   }

   stUSART2.TX_BUF[i_Max] = 0x00;
   stUSART2.TX_BUF[i_Max] = (u8)(u_Checksum);
   stUSART2.TX_BUF[i_Max + 1] = 0x5F;

   stUSART2.TX_CNT = 0;
   stUSART2.TX_MAX = u_Leng + 0x05;

   USART_SendData(USART2, stUSART2.TX_BUF[stUSART2.TX_CNT++]);
   Delay_1ms(u_Timer);
}

/*******************************************************************************
* Function : Send_MDIN_Data
*******************************************************************************/
void Send_MDIN_Data(u16 u_Cmd, u8 u_Leng, u8 u_Data1, u8 u_Data2, u8 u_Data3, u8 u_Data4, u8 u_Data5, u8 u_Data6, u8 u_Data7,
                    u8 u_Data8, u8 u_Data9, u8 u_Data10, u8 u_Data11, u8 u_Data12, u8 u_Data13, u8 u_Data14, u8 u_Data15, u8 u_Data16, u8 u_Data17, u8 u_Data18, u8 u_Timer)
{
   u8 i = 0, u_Sum_Data = 0x00;

   switch (u_Leng)
   {
   case 0x03:

      stUSART2.TX_BUF[0] = 0xA0;
      stUSART2.TX_BUF[1] = 0x60;
      stUSART2.TX_BUF[2] = (u8)(u_Cmd & 0xFF);
      stUSART2.TX_BUF[3] = (u8)(u_Cmd >> 8);
      stUSART2.TX_BUF[4] = u_Leng;
      stUSART2.TX_BUF[5] = u_Data1;
      stUSART2.TX_BUF[6] = u_Data2;
      stUSART2.TX_BUF[7] = u_Data3;
      stUSART2.TX_BUF[8] = (u8)(stUSART2.TX_BUF[2] + stUSART2.TX_BUF[3] + stUSART2.TX_BUF[4] + stUSART2.TX_BUF[5] + stUSART2.TX_BUF[6] + stUSART2.TX_BUF[7]);
      stUSART2.TX_BUF[9] = 0x5F;

      stUSART2.TX_CNT = 0;
      stUSART2.TX_MAX = u_Leng + 0x07;

      USART_SendData(USART2, stUSART2.TX_BUF[stUSART2.TX_CNT++]);
      Delay_1ms(u_Timer);

      break;

   case 0x09:

      stUSART2.TX_BUF[0] = 0xA0;
      stUSART2.TX_BUF[1] = 0x60;
      stUSART2.TX_BUF[2] = (u8)(u_Cmd & 0xFF);
      stUSART2.TX_BUF[3] = (u8)(u_Cmd >> 8);
      stUSART2.TX_BUF[4] = u_Leng;

      stUSART2.TX_BUF[5] = u_Data1;		// ID
      stUSART2.TX_BUF[6] = u_Data2;		// COLUMN
      stUSART2.TX_BUF[7] = u_Data3;		// ROW

      stUSART2.TX_BUF[8] = u_Data4;
      stUSART2.TX_BUF[9] = u_Data5;
      stUSART2.TX_BUF[10] = u_Data6;
      stUSART2.TX_BUF[11] = u_Data7;
      stUSART2.TX_BUF[12] = u_Data8;
      stUSART2.TX_BUF[13] = u_Data9;

      stUSART2.TX_BUF[14] = 0x00;

      for (i = 2; i < 14; i++)
      {
         u_Sum_Data = (u8)(u_Sum_Data + stUSART2.TX_BUF[i]);
      }

      stUSART2.TX_BUF[14] = u_Sum_Data;

      stUSART2.TX_BUF[15] = 0x5F;

      stUSART2.TX_CNT = 0;
      stUSART2.TX_MAX = u_Leng + 0x07;

      USART_SendData(USART2, stUSART2.TX_BUF[stUSART2.TX_CNT++]);
      Delay_1ms(u_Timer);

      break;

   case 0x12:

      stUSART2.TX_BUF[0] = 0xA0;
      stUSART2.TX_BUF[1] = 0x60;
      stUSART2.TX_BUF[2] = (u8)(u_Cmd & 0xFF);
      stUSART2.TX_BUF[3] = (u8)(u_Cmd >> 8);
      stUSART2.TX_BUF[4] = u_Leng;

      stUSART2.TX_BUF[5] = u_Data1;		// ID
      stUSART2.TX_BUF[6] = u_Data2;		// COLUMN
      stUSART2.TX_BUF[7] = u_Data3;		// ROW

      stUSART2.TX_BUF[8] = u_Data4;		// +
      stUSART2.TX_BUF[9] = u_Data5;		// 0
      stUSART2.TX_BUF[10] = u_Data6;		// 0
      stUSART2.TX_BUF[11] = u_Data7;		// 0
      stUSART2.TX_BUF[12] = u_Data8;		// .
      stUSART2.TX_BUF[13] = u_Data9;		// 0
      stUSART2.TX_BUF[14] = u_Data10;		// 0
      stUSART2.TX_BUF[15] = u_Data11;		// NULL
      stUSART2.TX_BUF[16] = u_Data12;		// -
      stUSART2.TX_BUF[17] = u_Data13;		// 0
      stUSART2.TX_BUF[18] = u_Data14;		// 0
      stUSART2.TX_BUF[19] = u_Data15;		// 0
      stUSART2.TX_BUF[20] = u_Data16;		// .
      stUSART2.TX_BUF[21] = u_Data17;		// 0
      stUSART2.TX_BUF[22] = u_Data18;		// 0

      stUSART2.TX_BUF[23] = 0x00;

      for (i = 2; i < 23; i++)
      {
         u_Sum_Data = (u8)(u_Sum_Data + stUSART2.TX_BUF[i]);
      }

      stUSART2.TX_BUF[23] = u_Sum_Data;

      stUSART2.TX_BUF[24] = 0x5F;

      stUSART2.TX_CNT = 0;
      stUSART2.TX_MAX = u_Leng + 0x07;

      USART_SendData(USART2, stUSART2.TX_BUF[stUSART2.TX_CNT++]);
      Delay_1ms(u_Timer);

      break;

   default:
      break;
   }

}

/*******************************************************************************
* Function : LRF_Initialization
*******************************************************************************/
void LRF_Initialization(void)
{
   Send_LRF_Data(LRF_INIT, LRF_TRANS_DELAY);
   Send_LRF_Data(LRF_MAX_TIME, LRF_TRANS_DELAY);
   Send_LRF_Data(LRF_LIMIT, LRF_TRANS_DELAY);
   //Send_LRF_Data(LRF_CALL_DATA, LRF_TRANS_DELAY);

   stLRF.INIT_ACTIVE = 0x00;

   // TEST
   //stLRF.CONTINUOUS_FLAG = 0x01;
}

/*******************************************************************************
* Function : Reponse_Data_Send
*******************************************************************************/
void Reponse_Data_Send(u8 Comm, u8 R1_data, u8 R2_data)
{
   stUSART1.TX_BUF[0] = 0xCA;
   stUSART1.TX_BUF[1] = 0xAC;
   stUSART1.TX_BUF[2] = Comm;
   stUSART1.TX_BUF[3] = R1_data;
   stUSART1.TX_BUF[4] = R2_data;
   stUSART1.TX_BUF[5] = 0x00;
   stUSART1.TX_BUF[5] = stUSART1.TX_BUF[2] + stUSART1.TX_BUF[3] + stUSART1.TX_BUF[4];

   stUSART1.TX_CNT = 0;
   stUSART1.TX_MAX = 6;

   USART_SendData(USART1, stUSART1.TX_BUF[stUSART1.TX_CNT++]);
}

/*******************************************************************************
* Function : Send_COLOR_TILT_Data
*******************************************************************************/
void Send_Light_Data(u8 u_Cmd, u8 u_Sign, u8 u_Data1, u8 u_Data2, u8 u_Data3, u8 u_Data4, u8 u_Leng, u8 u_Timer)
{
   stUSART2.TX_BUF[0] = 0x24;
   stUSART2.TX_BUF[1] = u_Cmd;
   stUSART2.TX_BUF[2] = 0x31;
   stUSART2.TX_BUF[3] = u_Sign;
   stUSART2.TX_BUF[4] = u_Data1;
   stUSART2.TX_BUF[5] = u_Data2;
   stUSART2.TX_BUF[6] = u_Data3;
   stUSART2.TX_BUF[7] = u_Data4;
   stUSART2.TX_BUF[8] = 0x23;

   stUSART2.TX_CNT = 0;
   stUSART2.TX_MAX = u_Leng;

   USART_SendData(USART2, stUSART2.TX_BUF[stUSART2.TX_CNT++]);
   Delay_1ms(u_Timer);
}

/*******************************************************************************
* Function : Send_TSM_Data
*******************************************************************************/
void Send_TSM_Data(u8 u_Cmd, u8 u_Data1, u8 u_Data2, u8 u_Data3, u8 u_Leng, u8 u_Timer)
{
   stUART4.TX_BUF[0] = 0xA0;
   stUART4.TX_BUF[1] = u_Cmd;
   stUART4.TX_BUF[2] = u_Data1;
   stUART4.TX_BUF[3] = u_Data2;
   stUART4.TX_BUF[4] = u_Data3;
   stUART4.TX_BUF[5] = 0xAF;

   stUART4.TX_CNT = 0;
   stUART4.TX_MAX = u_Leng;

   USART_SendData(UART4, stUART4.TX_BUF[stUART4.TX_CNT++]);
   Delay_1ms(u_Timer);
}

/*******************************************************************************
* Function : Send_TCM_Data
*******************************************************************************/
void Send_TCM_Data(u8 u_Cmd, u8 u_Data1, u8 u_Data2, u8 u_Data3, u8 u_Data4, u8 u_Data5, u8 u_Data6, u8 u_Data7, u8 u_Data8, u8 u_Data9, u8 u_Leng, u8 u_Timer)
{
   switch (u_Leng)
   {
   case 0x06:

      stUART4.TX_BUF[0] = 0xA0;
      stUART4.TX_BUF[1] = u_Cmd;
      stUART4.TX_BUF[2] = u_Data1;
      stUART4.TX_BUF[3] = u_Data2;
      stUART4.TX_BUF[4] = u_Data3;
      stUART4.TX_BUF[5] = 0xAF;

      stUART4.TX_CNT = 0;
      stUART4.TX_MAX = u_Leng;

      break;

   case 0x08:

      stUART4.TX_BUF[0] = 0xA0;
      stUART4.TX_BUF[1] = u_Cmd;
      stUART4.TX_BUF[2] = u_Data1;
      stUART4.TX_BUF[3] = u_Data2;
      stUART4.TX_BUF[4] = u_Data3;
      stUART4.TX_BUF[5] = u_Data4;
      stUART4.TX_BUF[6] = u_Data5;
      stUART4.TX_BUF[7] = 0xAF;

      stUART4.TX_CNT = 0;
      stUART4.TX_MAX = u_Leng;

      break;

   case 0x0C:

      stUART4.TX_BUF[0] = 0xA0;
      stUART4.TX_BUF[1] = u_Cmd;
      stUART4.TX_BUF[2] = u_Data1;
      stUART4.TX_BUF[3] = u_Data2;
      stUART4.TX_BUF[4] = u_Data3;
      stUART4.TX_BUF[5] = u_Data4;
      stUART4.TX_BUF[6] = u_Data5;
      stUART4.TX_BUF[3] = u_Data6;
      stUART4.TX_BUF[4] = u_Data7;
      stUART4.TX_BUF[5] = u_Data8;
      stUART4.TX_BUF[6] = u_Data9;
      stUART4.TX_BUF[7] = 0xAF;

      stUART4.TX_CNT = 0;
      stUART4.TX_MAX = u_Leng;

      break;

   }

   USART_SendData(UART4, stUART4.TX_BUF[stUART4.TX_CNT++]);
   Delay_1ms(u_Timer);

}

/*******************************************************************************
* Function : Send_USART1_Ack
*******************************************************************************/
void Send_UART4_Ack(u8 u_Index, u8 u_Leng, u8 u_Address, u8 u_Cmd, u8 u_Data, u8 u_timer)
{
   u8 u_Checksum = 0x00;

   switch (u_Leng)
   {
   case 0x02:

      stUART4.TX_BUF[0] = IP_BOARD_SYNC_BYTE;
      stUART4.TX_BUF[1] = IP_BOARD_SYNC_AND_BYTE;

      stUART4.TX_BUF[2] = u_Index;
      stUART4.TX_BUF[3] = u_Leng;
      stUART4.TX_BUF[4] = u_Address;
      stUART4.TX_BUF[5] = u_Cmd;

      u_Checksum = stUART4.TX_BUF[4] + stUART4.TX_BUF[5];

      stUART4.TX_BUF[6] = u_Checksum;

      switch (u_Index)
      {
      case IP_SONY_FIRST_BYTE:
         stUART4.TX_BUF[7] = 0xAF;
         break;

      case IP_TSM_FIRST_BYTE:
         stUART4.TX_BUF[7] = 0xBF;
         break;

      case IP_OPTION_FIRST_BYTE:
         stUART4.TX_BUF[7] = 0xEF;
         break;
      }

      stUART4.TX_MAX = u_Leng + 6;
      stUART4.TX_CNT = 0x00;

      USART_SendData(UART4, stUART4.TX_BUF[stUART4.TX_CNT++]);
      Delay_1ms(u_timer);

      break;

   case 0x03:

      stUART4.TX_BUF[0] = IP_BOARD_SYNC_BYTE;
      stUART4.TX_BUF[1] = IP_BOARD_SYNC_AND_BYTE;

      stUART4.TX_BUF[2] = u_Index;
      stUART4.TX_BUF[3] = u_Leng;
      stUART4.TX_BUF[4] = u_Address;
      stUART4.TX_BUF[5] = u_Cmd;
      stUART4.TX_BUF[6] = u_Data;

      u_Checksum = stUART4.TX_BUF[4] + stUART4.TX_BUF[5];

      stUART4.TX_BUF[7] = u_Checksum;

      switch (u_Index)
      {
      case IP_SONY_FIRST_BYTE:
         stUART4.TX_BUF[8] = 0xAF;
         break;

      case IP_TSM_FIRST_BYTE:
         stUART4.TX_BUF[8] = 0xBF;
         break;

      case IP_OPTION_FIRST_BYTE:
         stUART4.TX_BUF[8] = 0xEF;
         break;
      }

      stUART4.TX_MAX = u_Leng + 6;
      stUART4.TX_CNT = 0x00;

      USART_SendData(UART4, stUART4.TX_BUF[stUART4.TX_CNT++]);
      Delay_1ms(u_timer);

      break;
   }
}

/*******************************************************************************
* Function : Send_Pelco_Data
*******************************************************************************/
void Send_Pelco_Data(u8 u_Comm1, u8 u_Comm2, u8 u_Data1, u8 u_Data2, u8 u_Leng, u8 u_Timer)
{
   stUSART1.TX_BUF[0] = 0xFF;
   stUSART1.TX_BUF[1] = 0x01;
   stUSART1.TX_BUF[2] = u_Comm1;
   stUSART1.TX_BUF[3] = u_Comm2;
   stUSART1.TX_BUF[4] = u_Data1;
   stUSART1.TX_BUF[5] = u_Data2;
   stUSART1.TX_BUF[6] = stUSART1.TX_BUF[1] + stUSART1.TX_BUF[2] + stUSART1.TX_BUF[3] + stUSART1.TX_BUF[4] + stUSART1.TX_BUF[5];

   stUSART1.TX_CNT = 0;
   stUSART1.TX_MAX = u_Leng;

   USART_SendData(USART1, stUSART1.TX_BUF[stUSART1.TX_CNT++]);
   Delay_1ms(u_Timer);
}

/*******************************************************************************
* Function Name  : USART1_Data_Parser
*******************************************************************************/
void Bypass_Data_Parser(void)
{
   u8 i = 0;

   /*******************************************************************************************
   * Data Format
   						BYTE1[0]		BYTE2[1]		BYTE3[2]		BYTE4[3]		BYTE5[4]		BYTE5[5]
   1) General Command		0x81		0x01		0x04		CMD			DATA1		0xFF
   2) Inquiry Command		0x81		0x09		0x04		CMD			0xFF
   3) Address Set			0x88		0x30		0x01		0xFF
   4) IF_Clear(Broadcast)		0x88		0x01		0x00		0x01		0xFF
   5) IF_Clear (For x)			0x8x		0x01		0x00		0x01		0xFF
   6) Command Cancel		0x8x		0x2y		0xFF
   *******************************************************************************************/
   if (stUSART1.RX_BYPASS == 0x01)
   {
      stUSART1.RX_BYPASS = 0x00;

      stUART5.TX_CNT = 0;
      stUART5.TX_MAX = stUSART1.RX_BYPASS_CNT;

      for (i = 0; i < stUART5.TX_MAX; i++)
      {
         stUART5.TX_BUF[i] = stUSART1.RX_BUF[i];
      }

      USART_SendData(UART5, stUART5.TX_BUF[stUART5.TX_CNT++]);
      Delay_1ms(SONY_COMMAND_TIMER_DELAY);
   }
}

/*******************************************************************************
* Function : Send_Data_Clear
*******************************************************************************/
void Send_Data_Clear(u8 u_sync, u8 u_Leng)
{
   u8 i, i_Max = u_Leng + 5;

   for (i = 0; i < u_Leng; i++)
   {
      switch (u_sync)
      {
      case USART1_INDEX:

         stUSART1.RX_BUF[i] = 0x00;

         break;
      }
   }
}

/*******************************************************************************
* Function : USART1_Send_Data
*******************************************************************************/
void USART1_Send_Data(u8 u_sync, u8 u_Comm, u8 u_Data1, u8 u_Data2, u8 u_Data3, u8 u_Leng)
{
   u8 i, i_Max = u_Leng + 3;
   u8 u_Checksum = 0x00;

   switch (u_sync)
   {
   case IP_SONY_FIRST_BYTE:

      stUSART1.TX_BUF[0] = IP_SONY_FIRST_BYTE;
      stUSART1.TX_BUF[1] = IP_SONY_SECOND_BYTE;
      stUSART1.TX_BUF[u_Leng + 4] = 0xAF;

      break;
   }

   stUSART1.TX_BUF[2] = u_Leng;
   stUSART1.TX_BUF[3] = 0x01;

   switch (u_Leng)
   {
   case 0x05:

      stUSART1.TX_BUF[4] = u_Comm;
      stUSART1.TX_BUF[5] = u_Data1;
      stUSART1.TX_BUF[6] = u_Data2;
      stUSART1.TX_BUF[7] = u_Data3;

      break;
   }

   stUSART1.TX_BUF[i_Max] = 0x00;

   for (i = 3; i < i_Max; i++)
   {
      u_Checksum += stUSART1.TX_BUF[i];
   }

   stUSART1.TX_BUF[i_Max] = u_Checksum;

   stUSART1.TX_CNT = 0;
   stUSART1.TX_MAX = u_Leng + 5;

   USART_SendData(USART1, stUSART1.TX_BUF[stUSART1.TX_CNT++]);
   Delay_1ms(MAIN_COMMAND_TIMER_DELAY);
}

/***************************************************************************************************************************
* Function : Sony_Data_Handing
* Protocol Version : 0.1 (2016.04.11)
* Data Architecture :
BYTE1[0]		BYTE2[1]		BYTE3[2]		BYTE4[3]		BYTE5[4]		BYTE5[5]		BYTE[..]		BYTE(n)[LENGTH+4]	BYTE(n+1)[LENGTH+4]
0xA0		0x0A		LENGTH		ADDR		COMM		DATA		...			CS					0xAF
****************************************************************************************************************************/
void Sony_Data_Handing(u8 u_Port, u8 u_Comm, u8 u_Leng)
{
   u8 u_Cmd = 0x00, u_Data_Check = 0x00;	// Camera Command
   u8 u_Data[5];
   u16 u16_Convert_Data = 0x0000;

   switch (u_Port)
   {
   case SYSTEM_INDEX:

      u_Cmd = stSYS.RX_BUF[0][5];
      u_Data[0] = stSYS.RX_BUF[0][6];
      u_Data[1] = stSYS.RX_BUF[0][7];

      break;

   case USART1_INDEX:

      u_Cmd = stUSART1.RX_BUF[4];
      u_Data[0] = stUSART1.RX_BUF[5];
      u_Data[1] = stUSART1.RX_BUF[6];

      break;

   case USART5_INDEX:

      u_Cmd = stUART5.RX_BUF[4];
      u_Data[0] = stUART5.RX_BUF[5];
      u_Data[1] = stUART5.RX_BUF[6];

      break;

   default:
      break;
   }

   switch (u_Comm)
   {
      // 1.1.	Set Focus Mode (0x91)
   case SONY_SET_FOCUS_MODE:

      stSONY.SET_FOCUS_MODE = u_Data[1];

      AT24C256C_EEPROM_Write(EEP_SET_FOCUS_MODE, stSONY.SET_FOCUS_MODE);

      u_Data[0] = 0x00;
      u_Data[1] = 0x00;

      switch (stSONY.SET_FOCUS_MODE)
      {
         // Auto Focus
      case 0x00:

         switch (stSONY.SET_AUTO_FOCUS_MODE)
         {
         case 0x00:

            // Normal
            u_Cmd = 0x57;
            u_Data[0] = 0x00;

            Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x06, SONY_COMMAND_TIMER_DELAY);

            u_Cmd = 0x38;
            u_Data[0] = 0x02;

            Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x06, SONY_COMMAND_TIMER_DELAY);

            break;

         case 0x01:

            // Zoom Trigger
            u_Cmd = 0x57;
            u_Data[0] = 0x02;

            Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x06, SONY_COMMAND_TIMER_DELAY);

            u_Cmd = 0x38;
            u_Data[0] = 0x02;

            Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x06, SONY_COMMAND_TIMER_DELAY);

            break;

         default:
            break;
         }

         break;

         // Manual Focus
      case 0x01:

         u_Cmd = 0x38;
         u_Data[0] = 0x03;

         Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x06, SONY_COMMAND_TIMER_DELAY);

         u_Cmd = SONY_MANUAL_FOCUS_DIRECT;
         u_Data[0] = (u8)(stSONY.SET_MANUAL_FOCUS_DATA >> 8);
         u_Data[1] = (u8)(stSONY.SET_MANUAL_FOCUS_DATA & 0xFF);

         Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x09, SONY_COMMAND_TIMER_DELAY);

         break;

         // One Push Trigger
      case 0x02:

         u_Cmd = 0x38;
         u_Data[0] = 0x03;

         Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x06, SONY_COMMAND_TIMER_DELAY);

         u_Cmd = 0x18;
         u_Data[0] = 0x01;

         Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x06, SONY_COMMAND_TIMER_DELAY);

         break;

      default:
         break;
      }

      break;

      // 1.2.	Set Auto Focus Mode (0x93)
   case SONY_SET_AUTO_FOCUS_MODE:

      // Command & Data Convert
      u_Cmd = 0x57;

      stSONY.SET_AUTO_FOCUS_MODE = u_Data[1];

      AT24C256C_EEPROM_Write(EEP_SET_AUTO_FOCUS_MODE, stSONY.SET_AUTO_FOCUS_MODE);

      u_Data[0] = 0x00;
      u_Data[1] = 0x00;

      switch (stSONY.SET_AUTO_FOCUS_MODE)
      {
         // Normal
      case 0x00:
         u_Data[0] = 0x00;
         break;

         // Zoom Trigger
      case 0x01:
         u_Data[0] = 0x02;
         break;

      default:
         break;
      }

      Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x06, SONY_COMMAND_TIMER_DELAY);

      break;

      // 1.3.	Manual Focus (0x08)
   case SONY_MANUAL_FOCUS:

      u_Data_Check = stSONY.SET_FOCUS_MODE;

      switch (u_Data_Check)
      {
      case 0x01:
      case 0x02:
         stSONY.SET_MANUAL_FOCUS_MODE = u_Data[1];
         break;

      default:

         u_Data_Check = 0xFF;

         break;
      }

      u_Data[0] = 0x00;
      u_Data[1] = 0x00;

      if (u_Data_Check == 0xFF)
         break;

      switch (stSONY.SET_MANUAL_FOCUS_MODE)
      {
         // Stop
      case 0x00:

         u_Cmd = 0x08;
         u_Data[0] = 0x00;
         stSONY.FOCUS_STATUS = STOP;

         break;

         // Focus Far
      case 0x01:

         if (stSONY.SET_FOCUS_MODE == 0x02)
         {
            u_Cmd = 0x38;
            u_Data[0] = 0x03;
            Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x06, SONY_COMMAND_TIMER_DELAY);
         }

         u_Cmd = 0x08;
         u_Data[0] = 0x24;
         stSONY.FOCUS_STATUS = ACTIVE;
         stSONY.DIV_TRIGGER_NON_FOCUS = 0x01;

         break;

         // Focus Near
      case 0x02:

         if (stSONY.SET_FOCUS_MODE == 0x02)
         {
            u_Cmd = 0x38;
            u_Data[0] = 0x03;
            Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x06, SONY_COMMAND_TIMER_DELAY);
         }

         u_Cmd = 0x08;
         u_Data[0] = 0x34;
         stSONY.FOCUS_STATUS = ACTIVE;
         stSONY.DIV_TRIGGER_NON_FOCUS = 0x01;

         break;

      default:
         break;
      }

      Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x06, SONY_COMMAND_TIMER_DELAY);

      break;

      // 1.4.	Manual IRIS Mode (0x0B)
   case SONY_MANUAL_IRIS:

      stSONY.SET_MANUAL_IRIS_MODE = u_Data[1];

      u_Data[0] = 0x00;
      u_Data[1] = 0x00;

      switch (stSONY.SET_MANUAL_IRIS_MODE)
      {
         // Stop
      case 0x00:
         u_Cmd = 0x39;
         u_Data[0] = 0x03;
         stSONY.CIRIS_STATUS = STOP;
         stSONY.CIRIS_MODE_FLAG = 0x01;
         break;

         // Iris Open
      case 0x01:
         u_Cmd = 0x0B;
         u_Data[0] = 0x02;
         stSONY.CIRIS_STATUS = ACTIVE;
         stSONY.CIRIS_MODE_FLAG = 0x01;
         break;

         // Iris Close
      case 0x02:
         u_Cmd = 0x0B;
         u_Data[0] = 0x03;
         stSONY.CIRIS_STATUS = ACTIVE;
         stSONY.CIRIS_MODE_FLAG = 0x01;
         break;

      default:
         break;
      }

      Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x06, SONY_COMMAND_TIMER_DELAY);

      break;

      // 1.4.	Manual Focus Direct (0x48)
   case SONY_MANUAL_FOCUS_DIRECT:

      u_Data_Check = stSONY.SET_FOCUS_MODE;

      if (u_Data_Check != 0x01)
         break;

      u_Cmd = SONY_MANUAL_FOCUS_DIRECT;

      stSONY.SET_MANUAL_FOCUS_DATA = 0x0000;
      stSONY.SET_MANUAL_FOCUS_DATA = u_Data[0] << 8;
      stSONY.SET_MANUAL_FOCUS_DATA |= u_Data[1];

      Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x09, SONY_COMMAND_TIMER_DELAY);

      AT24C256C_EEPROM_Write(EEP_MANUAL_FOCUS_DATA, u_Data[0]);
      AT24C256C_EEPROM_Write(EEP_MANUAL_FOCUS_DATA + 1, u_Data[1]);

      break;

      // 1.5.	Manual Zoom (0x07)
   case SONY_MANUAL_ZOOM:

      stSONY.SET_MANUAL_ZOOM_MODE = u_Data[1];

      u_Data[0] = 0x00;
      u_Data[1] = 0x00;

      u_Cmd = 0x07;

      switch (stSONY.SET_MANUAL_ZOOM_MODE)
      {
         // Stop
      case 0x00:
         stSONY.ZOOM_STATUS = STOP;
         u_Data[0] = 0x00;
         break;

         // Tele
      case 0x01:
         stSONY.ZOOM_STATUS = ACTIVE;
         u_Data[0] = 0x27;
         break;

         // Wide
      case 0x02:
         stSONY.ZOOM_STATUS = ACTIVE;
         u_Data[0] = 0x37;
         break;

      default:
         break;
      }

      Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x06, SONY_COMMAND_TIMER_DELAY);

      break;

      // 1.6.	Manual Focus Direct (0x48)
   case SONY_MANUAL_ZOOM_DIRECT:

      u_Cmd = SONY_MANUAL_ZOOM_DIRECT;

      Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x09, SONY_COMMAND_TIMER_DELAY);

      break;

      // 1.7.	Set BLC Mode (0x31)
   case SONY_SET_BLC_MODE:

      stSONY.SET_BLC_MODE = u_Data[1];

      AT24C256C_EEPROM_Write(EEP_SET_BLC_MODE, stSONY.SET_BLC_MODE);

      u_Data[0] = 0x00;
      u_Data[1] = 0x00;

      switch (stSONY.SET_BLC_MODE)
      {
         // BLC/WDR OFF
      case 0x00:

         u_Cmd = 0x3D;
         u_Data[0] = 0x03;
         Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x06, SONY_COMMAND_TIMER_DELAY);

         u_Cmd = 0x33;
         u_Data[0] = 0x03;
         Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x06, SONY_COMMAND_TIMER_DELAY);

         break;

         // BLC ON
      case 0x01:

         u_Cmd = 0x3D;
         u_Data[0] = 0x03;
         Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x06, SONY_COMMAND_TIMER_DELAY);

         u_Cmd = 0x33;
         u_Data[0] = 0x02;
         Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x06, SONY_COMMAND_TIMER_DELAY);

         break;

         // WDR ON
      case 0x10:

         u_Cmd = 0x3D;
         u_Data[0] = 0x02;
         Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x06, SONY_COMMAND_TIMER_DELAY);

         u_Cmd = 0x33;
         u_Data[0] = 0x03;
         Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x06, SONY_COMMAND_TIMER_DELAY);

         break;

         // BLC/WDR ON
      case 0x11:

         u_Cmd = 0x3D;
         u_Data[0] = 0x02;
         Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x06, SONY_COMMAND_TIMER_DELAY);

         u_Cmd = 0x33;
         u_Data[0] = 0x02;
         Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x06, SONY_COMMAND_TIMER_DELAY);

         break;

      default:
         break;
      }

      break;

      // 1.8.	Set White Balance Mode (0x33)
   case SONY_SET_WHITE_BALANCE_MODE:

      // Command & Data Convert
      u_Cmd = 0x35;

      stSONY.SET_WHITE_BALANCE_MODE = u_Data[1];

      AT24C256C_EEPROM_Write(EEP_SET_WHITE_BALANCE_MODE, stSONY.SET_WHITE_BALANCE_MODE);

      u_Data[0] = 0x00;
      u_Data[1] = 0x00;

      switch (stSONY.SET_WHITE_BALANCE_MODE)
      {
         // Auto white balance Mode (Range : 3000 to 7500K)
      case 0x00:
         u_Data[0] = 0x00;
         break;

         // In door Mode
      case 0x01:
         u_Data[0] = 0x01;
         break;

         // Out door Mode
      case 0x02:
         u_Data[0] = 0x02;
         break;

         // Auto tracing white balance Mode (Range : 2000 to 10000K)
      case 0x03:
         u_Data[0] = 0x04;
         break;

      default:
         break;
      }

      Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x06, SONY_COMMAND_TIMER_DELAY);

      break;

      // 1.9.	Set Defog Mode (0x37)
   case SONY_SET_DEFOG_MODE:

      stSONY.SET_DEFOG_MODE = u_Data[1];

      AT24C256C_EEPROM_Write(EEP_SET_DEFOG_MODE, stSONY.SET_DEFOG_MODE);

      u_Data[0] = 0x00;
      u_Data[1] = 0x00;

      switch (stSONY.SET_DEFOG_MODE)
      {
         // Defog Off
      case 0x00:
         u_Data[0] = 0x03;
         break;

         // Defog On
      case 0x01:
         u_Data[0] = 0x02;
         break;

         // 값이 0x01보다 큰 경우에도 Defog On
      default:
         u_Data[0] = 0x02;
         stSONY.SET_DEFOG_MODE = 0x02;
         break;
      }

      Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x07, SONY_COMMAND_TIMER_DELAY);

      break;

      // 1.10.	Set Shutter Speed (0x4A)
   case SONY_SET_SHUTTER_SPEED:

      u_Data_Check = u_Data[1];

      if (u_Data_Check > 0x16)
         break;

      stSONY.SET_SHUTTER_SPEED = u_Data[1];

      AT24C256C_EEPROM_Write(EEP_SET_SHUTTER_SPEED, stSONY.SET_SHUTTER_SPEED);

      u_Data[0] = 0x00;
      u_Data[1] = 0x00;

      if (stSONY.SET_SHUTTER_SPEED == 0x00)
      {
         if (stSONY.SET_FLICKER_MODE)
         {
            // Flicker On 상태 이면 Flicker Off
            stSONY.SET_FLICKER_MODE = 0x00;

            u_Cmd = 0x39;
            u_Data[0] = 0x00;

            Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x06, SONY_COMMAND_TIMER_DELAY);
         }

         u_Cmd = 0x4A;
         u_Data[0] = 0x00;
         u_Data[1] = 0x06;

         // when, NTSC:1/30, PAL:1/25
         Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x09, SONY_COMMAND_TIMER_DELAY);

         u_Cmd = 0x39;
         u_Data[0] = 0x00;

         // Full-Auto Mode
         Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x06, SONY_COMMAND_TIMER_DELAY);

         stSONY.SET_SHUTTER_SPEED = 0x00;
      }
      else
      {
         if (stSONY.SET_DSS_MODE)
         {
            if (stSONY.SET_SHUTTER_SPEED <= 0x16)
            {
               if (stINFO.NTSC_PAL_STATUS == NTSC_MODE)
               {
                  if (stSONY.SET_SHUTTER_SPEED == 0x09)
                  {
                     stSONY.SET_FLICKER_MODE = 0x01;

                     // Shutter Priority Mode
                     u_Cmd = 0x39;
                     u_Data[0] = 0x0A;
                     Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x06, SONY_COMMAND_TIMER_DELAY);
                  }
                  else
                  {
                     stSONY.SET_FLICKER_MODE = 0x00;

                     u_Cmd = 0x39;
                     u_Data[0] = 0x00;

                     // Full-Auto Mode
                     Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x06, SONY_COMMAND_TIMER_DELAY);
                  }
               }
               else if (stINFO.NTSC_PAL_STATUS == PAL_MODE)
               {
                  if (stSONY.SET_SHUTTER_SPEED == 0x08)
                  {
                     stSONY.SET_FLICKER_MODE = 0x01;

                     // Shutter Priority Mode
                     u_Cmd = 0x39;
                     u_Data[0] = 0x0A;
                     Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x06, SONY_COMMAND_TIMER_DELAY);
                  }
                  else
                  {
                     stSONY.SET_FLICKER_MODE = 0x00;

                     u_Cmd = 0x39;
                     u_Data[0] = 0x00;

                     // Full-Auto Mode
                     Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x06, SONY_COMMAND_TIMER_DELAY);
                  }
               }

               // Shutter Priority Mode
               u_Cmd = 0x39;
               u_Data[0] = 0x0A;
               Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x06, SONY_COMMAND_TIMER_DELAY);

               // Shutter Speed Setting
               u_Cmd = 0x4A;
               u_Data[0] = 0x00;
               u_Data[1] = stSONY.SET_SHUTTER_SPEED - 1;
               Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x09, SONY_COMMAND_TIMER_DELAY);

            }
         }
         else
         {
            if ((stSONY.SET_SHUTTER_SPEED <= 0x16) && (stSONY.SET_SHUTTER_SPEED > 0x05))
            {
               if (stINFO.NTSC_PAL_STATUS == NTSC_MODE)
               {
                  if (stSONY.SET_SHUTTER_SPEED == 0x09)
                  {
                     stSONY.SET_FLICKER_MODE = 0x01;

                     // Shutter Priority Mode
                     u_Cmd = 0x39;
                     u_Data[0] = 0x0A;
                     Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x06, SONY_COMMAND_TIMER_DELAY);
                  }
                  else
                  {
                     stSONY.SET_FLICKER_MODE = 0x00;

                     u_Cmd = 0x39;
                     u_Data[0] = 0x00;

                     // Full-Auto Mode
                     Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x06, SONY_COMMAND_TIMER_DELAY);
                  }
               }
               else if (stINFO.NTSC_PAL_STATUS == PAL_MODE)
               {
                  if (stSONY.SET_SHUTTER_SPEED == 0x08)
                  {
                     stSONY.SET_FLICKER_MODE = 0x01;

                     // Shutter Priority Mode
                     u_Cmd = 0x39;
                     u_Data[0] = 0x0A;
                     Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x06, SONY_COMMAND_TIMER_DELAY);
                  }
                  else
                  {
                     stSONY.SET_FLICKER_MODE = 0x00;

                     u_Cmd = 0x39;
                     u_Data[0] = 0x00;

                     // Full-Auto Mode
                     Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x06, SONY_COMMAND_TIMER_DELAY);
                  }
               }

               // Shutter Priority Mode
               u_Cmd = 0x39;
               u_Data[0] = 0x0A;
               Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x06, SONY_COMMAND_TIMER_DELAY);

               u_Cmd = 0x4A;
               u_Data[0] = 0x00;
               u_Data[1] = stSONY.SET_SHUTTER_SPEED - 1;

               // when, NTSC:1/30, PAL:1/25
               Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x09, SONY_COMMAND_TIMER_DELAY);
            }
         }
      }
      break;

      // 1.11.	Set Flicker Mode (0x55)
   case SONY_SET_FLICKER_MODE:

      stSONY.SET_FLICKER_MODE = u_Data[1];

      AT24C256C_EEPROM_Write(EEP_SET_FLICKER_MODE, stSONY.SET_FLICKER_MODE);

      u_Data[0] = 0x00;
      u_Data[1] = 0x00;

      switch (stSONY.SET_FLICKER_MODE)
      {
         // Flicker Off = Full-Auto Mode
      case 0x00:

         u_Cmd = 0x39;
         u_Data[0] = 0x00;
         Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x06, SONY_COMMAND_TIMER_DELAY);	// Full-Auto Mode

         stSONY.SET_SHUTTER_SPEED = 0x00;

         break;

         // Flicker On = Shutter Priority Mode
      case 0x01:

         u_Cmd = 0x39;
         u_Data[0] = 0x0A;
         Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x06, SONY_COMMAND_TIMER_DELAY);	// Shutter Priority Mode

         u_Cmd = 0x4A;

         if (stINFO.NTSC_PAL_STATUS == NTSC_MODE)
         {
            u_Data[0] = 0x00;
            u_Data[1] = 0x08;	// 1/100s
            stSONY.SET_SHUTTER_SPEED = 0x0A;
         }
         else if (stINFO.NTSC_PAL_STATUS == PAL_MODE)
         {
            u_Data[0] = 0x00;
            u_Data[1] = 0x09;	// 1/120s
            stSONY.SET_SHUTTER_SPEED = 0x09;
         }

         Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x09, SONY_COMMAND_TIMER_DELAY);	// Full-Auto Mode

         break;
      }

      break;

      // 1.12.	Set Aperture Value (0x59)
   case SONY_SET_APERTURE_VALUE:

      u_Data_Check = u_Data[1];

      if (u_Data_Check > 0x0F)
         break;

      stSONY.SET_APERTURE_VALUE = u_Data[1];

      AT24C256C_EEPROM_Write(EEP_SET_APERTURE_VALUE, stSONY.SET_APERTURE_VALUE);

      u_Cmd = 0x42;
      u_Data[0] = 0x00;
      u_Data[1] = stSONY.SET_APERTURE_VALUE;

      Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x09, SONY_COMMAND_TIMER_DELAY);

      break;

      // 1.13.	Set Digital Zoom Mode (0x5B)
   case SONY_SET_DIGITAL_ZOOM_MODE:

      stSONY.SET_DIGITAL_ZOOM_MODE = u_Data[1];

      AT24C256C_EEPROM_Write(EEP_SET_DIGITAL_ZOOM_MODE, stSONY.SET_DIGITAL_ZOOM_MODE);

      u_Data[0] = 0x00;
      u_Data[1] = 0x00;

      switch (stSONY.SET_DIGITAL_ZOOM_MODE)
      {
         // Digital Zoom Mode Off
      case 0x00:

         u_Cmd = 0x06;
         u_Data[0] = 0x03;
         Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x06, SONY_COMMAND_TIMER_DELAY);	// Shutter Priority Mode

         break;

         // Digital Zoom Mode On
      case 0x01:

         u_Cmd = 0x06;
         u_Data[0] = 0x02;
         Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x06, SONY_COMMAND_TIMER_DELAY);	// Shutter Priority Mode

         break;

      default:

         // 0x01 보다 값이 클 경우에도 Digital Zoom Mode On
         u_Cmd = 0x06;
         u_Data[0] = 0x02;
         Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x06, SONY_COMMAND_TIMER_DELAY);	// Shutter Priority Mode

         stSONY.SET_DIGITAL_ZOOM_MODE = 0x01;

         break;

      }

      break;

      // 1.14.	Set Day & Night Mode (0x5F)
   case SONY_SET_DAY_NIGHT_MODE:

      stSONY.SET_DAY_NIGHT_MODE = u_Data[1];

      AT24C256C_EEPROM_Write(EEP_SET_DAY_NIGHT_MODE, stSONY.SET_DAY_NIGHT_MODE);

      u_Data[0] = 0x00;
      u_Data[1] = 0x00;

      switch (stSONY.SET_DAY_NIGHT_MODE)
      {
         // Night Mode
      case 0x00:

         // Auto Mode Off
         u_Cmd = 0x51;
         u_Data[0] = 0x03;
         Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x06, SONY_COMMAND_TIMER_DELAY);

         // Night Mode
         u_Cmd = 0x01;
         u_Data[0] = 0x02;
         Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x06, SONY_COMMAND_TIMER_DELAY);

         break;

         // Day Mode
      case 0x01:

         // Auto Mode Off
         u_Cmd = 0x51;
         u_Data[0] = 0x03;
         Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x06, SONY_COMMAND_TIMER_DELAY);

         // Day Mode
         u_Cmd = 0x01;
         u_Data[0] = 0x03;
         Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x06, SONY_COMMAND_TIMER_DELAY);

         break;

         // Auto Mode
      case 0x02:

         // Auto Mode On
         u_Cmd = 0x51;
         u_Data[0] = 0x02;
         Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x06, SONY_COMMAND_TIMER_DELAY);

         break;
      }

      break;

      // 1.15.	Set DSS Mode (0x61)
   case SONY_SET_DSS_MODE:

      stSONY.SET_DSS_MODE = u_Data[1];

      AT24C256C_EEPROM_Write(EEP_SET_DSS_MODE, stSONY.SET_DSS_MODE);

      u_Data[0] = 0x00;
      u_Data[1] = 0x00;

      switch (stSONY.SET_DSS_MODE)
      {
         // DSS OFF
      case 0x00:

         // DSS OFF
         u_Cmd = 0x5A;
         u_Data[0] = 0x03;
         Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x06, SONY_COMMAND_TIMER_DELAY);

         if (stSONY.SET_SHUTTER_SPEED < 0x07)
         {
            // Full-Auto Mode
            u_Cmd = 0x39;
            u_Data[0] = 0x00;
            Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x06, SONY_COMMAND_TIMER_DELAY);

            stSONY.SET_SHUTTER_SPEED = 0x00;
         }

         break;

         // DSS ON
      case 0x01:

         u_Cmd = 0x5A;
         u_Data[0] = 0x02;
         Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x06, SONY_COMMAND_TIMER_DELAY);

         break;

      default:
         break;
      }

      break;

      // 1.16.	Select BLC / WDR (0x85)
   case SONY_SELECT_BLC_WDR:

      stSONY.SELECT_BLC_WDR = u_Data[1];

      AT24C256C_EEPROM_Write(EEP_SELECT_BLC_WDR, stSONY.SELECT_BLC_WDR);

      u_Data[0] = 0x00;
      u_Data[1] = 0x00;

      // 필요없을듯하여 보류.
      switch (stSONY.SELECT_BLC_WDR)
      {
      case 0x00:
         break;

      case 0x01:
         break;

      default:
         break;
      }

      break;

      // 1.17.	Set High Resolution (0x87)
   case SONY_SET_HIGH_RESOLUTION:

      stSONY.SET_HIGH_RESOLUTION = u_Data[1];

      AT24C256C_EEPROM_Write(EEP_SET_HIGH_RESOLUTION, stSONY.SET_HIGH_RESOLUTION);

      u_Data[0] = 0x00;
      u_Data[1] = 0x00;

      switch (stSONY.SET_HIGH_RESOLUTION)
      {
         // HR Mode Off
      case 0x00:

         u_Cmd = 0x52;
         u_Data[0] = 0x03;
         Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x06, SONY_COMMAND_TIMER_DELAY);

         break;

         // HR Mode On
      case 0x01:

         u_Cmd = 0x52;
         u_Data[0] = 0x02;
         Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x06, SONY_COMMAND_TIMER_DELAY);

         break;

      default:
         break;
      }

      break;

      // 1.18.	Set Image Stabilizer (0x89)
   case SONY_SET_IMAGE_STABILIZER:

      stSONY.SET_IMAGE_STABILIZER = u_Data[1];

      AT24C256C_EEPROM_Write(EEP_SET_IMAGE_STABILIZER, stSONY.SET_IMAGE_STABILIZER);

      u_Data[0] = 0x00;
      u_Data[1] = 0x00;

      switch (stSONY.SET_IMAGE_STABILIZER)
      {
         // Image Stabilizer Off
      case 0x00:

         u_Cmd = 0x34;
         u_Data[0] = 0x03;
         Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x06, SONY_COMMAND_TIMER_DELAY);

         break;

         // Image Stabilizer On
      case 0x01:

         u_Cmd = 0x34;
         u_Data[0] = 0x02;
         Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x06, SONY_COMMAND_TIMER_DELAY);

         break;

      default:
         break;
      }

      break;

      // 1.19.	Set Noise Reduction (0x8B)
   case SONY_SET_NOISE_REDUCTION:

      u_Data_Check = u_Data[1];

      if (u_Data_Check > 0x05)
         break;

      stSONY.SET_NOISE_REDUCTION = u_Data[1];

      AT24C256C_EEPROM_Write(EEP_SET_NOISE_REDUCTION, stSONY.SET_NOISE_REDUCTION);

      u_Data[0] = 0x00;
      u_Data[1] = 0x00;

      switch (stSONY.SET_NOISE_REDUCTION)
      {
         // Noise Reduction Off
      case 0x00:

         u_Cmd = 0x53;
         u_Data[0] = 0x00;
         Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x06, SONY_COMMAND_TIMER_DELAY);

         break;

         // Image Stabilizer On [Sensitivity] (Lv.1 ~ Lv.5)
      case 0x01:
      case 0x02:
      case 0x03:
      case 0x04:
      case 0x05:

         u_Cmd = 0x53;
         u_Data[0] = stSONY.SET_NOISE_REDUCTION;
         Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x06, SONY_COMMAND_TIMER_DELAY);

         break;

      default:
         break;
      }

      break;

      // 1.20.	Set Color Module (0xF0) - 개별 기능 테스트 진행 후 적용
   case SONY_SET_COLOR_MODULE:
      break;

      // Set NTSC/PAL Mode (0x72)
   case SONY_SET_NTSC_PAL_MODE:

      u_Data_Check = u_Data[1];

      stSONY.SET_NTSC_PAL_MODE = u_Data[1];

      AT24C256C_EEPROM_Write(EEP_SET_NTSC_PAL_MODE, stSONY.SET_NTSC_PAL_MODE);

      u_Data[0] = 0x00;
      u_Data[1] = 0x00;

      u_Cmd = SONY_SET_NTSC_PAL_MODE;
      u_Data[0] = 0x00;

      switch (stSONY.SET_NTSC_PAL_MODE)
      {
         // NTSC MODE
      case 0x01:
         u_Data[1] = 0x07;
         break;

         // PAL MODE
      case 0x02:
         u_Data[1] = 0x08;
         break;

      default:
         break;
      }

      Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], 0x08, SONY_COMMAND_TIMER_DELAY);

      break;

      // Call Zoom Position (0xB8 : 0xFF - 0x47)
   case 0xB8:

      switch (u_Port)
      {
      case USART1_INDEX:

         u_Cmd = SONY_CALL_ZOOM_POSITION;

         u16_Convert_Data = stSONY.ZOOM_CNT;
         u_Data[0] = (u8)(u16_Convert_Data >> 8);
         u_Data[1] = (u8)(u16_Convert_Data & 0xFF);
         u_Leng = 0x05;

         stUSART1.TX_READY = 0x01;

         break;

      default:
         break;
      }

      break;

   default:
      break;

   }

   // Send MAIN Command & Data Trans
   if (stUSART1.TX_READY)
   {
      USART1_Send_Data(IP_SONY_FIRST_BYTE, u_Cmd, u_Data[0], u_Data[1], u_Data[2], u_Leng);

      stUSART1.TX_READY = 0;

      //Send_Data_Clear(USART1_INDEX, u_Leng);
   }

   // Send SONY Command & Data Trans
   if (stUART4.TX_READY)
   {
      Send_Sony_Data(u_Cmd, u_Data[0], u_Data[1], u_Leng, TSM_COMMAND_TIMER_DELAY);

      if (!stUART4.TX_REQUEST)
         stUART4.TX_ACK = 0x01;

      stUART4.TX_READY = 0;

      //Send_Data_Clear(USART1_INDEX, u_Leng);
   }

   // Send Ack Trans
   if (stUART4.TX_ACK)
   {
      stUART4.TX_ACK = 0;
   }

}

/***************************************************************************************************************************
* Function : TSM_Data_Handing
* Protocol Version : 0.1 (2016.04.11)
* Data Architecture :
BYTE1[0]		BYTE2[1]		BYTE3[2]		BYTE4[3]		BYTE5[4]		BYTE5[5]		BYTE[..]		BYTE(n)[LENGTH+4]	BYTE(n+1)[LENGTH+4]
0xB0		0x0B		LENGTH		ADDR		COMM		DATA		...			CS					0xBF
****************************************************************************************************************************/
void TSM_Data_Handing(u8 u_Port, u8 u_Comm, u8 u_Leng)
{
   u8 u_Cmd = 0x00;	// Camera Command
   u8 u_Data1 = 0x00, u_Data2 = 0x00, u_Data3 = 0x00;
   u8 u_Response_Data = 0x00;

   u8 u8_Convert_Data[10];
   u16 u16_Convert_Data = 0x0000;

   switch (u_Port)
   {
   case SYSTEM_INDEX:

      u_Cmd = stSYS.RX_BUF[0][5];
      u_Data1 = stSYS.RX_BUF[0][6];
      u_Data2 = stSYS.RX_BUF[0][7];
      u_Data3 = stSYS.RX_BUF[0][8];

      break;

   case USART1_INDEX:

      u_Cmd = stUSART1.RX_BUF[4];
      u_Data1 = stUSART1.RX_BUF[5];
      u_Data2 = stUSART1.RX_BUF[6];
      u_Data3 = stUSART1.RX_BUF[7];

      break;

   case USART5_INDEX:

      u_Cmd = stUART5.RX_BUF[4];
      u_Data1 = stUART5.RX_BUF[5];
      u_Data2 = stUART5.RX_BUF[6];
      u_Data3 = stUART5.RX_BUF[7];

      break;

   default:
      break;
   }

   switch (u_Comm)
   {
      // 2.1.1. Initialize (0x01)
   case TSM_INITIALIZE:
      stUART4.TX_READY = 0x01;
      break;

      // 2.1.2. Rebooting (0x02)
   case TSM_REBOOTING:
      stUART4.TX_READY = 0x01;
      break;

      // 2.1.3. Save Setting (0x04)
   case TSM_SAVE_SETTING:
      stUART4.TX_READY = 0x01;
      break;

      // 2.1.4. Shutter Set (0x05)
   case TSM_SHUTTER_SET:
      stUART4.TX_READY = 0x01;
      break;

      // 2.1.5. Digital Zoom Start (0x11)
   case TSM_DIGITAL_ZOOM_START:
      stUART4.TX_READY = 0x01;
      break;

      // 2.1.6. Digital Zoom Stop (0x10)
   case TSM_DIGITAL_ZOOM_STOP:
      stUART4.TX_READY = 0x01;
      break;

      // 2.1.7. Digital Zoom Direct (0x12)
   case TSM_DIGITAL_ZOOM_DIRECT:
      stUART4.TX_READY = 0x01;
      break;

      // 2.1.8. Optical Zoom Start (0x13)
   case TSM_OPTICAL_ZOOM_START:
      stUART4.TX_READY = 0x01;
      break;

      // 2.1.9. Optical Zoom Stop (0x14)
   case TSM_OPTICAL_ZOOM_STOP:
      stUART4.TX_READY = 0x01;
      break;

      // 2.1.10. Optical Zoom Direct (0x15)
   case TSM_OPTICAL_ZOOM_DIRECT:
      stUART4.TX_READY = 0x01;
      break;

      // 2.1.11. Focus Start (0x16)
   case TSM_FOCUS_START:
      stUART4.TX_READY = 0x01;
      //stPTZ.TFOCUS_STATUS = FOCUS_ACTIVE;
      break;

      // 2.1.12. Focus Stop (0x17)
   case TSM_FOCUS_STOP:
      stUART4.TX_READY = 0x01;
      stTSM.FOCUS_CHECK_FLAG = 0x01;
      //stPTZ.TFOCUS_STATUS = FOCUS_STOP;
      break;

      // 2.1.13. Focus Direct (0x18)
   case TSM_FOCUS_DIRECT:
      stUART4.TX_READY = 0x01;
      break;

      // 2.1.14. Auto Focus Set (0x19)
   case TSM_AUTO_FOCUS_SET:
      stUART4.TX_READY = 0x01;
      break;

      // 2.1.15. Digital Zoom Enable (0x1C)
   case TSM_DIZITAL_ZOOM_ENABLE:

      // IP ERROR DATA CONVERT
      switch (u_Data3)
      {
      case 0x01:
         u_Data3 = 0x80;
         break;
      }
      stUART4.TX_READY = 0x01;
      break;

      // 2.1.16. Total Zoom Start (0x20)
   case TSM_TOTAL_ZOOM_START:

      switch (stINFO.THERMAL_MODEL)
      {
      case TSM_72:
      case TSM_1M:

#if(1)

         switch (stINFO.THERMAL_LENS)
         {
         case 0x01:
            u_Cmd = TSM_TOTAL_ZOOM_START;
            u_Data2 = 0x07;
            break;

         default:
            u_Cmd = TSM_TOTAL_ZOOM_START;
            break;
         }
#else
         switch (stINFO.THERMAL_LENS)
         {
         case 0x01:
            u_Cmd = TSM_TOTAL_ZOOM_START;
            u_Data2 = 0x07;
            break;

         default:
            u_Cmd = TSM_DIGITAL_ZOOM_START;
            break;
         }
#endif

         break;

      default:
         break;
      }

      stUART4.TX_READY = 0x01;
      //stPTZ.TZOOM_STATUS = ZOOM_ACTIVE;
      break;

      // 2.1.17. Total Zoom Stop (0x21)
   case TSM_TOTAL_ZOOM_STOP:
      stUART4.TX_READY = 0x01;
      stTSM.ZOOM_CHECK_FLAG = 0x01;
      break;

      // 2.1.18. Total Zoom Direct (0x22)
   case TSM_TOTAL_ZOOM_DIRECT:
      stUART4.TX_READY = 0x01;
      break;

      // 2.1.19. Total Zoom Stop (0x23)
   case TSM_TOTAL_ZOOM_STOP_SUB:
      stUART4.TX_READY = 0x01;
      stTSM.ZOOM_CHECK_FLAG = 0x01;
      break;

      // 2.1.20. AGC Mode Set (0x26)
   case TSM_AGC_MODE_SET:
      stUART4.TX_READY = 0x01;
      break;

      // 2.1.21. Color Mode Set (0x27)
   case TSM_COLOR_MODE_SET:
      stUART4.TX_READY = 0x01;
      break;

      // 2.1.22. Contrast/Brightness (0x28) (when, AGC OFF)
   case TSM_CONTRAST_BRIGHTNESS:
      stUART4.TX_READY = 0x01;
      break;

      // 2.1.23. AGC Center Position Set (0x29)
   case TSM_AGC_CENTER_POSITION_SET:
      stUART4.TX_READY = 0x01;
      break;

      // 2.1.24. AGC Limit Level Set (0x2A)
   case TSM_AGC_LIMIT_LEVEL_SET:
      stUART4.TX_READY = 0x01;
      break;

      // 2.1.25. AGC ROI (AGC Region of Interest) Set (0x2B)
   case TSM_AGC_ROI_SET:
      stUART4.TX_READY = 0x01;
      break;

      // 2.1.26. MIDE Level Set (0x2C) (when, Sharpness OFF)
   case TSM_MIDE_LEVEL_SET:
      stUART4.TX_READY = 0x01;
      break;

      // 2.1.27. Sharpness Level Set (0x2D) (when, MIDE OFF)
   case TSM_SHARPNESS_LEVEL_SET:
      stUART4.TX_READY = 0x01;
      break;

      // 2.1.28. Detect Mode Set (0x31)
   case TSM_DETECT_MODE_SET:
      stUART4.TX_READY = 0x01;
      break;

      // 2.1.29. Area Position Set (0x32)
   case TSM_AREA_POSITION_SET:
      stUART4.TX_READY = 0x01;
      break;

      // 2.1.30. Spot Position Set (0x33)
   case TSM_SPOT_POSITION_SET:
      stUART4.TX_READY = 0x01;
      break;

      // 2.1.31. High Alarm Temperature (0x34)
   case TSM_HIGH_ALARM_TEMPERATURE:
      stUART4.TX_READY = 0x01;
      break;

      // 2.1.32. Low Alarm Temperature (0x35)
   case TSM_LOW_ALARM_TEMPERATURE:
      stUART4.TX_READY = 0x01;
      break;

      // 2.1.33. Select Alarm (0x36)
   case TSM_SELECT_ALARM:
      stUART4.TX_READY = 0x01;
      break;

      // 2.1.34. Alarm Mode (0x37)
   case TSM_ALARM_MODE:
      stUART4.TX_READY = 0x01;
      break;

      // 2.1.35. Temperature OSD (0x38)
   case TSM_TEMPERATURE_OSD:
      stUART4.TX_READY = 0x01;
      break;

      // 2.1.36. Emissivity Set (0x39)
   case TSM_EMISSIVITY_SET:
      stUART4.TX_READY = 0x01;
      break;

      // 2.1.37. Mirror / Flip Mode Set (0x43)
   case TSM_MIRROR_FLIP_MODE_SET:
      stUART4.TX_READY = 0x01;
      break;

      // 2.1.38. Mirror Mode Set (0x44)
   case TSM_MIRROR_MODE_SET:
      stUART4.TX_READY = 0x01;
      break;

      // 2.1.39. Flip Mode Set (0x45)
   case TSM_FLIP_MODE_SET:
      stUART4.TX_READY = 0x01;
      break;

      // 2.1.40. Image Freeze Set (0x46)
   case TSM_IMAGE_FREEZE_SET:
      stUART4.TX_READY = 0x01;
      break;

      // 2.1.41. Image Color Inverse(White/Black Hot) Set (0x47)
   case TSM_IMAGE_COLOR_INVERSE:
      stUART4.TX_READY = 0x01;
      break;

      // 2.1.42. External Communication Option Set (0x55)
   case TSM_EXTERNAL_OPTION_SET:
      stUART4.TX_READY = 0x01;
      break;

      // 2.1.43. Calibration Execute (0x65)
   case TSM_CALIBRATION_EXECUTE:
      stUART4.TX_READY = 0x01;
      break;

      // 2.1.44. Calibration Option Set (0x66)
   case TSM_CALIBRATION_OPTION_SET:
      stUART4.TX_READY = 0x01;
      break;

      // 2.1.45. OSD All Off (0x76)
   case TSM_OSD_ALL_OFF:
      stUART4.TX_READY = 0x01;
      break;

      // 2.1.46. Temperature Mode Set (0x77)
   case TSM_TEMPERATURE_MODE_SET:
      stUART4.TX_READY = 0x01;
      break;

      // 2.1.47. Temperature Range Set (0x78) - Not Used
   case TSM_TEMPERATURE_RANGE_SET:
      break;

      // 2.1.48. Video Mode Set (0x79)
   case TSM_VIDEO_MODE_SET:
      stUART4.TX_READY = 0x01;
      break;

      // 2.1.49. OSD MENU Key Control (0xA0)
   case TSM_OSD_MENU_KEY_CONTROL:
      stUART4.TX_READY = 0x01;
      break;

      // 2.1.50. Call Module Status (0x30)
   case TSM_CALL_MODULE_STATUS:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;
      break;

      // 2.1.51. Call Alarm Status (0x3A)
   case TSM_CALL_ALARM_STATUS:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;
      break;

      // 2.1.52. Call Spot Temperature (0x3B)
   case TSM_CALL_SPOT_TEMPERATURE:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;
      break;

      // 2.1.53. Call Area Temperature (0x3C)
   case TSM_CALL_AREA_TEMPERATURE:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;
      break;

      // 2.1.54. Call Center Temperature (0x3D)
   case TSM_CALL_CENTER_TEMPERATURE:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;
      break;

      // 2.1.55. Call Full Temperature (0x3E)
   case TSM_CALL_FULL_TEMPERATURE:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;
      break;

      // 2.1.56. Call External Communication (0x71)
   case TSM_CALL_EXTERNAL_COMMUNICATION:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;
      break;

      // 2.1.57. Call Camera Information (0x80)
   case TSM_CALL_CAMERA_INFORMATION:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;
      break;

      // 2.1.58. Call Firmware Version (0x81)
   case TSM_CALL_FIRMWARE_VERSION:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;
      break;

      // 2.1.59. Call Digital Zoom Position (0x82)
   case TSM_CALL_DIGITAL_ZOOM_POSITION:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;
      break;

      // 2.1.60. Call Optical Zoom Position (0x83)
   case TSM_CALL_OPTICAL_ZOOM_POSITION:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;
      break;

      // 2.1.61. Call Focus Position (0x84)
   case TSM_CALL_FOCUS_POSITION:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;
      break;

      // 2.1.62. Call Total Zoom Position (0x85)
   case TSM_CALL_TOTAL_ZOOM_POSITION:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;

      stTSM.ZOOM_CHECK_FLAG = 0x01;
      break;

      // 2.1.63. Call Temperature Mode (0x86)
   case TSM_CALL_TEMPERATURE_MODE:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;
      break;

      // 2.1.64. Call All Temperature (0x87)
   case TSM_CALL_ALL_TEMPERATURE:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;

      // BackUp Data
      stTSM.TEMPERATURE_READ_FLAG = u_Data1;		// 온도 연속 출력 데이터 백업

      u16_Convert_Data = (u_Data2 << 8);		// 온도 연속 출력 데이터 백업 P2
      u16_Convert_Data |= u_Data3;			// 온도 연속 출력 데이터 백업 P3
      stTSM.TEMPERATURE_READ_TIME = u16_Convert_Data;
      break;

      // 2.1.65. Call Auto AF (0x88)
   case TSM_CALL_AUTO_AF:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;
      break;

      // Call Focus Position (0x94)
   case TSM_CALL_FOCUS_POSITION_SUB:

      u16_Convert_Data = stTSM.FOCUS_CNT;

      u8_Convert_Data[0] = (u8)(u16_Convert_Data >> 8);
      u8_Convert_Data[1] = (u8)(u16_Convert_Data & 0xFF);

      stUSART1.TX_BUF[0] = IP_TSM_FIRST_BYTE;
      stUSART1.TX_BUF[1] = IP_TSM_SECOND_BYTE;
      stUSART1.TX_BUF[2] = 0x05;

      stUSART1.TX_BUF[3] = 0x01;

      stUSART1.TX_BUF[4] = TSM_CALL_FOCUS_POSITION_SUB;
      stUSART1.TX_BUF[5] = u8_Convert_Data[0];
      stUSART1.TX_BUF[6] = u8_Convert_Data[1];
      stUSART1.TX_BUF[7] = u8_Convert_Data[2];

      stUSART1.TX_BUF[8] = 0x00;
      stUSART1.TX_BUF[8] = stUSART1.TX_BUF[3] + stUSART1.TX_BUF[4] + stUSART1.TX_BUF[5] + stUSART1.TX_BUF[6] + stUSART1.TX_BUF[7];

      stUSART1.TX_BUF[9] = 0xBF;

      stUSART1.TX_CNT = 0;
      stUSART1.TX_MAX = 10;

      USART_SendData(USART1, stUSART1.TX_BUF[stUSART1.TX_CNT++]);
      Delay_1ms(MAIN_COMMAND_TIMER_DELAY);

      break;

      // Call Total Zoom Position (0x95)
   case TSM_CALL_TOTAL_ZOOM_POSITION_SUB:

      u16_Convert_Data = stTSM.ZOOM_CNT;

      u8_Convert_Data[0] = (u8)(u16_Convert_Data >> 8);
      u8_Convert_Data[1] = (u8)(u16_Convert_Data & 0xFF);

      stUSART1.TX_BUF[0] = IP_TSM_FIRST_BYTE;
      stUSART1.TX_BUF[1] = IP_TSM_SECOND_BYTE;
      stUSART1.TX_BUF[2] = 0x05;

      stUSART1.TX_BUF[3] = 0x01;

      stUSART1.TX_BUF[4] = TSM_CALL_TOTAL_ZOOM_POSITION_SUB;
      stUSART1.TX_BUF[5] = u8_Convert_Data[0];
      stUSART1.TX_BUF[6] = u8_Convert_Data[1];
      stUSART1.TX_BUF[7] = u8_Convert_Data[2];

      stUSART1.TX_BUF[8] = 0x00;
      stUSART1.TX_BUF[8] = stUSART1.TX_BUF[3] + stUSART1.TX_BUF[4] + stUSART1.TX_BUF[5] + stUSART1.TX_BUF[6] + stUSART1.TX_BUF[7];

      stUSART1.TX_BUF[9] = 0xBF;

      stUSART1.TX_CNT = 0;
      stUSART1.TX_MAX = 10;

      USART_SendData(USART1, stUSART1.TX_BUF[stUSART1.TX_CNT++]);
      Delay_1ms(MAIN_COMMAND_TIMER_DELAY);

      break;

      // 2.1.66. Call Product Identification (0xF0)
   case TSM_CALL_PRODUCT_IDENTIFICATION:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;
      break;

      // 2.1.67. Module Mode Set (0xF1)
   case TSM_MODULE_MODE_SET:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;
      break;

      // 2.1.68. Auto AF Set (0xF2)
   case TSM_AUTO_AF_SET:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;
      break;

      // 2.1.69. Set Thermal Module (0xF3)
   case TSM_SET_THERMAL_MODULE:
      stUART4.TX_READY = 0x01;
      break;

   default:
      stUART4.TX_READY = 0x01;
      break;

   }

   stUART4.TX_CMD = u_Cmd;
   stUART4.TX_PARAMETER1 = u_Data1;
   stUART4.TX_PARAMETER2 = u_Data2;
   stUART4.TX_PARAMETER3 = u_Data3;

   // Send TSM Command & Data Trans
   if (stUART4.TX_READY)
   {
      Send_TSM_Data(u_Cmd, u_Data1, u_Data2, u_Data3, 0x06, TSM_COMMAND_TIMER_DELAY);

      if (stTSM.ZOOM_CHECK_FLAG == 0x01)
      {
         stTSM.ZOOM_CHECK_FLAG = 0x00;
         stUART4.RX_REQUEST_CMD = TSM_CALL_TOTAL_ZOOM_POSITION;
         Send_TSM_Data(TSM_CALL_TOTAL_ZOOM_POSITION, 0x00, 0x00, 0x00, 0x06, TSM_COMMAND_TIMER_DELAY);
      }

      if (stTSM.FOCUS_CHECK_FLAG == 0x01)
      {
         stTSM.FOCUS_CHECK_FLAG = 0x00;
         stUART4.RX_REQUEST_CMD = TSM_CALL_FOCUS_POSITION;
         Send_TSM_Data(TSM_CALL_FOCUS_POSITION, 0x00, 0x00, 0x00, 0x06, TSM_COMMAND_TIMER_DELAY);
      }

      if (!stUART4.TX_REQUEST)
         stUART4.TX_ACK = 0x01;

      stUART4.TX_READY = 0;

      //Send_Data_Clear(u_Leng);
   }

   // Send Ack Trans
   if (stUART4.TX_ACK)
   {
      //Send_UART4_Ack(0xB0, 0x03, 0x01, u_Comm, u_Response_Data, 5);

      stUART4.TX_ACK = 0;
   }
}

/***************************************************************************************************************************
* Function : TCM_Data_Handing
* Protocol Version : 2.12 (2017.05.16)
* Data Architecture :
BYTE1[0]		BYTE2[1]		BYTE3[2]		BYTE4[3]		BYTE5[4]		BYTE5[5]		BYTE[..]		BYTE(n)[LENGTH+4]	BYTE(n+1)[LENGTH+4]
0xB0		0x0B		LENGTH		ADDR		COMM		DATA		...			CS					0xBF
****************************************************************************************************************************/
void TCM_Data_Handing(u8 u_Port, u8 u_Comm, u8 u_Leng)
{
   u8 u_Cmd = 0x00, u_Length = 0x06;
   u8 u_Data1 = 0x00, u_Data2 = 0x00, u_Data3 = 0x00, u_Data4 = 0x00, u_Data5 = 0x00;
   u8 u_Data6 = 0x00, u_Data7 = 0x00, u_Data8 = 0x00, u_Data9 = 0x00;
   u8 u_Response_Data = 0x00;

   u8 u8_Convert_Data[10];
   u16 u16_Convert_Data = 0x0000;

   switch (u_Port)
   {
   case SYSTEM_INDEX:

      u_Cmd = stSYS.RX_BUF[0][5];
      u_Data1 = stSYS.RX_BUF[0][6];
      u_Data2 = stSYS.RX_BUF[0][7];
      u_Data3 = stSYS.RX_BUF[0][8];

      u_Data4 = stSYS.RX_BUF[0][9];
      u_Data5 = stSYS.RX_BUF[0][10];
      u_Data6 = stSYS.RX_BUF[0][11];

      u_Data7 = stSYS.RX_BUF[0][12];
      u_Data8 = stSYS.RX_BUF[0][13];
      u_Data9 = stSYS.RX_BUF[0][14];

      break;

   case USART1_INDEX:

      u_Cmd = stUSART1.RX_BUF[4];
      u_Data1 = stUSART1.RX_BUF[5];
      u_Data2 = stUSART1.RX_BUF[6];
      u_Data3 = stUSART1.RX_BUF[7];

      u_Data4 = stUSART1.RX_BUF[8];
      u_Data5 = stUSART1.RX_BUF[9];
      u_Data6 = stUSART1.RX_BUF[10];

      u_Data7 = stUSART1.RX_BUF[11];
      u_Data8 = stUSART1.RX_BUF[12];
      u_Data9 = stUSART1.RX_BUF[13];

      break;

   case USART5_INDEX:

      u_Cmd = stUART5.RX_BUF[4];
      u_Data1 = stUART5.RX_BUF[5];
      u_Data2 = stUART5.RX_BUF[6];
      u_Data3 = stUART5.RX_BUF[7];

      u_Data4 = stUART5.RX_BUF[8];
      u_Data5 = stUART5.RX_BUF[9];
      u_Data6 = stUART5.RX_BUF[10];

      u_Data7 = stUSART1.RX_BUF[11];
      u_Data8 = stUSART1.RX_BUF[12];
      u_Data9 = stUSART1.RX_BUF[13];

      break;

   default:
      break;
   }

   switch (u_Comm)
   {
      // 2.3.1. Camera Initialize (0x01)
   case TCM_INITIALIZE:
      stUART4.TX_READY = 0x01;
      break;

      // 2.3.2. Rebooting (0x02)
   case TCM_REBOOTING:
      stUART4.TX_READY = 0x01;
      break;

      // 2.3.3. Save Current Setting Option (0x04)
   case TCM_SAVE_CURRENT_SETTING_OPTION:
      stUART4.TX_READY = 0x01;
      break;

      // 2.3.4. Zoom/Focus Stop (Digital Zoom, Optical Zoom, Focus) (0x10)
   case TCM_ZOOM_FOCUS_STOP:
      stUART4.TX_READY = 0x01;
      break;

      // 2.3.5. Digital Zoom Start (0x11)
   case TCM_DIGITAL_ZOOM_START:
      stUART4.TX_READY = 0x01;
      break;

      // 2.3.6. Digital Zoom Direct (0x12)
   case TCM_DIGITAL_ZOOM_DIRECT:
      stUART4.TX_READY = 0x01;
      break;

      // 2.3.7. Optical Zoom Direct (0x13)
   case TCM_OPTICAL_ZOOM_DIRECT:
      u_Length = 0x08;
      stUART4.TX_READY = 0x01;
      break;

      // 2.3.8. Optical Zoom Start (0x14)
   case TCM_OPTICAL_ZOOM_START:
      stUART4.TX_READY = 0x01;
      break;

      // 2.3.9. Save FOV (0x15)
   case TCM_SAVE_FOV:
      stUART4.TX_READY = 0x01;
      break;

      // 2.3.10. Move FOV (0x16)
   case TCM_MOVE_FOV:
      u_Cmd = 0x18;
      stUART4.TX_READY = 0x01;
      break;

      // 2.3.10.1 Focus Stop Sub (0x17)
   case TCM_FOCUS_STOP_SUB:
      u_Cmd = 0xA2;
      stUART4.TX_READY = 0x01;
      break;

      // 2.3.13. Focus Start (0x18)
   case TCM_FOCUS_START:
      stUART4.TX_READY = 0x01;
      break;

      // IP ↔ PTZ Convert Data
   case CVT_AF_EXCUTE:
      u_Cmd = TCM_AF_EXECUTE;
      stUART4.TX_READY = 0x01;
      break;

      // 2.3.14. Integral Time Set (0x1A)
   case TCM_INTEGRAL_TIME_SET:
      stUART4.TX_READY = 0x01;
      break;

      // 2.3.15. Digital Zoom Enable Set (0x1C)
   case TCM_DIGITAL_ZOOM_ENABLE_SET:
      stUART4.TX_READY = 0x01;
      break;

      // 2.3.29. Total Zoom Start (0x20)
   case TCM_TOTAL_ZOOM_START:
      u_Data2 = 0x07;
      stUART4.TX_READY = 0x01;
      break;

      // 2.3.16. AGC Type Set (GAIN, OFFSET) (0x21)
   case TCM_AGC_TYPE_SET:
      u_Length = 0x08;
      stUART4.TX_READY = 0x01;
      break;

      // 2.3.28. Total Zoom Direct (0x22)
   case TCM_TOTAL_ZOOM_DIRECT:
      stUART4.TX_READY = 0x01;
      break;

      // 2.3.28.1. Total Zoom Stop Sub (0x23)
   case TCM_TOTAL_ZOOM_STOP_SUB:
      stUART4.TX_READY = 0x01;
      break;

      // 2.3.17. AGC Mode Set (0x26)
   case TCM_AGC_MODE_SET:

      switch (u_Port)
      {
      case SYSTEM_INDEX:
         stUART4.TX_READY = 0x01;
         break;

      case USART1_INDEX:
         stUART4.TX_READY = 0x01;
         break;

      case USART5_INDEX:

         switch (u_Data1)
         {
         case 0x00:
            Send_TCM_Data(TCM_AGC_TYPE_SET, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, TCM_COMMAND_TIMER_DELAY);
            stTCM.AGC_TYPE_SET = 0x00;
            break;

         case 0x01:
            if (stTCM.AGC_TYPE_SET == 0x00)
               Send_TCM_Data(TCM_AGC_TYPE_SET, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, TCM_COMMAND_TIMER_DELAY);
            Send_TCM_Data(TCM_AGC_MODE_SET, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, TCM_COMMAND_TIMER_DELAY);
            stTCM.AGC_TYPE_SET = 0x01;
            break;

         case 0x02:
            if (stTCM.AGC_TYPE_SET == 0x00)
               Send_TCM_Data(TCM_AGC_TYPE_SET, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, TCM_COMMAND_TIMER_DELAY);
            Send_TCM_Data(TCM_AGC_MODE_SET, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, TCM_COMMAND_TIMER_DELAY);
            stTCM.AGC_TYPE_SET = 0x02;
            break;

         default:
            break;
         }

         break;
      }

      break;

      // 2.3.18. Color Mode Set (0x27)
   case TCM_COLOR_MODE_SET:
      stUART4.TX_READY = 0x01;
      break;

      // 2.3.19. AGC Center Position Set (0x29)
   case TCM_AGC_CENTER_POSITION_SET:
      stUART4.TX_READY = 0x01;
      break;

      // 2.3.20. AGC Limit Level Set (0x2A)
   case TCM_AGC_LIMIT_LEVEL_SET:
      stUART4.TX_READY = 0x01;
      break;

      // 2.3.21. AGC ROI (Region of Interest) Set (0x2B)
   case TCM_AGC_ROI_SET:
      stUART4.TX_READY = 0x01;
      break;

      // 2.3.22. MIDE Level Set (0x2C)
   case TCM_MIDE_LEVEL_SET:
      stUART4.TX_READY = 0x01;
      break;

      // 2.3.23. SHARPNESS Level Set (0x2D)
   case TCM_SHARPNESS_LEVEL_SET:
      stUART4.TX_READY = 0x01;
      break;

      // 2.3.24. AF ROI (Region of Interest) Set (0x2E)
   case TCM_AF_ROI_SET:
      stUART4.TX_READY = 0x01;
      break;

      // 2.3.25. AF Mark Set (0x2F)
   case TCM_AF_MARK_SET:
      stUART4.TX_READY = 0x01;
      break;

      // 2.3.26. AGC Smooth (0x31)
   case TCM_AGC_SMOOTH:
      stUART4.TX_READY = 0x01;
      break;

      // 2.3.27. AF Execute (0x32)
   case TCM_AF_EXECUTE:
      stUART4.TX_READY = 0x01;
      break;

      // 2.3.11. Save FOV EX (0x35)
   case TCM_SAVE_FOV_EX:
      stUART4.TX_READY = 0x01;
      break;

      // 2.3.12. Move FOV EX (0x36)
   case TCM_MOVE_FOV_EX:
      stUART4.TX_READY = 0x01;
      break;

      // 2.3.30. Calibration Shutter Use (0x40)
   case TCM_CALIBRATION_SHUTTER_USE:
      stUART4.TX_READY = 0x01;
      break;

      // 2.3.31. Shutter Set (0x41)
   case TCM_SHUTTER_SET:
      stUART4.TX_READY = 0x01;
      break;

      // 2.3.32. AF Mode Set (0x42)
   case TCM_AF_MODE_SET:
      stUART4.TX_READY = 0x01;
      break;

      // 2.3.33. Mirror/Flip Mode (0x43)
   case TCM_MIRROR_FLIP_MODE:

      // P3 : Status Enable : TCM에는 없음.
      u_Data3 = 0x00;

      stUART4.TX_READY = 0x01;
      break;

      // 2.3.34. Mirror Mode Set (0x44)
   case TCM_MIRROR_MODE_SET:
      stUART4.TX_READY = 0x01;
      break;

      // 2.3.35. Flip Mode Set (0x45)
   case TCM_FLIP_MODE_SET:
      stUART4.TX_READY = 0x01;
      break;

      // 2.3.36. Image Freeze Set (0x46)
   case TCM_IMAGE_FREEZE_SET:
      stUART4.TX_READY = 0x01;
      break;

      // 2.3.37. Image Color Inverse (White/Black Hot) Set (0x47)
   case TCM_IMAGE_COLOR_INVERSE:
      stUART4.TX_READY = 0x01;
      break;

      // 2.3.38. External Communication Option Set (0x55)
   case TCM_EXTERNAL_COMMUNICATION_OPTION:
      stUART4.TX_READY = 0x01;
      break;

      // 2.3.39. Calibration Execute (0x65)
   case TCM_CALIBRATION_EXECUTE:
      stUART4.TX_READY = 0x01;
      break;

      // 2.3.40. Calibration Option Set (0x66)
   case TCM_CALIBRATION_OPTION_SET:
      stUART4.TX_READY = 0x01;
      break;

      // 2.3.41. Video Mode Set (0x79)
   case TCM_VIDEO_MODE_SET:
      stUART4.TX_READY = 0x01;
      break;

      // 2.3.42. OSD MENU Key Control (0xA0)
   case TCM_OSD_MENU_KEY_CONTROL:
      stUART4.TX_READY = 0x01;
      break;

      // 2.3.43. ZOOM Stop (0xA1)
   case TCM_ZOOM_STOP:
      stUART4.TX_READY = 0x01;
      break;

      // 2.3.44. FOCUS Stop (0xA2)
   case TCM_FOCUS_STOP:
      stUART4.TX_READY = 0x01;
      break;

      // 2.3.45. ZOOM Direct (0xA3)
   case TCM_ZOOM_DIRECT:
      stUART4.TX_READY = 0x01;
      break;

      // 2.3.46. FOCUS Direct (0xA4)
   case TCM_FOCUS_DIRECT:
      stUART4.TX_READY = 0x01;
      break;

      // 2.3.47. OSD Information Print (0xA5)
   case TCM_OSD_INFORMATION_PRINT:
      stUART4.TX_READY = 0x01;
      break;

      // 2.3.48. Zoom Focus Speed Set (0xA6)
   case TCM_ZOOM_FOCUS_SPEED_SET:
      stUART4.TX_READY = 0x01;
      break;

      // 2.3.49. FOV All Initialize (0xA7)
   case TCM_FOV_ALL_INITIALIZE:
      stUART4.TX_READY = 0x01;
      break;

      // 2.3.50. EEPROM Save (0xA8)
   case TCM_EEPROM_SAVE:
      stUART4.TX_READY = 0x01;
      break;

      // 2.3.51. NUC Execute (0xF1)
   case TCM_NUC_EXECUTE:
      stUART4.TX_READY = 0x01;
      break;

      // 2.3.52. Spot for BPR Set (0xF2)
   case TCM_SPOT_FOR_BPR_SET:
      stUART4.TX_READY = 0x01;
      break;

      // 2.3.53. Move Spot (0xF3)
   case TCM_MOVE_SPOT:
      stUART4.TX_READY = 0x01;
      break;

      // 2.3.54. Active BPR (0xF4)
   case TCM_ACTIVE_BPR:
      stUART4.TX_READY = 0x01;
      break;

      // 2.3.55. Active BPR (0x95)
   case TCM_SET_FRAME_RATE:
      stUART4.TX_READY = 0x01;
      break;

      // 2.3.56. Set Integral Time (0x96)
   case TCM_SET_INTEGRAL_TIME:
      stUART4.TX_READY = 0x01;
      break;

      // 2.3.57. Operation Parameter Save (0x98)
   case TCM_OPERATION_PARAMETER_SAVE:
      stUART4.TX_READY = 0x01;
      break;

   case TCM_DNR_MODE_SET:
      stUART4.TX_READY = 0x01;
      break;

   case TCM_DIS_MODE_SET:
      stUART4.TX_READY = 0x01;
      break;

      // 2.3.I.1. Module Status Inquiry (0x30)
   case TCM_MODULE_STATUS_INQ:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;
      break;

      // 2.3.I.2. Camera Information Inquiry (0x80)
   case TCM_CAMERA_INFORMATION_INQ:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;
      break;

      // 2.3.I.3. Digital Zoom Position Inquiry (0x82)
   case TCM_DIGITAL_ZOOM_POSITION_INQ:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;
      break;

      // 2.3.I.4. AGC Mode Inquiry (0xB0)
   case TCM_AGC_MODE_INQ:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;
      break;

      // 2.3.I.5. CONTRAST/BRIGHTNESS Level Inquiry (0xB1)
   case TCM_CON_BRI_LEVEL_INQ:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;
      break;

      // 2.3.I.6. AGC Limit Level Inquiry (0xB2)
   case TCM_AGC_LIMIT_LEVEL_INQ:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;
      break;

      // 2.3.I.7. AGC Center Position Inquiry (0xB3)
   case TCM_AGC_CENTER_POSITION_INQ:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;
      break;

      // 2.3.I.8. MIDE Level Inquiry (0xB4)
   case TCM_MIDE_LEVEL_INQ:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;
      break;

      // 2.3.I.9. SHARPNESS Level Inquiry (0xB5)
   case TCM_SHARPNESS_LEVEL_INQ:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;
      break;

      // 2.3.I.10. Color Mode Inquiry (0xB6)
   case TCM_COLOR_MODE_INQ:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;
      break;

      // 2.3.I.11. Mirror Mode Inquiry (0xB7)
   case TCM_MIRROR_MODE_INQ:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;
      break;

      // 2.3.I.12. Flip Mode Inquiry (0xB8)
   case TCM_FLIP_MODE_INQ:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;
      break;

      // 2.3.I.13. Image Freeze Inquiry (0xB9)
   case TCM_IMAGE_FREEZE_INQ:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;
      break;

      // 2.3.I.14. Image Color Inverse (White/Black Hot) Inquiry (0xBA)
   case TCM_IMAGE_COLOR_INVERSE_INQ:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;
      break;

      // 2.3.I.15. Digital Zoom Set Inquiry (0xBB)
   case TCM_DIGITAL_ZOOM_SET_INQ:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;
      break;

      // 2.3.I.16. Video Mode Inquiry (0xBC)
   case TCM_VIDEO_MODE_INQ:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;
      break;

      // 2.3.I.17. Calibration Option Inquiry (0xBD)
   case TCM_CALIBRATION_OPTION_INQ:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;
      break;

      // 2.3.I.18. External Communication Option Inquiry (0xBE)
   case TCM_EXTERNAL_COMMUNICATION_INQ:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;
      break;

      // 2.3.I.19. Focus Position Inquiry (0xBF)
   case TCM_FOCUS_POSITION_INQ:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;
      break;


      // 2.3.I.20. Integral Time Inquiry (0xC0)
   case TCM_INTEGRAL_TIME_INQ:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;
      break;

      // 2.3.I.21. AF ROI (Region of Interest) Inquiry (0xC1)
   case TCM_AF_ROI_INQ:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;
      break;

      // 2.3.I.22. AGC Type Inquiry (GAIN, OFFSET) (0xC2)
   case TCM_AGC_TYPE_INQ:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;
      break;

      // 2.3.I.23. AGC Smooth Inquiry (0xC3)
   case TCM_AGC_SMOOTH_INQ:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;
      break;

      // 2.3.I.24. Optical Zoom & Focus Position Inquiry (0xC4)
   case TCM_OPTICAL_ZOOM_FOCUS_POS_INQ:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;
      break;

      // 2.3.I.25. Zoom & Focus Speed Inquiry (0xC5)
   case TCM_ZOOM_FOCUS_SPEED_INQ:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;
      break;

      // 2.3.I.26. AF Mark Inquiry (0xC6)
   case TCM_AF_MARK_INQ:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;
      break;

      // 2.3.I.27. Shutter Set Inquiry (0xC7)
   case TCM_SHUTTER_SET_INQ:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;
      break;

      // 2.3.I.28. AF Mode Inquiry (0xC8)
   case TCM_AF_MODE_INQ:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;
      break;

      // 2.3.I.29. AGC ROI Inquiry (0xC9)
   case TCM_AGC_ROI_INQ:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;
      break;

      // 2.3.I.30. Cooler Runtime Inquiry (0xCA)
   case TCM_COOLER_RUNTIME_INQ:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;
      break;

      // 2.3.I.31. ZOOM POS Inquiry (0xCB)
   case TCM_ZOOM_POS_INQ:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;
      break;

      // 2.3.I.32. Power Cycle Inquiry (0xCE)
   case TCM_POWER_CYCLE_INQ:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;
      break;

      // 2.3.I.33. Get Temperature (0xD0)
   case TCM_GET_TEMPERATURE_INQ:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;
      break;

      // 2.3.I.34. Shutter Use Calibration (0xD1)
   case TCM_CALIBRATION_METHOD_INQ:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;
      break;

      // 2.3.I.35. LENS Information Inquiry (0xD2)
   case TCM_LENS_INFORMATION_INQ:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;
      break;

      // 2.3.I.36.  Total Zoom Position Inquiry (0xD5)
   case TCM_TOTAL_ZOOM_POSITION_INQ:
      stUART4.TX_READY = 0x01;
      stUART4.RX_REQUEST_CMD = TCM_TOTAL_ZOOM_POSITION_INQ;
      break;

      // 2.3.I.37. MY ID Inquiry (0xF0)
   case TCM_MY_ID_INQ:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;
      break;

      // 2.3.I.38. Get F/W Update (0xFA)
   case TCM_GET_FW_UPDATE_INQ:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;
      break;

      // 2.3.I.38. Get FPGA Version (0xF8)
   case TCM_GET_FPGA_VERSION:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;
      break;

      // Get ENGINE Version (0xF9)
   case TCM_GET_ENGINE_VERSION:
      stUART4.TX_READY = 0x01;
      stUART4.TX_REQUEST = 0x01;
      break;

   default:
      stUART4.TX_READY = 0x01;
      break;
   }

   stUART4.TX_CMD = u_Cmd;
   stUART4.TX_PARAMETER1 = u_Data1;
   stUART4.TX_PARAMETER2 = u_Data2;
   stUART4.TX_PARAMETER3 = u_Data3;
   stUART4.TX_PARAMETER4 = u_Data4;
   stUART4.TX_PARAMETER5 = u_Data5;
   stUART4.TX_PARAMETER6 = u_Data6;
   stUART4.TX_PARAMETER7 = u_Data7;
   stUART4.TX_PARAMETER8 = u_Data8;
   stUART4.TX_PARAMETER9 = u_Data9;

   // Send TSM Command & Data Trans
   if (stUART4.TX_READY)
   {
      switch (u_Length)
      {
      case 0x06:
         Send_TCM_Data(u_Cmd, u_Data1, u_Data2, u_Data3, u_Data4, u_Data5, u_Data6, u_Data7, u_Data8, u_Data9, 0x06, TCM_COMMAND_TIMER_DELAY);
         break;

      case 0x08:
         Send_TCM_Data(u_Cmd, u_Data1, u_Data2, u_Data3, u_Data4, u_Data5, u_Data6, u_Data7, u_Data8, u_Data9, 0x08, TCM_COMMAND_TIMER_DELAY);
         break;

      case 0x0C:
         Send_TCM_Data(u_Cmd, u_Data1, u_Data2, u_Data3, u_Data4, u_Data5, u_Data6, u_Data7, u_Data8, u_Data9, 0x0C, TCM_COMMAND_TIMER_DELAY);
         break;
      }

      if (stTSM.ZOOM_CHECK_FLAG == 0x01)
      {
         stTSM.ZOOM_CHECK_FLAG = 0x00;
         stUART4.RX_REQUEST_CMD = TCM_TOTAL_ZOOM_POSITION_INQ;
         Send_TCM_Data(TCM_TOTAL_ZOOM_POSITION_INQ, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, TCM_COMMAND_TIMER_DELAY);
      }

      if (stTSM.FOCUS_CHECK_FLAG == 0x01)
      {
         stTSM.FOCUS_CHECK_FLAG = 0x00;
         stUART4.RX_REQUEST_CMD = TCM_FOCUS_POSITION_INQ;
         Send_TCM_Data(TCM_FOCUS_POSITION_INQ, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, TCM_COMMAND_TIMER_DELAY);
      }

      if (!stUART4.TX_REQUEST)
         stUART4.TX_ACK = 0x01;

      stUART4.TX_READY = 0;

      //Send_Data_Clear(u_Leng);
   }

   // Send Ack Trans
   if (stUART4.TX_ACK)
   {
      //Send_UART4_Ack(0xB0, 0x03, 0x01, u_Comm, u_Response_Data, 5);

      stUART4.TX_ACK = 0;
   }
}

/***************************************************************************************************************************
* Function : PTZ_Data_Handing
* Protocol Version : 0.1 (2016.04.11)
* Data Architecture :
BYTE1[0]		BYTE2[1]		BYTE3[2]		BYTE4[3]		BYTE5[4]		BYTE5[5]		BYTE[..]		BYTE(n)[LENGTH+4]	BYTE(n+1)[LENGTH+4]
0xC0		0x0C		LENGTH		ADDR		COMM		DATA		...			CS					0xCF
****************************************************************************************************************************/
void PTZ_Data_Handing(u8 u_Comm, u8 u_Leng)
{
   u8 i = 0, i_Max = u_Leng + 5;

   switch (u_Comm)
   {
      // 3.10. Set Preset & Temperature Option (0x10)
   case PTZ_SET_PRESET_TEMPERATURE_OPTION:

      stUSART1.TX_READY = 0x01;

      break;

      // 3.11. Set Preset Index & Name (0x11)
   case PTZ_SET_PRESET_AND_INDEX_NAME:

      stUSART1.TX_READY = 0x01;

      break;

      // 3.F1. PTZ Remote Reset (0xF1)
   case PTZ_REMOTE_RESET:

      stUSART1.TX_READY = 0x01;

      break;
   }


   // Send USART1 Command & Data Trans
   if (stUSART1.TX_READY)
   {
      for (i = 0; i < i_Max; i++)
      {
         stUSART1.TX_BUF[i] = stUART5.RX_BUF[i];
      }

      stUSART1.TX_CNT = 0;
      stUSART1.TX_MAX = i_Max;

      USART_SendData(USART1, stUSART1.TX_BUF[stUSART1.TX_CNT++]);
      Delay_1ms(MAIN_COMMAND_TIMER_DELAY);

      stUSART1.TX_READY = 0x00;

   }
}

/***************************************************************************************************************************
* Function : DATA_Request_Handing
* Protocol Version : 0.1 (2016.04.11)
* Data Architecture :
BYTE1[0]		BYTE2[1]		BYTE3[2]		BYTE4[3]		BYTE5[4]		BYTE5[5]		BYTE[..]		BYTE(n)[LENGTH+4]	BYTE(n+1)[LENGTH+4]
0xD0		0x0D		LENGTH		ADDR		COMM		DATA		...			CS					0xDF
****************************************************************************************************************************/
void DATA_Request_Handing(u8 u_Comm, u8 u_Leng)
{}

/***************************************************************************************************************************
* Function : OPTION_Data_Handing
* Protocol Version : 0.1 (2016.04.11)
* Data Architecture :
BYTE1[0]		BYTE2[1]		BYTE3[2]		BYTE4[3]		BYTE5[4]		BYTE5[5]		BYTE[..]		BYTE(n)[LENGTH+4]	BYTE(n+1)[LENGTH+4]
0xE0		0x0E		LENGTH		ADDR		COMM		DATA		...			CS					0xEF
****************************************************************************************************************************/
void OPTION_Data_Handing(u8 u_Port, u8 u_Comm, u8 u_Leng)
{
   u8 i = 0, i_Max = u_Leng + 5;

   u8 u_Cmd = 0x00;	// Camera Command
   u8 u_Data1 = 0x00, u_Data2 = 0x00, u_Data3 = 0x00, u_Data4 = 0x00, u_Data5 = 0x00;
   u8 u_Response_Data = 0x00;

   u8 u8_Convert_Data[10];
   u16 u16_Convert_Data = 0x0000;

   switch (u_Port)
   {
   case SYSTEM_INDEX:

      u_Cmd = stSYS.RX_BUF[0][5];
      u_Data1 = stSYS.RX_BUF[0][6];
      u_Data2 = stSYS.RX_BUF[0][7];
      u_Data3 = stSYS.RX_BUF[0][8];

      break;

   case USART1_INDEX:

      u_Cmd = stUSART1.RX_BUF[4];
      u_Data1 = stUSART1.RX_BUF[5];
      u_Data2 = stUSART1.RX_BUF[6];
      u_Data3 = stUSART1.RX_BUF[7];

      break;

   case USART5_INDEX:

      u_Cmd = stUART5.RX_BUF[4];
      u_Data1 = stUART5.RX_BUF[5];
      u_Data2 = stUART5.RX_BUF[6];
      u_Data3 = stUART5.RX_BUF[7];
      u_Data4 = stUART5.RX_BUF[8];
      u_Data5 = stUART5.RX_BUF[9];

      break;

   default:
      break;
   }

   switch (u_Comm)
   {
   case OPTION_SET_ETHERNET_INIT:

      stUSART1.TX_READY = 0x01;

      break;

   case OPTION_SET_WIPER:

      switch (stDIP.MODE2)
      {
      case 0x00:

         if ((u_Data2 == 0x00) || (u_Data2 > 0x0F))
            break;

         stWIPER2.OPTION = u_Data1;
         stWIPER2.COUNT = u_Data2;
         stWIPER2.DWELL_TIME = u_Data3;

         AT24C256C_EEPROM_Write(EEP_SET_WIPER_OPTION, stWIPER2.OPTION);
         AT24C256C_EEPROM_Write(EEP_SET_WIPER_COUNT, stWIPER2.COUNT);
         AT24C256C_EEPROM_Write(EEP_SET_WIPER_DWELL_TIME, stWIPER2.DWELL_TIME);

         break;

      case 0x01:

         if ((u_Data2 == 0x00) || (u_Data2 > 0x0F))
            break;

         stWIPER2.OPTION = u_Data1;
         stWIPER2.COUNT = u_Data2;
         stWIPER2.DWELL_TIME = u_Data3;

         AT24C256C_EEPROM_Write(EEP_SET_WIPER_OPTION, u_Data1);
         AT24C256C_EEPROM_Write(EEP_SET_WIPER_COUNT, u_Data2);
         AT24C256C_EEPROM_Write(EEP_SET_WIPER_DWELL_TIME, u_Data3);

         break;

      default:
         break;
      }



      break;

   case OPTION_STOP_WIPER:

      switch (stDIP.MODE2)
      {
      case 0x00:

         switch (u_Data1)
         {
         case 0x00:
            stWIPER2.STOP_MODE = WIPER_STOP_ORIGIN;
            break;

         case 0x01:
            stWIPER2.STOP_MODE = WIPER_STOP_EMERGENCY;
            break;
         }

         if (stWIPER2.DWELL_TIMER_FLAG)
            stWIPER2.DWELL_TIMER_FLAG = 0x00;
         if (stWIPER2.CONTINUOUS_FLAG == 0x01)
         {
            stWIPER2.CONTINUOUS_FLAG = 0x00;
         }

         break;

      case 0x01:

         stWIPER1.ACTIVE_COUNT = 0;
         stWIPER1.DWELL_TIME = 0;

         break;

      default:
         break;
      }

      break;

   case OPTION_RUN_WIPER:

      switch (stDIP.MODE2)
      {
      case 0x00:

         stWIPER2.OPTION = u_Data1;

         stWIPER2.COUNT = AT24C256C_EEPROM_Read(EEP_SET_WIPER_COUNT);
         stWIPER2.DWELL_TIME = AT24C256C_EEPROM_Read(EEP_SET_WIPER_DWELL_TIME);
         stWIPER2.SPRITE_TIME = AT24C256C_EEPROM_Read(EEP_SET_WASHER_SPRITE_TIME);
         stWIPER2.CONTINUOUS_TIME = AT24C256C_EEPROM_Read(EEP_SET_WIPER_CONTINUOUS_TIME);

         switch (stWIPER2.OPTION)
         {
         case WIPER_NORMAL_MODE:

            stWIPER2.COUNT = AT24C256C_EEPROM_Read(EEP_SET_WIPER_COUNT);
            if (stWIPER2.COUNT >= 0x0F)
               break;

            stWIPER2.DWELL_TIME = AT24C256C_EEPROM_Read(EEP_SET_WIPER_DWELL_TIME);

            stWIPER2.DWELL_TIME_DATA = stWIPER2.DWELL_TIME;
            stWIPER2.FLAG = 0x01;

            stWIPER2.STOP_MODE = WIPER_STOP_READY;
            stWIPER2.STEP = WIPER_READY;

            break;

         case WIPER_SPRITE_MODE:
            break;

         case WIPER_CONTINUOUS_MODE:

            stWIPER2.COUNT = AT24C256C_EEPROM_Read(EEP_SET_WIPER_COUNT);
            if (stWIPER2.COUNT < 0x0F)
               break;

            stWIPER2.DWELL_TIME = AT24C256C_EEPROM_Read(EEP_SET_WIPER_DWELL_TIME);

            stWIPER2.DWELL_TIME_DATA = stWIPER2.DWELL_TIME;
            stWIPER2.FLAG = 0x01;

            stWIPER2.STOP_MODE = WIPER_STOP_READY;
            stWIPER2.STEP = WIPER_READY;

            if (stWIPER2.COUNT >= 0x0F)
            {
               stWIPER2.CONTINUOUS_FLAG = 0x01;
               stWIPER2.CONTINUOUS_ms = 0;
               stWIPER2.CONTINUOUS_s = 0;
            }

            break;

         default:
            break;
         }

         break;

      case 0x01:

         stWIPER1.ACTIVE_COUNT = AT24C256C_EEPROM_Read(EEP_SET_WIPER_COUNT);
         stWIPER1.DWELL_TIME = AT24C256C_EEPROM_Read(EEP_SET_WIPER_DWELL_TIME);

         break;

      default:
         break;
      }



      break;

      // 5.22. Set Wiper Option (0x22)
   case OPTION_SET_WIPER_OPTION:

      if ((u_Data2 == 0x00) || (u_Data2 > 0x0F))
         break;

      stWIPER2.OPTION = u_Data1;
      stWIPER2.COUNT = u_Data2;
      stWIPER2.DWELL_TIME = u_Data3;
      stWIPER2.SPRITE_TIME = u_Data4;
      stWIPER2.CONTINUOUS_TIME = u_Data5;

      AT24C256C_EEPROM_Write(EEP_SET_WIPER_OPTION, stWIPER2.OPTION);
      AT24C256C_EEPROM_Write(EEP_SET_WIPER_COUNT, stWIPER2.COUNT);
      AT24C256C_EEPROM_Write(EEP_SET_WIPER_DWELL_TIME, stWIPER2.DWELL_TIME);
      AT24C256C_EEPROM_Write(EEP_SET_WASHER_SPRITE_TIME, stWIPER2.SPRITE_TIME);

      if (stWIPER2.CONTINUOUS_TIME != 0xFF)
      {
         AT24C256C_EEPROM_Write(EEP_SET_WIPER_CONTINUOUS_TIME, stWIPER2.CONTINUOUS_TIME);
      }

      break;

   default:
      break;
   }

   // Send USART1 Command & Data Trans
   if (stUSART1.TX_READY)
   {
      for (i = 0; i < i_Max; i++)
      {
         stUSART1.TX_BUF[i] = stUART5.RX_BUF[i];
      }

      stUSART1.TX_CNT = 0;
      stUSART1.TX_MAX = i_Max;

      USART_SendData(USART1, stUSART1.TX_BUF[stUSART1.TX_CNT++]);
      Delay_1ms(MAIN_COMMAND_TIMER_DELAY);

      stUSART1.TX_READY = 0x00;

   }
}

/****************************************************************************************************
* Define : PELCO_Data_Handing
* Protocol Version : 0.1 (2016.04.11)
* Data Architecture :
BYTE1[0]		BYTE2[1]		BYTE3[2]		BYTE4[3]		BYTE5[4]		BYTE5[5]		BYTE5[6]
0xFF			ADDR		COMM1		COMM2		DATA1		DATA2		CS		
*****************************************************************************************************/
void PELCO_Data_Handing(u8 u_Comm_High, u8 u_Comm_Low, u8 u_Data_High, u8 u_Data_Low)
{
   u8 u_Cmd = 0x00, u_Data1 = 0x00, u_Data2 = 0x00, u_Data3 = 0x00;
   u8 u_MCmd = 0x00, u_MData1 = 0x00, u_MData2 = 0x00, u_MData3 = 0x00;
   u16 u_Pelco_Comm = 0x0000;

   u_Pelco_Comm = (u_Comm_High << 8) | u_Comm_Low;
   u_Data1 = u_Data_High;
   u_Data2 = u_Data_Low;

   switch (u_Pelco_Comm)
   {
      // Move Stop Command
   case PELCO_MOVE_STOP:

      stUSART1.TX_READY = 0x01;

      switch (stINFO.MODULE_TYPE)
      {
      case SONY_MODULE:

         if (stSONY.ZOOM_STATUS == ACTIVE)
         {
            u_MCmd = SONY_MANUAL_ZOOM;

            stSONY.ZOOM_STATUS = STOP;
            stSONY.ZOOM_CHECK_FLAG = 0x01;
         }

         if (stSONY.FOCUS_STATUS == ACTIVE)
         {
            u_MCmd = SONY_MANUAL_FOCUS;

            stSONY.FOCUS_STATUS = STOP;
            stSONY.FOCUS_CHECK_FLAG = 0x01;
         }


         break;

      case TSM_MODULE:

         if (stTSM.ZOOM_STATUS == ACTIVE)
         {
            u_MCmd = TCM_TOTAL_ZOOM_STOP_SUB;

            stTSM.ZOOM_STATUS = STOP;
            stTSM.ZOOM_CHECK_FLAG = 0x01;
         }

         if (stTSM.FOCUS_STATUS == ACTIVE)
         {
            u_MCmd = TCM_FOCUS_STOP_SUB;

            stTSM.FOCUS_STATUS = STOP;
            stTSM.FOCUS_CHECK_FLAG = 0x01;
         }

         break;

      default:
         break;

      }

      stUART4.TX_READY = 0x01;

      break;

      // Move Right Command
   case PELCO_MOVE_RIGHT:
      stUSART1.TX_READY = 0x01;
      break;

      // Move Left Command
   case PELCO_MOVE_LEFT:
      stUSART1.TX_READY = 0x01;
      break;

      // Move Up Command
   case PELCO_MOVE_UP:
      stUSART1.TX_READY = 0x01;
      break;

      // Move Down Command
   case PELCO_MOVE_DOWN:
      stUSART1.TX_READY = 0x01;
      break;

      // Move Right-Up Command
   case PELCO_MOVE_RIGHT_UP:
      stUSART1.TX_READY = 0x01;
      break;

      // Move Left-Up Command
   case PELCO_MOVE_LEFT_UP:
      stUSART1.TX_READY = 0x01;
      break;

      // Move Right-Down Command
   case PELCO_MOVE_RIGHT_DOWN:
      stUSART1.TX_READY = 0x01;
      break;

      // Move Left-Down Command
   case PELCO_MOVE_LEFT_DOWN:
      stUSART1.TX_READY = 0x01;
      break;

      // Zoom-Tele Command
   case PELCO_ZOOM_TELE:

      switch (stINFO.MODULE_TYPE)
      {
      case SONY_MODULE:

         u_MCmd = SONY_MANUAL_ZOOM;
         u_MData1 = 0x27;

         stSONY.ZOOM_STATUS = ACTIVE;

         break;

      case TSM_MODULE:

         u_MCmd = TCM_TOTAL_ZOOM_START;
         u_MData1 = 0x00;
         u_MData2 = 0x09;

         stTSM.ZOOM_STATUS = ACTIVE;

         break;

      default:
         break;
      }

      stUART4.TX_READY = 0x01;

      break;

      // Zoom-Wide Command
   case PELCO_ZOOM_WIDE:

      switch (stINFO.MODULE_TYPE)
      {
      case SONY_MODULE:

         u_MCmd = SONY_MANUAL_ZOOM;
         u_MData1 = 0x37;

         stSONY.ZOOM_STATUS = ACTIVE;

         break;

      case TSM_MODULE:

         u_MCmd = TCM_TOTAL_ZOOM_START;
         u_MData1 = 0x01;
         u_MData2 = 0x09;

         stTSM.ZOOM_STATUS = ACTIVE;

         break;

      default:
         break;
      }

      stUART4.TX_READY = 0x01;

      break;

      // Focus-Far Command
   case PELCO_FOCUS_FAR:

      switch (stINFO.MODULE_TYPE)
      {
      case SONY_MODULE:

         u_MCmd = SONY_MANUAL_FOCUS;
         u_MData1 = 0x24;

         stSONY.FOCUS_STATUS = ACTIVE;

         break;

      case TSM_MODULE:

         u_MCmd = TSM_FOCUS_START;
         u_MData1 = 0x00;
         u_MData2 = 0x03;

         stTSM.FOCUS_STATUS = ACTIVE;

         break;

      default:
         break;
      }

      stUART4.TX_READY = 0x01;

      break;

      // Focus-Near Command
   case PELCO_FOCUS_NEAR:

      switch (stINFO.MODULE_TYPE)
      {
      case SONY_MODULE:

         u_MCmd = SONY_MANUAL_FOCUS;
         u_MData1 = 0x34;

         stSONY.FOCUS_STATUS = ACTIVE;

         break;

      case TSM_MODULE:

         u_MCmd = TSM_FOCUS_START;
         u_MData1 = 0x01;
         u_MData2 = 0x03;

         stTSM.FOCUS_STATUS = ACTIVE;

         break;

      default:
         break;
      }

      stUART4.TX_READY = 0x01;

      break;

      // 5.2. Set Preset (0x03)
   case PELCO_SET_PRESET:
      stUSART1.TX_READY = 0x01;
      break;

      // 5.3. Clear Preset (0x05)
   case PELCO_CLEAR_PRESET:
      stUSART1.TX_READY = 0x01;
      break;

      // 5.4. Call Preset (0x07)
   case PELCO_CALL_PRESET:
      stUSART1.TX_READY = 0x01;
      break;

      // 5.5. Set Zone(Scan) Start (0x11)
   case PELCO_SET_ZONE_START:
      stUSART1.TX_READY = 0x01;
      break;

      // 5.6. Set Zone(Scan) End (0x13)
   case PELCO_SET_ZONE_END:
      stUSART1.TX_READY = 0x01;
      break;

      // 5.7. Zone(Scan) On (0x1B)
   case PELCO_ZONE_ON:
      stUSART1.TX_READY = 0x01;
      break;

      // 5.8. Zone(Scan) Off (0x1D)
   case PELCO_ZONE_OFF:
      stUSART1.TX_READY = 0x01;
      break;

      // 5.12. Set Zero Position (0x49)
   case PELCO_SET_ZERO:
      stUSART1.TX_READY = 0x01;
      break;
   }

   // Send TSM Command & Data Trans
   if (stUART4.TX_READY)
   {
      stUART4.TX_CMD = u_MCmd;
      stUART4.TX_PARAMETER1 = u_MData1;
      stUART4.TX_PARAMETER2 = u_MData2;
      stUART4.TX_PARAMETER3 = u_MData3;

      switch (stINFO.MODULE_TYPE)
      {
      case SONY_MODULE:

         Send_Sony_Data(u_MCmd, u_MData1, u_MData2, 0x06, SONY_COMMAND_TIMER_DELAY);

         if (stSONY.ZOOM_CHECK_FLAG == 0x01)
         {
            stSONY.ZOOM_CHECK_FLAG = 0x00;
            stUART4.RX_REQUEST_CMD = SONY_CALL_ZOOM_POSITION;
            Send_Sony_Data(SONY_CALL_ZOOM_POSITION, 0x00, 0x00, 0x05, SONY_COMMAND_TIMER_DELAY);
         }

         if (stSONY.FOCUS_CHECK_FLAG == 0x01)
         {
            stSONY.FOCUS_CHECK_FLAG = 0x00;
            stUART4.RX_REQUEST_CMD = SONY_CALL_FOCUS_POSITION;
            Send_Sony_Data(SONY_CALL_FOCUS_POSITION, 0x00, 0x00, 0x05, SONY_COMMAND_TIMER_DELAY);
         }

         break;

      case TSM_MODULE:

         Send_TSM_Data(u_MCmd, u_MData1, u_MData2, u_MData3, 0x06, TSM_COMMAND_TIMER_DELAY);

         if (stTSM.ZOOM_CHECK_FLAG == 0x01)
         {
            stTSM.ZOOM_CHECK_FLAG = 0x00;
            stUART4.RX_REQUEST_CMD = TSM_CALL_TOTAL_ZOOM_POSITION;
            Send_TSM_Data(TSM_CALL_TOTAL_ZOOM_POSITION, 0x00, 0x00, 0x00, 0x06, TSM_COMMAND_TIMER_DELAY);
         }

         if (stTSM.FOCUS_CHECK_FLAG == 0x01)
         {
            stTSM.FOCUS_CHECK_FLAG = 0x00;
            stUART4.RX_REQUEST_CMD = TSM_CALL_FOCUS_POSITION;
            Send_TSM_Data(TSM_CALL_FOCUS_POSITION, 0x00, 0x00, 0x00, 0x06, TSM_COMMAND_TIMER_DELAY);
         }

         break;

      default:
         stUSART1.TX_READY = 0x01;
         break;
      }

      stUART4.TX_READY = 0;

      //Send_Data_Clear(u_Leng);
   }

   // Send USART1 Command & Data Trans
   if (stUSART1.TX_READY)
   {
      stUSART1.TX_CMD = u_Cmd;
      stUSART1.TX_PARAMETER1 = u_Data1;
      stUSART1.TX_PARAMETER2 = u_Data2;

      Send_Pelco_Data(u_Comm_High, u_Comm_Low, u_Data1, u_Data2, 0x07, MAIN_COMMAND_TIMER_DELAY);

      if (!stUSART1.TX_REQUEST)
         stUSART1.TX_ACK = 0x01;

      stUSART1.TX_READY = 0x00;

      //Send_Data_Clear(u_Leng);
   }

}

/*******************************************************************************
* Function Name  : OSD_Layer_Select
*******************************************************************************/
void OSD_Layer_Select(u8 u_Num)
{
   switch (u_Num)
   {
   case MDIN_LAYER_INFORMATION:

      // ALL OFF
      MDIN_Sprite_Initialization(MDIN_LAYER_COORDINATE, bOFF);
      MDIN_Sprite_Initialization(MDIN_LAYER_CENTER_MSG, bOFF);
      MDIN_Sprite_Initialization(MDIN_LAYER_TARGET, bOFF);

      // INFORMATION ON
      MDIN_Sprite_Initialization(MDIN_LAYER_INFORMATION, bON);

      break;

   case MDIN_LAYER_TARGET:

      // ALL OFF
      MDIN_Sprite_Initialization(MDIN_LAYER_COORDINATE, bOFF);
      MDIN_Sprite_Initialization(MDIN_LAYER_CENTER_MSG, bOFF);
      MDIN_Sprite_Initialization(MDIN_LAYER_INFORMATION, bOFF);

      // CENTER ON
      MDIN_Sprite_Initialization(MDIN_LAYER_TARGET, bON);

      break;

   case MDIN_LAYER_CENTER_MSG:

      // ALL OFF
      MDIN_Sprite_Initialization(MDIN_LAYER_INFORMATION, bOFF);
      MDIN_Sprite_Initialization(MDIN_LAYER_COORDINATE, bOFF);
      MDIN_Sprite_Initialization(MDIN_LAYER_TARGET, bOFF);

      // CENTER ON
      MDIN_Sprite_Initialization(MDIN_LAYER_CENTER_MSG, bON);

      break;

   case MDIN_LAYER_COORDINATE:
   default:

      // ALL OFF
      MDIN_Sprite_Initialization(MDIN_LAYER_INFORMATION, bOFF);
      MDIN_Sprite_Initialization(MDIN_LAYER_CENTER_MSG, bOFF);
      MDIN_Sprite_Initialization(MDIN_LAYER_TARGET, bOFF);

      // COORDINATE ON
      MDIN_Sprite_Initialization(MDIN_LAYER_COORDINATE, bON);

      break;
   }
}

/*******************************************************************************
* Function Name  : UART5_Data_Parser
*******************************************************************************/
void UART5_Data_Parser(void)
{
   u8 u_buf[10];

   u_buf[0] = stUART5.RX_BUF[0];	// stUART5.RX_BUF[0] : Protocol Check
   u_buf[2] = stUART5.RX_BUF[2];	// stUART5.RX_BUF[2] : Length Check (when, TBT Protocol), Command High Byte Check (when, PELCO Protocol)
   u_buf[3] = stUART5.RX_BUF[3];	// stUART5.RX_BUF[3] : Command Low Byte Check (when, PELCO Protocol)
   u_buf[4] = stUART5.RX_BUF[4];	// stUART5.RX_BUF[4] : Command Check (when, TBT Protocol), Data High Byte Check (when, PELCO Protocol)
   u_buf[5] = stUART5.RX_BUF[5];	// stUART5.RX_BUF[5] : Data Low Byte Check (when, PELCO Protocol)

   /*******************************************************************************
   * Status : 정상 데이터 처리
   *******************************************************************************/ 
   // 첫번째 바이트 체크 (Sync Byte Check)
   switch (u_buf[0])
   {
   case IP_SONY_FIRST_BYTE:

      // 정상 동작
      Sony_Data_Handing(USART5_INDEX, u_buf[4], u_buf[2]);	// Command Check, Length Check

      break;

   case IP_TSM_FIRST_BYTE:

      // 정상 동작
      switch (stINFO.THERMAL_MODEL)
      {
      case TSM_72:
      case TSM_72T:
      case TSM_1M:
      case TSM_1MT:
         TSM_Data_Handing(USART5_INDEX, u_buf[4], u_buf[2]);		// Command Check, Length Check
         break;

      case TCM_640:
         TCM_Data_Handing(USART5_INDEX, u_buf[4], u_buf[2]);		// Command Check, Length Check
         break;
      }

      break;

   case IP_TCM_FIRST_BYTE:

      // 정상 동작
      //TCM_Data_Handing(u_buf[4], u_buf[2]);	// Command Check, Length Check

      break;

   case IP_PTZ_FIRST_BYTE:

      // 정상 동작
      PTZ_Data_Handing(u_buf[4], u_buf[2]);		// Command Check, Length Check

      break;

   case IP_DATA_FIRST_BYTE:

      // 정상 동작
      DATA_Request_Handing(u_buf[4], u_buf[2]);	// Command Check, Length Check
      break;

   case IP_OPTION_FIRST_BYTE:

      // 정상 동작
      OPTION_Data_Handing(USART5_INDEX, u_buf[4], u_buf[2]);	// Command Check, Length Check
      break;

   case IP_PELCO_CHK_BYTE:

      // 정상 동작
      PELCO_Data_Handing(u_buf[2], u_buf[3], u_buf[4], u_buf[5]);	// Command Check, Data Check

      break;

   default:
      break;
   }
}

u8 g_Po_Data[30];

/*******************************************************************************
* Function Name  : System_Data_Parser
*******************************************************************************/
void System_Data_Parser(void)
{
   u8 i = 0, i_Max = 0x00;
   u8 u_Sync_Byte = 0x00;
   u8 u_Cmd = 0x00, u_Leng = 0x00;
   u8 u_ID = 0x00, u_Position_x = 0x00, u_Position_y = 0x00;
   u8 u_Rx_Data[50];

   u8 u_PT_PAN_SIGN = 0x00, u_PT_TILT_SIGN = 0x00;
   u16 u_PT_PAN_INT = 0x0000, u_PT_PAN_DECIMAL = 0x0000;
   u16 u_PT_TILT_INT = 0x0000, u_PT_TILT_DECIMAL = 0x0000;

   u8 u8_Convert_Data = 0x00;
   u16 u16_Convert_Data = 0x0000;

   u_Sync_Byte = stSYS.RX_BUF[0][1];

   u_Cmd = stSYS.RX_BUF[0][5];
   u_Leng = stSYS.RX_BUF[0][3];
   i_Max = u_Leng + 5;

   for (i = 6; i < i_Max; i++)
   {
      u_Rx_Data[i - 6] = stSYS.RX_BUF[0][i];
      g_Po_Data[i - 6] = u_Rx_Data[i - 6];
   }

   switch (u_Sync_Byte)
   {
   case TILT_FIRST_BYTE:

      switch (u_Cmd)
      {
      case MDIN_OSD_CLEAR:

         if (stOSD.LAYER_NUM != stSYS.RX_BUF[0][6])
         {
            stOSD.LAYER_NUM = stSYS.RX_BUF[0][6];

            OSD_Layer_Select(stOSD.LAYER_NUM);
         }

         Send_MDIN_String_Data(MDIN_SPRITE_CLEAR, u_Leng, MDIN_COMMAND_TIMER_DELAY);

         break;

      case MDIN_OSD_DATA:

         if (stOSD.LAYER_NUM != stSYS.RX_BUF[0][6])
         {
            stOSD.LAYER_NUM = stSYS.RX_BUF[0][6];

            OSD_Layer_Select(stOSD.LAYER_NUM);
         }

         Send_MDIN_String_Data(MDIN_SPRITE_STRING, u_Leng, MDIN_COMMAND_TIMER_DELAY);

         break;

      case MDIN_COORDINATE_DATA:

         if (stOSD.LAYER_NUM != MDIN_LAYER_COORDINATE)
         {
            stOSD.LAYER_NUM = MDIN_LAYER_COORDINATE;

            OSD_Layer_Select(stOSD.LAYER_NUM);
         }

         u_PT_PAN_INT = (u_Rx_Data[1] << 4);
         u_PT_PAN_INT |= (u_Rx_Data[2]);

         u_PT_PAN_DECIMAL = (u_Rx_Data[3] << 4);
         u_PT_PAN_DECIMAL |= (u_Rx_Data[4]);

         switch (u_Rx_Data[5])
         {
         case 0x00:
            u_PT_TILT_SIGN = 0x00;	// NULL
            break;

         case 0x01:
            u_PT_TILT_SIGN = 0x2D;	// -
            break;

         default:
            break;
         }

         u_PT_TILT_INT = (u_Rx_Data[6] << 4);
         u_PT_TILT_INT |= (u_Rx_Data[7]);
         u_PT_TILT_DECIMAL = (u_Rx_Data[8] << 4);
         u_PT_TILT_DECIMAL |= (u_Rx_Data[9]);

         /*
         u_ID = MDIN_LAYER_CENTER_MSG;				// ID
         u_Rx_Data[0] = 0x00;		// ON
         u_Rx_Data[1] = 0x00;		// RESERVED

         Send_MDIN_Data(MDIN_FREEZE, 0x03, u_ID, u_Rx_Data[0], u_Rx_Data[1], u_Rx_Data[2], u_Rx_Data[3], u_Rx_Data[4], u_Rx_Data[5], u_Rx_Data[6], u_Rx_Data[7], u_Rx_Data[8], u_Rx_Data[9],
         				u_Rx_Data[10], u_Rx_Data[11], u_Rx_Data[12], u_Rx_Data[13], u_Rx_Data[14], u_Rx_Data[15], u_Rx_Data[16], MDIN_COMMAND_TIMER_DELAY);
         */

         u_ID = MDIN_LAYER_COORDINATE;										// ID : Main 0
         u_Position_x = 0x01;								// COLUMN : 1
         u_Position_y = 0x00;								// ROW : 0

         u_Rx_Data[0] = 0x00;								// NULL
         u_Rx_Data[1] = (u_PT_PAN_INT / 100) + 0x30;			// 1
         u_Rx_Data[2] = ((u_PT_PAN_INT % 100) / 10) + 0x30;	// 8
         u_Rx_Data[3] = (u_PT_PAN_INT % 10) + 0x30;			// 0
         u_Rx_Data[4] = 0x2E;								// .
         u8_Convert_Data = (u_PT_PAN_DECIMAL / 10) + 0x30;
         u_Rx_Data[5] = u8_Convert_Data;					// 0
         u8_Convert_Data = (u_PT_PAN_DECIMAL % 10) + 0x30;
         u_Rx_Data[6] = u8_Convert_Data;					// 0
         u_Rx_Data[7] = 0x00;								// NULL
         u_Rx_Data[8] = u_PT_TILT_SIGN;					// NULL / -
         u_Rx_Data[9] = (u_PT_TILT_INT / 100) + 0x30;		// 1
         u_Rx_Data[10] = ((u_PT_TILT_INT % 100) / 10) + 0x30;	// 8
         u_Rx_Data[11] = (u_PT_TILT_INT % 10) + 0x30;		// 0
         u_Rx_Data[12] = 0x2E;								// .
         u8_Convert_Data = (u_PT_TILT_DECIMAL / 10) + 0x30;
         u_Rx_Data[13] = u8_Convert_Data;					// 0
         u8_Convert_Data = (u_PT_TILT_DECIMAL % 10) + 0x30;
         u_Rx_Data[14] = u8_Convert_Data;					// 0

         Send_MDIN_Data(MDIN_SPRITE_STRING, 0x12, u_ID, u_Position_x, u_Position_y, u_Rx_Data[0], u_Rx_Data[1], u_Rx_Data[2], u_Rx_Data[3], u_Rx_Data[4], u_Rx_Data[5], u_Rx_Data[6], u_Rx_Data[7],
                        u_Rx_Data[8], u_Rx_Data[9], u_Rx_Data[10], u_Rx_Data[11], u_Rx_Data[12], u_Rx_Data[13], u_Rx_Data[14], MDIN_COMMAND_TIMER_DELAY);

         break;

      case MDIN_BYPASS_DATA:

         u16_Convert_Data = u_Rx_Data[0];
         u16_Convert_Data |= (u_Rx_Data[1] << 8);

         Send_MDIN_Data(u16_Convert_Data, u_Rx_Data[2], u_Rx_Data[3], u_Rx_Data[4], u_Rx_Data[5], u_Rx_Data[6], u_Rx_Data[7], u_Rx_Data[8], u_Rx_Data[9], u_Rx_Data[10], u_Rx_Data[11], u_Rx_Data[12], u_Rx_Data[13],
                        u_Rx_Data[14], u_Rx_Data[15], u_Rx_Data[16], u_Rx_Data[17], u_Rx_Data[18], u_Rx_Data[19], u_Rx_Data[20], MDIN_COMMAND_TIMER_DELAY);
         break;

      case TILT_BOOT_STATUS:

         u_Cmd = TILT_BOOT_STATUS;
         u_Leng = 0x04;
         u_ID = MDIN_LAYER_CENTER_MSG;

         stUSART1.TX_BUF[0] = TILT_FIRST_BYTE;
         stUSART1.TX_BUF[1] = TILT_SECOND_BYTE;
         stUSART1.TX_BUF[2] = u_Leng;
         stUSART1.TX_BUF[3] = u_ID;
         stUSART1.TX_BUF[4] = u_Cmd;
         stUSART1.TX_BUF[5] = ACTIVE;
         stUSART1.TX_BUF[6] = 0x00;

         stUSART1.TX_BUF[7] = 0x00;
         stUSART1.TX_BUF[7] = stUSART1.TX_BUF[3] + stUSART1.TX_BUF[4] + stUSART1.TX_BUF[5] + stUSART1.TX_BUF[6];

         stUSART1.TX_BUF[8] = 0xCF;

         stUSART1.TX_CNT = 0;
         stUSART1.TX_MAX = u_Leng + 5;

         USART_SendData(USART1, stUSART1.TX_BUF[stUSART1.TX_CNT++]);

         break;

      case TILT_RESET:

         RCC_APB1PeriphClockCmd(RCC_APB1Periph_WWDG, ENABLE);
         WWDG_SetPrescaler(WWDG_Prescaler_8);
         WWDG_SetWindowValue(80);
         WWDG_Enable(127);

         break;

      case TILT_MDIN_RESET:

         stINFO.BOOT_FLAG = 0x01;

         while (stINFO.BOOT_FLAG)
         {
            Module_Auto_Sync();

            if (stINFO.MODULE_TYPE != INDEX_NON)
               stINFO.BOOT_FLAG = 0x00;
         }

         switch (stINFO.MODULE_TYPE)
         {
         case SONY_MODULE:

            UART4_Init(9600);
            Delay_1ms(200);

            break;

         case TSM_MODULE:

            UART4_Init(38400);

            VIDEO_Initialization(PAL_MODE);
            Delay_1ms(200);
            MDIN_I550_Initialization();

            stUART4.RX_REQUEST_CMD = TSM_CALL_PRODUCT_IDENTIFICATION;
            Send_TSM_Data(TSM_CALL_PRODUCT_IDENTIFICATION, 0x00, 0x00, 0x00, 0x06, TSM_COMMAND_TIMER_DELAY);
            Delay_1ms(TSM_REQUEST_TIMER_MAX);

            stUART4.RX_REQUEST_CMD = TSM_CALL_CAMERA_INFORMATION;
            Send_TSM_Data(TSM_CALL_CAMERA_INFORMATION, 0x00, 0x00, 0x00, 0x06, TSM_COMMAND_TIMER_DELAY);
            Delay_1ms(TSM_REQUEST_TIMER_MAX);

            stUART4.RX_REQUEST_CMD = TSM_CALL_FIRMWARE_VERSION;
            Send_TSM_Data(TSM_CALL_FIRMWARE_VERSION, 0x00, 0x00, 0x00, 0x06, TSM_COMMAND_TIMER_DELAY);
            Delay_1ms(TSM_REQUEST_TIMER_MAX);

            break;

         default:

            UART4_Init(38400);

            VIDEO_Initialization(PAL_MODE);
            Delay_1ms(200);
            MDIN_I550_Initialization();
            Delay_1ms(200);

            Send_MDIN_Data(MDIN_OUTPUT_PATTERN, 0x03, 0x0D, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, MDIN_COMMAND_TIMER_DELAY);
            Send_MDIN_Data(MDIN_OUTPUT_PATTERN, 0x03, 0x0D, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, MDIN_COMMAND_TIMER_DELAY);
            Send_MDIN_Data(MDIN_OUTPUT_PATTERN, 0x03, 0x0D, 0x05, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, MDIN_COMMAND_TIMER_DELAY);

            break;

         }

         break;

      case CALL_INFORMATION:

         u_Cmd = CALL_INFORMATION;
         u_Leng = 0x0E;
         u_ID = 0x01;

         stUSART1.TX_BUF[0] = TILT_FIRST_BYTE;
         stUSART1.TX_BUF[1] = TILT_SECOND_BYTE;
         stUSART1.TX_BUF[2] = u_Leng;
         stUSART1.TX_BUF[3] = u_ID;
         stUSART1.TX_BUF[4] = u_Cmd;

         stUSART1.TX_BUF[5] = Version_High;
         stUSART1.TX_BUF[6] = Version_Low;

         stUSART1.TX_BUF[7] = Upgrade_Year_Month;
         stUSART1.TX_BUF[8] = Upgrade_Day;

         stUSART1.TX_BUF[9] = stINFO.MODULE_TYPE;

         switch (stINFO.MODULE_TYPE)
         {
         case SONY_MODULE:

            stUSART1.TX_BUF[10] = 0x00;
            stUSART1.TX_BUF[11] = 0x00;
            stUSART1.TX_BUF[12] = 0x00;
            stUSART1.TX_BUF[13] = 0x00;
            stUSART1.TX_BUF[14] = 0x00;
            stUSART1.TX_BUF[15] = 0x00;
            stUSART1.TX_BUF[16] = 0x00;

            break;

         case TSM_MODULE:

            stUSART1.TX_BUF[10] = stINFO.THERMAL_MODEL;
            stUSART1.TX_BUF[11] = stINFO.THERMAL_LENS;
            stUSART1.TX_BUF[12] = stINFO.THERMAL_VER_HIGH;
            stUSART1.TX_BUF[13] = stINFO.THERMAL_VER_LOW;
            stUSART1.TX_BUF[14] = stINFO.THERMAL_DAY;
            stUSART1.TX_BUF[15] = stINFO.THERMAL_MONTH;
            stUSART1.TX_BUF[16] = stINFO.THERMAL_YEAR;

            break;

         default:
            break;
         }

         stUSART1.TX_BUF[17] = 0x00;
         stUSART1.TX_BUF[17] = stUSART1.TX_BUF[3] + stUSART1.TX_BUF[4] + stUSART1.TX_BUF[5] + stUSART1.TX_BUF[6];

         stUSART1.TX_BUF[18] = 0xCF;

         stUSART1.TX_CNT = 0;
         stUSART1.TX_MAX = u_Leng + 5;

         USART_SendData(USART1, stUSART1.TX_BUF[stUSART1.TX_CNT++]);

         break;

      default:
         break;
      }

      break;

   case IP_SONY_FIRST_BYTE:

      Sony_Data_Handing(SYSTEM_INDEX, u_Cmd, u_Leng);		// Command Check, Length Check

      break;

   case IP_TSM_FIRST_BYTE:

      // 정상 동작
      switch (stINFO.THERMAL_MODEL)
      {
      case TSM_72:
      case TSM_72T:
      case TSM_1M:
      case TSM_1MT:
         TSM_Data_Handing(SYSTEM_INDEX, u_Cmd, u_Leng);		// Command Check, Length Check
         break;

      case TCM_640:
         TCM_Data_Handing(SYSTEM_INDEX, u_Cmd, u_Leng);		// Command Check, Length Check
         break;
      }

      break;

   case IP_OPTION_FIRST_BYTE:
      OPTION_Data_Handing(SYSTEM_INDEX, u_Cmd, u_Leng);		// Command Check, Length Check
      break;

   default:
      break;
   }
}

/*******************************************************************************
* Function Name  : USART1_Data_Parser
*******************************************************************************/
void USART1_Data_Parser(void)
{
   u8 i = 0, i_Max = 0x00;
   u8 u_Cmd = 0x00, u_Leng = 0x00;
   u8 u_ID = 0x00, u_Position_x = 0x00, u_Position_y = 0x00;
   u8 u_Rx_Data[50];

   u8 u_PT_PAN_SIGN = 0x00, u_PT_TILT_SIGN = 0x00;
   u16 u_PT_PAN_INT = 0x0000, u_PT_PAN_DECIMAL = 0x0000;
   u16 u_PT_TILT_INT = 0x0000, u_PT_TILT_DECIMAL = 0x0000;

   u8 u8_Convert_Data = 0x00;
   u16 u16_Convert_Data = 0x0000;

   u_Cmd = stUSART1.RX_BUF[4];
   u_Leng = stUSART1.RX_BUF[2];
   i_Max = u_Leng + 4;

   for (i = 5; i < i_Max; i++)
   {
      u_Rx_Data[i - 5] = stUSART1.RX_BUF[i];
   }

   switch (stUSART1.RX_BUF[0])
   {
   case TILT_FIRST_BYTE:

      switch (u_Cmd)
      {
      case MDIN_OSD_CLEAR:

         if (stOSD.LAYER_NUM != stUSART2.TX_BUF[5])
         {
            stOSD.LAYER_NUM = stUSART2.TX_BUF[5];

            OSD_Layer_Select(stOSD.LAYER_NUM);
         }

         Send_MDIN_String_Data(MDIN_SPRITE_CLEAR, u_Leng, MDIN_COMMAND_TIMER_DELAY);

         break;

      case MDIN_OSD_DATA:

         if (stOSD.LAYER_NUM != stUSART2.TX_BUF[5])
         {
            stOSD.LAYER_NUM = stUSART2.TX_BUF[5];

            OSD_Layer_Select(stOSD.LAYER_NUM);
         }

         Send_MDIN_String_Data(MDIN_SPRITE_STRING, u_Leng, MDIN_COMMAND_TIMER_DELAY);

         break;

      case MDIN_COORDINATE_DATA:

         if (stOSD.LAYER_NUM != MDIN_LAYER_COORDINATE)
         {
            stOSD.LAYER_NUM = MDIN_LAYER_COORDINATE;

            OSD_Layer_Select(stOSD.LAYER_NUM);
         }

         u_PT_PAN_INT = (u_Rx_Data[1] << 4);
         u_PT_PAN_INT |= (u_Rx_Data[2]);

         u_PT_PAN_DECIMAL = (u_Rx_Data[3] << 4);
         u_PT_PAN_DECIMAL |= (u_Rx_Data[4]);

         switch (u_Rx_Data[5])
         {
         case 0x00:
            u_PT_TILT_SIGN = 0x00;	// NULL
            break;

         case 0x01:
            u_PT_TILT_SIGN = 0x2D;	// -
            break;

         default:
            break;
         }

         u_PT_TILT_INT = (u_Rx_Data[6] << 4);
         u_PT_TILT_INT |= (u_Rx_Data[7]);
         u_PT_TILT_DECIMAL = (u_Rx_Data[8] << 4);
         u_PT_TILT_DECIMAL |= (u_Rx_Data[9]);

         /*
         u_ID = MDIN_LAYER_CENTER_MSG;				// ID : Main 0
         u_Rx_Data[0] = 0x00;		// ON
         u_Rx_Data[1] = 0x00;		// RESERVED

         Send_MDIN_Data(MDIN_FREEZE, 0x03, u_ID, u_Rx_Data[0], u_Rx_Data[1], u_Rx_Data[2], u_Rx_Data[3], u_Rx_Data[4], u_Rx_Data[5], u_Rx_Data[6], u_Rx_Data[7], u_Rx_Data[8], u_Rx_Data[9],
         				u_Rx_Data[10], u_Rx_Data[11], u_Rx_Data[12], u_Rx_Data[13], u_Rx_Data[14], u_Rx_Data[15], u_Rx_Data[16], MDIN_COMMAND_TIMER_DELAY);
         */

         u_ID = MDIN_LAYER_COORDINATE;					// ID
         u_Position_x = 0x01;								// COLUMN : 1
         u_Position_y = 0x00;								// ROW : 0

         u_Rx_Data[0] = 0x00;								// NULL
         u_Rx_Data[1] = (u_PT_PAN_INT / 100) + 0x30;			// 1
         u_Rx_Data[2] = ((u_PT_PAN_INT % 100) / 10) + 0x30;	// 8
         u_Rx_Data[3] = (u_PT_PAN_INT % 10) + 0x30;			// 0
         u_Rx_Data[4] = 0x2E;								// .
         u8_Convert_Data = (u_PT_PAN_DECIMAL / 10) + 0x30;
         u_Rx_Data[5] = u8_Convert_Data;					// 0
         u8_Convert_Data = (u_PT_PAN_DECIMAL % 10) + 0x30;
         u_Rx_Data[6] = u8_Convert_Data;					// 0
         u_Rx_Data[7] = 0x00;								// NULL
         u_Rx_Data[8] = u_PT_TILT_SIGN;					// NULL / -
         u_Rx_Data[9] = (u_PT_TILT_INT / 100) + 0x30;		// 1
         u_Rx_Data[10] = ((u_PT_TILT_INT % 100) / 10) + 0x30;	// 8
         u_Rx_Data[11] = (u_PT_TILT_INT % 10) + 0x30;		// 0
         u_Rx_Data[12] = 0x2E;								// .
         u8_Convert_Data = (u_PT_TILT_DECIMAL / 10) + 0x30;
         u_Rx_Data[13] = u8_Convert_Data;					// 0
         u8_Convert_Data = (u_PT_TILT_DECIMAL % 10) + 0x30;
         u_Rx_Data[14] = u8_Convert_Data;					// 0

         Send_MDIN_Data(MDIN_SPRITE_STRING, 0x12, u_ID, u_Position_x, u_Position_y, u_Rx_Data[0], u_Rx_Data[1], u_Rx_Data[2], u_Rx_Data[3], u_Rx_Data[4], u_Rx_Data[5], u_Rx_Data[6], u_Rx_Data[7],
                        u_Rx_Data[8], u_Rx_Data[9], u_Rx_Data[10], u_Rx_Data[11], u_Rx_Data[12], u_Rx_Data[13], u_Rx_Data[14], MDIN_COMMAND_TIMER_DELAY);

         break;

      default:
         break;
      }

      break;

   case IP_SONY_FIRST_BYTE:

      Sony_Data_Handing(USART1_INDEX, u_Cmd, u_Leng);		// Command Check, Length Check

      break;

   case IP_TSM_FIRST_BYTE:

      // 정상 동작
      switch (stINFO.THERMAL_MODEL)
      {
      case TSM_72:
      case TSM_72T:
      case TSM_1M:
      case TSM_1MT:
         TSM_Data_Handing(USART1_INDEX, u_Cmd, u_Leng);		// Command Check, Length Check
         break;

      case TCM_640:
         //TCM_Data_Handing(u_buf[4], u_buf[2]);		// Command Check, Length Check
         break;
      }

      break;

   default:
      break;
   }
}

/*******************************************************************************
* Function Name  : Before_USART1_Data_Parser
*******************************************************************************/
void Before_USART1_Data_Parser(void)
{
   /*******************************************************************************
   * Data Format
   BYTE1[0]		BYTE2[1]		BYTE3[2]		BYTE4[3]		BYTE5[4]		BYTE5[5]
   0xCA		0xAC		CMD			DATA1(P1)	DATA2(P2)	CS
   *******************************************************************************/
   u8 u_Cmd = 0x00, u_Rx_Data1 = 0x00, u_Rx_Data2 = 0x00;
   u8 u_Tx_Data1 = 0x00, u_Tx_Data2 = 0x00, u_Tx_Data3 = 0x00, u_Tx_Data4 = 0x00;
   u16 u_Convert_Data = 0x0000;

   if (stUSART1.RX_PARITY == 0x01)
   {
      stUSART1.RX_PARITY = 0x00;
      u_Cmd = stUSART1.RX_BUF[2];
      u_Rx_Data1 = stUSART1.RX_BUF[3];
      u_Rx_Data2 = stUSART1.RX_BUF[4];

      switch (u_Cmd)
      {
         /*******************************************************************************
         * Command : 0x02
         * Mode : Set Wiper
         BYTE1[0]		BYTE2[1]		BYTE3[2]		BYTE4[3]		BYTE5[4]		BYTE5[5]
         0xCA		0xAC		0x02		P1			P2			CS
         - P1 : Count - 0x01 ~ 0x0E (1~14), 0x0F : Continuous Active
         - P2 : Dwell Time (s) - 0x00 ~ 0x3B (0~59)
         *******************************************************************************/ 
         // 5.2. Set Wiper (0x02)
      case SET_WIPER:

         stWIPER2.COUNT = u_Rx_Data1;
         stWIPER2.DWELL_TIME_DATA = u_Rx_Data2;
         stWIPER2.FLAG = 0x01;

         stWIPER2.STOP_MODE = WIPER_STOP_READY;
         stWIPER2.STEP = WIPER_READY;

         if (stWIPER2.COUNT >= 0x0F)
         {
            stWIPER2.CONTINUOUS_FLAG = 0x01;
            stWIPER2.CONTINUOUS_ms = 0;
            stWIPER2.CONTINUOUS_s = 0;
         }

         break;

         /*******************************************************************************
         * Command : 0x03
         * Mode : Stop Wiper
         BYTE1[0]		BYTE2[1]		BYTE3[2]		BYTE4[3]		BYTE5[4]		BYTE5[5]
         0xCA		0xAC		0x03		P1			0x00			CS
         - P1 : 
         0x00 : Origin Stop
         0x01 : Emergency Stop 
         *******************************************************************************/ 
         // 5.3. Stop Wiper (0x03)
      case STOP_WIPER:

         switch (u_Rx_Data1)
         {
         case 0x00:
            stWIPER2.STOP_MODE = WIPER_STOP_ORIGIN;
            break;

         case 0x01:
            stWIPER2.STOP_MODE = WIPER_STOP_EMERGENCY;
            break;
         }

         if (stWIPER2.DWELL_TIMER_FLAG)
            stWIPER2.DWELL_TIMER_FLAG = 0x00;
         if (stWIPER2.CONTINUOUS_FLAG == 0x01)
         {
            stWIPER2.CONTINUOUS_FLAG = 0x00;
         }

         break;

         // 5.5. Set LRF (0x05)
      case SET_LRF:

         switch (u_Rx_Data2)
         {
         case 0x00:
            break;

         default:

            stLRF.CONTINUOUS_TIME_MAX = u_Rx_Data2 * 50;

            break;
         }

         switch (u_Rx_Data1)
         {
         case 0x01:

            stLRF.CONTINUOUS_FLAG = 0x01;

            break;

         default:

            stLRF.CONTINUOUS_FLAG = 0x00;

            break;
         }

         break;


         /*******************************************************************************
         * Command : 0x07
         * Mode : Light On/Off [0x00:Off, 0x01:On]
         BYTE1[0]		BYTE2[1]		BYTE3[2]		BYTE4[3]		BYTE5[4]		BYTE5[5]
         0xCA		0xAC		0x07		P1			0x00		CS
         - P1 :
         0x00 : Light Off
         0x01 : Light On
         *******************************************************************************/ 
         // 5.7. Set Light On/Off (0x07)
      case SET_LIGHT:

         switch (u_Rx_Data1)
         {
         case 0x00:

            EXTERNAL_LIGHT_PORT_OFF;
            stLIGHT.EXTERNAL_STATUS = LIGHT_OFF;

            break;

         case 0x01:

            EXTERNAL_LIGHT_PORT_ON;
            stLIGHT.EXTERNAL_STATUS = LIGHT_ON;

            break;

         default:
            break;
         }

         break;

         // 5.8. Set Zoom-Light On/Off (0x08)
      case SET_ZOOM_LIGHT:

         switch (u_Rx_Data1)
         {
         case 0x00:

            // Zoom Light Off
            Send_Light_Data(ZOOM_LIGHT_ENABLE, 0x30, 0x30, 0x30, 0x30, 0x30, 0x0A, ZOOM_LIGHT_TRANS_DELAY);
            stLIGHT.ZOOM_STATUS = LIGHT_OFF;

            break;

         case 0x01:

            // Zoom Light On
            Send_Light_Data(ZOOM_LIGHT_ENABLE, 0x30, 0x30, 0x30, 0x30, 0x31, 0x0A, ZOOM_LIGHT_TRANS_DELAY);
            stLIGHT.ZOOM_STATUS = LIGHT_ON;

            break;

         default:
            break;
         }

         break;

         // 5.9. Set Zoom-Light Direct Position (0x09)
      case SET_ZOOM_LIGHT_DIRECT_POSITION:

         u_Convert_Data = (u_Rx_Data1 << 8);
         u_Convert_Data |= u_Rx_Data2;

         u_Tx_Data1 = (u_Convert_Data / 1000) & 0xFF;
         if (u_Tx_Data1 >= 9)
            u_Tx_Data1 = 9;
         u_Tx_Data1 = u_Tx_Data1 + 0x30;

         u_Convert_Data = u_Convert_Data % 1000;
         u_Tx_Data2 = (u_Convert_Data / 100) & 0xFF;
         u_Tx_Data2 = u_Tx_Data2 + 0x30;

         u_Convert_Data = u_Convert_Data % 100;
         u_Tx_Data3 = (u_Convert_Data / 10) & 0xFF;
         u_Tx_Data3 = u_Tx_Data3 + 0x30;

         u_Tx_Data4 = (u_Convert_Data % 10) & 0xFF;
         u_Tx_Data4 = u_Tx_Data4 + 0x30;

         Send_Light_Data(ZOOM_LIGHT_DIRECT, 0x2B, u_Tx_Data1, u_Tx_Data2, u_Tx_Data3, u_Tx_Data4, 0x0A, ZOOM_LIGHT_TRANS_DELAY);

         break;

         // 5.A. (Special CMD) Call Zoom-Light Data (0x0A)
      case CALL_ZOOM_LIGHT_DATA:

         Send_Light_Data(CALL_ZOOM_LIGHT_POSITION, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, ZOOM_LIGHT_TRANS_DELAY);

         break;

         // 5.B. (Special CMD) Set Zoom-Light Manual Control (0x0B)
      case SET_ZOOM_LIGHT_MANUAL_CONTROL:

         switch (u_Rx_Data1)
         {
         case 0x00:

            stLIGHT.DIRECTION = CMD_ZOOM_LIGHT_WIDE;
            u_Tx_Data1 = 0x30;

            u_Tx_Data2 = u_Rx_Data2 / 100;
            u_Tx_Data2 = u_Tx_Data2 + 0x30;

            u_Rx_Data2 = u_Rx_Data2 % 100;
            u_Tx_Data3 = u_Rx_Data2 / 10;
            u_Tx_Data3 = u_Tx_Data3 + 0x30;

            u_Tx_Data4 = u_Rx_Data2 % 10;
            u_Tx_Data4 = u_Tx_Data4 + 0x30;

            Send_Light_Data(ZOOM_LIGHT_STEP, CMD_ZOOM_LIGHT_WIDE, u_Tx_Data1, u_Tx_Data2, u_Tx_Data3, u_Tx_Data4, 0x0A, ZOOM_LIGHT_TRANS_DELAY);

            break;

         case 0x01:

            stLIGHT.DIRECTION = CMD_ZOOM_LIGHT_TELE;

            u_Tx_Data1 = 0x30;

            u_Tx_Data2 = u_Rx_Data2 / 100;
            u_Tx_Data2 = u_Tx_Data2 + 0x30;

            u_Rx_Data2 = u_Rx_Data2 % 100;
            u_Tx_Data3 = u_Rx_Data2 / 10;
            u_Tx_Data3 = u_Tx_Data3 + 0x30;

            u_Tx_Data4 = u_Rx_Data2 % 10;
            u_Tx_Data4 = u_Tx_Data4 + 0x30;

            Send_Light_Data(ZOOM_LIGHT_STEP, CMD_ZOOM_LIGHT_TELE, u_Tx_Data1, u_Tx_Data2, u_Tx_Data3, u_Tx_Data4, 0x0A, ZOOM_LIGHT_TRANS_DELAY);

            break;

         default:
            break;
         }

         break;

         // 5.C. (Special CMD) Initialization Zoom-Light (0x0C)
      case INITIALIZATION_ZOOM_LIGHT:

         Send_Light_Data(ZOOM_LIGHT_INITIALIZATION, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A, ZOOM_LIGHT_TRANS_DELAY);

         break;

         // 5.10. LRF Initialization (0x10)
      case LRF_INITIALIZATION:

         // =======================================
         // Set LRF Initialization Flag
         // =======================================
         stLRF.INIT_FLAG = 0x01;

         break;

         // 5.18. Set Dual Light On/Off (0x18)
      case OPTION_SET_EXTERNAL_IR_MODE:

         switch (u_Rx_Data1)
         {
         case 0x00:

            stCDS.IR_AUTO_ENABLE = 0x01;

            switch (stCDS.DAY_AND_NIGHT_STATUS)
            {
               // Day Mode
            case 0x00:

               EXTERNAL_LIGHT_PORT_OFF;
               stLIGHT.EXTERNAL_STATUS = LIGHT_OFF;

               // Zoom Light Off
               Send_Light_Data(ZOOM_LIGHT_ENABLE, 0x30, 0x30, 0x30, 0x30, 0x30, 0x0A, ZOOM_LIGHT_TRANS_DELAY);
               stLIGHT.ZOOM_STATUS = LIGHT_OFF;

               break;

               // Night Mode
            case 0x01:

               EXTERNAL_LIGHT_PORT_ON;
               stLIGHT.EXTERNAL_STATUS = LIGHT_ON;

               // Zoom Light On
               Send_Light_Data(ZOOM_LIGHT_ENABLE, 0x30, 0x30, 0x30, 0x30, 0x31, 0x0A, ZOOM_LIGHT_TRANS_DELAY);
               stLIGHT.ZOOM_STATUS = LIGHT_ON;

               break;
            }

            break;

         case 0x01:

            stCDS.IR_AUTO_ENABLE = 0x00;

            EXTERNAL_LIGHT_PORT_ON;
            stLIGHT.EXTERNAL_STATUS = LIGHT_ON;

            // Zoom Light On
            Send_Light_Data(ZOOM_LIGHT_ENABLE, 0x30, 0x30, 0x30, 0x30, 0x31, 0x0A, ZOOM_LIGHT_TRANS_DELAY);
            stLIGHT.ZOOM_STATUS = LIGHT_ON;

            break;

         case 0x02:

            stCDS.IR_AUTO_ENABLE = 0x00;

            EXTERNAL_LIGHT_PORT_OFF;
            stLIGHT.EXTERNAL_STATUS = LIGHT_OFF;

            // Zoom Light Off
            Send_Light_Data(ZOOM_LIGHT_ENABLE, 0x30, 0x30, 0x30, 0x30, 0x30, 0x0A, ZOOM_LIGHT_TRANS_DELAY);
            stLIGHT.ZOOM_STATUS = LIGHT_OFF;

            break;

         default:
            break;
         }

         break;

         // 5.19. Set External IR Change Lux (0x19)
      case OPTION_SET_EXTERNAL_IR_CHANGE_LUX:

         stCDS.LUX = u_Rx_Data1;

         switch (stCDS.LUX)
         {
            // -5
         case 0x75:
            stCDS.DAY_AND_NIGHT_LEVEL = 10;
            break;

            // -4
         case 0x77:
            stCDS.DAY_AND_NIGHT_LEVEL = 9;
            break;

            // -3
         case 0x79:
            stCDS.DAY_AND_NIGHT_LEVEL = 8;
            break;

            // -2
         case 0x7B:
            stCDS.DAY_AND_NIGHT_LEVEL = 7;
            break;

            // -1
         case 0x7D:
            stCDS.DAY_AND_NIGHT_LEVEL = 6;
            break;

            // Default
         case 0x7F:
            stCDS.DAY_AND_NIGHT_LEVEL = 5;
            break;

            // +1
         case 0x81:
            stCDS.DAY_AND_NIGHT_LEVEL = 4;
            break;

            // +2
         case 0x83:
            stCDS.DAY_AND_NIGHT_LEVEL = 3;
            break;

            // +3
         case 0x85:
            stCDS.DAY_AND_NIGHT_LEVEL = 2;
            break;

            // +4
         case 0x87:
            stCDS.DAY_AND_NIGHT_LEVEL = 1;
            break;

            // +5
         case 0x89:
            stCDS.DAY_AND_NIGHT_LEVEL = 0;
            break;
         }

         break;

         // 5.20. Set External IR Offset (0x20)
      case OPTION_SET_EXTERNAL_IR_OFFSET:

         stCDS.OFFSET = u_Rx_Data1 * 1000;

         break;

         // 5.21. Set Wiper Continuous Time (0x21)
      case OPTION_SET_WIPER_CONTINUOUS_TIME:

         stWIPER2.CONTINUOUS_TIME = u_Rx_Data1;

         break;

         // 5.90. Call Version Data (0x90)
      case CALL_VERSION:

         Reponse_Data_Send(CALL_VERSION, Version_High, Version_Low);

         break;

         // 5.91. Call Update Data (0x91)
      case CALL_UPGRADE_DATE:

         Reponse_Data_Send(CALL_UPGRADE_DATE, Upgrade_Year_Month, Upgrade_Day);

         break;

         // 5.A0. CDS - Day & Night (Auto Mode) (0xA0)
      case DAY_AND_NIGHT_AUTO_MODE:

         switch (u_Rx_Data1)
         {
            // Night Mode
         case 0x00:

            stCDS.DAY_AND_NIGHT_AUTO_ENABLE = 0x00;
            stCDS.DAY_AND_NIGHT_STATUS = 0x01;

            // Auto Mode Off
            Send_Sony_Data(0x51, 0x03, 0x00, 0x06, SONY_COMMAND_TIMER_DELAY);

            // Night Mode
            Send_Sony_Data(0x01, 0x02, 0x00, 0x06, SONY_COMMAND_TIMER_DELAY);

            EXTERNAL_LIGHT_PORT_ON;
            stLIGHT.EXTERNAL_STATUS = LIGHT_ON;

            // Zoom Light On
            Send_Light_Data(ZOOM_LIGHT_ENABLE, 0x30, 0x30, 0x30, 0x30, 0x31, 0x0A, ZOOM_LIGHT_TRANS_DELAY);
            stLIGHT.ZOOM_STATUS = LIGHT_ON;

            break;

            // Day Mode
         case 0x01:

            stCDS.DAY_AND_NIGHT_AUTO_ENABLE = 0x00;
            stCDS.DAY_AND_NIGHT_STATUS = 0x00;

            // Auto Mode Off
            Send_Sony_Data(0x51, 0x03, 0x00, 0x06, SONY_COMMAND_TIMER_DELAY);

            // Day Mode
            Send_Sony_Data(0x01, 0x03, 0x00, 0x06, SONY_COMMAND_TIMER_DELAY);

            EXTERNAL_LIGHT_PORT_OFF;
            stLIGHT.EXTERNAL_STATUS = LIGHT_OFF;

            // Zoom Light Off
            Send_Light_Data(ZOOM_LIGHT_ENABLE, 0x30, 0x30, 0x30, 0x30, 0x30, 0x0A, ZOOM_LIGHT_TRANS_DELAY);
            stLIGHT.ZOOM_STATUS = LIGHT_OFF;

            break;

            // Auto Mode
         case 0x02:

            // Auto Mode Off
            Send_Sony_Data(0x51, 0x02, 0x00, 0x06, SONY_COMMAND_TIMER_DELAY);

            stCDS.DAY_AND_NIGHT_AUTO_ENABLE = 0x01;

            break;
         }

         break;

         // TEST_ZOOM_DATA
      case TEST_ZOOM_DATA:

         Send_Sony_Data(0x07, 0x27, 0x00, 0x06, SONY_COMMAND_TIMER_DELAY);

         stTEST.TIMER_FLAG = 0x01;

         break;

      default:
         break;
      }
   }
}

/*******************************************************************************
* Function Name  : Zoom_Data_Sync
/=============================================================/
Step		Light-Zoom(DEC)	Light-Zoom(HEX)	Sony-Zoom(DEC)	Sony-Zoom(HEX)
0		1036			0x040B			0				0x0000
1		1000			0x03E8			550				0x0226
2		964				0x03C4			1096			0x0448
3		929				0x03A0			1642			0x066A
4		893				0x037D			2188			0x088C
5		857				0x0359			2734			0x0AAE
6		822				0x0335			3280			0x0CD0
7		786				0x0311			3826			0x0EF2
8		750				0x02EE			4372			0x1114
9		714				0x02CA			4918			0x1336
10		679				0x02A6			5464			0x1558
11		643				0x0282			6010			0x177A
12		607				0x025F			6556			0x199C
13		572				0x023B			7102			0x1BBE
14		536				0x0217			7648			0x1DE0
15		500				0x01F4			8194			0x2002
16		464				0x01D0			8740			0x2224
17		429				0x01AC			9286			0x2446
18		393				0x0188			9832			0x2668
19		357				0x0165			10378			0x288A
20		321				0x0141			10924			0x2AAC
21		286				0x011D			11470			0x2CCE
22		250				0x00FA			12016			0x2EF0
23		214				0x00D6			12562			0x3112
24		179				0x00B2			13108			0x3334
25		143				0x008E			13654			0x3556
26		107				0x006B			14200			0x3778
27		71				0x0047			14746			0x399A
28		36				0x0023			15292			0x3BBC
29		0				0x0000			15838			0x3DDE
30										16384			0x4000
*******************************************************************************/
void Zoom_Data_Sync(void)
{
   // STEP 0 - HEX : 0x0000 ~ 0x0226 (DEC : 0 ~ 550)
   if (stSONY.ZOOM_POSITION < 0x0225)
   {
      stLIGHT.POSITION_DATA = LIGHT_ZOOM_STEP_0;
   }
   // STEP 1 - HEX : 0x0226 ~ 0x0448 (DEC : 550 ~ 1096)
   else if ((stSONY.ZOOM_POSITION >= SONY_ZOOM_STEP_0) && (stSONY.ZOOM_POSITION < SONY_ZOOM_STEP_1))
   {
      stLIGHT.POSITION_DATA = LIGHT_ZOOM_STEP_1;
   }
   // STEP 2 - HEX : 0x0448 ~ 0x066A (DEC : 1096 ~ 1642)
   else if ((stSONY.ZOOM_POSITION >= SONY_ZOOM_STEP_1) && (stSONY.ZOOM_POSITION < SONY_ZOOM_STEP_2))
   {
      stLIGHT.POSITION_DATA = LIGHT_ZOOM_STEP_2;
   }
   // STEP 3 - HEX : 0x066A ~ 0x088C (DEC : 1642 ~ 2188)
   else if ((stSONY.ZOOM_POSITION >= SONY_ZOOM_STEP_2) && (stSONY.ZOOM_POSITION < SONY_ZOOM_STEP_3))
   {
      stLIGHT.POSITION_DATA = LIGHT_ZOOM_STEP_3;
   }
   // STEP 4 - HEX : 0x088C ~ 0x0AAE (DEC : 2188 ~ 2734)
   else if ((stSONY.ZOOM_POSITION >= SONY_ZOOM_STEP_3) && (stSONY.ZOOM_POSITION < SONY_ZOOM_STEP_4))
   {
      stLIGHT.POSITION_DATA = LIGHT_ZOOM_STEP_4;
   }
   // STEP 5 - HEX : 0x0AAE ~ 0x0CD0 (DEC : 2734 ~ 3280)
   else if ((stSONY.ZOOM_POSITION >= SONY_ZOOM_STEP_4) && (stSONY.ZOOM_POSITION < SONY_ZOOM_STEP_5))
   {
      stLIGHT.POSITION_DATA = LIGHT_ZOOM_STEP_5;
   }
   // STEP 6 - HEX : 0x0CD0 ~ 0x0EF2 (DEC : 3280 ~ 3826)
   else if ((stSONY.ZOOM_POSITION >= SONY_ZOOM_STEP_5) && (stSONY.ZOOM_POSITION < SONY_ZOOM_STEP_6))
   {
      stLIGHT.POSITION_DATA = LIGHT_ZOOM_STEP_6;
   }
   // STEP 7 - HEX : 0x0EF2 ~ 0x1114 (DEC : 3826 ~ 4372)
   else if ((stSONY.ZOOM_POSITION >= SONY_ZOOM_STEP_6) && (stSONY.ZOOM_POSITION < SONY_ZOOM_STEP_7))
   {
      stLIGHT.POSITION_DATA = LIGHT_ZOOM_STEP_7;
   }
   // STEP 8 - HEX : 0x1114 ~ 0x1336 (DEC : 4372 ~ 4918)
   else if ((stSONY.ZOOM_POSITION >= SONY_ZOOM_STEP_7) && (stSONY.ZOOM_POSITION < SONY_ZOOM_STEP_8))
   {
      stLIGHT.POSITION_DATA = LIGHT_ZOOM_STEP_8;
   }
   // STEP 9 - HEX : 0x1336 ~ 0x1558 (DEC : 4918 ~ 5464)
   else if ((stSONY.ZOOM_POSITION >= SONY_ZOOM_STEP_8) && (stSONY.ZOOM_POSITION < SONY_ZOOM_STEP_9))
   {
      stLIGHT.POSITION_DATA = LIGHT_ZOOM_STEP_9;
   }
   // STEP 10 - HEX : 0x1558 ~ 0x177A (DEC : 5464 ~ 6010)
   else if ((stSONY.ZOOM_POSITION >= SONY_ZOOM_STEP_9) && (stSONY.ZOOM_POSITION < SONY_ZOOM_STEP_10))
   {
      stLIGHT.POSITION_DATA = LIGHT_ZOOM_STEP_10;
   }
   // STEP 11 - HEX : 0x177A ~ 0x199C (DEC : 6010 ~ 6556)
   else if ((stSONY.ZOOM_POSITION >= SONY_ZOOM_STEP_10) && (stSONY.ZOOM_POSITION < SONY_ZOOM_STEP_11))
   {
      stLIGHT.POSITION_DATA = LIGHT_ZOOM_STEP_11;
   }
   // STEP 12 - HEX : 0x199C ~ 0x1BBE (DEC : 6556 ~ 7102)
   else if ((stSONY.ZOOM_POSITION >= SONY_ZOOM_STEP_11) && (stSONY.ZOOM_POSITION < SONY_ZOOM_STEP_12))
   {
      stLIGHT.POSITION_DATA = LIGHT_ZOOM_STEP_12;
   }
   // STEP 13 - HEX : 0x1BBE ~ 0x1DE0 (DEC : 7102 ~ 7648)
   else if ((stSONY.ZOOM_POSITION >= SONY_ZOOM_STEP_12) && (stSONY.ZOOM_POSITION < SONY_ZOOM_STEP_13))
   {
      stLIGHT.POSITION_DATA = LIGHT_ZOOM_STEP_13;
   }
   // STEP 14 - HEX : 0x1DE0 ~ 0x2002 (DEC : 7648 ~ 8194)
   else if ((stSONY.ZOOM_POSITION >= SONY_ZOOM_STEP_13) && (stSONY.ZOOM_POSITION < SONY_ZOOM_STEP_14))
   {
      stLIGHT.POSITION_DATA = LIGHT_ZOOM_STEP_14;
   }
   // STEP 15 - HEX : 0x2002 ~ 0x2224 (DEC : 8194 ~ 8740)
   else if ((stSONY.ZOOM_POSITION >= SONY_ZOOM_STEP_14) && (stSONY.ZOOM_POSITION < SONY_ZOOM_STEP_15))
   {
      stLIGHT.POSITION_DATA = LIGHT_ZOOM_STEP_15;
   }
   // STEP 16 - HEX : 0x2224 ~ 0x2446 (DEC : 8740 ~ 9286)
   else if ((stSONY.ZOOM_POSITION >= SONY_ZOOM_STEP_15) && (stSONY.ZOOM_POSITION < SONY_ZOOM_STEP_16))
   {
      stLIGHT.POSITION_DATA = LIGHT_ZOOM_STEP_16;
   }
   // STEP 17 - HEX : 0x2446 ~ 0x2668 (DEC : 9286 ~ 9832)
   else if ((stSONY.ZOOM_POSITION >= SONY_ZOOM_STEP_16) && (stSONY.ZOOM_POSITION < SONY_ZOOM_STEP_17))
   {
      stLIGHT.POSITION_DATA = LIGHT_ZOOM_STEP_17;
   }
   // STEP 18 - HEX : 0x2668 ~ 0x288A (DEC : 9832 ~ 10378)
   else if ((stSONY.ZOOM_POSITION >= SONY_ZOOM_STEP_17) && (stSONY.ZOOM_POSITION < SONY_ZOOM_STEP_18))
   {
      stLIGHT.POSITION_DATA = LIGHT_ZOOM_STEP_18;
   }
   // STEP 19 - HEX : 0x288A ~ 0x2AAC (DEC : 10378 ~ 10924)
   else if ((stSONY.ZOOM_POSITION >= SONY_ZOOM_STEP_18) && (stSONY.ZOOM_POSITION < SONY_ZOOM_STEP_19))
   {
      stLIGHT.POSITION_DATA = LIGHT_ZOOM_STEP_19;
   }
   // STEP 20 - HEX : 0x2AAC ~ 0x2CCE (DEC : 10924 ~ 11470)
   else if ((stSONY.ZOOM_POSITION >= SONY_ZOOM_STEP_19) && (stSONY.ZOOM_POSITION < SONY_ZOOM_STEP_20))
   {
      stLIGHT.POSITION_DATA = LIGHT_ZOOM_STEP_20;
   }
   // STEP 21 - HEX : 0x2CCE ~ 0x2EF0 (DEC : 11470 ~ 12016)
   else if ((stSONY.ZOOM_POSITION >= SONY_ZOOM_STEP_20) && (stSONY.ZOOM_POSITION < SONY_ZOOM_STEP_21))
   {
      stLIGHT.POSITION_DATA = LIGHT_ZOOM_STEP_21;
   }
   // STEP 22 - HEX : 0x2EF0 ~ 0x3112 (DEC : 12016 ~ 12562)
   else if ((stSONY.ZOOM_POSITION >= SONY_ZOOM_STEP_21) && (stSONY.ZOOM_POSITION < SONY_ZOOM_STEP_22))
   {
      stLIGHT.POSITION_DATA = LIGHT_ZOOM_STEP_22;
   }
   // STEP 23 - HEX : 0x3112 ~ 0x3334 (DEC : 12562 ~ 13108)
   else if ((stSONY.ZOOM_POSITION >= SONY_ZOOM_STEP_22) && (stSONY.ZOOM_POSITION < SONY_ZOOM_STEP_23))
   {
      stLIGHT.POSITION_DATA = LIGHT_ZOOM_STEP_23;
   }
   // STEP 24 - HEX : 0x3334 ~ 0x3556 (DEC : 13108 ~ 13654)
   else if ((stSONY.ZOOM_POSITION >= SONY_ZOOM_STEP_23) && (stSONY.ZOOM_POSITION < SONY_ZOOM_STEP_24))
   {
      stLIGHT.POSITION_DATA = LIGHT_ZOOM_STEP_24;
   }
   // STEP 25 - HEX : 0x3556 ~ 0x3778 (DEC : 13654 ~ 14200)
   else if ((stSONY.ZOOM_POSITION >= SONY_ZOOM_STEP_24) && (stSONY.ZOOM_POSITION < SONY_ZOOM_STEP_25))
   {
      stLIGHT.POSITION_DATA = LIGHT_ZOOM_STEP_25;
   }
   // STEP 26 - HEX : 0x3778 ~ 0x399A (DEC : 14200 ~ 14746)
   else if ((stSONY.ZOOM_POSITION >= SONY_ZOOM_STEP_25) && (stSONY.ZOOM_POSITION < SONY_ZOOM_STEP_26))
   {
      stLIGHT.POSITION_DATA = LIGHT_ZOOM_STEP_26;
   }
   // STEP 27 - HEX : 0x399A ~ 0x3BBC (DEC : 14746 ~ 15292)
   else if ((stSONY.ZOOM_POSITION >= SONY_ZOOM_STEP_26) && (stSONY.ZOOM_POSITION < SONY_ZOOM_STEP_27))
   {
      stLIGHT.POSITION_DATA = LIGHT_ZOOM_STEP_27;
   }
   // STEP 28 - HEX : 0x3BBC ~ 0x3DDE (DEC : 15292 ~ 15838)
   else if ((stSONY.ZOOM_POSITION >= SONY_ZOOM_STEP_27) && (stSONY.ZOOM_POSITION < SONY_ZOOM_STEP_28))
   {
      stLIGHT.POSITION_DATA = LIGHT_ZOOM_STEP_28;
   }
   // STEP 29 - HEX : 0x3DDE ~ 0x4000 (DEC : 15838 ~ 16384)
   else if ((stSONY.ZOOM_POSITION >= SONY_ZOOM_STEP_28) && (stSONY.ZOOM_POSITION < SONY_ZOOM_STEP_29))
   {
      stLIGHT.POSITION_DATA = LIGHT_ZOOM_STEP_29;
   }
}

/*******************************************************************************
* Function Name  : Temperature_Convert_Data
: 섭씨온도를 ADC 데이터로 변환
*******************************************************************************/
u16 Temperature_Convert_Data(u8 u_Celsius_Data)
{
   u16 u_ADC_Data;

   switch (u_Celsius_Data)
   {
   case 0:     		//-30'
      u_ADC_Data = 2875;
      break;
   case 1:
      u_ADC_Data = 2857;
      break;
   case 2:
      u_ADC_Data = 2838;
      break;
   case 3:
      u_ADC_Data = 2819;
      break;
   case 4:
      u_ADC_Data = 2799;
      break;
   case 5:    		//-15'
      u_ADC_Data = 2779;
      break;
   case 6:
      u_ADC_Data = 2758;
      break;
   case 7:
      u_ADC_Data = 2737;
      break;
   case 8:
      u_ADC_Data = 2715;
      break;
   case 9:
      u_ADC_Data = 2693;
      break;
   case 10:    		//-10'
      u_ADC_Data = 2670;
      break;
   case 11:
      u_ADC_Data = 2647;
      break;
   case 12:
      u_ADC_Data = 2623;
      break;
   case 13:
      u_ADC_Data = 2598;
      break;
   case 14:
      u_ADC_Data = 2574;
      break;
   case 15:    		//-5'
      u_ADC_Data = 2548;
      break;
   case 16:
      u_ADC_Data = 2522;
      break;
   case 17:
      u_ADC_Data = 2496;
      break;
   case 18:
      u_ADC_Data = 2469;
      break;
   case 19:
      u_ADC_Data = 2442;
      break;
   case 20:    		//0'
      u_ADC_Data = 2414;
      break;
   case 21:
      u_ADC_Data = 2386;
      break;
   case 22:
      u_ADC_Data = 2358;
      break;
   case 23:
      u_ADC_Data = 2329;
      break;
   case 24:
      u_ADC_Data = 2300;
      break;
   case 25:    		//5'
      u_ADC_Data = 2271;
      break;
   case 26:
      u_ADC_Data = 2241;
      break;
   case 27:
      u_ADC_Data = 2211;
      break;
   case 28:
      u_ADC_Data = 2181;
      break;
   case 29:
      u_ADC_Data = 2150;
      break;
   case 30:    		//10'
      u_ADC_Data = 2119;
      break;
   case 31:
      u_ADC_Data = 2088;
      break;
   case 32:
      u_ADC_Data = 2057;
      break;
   case 33:
      u_ADC_Data = 2026;
      break;
   case 34:
      u_ADC_Data = 1995;
      break;
   case 35:
      u_ADC_Data = 1963;
      break;
   case 36:
      u_ADC_Data = 1932;
      break;
   case 37:
      u_ADC_Data = 1900;
      break;
   case 38:
      u_ADC_Data = 1869;
      break;
   case 39:
      u_ADC_Data = 1837;
      break;
   case 40:    		//20'
      u_ADC_Data = 1806;
      break;
   case 41:
      u_ADC_Data = 1774;
      break;
   case 42:
      u_ADC_Data = 1743;
      break;
   case 43:
      u_ADC_Data = 1712;
      break;
   case 44:
      u_ADC_Data = 1680;
      break;
   case 45:    		//25'
      u_ADC_Data = 1650;
      break;
   case 46:
      u_ADC_Data = 1619;
      break;
   case 47:
      u_ADC_Data = 1588;
      break;
   case 48:
      u_ADC_Data = 1558;
      break;
   case 49:
      u_ADC_Data = 1527;
      break;
   case 50:    		//30'
      u_ADC_Data = 1497;
      break;
   case 51:
      u_ADC_Data = 1468;
      break;
   case 52:
      u_ADC_Data = 1438;
      break;
   case 53:
      u_ADC_Data = 1409;
      break;
   case 54:
      u_ADC_Data = 1380;
      break;
   case 55:
      u_ADC_Data = 1352;
      break;
   case 56:
      u_ADC_Data = 1324;
      break;
   case 57:
      u_ADC_Data = 1296;
      break;
   case 58:
      u_ADC_Data = 1268;
      break;
   case 59:
      u_ADC_Data = 1241;
      break;
   case 60:    		// 40'
      u_ADC_Data = 1214;
      break;
   case 61:    		// 41'
      u_ADC_Data = 1188;
      break;
   case 62:    		// 42'
      u_ADC_Data = 1162;
      break;
   case 63:    		// 43'
      u_ADC_Data = 1136;
      break;
   case 64:    		// 44'
      u_ADC_Data = 1111;
      break;
   case 65:    		// 45'
      u_ADC_Data = 1087;
      break;
   case 66:    		// 46'
      u_ADC_Data = 1062;
      break;
   case 67:    		// 47'
      u_ADC_Data = 1038;
      break;
   case 68:    		// 48'
      u_ADC_Data = 1015;
      break;
   case 69:    		// 49'
      u_ADC_Data = 992;
      break;
   case 70:    		// 50'
      u_ADC_Data = 969;
      break;
   }
   return u_ADC_Data;
}

/*******************************************************************************
* Function Name  : Temperature_Data_Check
*******************************************************************************/
void Temperature_Data_Check(void)
{
   if (stTEMP.ENABLE)
   {
      stTEMP.DATA_CHECK_1ms++;
      stTEMP.TOTAL_VALUE_1ms = stTEMP.TOTAL_VALUE_1ms + ((stADC.DMA1_ADC_VALUE[0] * 3300) / 4096);

      if (stTEMP.DATA_CHECK_1ms >= TEMP_CHECK_DATA_COUNT_1ms)
      {
         stTEMP.DATA_CHECK_1ms = 0;

         stTEMP.DATA_CHECK_10ms++;
         stTEMP.TOTAL_VALUE_10ms = stTEMP.TOTAL_VALUE_10ms + (stTEMP.TOTAL_VALUE_1ms / TEMP_CHECK_DATA_COUNT_1ms);
         stTEMP.TOTAL_VALUE_1ms = 0;

         if (stTEMP.DATA_CHECK_10ms >= TEMP_CHECK_DATA_COUNT_10ms)
         {
            stTEMP.DATA_CHECK_10ms = 0;

            stTEMP.AVERAGE_DATA = stTEMP.TOTAL_VALUE_10ms / TEMP_CHECK_DATA_COUNT_10ms;
            stTEMP.TOTAL_VALUE_10ms = 0;
         }
      }
   }
}

/*******************************************************************************
* Function Name  : CDS_Data_Check
*******************************************************************************/
void CDS_Data_Check(void)
{
   if (stCDS.ENABLE)
   {
      stCDS.DATA_CHECK_1ms++;
      stCDS.TOTAL_VALUE_1ms = stCDS.TOTAL_VALUE_1ms + ((stADC.DMA1_ADC_VALUE[1] * 3300) / 4096);

      if (stCDS.DATA_CHECK_1ms >= TEMP_CHECK_DATA_COUNT_1ms)
      {
         stCDS.DATA_CHECK_1ms = 0;

         stCDS.DATA_CHECK_10ms++;
         stCDS.TOTAL_VALUE_10ms = stCDS.TOTAL_VALUE_10ms + (stCDS.TOTAL_VALUE_1ms / TEMP_CHECK_DATA_COUNT_1ms);
         stCDS.TOTAL_VALUE_1ms = 0;

         if (stCDS.DATA_CHECK_10ms >= TEMP_CHECK_DATA_COUNT_10ms)
         {
            stCDS.DATA_CHECK_10ms = 0;

            stCDS.AVERAGE_DATA = stCDS.TOTAL_VALUE_10ms / TEMP_CHECK_DATA_COUNT_10ms;
            stCDS.TOTAL_VALUE_10ms = 0;
         }
      }
   }
}

/*******************************************************************************
* Function Name  : Temperature_Boot_Mode
*******************************************************************************/
void Temperature_Boot_Mode(void)
{
   if (stTEMP.STARTING_MODE_TIMER_FLAG)
   {
      stTEMP.STARTING_MODE_TIMER_ms++;

      if (stTEMP.STARTING_MODE_TIMER_ms >= TEMP_BOOT_START_TIME)
      {
         stTEMP.STARTING_MODE_TIMER_ms = 0;

         stTEMP.STARTING_MODE_TIMER_FLAG = 0x00;
         stTEMP.STARTING_MODE_COMPLETE = 0x01;
      }
   }
}

/*******************************************************************************
* Function Name  : Zoom_Light_Auto_Control
*******************************************************************************/
void Zoom_Light_Auto_Control(void)
{
   u8 u_Tx_Data1 = 0x00, u_Tx_Data2 = 0x00, u_Tx_Data3 = 0x00, u_Tx_Data4 = 0x00;
   u16 u_Convert_Data = 0x0000;

   if (stLIGHT.POSITION_STATUS != stLIGHT.POSITION_DATA)
   {
      u_Convert_Data = stLIGHT.POSITION_DATA;

      if (u_Convert_Data >= 1035)
         u_Convert_Data = 1035;

      u_Tx_Data1 = (u_Convert_Data / 1000) & 0xFF;
      if (u_Tx_Data1 >= 9)
         u_Tx_Data1 = 9;
      u_Tx_Data1 = u_Tx_Data1 + 0x30;

      u_Convert_Data = u_Convert_Data % 1000;
      u_Tx_Data2 = (u_Convert_Data / 100) & 0xFF;
      u_Tx_Data2 = u_Tx_Data2 + 0x30;

      u_Convert_Data = u_Convert_Data % 100;
      u_Tx_Data3 = (u_Convert_Data / 10) & 0xFF;
      u_Tx_Data3 = u_Tx_Data3 + 0x30;

      u_Tx_Data4 = (u_Convert_Data % 10) & 0xFF;
      u_Tx_Data4 = u_Tx_Data4 + 0x30;

      Send_Light_Data(ZOOM_LIGHT_DIRECT, 0x2B, u_Tx_Data1, u_Tx_Data2, u_Tx_Data3, u_Tx_Data4, 0x0A, ZOOM_LIGHT_TRANS_DELAY);

      stLIGHT.POSITION_STATUS = stLIGHT.POSITION_DATA;
   }
}

/*******************************************************************************
* Function Name  : Fan_Heater_Control
*******************************************************************************/
void Fan_Heater_Control(u8 u_Mode)
{
   switch (u_Mode)
   {
   case DISABLE_MODE:
      break;

   case BOOT_MODE:

      if (stTEMP.STARTING_MODE_ENABLE == 0x00)
      {
         Heater_ON;
         Fan_ON;

         stTEMP.STARTING_MODE_ENABLE = 0x01;
         stTEMP.STARTING_MODE_TIMER_FLAG = 0x01;
      }
      else
      {
         if (stTEMP.STARTING_MODE_COMPLETE == 0x01)
         {
            Heater_OFF;
            Fan_OFF;

            stTEMP.STARTING_MODE_COMPLETE = 0x00;
            stTEMP.STARTING_MODE = 0x01;
            stTEMP.ENABLE = 0x01;
         }
      }

      break;

   case NORMAL_MODE:

      // FAN 30분 동작 후 정지
      if (stFAN.FAN_DWELL_FLAG)
      {
         Fan_OFF;
         stFAN.STATUS = bOFF;

         stFAN.FAN_DWELL_FLAG = 0x00;
         stFAN.FAN_DWELL_END_FLAG = 0x00;

         stFAN.FAN_DWELL_TIMER_ms = 0;
         stFAN.FAN_DWELL_TIMER_s = 0;
      }

      /*******************************************************************************
      * FAN 동작 사양
      ① 50도(969) 초과이면 : FAN ON
      ② 40도(1214) 초과 & 50(969) 도 이하 이면 : 동작상태유지
      ③ 40도(1214) 이하이면 : FAN OFF
      ④ IR LED ON 시 : FAN ON
      ⑤ LRF ON 시 : FAN ON


      * HEATER 동작 사양
      ① -10도(1806) 이하 : HEATER ON
      ② 0도(1497) 이상 : HEATER OFF

      * stFAN.FAN_DWELL_FLAG = 1 이면 FAN 30분동안 동작 함. (해당 기능은 FAN ON 으로 한번 동작하면 무조건 FLAG 상태로 진입함.)
      * stFAN.FAN_DWELL_FLAG = 0 이면 FAN 정지.
      *******************************************************************************/

      if (stFAN.FAN_DWELL_FLAG == 0x01)
      {
         // ① -10도(2670) 이하 : HEATER ON
         if (stTEMP.AVERAGE_DATA >= Temperature_Convert_Data(TEMP_COMPARE_VALUE - 10))
         {
            Heater_ON;
            stHEATER.STATUS = bON;
         }

         // ② 0도(2414) 초과 : HEATER OFF
         else if (stTEMP.AVERAGE_DATA < Temperature_Convert_Data(TEMP_COMPARE_VALUE + 0))
         {
            Heater_OFF;
            stHEATER.STATUS = bOFF;
         }
      }
      else
      {
         // ① 50도(969) 초과이면 : FAN ON
         if (stTEMP.AVERAGE_DATA < Temperature_Convert_Data(TEMP_COMPARE_VALUE + 50))
         {
            Fan_ON;
            stFAN.STATUS = bON;
         }

         // ② 40도(1214) 초과 & 50(969) 도 이하 이면 : 동작상태유지
         else if ((stTEMP.AVERAGE_DATA < Temperature_Convert_Data(TEMP_COMPARE_VALUE + 40)) && (stTEMP.AVERAGE_DATA >= Temperature_Convert_Data(TEMP_COMPARE_VALUE + 50)))
         {
            if (stFAN.STATUS == bOFF)
            {
               if ((stLIGHT.ZOOM_STATUS == LIGHT_OFF) && (stLRF.CONTINUOUS_FLAG == 0x00))
               {
                  Fan_OFF;
                  stFAN.STATUS = bOFF;
               }
            }
            else
            {
               Fan_ON;
               stFAN.STATUS = bON;
            }
         }

         // ③ 40도(1214) 이하이면 : FAN OFF
         else if (stTEMP.AVERAGE_DATA >= Temperature_Convert_Data(TEMP_COMPARE_VALUE + 40))
         {
            // ① -10도(1806) 이하 : HEATER ON
            if (stTEMP.AVERAGE_DATA >= Temperature_Convert_Data(TEMP_COMPARE_VALUE - 10))
            {
               Heater_ON;
               stHEATER.STATUS = bON;

               if (stFAN.STATUS == bOFF)
               {
                  Fan_ON;
                  stFAN.STATUS = bON;
               }
            }

            // ② 0도(1497) 초과 : HEATER OFF
            else if (stTEMP.AVERAGE_DATA < Temperature_Convert_Data(TEMP_COMPARE_VALUE + 0))
            {
               Heater_OFF;
               stHEATER.STATUS = bOFF;

               if (stFAN.STATUS == bON)
               {
                  if ((stLIGHT.ZOOM_STATUS == LIGHT_OFF) && (stLRF.CONTINUOUS_FLAG == 0x00))
                     stFAN.FAN_DWELL_FLAG = 0x01;
               }
            }
         }

         break;

      default:
         break;
      }
   }
}

/*******************************************************************************
* Function Name  : Auto_Day_And_Night_Control
*******************************************************************************/ 
/* TNS 3.3V Table (임시)
==========================================================
Lux           7     10    15   20   25   30   40   50
----------------------------------------------------------
ADCValue1    875   547   358  277  240  206  166  140 
==========================================================*/
void Auto_Day_And_Night_Control(void)
{
   u16 u_Data_Convert = 0;

   if (stCDS.ENABLE)
   {
      u_Data_Convert = stCDS.AVERAGE_DATA;

      if (stCDS.DAY_AND_NIGHT_AUTO_ENABLE)
      {

         // 참고용
         // 이전 Table -> 0:755, 1:775, 2:795, 3:815, 4:835, 5:855, 6:875, 7:895, 8:915, 9:935, 10:955
         // Day -> Night 전환 시점 기준: 1200 -> step 5
         // 0:1100, 1:1120, 2:1140, 3:1160, 4:1180, 5:1200, 6:1220, 7:1240, 8:1260, 9:1280, 10:1300

         // IBDR: 3100K, 10K FULL-UP
         //                      밝음                                                                                                            어두음
         // LUX		     11       10       9        8        7		  6		5          4          3          2           1
         // 6 LUX 기준 -> 0:930, 1:950, 2:970, 3:990, 4:1010, 5:1030, 6:1050, 7:1070, 8:1090, 9:1110, 10:1130
         if (u_Data_Convert > (930 + (stCDS.DAY_AND_NIGHT_LEVEL * 20)))
         {
            stCDS.NIGHT_CONVERT_CHECK_Cnt++;

            if (stCDS.NIGHT_CONVERT_CHECK_Cnt == stCDS.OFFSET)
            {
               stCDS.NIGHT_CONVERT_CHECK_Cnt = 0;
               stCDS.DAY_AND_NIGHT_CONVERT_FLAG = 0x01;
               stCDS.DAY_AND_NIGHT_CONVERT_MODE = 0x01;
            }
         }

         // 0:500, 1:520, 2:540, 3:560, 4:580, 5:600, 6:620, 7:640, 8:660, 9:680, 10:700
         // Night -> Day 전환 시점 기준: 900 -> step 5
         //                      밝음                                                                                                            어두음
         // LUX		      11       10       9         8        7	  10	     9         8        7          6           5
         // 10 LUX 기준 -> 0:850, 1:870, 2:890, 3:910, 4:930, 5:950, 6:970, 7:990, 8:1010, 9:1030, 10:1050
         else if (u_Data_Convert < (850 + (stCDS.DAY_AND_NIGHT_LEVEL * 20)))
         {
            stCDS.DAY_CONVERT_CHECK_Cnt++;

            if (stCDS.DAY_CONVERT_CHECK_Cnt == stCDS.OFFSET)
            {
               stCDS.DAY_CONVERT_CHECK_Cnt = 0;
               stCDS.DAY_AND_NIGHT_CONVERT_FLAG = 0x01;
               stCDS.DAY_AND_NIGHT_CONVERT_MODE = 0x00;
            }
         }

         // 0:755, 1:775, 2:795, 3:815, 4:835, 5:855, 6:875, 7:895, 8:915, 9:935, 10:955
         if ((stCDS.NIGHT_CONVERT_CHECK_Cnt > 0) && (!(u_Data_Convert > (1100 + (stCDS.DAY_AND_NIGHT_LEVEL * 20)))))
         {
            stCDS.NIGHT_CONVERT_CHECK_Cnt = 0;
         }
         else if ((stCDS.DAY_CONVERT_CHECK_Cnt > 0) && (!(u_Data_Convert < (800 + (stCDS.DAY_AND_NIGHT_LEVEL * 20)))))
         {
            stCDS.DAY_CONVERT_CHECK_Cnt = 0;
         }
      }
   }
}

/*******************************************************************************
* Function Name  : AT24C256C_EEPROM_Write
*******************************************************************************/
void AT24C256C_EEPROM_Write(u16 EepAddr, u8 EepData)
{
   I2C2_Write(AT24C256_ADDR, EepAddr, EepData);
}

/*******************************************************************************
* Function Name  : AT24C256C_EEPROM_Read
*******************************************************************************/
u8 AT24C256C_EEPROM_Read(u16 EepAddr)
{
   return I2C2_Read(AT24C256_ADDR, EepAddr);
}

/*******************************************************************************
* Function Name  : MDIN_Sprite_Initialization
*******************************************************************************/
void MDIN_Sprite_Initialization(u8 u_Layer, u8 u_OnOff)
{
   u8 u_ID = 0x00;
   u8 u_Rx_Data[50];

   switch (u_Layer)
   {
      // Layer 0 : Information
   case MDIN_LAYER_INFORMATION:

      stOSD.LAYER_NUM = u_Layer;

      u_ID = u_Layer;			// ID

      u_Rx_Data[0] = 0x0C;		// X position L
      u_Rx_Data[1] = 0x00;		// X position H

      u_Rx_Data[2] = 0x00;		// Y Position L
      u_Rx_Data[3] = 0x00;		// Y Position H

      u_Rx_Data[4] = 0xB0;		// Width L : 12 x 100 = 1200, 0xB0
      u_Rx_Data[5] = 0x04;		// Width H : 0x04

      u_Rx_Data[6] = 0xD0;		// Height L : 20 x 36 = 720, 0xD0
      u_Rx_Data[7] = 0x02;		// Height H : 0x02

      Send_MDIN_Data(MDIN_SPRITE_RECT, 0x09, u_ID, u_Rx_Data[0], u_Rx_Data[1], u_Rx_Data[2], u_Rx_Data[3], u_Rx_Data[4], u_Rx_Data[5], u_Rx_Data[6], u_Rx_Data[7], u_Rx_Data[8], u_Rx_Data[9],
                     u_Rx_Data[10], u_Rx_Data[11], u_Rx_Data[12], u_Rx_Data[13], u_Rx_Data[14], u_Rx_Data[15], u_Rx_Data[16], MDIN_COMMAND_TIMER_DELAY);

      u_ID = u_Layer;			// ID

      u_Rx_Data[0] = u_OnOff;	// ON
      u_Rx_Data[1] = 0x00;		// RESERVED

      Send_MDIN_Data(MDIN_SPRITE, 0x03, u_ID, u_Rx_Data[0], u_Rx_Data[1], u_Rx_Data[2], u_Rx_Data[3], u_Rx_Data[4], u_Rx_Data[5], u_Rx_Data[6], u_Rx_Data[7], u_Rx_Data[8], u_Rx_Data[9],
                     u_Rx_Data[10], u_Rx_Data[11], u_Rx_Data[12], u_Rx_Data[13], u_Rx_Data[14], u_Rx_Data[15], u_Rx_Data[16], MDIN_COMMAND_TIMER_DELAY);

      break;

      // Layer 1 : Information
   case MDIN_LAYER_TARGET:

      stOSD.LAYER_NUM = u_Layer;

      u_ID = u_Layer;			// ID

      u_Rx_Data[0] = 0x0C;		// X position L
      u_Rx_Data[1] = 0x00;		// X position H

      u_Rx_Data[2] = 0x00;		// Y Position L
      u_Rx_Data[3] = 0x00;		// Y Position H

      u_Rx_Data[4] = 0xB0;		// Width L : 12 x 100 = 1200, 0xB0
      u_Rx_Data[5] = 0x04;		// Width H : 0x04

      u_Rx_Data[6] = 0xBC;		// Height L : 20 x 35 = 700, 0xBC
      u_Rx_Data[7] = 0x02;		// Height H : 0x02

      Send_MDIN_Data(MDIN_SPRITE_RECT, 0x09, u_ID, u_Rx_Data[0], u_Rx_Data[1], u_Rx_Data[2], u_Rx_Data[3], u_Rx_Data[4], u_Rx_Data[5], u_Rx_Data[6], u_Rx_Data[7], u_Rx_Data[8], u_Rx_Data[9],
                     u_Rx_Data[10], u_Rx_Data[11], u_Rx_Data[12], u_Rx_Data[13], u_Rx_Data[14], u_Rx_Data[15], u_Rx_Data[16], MDIN_COMMAND_TIMER_DELAY);

      u_ID = u_Layer;			// ID

      u_Rx_Data[0] = u_OnOff;	// ON
      u_Rx_Data[1] = 0x00;		// RESERVED

      Send_MDIN_Data(MDIN_SPRITE, 0x03, u_ID, u_Rx_Data[0], u_Rx_Data[1], u_Rx_Data[2], u_Rx_Data[3], u_Rx_Data[4], u_Rx_Data[5], u_Rx_Data[6], u_Rx_Data[7], u_Rx_Data[8], u_Rx_Data[9],
                     u_Rx_Data[10], u_Rx_Data[11], u_Rx_Data[12], u_Rx_Data[13], u_Rx_Data[14], u_Rx_Data[15], u_Rx_Data[16], MDIN_COMMAND_TIMER_DELAY);

      break;

      // Layer 2 : Coordinate
   case MDIN_LAYER_COORDINATE:

      stOSD.LAYER_NUM = u_Layer;

      u_ID = u_Layer;			// ID

      u_Rx_Data[0] = 0x0C;		// X position L
      u_Rx_Data[1] = 0x00;		// X position H

      u_Rx_Data[2] = 0xA8;		// Y Position L
      u_Rx_Data[3] = 0x02;		// Y Position H

      u_Rx_Data[4] = 0xC0;		// Width L : 12 x 16 = 192, 0xC0
      u_Rx_Data[5] = 0x00;		// Width H : 0x00

      u_Rx_Data[6] = 0x14;		// HeightL : 20 x 1 = 20, 0x14
      u_Rx_Data[7] = 0x00;		// HeightL : 0x00

      Send_MDIN_Data(MDIN_SPRITE_RECT, 0x09, u_ID, u_Rx_Data[0], u_Rx_Data[1], u_Rx_Data[2], u_Rx_Data[3], u_Rx_Data[4], u_Rx_Data[5], u_Rx_Data[6], u_Rx_Data[7], u_Rx_Data[8], u_Rx_Data[9],
                     u_Rx_Data[10], u_Rx_Data[11], u_Rx_Data[12], u_Rx_Data[13], u_Rx_Data[14], u_Rx_Data[15], u_Rx_Data[16], MDIN_COMMAND_TIMER_DELAY);

      u_ID = u_Layer;			// ID : Main 0

      u_Rx_Data[0] = u_OnOff;	// ON
      u_Rx_Data[1] = 0x00;		// RESERVED

      Send_MDIN_Data(MDIN_SPRITE, 0x03, u_ID, u_Rx_Data[0], u_Rx_Data[1], u_Rx_Data[2], u_Rx_Data[3], u_Rx_Data[4], u_Rx_Data[5], u_Rx_Data[6], u_Rx_Data[7], u_Rx_Data[8], u_Rx_Data[9],
                     u_Rx_Data[10], u_Rx_Data[11], u_Rx_Data[12], u_Rx_Data[13], u_Rx_Data[14], u_Rx_Data[15], u_Rx_Data[16], MDIN_COMMAND_TIMER_DELAY);

      break;

      // Layer 7 : Center Message
   case MDIN_LAYER_CENTER_MSG:

      stOSD.LAYER_NUM = u_Layer;

      u_ID = u_Layer;			// ID

      u_Rx_Data[0] = 0x0C;		// X position L
      u_Rx_Data[1] = 0x00;		// X position H

      u_Rx_Data[2] = 0xC8;		// Y Position L
      u_Rx_Data[3] = 0x00;		// Y Position H

      u_Rx_Data[4] = 0xB0;		// Width L : 12 x 100 = 1200, 0xB0
      u_Rx_Data[5] = 0x04;		// Width H : 0x04

      u_Rx_Data[6] = 0xB4;		// HeightL : 20 x 9 = 180, 0xB4
      u_Rx_Data[7] = 0x00;		// HeightL : 0x00

      Send_MDIN_Data(MDIN_SPRITE_RECT, 0x09, u_ID, u_Rx_Data[0], u_Rx_Data[1], u_Rx_Data[2], u_Rx_Data[3], u_Rx_Data[4], u_Rx_Data[5], u_Rx_Data[6], u_Rx_Data[7], u_Rx_Data[8], u_Rx_Data[9],
                     u_Rx_Data[10], u_Rx_Data[11], u_Rx_Data[12], u_Rx_Data[13], u_Rx_Data[14], u_Rx_Data[15], u_Rx_Data[16], MDIN_COMMAND_TIMER_DELAY);

      u_ID = u_Layer;			// ID

      u_Rx_Data[0] = u_OnOff;	// ON
      u_Rx_Data[1] = 0x00;		// RESERVED

      Send_MDIN_Data(MDIN_SPRITE, 0x03, u_ID, u_Rx_Data[0], u_Rx_Data[1], u_Rx_Data[2], u_Rx_Data[3], u_Rx_Data[4], u_Rx_Data[5], u_Rx_Data[6], u_Rx_Data[7], u_Rx_Data[8], u_Rx_Data[9],
                     u_Rx_Data[10], u_Rx_Data[11], u_Rx_Data[12], u_Rx_Data[13], u_Rx_Data[14], u_Rx_Data[15], u_Rx_Data[16], MDIN_COMMAND_TIMER_DELAY);

      break;

   default:
      break;
   }



}

/*******************************************************************************
* Function Name  : MDIN_I550_Initialization
*******************************************************************************/
void MDIN_I550_Initialization(void)
{
   u8 u_Port_Check = 0x01;

   MDIN_RESET_LOW;
   Delay_ms(20);

   MDIN_RESET_HIGH;
   Delay_ms(60);

   while (u_Port_Check)
   {
      if (MDIN_I550_INT == 0x01)
      {
         u_Port_Check = 0x00;
      }
   }

   // DELAY TIME
   Delay_ms(100);

   // MDIN SETTING
   //Send_MDIN_Data(MDIN_INITIALIZATION, 0x03, 0x00, 0x00, 0x03, MDIN_COMMAND_TIMER_DELAY);
   //Send_MDIN_Data(MDIN_INPUT_RESOLUTION, 0x03, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, MDIN_COMMAND_TIMER_DELAY);
   //Send_MDIN_Data(MDIN_OUTPUT_RESOLUTION, 0x03, 0x0E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, MDIN_COMMAND_TIMER_DELAY);

   // DELAY TIME
   Delay_ms(100);

   // SPRITE SETTING
   //MDIN_Sprite_Initialization(MDIN_LAYER_COORDINATE, bON);
   //Delay_ms(100);
   MDIN_Sprite_Initialization(MDIN_LAYER_CENTER_MSG, bON);
   Delay_ms(100);

}

/*******************************************************************************
* Function Name  : TW9900_DECODER_RESET_Low
*******************************************************************************/
void TW9900_DECODER_RESET_Low(void)
// Low:Reset
{
   GPIO_ResetBits(GPIOC, GPIO_Pin_5);
}

/*******************************************************************************
* Function Name  : TW9900_DECODER_RESET_Low
*******************************************************************************/
void TW9900_DECODER_RESET_High(void)
// High:Normal
{
   GPIO_SetBits(GPIOC, GPIO_Pin_5);
}

/*******************************************************************************
* TW9900
*******************************************************************************/
const char defTW9900Sys[2][112]	=
   {
      //      00    01    02    03    04    05    06    07    08    09    0A    0B    0C    0D    0E    0F	// NTSC
      {
         0x00, 0x00, 0x40, 0xA0, 0x00, 0x00, 0x00, 0x02, 0x14, 0xF0, 0x11, 0xD0, 0xDC, 0x00, 0x11, 0x00,       //00
         0xFE, 0x6F, 0x31, 0x80, 0x80, 0x00, 0x00, 0x30, 0x44, 0x58, 0x0A, 0x00, 0x07, 0x7F, 0x08, 0x00,       //01
         0x50, 0x42, 0xF0, 0xD8, 0xBC, 0xB8, 0x44, 0x2A, 0x00, 0x00, 0x78, 0x44, 0x30, 0x14, 0xA5, 0xE6,       //02
         0x00, 0x00, 0x00, 0x05, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,       //03
         0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x40, 0x00, 0x00,       //04
         0xA0, 0x22, 0x31, 0x80, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,       //05
         0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x24, 0x00, 0x00, 0x13    //06
      },

      //      00    01    02    03    04    05    06    07    08    09    0A    0B    0C    0D    0E    0F	// PAL
      {
         0x00, 0x00, 0x40, 0xA0, 0x00, 0x00, 0x00, 0x12, 0x17, 0x20, 0x0C, 0xD0, 0xDC, 0x00, 0x11, 0x00,       //00
         0x0C, 0x67, 0x20, 0x7E, 0x7C, 0x00, 0x00, 0x30, 0x44, 0x58, 0x0A, 0x00, 0x07, 0x7F, 0x08, 0x00,       //01
         0x50, 0x42, 0xF0, 0xD8, 0xBC, 0xB8, 0x44, 0x2A, 0x00, 0x00, 0x78, 0x44, 0x30, 0x14, 0xA5, 0xE6,       //02
         0x00, 0x00, 0x00, 0x05, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,       //03
         0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x50, 0x00, 0x00,       //04
         0xA0, 0x22, 0x31, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,       //05
         0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x24, 0x00, 0x00, 0x13    //06
      }
   };

const char defTW9900Thermal[2][112]	=
   {
      // NTSC
      {
         //		  00    01    02    03    04    05    06    07    08    09    0A    0B    0C    0D    0E    0F
         0x00, 0x00, 0x40, 0xA0, 0x00, 0x00, 0x00, 0x02, 0x15, 0xF4, 0x00, 0xE0, 0xDC, 0x00, 0x11, 0x00,
         0xFE, 0x6F, 0x31, 0x80, 0x80, 0x00, 0x00, 0x30, 0x44, 0x58, 0x0A, 0x00, 0x07, 0x7F, 0x08, 0x00,
         0x50, 0x42, 0xF0, 0xD8, 0xBC, 0xB8, 0x44, 0x2A, 0x00, 0x00, 0x78, 0x44, 0x30, 0x14, 0xA5, 0xE6,
         0x00, 0x00, 0x00, 0x05, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
         0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x40, 0x00, 0x00,
         0xA0, 0x22, 0x31, 0x80, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
         0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x24, 0x00, 0x00, 0x13,
      },

      // PAL
      {
         //		  00    01    02    03    04    05    06    07    08    09    0A    0B    0C    0D    0E    0F
         0x00, 0x00, 0x40, 0xA0, 0x00, 0x00, 0x00, 0x12, 0x17, 0x20, 0x0D, 0xE0, 0xDC, 0x00, 0x11, 0x00,
         0x0C, 0x67, 0x20, 0x7E, 0x7C, 0x00, 0x00, 0x30, 0x44, 0x58, 0x0A, 0x00, 0x07, 0x7F, 0x08, 0x00,
         0x50, 0x42, 0xF0, 0xD8, 0xBC, 0xB8, 0x44, 0x2A, 0x00, 0x00, 0x78, 0x44, 0x30, 0x14, 0xA5, 0xE6,
         0x00, 0x00, 0x00, 0x05, 0x1E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
         0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x05, 0x50, 0x00, 0x00,
         0xA0, 0x22, 0x31, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
         0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x06, 0x24, 0x00, 0x00, 0x13,
      },
   };

/*******************************************************************************
* Function Name  : TW9900_Initial
*******************************************************************************/
void TW9900_Initial(u8 VMode)
// VMode : NTSC_MODE/PAL_MODE
{
   u8 i;

   TW9900_DECODER_RESET_High();
   Delay_ms(100);

   for (i = 2; i < 0x70; i++)
   {
      TW9900_I2C1_ByteWrite(TW9900_ADDR, BYTE_ADDR, i, defTW9900Thermal[VMode - 1][i]);
   }
}

/*******************************************************************************
* Function Name  : VIDEO_Initialization
*******************************************************************************/
void VIDEO_Initialization(u8 u_Video_Mode)
{
   TW9900_DECODER_RESET_Low();
   MDIN_RESET_LOW;
   Delay_ms(50);

   switch (u_Video_Mode)
   {
   case NTSC_MODE:
      TW9900_Initial(NTSC_MODE);
      break;

   case PAL_MODE:
      TW9900_Initial(PAL_MODE);
      break;

   default:
      TW9900_Initial(NTSC_MODE);
      break;
   }
   Delay_ms(50);

   // 4. MDIN Initial
   Delay_1ms(10);
   MDIN_RESET_HIGH;
   Delay_1ms(1000);

   //MDIN_I550_Initialization();

}

/*******************************************************************************
* Function Name  : Send_Request_Data
*******************************************************************************/
void Send_Request_Data(u8 u_Cmd, u8 u_Index)
{
   u8 u8_Convert_Data[10];
   u16 u16_Convert_Data = 0x0000;

   switch (stINFO.MODULE_TYPE)
   {
   case SONY_MODULE:

      switch (u_Cmd)
      {
      case SONY_CALL_ZOOM_POSITION:

         u16_Convert_Data = stSONY.ZOOM_CNT;

         u8_Convert_Data[0] = (u8)(u16_Convert_Data >> 8);
         u8_Convert_Data[1] = (u8)(u16_Convert_Data & 0xFF);

         stUSART1.TX_BUF[0] = IP_SONY_FIRST_BYTE;
         stUSART1.TX_BUF[1] = IP_SONY_SECOND_BYTE;
         stUSART1.TX_BUF[2] = 0x05;

         stUSART1.TX_BUF[3] = 0x01;

         stUSART1.TX_BUF[4] = 0xB8;
         stUSART1.TX_BUF[5] = u8_Convert_Data[0];
         stUSART1.TX_BUF[6] = u8_Convert_Data[1];
         stUSART1.TX_BUF[7] = u8_Convert_Data[2];

         stUSART1.TX_BUF[8] = 0x00;
         stUSART1.TX_BUF[8] = stUSART1.TX_BUF[3] + stUSART1.TX_BUF[4] + stUSART1.TX_BUF[5] + stUSART1.TX_BUF[6] + stUSART1.TX_BUF[7];

         stUSART1.TX_BUF[9] = 0xAF;

         stUSART1.TX_CNT = 0;
         stUSART1.TX_MAX = 10;

         USART_SendData(USART1, stUSART1.TX_BUF[stUSART1.TX_CNT++]);
         Delay_1ms(MAIN_COMMAND_TIMER_DELAY);

         break;

      case SONY_CALL_FOCUS_POSITION:

         u16_Convert_Data = stSONY.FOCUS_CNT;

         u8_Convert_Data[0] = (u8)(u16_Convert_Data >> 8);
         u8_Convert_Data[1] = (u8)(u16_Convert_Data & 0xFF);

         stUSART1.TX_BUF[0] = IP_SONY_FIRST_BYTE;
         stUSART1.TX_BUF[1] = IP_SONY_SECOND_BYTE;
         stUSART1.TX_BUF[2] = 0x05;

         stUSART1.TX_BUF[3] = 0x01;

         stUSART1.TX_BUF[4] = u_Cmd;
         stUSART1.TX_BUF[5] = u8_Convert_Data[0];
         stUSART1.TX_BUF[6] = u8_Convert_Data[1];
         stUSART1.TX_BUF[7] = u8_Convert_Data[2];

         stUSART1.TX_BUF[8] = 0x00;
         stUSART1.TX_BUF[8] = stUSART1.TX_BUF[3] + stUSART1.TX_BUF[4] + stUSART1.TX_BUF[5] + stUSART1.TX_BUF[6] + stUSART1.TX_BUF[7];

         stUSART1.TX_BUF[9] = 0xAF;

         stUSART1.TX_CNT = 0;
         stUSART1.TX_MAX = 10;

         USART_SendData(USART1, stUSART1.TX_BUF[stUSART1.TX_CNT++]);
         Delay_1ms(MAIN_COMMAND_TIMER_DELAY);

         break;
      }

      break;

   case TSM_MODULE:

      switch (u_Cmd)
      {
      case TSM_CALL_TOTAL_ZOOM_POSITION:

         u16_Convert_Data = stTSM.ZOOM_CNT;

         u8_Convert_Data[0] = (u8)(u16_Convert_Data >> 8);
         u8_Convert_Data[1] = (u8)(u16_Convert_Data & 0xFF);

         stUSART1.TX_BUF[0] = IP_TSM_FIRST_BYTE;
         stUSART1.TX_BUF[1] = IP_TSM_SECOND_BYTE;
         stUSART1.TX_BUF[2] = 0x05;

         stUSART1.TX_BUF[3] = 0x01;

         stUSART1.TX_BUF[4] = u_Cmd;
         stUSART1.TX_BUF[5] = u8_Convert_Data[0];
         stUSART1.TX_BUF[6] = u8_Convert_Data[1];
         stUSART1.TX_BUF[7] = u8_Convert_Data[2];

         stUSART1.TX_BUF[8] = 0x00;
         stUSART1.TX_BUF[8] = stUSART1.TX_BUF[3] + stUSART1.TX_BUF[4] + stUSART1.TX_BUF[5] + stUSART1.TX_BUF[6] + stUSART1.TX_BUF[7];

         stUSART1.TX_BUF[9] = 0xBF;

         stUSART1.TX_CNT = 0;
         stUSART1.TX_MAX = 10;

         USART_SendData(USART1, stUSART1.TX_BUF[stUSART1.TX_CNT++]);
         Delay_1ms(MAIN_COMMAND_TIMER_DELAY);

         break;

      case TSM_CALL_FOCUS_POSITION:

         u16_Convert_Data = stTSM.FOCUS_CNT;

         u8_Convert_Data[0] = (u8)(u16_Convert_Data >> 8);
         u8_Convert_Data[1] = (u8)(u16_Convert_Data & 0xFF);

         stUSART1.TX_BUF[0] = IP_TSM_FIRST_BYTE;
         stUSART1.TX_BUF[1] = IP_TSM_SECOND_BYTE;
         stUSART1.TX_BUF[2] = 0x05;

         stUSART1.TX_BUF[3] = 0x01;

         stUSART1.TX_BUF[4] = u_Cmd;
         stUSART1.TX_BUF[5] = u8_Convert_Data[0];
         stUSART1.TX_BUF[6] = u8_Convert_Data[1];
         stUSART1.TX_BUF[7] = u8_Convert_Data[2];

         stUSART1.TX_BUF[8] = 0x00;
         stUSART1.TX_BUF[8] = stUSART1.TX_BUF[3] + stUSART1.TX_BUF[4] + stUSART1.TX_BUF[5] + stUSART1.TX_BUF[6] + stUSART1.TX_BUF[7];

         stUSART1.TX_BUF[9] = 0xBF;

         stUSART1.TX_CNT = 0;
         stUSART1.TX_MAX = 10;

         USART_SendData(USART1, stUSART1.TX_BUF[stUSART1.TX_CNT++]);
         Delay_1ms(MAIN_COMMAND_TIMER_DELAY);

         break;

      default:
         break;
      }

      break;
   }


}

u8 Data_Test = 0;

/*******************************************************************************
* Function Name  : Module_Auto_Sync
*******************************************************************************/
void Module_Auto_Sync(void)
{
   UART4_Init(9600);
   Delay_1ms(500);

   stUART4.RX_REQUEST_CMD = SONY_POWER_INQ;
   Send_Sony_Data(0x00, 0x00, 0x00, 0x05, SONY_COMMAND_TIMER_DELAY);
   Delay_1ms(SONY_REQUEST_TIMER_DELAY);
   Delay_1ms(500);

   UART4_Init(38400);
   Delay_1ms(500);

   stUART4.RX_REQUEST_CMD = TSM_CALL_MODULE_STATUS;
   Send_TSM_Data(TSM_CALL_MODULE_STATUS, 0x00, 0x00, 0x00, 0x06, TSM_COMMAND_TIMER_DELAY);
   Delay_1ms(TSM_REQUEST_TIMER_MAX);
   Delay_1ms(500);
}

/*******************************************************************************
* Function Name  : EEPROM_Memory_Read
*******************************************************************************/
void EEPROM_Memory_Read(void)
{
   u8 u_EEP_Mark = 0x00;

   u_EEP_Mark = AT24C256C_EEPROM_Read(EEP_PROM_MARK);

   // =======================================
   // Data Read
   // =======================================
   if (u_EEP_Mark == EEP_HEADER)
   {
      switch (stINFO.MODULE_TYPE)
      {
      case SONY_MODULE:

         // --------------------------------------------------------------------------------------------------//
         // 1. Color Module Control Command (0xAx)																 //
         // --------------------------------------------------------------------------------------------------//

         // 1.1.	Set Focus Mode (0x91)
         stSONY.SET_FOCUS_MODE = AT24C256C_EEPROM_Read(EEP_SET_FOCUS_MODE);

         // 1.2.	Set Auto Focus Mode (0x93)
         stSONY.SET_AUTO_FOCUS_MODE = AT24C256C_EEPROM_Read(EEP_SET_AUTO_FOCUS_MODE);

         // 1.3.	Manual Focus Mode (0x08)
         // 1.4.	Manual Focus Direct (0x48)
         // 1.5.	Manual Zoom Mode (0x07)
         // 1.6.	Manual Zoom Direct (0x47)

         // 1.7.	Set BLC Mode (0x31)
         stSONY.SET_BLC_MODE = AT24C256C_EEPROM_Read(EEP_SET_BLC_MODE);

         // 1.8.	Set White Balance Mode (0x33)
         stSONY.SET_WHITE_BALANCE_MODE = AT24C256C_EEPROM_Read(EEP_SET_WHITE_BALANCE_MODE);

         // 1.9.	Set Defog Mode (0x37)
         stSONY.SET_DEFOG_MODE = AT24C256C_EEPROM_Read(EEP_SET_DEFOG_MODE);

         // 1.10.	Set Shutter Speed (0x4A)
         stSONY.SET_SHUTTER_SPEED = AT24C256C_EEPROM_Read(EEP_SET_SHUTTER_SPEED);

         // 1.11.	Set Flicker Mode (0x55)
         stSONY.SET_FLICKER_MODE = AT24C256C_EEPROM_Read(EEP_SET_FLICKER_MODE);

         // 1.12.	Set Aperture Value (0x59)
         stSONY.SET_APERTURE_VALUE = AT24C256C_EEPROM_Read(EEP_SET_APERTURE_VALUE);

         // 1.13.	Set Digital Zoom Mode (0x5B)
         stSONY.SET_DIGITAL_ZOOM_MODE = AT24C256C_EEPROM_Read(EEP_SET_DIGITAL_ZOOM_MODE);

         // 1.14.	Set Day & Night Mode (0x5F)
         stSONY.SET_DAY_NIGHT_MODE = AT24C256C_EEPROM_Read(EEP_SET_DAY_NIGHT_MODE);

         // 1.15.	Set DSS Mode (0x61)
         stSONY.SET_DSS_MODE = AT24C256C_EEPROM_Read(EEP_SET_DSS_MODE);

         // 1.16.	Select BLC / WDR (0x85)
         stSONY.SELECT_BLC_WDR = AT24C256C_EEPROM_Read(EEP_SELECT_BLC_WDR);

         // 1.17.	Set High Resolution (0x87)
         stSONY.SET_HIGH_RESOLUTION = AT24C256C_EEPROM_Read(EEP_SET_HIGH_RESOLUTION);

         // 1.18.	Set Image Stabilizer (0x89)
         stSONY.SET_IMAGE_STABILIZER = AT24C256C_EEPROM_Read(EEP_SET_IMAGE_STABILIZER);

         // 1.19.	Set Noise Reduction (0x8B)
         stSONY.SET_NOISE_REDUCTION = AT24C256C_EEPROM_Read(EEP_SET_NOISE_REDUCTION);

         // ETC.
         stSONY.SET_NTSC_PAL_MODE = AT24C256C_EEPROM_Read(EEP_SET_NTSC_PAL_MODE);

         stSONY.SET_MANUAL_FOCUS_DATA = (AT24C256C_EEPROM_Read(EEP_MANUAL_FOCUS_DATA) << 8);
         stSONY.SET_MANUAL_FOCUS_DATA |= AT24C256C_EEPROM_Read(EEP_MANUAL_FOCUS_DATA + 1);

         // --------------------------------------------------------------------------------------------------//
         // 5. Option Command (0xEx)																			 //
         // --------------------------------------------------------------------------------------------------//
         // 5.2. Set Wiper (0x02)
         stWIPER2.COUNT = AT24C256C_EEPROM_Read(EEP_SET_WIPER_COUNT);
         stWIPER2.DWELL_TIME = AT24C256C_EEPROM_Read(EEP_SET_WIPER_DWELL_TIME);

         // 5.22. Set Wiper Option (0x22)
         stWIPER2.OPTION = AT24C256C_EEPROM_Read(EEP_SET_WIPER_OPTION);
         stWIPER2.SPRITE_TIME = AT24C256C_EEPROM_Read(EEP_SET_WASHER_SPRITE_TIME);
         stWIPER2.CONTINUOUS_TIME = AT24C256C_EEPROM_Read(EEP_SET_WIPER_CONTINUOUS_TIME);

         break;

      case TSM_MODULE:

         // --------------------------------------------------------------------------------------------------//
         // 2. Thermal Module Control Command (0xBx)																 //
         // --------------------------------------------------------------------------------------------------//

         // 2.1.4. Shutter Set (0x05)
         stTSM.SHUTTER_SET = AT24C256C_EEPROM_Read(EEP_SHUTTER_SET);

         // 2.1.15. Digital Zoom Enable (0x1C)
         stTSM.DIGITAL_ZOOM_ENABLE = AT24C256C_EEPROM_Read(EEP_DIGITAL_ZOOM_ENABLE);

         // 2.1.19. AGC Mode Set (0x26)
         stTSM.AGC_MODE_SET = AT24C256C_EEPROM_Read(EEP_AGC_MODE_SET);

         // 2.1.20. Color Mode Set (0x27)
         stTSM.COLOR_MODE_SET = AT24C256C_EEPROM_Read(EEP_COLOR_MODE_SET);

         // 2.1.21. Contrast/Brightness (0x28) (when, AGC OFF)
         stTSM.CONTRAST_BRIGHTNESS_ENABLE = AT24C256C_EEPROM_Read(EEP_CONTRAST_BRIGHTNESS_ENABLE);
         stTSM.CONTRAST_BRIGHTNESS_VAL = AT24C256C_EEPROM_Read(EEP_CONTRAST_BRIGHTNESS_VAL);

         // 2.1.22. AGC Center Position Set (0x29)
         stTSM.AGC_CENTER_POSITION_SET = AT24C256C_EEPROM_Read(EEP_AGC_CENTER_POSITION_SET);

         // 2.1.23. AGC Limit Level Set (0x2A)
         stTSM.AGC_LIMIT_LEVEL_SET = AT24C256C_EEPROM_Read(EEP_AGC_LIMIT_LEVEL_SET);

         // 2.1.24. AGC ROI (AGC Region of Interest) Set (0x2B)
         stTSM.AGC_ROI = AT24C256C_EEPROM_Read(EEP_AGC_ROI);

         // 2.1.25. MIDE Level Set (0x2C) (when, Sharpness OFF)
         stTSM.MIDE_LEVEL_SET = AT24C256C_EEPROM_Read(EEP_MIDE_LEVEL_SET);

         // 2.1.26. Sharpness Level Set (0x2D) (when, MIDE OFF)
         stTSM.SHARPNESS_LEVEL_SET = AT24C256C_EEPROM_Read(EEP_SHARPNESS_LEVEL_SET);

         // 2.1.27. Detect Mode Set (0x31)
         // 2.1.28. Area Position Set (0x32)
         // 2.1.29. Spot Position Set (0x33)
         // 2.1.30. High Alarm Temperature (0x34)
         // 2.1.31. Low Alarm Temperature (0x35)
         // 2.1.32. Select Alarm (0x36)
         // 2.1.33. Alarm Mode (0x37)
         // 2.1.34. Temperature OSD (0x38)
         // 2.1.35. Emissivity Set (0x39)
         // 2.1.36. Mirror Mode Set (0x44)
         // 2.1.37. Flip Mode Set (0x45)

         // 2.1.39. Image Color Inverse(White/Black Hot) Set (0x47)
         stTSM.IMAGE_COLOR_INVERSE_SET = AT24C256C_EEPROM_Read(EEP_IMAGE_COLOR_INVERSE_SET);

         break;
      }
   }

   // =======================================
   // Data Write
   // =======================================
   else
   {
      switch (stINFO.MODULE_TYPE)
      {
      case SONY_MODULE:

         // --------------------------------------------------------------------------------------------------//
         // STATUS																						 	 //
         // --------------------------------------------------------------------------------------------------//
         stSONY.SET_NTSC_PAL_MODE = NTSC_MODE;
         AT24C256C_EEPROM_Write(EEP_SET_NTSC_PAL_MODE, stSONY.SET_NTSC_PAL_MODE);

         // --------------------------------------------------------------------------------------------------//
         // 1. Color Module Control Command (0xAx)																 //
         // --------------------------------------------------------------------------------------------------//

         /***************************************************************************************************************************
         * 1.1.	Set Focus Mode (0x91)
            - 0x00 : Auto Focus
            - 0x01 : Manual Focus
            - 0x02 : One Push Trigger
         ****************************************************************************************************************************/
         stSONY.SET_FOCUS_MODE = 0x00;
         AT24C256C_EEPROM_Write(EEP_SET_FOCUS_MODE, stSONY.SET_FOCUS_MODE);

         /***************************************************************************************************************************
         * 1.2.	Set Auto Focus Mode (0x93)
            - 0x00 : Normal 
            - 0x01 : Zoom Trigger
         ****************************************************************************************************************************/
         stSONY.SET_AUTO_FOCUS_MODE = 0x00;
         AT24C256C_EEPROM_Write(EEP_SET_AUTO_FOCUS_MODE, stSONY.SET_AUTO_FOCUS_MODE);

         // 1.3.	Manual Focus Mode (0x08)
         // 1.4.	Manual Focus Direct (0x48)
         // 1.5.	Manual Zoom Mode (0x07)
         // 1.6.	Manual Zoom Direct (0x47)

         /***************************************************************************************************************************
         * 1.7.	Set BLC Mode (0x31)
            - 0x00 : BLC/WDR OFF
            - 0x01 : BLC ON
            - 0x10 : WDR ON
            - 0x11 : BLC/WDR ON
         ****************************************************************************************************************************/
         stSONY.SET_BLC_MODE = 0x00;
         AT24C256C_EEPROM_Write(EEP_SET_BLC_MODE, stSONY.SET_BLC_MODE);

         /***************************************************************************************************************************
         * 1.8.	Set White Balance Mode (0x33)
            - 0x00 : Auto white balance Mode (Range : 3000 to 7500K)
            - 0x01 : In door Mode
            - 0x02 : Out door Mode
            - 0x03 : Auto tracing white balance Mode (Range : 2000 to 10000K))
         ****************************************************************************************************************************/
         stSONY.SET_WHITE_BALANCE_MODE = 0x00;
         AT24C256C_EEPROM_Write(EEP_SET_WHITE_BALANCE_MODE, stSONY.SET_WHITE_BALANCE_MODE);

         /***************************************************************************************************************************
         * 1.9.	Set Defog Mode (0x37)
            - 0x00 : Defog Off
            - 0x01 : Defog On
         ****************************************************************************************************************************/
         stSONY.SET_DEFOG_MODE = 0x00;
         AT24C256C_EEPROM_Write(EEP_SET_DEFOG_MODE, stSONY.SET_DEFOG_MODE);

         /***************************************************************************************************************************
         * 1.10.	Set Shutter Speed (0x4A)
            - 0x00 : Shutter Speed Auto
            - 0x00~0x16 (when, DSS On)
            - 0x00, 0x07~0x16 (when, DSS Off)
         ****************************************************************************************************************************/
         stSONY.SET_SHUTTER_SPEED = 0x00;
         AT24C256C_EEPROM_Write(EEP_SET_SHUTTER_SPEED, stSONY.SET_SHUTTER_SPEED);

         /***************************************************************************************************************************
         * 1.11.	Set Flicker Mode (0x55)
            - 0x00 : Flicker OFF
            - 0x01 : Flicker ON
         ****************************************************************************************************************************/
         stSONY.SET_FLICKER_MODE = 0x00;
         AT24C256C_EEPROM_Write(EEP_SET_FLICKER_MODE, stSONY.SET_FLICKER_MODE);

         /***************************************************************************************************************************
         * 1.12.	Set Aperture Value (0x59)
            - 0x00~0x0F (16 Step)
         ****************************************************************************************************************************/
         stSONY.SET_APERTURE_VALUE = 0x00;
         AT24C256C_EEPROM_Write(EEP_SET_APERTURE_VALUE, stSONY.SET_APERTURE_VALUE);

         /***************************************************************************************************************************
         * 1.13.	Set Digital Zoom Mode (0x5B)
            - 0x00 : D Zoom OFF
            - 0x01 : D Zoom ON
         ****************************************************************************************************************************/
         stSONY.SET_DIGITAL_ZOOM_MODE = 0x00;
         AT24C256C_EEPROM_Write(EEP_SET_DIGITAL_ZOOM_MODE, stSONY.SET_DIGITAL_ZOOM_MODE);

         /***************************************************************************************************************************
         * 1.14.	Set Day & Night Mode (0x5F)
            - 0x00 : Night Mode
            - 0x01 : Day Mode 
            - 0x02 : Auto Mode
         ****************************************************************************************************************************/
         stSONY.SET_DAY_NIGHT_MODE = 0x02;
         AT24C256C_EEPROM_Write(EEP_SET_DAY_NIGHT_MODE, stSONY.SET_DAY_NIGHT_MODE);

         /***************************************************************************************************************************
         * 1.15.	Set DSS Mode (0x61)
            - 0x00 : DSS OFF
            - 0x01 : DSS ON
         ****************************************************************************************************************************/
         stSONY.SET_DSS_MODE = 0x00;
         AT24C256C_EEPROM_Write(EEP_SET_DSS_MODE, stSONY.SET_DSS_MODE);

         /***************************************************************************************************************************
         * 1.16.	Select BLC / WDR (0x85)
            - 0x00 : BLC Mode Select
            - 0x01 : WDR Mode Select
         ****************************************************************************************************************************/
         stSONY.SELECT_BLC_WDR = 0x00;
         AT24C256C_EEPROM_Write(EEP_SELECT_BLC_WDR, stSONY.SELECT_BLC_WDR);

         /***************************************************************************************************************************
         * 1.17.	Set High Resolution (0x87)
            - 0x00 : HR Mode OFF
            - 0x01 : HR Mode On
         ****************************************************************************************************************************/
         stSONY.SET_HIGH_RESOLUTION = 0x00;
         AT24C256C_EEPROM_Write(EEP_SET_HIGH_RESOLUTION, stSONY.SET_HIGH_RESOLUTION);

         /***************************************************************************************************************************
         * 1.18.	Set Image Stabilizer (0x89)
            - 0x00 : IS Mode OFF
            - 0x01 : IS Mode On
         ****************************************************************************************************************************/
         stSONY.SET_IMAGE_STABILIZER = 0x00;
         AT24C256C_EEPROM_Write(EEP_SET_IMAGE_STABILIZER, stSONY.SET_IMAGE_STABILIZER);

         /***************************************************************************************************************************
         * 1.19.	Set Noise Reduction (0x8B)
            - 0x00 : NR OFF
            - 0x01~0x05 : NR ON [Sensitivity]
         ****************************************************************************************************************************/
         stSONY.SET_NOISE_REDUCTION = 0x00;
         AT24C256C_EEPROM_Write(EEP_SET_NOISE_REDUCTION, stSONY.SET_NOISE_REDUCTION);

         // --------------------------------------------------------------------------------------------------//
         // 5. Option Command (0xEx)																			 //
         // --------------------------------------------------------------------------------------------------//
         // 5.2. Set Wiper (0x02)
         stWIPER2.COUNT = 0x01;
         AT24C256C_EEPROM_Write(EEP_SET_WIPER_COUNT, stWIPER2.COUNT);

         stWIPER2.DWELL_TIME = 0x00;
         AT24C256C_EEPROM_Write(EEP_SET_WIPER_DWELL_TIME, stWIPER2.DWELL_TIME);

         // 5.22. Set Wiper Option (0x22)
         stWIPER2.OPTION = WIPER_NORMAL_MODE;
         AT24C256C_EEPROM_Write(EEP_SET_WIPER_OPTION, stWIPER2.OPTION);

         stWIPER2.SPRITE_TIME = 0x00;
         AT24C256C_EEPROM_Write(EEP_SET_WASHER_SPRITE_TIME, stWIPER2.SPRITE_TIME);

         stWIPER2.CONTINUOUS_TIME = 0x00;
         AT24C256C_EEPROM_Write(EEP_SET_WIPER_CONTINUOUS_TIME, stWIPER2.CONTINUOUS_TIME);

         break;

      case TSM_MODULE:

         // --------------------------------------------------------------------------------------------------//
         // STATUS																							 //
         // --------------------------------------------------------------------------------------------------//
         stTSM.SET_NTSC_PAL_MODE = NTSC_MODE;
         AT24C256C_EEPROM_Write(EEP_SET_NTSC_PAL_MODE, stTSM.SET_NTSC_PAL_MODE);

         // --------------------------------------------------------------------------------------------------//
         // 2. Thermal Module Control Command (0xBx)																 //
         // --------------------------------------------------------------------------------------------------//

         /***************************************************************************************************************************
         * 2.1.4. Shutter Set (0x05)
            - 0x00 = Shutter Open
           		   - 0x01 = Shutter Close
         ****************************************************************************************************************************/
         stTSM.SHUTTER_SET = 0x00;
         AT24C256C_EEPROM_Write(EEP_SHUTTER_SET, stTSM.SHUTTER_SET);

         /***************************************************************************************************************************
         * 2.1.15. Digital Zoom Enable (0x1C)
            - 0x00 = Shutter Open
           		   - 0x01 = Shutter Close
         ****************************************************************************************************************************/
         stTSM.DIGITAL_ZOOM_ENABLE = 0x00;
         AT24C256C_EEPROM_Write(EEP_DIGITAL_ZOOM_ENABLE, stTSM.DIGITAL_ZOOM_ENABLE);

         /***************************************************************************************************************************
         * 2.1.19. AGC Mode Set (0x26)
            - 0x00 = AGC Mode OFF
            - 0x01 = AGC Mode
            - 0x02 = WAGC Mode
         ****************************************************************************************************************************/
         stTSM.AGC_MODE_SET = 0x00;
         AT24C256C_EEPROM_Write(EEP_AGC_MODE_SET, stTSM.AGC_MODE_SET);

         /***************************************************************************************************************************
         * 2.1.20. Color Mode Set (0x27)
            - 0x00 = Gray Color Mode
            - 0x01 = Rainbow Color Mode
            - 0x02 = Iron Color Mode
            - 0x03 = Glowbow Color Mode
            - 0x04 = 2Color Mode
         ****************************************************************************************************************************/
         stTSM.COLOR_MODE_SET = 0x00;
         AT24C256C_EEPROM_Write(EEP_COLOR_MODE_SET, stTSM.COLOR_MODE_SET);

         /***************************************************************************************************************************
         * 2.1.21. Contrast/Brightness (0x28) (when, AGC OFF)
            - 0x00:None, 0x01:Contrast, 0x02:Brightnes
            - [1..255] = GAIN Level (default : 127)
            - [1..255] = OFFSET Level (default : 127)
         ****************************************************************************************************************************/
         stTSM.CONTRAST_BRIGHTNESS_ENABLE = 0x00;
         AT24C256C_EEPROM_Write(EEP_CONTRAST_BRIGHTNESS_ENABLE, stTSM.CONTRAST_BRIGHTNESS_ENABLE);

         stTSM.CONTRAST_BRIGHTNESS_VAL = 0x7F;
         AT24C256C_EEPROM_Write(EEP_CONTRAST_BRIGHTNESS_VAL, stTSM.CONTRAST_BRIGHTNESS_VAL);

         /***************************************************************************************************************************
         * 2.1.22. AGC Center Position Set (0x29)
            - [25..75%] default 50%
         ****************************************************************************************************************************/
         stTSM.AGC_CENTER_POSITION_SET = 50;
         AT24C256C_EEPROM_Write(EEP_AGC_CENTER_POSITION_SET, stTSM.AGC_CENTER_POSITION_SET);

         /***************************************************************************************************************************
         * 2.1.23. AGC Limit Level Set (0x2A)
            - [1..9] = AGC Limit Level
            - {1=X1, 2=X1.5, 3=X2, 4=X2.5, 5=X3, 6=X5, 7=X9, 8=X15, 9=X30}
         ****************************************************************************************************************************/
         stTSM.AGC_LIMIT_LEVEL_SET = 0x04;
         AT24C256C_EEPROM_Write(EEP_AGC_LIMIT_LEVEL_SET, stTSM.AGC_LIMIT_LEVEL_SET);

         /***************************************************************************************************************************
         * 2.1.24. AGC ROI (AGC Region of Interest) Set (0x2B)
            - 0x00 : FULL
            - 0x01 : CENTER
            - 0x02 : UNDER
            - 0x03 : UPPER
            - 0x04 : LEFT
            - 0x05 : RIGHT
         ****************************************************************************************************************************/
         stTSM.AGC_ROI = 0x01;
         AT24C256C_EEPROM_Write(EEP_AGC_ROI, stTSM.AGC_ROI);

         /***************************************************************************************************************************
         * 2.1.25. MIDE Level Set (0x2C) (when, Sharpness OFF)
            - [0..15] = {0:OFF, 1..15:MIDE Level}
         ****************************************************************************************************************************/
         stTSM.MIDE_LEVEL_SET = 0x00;
         AT24C256C_EEPROM_Write(EEP_MIDE_LEVEL_SET, stTSM.MIDE_LEVEL_SET);

         /***************************************************************************************************************************
         * 2.1.26. Sharpness Level Set (0x2D) (when, MIDE OFF)
            - [0..10] = {0:OFF, 1..10:Sharpness Level}
         ****************************************************************************************************************************/
         stTSM.SHARPNESS_LEVEL_SET = 0x00;
         AT24C256C_EEPROM_Write(EEP_SHARPNESS_LEVEL_SET, stTSM.SHARPNESS_LEVEL_SET);

         // 2.1.27. Detect Mode Set (0x31)
         // 2.1.28. Area Position Set (0x32)
         // 2.1.29. Spot Position Set (0x33)
         // 2.1.30. High Alarm Temperature (0x34)
         // 2.1.31. Low Alarm Temperature (0x35)
         // 2.1.32. Select Alarm (0x36)
         // 2.1.33. Alarm Mode (0x37)
         // 2.1.34. Temperature OSD (0x38)
         // 2.1.35. Emissivity Set (0x39)
         // 2.1.36. Mirror Mode Set (0x44)
         // 2.1.37. Flip Mode Set (0x45)

         /***************************************************************************************************************************
         * 2.1.39. Image Color Inverse(White/Black Hot) Set (0x47)
            - 0x00 = Inverse Mode OFF(White Hot)
            - 0x01 = Inverse Mode ON(Black Hot)
         ****************************************************************************************************************************/
         stTSM.IMAGE_COLOR_INVERSE_SET = 0x00;
         AT24C256C_EEPROM_Write(EEP_IMAGE_COLOR_INVERSE_SET, stTSM.IMAGE_COLOR_INVERSE_SET);

         break;
      }

      AT24C256C_EEPROM_Write(EEP_PROM_MARK, EEP_HEADER);

   }
}

/*******************************************************************************
* IBDR Main Function
*******************************************************************************/
int main(void)
{
   // =======================================
   // Initialization Device
   // =======================================
   Initial_Device();

   while (1)
   {

/* LED ON/OFF */
//	      LED_On_Red();
//	      Delay_1ms(500);
//	      LED_Off_Red();
//	      Delay_1ms(500);
//		  
//	      LED_On_Green();
//	      Delay_1ms(500);
//	      LED_Off_Green();
//	      Delay_1ms(500);
//		  
//	      LED_On_Yellow();
//	      Delay_1ms(500);
//	      LED_Off_Yellow();
//	      Delay_1ms(500);


/* SW + LED ON/OFF */
//	      User_SW_On_LED_Ren_On();

   }

} //End Main

