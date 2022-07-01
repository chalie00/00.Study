/*=================================================================================
Project Name 		:	TPV HD Type (HD IP THERMOGRAPHY PTZ CAMERA)
Author			:	phs@tbtsys.com
==================================================================================*/ 

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//	DEBUG Define
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#define ERROR_CHECK_BUF		1

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//      MODULE STATUS
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#define INDEX_NON				0x00
#define INDEX_COLOR				0x81
#define INDEX_THERMAL			0xA0

#define SONY_MODULE			0x81
#define TSM_MODULE				0xA0

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//      PTZ STATUS Define
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#define	NTSC_MODE					0x01
#define	PAL_MODE					0x02

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//      DATA BUFFER Define
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#define COORDINATE_RX_BUF_MAX		50				/* Rx Buffer : Main */
#define COORDINATE_RX_BUF_CNT		50				/* Rx Command Wait Buffer */

#define SYS_RX_BUF_MAX				100				/* Rx Buffer : Main */
#define SYS_RX_BUF_CNT				50				/* Rx Command Wait Buffer */

// USART1 - MAIN BOARD ↔ TILT BOARD
#define USART1_TX_BUF_MAX			100				/* Thermal Tx Buffer */
#define USART1_RX_BUF_CNT			5				/* Thermal Rx Command Wait Buffer */
#define USART1_RX_BUF_MAX			100				/* Thermal Rx Buffer */

// USART2 - TILT BOARD ↔ ZOOM LIGHT BOARD
#define USART2_TX_BUF_CNT			10				/* Thermal Rx Command Wait Buffer Cnt */
#define USART2_TX_BUF_MAX			100				/* Thermal Tx Buffer */
#define USART2_RX_BUF_CNT			10				/* Thermal Rx Command Wait Buffer Cnt */
#define USART2_RX_BUF_MAX			100				/* Thermal Rx Buffer */

// UART4 - NON
#define UART4_TX_BUF_MAX			100				/* Thermal Tx Buffer */
#define UART4_RX_BUF_CNT			5				/* Thermal Rx Command Wait Buffer */
#define UART4_RX_BUF_MAX			100				/* Thermal Rx Buffer */

// UART5 - IP BOARD
#define UART5_TX_BUF_MAX			100				/* Thermal Tx Buffer */
#define UART5_RX_BUF_CNT			5				/* Thermal Rx Command Wait Buffer */
#define UART5_RX_BUF_MAX			100				/* Thermal Rx Buffer */

// ERROR
#define ERROR_DATA_MAX				300

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//      ZOOM LIGHT
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// TRANS DELAY
#define ZOOM_LIGHT_TRANS_DELAY	20				/* Delay Time (ms) */

// COMMAND
#define ZOOM_LIGHT_ENABLE			0x52			/* Zoom Light On/Off */
#define ZOOM_LIGHT_DIRECT			0x6D			/* Zoom Light Direct */
#define ZOOM_LIGHT_INITIALIZATION	0x49			/* Zoom Light Initialization */

// TELE MAX - '0000', WIDE MAX - '1035'
#define ZOOM_LIGHT_STEP			0x4D			/* Zoom Light Step */
#define CMD_ZOOM_LIGHT_WIDE		0x2B			/* Zoom Light WIDE */
#define CMD_ZOOM_LIGHT_TELE		0x2D			/* Zoom Light TELE */

// CALL COMMAND
#define CALL_ZOOM_LIGHT_POSITION	0x50			/* Zoom Light Position Check */

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//	THERMAL MODEL Define
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#define TSM_1M						0x01
#define TSM_1MT						0x81
#define TSM_72						0x00
#define TSM_72T						0x80
#define TCM_640						0x02

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//	SONY BUFFER Define
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#define SONY_BYTE_1						0x90
#define SONY_BYTE_2						0x50
#define SONY_BYTE_END					0xFF

#define SONY_RX_BUF_MAX				20				/* Rx Buffer : Main <-> SONY */

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//	SONY TIMER Define
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#define MAIN_COMMAND_TIMER_DELAY		1		// 
#define MAIN_REQUEST_TIMER_DELAY		2		// 

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//	SONY TIMER Define
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#define SONY_COMMAND_TIMER_DELAY		12		// Day & Night 최소 반응속도 기준 동작률 99% 시간.
#define SONY_REQUEST_TIMER_DELAY		40		// Thermal Request Command와 동일하게 처리.

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//	TSM TIMER Define
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#define TSM_COMMAND_TIMER_DELAY		17		// 기능 처리 관련 데이터 처리속도 동작률 90%
#define TSM_REQUEST_TIMER_MAX			50		// 영상 관련 기능 처리 기준 반응 시간 35ms 에서는 실패률 존재. 예) 온도 측정 동작 후 줌 가변 데이터 복합 기능 처리 시 데이터 Error (응답 없음 존재)

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//	TCM TIMER Define
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#define TCM_COMMAND_TIMER_DELAY		15		// 기능 처리 관련 데이터 처리속도 동작률 90%
#define TCM_REQUEST_TIMER_MAX			50		// 영상 관련 기능 처리 기준 반응 시간 35ms 에서는 실패률 존재. 예) 온도 측정 동작 후 줌 가변 데이터 복합 기능 처리 시 데이터 Error (응답 없음 존재)

/****************************************************************************************************
* Define : External Interface Data Check
* Data Architecture :
BYTE1[0]		BYTE2[1]		BYTE3[2]		BYTE4[3]		BYTE5[4]		BYTE5[5]
0xCA		0xAC		COMM		DATA1		DATA2		CS
*****************************************************************************************************/
#define SET_WIPER									0x02	// 5.2. Set Wiper (0x02)
#define STOP_WIPER									0x03	// 5.3. Stop Wiper (0x03)
#define SET_LRF										0x05	// 5.5. Set LRF (0x05)
#define SET_LIGHT									0x07	// 5.7. Set Light On/Off (0x07)
#define SET_ZOOM_LIGHT								0x08	// 5.8. Set Zoom-Light On/Off (0x08)
#define SET_ZOOM_LIGHT_DIRECT_POSITION			0x09	// 5.9. Set Zoom-Light Direct Position (0x09)
#define CALL_ZOOM_LIGHT_DATA						0x0A	// 5.A. (Special CMD) Call Zoom-Light Data (0x0A)
#define SET_ZOOM_LIGHT_MANUAL_CONTROL			0x0B	// 5.B. (Special CMD) Set Zoom-Light Manual Control (0x0B)
#define INITIALIZATION_ZOOM_LIGHT					0x0C	// 5.C. (Special CMD) Initialization Zoom-Light (0x0C)
#define LRF_INITIALIZATION							0x10	// 5.10. LRF Initialization (0x10)
#define OPTION_SET_EXTERNAL_IR_MODE				0x18	// 5.18. Set External IR Mode (0x18)
#define OPTION_SET_EXTERNAL_IR_CHANGE_LUX		0x19	// 5.19. Set External IR Change Lux (0x19)
#define OPTION_SET_EXTERNAL_IR_OFFSET			0x20	// 5.20. Set External IR Offset (0x20)
#define OPTION_SET_WIPER_CONTINUOUS_TIME		0x21	// 5.21. Set Wiper Continuous Time (0x21)
#define DAY_AND_NIGHT_AUTO_MODE					0x5F	// 5.5F. Day & Night (Auto Mode) (0x5F)
#define CALL_VERSION								0x90	// 5.90. Call Version Data (0x90)
#define CALL_UPGRADE_DATE							0x91	// 5.91. Call Upgrade Date Data (0x91)


/****************************************************************************************************
* Define : Main Command Data Check ([USART1] → MAIN)
* Data Architecture :
BYTE1[0]		BYTE2[1]		BYTE3[2]		BYTE4[3]		BYTE5[4]		BYTE5[5]		BYTE5[LENGTH+4]
0xCA		0xAC		LENGTH		ADDR		COMM		DATA...		CS
*****************************************************************************************************/
#define TILT_FIRST_BYTE								0xCA
#define TILT_SECOND_BYTE							0xAC
#define DATA_LENGTH								4

#define MDIN_OSD_CLEAR								0x11
#define MDIN_OSD_DATA								0x12
#define MDIN_COORDINATE_DATA						0x13
#define MDIN_BYPASS_DATA							0x20
#define MDIN_TEST_DATA								0xEE

#define TILT_BOOT_STATUS							0xD1
#define TILT_RESET									0xD2
#define TILT_MDIN_RESET								0xD3

#define CALL_ZOOM_DATA								0x51
#define CALL_INFORMATION							0x92

