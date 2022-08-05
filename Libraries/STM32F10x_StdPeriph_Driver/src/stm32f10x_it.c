/*=================================================================================
Project Name 		:	TPV HD Type (HD IP THERMOGRAPHY PTZ CAMERA)
Author			:	phs@tbtsys.com
==================================================================================*/ 

/*******************************************************************************
* INCLUDE
*******************************************************************************/
#include "stm32f10x_it.h"
#include "I2c.h"
#include "Extern.h"
#include "Device.h"
#include "Define.h"
#include "Common.h"

/*******************************************************************************
* Function Name  : assert_failed
* Description    : Reports the name of the source file and the source line number
  *   where the assert_param error has occurred.
* Input          : - file: pointer to the source file name
*                  - line: assert_param error line source number
* Output         : None
* Return         : None
*******************************************************************************/
void assert_failed(uint8_t* file, uint32_t line)
{ 
	/* User can add his own implementation to report the file name and line number,
	ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
	//printf("Wrong parameters value: file %s on line %d\r\n", file, line);

	/* Infinite loop */
	while (1)
	{}
}

/******************************************************************************/
/*            Cortex-M3 Processor Exceptions Handlers                         */
/******************************************************************************/

/**
  * @brief  This function handles NMI exception.
  * @param  None
  * @retval None
  */
void NMI_Handler(void)
{
}

/**
  * @brief  This function handles Hard Fault exception.
  * @param  None
  * @retval None
  */
void HardFault_Handler(void)
{
    /* Go to infinite loop when Hard Fault exception occurs */
    while (1)
    {
    }
}

/**
  * @brief  This function handles Memory Manage exception.
  * @param  None
  * @retval None
  */
void MemManage_Handler(void)
{
    /* Go to infinite loop when Memory Manage exception occurs */
    while (1)
    {
    }
}

/**
  * @brief  This function handles Bus Fault exception.
  * @param  None
  * @retval None
  */
void BusFault_Handler(void)
{
    /* Go to infinite loop when Bus Fault exception occurs */
    while (1)
    {
    }
}

/**
  * @brief  This function handles Usage Fault exception.
  * @param  None
  * @retval None
  */
void UsageFault_Handler(void)
{
    /* Go to infinite loop when Usage Fault exception occurs */
    while (1)
    {
    }
}

/**
  * @brief  This function handles SVCall exception.
  * @param  None
  * @retval None
  */
void SVC_Handler(void)
{
}

/**
  * @brief  This function handles Debug Monitor exception.
  * @param  None
  * @retval None
  */
void DebugMon_Handler(void)
{
}

/**
  * @brief  This function handles PendSV_Handler exception.
  * @param  None
  * @retval None
  */
void PendSV_Handler(void)
{
}

/**
  * @brief  This function handles SysTick Handler.
  * @param  None
  * @retval None
  */
void SysTick_Handler(void)
{
    TimingDelay_Decrement();
    Delay_Decrement();
    i2cDelay_Decrement();
}

/******************************************************************************/
/*            STM32F10x Peripherals Interrupt Handlers                        */
/*  Add here the Interrupt Handler for the used peripheral(s) (PPP), for the  */
/*  available peripheral interrupt handler's name please refer to the startup */
/*  file (startup_stm32f10x_xx.s).                                            */
/******************************************************************************/

/*******************************************************************************
* Function Name  : WWDG_IRQHandler
* Description    : This function handles WWDG interrupt request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void WWDG_IRQHandler(void)
{
}

/*******************************************************************************
* Function Name  : PVD_IRQHandler
* Description    : This function handles PVD interrupt request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void PVD_IRQHandler(void)
{
}

/*******************************************************************************
* Function Name  : TAMPER_IRQHandler
* Description    : This function handles Tamper interrupt request. 
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void TAMPER_IRQHandler(void)
{
}

/*******************************************************************************
* Function Name  : RTC_IRQHandler
* Description    : This function handles RTC global interrupt request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void RTC_IRQHandler(void)
{
}

/*******************************************************************************
* Function Name  : FLASH_IRQHandler
* Description    : This function handles Flash interrupt request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void FLASH_IRQHandler(void)
{
}

/*******************************************************************************
* Function Name  : RCC_IRQHandler
* Description    : This function handles RCC interrupt request. 
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void RCC_IRQHandler(void)
{
}

/*******************************************************************************
* Function Name  : EXTI0_IRQHandler
* Description    : This function handles External interrupt Line 0 request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/

//static bool toggle_data_key1 = FALSE;
/*
void EXTI0_IRQHandler(void)
{
    if(EXTI_GetITStatus(GPIO_EXTI_Line_KEY1) != RESET) {
        printf("Left-WKUP Button Press\n");

#if 0
  
        if (pInformation->Current_Feature & 0x20) //Remote wake-up enabled
        {
          Resume(RESUME_INTERNAL);
        }
#endif

        if(TRUE == g_TestProcessState)
        {
            Send_Buffer[0] = 0x05;

            if(toggle_data_key1)
            {
                toggle_data_key1 = FALSE;
                Send_Buffer[1] = 0x01;
            }
            else
            {
                toggle_data_key1 = TRUE;
                Send_Buffer[1] = 0x00;
            }

            UserToPMABufferCopy(Send_Buffer, ENDP1_TXADDR, 2);
            SetEPTxCount(ENDP1, 2);
            SetEPTxValid(ENDP1);
        }

        EXTI_ClearITPendingBit(GPIO_EXTI_Line_KEY1);
    }
}
*/
/*******************************************************************************
* Function Name  : EXTI1_IRQHandler
* Description    : This function handles External interrupt Line 1 request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
/*
static bool toggle_data_key2 = FALSE;

void EXTI1_IRQHandler(void)
{
    if(EXTI_GetITStatus(GPIO_EXTI_Line_KEY2) != RESET) {
        printf("Right-USER Button Press\n");

        if(TRUE == g_TestProcessState)
        {
            Send_Buffer[0] = 0x06;

            if(toggle_data_key2)
            {
                toggle_data_key2 = FALSE;
                Send_Buffer[1] = 0x01;
            }
            else
            {
                toggle_data_key2 = TRUE;
                Send_Buffer[1] = 0x00;
            }

            UserToPMABufferCopy(Send_Buffer, ENDP1_TXADDR, 2);
            SetEPTxCount(ENDP1, 2);
            SetEPTxValid(ENDP1);
        }

        EXTI_ClearITPendingBit(GPIO_EXTI_Line_KEY2);
    }
}
*/
/*******************************************************************************
* Function Name  : EXTI2_IRQHandler
* Description    : This function handles External interrupt Line 2 request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
/*
void EXTI2_IRQHandler(void)
{
}
*/
/*******************************************************************************
* Function Name  : EXTI3_IRQHandler
* Description    : This function handles External interrupt Line 3 request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
/*
void EXTI3_IRQHandler(void)
{
}
*/
/*******************************************************************************
* Function Name  : EXTI4_IRQHandler
* Description    : This function handles External interrupt Line 4 request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
/*
void EXTI4_IRQHandler(void)
{
}
*/
/*******************************************************************************
* Function Name  : DMA1_Channel1_IRQHandler
* Description    : This function handles DMA1 Channel 1 interrupt request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
/*
void DMA1_Channel1_IRQHandler(void)
{
    Send_Buffer[0] = 0x07;

    if((ADC_ConvertedValueX >>4) - (ADC_ConvertedValueX_1 >>4) > 4)
    {
        Send_Buffer[1] = (uint8_t)(ADC_ConvertedValueX >>4);
        UserToPMABufferCopy(Send_Buffer, ENDP1_TXADDR, 2);
        SetEPTxCount(ENDP1, 2);
        SetEPTxValid(ENDP1);
        ADC_ConvertedValueX_1 = ADC_ConvertedValueX;
    }

    DMA_ClearFlag(DMA1_FLAG_TC1);
}
*/
/*******************************************************************************
* Function Name  : DMA1_Channel2_IRQHandler
* Description    : This function handles DMA1 Channel 2 interrupt request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void DMA1_Channel2_IRQHandler(void)
{
}

/*******************************************************************************
* Function Name  : DMA1_Channel3_IRQHandler
* Description    : This function handles DMA1 Channel 3 interrupt request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void DMA1_Channel3_IRQHandler(void)
{
}

/*******************************************************************************
* Function Name  : DMA1_Channel4_IRQHandler
* Description    : This function handles DMA1 Channel 4 interrupt request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void DMA1_Channel4_IRQHandler(void)
{
}

/*******************************************************************************
* Function Name  : DMA1_Channel5_IRQHandler
* Description    : This function handles DMA1 Channel 5 interrupt request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void DMA1_Channel5_IRQHandler(void)
{
}

/*******************************************************************************
* Function Name  : DMA1_Channel6_IRQHandler
* Description    : This function handles DMA1 Channel 6 interrupt request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void DMA1_Channel6_IRQHandler(void)
{
}

/*******************************************************************************
* Function Name  : DMA1_Channel7_IRQHandler
* Description    : This function handles DMA1 Channel 7 interrupt request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void DMA1_Channel7_IRQHandler(void)
{
}

/*******************************************************************************
* Function Name  : ADC1_2_IRQHandler
* Description    : This function handles ADC1 and ADC2 global interrupts requests.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void ADC1_2_IRQHandler(void)
{
}

/*******************************************************************************
* Function Name  : USB_HP_CAN_TX_IRQHandler
* Description    : This function handles USB High Priority or CAN TX interrupts 
*                  requests.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void USB_HP_CAN1_TX_IRQHandler(void)
{
}

/*******************************************************************************
* Function Name  : USB_LP_CAN_RX0_IRQHandler
* Description    : This function handles USB Low Priority or CAN RX0 interrupts 
*                  requests.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
/*
void USB_LP_CAN1_RX0_IRQHandler(void)
{
    USB_Istr();
}
*/
/*******************************************************************************
* Function Name  : CAN_RX1_IRQHandler
* Description    : This function handles CAN RX1 interrupt request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void CAN1_RX1_IRQHandler(void)
{
}

/*******************************************************************************
* Function Name  : CAN_SCE_IRQHandler
* Description    : This function handles CAN SCE interrupt request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void CAN1_SCE_IRQHandler(void)
{
}

/*******************************************************************************
* Function Name  : EXTI9_5_IRQHandler
* Description    : This function handles External lines 9 to 5 interrupt request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
/*
void EXTI9_5_IRQHandler(void)
{
#ifdef  BOARD_DEF_MANGO_Z1
    if(EXTI_GetITStatus(GPIO_EXTI_Line_RF_GPIO0) != RESET)
    {
        basicRfRxFrmDoneIsr();
        EXTI_ClearITPendingBit(GPIO_EXTI_Line_RF_GPIO0);
    }
#endif
}
*/
/*******************************************************************************
* Function Name  : TIM1_BRK_IRQHandler
* Description    : This function handles TIM1 Break interrupt request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void TIM1_BRK_IRQHandler(void)
{
}

/*******************************************************************************
* Function Name  : TIM1_UP_IRQHandler
* Description    : This function handles TIM1 overflow and update interrupt 
*                  request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void TIM1_UP_IRQHandler(void)
{
}

/*******************************************************************************
* Function Name  : TIM1_TRG_COM_IRQHandler
* Description    : This function handles TIM1 Trigger and commutation interrupts 
*                  requests.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void TIM1_TRG_COM_IRQHandler(void)
{
}

/*******************************************************************************
* Function Name  : TIM1_CC_IRQHandler
* Description    : This function handles TIM1 capture compare interrupt request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void TIM1_CC_IRQHandler(void)
{
}

/*******************************************************************************
* Function Name  : TIM2_IRQHandler
* Description    : This function handles TIM2 global interrupt request.
* Input          : None
* Output         : None
* Return         : None
* Timer		: 10ms
*******************************************************************************/
u8 g_Tx_Buf = 0x00;

