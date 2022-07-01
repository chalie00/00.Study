
#include "Device.h"
#include "Common.h"

/*******************************************************************************
* TYPE DEFINE STRUCTURE
*******************************************************************************/
USART_InitTypeDef USART_InitStructure;
NVIC_InitTypeDef NVIC_InitStructure;
GPIO_InitTypeDef GPIO_InitStructure;
TIM_TimeBaseInitTypeDef  TIM_TimeBaseStructure;
TIM_OCInitTypeDef TIM_OCInitStructure;
DMA_InitTypeDef DMA_InitStructure;
ADC_InitTypeDef ADC_InitStructure;
RCC_ClocksTypeDef  rcc_clocks;
I2C_InitTypeDef	I2C_InitStructure;

void I2C_Configuration(void);


/*******************************************************************************/
uint16_t PrescalerValue = 0;

/*******************************************************************************
* Dipswitch_Mode_Check
1) MODE 1 
2) MODE 2
- 0x00 : IR LED
- 0x01 : LRF
*******************************************************************************/
void Dipswitch_Mode_Check(void)
{
	stDIP.MODE1 = DIP_MODE1;
	stDIP.MODE2 = DIP_MODE2;
}

/*******************************************************************************
* Divece Initialization
*******************************************************************************/
void Initial_Device(void)
{
	RCC_Configuration();
	RCC_GetClocksFreq(&rcc_clocks);
	GPIO_Configuration();

	TIMER_Init();

	// =======================================
	// Dip Switch Check
	// =======================================	
	Dipswitch_Mode_Check();
	
	// MAIN <-> TILT
	USART1_Init(115200);

	// MDIN <-> TILT
	USART2_Init(115200);

	// NONE
	//USART3_Init();

	// CAMERA <-> TILT
	UART4_Init(38400);

	// IP B/D <-> TILT
	UART5_Init(115200);
	
	if (SysTick_Config(rcc_clocks.SYSCLK_Frequency / 1000)) {while (1);}

	NVIC_Configuration();
	DMA_Configuration();
	ADC_Configuration();
	I2C_Configuration();		
}

/*******************************************************************************
* Function : USART1_Init
*******************************************************************************/
void USART1_Init(u16 BRate)
{
    USART_InitStructure.USART_BaudRate   = 115200;
    USART_InitStructure.USART_WordLength = USART_WordLength_8b;
    USART_InitStructure.USART_StopBits   = USART_StopBits_1;
    USART_InitStructure.USART_Parity     = USART_Parity_No ;
    USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
    USART_InitStructure.USART_Mode       = USART_Mode_Rx | USART_Mode_Tx;

    USART_Init(USART1, &USART_InitStructure);

    USART_ITConfig(USART1, USART_IT_RXNE, ENABLE);
    USART_ITConfig(USART1, USART_IT_TC, ENABLE);

    USART_Cmd(USART1, ENABLE);
}

/*******************************************************************************
* Function : USART2_Init
*******************************************************************************/
void USART2_Init(u16 BRate)
{
/*
	switch(BRate)
	{
		case LRF_MODE:
			
			USART_InitStructure.USART_BaudRate   = 19200;
			
			break;

		case IR_MODE:

			USART_InitStructure.USART_BaudRate   = 9600;
			
			break;
	}
*/
	USART_InitStructure.USART_BaudRate   = BRate;
	USART_InitStructure.USART_WordLength = USART_WordLength_8b;
	USART_InitStructure.USART_StopBits   = USART_StopBits_1;
	USART_InitStructure.USART_Parity     = USART_Parity_No ;
	USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
	USART_InitStructure.USART_Mode       = USART_Mode_Rx | USART_Mode_Tx;

	USART_Init(USART2, &USART_InitStructure);

	USART_ITConfig(USART2, USART_IT_RXNE, ENABLE);
	USART_ITConfig(USART2, USART_IT_TC, ENABLE);

	USART_Cmd(USART2, ENABLE);
}

/*******************************************************************************
* Function : USART3_Init
*******************************************************************************/
void USART3_Init(void)
{
    USART_InitStructure.USART_BaudRate   = 9600;//38400;
    USART_InitStructure.USART_WordLength = USART_WordLength_8b;
    USART_InitStructure.USART_StopBits   = USART_StopBits_1;
    USART_InitStructure.USART_Parity     = USART_Parity_No ;
    USART_InitStructure.USART_HardwareFlowControl
                                         = USART_HardwareFlowControl_None;
    USART_InitStructure.USART_Mode       = USART_Mode_Rx | USART_Mode_Tx;

    USART_Init(USART3, &USART_InitStructure);

    USART_ITConfig(USART3, USART_IT_RXNE, ENABLE);
    USART_ITConfig(USART3, USART_IT_TC, ENABLE);

    USART_Cmd(USART3, ENABLE);
}