/****************************************************************************************************
* Define : Color IP Command Data Check (USART4 [USART1] → USART2)
* Data Architecture :
BYTE1[0]		BYTE2[1]		BYTE3[2]		BYTE4[3]		BYTE5[4]		BYTE5[5]		BYTE5[LENGTH+4]		BYTE5[7]
0xA0		0x0A		LENGTH		ADDR		COMM		DATA...		CS					0xAF
*****************************************************************************************************/
#define IP_SONY_FIRST_BYTE			0xA0
#define IP_SONY_SECOND_BYTE		0x0A

/****************************************************************************************************
* Define : Thermal(TSM) IP Command Data Check (USART1 [USART4] → USART2)
* Data Architecture :
BYTE1[0]		BYTE2[1]		BYTE3[2]		BYTE4[3]		BYTE5[4]		BYTE5[5]		BYTE5[LENGTH+4]		BYTE5[7]
0xB0		0x0B		LENGTH		ADDR		COMM		DATA...		CS					0xBF
*****************************************************************************************************/
#define IP_TSM_FIRST_BYTE			0xB0
#define IP_TSM_SECOND_BYTE			0x0B

/****************************************************************************************************
* Define : Thermal(DRS) IP Command Data Check (USART1 [USART4] → USART2)
* Data Architecture :
BYTE1[0]		BYTE2[1]		BYTE3[2]		BYTE4[3]		BYTE5[4]		BYTE5[5]		BYTE5[LENGTH+4]		BYTE5[7]
0xB1		0x1B		LENGTH		ADDR		COMM		DATA...		CS					0xBF
*****************************************************************************************************/
#define IP_DRS_FIRST_BYTE			0xB1
#define IP_DRS_SECOND_BYTE			0x1B

/****************************************************************************************************
* Define : Thermal(TCM) IP Command Data Check (USART1 [USART4] → USART2)
* Data Architecture :
BYTE1[0]		BYTE2[1]		BYTE3[2]		BYTE4[3]		BYTE5[4]		BYTE5[5]		BYTE5[LENGTH+4]		BYTE5[7]
0xB2		0x2B		LENGTH		ADDR		COMM		DATA...		CS					0xBF
*****************************************************************************************************/
#define IP_TCM_FIRST_BYTE			0xB2
#define IP_TCM_SECOND_BYTE			0x2B

/****************************************************************************************************
* Define : PTZ Command Data Check (USART1, USART4 → USART2)
* Data Architecture :
BYTE1[0]		BYTE2[1]		BYTE3[2]		BYTE4[3]		BYTE5[4]		BYTE5[5]		BYTE5[LENGTH+4]		BYTE5[7]
0xC0		0x0C		LENGTH		ADDR		COMM		DATA...		CS					0xCF
*****************************************************************************************************/
#define IP_PTZ_FIRST_BYTE			0xC0
#define IP_PTZ_SECOND_BYTE			0x0C

/****************************************************************************************************
* Define : Data Request Command Data Check (USART1, USART4 → USART2 → USART1, USART4)
* Data Architecture :
BYTE1[0]		BYTE2[1]		BYTE3[2]		BYTE4[3]		BYTE5[4]		BYTE5[5]		BYTE5[LENGTH+4]		BYTE5[7]
0xD0		0x0D		LENGTH		ADDR		COMM		DATA...		CS					0xDF
*****************************************************************************************************/
#define IP_DATA_FIRST_BYTE			0xD0
#define IP_DATA_SECOND_BYTE		0x0D

/****************************************************************************************************
* Define : Option Command Data Check (USART1, USART4 → USART2)
* Data Architecture :
BYTE1[0]		BYTE2[1]		BYTE3[2]		BYTE4[3]		BYTE5[4]		BYTE5[5]		BYTE5[LENGTH+4]		BYTE5[7]
0xE0		0x0E		LENGTH		ADDR		COMM		DATA...		CS					0xEF
*****************************************************************************************************/
#define IP_OPTION_FIRST_BYTE		0xE0
#define IP_OPTION_SECOND_BYTE		0x0E

/****************************************************************************************************
* Define : PTZ Command Data Check (USART2)
* Data Architecture :
BYTE1[0]		BYTE2[1]		BYTE3[2]		BYTE4[3]		BYTE5[4]		BYTE5[5]		BYTE5[6]
0xFF			ADDR		COMM1		COMM2		DATA1		DATA2		CS		
*****************************************************************************************************/
#define IP_PELCO_CHK_BYTE			0xFF


#define TEST_ZOOM_DATA				0xAA

/****************************************************************************************************
* Define : IP Command Data Check
* Data Architecture :
BYTE1[0]		BYTE2[1]		BYTE3[2]		BYTE4[3]		BYTE5[4]		BYTE5[5]		BYTE5[LENGTH+4]		BYTE5[7]
0xA0		0x0A		LENGTH		ADDR		COMM		DATA...		CS					0xAF
*****************************************************************************************************/
#define Rx_SYNC_BYTE			0x00
#define Rx_SYNC_AND_BYTE		0x01
#define Rx_LENGTH_BYTE			0x02
#define Rx_DATA_BYTE			0x03

/****************************************************************************************************
* Define : Sony Data Check (Main → Sony)
* Data Architecture :
BYTE1[0]		BYTE2[1]		BYTE3[2]		BYTE4[3]		BYTE5[4]		BYTE5[5]		BYTE5[LENGTH+4]		BYTE5[7]
0xA0		0x0A		LENGTH		ADDR		COMM		DATA...		CS					0xAF
*****************************************************************************************************/
#define SONY_FIRST_BYTE				0x81
#define SONY_END_BYTE					0xFF

#define SONY_ZOOM_STOP_CMD			0x07
#define SONY_ZOOM_STOP_DATA			0x00
#define SONY_ZOOM_TELE_DATA			0x27
#define SONY_ZOOM_WIDE_DATA			0x37

/****************************************************************************************************
* Define : Seyeon IP Board Trans & Parents Mode (e-mail : 2016.09.30)
* Data Architecture :
BYTE1[0]		BYTE2[1]		
0xAA		0x55
* IP Board로 0xAA, 0x55 로 보내주고 IP Board 에서는 해당 Command를 체크하여 PC로 CGI Command를 전송.
*****************************************************************************************************/
#define IP_BOARD_SYNC_BYTE			0xAA
#define IP_BOARD_SYNC_AND_BYTE	0x55

/****************************************************************************************************
* Define : UART
*****************************************************************************************************/
#define USART1_INDEX					0x01
#define USART2_INDEX					0x02
#define USART3_INDEX					0x03
#define USART4_INDEX					0x04
#define USART5_INDEX					0x05
#define SYSTEM_INDEX					0xAA

/****************************************************************************************************
* Function Define
*****************************************************************************************************/
#define LED1_OFF						GPIO_SetBits(GPIOC, GPIO_Pin_3)
#define LED1_ON							GPIO_ResetBits(GPIOC, GPIO_Pin_3)

/****************************************************************************************************
* Define : MDIN
*****************************************************************************************************/
#define	MDIN_RESET_HIGH			GPIO_SetBits(GPIOB, GPIO_Pin_2)
#define	MDIN_RESET_LOW			GPIO_ResetBits(GPIOB, GPIO_Pin_2)

#define	MDIN_I550_INT				GPIO_ReadInputDataBit(GPIOA, GPIO_Pin_1)

