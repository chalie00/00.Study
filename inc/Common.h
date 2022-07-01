/*=================================================================================
Project Name 		:	TPV HD Type (HD IP THERMOGRAPHY PTZ CAMERA)
Author			:	phs@tbtsys.com
==================================================================================*/
#include "stm32f10x.h"
#include "define.h"

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//      STRUCTURES
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//--------------------------------------------------------------------------------------------------//
// LED1
//--------------------------------------------------------------------------------------------------//
typedef struct 
{
	u8 LED_COUNT;
	u8 LED_FLAG;
} LED_CONTROL_DATA;

//--------------------------------------------------------------------------------------------------//
// MDIN
//--------------------------------------------------------------------------------------------------//
typedef struct 
{
	u8 LAYER_NUM;

} MDIN_DATA_INFO;

//--------------------------------------------------------------------------------------------------//
// SONY DATA
//--------------------------------------------------------------------------------------------------//
typedef struct 
{
	//--------------------------------------------------------------------------------------------------//
	// CAMERA SETTING MODE
	//--------------------------------------------------------------------------------------------------//
	u8 SET_FOCUS_MODE;			// 1.1.	Set Focus Mode (0x91)
	u8 SET_AUTO_FOCUS_MODE;		// 1.2.	Set Auto Focus Mode (0x93)
	u8 SET_MANUAL_FOCUS_MODE;	// 1.3.	Manual Focus Mode (0x08)
	u8 SET_MANUAL_IRIS_MODE;		// 1.4.	Manual IRIS Mode (0x0B)
	u8 SET_MANUAL_FOCUS_DIRECT;	// 1.5.	Manual Focus Direct (0x48)	
	u8 SET_MANUAL_ZOOM_MODE;	// 1.6.	Manual Zoom Mode (0x07)
	u8 SET_MANUAL_ZOOM_DIRECT;	// 1.7.	Manual Zoom Mode (0x07)	
	u8 SET_BLC_MODE;				// 1.8.	Set BLC Mode (0x31)
	u8 SET_WHITE_BALANCE_MODE;	// 1.9.	Set White Balance Mode (0x33)
	u8 SET_DEFOG_MODE;			// 1.10.	Set Defog Mode (0x37)
	u8 SET_SHUTTER_SPEED;			// 1.11.	Set Shutter Speed (0x4A)	
	u8 SET_FLICKER_MODE;			// 1.12.	Set Flicker Mode (0x55)
	u8 SET_APERTURE_VALUE;		// 1.13.	Set Aperture Value (0x59)	
	u8 SET_DIGITAL_ZOOM_MODE;	// 1.14.	Set Digital Zoom Mode (0x5B)	
	u8 SET_DAY_NIGHT_MODE;		// 1.15.	Set Day & Night Mode (0x5F)
	u8 SET_DSS_MODE;				// 1.16.	Set DSS Mode (0x61)
	u8 SELECT_BLC_WDR;				// 1.17.	Select BLC / WDR (0x85)
	u8 SET_HIGH_RESOLUTION;		// 1.18.	Set High Resolution (0x87)
	u8 SET_IMAGE_STABILIZER;		// 1.19.	Set Image Stabilizer (0x89)
	u8 SET_NOISE_REDUCTION;		// 1.20.	Set Noise Reduction (0x8B)
	u8 SET_COLOR_MODULE;			// 1.21.	Set Color Module (0xF0)	
	u8 SET_NTSC_PAL_MODE;			// Set NTSC/PAL Mode (0x72)

	// Device Setting Mode
	u8 DIV_ONE_PUSH_TRIGGER;		// 0x00:Disable, 0x01:Enable
	u8 DIV_TRIGGER_NON_FOCUS;		// 0x00:Disable, 0x01:Enable	
	u16 SET_MANUAL_FOCUS_DATA;	// Manual Focus Data : 0x1000 ~ 0xF000

	u16 CIRIS_STATUS;				// Active COLOR IRIS 동작 상태
	u8 CIRIS_MODE_FLAG;			// Active COLOR IRIS 동작 모드 체크

	//--------------------------------------------------------------------------------------------------//
	// CAMERA STATUS
	//--------------------------------------------------------------------------------------------------//
	u8 ZOOM_CHECK_FLAG;
	u8 FOCUS_CHECK_FLAG;

	u8 MODULE_STATUS;
	u8 MODULE_ENABLE;
	
	u16 ZOOM_POSITION;				// Light - Zoom Sync
	
	u16 ZOOM_STATUS;				// Active COLOR ZOOM 동작 상태
	u16 ZOOM_CNT;					// Active COLOR ZOOM Count
	u16 ZOOM_DATA;					// COLOR ZOOM DATA

	u16 FOCUS_STATUS;				// Active COLOR FOCUS 동작 상태
	u16 FOCUS_CNT;					// Active COLOR FOCUS Count
	u16 FOCUS_DATA;				// COLOR FOCUS DATA	

	u8 RX_CNT;						// Rx Data Count
	u8 RX_MAX;						// Rx Max Data Check Count
	u8 RX_END_FLAG;				// Rx End Flag

	u8 RX_BUF[SONY_RX_BUF_MAX];	// Rx Data Buffer

} SONY_DATA_INFO;