/*******************************************************************************
* Function : UART4_Init
*******************************************************************************/
void UART4_Init(u32 BRate)
{
	USART_InitStructure.USART_BaudRate   	= BRate;
	USART_InitStructure.USART_WordLength 	= USART_WordLength_8b;
	USART_InitStructure.USART_StopBits   	= USART_StopBits_1;
	USART_InitStructure.USART_Parity     	= USART_Parity_No ;
	USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
	USART_InitStructure.USART_Mode       	= USART_Mode_Rx | USART_Mode_Tx;

	USART_Init(UART4, &USART_InitStructure);

	USART_ITConfig(UART4, USART_IT_RXNE, ENABLE);
	USART_ITConfig(UART4, USART_IT_TC, ENABLE);

	USART_Cmd(UART4, ENABLE);
}

/*******************************************************************************
* Function : UART5_Init
*******************************************************************************/
void UART5_Init(u32 BRate)
{
	USART_InitStructure.USART_BaudRate   	= BRate;
	USART_InitStructure.USART_WordLength 	= USART_WordLength_8b;
	USART_InitStructure.USART_StopBits   	= USART_StopBits_1;
	USART_InitStructure.USART_Parity     	= USART_Parity_No ;
	USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;
	USART_InitStructure.USART_Mode       	= USART_Mode_Rx | USART_Mode_Tx;

	USART_Init(UART5, &USART_InitStructure);

	USART_ITConfig(UART5, USART_IT_RXNE, ENABLE);
	USART_ITConfig(UART5, USART_IT_TC, ENABLE);

	USART_Cmd(UART5, ENABLE);
}

/*******************************************************************************
* Function : TIMER1_CH4_DutyPeriod
*******************************************************************************/
void TIMER1_CH4_DutyPeriod(uint16_t val) 
{
	uint16_t	period;
	uint16_t	pulse;

	if(val == 0)
	{
		period = (SystemCoreClock / 1200 ) - 1;
		pulse = (uint16_t) (((uint32_t) val * (period - 1)) / 100); 
		
		TIM_OCInitStructure.TIM_Pulse = pulse;
		TIM_OC4Init(TIM1, &TIM_OCInitStructure);

		/* TIM1 counter enable */
		//TIM_Cmd(TIM1, ENABLE);
		TIM_Cmd(TIM1, DISABLE);
		/* TIM1 Main Output Enable */
		TIM_CtrlPWMOutputs(TIM1, DISABLE);
	}
	else
	{
		period = (SystemCoreClock / 1200 ) - 1;
		pulse = (uint16_t) (((uint32_t) val * (period - 1)) / 100); 
		
		TIM_OCInitStructure.TIM_Pulse = pulse;
		TIM_OC4Init(TIM1, &TIM_OCInitStructure);

		/* TIM1 counter enable */
		//TIM_Cmd(TIM1, ENABLE);
		TIM_Cmd(TIM1, ENABLE);
		/* TIM1 Main Output Enable */
		TIM_CtrlPWMOutputs(TIM1, ENABLE);
	}
}

