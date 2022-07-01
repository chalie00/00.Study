/*=================================================================================
Project Name 					:	TPV HD Type (HD IP THERMOGRAPHY PTZ CAMERA)
Author						:	phs@tbtsys.com
==================================================================================
Part Name 					: 	NTC (R-T Characteristics & Tolerance)
Part No.						:	DS103FU(3435K)
Center-Temp/R-Value			:	25.0б╔/10000.00е╪
R-Tolerance of Center-Temp	: 	1.00%
Test Conditon					:	Zero Power
ет-Range						:	(25/85)б╔
ет-Value						:	3435.4K
ет-Tolerance					:	1.00%
==================================================================================*/ 

/*******************************************************************************
* INCLUDE
*******************************************************************************/
#include "Temperature.h"

/*******************************************************************************
* Function Name  : TempToADC - TBT Temperature Check Code
*******************************************************************************/
u16 TempToADC(u8 TempVal)
{
	u16 ConvertData;
	
	switch (TempVal)
	{
		case 0: 		//-30'
			ConvertData = 2875;
			break;
		case 1:
			ConvertData = 2857;
			break;
		case 2:
			ConvertData = 2838;
			break;
		case 3:
			ConvertData = 2819;
			break;
		case 4:
			ConvertData = 2799;
			break;
		case 5:		//-15'
			ConvertData = 2779;
			break;
		case 6:
			ConvertData = 2758;
			break;
		case 7:
			ConvertData = 2737;
			break;
		case 8:
			ConvertData = 2715;
			break;
		case 9:
			ConvertData = 2693;
			break;
		case 10:		//-10'
			ConvertData = 2670;
			break;
		case 11:
			ConvertData = 2647;
			break;
		case 12:
			ConvertData = 2623;
			break;
		case 13:
			ConvertData = 2598;
			break;
		case 14:
			ConvertData = 2574;
			break;
		case 15:		//-5'
			ConvertData = 2548;
			break;
		case 16:
			ConvertData = 2522;
			break;
		case 17:
			ConvertData = 2496;
			break;
		case 18:
			ConvertData = 2469;
			break;
		case 19:
			ConvertData = 2442;
			break;
		case 20:		//0'
			ConvertData = 2414;
			break;
		case 21:
			ConvertData = 2386;
			break;
		case 22:
			ConvertData = 2358;
			break;
		case 23:
			ConvertData = 2329;
			break;
		case 24:
			ConvertData = 2300;
			break;
		case 25:		//5'
			ConvertData = 2271;
			break;
		case 26:
			ConvertData = 2241;
			break;
		case 27:
			ConvertData = 2211;
			break;
		case 28:
			ConvertData = 2181;
			break;
		case 29:
			ConvertData = 2150;
			break;
		case 30:		//10'
			ConvertData = 2119;
			break;
		case 31:
			ConvertData = 2088;
			break;
		case 32:
			ConvertData = 2057;
			break;
		case 33:
			ConvertData = 2026;
			break;
		case 34:
			ConvertData = 1995;
			break;
		case 35:
			ConvertData = 1963;
			break;
		case 36:
			ConvertData = 1932;
			break;
		case 37:
			ConvertData = 1900;
			break;
		case 38:
			ConvertData = 1869;
			break;
		case 39:
			ConvertData = 1837;
			break;
		case 40:		//20'
			ConvertData = 1806;
			break;
		case 41:
			ConvertData = 1774;
			break;
		case 42:
			ConvertData = 1743;
			break;
		case 43:
			ConvertData = 1712;
			break;
		case 44:
			ConvertData = 1680;
			break;
		case 45:		//25'
			ConvertData = 1650;
			break;
		case 46:
			ConvertData = 1619;
			break;
		case 47:
			ConvertData = 1588;
			break;
		case 48:
			ConvertData = 1558;
			break;
		case 49:
			ConvertData = 1527;
			break;
		case 50:		//30'
			ConvertData = 1497;
			break;
		case 51:
			ConvertData = 1468;
			break;
		case 52:
			ConvertData = 1438;
			break;
		case 53:
			ConvertData = 1409;
			break;
		case 54:
			ConvertData = 1380;
			break;
		case 55:
			ConvertData = 1352;
			break;
		case 56:
			ConvertData = 1324;
			break;
		case 57:
			ConvertData = 1296;
			break;
		case 58:
			ConvertData = 1268;
			break;
		case 59:
			ConvertData = 1241;
			break;
		case 60:		// 40'
			ConvertData = 1214;
			break;
		case 61:		// 41'
			ConvertData = 1188;
			break;
		case 62:		// 42'
			ConvertData = 1162;
			break;			
		case 63:		// 43'
			ConvertData = 1136;
			break;		
		case 64:		// 44'
			ConvertData = 1111;
			break;		
		case 65:		// 45'
			ConvertData = 1087;
			break;		
		case 66:		// 46'
			ConvertData = 1062;
			break;		
		case 67:		// 47'
			ConvertData = 1038;
			break;		
		case 68:		// 48'
			ConvertData = 1015;
			break;	
		case 69:		// 49'
			ConvertData = 992;
			break;	
		case 70:		// 50'
			ConvertData = 969;
			break;
	}
	return ConvertData;
}