/****************************************************************************************************
* Define : TW9900
*****************************************************************************************************/
#define	TW9900_ADDR					0x88	// I2C1

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//	THERMAL COMMAND Define (TSM)
//	Protocol Version : 0.1 (2016.04.11)
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#define TSM_INITIALIZE							0x01		// 2.1.1. Initialize (0x01)
#define TSM_REBOOTING							0x02		// 2.1.2. Rebooting (0x02)
#define TSM_SAVE_SETTING						0x04		// 2.1.3. Save Setting (0x04)
#define TSM_SHUTTER_SET						0x05		// 2.1.4. Shutter Set (0x05)
#define TSM_DIGITAL_ZOOM_START				0x11		// 2.1.5. Digital Zoom Start (0x11)
#define TSM_DIGITAL_ZOOM_STOP					0x10		// 2.1.6. Digital Zoom Stop (0x10)
#define TSM_DIGITAL_ZOOM_DIRECT				0x12		// 2.1.7. Digital Zoom Direct (0x12)
#define TSM_OPTICAL_ZOOM_START				0x13		// 2.1.8. Optical Zoom Start (0x13)
#define TSM_OPTICAL_ZOOM_STOP					0x14		// 2.1.9. Optical Zoom Stop (0x14)
#define TSM_OPTICAL_ZOOM_DIRECT				0x15		// 2.1.10. Optical Zoom Direct (0x15)
#define TSM_FOCUS_START						0x16		// 2.1.11. Focus Start (0x16)
#define TSM_FOCUS_STOP							0x17		// 2.1.12. Focus Stop (0x17)
#define TSM_FOCUS_DIRECT						0x18		// 2.1.13. Focus Direct (0x18)
#define TSM_AUTO_FOCUS_SET					0x19		// 2.1.14. Auto Focus Set (0x19)
#define TSM_DIZITAL_ZOOM_ENABLE				0x1C		// 2.1.15. Digital Zoom Enable (0x1C)
#define TSM_TOTAL_ZOOM_START					0x20		// 2.1.16. Total Zoom Start (0x20)
#define TSM_TOTAL_ZOOM_STOP					0x21		// 2.1.17. Total Zoom Stop (0x21)
#define TSM_TOTAL_ZOOM_DIRECT					0x22		// 2.1.18. Total Zoom Direct (0x22)
#define TSM_TOTAL_ZOOM_STOP_SUB				0x23		// 2.1.19. Total Zoom Stop Sub (0x23)
#define TSM_AGC_MODE_SET						0x26		// 2.1.20. AGC Mode Set (0x26)
#define TSM_COLOR_MODE_SET					0x27		// 2.1.21. Color Mode Set (0x27)
#define TSM_CONTRAST_BRIGHTNESS				0x28		// 2.1.22. Contrast/Brightness (0x28) (when, AGC OFF)
#define TSM_AGC_CENTER_POSITION_SET			0x29		// 2.1.23. AGC Center Position Set (0x29)
#define TSM_AGC_LIMIT_LEVEL_SET				0x2A		// 2.1.24. AGC Limit Level Set (0x2A)
#define TSM_AGC_ROI_SET						0x2B		// 2.1.25. AGC ROI (AGC Region of Interest) Set (0x2B)
#define TSM_MIDE_LEVEL_SET						0x2C		// 2.1.26. MIDE Level Set (0x2C) (when, Sharpness OFF)
#define TSM_SHARPNESS_LEVEL_SET				0x2D		// 2.1.27. Sharpness Level Set (0x2D) (when, MIDE OFF)
#define TSM_DETECT_MODE_SET					0x31		// 2.1.28. Detect Mode Set (0x31)
#define TSM_AREA_POSITION_SET					0x32		// 2.1.29. Area Position Set (0x32)
#define TSM_SPOT_POSITION_SET					0x33		// 2.1.30. Spot Position Set (0x33)
#define TSM_HIGH_ALARM_TEMPERATURE			0x34		// 2.1.31. High Alarm Temperature (0x34)
#define TSM_LOW_ALARM_TEMPERATURE			0x35		// 2.1.32. Low Alarm Temperature (0x35)
#define TSM_SELECT_ALARM						0x36		// 2.1.33. Select Alarm (0x36)
#define TSM_ALARM_MODE						0x37		// 2.1.34. Alarm Mode (0x37)
#define TSM_TEMPERATURE_OSD					0x38		// 2.1.35. Temperature OSD (0x38)
#define TSM_EMISSIVITY_SET						0x39		// 2.1.36. Emissivity Set (0x39)
#define TSM_MIRROR_FLIP_MODE_SET				0x43		// 2.1.37. Mirror / Flip Mode Set (0x43)
#define TSM_MIRROR_MODE_SET					0x44		// 2.1.38. Mirror Mode Set (0x44)
#define TSM_FLIP_MODE_SET						0x45		// 2.1.39. Flip Mode Set (0x45)
#define TSM_IMAGE_FREEZE_SET					0x46		// 2.1.30. Image Freeze Set (0x46)
#define TSM_IMAGE_COLOR_INVERSE				0x47		// 2.1.41. Image Color Inverse(White/Black Hot) Set (0x47)
#define TSM_EXTERNAL_OPTION_SET				0x55		// 2.1.42. External Communication Option Set (0x55)
#define TSM_CALIBRATION_EXECUTE				0x65		// 2.1.43. Calibration Execute (0x65)
#define TSM_CALIBRATION_OPTION_SET			0x66		// 2.1.44. Calibration Option Set (0x66)
#define TSM_OSD_ALL_OFF						0x76		// 2.1.45. OSD All Off (0x76)
#define TSM_TEMPERATURE_MODE_SET				0x77		// 2.1.46. Temperature Mode Set (0x77)
#define TSM_TEMPERATURE_RANGE_SET			0x78		// 2.1.47. Temperature Range Set (0x78) - Not Used
#define TSM_VIDEO_MODE_SET					0x79		// 2.1.48. Video Mode Set (0x79)
#define TSM_OSD_MENU_KEY_CONTROL				0xA0		// 2.1.49. OSD MENU Key Control (0xA0)
#define TSM_CALL_MODULE_STATUS				0x30		// 2.1.40. Call Module Status (0x30)
#define TSM_CALL_ALARM_STATUS					0x3A		// 2.1.51. Call Alarm Status (0x3A)
#define TSM_CALL_SPOT_TEMPERATURE			0x3B		// 2.1.52. Call Spot Temperature (0x3B)
#define TSM_CALL_AREA_TEMPERATURE			0x3C		// 2.1.53. Call Area Temperature (0x3C)
#define TSM_CALL_CENTER_TEMPERATURE			0x3D		// 2.1.54. Call Center Temperature (0x3D)
#define TSM_CALL_FULL_TEMPERATURE			0x3E		// 2.1.55. Call Full Temperature (0x3E)
#define TSM_CALL_EXTERNAL_COMMUNICATION		0x71		// 2.1.56. Call External Communication (0x71)
#define TSM_CALL_CAMERA_INFORMATION			0x80		// 2.1.57. Call Camera Information (0x80)
#define TSM_CALL_FIRMWARE_VERSION			0x81		// 2.1.58. Call Firmware Version (0x81)
#define TSM_CALL_DIGITAL_ZOOM_POSITION		0x82		// 2.1.59. Call Digital Zoom Position (0x82)
#define TSM_CALL_OPTICAL_ZOOM_POSITION		0x83		// 2.1.50. Call Optical Zoom Position (0x83)
#define TSM_CALL_FOCUS_POSITION				0x84		// 2.1.61. Call Focus Position (0x84)
#define TSM_CALL_TOTAL_ZOOM_POSITION			0x85		// 2.1.62. Call Total Zoom Position (0x85)
#define TSM_CALL_TEMPERATURE_MODE			0x86		// 2.1.63. Call Temperature Mode (0x86)
#define TSM_CALL_ALL_TEMPERATURE				0x87		// 2.1.64. Call All Temperature (0x87)
#define TSM_CALL_AUTO_AF						0x88		// 2.1.65. Call Auto AF (0x88)
#define TSM_CALL_FOCUS_POSITION_SUB			0x94		// Call Focus Position (0x94)
#define TSM_CALL_TOTAL_ZOOM_POSITION_SUB	0x95		// Call Total Zoom Position (0x95)
#define TSM_CALL_PRODUCT_IDENTIFICATION		0xF0		// 2.1.66. Call Product Identification (0xF0)
#define TSM_MODULE_MODE_SET					0xF1		// 2.1.67. Module Mode Set (0xF1)
#define TSM_AUTO_AF_SET						0xF2		// 2.1.68. Auto AF Set (0xF2)
#define TSM_SET_THERMAL_MODULE				0xF3		// 2.1.69. Set Thermal Module (0xF3)
#define TSM_CALL_FPGA_VERSION					0xF8

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//	THERMAL COMMAND Define (TCM)
//	Protocol Version : 2.8 (2017.01.23) - TCM-640_Technical_Manual_v2.8_20170123 ALL.docx
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#define TCM_INITIALIZE							0x01		// 2.3.1. Camera Initialize (0x01)
#define TCM_REBOOTING							0x02		// 2.3.2. Rebooting (0x02)
#define TCM_SAVE_CURRENT_SETTING_OPTION		0x04		// 2.3.3. Save Current Setting Option (0x04)
#define TCM_ZOOM_FOCUS_STOP					0x10		// 2.3.4. Zoom/Focus Stop (Digital Zoom, Optical Zoom, Focus) (0x10)
#define TCM_DIGITAL_ZOOM_START				0x11		// 2.3.5. Digital Zoom Start (0x11)
#define TCM_DIGITAL_ZOOM_DIRECT				0x12		// 2.3.6. Digital Zoom Direct (0x12)
#define TCM_OPTICAL_ZOOM_DIRECT				0x13		// 2.3.7. Optical Zoom Direct (0x13)
#define TCM_OPTICAL_ZOOM_START				0x14		// 2.3.8. Optical Zoom Start (0x14)
#define TCM_SAVE_FOV							0x15		// 2.3.9. Save FOV (0x15)
#define TCM_MOVE_FOV							0x16		// 2.3.10. Move FOV (0x16)
#define TCM_FOCUS_STOP_SUB					0x17		// 2.3.10.1 Focus Stop Sub (0x17)
#define TCM_FOCUS_START						0x18		// 2.3.13. Focus Start (0x18)
#define TCM_INTEGRAL_TIME_SET					0x1A		// 2.3.14. Integral Time Set (0x1A)
#define TCM_DIGITAL_ZOOM_ENABLE_SET			0x1C		// 2.3.15. Digital Zoom Enable Set (0x1C)
#define TCM_TOTAL_ZOOM_START					0x20 		// 2.3.29. Total Zoom Start (0x20)
#define TCM_AGC_TYPE_SET						0x21 		// 2.3.16. AGC Type Set (GAIN, OFFSET) (0x21)
#define TCM_TOTAL_ZOOM_DIRECT					0x22 		// 2.3.28. Total Zoom Direct (0x22)
#define TCM_TOTAL_ZOOM_STOP_SUB				0x23		// 2.3.28.1. Total Zoom Stop Sub (0x23)
#define TCM_AGC_MODE_SET						0x26 		// 2.3.17. AGC Mode Set (0x26)
#define TCM_COLOR_MODE_SET					0x27 		// 2.3.18. Color Mode Set (0x27)
#define TCM_AGC_CENTER_POSITION_SET			0x29 		// 2.3.19. AGC Center Position Set (0x29)
#define TCM_AGC_LIMIT_LEVEL_SET				0x2A 		// 2.3.20. AGC Limit Level Set (0x2A)
#define TCM_AGC_ROI_SET						0x2B 		// 2.3.21. AGC ROI (Region of Interest) Set (0x2B)
#define TCM_MIDE_LEVEL_SET						0x2C 		// 2.3.22. MIDE Level Set (0x2C)
#define TCM_SHARPNESS_LEVEL_SET				0x2D 		// 2.3.23. SHARPNESS Level Set (0x2D)
#define TCM_AF_ROI_SET							0x2E 		// 2.3.24. AF ROI (Region of Interest) Set (0x2E)
#define TCM_AF_MARK_SET						0x2F 		// 2.3.25. AF Mark Set (0x2F)
#define TCM_AGC_SMOOTH						0x31 		// 2.3.26. AGC Smooth (0x31)
#define TCM_AF_EXECUTE							0x32 		// 2.3.27. AF Execute (0x32)
#define TCM_SAVE_FOV_EX						0x35		// 2.3.11. Save FOV EX (0x35)
#define TCM_MOVE_FOV_EX						0x36		// 2.3.12. Move FOV EX (0x36)
#define TCM_CALIBRATION_SHUTTER_USE			0x40		// 2.3.30. Calibration Shutter Use (0x40)
#define TCM_SHUTTER_SET 						0x41		// 2.3.31. Shutter Set (0x41)
#define TCM_AF_MODE_SET						0x42		// 2.3.32. AF Mode Set (0x42)
#define TCM_MIRROR_FLIP_MODE					0x43		// 2.3.33. Mirror/Flip Mode (0x43)
#define TCM_MIRROR_MODE_SET					0x44		// 2.3.34. Mirror Mode Set (0x44)
#define TCM_FLIP_MODE_SET						0x45		// 2.3.35. Flip Mode Set (0x45)
#define TCM_IMAGE_FREEZE_SET					0x46		// 2.3.36. Image Freeze Set (0x46)
#define TCM_IMAGE_COLOR_INVERSE				0x47		// 2.3.37. Image Color Inverse (White/Black Hot) Set (0x47)
#define TCM_DNR_MODE_SET						0x48		// 2.3.59 DNR Mode (0x48)
#define TCM_DIS_MODE_SET						0x49		// 2.3.60 DIS Mode (0x49)
#define TCM_EXTERNAL_COMMUNICATION_OPTION	0x55		// 2.3.38. External Communication Option Set (0x55)
#define TCM_CALIBRATION_EXECUTE				0x65		// 2.3.39. Calibration Execute (0x65)
#define TCM_CALIBRATION_OPTION_SET			0x66		// 2.3.40. Calibration Option Set (0x66)
#define TCM_VIDEO_MODE_SET					0x79		// 2.3.41. Video Mode Set (0x79)
#define TCM_OSD_MENU_KEY_CONTROL				0xA0		// 2.3.42. OSD MENU Key Control (0xA0)
#define TCM_ZOOM_STOP							0xA1		// 2.3.43. ZOOM Stop (0xA1)
#define TCM_FOCUS_STOP							0xA2		// 2.3.44. FOCUS Stop (0xA2)
#define TCM_ZOOM_DIRECT						0xA3		// 2.3.45. ZOOM Direct (0xA3)
#define TCM_FOCUS_DIRECT						0xA4		// 2.3.46. FOCUS Direct (0xA4)
#define TCM_OSD_INFORMATION_PRINT			0xA5		// 2.3.47. OSD Information Print (0xA5)
#define TCM_ZOOM_FOCUS_SPEED_SET				0xA6		// 2.3.48. Zoom Focus Speed Set (0xA6)
#define TCM_FOV_ALL_INITIALIZE					0xA7		// 2.3.49. FOV All Initialize (0xA7)
#define TCM_EEPROM_SAVE						0xA8		// 2.3.50. EEPROM Save (0xA8)
#define TCM_NUC_EXECUTE						0xF1		// 2.3.51. NUC Execute (0xF1)
#define TCM_SPOT_FOR_BPR_SET					0xF2		// 2.3.52. Spot for BPR Set (0xF2)
#define TCM_MOVE_SPOT							0xF3		// 2.3.53. Move Spot (0xF3)
#define TCM_ACTIVE_BPR							0xF4		// 2.3.54. Active BPR (0xF4)
#define TCM_SET_FRAME_RATE					0x95		// 2.3.55. Set Frame Rate(0x95)
#define TCM_SET_INTEGRAL_TIME					0x96		// 2.3.56. Set Integral Time(0x96)
#define TCM_OPERATION_PARAMETER_SAVE		0x98		// 2.3.57. Operation Parameter Save (0x98)

