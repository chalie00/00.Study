
/*
 * File Name: Led_Control.c
 * Author: Chalie
 * Version: v1.0
 * Date: 2022.06.29
*/

/* include */
#include "stm32f10x.h"
#include "Delay.h"
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





void LED_Off_Red () {
	GPIO_SetBits(GPIOB, GPIO_Pin_9);
}

void LED_On_Red () {
	GPIO_ResetBits(GPIOB, GPIO_Pin_9);
}

void LED_Off_Green () {
	GPIO_SetBits(GPIOB, GPIO_Pin_8);
}

void LED_On_Green () {
	GPIO_ResetBits(GPIOB, GPIO_Pin_8);
}

void LED_Off_Yellow () {
	GPIO_SetBits(GPIOB, GPIO_Pin_5);
}

void LED_On_Yellow () {
	GPIO_ResetBits(GPIOB, GPIO_Pin_5);
}

void ALL_LED_Blink () {
	LED_Off_Green();
	delay(1000);
	LED_On_Green();
	delay(1000);
	LED_Off_Red();
	delay(1000);
	LED_On_Red();
	delay(1000);
	LED_Off_Yellow();
	delay(1000);
	LED_On_Yellow();
	delay(1000);
}

void All_LED_Off() {
	LED_Off_Green();
	LED_Off_Red();
	LED_Off_Yellow();
}

	









