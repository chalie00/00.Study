#include "Function.h"

void SystemStart(void)
{
	Initial_Device();
	Delay(500);

	TempMonitorting = 0;
	
	Delay_1ms(1000);

	TempCalibration();
	
	TempMonitorting = 1;	
}