// Inquiry Command
#define TCM_MODULE_STATUS_INQ				0x30		// 2.3.I.1. Module Status Inquiry (0x30)
#define TCM_CAMERA_INFORMATION_INQ			0x80		// 2.3.I.2. Camera Information Inquiry (0x80)
#define TCM_DIGITAL_ZOOM_POSITION_INQ		0x82		// 2.3.I.3. Digital Zoom Position Inquiry (0x82)
#define TCM_AGC_MODE_INQ						0xB0		// 2.3.I.4. AGC Mode Inquiry (0xB0)
#define TCM_CON_BRI_LEVEL_INQ					0xB1		// 2.3.I.5. CONTRAST/BRIGHTNESS Level Inquiry (0xB1)
#define TCM_AGC_LIMIT_LEVEL_INQ				0xB2		// 2.3.I.6. AGC Limit Level Inquiry (0xB2)
#define TCM_AGC_CENTER_POSITION_INQ			0xB3		// 2.3.I.7. AGC Center Position Inquiry (0xB3)
#define TCM_MIDE_LEVEL_INQ						0xB4		// 2.3.I.8. MIDE Level Inquiry (0xB4)
#define TCM_SHARPNESS_LEVEL_INQ				0xB5		// 2.3.I.9. SHARPNESS Level Inquiry (0xB5)
#define TCM_COLOR_MODE_INQ					0xB6		// 2.3.I.10. Color Mode Inquiry (0xB6)
#define TCM_MIRROR_MODE_INQ					0xB7		// 2.3.I.11. Mirror Mode Inquiry (0xB7)
#define TCM_FLIP_MODE_INQ						0xB8		// 2.3.I.12. Flip Mode Inquiry (0xB8)
#define TCM_IMAGE_FREEZE_INQ					0xB9		// 2.3.I.13. Image Freeze Inquiry (0xB9)
#define TCM_IMAGE_COLOR_INVERSE_INQ			0xBA		// 2.3.I.14. Image Color Inverse (White/Black Hot) Inquiry (0xBA)
#define TCM_DIGITAL_ZOOM_SET_INQ				0xBB		// 2.3.I.15. Digital Zoom Set Inquiry (0xBB)
#define TCM_VIDEO_MODE_INQ					0xBC		// 2.3.I.16. Video Mode Inquiry (0xBC)
#define TCM_CALIBRATION_OPTION_INQ			0xBD		// 2.3.I.17. Calibration Option Inquiry (0xBD)
#define TCM_EXTERNAL_COMMUNICATION_INQ		0xBE		// 2.3.I.18. External Communication Option Inquiry (0xBE)
#define TCM_FOCUS_POSITION_INQ				0xBF		// 2.3.I.19. Focus Position Inquiry (0xBF)
#define TCM_INTEGRAL_TIME_INQ					0xC0		// 2.3.I.20. Integral Time Inquiry (0xC0)
#define TCM_AF_ROI_INQ							0xC1		// 2.3.I.21. AF ROI (Region of Interest) Inquiry (0xC1)
#define TCM_AGC_TYPE_INQ						0xC2		// 2.3.I.22. AGC Type Inquiry (GAIN, OFFSET) (0xC2)
#define TCM_AGC_SMOOTH_INQ					0xC3		// 2.3.I.23. AGC Smooth Inquiry (0xC3)
#define TCM_OPTICAL_ZOOM_FOCUS_POS_INQ		0xC4		// 2.3.I.24. Optical Zoom & Focus Position Inquiry (0xC4)
#define TCM_ZOOM_FOCUS_SPEED_INQ				0xC5		// 2.3.I.25. Zoom & Focus Speed Inquiry (0xC5)
#define TCM_AF_MARK_INQ						0xC6		// 2.3.I.26. AF Mark Inquiry (0xC6)
#define TCM_SHUTTER_SET_INQ					0xC7		// 2.3.I.27. Shutter Set Inquiry (0xC7)
#define TCM_AF_MODE_INQ						0xC8		// 2.3.I.28. AF Mode Inquiry (0xC8)
#define TCM_AGC_ROI_INQ						0xC9		// 2.3.I.29. AGC ROI Inquiry (0xC9)
#define TCM_COOLER_RUNTIME_INQ				0xCA		// 2.3.I.30. Cooler Runtime Inquiry (0xCA)
#define TCM_ZOOM_POS_INQ						0xCB		// 2.3.I.31. ZOOM POS Inquiry (0xCB)
#define TCM_POWER_CYCLE_INQ					0xCE		// 2.3.I.32. Power Cycle Inquiry (0xCE)
#define TCM_GET_TEMPERATURE_INQ				0xD0		// 2.3.I.33. Get Temperature (0xD0)
#define TCM_CALIBRATION_METHOD_INQ			0xD1		// 2.3.I.34. Shutter Use Calibration (0xD1)
#define TCM_LENS_INFORMATION_INQ				0xD2		// 2.3.I.35. LENS Information Inquiry (0xD2)
#define TCM_TOTAL_ZOOM_POSITION_INQ			0xD5		// 2.3.I.36. Total Zoom Position Inquiry (0xD5)
#define TCM_MY_ID_INQ							0xF0		// 2.3.I.37. MY ID Inquiry (0xF0)
#define TCM_GET_FW_UPDATE_INQ				0xFA		// 2.3.I.38. Get F/W Update (0xFA)
#define TCM_GET_FPGA_VERSION					0xF8    		// 2.3.I.38. Get FPGA Version (0xF8) 
#define TCM_GET_ENGINE_VERSION				0xF9		// 2.3.I.39. Get ENGINE Version (0xF9) 
#define TCM_TILT_CALL_VERSION					0x90		// (SPECIAL) Thermal Tilt Call Version Data (0x90)
#define TCM_TILT_CALL_UPGRADE_DATE			0x91		// (SPECIAL) Thermal Tilt Call Upgrade Date Data (0x91)


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//	COLOR(SONY) COMMAND Define
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#define SONY_POWER_INQ							0x01		// Cam Power Inquiry
#define SONY_SET_FOCUS_MODE					0x91		// 1.1.	Set Focus Mode (0x91)
#define SONY_SET_AUTO_FOCUS_MODE				0x93		// 1.2.	Set Auto Focus Mode (0x93)
#define SONY_MANUAL_FOCUS						0x08		// 1.3.	Manual Focus (0x08)
#define SONY_MANUAL_IRIS						0x0B		// 1.4.	Manual IRIS Mode (0x0B)
#define SONY_MANUAL_FOCUS_DIRECT				0x48		// 1.5.	Manual Focus Direct (0x48)
#define SONY_MANUAL_ZOOM						0x07		// 1.6.	Manual Zoom (0x07)
#define SONY_MANUAL_ZOOM_DIRECT				0x47		// 1.7.	Manual Zoom Direct (0x47)
#define SONY_SET_BLC_MODE						0x31		// 1.8.	Set BLC Mode (0x31)
#define SONY_SET_WHITE_BALANCE_MODE			0x33		// 1.9.	Set White Balance Mode (0x33)
#define SONY_SET_DEFOG_MODE					0x37		// 1.10.	Set Defog Mode (0x37)
#define SONY_SET_SHUTTER_SPEED				0x4A		// 1.11.	Set Shutter Speed (0x4A)
#define SONY_SET_FLICKER_MODE					0x55		// 1.12.	Set Flicker Mode (0x55)
#define SONY_SET_APERTURE_VALUE				0x59		// 1.13.	Set Aperture Value (0x59)
#define SONY_SET_DIGITAL_ZOOM_MODE			0x5B		// 1.14.	Set Digital Zoom Mode (0x5B)
#define SONY_SET_DAY_NIGHT_MODE				0x5F		// 1.15.	Set Day & Night Mode (0x5F)
#define SONY_SET_DSS_MODE						0x61		// 1.16.	Set DSS Mode (0x61)
#define SONY_SELECT_BLC_WDR					0x85		// 1.17.	Select BLC / WDR (0x85)
#define SONY_SET_HIGH_RESOLUTION				0x87		// 1.18.	Set High Resolution (0x87)
#define SONY_SET_IMAGE_STABILIZER				0x89		// 1.19.	Set Image Stabilizer (0x89)
#define SONY_SET_NOISE_REDUCTION				0x8B		// 1.20.	Set Noise Reduction (0x8B)
#define SONY_SET_COLOR_MODULE					0xF0		// 1.21.	Set Color Module (0xF0) - 개별 기능 테스트 진행 후 적용
#define SONY_CALL_ZOOM_POSITION				0x47		// Call Zoom Position (0x47)
#define SONY_CALL_FOCUS_POSITION				0x48		// Call Focus Position (0x48)
#define SONY_SET_NTSC_PAL_MODE				0x72		// Set NTSC/PAL Mode (0x72)
#define SONY_SET_FLIP_MODE						0x66		// Set Flip Mode (0x66)

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//	THERMAL COMMAND Define (AVT)
//	Protocol Version : 2.8 (2017.01.23) - TCM-640_Technical_Manual_v2.8_20170123 ALL.docx
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#define CVT_AF_EXCUTE							0x19		// AF Excute

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//	PELCO-D COMMAND Define
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#define PELCO_MOVE_STOP						0x0000		// 5.1. Manual Move (Standard Type) - Move Stop Command
#define PELCO_MOVE_RIGHT						0x0002		// 5.1. Manual Move (Standard Type) - Move Right Command
#define PELCO_MOVE_LEFT						0x0004		// 5.1. Manual Move (Standard Type) - Move Left Command
#define PELCO_MOVE_UP							0x0008		// 5.1. Manual Move (Standard Type) - Move Up Command
#define PELCO_MOVE_DOWN						0x0010		// 5.1. Manual Move (Standard Type) - Move Down Command
#define PELCO_MOVE_RIGHT_UP					0x000A		// 5.1. Manual Move (Standard Type) - Move Right-Up Command
#define PELCO_MOVE_LEFT_UP						0x000C		// 5.1. Manual Move (Standard Type) - Move Left-Up Command
#define PELCO_MOVE_RIGHT_DOWN				0x0012		// 5.1. Manual Move (Standard Type) - Move Right-Down Command
#define PELCO_MOVE_LEFT_DOWN					0x0014		// 5.1. Manual Move (Standard Type) - Move Left-Down Command
#define PELCO_ZOOM_TELE						0x0020		// 5.1. Manual Move (Standard Type) - Zoom-Tele Command
#define PELCO_ZOOM_WIDE						0x0040		// 5.1. Manual Move (Standard Type) - Zoom-Wide Command
#define PELCO_FOCUS_FAR						0x0080		// 5.1. Manual Move (Standard Type) - Focus-Far Command
#define PELCO_FOCUS_NEAR						0x0100		// 5.1. Manual Move (Standard Type) - Focus-Near Command
#define PELCO_SET_PRESET						0x0003		// 5.2. Set Preset (0x03)
#define PELCO_CLEAR_PRESET						0x0005		// 5.3. Clear Preset (0x05)
#define PELCO_CALL_PRESET						0x0007		// 5.4. Call Preset (0x07)
#define PELCO_SET_ZONE_START					0x0011		// 5.5. Set Zone(Scan) Start (0x11)
#define PELCO_SET_ZONE_END					0x0013		// 5.6. Set Zone(Scan) End (0x13)
#define PELCO_ZONE_ON							0x001B		// 5.7. Zone(Scan) On (0x1B)
#define PELCO_ZONE_OFF							0x001D		// 5.8. Zone(Scan) Off (0x1D)
#define PELCO_SET_ZERO							0x0049		// 5.12. Set Zero Position (0x49)
#define PELCO_TEST_COMMAND					0x0009		// Set Preset Test

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//	PTZ COMMAND Define
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#define PTZ_MOVE_DIRECT_COMMAND				0x01		// 3.1. PTZ Move Direct Command (0x01)
#define PTZ_PAN_MOVE_DIRECT_COMMAND			0x02		// 3.2. Pan Move Direct Command (0x02)
#define PTZ_TILT_MOVE_DIRECT_COMMAND			0x03		// 3.3. Tilt Move Direct Command (0x03)
#define PTZ_PAN_TILT_MOVE_DIRECT_COMMAND	0x04		// 3.4. Pan & Tilt Move Direct Command (0x04)
#define PTZ_PAN_TILT_STOP_COMMAND			0x05		// 3.5. Pan & Tilt Stop Command (0x05)
#define PTZ_ZOOM_MOVE_DIRECT_COMMAND		0x06		// 3.6. Zoom Move Direct Command (0x06)
#define PTZ_FOCUS_MOVE_DIRECT_COMMAND		0x07		// 3.7. Focus Move Direct Command (0x07)