/*******************************************************************************
* Function : Wiper_Active
*******************************************************************************/
void Wiper_Active(void)
{
	if((stWIPER2.INITIALIZATION == 0x01) && (stWIPER2.FLAG == 0x01))
	{
		if(stWIPER2.COUNT)
		{
			stWIPER2.STATUS = 0x01;
			
			switch(stWIPER2.STEP)
			{
				case WIPER_READY:
					Run_Wiper(WIPER_ON, DIRECTION_CCW);			// Wiper On
					stWIPER2.STEP = WIPER_SENSOR1_OFF_CHECK;
					break;

				case WIPER_SENSOR1_OFF_CHECK:
					
					if(stWIPER2.SENSOR_1 == WIPER_SENS1_OFF) 
					{
						stWIPER2.STEP = WIPER_SENSOR2_ON_CHECK;
					}
					
					break;

				case WIPER_SENSOR2_ON_CHECK:
					
					if(stWIPER2.SENSOR_2 == WIPER_SENS2_ON) 
					{
						Run_Wiper(WIPER_OFF, DIRECTION_CCW);			// Wiper On
						Delay_1ms(1);
						Run_Wiper(WIPER_ON, DIRECTION_CW);				// Wiper On
						stWIPER2.STEP = WIPER_SENSOR2_OFF_CHECK;
					}
					
					break;

				case WIPER_SENSOR2_OFF_CHECK:

					if(stWIPER2.SENSOR_2 == WIPER_SENS2_OFF) 
					{
						stWIPER2.STEP = WIPER_END_CHECK;
					}
					
					break;

				case WIPER_END_CHECK:
					
					if(stWIPER2.SENSOR_1 == WIPER_SENS1_ON) 
					{
						Run_Wiper(WIPER_OFF, DIRECTION_CW);			// Wiper Off
						stWIPER2.STEP = WIPER_DWELL_CHECK;
						stWIPER2.DWELL_TIMER_FLAG = 0x01;

						if(stWIPER2.COUNT < 0x0F) stWIPER2.COUNT--;
					}
					
					break;

				case WIPER_DWELL_CHECK:

					if(stWIPER2.DWELL_TIME_DATA)
					{
						switch(stWIPER2.STOP_MODE)
						{
							case WIPER_STOP_READY:
								
								if(stWIPER2.DWELL_END_FLAG)
								{
									stWIPER2.STEP = WIPER_READY;
									stWIPER2.DWELL_END_FLAG = 0x00;
									stWIPER2.DWELL_TIMER_FLAG = 0x00;
								}								

								break;

							case WIPER_STOP_ORIGIN:
								
								stWIPER2.DWELL_TIMER_FLAG = 0x00;

								if(stWIPER2.DWELL_TIMER_ms) stWIPER2.DWELL_TIMER_ms = 0;
								if(stWIPER2.DWELL_TIMER_s) stWIPER2.DWELL_TIMER_s = 0;
								if(stWIPER2.COUNT > 0x00) stWIPER2.COUNT = 0x00;

								break;
						}
					}
					else
					{
						stWIPER2.STEP = WIPER_READY;
						stWIPER2.DWELL_END_FLAG = 0x00;
						stWIPER2.DWELL_TIMER_FLAG = 0x00;

						if(stWIPER2.STOP_MODE == WIPER_STOP_ORIGIN)
						{
							if(stWIPER2.COUNT > 0x00) stWIPER2.COUNT = 0x00;
						}					
					}

					break;

				default:
					break;
			}
		}
		else
		{
			stWIPER2.STATUS = 0x00;
			stWIPER2.FLAG = 0x00;
			stWIPER2.COUNT = 0x00;
		}
	}	
}

/*******************************************************************************
* Function : Wiper_Function
*******************************************************************************/
void Wiper_Function(u8 u_Type)
{
	switch(u_Type)
	{
		case 0x00:

			if(stWIPER2.STOP_MODE == WIPER_STOP_EMERGENCY)
			{
				Run_Wiper(WIPER_OFF, 0xFF);			// Wiper Off
				
				stWIPER2.STATUS = 0x00;
				stWIPER2.FLAG = 0x00;
				stWIPER2.COUNT = 0x00;
			}
			else
			{
				Wiper_Active();
			}
			
			if(stWIPER2.CONTINUOUS_STOP_FLAG == 0x01)
			{
				stWIPER2.CONTINUOUS_STOP_FLAG = 0x00;

				stWIPER2.STOP_MODE = WIPER_STOP_ORIGIN;

				if(stWIPER2.DWELL_TIMER_FLAG) stWIPER2.DWELL_TIMER_FLAG = 0x00;
				if(stWIPER2.CONTINUOUS_FLAG == 0x01) 
				{
					stWIPER2.CONTINUOUS_FLAG = 0x00;
				}		
			}
			
			break;

		case 0x01:

			if(stWIPER1.INITIALIZATION == 0x01)
			{
				if((stWIPER1.ACTIVE_COUNT != 0) && (stWIPER2.SENSOR_1 == WIPER_SENS1_ON) && (stWIPER2.STATUS == WIPER_OFF) && (stWIPER1.DWELL_FLAG == 0x00))
				{
					Run_Wiper(WIPER_ON, DIRECTION_CW);				// Wiper On
				}
			}

			break;

		default:
			break;
	}

}

