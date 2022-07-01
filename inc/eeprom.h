/*=================================================================================
Project Name 		:	TPV HD Type (HD IP THERMOGRAPHY PTZ CAMERA)
Author			:	phs@tbtsys.com
=================================================================================*/

#define EEP_HEADER							0xA0

#define EEP_PROM_MARK						2
#define EEP_START_ADDRESS					10

// --------------------------------------------------------------------------------------------------//
// 1. Color Module Control Command (0xAx)																 //
// --------------------------------------------------------------------------------------------------//
#define EEP_SET_FOCUS_MODE				EEP_START_ADDRESS					+ 1
#define EEP_SET_AUTO_FOCUS_MODE			EEP_SET_FOCUS_MODE					+ 1
#define EEP_SET_BLC_MODE					EEP_SET_AUTO_FOCUS_MODE			+ 1
#define EEP_SET_WHITE_BALANCE_MODE		EEP_SET_BLC_MODE					+ 1
#define EEP_SET_DEFOG_MODE				EEP_SET_WHITE_BALANCE_MODE		+ 1
#define EEP_SET_SHUTTER_SPEED				EEP_SET_DEFOG_MODE					+ 1
#define EEP_SET_FLICKER_MODE				EEP_SET_SHUTTER_SPEED				+ 1
#define EEP_SET_APERTURE_VALUE			EEP_SET_FLICKER_MODE				+ 1
#define EEP_SET_DIGITAL_ZOOM_MODE		EEP_SET_APERTURE_VALUE				+ 1
#define EEP_SET_DAY_NIGHT_MODE			EEP_SET_DIGITAL_ZOOM_MODE			+ 1
#define EEP_SET_DSS_MODE					EEP_SET_DAY_NIGHT_MODE				+ 1
#define EEP_SELECT_BLC_WDR					EEP_SET_DSS_MODE					+ 1
#define EEP_SET_HIGH_RESOLUTION			EEP_SELECT_BLC_WDR					+ 1
#define EEP_SET_IMAGE_STABILIZER			EEP_SET_HIGH_RESOLUTION			+ 1
#define EEP_SET_NOISE_REDUCTION			EEP_SET_IMAGE_STABILIZER			+ 1
#define EEP_SET_COLOR_MODULE				EEP_SET_NOISE_REDUCTION			+ 1
#define EEP_MANUAL_FOCUS_DATA			EEP_SET_COLOR_MODULE				+ 1

// --------------------------------------------------------------------------------------------------//
// 2. Thermal Module Control Command (0xBx)																 //
// --------------------------------------------------------------------------------------------------//
#define EEP_SHUTTER_SET					EEP_MANUAL_FOCUS_DATA				+ 2
#define EEP_DIGITAL_ZOOM_ENABLE			EEP_SHUTTER_SET						+ 1
#define EEP_AGC_MODE_SET					EEP_DIGITAL_ZOOM_ENABLE			+ 1
#define EEP_COLOR_MODE_SET				EEP_AGC_MODE_SET					+ 1
#define EEP_CONTRAST_BRIGHTNESS_ENABLE	EEP_COLOR_MODE_SET					+ 1
#define EEP_CONTRAST_BRIGHTNESS_VAL		EEP_CONTRAST_BRIGHTNESS_ENABLE	+ 1
#define EEP_AGC_CENTER_POSITION_SET		EEP_CONTRAST_BRIGHTNESS_VAL		+ 1
#define EEP_AGC_LIMIT_LEVEL_SET			EEP_AGC_CENTER_POSITION_SET		+ 1
#define EEP_AGC_ROI							EEP_AGC_LIMIT_LEVEL_SET				+ 1
#define EEP_MIDE_LEVEL_SET					EEP_AGC_ROI							+ 1
#define EEP_SHARPNESS_LEVEL_SET			EEP_MIDE_LEVEL_SET					+ 1
#define EEP_DETECT_MODE_SET				EEP_SHARPNESS_LEVEL_SET			+ 1
#define EEP_IMAGE_COLOR_INVERSE_SET		EEP_DETECT_MODE_SET				+ 1

// --------------------------------------------------------------------------------------------------//
// 3. PTZ Control Command (0xCx)																		 //
// --------------------------------------------------------------------------------------------------//
// 3.70. Set Flip Reverse Mode (0x70)
#define EEP_SET_REVERSE_MODE				EEP_IMAGE_COLOR_INVERSE_SET		+ 1

// 3.71. Set Recover Origin Mode (0x71)
// → RECOVER ORIGION EEPROM MEMORY ACCESS 항목 참조 : EEP_RECOVER_ORIGIN_DATA

// 3.72. Set Motor Torque (0x72)
#define EEP_SET_MOTOR_TORQUE_MODE		EEP_SET_REVERSE_MODE				+ 1

// 3.73. Set Endless Mode (0x73)
#define EEP_SET_ENDLESS_MODE				EEP_SET_MOTOR_TORQUE_MODE			+ 1
#define EEP_SET_ENDLESS_OPTION			EEP_SET_ENDLESS_MODE				+ 1

// 3.74. Set CAM ID (0x74)
#define EEP_SET_CAM_ID 						EEP_SET_ENDLESS_OPTION				+ 1