// PRESET
#define PTZ_SET_PRESET_TEMPERATURE_OPTION	0x10		// 3.10. Set Preset & Temperature Option (0x10)
#define PTZ_SET_PRESET_AND_INDEX_NAME		0x11		// 3.11. Set Preset Index & Name (0x11)
#define PTZ_SET_PRESET_SEQUENCE				0x12		// 3.12. Set Preset & Sequence (0x12)
#define PTZ_CALL_PRESET_SEQUENCE				0x13		// 3.13. Call Preset & Sequence (0x13)
#define PTZ_CLEAR_PRESET						0x14		// 3.14. Clear Preset (0x14)
#define PTZ_CLEAR_PRESET_AND_SEQUENCE		0x17		// 3.17. Clear Preset & Sequence (0x17)

// ALARM PRESET
#define PTZ_SET_ALARM_PRESET					0x15		// 3.15. Set Alarm Preset (0x15)
#define PTZ_CLEAR_ALARM_PRESET				0x16		// 3.16. Clear Alarm Preset (0x16)

// SCAN
#define PTZ_SET_SCAN_OPTION					0x20		// 3.20. Set Scan Option (0x20)
#define PTZ_SET_SCAN							0x21		// 3.21. Set Scan (0x21)
#define PTZ_SET_SCAN_DIRECTION				0x22		// 3.22. Set Scan Direction (0x22)
#define PTZ_SET_SCAN_SPEED						0x24		// 3.24. Set Scan Speed (0x24)
#define PTZ_SET_SCAN_DWELL_TIME				0x25		// 3.25. Set Scan Dwell Time (0x25)
#define PTZ_SET_SCAN_NAME						0x26		// 3.26. Set Scan Name (0x26)
#define PTZ_CALL_SCAN							0x27		// 3.27. Call Scan (0x27)
#define PTZ_CLEAR_SCAN							0x28		// 3.28. Clear Scan (0x28)
#define PTZ_SET_SCAN_AND_OPTION				0x29		// 3.29. Set Scan & Option (0x29)