//--------------------------------------------------------------------------------------------------//
// LIGHT
//--------------------------------------------------------------------------------------------------//
typedef struct 
{
	u8 ZOOM_STATUS;			// Zoom-Light Status (0x00:Disable, 0x01:Enable)
	u8 EXTERNAL_STATUS;		// ExternalLight Status (0x00:Disable, 0x01:Enable)
	
	u8 INITIALIZATION;
	u8 DIRECTION;
	
	u16 POSITION_STATUS;		// 현재 Light-Zoom Step
	u16 POSITION_DATA;			// 변경 된 Light-Zoom Step
	
} LIGHT_DATA;

//--------------------------------------------------------------------------------------------------//
// LRF
//--------------------------------------------------------------------------------------------------//
typedef struct 
{
	u8 INIT_FLAG;					// LRF Booting 지연으로 인한 Start Flag
	u16 INIT_TIME;					// LRF Init Time Check
	u8 INIT_ACTIVE;					// LRF Init Active

	u8 CONTINUOUS_FLAG;			// LRF Continuous Flag
	u16 CONTINUOUS_TIME;			// LRF Continuous Time
	u16 CONTINUOUS_TIME_MAX;		// LRF Continuous Time Max
	u8 CONTINUOUS_ACTIVE;			// LRF Continuous Active

	u8 RX_BUF[LRF_RX_BUF_MAX];		// LRF Rx Buf = 22개
	
	u8 RX_CNT;						// Rx Count
	u8 RX_END_FLAG;				// Rx End Flag
	
	
} LRF_DATA;

//--------------------------------------------------------------------------------------------------//
// WIPER
//--------------------------------------------------------------------------------------------------//
typedef struct 
{
	u8 INITIALIZATION;			// Initialzation Status Check (0x00 : Non Check, 0x01:Checck)

	u8 SENSOR_TEMP;			// Wiper Sensor가 Low에서 High로 변경 시 1 pulse 하기 위한 보조 Flag
	u8 SENSOR_COUNT;			// Wiper Sensor Count

	u8 ACTIVE_COUNT;			// Wiper Active 동작 회수 체크
	
	u8 DWELL_FLAG;				// Wiper Dwell Timer Start Flag
	u8 DWELL_TIME;				// Wiper 정지 시간
	u8 DWELL_TIME_10ms;		// Wiper Dwell Timer 10ms	
	u8 DWELL_TIME_1s;			// Wiper Dwell Timer 1s

}WIPER1_DATA;

typedef struct 
{
	u8 INITIALIZATION;			// Initialzation Status Check (0x00 : Non Check, 0x01:Checck)
	u8 STATUS;					// Wiper Active (0x00:Ready, 0x01:Active)
	u8 DIRECTION;				// Wiper Direction (0x00:CW, 0x01:CCW)
	u8 STEP;						// Wiper Active Step
	
	u8 SENSOR_1;				// Sensor Check Flag
	u8 SENSOR_2;				// Sensor Check Flag

	u8 OPTION;					// Option Enable
	u8 SPRITE_STEP;				// Sprite Step
	u8 SPRITE_TIME;				// Sprite Time

	u8 FLAG;					// Wiper Active Flag (0x00:Disable, 0x01:Enable)
	u8 COUNT;					// Wiper Repeat Count
	u8 DWELL_TIME;				// Dwell Time (s)
	
	u8 DWELL_TIME_DATA;		// Wiper Dwell Time Data
	u8 DWELL_TIMER_FLAG;		// Wiper Dwell Timer Flag	(0x00:Disable, 0x01:Enable)
	u8 DWELL_TIMER_ms;		// Wiper Dwell Timer Flag	(0x00:Disable, 0x01:Enable)	
	u8 DWELL_TIMER_s;			// Wiper Dwell Timer Flag	(0x00:Disable, 0x01:Enable)	
	u8 DWELL_END_FLAG;		// Wiper Dwell End Flag	(0x00:Disable, 0x01:Enable)

	u8 CONTINUOUS_TIME;		// Wiper Continuous Time Data
	u8 CONTINUOUS_FLAG;		// Wiper Continuous Flag
	u8 CONTINUOUS_ms;			// Wiper Continuous Timer ms
	u8 CONTINUOUS_s;			// Wiper Continuous Timer sec
	u8 CONTINUOUS_m;			// Wiper Continuous Timer minute
	u8 CONTINUOUS_h;			// Wiper Continuous Timer minute
	u8 CONTINUOUS_STOP_FLAG;	// Wiper Continuous Timer minute
	
	u8 STOP_MODE;				// Wiper Stop Mode Status
	
}WIPER2_DATA;

//--------------------------------------------------------------------------------------------------//
// SYSTEM INFORMATION //
//--------------------------------------------------------------------------------------------------//
// SYSTEM : MAIN DATA
typedef struct 
{
	u8 BOOT_STATUS;	// (0x00: Nondata, 0x01: ACTIVE Status, 0x02 : Boot Ready Status)
	
	u8 START;

	u8 RX_INDEX;		// Rx Buffer Index	: 현재 저장되는 INDEX (비워져 있는 버퍼를 찾기 위한 INDEX)
	u8 RX_COMPLETE;	// Rx Complite 		: 처리 데이터 체크 (0x00: Nondata(수신대기), 0x01: 정상데이터, 0xFF, 비정상 데이터)
	u8 RX_PARITY;		// Rx Data Check 	: 수신 데이터 체크 (0x00: Nondata(수신대기), 0x01: 정상데이터, 0xFF, 비정상 데이터)
	u8 RX_REORDERING;
	u8 RX_BUF[SYS_RX_BUF_CNT][SYS_RX_BUF_MAX];	// Rx Data Buffer
	
} SYSTEM_DATA_INFO;

