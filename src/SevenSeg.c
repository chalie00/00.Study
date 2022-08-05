
/*
 * File Name: SevenSeg.c
 * Author: Chalie
 * Version: v1.0
 * Date: 2022.07.28
*/

/* include */
#include "stm32f10x.h"


/*Function*/
/*
 * SevenSegAllOn
 * SevenSegAllOff
*/



void SevenSegAllOn (void);
void SevenSegAllOff (void);
void OutPutName(int num);
void DisplayName(void);


void SevenSegAllOn (void) {
	GPIO_ResetBits(GPIOC, GPIO_Pin_0);
    GPIO_ResetBits(GPIOC, GPIO_Pin_1);
	GPIO_ResetBits(GPIOC, GPIO_Pin_2);
	GPIO_ResetBits(GPIOC, GPIO_Pin_3);
	GPIO_ResetBits(GPIOC, GPIO_Pin_4);
	GPIO_ResetBits(GPIOC, GPIO_Pin_5);
	GPIO_ResetBits(GPIOC, GPIO_Pin_6); //DOT
	GPIO_ResetBits(GPIOC, GPIO_Pin_7); //Center
}


void SevenSegAllOff (void) {
	GPIO_SetBits(GPIOC, GPIO_Pin_0);
	GPIO_SetBits(GPIOC, GPIO_Pin_1);
	GPIO_SetBits(GPIOC, GPIO_Pin_2);
	GPIO_SetBits(GPIOC, GPIO_Pin_3);
	GPIO_SetBits(GPIOC, GPIO_Pin_4);
	GPIO_SetBits(GPIOC, GPIO_Pin_5);
	GPIO_SetBits(GPIOC, GPIO_Pin_6);
	GPIO_SetBits(GPIOC, GPIO_Pin_7);
}

void OutPutName(int num) {
	
	
	switch(num)
		{
		case 1:
			//L
			GPIO_ResetBits(GPIOC, GPIO_Pin_3 | GPIO_Pin_4 | GPIO_Pin_5);
			break;
		case 2:
			//E
			GPIO_ResetBits(GPIOC, GPIO_Pin_0 | GPIO_Pin_3 | GPIO_Pin_4 | GPIO_Pin_5 | GPIO_Pin_7);
			break;
		case 3:
			//C
			GPIO_ResetBits(GPIOC, GPIO_Pin_3 | GPIO_Pin_4 | GPIO_Pin_5);
			break;
		case 4:
			//H
			GPIO_ResetBits(GPIOC, GPIO_Pin_3 | GPIO_Pin_4 | GPIO_Pin_5);
			break;
		case 5:
			//U
			GPIO_ResetBits(GPIOC, GPIO_Pin_3 | GPIO_Pin_4 | GPIO_Pin_5);
			break;

		}
}

void DisplayName(void) {

   	/*SevenSeg */
	SevenSegAllOff();
	Delay_ms(1000);

	OutPutName(1);
	Delay_ms(1000);
	
	SevenSegAllOff();
	Delay_ms(1000);
	
	OutPutName(2);

}


 