// 3.80. Set NTSC / PAL Mode (0x80)
#define EEP_SET_NTSC_PAL_MODE				EEP_SET_CAM_ID						+ 1

// --------------------------------------------------------------------------------------------------//
// 5. Option Command (0xEx) 																			 //
// --------------------------------------------------------------------------------------------------//
// 5.2. Set Wiper (0x02)
#define EEP_SET_WIPER_COUNT				EEP_SET_NTSC_PAL_MODE				+ 1
#define EEP_SET_WIPER_DWELL_TIME			EEP_SET_WIPER_COUNT				+ 1

// 5.5. Set LRF (0x05)
#define EEP_SET_LRF_ENABLE					EEP_SET_WIPER_DWELL_TIME			+ 1
#define EEP_SET_LRF_TIME					EEP_SET_LRF_ENABLE					+ 1

// 5.10. Set Temperature String (OSD) Display Mode (0x10)
#define EEP_SET_TEMP_OSD_DISPLAY			EEP_SET_LRF_TIME					+ 1

// 5.11. Set Coordinate Display Mode (0x11)
#define EEP_SET_COODINATE_DISPLAY			EEP_SET_TEMP_OSD_DISPLAY			+ 1

// 5.12. Set Camera ID Display Mode (0x12)
#define EEP_SET_CAM_ID_DISPLAY			EEP_SET_COODINATE_DISPLAY			+ 1

// 5.13. Set PTZ ID OSD Display Mode (0x13)
#define EEP_SET_PTZ_ID_DISPLAY				EEP_SET_CAM_ID_DISPLAY				+ 1

// 5.15. Set OSD Convert Mode (0x15)
#define EEP_SET_OSD_SIZE					EEP_SET_PTZ_ID_DISPLAY				+ 1
#define EEP_SET_OSD_COLOR					EEP_SET_OSD_SIZE					+ 1

// 5.18. Set External IR Mode (0x18)
#define EEP_SET_EXTERN_IR_MODE			EEP_SET_OSD_COLOR					+ 1

// 5.19. Set External IR Change Lux (0x19)
#define EEP_SET_EXTERN_IR_CHANGE_LUX		EEP_SET_EXTERN_IR_MODE				+ 1

// 5.20. Set External IR Offset (0x20)
#define EEP_SET_EXTERN_IR_OFFSET			EEP_SET_EXTERN_IR_CHANGE_LUX		+ 1

// 5.21. Set Temperature Option (Only TSM Series) (0x21)
#define EEP_SET_TEMP_OPTION				EEP_SET_EXTERN_IR_OFFSET			+ 1

// 5.22. Set Wiper Option (0x22)
#define EEP_SET_WIPER_OPTION				EEP_SET_TEMP_OPTION					+ 1
#define EEP_SET_WASHER_SPRITE_TIME		EEP_SET_WIPER_OPTION				+ 1
#define EEP_SET_WIPER_CONTINUOUS_TIME	EEP_SET_WASHER_SPRITE_TIME			+ 1
#define EEP_SET_WASHER_PAN_POSITION		EEP_SET_WIPER_CONTINUOUS_TIME		+ 1
#define EEP_SET_WASHER_TILT_POSITION		EEP_SET_WASHER_PAN_POSITION		+ 2

// 5.23. Set LRF Option (0x23)
#define EEP_SET_LRF_OPTION					EEP_SET_WASHER_TILT_POSITION		+ 2

// 5.24. Set Extern IR Option (0x24)
#define EEP_SET_EXTERN_IR_OPTION			EEP_SET_LRF_OPTION					+ 1

// 5.25. Set Heater / Fan Control Mode (0x25)
#define EEP_SET_INTERVAL_TEMP_ENABLE		EEP_SET_EXTERN_IR_OPTION			+ 1
#define EEP_SET_INTERVAL_TEMP_TIME		EEP_SET_INTERVAL_TEMP_ENABLE		+ 1

// --------------------------------------------------------------------------------------------------//
// ETC.					 																			 //
// --------------------------------------------------------------------------------------------------//
#define EEP_COLD_DATA_INFO				EEP_SET_INTERVAL_TEMP_TIME			+ 1
#define EEP_COLD_TIME_MAX					EEP_COLD_DATA_INFO					+ 1

// --------------------------------------------------------------------------------------------------//
// ALARM				 																			 //
// --------------------------------------------------------------------------------------------------//
// 3.15. Set Alarm Preset (0x15)
#define EEP_SET_ALARM_NOC_MODE			EEP_COLD_TIME_MAX					+ 2
#define EEP_SET_ALARM_PRESET				EEP_SET_ALARM_NOC_MODE			+ 2
#define EEP_SET_ALARM_PRESET_DWELL_TIME	EEP_SET_ALARM_PRESET				+ 2
#define EEP_SET_ALARM_ENABLE				EEP_SET_ALARM_PRESET_DWELL_TIME	+ 2
#define EEP_SET_RELAY_ENABLE				EEP_SET_ALARM_ENABLE				+ 2
#define EEP_SET_RELAY_ENABLE_TIME			EEP_SET_RELAY_ENABLE				+ 2

// -------------------------------------------------------------------------------NEW TYPE PTZ DATA END

#define EEP_HEADER_INFO					10000