//--------------------------------------------------------------------------------------------------//
// COORDINATE //
//--------------------------------------------------------------------------------------------------//
// SYSTEM : MAIN DATA
typedef struct 
{
	u8 RX_INDEX;		// Rx Buffer Index	: 현재 저장되는 INDEX (비워져 있는 버퍼를 찾기 위한 INDEX)
	u8 RX_COMPLETE;	// Rx Complite 		: 처리 데이터 체크 (0x00: Nondata(수신대기), 0x01: 정상데이터, 0xFF, 비정상 데이터)
	u8 RX_PARITY;		// Rx Data Check 	: 수신 데이터 체크 (0x00: Nondata(수신대기), 0x01: 정상데이터, 0xFF, 비정상 데이터)
	u8 RX_REORDERING;
	u8 RX_BUF[COORDINATE_RX_BUF_CNT][COORDINATE_RX_BUF_MAX];	// Rx Data Buffer
	
} COORDINATE_DATA_INFO;

//--------------------------------------------------------------------------------------------------//
// USART CLEAR
//--------------------------------------------------------------------------------------------------//
typedef struct 
{
	u8 RX_PORT;				// Rx Clear Port Check
	u8 RX_INDEX;			// Rx Clear Index
	u8 RX_MAX;				// Rx Clear Count
} USART_CLEAR_INFO;

//--------------------------------------------------------------------------------------------------//
// USART1 : TILT <-> MAIN
//--------------------------------------------------------------------------------------------------//
typedef struct 
{
	u8 TX_CNT;			// Tx Data Count
	u8 TX_MAX;			// Tx Max Data Check Count
	u8 TX_INDEX;		// Buffer Tx Data Index

	u8 TX_CMD;				// Tx Cmd
	u8 TX_PARAMETER1;		// Tx Parameter 1
	u8 TX_PARAMETER2;		// Tx Parameter 2
	u8 TX_PARAMETER3;		// Tx Parameter 3

	// 전송 방법 선택
	u8 TX_READY;	// Tx Data Trans Ready
	u8 TX_REQUEST;	// Tx Data Request
	u8 TX_ACK;		// Tx Data Ack
	u8 TX_LENGTH;	// Tx Data Length

	u8 RX_CNT;			// Rx Data Count
	u8 RX_MAX;			// Rx Max Data Check Count

	u8 RX_CMD_BYTE;	// Command Check Byte
	u8 RX_CHECKSUM;	// Rx Data Check Sum
	u8 RX_PARITY;		// Rx Complte :수신 데이터 체크 (0x00: Nondata(수신대기), 0x01: 정상데이터, 0xFF, 비정상 데이터)
	u8 RX_PARITY_CNT;	// Rx Complte :수신 데이터 카운트 체크

	u8 RX_BYPASS;		// Rx Complte & Bypass (0x00: Nondata(수신대기), 0x01: 데이터전송)
	u8 RX_BYPASS_CNT;	// Rx Bypass Data Count

	u8 RX_ENABLE;		// Rx 수신 상태 체크
	u8 RX_BACK_BUF;	// Enable Check Buffer
	u8 RX_TIME_FLAG;	// Enable Clear Timer Flag
	u8 RX_TIMER;		// Enable Timer Count
	
	u8 RX_INDEX;		// Rx Buffer Index	: 현재 저장되는 INDEX (비워져 있는 버퍼를 찾기 위한 INDEX)
	u8 RX_STATUS;		// Rx Buffer Active Check	: 데이터를 저장 중인 상태인지 체크
	u8 RX_PRIORITY;		// 저장 순서 또는 처리 순서
	u8 RX_ERROR_CNT;	// Rx ERROR Count

	u8 RX_BUF_STATUS;		// Rx Buffer Status Check	: 처리되지 않은 데이터 확인 bit[0] = 0순위, bit[7] = 7번째 마지막	
	u8 RX_BUF_INDEX;		// Rx Buffer Index	: 버퍼 내 Byte 단위의 데이터 수신 Index
	u8 RX_BUF_LENGTH;		// Rx Data Count	: 버퍼 내 Byte 단위의 수신 요구 데이터
	u8 RX_BUF_MAX;			// Rx Max Data Check Count : 데이터의 길이를 체크하기 위한 Max, Or End Byte 위치

	u8 TX_BUF[USART1_TX_BUF_MAX];						// Tx Data Buffer
	u8 RX_BUF[USART1_RX_BUF_MAX];						// Rx Data Buffer
} USART1_DATA_INFO;