/*******************************************************************************
* Function : Initial_Wiper
*******************************************************************************/
void Initial_Wiper(u8 u_Type)
{
	switch(u_Type)
	{
		case 0x00:

			if(stWIPER2.INITIALIZATION == 0x00)
			{
				switch(stWIPER2.STEP)
				{
					// ① Wiper 초기화를 위한 모터 동작 : CW → Sensor 1
					case WIPER_INITIAL:

						Run_Wiper(WIPER_ON, DIRECTION_CCW);			// Wiper On
						stWIPER2.STEP = WIPER_SENSOR1_ON_CHECK;
						
						break;


					// ② 초기화 위치 : Sensor 1 Stop
					case WIPER_SENSOR1_ON_CHECK:

						if(stWIPER2.SENSOR_1 == WIPER_SENS1_ON) 
						{
							Run_Wiper(WIPER_OFF, DIRECTION_CW);			// Wiper On
							stWIPER2.STEP = WIPER_READY;
							stWIPER2.INITIALIZATION = 0x01;
						}

						if(stWIPER2.SENSOR_2 == WIPER_SENS2_ON) 
						{
							Run_Wiper(WIPER_OFF, DIRECTION_CCW);			// Wiper On
							Delay_1ms(1);
							Run_Wiper(WIPER_ON, DIRECTION_CW);				// Wiper On
							stWIPER2.STEP = WIPER_SENSOR2_OFF_CHECK;
						}

						break;

					case WIPER_SENSOR2_OFF_CHECK:

						if(stWIPER2.SENSOR_2 == WIPER_SENS2_OFF) 
						{
							stWIPER2.STEP = WIPER_END_CHECK;
						}
						
						break;

					case WIPER_END_CHECK:
						
						if(stWIPER2.SENSOR_1 == WIPER_SENS1_ON) 
						{
							Run_Wiper(WIPER_OFF, DIRECTION_CW);			// Wiper Off
							stWIPER2.STEP = WIPER_READY;
							stWIPER2.INITIALIZATION = 0x01;
						}
						
						break;

					default:
						break;
				}
			}
	
			break;

		case 0x01:

			if(stWIPER1.INITIALIZATION == 0x00)
			{
				if(stWIPER2.SENSOR_1 == WIPER_SENS1_OFF) 
				{
					Run_Wiper(WIPER_ON, DIRECTION_CW);			// Wiper On
				}
				else
				{
					Run_Wiper(WIPER_OFF, DIRECTION_CW);			// Wiper Off
					stWIPER1.INITIALIZATION = 0x01;
				}
			}
			
			break;

		default:
			break;
	}
	

}

/*******************************************************************************
* Function : Run_Wiper
*******************************************************************************/
void Run_Wiper(u8 u_Cmd, u8 u_Direction)
{
	switch(u_Cmd)
	{
		case WIPER_OFF:
		
			WIPER_STOP;			
			TIMER1_CH4_DutyPeriod(1);

			stWIPER2.STATUS = WIPER_OFF;

			Wiper_Active_Flag = 0;	// 동작 상태를 체크하기 위해 항상 정지 시에는 0으로 해줄 것.
			break;
			
		case WIPER_ON:

			switch(u_Direction)
			{
				case 0x00:
					
					WIPER_CW;
					stWIPER2.DIRECTION = DIRECTION_CW;

					break;

				case 0x01:
					
					WIPER_CCW;
					stWIPER2.DIRECTION = DIRECTION_CCW;

					break;

				default:
					break;
			}
			
			WIPER_START;
			TIMER1_CH4_DutyPeriod(100);

			stWIPER2.STATUS = WIPER_ON;
			
			if(!Wiper_Error_Status_Flag) Wiper_Active_Flag = 1;	// 동작 상태를 체크하기 위해 항상 동작 시에는 1로 해줄 것.
			
			break;
	}
}

