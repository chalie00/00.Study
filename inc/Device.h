
/*=================================================================================
Project Name 		:	TPV HD Type (HD IP THERMOGRAPHY PTZ CAMERA)
Author			:	phs@tbtsys.com
==================================================================================*/

/*******************************************************************************
* INCLUDE
*******************************************************************************/
#include "stm32f10x.h"
#include "Extern.h"
#include "stm32f10x_tim.h"
#include "Define.h"
#include "stm32f10x_adc.h"
#include "stm32f10x_dma.h"

/*******************************************************************************
* FUNCTION
*******************************************************************************/
void RCC_Configuration(void);
void NVIC_Configuration(void);
void GPIO_Configuration(void);
void EXTI_Configuration(void);
void Set_IR_EN_DutyPeriod(uint16_t val);		// TIM1_CH1
void Set_IR2_EN_DutyPeriod(uint16_t val);		// TIM1_CH4
void TIMER1_CH4_DutyPeriod(uint16_t val);	// TIM1_CH4
void TIMER_Init(void);
void USART1_Init(u16 BRate);
void USART2_Init(u16 BRate);
void USART3_Init(u32 BRate);
void DMA_Configuration(void);
void ADC_Configuration(void);
void Initial_Device(void);
void Initial_Wiper(u8 u_Type);
void Wiper_Function(u8 u_Type);

/*******************************************************************************
* DEFINE
*******************************************************************************/
#define ADC1_DR_Address    ((u32)0x4001244C)