//--------------------------------------------------------------------------------------------------//
// USART2 : Main <-> Rear
//--------------------------------------------------------------------------------------------------//
typedef struct 
{
	u8 TX_FLAG;		// Tx Data Trans Flag
	u8 TX_CNT;		// Tx Data Count
	u8 TX_MAX;		// Tx Max Data Check Count
	u8 TX_REORDERING;		// Tx Data Reordering : 전송 순위 정렬 Flag

	u8 RX_ENABLE;		// Rx 수신 상태 체크
	u8 RX_CNT;			// Rx Data Count
	u8 RX_INDEX;		// Rx Buffer Index	: 현재 저장되는 INDEX (비워져 있는 버퍼를 찾기 위한 INDEX)
	u8 RX_STATUS;		// Rx Buffer Active Check	: 데이터를 저장 중인 상태인지 체크
	u8 RX_PARITY;		// Rx Complte :수신 데이터 체크 (0x00: Nondata(수신대기), 0x01: 정상데이터, 0xFF, 비정상 데이터)
	u8 RX_PRIORITY;		// Rx 저장 순서 또는 처리 순서

	u8 RX_BUF_STATUS;		// Rx Buffer Status Check	: 처리되지 않은 데이터 확인 bit[0] = 0순위, bit[7] = 7번째 마지막	
	u8 RX_BUF_INDEX;		// Rx Buffer Index	: 버퍼 내 Byte 단위의 데이터 수신 Index
	u8 RX_BUF_LENGTH;		// Rx Data Count	: 버퍼 내 Byte 단위의 수신 요구 데이터

	u8 RX_REQUEST_CMD;			// REQUEST COMMAND
	u8 RX_REQUEST_READY;			// REQUEST COMMAND 대기 상태 (0x00: Non Request, 0x01: Request Data Ready)
	u8 RX_REQUEST_TIMER;			// REQUEST COMMAND 대기 시간 체크 타이머
	u8 RX_REQUEST_ERROR;			// REQUEST COMMAND 대기 시간 동안 응답이 없을 경우 ERROR 발생
	u8 RX_REQUEST_ERROR_INFO;		// REQUEST COMMAND ERROR CMD

	u8 TX_INDEX;		// Buffer Tx Data Index
	u8 TX_PRIORITY;		// 저장 순서 또는 처리 순서

	u8 TX_BUF[USART2_TX_BUF_MAX];	// Tx Data Buffer
	u8 RX_BUF[USART2_RX_BUF_MAX];	// Rx Data Buffer
} USART2_DATA_INFO;

//--------------------------------------------------------------------------------------------------//
// USART4 : TSM <-> Tilt Board
//--------------------------------------------------------------------------------------------------//
typedef struct 
{
	u8 TX_CNT;		// Tx Data Count
	u8 TX_MAX;		// Tx Max Data Check Count

	// 전송 방법 선택
	u8 TX_READY;	// Tx Data Trans Ready
	u8 TX_REQUEST;	// Tx Data Request
	u8 TX_ACK;		// Tx Data Ack
	u8 TX_LENGTH;	// Tx Data Length

	u8 TX_INDEX;	// Buffer Tx Data Index

	u8 TX_CMD;				// Tx Cmd
	u8 TX_PARAMETER1;		// Tx Parameter 1
	u8 TX_PARAMETER2;		// Tx Parameter 2
	u8 TX_PARAMETER3;		// Tx Parameter 3
	u8 TX_PARAMETER4;		// Tx Parameter 4
	u8 TX_PARAMETER5;		// Tx Parameter 5
	u8 TX_PARAMETER6;		// Tx Parameter 6
	u8 TX_PARAMETER7;		// Tx Parameter 7
	u8 TX_PARAMETER8;		// Tx Parameter 8
	u8 TX_PARAMETER9;		// Tx Parameter 9
	
	u8 RX_REQUEST_CMD;			// REQUEST COMMAND
	u8 RX_REQUEST_ERROR;			// REQUEST COMMAND 대기 시간 동안 응답이 없을 경우 ERROR 발생
	u8 RX_REQUEST_COMPLETE;		// REQUEST COMMAND
	
	u8 RX_ENABLE;			// 상태 체크
	u8 RX_CNT;				// Rx Data Count
	u8 RX_BUF_MAX;			// Rx Max Data Check Count : 데이터의 길이를 체크하기 위한 Max, Or End Byte 위치
	u8 RX_PARITY;			// Rx Complte :수신 데이터 체크 (0x00: Nondata(수신대기), 0x01: 정상데이터, 0xFF, 비정상 데이터)

	u8 TX_BUF[UART4_TX_BUF_MAX];						// Tx Data Buffer
	u8 RX_BUF[UART4_RX_BUF_MAX];						// Rx Data Buffer
} UART4_DATA_INFO;

//--------------------------------------------------------------------------------------------------//
// USART5 : Tilt <-> IP Board
//--------------------------------------------------------------------------------------------------//
typedef struct 
{
	u8 TX_CNT;		// Tx Data Count
	u8 TX_MAX;		// Tx Max Data Check Count

	u8 RX_ENABLE;		// Rx 수신 상태 체크
	u8 RX_BACK_BUF;	// Enable Check Buffer
	u8 RX_TIME_FLAG;	// Enable Clear Timer Flag
	u8 RX_TIMER;		// Enable Timer Count
	
	u8 RX_INDEX;		// Rx Buffer Index	: 현재 저장되는 INDEX (비워져 있는 버퍼를 찾기 위한 INDEX)
	u8 RX_STATUS;		// Rx Buffer Active Check	: 데이터를 저장 중인 상태인지 체크
	u8 RX_PARITY;		// Rx Complte :수신 데이터 체크 (0x00: Nondata(수신대기), 0x01: 정상데이터, 0xFF, 비정상 데이터)
	u8 RX_PARITY_CNT;	// Rx Complte :수신 데이터 카운트 체크

	u8 RX_PRIORITY;		// 저장 순서 또는 처리 순서
	u8 RX_ERROR_CNT;	// Rx ERROR Count

	u8 RX_BUF_STATUS;		// Rx Buffer Status Check	: 처리되지 않은 데이터 확인 bit[0] = 0순위, bit[7] = 7번째 마지막	
	u8 RX_BUF_INDEX;		// Rx Buffer Index	: 버퍼 내 Byte 단위의 데이터 수신 Index
	u8 RX_BUF_LENGTH;		// Rx Data Count	: 버퍼 내 Byte 단위의 수신 요구 데이터
	u8 RX_BUF_MAX;			// Rx Max Data Check Count : 데이터의 길이를 체크하기 위한 Max, Or End Byte 위치

	u8 TX_INDEX;			// Buffer Tx Data Index

	u8 TX_BUF[UART5_TX_BUF_MAX];								// Tx Data Buffer
	u8 RX_BUF[UART5_RX_BUF_MAX];								// Rx Data Buffer
	u8 RX_RESERVE_BUF[UART5_RX_BUF_CNT][UART5_TX_BUF_MAX];	// Rx Command Wait Buffer
} UART5_DATA_INFO;