/*******************************************************************************
* Function : TIMER_Init
*******************************************************************************/
void TIMER_Init(void)
{
	uint16_t	period;
	//uint16_t	pulse;
	
	/* Timer Base configuration */
	/* Compute the value for the ARR register to have a period of 20 KHz */
	// 72000000/7200 = 10000 (10KHz)
	period = (SystemCoreClock / 1200 ) - 1;
	/* Compute the CCR1 value to generate a PWN signal with 50% duty cycle */
	//pulse = (uint16_t) (((uint32_t) 5 * (period - 1)) / 100);
	
	// TIMER1 TEST MODE !!!!
//		/* Time base configuration */
//		TIM_TimeBaseStructure.TIM_Period = period;
//		TIM_TimeBaseStructure.TIM_Prescaler = 0;
//		TIM_TimeBaseStructure.TIM_ClockDivision = 0;
//		TIM_TimeBaseStructure.TIM_CounterMode = TIM_CounterMode_Up;
//	
//		TIM_TimeBaseInit(TIM1, &TIM_TimeBaseStructure);
//	
//		/* PWM1 Mode configuration: Channel1 */
//		TIM_OCInitStructure.TIM_OCMode = TIM_OCMode_PWM1;
//		TIM_OCInitStructure.TIM_OutputState = TIM_OutputState_Enable;
//		TIM_OCInitStructure.TIM_Pulse = 0;//CCR1_Val;
//		TIM_OCInitStructure.TIM_OCPolarity = TIM_OCPolarity_High;
//	
//		TIM_OCInitStructure.TIM_OCNPolarity = TIM_OCNPolarity_Low;  
//		TIM_OCInitStructure.TIM_OCIdleState  = TIM_OCIdleState_Set;    
//		TIM_OCInitStructure.TIM_OCNIdleState  = TIM_OCIdleState_Reset;    
//	
//	
//		TIM_BDTRInitTypeDef TIM_BDTRInitStructure; 
//		// Automatic Output enable, Break, dead time and lock configuration    
//		TIM_BDTRInitStructure.TIM_OSSRState = TIM_OSSRState_Enable;   
//		TIM_BDTRInitStructure.TIM_OSSIState = TIM_OSSIState_Enable;   
//		TIM_BDTRInitStructure.TIM_LOCKLevel = TIM_LOCKLevel_1;   
//		TIM_BDTRInitStructure.TIM_DeadTime = 0x05;   
//		TIM_BDTRInitStructure.TIM_Break = TIM_Break_Disable;   
//		TIM_BDTRInitStructure.TIM_BreakPolarity = TIM_BreakPolarity_High;   
//		TIM_BDTRInitStructure.TIM_AutomaticOutput = TIM_AutomaticOutput_Enable;   
//	
//		TIM_BDTRConfig(TIM1, &TIM_BDTRInitStructure);  
//		TIM_OC1Init(TIM1, &TIM_OCInitStructure);
//		TIM_OC1PreloadConfig(TIM1, TIM_OCPreload_Enable);	
//	
//		/* TIM1 counter enable */
//		TIM_Cmd(TIM1, DISABLE);
//		//TIM_Cmd(TIM1, DISABLE);
//		/* TIM1 Main Output Enable */
//		TIM_CtrlPWMOutputs(TIM1, DISABLE);   

	PrescalerValue = (uint16_t) (SystemCoreClock /120000);
	
//		TIM_TimeBaseStructure.TIM_Period = 9500;
//		TIM_TimeBaseStructure.TIM_Prescaler = 0;
//		TIM_TimeBaseStructure.TIM_ClockDivision = 0;
//		TIM_TimeBaseStructure.TIM_CounterMode = TIM_CounterMode_Up;
//		//TIM_TimeBaseStructure.TIM_RepetitionCounter = 0;
//		TIM_TimeBaseInit(TIM2, &TIM_TimeBaseStructure);
//	
//		TIM_PrescalerConfig(TIM2, PrescalerValue, TIM_PSCReloadMode_Immediate);
//		TIM_ClearFlag(TIM2, TIM_FLAG_Update);
//		TIM_ITConfig(TIM2, TIM_FLAG_Update, ENABLE);
//		TIM_Cmd(TIM2, ENABLE);
//	
//		TIM_TimeBaseStructure.TIM_Period = 950;
//		TIM_TimeBaseStructure.TIM_Prescaler = 0;
//		TIM_TimeBaseStructure.TIM_ClockDivision = 0;
//		TIM_TimeBaseStructure.TIM_CounterMode = TIM_CounterMode_Up;
//		//TIM_TimeBaseStructure.TIM_RepetitionCounter = 0;
//		TIM_TimeBaseInit(TIM3, &TIM_TimeBaseStructure);
//	
//		TIM_PrescalerConfig(TIM3, PrescalerValue, TIM_PSCReloadMode_Immediate);
//		TIM_ClearFlag(TIM3, TIM_FLAG_Update);
//		TIM_ITConfig(TIM3, TIM_FLAG_Update, ENABLE);
//		TIM_Cmd(TIM3, ENABLE);

	


	//TIM4 (CH3): GPIOB 8 LED Green
	//TIM4 (CH4): GPIOB 9 LED Red
	
	TIM_TimeBaseStructure.TIM_Period = 3600-1;
	TIM_TimeBaseStructure.TIM_Prescaler = 60000-1;
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


	
	//TIM_PrescalerConfig(TIM4, PrescalerValue, TIM_PSCReloadMode_Immediate);
	//TIM_ClearFlag(TIM4, TIM_FLAG_Update); //s
	//TIM_ITConfig(TIM4, TIM_FLAG_Update, ENABLE);

	

}

/*******************************************************************************
* Function : RCC_Configuration
*******************************************************************************/
void RCC_Configuration(void)
{
	SystemInit();

	/* GPIOx clock enable */
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA |RCC_APB2Periph_GPIOB | RCC_APB2Periph_GPIOC | RCC_APB2Periph_GPIOD | RCC_APB2Periph_AFIO, ENABLE);

	RCC_APB2PeriphClockCmd(RCC_APB2Periph_USART1, ENABLE);
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART2, ENABLE);
	//RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART3, ENABLE);
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_UART4, ENABLE);
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_UART5, ENABLE);	

	/* I2C1,2 Periph clock enable */
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_I2C1, ENABLE);
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_I2C2, ENABLE);	
	
	 /* Enable DMA1 clock */
	RCC_AHBPeriphClockCmd(RCC_AHBPeriph_DMA1, ENABLE);

	/* ENABLE ADC1 and GPIO clock */
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_ADC1, ENABLE);

	/* TIM clock enable */
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_TIM1, ENABLE);
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM2, ENABLE);	
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM3, ENABLE);
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM4, ENABLE);	

	
}