// PATTERN
#define PTZ_SET_PATTERN						0x30		// 3.30. Set Pattern (0x30)
#define PTZ_CALL_PATTERN						0x31		// 3.31. Call Pattern (0x31)
#define PTZ_CLEAR_PATTERN						0x32		// 3.32. Clear Pattern (0x32)

// TOUR
#define PTZ_SET_TOUR_ALL_DATA					0x35		// 3.35. Set Tour All Data (0x35)
#define PTZ_SET_TOUR							0x36		// 3.36. Set Tour (0x36)
#define PTZ_SET_TOUR_NAME						0x37		// 3.37. Set Tour Name (0x37)
#define PTZ_CALL_TOUR							0x38		// 3.38. Call Tour (0x38)
#define PTZ_CLEAR_TOUR							0x39		// 3.39. Clear Tour (0x39)

// GROUP
#define PTZ_SET_GROUP_AND_DATA				0x40		// 3.40. Set Group & Data (0x40)
#define PTZ_SET_GROUP							0x41		// 3.41. Set Group (0x41)
#define PTZ_CALL_GROUP							0x42		// 3.42. Call Group (0x42)
#define PTZ_CLEAR_GROUP						0x44		// 3.44. Clear Group (0x44)
#define PTZ_SET_GROUP_ALL_DATA				0x45		// 3.45. Set Group All Data (0x45)

// HOME POSITION
#define PTZ_SET_HOME_POSITION_MODE			0x46		// 3.46. Set Home Position Mode (0x46)

// etc.
#define PTZ_CALL_ZERO_POSITION					0x50		// 3.50. Call Zero Position (0x50)

#define PTZ_SET_TEMPERATURE_TARGET_IP		0x64		// 3.64. Set Temperature Target (0x64)
#define PTZ_CLEAR_PRESET_TEMPERATURE_DATA	0x65		// 3.65. Clear Preset Temperature Data (0x65)
#define PTZ_SET_TEMPERATURE_TARGET			0x66		// 3.66. Set Temperature Target (0x66)
#define PTZ_SET_FLIP_REVERSE_MODE				0x70		// 3.70. Set Flip Reverse Mode (0x70)
#define PTZ_SET_RECOVER_ORIGIN_MODE			0x71		// 3.71. Set Recover Origin Mode (0x71)
#define PTZ_SET_MOTOR_MODE					0x72		// 3.72. Set Motor Torque (0x72)

#define PTZ_SET_NTSC_PAL_MODE					0x80		// 3.80. Set NTSC / PAL Mode (0x80)
#define PTZ_SET_TILT_INITIALIZE_MODE			0x81		// 3.81. Set Tilt Initialize Mode (0x81)
#define PTZ_SET_PAN_INITIALIZE_MODE			0x82		// 3.82. Set Pan Initialize Mode (0x82)

#define PTZ_REMOTE_RESET						0xF1		// 3.F1. PTZ Remote Reset (0xF1) - 미구현 기능.

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//	OPTION COMMAND Define
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#define OPTION_SET_WIPER						0x02		// 5.2. Set Wiper (0x02)
#define OPTION_STOP_WIPER						0x03		// 5.3. Stop Wiper (0x03)
#define OPTION_RUN_WIPER						0x06		// 5.6. Run Wiper (0x06)
#define OPTION_SET_WIPER_OPTION				0x22		// 5.22. Set Wiper Option (0x22)

#define OPTION_SET_ETHERNET_INIT				0x59


/****************************************************************************************************
* Define : WIPER
*****************************************************************************************************/
#define WIPER_NORMAL_MODE				0x00
#define WIPER_SPRITE_MODE				0x01
#define WIPER_CONTINUOUS_MODE		0x02

#define WIPER_OFF						0x00
#define WIPER_ON						0x01

#define DIRECTION_CW					0x01
#define DIRECTION_CCW					0x00

#define WIPER_SENS1_OFF				0x01
#define WIPER_SENS1_ON					0x00

#define WIPER_SENS2_OFF				0x01
#define WIPER_SENS2_ON					0x00

#define WAT_SENS			  			GPIO_ReadInputDataBit(GPIOC, GPIO_Pin_0)
#define WIPER_SENSOR_1		  			GPIO_ReadInputDataBit(GPIOC, GPIO_Pin_0)
#define WIPER_SENSOR_2		  			GPIO_ReadInputDataBit(GPIOC, GPIO_Pin_1)
#define MOTOR_FG			  			GPIO_ReadInputDataBit(GPIOC, GPIO_Pin_7)

#define WIPER_INITIAL					0x00
#define WIPER_SENSOR1_ON_CHECK		0x01
#define WIPER_READY					0x02
#define WIPER_SENSOR1_OFF_CHECK		0x03
#define WIPER_SENSOR2_ON_CHECK		0x04
#define WIPER_SENSOR2_OFF_CHECK		0x05
#define WIPER_END_CHECK				0x06
#define WIPER_DWELL_CHECK				0x07

#define WIPER_STOP_READY				0x00
#define WIPER_STOP_ORIGIN				0x01
#define WIPER_STOP_EMERGENCY			0x02

/****************************************************************************************************
* Define : MODE SENSOR INPUT
*****************************************************************************************************/
#define DIP_MODE1						GPIO_ReadInputDataBit(GPIOB, GPIO_Pin_12)
#define DIP_MODE2						GPIO_ReadInputDataBit(GPIOB, GPIO_Pin_13)

#define IR_MODE							0x00
#define LRF_MODE						0x01

#define LRF_BOOTING_TIME				200		// 2 s

#define LRF_BYTE_1						0x44	// D
#define LRF_BYTE_2						0x4D	// M
#define LRF_BYTE_3						0x20	// SP
#define LRF_BYTE_4						0x31	// 1
#define LRF_BYTE_END					0x0D	// 

#define LRF_RX_BUF_MAX					0x16