//--------------------------------------------------------------------------------------------------//
// ERROR CHECK(지울것)
//--------------------------------------------------------------------------------------------------//
typedef struct 
 {
	u8 TX_CNT;		// Tx Data Count
	u8 TX_MAX;		// Tx Max Data Check Count

	u8 RX_CNT;		// Rx Data Count

	u8 RX_ENABLE;		// Rx 수신 상태 체크
	u8 RX_BACK_BUF;	// Enable Check Buffer
	u8 RX_TIME_FLAG;	// Enable Clear Timer Flag
	u8 RX_TIMER;		// Enable Timer Count
	
	u8 RX_INDEX;		// Rx Buffer Index	: 현재 저장되는 INDEX (비워져 있는 버퍼를 찾기 위한 INDEX)
	u8 RX_STATUS;		// Rx Buffer Active Check	: 데이터를 저장 중인 상태인지 체크
	u8 RX_PARITY;		// Rx Complte :수신 데이터 체크 (0x00: Nondata(수신대기), 0x01: 정상데이터, 0xFF, 비정상 데이터)
	u8 RX_PRIORITY;		// 저장 순서 또는 처리 순서
	u8 RX_ERROR_CNT;	// Rx ERROR Count

	u8 RX_BUF_STATUS;		// Rx Buffer Status Check	: 처리되지 않은 데이터 확인 bit[0] = 0순위, bit[7] = 7번째 마지막	
	u8 RX_BUF_INDEX;		// Rx Buffer Index	: 버퍼 내 Byte 단위의 데이터 수신 Index
	u8 RX_BUF_LENGTH;		// Rx Data Count	: 버퍼 내 Byte 단위의 수신 요구 데이터
	u8 RX_BUF_MAX;			// Rx Max Data Check Count : 데이터의 길이를 체크하기 위한 Max, Or End Byte 위치

	u8 TX_INDEX;		// Buffer Tx Data Index

	u8 BUF_CHECK;

	u8 TEST_FLAG;
	u16 TEST_DATA;	

	u8 TX_BUF[UART4_TX_BUF_MAX];						// Tx Data Buffer
	u8 RX_BUF[UART4_RX_BUF_MAX];		// Rx Data Buffer
} ERROR_DATA_INFO;

//--------------------------------------------------------------------------------------------------//
// ERROR CHECK - TEST용 //
//--------------------------------------------------------------------------------------------------//
typedef struct 
{
	u16 RX_CNT;
	u8 RX_BUF[ERROR_DATA_MAX];	// Rx Data Buffer

}IP_ERROR_DATA_INFO;

//--------------------------------------------------------------------------------------------------//
// BYPASS : Tilt <-> Camera
//--------------------------------------------------------------------------------------------------//
typedef struct 
{
	u8 TX_CNT;			// Tx Data Count
	u8 TX_MAX;			// Tx Max Data Check Count

	u8 TX_FLAG;			// Tx Flag
	u8 TX_TIMER;		// Tx Flag	
	
	u8 RX_CNT;			// Rx Data Count
	u8 RX_STATUS;		// Rx Buffer Active Check	: 데이터를 저장 중인 상태인지 체크
	u8 RX_PARITY;		// Rx Complte :수신 데이터 체크 (0x00: Nondata(수신대기), 0x01: 정상데이터, 0xFF, 비정상 데이터)

	u8 TX_BUF[UART5_TX_BUF_MAX];		// Tx Data Buffer
	u8 RX_BUF[USART1_RX_BUF_MAX];		// Rx Data Buffer
} BYPASS_DATA_INFO;

//--------------------------------------------------------------------------------------------------//
// DIP SWITCH
// 1) MODE 1 
// 2) MODE 2
// - 0x00 : LED
// - 0x01 : LRF
//--------------------------------------------------------------------------------------------------//
typedef struct 
{
	u8 MODE1;
	u8 MODE2;
	
} DIPSWITCH_DATA_INFO;

//--------------------------------------------------------------------------------------------------//
// TEMPERATURE (DC-103JU)
//--------------------------------------------------------------------------------------------------//
typedef struct 
{
	u8 ENABLE;							// 0x00:Disable, 0x01:Enable
	u8 DATA_CHECK_1ms;				// 1ms DATA 누적
	u8 DATA_CHECK_10ms;				// 10ms DATA 누적	

	u16 TOTAL_VALUE_1ms;				// 1ms DATA 합산
	u16 TOTAL_VALUE_10ms;				// 10ms DATA 합산

	u16 AVERAGE_DATA;					// 100 개의 데이터 평균 값 = 100개의 데이터 분석 값.
	u8 CELSIUS_DATA;					// 섭씨('C)온도 데이터

	u8 STARTING_MODE;					// 부팅 시 1회 동작 & 체크
	u8 STARTING_MODE_ENABLE;			// 동작 상태 Enable
	u8 STARTING_MODE_COMPLETE;		// 동작 상태 완료

	u8 STARTING_MODE_TIMER_FLAG;		// TIMER START
	u16 STARTING_MODE_TIMER_ms;		// 1ms 시간 체크

} TEMPERATURE_DATA_INFO;

