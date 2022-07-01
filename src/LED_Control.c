
/*
 * File Name: Led_Control.c
 * Author: Chalie
 * Version: v1.0
 * Date: 2022.06.29
*/

/* include */
#include "stm32f10x.h"
//	#include "Extern.h"
//	#include "stm32f10x_tim.h"
//	#include "Define.h"
//	#include "stm32f10x_adc.h"
//	#include "stm32f10x_dma.h"

/* Functions */
/*
 * GPIOB Pin9 // Red
 * GIPOB Pin8 //Green
 * GPIOB Pin5 //Yellow
*/

void LED_On_Red (void);
void LED_Off_Red (void);
void LED_On_Green (void);
void LED_Off_Green (void);
void LED_On_Yellow (void);
void LED_Off_Yellow (void);




void LED_On_Red (void) {
	GPIO_SetBits(GPIOB, GPIO_Pin_9);
}

void LED_Off_Red (void) {
	GPIO_ResetBits(GPIOB, GPIO_Pin_9);
}

void LED_On_Green (void) {
	GPIO_SetBits(GPIOB, GPIO_Pin_8);
}

void LED_Off_Green (void) {
	GPIO_ResetBits(GPIOB, GPIO_Pin_8);
}

void LED_On_Yellow (void) {
	GPIO_SetBits(GPIOB, GPIO_Pin_5);
}

void LED_Off_Yellow (void) {
	GPIO_ResetBits(GPIOB, GPIO_Pin_5);
}