/****************************************************************************************************
* Define : LRF SENSOR
*****************************************************************************************************/
#define LRF_NONE						0x00
#define LRF_INIT							0x01
#define LRF_MAX_TIME					0x02
#define LRF_LIMIT						0x03
#define LRF_CALL_DATA					0x04

#define LRF_TRANS_DELAY				1000

/****************************************************************************************************
* Define : MDIN
*****************************************************************************************************/
#define MDIN_COMMAND_TIMER_DELAY		0x03

#define MDIN_INITIALIZATION			0x0001
#define MDIN_INPUT_PATTERN			0x0021
#define MDIN_OUTPUT_PATTERN			0x0022
#define MDIN_INPUT_RESOLUTION			0x0023
#define MDIN_OUTPUT_RESOLUTION		0x0024
#define MDIN_FREEZE						0x0035
#define MDIN_SPRITE						0x0041
#define MDIN_SPRITE_RECT				0x0042
#define MDIN_SPRITE_STRING				0x0044
#define MDIN_SPRITE_CLEAR				0x0045

/****************************************************************************************************
*Define : LIGHT-ZOOM
*****************************************************************************************************/
//--------------------------------------------------------------------------------------------------//
// STEP Define (TIME) //
// - 1x : 0 ms
// - 2x : 105 x 10ms
// - 30x : 440 x 10ms
//--------------------------------------------------------------------------------------------------//

#define SONY_ZOOM_STEP_0				0x0226
#define SONY_ZOOM_STEP_1				0x0448
#define SONY_ZOOM_STEP_2				0x066A
#define SONY_ZOOM_STEP_3				0x088C
#define SONY_ZOOM_STEP_4				0x0AAE
#define SONY_ZOOM_STEP_5				0x0CD0
#define SONY_ZOOM_STEP_6				0x0EF2
#define SONY_ZOOM_STEP_7				0x1114
#define SONY_ZOOM_STEP_8				0x1336
#define SONY_ZOOM_STEP_9				0x1558
#define SONY_ZOOM_STEP_10				0x177A
#define SONY_ZOOM_STEP_11				0x199C
#define SONY_ZOOM_STEP_12				0x1BBE
#define SONY_ZOOM_STEP_13				0x1DE0
#define SONY_ZOOM_STEP_14				0x2002
#define SONY_ZOOM_STEP_15				0x2224
#define SONY_ZOOM_STEP_16				0x2446
#define SONY_ZOOM_STEP_17				0x2668
#define SONY_ZOOM_STEP_18				0x288A
#define SONY_ZOOM_STEP_19				0x2AAC
#define SONY_ZOOM_STEP_20				0x2CCE
#define SONY_ZOOM_STEP_21				0x2EF0
#define SONY_ZOOM_STEP_22				0x3112
#define SONY_ZOOM_STEP_23				0x3334
#define SONY_ZOOM_STEP_24				0x3556
#define SONY_ZOOM_STEP_25				0x3778
#define SONY_ZOOM_STEP_26				0x399A
#define SONY_ZOOM_STEP_27				0x3BBC
#define SONY_ZOOM_STEP_28				0x3DDE
#define SONY_ZOOM_STEP_29				0x4000

#define LIGHT_ZOOM_STEP_0				0x040B	
#define LIGHT_ZOOM_STEP_1				0x03E8	
#define LIGHT_ZOOM_STEP_2				0x03C4	
#define LIGHT_ZOOM_STEP_3				0x03A0	
#define LIGHT_ZOOM_STEP_4				0x037D	
#define LIGHT_ZOOM_STEP_5				0x0359
#define LIGHT_ZOOM_STEP_6				0x0335
#define LIGHT_ZOOM_STEP_7				0x0311
#define LIGHT_ZOOM_STEP_8				0x02EE
#define LIGHT_ZOOM_STEP_9				0x02CA	
#define LIGHT_ZOOM_STEP_10				0x02A6	
#define LIGHT_ZOOM_STEP_11				0x0282
#define LIGHT_ZOOM_STEP_12				0x025F
#define LIGHT_ZOOM_STEP_13				0x023B	
#define LIGHT_ZOOM_STEP_14				0x0217
#define LIGHT_ZOOM_STEP_15				0x01F4	
#define LIGHT_ZOOM_STEP_16				0x01D0
#define LIGHT_ZOOM_STEP_17				0x01AC	
#define LIGHT_ZOOM_STEP_18				0x0188
#define LIGHT_ZOOM_STEP_19				0x0165
#define LIGHT_ZOOM_STEP_20				0x0141	
#define LIGHT_ZOOM_STEP_21				0x011D	
#define LIGHT_ZOOM_STEP_22				0x00FA	
#define LIGHT_ZOOM_STEP_23				0x00D6	
#define LIGHT_ZOOM_STEP_24				0x00B2	
#define LIGHT_ZOOM_STEP_25				0x008E	
#define LIGHT_ZOOM_STEP_26				0x006B	
#define LIGHT_ZOOM_STEP_27				0x0047	
#define LIGHT_ZOOM_STEP_28				0x0023	
#define LIGHT_ZOOM_STEP_29				0x0000	

//--------------------------------------------------------------------------------------------------//
// LIGHT-ZOOM PORT Define //
//--------------------------------------------------------------------------------------------------//
#define LIGHT_ON								0x01
#define LIGHT_OFF								0x00

#define EXTERNAL_LIGHT_PORT_ON 				GPIO_SetBits(GPIOA, GPIO_Pin_1)
#define EXTERNAL_LIGHT_PORT_OFF 				GPIO_ResetBits(GPIOA, GPIO_Pin_1)

//--------------------------------------------------------------------------------------------------//
// TEMPERATURE Define //
//--------------------------------------------------------------------------------------------------//
#define TEMP_CHECK_DATA_COUNT_1ms	10
#define TEMP_CHECK_DATA_COUNT_10ms	10

#define TEMP_BOOT_START_TIME			10000

#define TEMP_COMPARE_VALUE			20

//--------------------------------------------------------------------------------------------------//
// MODE Define //
//--------------------------------------------------------------------------------------------------//
#define DISABLE_MODE					0x00
#define BOOT_MODE						0x01
#define NORMAL_MODE					0x02

/****************************************************************************************************
* Define : CDS
*****************************************************************************************************/
#define CDS_CHECK_TIME					5000

/****************************************************************************************************
* Define : MDIN
*****************************************************************************************************/
#define MDIN_LAYER_INFORMATION		0x00
#define MDIN_LAYER_TARGET				0x01
#define MDIN_LAYER_COORDINATE			0x02
#define MDIN_LAYER_CENTER_MSG			0x07
// ------------------------------------------------------------------------------------	WIPER Define	End

#define  String const unsigned char

#define Version_High				0x01
#define Version_Low  				0x1a
#define Upgrade_Year_Month   	0x8C
#define Upgrade_Day 			3


#define _between(x, a, b) 		(a<=x && x<=b)
#define _swap(a, b) 				{ a^=b; b^=a; a^=b; }

#define	HIGH						1
#define	LOW						0
#define	bON						1
#define	bOFF						0
#define	XON						0
#define	XOFF						1
#define 	bTRUE						0xff
#define 	bFALSE					0x00

#define 	READY					2
#define	ACTIVE					1
#define	STOP					0

#define 	sEE_OK					0
#define 	sEE_FAIL				1
#define	BYTE_ADDR				1
#define	WORD_ADDR				2
#define	READ_MODE				1		
#define	WRITE_MODE				0

#define	AT24C256_ADDR			0xA0	
#define I2C_Speed              400000
//#define String const U8
#define	TIMER3_1MS_COUNT			1000		// 1MHz(1us) * 1000 = 1KHz(1ms)
#define	TIMER3_PRESCALER_1US		1000000	// TIMER3 : 1MHz(1us) Prescaler 설정 -> 1ms Timer로 Counter 설정
#define	RS485_2400 					2400
#define	RS485_4800 					4800
#define	RS485_9600 					9600
#define	DRS_COM 					  	19200
#define	SCM2120_COM					38400

#define	D_EEP_SDA						GPIO_Pin_11
#define	M_EEP_SCL_LOW					GPIO_ResetBits(GPIOB, GPIO_Pin_10)
#define	M_EEP_SCL_HIGH				GPIO_SetBits(GPIOB, GPIO_Pin_10)
#define	M_EEP_SDA_LOW				GPIO_ResetBits(GPIOB, GPIO_Pin_11)
#define	M_EEP_SDA_HIGH				GPIO_SetBits(GPIOB, GPIO_Pin_11)
#define	M_EEP_SDA_READ				GPIO_ReadInputDataBit(GPIOB, GPIO_Pin_11)

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//      CAMERA TYPE, NTSC/PAL 설정
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//#define CodiRef     11
#define TVModeV     		0 // 0 -- NTSC,  1 -- PAL
#define CameraTypeV 	1 // 0 -- 480c,  1 -- 980c