/*******************************************************************************
* Function : NVIC_Configuration
*******************************************************************************/
void NVIC_Configuration(void)
{ 

	//  NVIC_PriorityGroupConfig(NVIC_PriorityGroup_0);

	NVIC_InitStructure.NVIC_IRQChannel = USART1_IRQn;
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 2;  
	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 2;
	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
	NVIC_Init(&NVIC_InitStructure);

	NVIC_InitStructure.NVIC_IRQChannel = USART2_IRQn;
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 3;  
	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 3;
	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
	NVIC_Init(&NVIC_InitStructure);

	/*
	NVIC_InitStructure.NVIC_IRQChannel = USART3_IRQn;
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 4;
	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 4;
	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
	NVIC_Init(&NVIC_InitStructure);  
	*/
	
	NVIC_InitStructure.NVIC_IRQChannel = UART4_IRQn;
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 4;
	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 4;
	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
	NVIC_Init(&NVIC_InitStructure);

	NVIC_InitStructure.NVIC_IRQChannel = UART5_IRQn;
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 5;  
	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 5;
	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
	NVIC_Init(&NVIC_InitStructure);	

	NVIC_InitStructure.NVIC_IRQChannel = TIM2_IRQn;
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 0;
	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 0;
	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
	NVIC_Init(&NVIC_InitStructure);

	NVIC_InitStructure.NVIC_IRQChannel = TIM3_IRQn;
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 1;
	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 1;
	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
	NVIC_Init(&NVIC_InitStructure);  

	NVIC_InitStructure.NVIC_IRQChannel = TIM4_IRQn;
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority = 6;
	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 6;
	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;
	NVIC_Init(&NVIC_InitStructure);  
	

	//RCC_AHBPeriphClockCmd(RCC_AHBPeriph_DMA1, ENABLE);
}

