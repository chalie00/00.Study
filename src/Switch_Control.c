/*
 * File Name: Switch_Control.c
 * Author: Chalie
 * Version: v1.0
 * Date: 2022.06.29
*/

/* include */
#include "stm32f10x.h"
#include "LED_Control.h"

/* Functions */
/* USW_On_LED_Red_On
 * USW_On_LED_Green_On
 * USW_On_LED_Yellow_On
*/

void User_SW_On_LED_Ren_On(void);
void User_SW_On_LED_Green_On(void);
void User_SW_On_LED_Yellow_On(void);


void User_SW_On_LED_Ren_On(void) {
	if(GPIO_ReadInputDataBit(GPIOA, GPIO_Pin_1) == 1) {
		LED_On_Red();
	} else {
		LED_Off_Red();
	}
}

void User_SW_On_LED_Green_On(void) {
	if(GPIO_ReadInputDataBit(GPIOA, GPIO_Pin_1) == 1) {
		LED_On_Green();
	} else {
		LED_Off_Green();
	}
}

void User_SW_On_LED_Yellow_On(void) {
	if(GPIO_ReadInputDataBit(GPIOA, GPIO_Pin_1) == 1) {
		LED_On_Yellow();
	} else {
		LED_Off_Yellow();
	}
}