#define FORWARD					1
#define BACKWARD				0

#define  gc_TIME_10SEC			 	(10000)	// 10s


#define I2C1_SDA 				GPIO_Pin_7		
#define I2C1_SCL 				GPIO_Pin_6		
#define I2C1_DELAY_TIME		5

#define I2C2_SDA 				GPIO_Pin_11		
#define I2C2_SCL 				GPIO_Pin_10		
#define I2C2_DELAY_TIME		5

#define	TIM2_RUN				(TIM2->CR1 & TIM_CR1_CEN)
#define	TIM5_RUN				(TIM5->CR1 & TIM_CR1_CEN)

#define	IR_EN_OFF				GPIO_ResetBits(GPIOA, GPIO_Pin_8)
#define	IR_EN_ON				GPIO_SetBits(GPIOA, GPIO_Pin_8)

#define	MODULE_OFF				GPIO_ResetBits(GPIOC, GPIO_Pin_8)
#define	MODULE_ON			GPIO_SetBits(GPIOC, GPIO_Pin_8)

#define	LED_On					GPIO_ResetBits(GPIOC, GPIO_Pin_3)
#define	LED_Off					GPIO_SetBits(GPIOC, GPIO_Pin_3)

//#define	Heater_OFF			GPIO_ResetBits(GPIOC, GPIO_Pin_13)
//#define	Heater_ON				GPIO_SetBits(GPIOC, GPIO_Pin_13)

#define	Heater_ON			GPIO_SetBits(GPIOC, GPIO_Pin_13)
#define	Heater_OFF				GPIO_ResetBits(GPIOC, GPIO_Pin_13)

//#define	GHeater_OFF			GPIO_ResetBits(GPIOC, GPIO_Pin_14)
//#define	GHeater_ON			GPIO_SetBits(GPIOC, GPIO_Pin_14)
#define	WIPER_CW				GPIO_ResetBits(GPIOC, GPIO_Pin_8)
#define	WIPER_CCW				GPIO_SetBits(GPIOC, GPIO_Pin_8)

#define	WIPER_STOP				GPIO_ResetBits(GPIOC, GPIO_Pin_6)
#define	WIPER_START			GPIO_SetBits(GPIOC, GPIO_Pin_6)

#define	WAT_OFF				GPIO_ResetBits(GPIOC, GPIO_Pin_7)
#define	WAT_ON					GPIO_SetBits(GPIOC, GPIO_Pin_7)

#define	AUX_OFF					GPIO_ResetBits(GPIOB, GPIO_Pin_8)
#define	AUX_ON					GPIO_SetBits(GPIOB, GPIO_Pin_8)

#define	Fan_OFF					GPIO_ResetBits(GPIOC, GPIO_Pin_15)
#define	Fan_ON					GPIO_SetBits(GPIOC, GPIO_Pin_15)

#define	RS485_Tx				GPIO_ResetBits(GPIOB, GPIO_Pin_12)
#define	RS485_Rx				GPIO_SetBits(GPIOB, GPIO_Pin_12)

#define	OSD_Reset_low		GPIO_ResetBits(GPIOD, GPIO_Pin_2)
#define	OSD_Reset_high	GPIO_SetBits(GPIOD, GPIO_Pin_2)

#define	OSD_IN_low			GPIO_ResetBits(GPIOC, GPIO_Pin_12)
#define	OSD_IN_high			GPIO_SetBits(GPIOC, GPIO_Pin_12)

#define	OSD_CLK_low			GPIO_ResetBits(GPIOC, GPIO_Pin_11)
#define	OSD_CLK_high		GPIO_SetBits(GPIOC, GPIO_Pin_11)

#define	OSD_CS_low		  GPIO_ResetBits(GPIOC, GPIO_Pin_10)
#define	OSD_CS_high			GPIO_SetBits(GPIOC, GPIO_Pin_10)

#define	OSD_BUSY_low		GPIO_ResetBits(GPIOB, GPIO_Pin_3)
#define	OSD_BUSY_high		GPIO_SetBits(GPIOB, GPIO_Pin_3)

#define	OSD_BUSY1_low		GPIO_ResetBits(GPIOB, GPIO_Pin_4)
#define	OSD_BUSY1_high		GPIO_SetBits(GPIOB, GPIO_Pin_4)

#define	I2C_SCL_high		GPIO_ResetBits(GPIOB, GPIO_Pin_6)
#define	I2C_SCL_low			GPIO_SetBits(GPIOB, GPIO_Pin_6)

#define	I2C_SDA_high		GPIO_ResetBits(GPIOB, GPIO_Pin_7)
#define	I2C_SDA_low			GPIO_SetBits(GPIOB, GPIO_Pin_7)

#define	OSD_BUSY1_low		GPIO_ResetBits(GPIOB, GPIO_Pin_4)
#define	OSD_BUSY1_high	GPIO_SetBits(GPIOB, GPIO_Pin_4)

//#define UpKey 					GPIO_ReadInputDataBit(GPIOB, GPIO_Pin_15)
#define RightKey 					GPIO_ReadInputDataBit(GPIOB, GPIO_Pin_15)
//#define DnKey 					GPIO_ReadInputDataBit(GPIOC, GPIO_Pin_6)
#define LeftKey 					GPIO_ReadInputDataBit(GPIOC, GPIO_Pin_6)
//#define RightKey				GPIO_ReadInputDataBit(GPIOB, GPIO_Pin_13)
#define UpKey				GPIO_ReadInputDataBit(GPIOB, GPIO_Pin_13)
//#define LeftKey					GPIO_ReadInputDataBit(GPIOB, GPIO_Pin_12)
#define DnKey					GPIO_ReadInputDataBit(GPIOB, GPIO_Pin_12)
#define SetKey				  GPIO_ReadInputDataBit(GPIOB, GPIO_Pin_14)

#define SW_ID1				  GPIO_ReadInputDataBit(GPIOA, GPIO_Pin_4)
#define SW_ID2				  GPIO_ReadInputDataBit(GPIOA, GPIO_Pin_5)
#define SW_ID3				  GPIO_ReadInputDataBit(GPIOA, GPIO_Pin_6)
#define SW_ID4				  GPIO_ReadInputDataBit(GPIOA, GPIO_Pin_7)
#define SW_ID5				  GPIO_ReadInputDataBit(GPIOC, GPIO_Pin_4)
#define SW_ID6				  GPIO_ReadInputDataBit(GPIOC, GPIO_Pin_5)
#define BAUD1 				  GPIO_ReadInputDataBit(GPIOB, GPIO_Pin_0)
#define BAUD2 				  GPIO_ReadInputDataBit(GPIOB, GPIO_Pin_1)
#define PROTO 				  GPIO_ReadInputDataBit(GPIOB, GPIO_Pin_2)
#define ALARMIN				  GPIO_ReadInputDataBit(GPIOB, GPIO_Pin_9)


#define ZoomSpdFast 15
#define ZoomSpdSlow 25
#define ZoomSpdSync 32

#define Start_pos   7

#define  START_POS						1	
#define  COLON_POS						16	
#define  OPTION_POS					17	
#define  PanBreak   				0x01
#define  TiltBreak  				0x02
#define  KeyConti   				0x04
#define  TKeyConti  				0x08
#define  KeyPress   				0x10
#define  MenuBreak  				0x20
#define  KeyUp  	  				0x01
#define  KeyDown  					0x02
#define  KeyInc   					0x04
#define  KeyDec   					0x08
#define  KeyExit  					0x10
#define  MenuCont 					0x20
#define  KeyLeft  					0x40
#define  KeyRight 					0x80
#define	 TRUE								0xff
#define	 FALSE							0x00
#define  HIGH    						1 
#define  LOW     						0


#define	CODE_STX						0x01
#define	CODE_ACK						0x02

#define	CMD_ZOOM_DIRECT			0xA4

#define	CMD_AGC							0x2A
#define	CMD_AGC_AUTO				0x01
#define	CMD_AGC_FREEZE			0x00	

#define	CMD_BLACK_HOT				0x28	
#define	CMD_WHITE_HOT				0x29	

#define	CMD_IDE_MODE				0x22
#define	CMD_IDE_LOW					0x00
#define	CMD_IDE_HIGH				0x01

#define	CMD_IDE_USE					0x23
#define	CMD_IDE_ENABLE			0x01
#define	CMD_IDE_DISABLE			0x00

#define	CMD_PATTERN_MODE		0xF4
#define	CMD_FACTORY_DEFAULT	0xFF

#define Symbology		 					52
#define SymbologyIndication		55
#define LogoDisplay 					54
#define LogoDisable 					0
#define LogoEnable 						1