/*******************************************************************************
* Function : GPIO_Configuration
*******************************************************************************/
void GPIO_Configuration(void)
{
	// ========== GPIO A ===============================================
	// GPIO_Pin_0 : TEMPERATURE_ADC (IN)
	// GPIO_Pin_1 : MDIN_I550_INT
	// GPIO_Pin_2 : MDIN_I550_RX
	// GPIO_Pin_3 : MDIN_I550_TX
	// GPIO_Pin_4 : NC
	// GPIO_Pin_5 : NC
	// GPIO_Pin_6 : NC
	// GPIO_Pin_7 : NC
	// GPIO_Pin_8 : NC
	// GPIO_Pin_9 : USART1_Tx (OUT) : MAIN
	// GPIO_Pin_10 : USART1_Rx (IN) : MAIN
	// GPIO_Pin_11 : PWM (OUT)
	// GPIO_Pin_12 : NC
	// GPIO_Pin_13 : SWDIO
	// GPIO_Pin_14 : SWCLK
	// GPIO_Pin_15 : NC
	// ===============================================================

	// ----- Configure the INPUT-PIN --------------------
//		GPIO_InitStructure.GPIO_Pin = GPIO_Pin_0;
//		GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AIN;
//		GPIO_InitStructure.GPIO_Speed = GPIO_Speed_2MHz;
//		GPIO_Init(GPIOA, &GPIO_InitStructure);
//		
//		// ----- Configure the INPUT-PIN --------------------
//		GPIO_InitStructure.GPIO_Pin = GPIO_Pin_10|GPIO_Pin_3|GPIO_Pin_1;
//		GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
//		GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
//		GPIO_Init(GPIOA, &GPIO_InitStructure);
//		
//		// ----- Configure the OUTPUT-PIN -------------------
//		GPIO_InitStructure.GPIO_Pin = GPIO_Pin_9|GPIO_Pin_11|GPIO_Pin_2;
//		GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
//		GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
//		GPIO_Init(GPIOA, &GPIO_InitStructure);




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




	// ========== GPIO B ===============================================
	// GPIO_Pin_0 : NC
	// GPIO_Pin_1 : NC
	// GPIO_Pin_2 : MDIN_I550_RSTN
	// GPIO_Pin_3 : NC
	// GPIO_Pin_4 : NC
	// GPIO_Pin_5 : NC
	// GPIO_Pin_6 : TW9900_SCL
	// GPIO_Pin_7 : TW9900_SDA
	// GPIO_Pin_8 : NC
	// GPIO_Pin_9 : NC
	// GPIO_Pin_10 : AT24C256C_SCL
	// GPIO_Pin_11 : AT24C256C_SDA
	// GPIO_Pin_12 : MODE1 (IN)
	// GPIO_Pin_13 : MODE2 (IN)
	// GPIO_Pin_14 : 12V_EN
	// GPIO_Pin_15 : NC
	// ===============================================================

	// ----- Configure the INPUT-PIN --------------------
//		GPIO_InitStructure.GPIO_Pin = GPIO_Pin_14|GPIO_Pin_15;
//		GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
//		GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
//		GPIO_Init(GPIOB, &GPIO_InitStructure);
//	
//		// ----- Configure the OUTPUT-PIN -------------------
//		GPIO_InitStructure.GPIO_Pin = GPIO_Pin_10;
//		GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_OD;
//		GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
//		GPIO_Init(GPIOB, &GPIO_InitStructure);
//	
//		// ----- Configure the OUTPUT-PIN -------------------
//		GPIO_InitStructure.GPIO_Pin = GPIO_Pin_6 | GPIO_Pin_7;// | GPIO_Pin_10 | GPIO_Pin_11;
//		GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_OD;
//		GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
//		GPIO_Init(GPIOB, &GPIO_InitStructure);
//		
//		// ----- Configure the OUTPUT-PIN -------------------
//		GPIO_InitStructure.GPIO_Pin = GPIO_Pin_2|GPIO_Pin_11;//|GPIO_Pin_7|GPIO_Pin_11;
//		GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
//		GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
//		GPIO_Init(GPIOB, &GPIO_InitStructure);




			//GPIOB Pin5: Yellow, Pin8: Green, Pin9: Red
			GPIO_InitStructure.GPIO_Pin = GPIO_Pin_9 | GPIO_Pin_8 | GPIO_Pin_5;
			GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_OD;
			GPIO_InitStructure.GPIO_Speed = GPIO_Speed_2MHz;
			GPIO_Init(GPIOB, &GPIO_InitStructure);




	// ========== GPIO C ===============================================
	// GPIO_Pin_0 : WIPER1 SENSOR (IN)
	// GPIO_Pin_1 : WIPER2 SENSOR (IN)
	// GPIO_Pin_2 : NC
	// GPIO_Pin_3 : LED1 (OUT)
	// GPIO_Pin_4 : TW9900_IRQ
	// GPIO_Pin_5 : TW9900_RST
	// GPIO_Pin_6 : MOTOR START (OUT)
	// GPIO_Pin_7 : MOTOR FG (IN)
	// GPIO_Pin_8 : MOTOR CW/CCW (OUT)
	// GPIO_Pin_9 : NC
	// GPIO_Pin_10 : UART4_Tx (OUT) : CAMERA
	// GPIO_Pin_11 : UART4_Rx (IN) : CAMERA
	// GPIO_Pin_12 : UART5_Tx (OUT) : IP BOARD
	// GPIO_Pin_13 : HEATER (OUT)
	// GPIO_Pin_14 : NC
	// GPIO_Pin_15 : FAN (OUT)
	// ===============================================================

	// ----- Configure the INPUT-PIN --------------------
//		GPIO_InitStructure.GPIO_Pin = GPIO_Pin_0|GPIO_Pin_1|GPIO_Pin_4|GPIO_Pin_7|GPIO_Pin_11;
//		GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
//		GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
//		GPIO_Init(GPIOC, &GPIO_InitStructure);

	// ----- Configure the OUTPUT-PIN -------------------
//		GPIO_InitStructure.GPIO_Pin = GPIO_Pin_3|GPIO_Pin_5|GPIO_Pin_6|GPIO_Pin_8|GPIO_Pin_13|GPIO_Pin_15; 
//		GPIO_InitStructure.GPIO_Mode = GPIO_Mode_Out_PP;
//		GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
//		GPIO_Init(GPIOC, &GPIO_InitStructure);

	// ----- Configure the OUTPUT-PIN -------------------
//		GPIO_InitStructure.GPIO_Pin = GPIO_Pin_10|GPIO_Pin_12;
//		GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
//		GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
//		GPIO_Init(GPIOC, &GPIO_InitStructure);
	
	// ========== GPIO D ===============================================
	// GPIO_Pin_0 : OSCI
	// GPIO_Pin_1 : OSCO
	// GPIO_Pin_2 : UART5_Rx (IN) : IP BOARD
	// ===============================================================
	// ----- Configure the INPUT-PIN --------------------
//		GPIO_InitStructure.GPIO_Pin = GPIO_Pin_2;
//		GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;
//		GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
//		GPIO_Init(GPIOD, &GPIO_InitStructure);
}

/*******************************************************************************
* Function : DMA_Configuration
*******************************************************************************/
void DMA_Configuration(void)
{
	DMA_DeInit(DMA1_Channel1);
	DMA_InitStructure.DMA_PeripheralBaseAddr = ADC1_DR_Address;
	DMA_InitStructure.DMA_MemoryBaseAddr = (u32)&stADC.DMA1_ADC_VALUE;
	DMA_InitStructure.DMA_DIR = DMA_DIR_PeripheralSRC;
	DMA_InitStructure.DMA_BufferSize = 2;
	DMA_InitStructure.DMA_PeripheralInc = DMA_PeripheralInc_Disable;
	DMA_InitStructure.DMA_MemoryInc = DMA_MemoryInc_Enable;
	DMA_InitStructure.DMA_PeripheralDataSize = DMA_PeripheralDataSize_Word;
	DMA_InitStructure.DMA_MemoryDataSize = DMA_MemoryDataSize_Word;
	DMA_InitStructure.DMA_Mode = DMA_Mode_Circular;
	DMA_InitStructure.DMA_Priority = DMA_Priority_High;
	DMA_InitStructure.DMA_M2M = DMA_M2M_Disable;
	DMA_Init(DMA1_Channel1, &DMA_InitStructure);

	DMA_Cmd(DMA1_Channel1, ENABLE);
}