void TIM2_IRQHandler(void)
{
	if (TIM_GetITStatus(TIM2, TIM_IT_Update) != RESET)
	{
		TIM_ClearITPendingBit(TIM2, TIM_IT_Update);	

		// =======================================
		// LED Control : 1s
		// =======================================
		stLED_SET.LED_COUNT++;
		if(stLED_SET.LED_COUNT >= 100)
		{
			stLED_SET.LED_COUNT = 0;
			stLED_SET.LED_FLAG ^= 0xFF;

			//if(stLED_SET.LED_FLAG) LED1_ON;
			//else LED1_OFF;
		}

		if(stINFO.BOOT_FLAG == 0x01)
		{
			stINFO.BOOT_CHECK_LIMIT_ms++;

			if(stINFO.BOOT_CHECK_LIMIT_ms >= 1000)
			{
				stINFO.BOOT_CHECK_LIMIT_ms = 0;
				stINFO.BOOT_FLAG = 0x00;
			}
		}

		

		// =======================================
		// Wiper1 Dwell Timer
		// =======================================
		if(stWIPER1.DWELL_FLAG == 0x01)
		{
			stWIPER1.DWELL_TIME_10ms++;
			if(stWIPER1.DWELL_TIME_10ms > 100)
			{
				stWIPER1.DWELL_TIME_10ms = 0;
				stWIPER1.DWELL_TIME_1s++;

				if(stWIPER1.DWELL_TIME <= stWIPER1.DWELL_TIME_1s)
				{
					stWIPER1.DWELL_FLAG = 0x00;
					if(stWIPER1.ACTIVE_COUNT != 0)
					{
						//Run_Wiper(WIPER_ON, DIRECTION_CW);				// Wiper On
					}

					stWIPER1.DWELL_TIME_1s = 0;
				}
			}
		}
		
		// ================================================================
		// Wiper2 Dwell Timer
		// ================================================================
		if(stWIPER2.DWELL_TIMER_FLAG)
		{
			stWIPER2.DWELL_TIMER_ms++;

			if(stWIPER2.DWELL_TIMER_ms >= 100)	// 1s
			{
				stWIPER2.DWELL_TIMER_s++;
				stWIPER2.DWELL_TIMER_ms = 0x00;
		
				if(stWIPER2.DWELL_TIMER_s >= stWIPER2.DWELL_TIME_DATA)
				{
					stWIPER2.DWELL_END_FLAG = 0x01;
					stWIPER2.DWELL_TIMER_s = 0x00;
					stWIPER2.DWELL_TIMER_FLAG = 0x00;
				}
			}
		}

		if((stWIPER2.COUNT == 0x00) && (stWIPER2.DWELL_TIMER_FLAG != 0x00))
		{
			stWIPER2.DWELL_TIMER_FLAG = 0x00;
			stWIPER2.DWELL_TIMER_ms = 0;
			stWIPER2.DWELL_TIMER_s = 0;
		}

		// ================================================================
		// LRF Booting Check Time
		// ================================================================
		if(stLRF.INIT_FLAG == 0x01)
		{
			stLRF.INIT_TIME++;

			if(stLRF.INIT_TIME >= LRF_BOOTING_TIME)
			{
				stLRF.INIT_ACTIVE = 0x01;

				stLRF.INIT_TIME = 0x00;
				stLRF.INIT_FLAG = 0x00;
			}
		}

		if(stLRF.CONTINUOUS_FLAG == 0x01)
		{
			stLRF.CONTINUOUS_TIME++;

			if(stLRF.CONTINUOUS_TIME > stLRF.CONTINUOUS_TIME_MAX)
			{
				stLRF.CONTINUOUS_ACTIVE = 0x01;
				
				stLRF.CONTINUOUS_TIME = 0;
			}
		}

		// ================================================================
		// BYPASS Tx Check (전송 후 500ms 후 Clear)
		// ================================================================
		if(stBYPASS.TX_FLAG == 0x01)
		{
			stBYPASS.TX_TIMER++;

			if(stBYPASS.TX_TIMER >= 50)
			{
				stBYPASS.TX_TIMER = 0;
				stBYPASS.TX_FLAG = 0x00;
			}
		}

		// ================================================================
		// WIPER CONTINUOUS TIMER
		// ================================================================
		if(stWIPER2.CONTINUOUS_FLAG == 0x00)
		{
			if((stWIPER2.CONTINUOUS_ms != 0) || (stWIPER2.CONTINUOUS_s != 0) || (stWIPER2.CONTINUOUS_m != 0) || (stWIPER2.CONTINUOUS_h != 0))
			{
				stWIPER2.CONTINUOUS_ms = 0;
				stWIPER2.CONTINUOUS_s = 0;
				stWIPER2.CONTINUOUS_m = 0;
				stWIPER2.CONTINUOUS_h = 0;
			}
		}
			
		if(stWIPER2.CONTINUOUS_FLAG == 0x01)
		{
			stWIPER2.CONTINUOUS_ms++;
			
			if(stWIPER2.CONTINUOUS_ms >= 100)
			{
				stWIPER2.CONTINUOUS_ms = 0;
				stWIPER2.CONTINUOUS_s++;
				
				if(stWIPER2.CONTINUOUS_s >= 60)
				{
					stWIPER2.CONTINUOUS_s = 0;
					stWIPER2.CONTINUOUS_m++;

					if(stWIPER2.CONTINUOUS_m >= 60)
					{
						stWIPER2.CONTINUOUS_m = 0;
						stWIPER2.CONTINUOUS_h++;

						if(stWIPER2.CONTINUOUS_h >= stWIPER2.CONTINUOUS_TIME)
						{
							stWIPER2.CONTINUOUS_h = 0;
							stWIPER2.CONTINUOUS_FLAG = 0x00;
							stWIPER2.CONTINUOUS_STOP_FLAG = 0x01;
						}
					}
				}
			}
		}

		// ================================================================
		// TEST TIMER
		// ================================================================
/*
		if(stUSART2.TX_CNT < stUSART2.TX_MAX)
		{
			g_Tx_Buf = stUSART2.TX_BUF[stUSART2.TX_CNT];
			stUSART2.TX_CNT++;				

			USART_SendData(USART2, g_Tx_Buf);
		}
		else
		{
			stUSART2.TX_CNT = 0x00;
			stUSART2.TX_MAX = 0x00;
		
			//USART_SendData(USART2, Tx_Buf);
		}
*/

	}	
}

/*******************************************************************************
* Function Name  : TIM3_IRQHandler
* Description    : This function handles TIM3 global interrupt request.
* Input          : None
* Output         : None
* Return         : None
* Timer		: 1ms
*******************************************************************************/
void TIM3_IRQHandler(void)
{
	if (TIM_GetITStatus(TIM3, TIM_IT_Update) != RESET)
	{

		

				

		
//			TIM_ClearITPendingBit(TIM3, TIM_IT_Update);
//	
//			// ================================================================
//			// Sony-Zoom & Light-Zoom Sync
//			// ================================================================
//			//Zoom_Data_Sync();
//	
//			// ================================================================
//			// TEMPERATURE (DC-103JU)
//			// ================================================================
//			Temperature_Data_Check();
//			Temperature_Boot_Mode();
//	
//			// =======================================
//			// Temperature Control
//			// =======================================
//			if(stTEMP.STARTING_MODE == 0x00)
//			{
//				Fan_Heater_Control(BOOT_MODE);
//			}
//			else
//			{
//				Fan_Heater_Control(NORMAL_MODE);
//			}
//			
//			// ================================================================
//			// CDS CHECK
//			// ================================================================
//			//CDS_Data_Check();
//			//Auto_Day_And_Night_Control();
	}	
}