/*******************************************************************************
* Function Name  : CheckTemp - TBT Temperature Check Code
*******************************************************************************/
void CheckTemp(void)
{
	switch (convertV){
		case 3027:
			ConvertData = 30;
			break;
		case 3014:
			ConvertData = 29;
			break;
		case 3000:
			ConvertData = 28;
			break;
		case 2986:
			ConvertData = 27;
			break;
		case 2972:
			ConvertData = 26;
			break;
		case 2957:
			ConvertData = 25;
			break;
		case 2942:
			ConvertData = 24;
			break;
		case 2926:
			ConvertData = 23;
			break;
		case 2909:
			ConvertData = 22;
			break;
		case 2892:
			ConvertData = 21;
			break;
		case 2875:
			ConvertData = 20;
			break;
		case 2857:
			ConvertData = 19;
			break;
		case 2838:
			ConvertData = 18;
			break;
		case 2819:
			ConvertData = 17;
			break;
		case 2799:
			ConvertData = 16;
			break;
		case 2779:
			ConvertData = 15;
			break;
		case 2758:
			ConvertData = 14;
			break;
		case 2737:
			ConvertData = 13;
			break;
		case 2715:
			ConvertData = 12;
			break;
		case 2693:
			ConvertData = 11;
			break;
		case 2670:
			ConvertData = 10;
			break;
		case 2647:
			ConvertData = 9;
			break;
		case 2623:
			ConvertData = 8;
			break;
		case 2598:
			ConvertData = 7;
			break;
		case 2574:
			ConvertData = 6;
			break;
		case 2548:
			ConvertData = 5;
			break;
		case 2522:
			ConvertData = 4;
			break;
		case 2496:
			ConvertData = 3;
			break;
		case 2469:
			ConvertData = 2;
			break;
		case 2442:
			ConvertData = 1;
			break;
		case 2414:
			ConvertData = 0;
			break;
		case 2386:
			ConvertData = 1;
			break;
		case 2358:
			ConvertData = 2;
			break;
		case 2329:
			ConvertData = 3;
			break;
		case 2300:
			ConvertData = 4;
			break;
		case 2271:
			ConvertData = 5;
			break;
		case 2241:
			ConvertData = 6;
			break;
		case 2211:
			ConvertData = 7;
			break;
		case 2181:
			ConvertData = 8;
			break;
		case 2150:
			ConvertData = 9;
			break;
		case 2119:
			ConvertData = 10;
			break;
		case 2088:
			ConvertData = 11;
			break;
		case 2057:
			ConvertData = 12;
			break;
		case 2026:
			ConvertData = 13;
			break;
		case 1995:
			ConvertData = 14;
			break;
		case 1963:
			ConvertData = 15;
			break;
		case 1932:
			ConvertData = 16;
			break;
		case 1900:
			ConvertData = 17;
			break;
		case 1869:
			ConvertData = 18;
			break;
		case 1837:
			ConvertData = 19;
			break;
		case 1806:
			ConvertData = 20;
			break;
		case 1774:
			ConvertData = 21;
			break;
		case 1743:
			ConvertData = 22;
			break;
		case 1712:
			ConvertData = 23;
			break;
		case 1680:
			ConvertData = 24;
			break;
		case 1650:
			ConvertData = 25;
			break;
		case 1619:
			ConvertData = 26;
			break;
		case 1588:
			ConvertData = 27;
			break;
		case 1558:
			ConvertData = 28;
			break;
		case 1527:
			ConvertData = 29;
			break;
		case 1497:
			ConvertData = 30;
			break;
		case 1468:
			ConvertData = 31;
			break;
		case 1438:
			ConvertData = 32;
			break;
		case 1409:
			ConvertData = 33;
			break;
		case 1380:
			ConvertData = 34;
			break;
		case 1352:
			ConvertData = 35;
			break;
		case 1324:
			ConvertData = 36;
			break;
		case 1296:
			ConvertData = 37;
			break;
		case 1268:
			ConvertData = 38;
			break;
		case 1241:
			ConvertData = 39;
			break;
		case 1214:
			ConvertData = 40;
			break;
		case 1188:
			ConvertData = 41;
			break;
		case 1162:
			ConvertData = 42;
			break;
		case 1136:
			ConvertData = 43;
			break;
		case 1111:
			ConvertData = 44;
			break;
		case 1087:
			ConvertData = 45;
			break;
		case 1062:
			ConvertData = 46;
			break;
		case 1038:
			ConvertData = 47;
			break;
		case 1015:
			ConvertData = 48;
			break;
		case 992:
			ConvertData = 49;
			break;
		case 969:
			ConvertData = 50;
			break;
		case 947:
			ConvertData = 51;
			break;
		case 925:
			ConvertData = 52;
			break;
		case 903:
			ConvertData = 53;
			break;
		case 882:
			ConvertData = 54;
			break;
		case 862:
			ConvertData = 55;
			break;
		case 842:
			ConvertData = 56;
			break;
		case 822:
			ConvertData = 57;
			break;
		case 802:
			ConvertData = 58;
			break;
		case 784:
			ConvertData = 59;
			break;
		case 765:
			ConvertData = 60;
			break;
		case 747:
			ConvertData = 61;
			break;
		case 729:
			ConvertData = 62;
			break;
		case 712:
			ConvertData = 63;
			break;
		case 695:
			ConvertData = 64;
			break;
		case 678:
			ConvertData = 65;
			break;
		case 662:
			ConvertData = 66;
			break;
		case 646:
			ConvertData = 67;
			break;
		case 631:
			ConvertData = 68;
			break;
		case 616:
			ConvertData = 69;
			break;
		case 601:
			ConvertData = 70;
			break;
		case 586:
			ConvertData = 71;
			break;
		case 572:
			ConvertData = 72;
			break;
		case 559:
			ConvertData = 73;
			break;
		case 545:
			ConvertData = 74;
			break;
		case 532:
			ConvertData = 75;
			break;
		case 519:
			ConvertData = 76;
			break;
		case 507:
			ConvertData = 77;
			break;
		case 495:
			ConvertData = 78;
			break;
		case 483:
			ConvertData = 79;
			break;
		case 471:
			ConvertData = 80;
			break;
		case 460:
			ConvertData = 81;
			break;
		case 449:
			ConvertData = 82;
			break;
		case 438:
			ConvertData = 83;
			break;
		case 428:
			ConvertData = 84;
			break;
		case 418:
			ConvertData = 85;
			break;
		case 408:
			ConvertData = 86;
			break;
		case 398:
			ConvertData = 87;
			break;
		case 389:
			ConvertData = 88;
			break;
		case 379:
			ConvertData = 89;
			break;
		case 371:
			ConvertData = 90;
			break;
	}
}

/*******************************************************************************
* Function Name  : TempCalibration - TBT Temperature Check Code
*******************************************************************************/
void TempCalibration(void)
{
	u8 i;
	
	TempMonitorting = 0xff;
	
	for(i = 0; i<100; i++)
	{
		CheckTemp();
		convertV = convertV++;			
	}

	for(i = 0 ;i<100; i++)
	{
		CheckTemp();
		convertV = convertV--;			
	}
	
	TempMonitorting = 0;		
}
/*
362.2848511	91
353.766629	92
345.4646825	93
337.3737166	94
329.4885296	95
321.8040142	96
314.3151589	97
307.017049	98
299.9048669	99
292.9738927	100
286.2195044	101
279.6371777	102
273.2224859	103
266.9710993	104
260.878785	105
254.9414058	106
249.1549199	107
243.5153794	108
238.0189297	109
232.661808	110
227.4403426	111
222.3509512	112
217.3901398	113
212.554501	114
207.840713	115
203.2455379	116
198.7658201	117
194.3984849	118
190.1405371	119
185.9890589	120
181.941209	121
177.9942205	122
174.1453996	123
170.3921237	124
166.7318402	125
*/
