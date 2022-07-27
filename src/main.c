/*=================================================================================

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