/*******************************************************************************
* Function Name  : SYSTEM_Data_Reordering
*******************************************************************************/
void SYSTEM_Data_Reordering(void)
{
	u8 i = 0x00, j = 0x00, u_buf = 0x00, u_length = 0x00, u_max = 0x00;
	
	if((stSYS.RX_PARITY == 0x00) && (stSYS.RX_REORDERING == 0x01))
	{
		if(stSYS.RX_INDEX == 0x00)
		{
			u_buf = stSYS.RX_BUF[0][1];
		
			switch(u_buf)
			{
				case TILT_FIRST_BYTE:
				case IP_SONY_FIRST_BYTE:
				case IP_TSM_FIRST_BYTE:
				case IP_DRS_FIRST_BYTE:
				case IP_PTZ_FIRST_BYTE:
				case IP_DATA_FIRST_BYTE:
				case IP_OPTION_FIRST_BYTE:

					u_length = stSYS.RX_BUF[i][3];		// Length Byte Check

					u_max = u_length + 6;
					
					for(j=0; j<u_max; j++)
					{
						stSYS.RX_BUF[0][j] = 0x00;
					}

					stSYS.RX_REORDERING = 0x00;
					
					break;

				default:
					break;
			}			
		}
		else
		{
			for(i=1; i<SYS_RX_BUF_CNT; i++)
			{
				if(stSYS.RX_BUF[i][0] != 0x00)
				{
					u_buf = stSYS.RX_BUF[i][1];	// Command Byte Check
					
					switch(u_buf)
					{
						case TILT_FIRST_BYTE:
						case IP_SONY_FIRST_BYTE:
						case IP_TSM_FIRST_BYTE:
						case IP_DRS_FIRST_BYTE:
						case IP_PTZ_FIRST_BYTE:
						case IP_DATA_FIRST_BYTE:
						case IP_OPTION_FIRST_BYTE:

							u_length = stSYS.RX_BUF[i][3];		// Length Byte Check

							u_max = u_length + 6;
							
							for(j=0; j<u_max; j++)
							{
								stSYS.RX_BUF[i-1][j] = stSYS.RX_BUF[i][j];
								if(stSYS.RX_INDEX > 0) stSYS.RX_BUF[stSYS.RX_INDEX - 1][j] = 0x00;
							}

							stSYS.RX_REORDERING = 0x00;
							
							break;

						default:
							break;

					}
				}
			}
		}
		
		stSYS.RX_COMPLETE = 0x00;
		if(stSYS.RX_INDEX > 0) stSYS.RX_INDEX--;
		
	}
}

/*******************************************************************************
* Function Name  : SYSTEM_Data_Handling
*******************************************************************************/
void SYSTEM_Data_Handling(void)
{
	if((stSYS.RX_BUF[0][0] != 0x00) && (stSYS.RX_COMPLETE == 0x00) && (stSYS.RX_PARITY == 0x00) && (stSYS.RX_REORDERING == 0x00))
	{
		stSYS.RX_PARITY = 0x01;
	}
}

/*******************************************************************************
* Function Name  : SYSTEM_Data_Handling
*******************************************************************************/
void SYSTEM_Data_Buffer(void)
{
	u8 i = 0x00, u_buf = 0x00, u_length = 0x00, u_max = 0x00;

	if(stUSART1.RX_PARITY == 0x01)
	{
		u_buf = stUSART1.RX_BUF[0];

		switch(u_buf)
		{
/*
			case TILT_FIRST_BYTE:

				u_length = stUSART1.RX_BUF[2];

				u_max = u_length + 5;

				stCOOR.RX_BUF[stCOOR.RX_INDEX][0] = stCOOR.RX_INDEX + 1;

				for(i=0; i<u_max; i++)
				{
					stCOOR.RX_BUF[stCOOR.RX_INDEX][i+1] =  stUSART1.RX_BUF[i];
					stUSART1.RX_BUF[i] = 0x00;
				}

				stCOOR.RX_INDEX++;
				
				break;
*/				
			case TILT_FIRST_BYTE:
			case IP_SONY_FIRST_BYTE:
			case IP_TSM_FIRST_BYTE:
			case IP_DRS_FIRST_BYTE:
			case IP_PTZ_FIRST_BYTE:
			case IP_DATA_FIRST_BYTE:
			case IP_OPTION_FIRST_BYTE:

				u_length = stUSART1.RX_BUF[2];

				u_max = u_length + 5;

				stSYS.RX_BUF[stSYS.RX_INDEX][0] = stSYS.RX_INDEX + 1;

				for(i=0; i<u_max; i++)
				{
					stSYS.RX_BUF[stSYS.RX_INDEX][i+1] =  stUSART1.RX_BUF[i];
					stUSART1.RX_BUF[i] = 0x00;
				}

				stSYS.RX_INDEX++;

				break;

			default:
				break;
		}

		stUSART1.RX_PARITY = 0x00;

	}
}

/*******************************************************************************
* Function Name  : SYSTEM_Data_Parser
*******************************************************************************/
void SYSTEM_Data_Parser(u8 u_port)
{
	switch(u_port)
	{
		case USART1_INDEX:

			// =======================================
			// System Data Reordering
			// =======================================
			SYSTEM_Data_Reordering();

			// =======================================
			// System Data Handling
			// =======================================
			SYSTEM_Data_Handling();

			// =======================================
			// Rx Buffer Check & Data Trans
			// =======================================
			SYSTEM_Data_Buffer();

			break;

		default:
			break;
	}
}

/****************************************************************************************************
* Function Name  : Boot_Status_Data_Trans
* Data Architecture :
BYTE1[0]		BYTE2[1]		BYTE3[2]		BYTE4[3]		BYTE5[4]		BYTE5[5]		BYTE5[LENGTH+4]
0xCA		0xAC		LENGTH		ADDR		COMM		DATA...		CS
0xCA		0xAC		0x04		0x01		0xD1		DATA...		CS

DATA : 0x00: Nondata, 0x01: ACTIVE Status, 0x02 : Boot Ready Status
*****************************************************************************************************/
void Boot_Status_Data_Trans(void)
{
	u8 u_Cmd = TILT_BOOT_STATUS, u_Leng = 0x04, u_ID = MDIN_LAYER_CENTER_MSG;

	switch(stSYS.BOOT_STATUS)
	{
		// TILT B/D 가 POWER OFF 인 경우
		case STOP:
			break;

		// TILT B/D 가 MODULE 을 정상 경우
		case ACTIVE:

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

			stSYS.BOOT_STATUS = STOP;
			
			break;

		// TILT B/D 가 MODULE 을 정상 부팅 못하였을 경우 (MAIN으로 부터 체크 송신을 받았으나 MODULE 미인식, 데이터 비정상)
		case READY:

			stUSART1.TX_BUF[0] = TILT_FIRST_BYTE;
			stUSART1.TX_BUF[1] = TILT_SECOND_BYTE;
			stUSART1.TX_BUF[2] = u_Leng;
			stUSART1.TX_BUF[3] = u_ID;
			stUSART1.TX_BUF[4] = u_Cmd;
			stUSART1.TX_BUF[5] = READY;
			stUSART1.TX_BUF[6] = 0x00;
			
			stUSART1.TX_BUF[7] = 0x00;		
			stUSART1.TX_BUF[7] = stUSART1.TX_BUF[3] + stUSART1.TX_BUF[4] + stUSART1.TX_BUF[5] + stUSART1.TX_BUF[6];

			stUSART1.TX_BUF[8] = 0xCF;

			stUSART1.TX_CNT = 0;
			stUSART1.TX_MAX = u_Leng + 5;

			USART_SendData(USART1, stUSART1.TX_BUF[stUSART1.TX_CNT++]);

			stSYS.BOOT_STATUS = STOP;
		
			break;

		default:
			break;
	}
}

/*******************************************************************************
* Function Name  : TIM4_IRQHandler
* Description    : This function handles TIM4 global interrupt request.
* Input          : None
* Output         : None
* Return         : None
* Timer		: 1ms
*******************************************************************************/
void TIM4_IRQHandler(void)
{
	extern int counter;
    
	if (TIM_GetITStatus(TIM4, TIM_IT_Update) != RESET)
	{
		TIM_ClearITPendingBit(TIM4, TIM_IT_Update);
		counter++;
		if(counter >= 3) {
			GPIOB-> ODR ^= GPIO_Pin_8;
			counter = 0;
		}
	}	

}//End Of The TIM4_IRQ_Handler



//	void EXTI0_IRQHandler(void) {
//		if(EXTI_GetITStatus(EXTI_Line0) != RESET) {
//			EXTI_ClearITPendingBit(EXTI_Line0);
//			if(GPIO_ReadInputDataBit(GPIOB, GPIO_Pin_9) == SET) {
//				LED_Off_Red();
//			} else {
//			  LED_On_Red();
//			}
//		}
//	}
//	
//	void EXTI1_IRQHandler(void) {
//		if(EXTI_GetITStatus(EXTI_Line1) != RESET) {
//			EXTI_ClearITPendingBit(EXTI_Line1);
//			if(GPIO_ReadInputDataBit(GPIOB, GPIO_Pin_8) == SET) {
//				LED_Off_Green();
//			} else {
//			  LED_On_Green();
//			}
//		}
//	}




/*******************************************************************************
* Function Name  : I2C1_EV_IRQHandler
* Description    : This function handles I2C1 Event interrupt request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void I2C1_EV_IRQHandler(void)
{
}

/*******************************************************************************
* Function Name  : I2C1_ER_IRQHandler
* Description    : This function handles I2C1 Error interrupt request.
* Input          : None
* Output         : None

* Return         : None
*******************************************************************************/
void I2C1_ER_IRQHandler(void)
{
}

/*******************************************************************************
* Function Name  : I2C2_EV_IRQHandler
* Description    : This function handles I2C2 Event interrupt request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void I2C2_EV_IRQHandler(void)
{
}

/*******************************************************************************
* Function Name  : I2C2_ER_IRQHandler
* Description    : This function handles I2C2 Error interrupt request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void I2C2_ER_IRQHandler(void)
{
}

/*******************************************************************************
* Function Name  : SPI1_IRQHandler
* Description    : This function handles SPI1 global interrupt request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void SPI1_IRQHandler(void)
{
}

/*******************************************************************************
* Function Name  : SPI2_IRQHandler
* Description    : This function handles SPI2 global interrupt request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void SPI2_IRQHandler(void)
{
}

/*******************************************************************************
* Function Name  : USART1_IRQHandler
* Description    : This function handles USART1 global interrupt request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
/*******************************************************************************
* Function Name  : USART2_IRQHandler
* Description    : This function handles USART2 global interrupt request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
/*******************************************************************************
* Function Name  : USART3_IRQHandler
* Description    : This function handles USART3 global interrupt request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
/*******************************************************************************
* Function Name  : EXTI15_10_IRQHandler
* Description    : This function handles External lines 15 to 10 interrupt request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void EXTI15_10_IRQHandler(void)
{
}

/*******************************************************************************
* Function Name  : RTCAlarm_IRQHandler
* Description    : This function handles RTC Alarm interrupt request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
void RTCAlarm_IRQHandler(void)
{
}

/*******************************************************************************
* Function Name  : USBWakeUp_IRQHandler
* Description    : This function handles USB WakeUp interrupt request.
* Input          : None
* Output         : None
* Return         : None
*******************************************************************************/
/*
void USBWakeUp_IRQHandler(void)
{
#if 1
    EXTI_ClearITPendingBit(EXTI_Line18);
#endif
}
*/