/*******************************************************************************
* Function : ADC_Configuration
*******************************************************************************/
void ADC_Configuration(void)
{
	ADC_InitStructure.ADC_Mode = ADC_Mode_Independent;
	ADC_InitStructure.ADC_ScanConvMode = ENABLE;
	ADC_InitStructure.ADC_ContinuousConvMode = ENABLE;
	ADC_InitStructure.ADC_ExternalTrigConv = ADC_ExternalTrigConv_None;
	ADC_InitStructure.ADC_DataAlign = ADC_DataAlign_Right;
	ADC_InitStructure.ADC_NbrOfChannel = 2;
	ADC_Init(ADC1, &ADC_InitStructure);
	ADC_TempSensorVrefintCmd(ENABLE);
	
	// PA0, CH0, TEMP
	ADC_RegularChannelConfig(ADC1, ADC_Channel_0, 1, ADC_SampleTime_28Cycles5);

	// PA4, CH4, CDS
	ADC_RegularChannelConfig(ADC1, ADC_Channel_4, 2, ADC_SampleTime_28Cycles5);

	ADC_Cmd(ADC1, ENABLE);
	ADC_DMACmd(ADC1, ENABLE);

	ADC_ResetCalibration(ADC1);  
	while(ADC_GetResetCalibrationStatus(ADC1));	
	ADC_StartCalibration(ADC1);  
	while(ADC_GetCalibrationStatus(ADC1));  
	ADC_SoftwareStartConvCmd(ADC1, ENABLE);  
}

/*******************************************************************************
* Function : ADC_Configuration
*******************************************************************************/
void I2C_Configuration(void)
{
	/* I2C1,2 Periph clock enable */
	//RCC_APB1PeriphClockCmd(RCC_APB1Periph_I2C1, ENABLE);
	//RCC_APB1PeriphClockCmd(RCC_APB1Periph_I2C2, ENABLE);	

	//I2C1 Initial - TW9900 #1/#2 : PF0,1===========================================
	/* Reset sEE_I2C IP */
	//RCC_APB1PeriphResetCmd(RCC_APB1Periph_I2C1, ENABLE);
	/* Release reset signal of sEE_I2C IP */
	//RCC_APB1PeriphResetCmd(RCC_APB1Periph_I2C2, ENABLE);
	/* Connect PF1 to I2C_SCL*/
	//GPIO_PinAFConfig(GPIOF, GPIO_PinSource1, GPIO_AF_I2C1);
	/* Connect PF0 to I2C_SDA*/
	//GPIO_PinAFConfig(GPIOF, GPIO_PinSource0, GPIO_AF_I2C1);

	// I2C1 Configuration	
	#if(1)
	I2C_InitStructure.I2C_ClockSpeed = 100000;	//100KB, 400000;
	I2C_InitStructure.I2C_Mode = I2C_Mode_I2C;
	I2C_InitStructure.I2C_DutyCycle = I2C_DutyCycle_2;
	I2C_InitStructure.I2C_OwnAddress1 = TW9900_ADDR;
	I2C_InitStructure.I2C_Ack = I2C_Ack_Enable;
	I2C_InitStructure.I2C_AcknowledgedAddress = I2C_AcknowledgedAddress_7bit;
	I2C_Cmd(I2C1, ENABLE); /* I2C Peripheral Enable enable */
	I2C_Init(I2C1, &I2C_InitStructure);	/* Apply I2C configuration after enabling it */
	//======================================================== I2C1 Initial END
	#endif
	
	#if(1)
	// I2C2 Configuration	
	I2C_InitStructure.I2C_ClockSpeed = 100000;	//100KB, 400000;
	I2C_InitStructure.I2C_Mode = I2C_Mode_I2C;
	I2C_InitStructure.I2C_DutyCycle = I2C_DutyCycle_2;
	I2C_InitStructure.I2C_OwnAddress1 = AT24C256_ADDR;
	I2C_InitStructure.I2C_Ack = I2C_Ack_Enable;
	I2C_InitStructure.I2C_AcknowledgedAddress = I2C_AcknowledgedAddress_7bit;
	I2C_Cmd(I2C2, ENABLE); /* I2C Peripheral Enable enable */
	I2C_Init(I2C2, &I2C_InitStructure);	/* Apply I2C configuration after enabling it */	
	#endif	
	//======================================================== I2C2 Initial END

}