//--------------------------------------------------------------------------------------------------//
// ADC DATA CHECK
//--------------------------------------------------------------------------------------------------//
typedef struct 
{
	u16 DMA1_ADC_VALUE[2];				// TEMPERATURE ADC CHECK
	
}ADC_DATA_INFO;

//--------------------------------------------------------------------------------------------------//
// INFORMATION CHECK //
//--------------------------------------------------------------------------------------------------//
typedef struct 
{
	u8 BOOT_FLAG;
	u16 BOOT_CHECK_LIMIT_ms;	
	
	u8 MODULE_TYPE;
	u8 NTSC_PAL_STATUS;			// NTSC/PAL Status Check	 (0x01:NTSC, 0x02:PAL)

	u8 THERMAL_MODEL;
	u8 THERMAL_LENS;

	u8 THERMAL_VER_HIGH;
	u8 THERMAL_VER_LOW;

	u8 FPGA_VERSION_HIGH;
	u8 FPGA_VERSION_LOW;

	u8 THERMAL_ENGINE_VER_HW;
	u8 THERMAL_ENGINE_VER_FW;

	u16 THERMAL_ENGINE_TIME_DAY;
	u16 THERMAL_ENGINE_TIME_HOUR;

	u8  THERMAL_ENGINE_DAY_HIGH;
	u8  THERMAL_ENGINE_DAY_LOW;
	u8  THERMAL_ENGINE_HOUR_HIGH;
	u8  THERMAL_ENGINE_HOUR_LOW;

	u8 THERMAL_TEMP_MODE;

	u8 THERMAL_YEAR;
	u8 THERMAL_MONTH;
	u8 THERMAL_DAY;

	u8  TCM640_ENGINE_RUNTIME_COMPLETE;
	
}MODEL_DATA_INFO;