/*******************************************************************************
* Function Name  : Rx_Second_Comm_Check
*******************************************************************************/
void Rx_Main_Second_Comm_Check(u8 u_buf, u8 u_andbyte)
{
	if(u_buf == u_andbyte)
	{
		stUSART1.RX_BUF[1] =  u_buf;
		stUSART1.RX_BUF_INDEX++;
		stUSART1.RX_BUF_LENGTH = 0x01;
	}
	else
	{
		stUSART1.RX_BUF_INDEX = 0x00;					// Index Clear
		stUSART1.RX_BUF[0] = 0x00;						// Buffer Clear
		stUSART1.RX_ENABLE = 0x00;						// Command Check Byte Clear
	}	
}

/*******************************************************************************
* Function Name  : Boot_Status_Check_Parser
*******************************************************************************/
void Boot_Status_Check_Parser(void)
{
	if((stUSART1.RX_BUF[0] == TILT_FIRST_BYTE) && (stUSART1.RX_BUF[4] == TILT_BOOT_STATUS))
	{
		if(stSYS.START == STOP)
		{
			stSYS.BOOT_STATUS = READY;
		}
		/*
		else
		{
			stSYS.BOOT_STATUS = ACTIVE;
		}
		*/
	}
}

/*******************************************************************************
* Function Name  : Rx_Main_Comm_Handling
*******************************************************************************/
void Rx_Main_Comm_Handling(u8 u_sync, u8 u_buf)	// u_port : Uart Port, u_sync : Sync Byte Check (0 : First Byte, 1 : Second Byte)
{
	// 첫번째 바이트 체크 (Sync Byte Check)
	if(u_sync == Rx_SYNC_BYTE)	
	{
		stUSART1.RX_BUF_INDEX = 0x00;	// Index Init
		stUSART1.RX_BUF[stUSART1.RX_BUF_INDEX] = u_buf;
		stUSART1.RX_BUF_INDEX++;
		
		#if(ERROR_CHECK_BUF)
		stERROR.RX_BUF[stERROR.RX_CNT++] = u_buf;
		if(stERROR.RX_CNT >= ERROR_DATA_MAX) stERROR.RX_CNT = 0;
		#endif
	}

	// 두번째 바이트 체크 (Sync & Byte Check)
	if(u_sync == Rx_SYNC_AND_BYTE)
	{
		#if(ERROR_CHECK_BUF)	
		stERROR.RX_BUF[stERROR.RX_CNT++] = u_buf;
		if(stERROR.RX_CNT >= ERROR_DATA_MAX) stERROR.RX_CNT = 0;
		#endif		
		
		// 두번째 명령어 체크 (Sync & Byte Check)
		if(stUSART1.RX_BUF_INDEX == 0x01)
		{
			switch(stUSART1.RX_ENABLE)
			{
				case TILT_SECOND_BYTE:
					Rx_Main_Second_Comm_Check(u_buf, TILT_SECOND_BYTE);
					break;

				case IP_SONY_SECOND_BYTE:
					Rx_Main_Second_Comm_Check(u_buf, IP_SONY_SECOND_BYTE);
					break;
					
				case IP_TSM_SECOND_BYTE:
					Rx_Main_Second_Comm_Check(u_buf, IP_TSM_SECOND_BYTE);
					break;

				default:
					break;
			}
		}	
	}

	// 세번째 바이트 체크 (Data Length)
	if(u_sync == Rx_LENGTH_BYTE)
	{
		#if(ERROR_CHECK_BUF)	
		stERROR.RX_BUF[stERROR.RX_CNT++] = u_buf;
		if(stERROR.RX_CNT >= ERROR_DATA_MAX) stERROR.RX_CNT = 0;
		#endif
		
		if(stUSART1.RX_ENABLE == IP_PELCO_CHK_BYTE)
		{
			// PELCO-D Command 예외처리
			if(stUSART1.RX_BUF_INDEX == 0x02)
			{
				stUSART1.RX_BUF_LENGTH = 0x02;
				stUSART1.RX_BUF_MAX = stUSART1.RX_BUF_LENGTH + 5;
				
				stUSART1.RX_BUF[2] =  u_buf;
				
				stUSART1.RX_BUF_INDEX++;
			}					
		}
		else
		{
			// 세번째 데이터 길이 체크 (Sync & Byte Check)
			if(stUSART1.RX_BUF_INDEX == 0x02)
			{
				stUSART1.RX_BUF_LENGTH = u_buf;
				stUSART1.RX_BUF_MAX = stUSART1.RX_BUF_LENGTH + 5;
				
				stUSART1.RX_BUF[2] =  u_buf;
				
				stUSART1.RX_BUF_INDEX++;
			}
		}
	}	

	// 데이터 누적
	if(u_sync == Rx_DATA_BYTE)
	{
		#if(ERROR_CHECK_BUF)
		stERROR.RX_BUF[stERROR.RX_CNT++] = u_buf;
		if(stERROR.RX_CNT >= ERROR_DATA_MAX) stERROR.RX_CNT = 0;
		#endif		
		
		stUSART1.RX_BUF[stUSART1.RX_BUF_INDEX] = u_buf;

		stUSART1.RX_BUF_INDEX++;	
		
		if(stUSART1.RX_BUF_INDEX == stUSART1.RX_BUF_MAX)
		{
			// PELCO-D Command 예외처리
			if(stUSART1.RX_ENABLE == IP_PELCO_CHK_BYTE)
			{
				Rx_Pelco_Data_Check();
			}
			else
			{
				if((stUSART1.RX_BUF[stUSART1.RX_BUF_INDEX - 1]&0x0F) == 0x0F)		// End Byte Check
				{
					if(stSYS.START == ACTIVE)
					{
						stUSART1.RX_PARITY = 0x01;	// 정상 데이터 수신 (0x00: Nondata(수신대기), 0x01: 정상데이터, 0xFF, 비정상 데이터, 0xFE = Boot Check)
						stUSART1.RX_PARITY_CNT++;
						
						// DEBUG 데이터 체크 ======================================================/
						//stERROR.PARITY_CNT_CHECK++;
						//if(stERROR.PARITY_CNT_CHECK == 0x01) stERROR.TIMER_CHECK_FLAG = 0x01;
						//if(stERROR.PARITY_CNT_CHECK == 0x02) stERROR.TIMER_CHECK_FLAG = 0x00;
						// DEBUG 데이터 체크 ===================================================END/
						
						//if(stUSART1.RX_PRIORITY == 0x00) stUSART1.RX_PRIORITY = 0x01;
					}
					else
					{
						Boot_Status_Check_Parser();
					}

					stUSART1.RX_BUF_INDEX = 0x00;	// Index Init
					//stUSART1.RX_BUF[stUSART1.RX_BUF_INDEX] = stUSART1.RX_PRIORITY++;
				}
				else
				{
					stUSART1.RX_PARITY = 0xFF;	// 비정상 데이터 수신 (0x00: Nondata(수신대기), 0x01: 정상데이터, 0xFF, 비정상 데이터, 0xFE = Boot Check)
					stUSART1.RX_ERROR_CNT++;
				}
			}
			
			stUSART1.RX_BUF_INDEX = 0x00;
			stUSART1.RX_BUF_LENGTH = 0x00;
			
			stUSART1.RX_ENABLE = 0x00;
		}
	}		
}

/*******************************************************************************
* Function Name  : Main_Protocol_Data_Pasher
* Description    : This function handles USART1 interrupt request.
* Input           : Main - PA10 USART1_RX
* Output         : Main - PA9 USART1_TX
*******************************************************************************/
void Main_Protocol_Data_Pasher(u8 u_buf)
{
	u8 u_Index_Chk = 0;

	if(stUSART1.RX_ENABLE == 0x00)
	{
		// 첫번째 바이트 체크 (Sync Byte Check)
		switch(u_buf)
		{
			case TILT_FIRST_BYTE:
				Rx_Main_Comm_Handling(Rx_SYNC_BYTE, TILT_FIRST_BYTE);
				stUSART1.RX_ENABLE = TILT_SECOND_BYTE;
				break;

			case IP_SONY_FIRST_BYTE:
				Rx_Main_Comm_Handling(Rx_SYNC_BYTE, IP_SONY_FIRST_BYTE);
				stUSART1.RX_ENABLE = IP_SONY_SECOND_BYTE;
				break;

			case IP_TSM_FIRST_BYTE:
				Rx_Main_Comm_Handling(Rx_SYNC_BYTE, IP_TSM_FIRST_BYTE);
				stUSART1.RX_ENABLE = IP_TSM_SECOND_BYTE;
				break;

			default:
				break;
		}
	}
	else
	{
		if(stUSART1.RX_BUF_LENGTH == 0x00) u_Index_Chk = Rx_SYNC_AND_BYTE;
		else 
		{
			if(stUSART1.RX_BUF_INDEX >= 0x03)
			{
				u_Index_Chk = Rx_DATA_BYTE;
			}
			else
			{
				if(stUSART1.RX_STATUS == 0x00)
				{
					u_Index_Chk = Rx_LENGTH_BYTE;
				}
			}
		}

		// 두번째, 세번째 바이트 체크 (Rx_SYNC_AND_BYTE : Sync & Byte Check, Rx_LENGTH_BYTE : Length Check)
		Rx_Main_Comm_Handling(u_Index_Chk, u_buf);
	}
}

