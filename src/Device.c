
#include "Device.h"
#include "Common.h"

/*******************************************************************************
* TYPE DEFINE STRUCTURE
*******************************************************************************/
USART_InitTypeDef USART_InitStructure;
NVIC_InitTypeDef NVIC_InitStructure;
GPIO_InitTypeDef GPIO_InitStructure;
TIM_TimeBaseInitTypeDef TIM_TimeBaseStructure;
TIM_OCInitTypeDef TIM_OCInitStructure;
EXTI_InitTypeDef EXTI_InitStructure;
DMA_InitTypeDef DMA_InitStructure;
ADC_InitTypeDef ADC_InitStructure;
RCC_ClocksTypeDef rcc_clocks;
I2C_InitTypeDef	I2C_InitStructure;

void I2C_Configuration(void);

uint16_t PrescalerValue = 0;


/*******************************************************************************
* Divece Initialization
*******************************************************************************/
void Initial_Device(void)
{
   RCC_Configuration();
   RCC_GetClocksFreq(&rcc_clocks);
   GPIO_Configuration();

   //TIMER_Init();
   //NVIC_Configuration();
   //EXTI_Configuration();
}


/*******************************************************************************
* Function : TIMER_Init
*******************************************************************************/
void TIMER_Init(void)
{
   uint16_t	period;
   period = (SystemCoreClock / 1200 ) - 1;
   PrescalerValue = (uint16_t) (SystemCoreClock / 120000);

   //TIM4 (CH3): GPIOB 8 LED Green
   //TIM4 (CH4): GPIOB 9 LED Red

   TIM_TimeBaseStructure.TIM_Period = 3600 - 1;
   TIM_TimeBaseStructure.TIM_Prescaler = 60000 - 1;
   TIM_TimeBaseStructure.TIM_ClockDivision = 0;
   TIM_TimeBaseStructure.TIM_CounterMode = TIM_CounterMode_Up;
   //TIM_TimeBaseStructure.TIM_RepetitionCounter = 0;
   TIM_TimeBaseInit(TIM4, &TIM_TimeBaseStructure);

   TIM_OCInitStructure.TIM_OutputState = TIM_OutputState_Disable;
   TIM_OC1Init(TIM4, &TIM_OCInitStructure);
   TIM_OC2Init(TIM4, &TIM_OCInitStructure);

   TIM_OCInitStructure.TIM_OutputState = TIM_OutputState_Enable;
   TIM_OCInitStructure.TIM_Pulse = 1;
   TIM_OCInitStructure.TIM_OCPolarity = TIM_OCPolarity_High;
   TIM_OCInitStructure.TIM_OCMode = TIM_OCMode_Toggle;
   TIM_OC3Init(TIM4, &TIM_OCInitStructure);
   TIM_Cmd(TIM4, ENABLE);

   TIM_OCInitStructure.TIM_OutputState = TIM_OutputState_Enable;
   TIM_OCInitStructure.TIM_Pulse = 1;
   TIM_OCInitStructure.TIM_OCPolarity = TIM_OCPolarity_Low;
   TIM_OCInitStructure.TIM_OCMode = TIM_OCMode_Toggle;
   TIM_OC4Init(TIM4, &TIM_OCInitStructure);
   TIM_Cmd(TIM4, ENABLE);


}

/*******************************************************************************
* Function : RCC_Configuration
*******************************************************************************/
void RCC_Configuration(void)
{
   SystemInit();

   /* GPIOx clock enable */
   RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA | RCC_APB2Periph_GPIOB | RCC_APB2Periph_GPIOC | RCC_APB2Periph_GPIOD | RCC_APB2Periph_AFIO, ENABLE);

   /* TIM clock enable */
   RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM4, ENABLE);


}

/*******************************************************************************
* Function : NVIC_Configuration
*******************************************************************************/
void NVIC_Configuration(void)
{

   NVIC_InitStructure.NVIC_IRQChannel = EXTI0_IRQn;
   NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0;
   NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
   NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
   NVIC_Init(&NVIC_InitStructure);

   NVIC_InitStructure.NVIC_IRQChannel = EXTI1_IRQn;
   NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0;
   NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
   NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
   NVIC_Init(&NVIC_InitStructure);

}

/*******************************************************************************
* Function : GPIO_Configuration
*******************************************************************************/
void GPIO_Configuration(void)
{

   //GPIOA Pin 0: Set The WKUP SW Of Mango B'd
   GPIO_InitStructure.GPIO_Pin = GPIO_Pin_0;
   GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPD;
   GPIO_InitStructure.GPIO_Speed = GPIO_Speed_2MHz;
   GPIO_Init(GPIOA, &GPIO_InitStructure);

   //GPIOA Pin 1: Set The UserKey SW Of Mango B'd
   GPIO_InitStructure.GPIO_Pin = GPIO_Pin_1;
   GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IPD;
   GPIO_InitStructure.GPIO_Speed = GPIO_Speed_2MHz;
   GPIO_Init(GPIOA, &GPIO_InitStructure);

   //GPIOB Pin5: Yellow, Pin8: Green, Pin9: Red
   GPIO_InitStructure.GPIO_Pin = GPIO_Pin_9 | GPIO_Pin_8 | GPIO_Pin_5;
   GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
   GPIO_InitStructure.GPIO_Speed = GPIO_Speed_2MHz;
   GPIO_Init(GPIOB, &GPIO_InitStructure);

	//GPIOC SevenSeg
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_0 | GPIO_Pin_1 | GPIO_Pin_2 | GPIO_Pin_3 | GPIO_Pin_4 |
								  GPIO_Pin_5 | GPIO_Pin_6 | GPIO_Pin_7 | GPIO_Pin_8;
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
    GPIO_Init(GPIOC, &GPIO_InitStructure);

}

void EXTI_Configuration(void){
	EXTI_InitStructure.EXTI_Line = EXTI_Line0;
	EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;
	EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Falling;
	EXTI_InitStructure.EXTI_LineCmd = ENABLE;
	EXTI_Init(&EXTI_InitStructure);

	EXTI_InitStructure.EXTI_Line = EXTI_Line1;
    EXTI_InitStructure.EXTI_Mode = EXTI_Mode_Interrupt;
	EXTI_InitStructure.EXTI_Trigger = EXTI_Trigger_Falling;
	EXTI_InitStructure.EXTI_LineCmd = ENABLE;
	EXTI_Init(&EXTI_InitStructure);

}