//--------------------------------------------------------------------------------------------------//
// TSM MODULE //
//--------------------------------------------------------------------------------------------------//
typedef struct 
{
	/***************************************************************************************************************************
	* CAMERA SETTING MODE
	****************************************************************************************************************************/
	// 2.1.4. Shutter Set (0x05)
	u8 SHUTTER_SET;

	// 2.1.15. Digital Zoom Enable (0x1C)
	u8 DIGITAL_ZOOM_ENABLE;

	// 2.1.19. AGC Mode Set (0x26)
	u8 AGC_MODE_SET;

	// 2.1.20. Color Mode Set (0x27)
	u8 COLOR_MODE_SET;				

	// 2.1.21. Contrast/Brightness (0x28) (when, AGC OFF)
	// 0x00:None, 0x01:Contrast, 0x02:Brightness
	u8 CONTRAST_BRIGHTNESS_ENABLE;	
	u8 CONTRAST_BRIGHTNESS_VAL;

	// 2.1.22. AGC Center Position Set (0x29)
	u8 AGC_CENTER_POSITION_SET;

	// 2.1.23. AGC Limit Level Set (0x2A)
	u8 AGC_LIMIT_LEVEL_SET;			

	// 2.1.24. AGC ROI (AGC Region of Interest) Set (0x2B)
	u8 AGC_ROI;

	// 2.1.25. MIDE Level Set (0x2C) (when, Sharpness OFF)
	u8 MIDE_LEVEL_SET;

	// 2.1.26. Sharpness Level Set (0x2D) (when, MIDE OFF)
	u8 SHARPNESS_LEVEL_SET;
	// 2.1.27. Detect Mode Set (0x31)
	// 2.1.28. Area Position Set (0x32)
	// 2.1.29. Spot Position Set (0x33)
	// 2.1.30. High Alarm Temperature (0x34)
	// 2.1.31. Low Alarm Temperature (0x35)
	// 2.1.32. Select Alarm (0x36)
	// 2.1.33. Alarm Mode (0x37)
	// 2.1.34. Temperature OSD (0x38)
	// 2.1.35. Emissivity Set (0x39)
	// 2.1.36. Mirror Mode Set (0x44)
	// 2.1.37. Flip Mode Set (0x45)
	
	// 2.1.39. Image Color Inverse(White/Black Hot) Set (0x47)
	u8 IMAGE_COLOR_INVERSE_SET;

	// 2.1.40. External Communication Option Set (0x55)
	// 2.1.41. Calibration Execute (0x65)
	// 2.1.42. Calibration Option Set (0x66)
	// 2.1.43. OSD All Off (0x76)
	// 2.1.44. Temperature Mode Set (0x77)

	// 2.1.46. Video Mode Set (0x79)
	u8 VIDEO_MODE_SET;

	// 2.1.47. OSD MENU Key Control (0xA0)
	// 2.1.48. Call Module Status (0x30)
	// 2.1.49. Call Alarm Status (0x3A)
	// 2.1.50. Call Spot Temperature (0x3B)
	// 2.1.51. Call Area Temperature (0x3C)
	// 2.1.52. Call Center Temperature (0x3D)
	// 2.1.53. Call Full Temperature (0x3E)
	// 2.1.54. Call External Communication (0x71)
	// 2.1.55. Call Camera Information (0x80)
	// 2.1.56. Call Firmware Version (0x81)
	// 2.1.57. Call Digital Zoom Position (0x82)
	// 2.1.58. Call Optical Zoom Position (0x83)
	// 2.1.59. Call Focus Position (0x84)
	// 2.1.60. Call Total Zoom Position (0x85)
	// 2.1.61. Call Temperature Mode (0x86)
	// 2.1.62. Call All Temperature (0x87)
	// 2.1.63. Call Auto AF (0x88)
	// 2.1.64. Call Product Identification (0xF0)
	// 2.1.65. Module Mode Set (0xF1)

	/***************************************************************************************************************************
	* MODULE CHECK
	****************************************************************************************************************************/
	u8 SET_NTSC_PAL_MODE;			// Set NTSC/PAL Mode

	u8 ZOOM_CHECK_FLAG;
	u8 FOCUS_CHECK_FLAG;	
	
	u16 ZOOM_CNT;
	u16 ZOOM_DATA;	
	
	u16 FOCUS_CNT;	
	u16 FOCUS_DATA;	

	u8 MODULE_ENABLE;
	u8 MODULE_STATUS;
	
	/***************************************************************************************************************************
	* STATUS
	****************************************************************************************************************************/
	u8 OPTION;							// Option Enable
	u8 CHECK;							// Temperature_Output_Control Active 예외처리 (Thermal 의 다른 동작 기능을 동작 시에는 데이터 충돌 방지를 위해 동작하지 않는다.) (0x00: Enable, 0x01:Disable)

	u8 CONVERT_DELAY_FLAG;			// Temperature_Output_Control Active 설정 시 빠르게 변환하여 USART3 충돌 문제 발생. Delay 를 추기 위한 Timer Flag
	u8 CONVERT_DELAY_ms;				// Temperature_Output_Control Active 설정 시 빠르게 변환하여 USART3 충돌 문제 발생. Delay 를 추기 위한 Timer
	u8 CONVERT_COMPLETEFLAG;			// Temperature_Output_Control Active 설정 시 빠르게 변환하여 USART3 충돌 문제 발생. Delay 를 추기 위한 Flag

	u8 ZOOM_STATUS;					// Active THERMAL ZOOM 동작 상태
	u8 FOCUS_STATUS;					// Active THERMAL ZOOM 동작 상태
	
	/*******************************
	// Temperature / PTZ / LRF  출력용 //
	*******************************/
	u8 TRANS_FLAG;						// Continuous Transfer Data(Temperature/PTZ/LRF) Flag - 0x00:On, 0x01:Off
	u16 TRANS_TIME;					// Transfer Time

	u8 TEMPERATURE_READ_FLAG;		// Continuous Read Data(Temperature) Flag - 0x00:Off, 0x01:On
	u16 TEMPERATURE_READ_TIME;		// Continuous Read Setting Time (ms) : 200~1000
	u8 TEMPERATURE_READ_COMPLETE;	// Continuous Read Complete Flag
	
	u16 TIMER_COUNT;					// Timer
	u16 TIMER_COMPLETE;				// Timer Check Complete
	
	/***************************************************************************************************************************
	* EEP_PRESET_TEMP_MARK - Temperature Mark Register
	bit[0] : Spot0 Set Enable (0 : Off, 1 : On)
	bit[1] : Spot1 Set Enable (0 : Off, 1 : On)
	bit[2] : Spot2 Set Enable (0 : Off, 1 : On)
	bit[3] : Spot3 Set Enable (0 : Off, 1 : On)
	bit[4] : Spot4 Set Enable (0 : Off, 1 : On)
	bit[5] : Non Data
	bit[6] : Center Set Enable (0 : Off, 1 : On)
	bit[7] : Area Set Enable (0 : Off, 1 : On)
	****************************************************************************************************************************/
	u8 TEMPERATURE_ENABLE;		// 현재 Target Display Status

	u16 CENTER;				// Thermal (TSM) Center Temperature Data
	u16 AREA_AVR;					// Thermal (TSM) Area Average Temperature Data
	u16 AREA_MAX;					// Thermal (TSM) Area Max Temperature Data
	u16 AREA_MIN;					// Thermal (TSM) Area Min Temperature Data	
	u16 FULL_MAX;					// Thermal (TSM) Full Max Temperature Data	
	u16 FULL_MIN;					// Thermal (TSM) Full Min Temperature Data		
	u16 SPOT0;						// Thermal (TSM) Spot0 Temperature Data
	u16 SPOT1;						// Thermal (TSM) Spot1 Temperature Data
	u16 SPOT2;						// Thermal (TSM) Spot2 Temperature Data
	u16 SPOT3;						// Thermal (TSM) Spot3 Temperature Data
	u16 SPOT4;						// Thermal (TSM) Spot4 Temperature Data

	u8 BACKUP_CENTER_EMISSIVITY;	// OSD Display 용 Backup Data (1번만 출력하기 위함)
	u8 BACKUP_AREA_EMISSIVITY;	// OSD Display 용 Backup Data (1번만 출력하기 위함)
	u8 BACKUP_SPOT0_EMISSIVITY;	// OSD Display 용 Backup Data (1번만 출력하기 위함)
	u8 BACKUP_SPOT1_EMISSIVITY;	// OSD Display 용 Backup Data (1번만 출력하기 위함)
	u8 BACKUP_SPOT2_EMISSIVITY;	// OSD Display 용 Backup Data (1번만 출력하기 위함)
	u8 BACKUP_SPOT3_EMISSIVITY;	// OSD Display 용 Backup Data (1번만 출력하기 위함)
	u8 BACKUP_SPOT4_EMISSIVITY;	// OSD Display 용 Backup Data (1번만 출력하기 위함)

	u8 RX_BUF[UART4_RX_BUF_MAX];	// Rx Data Buffer	
}TSM_DATA_INFO;