/*******************************************************************************
* Function Name  : Sony_Data_Pasher
* Description    : This function handles USART1 interrupt request.
* Input           : Main - PA10 USART1_RX
* Output         : Main - PA9 USART1_TX
*******************************************************************************/
void Sony_Data_Pasher(u8 u_buf)
{
	if(stBYPASS.RX_STATUS)
	{
		stBYPASS.RX_BUF[stBYPASS.RX_CNT++] = u_buf;

		if(u_buf == 0xFF)
		{
			stBYPASS.RX_STATUS = 0x00;
			stBYPASS.RX_CNT = 0x00;
			stBYPASS.RX_PARITY = 0x01;			
		}
	}
	else
	{
		if(u_buf == SONY_FIRST_BYTE)
		{
			stBYPASS.RX_STATUS = 0x01;
			stBYPASS.RX_BUF[0] = u_buf;
			stBYPASS.RX_CNT++;
			
		}
	}
}

/*******************************************************************************
* Function Name  : USART1_IRQHandler
* Description    : This function handles USART1 interrupt request.
* Input           : Main - PA10 USART1_RX
* Output         : Main - PA9 USART1_TX
*******************************************************************************/
void USART1_IRQHandler(void)
{
	u8 Rx_Buf = 0x00;
	
  	// =======================================
  	// USART1 TX Process : TILT -> MAIN Board
  	// =======================================
	if (USART_GetITStatus(USART1, USART_IT_TC) != RESET)
	{
		if (stUSART1.TX_CNT < stUSART1.TX_MAX) 
		{
			USART_SendData(USART1, stUSART1.TX_BUF[stUSART1.TX_CNT++]);
		}
		else 
		{
			stUSART1.TX_MAX = 0;
			stUSART1.TX_CNT = 0;
		}
		
		USART_ClearITPendingBit(USART1, USART_IT_TC);
	}

  	// =======================================
  	// USART1 RX Process : TILT <- MAIN Board
  	// =======================================
	if (USART_GetITStatus(USART1, USART_IT_RXNE) != RESET)
	{
		Rx_Buf = USART_ReceiveData(USART1);

		Main_Protocol_Data_Pasher(Rx_Buf);
		
		//Sony_Data_Pasher(Rx_Buf);

		//if(stUSART_ERROR.RX_CNT == UART4_RX_BUF_MAX) stUSART_ERROR.RX_CNT = 0;

		//stUSART_ERROR.RX_BUF[stUSART_ERROR.RX_CNT++] = Rx_Buf;
	}
}

/*******************************************************************************
* Function Name  : LRF_Data_Clear
*******************************************************************************/
void LRF_Data_Clear(void)
{
	u8 i;
	
	for(i=0; i<LRF_RX_BUF_MAX; i++)
	{
		stLRF.RX_BUF[i] = 0x00;
	}
}

/*******************************************************************************
* Function Name  : LRF_Trans_Data
*******************************************************************************/
void LRF_Trans_Data(void)
{
	u8 i;

	if(stBYPASS.TX_FLAG == 0x00)
	{
		for(i=0; i<LRF_RX_BUF_MAX; i++)
		{
			stUSART1.TX_BUF[i] = stLRF.RX_BUF[i];
		}

		stUSART1.TX_CNT = 0;
		stUSART1.TX_MAX = 21;
		
		USART_SendData(USART1, stUSART1.TX_BUF[stUSART1.TX_CNT++]);
	}
	
}

/************************************************************************************
* Function Name  : LRF_Data_Pasher
* Description    : This function handles USART2 interrupt request.
* Input           : LRF - PA10 USART2_RX
* Output         : LRF - PA9 USART2_TX
-------------------------------------------------------------------------------------
* LRF 출력데이터 예제
[00]	[01]	[02]	[03]	[04]	[05]	[06]	[07]	[08]	[09]	[10]	[11]	[12]	[13]	[14]	[15]	[16]	[17]	[18]	[19]	[20]
44	4D	20	31	20	30	30	30	38	2E	36	20	20	39	39	39	20	33	31	0D	0A
D	M		1		0	0	0	8	.	6			9	9	9		3	1		
*************************************************************************************/
void LRF_Data_Pasher(u8 u_Data)
{
	// LRF <-> TILT
	switch(stDIP.MODE2)
	{
		case LRF_MODE:

			// Data Compare Check
			if(stLRF.RX_CNT == 0x14)
			{
				if((stLRF.RX_BUF[0] == LRF_BYTE_1) && (stLRF.RX_BUF[1] == LRF_BYTE_2) && (stLRF.RX_BUF[19] == LRF_BYTE_END))
				{
					LRF_Trans_Data();
				}

				LRF_Data_Clear();
				stLRF.RX_CNT = 0;
				stLRF.RX_END_FLAG = 0x01;
			}

			// Data Save
			if(stLRF.RX_CNT >= 0x02)
			{
				stLRF.RX_BUF[stLRF.RX_CNT] = u_Data;
				stLRF.RX_CNT++;
			}

			if(stLRF.RX_END_FLAG == 0x00)
			{
				// Second Data Check
				if((u_Data == LRF_BYTE_2) && (stLRF.RX_CNT == 1))
				{
					stLRF.RX_BUF[1] = LRF_BYTE_2;
					stLRF.RX_CNT++;
				}			

				// First Data Check
				if((u_Data == LRF_BYTE_1) && (stLRF.RX_CNT == 0))
				{
					stLRF.RX_BUF[0] = LRF_BYTE_1;
					stLRF.RX_CNT++;
				}
			}
			else
			{
				stLRF.RX_END_FLAG = 0x00;
			}

			if(stLRF.RX_CNT >= LRF_RX_BUF_MAX) 
			{
				stLRF.RX_CNT = 0;
				LRF_Data_Clear();
			}
			
			break;
	}
}

/*******************************************************************************
* Function Name  : USART2_IRQHandler
* Description    : This function handles USART2 interrupt request.
* Input           : MDIN - PA3 USART2_RX
* Output         : MDIN - PA2 USART2_TX
*******************************************************************************/
void USART2_IRQHandler(void)
{
	u8 Rx_Buf = 0x00, Tx_Buf = 0x00;	

	// =======================================
	// USART2 TX Process 
	// =======================================
	if (USART_GetITStatus(USART2, USART_IT_TC) != RESET)
	{

		if(stUSART2.TX_CNT < stUSART2.TX_MAX)
		{
			Tx_Buf = stUSART2.TX_BUF[stUSART2.TX_CNT];
			stUSART2.TX_CNT++;				

			USART_SendData(USART2, Tx_Buf);
		}
		else
		{
			stUSART2.TX_CNT = 0x00;
			stUSART2.TX_MAX = 0x00;
		}

		USART_ClearITPendingBit(USART2, USART_IT_TC);

	}

	// =======================================
	// USART2 RX Process
	// =======================================
	if (USART_GetITStatus(USART2, USART_IT_RXNE) != RESET)
	{
		Rx_Buf = USART_ReceiveData(USART2);
	}     
}

/*******************************************************************************
* Function Name  : USART3_IRQHandler
* Description    : This function handles USART1 interrupt request.
* Input           : Camera - PB11 USART3_RX
* Output         : Camera - PB10 USART3_TX
*******************************************************************************/
void USART3_IRQHandler(void)
{
	u8 Rx_Buf = 0x00, Tx_Buf = 0x00;	

  	// =======================================
  	// USART3 TX Process 
  	// =======================================
	if (USART_GetITStatus(USART3, USART_IT_TC) != RESET)
	{ 
		USART_SendData(USART3, Tx_Buf);
		
		USART_ClearITPendingBit(USART3, USART_IT_TC);
	}
	
  	// =======================================
  	// USART3 RX Process
  	// =======================================
	if (USART_GetITStatus(USART3, USART_IT_RXNE) != RESET)
	{
		Rx_Buf = USART_ReceiveData(USART3);
	}

}

/*******************************************************************************
* Function Name  : SONY_Data_Clear
*******************************************************************************/
void SONY_Data_Clear(void)
{
	u8 i;
	
	for(i=0; i<SONY_RX_BUF_MAX; i++)
	{
		stSONY.RX_BUF[i] = 0x00;
	}
}

/*******************************************************************************
* Function Name  : TSM_Data_Pasher
*******************************************************************************/
void TSM_Data_Pasher(u8 u_Buf)
{
	u8 i = 0;
	u8 u_Data_P1 = 0x00, u_Data_P2 = 0x00;
	u16 u16_Convert_Data = 0x0000;
	u8 u_Convert_Data  = 0x00;	

	if(stUART4.RX_ENABLE == 0x01)
	{
		stUART4.RX_BUF[stUART4.RX_CNT++] = u_Buf;

		if(stUART4.RX_BUF_MAX == 0x00)
		{
			switch(stUART4.RX_BUF[1])
			{
				case TSM_CALL_ALL_TEMPERATURE:
					stUART4.RX_BUF_MAX = 0x23;
					break;

				case TSM_CALL_FIRMWARE_VERSION:
					stUART4.RX_BUF_MAX = 0x08;
					break;

				case TCM_COOLER_RUNTIME_INQ:
					if(stINFO.THERMAL_MODEL == TCM_640)
					{
						stUART4.RX_BUF_MAX = 0x07;
					}
					break;

				default:
					stUART4.RX_BUF_MAX = 0x06;
					break;
			}
		}

		// Rx Data Check & Initialization
		if((stUART4.RX_CNT == stUART4.RX_BUF_MAX) && (u_Buf == 0xAF))
		{
			switch(stUART4.RX_BUF_MAX)
			{
				case 0x06:

					switch(stUART4.RX_REQUEST_CMD)
					{
						case TSM_CALL_MODULE_STATUS:

							if(stUART4.RX_BUF[1] == TSM_CALL_MODULE_STATUS)
							{
								u_Data_P1 = stUART4.RX_BUF[2];

								if(u_Data_P1) 
								{
									stTSM.MODULE_ENABLE = 0x01;
								}
								
								stTSM.MODULE_STATUS = u_Data_P1;
								stINFO.MODULE_TYPE = TSM_MODULE;

								stUART4.RX_REQUEST_CMD = 0x00;
							}
								
							break;
							
						case TSM_CALL_DIGITAL_ZOOM_POSITION:

							if(stUART4.RX_BUF[1] == TSM_CALL_DIGITAL_ZOOM_POSITION)
							{
								u_Data_P1 = stUART4.RX_BUF[4];
								u16_Convert_Data |= u_Data_P1;
								stTSM.ZOOM_DATA = u16_Convert_Data;

								stTSM.ZOOM_CNT = stTSM.ZOOM_DATA;

								stUART4.RX_REQUEST_CMD = 0x00;
							}

							break;

						case TSM_CALL_OPTICAL_ZOOM_POSITION:
							break;

						case TSM_CALL_TOTAL_ZOOM_POSITION:
							
							if(stUART4.RX_BUF[1] == TSM_CALL_TOTAL_ZOOM_POSITION)
							{
								u_Data_P1 = stUART4.RX_BUF[2];
								u_Data_P2 = stUART4.RX_BUF[3];

								u16_Convert_Data = u_Data_P1 << 8;
								u16_Convert_Data |= u_Data_P2;

								stTSM.ZOOM_CNT = u16_Convert_Data;

								stUART4.RX_REQUEST_CMD = 0x00;
								stUART4.RX_REQUEST_COMPLETE = TSM_CALL_TOTAL_ZOOM_POSITION;
							}
							
							break;

						case TSM_CALL_FOCUS_POSITION:

							if(stUART4.RX_BUF[1] == TSM_CALL_FOCUS_POSITION)
							{
								u_Data_P1 = stUART4.RX_BUF[2];
								u_Data_P2 = stUART4.RX_BUF[3];

								u16_Convert_Data = u_Data_P1 << 8;
								u16_Convert_Data |= u_Data_P2;

								stTSM.FOCUS_CNT = u16_Convert_Data;

								stUART4.RX_REQUEST_CMD = 0x00;
								stUART4.RX_REQUEST_COMPLETE = TSM_CALL_FOCUS_POSITION;								
							}
							
							break;

						case TSM_CALL_PRODUCT_IDENTIFICATION:

							if(stUART4.RX_BUF[1] == TSM_CALL_PRODUCT_IDENTIFICATION)
							{
								// Camera Information Data Check							
								stINFO.THERMAL_MODEL = stUART4.RX_BUF[2];
								stINFO.THERMAL_LENS = stUART4.RX_BUF[4];
								
								stUART4.RX_REQUEST_CMD = 0x00;
							}
							
							break;

						case TSM_CALL_CAMERA_INFORMATION:

							if(stUART4.RX_BUF[1] == TSM_CALL_CAMERA_INFORMATION)
							{
								// Camera Information Data Check
								stINFO.THERMAL_VER_HIGH = stUART4.RX_BUF[3];
								stINFO.THERMAL_VER_LOW = stUART4.RX_BUF[4];
								
								stUART4.RX_REQUEST_CMD = 0x00;
							}
							
							break;

						case TSM_CALL_FPGA_VERSION:

							if(stUART4.RX_BUF[1] == TSM_CALL_FPGA_VERSION)
							{
								stINFO.FPGA_VERSION_HIGH = stUART4.RX_BUF[2];
								stINFO.FPGA_VERSION_LOW = stUART4.RX_BUF[3];

								stUART4.RX_REQUEST_CMD = 0x00;
							}
							
							break;
							
						case TSM_CALL_TEMPERATURE_MODE:

							if(stUART4.RX_BUF[1] == TSM_CALL_TEMPERATURE_MODE)
							{
								// Camera Information Data Check
								stINFO.THERMAL_TEMP_MODE = stUART4.RX_BUF[2];
								
								stUART4.RX_REQUEST_CMD = 0x00;
							}
							
							break;

						case TCM_TOTAL_ZOOM_POSITION_INQ:

							if(stUART4.RX_BUF[1] == TCM_TOTAL_ZOOM_POSITION_INQ)
							{
								u_Data_P1 = stUART4.RX_BUF[2];
								u_Data_P2 = stUART4.RX_BUF[3];

								u16_Convert_Data = u_Data_P1 << 8;
								u16_Convert_Data |= u_Data_P2;

								stTSM.ZOOM_DATA = u16_Convert_Data;

								stTSM.ZOOM_CNT = stTSM.ZOOM_DATA;

								stUART4.RX_REQUEST_CMD = 0x00;
							}
							
							break;

						case TCM_GET_FW_UPDATE_INQ:

							if(stUART4.RX_BUF[1] == TCM_GET_FW_UPDATE_INQ)
							{
								stINFO.THERMAL_YEAR = stUART4.RX_BUF[2];
								stINFO.THERMAL_MONTH = stUART4.RX_BUF[3];
								stINFO.THERMAL_DAY = stUART4.RX_BUF[4];
									
								stUART4.RX_REQUEST_CMD = 0x00;
							}
							
							break;

						case TCM_GET_ENGINE_VERSION:

							if(stUART4.RX_BUF[1] == TCM_GET_ENGINE_VERSION)
							{
								stINFO.THERMAL_ENGINE_VER_HW = stUART4.RX_BUF[2];
								stINFO.THERMAL_ENGINE_VER_FW = stUART4.RX_BUF[3];

								stUART4.RX_REQUEST_CMD = 0x00;
							}
							
							break;		

						case TCM_FOCUS_POSITION_INQ:

							if(stUART4.RX_BUF[1] == TCM_FOCUS_POSITION_INQ)
							{
								u_Data_P1 = stUART4.RX_BUF[2];
								u_Data_P2 = stUART4.RX_BUF[3];

								u16_Convert_Data = u_Data_P1 << 8;
								u16_Convert_Data |= u_Data_P2;

								stTSM.FOCUS_CNT = u16_Convert_Data;

								stUART4.RX_REQUEST_CMD = 0x00;
							}

							break;	

						default:
							break;
					}
						
					break;

				case 0x07:
					switch(stUART4.RX_REQUEST_CMD)
					{
						case TCM_COOLER_RUNTIME_INQ:

								stINFO.THERMAL_ENGINE_TIME_DAY= 0x0000;
								stINFO.THERMAL_ENGINE_TIME_DAY |= (stUART4.RX_BUF[2]<<8);
								stINFO.THERMAL_ENGINE_TIME_DAY |= (stUART4.RX_BUF[3]&0xFF);

								stINFO.THERMAL_ENGINE_TIME_HOUR = 0x0000;
								stINFO.THERMAL_ENGINE_TIME_HOUR |= (stUART4.RX_BUF[4]<<8);
								stINFO.THERMAL_ENGINE_TIME_HOUR |= (stUART4.RX_BUF[5]&0xFF);

								stINFO.THERMAL_ENGINE_DAY_HIGH = stUART4.RX_BUF[2];
								stINFO.THERMAL_ENGINE_DAY_LOW = stUART4.RX_BUF[3];
								stINFO.THERMAL_ENGINE_HOUR_HIGH = stUART4.RX_BUF[4];
								stINFO.THERMAL_ENGINE_HOUR_LOW = stUART4.RX_BUF[5];								
								
								stINFO.TCM640_ENGINE_RUNTIME_COMPLETE = TRUE;
								
								stUART4.RX_REQUEST_CMD = 0x00;	

							break;
					}
					break;
					
				case 0x08:
					
					switch(stUART4.RX_REQUEST_CMD)
					{
						case TSM_CALL_FIRMWARE_VERSION:

							if(stUART4.RX_BUF[1] == TSM_CALL_FIRMWARE_VERSION)
							{
								// Camera Information Data Check
								stINFO.THERMAL_DAY = stUART4.RX_BUF[4];
								stINFO.THERMAL_MONTH = stUART4.RX_BUF[5];
								stINFO.THERMAL_YEAR = stUART4.RX_BUF[6];
								
								stUART4.RX_REQUEST_CMD = 0x00;
							}
							
							break;

						default:
							break;
					}
							
					break;
					
				case 0x23:
					
					//stTEMP.TEMPERATURE_READ_COMPLETE = 0x01;	// 온도 체크 데이터 수신 완료.
					
					break;

				default:
					break;
			}
		
			for(i=0;i<stUART4.RX_BUF_MAX;i++)
			{
				//stTEMP.RX_BUF[i] = stUART4.RX_BUF[i];
				stUART4.RX_BUF[i] = 0x00;
			}

			stUART4.RX_ENABLE = 0x00;
			stUART4.RX_CNT = 0x00;
			stUART4.RX_BUF_MAX = 0x00;
			stUART4.RX_PARITY = 0x01;
			
		}
		else if((stUART4.RX_CNT == stUART4.RX_BUF_MAX) && (u_Buf != 0xAF))
		{
			for(i=0;i<stUART4.RX_CNT;i++)
			{
				stUART4.RX_BUF[i] = 0x00;
			}

			stUART4.RX_ENABLE = 0x00;
			stUART4.RX_CNT = 0x00;
			stUART4.RX_BUF_MAX = 0x00;
			stUART4.RX_REQUEST_ERROR = 0x01;			
		}
	}

	if((stUART4.RX_ENABLE == 0x00) && (u_Buf == 0xA0))
	{
		stUART4.RX_BUF[0] = u_Buf;
		stUART4.RX_CNT++;
		stUART4.RX_ENABLE = 0x01;
	}
}