//--------------------------------------------------------------------------------------------------//
// TCM MODULE //
//--------------------------------------------------------------------------------------------------//
typedef struct 
{
	// 2.16.  AGC Type Set (GAIN, OFFSET) (0x21)
	u8 AGC_TYPE_SET;
	
}TCM_DATA_INFO;

//--------------------------------------------------------------------------------------------------//
// CDS
//--------------------------------------------------------------------------------------------------//
typedef struct 
{
	u8 ENABLE;
	u8 DATA_CHECK_1ms;				// 1ms DATA 누적
	u8 DATA_CHECK_10ms;				// 10ms DATA 누적	

	u16 TOTAL_VALUE_1ms;				// 1ms DATA 합산
	u16 TOTAL_VALUE_10ms;				// 10ms DATA 합산

	u16 AVERAGE_DATA;					// 100 개의 데이터 평균 값 = 100개의 데이터 분석 값.

	//--------------------------------------------------------------------------------------------------//
	// DAY & NIGHT
	//--------------------------------------------------------------------------------------------------//
	u8 DAY_AND_NIGHT_LEVEL;			// 
	u8 DAY_AND_NIGHT_STATUS;			// 0x00:Day, 0x01:Night
	u8 DAY_AND_NIGHT_AUTO_ENABLE;	// 0x00:Enable, 0x01:Disable
	u8 IR_AUTO_ENABLE;					// 0x00:Enable, 0x01:Disable	
	
	u16 NIGHT_CONVERT_CHECK_Cnt;
	u16 DAY_CONVERT_CHECK_Cnt;

	u8 DAY_AND_NIGHT_CONVERT_FLAG;	// 0x00:Disable, 0x01:Enable
	u8 DAY_AND_NIGHT_CONVERT_MODE;	// 0x00:Day, 0x01:Night

	u8 LUX;								// 0x00 ~ 0xFF, Default:0x7F
	u16 OFFSET;							// 0x03~0x63(DEC.3~99), Default:5(DEC.)
	
}CDS_DATA_INFO;

//--------------------------------------------------------------------------------------------------//
// FAN
//--------------------------------------------------------------------------------------------------//
/*****************************************************************************************************
* FAN 동작 사양
① 50도(969) 초과이면 : FAN ON
② 40도(1214) 초과 & 50(969) 도 이하 이면 : 동작상태유지
③ 40도(1214) 이하이면 : FAN OFF

* HEATER 동작 사양
① 20도(1806) 이하 : HEATER ON
② 30도(1497) 이상 : HEATER OFF

* Fan_Dewell_Flag = 1 이면 FAN 30분동안 동작 함. (해당 기능은 FAN ON 으로 한번 동작하면 무조건 FLAG 상태로 진입함.)
* Fan_Dewell_Flag = 0 이면 FAN 정지.
*****************************************************************************************************/
typedef struct 
{
	u8 STATUS;							// 상태 정보

	u8 FAN_DWELL_FLAG;				// MODE 동작 후 30 분 체크
	u8 FAN_DWELL_END_FLAG;			// MODE 동작 후 30 분 후 멈춤 동작
	u16 FAN_DWELL_TIMER_ms;			// FAN DWELL TIMER (ms)
	u16 FAN_DWELL_TIMER_s;			// FAN DWELL TIMER (s)

} FAN_DATA_INFO;

//--------------------------------------------------------------------------------------------------//
// HEATER
//--------------------------------------------------------------------------------------------------//
typedef struct 
{
	u8 STATUS;							// 상태 정보

} HEATER_DATA_INFO;

//--------------------------------------------------------------------------------------------------//
// TEST
//--------------------------------------------------------------------------------------------------//
typedef struct 
{
	u8 TIMER_FLAG;
	u16 TIMER_ms;
	u16 TIMER_s;	
	u8 TIMER_CHECK;
	
} TEST_DATA_INFO;

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//      DEFINE STRUCTURES
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
extern MDIN_DATA_INFO stOSD;
extern LED_CONTROL_DATA stLED_SET;
extern SONY_DATA_INFO stSONY;
extern LIGHT_DATA stLIGHT;
extern LRF_DATA stLRF;
extern WIPER1_DATA stWIPER1;
extern WIPER2_DATA stWIPER2;
extern TEMPERATURE_DATA_INFO stTEMP;
extern FAN_DATA_INFO stFAN;
extern HEATER_DATA_INFO stHEATER;
extern ADC_DATA_INFO stADC;
extern MODEL_DATA_INFO stINFO;
extern TSM_DATA_INFO stTSM;
extern TCM_DATA_INFO stTCM;
extern CDS_DATA_INFO stCDS;

extern COORDINATE_DATA_INFO stCOOR;
extern SYSTEM_DATA_INFO stSYS;
extern USART_CLEAR_INFO stUSART_CLEAR;
extern USART1_DATA_INFO stUSART1;
extern USART2_DATA_INFO stUSART2;
extern UART4_DATA_INFO stUART4;
extern UART5_DATA_INFO stUART5;
extern ERROR_DATA_INFO stUSART_ERROR;
extern BYPASS_DATA_INFO stBYPASS;
extern DIPSWITCH_DATA_INFO stDIP;

extern TEST_DATA_INFO stTEST;
extern IP_ERROR_DATA_INFO stERROR;