/*******************************************************************************
* Function Name  : Rx_Sony_Inquiry_Command
*******************************************************************************/
void SONY_Data_Pasher(u8 u_buf)
{
	u16 u_CZoomData = 0x0000, u_CFocusData = 0x0000;

	// Data Save
	if(stSONY.RX_CNT >= 0x02)
	{
		stSONY.RX_BUF[stSONY.RX_CNT] = u_buf;
		stSONY.RX_CNT++;
	}

	if(stSONY.RX_CNT == 0x04)
	{
		if((stSONY.RX_BUF[0] == SONY_BYTE_1) && (stSONY.RX_BUF[1] == SONY_BYTE_2) && (stSONY.RX_BUF[3] == SONY_BYTE_END))
		{
			switch(stUART4.RX_REQUEST_CMD)
			{
				case SONY_POWER_INQ:

					stSONY.MODULE_STATUS = stSONY.RX_BUF[2];

					switch(stSONY.MODULE_STATUS)
					{
						case 0x02:
							stSONY.MODULE_ENABLE = 1;
							break;

						case 0x03:
							stSONY.MODULE_ENABLE = 0;
							break;

						default:
							break;
					}

					stINFO.MODULE_TYPE = SONY_MODULE;
					
					break;

				default:
					break;
			}

			SONY_Data_Clear();
			
			stSONY.RX_CNT = 0;
			stSONY.RX_END_FLAG = 0x01;	
		}
	}

	// Data Compare Check
	if(stSONY.RX_CNT == 0x07)
	{
		if((stSONY.RX_BUF[0] == SONY_BYTE_1) && (stSONY.RX_BUF[1] == SONY_BYTE_2) && (stSONY.RX_BUF[6] == SONY_BYTE_END))
		{
			switch(stUART4.RX_REQUEST_CMD)
			{
				case SONY_CALL_ZOOM_POSITION:
					
					u_CZoomData = stSONY.RX_BUF[2];
					stSONY.ZOOM_CNT = u_CZoomData << 12;
					u_CZoomData = stSONY.RX_BUF[3];
					stSONY.ZOOM_CNT |= u_CZoomData << 8;
					u_CZoomData = stSONY.RX_BUF[4];
					stSONY.ZOOM_CNT |= u_CZoomData << 4;
					u_CZoomData = stSONY.RX_BUF[5];
					stSONY.ZOOM_CNT |= u_CZoomData;

					if(stSONY.RX_BUF[6] == 0x00) 
					{
						stUART4.RX_REQUEST_ERROR = 0x01;
					}
					else 
					{
						stUART4.RX_REQUEST_CMD = 0x00;
						stUART4.RX_REQUEST_COMPLETE = SONY_CALL_ZOOM_POSITION;
					}
					
					break;

				case SONY_CALL_FOCUS_POSITION:
					
					u_CFocusData = stSONY.RX_BUF[2];
					stSONY.FOCUS_CNT = u_CFocusData << 12;
					u_CFocusData = stSONY.RX_BUF[3];
					stSONY.FOCUS_CNT |= u_CFocusData << 8;
					u_CFocusData = stSONY.RX_BUF[4];
					stSONY.FOCUS_CNT |= u_CFocusData << 4;
					u_CFocusData = stSONY.RX_BUF[5];
					stSONY.FOCUS_CNT |= u_CFocusData;

					if(stSONY.RX_BUF[6] == 0x00) 
					{
						stUART4.RX_REQUEST_ERROR = 0x01;
					}
					else 
					{
						stUART4.RX_REQUEST_COMPLETE = SONY_CALL_FOCUS_POSITION;
						stUART4.RX_REQUEST_CMD = 0x00;
					}

					break;

				default:

					stUART4.RX_ENABLE = 0x00;
					if(stUART4.RX_REQUEST_ERROR != 0x00) stUART4.RX_REQUEST_ERROR = 0x00;
					
					break;
			}

			SONY_Data_Clear();
			
			stSONY.RX_CNT = 0;
			stSONY.RX_END_FLAG = 0x01;

		}
	}
	
	if(stSONY.RX_END_FLAG == 0x00)
	{
		// Second Data Check
		if((u_buf == SONY_BYTE_2) && (stSONY.RX_CNT == 1))
		{
			stSONY.RX_BUF[1] = SONY_BYTE_2;
			stSONY.RX_CNT++;
		}
		else if((u_buf != SONY_BYTE_2) && (stSONY.RX_CNT == 1))
		{
			stSONY.RX_BUF[0] = 0x00;
			stSONY.RX_CNT = 0;
		}

		// First Data Check
		if((u_buf == SONY_BYTE_1) && (stSONY.RX_CNT == 0))
		{
			stSONY.RX_BUF[0] = SONY_BYTE_1;
			stSONY.RX_CNT++;
		}
	}
	else
	{
		stSONY.RX_END_FLAG = 0x00;
	}

	if(stSONY.RX_CNT >= SONY_RX_BUF_MAX)
	{
		stSONY.RX_CNT = 0;
		SONY_Data_Clear();
		
	}
}

// ============================================================================
// USART3 : UART4 Data Pasher (TSM)
// ============================================================================
void UART4_Data_Pasher(u8 u_Buf, u8 u_Index)
{
	if((u_Index == INDEX_NON) || (u_Index == INDEX_THERMAL))
	{
		TSM_Data_Pasher(u_Buf);
	}

	if((u_Index == INDEX_NON) || (u_Index == INDEX_COLOR))
	{
		SONY_Data_Pasher(u_Buf);
	}
}

/*******************************************************************************
* Function Name  : UART4_IRQHandler
* Description    : This function handles UART4 interrupt request.
* Input           : - PC11 UART4_RX
* Output         : - PC10 UART4_TX
*******************************************************************************/
void UART4_IRQHandler(void)
{
	u8 Rx_Buf = 0x00, Tx_Buf = 0x00;	

  	// =======================================
  	// USART4 TX Process 
  	// =======================================
	if (USART_GetITStatus(UART4, USART_IT_TC) != RESET)
	{
		if(stUART4.TX_CNT < stUART4.TX_MAX)
		{
			Tx_Buf = stUART4.TX_BUF[stUART4.TX_CNT];
			stUART4.TX_CNT++;				

			USART_SendData(UART4, Tx_Buf);
		}
		else
		{
			stUART4.TX_CNT = 0x00;
			stUART4.TX_MAX = 0x00;
		}

		USART_ClearITPendingBit(UART4, USART_IT_TC);
	}
	
  	// =======================================
  	// USART4 RX Process
  	// =======================================

	if (USART_GetITStatus(UART4, USART_IT_RXNE) != RESET)
	{
		Rx_Buf = USART_ReceiveData(UART4);

		UART4_Data_Pasher(Rx_Buf, stINFO.MODULE_TYPE);
	}
}

/*******************************************************************************
* Function Name  : Rx_Second_Comm_Check
*******************************************************************************/
void Rx_Pelco_Address_Check(u8 u_buf)
{
	stUART5.RX_BUF[1] =  u_buf;
	stUART5.RX_BUF_INDEX++;
	stUART5.RX_BUF_LENGTH = 0x01;
}

/*******************************************************************************
* Function Name  : Rx_Pelco_Data_Check
*******************************************************************************/
void Rx_Pelco_Data_Check(void)
{
	u8 i = 0x00, u_Checksum = 0x00;

	for(i=1; i<6; i++)
	{
		u_Checksum += stUART5.RX_BUF[i];
	}
	
	if((stUART5.RX_BUF[6] & 0xFF) == u_Checksum)		// CheckSum Check
	{
		stUART5.RX_PARITY = 0x01;	// 정상 데이터 수신 (0x00: Nondata(수신대기), 0x01: 정상데이터, 0xFF, 비정상 데이터)
		stUART5.RX_PARITY_CNT++;
		
		// DEBUG 데이터 체크 ======================================================/
		//stERROR.PARITY_CNT_CHECK++;
		//if(stERROR.PARITY_CNT_CHECK == 0x01) stERROR.TIMER_CHECK_FLAG = 0x01;
		//if(stERROR.PARITY_CNT_CHECK == 0x02) stERROR.TIMER_CHECK_FLAG = 0x00;
		// DEBUG 데이터 체크 ===================================================END/
		//if(stUSART1.RX_PRIORITY == 0x00) stUSART1.RX_PRIORITY = 0x01;
		
		stUART5.RX_BUF_INDEX = 0x00;	// Index Init
		//stUSART1.RX_BUF[stUSART1.RX_BUF_INDEX] = stUSART1.RX_PRIORITY++;
	}
	else
	{
		stUART5.RX_PARITY = 0xFF;	// 비정상 데이터 수신 (0x00: Nondata(수신대기), 0x01: 정상데이터, 0xFF, 비정상 데이터)
		stUART5.RX_ERROR_CNT++;
	}			
}

/*******************************************************************************
* Function Name  : Rx_Second_Comm_Check
*******************************************************************************/
void Rx_Second_Comm_Check(u8 u_buf, u8 u_andbyte)
{
	if(u_buf == u_andbyte)
	{
		stUART5.RX_BUF[1] =  u_buf;
		stUART5.RX_BUF_INDEX++;
		stUART5.RX_BUF_LENGTH = 0x01;
	}
	else
	{
		stUART5.RX_BUF_INDEX = 0x00;					// Index Clear
		stUART5.RX_BUF[0] = 0x00;						// Buffer Clear
		stUART5.RX_ENABLE = 0x00;						// Command Check Byte Clear
	}	
}

/*******************************************************************************
* Function Name  : Rx_Usart_Comm_Handling
*******************************************************************************/
void Rx_Usart_Comm_Handling(u8 u_sync, u8 u_buf)	// u_port : Uart Port, u_sync : Sync Byte Check (0 : First Byte, 1 : Second Byte)
{
	// 첫번째 바이트 체크 (Sync Byte Check)
	if(u_sync == Rx_SYNC_BYTE)	
	{
		stUART5.RX_BUF_INDEX = 0x00;	// Index Init
		stUART5.RX_BUF[stUART5.RX_BUF_INDEX] = u_buf;
		stUART5.RX_BUF_INDEX++;
		
		#if(ERROR_CHECK_BUF)
		stERROR.RX_BUF[stERROR.RX_CNT++] = u_buf;
		if(stERROR.RX_CNT >= ERROR_DATA_MAX) stERROR.RX_CNT = 0;
		#endif
	}

	// 두번째 바이트 체크 (Sync & Byte Check)
	if(u_sync == Rx_SYNC_AND_BYTE)
	{
		#if(ERROR_CHECK_BUF)	
		stERROR.RX_BUF[stERROR.RX_CNT++] = u_buf;
		if(stERROR.RX_CNT >= ERROR_DATA_MAX) stERROR.RX_CNT = 0;
		#endif		
		
		// 두번째 명령어 체크 (Sync & Byte Check)
		if(stUART5.RX_BUF_INDEX == 0x01)
		{
			switch(stUART5.RX_ENABLE)
			{
				case IP_SONY_SECOND_BYTE:
					Rx_Second_Comm_Check(u_buf, IP_SONY_SECOND_BYTE);
					break;

				case IP_TSM_SECOND_BYTE:
					Rx_Second_Comm_Check(u_buf, IP_TSM_SECOND_BYTE);
					break;

				case IP_DRS_SECOND_BYTE:
					Rx_Second_Comm_Check(u_buf, IP_DRS_SECOND_BYTE);
					break;

				case IP_TCM_SECOND_BYTE:
					Rx_Second_Comm_Check(u_buf, IP_TCM_SECOND_BYTE);
					break;
					
				case IP_PTZ_SECOND_BYTE:
					Rx_Second_Comm_Check(u_buf, IP_PTZ_SECOND_BYTE);
					break;

				case IP_DATA_SECOND_BYTE:
					Rx_Second_Comm_Check(u_buf, IP_DATA_SECOND_BYTE);
					break;	

				case IP_OPTION_SECOND_BYTE:
					Rx_Second_Comm_Check(u_buf, IP_OPTION_SECOND_BYTE);
					break;		

				case IP_PELCO_CHK_BYTE:
					Rx_Pelco_Address_Check(u_buf);
					break;

				default:
					break;
			}
		}	
	}

	// 세번째 바이트 체크 (Data Length)
	if(u_sync == Rx_LENGTH_BYTE)
	{
		#if(ERROR_CHECK_BUF)	
		stERROR.RX_BUF[stERROR.RX_CNT++] = u_buf;
		if(stERROR.RX_CNT >= ERROR_DATA_MAX) stERROR.RX_CNT = 0;
		#endif
		
		if(stUART5.RX_ENABLE == IP_PELCO_CHK_BYTE)
		{
			// PELCO-D Command 예외처리
			if(stUART5.RX_BUF_INDEX == 0x02)
			{
				stUART5.RX_BUF_LENGTH = 0x02;
				stUART5.RX_BUF_MAX = stUART5.RX_BUF_LENGTH + 5;
				
				stUART5.RX_BUF[2] =  u_buf;
				
				stUART5.RX_BUF_INDEX++;
			}					
		}
		else
		{
			// 세번째 데이터 길이 체크 (Sync & Byte Check)
			if(stUART5.RX_BUF_INDEX == 0x02)
			{
				stUART5.RX_BUF_LENGTH = u_buf;
				stUART5.RX_BUF_MAX = stUART5.RX_BUF_LENGTH + 5;
				
				stUART5.RX_BUF[2] =  u_buf;
				
				stUART5.RX_BUF_INDEX++;
			}
		}
	}	

	// 데이터 누적
	if(u_sync == Rx_DATA_BYTE)
	{
		#if(ERROR_CHECK_BUF)
		stERROR.RX_BUF[stERROR.RX_CNT++] = u_buf;
		if(stERROR.RX_CNT >= ERROR_DATA_MAX) stERROR.RX_CNT = 0;
		#endif		
		
		stUART5.RX_BUF[stUART5.RX_BUF_INDEX] = u_buf;

		stUART5.RX_BUF_INDEX++;	
		
		if(stUART5.RX_BUF_INDEX == stUART5.RX_BUF_MAX)
		{
			// PELCO-D Command 예외처리
			if(stUART5.RX_ENABLE == IP_PELCO_CHK_BYTE)
			{
				Rx_Pelco_Data_Check();
			}
			else
			{
				if((stUART5.RX_BUF[stUART5.RX_BUF_INDEX - 1]&0x0F) == 0x0F)		// End Byte Check
				{
					stUART5.RX_PARITY = 0x01;	// 정상 데이터 수신 (0x00: Nondata(수신대기), 0x01: 정상데이터, 0xFF, 비정상 데이터)
					stUART5.RX_PARITY_CNT++;

					// DEBUG 데이터 체크 ======================================================/
					//stERROR.PARITY_CNT_CHECK++;
					//if(stERROR.PARITY_CNT_CHECK == 0x01) stERROR.TIMER_CHECK_FLAG = 0x01;
					//if(stERROR.PARITY_CNT_CHECK == 0x02) stERROR.TIMER_CHECK_FLAG = 0x00;
					// DEBUG 데이터 체크 ===================================================END/
					
					//if(stUSART1.RX_PRIORITY == 0x00) stUSART1.RX_PRIORITY = 0x01;
					
					stUART5.RX_BUF_INDEX = 0x00;	// Index Init
					//stUSART1.RX_BUF[stUSART1.RX_BUF_INDEX] = stUSART1.RX_PRIORITY++;
				}
				else
				{
					stUART5.RX_PARITY = 0xFF;	// 비정상 데이터 수신 (0x00: Nondata(수신대기), 0x01: 정상데이터, 0xFF, 비정상 데이터)
					stUART5.RX_ERROR_CNT++;
				}
			}
			
			stUART5.RX_BUF_INDEX = 0x00;
			stUART5.RX_BUF_LENGTH = 0x00;
			
			stUART5.RX_ENABLE = 0x00;
		}
	}		
}

/*******************************************************************************
* Function Name  : Protocol_Command_Check
* Description    : This function handles UART5 interrupt request.
* Input           : TILT <-> Thermal IP Board (- PA10 UART5_RX)
* Output         : TILT <-> Thermal IP Board (- PA9 UART5_TX)
*******************************************************************************/
void Protocol_Command_Check(u8 u_buf)
{
	u8 u_Index_Chk = 0;

	if(stUART5.RX_ENABLE == 0x00)
	{
		// 첫번째 바이트 체크 (Sync Byte Check)
		switch(u_buf)
		{
			case IP_SONY_FIRST_BYTE:
				Rx_Usart_Comm_Handling(Rx_SYNC_BYTE, IP_SONY_FIRST_BYTE);
				stUART5.RX_ENABLE = IP_SONY_SECOND_BYTE;
				break;

			case IP_TSM_FIRST_BYTE:
				Rx_Usart_Comm_Handling(Rx_SYNC_BYTE, IP_TSM_FIRST_BYTE);
				stUART5.RX_ENABLE = IP_TSM_SECOND_BYTE;
				break;

			case IP_DRS_FIRST_BYTE:
				Rx_Usart_Comm_Handling(Rx_SYNC_BYTE, IP_DRS_FIRST_BYTE);
				stUART5.RX_ENABLE = IP_DRS_SECOND_BYTE;
				break;

			case IP_TCM_FIRST_BYTE:
				Rx_Usart_Comm_Handling(Rx_SYNC_BYTE, IP_TCM_FIRST_BYTE);
				stUART5.RX_ENABLE = IP_TCM_SECOND_BYTE;
				break;

			case IP_PTZ_FIRST_BYTE:
				Rx_Usart_Comm_Handling(Rx_SYNC_BYTE, IP_PTZ_FIRST_BYTE);
				stUART5.RX_ENABLE = IP_PTZ_SECOND_BYTE;
				break;

			case IP_DATA_FIRST_BYTE:
				Rx_Usart_Comm_Handling(Rx_SYNC_BYTE, IP_DATA_FIRST_BYTE);
				stUART5.RX_ENABLE = IP_DATA_SECOND_BYTE;
				break;

			case IP_OPTION_FIRST_BYTE:
				Rx_Usart_Comm_Handling(Rx_SYNC_BYTE, IP_OPTION_FIRST_BYTE);
				stUART5.RX_ENABLE = IP_OPTION_SECOND_BYTE;
				break;

			case IP_PELCO_CHK_BYTE:
				Rx_Usart_Comm_Handling(Rx_SYNC_BYTE, IP_PELCO_CHK_BYTE);
				stUART5.RX_ENABLE = IP_PELCO_CHK_BYTE;
				break;	

			default:
				break;
		}
	}
	else
	{
		if(stUART5.RX_BUF_LENGTH == 0x00) u_Index_Chk = Rx_SYNC_AND_BYTE;
		else 
		{
			if(stUART5.RX_BUF_INDEX >= 0x03)
			{
				u_Index_Chk = Rx_DATA_BYTE;
			}
			else
			{
				if(stUART5.RX_STATUS == 0x00)
				{
					u_Index_Chk = Rx_LENGTH_BYTE;
				}
			}
		}

		// 두번째, 세번째 바이트 체크 (Rx_SYNC_AND_BYTE : Sync & Byte Check, Rx_LENGTH_BYTE : Length Check)
		Rx_Usart_Comm_Handling(u_Index_Chk, u_buf);
	}
}

/*******************************************************************************
* Function Name  : UART5_IRQHandler
* Description    : This function handles UART5 interrupt request.
* Input           : IP Board - PD2 USART5_RX
* Output         : IP Board - PC12 USART5_TX
*******************************************************************************/
void UART5_IRQHandler(void)
{
	u8 Rx_Buf = 0x00, Tx_Buf = 0x00;	

  	// =======================================
  	// USART5 TX Process 
  	// =======================================
	if (USART_GetITStatus(UART5, USART_IT_TC) != RESET)
	{ 

		if(stUART5.TX_CNT < stUART5.TX_MAX)
		{
			Tx_Buf = stUART5.TX_BUF[stUART5.TX_CNT];
			stUART5.TX_CNT++;				

			USART_SendData(UART5, Tx_Buf);
		}
		else
		{
			stUART5.TX_CNT = 0x00;
			stUART5.TX_MAX = 0x00;
		}
		
		USART_ClearITPendingBit(UART5, USART_IT_TC);
	}
	
  	// =======================================
  	// USART5RX Process
  	// =======================================

	if (USART_GetITStatus(UART5, USART_IT_RXNE) != RESET)
	{
		Rx_Buf = USART_ReceiveData(UART5);

		Protocol_Command_Check(Rx_Buf);
	}
}


/******************* (C) COPYRIGHT 2016 TBT System *****END OF FILE****/

