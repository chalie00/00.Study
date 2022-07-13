///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    13/Jul/2022  18:47:22 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\TTT\Desktop\zz.STDFW\00.Study\src\main.c       /
//    Command line =  C:\Users\TTT\Desktop\zz.STDFW\00.Study\src\main.c -D    /
//                    USE_STDPERIPH_DRIVER -D STM32F10x_HD -D                 /
//                    USE_FULL_ASSERT -lcN C:\Users\TTT\Desktop\zz.STDFW\00.S /
//                    tudy\project\IAR_M32\Debug\List\ -lb                    /
//                    C:\Users\TTT\Desktop\zz.STDFW\00.Study\project\IAR_M32\ /
//                    Debug\List\ -o C:\Users\TTT\Desktop\zz.STDFW\00.Study\p /
//                    roject\IAR_M32\Debug\Obj\ --no_cse --no_unroll          /
//                    --no_inline --no_code_motion --no_tbaa --no_clustering  /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=Cortex-M3 -e --fpu=None --dlib_config             /
//                    "C:\Program Files (x86)\IAR Systems\Embedded Workbench  /
//                    6.0\arm\INC\c\DLib_Config_Full.h" -I                    /
//                    C:\Users\TTT\Desktop\zz.STDFW\00.Study\project\IAR_M32\ /
//                    ..\..\inc\ -I C:\Users\TTT\Desktop\zz.STDFW\00.Study\pr /
//                    oject\IAR_M32\..\..\Libraries\CMSIS\CM3\DeviceSupport\S /
//                    T\STM32F10x\ -I C:\Users\TTT\Desktop\zz.STDFW\00.Study\ /
//                    project\IAR_M32\..\..\Libraries\STM32F10x_StdPeriph_Dri /
//                    ver\inc\ -I "C:\Program Files (x86)\IAR                 /
//                    Systems\Embedded Workbench 6.0\arm\inc\c\" -On -I       /
//                    "C:\Program Files (x86)\IAR Systems\Embedded Workbench  /
//                    6.0\arm\CMSIS\Include\"                                 /
//    List file    =  C:\Users\TTT\Desktop\zz.STDFW\00.Study\project\IAR_M32\ /
//                    Debug\List\main.s                                       /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME main

        #define SHT_PROGBITS 0x1

        EXTERN Delay_1ms
        EXTERN Delay_ms
        EXTERN GPIO_ReadInputDataBit
        EXTERN GPIO_ResetBits
        EXTERN GPIO_SetBits
        EXTERN I2C2_Read
        EXTERN I2C2_Write
        EXTERN Initial_Device
        EXTERN RCC_APB1PeriphClockCmd
        EXTERN RCC_DeInit
        EXTERN RCC_GetFlagStatus
        EXTERN RCC_GetSYSCLKSource
        EXTERN RCC_HCLKConfig
        EXTERN RCC_HSEConfig
        EXTERN RCC_PCLK1Config
        EXTERN RCC_PCLK2Config
        EXTERN RCC_PLLCmd
        EXTERN RCC_PLLConfig
        EXTERN RCC_SYSCLKConfig
        EXTERN RCC_WaitForHSEStartUp
        EXTERN TW9900_I2C1_ByteWrite
        EXTERN UART4_Init
        EXTERN USART_SendData
        EXTERN WWDG_Enable
        EXTERN WWDG_SetPrescaler
        EXTERN WWDG_SetWindowValue
        EXTERN delayR
        EXTERN stADC
        EXTERN stCDS
        EXTERN stDIP
        EXTERN stFAN
        EXTERN stHEATER
        EXTERN stINFO
        EXTERN stLIGHT
        EXTERN stLRF
        EXTERN stOSD
        EXTERN stSONY
        EXTERN stSYS
        EXTERN stTCM
        EXTERN stTEMP
        EXTERN stTEST
        EXTERN stTSM
        EXTERN stUART4
        EXTERN stUART5
        EXTERN stUSART1
        EXTERN stUSART2
        EXTERN stWIPER1
        EXTERN stWIPER2

        PUBLIC ABB_255_Flag
        PUBLIC ABB_Heater_Set
        PUBLIC ACTdCount
        PUBLIC ACTnCount
        PUBLIC ADCConvertedData
        PUBLIC ADCConvertedValue
        PUBLIC ADC_Value
        PUBLIC AFMTimer
        PUBLIC AFManual
        PUBLIC AFMode
        PUBLIC AFMsg
        PUBLIC AFactFlag
        PUBLIC AFmsTimer
        PUBLIC AFocusFlag
        PUBLIC AFsTimer
        PUBLIC AGCFreezeMsg
        PUBLIC AGCGainBias
        PUBLIC AGCLevelBias
        PUBLIC AGCLimitLevel
        PUBLIC AGCMode
        PUBLIC AGCMsg
        PUBLIC AGCstatusMsg
        PUBLIC AIrisFlag
        PUBLIC AT24C256C_EEPROM_Read
        PUBLIC AT24C256C_EEPROM_Write
        PUBLIC AWBModeMsg
        PUBLIC AbsFocusFlag
        PUBLIC AdBufCnt
        PUBLIC AdCDS
        PUBLIC AdCDSBuf
        PUBLIC AdChkCnt
        PUBLIC AdDone
        PUBLIC AdDoneCnt
        PUBLIC AdFar
        PUBLIC AdFarBuf
        PUBLIC AdNear
        PUBLIC AdNearBuf
        PUBLIC AdProCnt
        PUBLIC AdjFlag
        PUBLIC AgcFMsg
        PUBLIC AgcHMsg
        PUBLIC AgcLMsg
        PUBLIC AgcMMsg
        PUBLIC AgcMsg
        PUBLIC AgcVal
        PUBLIC AlarmCount
        PUBLIC AlarmDetect
        PUBLIC AlarmDetectMsg
        PUBLIC AlarmDisplayFlag
        PUBLIC AlarmFlag
        PUBLIC AlarmInMode
        PUBLIC AlarmMode
        PUBLIC AlarmMsg
        PUBLIC AlarmSetMsg
        PUBLIC AlarmStatusMsg
        PUBLIC AllEraseMsg
        PUBLIC AllMsg
        PUBLIC AlmAct
        PUBLIC AlmActMsg
        PUBLIC AlmAuxAct
        PUBLIC AlmAuxCnt
        PUBLIC AlmBlk
        PUBLIC AlmBuf
        PUBLIC AlmEnable
        PUBLIC AlmFlag
        PUBLIC AlmInMsg
        PUBLIC AlmInput
        PUBLIC AlmMMsg
        PUBLIC AlmMsg
        PUBLIC AlmNo
        PUBLIC AlmNoMsg
        PUBLIC AlmOSD
        PUBLIC AlmOffMsg
        PUBLIC AlmOnMsg
        PUBLIC AlmRecv
        PUBLIC AlmRx
        PUBLIC AlmT
        PUBLIC AlmTemp
        PUBLIC AperVal
        PUBLIC AptMsg
        PUBLIC AreaMsg
        PUBLIC AutoDrMsg
        PUBLIC AutoDwMsg
        PUBLIC AutoEdMsg
        PUBLIC AutoFnMsg
        PUBLIC AutoFocusMsg
        PUBLIC AutoMsg
        PUBLIC AutoPanMsg
        PUBLIC AutoSpdMsg
        PUBLIC AutoStMsg
        PUBLIC Auto_Day_And_Night_Control
        PUBLIC Aux1Buf
        PUBLIC Aux1OffMsg
        PUBLIC Aux1OnMsg
        PUBLIC Aux2Buf
        PUBLIC Aux2OffMsg
        PUBLIC Aux2OnMsg
        PUBLIC AuxActMsg
        PUBLIC AuxMode
        PUBLIC AuxMsg
        PUBLIC BackBuf
        PUBLIC BaudMsg
        PUBLIC BaudRate
        PUBLIC Baud_Buffer
        PUBLIC BaudrateMsg
        PUBLIC Before_USART1_Data_Parser
        PUBLIC BlankMsg
        PUBLIC BlcAreaBottom
        PUBLIC BlcAreaLeft
        PUBLIC BlcAreaMode
        PUBLIC BlcAreaRight
        PUBLIC BlcAreaSel
        PUBLIC BlcAreaTop
        PUBLIC BlcEn
        PUBLIC BlcEnI
        PUBLIC BlcLevel
        PUBLIC BlcMode
        PUBLIC BlcMode1Msg
        PUBLIC BlcModeMsg
        PUBLIC BlcModeSMsg
        PUBLIC BlcMsg
        PUBLIC BlcOffMsg
        PUBLIC BlcOnMsg
        PUBLIC BlcSetMsg
        PUBLIC BlcShortModeMsg
        PUBLIC BlcSubCur
        PUBLIC BlcSubEn
        PUBLIC BlcSubMenu
        PUBLIC BlcSubModeMsg
        PUBLIC BlkMsg
        PUBLIC Bypass_Data_Parser
        PUBLIC CDSMsg
        PUBLIC CDS_Average_Value
        PUBLIC CDS_Buffer_Cnt
        PUBLIC CDS_Data_Check
        PUBLIC CDS_Day_Check_Cnt
        PUBLIC CDS_Night_Check_Cnt
        PUBLIC CDS_Total_Value
        PUBLIC CDS_convertV
        PUBLIC COMMAND_CODE
        PUBLIC CRxBuf
        PUBLIC CRxReceived
        PUBLIC CRxTail
        PUBLIC CTxBuf
        PUBLIC CTxMax
        PUBLIC CTxTail
        PUBLIC CURRENT_STATUS
        PUBLIC CZoomModeMsg
        PUBLIC CZoomOffMsg
        PUBLIC CZoomOnMsg
        PUBLIC CZoomSet
        PUBLIC CamCodeRecv
        PUBLIC CamDisMsg
        PUBLIC CamID_Buffer
        PUBLIC CamIdMsg
        PUBLIC CamIdsMsg
        PUBLIC CamInitialMsg
        PUBLIC CamModuleInfo
        PUBLIC CamRxBuf
        PUBLIC CamRxCnt
        PUBLIC CamSetMsg
        PUBLIC CamTestMsg
        PUBLIC CamTxBuf
        PUBLIC CamType
        PUBLIC CamType1Msg
        PUBLIC CamType2Msg
        PUBLIC CdZoomModeMsg
        PUBLIC CdZoomOffMsg
        PUBLIC CdZoomOnMsg
        PUBLIC CdZoomSet
        PUBLIC CelsiMsg
        PUBLIC CharLeng
        PUBLIC CheckHeater1Msg
        PUBLIC CheckHeaterMsg
        PUBLIC CheckLockMsg
        PUBLIC CheckSum
        PUBLIC CheckSyncMsg
        PUBLIC CheckTempValue
        PUBLIC CheckZoomMsg
        PUBLIC Check_Byte
        PUBLIC ChkFlag
        PUBLIC ChkMsg
        PUBLIC ChkOkMsg
        PUBLIC ClrMsg
        PUBLIC CndFlag
        PUBLIC CntReplyAlm
        PUBLIC CntSetReq
        PUBLIC CodiMsg
        PUBLIC CodiRef
        PUBLIC ColBaudFlag
        PUBLIC ColdCondition
        PUBLIC ColdCondition_Check_Time
        PUBLIC ColdCondition_Timer_Flag
        PUBLIC ColdStart1Msg
        PUBLIC ColdStartMsg
        PUBLIC Cold_Module_Init_Check
        PUBLIC Cold_Start_EnableFlag
        PUBLIC ColorBaud
        PUBLIC ColorCamMsg
        PUBLIC ColorModuleMsg
        PUBLIC ColorMsg
        PUBLIC ColorTMsg
        PUBLIC ColorVal
        PUBLIC ColorbaudMsg
        PUBLIC CommAcc
        PUBLIC CommAccA
        PUBLIC CommAccB
        PUBLIC CommErrMsg
        PUBLIC CommRate
        PUBLIC ConfigMsg
        PUBLIC ContinuousTimeMsg
        PUBLIC ConvertData
        PUBLIC DATA1_CODE
        PUBLIC DATA2_CODE
        PUBLIC DATA_Request_Handing
        PUBLIC DN0Msg
        PUBLIC DN1Msg
        PUBLIC DN2Msg
        PUBLIC DNAMsg
        PUBLIC DNDMsg
        PUBLIC DNLevMsg
        PUBLIC DNLevelFlag
        PUBLIC DNLevelSet
        PUBLIC DNMode
        PUBLIC DNNAMsg
        PUBLIC DNNMsg
        PUBLIC DRSLogoDisplayMsg
        PUBLIC DRS_NtPalSet
        PUBLIC DRS_RECIVE_COMPLETE
        PUBLIC DRS_Zoom_Count
        PUBLIC DSSMode
        PUBLIC DSSValMsg
        PUBLIC DZoom
        PUBLIC DZoomCount
        PUBLIC DZoomMsg
        PUBLIC DZoomPos
        PUBLIC Data_Test
        PUBLIC DayFlag
        PUBLIC DayFlagMsg
        PUBLIC DayNightSubMenu
        PUBLIC DefaultInitMsg
        PUBLIC DefaultMsg
        PUBLIC DirectPattFlag
        PUBLIC Dis1Msg
        PUBLIC DisEn
        PUBLIC DisMsg
        PUBLIC DisOffMsg
        PUBLIC DisOnMsg
        PUBLIC DispBuf
        PUBLIC DispCode
        PUBLIC DnNMsg
        PUBLIC DnrMode
        PUBLIC DnrMsg
        PUBLIC DomeId
        PUBLIC DssMsg
        PUBLIC DssNAMsg
        PUBLIC DssOffMsg
        PUBLIC DssOnMsg
        PUBLIC DwellMs
        PUBLIC DwellSec
        PUBLIC EEPROM_Memory_Read
        PUBLIC EXCUTE_CODE
        PUBLIC EnMsg
        PUBLIC EngErrMsg
        PUBLIC EnglishMsg
        PUBLIC EpromCheckMsg
        PUBLIC EraseMsg
        PUBLIC EraseMsgClr
        PUBLIC ErrData
        PUBLIC ErrMsg
        PUBLIC Error_Offset_Check
        PUBLIC Error_Repeat_Cnt
        PUBLIC ExitMsg
        PUBLIC External_Title_Msg
        PUBLIC FRZMode
        PUBLIC FahreMsg
        PUBLIC FailFlag
        PUBLIC FanBuf
        PUBLIC FanFlag
        PUBLIC FanOffMsg
        PUBLIC FanOnMsg
        PUBLIC FanSetMsg
        PUBLIC Fan_Dewell_End_Flag
        PUBLIC Fan_Dewell_Flag
        PUBLIC Fan_Dwell_Time_ms
        PUBLIC Fan_Dwell_Time_sec
        PUBLIC Fan_Heater_Control
        PUBLIC Fan_Heater_First_Check_Flag
        PUBLIC Fan_Heater_First_Check_Time
        PUBLIC Fan_Heater_First_On_Flag
        PUBLIC Fan_State
        PUBLIC FarMsg
        PUBLIC FastMsg
        PUBLIC FastTMsg
        PUBLIC FlagReqAlm
        PUBLIC FlagReqSts
        PUBLIC FlickerMsg
        PUBLIC FlipMsg
        PUBLIC FlipOffMsg
        PUBLIC FlipOnMsg
        PUBLIC FlipStMsg
        PUBLIC FlkEn
        PUBLIC FlkMsg
        PUBLIC FocuFarMsg
        PUBLIC FocuNearMsg
        PUBLIC FocuPos
        PUBLIC FocuPos_SCM
        PUBLIC FocusAdjMsg
        PUBLIC FocusFlag
        PUBLIC FocusMan
        PUBLIC FocusModeMsg
        PUBLIC FocusModeVal
        PUBLIC FocusSSetMsg
        PUBLIC FocusSValMsg
        PUBLIC FocusSpdVal
        PUBLIC FocusStopCount
        PUBLIC FourMsg
        PUBLIC FreezeAllMsg
        PUBLIC FreezeMsg
        PUBLIC Freeze_Data
        PUBLIC FrzNAMsg
        PUBLIC FrzOffMsg
        PUBLIC FrzOnMsg
        PUBLIC FullAEMsg
        PUBLIC GHeaterActFlag
        PUBLIC GHeaterBuf
        PUBLIC GHeaterDispFlag
        PUBLIC GHeaterInter
        PUBLIC GHeaterMode
        PUBLIC GHeaterOffMsg
        PUBLIC GHeaterOffVal
        PUBLIC GHeaterOnMsg
        PUBLIC GHeaterOnVal
        PUBLIC GInterCount
        PUBLIC GInterMCount
        PUBLIC GInterSCount
        PUBLIC GainMode
        PUBLIC GainValMsg
        PUBLIC GainValMsg1
        PUBLIC GlassHeaterMsg
        PUBLIC HeatOffMsg
        PUBLIC Heater1OnMsg
        PUBLIC Heater2OnMsg
        PUBLIC HeaterActFlag
        PUBLIC HeaterAutoMsg
        PUBLIC HeaterFlag
        PUBLIC HeaterIntervalMsg
        PUBLIC HeaterOffMsg
        PUBLIC HeaterOnMsg
        PUBLIC HeaterSetMsg
        PUBLIC HeaterStatusMsg
        PUBLIC Heater_State
        PUBLIC HexCode
        PUBLIC HighMsg
        PUBLIC HitFlag
        PUBLIC HlcLevel
        PUBLIC HlcMaskColor
        PUBLIC HlcModeSMsg
        PUBLIC HlcOffMsg
        PUBLIC HlcOnMsg
        PUBLIC HomeautoMsg
        PUBLIC HomeblankMsg
        PUBLIC HomepattMsg
        PUBLIC HomeposMsg
        PUBLIC HomeprstMsg
        PUBLIC HomescanMsg
        PUBLIC HometourMsg
        PUBLIC HrMode
        PUBLIC HrMsg
        PUBLIC ICRThreshold
        PUBLIC ICanTek
        PUBLIC IDEHighInfoMsg
        PUBLIC IDEModeMsg
        PUBLIC IDEModeVal
        PUBLIC IDEModeValFlag
        PUBLIC IDElowInfoMsg
        PUBLIC IRISMsg
        PUBLIC IR_Duty_Step
        PUBLIC IR_Set_Check
        PUBLIC IR_Set_Msg
        PUBLIC IR_Test_Mode
        PUBLIC ISMode
        PUBLIC ISMsg
        PUBLIC IdDisp
        PUBLIC IdDisp2
        PUBLIC IdDispMsg
        PUBLIC IdPosBuf
        PUBLIC InHeaterDispFlag
        PUBLIC InHeaterInter
        PUBLIC InHeaterMode
        PUBLIC InHeaterOffVal
        PUBLIC InHeaterOnVal
        PUBLIC InheaterCount_M
        PUBLIC InheaterCount_Ms
        PUBLIC InheaterCount_S
        PUBLIC Init1Msg
        PUBLIC Init21Msg
        PUBLIC Init2Msg
        PUBLIC Init31Msg
        PUBLIC Init3Msg
        PUBLIC Init41Msg
        PUBLIC Init4Msg
        PUBLIC Init51Msg
        PUBLIC Init5Msg
        PUBLIC Init61Msg
        PUBLIC Init6Msg
        PUBLIC Init71Msg
        PUBLIC Init7Msg
        PUBLIC InitMsg
        PUBLIC InitOpt
        PUBLIC InnerHeaterMsg
        PUBLIC InnerHeaterOffMsg
        PUBLIC InnerHeaterOnMsg
        PUBLIC Inner_Heater_State
        PUBLIC InterCount
        PUBLIC InterMCount
        PUBLIC InterSCount
        PUBLIC InterTimeMsg
        PUBLIC InterValOnePushMsg
        PUBLIC InverseMode
        PUBLIC InverseModeMsg
        PUBLIC InverseOffMsg
        PUBLIC InverseOnMsg
        PUBLIC IrBrtMsg
        PUBLIC IrisAutoMsg
        PUBLIC IrisCloseMsg
        PUBLIC IrisFlag
        PUBLIC IrisLevelMsg
        PUBLIC IrisMan
        PUBLIC IrisMaxLevelMsg
        PUBLIC IrisMaxVal
        PUBLIC IrisMode
        PUBLIC IrisModeSet
        PUBLIC IrisPeakVal
        PUBLIC IrisSubMenu
        PUBLIC IrisVal
        PUBLIC IrisValMsg
        PUBLIC Joy_Zoom
        PUBLIC JoystickSW
        PUBLIC KeyFlag
        PUBLIC KeyInputFlag
        PUBLIC LRF_Initialization
        PUBLIC LangMsg
        PUBLIC Language
        PUBLIC Led1BlinkTimeMs
        PUBLIC Led2BlinkTimeMs
        PUBLIC Led3BlinkTimeMs
        PUBLIC LedCurFlag
        PUBLIC LedFlag
        PUBLIC LedOffMsg
        PUBLIC LedOnMsg
        PUBLIC LedStatus
        PUBLIC LeftMsg
        PUBLIC LeftTopMsg
        PUBLIC LensMsg
        PUBLIC LensSetFlag
        PUBLIC LensSetMsg
        PUBLIC LensVal
        PUBLIC LevelMsg
        PUBLIC LimFlag
        PUBLIC LimitMsg
        PUBLIC LoadingMsg
        PUBLIC LockEn
        PUBLIC LockMsg
        PUBLIC LogoEnFlag
        PUBLIC LogoModeVal
        PUBLIC LogoMsg
        PUBLIC LowMsg
        PUBLIC MDIN_I550_Initialization
        PUBLIC MDIN_Sprite_Initialization
        PUBLIC MODULE_SELECT
        PUBLIC MOffMsg
        PUBLIC MPVal
        PUBLIC MWbBGainMsg
        PUBLIC MWbRGainMsg
        PUBLIC MainAlmMsg
        PUBLIC MainBarMsg
        PUBLIC MainCamMsg
        PUBLIC MainCameraMsg
        PUBLIC MainCur
        PUBLIC MainDomMsg
        PUBLIC MainExtMsg
        PUBLIC MainMsg
        PUBLIC MainMsg10
        PUBLIC MainMsg2
        PUBLIC MainMsg3
        PUBLIC MainMsg9
        PUBLIC MainPatMsg
        PUBLIC MainPreMsg
        PUBLIC MainPriMsg
        PUBLIC MainScanMsg
        PUBLIC MainTitMsg
        PUBLIC MainTourMsg
        PUBLIC ManMsg
        PUBLIC MaskMsg
        PUBLIC MediMsg
        PUBLIC MenuFlag
        PUBLIC MenuKey
        PUBLIC Menu_IR_Set
        PUBLIC MiddleMsg
        PUBLIC MinusFlag
        PUBLIC MinuteMsg
        PUBLIC MirrorDisp
        PUBLIC MirrorMsg
        PUBLIC MirrorOffMsg
        PUBLIC MirrorOnMsg
        PUBLIC Mode
        PUBLIC ModeMsg
        PUBLIC Module_Auto_Sync
        PUBLIC MotorLevH
        PUBLIC MotorLevL
        PUBLIC MotorLevM
        PUBLIC MotorTrqMsg
        PUBLIC Motor_FG_Check
        PUBLIC Motor_FG_Count
        PUBLIC Motor_FG_Save_Buf
        PUBLIC Motor_FG_Temp
        PUBLIC NAMsg
        PUBLIC NCMsg
        PUBLIC NOMsg
        PUBLIC NTPALMsg
        PUBLIC NTSCMsg
        PUBLIC NT_PAL_MODE
        PUBLIC NameBuf
        PUBLIC New_Test_Msg
        PUBLIC NextMsg
        PUBLIC NightFlag
        PUBLIC NightFlagMsg
        PUBLIC NineMsg
        PUBLIC NoMsg
        PUBLIC NoTestMsg
        PUBLIC NonData
        PUBLIC NonDataClr
        PUBLIC NormalMsg
        PUBLIC NotAvailableMsg
        PUBLIC NtPalMode
        PUBLIC NtPalSetFlag
        PUBLIC OPTION_Data_Handing
        PUBLIC OSD_Flag
        PUBLIC OSD_Layer_Select
        PUBLIC OSD_Refresh
        PUBLIC OffMsg
        PUBLIC OkFlag
        PUBLIC OnAlarm
        PUBLIC OnMsg
        PUBLIC OnePushMsg
        PUBLIC OrCode
        PUBLIC OsdCamIDMsg
        PUBLIC OsdCooMsg
        PUBLIC OsdDispMsg
        PUBLIC OsdGHeaterMsg
        PUBLIC OsdGTempMsg
        PUBLIC OsdHeaterMsg
        PUBLIC OsdIdMsg
        PUBLIC OsdPattMsg
        PUBLIC OsdPreMsg
        PUBLIC OsdScanMsg
        PUBLIC OsdSecMsg
        PUBLIC OsdStatusMsg
        PUBLIC OsdTourMsg
        PUBLIC OsdWiperMsg
        PUBLIC PALMsg
        PUBLIC PClearMsg
        PUBLIC PClrMsg
        PUBLIC PELCO_Data_Handing
        PUBLIC PMainMsg
        PUBLIC PSaveMsg
        PUBLIC PStatusMsg
        PUBLIC PTZ_Data_Handing
        PUBLIC PanContCnt
        PUBLIC PanMsg
        PUBLIC PanTestMsg
        PUBLIC PanTiltMsg
        PUBLIC PassCode
        PUBLIC PassMsg
        PUBLIC PassWord
        PUBLIC PassWordIn1Msg
        PUBLIC PassWordIn2Msg
        PUBLIC PassWordIn3Msg
        PUBLIC PassWordIn4Msg
        PUBLIC PassWordIn5Msg
        PUBLIC PassWordIn6Msg
        PUBLIC PassWordIn7Msg
        PUBLIC PassWordIn8Msg
        PUBLIC PatClrMsg
        PUBLIC PattIdMsg
        PUBLIC PattMsg
        PUBLIC PattNMsg
        PUBLIC PattNoMsg
        PUBLIC PattRdyFlag
        PUBLIC PattTmMsg
        PUBLIC PicFlip
        PUBLIC PicFlipMsg
        PUBLIC PicFlipOffMsg
        PUBLIC PicFlipOnMsg
        PUBLIC PinFlag
        PUBLIC PreFlag
        PUBLIC PreIdMsg
        PUBLIC PreIdPosBuf
        PUBLIC PreKey
        PUBLIC PreMsg
        PUBLIC PreNoBuf
        PUBLIC PreNoMsg
        PUBLIC PreZoomCnt
        PUBLIC PrevKey
        PUBLIC PrevMsg
        PUBLIC PreviMsg
        PUBLIC PriActMsg
        PUBLIC PriMoveMsg
        PUBLIC PriNumMsg
        PUBLIC PriStrMsg
        PUBLIC PriTLMsg
        PUBLIC ProMsg
        PUBLIC ProMsg1
        PUBLIC ProMsg2
        PUBLIC ProMsg3
        PUBLIC PromMsg
        PUBLIC ProtoMsg
        PUBLIC Protocol
        PUBLIC RLFlag
        PUBLIC RLKey
        PUBLIC RS_ZOOM
        PUBLIC RUpDay
        PUBLIC RUpMonth
        PUBLIC RUpYear
        PUBLIC RangeMsg
        PUBLIC RangeNMsg
        PUBLIC RangeWMsg
        PUBLIC RdyMarkMsg
        PUBLIC ReStartMsg
        PUBLIC RecMsg
        PUBLIC Recive_Flag
        PUBLIC Recover
        PUBLIC RecoverF
        PUBLIC RecoverTimeSetMsg
        PUBLIC RefTemp
        PUBLIC RemoteRstMsg
        PUBLIC Reponse_Data_Send
        PUBLIC ReverseMsg
        PUBLIC RightBottomMsg
        PUBLIC RightMsg
        PUBLIC RlKey
        PUBLIC RstMsg
        PUBLIC RxBuf
        PUBLIC RxBuf1
        PUBLIC RxBuf_DRS
        PUBLIC RxBuf_SCM
        PUBLIC RxCnt
        PUBLIC RxCnt_DRS
        PUBLIC RxCnt_SCM
        PUBLIC RxMaxCnt
        PUBLIC RxMaxCnt_DRS
        PUBLIC RxPoint
        PUBLIC RxStt1
        PUBLIC RxStt_BD
        PUBLIC RxTemp
        PUBLIC SCM_RECIVE_COMPLETE
        PUBLIC SClrMsg
        PUBLIC SECMsg
        PUBLIC SMark
        PUBLIC SSDREn
        PUBLIC SSDRLevel
        PUBLIC SSDRrange
        PUBLIC SaveExitMsg
        PUBLIC SaveFlag
        PUBLIC SaveMsg
        PUBLIC SavingMsg
        PUBLIC ScheduleTourDwellMsg
        PUBLIC ScheduleTourSpeedMsg
        PUBLIC SecFnMsg
        PUBLIC SecIdMsg
        PUBLIC SecMsg
        PUBLIC SecNoMsg
        PUBLIC SecStMsg
        PUBLIC SecondBuf
        PUBLIC SecondCnt
        PUBLIC Send_Data_Clear
        PUBLIC Send_LRF_Data
        PUBLIC Send_Light_Data
        PUBLIC Send_MDIN_Data
        PUBLIC Send_MDIN_String_Data
        PUBLIC Send_Pelco_Data
        PUBLIC Send_Request_Data
        PUBLIC Send_Sony_Data
        PUBLIC Send_TCM_Data
        PUBLIC Send_TSM_Data
        PUBLIC Send_UART4_Ack
        PUBLIC SetFlag
        PUBLIC SetSysClockTo72
        PUBLIC SetUpFlag
        PUBLIC ShuttNTSpdMsg
        PUBLIC ShuttPALSpdMsg
        PUBLIC ShuttSValMsg
        PUBLIC ShutterMode
        PUBLIC ShutterModeMsg
        PUBLIC ShutterSpd
        PUBLIC ShutterSpdMsg
        PUBLIC ShutterSpdVal
        PUBLIC ShutterSubMenu
        PUBLIC SlowMsg
        PUBLIC SlowTMsg
        PUBLIC Sony_Data_Handing
        PUBLIC Speed
        PUBLIC SpeedMsg
        PUBLIC SsdrModeSMsg
        PUBLIC SsdrOffMsg
        PUBLIC SsdrOnMsg
        PUBLIC SsnrEn
        PUBLIC SsnrFMsg
        PUBLIC SsnrHMsg
        PUBLIC SsnrLMsg
        PUBLIC SsnrMMsg
        PUBLIC SsnrMsg
        PUBLIC StatusMsg
        PUBLIC SubBlcMsg
        PUBLIC SubCur
        PUBLIC SubFlag
        PUBLIC SubWdrMsg
        PUBLIC SureMsg
        PUBLIC Sys1SetMsg
        PUBLIC SysBMsg
        PUBLIC SysCMsg
        PUBLIC SysColorMsg
        PUBLIC SysFMsg
        PUBLIC SysModelMsg
        PUBLIC SysMsg
        PUBLIC SysPMsg
        PUBLIC SysRUMsg
        PUBLIC SysSetMsg
        PUBLIC SysStsMsg
        PUBLIC SysThermalMsg
        PUBLIC SysUMsg
        PUBLIC SystemStartMsg
        PUBLIC SystemStatusMsg
        PUBLIC System_Data_Parser
        PUBLIC TAGCGainBiasMsg
        PUBLIC TAGCLevelBiasMsg
        PUBLIC TAGCLimitMsg
        PUBLIC TAGCLimitValMsg
        PUBLIC TAGCModeMsg
        PUBLIC TCM_Data_Handing
        PUBLIC TCamType1Msg
        PUBLIC TCamType2Msg
        PUBLIC TCamType3Msg
        PUBLIC TCdsMsg
        PUBLIC TClrMsg
        PUBLIC TEMPBuf
        PUBLIC TMcount
        PUBLIC TModule
        PUBLIC TMscount
        PUBLIC TSM_Data_Handing
        PUBLIC TScount
        PUBLIC TW9900_DECODER_RESET_High
        PUBLIC TW9900_DECODER_RESET_Low
        PUBLIC TW9900_Initial
        PUBLIC TZoomModeMsg
        PUBLIC TZoomOffMsg
        PUBLIC TZoomOnMsg
        PUBLIC TZoomSet
        PUBLIC Temp
        PUBLIC TempBlankMsg
        PUBLIC TempCheckCount
        PUBLIC TempCheckFlag
        PUBLIC TempCount
        PUBLIC TempDispFlag
        PUBLIC TempDispVal
        PUBLIC TempFlag
        PUBLIC TempMonitorting
        PUBLIC TempMsg
        PUBLIC TempRxBuf
        PUBLIC Temp_Count
        PUBLIC Temp_Count_S
        PUBLIC TemperCnt
        PUBLIC TemperFlag
        PUBLIC TemperMsg
        PUBLIC Temperature
        PUBLIC Temperature_Boot_Mode
        PUBLIC Temperature_Convert_Data
        PUBLIC Temperature_Data_Check
        PUBLIC TestData
        PUBLIC TestFailMsg
        PUBLIC TestMsg
        PUBLIC TestOkMsg
        PUBLIC TestStartMsg
        PUBLIC TestUse
        PUBLIC TherBaudFlag
        PUBLIC TherBaudSetFlag
        PUBLIC ThermalBaud
        PUBLIC ThermalBaudset
        PUBLIC ThermalCamMsg
        PUBLIC ThermalMainCamMsg
        PUBLIC ThermalbaudMsg
        PUBLIC ThermalbaudsetMsg
        PUBLIC ThreeBuf
        PUBLIC TiltInitMsg
        PUBLIC TiltMsg
        PUBLIC TiltRepeat
        PUBLIC TiltTestMsg
        PUBLIC Time0
        PUBLIC Time1ms
        PUBLIC Time1ms2
        PUBLIC Time1sec
        PUBLIC Time50ms
        PUBLIC TimeCnt
        PUBLIC TimeFlag
        PUBLIC TimeLevel
        PUBLIC TmCount
        PUBLIC Totol_Motor_FG_Count
        PUBLIC TourDwellMsg
        PUBLIC TourIdMsg
        PUBLIC TourMsg
        PUBLIC TourNMsg
        PUBLIC TourNoMsg
        PUBLIC TourPreMsg
        PUBLIC TourSetNoMsg
        PUBLIC TourSetPrstMsg
        PUBLIC TourSetStepMsg
        PUBLIC TourStepMsg
        PUBLIC TwoMsg
        PUBLIC TxBuf
        PUBLIC TxBuf1
        PUBLIC TxBufCnt1
        PUBLIC TxBufCnt_485
        PUBLIC TxBufCnt_DRS
        PUBLIC TxBufCnt_SCM
        PUBLIC TxBuf_485
        PUBLIC TxBuf_DRS
        PUBLIC TxCnt
        PUBLIC TxCnt1
        PUBLIC TxCnt_485
        PUBLIC TxCnt_DRS
        PUBLIC TxMax
        PUBLIC TxMaxRef
        PUBLIC TxMaxRef_DRS
        PUBLIC TxMaxRef_SCM
        PUBLIC TxMax_485
        PUBLIC TxMax_DRS
        PUBLIC TxMax_SCM
        PUBLIC TxTestMsg
        PUBLIC UART5_Data_Parser
        PUBLIC UDateMsg
        PUBLIC URxBuf
        PUBLIC USART1_Data_Parser
        PUBLIC USART1_RECIVE_COMPLETE
        PUBLIC USART1_RxBuf
        PUBLIC USART1_RxCnt
        PUBLIC USART1_RxMaxCnt
        PUBLIC USART1_Send_Data
        PUBLIC USART1_TempRxBuf
        PUBLIC USART3_TxBuf
        PUBLIC USART3_TxCnt
        PUBLIC UpDownFlag
        PUBLIC UpDownKey
        PUBLIC VIDEO_Initialization
        PUBLIC VerMsg
        PUBLIC VibNAMsg
        PUBLIC VibOffMsg
        PUBLIC VibOnMsg
        PUBLIC VideoGainMsg
        PUBLIC VideoModeMsg
        PUBLIC WB0Msg
        PUBLIC WB1Msg
        PUBLIC WB2Msg
        PUBLIC WB3Msg
        PUBLIC WB4Msg
        PUBLIC WBMode
        PUBLIC WBMsg
        PUBLIC WDRnoInc
        PUBLIC Wait1Msg
        PUBLIC WasherTimeMsg
        PUBLIC Washer_Fluid_Msg
        PUBLIC Washer_Fluid_Set
        PUBLIC Washer_Spray_Flag
        PUBLIC Washer_Spray_time
        PUBLIC Washer_Spray_time2
        PUBLIC Washer_Spray_time2_Delay
        PUBLIC Washer_Time_Msg
        PUBLIC Washer_Time_Set
        PUBLIC Washer_Time_Val
        PUBLIC WbBGain
        PUBLIC WbRGain
        PUBLIC WdrBlcEn
        PUBLIC WdrBlcMode
        PUBLIC WdrBlcOffMsg
        PUBLIC WdrModeSMsg
        PUBLIC WdrMsg
        PUBLIC WdrOffMsg
        PUBLIC WdrOnMsg
        PUBLIC WiperActiveMsg
        PUBLIC WiperCntMsg
        PUBLIC WiperErrorMsg
        PUBLIC WiperOnMsg
        PUBLIC WiperRepeatOffMsg
        PUBLIC WiperRepeatOn2Msg
        PUBLIC WiperRepeatOnMsg
        PUBLIC WiperSetMsg
        PUBLIC WiperSetOffMsg
        PUBLIC WiperSetOnMsg
        PUBLIC WiperStateMsg
        PUBLIC WiperSubMenu
        PUBLIC WiperTimelSet
        PUBLIC Wiper_Active_1
        PUBLIC Wiper_Active_Checktime
        PUBLIC Wiper_Active_Cnt
        PUBLIC Wiper_Active_Flag
        PUBLIC Wiper_Active_Save
        PUBLIC Wiper_Add_time
        PUBLIC Wiper_Continuous_Delay_Flag
        PUBLIC Wiper_Continuous_Delaytime
        PUBLIC Wiper_Continuous_Msg
        PUBLIC Wiper_Continuous_flag
        PUBLIC Wiper_Count_Msg
        PUBLIC Wiper_Count_Val
        PUBLIC Wiper_Direction_Flag
        PUBLIC Wiper_Dwell_Flag
        PUBLIC Wiper_Dwell_Time
        PUBLIC Wiper_Dwell_Timer_10ms
        PUBLIC Wiper_Dwell_Timer_1hour
        PUBLIC Wiper_Dwell_Timer_1minute
        PUBLIC Wiper_Dwell_Timer_1s
        PUBLIC Wiper_Error_Check
        PUBLIC Wiper_Error_Check_Time
        PUBLIC Wiper_Error_Check_Time_ms
        PUBLIC Wiper_Error_Msg
        PUBLIC Wiper_Error_Sensor_Check
        PUBLIC Wiper_Error_Sensor_Check_Before
        PUBLIC Wiper_Error_Status_Flag
        PUBLIC Wiper_Manual_Set
        PUBLIC Wiper_Origin_Chk
        PUBLIC Wiper_Origin_Reset_Chk
        PUBLIC Wiper_Repear_delay_time
        PUBLIC Wiper_Repeat2_Sensor_Check
        PUBLIC Wiper_Repeat_Active_Flag
        PUBLIC Wiper_Repeat_Active_Flag2
        PUBLIC Wiper_Repeat_Cnt
        PUBLIC Wiper_Sens_Count
        PUBLIC Wiper_Sens_High
        PUBLIC Wiper_Sens_Low
        PUBLIC Wiper_Sens_Temp
        PUBLIC Wiper_Set_Msg
        PUBLIC Wiper_Test_Mode
        PUBLIC Wiper_Timer_Chk_Val
        PUBLIC Wiper_Timer_Flag
        PUBLIC Wiper_Timer_Set
        PUBLIC Wiper_Timer_Set_Val
        PUBLIC YesMsg
        PUBLIC ZCamCodeRecv
        PUBLIC ZCamRxBuf
        PUBLIC ZCamRxCnt
        PUBLIC ZFocuPos
        PUBLIC ZOOMDATA_RECIVE_COMPLETE
        PUBLIC ZPosRetryCount
        PUBLIC ZPosWaitTime
        PUBLIC ZPreZoomCnt
        PUBLIC ZTxBuf
        PUBLIC ZTxCnt
        PUBLIC ZTxMax
        PUBLIC ZTxMaxRef
        PUBLIC ZZoomCnt
        PUBLIC ZZoomLed
        PUBLIC ZZoomPos
        PUBLIC ZZoomTCnt
        PUBLIC ZoomBothMsg
        PUBLIC ZoomChkCnt
        PUBLIC ZoomCnt
        PUBLIC ZoomData
        PUBLIC ZoomFlag
        PUBLIC ZoomInFlag
        PUBLIC ZoomLed
        PUBLIC ZoomModeMsg
        PUBLIC ZoomModeSet
        PUBLIC ZoomMsg
        PUBLIC ZoomNAMsg
        PUBLIC ZoomOutFlag
        PUBLIC ZoomPos
        PUBLIC ZoomPosCheckCount
        PUBLIC ZoomPos_SCM
        PUBLIC ZoomRef
        PUBLIC ZoomReferanceSpeed
        PUBLIC ZoomSSetMsg
        PUBLIC ZoomSValMsg
        PUBLIC ZoomSetMsg
        PUBLIC ZoomSpd
        PUBLIC ZoomSpdVal
        PUBLIC ZoomSpeedMsg
        PUBLIC ZoomStatusMsg
        PUBLIC ZoomStopCount
        PUBLIC ZoomSyncData19m
        PUBLIC ZoomSyncData35m
        PUBLIC ZoomSyncData75m
        PUBLIC ZoomSyncMsg
        PUBLIC ZoomTCnt
        PUBLIC ZoomVal
        PUBLIC ZoomVal_SCM
        PUBLIC Zoom_Data_Sync
        PUBLIC Zoom_Light_Auto_Control
        PUBLIC Ztxsendflag
        PUBLIC convertV
        PUBLIC convertV_Buffer
        PUBLIC convertV_Buffer1
        PUBLIC defTW9900Sys
        PUBLIC defTW9900Thermal
        PUBLIC g_Po_Data
        PUBLIC inHeaterBuf
        PUBLIC inHeaterOffMsg
        PUBLIC inHeaterOnMsg
        PUBLIC intFlag
        PUBLIC inter
        PUBLIC main
        PUBLIC minusFlag
        PUBLIC msCount
        PUBLIC msIdleCnt
        PUBLIC ntpalsetMsg
        PUBLIC pSTR
        PUBLIC rxTest2
        PUBLIC rxTest3
        PUBLIC tx_watch_count
        PUBLIC txsendflag
        PUBLIC txsendflag_DRS
        PUBLIC txsendflag_SCM


        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 Time1sec
Time1sec:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 Led1BlinkTimeMs
Led1BlinkTimeMs:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 Led2BlinkTimeMs
Led2BlinkTimeMs:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 Led3BlinkTimeMs
Led3BlinkTimeMs:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u8 CTxBuf[20]
CTxBuf:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 CTxTail
CTxTail:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 CTxMax
CTxMax:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u8 CRxBuf[20]
CRxBuf:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 CRxTail
CRxTail:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 CRxReceived
CRxReceived:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 CodiRef
CodiRef:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute unsigned char pSTR[32]
pSTR:
        DS8 32

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Check_Byte
Check_Byte:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 USART1_RxCnt
USART1_RxCnt:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 USART1_RxMaxCnt
USART1_RxMaxCnt:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u8 USART1_RxBuf[10]
USART1_RxBuf:
        DS8 12

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u8 USART1_TempRxBuf[10]
USART1_TempRxBuf:
        DS8 12

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 USART3_TxCnt
USART3_TxCnt:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u8 USART3_TxBuf[10]
USART3_TxBuf:
        DS8 12

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 inter
inter:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 intFlag
intFlag:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 AdCDS
AdCDS:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 AdFar
AdFar:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 AdNear
AdNear:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 AdCDSBuf
AdCDSBuf:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 AdFarBuf
AdFarBuf:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 AdNearBuf
AdNearBuf:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 AdDone
AdDone:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 AdDoneCnt
AdDoneCnt:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 AdBufCnt
AdBufCnt:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 AdProCnt
AdProCnt:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 LimFlag
LimFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 LedCurFlag
LedCurFlag:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(0)
// __absolute u8 AdChkCnt
AdChkCnt:
        DATA
        DC8 250

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 ErrData
ErrData:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 CharLeng
CharLeng:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 CntSetReq
CntSetReq:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 RUpYear
RUpYear:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 RUpMonth
RUpMonth:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 RUpDay
RUpDay:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 WBMode
WBMode:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 RecoverF
RecoverF:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Recover
Recover:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Protocol
Protocol:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 AIrisFlag
AIrisFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 AFocusFlag
AFocusFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 LedStatus
LedStatus:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 IrisMan
IrisMan:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 IrisFlag
IrisFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 ZoomChkCnt
ZoomChkCnt:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 RxPoint
RxPoint:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 TemperCnt
TemperCnt:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 TemperFlag
TemperFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 TEMPBuf
TEMPBuf:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 RefTemp
RefTemp:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 MinusFlag
MinusFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 FanFlag
FanFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 HeaterFlag
HeaterFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u8 TxBuf[18]
TxBuf:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u8 CamTxBuf[18]
CamTxBuf:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 TxCnt
TxCnt:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 ChkFlag
ChkFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 TxMax
TxMax:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 TxMaxRef
TxMaxRef:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 ZoomFlag
ZoomFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 FocusMan
FocusMan:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 CheckSum
CheckSum:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 ZoomData
ZoomData:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 PassCode
PassCode:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 TempDispVal
TempDispVal:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 AlmT
AlmT:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 AlmRecv
AlmRecv:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 AlmRx
AlmRx:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 OkFlag
OkFlag:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(2)
// __absolute u8 NameBuf[16]
NameBuf:
        DATA
        DC8 66, 64, 76, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.data`:DATA:REORDER:NOROOT(0)
// __absolute u8 ZoomSpd
ZoomSpd:
        DATA
        DC8 255

        SECTION `.data`:DATA:REORDER:NOROOT(0)
// __absolute u8 ZoomRef
ZoomRef:
        DATA
        DC8 200

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 AlmEnable
AlmEnable:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Language
Language:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 LockEn
LockEn:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 PassWord
PassWord:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(0)
// __absolute u8 IdDisp
IdDisp:
        DATA
        DC8 16

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 FlkEn
FlkEn:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 ShutterSpdVal
ShutterSpdVal:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 MirrorDisp
MirrorDisp:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(0)
// __absolute u8 AperVal
AperVal:
        DATA
        DC8 10

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 DZoom
DZoom:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 PicFlip
PicFlip:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 WdrBlcEn
WdrBlcEn:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(0)
// __absolute u8 DNMode
DNMode:
        DATA
        DC8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 DSSMode
DSSMode:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u8 AlmInput[4]
AlmInput:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(2)
// __absolute u8 AlmAct[4]
AlmAct:
        DATA
        DC8 1, 2, 3, 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 AlmNo
AlmNo:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 AlmBlk
AlmBlk:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 TmCount
TmCount:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 SMark
SMark:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 AdjFlag
AdjFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 SetFlag
SetFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Aux1Buf
Aux1Buf:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Aux2Buf
Aux2Buf:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 AlmBuf
AlmBuf:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 FocusFlag
FocusFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 TimeFlag
TimeFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 TimeCnt
TimeCnt:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute union <unnamed> Time0
Time0:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 MenuKey
MenuKey:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 RLFlag
RLFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 UpDownFlag
UpDownFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute char ThreeBuf[6]
ThreeBuf:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 SubFlag
SubFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 RLKey
RLKey:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 IdPosBuf
IdPosBuf:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u8 DispBuf[3]
DispBuf:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 SubCur
SubCur:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 RlKey
RlKey:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 PrevKey
PrevKey:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 UpDownKey
UpDownKey:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 TiltRepeat
TiltRepeat:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 MainCur
MainCur:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 HitFlag
HitFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 SetUpFlag
SetUpFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 CndFlag
CndFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 PreIdPosBuf
PreIdPosBuf:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 FRZMode
FRZMode:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 FailFlag
FailFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Temp
Temp:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u8 RxBuf[8]
RxBuf:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u8 URxBuf[6]
URxBuf:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 RxCnt
RxCnt:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 CommAcc
CommAcc:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 RxTemp
RxTemp:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 PinFlag
PinFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 MenuFlag
MenuFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u8 CamRxBuf[15]
CamRxBuf:
        DS8 16

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 CamRxCnt
CamRxCnt:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 CamCodeRecv
CamCodeRecv:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
// __absolute u8 ZoomPos[2]
ZoomPos:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
// __absolute u8 FocuPos[2]
FocuPos:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 ZoomLed
ZoomLed:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 ZoomCnt
ZoomCnt:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 PreZoomCnt
PreZoomCnt:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 ZoomTCnt
ZoomTCnt:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 DomeId
DomeId:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 CommRate
CommRate:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 SecondCnt
SecondCnt:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u8 SecondBuf[6]
SecondBuf:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u8 TxBuf1[15]
TxBuf1:
        DS8 16

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 TxCnt1
TxCnt1:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 RxMaxCnt
RxMaxCnt:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 TxBufCnt1
TxBufCnt1:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u8 BackBuf[7]
BackBuf:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 PattRdyFlag
PattRdyFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 InitOpt
InitOpt:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 OnAlarm
OnAlarm:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 FlagReqAlm
FlagReqAlm:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 CntReplyAlm
CntReplyAlm:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u8 RxBuf1[15]
RxBuf1:
        DS8 16

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 RxStt1
RxStt1:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 CommAccA
CommAccA:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 CommAccB
CommAccB:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 TestUse
TestUse:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 CamType
CamType:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 DirectPattFlag
DirectPattFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 WbRGain
WbRGain:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 WbBGain
WbBGain:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 ZoomSpdVal
ZoomSpdVal:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 FocusSpdVal
FocusSpdVal:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 ICanTek
ICanTek:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 GainMode
GainMode:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 IrisMode
IrisMode:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 IrisPeakVal
IrisPeakVal:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 IrisMaxVal
IrisMaxVal:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 AFManual
AFManual:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 AlmFlag
AlmFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u8 TempRxBuf[10]
TempRxBuf:
        DS8 12

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u8 AlmAuxAct[4]
AlmAuxAct:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 AlmAuxCnt[2]
AlmAuxCnt:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 ZPosWaitTime
ZPosWaitTime:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 ZPosRetryCount
ZPosRetryCount:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 HrMode
HrMode:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 DnrMode
DnrMode:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 BlcSubEn
BlcSubEn:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 BlcMode
BlcMode:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 WdrBlcMode
WdrBlcMode:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 ISMode
ISMode:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 ACTdCount
ACTdCount:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 ACTnCount
ACTnCount:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 txsendflag
txsendflag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 tx_watch_count
tx_watch_count:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 Time1ms
Time1ms:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Time1ms2
Time1ms2:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 Time50ms
Time50ms:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 DwellMs
DwellMs:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 DwellSec
DwellSec:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 DZoomPos
DZoomPos:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 TempDispFlag
TempDispFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u8 ZCamRxBuf[20]
ZCamRxBuf:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u8 ZTxBuf[20]
ZTxBuf:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 ZCamRxCnt
ZCamRxCnt:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 ZCamCodeRecv
ZCamCodeRecv:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
// __absolute u8 ZZoomPos[2]
ZZoomPos:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
// __absolute u8 ZFocuPos[2]
ZFocuPos:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 ZZoomLed
ZZoomLed:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 ZZoomCnt
ZZoomCnt:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 ZPreZoomCnt
ZPreZoomCnt:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 ZZoomTCnt
ZZoomTCnt:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 ZTxMax
ZTxMax:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 ZTxCnt
ZTxCnt:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 ZTxMaxRef
ZTxMaxRef:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Ztxsendflag
Ztxsendflag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 PreFlag
PreFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 msCount
msCount:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 IdDisp2
IdDisp2:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 msIdleCnt
msIdleCnt:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 RxStt_BD
RxStt_BD:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 MODULE_SELECT
MODULE_SELECT:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 CURRENT_STATUS
CURRENT_STATUS:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 FlagReqSts
FlagReqSts:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 NT_PAL_MODE
NT_PAL_MODE:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 SaveFlag
SaveFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 AbsFocusFlag
AbsFocusFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 AFMode
AFMode:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Recive_Flag
Recive_Flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Cold_Start_EnableFlag
Cold_Start_EnableFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 ICRThreshold
ICRThreshold:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 DayNightSubMenu
DayNightSubMenu:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 WiperSubMenu
WiperSubMenu:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 WiperTimelSet
WiperTimelSet:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 DNLevelFlag
DNLevelFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 DNLevelSet
DNLevelSet:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 DayFlag
DayFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 NightFlag
NightFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 AlmTemp
AlmTemp:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Freeze_Data
Freeze_Data:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 rxTest2
rxTest2:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 rxTest3
rxTest3:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 TxCnt_485
TxCnt_485:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 TxBufCnt_485
TxBufCnt_485:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 TxMax_485
TxMax_485:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u8 TxBuf_485[12]
TxBuf_485:
        DS8 12

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 TxCnt_DRS
TxCnt_DRS:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 TxBufCnt_DRS
TxBufCnt_DRS:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 TxMax_DRS
TxMax_DRS:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u8 RxBuf_DRS[12]
RxBuf_DRS:
        DS8 12

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u8 TxBuf_DRS[12]
TxBuf_DRS:
        DS8 12

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 RxCnt_DRS
RxCnt_DRS:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 RxMaxCnt_DRS
RxMaxCnt_DRS:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 DRS_RECIVE_COMPLETE
DRS_RECIVE_COMPLETE:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 txsendflag_DRS
txsendflag_DRS:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 TxBufCnt_SCM
TxBufCnt_SCM:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 TxMax_SCM
TxMax_SCM:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 TxMaxRef_SCM
TxMaxRef_SCM:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u8 RxBuf_SCM[12]
RxBuf_SCM:
        DS8 12

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 txsendflag_SCM
txsendflag_SCM:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 RxCnt_SCM
RxCnt_SCM:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 TMscount
TMscount:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 TScount
TScount:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 TMcount
TMcount:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 LedFlag
LedFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 CamModuleInfo
CamModuleInfo:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 BlcEn
BlcEn:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 IrisModeSet
IrisModeSet:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 ShutterMode
ShutterMode:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 KeyFlag
KeyFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 PreKey
PreKey:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 PanContCnt
PanContCnt:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 PreNoBuf
PreNoBuf:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 USART1_RECIVE_COMPLETE
USART1_RECIVE_COMPLETE:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 SCM_RECIVE_COMPLETE
SCM_RECIVE_COMPLETE:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 COMMAND_CODE
COMMAND_CODE:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 DATA1_CODE
DATA1_CODE:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 DATA2_CODE
DATA2_CODE:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 EXCUTE_CODE
EXCUTE_CODE:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 IrisVal
IrisVal:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 OSD_Flag
OSD_Flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 ABB_255_Flag
ABB_255_Flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 KeyInputFlag
KeyInputFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 CamID_Buffer
CamID_Buffer:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Baud_Buffer
Baud_Buffer:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 BaudRate
BaudRate:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 TxMaxRef_DRS
TxMaxRef_DRS:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 ZoomVal
ZoomVal:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 DZoomCount
DZoomCount:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 RS_ZOOM
RS_ZOOM:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 ZoomInFlag
ZoomInFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 ZoomOutFlag
ZoomOutFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 ZoomReferanceSpeed
ZoomReferanceSpeed:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 DRS_Zoom_Count
DRS_Zoom_Count:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
// __absolute u8 ZoomPos_SCM[2]
ZoomPos_SCM:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
// __absolute u8 FocuPos_SCM[2]
FocuPos_SCM:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 ZoomVal_SCM
ZoomVal_SCM:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 TModule
TModule:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(0)
// __absolute u8 CZoomSet
CZoomSet:
        DATA
        DC8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 CdZoomSet
CdZoomSet:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 TZoomSet
TZoomSet:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 ZoomModeSet
ZoomModeSet:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(0)
// __absolute u8 InHeaterMode
InHeaterMode:
        DATA
        DC8 2

        SECTION `.data`:DATA:REORDER:NOROOT(0)
// __absolute u8 GHeaterMode
GHeaterMode:
        DATA
        DC8 2

        SECTION `.data`:DATA:REORDER:NOROOT(0)
// __absolute u8 InHeaterOnVal
InHeaterOnVal:
        DATA
        DC8 20

        SECTION `.data`:DATA:REORDER:NOROOT(0)
// __absolute u8 InHeaterOffVal
InHeaterOffVal:
        DATA
        DC8 25

        SECTION `.data`:DATA:REORDER:NOROOT(0)
// __absolute u8 GHeaterOnVal
GHeaterOnVal:
        DATA
        DC8 30

        SECTION `.data`:DATA:REORDER:NOROOT(0)
// __absolute u8 GHeaterOffVal
GHeaterOffVal:
        DATA
        DC8 35

        SECTION `.data`:DATA:REORDER:NOROOT(0)
// __absolute u8 InHeaterInter
InHeaterInter:
        DATA
        DC8 10

        SECTION `.data`:DATA:REORDER:NOROOT(0)
// __absolute u8 GHeaterInter
GHeaterInter:
        DATA
        DC8 10

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 AlarmMode
AlarmMode:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 AlarmInMode
AlarmInMode:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 AuxMode
AuxMode:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 ShutterSpd
ShutterSpd:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Mode
Mode:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(0)
// __absolute u8 BlcEnI
BlcEnI:
        DATA
        DC8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 SSDREn
SSDREn:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 SSDRrange
SSDRrange:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 SSDRLevel
SSDRLevel:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 WDRnoInc
WDRnoInc:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 TimeLevel
TimeLevel:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 SsnrEn
SsnrEn:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 ColorVal
ColorVal:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 DisEn
DisEn:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 AgcVal
AgcVal:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 BlcLevel
BlcLevel:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 BlcAreaTop
BlcAreaTop:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 BlcAreaBottom
BlcAreaBottom:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 BlcAreaLeft
BlcAreaLeft:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 BlcAreaRight
BlcAreaRight:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 HlcLevel
HlcLevel:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 HlcMaskColor
HlcMaskColor:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 BlcAreaSel
BlcAreaSel:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 BlcSubCur
BlcSubCur:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 BlcAreaMode
BlcAreaMode:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 BlcSubMenu
BlcSubMenu:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 GHeaterBuf
GHeaterBuf:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 inHeaterBuf
inHeaterBuf:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 FanBuf
FanBuf:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 IrisSubMenu
IrisSubMenu:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 ShutterSubMenu
ShutterSubMenu:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 InverseMode
InverseMode:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 IR_Test_Mode
IR_Test_Mode:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Wiper_Test_Mode
Wiper_Test_Mode:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Washer_Fluid_Set
Washer_Fluid_Set:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Wiper_Active_Save
Wiper_Active_Save:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 IR_Duty_Step
IR_Duty_Step:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Menu_IR_Set
Menu_IR_Set:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 ABB_Heater_Set
ABB_Heater_Set:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Inner_Heater_State
Inner_Heater_State:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Fan_State
Fan_State:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Heater_State
Heater_State:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Wiper_Repeat_Active_Flag
Wiper_Repeat_Active_Flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Wiper_Repeat_Active_Flag2
Wiper_Repeat_Active_Flag2:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Wiper_Active_1
Wiper_Active_1:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Wiper_Active_Flag
Wiper_Active_Flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Wiper_Active_Cnt
Wiper_Active_Cnt:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Wiper_Dwell_Time
Wiper_Dwell_Time:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 Wiper_Error_Check_Time_ms
Wiper_Error_Check_Time_ms:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Wiper_Error_Status_Flag
Wiper_Error_Status_Flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Wiper_Direction_Flag
Wiper_Direction_Flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Wiper_Sens_Temp
Wiper_Sens_Temp:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Wiper_Sens_Count
Wiper_Sens_Count:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Wiper_Dwell_Flag
Wiper_Dwell_Flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Wiper_Dwell_Timer_10ms
Wiper_Dwell_Timer_10ms:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Wiper_Dwell_Timer_1s
Wiper_Dwell_Timer_1s:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Wiper_Dwell_Timer_1minute
Wiper_Dwell_Timer_1minute:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Wiper_Dwell_Timer_1hour
Wiper_Dwell_Timer_1hour:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Motor_FG_Check
Motor_FG_Check:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Motor_FG_Temp
Motor_FG_Temp:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 Motor_FG_Count
Motor_FG_Count:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 Totol_Motor_FG_Count
Totol_Motor_FG_Count:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 Motor_FG_Save_Buf
Motor_FG_Save_Buf:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Wiper_Sens_Low
Wiper_Sens_Low:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Wiper_Sens_High
Wiper_Sens_High:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Washer_Spray_Flag
Washer_Spray_Flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Washer_Time_Val
Washer_Time_Val:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 Washer_Time_Set
Washer_Time_Set:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Wiper_Count_Val
Wiper_Count_Val:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 Washer_Spray_time
Washer_Spray_time:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 Washer_Spray_time2
Washer_Spray_time2:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 Washer_Spray_time2_Delay
Washer_Spray_time2_Delay:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Error_Repeat_Cnt
Error_Repeat_Cnt:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Error_Offset_Check
Error_Offset_Check:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 Wiper_Add_time
Wiper_Add_time:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 Wiper_Repear_delay_time
Wiper_Repear_delay_time:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Wiper_Origin_Chk
Wiper_Origin_Chk:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Wiper_Origin_Reset_Chk
Wiper_Origin_Reset_Chk:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Wiper_Manual_Set
Wiper_Manual_Set:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(0)
// __absolute u8 Wiper_Timer_Set
Wiper_Timer_Set:
        DATA
        DC8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Wiper_Timer_Flag
Wiper_Timer_Flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u32 Wiper_Timer_Chk_Val
Wiper_Timer_Chk_Val:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u32 Wiper_Timer_Set_Val
Wiper_Timer_Set_Val:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Wiper_Continuous_flag
Wiper_Continuous_flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 Wiper_Continuous_Delaytime
Wiper_Continuous_Delaytime:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u32 Wiper_Active_Checktime
Wiper_Active_Checktime:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Wiper_Continuous_Delay_Flag
Wiper_Continuous_Delay_Flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Wiper_Error_Check
Wiper_Error_Check:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Wiper_Error_Sensor_Check
Wiper_Error_Sensor_Check:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u32 Wiper_Error_Check_Time
Wiper_Error_Check_Time:
        DS8 4

        SECTION `.data`:DATA:REORDER:NOROOT(0)
// __absolute u8 Wiper_Error_Sensor_Check_Before
Wiper_Error_Sensor_Check_Before:
        DATA
        DC8 3

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Wiper_Error_Msg
Wiper_Error_Msg:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Wiper_Repeat2_Sensor_Check
Wiper_Repeat2_Sensor_Check:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Fan_Heater_First_On_Flag
Fan_Heater_First_On_Flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Fan_Heater_First_Check_Flag
Fan_Heater_First_Check_Flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 Fan_Heater_First_Check_Time
Fan_Heater_First_Check_Time:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Fan_Dewell_Flag
Fan_Dewell_Flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Fan_Dewell_End_Flag
Fan_Dewell_End_Flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 Fan_Dwell_Time_ms
Fan_Dwell_Time_ms:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 Fan_Dwell_Time_sec
Fan_Dwell_Time_sec:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 AGCMode
AGCMode:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 AGCGainBias
AGCGainBias:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 AGCLevelBias
AGCLevelBias:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 AGCLimitLevel
AGCLimitLevel:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 FocusModeVal
FocusModeVal:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 MPVal
MPVal:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 ADCConvertedValue[2]
ADCConvertedValue:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 convertV_Buffer
convertV_Buffer:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 convertV_Buffer1
convertV_Buffer1:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Temp_Count
Temp_Count:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Temp_Count_S
Temp_Count_S:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 InheaterCount_Ms
InheaterCount_Ms:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 InheaterCount_S
InheaterCount_S:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 InheaterCount_M
InheaterCount_M:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Temperature
Temperature:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 TempFlag
TempFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 TempCount
TempCount:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 ColorBaud
ColorBaud:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 ThermalBaud
ThermalBaud:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 ThermalBaudset
ThermalBaudset:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 NtPalMode
NtPalMode:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 DRS_NtPalSet
DRS_NtPalSet:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 TherBaudSetFlag
TherBaudSetFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 TherBaudFlag
TherBaudFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 ColBaudFlag
ColBaudFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 NtPalSetFlag
NtPalSetFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 AlarmDetect
AlarmDetect:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 AlarmFlag
AlarmFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 AlarmCount
AlarmCount:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 AlarmDisplayFlag
AlarmDisplayFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 AlmOSD
AlmOSD:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 ConvertData
ConvertData:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u32 ADCConvertedData
ADCConvertedData:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 TempCheckCount
TempCheckCount:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 TempCheckFlag
TempCheckFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 convertV
convertV:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 CDS_convertV
CDS_convertV:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 CDS_Buffer_Cnt
CDS_Buffer_Cnt:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u32 CDS_Total_Value
CDS_Total_Value:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 CDS_Average_Value
CDS_Average_Value:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u32 Wiper_Repeat_Cnt
Wiper_Repeat_Cnt:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 CDS_Day_Check_Cnt
CDS_Day_Check_Cnt:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 CDS_Night_Check_Cnt
CDS_Night_Check_Cnt:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 IR_Set_Check
IR_Set_Check:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 OSD_Refresh
OSD_Refresh:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 minusFlag
minusFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 InHeaterDispFlag
InHeaterDispFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 GHeaterDispFlag
GHeaterDispFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 ADC_Value
ADC_Value:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 JoystickSW
JoystickSW:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Joy_Zoom
Joy_Zoom:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 ZoomStopCount
ZoomStopCount:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 FocusStopCount
FocusStopCount:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 InterCount
InterCount:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 InterSCount
InterSCount:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 InterMCount
InterMCount:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 HeaterActFlag
HeaterActFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 GInterCount
GInterCount:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 GInterSCount
GInterSCount:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 GInterMCount
GInterMCount:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 GHeaterActFlag
GHeaterActFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u16 AFmsTimer
AFmsTimer:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 AFsTimer
AFsTimer:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 AFMTimer
AFMTimer:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 AFactFlag
AFactFlag:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(2)
// __absolute u16 CheckTempValue
CheckTempValue:
        DATA
        DC32 3000

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 TempMonitorting
TempMonitorting:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 LensVal
LensVal:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 LensSetFlag
LensSetFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 LogoModeVal
LogoModeVal:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 LogoEnFlag
LogoEnFlag:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(0)
// __absolute u8 ColdCondition
ColdCondition:
        DATA
        DC8 255

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 ColdCondition_Timer_Flag
ColdCondition_Timer_Flag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
// __absolute u32 ColdCondition_Check_Time
ColdCondition_Check_Time:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 Cold_Module_Init_Check
Cold_Module_Init_Check:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 IDEModeVal
IDEModeVal:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 IDEModeValFlag
IDEModeValFlag:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 ZoomPosCheckCount
ZoomPosCheckCount:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
// __absolute u8 ZOOMDATA_RECIVE_COMPLETE
ZOOMDATA_RECIVE_COMPLETE:
        DS8 1

        SECTION `.data`:DATA:REORDER:NOROOT(2)
// __absolute u16 ZoomSyncData75m[13]
ZoomSyncData75m:
        DATA
        DC32 105, 225, 306, 384, 475, 511, 542, 587, 615, 636, 649, 658, 695

        SECTION `.data`:DATA:REORDER:NOROOT(2)
// __absolute u16 ZoomSyncData19m[13]
ZoomSyncData19m:
        DATA
        DC32 557, 627, 693, 754, 779, 821, 856, 883, 900, 912, 921, 921, 921

        SECTION `.data`:DATA:REORDER:NOROOT(2)
// __absolute u16 ZoomSyncData35m[13]
ZoomSyncData35m:
        DATA
        DC32 731, 795, 857, 891, 908, 921, 921, 921, 921, 921, 921, 921, 921

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const LogoMsg[8]
LogoMsg:
        DATA
        DC8 "TMV-SWM"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const VerMsg[6]
VerMsg:
        DATA
        DC8 "1.00a"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const UDateMsg[9]
UDateMsg:
        DATA
        DC8 "20.01.15"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const TourMsg[3][19]
TourMsg:
        DATA
        DC8 "TOUR SET"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "IMPOSTA TOUR"
        DC8 0, 0, 0, 0, 0, 0
        DC8 "USTAWIENIA TRASY"
        DC8 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const TourIdMsg[3][12]
TourIdMsg:
        DATA
        DC8 "TOUR TITLE "
        DC8 "NOME TOUR  "
        DC8 "NAZWA TRASY"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const TourNoMsg[3][17]
TourNoMsg:
        DATA
        DC8 "TOUR NO.   "
        DC8 0, 0, 0, 0, 0
        DC8 "NUMERO TOUR "
        DC8 0, 0, 0, 0
        DC8 "NUMER TRASY "
        DC8 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const TourStepMsg[3][17]
TourStepMsg:
        DATA
        DC8 "TOUR  STEP "
        DC8 0, 0, 0, 0, 0
        DC8 "STEP TOUR     "
        DC8 0, 0
        DC8 "KROK TRASY      "
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const TourPreMsg[3][17]
TourPreMsg:
        DATA
        DC8 "PRESET NO. "
        DC8 0, 0, 0, 0, 0
        DC8 "NUMERO PRESET "
        DC8 0, 0
        DC8 "NUMER PRESETU   "
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const TourDwellMsg[3][19]
TourDwellMsg:
        DATA
        DC8 "DWELL TIME "
        DC8 0, 0, 0, 0, 0, 0, 0
        DC8 "TEMPO DI SOSTA"
        DC8 0, 0, 0, 0
        DC8 "CZAS ZATRZYMANIA"
        DC8 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const SpeedMsg[3][17]
SpeedMsg:
        DATA
        DC8 "SPEED      "
        DC8 0, 0, 0, 0, 0
        DC8 "VELOCITA'     "
        DC8 0, 0
        DC8 "PREDKOSC        "
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const BlkMsg[4]
BlkMsg:
        DATA
        DC8 "BLK"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const SecMsg[3][20]
SecMsg:
        DATA
        DC8 "SECTOR SET"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "IMPOSTA AREA"
        DC8 0, 0, 0, 0, 0, 0, 0
        DC8 "USTAWIENIA SEKTORA"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const SecIdMsg[3][17]
SecIdMsg:
        DATA
        DC8 "SECTOR ID   "
        DC8 0, 0, 0, 0
        DC8 "NOME AREA   "
        DC8 0, 0, 0, 0
        DC8 "ID SEKTORA  "
        DC8 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const SecNoMsg[3][17]
SecNoMsg:
        DATA
        DC8 "SECTOR NO.  "
        DC8 0, 0, 0, 0
        DC8 "NUMERO AREA "
        DC8 0, 0, 0, 0
        DC8 "NUMER SEKTORA   "
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const SecStMsg[3][17]
SecStMsg:
        DATA
        DC8 "SECTOR START"
        DC8 0, 0, 0, 0
        DC8 "INIZIO AREA "
        DC8 0, 0, 0, 0
        DC8 "POCZATEK SEKTORA"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const SecFnMsg[3][17]
SecFnMsg:
        DATA
        DC8 "SECTOR END  "
        DC8 0, 0, 0, 0
        DC8 "FINE AREA   "
        DC8 0, 0, 0, 0
        DC8 "KONIEC SEKTORA  "
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const PattMsg[3][17]
PattMsg:
        DATA
        DC8 "PATTERN SET"
        DC8 0, 0, 0, 0, 0
        DC8 "IMPOSTA PATTERN"
        DC8 0
        DC8 "USTAWIENIA TRASY"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const PattIdMsg[3][17]
PattIdMsg:
        DATA
        DC8 "PATT  TITLE   "
        DC8 0, 0
        DC8 "NOME PATTERN  "
        DC8 0, 0
        DC8 "NAZWA TRASY   "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const PattNoMsg[3][17]
PattNoMsg:
        DATA
        DC8 "PATT  NO.     "
        DC8 0, 0
        DC8 "NUMERO PATTERN"
        DC8 0, 0
        DC8 "NUMER TRASY   "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const PattTmMsg[3][17]
PattTmMsg:
        DATA
        DC8 "DATA  FILL    "
        DC8 0, 0
        DC8 "DATI PATTERN  "
        DC8 0, 0
        DC8 "DANE          "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const PanTestMsg[3][23]
PanTestMsg:
        DATA
        DC8 "PAN  ORIGIN  CHECK"
        DC8 0, 0, 0, 0
        DC8 "CONTROLLO ORIZZONTALE "
        DC8 "TEST PAN          "
        DC8 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const TiltTestMsg[3][23]
TiltTestMsg:
        DATA
        DC8 "TILT ORIGIN  CHECK"
        DC8 0, 0, 0, 0
        DC8 "CONTROLLO VERTICALE   "
        DC8 "TEST TILT         "
        DC8 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const TxTestMsg[3][23]
TxTestMsg:
        DATA
        DC8 "TX CONNECTION TEST"
        DC8 0, 0, 0, 0
        DC8 "CONTROLLO TRASMISSIONE"
        DC8 "TEST TX           "
        DC8 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const CamTestMsg[3][23]
CamTestMsg:
        DATA
        DC8 "CAMERA COMM   TEST"
        DC8 0, 0, 0, 0
        DC8 "CONTROLLO CAMERA COMM "
        DC8 "TEST KOMUNIKACJI  "
        DC8 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const RdyMarkMsg[3][27]
RdyMarkMsg:
        DATA
        DC8 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205
        DC8 205, 205, 205, 205, 205, 205, 205, 205, 0, 0, 0, 0, 0, 0, 205, 205
        DC8 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205
        DC8 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 0, 0, 205, 205
        DC8 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205, 205
        DC8 205, 205, 205, 205, 205, 205, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const TestOkMsg[3]
TestOkMsg:
        DATA
        DC8 "OK"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const TestFailMsg[3][13]
TestFailMsg:
        DATA
        DC8 "FAIL"
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "FAIL"
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "BLAD"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const HexCode[17]
HexCode:
        DATA
        DC8 "0123456789ABCDEF"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const Wait1Msg[3][16]
Wait1Msg:
        DATA
        DC8 "WAITING...."
        DC8 0, 0, 0, 0
        DC8 "IN ATTESA...."
        DC8 0, 0
        DC8 "CZEKAJ..."
        DC8 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const CamIdsMsg[8]
CamIdsMsg:
        DATA
        DC8 "CAM ID:"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const CamDisMsg[3][15]
CamDisMsg:
        DATA
        DC8 "CAMERA ID :"
        DC8 0, 0, 0
        DC8 4EH, 55H, 4DH, 45H, 52H, 4FH, 20H, 43H
        DC8 41H, 4DH, 45H, 52H, 41H, 20H, 3AH
        DC8 "ID KAMERY :"
        DC8 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const BaudMsg[3][15]
BaudMsg:
        DATA
        DC8 "BAUD RATE :"
        DC8 0, 0, 0
        DC8 42H, 41H, 55H, 44H, 20H, 52H, 41H, 54H
        DC8 45H, 20H, 20H, 20H, 20H, 20H, 3AH
        DC8 "PREDKOSC  :"
        DC8 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const VideoModeMsg[3][15]
VideoModeMsg:
        DATA
        DC8 "VIDEO MODE:"
        DC8 0, 0, 0
        DC8 "VIDEO MODO:"
        DC8 0, 0, 0
        DC8 "TRYB VIDEO:"
        DC8 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const TwoMsg[9]
TwoMsg:
        DATA
        DC8 "2400 BPS"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const FourMsg[9]
FourMsg:
        DATA
        DC8 "4800 BPS"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const NineMsg[9]
NineMsg:
        DATA
        DC8 "9600 BPS"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const ErrMsg[3][19]
ErrMsg:
        DATA
        DC8 "SET ERROR"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 45H, 52H, 52H, 4FH, 52H, 45H, 20H, 49H
        DC8 4DH, 50H, 4FH, 53H, 54H, 41H, 5AH, 49H
        DC8 4FH, 4EH, 45H
        DC8 "BLAD"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const NoTestMsg[3][12]
NoTestMsg:
        DATA
        DC8 "NO TESTED"
        DC8 0, 0
        DC8 "NO TESTATO"
        DC8 0
        DC8 "BRAK TESTU"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const EngErrMsg[10]
EngErrMsg:
        DATA
        DC8 "SET ERROR"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const AutoMsg[3][22]
AutoMsg:
        DATA
        DC8 "AUTO SCAN SET"
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "IMPOSTA AUTO SCAN"
        DC8 0, 0, 0, 0
        DC8 "USTAWIENIA AUTO SCAN"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const AutoStMsg[3][17]
AutoStMsg:
        DATA
        DC8 "START ANGLE"
        DC8 0, 0, 0, 0, 0
        DC8 "ANGOLO INIZIALE "
        DC8 "POCZATEK        "
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const AutoFnMsg[3][17]
AutoFnMsg:
        DATA
        DC8 "END   ANGLE"
        DC8 0, 0, 0, 0, 0
        DC8 "ANGOLO FINALE   "
        DC8 "KONIEC          "
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const AutoDrMsg[3][17]
AutoDrMsg:
        DATA
        DC8 "DIRECTION  "
        DC8 0, 0, 0, 0, 0
        DC8 "DIREZIONE       "
        DC8 "KIERUNEK        "
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const AutoEdMsg[3][17]
AutoEdMsg:
        DATA
        DC8 "ENDLESS    "
        DC8 0, 0, 0, 0, 0
        DC8 "SENZA FINE CORSA"
        DC8 "RUCH CIAGLY     "
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const AutoSpdMsg[3][17]
AutoSpdMsg:
        DATA
        DC8 "SPEED      "
        DC8 0, 0, 0, 0, 0
        DC8 "VELOCITA'       "
        DC8 "PREDKOSC        "
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const AutoDwMsg[3][17]
AutoDwMsg:
        DATA
        DC8 "DWELL TIME "
        DC8 0, 0, 0, 0, 0
        DC8 "TEMPO DI SOSTA  "
        DC8 "CZAS ZATRZYMANIA"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const AlmMsg[3][21]
AlmMsg:
        DATA
        DC8 "  ALARM SET  "
        DC8 0, 0, 0, 0, 0, 0, 0
        DC8 "  IMPOSTA ALLARMI  "
        DC8 0
        DC8 " USTAWIENIA ALARMU "
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const AlmNoMsg[3][18]
AlmNoMsg:
        DATA
        DC8 "ALARM NO.  "
        DC8 0, 0, 0, 0, 0, 0
        DC8 "NUMERO ALLARME  "
        DC8 0
        DC8 "NUMER ALARMU     "
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const AlmActMsg[3][18]
AlmActMsg:
        DATA
        DC8 "ALARM ACT  "
        DC8 0, 0, 0, 0, 0, 0
        DC8 "AZIONE ALLARME  "
        DC8 0
        DC8 "CZYNNOSC ALARMOWA"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const AuxMsg[3][5]
AuxMsg:
        DATA
        DC8 "BLK "
        DC8 "AUX1"
        DC8 "AUX2"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const TestData[8]
TestData:
        DATA
        DC8 1, 2, 4, 8, 16, 32, 64, 128

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const ChkMsg[3][22]
ChkMsg:
        DATA
        DC8 "NOW EEPROM CHECKING"
        DC8 0, 0
        DC8 "NOW EEPROM CHECKING"
        DC8 0, 0
        DC8 "TEST PAMI I EEPROM"
        DC8 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const ChkOkMsg[20]
ChkOkMsg:
        DATA
        DC8 "    EEPROM OK      "

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const InitMsg[3][23]
InitMsg:
        DATA
        DC8 "ALL DATA INITIALIZING"
        DC8 0
        DC8 "ALL DATA INITIALIZING"
        DC8 0
        DC8 "INICJALIZACJA DANYCH"
        DC8 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const AutoPanMsg[5]
AutoPanMsg:
        DATA
        DC8 "SCAN"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const RstMsg[3][15]
RstMsg:
        DATA
        DC8 "CAMERA RESET"
        DC8 0, 0
        DC8 "CAMERA RESET"
        DC8 0, 0
        DC8 "RESET KAMERY"
        DC8 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const ReStartMsg[3][19]
ReStartMsg:
        DATA
        DC8 "CAMERA RESTARTING"
        DC8 0
        DC8 "CAMERA RESTARTING"
        DC8 0
        DC8 "RESTART KAMERY"
        DC8 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const PStatusMsg[3][21]
PStatusMsg:
        DATA
        DC8 "   PRESET STATUS   "
        DC8 0
        DC8 "   STATO PRESET   "
        DC8 0, 0
        DC8 "   STATUS PRESETU   "
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const PClearMsg[3][17]
PClearMsg:
        DATA
        DC8 "CLEAR NUMBER   :"
        DC8 "CANCELLA NUMERO:"
        DC8 "SKASUJ MUMER   :"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const FarMsg[3][27]
FarMsg:
        DATA
        DC8 "PRESS FAR KEY"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "PREMI TASTO FAR (LONTANO)"
        DC8 0
        DC8 "UZYJ PRZYCISKU FAR"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const PSaveMsg[3][19]
PSaveMsg:
        DATA
        DC8 "PRESET    SAVED"
        DC8 0, 0, 0
        DC8 "PRESET    SALVATO"
        DC8 0
        DC8 "PRESET    ZAPISANY"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const EraseMsg[3][26]
EraseMsg:
        DATA
        DC8 "PRESET INITIALIZING"
        DC8 0, 0, 0, 0, 0, 0
        DC8 "INIZIALIZZAZIONE PRESET"
        DC8 0, 0
        DC8 "INICJALIZACJA PRESETU"
        DC8 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const EraseMsgClr[30]
EraseMsgClr:
        DATA
        DC8 "                             "
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const CodiMsg[3][11]
CodiMsg:
        DATA
        DC8 50H, 4FH, 53H, 49H, 54H, 49H, 4FH, 4EH
        DC8 20H, 3AH, 20H
        DC8 50H, 4FH, 53H, 49H, 5AH, 49H, 4FH, 4EH
        DC8 45H, 3AH, 20H
        DC8 "POZYCJA  :"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const TestMsg[7]
TestMsg:
        DATA
        DC8 "CODE: "
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const Speed[7]
Speed:
        DATA
        DC8 "SPEED:"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const RightMsg[4]
RightMsg:
        DATA
        DC8 "CW "

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const LeftMsg[4]
LeftMsg:
        DATA
        DC8 "CCW"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const ClrMsg[17]
ClrMsg:
        DATA
        DC8 "                "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const DispCode[17]
DispCode:
        DATA
        DC8 "0123456789ABCDEF"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const BlankMsg[10]
BlankMsg:
        DATA
        DC8 "---------"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const OnMsg[3][5]
OnMsg:
        DATA
        DC8 "ON "
        DC8 0
        DC8 "ON "
        DC8 0
        DC8 "ZAL."
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const OffMsg[3][5]
OffMsg:
        DATA
        DC8 "OFF"
        DC8 0
        DC8 "OFF"
        DC8 0
        DC8 "WYL."
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const FreezeMsg[3][13]
FreezeMsg:
        DATA
        DC8 "FREEZE MODE"
        DC8 0
        DC8 "FERMO  MODE"
        DC8 0
        DC8 "TRYB ZEMROZ."
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const FreezeAllMsg[3][13]
FreezeAllMsg:
        DATA
        DC8 "FREEZE ALL"
        DC8 0, 0
        DC8 "FERMO  ALL"
        DC8 0, 0
        DC8 "ALL ZEMROZ."
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const PanTiltMsg[15]
PanTiltMsg:
        DATA
        DC8 "PAN       TILT"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const MirrorMsg[3][18]
MirrorMsg:
        DATA
        DC8 "MIRROR   "
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "MIRROR   "
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "LUSTRZANE ODBICIE"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const FlkMsg[3][18]
FlkMsg:
        DATA
        DC8 "FLICKER  "
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "FLICKER  "
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "MIGOTANIE        "
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const AptMsg[3][18]
AptMsg:
        DATA
        DC8 "APERTURE "
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "APERTURE "
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "APERTURA         "
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const DZoomMsg[3][18]
DZoomMsg:
        DATA
        DC8 "D ZOOM   "
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "D ZOOM   "
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "CYFROWY ZOOM     "
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const WBMsg[3][18]
WBMsg:
        DATA
        DC8 "WB MODE  "
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "WB MODE  "
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "TRYB WB          "
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const PicFlipMsg[3][18]
PicFlipMsg:
        DATA
        DC8 "PIC FLIP "
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "PIC FLIP "
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "ODWROCENIE OBRAZU"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const BlcMsg[3][18]
BlcMsg:
        DATA
        DC8 "BLC      "
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "BLC      "
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "BLC              "
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const WdrMsg[3][18]
WdrMsg:
        DATA
        DC8 "WDR      "
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "WDR      "
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "WDR              "
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const SubBlcMsg[4]
SubBlcMsg:
        DATA
        DC8 "BLC"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const SubWdrMsg[4]
SubWdrMsg:
        DATA
        DC8 "WDR"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const DnNMsg[3][18]
DnNMsg:
        DATA
        DC8 "D/N MODE "
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "MODO D/N "
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "TRYB DZIEN/NOC   "
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const DN0Msg[3][12]
DN0Msg:
        DATA
        DC8 "NIGHT MODE"
        DC8 0
        DC8 "MODO NOTTE "
        DC8 "TRYB NOC  "
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const DN1Msg[3][12]
DN1Msg:
        DATA
        DC8 "DAY MODE  "
        DC8 0
        DC8 "MODO GIORNO"
        DC8 "TRYB DZIEN"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const DN2Msg[3][12]
DN2Msg:
        DATA
        DC8 "AUTO MODE "
        DC8 0
        DC8 "MODO AUTO  "
        DC8 "TRYB AUTO "
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const WB0Msg[3][12]
WB0Msg:
        DATA
        DC8 "AWC MODE"
        DC8 0, 0, 0
        DC8 "MODO AWC"
        DC8 0, 0, 0
        DC8 "TRYB AWC   "

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const WB1Msg[3][12]
WB1Msg:
        DATA
        DC8 "INDOOR  "
        DC8 0, 0, 0
        DC8 "INTERNO "
        DC8 0, 0, 0
        DC8 "WEWNATRZ   "

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const WB2Msg[3][12]
WB2Msg:
        DATA
        DC8 "OUTDOOR "
        DC8 0, 0, 0
        DC8 "ESTERNO "
        DC8 0, 0, 0
        DC8 "NA ZEWNATRZ"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const WB3Msg[3][12]
WB3Msg:
        DATA
        DC8 "ATW MODE"
        DC8 0, 0, 0
        DC8 "MODO ATW"
        DC8 0, 0, 0
        DC8 "TRYB ATW   "

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const WB4Msg[3][12]
WB4Msg:
        DATA
        DC8 "MANUAL  "
        DC8 0, 0, 0
        DC8 "MANUALE "
        DC8 0, 0, 0
        DC8 "RECZNA     "

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const HrMsg[3][18]
HrMsg:
        DATA
        DC8 "HR MODE  "
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "MODO HR  "
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "TRYB HR          "
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const DnrMsg[3][18]
DnrMsg:
        DATA
        DC8 "DNR MODE "
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "MODO DNR "
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "TRYB DNR         "
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const ISMsg[3][18]
ISMsg:
        DATA
        DC8 "IS MODE  "
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "MODO IS  "
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "TRYB IS          "
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const PreMsg[3][19]
PreMsg:
        DATA
        DC8 "PRESET SET"
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "IMPOSTA PRESET"
        DC8 0, 0, 0, 0
        DC8 "USTAWIENIA PRESETU"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const PreNoMsg[3][14]
PreNoMsg:
        DATA
        DC8 "PRESET   NO  "
        DC8 "NUMERO PRESET"
        DC8 "NUMER PRESETU"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const PreIdMsg[3][14]
PreIdMsg:
        DATA
        DC8 "PRESET   ID  "
        DC8 "NOME PRESET  "
        DC8 "ID PRESETU   "
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const PanMsg[4]
PanMsg:
        DATA
        DC8 "PAN"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const TiltMsg[5]
TiltMsg:
        DATA
        DC8 "TILT"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const StatusMsg[3][21]
StatusMsg:
        DATA
        DC8 "   STATUS REPORT   "
        DC8 0
        DC8 "   STATO FUNZIONI   "
        DC8 "   RAPORT STATUSU   "
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const DNNMsg[3][23]
DNNMsg:
        DATA
        DC8 "D/N NIGHT MODE"
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "D/N MODO NOTTE"
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "TRYB DZIEN/NOC"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const DNDMsg[3][23]
DNDMsg:
        DATA
        DC8 "D/N DAY MODE  "
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "D/N MODO GIORNO"
        DC8 0, 0, 0, 0, 0, 0, 0
        DC8 "TRYB DZIEN"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const DNAMsg[3][23]
DNAMsg:
        DATA
        DC8 "D/N AUTO MODE "
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "D/N MODO AUTO"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "TRYB AUTO"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const DNNAMsg[3][23]
DNNAMsg:
        DATA
        DC8 "NOT AVAILABLE "
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "NON DISPONIBILE"
        DC8 0, 0, 0, 0, 0, 0, 0
        DC8 "PUSTE"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const DssOnMsg[3][23]
DssOnMsg:
        DATA
        DC8 "DSS ON       "
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "DSS ON       "
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "DSS ZAL."
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const DssOffMsg[3][23]
DssOffMsg:
        DATA
        DC8 "DSS OFF      "
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "DSS OFF      "
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "DSS WYL."
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const DssNAMsg[3][23]
DssNAMsg:
        DATA
        DC8 "NOT AVAILABLE "
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "NON DISPONIBILE"
        DC8 0, 0, 0, 0, 0, 0, 0
        DC8 "PUSTE"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const BlcOnMsg[3][20]
BlcOnMsg:
        DATA
        DC8 "BLC ON  "
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "BLC ON  "
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "BLC ZAL."
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const BlcOffMsg[3][20]
BlcOffMsg:
        DATA
        DC8 "BLC OFF "
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "BLC OFF "
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "BLC WYL."
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const WdrOnMsg[3][20]
WdrOnMsg:
        DATA
        DC8 "WDR ON  "
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "WDR ON  "
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "WDR ZAL."
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const WdrOffMsg[3][20]
WdrOffMsg:
        DATA
        DC8 "WDR OFF "
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "WDR OFF "
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "WDR WYL."
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const WdrBlcOffMsg[3][20]
WdrBlcOffMsg:
        DATA
        DC8 "OFF     "
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "OFF     "
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "WYL.    "
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const VibOnMsg[3][29]
VibOnMsg:
        DATA
        DC8 "STABILIZER ON"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "STABILIZZATORE  ON  "
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "KOREKCJA DRGAN ZAL."
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const VibOffMsg[3][29]
VibOffMsg:
        DATA
        DC8 "STABILIZER OFF"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "STABILIZZATORE  OFF "
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "KOREKCJA DRGAN WYL."
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const VibNAMsg[3][23]
VibNAMsg:
        DATA
        DC8 "NOT AVAILABLE "
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "NON DISPONIBILE"
        DC8 0, 0, 0, 0, 0, 0, 0
        DC8 "PUSTE"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const FrzOnMsg[3][29]
FrzOnMsg:
        DATA
        DC8 "FREEZE ON     "
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "FERMO IMMAGINE ON "
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "ZAMROZENIE ZAL."
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const FrzOffMsg[3][29]
FrzOffMsg:
        DATA
        DC8 "FREEZE OFF    "
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "FERMO IMMAGINE OFF"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "ZAMROZENIE WYL."
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const FrzNAMsg[3][23]
FrzNAMsg:
        DATA
        DC8 "NOT AVAILABLE "
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "NON DISPONIBILE"
        DC8 0, 0, 0, 0, 0, 0, 0
        DC8 "PUSTE"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const AlmOnMsg[3][28]
AlmOnMsg:
        DATA
        DC8 "ALARM ENABLE  "
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "ALLARMI ABILITATI   "
        DC8 0, 0, 0, 0, 0, 0, 0
        DC8 "ALARM ZAL."
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const AlmOffMsg[3][28]
AlmOffMsg:
        DATA
        DC8 "ALARM DISABLE "
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "ALLARMI DISABILITATI"
        DC8 0, 0, 0, 0, 0, 0, 0
        DC8 "ALARM WYL."
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const FlipOnMsg[3][26]
FlipOnMsg:
        DATA
        DC8 "AUTOFLIP ON "
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "AUTOFLIP ON "
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "Auto FLIP ZAL."
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const FlipOffMsg[3][26]
FlipOffMsg:
        DATA
        DC8 "AUTOFLIP OFF"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "AUTOFLIP OFF"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "Auto FLIP WYL."
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const Aux1OnMsg[3][26]
Aux1OnMsg:
        DATA
        DC8 "AUX1 TURN ON  "
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "AUX1 TURN ON  "
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "AUX1 ZAL."
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const Aux1OffMsg[3][26]
Aux1OffMsg:
        DATA
        DC8 "AUX1 TURN OFF "
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "AUX1 TURN OFF "
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "AUX1 WYL."
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const Aux2OnMsg[3][26]
Aux2OnMsg:
        DATA
        DC8 "AUX2 TURN ON  "
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "AUX2 TURN ON  "
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "AUX2 ZAL."
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const Aux2OffMsg[3][26]
Aux2OffMsg:
        DATA
        DC8 "AUX2 TURN OFF "
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "AUX2 TURN OFF "
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "AUX2 WYL."
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const PClrMsg[3][19]
PClrMsg:
        DATA
        DC8 "PRESET    CLEAR"
        DC8 0, 0, 0
        DC8 "PRESET    CANCELLA"
        DC8 "PRESET    PUSTA"
        DC8 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const RemoteRstMsg[3][19]
RemoteRstMsg:
        DATA
        DC8 "RESET WAITING..."
        DC8 0, 0
        DC8 "RESET IN ATTESA..."
        DC8 "CZEKAJ RESET..."
        DC8 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const FocusSSetMsg[3][29]
FocusSSetMsg:
        DATA
        DC8 "      FOCUS SPEED SET       "
        DC8 "   VELOCITA' FUOCO SETUP    "
        DC8 "USTAWIANIA PREDKOSC OSTROSCI"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const ZoomSSetMsg[3][25]
ZoomSSetMsg:
        DATA
        DC8 "    ZOOM SPEED SET     "
        DC8 0
        DC8 "  VELOCITA' ZOOM SETUP  "
        DC8 "USTAWIENIA PREDKOSC ZOOM"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const FocuFarMsg[27]
FocuFarMsg:
        DATA
        DC8 "FOCUS FAR  : SAVE AND EXIT"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const FocuNearMsg[18]
FocuNearMsg:
        DATA
        DC8 "FOCUS NEAR : EXIT"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const CommErrMsg[19]
CommErrMsg:
        DATA
        DC8 "CAMERA COMM ERROR!"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const AFMsg[11]
AFMsg:
        DATA
        DC8 "AF AUTO : "
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const IRISMsg[13]
IRISMsg:
        DATA
        DC8 "IRIS AUTO : "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const AGCMsg[12]
AGCMsg:
        DATA
        DC8 "AGC AUTO : "

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const ZoomSValMsg[19]
ZoomSValMsg:
        DATA
        DC8 "ZOOM SPEED SET [ ]"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const FocusSValMsg[20]
FocusSValMsg:
        DATA
        DC8 "FOCUS SPEED SET [ ]"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const ShuttSValMsg[21]
ShuttSValMsg:
        DATA
        DC8 "SHUTTER SPEED SET : "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const AWBModeMsg[15]
AWBModeMsg:
        DATA
        DC8 "WB MODE SET : "
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const MWbRGainMsg[20]
MWbRGainMsg:
        DATA
        DC8 "WB R-GAIN SET [   ]"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const MWbBGainMsg[20]
MWbBGainMsg:
        DATA
        DC8 "WB B-GAIN SET [   ]"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const VideoGainMsg[22]
VideoGainMsg:
        DATA
        DC8 "VIDEO GAIN SET [  ]dB"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const IrisMaxLevelMsg[22]
IrisMaxLevelMsg:
        DATA
        DC8 "IRIS MAX LEVEL [    ]"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const CamInitialMsg[18]
CamInitialMsg:
        DATA
        DC8 "CAM INITIALIZE..."
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const TourSetNoMsg[14]
TourSetNoMsg:
        DATA
        DC8 "TOUR NO. [  ]"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const TourSetStepMsg[10]
TourSetStepMsg:
        DATA
        DC8 "STEP [  ]"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const TourSetPrstMsg[23]
TourSetPrstMsg:
        DATA
        DC8 "PRESET NO. [   ] SAVED"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const GainValMsg[4][8]
GainValMsg:
        DATA
        DC8 "OFF]   "
        DC8 "LOW]   "
        DC8 "MIDDLE]"
        DC8 "HIGH]  "

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const GainValMsg1[4][8]
GainValMsg1:
        DATA
        DC8 "OFF]   "
        DC8 "BASSO] "
        DC8 "MEDIO] "
        DC8 "ALTO]  "

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const IrisCloseMsg[7]
IrisCloseMsg:
        DATA
        DC8 "CLOSE]"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const TClrMsg[3][19]
TClrMsg:
        DATA
        DC8 "TOUR   CLEAR"
        DC8 0, 0, 0, 0, 0, 0
        DC8 "TOUR   CANCELLA"
        DC8 0, 0, 0
        DC8 "TOUR   PUSTA"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const PatClrMsg[3][19]
PatClrMsg:
        DATA
        DC8 "PATTERN    CLEAR"
        DC8 0, 0
        DC8 50H, 41H, 54H, 54H, 45H, 52H, 4EH, 20H
        DC8 20H, 20H, 20H, 43H, 41H, 4EH, 43H, 45H
        DC8 4CH, 4CH, 41H
        DC8 "PATTERN    PUSTA"
        DC8 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const HomeautoMsg[3][10]
HomeautoMsg:
        DATA
        DC8 "[AUTO ]"
        DC8 0, 0
        DC8 "[AUTO ]"
        DC8 0, 0
        DC8 "[AUTO ]"
        DC8 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const HomeprstMsg[3][10]
HomeprstMsg:
        DATA
        DC8 "[PRST ]"
        DC8 0, 0
        DC8 "[PRST ]"
        DC8 0, 0
        DC8 "[PRST ]"
        DC8 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const HometourMsg[3][10]
HometourMsg:
        DATA
        DC8 "[TOUR ]"
        DC8 0, 0
        DC8 "[TOUR ]"
        DC8 0, 0
        DC8 "[TURA ]"
        DC8 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const HomepattMsg[3][10]
HomepattMsg:
        DATA
        DC8 "[PATT ]"
        DC8 0, 0
        DC8 "[PATT ]"
        DC8 0, 0
        DC8 "[PATT ]"
        DC8 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const HomescanMsg[3][10]
HomescanMsg:
        DATA
        DC8 "[SCAN ]"
        DC8 0, 0
        DC8 "[SCAN ]"
        DC8 0, 0
        DC8 "[SCAN ]"
        DC8 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const HomeblankMsg[8]
HomeblankMsg:
        DATA
        DC8 "       "

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const ScheduleTourDwellMsg[24]
ScheduleTourDwellMsg:
        DATA
        DC8 "TOUR[  /  ] : DWELL[  ]"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const ScheduleTourSpeedMsg[25]
ScheduleTourSpeedMsg:
        DATA
        DC8 "TOUR[  /  ] : SPEED[   ]"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const RecoverTimeSetMsg[18]
RecoverTimeSetMsg:
        DATA
        DC8 "RECOVER TIME [  ]"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const IrisLevelMsg[3][13]
IrisLevelMsg:
        DATA
        DC8 "IRIS SET "
        DC8 0, 0, 0
        DC8 "IRIS SET "
        DC8 0, 0, 0
        DC8 "IRIS SET "
        DC8 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const ShutterModeMsg[3][13]
ShutterModeMsg:
        DATA
        DC8 "SHUTTER  "
        DC8 0, 0, 0
        DC8 "SHUTTER  "
        DC8 0, 0, 0
        DC8 "SHUTTER  "
        DC8 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const FullAEMsg[11]
FullAEMsg:
        DATA
        DC8 "FULL AUTO "
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const FlickerMsg[11]
FlickerMsg:
        DATA
        DC8 "A.FLICKER "
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const ShuttNTSpdMsg[28][13]
ShuttNTSpdMsg:
        DATA
        DC8 "x512     "
        DC8 0, 0, 0
        DC8 "x256     "
        DC8 0, 0, 0
        DC8 "x128     "
        DC8 0, 0, 0
        DC8 "x64      "
        DC8 0, 0, 0
        DC8 "x32      "
        DC8 0, 0, 0
        DC8 "x24      "
        DC8 0, 0, 0
        DC8 "x16      "
        DC8 0, 0, 0
        DC8 "x14      "
        DC8 0, 0, 0
        DC8 "x12      "
        DC8 0, 0, 0
        DC8 "x10      "
        DC8 0, 0, 0
        DC8 "x8       "
        DC8 0, 0, 0
        DC8 "x6       "
        DC8 0, 0, 0
        DC8 "x4       "
        DC8 0, 0, 0
        DC8 "x2       "
        DC8 0, 0, 0
        DC8 "1/60     "
        DC8 0, 0, 0
        DC8 "1/120    "
        DC8 0, 0, 0
        DC8 "1/250    "
        DC8 0, 0, 0
        DC8 "1/500    "
        DC8 0, 0, 0
        DC8 "1/700    "
        DC8 0, 0, 0
        DC8 "1/1000   "
        DC8 0, 0, 0
        DC8 "1/1600   "
        DC8 0, 0, 0
        DC8 "1/2500   "
        DC8 0, 0, 0
        DC8 "1/5000   "
        DC8 0, 0, 0
        DC8 "1/7000   "
        DC8 0, 0, 0
        DC8 "1/10000  "
        DC8 0, 0, 0
        DC8 "1/30000  "
        DC8 0, 0, 0
        DC8 "1/60000  "
        DC8 0, 0, 0
        DC8 "1/120000 "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const ShuttPALSpdMsg[28][13]
ShuttPALSpdMsg:
        DATA
        DC8 "x512     "
        DC8 0, 0, 0
        DC8 "x256     "
        DC8 0, 0, 0
        DC8 "x128     "
        DC8 0, 0, 0
        DC8 "x64      "
        DC8 0, 0, 0
        DC8 "x32      "
        DC8 0, 0, 0
        DC8 "x24      "
        DC8 0, 0, 0
        DC8 "x16      "
        DC8 0, 0, 0
        DC8 "x14      "
        DC8 0, 0, 0
        DC8 "x12      "
        DC8 0, 0, 0
        DC8 "x10      "
        DC8 0, 0, 0
        DC8 "x8       "
        DC8 0, 0, 0
        DC8 "x6       "
        DC8 0, 0, 0
        DC8 "x4       "
        DC8 0, 0, 0
        DC8 "x2       "
        DC8 0, 0, 0
        DC8 "1/50     "
        DC8 0, 0, 0
        DC8 "1/100    "
        DC8 0, 0, 0
        DC8 "1/250    "
        DC8 0, 0, 0
        DC8 "1/500    "
        DC8 0, 0, 0
        DC8 "1/700    "
        DC8 0, 0, 0
        DC8 "1/1000   "
        DC8 0, 0, 0
        DC8 "1/1600   "
        DC8 0, 0, 0
        DC8 "1/2500   "
        DC8 0, 0, 0
        DC8 "1/5000   "
        DC8 0, 0, 0
        DC8 "1/7000   "
        DC8 0, 0, 0
        DC8 "1/10000  "
        DC8 0, 0, 0
        DC8 "1/30000  "
        DC8 0, 0, 0
        DC8 "1/60000  "
        DC8 0, 0, 0
        DC8 "1/120000 "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const IrisValMsg[18][8]
IrisValMsg:
        DATA
        DC8 "F1.6  "
        DC8 0
        DC8 "F2    "
        DC8 0
        DC8 "F2.4  "
        DC8 0
        DC8 "F2.8  "
        DC8 0
        DC8 "F3.4  "
        DC8 0
        DC8 "F4    "
        DC8 0
        DC8 "F4.8  "
        DC8 0
        DC8 "F5.6  "
        DC8 0
        DC8 "F6.8  "
        DC8 0
        DC8 "F8    "
        DC8 0
        DC8 "F9.6  "
        DC8 0
        DC8 "F11   "
        DC8 0
        DC8 "F14   "
        DC8 0
        DC8 "F16   "
        DC8 0
        DC8 "F19   "
        DC8 0
        DC8 "F22   "
        DC8 0
        DC8 "F28   "
        DC8 0
        DC8 "CLOSE "
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const IrisAutoMsg[7]
IrisAutoMsg:
        DATA
        DC8 "AUTO  "
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const ShutterSpdMsg[22][6]
ShutterSpdMsg:
        DATA
        DC8 "1"
        DC8 0, 0, 0, 0
        DC8 "2"
        DC8 0, 0, 0, 0
        DC8 "4"
        DC8 0, 0, 0, 0
        DC8 "8"
        DC8 0, 0, 0, 0
        DC8 "15"
        DC8 0, 0, 0
        DC8 "30"
        DC8 0, 0, 0
        DC8 "60"
        DC8 0, 0, 0
        DC8 "90"
        DC8 0, 0, 0
        DC8 "100"
        DC8 0, 0
        DC8 "125"
        DC8 0, 0
        DC8 "180"
        DC8 0, 0
        DC8 "250"
        DC8 0, 0
        DC8 "350"
        DC8 0, 0
        DC8 "500"
        DC8 0, 0
        DC8 "725"
        DC8 0, 0
        DC8 "1000"
        DC8 0
        DC8 "1500"
        DC8 0
        DC8 "2000"
        DC8 0
        DC8 "3000"
        DC8 0
        DC8 "4000"
        DC8 0
        DC8 "6000"
        DC8 0
        DC8 "10000"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const External_Title_Msg[19]
External_Title_Msg:
        DATA
        DC8 "  EXTERNAL SETUP  "
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const New_Test_Msg[17]
New_Test_Msg:
        DATA
        DC8 "[EXTERNAL SETUP]"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const IR_Set_Msg[7]
IR_Set_Msg:
        DATA
        DC8 "IR SET"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const Wiper_Set_Msg[10]
Wiper_Set_Msg:
        DATA
        DC8 "WIPER SET"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const Washer_Fluid_Msg[13]
Washer_Fluid_Msg:
        DATA
        DC8 "WASHER FLUID"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const Washer_Time_Msg[11]
Washer_Time_Msg:
        DATA
        DC8 "SPRAY TIME"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const Wiper_Count_Msg[12]
Wiper_Count_Msg:
        DATA
        DC8 "WIPER COUNT"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const Wiper_Continuous_Msg[13]
Wiper_Continuous_Msg:
        DATA
        DC8 "CONTINU.TIME"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const CDSMsg[8]
CDSMsg:
        DATA
        DC8 "CDS :  "

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const MOffMsg[3][7]
MOffMsg:
        DATA
        DC8 "OFF   "
        DC8 "OFF   "
        DC8 "OFF   "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const LowMsg[3][7]
LowMsg:
        DATA
        DC8 "LOW   "
        DC8 "BASSO "
        DC8 "LOW   "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const MiddleMsg[3][7]
MiddleMsg:
        DATA
        DC8 "MIDDLE"
        DC8 "MEDIO "
        DC8 "MIDDLE"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const HighMsg[3][7]
HighMsg:
        DATA
        DC8 "HIGH  "
        DC8 "ALTO  "
        DC8 "HIGH  "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const WasherTimeMsg[10][4]
WasherTimeMsg:
        DATA
        DC8 "0.5"
        DC8 "1  "
        DC8 "1.5"
        DC8 "2  "
        DC8 "2.5"
        DC8 "3  "
        DC8 "3.5"
        DC8 "4  "
        DC8 "4.5"
        DC8 "5  "

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const ContinuousTimeMsg[9][10]
ContinuousTimeMsg:
        DATA
        DC8 "OFF      "
        DC8 "15 Minute"
        DC8 "30 Minute"
        DC8 "1 Hour   "
        DC8 "2 Hour   "
        DC8 "3 Hour   "
        DC8 "6 Hour   "
        DC8 "12 Hour  "
        DC8 "24 Hour  "
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const NightFlagMsg[3]
NightFlagMsg:
        DATA
        DC8 "N:"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const DayFlagMsg[3]
DayFlagMsg:
        DATA
        DC8 "D:"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const TCdsMsg[3]
TCdsMsg:
        DATA
        DC8 "I:"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const WiperCntMsg[3]
WiperCntMsg:
        DATA
        DC8 "W:"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const WiperActiveMsg[13]
WiperActiveMsg:
        DATA
        DC8 "WIPER ACTIVE"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const WiperRepeatOnMsg[13]
WiperRepeatOnMsg:
        DATA
        DC8 "WIPER REPEAT"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const WiperRepeatOn2Msg[14]
WiperRepeatOn2Msg:
        DATA
        DC8 "WIPER REPEAT2"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const WiperRepeatOffMsg[17]
WiperRepeatOffMsg:
        DATA
        DC8 "WIPER REPEAT OFF"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const WiperErrorMsg[12]
WiperErrorMsg:
        DATA
        DC8 "WIPER ERROR"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const AlarmMsg[4]
AlarmMsg:
        DATA
        DC8 "ALM"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const NTSCMsg[5]
NTSCMsg:
        DATA
        DC8 "NTSC"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const PALMsg[5]
PALMsg:
        DATA
        DC8 "PAL "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const MainBarMsg[3][16]
MainBarMsg:
        DATA
        DC8 "   MAIN MENU   "
        DC8 "MENU PRINCIPALE"
        DC8 "  MENU GLOWNE  "

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const MainDomMsg[3][20]
MainDomMsg:
        DATA
        DC8 "DOME SETUP"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "DOME SETUP"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "USTAWIENIA GLOWICY"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const MainCamMsg[3][19]
MainCamMsg:
        DATA
        DC8 "CAMERA SET"
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "CAMERA SET"
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "USTAWIENIA KAMERY"
        DC8 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const MainPreMsg[3][7]
MainPreMsg:
        DATA
        DC8 "PRESET"
        DC8 "PRESET"
        DC8 "PRESET"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const MainScanMsg[3][10]
MainScanMsg:
        DATA
        DC8 "AUTO SCAN"
        DC8 "AUTO SCAN"
        DC8 "AUTO SCAN"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const MainTourMsg[3][5]
MainTourMsg:
        DATA
        DC8 "TOUR"
        DC8 "TOUR"
        DC8 "TURA"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const MainPriMsg[3][21]
MainPriMsg:
        DATA
        DC8 "PRIVACY"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "PRIVACY"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "STREFY PRYWATNOSCI"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const MainPatMsg[3][8]
MainPatMsg:
        DATA
        DC8 "PATTERN"
        DC8 "PATTERN"
        DC8 "TRASA"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const MainTitMsg[3][7]
MainTitMsg:
        DATA
        DC8 "SECTOR"
        DC8 "AREE"
        DC8 0, 0
        DC8 "SEKTOR"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const MainExtMsg[3][8]
MainExtMsg:
        DATA
        DC8 "EXIT"
        DC8 0, 0, 0
        DC8 "ESCI"
        DC8 0, 0, 0
        DC8 "WYJSCIE"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const MainMsg9[3][8]
MainMsg9:
        DATA
        DC8 "EXIT"
        DC8 0, 0, 0
        DC8 "ESCI"
        DC8 0, 0, 0
        DC8 "WYJSCIE"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const MainMsg10[3][8]
MainMsg10:
        DATA
        DC8 "QUIT"
        DC8 0, 0, 0
        DC8 "ESCI"
        DC8 0, 0, 0
        DC8 "WYJSCIE"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const MainMsg2[3][18]
MainMsg2:
        DATA
        DC8 " CAMERA SET "
        DC8 0, 0, 0, 0, 0
        DC8 " CAMERA SETUP "
        DC8 0, 0, 0
        DC8 "USTAWIENIA KAMERY"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const MainMsg3[3][17]
MainMsg3:
        DATA
        DC8 "VIDEO SET"
        DC8 0, 0, 0, 0, 0, 0, 0
        DC8 "VIDEO SETUP"
        DC8 0, 0, 0, 0, 0
        DC8 "USTAWIENIA VIDEO"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const CamIdMsg[3][21]
CamIdMsg:
        DATA
        DC8 "CAMERA ID   "
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "NOME CAMERA "
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "ID KAMERY   "
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const RecMsg[3][21]
RecMsg:
        DATA
        DC8 "RECOVER     "
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "POSIZIONE DI DEFAULT"
        DC8 "PRZYWROC       "
        DC8 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const HomeposMsg[3][21]
HomeposMsg:
        DATA
        DC8 "HOME POS."
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "HOME POS."
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "HOME POS."
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const ManMsg[3][21]
ManMsg:
        DATA
        DC8 "MANUAL SPEED"
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "VELOCITA' MANUALE   "
        DC8 "PREDKOSC RECZNA"
        DC8 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const SECMsg[3]
SECMsg:
        DATA
        DC8 "/S"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const FlipMsg[3][21]
FlipMsg:
        DATA
        DC8 "AUTO FLIP   "
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "AUTO FLIP           "
        DC8 "AUTO FLIP      "
        DC8 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const ZoomMsg[3][21]
ZoomMsg:
        DATA
        DC8 "ZOOM SPEED  "
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "VELOCITA' ZOOM      "
        DC8 "PREDKOSC ZOOM  "
        DC8 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const AlmMMsg[3][21]
AlmMMsg:
        DATA
        DC8 "ALARM       "
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "ALLARMI             "
        DC8 "ALARM          "
        DC8 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const LangMsg[3][21]
LangMsg:
        DATA
        DC8 "LANGUAGE    "
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "LINGUA      "
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "JEZYK       "
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const EnglishMsg[3][10]
EnglishMsg:
        DATA
        DC8 "ENGLISH "
        DC8 0
        DC8 "ITALIANO"
        DC8 0
        DC8 "POLSKI "
        DC8 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const NextMsg[3][18]
NextMsg:
        DATA
        DC8 "[NEXT PAGE]"
        DC8 0, 0, 0, 0, 0, 0
        DC8 "[PROSSIMA PAGINA]"
        DC8 "[NASTEPNA STRONA]"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const PrevMsg[3][20]
PrevMsg:
        DATA
        DC8 "[PREVIOUS PAGE]"
        DC8 0, 0, 0, 0
        DC8 "[PAGINA PRECEDENTE]"
        DC8 "[POPRZEDNIA STRONA]"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const SysSetMsg[3][21]
SysSetMsg:
        DATA
        DC8 "  SYSTEM SETUP  "
        DC8 0, 0, 0, 0
        DC8 "  SYSTEM SETUP  "
        DC8 0, 0, 0, 0
        DC8 "  SYSTEM SETUP  "
        DC8 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const LockMsg[3][16]
LockMsg:
        DATA
        DC8 "SYSTEM LOCK    "
        DC8 "BLOCCO SISTEMA "
        DC8 "BLOKADA SYSTEMU"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const PassMsg[3][13]
PassMsg:
        DATA
        DC8 "[PASS WORD]"
        DC8 0
        DC8 "[PASS WORD]"
        DC8 0
        DC8 "[HASLO]"
        DC8 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const IdDispMsg[3][14]
IdDispMsg:
        DATA
        DC8 "[OSD DISPLAY]"
        DC8 "[TITOLAZIONE]"
        DC8 "[MENU OSD]"
        DC8 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const SysMsg[3][17]
SysMsg:
        DATA
        DC8 "[SYSTEM STATUS]"
        DC8 0
        DC8 "[SYSTEM STATUS]"
        DC8 0
        DC8 "[STATUS SYSTEMU]"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const DefaultMsg[3][20]
DefaultMsg:
        DATA
        DC8 "[INITIALIZATION]"
        DC8 0, 0, 0
        DC8 "[INIZIALIZZAZIONE]"
        DC8 0
        DC8 "[INICJALIZACJA]"
        DC8 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const PreviMsg[3][23]
PreviMsg:
        DATA
        DC8 "[PREVIOUS PAGE]"
        DC8 0, 0, 0, 0, 0, 0, 0
        DC8 "[PAGINA PRECEDENTE]"
        DC8 0, 0, 0
        DC8 "[POPRZEDNIA STRONA]"
        DC8 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const Sys1SetMsg[3][21]
Sys1SetMsg:
        DATA
        DC8 "   SYSTEM SET   "
        DC8 0, 0, 0, 0
        DC8 "   SYSTEM SET   "
        DC8 0, 0, 0, 0
        DC8 "   SYSTEM SET   "
        DC8 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const FlipStMsg[3][13]
FlipStMsg:
        DATA
        DC8 "FLIP STATUS"
        DC8 0
        DC8 "FLIP STATUS"
        DC8 0
        DC8 "FLIP STATUS"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const MotorTrqMsg[3][13]
MotorTrqMsg:
        DATA
        DC8 "MOTOR TORQUE"
        DC8 "MOTOR TORQUE"
        DC8 "MOTOR TORQUE"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const MotorLevL[3][7]
MotorLevL:
        DATA
        DC8 "LOW   "
        DC8 "LOW   "
        DC8 "LOW   "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const MotorLevM[3][9]
MotorLevM:
        DATA
        DC8 "MEDIUM"
        DC8 0, 0
        DC8 "MEDIUM"
        DC8 0, 0
        DC8 "MEDIUM"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const MotorLevH[3][9]
MotorLevH:
        DATA
        DC8 "HIGH  "
        DC8 0, 0
        DC8 "HIGH  "
        DC8 0, 0
        DC8 "HIGH  "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const IrBrtMsg[3][14]
IrBrtMsg:
        DATA
        DC8 "IR BRIGHTNESS"
        DC8 "IR BRIGHTNESS"
        DC8 "IR BRIGHTNESS"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const DNLevMsg[3][11]
DNLevMsg:
        DATA
        DC8 "D/N LEVEL"
        DC8 0
        DC8 "D/N LEVEL"
        DC8 0
        DC8 "D/N LEVEL"
        DC8 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const NormalMsg[3][11]
NormalMsg:
        DATA
        DC8 "NORMAL "
        DC8 0, 0, 0
        DC8 "NORMAL "
        DC8 0, 0, 0
        DC8 "NORMAL "
        DC8 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const ReverseMsg[3][11]
ReverseMsg:
        DATA
        DC8 "REVERSE"
        DC8 0, 0, 0
        DC8 "REVERSE"
        DC8 0, 0, 0
        DC8 "REVERSE"
        DC8 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const TemperMsg[3][12]
TemperMsg:
        DATA
        DC8 "TEMPERATURE"
        DC8 "TEMPERATURE"
        DC8 "TEMPERATURE"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const CelsiMsg[3][11]
CelsiMsg:
        DATA
        DC8 "CELSIUS   "
        DC8 "CELSIUS   "
        DC8 "CELSIUS   "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const FahreMsg[3][11]
FahreMsg:
        DATA
        DC8 "FAHRENHEIT"
        DC8 "FAHRENHEIT"
        DC8 "FAHRENHEIT"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const Init1Msg[3][21]
Init1Msg:
        DATA
        DC8 "  INITIALIZATION  "
        DC8 0, 0
        DC8 "  INIZIALIZZAZIONE  "
        DC8 "  INICJZLIZACJA  "
        DC8 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const Init2Msg[3][17]
Init2Msg:
        DATA
        DC8 "[TOUR CLEAR]"
        DC8 0, 0, 0, 0
        DC8 "[CANCELLA TOUR]"
        DC8 0
        DC8 "[TURA PUSTA]"
        DC8 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const Init3Msg[3][19]
Init3Msg:
        DATA
        DC8 "[PRESET CLEAR]"
        DC8 0, 0, 0, 0
        DC8 "[CANCELLA PRESET]"
        DC8 0
        DC8 "[PRESET PUSTY]"
        DC8 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const Init4Msg[3][16]
Init4Msg:
        DATA
        DC8 "[SECTOR CLEAR]"
        DC8 0
        DC8 "[CANCELLA AREA]"
        DC8 "[SEKTOR PUSTY]"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const Init5Msg[3][25]
Init5Msg:
        DATA
        DC8 "[PRIVACY CLEAR]"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "[CANCELLA ZONA PRIVACY]"
        DC8 0
        DC8 "[STREFA PUSTA]"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const Init6Msg[3][20]
Init6Msg:
        DATA
        DC8 "[PATTERN CLEAR]"
        DC8 0, 0, 0, 0
        DC8 "[CANCELLA PATTERN]"
        DC8 0
        DC8 "[TRASA PUSTA]"
        DC8 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const Init7Msg[3][28]
Init7Msg:
        DATA
        DC8 "[LOAD OPTIMIZED DEFAULT]"
        DC8 0, 0, 0
        DC8 "[CARICA PARAMETRI DEFAULT]"
        DC8 0
        DC8 "[USTAWIENIA DOMYSLNE]"
        DC8 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const Init21Msg[3][16]
Init21Msg:
        DATA
        DC8 "TOUR CLEAR"
        DC8 0, 0, 0, 0, 0
        DC8 "CANCELLA TOUR"
        DC8 0, 0
        DC8 "TURA PUSTA"
        DC8 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const Init31Msg[3][18]
Init31Msg:
        DATA
        DC8 "PRESET CLEAR"
        DC8 0, 0, 0, 0, 0
        DC8 "CANCELLA PRESET"
        DC8 0, 0
        DC8 "PRESET PUSTY"
        DC8 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const Init41Msg[3][17]
Init41Msg:
        DATA
        DC8 "SECTOR CLEAR"
        DC8 0, 0, 0, 0
        DC8 "CANCELLA AREA"
        DC8 0, 0, 0
        DC8 "SEKTOR PUSTY"
        DC8 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const Init51Msg[3][23]
Init51Msg:
        DATA
        DC8 "PRIVACY CLEAR"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "CANCELLA ZONA PRIVACY"
        DC8 0
        DC8 "STREFA PUSTA"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const Init61Msg[3][20]
Init61Msg:
        DATA
        DC8 "PATTERN CLEAR"
        DC8 0, 0, 0, 0, 0, 0
        DC8 "CANCELLA PATTERN"
        DC8 0, 0, 0
        DC8 "TRASA PUSTA"
        DC8 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const Init71Msg[3][27]
Init71Msg:
        DATA
        DC8 "LOAD OPTIMIZED DEFAULT"
        DC8 0, 0, 0, 0
        DC8 "CARICA PARAMETRI DEFAULT"
        DC8 0, 0
        DC8 "USTAWIENIA DOMYSLNE"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const OsdDispMsg[3][20]
OsdDispMsg:
        DATA
        DC8 "  OSD DISPLAY  "
        DC8 0, 0, 0, 0
        DC8 "  TITOLAZIONE   "
        DC8 0, 0, 0
        DC8 "  MENU OSD   "
        DC8 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const OsdIdMsg[3][13]
OsdIdMsg:
        DATA
        DC8 "CAMERA ID   "
        DC8 "NOME CAMERA "
        DC8 "ID KAMERY   "
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const OsdPreMsg[3][13]
OsdPreMsg:
        DATA
        DC8 "PRESET ID   "
        DC8 "NOME PRESET "
        DC8 "ID PRESETU  "
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const OsdSecMsg[3][13]
OsdSecMsg:
        DATA
        DC8 "SECTOR ID   "
        DC8 "NOME AREA   "
        DC8 "ID SEKTORA  "
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const OsdTourMsg[3][13]
OsdTourMsg:
        DATA
        DC8 "TOUR   ID   "
        DC8 "NOME TOUR   "
        DC8 "ID TURA     "
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const OsdPattMsg[3][13]
OsdPattMsg:
        DATA
        DC8 "PATT   ID   "
        DC8 "NOME PATT   "
        DC8 "ID PUSTA    "
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const OsdScanMsg[3][13]
OsdScanMsg:
        DATA
        DC8 "SCAN   ID   "
        DC8 "NOME SCAN   "
        DC8 "ID SCAN     "
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const OsdCooMsg[3][13]
OsdCooMsg:
        DATA
        DC8 "COORDINATE  "
        DC8 "COORDINATE  "
        DC8 "KOORDYNATY  "
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const SysStsMsg[3][19]
SysStsMsg:
        DATA
        DC8 " SYSTEM STATUS "
        DC8 0, 0, 0
        DC8 " SYSTEM STATUS "
        DC8 0, 0, 0
        DC8 " STATUS SYSTEMU "
        DC8 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const SysBMsg[3][20]
SysBMsg:
        DATA
        DC8 "BAUD RATE        :"
        DC8 0
        DC8 "BAUD RATE        :"
        DC8 0
        DC8 "PREDKOSC         :"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const SysFMsg[3][20]
SysFMsg:
        DATA
        DC8 "FIRMWARE VER     :"
        DC8 0
        DC8 "FIRMWARE VER     :"
        DC8 0
        DC8 "WERSJA OPROG.    :"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const SysPMsg[3][20]
SysPMsg:
        DATA
        DC8 "PROTOCOL         :"
        DC8 0
        DC8 "PROTOCOL         :"
        DC8 0
        DC8 "PROTOKOL         :"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const SysUMsg[3][20]
SysUMsg:
        DATA
        DC8 "UPGRADED DATE    :"
        DC8 0
        DC8 "UPGRADED DATE    :"
        DC8 0
        DC8 "DATA AKTUALIZACJI:"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const SysCMsg[3][19]
SysCMsg:
        DATA
        DC8 "CAMERA MODULE    :"
        DC8 "MODULO CAMERA    :"
        DC8 "MODUL KAMERY     :"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const SysRUMsg[3][20]
SysRUMsg:
        DATA
        DC8 "R/B UPGRADED DATE:"
        DC8 0
        DC8 "R/B UPGRADED DATE:"
        DC8 0
        DC8 "DATA AKTUALIZACJI:"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const SysColorMsg[19]
SysColorMsg:
        DATA
        DC8 "COLOR MODULE     :"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const SysThermalMsg[19]
SysThermalMsg:
        DATA
        DC8 "THERMAL MODULE   :"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const SysModelMsg[19]
SysModelMsg:
        DATA
        DC8 "MODEL            :"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const ProMsg[10]
ProMsg:
        DATA
        DC8 "PELCO-D/P"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const ProMsg1[6]
ProMsg1:
        DATA
        DC8 "VICON"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const ProMsg2[8]
ProMsg2:
        DATA
        DC8 "SAMSUNG"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const ProMsg3[9]
ProMsg3:
        DATA
        DC8 "i3DVR-SD"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const ProtoMsg[3][12]
ProtoMsg:
        DATA
        DC8 "PROTOCOL  :"
        DC8 "PROTOCOL  :"
        DC8 "PROTOKOL  :"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const CamType1Msg[8]
CamType1Msg:
        DATA
        DC8 "SCM2120"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const CamType2Msg[8]
CamType2Msg:
        DATA
        DC8 "SCM3370"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const TCamType1Msg[10]
TCamType1Msg:
        DATA
        DC8 "DRS 7.5mm"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const TCamType2Msg[9]
TCamType2Msg:
        DATA
        DC8 "DRS 19mm"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const TCamType3Msg[9]
TCamType3Msg:
        DATA
        DC8 "DRS 35mm"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const FastTMsg[7]
FastTMsg:
        DATA
        DC8 "FAST  "
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const SlowTMsg[7]
SlowTMsg:
        DATA
        DC8 "SLOW  "
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const DssMsg[3][18]
DssMsg:
        DATA
        DC8 "SENSE UP "
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "SENSE UP     "
        DC8 0, 0, 0, 0
        DC8 "SENSE UP        "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const SsnrMsg[3][18]
SsnrMsg:
        DATA
        DC8 "SSNR MODE"
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "MODALITA'SSNR"
        DC8 0, 0, 0, 0
        DC8 "TRYB SSNR       "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const ColorMsg[3][18]
ColorMsg:
        DATA
        DC8 "COLOR    "
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "COLORE       "
        DC8 0, 0, 0, 0
        DC8 "TRYB COLOR      "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const Dis1Msg[3][18]
Dis1Msg:
        DATA
        DC8 "DIS MODE "
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "MODALITA'DIS "
        DC8 0, 0, 0, 0
        DC8 "TRYB DIS        "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const SsnrFMsg[14]
SsnrFMsg:
        DATA
        DC8 "SSNR : OFF   "
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const SsnrLMsg[14]
SsnrLMsg:
        DATA
        DC8 "SSNR : LOW   "
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const SsnrMMsg[14]
SsnrMMsg:
        DATA
        DC8 "SSNR : MIDDLE"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const SsnrHMsg[14]
SsnrHMsg:
        DATA
        DC8 "SSNR : HIGH  "
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const ColorTMsg[7]
ColorTMsg:
        DATA
        DC8 "COLOR:"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const DisOnMsg[7]
DisOnMsg:
        DATA
        DC8 "DIS ON"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const DisOffMsg[8]
DisOffMsg:
        DATA
        DC8 "DIS OFF"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const AgcMsg[3][18]
AgcMsg:
        DATA
        DC8 "AGC MODE "
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "MODALITA'AGC "
        DC8 0, 0, 0, 0
        DC8 "TRYB AGC         "
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const AgcFMsg[3][7]
AgcFMsg:
        DATA
        DC8 "OFF   "
        DC8 "OFF   "
        DC8 "OFF   "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const AgcLMsg[3][7]
AgcLMsg:
        DATA
        DC8 "LOW   "
        DC8 "BASSO "
        DC8 "LOW   "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const AgcMMsg[3][7]
AgcMMsg:
        DATA
        DC8 "MIDDLE"
        DC8 "MEDIO "
        DC8 "MIDDLE"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const AgcHMsg[3][7]
AgcHMsg:
        DATA
        DC8 "HIGH  "
        DC8 "ALTO  "
        DC8 "HIGH  "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const RangeWMsg[3][7]
RangeWMsg:
        DATA
        DC8 "WIDE  "
        DC8 "WIDE  "
        DC8 "WIDE  "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const RangeNMsg[3][7]
RangeNMsg:
        DATA
        DC8 "NARROW"
        DC8 "NARROW"
        DC8 "NARROW"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const BlcShortModeMsg[3][6]
BlcShortModeMsg:
        DATA
        DC8 "[WDR]"
        DC8 "[BLC]"
        DC8 "[HLC]"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const BlcSubModeMsg[3][8]
BlcSubModeMsg:
        DATA
        DC8 "[SSDR]"
        DC8 0
        DC8 "[BLC]  "
        DC8 "[HLC]  "

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const BlcSetMsg[3][18]
BlcSetMsg:
        DATA
        DC8 "    BLC SET     "
        DC8 0
        DC8 "IMPOSTA BLC"
        DC8 0, 0, 0, 0, 0, 0
        DC8 "USTAWIENIA BLC  "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const ModeMsg[3][16]
ModeMsg:
        DATA
        DC8 "BLC MODE       "
        DC8 "MODALITA' BLC "
        DC8 0
        DC8 "BLC TRYB       "

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const LimitMsg[3][16]
LimitMsg:
        DATA
        DC8 "LIMIT SET      "
        DC8 "IMPOSTA LIMIT "
        DC8 0
        DC8 "LIMIT SET      "

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const RangeMsg[3][16]
RangeMsg:
        DATA
        DC8 "RANGE SET      "
        DC8 "IMPOSTA RANGE "
        DC8 0
        DC8 "RANGE SET      "

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const LevelMsg[3][16]
LevelMsg:
        DATA
        DC8 "LEVEL SET      "
        DC8 "IMPOSTA LIVELLO"
        DC8 "LEVEL SET      "

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const AreaMsg[3][16]
AreaMsg:
        DATA
        DC8 "AREA SET       "
        DC8 "IMPOSTA AREA   "
        DC8 "AREA SET       "

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const MaskMsg[3][16]
MaskMsg:
        DATA
        DC8 "MASK COLOR     "
        DC8 "MASCHERA COLORE"
        DC8 "MASK COLOR     "

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const BlcModeMsg[3][4]
BlcModeMsg:
        DATA
        DC8 "WDR"
        DC8 "BLC"
        DC8 "HLC"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const BlcMode1Msg[3][6]
BlcMode1Msg:
        DATA
        DC8 "SSDR"
        DC8 0
        DC8 "BLC "
        DC8 0
        DC8 "HLC "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const LeftTopMsg[3][17]
LeftTopMsg:
        DATA
        DC8 "LEFT/TOP        "
        DC8 "IN ALTO/SINISTRA"
        DC8 "LEFT/TOP    "
        DC8 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const RightBottomMsg[3][17]
RightBottomMsg:
        DATA
        DC8 "RIGHT/BOTTOM    "
        DC8 "IN BASSO/DESTRA "
        DC8 "RIGHT/BOTTOM"
        DC8 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const HlcOnMsg[3][20]
HlcOnMsg:
        DATA
        DC8 "HLC ON  "
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "HLC ON  "
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "HLC ZAL."
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const HlcOffMsg[3][20]
HlcOffMsg:
        DATA
        DC8 "HLC OFF "
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "HLC OFF "
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "HLC WYL."
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const SsdrOnMsg[3][20]
SsdrOnMsg:
        DATA
        DC8 "SSDR ON "
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "SSDR ON "
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "SSDR ZAL."
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const SsdrOffMsg[3][20]
SsdrOffMsg:
        DATA
        DC8 "SSDR OFF"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "SSDR OFF"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "SSDR WYL."
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const BlcModeSMsg[9]
BlcModeSMsg:
        DATA
        DC8 "BLC MODE"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const WdrModeSMsg[9]
WdrModeSMsg:
        DATA
        DC8 "WDR MODE"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const HlcModeSMsg[9]
HlcModeSMsg:
        DATA
        DC8 "HLC MODE"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const SsdrModeSMsg[10]
SsdrModeSMsg:
        DATA
        DC8 "SSDR MODE"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const DSSValMsg[15][5]
DSSValMsg:
        DATA
        DC8 "OFF "
        DC8 "X2  "
        DC8 "X4  "
        DC8 "X6  "
        DC8 "X8  "
        DC8 "X10 "
        DC8 "X12 "
        DC8 "X14 "
        DC8 "X16 "
        DC8 "X24 "
        DC8 "X32 "
        DC8 "X64 "
        DC8 "X128"
        DC8 "X256"
        DC8 "X512"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const NAMsg[4]
NAMsg:
        DATA
        DC8 "N/A"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const PromMsg[14]
PromMsg:
        DATA
        DC8 "Eprom Testing"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const SlowMsg[3][9]
SlowMsg:
        DATA
        DC8 "SLOW  "
        DC8 0, 0
        DC8 "LENTO   "
        DC8 "WOLNO  "
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const FastMsg[3][9]
FastMsg:
        DATA
        DC8 "FAST  "
        DC8 0, 0
        DC8 "VELOCE  "
        DC8 "SZYBKO "
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const MediMsg[3][9]
MediMsg:
        DATA
        DC8 "MEDIUM"
        DC8 0, 0
        DC8 "MEDIO   "
        DC8 "SREDNIO"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const TourNMsg[3][5]
TourNMsg:
        DATA
        DC8 "TOUR"
        DC8 "TOUR"
        DC8 "TURA"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const SaveExitMsg[3][16]
SaveExitMsg:
        DATA
        DC8 "SAVE AND EXIT"
        DC8 0, 0
        DC8 "SALVA ED ESCI"
        DC8 0, 0
        DC8 "ZAPISZ I WYJDZ"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const SaveMsg[3][7]
SaveMsg:
        DATA
        DC8 "SAVE"
        DC8 0, 0
        DC8 "SALVA"
        DC8 0
        DC8 "ZAPISZ"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const ExitMsg[3][8]
ExitMsg:
        DATA
        DC8 "EXIT"
        DC8 0, 0, 0
        DC8 "ESCI"
        DC8 0, 0, 0
        DC8 "WYJSCIE"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const PattNMsg[5]
PattNMsg:
        DATA
        DC8 "PATT"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const OrCode[8]
OrCode:
        DATA
        DC8 1, 2, 4, 8, 16, 32, 64, 128

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const PMainMsg[3][20]
PMainMsg:
        DATA
        DC8 "PRIVACY SET"
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "IMPOSTA PRIVACY"
        DC8 0, 0, 0, 0
        DC8 "STREFY PRYWATNOSCI"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const PriNumMsg[3][15]
PriNumMsg:
        DATA
        DC8 "PRIVACY NUMBER"
        DC8 "NUMERO PRIVACY"
        DC8 "NUMER STREFY  "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const PriStrMsg[3][15]
PriStrMsg:
        DATA
        DC8 "DISPLAY       "
        DC8 "MOSTRA        "
        DC8 "WYSWIETL      "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const PriActMsg[3][15]
PriActMsg:
        DATA
        DC8 "ACTION        "
        DC8 "AZIONE        "
        DC8 "USTAWIANIE    "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const PriTLMsg[3][9]
PriTLMsg:
        DATA
        DC8 "ADJUST"
        DC8 0, 0
        DC8 "MODIFICA"
        DC8 "DOPASUJ"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const PriMoveMsg[3][9]
PriMoveMsg:
        DATA
        DC8 "MOVE  "
        DC8 0, 0
        DC8 "SPOSTA  "
        DC8 "PRZESUN"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const FocusAdjMsg[3][25]
FocusAdjMsg:
        DATA
        DC8 "FOCUS ADJUSTING...."
        DC8 0, 0, 0, 0, 0
        DC8 "MODIFICA FUOCO...."
        DC8 0, 0, 0, 0, 0, 0
        DC8 "USTAWIANIE OSTROSCI..."
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const PassWordIn1Msg[3][20]
PassWordIn1Msg:
        DATA
        DC8 "ENTER PASSWORD"
        DC8 0, 0, 0, 0, 0
        DC8 "INSERISCI PASSWORD"
        DC8 0
        DC8 "PODAJ HASLO"
        DC8 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const PassWordIn2Msg[3][26]
PassWordIn2Msg:
        DATA
        DC8 "BY ENTERING PRESET CODE !"
        DC8 "TRAMITE NUMERO PRESET !"
        DC8 0, 0
        DC8 "ZA POMOCA KODU PRESETU !"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const PassWordIn3Msg[3][15]
PassWordIn3Msg:
        DATA
        DC8 "PASSWORD  ***"
        DC8 0
        DC8 "PASSWORD  ***"
        DC8 0
        DC8 "HASLO     ***"
        DC8 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const PassWordIn4Msg[3][15]
PassWordIn4Msg:
        DATA
        DC8 "CONFIRM   ***"
        DC8 0
        DC8 "CONFERMA  ***"
        DC8 0
        DC8 "POTWIERDZ ***"
        DC8 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const PassWordIn5Msg[4]
PassWordIn5Msg:
        DATA
        DC8 "***"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const PassWordIn6Msg[3][16]
PassWordIn6Msg:
        DATA
        DC8 "CONFIRMED !"
        DC8 0, 0, 0, 0
        DC8 "CONFERMATO !"
        DC8 0, 0, 0
        DC8 "POTWIERDZONO !"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const PassWordIn7Msg[3][16]
PassWordIn7Msg:
        DATA
        DC8 "NOT CORRECT !"
        DC8 0, 0
        DC8 "ERRATO !"
        DC8 0, 0, 0, 0, 0, 0, 0
        DC8 "NIEPOPRAWNE !"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const PassWordIn8Msg[3][17]
PassWordIn8Msg:
        DATA
        DC8 "CANCELED ..."
        DC8 0, 0, 0, 0
        DC8 "CANCELLATO ..."
        DC8 0, 0
        DC8 "ANULOWANO..."
        DC8 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const DefaultInitMsg[3][27]
DefaultInitMsg:
        DATA
        DC8 "LOAD OPTIMIZED DEFAULTS"
        DC8 0, 0, 0
        DC8 "CARICA PARAMETRI DEFAULT"
        DC8 0, 0
        DC8 "USTAWJENIA DOMYSLNE"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const AllEraseMsg[3][27]
AllEraseMsg:
        DATA
        DC8 "ALL DATA INITIALIZING"
        DC8 0, 0, 0, 0, 0
        DC8 "DATI INIZIALIZZATI"
        DC8 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "INICJALIZACJA DANYCH"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const SureMsg[3][15]
SureMsg:
        DATA
        DC8 "ARE YOU SURE"
        DC8 0, 0
        DC8 "SEI SICURO"
        DC8 0, 0, 0, 0
        DC8 "JESTES PEWIEN"
        DC8 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const AllMsg[3][30]
AllMsg:
        DATA
        DC8 "ALL PRESET CLEAR"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 "CANCELLATI TUTTI I PRESET"
        DC8 0, 0, 0, 0
        DC8 57H, 53H, 5AH, 59H, 53H, 54H, 4BH, 49H
        DC8 45H, 20H, 50H, 52H, 45H, 53H, 45H, 54H
        DC8 59H, 20H, 57H, 59H, 43H, 5AH, 59H, 53H
        DC8 5AH, 43H, 5AH, 4FH, 4EH, 45H
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const YesMsg[3][4]
YesMsg:
        DATA
        DC8 "YES"
        DC8 "SI "
        DC8 "TAK"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const NoMsg[3][4]
NoMsg:
        DATA
        DC8 "NO "
        DC8 "NO "
        DC8 "NIE"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const NonData[3][24]
NonData:
        DATA
        DC8 "NO DATA AVAILABLE"
        DC8 0, 0, 0, 0, 0, 0
        DC8 "NESSUN DATO DISPONIBILE"
        DC8 "BRAK DANYCH"
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const NonDataClr[33]
NonDataClr:
        DATA
        DC8 "                                "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const SClrMsg[7]
SClrMsg:
        DATA
        DC8 "      "
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const LedOnMsg[11]
LedOnMsg:
        DATA
        DC8 "IR LED On "
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const LedOffMsg[11]
LedOffMsg:
        DATA
        DC8 "IR LED Off"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const TiltInitMsg[18]
TiltInitMsg:
        DATA
        DC8 "TILT INITIALIZING"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const WiperStateMsg[23]
WiperStateMsg:
        DATA
        DC8 "CHECK THE WIPER STATE!"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const MainMsg[16]
MainMsg:
        DATA
        DC8 "   MAIN MENU   "

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const MainCameraMsg[13]
MainCameraMsg:
        DATA
        DC8 "CAMERA SETUP"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const ColorCamMsg[15]
ColorCamMsg:
        DATA
        DC8 "CAM(DAY) SETUP"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const ThermalCamMsg[15]
ThermalCamMsg:
        DATA
        DC8 "CAM(THERM) SET"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const CamSetMsg[3][21]
CamSetMsg:
        DATA
        DC8 "  CAMERA SETUP  "
        DC8 0, 0, 0, 0
        DC8 "  CAMERA SETUP  "
        DC8 0, 0, 0, 0
        DC8 " USTAWIENIA GLOWICY "
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const ConfigMsg[16]
ConfigMsg:
        DATA
        DC8 " CONFIGURATION "

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const WiperSetMsg[16]
WiperSetMsg:
        DATA
        DC8 "  WIPER SETUP  "

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const ZoomStatusMsg[15]
ZoomStatusMsg:
        DATA
        DC8 "[ZOOM   SETUP]"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const AlarmStatusMsg[15]
AlarmStatusMsg:
        DATA
        DC8 "[ALARM  SETUP]"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const HeaterStatusMsg[15]
HeaterStatusMsg:
        DATA
        DC8 "[HEATER SETUP]"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const SystemStatusMsg[15]
SystemStatusMsg:
        DATA
        DC8 "[SYSTEM SETUP]"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const OsdStatusMsg[16]
OsdStatusMsg:
        DATA
        DC8 "[OSD SETUP    ]"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const OsdHeaterMsg[13]
OsdHeaterMsg:
        DATA
        DC8 "INNER HEATER"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const OsdGHeaterMsg[13]
OsdGHeaterMsg:
        DATA
        DC8 "GLASS HEATER"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const OsdGTempMsg[13]
OsdGTempMsg:
        DATA
        DC8 "TEMPERATURE "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const OsdCamIDMsg[13]
OsdCamIDMsg:
        DATA
        DC8 "CAM ID      "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const OsdWiperMsg[6]
OsdWiperMsg:
        DATA
        DC8 "WIPER"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const CheckLockMsg[33]
CheckLockMsg:
        DATA
        DC8 "Please Check SYSTEM LOCK Status!"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const TZoomModeMsg[21]
TZoomModeMsg:
        DATA
        DC8 "THERMAL DIGITAL ZOOM"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const CZoomModeMsg[21]
CZoomModeMsg:
        DATA
        DC8 "COLOR OPTICAL ZOOM  "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const CdZoomModeMsg[21]
CdZoomModeMsg:
        DATA
        DC8 "COLOR DIGITAL ZOOM  "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const ZoomModeMsg[13]
ZoomModeMsg:
        DATA
        DC8 "ZOOM MODE   "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const ZoomSpeedMsg[13]
ZoomSpeedMsg:
        DATA
        DC8 "ZOOM SPEED  "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const ZoomBothMsg[5]
ZoomBothMsg:
        DATA
        DC8 "BOTH"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const ZoomSyncMsg[5]
ZoomSyncMsg:
        DATA
        DC8 "SYNC"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const ZoomNAMsg[5]
ZoomNAMsg:
        DATA
        DC8 "N/A "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const ZoomSetMsg[17]
ZoomSetMsg:
        DATA
        DC8 "   ZOOM SETUP   "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const HeaterSetMsg[17]
HeaterSetMsg:
        DATA
        DC8 "  HEATER SETUP  "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const InnerHeaterMsg[13]
InnerHeaterMsg:
        DATA
        DC8 "INNER HEATER"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const GlassHeaterMsg[13]
GlassHeaterMsg:
        DATA
        DC8 "GLASS HEATER"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const InnerHeaterOnMsg[18]
InnerHeaterOnMsg:
        DATA
        DC8 "- HEATER ON TEMP."
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const InnerHeaterOffMsg[19]
InnerHeaterOffMsg:
        DATA
        DC8 "- HEATER OFF TEMP."
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const HeaterOnMsg[9]
HeaterOnMsg:
        DATA
        DC8 "ON      "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const HeaterOffMsg[9]
HeaterOffMsg:
        DATA
        DC8 "OFF     "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const HeaterAutoMsg[9]
HeaterAutoMsg:
        DATA
        DC8 "AUTO    "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const HeaterIntervalMsg[9]
HeaterIntervalMsg:
        DATA
        DC8 "INTERVAL"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const InterTimeMsg[16]
InterTimeMsg:
        DATA
        DC8 "- INTERVAL TIME"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const NotAvailableMsg[4]
NotAvailableMsg:
        DATA
        DC8 "---"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const MinuteMsg[7]
MinuteMsg:
        DATA
        DC8 "Minute"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const AlarmSetMsg[16]
AlarmSetMsg:
        DATA
        DC8 "  ALARM SETUP  "

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const AlmInMsg[3][18]
AlmInMsg:
        DATA
        DC8 "ALARM INPUT"
        DC8 0, 0, 0, 0, 0, 0
        DC8 "INGRESSO ALLARME"
        DC8 0
        DC8 "WEJSCIE ALARMOWE "
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const AuxActMsg[3][18]
AuxActMsg:
        DATA
        DC8 "AUX ACT    "
        DC8 0, 0, 0, 0, 0, 0
        DC8 "AZIONE AUX      "
        DC8 0
        DC8 "CZYNNOSC AUX     "
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const MainAlmMsg[3][8]
MainAlmMsg:
        DATA
        DC8 "ALARM"
        DC8 0, 0
        DC8 "ALLARMI"
        DC8 "ALARM"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const NOMsg[13]
NOMsg:
        DATA
        DC8 "NORMAL OPEN "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const NCMsg[13]
NCMsg:
        DATA
        DC8 "NORMAL CLOSE"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const inHeaterOnMsg[17]
inHeaterOnMsg:
        DATA
        DC8 "INNER HEATER ON "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const inHeaterOffMsg[17]
inHeaterOffMsg:
        DATA
        DC8 "INNER HEATER OFF"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const GHeaterOnMsg[17]
GHeaterOnMsg:
        DATA
        DC8 "GLASS HEATER ON "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const GHeaterOffMsg[17]
GHeaterOffMsg:
        DATA
        DC8 "GLASS HEATER OFF"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const FanSetMsg[8]
FanSetMsg:
        DATA
        DC8 "FAN SET"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const FanOnMsg[8]
FanOnMsg:
        DATA
        DC8 "FAN ON "

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const FanOffMsg[8]
FanOffMsg:
        DATA
        DC8 "FAN OFF"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const WiperSetOnMsg[21]
WiperSetOnMsg:
        DATA
        DC8 "WIPER CONTINUOUS ON "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const WiperSetOffMsg[21]
WiperSetOffMsg:
        DATA
        DC8 "WIPER CONTINUOUS OFF"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const ColorModuleMsg[19]
ColorModuleMsg:
        DATA
        DC8 "   CAM(DAY) SET   "
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const EnMsg[3][11]
EnMsg:
        DATA
        DC8 "ENABLE "
        DC8 0, 0, 0
        DC8 "ABILITA   "
        DC8 "ZAL."
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const DisMsg[3][11]
DisMsg:
        DATA
        DC8 "DISABLE"
        DC8 0, 0, 0
        DC8 "DISABILITA"
        DC8 "WYL."
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const CheckHeaterMsg[26]
CheckHeaterMsg:
        DATA
        DC8 "Use Only 'INTERVAL' Mode!"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const CheckHeater1Msg[22]
CheckHeater1Msg:
        DATA
        DC8 "Use Only 'AUTO' Mode!"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const ThermalMainCamMsg[15]
ThermalMainCamMsg:
        DATA
        DC8 "CAM(THERM) SET"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const InverseModeMsg[13]
InverseModeMsg:
        DATA
        DC8 "INVERSE MODE"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const TAGCModeMsg[9]
TAGCModeMsg:
        DATA
        DC8 "AGC MODE"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const TAGCGainBiasMsg[13]
TAGCGainBiasMsg:
        DATA
        DC8 "AGC CONTRAST"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const TAGCLevelBiasMsg[15]
TAGCLevelBiasMsg:
        DATA
        DC8 "AGC BRIGHTNESS"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const TAGCLimitMsg[16]
TAGCLimitMsg:
        DATA
        DC8 "AGC LIMIT LEVEL"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const AGCstatusMsg[4][11]
AGCstatusMsg:
        DATA
        DC8 "FREEZE  "
        DC8 0, 0
        DC8 "AUTO    "
        DC8 0, 0
        DC8 "IDE LOW "
        DC8 0, 0
        DC8 "IDE HIGH"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const TAGCLimitValMsg[5][11]
TAGCLimitValMsg:
        DATA
        DC8 "OFF"
        DC8 0, 0, 0, 0, 0, 0, 0
        DC8 "1X "
        DC8 0, 0, 0, 0, 0, 0, 0
        DC8 "2X "
        DC8 0, 0, 0, 0, 0, 0, 0
        DC8 "3X "
        DC8 0, 0, 0, 0, 0, 0, 0
        DC8 "4X "
        DC8 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const SystemStartMsg[13]
SystemStartMsg:
        DATA
        DC8 "SYSTEM START"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const TestStartMsg[11]
TestStartMsg:
        DATA
        DC8 "WIPER TEST"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const EpromCheckMsg[13]
EpromCheckMsg:
        DATA
        DC8 "DATA LODAING"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const FocusModeMsg[11]
FocusModeMsg:
        DATA
        DC8 "FOCUS MODE"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const AutoFocusMsg[12]
AutoFocusMsg:
        DATA
        DC8 "AUTO FOCUS "

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const InterValOnePushMsg[12]
InterValOnePushMsg:
        DATA
        DC8 "INTERVAL AF"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const OnePushMsg[12]
OnePushMsg:
        DATA
        DC8 "ONE PUSH AF"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const TempMsg[8]
TempMsg:
        DATA
        DC8 "TEMP:  "

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const TempBlankMsg[4]
TempBlankMsg:
        DATA
        DC8 "---"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const ntpalsetMsg[11]
ntpalsetMsg:
        DATA
        DC8 "VIDEO MODE"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const ThermalbaudMsg[17]
ThermalbaudMsg:
        DATA
        DC8 "THERMAL BAUDRATE"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const ColorbaudMsg[15]
ColorbaudMsg:
        DATA
        DC8 "COLOR BAUDRATE"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const BaudrateMsg[4][11]
BaudrateMsg:
        DATA
        DC8 "9600 "
        DC8 0, 0, 0, 0, 0
        DC8 "19200"
        DC8 0, 0, 0, 0, 0
        DC8 "38400"
        DC8 0, 0, 0, 0, 0
        DC8 "57600"
        DC8 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const NTPALMsg[2][11]
NTPALMsg:
        DATA
        DC8 "NTSC"
        DC8 0, 0, 0, 0, 0, 0
        DC8 "PAL "
        DC8 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const ThermalbaudsetMsg[16]
ThermalbaudsetMsg:
        DATA
        DC8 "THERMAL BAUDSET"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const LoadingMsg[23]
LoadingMsg:
        DATA
        DC8 "LOADING PLEASE WAIT..."
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const SavingMsg[24]
SavingMsg:
        DATA
        DC8 "SAVING PLEASE WAIT....."

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const AlarmDetectMsg[4]
AlarmDetectMsg:
        DATA
        DC8 "ALM"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const Heater1OnMsg[3]
Heater1OnMsg:
        DATA
        DC8 "HT"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const Heater2OnMsg[4]
Heater2OnMsg:
        DATA
        DC8 "GHT"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const WiperOnMsg[4]
WiperOnMsg:
        DATA
        DC8 "WP "

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const HeatOffMsg[4]
HeatOffMsg:
        DATA
        DC8 "   "

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const ColdStartMsg[11]
ColdStartMsg:
        DATA
        DC8 "COLD START"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const ColdStart1Msg[15]
ColdStart1Msg:
        DATA
        DC8 "SYSTEM HEATING"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const LensSetMsg[12]
LensSetMsg:
        DATA
        DC8 "SELECT LENS"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const LensMsg[3][11]
LensMsg:
        DATA
        DC8 "7.5mm"
        DC8 0, 0, 0, 0, 0
        DC8 "19mm "
        DC8 0, 0, 0, 0, 0
        DC8 "35mm "
        DC8 0, 0, 0, 0, 0, 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const CheckZoomMsg[25]
CheckZoomMsg:
        DATA
        DC8 "Color Zoom Must 'ENABLE'"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const CheckSyncMsg[33]
CheckSyncMsg:
        DATA
        DC8 "Please Set Zoom Mode 'BOTH'     "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const MirrorOnMsg[11]
MirrorOnMsg:
        DATA
        DC8 "MIRROR ON "
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const MirrorOffMsg[11]
MirrorOffMsg:
        DATA
        DC8 "MIRROR OFF"
        DC8 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const PicFlipOnMsg[13]
PicFlipOnMsg:
        DATA
        DC8 "PIC FLIP ON "
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const PicFlipOffMsg[13]
PicFlipOffMsg:
        DATA
        DC8 "PIC FLIP OFF"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const CZoomOnMsg[20]
CZoomOnMsg:
        DATA
        DC8 "COLOR OPT. ZOOM ON "

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const CZoomOffMsg[20]
CZoomOffMsg:
        DATA
        DC8 "COLOR OPT. ZOOM OFF"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const CdZoomOnMsg[18]
CdZoomOnMsg:
        DATA
        DC8 "COLOR D. ZOOM ON "
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const CdZoomOffMsg[18]
CdZoomOffMsg:
        DATA
        DC8 "COLOR D. ZOOM OFF"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const TZoomOnMsg[20]
TZoomOnMsg:
        DATA
        DC8 "THERMAL D. ZOOM ON "

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const TZoomOffMsg[20]
TZoomOffMsg:
        DATA
        DC8 "THERMAL D. ZOOM OFF"

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const InverseOnMsg[18]
InverseOnMsg:
        DATA
        DC8 "THER. INVERSE ON "
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const InverseOffMsg[18]
InverseOffMsg:
        DATA
        DC8 "THER. INVERSE OFF"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const DRSLogoDisplayMsg[17]
DRSLogoDisplayMsg:
        DATA
        DC8 "DRS LOGO DISPLAY"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const AGCFreezeMsg[17]
AGCFreezeMsg:
        DATA
        DC8 "DRS LOGO DISPLAY"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const IDElowInfoMsg[34]
IDElowInfoMsg:
        DATA
        DC8 "IMAGE DIGITAL ENHANCEMENT IS LOW "
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const IDEHighInfoMsg[34]
IDEHighInfoMsg:
        DATA
        DC8 "IMAGE DIGITAL ENHANCEMENT IS HIGH"
        DC8 0, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
// __absolute unsigned char const IDEModeMsg[13]
IDEModeMsg:
        DATA
        DC8 "IDE MODE SET"
        DC8 0, 0, 0

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// __interwork __softfp void SetSysClockTo72(void)
SetSysClockTo72:
        PUSH     {R4,LR}
        BL       RCC_DeInit
        MOVS     R0,#+65536
        BL       RCC_HSEConfig
        BL       RCC_WaitForHSEStartUp
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??SetSysClockTo72_0
        MOVS     R0,#+0
        BL       RCC_HCLKConfig
        MOVS     R0,#+0
        BL       RCC_PCLK2Config
        MOV      R0,#+1024
        BL       RCC_PCLK1Config
        MOVS     R1,#+1835008
        MOVS     R0,#+65536
        BL       RCC_PLLConfig
        MOVS     R0,#+1
        BL       RCC_PLLCmd
??SetSysClockTo72_1:
        MOVS     R0,#+57
        BL       RCC_GetFlagStatus
        CMP      R0,#+0
        BEQ.N    ??SetSysClockTo72_1
        MOVS     R0,#+2
        BL       RCC_SYSCLKConfig
??SetSysClockTo72_2:
        BL       RCC_GetSYSCLKSource
        CMP      R0,#+8
        BNE.N    ??SetSysClockTo72_2
        B.N      ??SetSysClockTo72_3
??SetSysClockTo72_0:
        B.N      ??SetSysClockTo72_0
??SetSysClockTo72_3:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Send_Sony_Data:
        PUSH     {R4-R8,LR}
        MOVS     R5,R0
        MOVS     R6,R1
        MOVS     R7,R2
        MOV      R8,R3
        LDR      R4,[SP, #+24]
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        MOV      R0,R8
        CMP      R0,#+5
        BEQ.N    ??Send_Sony_Data_0
        CMP      R0,#+6
        BEQ.N    ??Send_Sony_Data_1
        CMP      R0,#+8
        BEQ.N    ??Send_Sony_Data_2
        CMP      R0,#+9
        BEQ.N    ??Send_Sony_Data_3
        CMP      R0,#+255
        BEQ.W    ??Send_Sony_Data_4
        B.N      ??Send_Sony_Data_5
??Send_Sony_Data_0:
        LDR.W    R0,??DataTable12
        MOVS     R1,#+129
        STRB     R1,[R0, #+24]
        LDR.W    R0,??DataTable12
        MOVS     R1,#+9
        STRB     R1,[R0, #+25]
        LDR.W    R0,??DataTable12
        MOVS     R1,#+4
        STRB     R1,[R0, #+26]
        LDR.W    R0,??DataTable12
        STRB     R5,[R0, #+27]
        LDR.W    R0,??DataTable12
        MOVS     R1,#+255
        STRB     R1,[R0, #+28]
        LDR.W    R0,??DataTable12
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        LDR.W    R0,??DataTable12
        STRB     R8,[R0, #+1]
        B.N      ??Send_Sony_Data_6
??Send_Sony_Data_1:
        LDR.W    R0,??DataTable12
        MOVS     R1,#+129
        STRB     R1,[R0, #+24]
        LDR.W    R0,??DataTable12
        MOVS     R1,#+1
        STRB     R1,[R0, #+25]
        LDR.W    R0,??DataTable12
        MOVS     R1,#+4
        STRB     R1,[R0, #+26]
        LDR.W    R0,??DataTable12
        STRB     R5,[R0, #+27]
        LDR.W    R0,??DataTable12
        STRB     R6,[R0, #+28]
        LDR.W    R0,??DataTable12
        MOVS     R1,#+255
        STRB     R1,[R0, #+29]
        LDR.W    R0,??DataTable12
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        LDR.W    R0,??DataTable12
        STRB     R8,[R0, #+1]
        B.N      ??Send_Sony_Data_6
??Send_Sony_Data_2:
        LDR.W    R0,??DataTable12
        MOVS     R1,#+129
        STRB     R1,[R0, #+24]
        LDR.W    R0,??DataTable12
        MOVS     R1,#+1
        STRB     R1,[R0, #+25]
        LDR.W    R0,??DataTable12
        MOVS     R1,#+4
        STRB     R1,[R0, #+26]
        LDR.W    R0,??DataTable12
        MOVS     R1,#+36
        STRB     R1,[R0, #+27]
        LDR.W    R0,??DataTable12
        STRB     R5,[R0, #+28]
        LDR.W    R0,??DataTable12
        STRB     R6,[R0, #+29]
        LDR.W    R0,??DataTable12
        STRB     R7,[R0, #+30]
        LDR.W    R0,??DataTable12
        MOVS     R1,#+255
        STRB     R1,[R0, #+31]
        LDR.W    R0,??DataTable12
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        LDR.W    R0,??DataTable12
        STRB     R8,[R0, #+1]
        B.N      ??Send_Sony_Data_6
??Send_Sony_Data_3:
        LDR.W    R0,??DataTable12
        MOVS     R1,#+129
        STRB     R1,[R0, #+24]
        LDR.W    R0,??DataTable12
        MOVS     R1,#+1
        STRB     R1,[R0, #+25]
        LDR.W    R0,??DataTable12
        MOVS     R1,#+4
        STRB     R1,[R0, #+26]
        LDR.W    R0,??DataTable12
        STRB     R5,[R0, #+27]
        LDR.W    R0,??DataTable12
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LSRS     R1,R6,#+4
        STRB     R1,[R0, #+28]
        LDR.W    R0,??DataTable12
        ANDS     R1,R6,#0xF
        STRB     R1,[R0, #+29]
        LDR.W    R0,??DataTable12
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LSRS     R1,R7,#+4
        STRB     R1,[R0, #+30]
        LDR.W    R0,??DataTable12
        ANDS     R1,R7,#0xF
        STRB     R1,[R0, #+31]
        LDR.W    R0,??DataTable12
        MOVS     R1,#+255
        STRB     R1,[R0, #+32]
        LDR.W    R0,??DataTable12
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        LDR.W    R0,??DataTable12
        STRB     R8,[R0, #+1]
??Send_Sony_Data_4:
        LDR.W    R0,??DataTable12
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        LDR.W    R0,??DataTable12
        STRB     R8,[R0, #+1]
        B.N      ??Send_Sony_Data_6
??Send_Sony_Data_5:
??Send_Sony_Data_6:
        LDR.W    R0,??DataTable12
        LDRB     R0,[R0, #+0]
        ADDS     R1,R0,#+1
        LDR.W    R2,??DataTable12
        STRB     R1,[R2, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable12
        ADDS     R0,R0,R1
        LDRB     R1,[R0, #+24]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.W    R0,??DataTable13  ;; 0x40004c00
        BL       USART_SendData
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       Delay_1ms
        POP      {R4-R8,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Send_LRF_Data:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??Send_LRF_Data_0
        BCC.W    ??Send_LRF_Data_1
        CMP      R4,#+3
        BEQ.N    ??Send_LRF_Data_2
        BCC.N    ??Send_LRF_Data_3
        CMP      R4,#+4
        BEQ.W    ??Send_LRF_Data_4
        B.N      ??Send_LRF_Data_1
??Send_LRF_Data_0:
        LDR.W    R0,??DataTable13_1
        MOVS     R1,#+73
        STRB     R1,[R0, #+20]
        LDR.W    R0,??DataTable13_1
        MOVS     R1,#+68
        STRB     R1,[R0, #+21]
        LDR.W    R0,??DataTable13_1
        MOVS     R1,#+49
        STRB     R1,[R0, #+22]
        LDR.W    R0,??DataTable13_1
        MOVS     R1,#+13
        STRB     R1,[R0, #+23]
        LDR.W    R0,??DataTable13_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+1]
        LDR.W    R0,??DataTable13_1
        MOVS     R1,#+4
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable13_1
        LDRB     R0,[R0, #+1]
        LDR.W    R1,??DataTable13_1
        ADDS     R2,R0,#+1
        STRB     R2,[R1, #+1]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable13_1
        ADDS     R0,R0,R1
        LDRB     R1,[R0, #+20]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.W    R0,??DataTable13_2  ;; 0x40004400
        BL       USART_SendData
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       Delay_1ms
        B.N      ??Send_LRF_Data_1
??Send_LRF_Data_3:
        LDR.W    R0,??DataTable13_1
        MOVS     R1,#+77
        STRB     R1,[R0, #+20]
        LDR.W    R0,??DataTable13_1
        MOVS     R1,#+84
        STRB     R1,[R0, #+21]
        LDR.W    R0,??DataTable13_1
        MOVS     R1,#+32
        STRB     R1,[R0, #+22]
        LDR.W    R0,??DataTable13_1
        MOVS     R1,#+51
        STRB     R1,[R0, #+23]
        LDR.W    R0,??DataTable13_1
        MOVS     R1,#+13
        STRB     R1,[R0, #+24]
        LDR.W    R0,??DataTable13_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+1]
        LDR.W    R0,??DataTable13_1
        MOVS     R1,#+5
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable13_1
        LDRB     R0,[R0, #+1]
        LDR.W    R1,??DataTable13_1
        ADDS     R2,R0,#+1
        STRB     R2,[R1, #+1]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable13_1
        ADDS     R0,R0,R1
        LDRB     R1,[R0, #+20]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.W    R0,??DataTable13_2  ;; 0x40004400
        BL       USART_SendData
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       Delay_1ms
        B.N      ??Send_LRF_Data_1
??Send_LRF_Data_2:
        LDR.W    R0,??DataTable13_1
        MOVS     R1,#+77
        STRB     R1,[R0, #+20]
        LDR.W    R0,??DataTable13_1
        MOVS     R1,#+87
        STRB     R1,[R0, #+21]
        LDR.W    R0,??DataTable13_1
        MOVS     R1,#+32
        STRB     R1,[R0, #+22]
        LDR.W    R0,??DataTable13_1
        MOVS     R1,#+49
        STRB     R1,[R0, #+23]
        LDR.W    R0,??DataTable13_1
        MOVS     R1,#+32
        STRB     R1,[R0, #+24]
        LDR.W    R0,??DataTable13_1
        MOVS     R1,#+53
        STRB     R1,[R0, #+25]
        LDR.W    R0,??DataTable13_1
        MOVS     R1,#+48
        STRB     R1,[R0, #+26]
        LDR.W    R0,??DataTable13_1
        MOVS     R1,#+48
        STRB     R1,[R0, #+27]
        LDR.W    R0,??DataTable13_1
        MOVS     R1,#+48
        STRB     R1,[R0, #+28]
        LDR.W    R0,??DataTable13_1
        MOVS     R1,#+13
        STRB     R1,[R0, #+29]
        LDR.W    R0,??DataTable13_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+1]
        LDR.W    R0,??DataTable13_1
        MOVS     R1,#+10
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable13_1
        LDRB     R0,[R0, #+1]
        LDR.W    R1,??DataTable13_1
        ADDS     R2,R0,#+1
        STRB     R2,[R1, #+1]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable13_1
        ADDS     R0,R0,R1
        LDRB     R1,[R0, #+20]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.W    R0,??DataTable13_2  ;; 0x40004400
        BL       USART_SendData
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       Delay_1ms
        B.N      ??Send_LRF_Data_1
??Send_LRF_Data_4:
        LDR.W    R0,??DataTable13_1
        MOVS     R1,#+100
        STRB     R1,[R0, #+20]
        LDR.W    R0,??DataTable13_1
        MOVS     R1,#+109
        STRB     R1,[R0, #+21]
        LDR.W    R0,??DataTable13_1
        MOVS     R1,#+49
        STRB     R1,[R0, #+22]
        LDR.W    R0,??DataTable13_1
        MOVS     R1,#+32
        STRB     R1,[R0, #+23]
        LDR.W    R0,??DataTable13_1
        MOVS     R1,#+49
        STRB     R1,[R0, #+24]
        LDR.W    R0,??DataTable13_1
        MOVS     R1,#+13
        STRB     R1,[R0, #+25]
        LDR.W    R0,??DataTable13_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+1]
        LDR.W    R0,??DataTable13_1
        MOVS     R1,#+6
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable13_1
        LDRB     R0,[R0, #+1]
        LDR.W    R1,??DataTable13_1
        ADDS     R2,R0,#+1
        STRB     R2,[R1, #+1]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable13_1
        ADDS     R0,R0,R1
        LDRB     R1,[R0, #+20]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.W    R0,??DataTable13_2  ;; 0x40004400
        BL       USART_SendData
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       Delay_1ms
??Send_LRF_Data_1:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Send_MDIN_String_Data:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R8,#+0
        MOVS     R9,#+0
        LDR.W    R0,??DataTable13_1
        MOVS     R1,#+160
        STRB     R1,[R0, #+20]
        LDR.W    R0,??DataTable13_1
        MOVS     R1,#+96
        STRB     R1,[R0, #+21]
        LDR.W    R0,??DataTable13_1
        STRB     R4,[R0, #+22]
        LSRS     R0,R4,#+8
        LDR.W    R1,??DataTable13_1
        STRB     R0,[R1, #+23]
        LDR.W    R0,??DataTable13_1
        SUBS     R1,R5,#+2
        STRB     R1,[R0, #+24]
        ADDS     R0,R5,#+3
        MOV      R8,R0
        MOVS     R0,#+5
        MOVS     R7,R0
??Send_MDIN_String_Data_0:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R7,R8
        BCS.N    ??Send_MDIN_String_Data_1
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??DataTable13_1
        ADDS     R0,R7,R0
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R1,??DataTable13_3
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #+7]
        STRB     R1,[R0, #+20]
        ADDS     R7,R7,#+1
        B.N      ??Send_MDIN_String_Data_0
??Send_MDIN_String_Data_1:
        MOVS     R0,#+2
        MOVS     R7,R0
??Send_MDIN_String_Data_2:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R7,R8
        BCS.N    ??Send_MDIN_String_Data_3
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??DataTable13_1
        ADDS     R0,R7,R0
        LDRB     R0,[R0, #+20]
        ADDS     R9,R0,R9
        ADDS     R7,R7,#+1
        B.N      ??Send_MDIN_String_Data_2
??Send_MDIN_String_Data_3:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        LDR.W    R0,??DataTable13_1
        ADDS     R0,R8,R0
        MOVS     R1,#+0
        STRB     R1,[R0, #+20]
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        LDR.W    R0,??DataTable13_1
        ADDS     R0,R8,R0
        STRB     R9,[R0, #+20]
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        LDR.W    R0,??DataTable13_1
        ADDS     R0,R8,R0
        MOVS     R1,#+95
        STRB     R1,[R0, #+21]
        LDR.W    R0,??DataTable13_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+1]
        LDR.W    R0,??DataTable13_1
        ADDS     R1,R5,#+5
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable13_1
        LDRB     R0,[R0, #+1]
        LDR.W    R1,??DataTable13_1
        ADDS     R2,R0,#+1
        STRB     R2,[R1, #+1]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable13_1
        ADDS     R0,R0,R1
        LDRB     R1,[R0, #+20]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.W    R0,??DataTable13_2  ;; 0x40004400
        BL       USART_SendData
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R0,R6
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       Delay_1ms
        POP      {R0,R4-R9,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Send_MDIN_Data:
        PUSH     {R3-R11,LR}
        MOVS     R6,R0
        MOVS     R7,R1
        MOV      R8,R2
        MOV      R9,R3
        LDR      R4,[SP, #+40]
        LDR      R5,[SP, #+104]
        MOVS     R10,#+0
        MOVS     R11,#+0
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R0,R7
        CMP      R0,#+3
        BEQ.N    ??Send_MDIN_Data_0
        CMP      R0,#+9
        BEQ.N    ??Send_MDIN_Data_1
        CMP      R0,#+18
        BEQ.W    ??Send_MDIN_Data_2
        B.N      ??Send_MDIN_Data_3
??Send_MDIN_Data_0:
        LDR.W    R0,??DataTable13_1
        MOVS     R1,#+160
        STRB     R1,[R0, #+20]
        LDR.W    R0,??DataTable13_1
        MOVS     R1,#+96
        STRB     R1,[R0, #+21]
        LDR.W    R0,??DataTable13_1
        STRB     R6,[R0, #+22]
        LSRS     R0,R6,#+8
        LDR.W    R1,??DataTable13_1
        STRB     R0,[R1, #+23]
        LDR.W    R0,??DataTable13_1
        STRB     R7,[R0, #+24]
        LDR.W    R0,??DataTable13_1
        STRB     R8,[R0, #+25]
        LDR.W    R0,??DataTable13_1
        STRB     R9,[R0, #+26]
        LDR.W    R0,??DataTable13_1
        STRB     R4,[R0, #+27]
        LDR.W    R0,??DataTable13_1
        LDRB     R0,[R0, #+22]
        LDR.W    R1,??DataTable13_1
        LDRB     R1,[R1, #+23]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable13_1
        LDRB     R1,[R1, #+24]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable13_1
        LDRB     R1,[R1, #+25]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable13_1
        LDRB     R1,[R1, #+26]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable13_1
        LDRB     R1,[R1, #+27]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable13_1
        STRB     R0,[R1, #+28]
        LDR.W    R0,??DataTable13_1
        MOVS     R1,#+95
        STRB     R1,[R0, #+29]
        LDR.W    R0,??DataTable13_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+1]
        LDR.W    R0,??DataTable13_1
        ADDS     R1,R7,#+7
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable13_1
        LDRB     R0,[R0, #+1]
        LDR.W    R1,??DataTable13_1
        ADDS     R2,R0,#+1
        STRB     R2,[R1, #+1]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable13_1
        ADDS     R0,R0,R1
        LDRB     R1,[R0, #+20]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.W    R0,??DataTable13_2  ;; 0x40004400
        BL       USART_SendData
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       Delay_1ms
        B.N      ??Send_MDIN_Data_4
??Send_MDIN_Data_1:
        LDR.W    R0,??DataTable13_1
        MOVS     R1,#+160
        STRB     R1,[R0, #+20]
        LDR.W    R0,??DataTable13_1
        MOVS     R1,#+96
        STRB     R1,[R0, #+21]
        LDR.W    R0,??DataTable13_1
        STRB     R6,[R0, #+22]
        LSRS     R0,R6,#+8
        LDR.W    R1,??DataTable13_1
        STRB     R0,[R1, #+23]
        LDR.W    R0,??DataTable13_1
        STRB     R7,[R0, #+24]
        LDR.W    R0,??DataTable13_1
        STRB     R8,[R0, #+25]
        LDR.W    R0,??DataTable13_1
        STRB     R9,[R0, #+26]
        LDR.W    R0,??DataTable13_1
        STRB     R4,[R0, #+27]
        LDR.W    R0,??DataTable13_1
        LDRB     R1,[SP, #+44]
        STRB     R1,[R0, #+28]
        LDR.W    R0,??DataTable13_1
        LDRB     R1,[SP, #+48]
        STRB     R1,[R0, #+29]
        LDR.W    R0,??DataTable13_1
        LDRB     R1,[SP, #+52]
        STRB     R1,[R0, #+30]
        LDR.W    R0,??DataTable13_1
        LDRB     R1,[SP, #+56]
        STRB     R1,[R0, #+31]
        LDR.W    R0,??DataTable13_1
        LDRB     R1,[SP, #+60]
        STRB     R1,[R0, #+32]
        LDR.W    R0,??DataTable13_1
        LDRB     R1,[SP, #+64]
        STRB     R1,[R0, #+33]
        LDR.W    R0,??DataTable13_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+34]
        MOVS     R0,#+2
        MOV      R10,R0
??Send_MDIN_Data_5:
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        CMP      R10,#+14
        BCS.N    ??Send_MDIN_Data_6
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        LDR.W    R0,??DataTable13_1
        ADDS     R0,R10,R0
        LDRB     R0,[R0, #+20]
        ADDS     R11,R0,R11
        ADDS     R10,R10,#+1
        B.N      ??Send_MDIN_Data_5
??Send_MDIN_Data_6:
        LDR.W    R0,??DataTable13_1
        STRB     R11,[R0, #+34]
        LDR.W    R0,??DataTable13_1
        MOVS     R1,#+95
        STRB     R1,[R0, #+35]
        LDR.W    R0,??DataTable13_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+1]
        LDR.W    R0,??DataTable13_1
        ADDS     R1,R7,#+7
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable13_1
        LDRB     R0,[R0, #+1]
        LDR.W    R1,??DataTable13_1
        ADDS     R2,R0,#+1
        STRB     R2,[R1, #+1]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable13_1
        ADDS     R0,R0,R1
        LDRB     R1,[R0, #+20]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.W    R0,??DataTable13_2  ;; 0x40004400
        BL       USART_SendData
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       Delay_1ms
        B.N      ??Send_MDIN_Data_4
??Send_MDIN_Data_2:
        LDR.W    R0,??DataTable13_1
        MOVS     R1,#+160
        STRB     R1,[R0, #+20]
        LDR.W    R0,??DataTable13_1
        MOVS     R1,#+96
        STRB     R1,[R0, #+21]
        LDR.W    R0,??DataTable13_1
        STRB     R6,[R0, #+22]
        LSRS     R0,R6,#+8
        LDR.W    R1,??DataTable13_1
        STRB     R0,[R1, #+23]
        LDR.W    R0,??DataTable13_1
        STRB     R7,[R0, #+24]
        LDR.W    R0,??DataTable13_1
        STRB     R8,[R0, #+25]
        LDR.W    R0,??DataTable13_1
        STRB     R9,[R0, #+26]
        LDR.W    R0,??DataTable13_1
        STRB     R4,[R0, #+27]
        LDR.W    R0,??DataTable13_1
        LDRB     R1,[SP, #+44]
        STRB     R1,[R0, #+28]
        LDR.W    R0,??DataTable13_1
        LDRB     R1,[SP, #+48]
        STRB     R1,[R0, #+29]
        LDR.W    R0,??DataTable13_1
        LDRB     R1,[SP, #+52]
        STRB     R1,[R0, #+30]
        LDR.W    R0,??DataTable13_1
        LDRB     R1,[SP, #+56]
        STRB     R1,[R0, #+31]
        LDR.W    R0,??DataTable13_1
        LDRB     R1,[SP, #+60]
        STRB     R1,[R0, #+32]
        LDR.W    R0,??DataTable13_1
        LDRB     R1,[SP, #+64]
        STRB     R1,[R0, #+33]
        LDR.W    R0,??DataTable13_1
        LDRB     R1,[SP, #+68]
        STRB     R1,[R0, #+34]
        LDR.W    R0,??DataTable13_1
        LDRB     R1,[SP, #+72]
        STRB     R1,[R0, #+35]
        LDR.W    R0,??DataTable13_1
        LDRB     R1,[SP, #+76]
        STRB     R1,[R0, #+36]
        LDR.W    R0,??DataTable13_1
        LDRB     R1,[SP, #+80]
        STRB     R1,[R0, #+37]
        LDR.W    R0,??DataTable13_1
        LDRB     R1,[SP, #+84]
        STRB     R1,[R0, #+38]
        LDR.W    R0,??DataTable13_1
        LDRB     R1,[SP, #+88]
        STRB     R1,[R0, #+39]
        LDR.W    R0,??DataTable13_1
        LDRB     R1,[SP, #+92]
        STRB     R1,[R0, #+40]
        LDR.W    R0,??DataTable13_1
        LDRB     R1,[SP, #+96]
        STRB     R1,[R0, #+41]
        LDR.W    R0,??DataTable13_1
        LDRB     R1,[SP, #+100]
        STRB     R1,[R0, #+42]
        LDR.W    R0,??DataTable13_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+43]
        MOVS     R0,#+2
        MOV      R10,R0
??Send_MDIN_Data_7:
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        CMP      R10,#+23
        BCS.N    ??Send_MDIN_Data_8
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        LDR.W    R0,??DataTable13_1
        ADDS     R0,R10,R0
        LDRB     R0,[R0, #+20]
        ADDS     R11,R0,R11
        ADDS     R10,R10,#+1
        B.N      ??Send_MDIN_Data_7
??Send_MDIN_Data_8:
        LDR.W    R0,??DataTable13_1
        STRB     R11,[R0, #+43]
        LDR.W    R0,??DataTable13_1
        MOVS     R1,#+95
        STRB     R1,[R0, #+44]
        LDR.W    R0,??DataTable13_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+1]
        LDR.W    R0,??DataTable13_1
        ADDS     R1,R7,#+7
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable13_1
        LDRB     R0,[R0, #+1]
        LDR.W    R1,??DataTable13_1
        ADDS     R2,R0,#+1
        STRB     R2,[R1, #+1]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable13_1
        ADDS     R0,R0,R1
        LDRB     R1,[R0, #+20]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.W    R0,??DataTable13_2  ;; 0x40004400
        BL       USART_SendData
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       Delay_1ms
        B.N      ??Send_MDIN_Data_4
??Send_MDIN_Data_3:
??Send_MDIN_Data_4:
        POP      {R0,R4-R11,PC}   ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
LRF_Initialization:
        PUSH     {R7,LR}
        MOV      R1,#+1000
        MOVS     R0,#+1
        BL       Send_LRF_Data
        MOV      R1,#+1000
        MOVS     R0,#+2
        BL       Send_LRF_Data
        MOV      R1,#+1000
        MOVS     R0,#+3
        BL       Send_LRF_Data
        LDR.W    R0,??DataTable13_4
        MOVS     R1,#+0
        STRB     R1,[R0, #+8]
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Reponse_Data_Send:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        LDR.W    R0,??DataTable13_5
        MOVS     R1,#+202
        STRB     R1,[R0, #+31]
        LDR.W    R0,??DataTable13_5
        MOVS     R1,#+172
        STRB     R1,[R0, #+32]
        LDR.W    R0,??DataTable13_5
        STRB     R4,[R0, #+33]
        LDR.W    R0,??DataTable13_5
        STRB     R5,[R0, #+34]
        LDR.W    R0,??DataTable13_5
        STRB     R6,[R0, #+35]
        LDR.W    R0,??DataTable13_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+36]
        LDR.W    R0,??DataTable13_5
        LDRB     R0,[R0, #+33]
        LDR.W    R1,??DataTable13_5
        LDRB     R1,[R1, #+34]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable13_5
        LDRB     R1,[R1, #+35]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable13_5
        STRB     R0,[R1, #+36]
        LDR.W    R0,??DataTable13_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        LDR.W    R0,??DataTable13_5
        MOVS     R1,#+6
        STRB     R1,[R0, #+1]
        LDR.W    R0,??DataTable13_5
        LDRB     R0,[R0, #+0]
        ADDS     R1,R0,#+1
        LDR.W    R2,??DataTable13_5
        STRB     R1,[R2, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable13_5
        ADDS     R0,R0,R1
        LDRB     R1,[R0, #+31]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.W    R0,??DataTable13_6  ;; 0x40013800
        BL       USART_SendData
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Send_Light_Data:
        PUSH     {R3-R11,LR}
        MOV      R8,R0
        MOV      R9,R1
        MOV      R10,R2
        MOV      R11,R3
        LDR      R4,[SP, #+40]
        LDR      R5,[SP, #+44]
        LDR      R6,[SP, #+48]
        LDR      R7,[SP, #+52]
        LDR.W    R0,??DataTable13_1
        MOVS     R1,#+36
        STRB     R1,[R0, #+20]
        LDR.W    R0,??DataTable13_1
        STRB     R8,[R0, #+21]
        LDR.W    R0,??DataTable13_1
        MOVS     R1,#+49
        STRB     R1,[R0, #+22]
        LDR.W    R0,??DataTable13_1
        STRB     R9,[R0, #+23]
        LDR.W    R0,??DataTable13_1
        STRB     R10,[R0, #+24]
        LDR.W    R0,??DataTable13_1
        STRB     R11,[R0, #+25]
        LDR.W    R0,??DataTable13_1
        STRB     R4,[R0, #+26]
        LDR.W    R0,??DataTable13_1
        STRB     R5,[R0, #+27]
        LDR.W    R0,??DataTable13_1
        MOVS     R1,#+35
        STRB     R1,[R0, #+28]
        LDR.W    R0,??DataTable13_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+1]
        LDR.W    R0,??DataTable13_1
        STRB     R6,[R0, #+2]
        LDR.W    R0,??DataTable13_1
        LDRB     R0,[R0, #+1]
        LDR.W    R1,??DataTable13_1
        ADDS     R2,R0,#+1
        STRB     R2,[R1, #+1]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable13_1
        ADDS     R0,R0,R1
        LDRB     R1,[R0, #+20]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.W    R0,??DataTable13_2  ;; 0x40004400
        BL       USART_SendData
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R0,R7
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       Delay_1ms
        POP      {R0,R4-R11,PC}   ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Send_TSM_Data:
        PUSH     {R3-R9,LR}
        MOVS     R6,R0
        MOVS     R7,R1
        MOV      R8,R2
        MOV      R9,R3
        LDR      R4,[SP, #+32]
        LDR      R5,[SP, #+36]
        LDR.W    R0,??DataTable12
        MOVS     R1,#+160
        STRB     R1,[R0, #+24]
        LDR.W    R0,??DataTable12
        STRB     R6,[R0, #+25]
        LDR.W    R0,??DataTable12
        STRB     R7,[R0, #+26]
        LDR.W    R0,??DataTable12
        STRB     R8,[R0, #+27]
        LDR.W    R0,??DataTable12
        STRB     R9,[R0, #+28]
        LDR.W    R0,??DataTable12
        MOVS     R1,#+175
        STRB     R1,[R0, #+29]
        LDR.W    R0,??DataTable12
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        LDR.W    R0,??DataTable12
        STRB     R4,[R0, #+1]
        LDR.W    R0,??DataTable12
        LDRB     R0,[R0, #+0]
        ADDS     R1,R0,#+1
        LDR.W    R2,??DataTable12
        STRB     R1,[R2, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable12
        ADDS     R0,R0,R1
        LDRB     R1,[R0, #+24]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.W    R0,??DataTable13  ;; 0x40004c00
        BL       USART_SendData
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       Delay_1ms
        POP      {R0,R4-R9,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Send_TCM_Data:
        PUSH     {R3-R11,LR}
        MOV      R8,R0
        MOV      R9,R1
        MOV      R10,R2
        MOV      R11,R3
        LDR      R4,[SP, #+40]
        LDR      R5,[SP, #+44]
        LDR      R6,[SP, #+64]
        LDR      R7,[SP, #+68]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R0,R6
        CMP      R0,#+6
        BEQ.N    ??Send_TCM_Data_0
        CMP      R0,#+8
        BEQ.N    ??Send_TCM_Data_1
        CMP      R0,#+12
        BEQ.N    ??Send_TCM_Data_2
        B.N      ??Send_TCM_Data_3
??Send_TCM_Data_0:
        LDR.W    R0,??DataTable12
        MOVS     R1,#+160
        STRB     R1,[R0, #+24]
        LDR.W    R0,??DataTable12
        STRB     R8,[R0, #+25]
        LDR.W    R0,??DataTable12
        STRB     R9,[R0, #+26]
        LDR.W    R0,??DataTable12
        STRB     R10,[R0, #+27]
        LDR.W    R0,??DataTable12
        STRB     R11,[R0, #+28]
        LDR.W    R0,??DataTable12
        MOVS     R1,#+175
        STRB     R1,[R0, #+29]
        LDR.W    R0,??DataTable12
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        LDR.W    R0,??DataTable12
        STRB     R6,[R0, #+1]
        B.N      ??Send_TCM_Data_3
??Send_TCM_Data_1:
        LDR.W    R0,??DataTable12
        MOVS     R1,#+160
        STRB     R1,[R0, #+24]
        LDR.W    R0,??DataTable12
        STRB     R8,[R0, #+25]
        LDR.W    R0,??DataTable12
        STRB     R9,[R0, #+26]
        LDR.W    R0,??DataTable12
        STRB     R10,[R0, #+27]
        LDR.W    R0,??DataTable12
        STRB     R11,[R0, #+28]
        LDR.N    R0,??DataTable12
        STRB     R4,[R0, #+29]
        LDR.N    R0,??DataTable12
        STRB     R5,[R0, #+30]
        LDR.N    R0,??DataTable12
        MOVS     R1,#+175
        STRB     R1,[R0, #+31]
        LDR.N    R0,??DataTable12
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        LDR.N    R0,??DataTable12
        STRB     R6,[R0, #+1]
        B.N      ??Send_TCM_Data_3
??Send_TCM_Data_2:
        LDR.N    R0,??DataTable12
        MOVS     R1,#+160
        STRB     R1,[R0, #+24]
        LDR.N    R0,??DataTable12
        STRB     R8,[R0, #+25]
        LDR.N    R0,??DataTable12
        STRB     R9,[R0, #+26]
        LDR.N    R0,??DataTable12
        STRB     R10,[R0, #+27]
        LDR.N    R0,??DataTable12
        STRB     R11,[R0, #+28]
        LDR.N    R0,??DataTable12
        STRB     R4,[R0, #+29]
        LDR.N    R0,??DataTable12
        STRB     R5,[R0, #+30]
        LDR.N    R0,??DataTable12
        LDRB     R1,[SP, #+48]
        STRB     R1,[R0, #+27]
        LDR.N    R0,??DataTable12
        LDRB     R1,[SP, #+52]
        STRB     R1,[R0, #+28]
        LDR.N    R0,??DataTable12
        LDRB     R1,[SP, #+56]
        STRB     R1,[R0, #+29]
        LDR.N    R0,??DataTable12
        LDRB     R1,[SP, #+60]
        STRB     R1,[R0, #+30]
        LDR.N    R0,??DataTable12
        MOVS     R1,#+175
        STRB     R1,[R0, #+31]
        LDR.N    R0,??DataTable12
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        LDR.N    R0,??DataTable12
        STRB     R6,[R0, #+1]
??Send_TCM_Data_3:
        LDR.N    R0,??DataTable12
        LDRB     R0,[R0, #+0]
        ADDS     R1,R0,#+1
        LDR.N    R2,??DataTable12
        STRB     R1,[R2, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable12
        ADDS     R0,R0,R1
        LDRB     R1,[R0, #+24]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.W    R0,??DataTable13  ;; 0x40004c00
        BL       USART_SendData
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R0,R7
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       Delay_1ms
        POP      {R0,R4-R11,PC}   ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Send_UART4_Ack:
        PUSH     {R4-R10,LR}
        MOVS     R6,R0
        MOVS     R7,R1
        MOV      R8,R2
        MOV      R9,R3
        LDR      R4,[SP, #+32]
        LDR      R5,[SP, #+36]
        MOVS     R10,#+0
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        MOVS     R0,R7
        CMP      R0,#+2
        BEQ.N    ??Send_UART4_Ack_0
        CMP      R0,#+3
        BEQ.N    ??Send_UART4_Ack_1
        B.N      ??Send_UART4_Ack_2
??Send_UART4_Ack_0:
        LDR.N    R0,??DataTable12
        MOVS     R1,#+170
        STRB     R1,[R0, #+24]
        LDR.N    R0,??DataTable12
        MOVS     R1,#+85
        STRB     R1,[R0, #+25]
        LDR.N    R0,??DataTable12
        STRB     R6,[R0, #+26]
        LDR.N    R0,??DataTable12
        STRB     R7,[R0, #+27]
        LDR.N    R0,??DataTable12
        STRB     R8,[R0, #+28]
        LDR.N    R0,??DataTable12
        STRB     R9,[R0, #+29]
        LDR.N    R0,??DataTable12
        LDRB     R0,[R0, #+28]
        LDR.N    R1,??DataTable12
        LDRB     R1,[R1, #+29]
        ADDS     R0,R1,R0
        MOV      R10,R0
        LDR.N    R0,??DataTable12
        STRB     R10,[R0, #+30]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R0,R6
        CMP      R0,#+160
        BEQ.N    ??Send_UART4_Ack_3
        CMP      R0,#+176
        BEQ.N    ??Send_UART4_Ack_4
        CMP      R0,#+224
        BEQ.N    ??Send_UART4_Ack_5
        B.N      ??Send_UART4_Ack_6
??Send_UART4_Ack_3:
        LDR.N    R0,??DataTable12
        MOVS     R1,#+175
        STRB     R1,[R0, #+31]
        B.N      ??Send_UART4_Ack_6
??Send_UART4_Ack_4:
        LDR.N    R0,??DataTable12
        MOVS     R1,#+191
        STRB     R1,[R0, #+31]
        B.N      ??Send_UART4_Ack_6
??Send_UART4_Ack_5:
        LDR.N    R0,??DataTable12
        MOVS     R1,#+239
        STRB     R1,[R0, #+31]
??Send_UART4_Ack_6:
        LDR.N    R0,??DataTable12
        ADDS     R1,R7,#+6
        STRB     R1,[R0, #+1]
        LDR.N    R0,??DataTable12
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        LDR.N    R0,??DataTable12
        LDRB     R0,[R0, #+0]
        ADDS     R1,R0,#+1
        LDR.N    R2,??DataTable12
        STRB     R1,[R2, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable12
        ADDS     R0,R0,R1
        LDRB     R1,[R0, #+24]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.N    R0,??DataTable13  ;; 0x40004c00
        BL       USART_SendData
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       Delay_1ms
        B.N      ??Send_UART4_Ack_2
??Send_UART4_Ack_1:
        LDR.N    R0,??DataTable12
        MOVS     R1,#+170
        STRB     R1,[R0, #+24]
        LDR.N    R0,??DataTable12
        MOVS     R1,#+85
        STRB     R1,[R0, #+25]
        LDR.N    R0,??DataTable12
        STRB     R6,[R0, #+26]
        LDR.N    R0,??DataTable12
        STRB     R7,[R0, #+27]
        LDR.N    R0,??DataTable12
        STRB     R8,[R0, #+28]
        LDR.N    R0,??DataTable12
        STRB     R9,[R0, #+29]
        LDR.N    R0,??DataTable12
        STRB     R4,[R0, #+30]
        LDR.N    R0,??DataTable12
        LDRB     R0,[R0, #+28]
        LDR.N    R1,??DataTable12
        LDRB     R1,[R1, #+29]
        ADDS     R0,R1,R0
        MOV      R10,R0
        LDR.N    R0,??DataTable12
        STRB     R10,[R0, #+31]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R0,R6
        CMP      R0,#+160
        BEQ.N    ??Send_UART4_Ack_7
        CMP      R0,#+176
        BEQ.N    ??Send_UART4_Ack_8
        CMP      R0,#+224
        BEQ.N    ??Send_UART4_Ack_9
        B.N      ??Send_UART4_Ack_10
??Send_UART4_Ack_7:
        LDR.N    R0,??DataTable12
        MOVS     R1,#+175
        STRB     R1,[R0, #+32]
        B.N      ??Send_UART4_Ack_10
??Send_UART4_Ack_8:
        LDR.N    R0,??DataTable12
        MOVS     R1,#+191
        STRB     R1,[R0, #+32]
        B.N      ??Send_UART4_Ack_10
??Send_UART4_Ack_9:
        LDR.N    R0,??DataTable12
        MOVS     R1,#+239
        STRB     R1,[R0, #+32]
??Send_UART4_Ack_10:
        LDR.N    R0,??DataTable12
        ADDS     R1,R7,#+6
        STRB     R1,[R0, #+1]
        LDR.N    R0,??DataTable12
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        LDR.N    R0,??DataTable12
        LDRB     R0,[R0, #+0]
        ADDS     R1,R0,#+1
        LDR.N    R2,??DataTable12
        STRB     R1,[R2, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable12
        ADDS     R0,R0,R1
        LDRB     R1,[R0, #+24]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.N    R0,??DataTable13  ;; 0x40004c00
        BL       USART_SendData
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       Delay_1ms
??Send_UART4_Ack_2:
        POP      {R4-R10,PC}      ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Send_Pelco_Data:
        PUSH     {R3-R9,LR}
        MOVS     R6,R0
        MOVS     R7,R1
        MOV      R8,R2
        MOV      R9,R3
        LDR      R4,[SP, #+32]
        LDR      R5,[SP, #+36]
        LDR.N    R0,??DataTable13_5
        MOVS     R1,#+255
        STRB     R1,[R0, #+31]
        LDR.N    R0,??DataTable13_5
        MOVS     R1,#+1
        STRB     R1,[R0, #+32]
        LDR.N    R0,??DataTable13_5
        STRB     R6,[R0, #+33]
        LDR.N    R0,??DataTable13_5
        STRB     R7,[R0, #+34]
        LDR.N    R0,??DataTable13_5
        STRB     R8,[R0, #+35]
        LDR.N    R0,??DataTable13_5
        STRB     R9,[R0, #+36]
        LDR.N    R0,??DataTable13_5
        LDRB     R0,[R0, #+32]
        LDR.N    R1,??DataTable13_5
        LDRB     R1,[R1, #+33]
        ADDS     R0,R1,R0
        LDR.N    R1,??DataTable13_5
        LDRB     R1,[R1, #+34]
        ADDS     R0,R1,R0
        LDR.N    R1,??DataTable13_5
        LDRB     R1,[R1, #+35]
        ADDS     R0,R1,R0
        LDR.N    R1,??DataTable13_5
        LDRB     R1,[R1, #+36]
        ADDS     R0,R1,R0
        LDR.N    R1,??DataTable13_5
        STRB     R0,[R1, #+37]
        LDR.N    R0,??DataTable13_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        LDR.N    R0,??DataTable13_5
        STRB     R4,[R0, #+1]
        LDR.N    R0,??DataTable13_5
        LDRB     R0,[R0, #+0]
        ADDS     R1,R0,#+1
        LDR.N    R2,??DataTable13_5
        STRB     R1,[R2, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable13_5
        ADDS     R0,R0,R1
        LDRB     R1,[R0, #+31]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.N    R0,??DataTable13_6  ;; 0x40013800
        BL       USART_SendData
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R0,R5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       Delay_1ms
        POP      {R0,R4-R9,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Bypass_Data_Parser:
        PUSH     {R4,LR}
        MOVS     R4,#+0
        LDR.N    R0,??DataTable13_5
        LDRB     R0,[R0, #+17]
        CMP      R0,#+1
        BNE.N    ??Bypass_Data_Parser_0
        LDR.N    R0,??DataTable13_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+17]
        LDR.N    R0,??DataTable13_7
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        LDR.N    R0,??DataTable13_7
        LDR.N    R1,??DataTable13_5
        LDRB     R1,[R1, #+18]
        STRB     R1,[R0, #+1]
        MOVS     R0,#+0
        MOVS     R4,R0
??Bypass_Data_Parser_1:
        LDR.N    R0,??DataTable13_7
        LDRB     R0,[R0, #+1]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,R0
        BCS.N    ??Bypass_Data_Parser_2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable13_7
        ADDS     R0,R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable13_5
        ADDS     R1,R4,R1
        LDRB     R1,[R1, #+131]
        STRB     R1,[R0, #+17]
        ADDS     R4,R4,#+1
        B.N      ??Bypass_Data_Parser_1
??Bypass_Data_Parser_2:
        LDR.N    R0,??DataTable13_7
        LDRB     R0,[R0, #+0]
        ADDS     R1,R0,#+1
        LDR.N    R2,??DataTable13_7
        STRB     R1,[R2, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable13_7
        ADDS     R0,R0,R1
        LDRB     R1,[R0, #+17]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.N    R0,??DataTable13_8  ;; 0x40005000
        BL       USART_SendData
        MOVS     R0,#+12
        BL       Delay_1ms
??Bypass_Data_Parser_0:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Send_Data_Clear:
        PUSH     {R4,R5}
        ADDS     R3,R1,#+5
        MOVS     R4,#+0
        MOVS     R2,R4
??Send_Data_Clear_0:
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R2,R1
        BCS.N    ??Send_Data_Clear_1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+1
        BNE.N    ??Send_Data_Clear_2
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LDR.N    R4,??DataTable13_5
        ADDS     R4,R2,R4
        MOVS     R5,#+0
        STRB     R5,[R4, #+131]
??Send_Data_Clear_2:
        ADDS     R2,R2,#+1
        B.N      ??Send_Data_Clear_0
??Send_Data_Clear_1:
        POP      {R4,R5}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12:
        DC32     stUART4

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART1_Send_Data:
        PUSH     {R0,R4-R11,LR}
        MOVS     R6,R1
        MOVS     R7,R2
        MOV      R8,R3
        LDR      R4,[SP, #+40]
        LDR      R5,[SP, #+44]
        ADDS     R9,R5,#+3
        MOVS     R10,#+0
        LDRB     R0,[SP, #+0]
        CMP      R0,#+160
        BNE.N    ??USART1_Send_Data_0
        LDR.N    R0,??DataTable13_5
        MOVS     R1,#+160
        STRB     R1,[R0, #+31]
        LDR.N    R0,??DataTable13_5
        MOVS     R1,#+10
        STRB     R1,[R0, #+32]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LDR.N    R0,??DataTable13_5
        ADDS     R0,R5,R0
        MOVS     R1,#+175
        STRB     R1,[R0, #+35]
??USART1_Send_Data_0:
        LDR.N    R0,??DataTable13_5
        STRB     R5,[R0, #+33]
        LDR.N    R0,??DataTable13_5
        MOVS     R1,#+1
        STRB     R1,[R0, #+34]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+5
        BNE.N    ??USART1_Send_Data_1
        LDR.N    R0,??DataTable13_5
        STRB     R6,[R0, #+35]
        LDR.N    R0,??DataTable13_5
        STRB     R7,[R0, #+36]
        LDR.N    R0,??DataTable13_5
        STRB     R8,[R0, #+37]
        LDR.N    R0,??DataTable13_5
        STRB     R4,[R0, #+38]
??USART1_Send_Data_1:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        LDR.N    R0,??DataTable13_5
        ADDS     R0,R9,R0
        MOVS     R1,#+0
        STRB     R1,[R0, #+31]
        MOVS     R0,#+3
        MOV      R11,R0
??USART1_Send_Data_2:
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R11,R9
        BCS.N    ??USART1_Send_Data_3
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        LDR.N    R0,??DataTable13_5
        ADDS     R0,R11,R0
        LDRB     R0,[R0, #+31]
        ADDS     R10,R0,R10
        ADDS     R11,R11,#+1
        B.N      ??USART1_Send_Data_2
??USART1_Send_Data_3:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        LDR.N    R0,??DataTable13_5
        ADDS     R0,R9,R0
        STRB     R10,[R0, #+31]
        LDR.N    R0,??DataTable13_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        LDR.N    R0,??DataTable13_5
        ADDS     R1,R5,#+5
        STRB     R1,[R0, #+1]
        LDR.N    R0,??DataTable13_5
        LDRB     R0,[R0, #+0]
        ADDS     R1,R0,#+1
        LDR.N    R2,??DataTable13_5
        STRB     R1,[R2, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable13_5
        ADDS     R0,R0,R1
        LDRB     R1,[R0, #+31]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.N    R0,??DataTable13_6  ;; 0x40013800
        BL       USART_SendData
        MOVS     R0,#+1
        BL       Delay_1ms
        POP      {R0,R4-R11,PC}   ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13:
        DC32     0x40004c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_1:
        DC32     stUSART2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_2:
        DC32     0x40004400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_3:
        DC32     stSYS

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_4:
        DC32     stLRF

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_5:
        DC32     stUSART1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_6:
        DC32     0x40013800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_7:
        DC32     stUART5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_8:
        DC32     0x40005000

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
Sony_Data_Handing:
        PUSH     {R4-R9,LR}
        SUB      SP,SP,#+20
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,#+0
        MOVS     R8,#+0
        MOVS     R9,#+0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,R4
        CMP      R0,#+1
        BEQ.N    ??Sony_Data_Handing_0
        CMP      R0,#+5
        BEQ.N    ??Sony_Data_Handing_1
        CMP      R0,#+170
        BNE.N    ??Sony_Data_Handing_2
??Sony_Data_Handing_3:
        LDR.W    R0,??Sony_Data_Handing_4
        LDRB     R0,[R0, #+11]
        MOVS     R7,R0
        LDR.W    R0,??Sony_Data_Handing_4
        LDRB     R0,[R0, #+12]
        STRB     R0,[SP, #+8]
        LDR.W    R0,??Sony_Data_Handing_4
        LDRB     R0,[R0, #+13]
        STRB     R0,[SP, #+9]
        B.N      ??Sony_Data_Handing_5
??Sony_Data_Handing_0:
        LDR.W    R0,??Sony_Data_Handing_4+0x4
        LDRB     R0,[R0, #+135]
        MOVS     R7,R0
        LDR.W    R0,??Sony_Data_Handing_4+0x4
        LDRB     R0,[R0, #+136]
        STRB     R0,[SP, #+8]
        LDR.W    R0,??Sony_Data_Handing_4+0x4
        LDRB     R0,[R0, #+137]
        STRB     R0,[SP, #+9]
        B.N      ??Sony_Data_Handing_5
??Sony_Data_Handing_1:
        LDR.W    R0,??Sony_Data_Handing_4+0x8
        LDRB     R0,[R0, #+121]
        MOVS     R7,R0
        LDR.W    R0,??Sony_Data_Handing_4+0x8
        LDRB     R0,[R0, #+122]
        STRB     R0,[SP, #+8]
        LDR.W    R0,??Sony_Data_Handing_4+0x8
        LDRB     R0,[R0, #+123]
        STRB     R0,[SP, #+9]
        B.N      ??Sony_Data_Handing_5
??Sony_Data_Handing_2:
??Sony_Data_Handing_5:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R0,R5
        CMP      R0,#+7
        BEQ.W    ??Sony_Data_Handing_6
        CMP      R0,#+8
        BEQ.W    ??Sony_Data_Handing_7
        CMP      R0,#+11
        BEQ.W    ??Sony_Data_Handing_8
        CMP      R0,#+49
        BEQ.W    ??Sony_Data_Handing_9
        CMP      R0,#+51
        BEQ.W    ??Sony_Data_Handing_10
        CMP      R0,#+55
        BEQ.W    ??Sony_Data_Handing_11
        CMP      R0,#+71
        BEQ.W    ??Sony_Data_Handing_12
        CMP      R0,#+72
        BEQ.W    ??Sony_Data_Handing_13
        CMP      R0,#+74
        BEQ.W    ??Sony_Data_Handing_14
        CMP      R0,#+85
        BEQ.W    ??Sony_Data_Handing_15
        CMP      R0,#+89
        BEQ.W    ??Sony_Data_Handing_16
        CMP      R0,#+91
        BEQ.W    ??Sony_Data_Handing_17
        CMP      R0,#+95
        BEQ.W    ??Sony_Data_Handing_18
        CMP      R0,#+97
        BEQ.W    ??Sony_Data_Handing_19
        CMP      R0,#+114
        BEQ.W    ??Sony_Data_Handing_20
        CMP      R0,#+133
        BEQ.W    ??Sony_Data_Handing_21
        CMP      R0,#+135
        BEQ.W    ??Sony_Data_Handing_22
        CMP      R0,#+137
        BEQ.W    ??Sony_Data_Handing_23
        CMP      R0,#+139
        BEQ.W    ??Sony_Data_Handing_24
        CMP      R0,#+145
        BEQ.N    ??Sony_Data_Handing_25
        CMP      R0,#+147
        BEQ.W    ??Sony_Data_Handing_26
        CMP      R0,#+184
        BEQ.W    ??Sony_Data_Handing_27
        CMP      R0,#+240
        BEQ.W    ??Sony_Data_Handing_28
        B.W      ??Sony_Data_Handing_29
??Sony_Data_Handing_25:
        LDRB     R0,[SP, #+9]
        LDR.W    R1,??Sony_Data_Handing_4+0xC
        STRB     R0,[R1, #+0]
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        LDRB     R1,[R0, #+0]
        MOVS     R0,#+11
        BL       AT24C256C_EEPROM_Write
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
        MOVS     R0,#+0
        STRB     R0,[SP, #+9]
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Sony_Data_Handing_30
        CMP      R0,#+2
        BEQ.N    ??Sony_Data_Handing_31
        BCC.N    ??Sony_Data_Handing_32
        B.N      ??Sony_Data_Handing_33
??Sony_Data_Handing_30:
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        LDRB     R0,[R0, #+1]
        CMP      R0,#+0
        BEQ.N    ??Sony_Data_Handing_34
        CMP      R0,#+1
        BEQ.N    ??Sony_Data_Handing_35
        B.N      ??Sony_Data_Handing_36
??Sony_Data_Handing_34:
        MOVS     R0,#+87
        MOVS     R7,R0
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
        MOVS     R0,#+56
        MOVS     R7,R0
        MOVS     R0,#+2
        STRB     R0,[SP, #+8]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
        B.N      ??Sony_Data_Handing_37
??Sony_Data_Handing_35:
        MOVS     R0,#+87
        MOVS     R7,R0
        MOVS     R0,#+2
        STRB     R0,[SP, #+8]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
        MOVS     R0,#+56
        MOVS     R7,R0
        MOVS     R0,#+2
        STRB     R0,[SP, #+8]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
        B.N      ??Sony_Data_Handing_37
??Sony_Data_Handing_36:
??Sony_Data_Handing_37:
        B.N      ??Sony_Data_Handing_38
??Sony_Data_Handing_32:
        MOVS     R0,#+56
        MOVS     R7,R0
        MOVS     R0,#+3
        STRB     R0,[SP, #+8]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
        MOVS     R0,#+72
        MOVS     R7,R0
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        LDR      R0,[R0, #+24]
        LSRS     R0,R0,#+8
        STRB     R0,[SP, #+8]
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        LDR      R0,[R0, #+24]
        STRB     R0,[SP, #+9]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+9
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
        B.N      ??Sony_Data_Handing_38
??Sony_Data_Handing_31:
        MOVS     R0,#+56
        MOVS     R7,R0
        MOVS     R0,#+3
        STRB     R0,[SP, #+8]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
        MOVS     R0,#+24
        MOVS     R7,R0
        MOVS     R0,#+1
        STRB     R0,[SP, #+8]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
        B.N      ??Sony_Data_Handing_38
??Sony_Data_Handing_33:
??Sony_Data_Handing_38:
        B.W      ??Sony_Data_Handing_39
??Sony_Data_Handing_26:
        MOVS     R0,#+87
        MOVS     R7,R0
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        LDRB     R1,[SP, #+9]
        STRB     R1,[R0, #+1]
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        LDRB     R1,[R0, #+1]
        MOVS     R0,#+12
        BL       AT24C256C_EEPROM_Write
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
        MOVS     R0,#+0
        STRB     R0,[SP, #+9]
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        LDRB     R0,[R0, #+1]
        CMP      R0,#+0
        BEQ.N    ??Sony_Data_Handing_40
        CMP      R0,#+1
        BEQ.N    ??Sony_Data_Handing_41
        B.N      ??Sony_Data_Handing_42
??Sony_Data_Handing_40:
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
        B.N      ??Sony_Data_Handing_43
??Sony_Data_Handing_41:
        MOVS     R0,#+2
        STRB     R0,[SP, #+8]
        B.N      ??Sony_Data_Handing_43
??Sony_Data_Handing_42:
??Sony_Data_Handing_43:
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
        B.W      ??Sony_Data_Handing_39
??Sony_Data_Handing_7:
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        LDRB     R0,[R0, #+0]
        MOV      R8,R0
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        MOV      R0,R8
        SUBS     R0,R0,#+1
        CMP      R0,#+1
        BHI.N    ??Sony_Data_Handing_44
??Sony_Data_Handing_45:
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        LDRB     R1,[SP, #+9]
        STRB     R1,[R0, #+2]
        B.N      ??Sony_Data_Handing_46
??Sony_Data_Handing_44:
        MOVS     R0,#+255
        MOV      R8,R0
??Sony_Data_Handing_46:
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
        MOVS     R0,#+0
        STRB     R0,[SP, #+9]
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+255
        BEQ.W    ??Sony_Data_Handing_39
??Sony_Data_Handing_47:
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        LDRB     R0,[R0, #+2]
        CMP      R0,#+0
        BEQ.N    ??Sony_Data_Handing_48
        CMP      R0,#+2
        BEQ.N    ??Sony_Data_Handing_49
        BCC.N    ??Sony_Data_Handing_50
        B.N      ??Sony_Data_Handing_51
??Sony_Data_Handing_48:
        MOVS     R0,#+8
        MOVS     R7,R0
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        MOVS     R1,#+0
        STR      R1,[R0, #+56]
        B.N      ??Sony_Data_Handing_52
??Sony_Data_Handing_50:
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??Sony_Data_Handing_53
        MOVS     R0,#+56
        MOVS     R7,R0
        MOVS     R0,#+3
        STRB     R0,[SP, #+8]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
??Sony_Data_Handing_53:
        MOVS     R0,#+8
        MOVS     R7,R0
        MOVS     R0,#+36
        STRB     R0,[SP, #+8]
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        MOVS     R1,#+1
        STR      R1,[R0, #+56]
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        MOVS     R1,#+1
        STRB     R1,[R0, #+23]
        B.N      ??Sony_Data_Handing_52
??Sony_Data_Handing_49:
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BNE.N    ??Sony_Data_Handing_54
        MOVS     R0,#+56
        MOVS     R7,R0
        MOVS     R0,#+3
        STRB     R0,[SP, #+8]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
??Sony_Data_Handing_54:
        MOVS     R0,#+8
        MOVS     R7,R0
        MOVS     R0,#+52
        STRB     R0,[SP, #+8]
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        MOVS     R1,#+1
        STR      R1,[R0, #+56]
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        MOVS     R1,#+1
        STRB     R1,[R0, #+23]
        B.N      ??Sony_Data_Handing_52
??Sony_Data_Handing_51:
??Sony_Data_Handing_52:
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
        B.W      ??Sony_Data_Handing_39
??Sony_Data_Handing_8:
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        LDRB     R1,[SP, #+9]
        STRB     R1,[R0, #+3]
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
        MOVS     R0,#+0
        STRB     R0,[SP, #+9]
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        LDRB     R0,[R0, #+3]
        CMP      R0,#+0
        BEQ.N    ??Sony_Data_Handing_55
        CMP      R0,#+2
        BEQ.N    ??Sony_Data_Handing_56
        BCC.N    ??Sony_Data_Handing_57
        B.N      ??Sony_Data_Handing_58
??Sony_Data_Handing_55:
        MOVS     R0,#+57
        MOVS     R7,R0
        MOVS     R0,#+3
        STRB     R0,[SP, #+8]
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        MOVS     R1,#+0
        STR      R1,[R0, #+28]
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        MOVS     R1,#+1
        STRB     R1,[R0, #+32]
        B.N      ??Sony_Data_Handing_59
??Sony_Data_Handing_57:
        MOVS     R0,#+11
        MOVS     R7,R0
        MOVS     R0,#+2
        STRB     R0,[SP, #+8]
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        MOVS     R1,#+1
        STR      R1,[R0, #+28]
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        MOVS     R1,#+1
        STRB     R1,[R0, #+32]
        B.N      ??Sony_Data_Handing_59
??Sony_Data_Handing_56:
        MOVS     R0,#+11
        MOVS     R7,R0
        MOVS     R0,#+3
        STRB     R0,[SP, #+8]
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        MOVS     R1,#+1
        STR      R1,[R0, #+28]
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        MOVS     R1,#+1
        STRB     R1,[R0, #+32]
        B.N      ??Sony_Data_Handing_59
??Sony_Data_Handing_58:
??Sony_Data_Handing_59:
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
        B.W      ??Sony_Data_Handing_39
??Sony_Data_Handing_13:
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        LDRB     R0,[R0, #+0]
        MOV      R8,R0
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+1
        BNE.W    ??Sony_Data_Handing_39
??Sony_Data_Handing_60:
        MOVS     R0,#+72
        MOVS     R7,R0
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
        LDRB     R0,[SP, #+8]
        LSLS     R0,R0,#+8
        LDR.W    R1,??Sony_Data_Handing_4+0xC
        STR      R0,[R1, #+24]
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        LDR      R0,[R0, #+24]
        LDRB     R1,[SP, #+9]
        ORRS     R0,R1,R0
        LDR.W    R1,??Sony_Data_Handing_4+0xC
        STR      R0,[R1, #+24]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+9
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
        LDRB     R1,[SP, #+8]
        MOVS     R0,#+27
        BL       AT24C256C_EEPROM_Write
        LDRB     R1,[SP, #+9]
        MOVS     R0,#+28
        BL       AT24C256C_EEPROM_Write
        B.W      ??Sony_Data_Handing_39
??Sony_Data_Handing_6:
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        LDRB     R1,[SP, #+9]
        STRB     R1,[R0, #+5]
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
        MOVS     R0,#+0
        STRB     R0,[SP, #+9]
        MOVS     R0,#+7
        MOVS     R7,R0
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        LDRB     R0,[R0, #+5]
        CMP      R0,#+0
        BEQ.N    ??Sony_Data_Handing_61
        CMP      R0,#+2
        BEQ.N    ??Sony_Data_Handing_62
        BCC.N    ??Sony_Data_Handing_63
        B.N      ??Sony_Data_Handing_64
??Sony_Data_Handing_61:
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        MOVS     R1,#+0
        STR      R1,[R0, #+44]
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
        B.N      ??Sony_Data_Handing_65
??Sony_Data_Handing_63:
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        MOVS     R1,#+1
        STR      R1,[R0, #+44]
        MOVS     R0,#+39
        STRB     R0,[SP, #+8]
        B.N      ??Sony_Data_Handing_65
??Sony_Data_Handing_62:
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        MOVS     R1,#+1
        STR      R1,[R0, #+44]
        MOVS     R0,#+55
        STRB     R0,[SP, #+8]
        B.N      ??Sony_Data_Handing_65
??Sony_Data_Handing_64:
??Sony_Data_Handing_65:
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
        B.W      ??Sony_Data_Handing_39
??Sony_Data_Handing_12:
        MOVS     R0,#+71
        MOVS     R7,R0
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+9
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
        B.W      ??Sony_Data_Handing_39
??Sony_Data_Handing_9:
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        LDRB     R1,[SP, #+9]
        STRB     R1,[R0, #+7]
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        LDRB     R1,[R0, #+7]
        MOVS     R0,#+13
        BL       AT24C256C_EEPROM_Write
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
        MOVS     R0,#+0
        STRB     R0,[SP, #+9]
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        LDRB     R0,[R0, #+7]
        CMP      R0,#+0
        BEQ.N    ??Sony_Data_Handing_66
        CMP      R0,#+1
        BEQ.N    ??Sony_Data_Handing_67
        CMP      R0,#+16
        BEQ.N    ??Sony_Data_Handing_68
        CMP      R0,#+17
        BEQ.N    ??Sony_Data_Handing_69
        B.N      ??Sony_Data_Handing_70
??Sony_Data_Handing_66:
        MOVS     R0,#+61
        MOVS     R7,R0
        MOVS     R0,#+3
        STRB     R0,[SP, #+8]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
        MOVS     R0,#+51
        MOVS     R7,R0
        MOVS     R0,#+3
        STRB     R0,[SP, #+8]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
        B.N      ??Sony_Data_Handing_71
??Sony_Data_Handing_67:
        MOVS     R0,#+61
        MOVS     R7,R0
        MOVS     R0,#+3
        STRB     R0,[SP, #+8]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
        MOVS     R0,#+51
        MOVS     R7,R0
        MOVS     R0,#+2
        STRB     R0,[SP, #+8]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
        B.N      ??Sony_Data_Handing_71
??Sony_Data_Handing_68:
        MOVS     R0,#+61
        MOVS     R7,R0
        MOVS     R0,#+2
        STRB     R0,[SP, #+8]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
        MOVS     R0,#+51
        MOVS     R7,R0
        MOVS     R0,#+3
        STRB     R0,[SP, #+8]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
        B.N      ??Sony_Data_Handing_71
??Sony_Data_Handing_69:
        MOVS     R0,#+61
        MOVS     R7,R0
        MOVS     R0,#+2
        STRB     R0,[SP, #+8]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
        MOVS     R0,#+51
        MOVS     R7,R0
        MOVS     R0,#+2
        STRB     R0,[SP, #+8]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
        B.N      ??Sony_Data_Handing_71
??Sony_Data_Handing_70:
??Sony_Data_Handing_71:
        B.W      ??Sony_Data_Handing_39
??Sony_Data_Handing_10:
        MOVS     R0,#+53
        MOVS     R7,R0
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        LDRB     R1,[SP, #+9]
        STRB     R1,[R0, #+8]
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        LDRB     R1,[R0, #+8]
        MOVS     R0,#+14
        BL       AT24C256C_EEPROM_Write
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
        MOVS     R0,#+0
        STRB     R0,[SP, #+9]
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        LDRB     R0,[R0, #+8]
        CMP      R0,#+0
        BEQ.N    ??Sony_Data_Handing_72
        CMP      R0,#+2
        BEQ.N    ??Sony_Data_Handing_73
        BCC.N    ??Sony_Data_Handing_74
        CMP      R0,#+3
        BEQ.N    ??Sony_Data_Handing_75
        B.N      ??Sony_Data_Handing_76
??Sony_Data_Handing_72:
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
        B.N      ??Sony_Data_Handing_77
??Sony_Data_Handing_74:
        MOVS     R0,#+1
        STRB     R0,[SP, #+8]
        B.N      ??Sony_Data_Handing_77
??Sony_Data_Handing_73:
        MOVS     R0,#+2
        STRB     R0,[SP, #+8]
        B.N      ??Sony_Data_Handing_77
??Sony_Data_Handing_75:
        MOVS     R0,#+4
        STRB     R0,[SP, #+8]
        B.N      ??Sony_Data_Handing_77
??Sony_Data_Handing_76:
??Sony_Data_Handing_77:
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
        B.W      ??Sony_Data_Handing_39
??Sony_Data_Handing_11:
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        LDRB     R1,[SP, #+9]
        STRB     R1,[R0, #+9]
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        LDRB     R1,[R0, #+9]
        MOVS     R0,#+15
        BL       AT24C256C_EEPROM_Write
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
        MOVS     R0,#+0
        STRB     R0,[SP, #+9]
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        LDRB     R0,[R0, #+9]
        CMP      R0,#+0
        BEQ.N    ??Sony_Data_Handing_78
        CMP      R0,#+1
        BEQ.N    ??Sony_Data_Handing_79
        B.N      ??Sony_Data_Handing_80
??Sony_Data_Handing_78:
        MOVS     R0,#+3
        STRB     R0,[SP, #+8]
        B.N      ??Sony_Data_Handing_81
??Sony_Data_Handing_79:
        MOVS     R0,#+2
        STRB     R0,[SP, #+8]
        B.N      ??Sony_Data_Handing_81
??Sony_Data_Handing_80:
        MOVS     R0,#+2
        STRB     R0,[SP, #+8]
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        MOVS     R1,#+2
        STRB     R1,[R0, #+9]
??Sony_Data_Handing_81:
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+7
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
        B.W      ??Sony_Data_Handing_39
??Sony_Data_Handing_14:
        LDRB     R0,[SP, #+9]
        MOV      R8,R0
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+23
        BCS.W    ??Sony_Data_Handing_39
??Sony_Data_Handing_82:
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        LDRB     R1,[SP, #+9]
        STRB     R1,[R0, #+10]
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        LDRB     R1,[R0, #+10]
        MOVS     R0,#+16
        BL       AT24C256C_EEPROM_Write
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
        MOVS     R0,#+0
        STRB     R0,[SP, #+9]
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        LDRB     R0,[R0, #+10]
        CMP      R0,#+0
        BNE.N    ??Sony_Data_Handing_83
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        LDRB     R0,[R0, #+11]
        CMP      R0,#+0
        BEQ.N    ??Sony_Data_Handing_84
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        MOVS     R1,#+0
        STRB     R1,[R0, #+11]
        MOVS     R0,#+57
        MOVS     R7,R0
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
??Sony_Data_Handing_84:
        MOVS     R0,#+74
        MOVS     R7,R0
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
        MOVS     R0,#+6
        STRB     R0,[SP, #+9]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+9
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
        MOVS     R0,#+57
        MOVS     R7,R0
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        MOVS     R1,#+0
        STRB     R1,[R0, #+10]
        B.N      ??Sony_Data_Handing_85
??Sony_Data_Handing_83:
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        LDRB     R0,[R0, #+15]
        CMP      R0,#+0
        BEQ.W    ??Sony_Data_Handing_86
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        LDRB     R0,[R0, #+10]
        CMP      R0,#+23
        BCS.W    ??Sony_Data_Handing_85
        LDR.W    R0,??DataTable14
        LDRB     R0,[R0, #+9]
        CMP      R0,#+1
        BNE.N    ??Sony_Data_Handing_87
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        LDRB     R0,[R0, #+10]
        CMP      R0,#+9
        BNE.N    ??Sony_Data_Handing_88
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        MOVS     R1,#+1
        STRB     R1,[R0, #+11]
        MOVS     R0,#+57
        MOVS     R7,R0
        MOVS     R0,#+10
        STRB     R0,[SP, #+8]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
        B.N      ??Sony_Data_Handing_89
??Sony_Data_Handing_88:
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        MOVS     R1,#+0
        STRB     R1,[R0, #+11]
        MOVS     R0,#+57
        MOVS     R7,R0
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
        B.N      ??Sony_Data_Handing_89
??Sony_Data_Handing_87:
        LDR.W    R0,??DataTable14
        LDRB     R0,[R0, #+9]
        CMP      R0,#+2
        BNE.N    ??Sony_Data_Handing_89
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        LDRB     R0,[R0, #+10]
        CMP      R0,#+8
        BNE.N    ??Sony_Data_Handing_90
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        MOVS     R1,#+1
        STRB     R1,[R0, #+11]
        MOVS     R0,#+57
        MOVS     R7,R0
        MOVS     R0,#+10
        STRB     R0,[SP, #+8]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
        B.N      ??Sony_Data_Handing_89
??Sony_Data_Handing_90:
        LDR.W    R0,??Sony_Data_Handing_4+0xC
        MOVS     R1,#+0
        STRB     R1,[R0, #+11]
        MOVS     R0,#+57
        MOVS     R7,R0
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
??Sony_Data_Handing_89:
        MOVS     R0,#+57
        MOVS     R7,R0
        MOVS     R0,#+10
        STRB     R0,[SP, #+8]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
        MOVS     R0,#+74
        MOVS     R7,R0
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
        LDR.N    R0,??Sony_Data_Handing_4+0xC
        LDRB     R0,[R0, #+10]
        SUBS     R0,R0,#+1
        STRB     R0,[SP, #+9]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+9
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
        B.N      ??Sony_Data_Handing_85
??Sony_Data_Handing_86:
        LDR.N    R0,??Sony_Data_Handing_4+0xC
        LDRB     R0,[R0, #+10]
        CMP      R0,#+23
        BCS.W    ??Sony_Data_Handing_85
        LDR.N    R0,??Sony_Data_Handing_4+0xC
        LDRB     R0,[R0, #+10]
        CMP      R0,#+6
        BCC.W    ??Sony_Data_Handing_85
        LDR.W    R0,??DataTable14
        LDRB     R0,[R0, #+9]
        CMP      R0,#+1
        BNE.N    ??Sony_Data_Handing_91
        LDR.N    R0,??Sony_Data_Handing_4+0xC
        LDRB     R0,[R0, #+10]
        CMP      R0,#+9
        BNE.N    ??Sony_Data_Handing_92
        LDR.N    R0,??Sony_Data_Handing_4+0xC
        MOVS     R1,#+1
        STRB     R1,[R0, #+11]
        MOVS     R0,#+57
        MOVS     R7,R0
        MOVS     R0,#+10
        STRB     R0,[SP, #+8]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
        B.N      ??Sony_Data_Handing_93
??Sony_Data_Handing_92:
        LDR.N    R0,??Sony_Data_Handing_4+0xC
        MOVS     R1,#+0
        STRB     R1,[R0, #+11]
        MOVS     R0,#+57
        MOVS     R7,R0
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
        B.N      ??Sony_Data_Handing_93
??Sony_Data_Handing_91:
        LDR.W    R0,??DataTable14
        LDRB     R0,[R0, #+9]
        CMP      R0,#+2
        BNE.N    ??Sony_Data_Handing_93
        LDR.N    R0,??Sony_Data_Handing_4+0xC
        LDRB     R0,[R0, #+10]
        CMP      R0,#+8
        BNE.N    ??Sony_Data_Handing_94
        LDR.N    R0,??Sony_Data_Handing_4+0xC
        MOVS     R1,#+1
        STRB     R1,[R0, #+11]
        MOVS     R0,#+57
        MOVS     R7,R0
        MOVS     R0,#+10
        STRB     R0,[SP, #+8]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
        B.N      ??Sony_Data_Handing_93
??Sony_Data_Handing_94:
        LDR.N    R0,??Sony_Data_Handing_4+0xC
        MOVS     R1,#+0
        STRB     R1,[R0, #+11]
        MOVS     R0,#+57
        MOVS     R7,R0
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
??Sony_Data_Handing_93:
        MOVS     R0,#+57
        MOVS     R7,R0
        MOVS     R0,#+10
        STRB     R0,[SP, #+8]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
        MOVS     R0,#+74
        MOVS     R7,R0
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
        LDR.N    R0,??Sony_Data_Handing_4+0xC
        LDRB     R0,[R0, #+10]
        SUBS     R0,R0,#+1
        STRB     R0,[SP, #+9]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+9
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
??Sony_Data_Handing_85:
        B.N      ??Sony_Data_Handing_39
??Sony_Data_Handing_15:
        LDR.N    R0,??Sony_Data_Handing_4+0xC
        LDRB     R1,[SP, #+9]
        STRB     R1,[R0, #+11]
        LDR.N    R0,??Sony_Data_Handing_4+0xC
        LDRB     R1,[R0, #+11]
        MOVS     R0,#+17
        BL       AT24C256C_EEPROM_Write
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
        MOVS     R0,#+0
        STRB     R0,[SP, #+9]
        LDR.N    R0,??Sony_Data_Handing_4+0xC
        LDRB     R0,[R0, #+11]
        CMP      R0,#+0
        BEQ.N    ??Sony_Data_Handing_95
        CMP      R0,#+1
        BEQ.N    ??Sony_Data_Handing_96
        B.N      ??Sony_Data_Handing_97
??Sony_Data_Handing_95:
        MOVS     R0,#+57
        MOVS     R7,R0
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
        LDR.N    R0,??Sony_Data_Handing_4+0xC
        MOVS     R1,#+0
        STRB     R1,[R0, #+10]
        B.N      ??Sony_Data_Handing_97
??Sony_Data_Handing_96:
        MOVS     R0,#+57
        MOVS     R7,R0
        MOVS     R0,#+10
        STRB     R0,[SP, #+8]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
        MOVS     R0,#+74
        MOVS     R7,R0
        LDR.W    R0,??DataTable14
        LDRB     R0,[R0, #+9]
        CMP      R0,#+1
        BNE.N    ??Sony_Data_Handing_98
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
        MOVS     R0,#+8
        STRB     R0,[SP, #+9]
        LDR.N    R0,??Sony_Data_Handing_4+0xC
        MOVS     R1,#+10
        STRB     R1,[R0, #+10]
        B.N      ??Sony_Data_Handing_99
??Sony_Data_Handing_98:
        LDR.W    R0,??DataTable14
        LDRB     R0,[R0, #+9]
        CMP      R0,#+2
        BNE.N    ??Sony_Data_Handing_99
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
        MOVS     R0,#+9
        STRB     R0,[SP, #+9]
        LDR.N    R0,??Sony_Data_Handing_4+0xC
        MOVS     R1,#+9
        STRB     R1,[R0, #+10]
??Sony_Data_Handing_99:
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+9
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
??Sony_Data_Handing_97:
        B.N      ??Sony_Data_Handing_39
??Sony_Data_Handing_16:
        LDRB     R0,[SP, #+9]
        MOV      R8,R0
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+16
        BCS.W    ??Sony_Data_Handing_39
??Sony_Data_Handing_100:
        LDR.N    R0,??Sony_Data_Handing_4+0xC
        LDRB     R1,[SP, #+9]
        STRB     R1,[R0, #+12]
        LDR.N    R0,??Sony_Data_Handing_4+0xC
        LDRB     R1,[R0, #+12]
        MOVS     R0,#+18
        BL       AT24C256C_EEPROM_Write
        MOVS     R0,#+66
        MOVS     R7,R0
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
        LDR.N    R0,??Sony_Data_Handing_4+0xC
        LDRB     R0,[R0, #+12]
        STRB     R0,[SP, #+9]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+9
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
        B.N      ??Sony_Data_Handing_39
??Sony_Data_Handing_17:
        LDR.N    R0,??Sony_Data_Handing_4+0xC
        LDRB     R1,[SP, #+9]
        STRB     R1,[R0, #+13]
        LDR.N    R0,??Sony_Data_Handing_4+0xC
        LDRB     R1,[R0, #+13]
        MOVS     R0,#+19
        BL       AT24C256C_EEPROM_Write
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
        MOVS     R0,#+0
        STRB     R0,[SP, #+9]
        LDR.N    R0,??Sony_Data_Handing_4+0xC
        LDRB     R0,[R0, #+13]
        CMP      R0,#+0
        BEQ.N    ??Sony_Data_Handing_101
        CMP      R0,#+1
        BEQ.N    ??Sony_Data_Handing_102
        B.N      ??Sony_Data_Handing_103
??Sony_Data_Handing_101:
        MOVS     R0,#+6
        MOVS     R7,R0
        MOVS     R0,#+3
        STRB     R0,[SP, #+8]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
        B.N      ??Sony_Data_Handing_104
??Sony_Data_Handing_102:
        MOVS     R0,#+6
        MOVS     R7,R0
        MOVS     R0,#+2
        STRB     R0,[SP, #+8]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
        B.N      ??Sony_Data_Handing_104
??Sony_Data_Handing_103:
        MOVS     R0,#+6
        MOVS     R7,R0
        MOVS     R0,#+2
        STRB     R0,[SP, #+8]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
        LDR.N    R0,??Sony_Data_Handing_4+0xC
        MOVS     R1,#+1
        STRB     R1,[R0, #+13]
??Sony_Data_Handing_104:
        B.N      ??Sony_Data_Handing_39
??Sony_Data_Handing_18:
        LDR.N    R0,??Sony_Data_Handing_4+0xC
        LDRB     R1,[SP, #+9]
        STRB     R1,[R0, #+14]
        LDR.N    R0,??Sony_Data_Handing_4+0xC
        LDRB     R1,[R0, #+14]
        MOVS     R0,#+20
        BL       AT24C256C_EEPROM_Write
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
        MOVS     R0,#+0
        STRB     R0,[SP, #+9]
        LDR.N    R0,??Sony_Data_Handing_4+0xC
        LDRB     R0,[R0, #+14]
        CMP      R0,#+0
        BEQ.N    ??Sony_Data_Handing_105
        CMP      R0,#+2
        BEQ.N    ??Sony_Data_Handing_106
        BCC.N    ??Sony_Data_Handing_107
        B.N      ??Sony_Data_Handing_108
        Nop      
        DATA
??Sony_Data_Handing_4:
        DC32     stSYS
        DC32     stUSART1
        DC32     stUART5
        DC32     stSONY
        THUMB
??Sony_Data_Handing_105:
        MOVS     R0,#+81
        MOVS     R7,R0
        MOVS     R0,#+3
        STRB     R0,[SP, #+8]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
        MOVS     R0,#+1
        MOVS     R7,R0
        MOVS     R0,#+2
        STRB     R0,[SP, #+8]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
        B.N      ??Sony_Data_Handing_108
??Sony_Data_Handing_107:
        MOVS     R0,#+81
        MOVS     R7,R0
        MOVS     R0,#+3
        STRB     R0,[SP, #+8]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
        MOVS     R0,#+1
        MOVS     R7,R0
        MOVS     R0,#+3
        STRB     R0,[SP, #+8]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
        B.N      ??Sony_Data_Handing_108
??Sony_Data_Handing_106:
        MOVS     R0,#+81
        MOVS     R7,R0
        MOVS     R0,#+2
        STRB     R0,[SP, #+8]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
??Sony_Data_Handing_108:
        B.N      ??Sony_Data_Handing_39
??Sony_Data_Handing_19:
        LDR.W    R0,??DataTable15
        LDRB     R1,[SP, #+9]
        STRB     R1,[R0, #+15]
        LDR.W    R0,??DataTable15
        LDRB     R1,[R0, #+15]
        MOVS     R0,#+21
        BL       AT24C256C_EEPROM_Write
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
        MOVS     R0,#+0
        STRB     R0,[SP, #+9]
        LDR.W    R0,??DataTable15
        LDRB     R0,[R0, #+15]
        CMP      R0,#+0
        BEQ.N    ??Sony_Data_Handing_109
        CMP      R0,#+1
        BEQ.N    ??Sony_Data_Handing_110
        B.N      ??Sony_Data_Handing_111
??Sony_Data_Handing_109:
        MOVS     R0,#+90
        MOVS     R7,R0
        MOVS     R0,#+3
        STRB     R0,[SP, #+8]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
        LDR.W    R0,??DataTable15
        LDRB     R0,[R0, #+10]
        CMP      R0,#+7
        BCS.N    ??Sony_Data_Handing_112
        MOVS     R0,#+57
        MOVS     R7,R0
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
        LDR.W    R0,??DataTable15
        MOVS     R1,#+0
        STRB     R1,[R0, #+10]
??Sony_Data_Handing_112:
        B.N      ??Sony_Data_Handing_113
??Sony_Data_Handing_110:
        MOVS     R0,#+90
        MOVS     R7,R0
        MOVS     R0,#+2
        STRB     R0,[SP, #+8]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
        B.N      ??Sony_Data_Handing_113
??Sony_Data_Handing_111:
??Sony_Data_Handing_113:
        B.N      ??Sony_Data_Handing_39
??Sony_Data_Handing_21:
        LDR.W    R0,??DataTable15
        LDRB     R1,[SP, #+9]
        STRB     R1,[R0, #+16]
        LDR.W    R0,??DataTable15
        LDRB     R1,[R0, #+16]
        MOVS     R0,#+22
        BL       AT24C256C_EEPROM_Write
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
        MOVS     R0,#+0
        STRB     R0,[SP, #+9]
        LDR.W    R0,??DataTable15
        LDRB     R0,[R0, #+16]
        CMP      R0,#+0
        BEQ.N    ??Sony_Data_Handing_114
        CMP      R0,#+1
        BEQ.N    ??Sony_Data_Handing_115
        B.N      ??Sony_Data_Handing_116
??Sony_Data_Handing_114:
        B.N      ??Sony_Data_Handing_117
??Sony_Data_Handing_115:
        B.N      ??Sony_Data_Handing_117
??Sony_Data_Handing_116:
??Sony_Data_Handing_117:
        B.N      ??Sony_Data_Handing_39
??Sony_Data_Handing_22:
        LDR.W    R0,??DataTable15
        LDRB     R1,[SP, #+9]
        STRB     R1,[R0, #+17]
        LDR.W    R0,??DataTable15
        LDRB     R1,[R0, #+17]
        MOVS     R0,#+23
        BL       AT24C256C_EEPROM_Write
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
        MOVS     R0,#+0
        STRB     R0,[SP, #+9]
        LDR.W    R0,??DataTable15
        LDRB     R0,[R0, #+17]
        CMP      R0,#+0
        BEQ.N    ??Sony_Data_Handing_118
        CMP      R0,#+1
        BEQ.N    ??Sony_Data_Handing_119
        B.N      ??Sony_Data_Handing_120
??Sony_Data_Handing_118:
        MOVS     R0,#+82
        MOVS     R7,R0
        MOVS     R0,#+3
        STRB     R0,[SP, #+8]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
        B.N      ??Sony_Data_Handing_121
??Sony_Data_Handing_119:
        MOVS     R0,#+82
        MOVS     R7,R0
        MOVS     R0,#+2
        STRB     R0,[SP, #+8]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
        B.N      ??Sony_Data_Handing_121
??Sony_Data_Handing_120:
??Sony_Data_Handing_121:
        B.N      ??Sony_Data_Handing_39
??Sony_Data_Handing_23:
        LDR.W    R0,??DataTable15
        LDRB     R1,[SP, #+9]
        STRB     R1,[R0, #+18]
        LDR.W    R0,??DataTable15
        LDRB     R1,[R0, #+18]
        MOVS     R0,#+24
        BL       AT24C256C_EEPROM_Write
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
        MOVS     R0,#+0
        STRB     R0,[SP, #+9]
        LDR.W    R0,??DataTable15
        LDRB     R0,[R0, #+18]
        CMP      R0,#+0
        BEQ.N    ??Sony_Data_Handing_122
        CMP      R0,#+1
        BEQ.N    ??Sony_Data_Handing_123
        B.N      ??Sony_Data_Handing_124
??Sony_Data_Handing_122:
        MOVS     R0,#+52
        MOVS     R7,R0
        MOVS     R0,#+3
        STRB     R0,[SP, #+8]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
        B.N      ??Sony_Data_Handing_125
??Sony_Data_Handing_123:
        MOVS     R0,#+52
        MOVS     R7,R0
        MOVS     R0,#+2
        STRB     R0,[SP, #+8]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
        B.N      ??Sony_Data_Handing_125
??Sony_Data_Handing_124:
??Sony_Data_Handing_125:
        B.N      ??Sony_Data_Handing_39
??Sony_Data_Handing_24:
        LDRB     R0,[SP, #+9]
        MOV      R8,R0
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+6
        BCS.W    ??Sony_Data_Handing_39
??Sony_Data_Handing_126:
        LDR.W    R0,??DataTable15
        LDRB     R1,[SP, #+9]
        STRB     R1,[R0, #+19]
        LDR.W    R0,??DataTable15
        LDRB     R1,[R0, #+19]
        MOVS     R0,#+25
        BL       AT24C256C_EEPROM_Write
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
        MOVS     R0,#+0
        STRB     R0,[SP, #+9]
        LDR.W    R0,??DataTable15
        LDRB     R0,[R0, #+19]
        CMP      R0,#+0
        BEQ.N    ??Sony_Data_Handing_127
        SUBS     R0,R0,#+1
        CMP      R0,#+4
        BLS.N    ??Sony_Data_Handing_128
        B.N      ??Sony_Data_Handing_129
??Sony_Data_Handing_127:
        MOVS     R0,#+83
        MOVS     R7,R0
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
        B.N      ??Sony_Data_Handing_130
??Sony_Data_Handing_128:
        MOVS     R0,#+83
        MOVS     R7,R0
        LDR.W    R0,??DataTable15
        LDRB     R0,[R0, #+19]
        STRB     R0,[SP, #+8]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
        B.N      ??Sony_Data_Handing_130
??Sony_Data_Handing_129:
??Sony_Data_Handing_130:
        B.N      ??Sony_Data_Handing_39
??Sony_Data_Handing_28:
        B.N      ??Sony_Data_Handing_39
??Sony_Data_Handing_20:
        LDRB     R0,[SP, #+9]
        MOV      R8,R0
        LDR.W    R0,??DataTable15
        LDRB     R1,[SP, #+9]
        STRB     R1,[R0, #+21]
        LDR.W    R0,??DataTable15
        LDRB     R1,[R0, #+21]
        MOVS     R0,#+47
        BL       AT24C256C_EEPROM_Write
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
        MOVS     R0,#+0
        STRB     R0,[SP, #+9]
        MOVS     R0,#+114
        MOVS     R7,R0
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
        LDR.W    R0,??DataTable15
        LDRB     R0,[R0, #+21]
        CMP      R0,#+1
        BEQ.N    ??Sony_Data_Handing_131
        CMP      R0,#+2
        BEQ.N    ??Sony_Data_Handing_132
        B.N      ??Sony_Data_Handing_133
??Sony_Data_Handing_131:
        MOVS     R0,#+7
        STRB     R0,[SP, #+9]
        B.N      ??Sony_Data_Handing_134
??Sony_Data_Handing_132:
        MOVS     R0,#+8
        STRB     R0,[SP, #+9]
        B.N      ??Sony_Data_Handing_134
??Sony_Data_Handing_133:
??Sony_Data_Handing_134:
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+8
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
        B.N      ??Sony_Data_Handing_39
??Sony_Data_Handing_27:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??Sony_Data_Handing_135
        MOVS     R0,#+71
        MOVS     R7,R0
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+48]
        MOV      R9,R0
        LSRS     R0,R9,#+8
        STRB     R0,[SP, #+8]
        MOV      R0,R9
        STRB     R0,[SP, #+9]
        MOVS     R0,#+5
        MOVS     R6,R0
        LDR.W    R0,??DataTable15_1
        MOVS     R1,#+1
        STRB     R1,[R0, #+7]
        B.N      ??Sony_Data_Handing_136
??Sony_Data_Handing_135:
??Sony_Data_Handing_136:
        B.N      ??Sony_Data_Handing_39
??Sony_Data_Handing_29:
??Sony_Data_Handing_39:
        LDR.W    R0,??DataTable15_1
        LDRB     R0,[R0, #+7]
        CMP      R0,#+0
        BEQ.N    ??Sony_Data_Handing_137
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        STR      R6,[SP, #+4]
        LDRB     R0,[SP, #+10]
        STR      R0,[SP, #+0]
        LDRB     R3,[SP, #+9]
        LDRB     R2,[SP, #+8]
        MOVS     R1,R7
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+160
        BL       USART1_Send_Data
        LDR.W    R0,??DataTable15_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+7]
??Sony_Data_Handing_137:
        LDR.W    R0,??DataTable15_2
        LDRB     R0,[R0, #+2]
        CMP      R0,#+0
        BEQ.N    ??Sony_Data_Handing_138
        MOVS     R0,#+17
        STR      R0,[SP, #+0]
        MOVS     R3,R6
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDRB     R2,[SP, #+9]
        LDRB     R1,[SP, #+8]
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
        LDR.W    R0,??DataTable15_2
        LDRB     R0,[R0, #+3]
        CMP      R0,#+0
        BNE.N    ??Sony_Data_Handing_139
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+4]
??Sony_Data_Handing_139:
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+2]
??Sony_Data_Handing_138:
        LDR.W    R0,??DataTable15_2
        LDRB     R0,[R0, #+4]
        CMP      R0,#+0
        BEQ.N    ??Sony_Data_Handing_140
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+4]
??Sony_Data_Handing_140:
        ADD      SP,SP,#+20
        POP      {R4-R9,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14:
        DC32     stINFO

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TSM_Data_Handing:
        PUSH     {R2,R4-R11,LR}
        SUB      SP,SP,#+24
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        MOVS     R7,#+0
        MOVS     R8,#+0
        MOVS     R9,#+0
        MOVS     R10,#+0
        MOVS     R11,#+0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,R4
        CMP      R0,#+1
        BEQ.N    ??TSM_Data_Handing_0
        CMP      R0,#+5
        BEQ.N    ??TSM_Data_Handing_1
        CMP      R0,#+170
        BNE.N    ??TSM_Data_Handing_2
??TSM_Data_Handing_3:
        LDR.W    R0,??DataTable15_3
        LDRB     R0,[R0, #+11]
        MOVS     R6,R0
        LDR.W    R0,??DataTable15_3
        LDRB     R0,[R0, #+12]
        MOVS     R7,R0
        LDR.W    R0,??DataTable15_3
        LDRB     R0,[R0, #+13]
        MOV      R8,R0
        LDR.W    R0,??DataTable15_3
        LDRB     R0,[R0, #+14]
        MOV      R9,R0
        B.N      ??TSM_Data_Handing_4
??TSM_Data_Handing_0:
        LDR.W    R0,??DataTable15_1
        LDRB     R0,[R0, #+135]
        MOVS     R6,R0
        LDR.W    R0,??DataTable15_1
        LDRB     R0,[R0, #+136]
        MOVS     R7,R0
        LDR.W    R0,??DataTable15_1
        LDRB     R0,[R0, #+137]
        MOV      R8,R0
        LDR.W    R0,??DataTable15_1
        LDRB     R0,[R0, #+138]
        MOV      R9,R0
        B.N      ??TSM_Data_Handing_4
??TSM_Data_Handing_1:
        LDR.W    R0,??DataTable15_4
        LDRB     R0,[R0, #+121]
        MOVS     R6,R0
        LDR.W    R0,??DataTable15_4
        LDRB     R0,[R0, #+122]
        MOVS     R7,R0
        LDR.W    R0,??DataTable15_4
        LDRB     R0,[R0, #+123]
        MOV      R8,R0
        LDR.W    R0,??DataTable15_4
        LDRB     R0,[R0, #+124]
        MOV      R9,R0
        B.N      ??TSM_Data_Handing_4
??TSM_Data_Handing_2:
??TSM_Data_Handing_4:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R0,R5
        CMP      R0,#+1
        BEQ.W    ??TSM_Data_Handing_5
        CMP      R0,#+2
        BEQ.W    ??TSM_Data_Handing_6
        CMP      R0,#+4
        BEQ.W    ??TSM_Data_Handing_7
        CMP      R0,#+5
        BEQ.W    ??TSM_Data_Handing_8
        CMP      R0,#+16
        BEQ.W    ??TSM_Data_Handing_9
        CMP      R0,#+17
        BEQ.W    ??TSM_Data_Handing_10
        CMP      R0,#+18
        BEQ.W    ??TSM_Data_Handing_11
        CMP      R0,#+19
        BEQ.W    ??TSM_Data_Handing_12
        CMP      R0,#+20
        BEQ.W    ??TSM_Data_Handing_13
        CMP      R0,#+21
        BEQ.W    ??TSM_Data_Handing_14
        CMP      R0,#+22
        BEQ.W    ??TSM_Data_Handing_15
        CMP      R0,#+23
        BEQ.W    ??TSM_Data_Handing_16
        CMP      R0,#+24
        BEQ.W    ??TSM_Data_Handing_17
        CMP      R0,#+25
        BEQ.W    ??TSM_Data_Handing_18
        CMP      R0,#+28
        BEQ.W    ??TSM_Data_Handing_19
        CMP      R0,#+32
        BEQ.W    ??TSM_Data_Handing_20
        CMP      R0,#+33
        BEQ.W    ??TSM_Data_Handing_21
        CMP      R0,#+34
        BEQ.W    ??TSM_Data_Handing_22
        CMP      R0,#+35
        BEQ.W    ??TSM_Data_Handing_23
        CMP      R0,#+38
        BEQ.W    ??TSM_Data_Handing_24
        CMP      R0,#+39
        BEQ.W    ??TSM_Data_Handing_25
        CMP      R0,#+40
        BEQ.W    ??TSM_Data_Handing_26
        CMP      R0,#+41
        BEQ.W    ??TSM_Data_Handing_27
        CMP      R0,#+42
        BEQ.W    ??TSM_Data_Handing_28
        CMP      R0,#+43
        BEQ.W    ??TSM_Data_Handing_29
        CMP      R0,#+44
        BEQ.W    ??TSM_Data_Handing_30
        CMP      R0,#+45
        BEQ.W    ??TSM_Data_Handing_31
        CMP      R0,#+48
        BEQ.W    ??TSM_Data_Handing_32
        CMP      R0,#+49
        BEQ.W    ??TSM_Data_Handing_33
        CMP      R0,#+50
        BEQ.W    ??TSM_Data_Handing_34
        CMP      R0,#+51
        BEQ.W    ??TSM_Data_Handing_35
        CMP      R0,#+52
        BEQ.W    ??TSM_Data_Handing_36
        CMP      R0,#+53
        BEQ.W    ??TSM_Data_Handing_37
        CMP      R0,#+54
        BEQ.W    ??TSM_Data_Handing_38
        CMP      R0,#+55
        BEQ.W    ??TSM_Data_Handing_39
        CMP      R0,#+56
        BEQ.W    ??TSM_Data_Handing_40
        CMP      R0,#+57
        BEQ.W    ??TSM_Data_Handing_41
        CMP      R0,#+58
        BEQ.W    ??TSM_Data_Handing_42
        CMP      R0,#+59
        BEQ.W    ??TSM_Data_Handing_43
        CMP      R0,#+60
        BEQ.W    ??TSM_Data_Handing_44
        CMP      R0,#+61
        BEQ.W    ??TSM_Data_Handing_45
        CMP      R0,#+62
        BEQ.W    ??TSM_Data_Handing_46
        CMP      R0,#+67
        BEQ.W    ??TSM_Data_Handing_47
        CMP      R0,#+68
        BEQ.W    ??TSM_Data_Handing_48
        CMP      R0,#+69
        BEQ.W    ??TSM_Data_Handing_49
        CMP      R0,#+70
        BEQ.W    ??TSM_Data_Handing_50
        CMP      R0,#+71
        BEQ.W    ??TSM_Data_Handing_51
        CMP      R0,#+85
        BEQ.W    ??TSM_Data_Handing_52
        CMP      R0,#+101
        BEQ.W    ??TSM_Data_Handing_53
        CMP      R0,#+102
        BEQ.W    ??TSM_Data_Handing_54
        CMP      R0,#+113
        BEQ.W    ??TSM_Data_Handing_55
        CMP      R0,#+118
        BEQ.W    ??TSM_Data_Handing_56
        CMP      R0,#+119
        BEQ.W    ??TSM_Data_Handing_57
        CMP      R0,#+120
        BEQ.W    ??TSM_Data_Handing_58
        CMP      R0,#+121
        BEQ.W    ??TSM_Data_Handing_59
        CMP      R0,#+128
        BEQ.W    ??TSM_Data_Handing_60
        CMP      R0,#+129
        BEQ.W    ??TSM_Data_Handing_61
        CMP      R0,#+130
        BEQ.W    ??TSM_Data_Handing_62
        CMP      R0,#+131
        BEQ.W    ??TSM_Data_Handing_63
        CMP      R0,#+132
        BEQ.W    ??TSM_Data_Handing_64
        CMP      R0,#+133
        BEQ.W    ??TSM_Data_Handing_65
        CMP      R0,#+134
        BEQ.W    ??TSM_Data_Handing_66
        CMP      R0,#+135
        BEQ.W    ??TSM_Data_Handing_67
        CMP      R0,#+136
        BEQ.W    ??TSM_Data_Handing_68
        CMP      R0,#+148
        BEQ.W    ??TSM_Data_Handing_69
        CMP      R0,#+149
        BEQ.W    ??TSM_Data_Handing_70
        CMP      R0,#+160
        BEQ.W    ??TSM_Data_Handing_71
        CMP      R0,#+240
        BEQ.W    ??TSM_Data_Handing_72
        CMP      R0,#+241
        BEQ.W    ??TSM_Data_Handing_73
        CMP      R0,#+242
        BEQ.W    ??TSM_Data_Handing_74
        CMP      R0,#+243
        BEQ.W    ??TSM_Data_Handing_75
        B.N      ??TSM_Data_Handing_76
??TSM_Data_Handing_5:
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_6:
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_7:
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_8:
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_10:
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_9:
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_11:
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_12:
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_13:
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_14:
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_15:
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_16:
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable15_5
        MOVS     R1,#+1
        STRB     R1,[R0, #+15]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_17:
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_18:
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_19:
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        CMP      R9,#+1
        BNE.N    ??TSM_Data_Handing_78
        MOVS     R0,#+128
        MOV      R9,R0
??TSM_Data_Handing_78:
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_20:
        LDR.W    R0,??DataTable15_6
        LDRB     R0,[R0, #+10]
        CMP      R0,#+0
        CMP      R0,#+1
        BHI.N    ??TSM_Data_Handing_79
??TSM_Data_Handing_80:
        LDR.W    R0,??DataTable15_6
        LDRB     R0,[R0, #+11]
        CMP      R0,#+1
        BNE.N    ??TSM_Data_Handing_81
        MOVS     R0,#+32
        MOVS     R6,R0
        MOVS     R0,#+7
        MOV      R8,R0
        B.N      ??TSM_Data_Handing_82
??TSM_Data_Handing_81:
        MOVS     R0,#+32
        MOVS     R6,R0
??TSM_Data_Handing_82:
        B.N      ??TSM_Data_Handing_83
??TSM_Data_Handing_79:
??TSM_Data_Handing_83:
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_21:
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable15_5
        MOVS     R1,#+1
        STRB     R1,[R0, #+14]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_22:
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_23:
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable15_5
        MOVS     R1,#+1
        STRB     R1,[R0, #+14]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_24:
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_25:
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_26:
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_27:
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_28:
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_29:
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_30:
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_31:
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_33:
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_34:
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_35:
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_36:
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_37:
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_38:
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_39:
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_40:
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_41:
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_47:
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_48:
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_49:
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_50:
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_51:
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_52:
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_53:
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_54:
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_56:
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_57:
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_58:
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_59:
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_71:
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_32:
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_42:
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_43:
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_44:
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_45:
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_46:
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_55:
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_60:
        LDR.W    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.N    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_61:
        LDR.N    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.N    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_62:
        LDR.N    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.N    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_63:
        LDR.N    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.N    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_64:
        LDR.N    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.N    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_65:
        LDR.N    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.N    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        LDR.N    R0,??DataTable15_5
        MOVS     R1,#+1
        STRB     R1,[R0, #+14]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_66:
        LDR.N    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.N    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_67:
        LDR.N    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.N    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        LDR.N    R0,??DataTable15_5
        STRB     R7,[R0, #+48]
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        LSLS     R0,R8,#+8
        MOV      R11,R0
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        ORRS     R11,R9,R11
        LDR.N    R0,??DataTable15_5
        STR      R11,[R0, #+52]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_68:
        LDR.N    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.N    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_69:
        LDR.N    R0,??DataTable15_5
        LDR      R0,[R0, #+24]
        MOV      R11,R0
        LSRS     R0,R11,#+8
        STRB     R0,[SP, #+8]
        MOV      R0,R11
        STRB     R0,[SP, #+9]
        LDR.N    R0,??DataTable15_1
        MOVS     R1,#+176
        STRB     R1,[R0, #+31]
        LDR.N    R0,??DataTable15_1
        MOVS     R1,#+11
        STRB     R1,[R0, #+32]
        LDR.N    R0,??DataTable15_1
        MOVS     R1,#+5
        STRB     R1,[R0, #+33]
        LDR.N    R0,??DataTable15_1
        MOVS     R1,#+1
        STRB     R1,[R0, #+34]
        LDR.N    R0,??DataTable15_1
        MOVS     R1,#+148
        STRB     R1,[R0, #+35]
        LDR.N    R0,??DataTable15_1
        LDRB     R1,[SP, #+8]
        STRB     R1,[R0, #+36]
        LDR.N    R0,??DataTable15_1
        LDRB     R1,[SP, #+9]
        STRB     R1,[R0, #+37]
        LDR.N    R0,??DataTable15_1
        LDRB     R1,[SP, #+10]
        STRB     R1,[R0, #+38]
        LDR.N    R0,??DataTable15_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+39]
        LDR.N    R0,??DataTable15_1
        LDRB     R0,[R0, #+34]
        LDR.N    R1,??DataTable15_1
        LDRB     R1,[R1, #+35]
        ADDS     R0,R1,R0
        LDR.N    R1,??DataTable15_1
        LDRB     R1,[R1, #+36]
        ADDS     R0,R1,R0
        LDR.N    R1,??DataTable15_1
        LDRB     R1,[R1, #+37]
        ADDS     R0,R1,R0
        LDR.N    R1,??DataTable15_1
        LDRB     R1,[R1, #+38]
        ADDS     R0,R1,R0
        LDR.N    R1,??DataTable15_1
        STRB     R0,[R1, #+39]
        LDR.N    R0,??DataTable15_1
        MOVS     R1,#+191
        STRB     R1,[R0, #+40]
        LDR.N    R0,??DataTable15_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        LDR.N    R0,??DataTable15_1
        MOVS     R1,#+10
        STRB     R1,[R0, #+1]
        LDR.N    R0,??DataTable15_1
        LDRB     R0,[R0, #+0]
        ADDS     R1,R0,#+1
        LDR.N    R2,??DataTable15_1
        STRB     R1,[R2, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable15_1
        ADDS     R0,R0,R1
        LDRB     R1,[R0, #+31]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.N    R0,??DataTable15_7  ;; 0x40013800
        BL       USART_SendData
        MOVS     R0,#+1
        BL       Delay_1ms
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_70:
        LDR.N    R0,??DataTable15_5
        LDR      R0,[R0, #+16]
        MOV      R11,R0
        LSRS     R0,R11,#+8
        STRB     R0,[SP, #+8]
        MOV      R0,R11
        STRB     R0,[SP, #+9]
        LDR.N    R0,??DataTable15_1
        MOVS     R1,#+176
        STRB     R1,[R0, #+31]
        LDR.N    R0,??DataTable15_1
        MOVS     R1,#+11
        STRB     R1,[R0, #+32]
        LDR.N    R0,??DataTable15_1
        MOVS     R1,#+5
        STRB     R1,[R0, #+33]
        LDR.N    R0,??DataTable15_1
        MOVS     R1,#+1
        STRB     R1,[R0, #+34]
        LDR.N    R0,??DataTable15_1
        MOVS     R1,#+149
        STRB     R1,[R0, #+35]
        LDR.N    R0,??DataTable15_1
        LDRB     R1,[SP, #+8]
        STRB     R1,[R0, #+36]
        LDR.N    R0,??DataTable15_1
        LDRB     R1,[SP, #+9]
        STRB     R1,[R0, #+37]
        LDR.N    R0,??DataTable15_1
        LDRB     R1,[SP, #+10]
        STRB     R1,[R0, #+38]
        LDR.N    R0,??DataTable15_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+39]
        LDR.N    R0,??DataTable15_1
        LDRB     R0,[R0, #+34]
        LDR.N    R1,??DataTable15_1
        LDRB     R1,[R1, #+35]
        ADDS     R0,R1,R0
        LDR.N    R1,??DataTable15_1
        LDRB     R1,[R1, #+36]
        ADDS     R0,R1,R0
        LDR.N    R1,??DataTable15_1
        LDRB     R1,[R1, #+37]
        ADDS     R0,R1,R0
        LDR.N    R1,??DataTable15_1
        LDRB     R1,[R1, #+38]
        ADDS     R0,R1,R0
        LDR.N    R1,??DataTable15_1
        STRB     R0,[R1, #+39]
        LDR.N    R0,??DataTable15_1
        MOVS     R1,#+191
        STRB     R1,[R0, #+40]
        LDR.N    R0,??DataTable15_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        LDR.N    R0,??DataTable15_1
        MOVS     R1,#+10
        STRB     R1,[R0, #+1]
        LDR.N    R0,??DataTable15_1
        LDRB     R0,[R0, #+0]
        ADDS     R1,R0,#+1
        LDR.N    R2,??DataTable15_1
        STRB     R1,[R2, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable15_1
        ADDS     R0,R0,R1
        LDRB     R1,[R0, #+31]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.N    R0,??DataTable15_7  ;; 0x40013800
        BL       USART_SendData
        MOVS     R0,#+1
        BL       Delay_1ms
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_72:
        LDR.N    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.N    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_73:
        LDR.N    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.N    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_74:
        LDR.N    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.N    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_75:
        LDR.N    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TSM_Data_Handing_77
??TSM_Data_Handing_76:
        LDR.N    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
??TSM_Data_Handing_77:
        LDR.N    R0,??DataTable15_2
        STRB     R6,[R0, #+7]
        LDR.N    R0,??DataTable15_2
        STRB     R7,[R0, #+8]
        LDR.N    R0,??DataTable15_2
        STRB     R8,[R0, #+9]
        LDR.N    R0,??DataTable15_2
        STRB     R9,[R0, #+10]
        LDR.N    R0,??DataTable15_2
        LDRB     R0,[R0, #+2]
        CMP      R0,#+0
        BEQ.N    ??TSM_Data_Handing_84
        MOVS     R0,#+17
        STR      R0,[SP, #+4]
        MOVS     R0,#+6
        STR      R0,[SP, #+0]
        MOV      R3,R9
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOV      R2,R8
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R7
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_TSM_Data
        LDR.N    R0,??DataTable15_5
        LDRB     R0,[R0, #+14]
        CMP      R0,#+1
        BNE.N    ??TSM_Data_Handing_85
        LDR.N    R0,??DataTable15_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+14]
        LDR.N    R0,??DataTable15_2
        MOVS     R1,#+133
        STRB     R1,[R0, #+17]
        MOVS     R0,#+17
        STR      R0,[SP, #+4]
        MOVS     R0,#+6
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,#+133
        BL       Send_TSM_Data
??TSM_Data_Handing_85:
        LDR.N    R0,??DataTable15_5
        LDRB     R0,[R0, #+15]
        CMP      R0,#+1
        BNE.N    ??TSM_Data_Handing_86
        LDR.N    R0,??DataTable15_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+15]
        LDR.N    R0,??DataTable15_2
        MOVS     R1,#+132
        STRB     R1,[R0, #+17]
        MOVS     R0,#+17
        STR      R0,[SP, #+4]
        MOVS     R0,#+6
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,#+132
        BL       Send_TSM_Data
??TSM_Data_Handing_86:
        LDR.N    R0,??DataTable15_2
        LDRB     R0,[R0, #+3]
        CMP      R0,#+0
        BNE.N    ??TSM_Data_Handing_87
        LDR.N    R0,??DataTable15_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+4]
??TSM_Data_Handing_87:
        LDR.N    R0,??DataTable15_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+2]
??TSM_Data_Handing_84:
        LDR.N    R0,??DataTable15_2
        LDRB     R0,[R0, #+4]
        CMP      R0,#+0
        BEQ.N    ??TSM_Data_Handing_88
        LDR.N    R0,??DataTable15_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+4]
??TSM_Data_Handing_88:
        ADD      SP,SP,#+28
        POP      {R4-R11,PC}      ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15:
        DC32     stSONY

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_1:
        DC32     stUSART1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_2:
        DC32     stUART4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_3:
        DC32     stSYS

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_4:
        DC32     stUART5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_5:
        DC32     stTSM

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_6:
        DC32     stINFO

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_7:
        DC32     0x40013800

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TCM_Data_Handing:
        PUSH     {R0-R2,R4-R11,LR}
        SUB      SP,SP,#+40
        MOVS     R4,#+0
        MOVS     R0,#+6
        STRB     R0,[SP, #+34]
        MOVS     R0,#+0
        STRB     R0,[SP, #+33]
        MOVS     R0,#+0
        STRB     R0,[SP, #+32]
        MOVS     R5,#+0
        MOVS     R6,#+0
        MOVS     R7,#+0
        MOVS     R8,#+0
        MOVS     R9,#+0
        MOVS     R10,#+0
        MOVS     R11,#+0
        MOVS     R0,#+0
        STRB     R0,[SP, #+35]
        MOVS     R0,#+0
        STR      R0,[SP, #+36]
        LDRB     R0,[SP, #+40]
        CMP      R0,#+1
        BEQ.N    ??TCM_Data_Handing_0
        CMP      R0,#+5
        BEQ.N    ??TCM_Data_Handing_1
        CMP      R0,#+170
        BNE.W    ??TCM_Data_Handing_2
??TCM_Data_Handing_3:
        LDR.W    R0,??DataTable17
        LDRB     R0,[R0, #+11]
        MOVS     R4,R0
        LDR.W    R0,??DataTable17
        LDRB     R0,[R0, #+12]
        STRB     R0,[SP, #+33]
        LDR.W    R0,??DataTable17
        LDRB     R0,[R0, #+13]
        STRB     R0,[SP, #+32]
        LDR.W    R0,??DataTable17
        LDRB     R0,[R0, #+14]
        MOVS     R5,R0
        LDR.W    R0,??DataTable17
        LDRB     R0,[R0, #+15]
        MOVS     R6,R0
        LDR.W    R0,??DataTable17
        LDRB     R0,[R0, #+16]
        MOVS     R7,R0
        LDR.W    R0,??DataTable17
        LDRB     R0,[R0, #+17]
        MOV      R8,R0
        LDR.W    R0,??DataTable17
        LDRB     R0,[R0, #+18]
        MOV      R9,R0
        LDR.W    R0,??DataTable17
        LDRB     R0,[R0, #+19]
        MOV      R10,R0
        LDR.W    R0,??DataTable17
        LDRB     R0,[R0, #+20]
        MOV      R11,R0
        B.N      ??TCM_Data_Handing_4
??TCM_Data_Handing_0:
        LDR.W    R0,??DataTable17_1
        LDRB     R0,[R0, #+135]
        MOVS     R4,R0
        LDR.W    R0,??DataTable17_1
        LDRB     R0,[R0, #+136]
        STRB     R0,[SP, #+33]
        LDR.W    R0,??DataTable17_1
        LDRB     R0,[R0, #+137]
        STRB     R0,[SP, #+32]
        LDR.W    R0,??DataTable17_1
        LDRB     R0,[R0, #+138]
        MOVS     R5,R0
        LDR.W    R0,??DataTable17_1
        LDRB     R0,[R0, #+139]
        MOVS     R6,R0
        LDR.W    R0,??DataTable17_1
        LDRB     R0,[R0, #+140]
        MOVS     R7,R0
        LDR.W    R0,??DataTable17_1
        LDRB     R0,[R0, #+141]
        MOV      R8,R0
        LDR.W    R0,??DataTable17_1
        LDRB     R0,[R0, #+142]
        MOV      R9,R0
        LDR.W    R0,??DataTable17_1
        LDRB     R0,[R0, #+143]
        MOV      R10,R0
        LDR.W    R0,??DataTable17_1
        LDRB     R0,[R0, #+144]
        MOV      R11,R0
        B.N      ??TCM_Data_Handing_4
??TCM_Data_Handing_1:
        LDR.W    R0,??DataTable17_2
        LDRB     R0,[R0, #+121]
        MOVS     R4,R0
        LDR.W    R0,??DataTable17_2
        LDRB     R0,[R0, #+122]
        STRB     R0,[SP, #+33]
        LDR.W    R0,??DataTable17_2
        LDRB     R0,[R0, #+123]
        STRB     R0,[SP, #+32]
        LDR.W    R0,??DataTable17_2
        LDRB     R0,[R0, #+124]
        MOVS     R5,R0
        LDR.W    R0,??DataTable17_2
        LDRB     R0,[R0, #+125]
        MOVS     R6,R0
        LDR.W    R0,??DataTable17_2
        LDRB     R0,[R0, #+126]
        MOVS     R7,R0
        LDR.W    R0,??DataTable17_2
        LDRB     R0,[R0, #+127]
        MOV      R8,R0
        LDR.W    R0,??DataTable17_1
        LDRB     R0,[R0, #+142]
        MOV      R9,R0
        LDR.W    R0,??DataTable17_1
        LDRB     R0,[R0, #+143]
        MOV      R10,R0
        LDR.W    R0,??DataTable17_1
        LDRB     R0,[R0, #+144]
        MOV      R11,R0
        B.N      ??TCM_Data_Handing_4
??TCM_Data_Handing_2:
??TCM_Data_Handing_4:
        LDRB     R0,[SP, #+44]
        CMP      R0,#+1
        BEQ.W    ??TCM_Data_Handing_5
        CMP      R0,#+2
        BEQ.W    ??TCM_Data_Handing_6
        CMP      R0,#+4
        BEQ.W    ??TCM_Data_Handing_7
        CMP      R0,#+16
        BEQ.W    ??TCM_Data_Handing_8
        CMP      R0,#+17
        BEQ.W    ??TCM_Data_Handing_9
        CMP      R0,#+18
        BEQ.W    ??TCM_Data_Handing_10
        CMP      R0,#+19
        BEQ.W    ??TCM_Data_Handing_11
        CMP      R0,#+20
        BEQ.W    ??TCM_Data_Handing_12
        CMP      R0,#+21
        BEQ.W    ??TCM_Data_Handing_13
        CMP      R0,#+22
        BEQ.W    ??TCM_Data_Handing_14
        CMP      R0,#+23
        BEQ.W    ??TCM_Data_Handing_15
        CMP      R0,#+24
        BEQ.W    ??TCM_Data_Handing_16
        CMP      R0,#+25
        BEQ.W    ??TCM_Data_Handing_17
        CMP      R0,#+26
        BEQ.W    ??TCM_Data_Handing_18
        CMP      R0,#+28
        BEQ.W    ??TCM_Data_Handing_19
        CMP      R0,#+32
        BEQ.W    ??TCM_Data_Handing_20
        CMP      R0,#+33
        BEQ.W    ??TCM_Data_Handing_21
        CMP      R0,#+34
        BEQ.W    ??TCM_Data_Handing_22
        CMP      R0,#+35
        BEQ.W    ??TCM_Data_Handing_23
        CMP      R0,#+38
        BEQ.W    ??TCM_Data_Handing_24
        CMP      R0,#+39
        BEQ.W    ??TCM_Data_Handing_25
        CMP      R0,#+41
        BEQ.W    ??TCM_Data_Handing_26
        CMP      R0,#+42
        BEQ.W    ??TCM_Data_Handing_27
        CMP      R0,#+43
        BEQ.W    ??TCM_Data_Handing_28
        CMP      R0,#+44
        BEQ.W    ??TCM_Data_Handing_29
        CMP      R0,#+45
        BEQ.W    ??TCM_Data_Handing_30
        CMP      R0,#+46
        BEQ.W    ??TCM_Data_Handing_31
        CMP      R0,#+47
        BEQ.W    ??TCM_Data_Handing_32
        CMP      R0,#+48
        BEQ.W    ??TCM_Data_Handing_33
        CMP      R0,#+49
        BEQ.W    ??TCM_Data_Handing_34
        CMP      R0,#+50
        BEQ.W    ??TCM_Data_Handing_35
        CMP      R0,#+53
        BEQ.W    ??TCM_Data_Handing_36
        CMP      R0,#+54
        BEQ.W    ??TCM_Data_Handing_37
        CMP      R0,#+64
        BEQ.W    ??TCM_Data_Handing_38
        CMP      R0,#+65
        BEQ.W    ??TCM_Data_Handing_39
        CMP      R0,#+66
        BEQ.W    ??TCM_Data_Handing_40
        CMP      R0,#+67
        BEQ.W    ??TCM_Data_Handing_41
        CMP      R0,#+68
        BEQ.W    ??TCM_Data_Handing_42
        CMP      R0,#+69
        BEQ.W    ??TCM_Data_Handing_43
        CMP      R0,#+70
        BEQ.W    ??TCM_Data_Handing_44
        CMP      R0,#+71
        BEQ.W    ??TCM_Data_Handing_45
        CMP      R0,#+72
        BEQ.W    ??TCM_Data_Handing_46
        CMP      R0,#+73
        BEQ.W    ??TCM_Data_Handing_47
        CMP      R0,#+85
        BEQ.W    ??TCM_Data_Handing_48
        CMP      R0,#+101
        BEQ.W    ??TCM_Data_Handing_49
        CMP      R0,#+102
        BEQ.W    ??TCM_Data_Handing_50
        CMP      R0,#+121
        BEQ.W    ??TCM_Data_Handing_51
        CMP      R0,#+128
        BEQ.W    ??TCM_Data_Handing_52
        CMP      R0,#+130
        BEQ.W    ??TCM_Data_Handing_53
        CMP      R0,#+149
        BEQ.W    ??TCM_Data_Handing_54
        CMP      R0,#+150
        BEQ.W    ??TCM_Data_Handing_55
        CMP      R0,#+152
        BEQ.W    ??TCM_Data_Handing_56
        CMP      R0,#+160
        BEQ.W    ??TCM_Data_Handing_57
        CMP      R0,#+161
        BEQ.W    ??TCM_Data_Handing_58
        CMP      R0,#+162
        BEQ.W    ??TCM_Data_Handing_59
        CMP      R0,#+163
        BEQ.W    ??TCM_Data_Handing_60
        CMP      R0,#+164
        BEQ.W    ??TCM_Data_Handing_61
        CMP      R0,#+165
        BEQ.W    ??TCM_Data_Handing_62
        CMP      R0,#+166
        BEQ.W    ??TCM_Data_Handing_63
        CMP      R0,#+167
        BEQ.W    ??TCM_Data_Handing_64
        CMP      R0,#+168
        BEQ.W    ??TCM_Data_Handing_65
        CMP      R0,#+176
        BEQ.W    ??TCM_Data_Handing_66
        CMP      R0,#+177
        BEQ.W    ??TCM_Data_Handing_67
        CMP      R0,#+178
        BEQ.W    ??TCM_Data_Handing_68
        CMP      R0,#+179
        BEQ.W    ??TCM_Data_Handing_69
        CMP      R0,#+180
        BEQ.W    ??TCM_Data_Handing_70
        CMP      R0,#+181
        BEQ.W    ??TCM_Data_Handing_71
        CMP      R0,#+182
        BEQ.W    ??TCM_Data_Handing_72
        CMP      R0,#+183
        BEQ.W    ??TCM_Data_Handing_73
        CMP      R0,#+184
        BEQ.W    ??TCM_Data_Handing_74
        CMP      R0,#+185
        BEQ.W    ??TCM_Data_Handing_75
        CMP      R0,#+186
        BEQ.W    ??TCM_Data_Handing_76
        CMP      R0,#+187
        BEQ.W    ??TCM_Data_Handing_77
        CMP      R0,#+188
        BEQ.W    ??TCM_Data_Handing_78
        CMP      R0,#+189
        BEQ.W    ??TCM_Data_Handing_79
        CMP      R0,#+190
        BEQ.W    ??TCM_Data_Handing_80
        CMP      R0,#+191
        BEQ.W    ??TCM_Data_Handing_81
        CMP      R0,#+192
        BEQ.W    ??TCM_Data_Handing_82
        CMP      R0,#+193
        BEQ.W    ??TCM_Data_Handing_83
        CMP      R0,#+194
        BEQ.W    ??TCM_Data_Handing_84
        CMP      R0,#+195
        BEQ.W    ??TCM_Data_Handing_85
        CMP      R0,#+196
        BEQ.W    ??TCM_Data_Handing_86
        CMP      R0,#+197
        BEQ.W    ??TCM_Data_Handing_87
        CMP      R0,#+198
        BEQ.W    ??TCM_Data_Handing_88
        CMP      R0,#+199
        BEQ.W    ??TCM_Data_Handing_89
        CMP      R0,#+200
        BEQ.W    ??TCM_Data_Handing_90
        CMP      R0,#+201
        BEQ.W    ??TCM_Data_Handing_91
        CMP      R0,#+202
        BEQ.W    ??TCM_Data_Handing_92
        CMP      R0,#+203
        BEQ.W    ??TCM_Data_Handing_93
        CMP      R0,#+206
        BEQ.W    ??TCM_Data_Handing_94
        CMP      R0,#+208
        BEQ.W    ??TCM_Data_Handing_95
        CMP      R0,#+209
        BEQ.W    ??TCM_Data_Handing_96
        CMP      R0,#+210
        BEQ.W    ??TCM_Data_Handing_97
        CMP      R0,#+213
        BEQ.W    ??TCM_Data_Handing_98
        CMP      R0,#+240
        BEQ.W    ??TCM_Data_Handing_99
        CMP      R0,#+241
        BEQ.W    ??TCM_Data_Handing_100
        CMP      R0,#+242
        BEQ.W    ??TCM_Data_Handing_101
        CMP      R0,#+243
        BEQ.W    ??TCM_Data_Handing_102
        CMP      R0,#+244
        BEQ.W    ??TCM_Data_Handing_103
        CMP      R0,#+248
        BEQ.W    ??TCM_Data_Handing_104
        CMP      R0,#+249
        BEQ.W    ??TCM_Data_Handing_105
        CMP      R0,#+250
        BEQ.W    ??TCM_Data_Handing_106
        B.N      ??TCM_Data_Handing_107
??TCM_Data_Handing_5:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_6:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_7:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_8:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_9:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_10:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_11:
        MOVS     R0,#+8
        STRB     R0,[SP, #+34]
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_12:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_13:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_14:
        MOVS     R0,#+24
        MOVS     R4,R0
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_15:
        MOVS     R0,#+162
        MOVS     R4,R0
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_16:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_17:
        MOVS     R0,#+50
        MOVS     R4,R0
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_18:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_19:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_20:
        MOVS     R0,#+7
        STRB     R0,[SP, #+32]
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_21:
        MOVS     R0,#+8
        STRB     R0,[SP, #+34]
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_22:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_23:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_24:
        LDRB     R0,[SP, #+40]
        CMP      R0,#+1
        BEQ.N    ??TCM_Data_Handing_109
        CMP      R0,#+5
        BEQ.N    ??TCM_Data_Handing_110
        CMP      R0,#+170
        BNE.W    ??TCM_Data_Handing_111
??TCM_Data_Handing_112:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_111
??TCM_Data_Handing_109:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_111
??TCM_Data_Handing_110:
        LDRB     R0,[SP, #+33]
        CMP      R0,#+0
        BEQ.N    ??TCM_Data_Handing_113
        CMP      R0,#+2
        BEQ.N    ??TCM_Data_Handing_114
        BCC.N    ??TCM_Data_Handing_115
        B.N      ??TCM_Data_Handing_116
??TCM_Data_Handing_113:
        MOVS     R0,#+15
        STR      R0,[SP, #+28]
        MOVS     R0,#+8
        STR      R0,[SP, #+24]
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
        MOVS     R0,#+0
        STR      R0,[SP, #+16]
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,#+3
        MOVS     R0,#+33
        BL       Send_TCM_Data
        LDR.W    R0,??DataTable18_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        B.N      ??TCM_Data_Handing_117
??TCM_Data_Handing_115:
        LDR.W    R0,??DataTable18_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??TCM_Data_Handing_118
        MOVS     R0,#+15
        STR      R0,[SP, #+28]
        MOVS     R0,#+8
        STR      R0,[SP, #+24]
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
        MOVS     R0,#+0
        STR      R0,[SP, #+16]
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,#+33
        BL       Send_TCM_Data
??TCM_Data_Handing_118:
        MOVS     R0,#+15
        STR      R0,[SP, #+28]
        MOVS     R0,#+8
        STR      R0,[SP, #+24]
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
        MOVS     R0,#+0
        STR      R0,[SP, #+16]
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,#+1
        MOVS     R0,#+38
        BL       Send_TCM_Data
        LDR.W    R0,??DataTable18_1
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
        B.N      ??TCM_Data_Handing_117
??TCM_Data_Handing_114:
        LDR.W    R0,??DataTable18_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??TCM_Data_Handing_119
        MOVS     R0,#+15
        STR      R0,[SP, #+28]
        MOVS     R0,#+8
        STR      R0,[SP, #+24]
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
        MOVS     R0,#+0
        STR      R0,[SP, #+16]
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,#+33
        BL       Send_TCM_Data
??TCM_Data_Handing_119:
        MOVS     R0,#+15
        STR      R0,[SP, #+28]
        MOVS     R0,#+8
        STR      R0,[SP, #+24]
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
        MOVS     R0,#+0
        STR      R0,[SP, #+16]
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,#+2
        MOVS     R0,#+38
        BL       Send_TCM_Data
        LDR.W    R0,??DataTable18_1
        MOVS     R1,#+2
        STRB     R1,[R0, #+0]
        B.N      ??TCM_Data_Handing_117
??TCM_Data_Handing_116:
??TCM_Data_Handing_117:
??TCM_Data_Handing_111:
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_25:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_26:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_27:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_28:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_29:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_30:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_31:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_32:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_34:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_35:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_36:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_37:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_38:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_39:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_40:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_41:
        MOVS     R0,#+0
        MOVS     R5,R0
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_42:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_43:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_44:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_45:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_48:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_49:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_50:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_51:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_57:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_58:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_59:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_60:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_61:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_62:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_63:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_64:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_65:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_100:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_101:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_102:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_103:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_54:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_55:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_56:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_46:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_47:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_33:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_52:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_53:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_66:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_67:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_68:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_69:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_70:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_71:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_72:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_73:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_74:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_75:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_76:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_77:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_78:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_79:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_80:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_81:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_82:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_83:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_84:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_85:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_86:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_87:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_88:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_89:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_90:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_91:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_92:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_93:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_94:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_95:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_96:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_97:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_98:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable18
        MOVS     R1,#+213
        STRB     R1,[R0, #+17]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_99:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_106:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_104:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_105:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??TCM_Data_Handing_108
??TCM_Data_Handing_107:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
??TCM_Data_Handing_108:
        LDR.W    R0,??DataTable18
        STRB     R4,[R0, #+7]
        LDR.W    R0,??DataTable18
        LDRB     R1,[SP, #+33]
        STRB     R1,[R0, #+8]
        LDR.W    R0,??DataTable18
        LDRB     R1,[SP, #+32]
        STRB     R1,[R0, #+9]
        LDR.W    R0,??DataTable18
        STRB     R5,[R0, #+10]
        LDR.W    R0,??DataTable18
        STRB     R6,[R0, #+11]
        LDR.W    R0,??DataTable18
        STRB     R7,[R0, #+12]
        LDR.W    R0,??DataTable18
        STRB     R8,[R0, #+13]
        LDR.W    R0,??DataTable18
        STRB     R9,[R0, #+14]
        LDR.W    R0,??DataTable18
        STRB     R10,[R0, #+15]
        LDR.W    R0,??DataTable18
        STRB     R11,[R0, #+16]
        LDR.W    R0,??DataTable18
        LDRB     R0,[R0, #+2]
        CMP      R0,#+0
        BEQ.W    ??TCM_Data_Handing_120
        LDRB     R0,[SP, #+34]
        CMP      R0,#+6
        BEQ.N    ??TCM_Data_Handing_121
        CMP      R0,#+8
        BEQ.N    ??TCM_Data_Handing_122
        CMP      R0,#+12
        BEQ.N    ??TCM_Data_Handing_123
        B.N      ??TCM_Data_Handing_124
??TCM_Data_Handing_121:
        MOVS     R0,#+15
        STR      R0,[SP, #+28]
        MOVS     R0,#+6
        STR      R0,[SP, #+24]
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        STR      R11,[SP, #+20]
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        STR      R10,[SP, #+16]
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        STR      R9,[SP, #+12]
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        STR      R8,[SP, #+8]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        STR      R7,[SP, #+4]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        STR      R6,[SP, #+0]
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDRB     R2,[SP, #+32]
        LDRB     R1,[SP, #+33]
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_TCM_Data
        B.N      ??TCM_Data_Handing_124
??TCM_Data_Handing_122:
        MOVS     R0,#+15
        STR      R0,[SP, #+28]
        MOVS     R0,#+8
        STR      R0,[SP, #+24]
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        STR      R11,[SP, #+20]
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        STR      R10,[SP, #+16]
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        STR      R9,[SP, #+12]
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        STR      R8,[SP, #+8]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        STR      R7,[SP, #+4]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        STR      R6,[SP, #+0]
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDRB     R2,[SP, #+32]
        LDRB     R1,[SP, #+33]
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_TCM_Data
        B.N      ??TCM_Data_Handing_124
??TCM_Data_Handing_123:
        MOVS     R0,#+15
        STR      R0,[SP, #+28]
        MOVS     R0,#+12
        STR      R0,[SP, #+24]
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        STR      R11,[SP, #+20]
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        STR      R10,[SP, #+16]
        UXTB     R9,R9            ;; ZeroExt  R9,R9,#+24,#+24
        STR      R9,[SP, #+12]
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        STR      R8,[SP, #+8]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        STR      R7,[SP, #+4]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        STR      R6,[SP, #+0]
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        LDRB     R2,[SP, #+32]
        LDRB     R1,[SP, #+33]
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_TCM_Data
??TCM_Data_Handing_124:
        LDR.W    R0,??DataTable20
        LDRB     R0,[R0, #+14]
        CMP      R0,#+1
        BNE.N    ??TCM_Data_Handing_125
        LDR.W    R0,??DataTable20
        MOVS     R1,#+0
        STRB     R1,[R0, #+14]
        LDR.W    R0,??DataTable18
        MOVS     R1,#+213
        STRB     R1,[R0, #+17]
        MOVS     R0,#+15
        STR      R0,[SP, #+28]
        MOVS     R0,#+6
        STR      R0,[SP, #+24]
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
        MOVS     R0,#+0
        STR      R0,[SP, #+16]
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,#+213
        BL       Send_TCM_Data
??TCM_Data_Handing_125:
        LDR.W    R0,??DataTable20
        LDRB     R0,[R0, #+15]
        CMP      R0,#+1
        BNE.N    ??TCM_Data_Handing_126
        LDR.W    R0,??DataTable20
        MOVS     R1,#+0
        STRB     R1,[R0, #+15]
        LDR.W    R0,??DataTable18
        MOVS     R1,#+191
        STRB     R1,[R0, #+17]
        MOVS     R0,#+15
        STR      R0,[SP, #+28]
        MOVS     R0,#+6
        STR      R0,[SP, #+24]
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
        MOVS     R0,#+0
        STR      R0,[SP, #+16]
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,#+191
        BL       Send_TCM_Data
??TCM_Data_Handing_126:
        LDR.W    R0,??DataTable18
        LDRB     R0,[R0, #+3]
        CMP      R0,#+0
        BNE.N    ??TCM_Data_Handing_127
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+4]
??TCM_Data_Handing_127:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+0
        STRB     R1,[R0, #+2]
??TCM_Data_Handing_120:
        LDR.W    R0,??DataTable18
        LDRB     R0,[R0, #+4]
        CMP      R0,#+0
        BEQ.N    ??TCM_Data_Handing_128
        LDR.W    R0,??DataTable18
        MOVS     R1,#+0
        STRB     R1,[R0, #+4]
??TCM_Data_Handing_128:
        ADD      SP,SP,#+52
        POP      {R4-R11,PC}      ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
PTZ_Data_Handing:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        ADDS     R7,R5,#+5
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,R4
        CMP      R0,#+16
        BEQ.N    ??PTZ_Data_Handing_0
        CMP      R0,#+17
        BEQ.N    ??PTZ_Data_Handing_1
        CMP      R0,#+241
        BEQ.N    ??PTZ_Data_Handing_2
        B.N      ??PTZ_Data_Handing_3
??PTZ_Data_Handing_0:
        LDR.N    R0,??DataTable17_1
        MOVS     R1,#+1
        STRB     R1,[R0, #+7]
        B.N      ??PTZ_Data_Handing_3
??PTZ_Data_Handing_1:
        LDR.N    R0,??DataTable17_1
        MOVS     R1,#+1
        STRB     R1,[R0, #+7]
        B.N      ??PTZ_Data_Handing_3
??PTZ_Data_Handing_2:
        LDR.N    R0,??DataTable17_1
        MOVS     R1,#+1
        STRB     R1,[R0, #+7]
??PTZ_Data_Handing_3:
        LDR.N    R0,??DataTable17_1
        LDRB     R0,[R0, #+7]
        CMP      R0,#+0
        BEQ.N    ??PTZ_Data_Handing_4
        MOVS     R0,#+0
        MOVS     R6,R0
??PTZ_Data_Handing_5:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R6,R7
        BCS.N    ??PTZ_Data_Handing_6
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.N    R0,??DataTable17_1
        ADDS     R0,R6,R0
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        LDR.N    R1,??DataTable17_2
        ADDS     R1,R6,R1
        LDRB     R1,[R1, #+117]
        STRB     R1,[R0, #+31]
        ADDS     R6,R6,#+1
        B.N      ??PTZ_Data_Handing_5
??PTZ_Data_Handing_6:
        LDR.N    R0,??DataTable17_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        LDR.N    R0,??DataTable17_1
        STRB     R7,[R0, #+1]
        LDR.N    R0,??DataTable17_1
        LDRB     R0,[R0, #+0]
        ADDS     R1,R0,#+1
        LDR.N    R2,??DataTable17_1
        STRB     R1,[R2, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable17_1
        ADDS     R0,R0,R1
        LDRB     R1,[R0, #+31]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.W    R0,??DataTable20_1  ;; 0x40013800
        BL       USART_SendData
        MOVS     R0,#+1
        BL       Delay_1ms
        LDR.N    R0,??DataTable17_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+7]
??PTZ_Data_Handing_4:
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17:
        DC32     stSYS

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_1:
        DC32     stUSART1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_2:
        DC32     stUART5

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DATA_Request_Handing:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
OPTION_Data_Handing:
        PUSH     {R0-R2,R4-R11,LR}
        SUB      SP,SP,#+8
        MOVS     R4,#+0
        LDRB     R0,[SP, #+16]
        ADDS     R5,R0,#+5
        MOVS     R6,#+0
        MOVS     R7,#+0
        MOVS     R8,#+0
        MOVS     R9,#+0
        MOVS     R10,#+0
        MOVS     R11,#+0
        MOVS     R0,#+0
        STRB     R0,[SP, #+4]
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        LDRB     R0,[SP, #+8]
        CMP      R0,#+1
        BEQ.N    ??OPTION_Data_Handing_0
        CMP      R0,#+5
        BEQ.N    ??OPTION_Data_Handing_1
        CMP      R0,#+170
        BNE.N    ??OPTION_Data_Handing_2
??OPTION_Data_Handing_3:
        LDR.W    R0,??DataTable20_2
        LDRB     R0,[R0, #+11]
        MOVS     R6,R0
        LDR.W    R0,??DataTable20_2
        LDRB     R0,[R0, #+12]
        MOVS     R7,R0
        LDR.W    R0,??DataTable20_2
        LDRB     R0,[R0, #+13]
        MOV      R8,R0
        LDR.W    R0,??DataTable20_2
        LDRB     R0,[R0, #+14]
        MOV      R9,R0
        B.N      ??OPTION_Data_Handing_4
??OPTION_Data_Handing_0:
        LDR.W    R0,??DataTable20_3
        LDRB     R0,[R0, #+135]
        MOVS     R6,R0
        LDR.W    R0,??DataTable20_3
        LDRB     R0,[R0, #+136]
        MOVS     R7,R0
        LDR.W    R0,??DataTable20_3
        LDRB     R0,[R0, #+137]
        MOV      R8,R0
        LDR.W    R0,??DataTable20_3
        LDRB     R0,[R0, #+138]
        MOV      R9,R0
        B.N      ??OPTION_Data_Handing_4
??OPTION_Data_Handing_1:
        LDR.W    R0,??DataTable20_4
        LDRB     R0,[R0, #+121]
        MOVS     R6,R0
        LDR.W    R0,??DataTable20_4
        LDRB     R0,[R0, #+122]
        MOVS     R7,R0
        LDR.W    R0,??DataTable20_4
        LDRB     R0,[R0, #+123]
        MOV      R8,R0
        LDR.W    R0,??DataTable20_4
        LDRB     R0,[R0, #+124]
        MOV      R9,R0
        LDR.W    R0,??DataTable20_4
        LDRB     R0,[R0, #+125]
        MOV      R10,R0
        LDR.W    R0,??DataTable20_4
        LDRB     R0,[R0, #+126]
        MOV      R11,R0
        B.N      ??OPTION_Data_Handing_4
??OPTION_Data_Handing_2:
??OPTION_Data_Handing_4:
        LDRB     R0,[SP, #+12]
        CMP      R0,#+2
        BEQ.N    ??OPTION_Data_Handing_5
        CMP      R0,#+3
        BEQ.N    ??OPTION_Data_Handing_6
        CMP      R0,#+6
        BEQ.W    ??OPTION_Data_Handing_7
        CMP      R0,#+34
        BEQ.W    ??OPTION_Data_Handing_8
        CMP      R0,#+89
        BNE.W    ??OPTION_Data_Handing_9
??OPTION_Data_Handing_10:
        LDR.W    R0,??DataTable20_3
        MOVS     R1,#+1
        STRB     R1,[R0, #+7]
        B.N      ??OPTION_Data_Handing_11
??OPTION_Data_Handing_5:
        LDR.W    R0,??DataTable20_5
        LDRB     R0,[R0, #+1]
        CMP      R0,#+0
        BEQ.N    ??OPTION_Data_Handing_12
        CMP      R0,#+1
        BEQ.N    ??OPTION_Data_Handing_13
        B.N      ??OPTION_Data_Handing_14
??OPTION_Data_Handing_12:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BEQ.N    ??OPTION_Data_Handing_15
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+16
        BCC.N    ??OPTION_Data_Handing_16
??OPTION_Data_Handing_15:
        B.N      ??OPTION_Data_Handing_17
??OPTION_Data_Handing_16:
        LDR.W    R0,??DataTable20_6
        STRB     R7,[R0, #+6]
        LDR.W    R0,??DataTable20_6
        STRB     R8,[R0, #+10]
        LDR.W    R0,??DataTable20_6
        STRB     R9,[R0, #+11]
        LDR.W    R0,??DataTable20_6
        LDRB     R1,[R0, #+6]
        MOVS     R0,#+62
        BL       AT24C256C_EEPROM_Write
        LDR.W    R0,??DataTable20_6
        LDRB     R1,[R0, #+10]
        MOVS     R0,#+48
        BL       AT24C256C_EEPROM_Write
        LDR.W    R0,??DataTable20_6
        LDRB     R1,[R0, #+11]
        MOVS     R0,#+49
        BL       AT24C256C_EEPROM_Write
        B.N      ??OPTION_Data_Handing_17
??OPTION_Data_Handing_13:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BEQ.N    ??OPTION_Data_Handing_18
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+16
        BCC.N    ??OPTION_Data_Handing_19
??OPTION_Data_Handing_18:
        B.N      ??OPTION_Data_Handing_17
??OPTION_Data_Handing_19:
        LDR.W    R0,??DataTable20_6
        STRB     R7,[R0, #+6]
        LDR.W    R0,??DataTable20_6
        STRB     R8,[R0, #+10]
        LDR.W    R0,??DataTable20_6
        STRB     R9,[R0, #+11]
        MOVS     R1,R7
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+62
        BL       AT24C256C_EEPROM_Write
        MOV      R1,R8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+48
        BL       AT24C256C_EEPROM_Write
        MOV      R1,R9
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+49
        BL       AT24C256C_EEPROM_Write
        B.N      ??OPTION_Data_Handing_17
??OPTION_Data_Handing_14:
??OPTION_Data_Handing_17:
        B.N      ??OPTION_Data_Handing_11
??OPTION_Data_Handing_6:
        LDR.W    R0,??DataTable20_5
        LDRB     R0,[R0, #+1]
        CMP      R0,#+0
        BEQ.N    ??OPTION_Data_Handing_20
        CMP      R0,#+1
        BEQ.N    ??OPTION_Data_Handing_21
        B.N      ??OPTION_Data_Handing_22
??OPTION_Data_Handing_20:
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+0
        BEQ.N    ??OPTION_Data_Handing_23
        CMP      R7,#+1
        BEQ.N    ??OPTION_Data_Handing_24
        B.N      ??OPTION_Data_Handing_25
??OPTION_Data_Handing_23:
        LDR.W    R0,??DataTable20_6
        MOVS     R1,#+1
        STRB     R1,[R0, #+24]
        B.N      ??OPTION_Data_Handing_25
??OPTION_Data_Handing_24:
        LDR.W    R0,??DataTable20_6
        MOVS     R1,#+2
        STRB     R1,[R0, #+24]
??OPTION_Data_Handing_25:
        LDR.W    R0,??DataTable20_6
        LDRB     R0,[R0, #+13]
        CMP      R0,#+0
        BEQ.N    ??OPTION_Data_Handing_26
        LDR.W    R0,??DataTable20_6
        MOVS     R1,#+0
        STRB     R1,[R0, #+13]
??OPTION_Data_Handing_26:
        LDR.W    R0,??DataTable20_6
        LDRB     R0,[R0, #+18]
        CMP      R0,#+1
        BNE.N    ??OPTION_Data_Handing_27
        LDR.W    R0,??DataTable20_6
        MOVS     R1,#+0
        STRB     R1,[R0, #+18]
??OPTION_Data_Handing_27:
        B.N      ??OPTION_Data_Handing_28
??OPTION_Data_Handing_21:
        LDR.W    R0,??DataTable20_7
        MOVS     R1,#+0
        STRB     R1,[R0, #+3]
        LDR.W    R0,??DataTable20_7
        MOVS     R1,#+0
        STRB     R1,[R0, #+5]
        B.N      ??OPTION_Data_Handing_28
??OPTION_Data_Handing_22:
??OPTION_Data_Handing_28:
        B.N      ??OPTION_Data_Handing_11
??OPTION_Data_Handing_7:
        LDR.W    R0,??DataTable20_5
        LDRB     R0,[R0, #+1]
        CMP      R0,#+0
        BEQ.N    ??OPTION_Data_Handing_29
        CMP      R0,#+1
        BEQ.W    ??OPTION_Data_Handing_30
        B.N      ??OPTION_Data_Handing_31
??OPTION_Data_Handing_29:
        LDR.W    R0,??DataTable20_6
        STRB     R7,[R0, #+6]
        MOVS     R0,#+48
        BL       AT24C256C_EEPROM_Read
        LDR.W    R1,??DataTable20_6
        STRB     R0,[R1, #+10]
        MOVS     R0,#+49
        BL       AT24C256C_EEPROM_Read
        LDR.W    R1,??DataTable20_6
        STRB     R0,[R1, #+11]
        MOVS     R0,#+63
        BL       AT24C256C_EEPROM_Read
        LDR.W    R1,??DataTable20_6
        STRB     R0,[R1, #+8]
        MOVS     R0,#+64
        BL       AT24C256C_EEPROM_Read
        LDR.W    R1,??DataTable20_6
        STRB     R0,[R1, #+17]
        LDR.W    R0,??DataTable20_6
        LDRB     R0,[R0, #+6]
        CMP      R0,#+0
        BEQ.N    ??OPTION_Data_Handing_32
        CMP      R0,#+2
        BEQ.N    ??OPTION_Data_Handing_33
        BCC.N    ??OPTION_Data_Handing_34
        B.N      ??OPTION_Data_Handing_35
??OPTION_Data_Handing_32:
        MOVS     R0,#+48
        BL       AT24C256C_EEPROM_Read
        LDR.W    R1,??DataTable20_6
        STRB     R0,[R1, #+10]
        LDR.W    R0,??DataTable20_6
        LDRB     R0,[R0, #+10]
        CMP      R0,#+15
        BCS.N    ??OPTION_Data_Handing_36
??OPTION_Data_Handing_37:
        MOVS     R0,#+49
        BL       AT24C256C_EEPROM_Read
        LDR.W    R1,??DataTable20_6
        STRB     R0,[R1, #+11]
        LDR.W    R0,??DataTable20_6
        LDR.W    R1,??DataTable20_6
        LDRB     R1,[R1, #+11]
        STRB     R1,[R0, #+12]
        LDR.W    R0,??DataTable20_6
        MOVS     R1,#+1
        STRB     R1,[R0, #+9]
        LDR.W    R0,??DataTable20_6
        MOVS     R1,#+0
        STRB     R1,[R0, #+24]
        LDR.W    R0,??DataTable20_6
        MOVS     R1,#+2
        STRB     R1,[R0, #+3]
        B.N      ??OPTION_Data_Handing_36
??OPTION_Data_Handing_34:
        B.N      ??OPTION_Data_Handing_36
??OPTION_Data_Handing_33:
        MOVS     R0,#+48
        BL       AT24C256C_EEPROM_Read
        LDR.W    R1,??DataTable20_6
        STRB     R0,[R1, #+10]
        LDR.W    R0,??DataTable20_6
        LDRB     R0,[R0, #+10]
        CMP      R0,#+15
        BCC.N    ??OPTION_Data_Handing_36
??OPTION_Data_Handing_38:
        MOVS     R0,#+49
        BL       AT24C256C_EEPROM_Read
        LDR.W    R1,??DataTable20_6
        STRB     R0,[R1, #+11]
        LDR.W    R0,??DataTable20_6
        LDR.W    R1,??DataTable20_6
        LDRB     R1,[R1, #+11]
        STRB     R1,[R0, #+12]
        LDR.W    R0,??DataTable20_6
        MOVS     R1,#+1
        STRB     R1,[R0, #+9]
        LDR.W    R0,??DataTable20_6
        MOVS     R1,#+0
        STRB     R1,[R0, #+24]
        LDR.W    R0,??DataTable20_6
        MOVS     R1,#+2
        STRB     R1,[R0, #+3]
        LDR.W    R0,??DataTable20_6
        LDRB     R0,[R0, #+10]
        CMP      R0,#+15
        BCC.N    ??OPTION_Data_Handing_39
        LDR.W    R0,??DataTable20_6
        MOVS     R1,#+1
        STRB     R1,[R0, #+18]
        LDR.W    R0,??DataTable20_6
        MOVS     R1,#+0
        STRB     R1,[R0, #+19]
        LDR.W    R0,??DataTable20_6
        MOVS     R1,#+0
        STRB     R1,[R0, #+20]
??OPTION_Data_Handing_39:
        B.N      ??OPTION_Data_Handing_36
??OPTION_Data_Handing_35:
??OPTION_Data_Handing_36:
        B.N      ??OPTION_Data_Handing_40
??OPTION_Data_Handing_30:
        MOVS     R0,#+48
        BL       AT24C256C_EEPROM_Read
        LDR.W    R1,??DataTable20_7
        STRB     R0,[R1, #+3]
        MOVS     R0,#+49
        BL       AT24C256C_EEPROM_Read
        LDR.W    R1,??DataTable20_7
        STRB     R0,[R1, #+5]
        B.N      ??OPTION_Data_Handing_40
??OPTION_Data_Handing_31:
??OPTION_Data_Handing_40:
        B.N      ??OPTION_Data_Handing_11
??OPTION_Data_Handing_8:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+0
        BEQ.N    ??OPTION_Data_Handing_41
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+16
        BCC.N    ??OPTION_Data_Handing_42
??OPTION_Data_Handing_41:
        B.N      ??OPTION_Data_Handing_11
??OPTION_Data_Handing_42:
        LDR.W    R0,??DataTable20_6
        STRB     R7,[R0, #+6]
        LDR.W    R0,??DataTable20_6
        STRB     R8,[R0, #+10]
        LDR.W    R0,??DataTable20_6
        STRB     R9,[R0, #+11]
        LDR.W    R0,??DataTable20_6
        STRB     R10,[R0, #+8]
        LDR.W    R0,??DataTable20_6
        STRB     R11,[R0, #+17]
        LDR.W    R0,??DataTable20_6
        LDRB     R1,[R0, #+6]
        MOVS     R0,#+62
        BL       AT24C256C_EEPROM_Write
        LDR.W    R0,??DataTable20_6
        LDRB     R1,[R0, #+10]
        MOVS     R0,#+48
        BL       AT24C256C_EEPROM_Write
        LDR.W    R0,??DataTable20_6
        LDRB     R1,[R0, #+11]
        MOVS     R0,#+49
        BL       AT24C256C_EEPROM_Write
        LDR.W    R0,??DataTable20_6
        LDRB     R1,[R0, #+8]
        MOVS     R0,#+63
        BL       AT24C256C_EEPROM_Write
        LDR.W    R0,??DataTable20_6
        LDRB     R0,[R0, #+17]
        CMP      R0,#+255
        BEQ.N    ??OPTION_Data_Handing_43
        LDR.W    R0,??DataTable20_6
        LDRB     R1,[R0, #+17]
        MOVS     R0,#+64
        BL       AT24C256C_EEPROM_Write
??OPTION_Data_Handing_43:
        B.N      ??OPTION_Data_Handing_11
??OPTION_Data_Handing_9:
??OPTION_Data_Handing_11:
        LDR.W    R0,??DataTable20_3
        LDRB     R0,[R0, #+7]
        CMP      R0,#+0
        BEQ.N    ??OPTION_Data_Handing_44
        MOVS     R0,#+0
        MOVS     R4,R0
??OPTION_Data_Handing_45:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R4,R5
        BCS.N    ??OPTION_Data_Handing_46
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R0,??DataTable20_3
        ADDS     R0,R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.W    R1,??DataTable20_4
        ADDS     R1,R4,R1
        LDRB     R1,[R1, #+117]
        STRB     R1,[R0, #+31]
        ADDS     R4,R4,#+1
        B.N      ??OPTION_Data_Handing_45
??OPTION_Data_Handing_46:
        LDR.W    R0,??DataTable20_3
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        LDR.W    R0,??DataTable20_3
        STRB     R5,[R0, #+1]
        LDR.W    R0,??DataTable20_3
        LDRB     R0,[R0, #+0]
        ADDS     R1,R0,#+1
        LDR.W    R2,??DataTable20_3
        STRB     R1,[R2, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable20_3
        ADDS     R0,R0,R1
        LDRB     R1,[R0, #+31]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.W    R0,??DataTable20_1  ;; 0x40013800
        BL       USART_SendData
        MOVS     R0,#+1
        BL       Delay_1ms
        LDR.W    R0,??DataTable20_3
        MOVS     R1,#+0
        STRB     R1,[R0, #+7]
??OPTION_Data_Handing_44:
        ADD      SP,SP,#+20
        POP      {R4-R11,PC}      ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18:
        DC32     stUART4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_1:
        DC32     stTCM

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
PELCO_Data_Handing:
        PUSH     {R0,R2-R11,LR}
        SUB      SP,SP,#+16
        MOVS     R4,R1
        MOVS     R0,#+0
        STRB     R0,[SP, #+8]
        MOVS     R5,#+0
        MOVS     R6,#+0
        MOVS     R0,#+0
        STRB     R0,[SP, #+9]
        MOVS     R7,#+0
        MOVS     R8,#+0
        MOVS     R9,#+0
        MOVS     R10,#+0
        MOVS     R11,#+0
        LDRB     R0,[SP, #+16]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ORRS     R0,R4,R0, LSL #+8
        MOV      R11,R0
        LDRB     R0,[SP, #+20]
        MOVS     R5,R0
        LDRB     R0,[SP, #+24]
        MOVS     R6,R0
        MOV      R0,R11
        CMP      R0,#+0
        BEQ.N    ??PELCO_Data_Handing_0
        CMP      R0,#+2
        BEQ.W    ??PELCO_Data_Handing_1
        CMP      R0,#+3
        BEQ.W    ??PELCO_Data_Handing_2
        CMP      R0,#+4
        BEQ.W    ??PELCO_Data_Handing_3
        CMP      R0,#+5
        BEQ.W    ??PELCO_Data_Handing_4
        CMP      R0,#+7
        BEQ.W    ??PELCO_Data_Handing_5
        CMP      R0,#+8
        BEQ.W    ??PELCO_Data_Handing_6
        CMP      R0,#+10
        BEQ.W    ??PELCO_Data_Handing_7
        CMP      R0,#+12
        BEQ.W    ??PELCO_Data_Handing_8
        CMP      R0,#+16
        BEQ.W    ??PELCO_Data_Handing_9
        CMP      R0,#+17
        BEQ.W    ??PELCO_Data_Handing_10
        CMP      R0,#+18
        BEQ.W    ??PELCO_Data_Handing_11
        CMP      R0,#+19
        BEQ.W    ??PELCO_Data_Handing_12
        CMP      R0,#+20
        BEQ.W    ??PELCO_Data_Handing_13
        CMP      R0,#+27
        BEQ.W    ??PELCO_Data_Handing_14
        CMP      R0,#+29
        BEQ.W    ??PELCO_Data_Handing_15
        CMP      R0,#+32
        BEQ.W    ??PELCO_Data_Handing_16
        CMP      R0,#+64
        BEQ.W    ??PELCO_Data_Handing_17
        CMP      R0,#+73
        BEQ.W    ??PELCO_Data_Handing_18
        CMP      R0,#+128
        BEQ.W    ??PELCO_Data_Handing_19
        CMP      R0,#+256
        BEQ.W    ??PELCO_Data_Handing_20
        B.N      ??PELCO_Data_Handing_21
??PELCO_Data_Handing_0:
        LDR.W    R0,??DataTable20_3
        MOVS     R1,#+1
        STRB     R1,[R0, #+7]
        LDR.W    R0,??DataTable21
        LDRB     R0,[R0, #+8]
        CMP      R0,#+129
        BEQ.N    ??PELCO_Data_Handing_22
        CMP      R0,#+160
        BEQ.N    ??PELCO_Data_Handing_23
        B.N      ??PELCO_Data_Handing_24
??PELCO_Data_Handing_22:
        LDR.W    R0,??DataTable21_1
        LDR      R0,[R0, #+44]
        CMP      R0,#+1
        BNE.N    ??PELCO_Data_Handing_25
        MOVS     R0,#+7
        MOVS     R7,R0
        LDR.W    R0,??DataTable21_1
        MOVS     R1,#+0
        STR      R1,[R0, #+44]
        LDR.W    R0,??DataTable21_1
        MOVS     R1,#+1
        STRB     R1,[R0, #+33]
??PELCO_Data_Handing_25:
        LDR.W    R0,??DataTable21_1
        LDR      R0,[R0, #+56]
        CMP      R0,#+1
        BNE.N    ??PELCO_Data_Handing_26
        MOVS     R0,#+8
        MOVS     R7,R0
        LDR.W    R0,??DataTable21_1
        MOVS     R1,#+0
        STR      R1,[R0, #+56]
        LDR.W    R0,??DataTable21_1
        MOVS     R1,#+1
        STRB     R1,[R0, #+34]
??PELCO_Data_Handing_26:
        B.N      ??PELCO_Data_Handing_27
??PELCO_Data_Handing_23:
        LDR.W    R0,??DataTable20
        LDRB     R0,[R0, #+39]
        CMP      R0,#+1
        BNE.N    ??PELCO_Data_Handing_28
        MOVS     R0,#+35
        MOVS     R7,R0
        LDR.W    R0,??DataTable20
        MOVS     R1,#+0
        STRB     R1,[R0, #+39]
        LDR.W    R0,??DataTable20
        MOVS     R1,#+1
        STRB     R1,[R0, #+14]
??PELCO_Data_Handing_28:
        LDR.W    R0,??DataTable20
        LDRB     R0,[R0, #+40]
        CMP      R0,#+1
        BNE.N    ??PELCO_Data_Handing_29
        MOVS     R0,#+23
        MOVS     R7,R0
        LDR.W    R0,??DataTable20
        MOVS     R1,#+0
        STRB     R1,[R0, #+40]
        LDR.W    R0,??DataTable20
        MOVS     R1,#+1
        STRB     R1,[R0, #+15]
??PELCO_Data_Handing_29:
        B.N      ??PELCO_Data_Handing_27
??PELCO_Data_Handing_24:
??PELCO_Data_Handing_27:
        LDR.W    R0,??DataTable21_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??PELCO_Data_Handing_21
??PELCO_Data_Handing_1:
        LDR.W    R0,??DataTable20_3
        MOVS     R1,#+1
        STRB     R1,[R0, #+7]
        B.N      ??PELCO_Data_Handing_21
??PELCO_Data_Handing_3:
        LDR.W    R0,??DataTable20_3
        MOVS     R1,#+1
        STRB     R1,[R0, #+7]
        B.N      ??PELCO_Data_Handing_21
??PELCO_Data_Handing_6:
        LDR.W    R0,??DataTable20_3
        MOVS     R1,#+1
        STRB     R1,[R0, #+7]
        B.N      ??PELCO_Data_Handing_21
??PELCO_Data_Handing_9:
        LDR.W    R0,??DataTable20_3
        MOVS     R1,#+1
        STRB     R1,[R0, #+7]
        B.N      ??PELCO_Data_Handing_21
??PELCO_Data_Handing_7:
        LDR.W    R0,??DataTable20_3
        MOVS     R1,#+1
        STRB     R1,[R0, #+7]
        B.N      ??PELCO_Data_Handing_21
??PELCO_Data_Handing_8:
        LDR.W    R0,??DataTable20_3
        MOVS     R1,#+1
        STRB     R1,[R0, #+7]
        B.N      ??PELCO_Data_Handing_21
??PELCO_Data_Handing_11:
        LDR.W    R0,??DataTable20_3
        MOVS     R1,#+1
        STRB     R1,[R0, #+7]
        B.N      ??PELCO_Data_Handing_21
??PELCO_Data_Handing_13:
        LDR.W    R0,??DataTable20_3
        MOVS     R1,#+1
        STRB     R1,[R0, #+7]
        B.N      ??PELCO_Data_Handing_21
??PELCO_Data_Handing_16:
        LDR.W    R0,??DataTable21
        LDRB     R0,[R0, #+8]
        CMP      R0,#+129
        BEQ.N    ??PELCO_Data_Handing_30
        CMP      R0,#+160
        BEQ.N    ??PELCO_Data_Handing_31
        B.N      ??PELCO_Data_Handing_32
??PELCO_Data_Handing_30:
        MOVS     R0,#+7
        MOVS     R7,R0
        MOVS     R0,#+39
        MOV      R8,R0
        LDR.W    R0,??DataTable21_1
        MOVS     R1,#+1
        STR      R1,[R0, #+44]
        B.N      ??PELCO_Data_Handing_33
??PELCO_Data_Handing_31:
        MOVS     R0,#+32
        MOVS     R7,R0
        MOVS     R0,#+0
        MOV      R8,R0
        MOVS     R0,#+9
        MOV      R9,R0
        LDR.W    R0,??DataTable20
        MOVS     R1,#+1
        STRB     R1,[R0, #+39]
        B.N      ??PELCO_Data_Handing_33
??PELCO_Data_Handing_32:
??PELCO_Data_Handing_33:
        LDR.W    R0,??DataTable21_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??PELCO_Data_Handing_21
??PELCO_Data_Handing_17:
        LDR.W    R0,??DataTable21
        LDRB     R0,[R0, #+8]
        CMP      R0,#+129
        BEQ.N    ??PELCO_Data_Handing_34
        CMP      R0,#+160
        BEQ.N    ??PELCO_Data_Handing_35
        B.N      ??PELCO_Data_Handing_36
??PELCO_Data_Handing_34:
        MOVS     R0,#+7
        MOVS     R7,R0
        MOVS     R0,#+55
        MOV      R8,R0
        LDR.W    R0,??DataTable21_1
        MOVS     R1,#+1
        STR      R1,[R0, #+44]
        B.N      ??PELCO_Data_Handing_37
??PELCO_Data_Handing_35:
        MOVS     R0,#+32
        MOVS     R7,R0
        MOVS     R0,#+1
        MOV      R8,R0
        MOVS     R0,#+9
        MOV      R9,R0
        LDR.W    R0,??DataTable20
        MOVS     R1,#+1
        STRB     R1,[R0, #+39]
        B.N      ??PELCO_Data_Handing_37
??PELCO_Data_Handing_36:
??PELCO_Data_Handing_37:
        LDR.W    R0,??DataTable21_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??PELCO_Data_Handing_21
??PELCO_Data_Handing_19:
        LDR.W    R0,??DataTable21
        LDRB     R0,[R0, #+8]
        CMP      R0,#+129
        BEQ.N    ??PELCO_Data_Handing_38
        CMP      R0,#+160
        BEQ.N    ??PELCO_Data_Handing_39
        B.N      ??PELCO_Data_Handing_40
??PELCO_Data_Handing_38:
        MOVS     R0,#+8
        MOVS     R7,R0
        MOVS     R0,#+36
        MOV      R8,R0
        LDR.W    R0,??DataTable21_1
        MOVS     R1,#+1
        STR      R1,[R0, #+56]
        B.N      ??PELCO_Data_Handing_41
??PELCO_Data_Handing_39:
        MOVS     R0,#+22
        MOVS     R7,R0
        MOVS     R0,#+0
        MOV      R8,R0
        MOVS     R0,#+3
        MOV      R9,R0
        LDR.W    R0,??DataTable20
        MOVS     R1,#+1
        STRB     R1,[R0, #+40]
        B.N      ??PELCO_Data_Handing_41
??PELCO_Data_Handing_40:
??PELCO_Data_Handing_41:
        LDR.W    R0,??DataTable21_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??PELCO_Data_Handing_21
??PELCO_Data_Handing_20:
        LDR.W    R0,??DataTable21
        LDRB     R0,[R0, #+8]
        CMP      R0,#+129
        BEQ.N    ??PELCO_Data_Handing_42
        CMP      R0,#+160
        BEQ.N    ??PELCO_Data_Handing_43
        B.N      ??PELCO_Data_Handing_44
??PELCO_Data_Handing_42:
        MOVS     R0,#+8
        MOVS     R7,R0
        MOVS     R0,#+52
        MOV      R8,R0
        LDR.W    R0,??DataTable21_1
        MOVS     R1,#+1
        STR      R1,[R0, #+56]
        B.N      ??PELCO_Data_Handing_45
??PELCO_Data_Handing_43:
        MOVS     R0,#+22
        MOVS     R7,R0
        MOVS     R0,#+1
        MOV      R8,R0
        MOVS     R0,#+3
        MOV      R9,R0
        LDR.N    R0,??DataTable20
        MOVS     R1,#+1
        STRB     R1,[R0, #+40]
        B.N      ??PELCO_Data_Handing_45
??PELCO_Data_Handing_44:
??PELCO_Data_Handing_45:
        LDR.W    R0,??DataTable21_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??PELCO_Data_Handing_21
??PELCO_Data_Handing_2:
        LDR.N    R0,??DataTable20_3
        MOVS     R1,#+1
        STRB     R1,[R0, #+7]
        B.N      ??PELCO_Data_Handing_21
??PELCO_Data_Handing_4:
        LDR.N    R0,??DataTable20_3
        MOVS     R1,#+1
        STRB     R1,[R0, #+7]
        B.N      ??PELCO_Data_Handing_21
??PELCO_Data_Handing_5:
        LDR.N    R0,??DataTable20_3
        MOVS     R1,#+1
        STRB     R1,[R0, #+7]
        B.N      ??PELCO_Data_Handing_21
??PELCO_Data_Handing_10:
        LDR.N    R0,??DataTable20_3
        MOVS     R1,#+1
        STRB     R1,[R0, #+7]
        B.N      ??PELCO_Data_Handing_21
??PELCO_Data_Handing_12:
        LDR.N    R0,??DataTable20_3
        MOVS     R1,#+1
        STRB     R1,[R0, #+7]
        B.N      ??PELCO_Data_Handing_21
??PELCO_Data_Handing_14:
        LDR.N    R0,??DataTable20_3
        MOVS     R1,#+1
        STRB     R1,[R0, #+7]
        B.N      ??PELCO_Data_Handing_21
??PELCO_Data_Handing_15:
        LDR.N    R0,??DataTable20_3
        MOVS     R1,#+1
        STRB     R1,[R0, #+7]
        B.N      ??PELCO_Data_Handing_21
??PELCO_Data_Handing_18:
        LDR.N    R0,??DataTable20_3
        MOVS     R1,#+1
        STRB     R1,[R0, #+7]
??PELCO_Data_Handing_21:
        LDR.W    R0,??DataTable21_2
        LDRB     R0,[R0, #+2]
        CMP      R0,#+0
        BEQ.W    ??PELCO_Data_Handing_46
        LDR.W    R0,??DataTable21_2
        STRB     R7,[R0, #+7]
        LDR.W    R0,??DataTable21_2
        STRB     R8,[R0, #+8]
        LDR.W    R0,??DataTable21_2
        STRB     R9,[R0, #+9]
        LDR.W    R0,??DataTable21_2
        STRB     R10,[R0, #+10]
        LDR.W    R0,??DataTable21
        LDRB     R0,[R0, #+8]
        CMP      R0,#+129
        BEQ.N    ??PELCO_Data_Handing_47
        CMP      R0,#+160
        BEQ.N    ??PELCO_Data_Handing_48
        B.N      ??PELCO_Data_Handing_49
??PELCO_Data_Handing_47:
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        MOV      R2,R9
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOV      R1,R8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_Sony_Data
        LDR.W    R0,??DataTable21_1
        LDRB     R0,[R0, #+33]
        CMP      R0,#+1
        BNE.N    ??PELCO_Data_Handing_50
        LDR.W    R0,??DataTable21_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+33]
        LDR.W    R0,??DataTable21_2
        MOVS     R1,#+71
        STRB     R1,[R0, #+17]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+5
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,#+71
        BL       Send_Sony_Data
??PELCO_Data_Handing_50:
        LDR.W    R0,??DataTable21_1
        LDRB     R0,[R0, #+34]
        CMP      R0,#+1
        BNE.N    ??PELCO_Data_Handing_51
        LDR.W    R0,??DataTable21_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+34]
        LDR.W    R0,??DataTable21_2
        MOVS     R1,#+72
        STRB     R1,[R0, #+17]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+5
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,#+72
        BL       Send_Sony_Data
??PELCO_Data_Handing_51:
        B.N      ??PELCO_Data_Handing_52
??PELCO_Data_Handing_48:
        MOVS     R0,#+17
        STR      R0,[SP, #+4]
        MOVS     R0,#+6
        STR      R0,[SP, #+0]
        MOV      R3,R10
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOV      R2,R9
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOV      R1,R8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Send_TSM_Data
        LDR.N    R0,??DataTable20
        LDRB     R0,[R0, #+14]
        CMP      R0,#+1
        BNE.N    ??PELCO_Data_Handing_53
        LDR.N    R0,??DataTable20
        MOVS     R1,#+0
        STRB     R1,[R0, #+14]
        LDR.W    R0,??DataTable21_2
        MOVS     R1,#+133
        STRB     R1,[R0, #+17]
        MOVS     R0,#+17
        STR      R0,[SP, #+4]
        MOVS     R0,#+6
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,#+133
        BL       Send_TSM_Data
??PELCO_Data_Handing_53:
        LDR.N    R0,??DataTable20
        LDRB     R0,[R0, #+15]
        CMP      R0,#+1
        BNE.N    ??PELCO_Data_Handing_54
        LDR.N    R0,??DataTable20
        MOVS     R1,#+0
        STRB     R1,[R0, #+15]
        LDR.W    R0,??DataTable21_2
        MOVS     R1,#+132
        STRB     R1,[R0, #+17]
        MOVS     R0,#+17
        STR      R0,[SP, #+4]
        MOVS     R0,#+6
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,#+132
        BL       Send_TSM_Data
??PELCO_Data_Handing_54:
        B.N      ??PELCO_Data_Handing_52
??PELCO_Data_Handing_49:
        LDR.N    R0,??DataTable20_3
        MOVS     R1,#+1
        STRB     R1,[R0, #+7]
??PELCO_Data_Handing_52:
        LDR.W    R0,??DataTable21_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+2]
??PELCO_Data_Handing_46:
        LDR.N    R0,??DataTable20_3
        LDRB     R0,[R0, #+7]
        CMP      R0,#+0
        BEQ.N    ??PELCO_Data_Handing_55
        LDR.N    R0,??DataTable20_3
        LDRB     R1,[SP, #+8]
        STRB     R1,[R0, #+3]
        LDR.N    R0,??DataTable20_3
        STRB     R5,[R0, #+4]
        LDR.N    R0,??DataTable20_3
        STRB     R6,[R0, #+5]
        MOVS     R0,#+1
        STR      R0,[SP, #+4]
        MOVS     R0,#+7
        STR      R0,[SP, #+0]
        MOVS     R3,R6
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDRB     R0,[SP, #+16]
        BL       Send_Pelco_Data
        LDR.N    R0,??DataTable20_3
        LDRB     R0,[R0, #+8]
        CMP      R0,#+0
        BNE.N    ??PELCO_Data_Handing_56
        LDR.N    R0,??DataTable20_3
        MOVS     R1,#+1
        STRB     R1,[R0, #+9]
??PELCO_Data_Handing_56:
        LDR.N    R0,??DataTable20_3
        MOVS     R1,#+0
        STRB     R1,[R0, #+7]
??PELCO_Data_Handing_55:
        ADD      SP,SP,#+28
        POP      {R4-R11,PC}      ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
OSD_Layer_Select:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,R4
        CMP      R0,#+0
        BEQ.N    ??OSD_Layer_Select_0
        CMP      R0,#+1
        BEQ.N    ??OSD_Layer_Select_1
        CMP      R0,#+7
        BEQ.N    ??OSD_Layer_Select_2
        B.N      ??OSD_Layer_Select_3
??OSD_Layer_Select_0:
        MOVS     R1,#+0
        MOVS     R0,#+2
        BL       MDIN_Sprite_Initialization
        MOVS     R1,#+0
        MOVS     R0,#+7
        BL       MDIN_Sprite_Initialization
        MOVS     R1,#+0
        MOVS     R0,#+1
        BL       MDIN_Sprite_Initialization
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       MDIN_Sprite_Initialization
        B.N      ??OSD_Layer_Select_4
??OSD_Layer_Select_1:
        MOVS     R1,#+0
        MOVS     R0,#+2
        BL       MDIN_Sprite_Initialization
        MOVS     R1,#+0
        MOVS     R0,#+7
        BL       MDIN_Sprite_Initialization
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       MDIN_Sprite_Initialization
        MOVS     R1,#+1
        MOVS     R0,#+1
        BL       MDIN_Sprite_Initialization
        B.N      ??OSD_Layer_Select_4
??OSD_Layer_Select_2:
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       MDIN_Sprite_Initialization
        MOVS     R1,#+0
        MOVS     R0,#+2
        BL       MDIN_Sprite_Initialization
        MOVS     R1,#+0
        MOVS     R0,#+1
        BL       MDIN_Sprite_Initialization
        MOVS     R1,#+1
        MOVS     R0,#+7
        BL       MDIN_Sprite_Initialization
        B.N      ??OSD_Layer_Select_4
??OSD_Layer_Select_3:
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       MDIN_Sprite_Initialization
        MOVS     R1,#+0
        MOVS     R0,#+7
        BL       MDIN_Sprite_Initialization
        MOVS     R1,#+0
        MOVS     R0,#+1
        BL       MDIN_Sprite_Initialization
        MOVS     R1,#+1
        MOVS     R0,#+2
        BL       MDIN_Sprite_Initialization
??OSD_Layer_Select_4:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
UART5_Data_Parser:
        PUSH     {R5-R7,LR}
        LDR.N    R0,??DataTable20_4
        LDRB     R0,[R0, #+117]
        STRB     R0,[SP, #+0]
        LDR.N    R0,??DataTable20_4
        LDRB     R0,[R0, #+119]
        STRB     R0,[SP, #+2]
        LDR.N    R0,??DataTable20_4
        LDRB     R0,[R0, #+120]
        STRB     R0,[SP, #+3]
        LDR.N    R0,??DataTable20_4
        LDRB     R0,[R0, #+121]
        STRB     R0,[SP, #+4]
        LDR.N    R0,??DataTable20_4
        LDRB     R0,[R0, #+122]
        STRB     R0,[SP, #+5]
        LDRB     R0,[SP, #+0]
        CMP      R0,#+160
        BEQ.N    ??UART5_Data_Parser_0
        CMP      R0,#+176
        BEQ.N    ??UART5_Data_Parser_1
        CMP      R0,#+178
        BEQ.N    ??UART5_Data_Parser_2
        CMP      R0,#+192
        BEQ.N    ??UART5_Data_Parser_3
        CMP      R0,#+208
        BEQ.N    ??UART5_Data_Parser_4
        CMP      R0,#+224
        BEQ.N    ??UART5_Data_Parser_5
        CMP      R0,#+255
        BEQ.N    ??UART5_Data_Parser_6
        B.N      ??UART5_Data_Parser_7
??UART5_Data_Parser_0:
        LDRB     R2,[SP, #+2]
        LDRB     R1,[SP, #+4]
        MOVS     R0,#+5
        BL       Sony_Data_Handing
        B.N      ??UART5_Data_Parser_8
??UART5_Data_Parser_1:
        LDR.W    R0,??DataTable21
        LDRB     R0,[R0, #+10]
        CMP      R0,#+0
        CMP      R0,#+1
        BLS.N    ??UART5_Data_Parser_9
        SUBS     R0,R0,#+2
        BEQ.N    ??UART5_Data_Parser_10
        SUBS     R0,R0,#+126
        CMP      R0,#+1
        BHI.N    ??UART5_Data_Parser_11
??UART5_Data_Parser_9:
        LDRB     R2,[SP, #+2]
        LDRB     R1,[SP, #+4]
        MOVS     R0,#+5
        BL       TSM_Data_Handing
        B.N      ??UART5_Data_Parser_11
??UART5_Data_Parser_10:
        LDRB     R2,[SP, #+2]
        LDRB     R1,[SP, #+4]
        MOVS     R0,#+5
        BL       TCM_Data_Handing
??UART5_Data_Parser_11:
        B.N      ??UART5_Data_Parser_8
??UART5_Data_Parser_2:
        B.N      ??UART5_Data_Parser_8
??UART5_Data_Parser_3:
        LDRB     R1,[SP, #+2]
        LDRB     R0,[SP, #+4]
        BL       PTZ_Data_Handing
        B.N      ??UART5_Data_Parser_8
??UART5_Data_Parser_4:
        LDRB     R1,[SP, #+2]
        LDRB     R0,[SP, #+4]
        BL       DATA_Request_Handing
        B.N      ??UART5_Data_Parser_8
??UART5_Data_Parser_5:
        LDRB     R2,[SP, #+2]
        LDRB     R1,[SP, #+4]
        MOVS     R0,#+5
        BL       OPTION_Data_Handing
        B.N      ??UART5_Data_Parser_8
??UART5_Data_Parser_6:
        LDRB     R3,[SP, #+5]
        LDRB     R2,[SP, #+4]
        LDRB     R1,[SP, #+3]
        LDRB     R0,[SP, #+2]
        BL       PELCO_Data_Handing
        B.N      ??UART5_Data_Parser_8
??UART5_Data_Parser_7:
??UART5_Data_Parser_8:
        POP      {R0-R2,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20:
        DC32     stTSM

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_1:
        DC32     0x40013800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_2:
        DC32     stSYS

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_3:
        DC32     stUSART1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_4:
        DC32     stUART5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_5:
        DC32     stDIP

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_6:
        DC32     stWIPER2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_7:
        DC32     stWIPER1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
g_Po_Data:
        DS8 32

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
System_Data_Parser:
        PUSH     {R4-R11,LR}
        SUB      SP,SP,#+132
        MOVS     R7,#+0
        MOVS     R0,#+0
        STRB     R0,[SP, #+73]
        MOVS     R0,#+0
        STRB     R0,[SP, #+72]
        MOVS     R4,#+0
        MOVS     R5,#+0
        MOVS     R0,#+0
        STRB     R0,[SP, #+68]
        MOVS     R0,#+0
        STRB     R0,[SP, #+71]
        MOVS     R0,#+0
        STRB     R0,[SP, #+70]
        MOVS     R0,#+0
        STRB     R0,[SP, #+74]
        MOVS     R0,#+0
        STRB     R0,[SP, #+69]
        MOVS     R8,#+0
        MOVS     R9,#+0
        MOVS     R10,#+0
        MOVS     R11,#+0
        MOVS     R6,#+0
        MOVS     R0,#+0
        STR      R0,[SP, #+76]
        LDR.W    R0,??DataTable22
        LDRB     R0,[R0, #+7]
        STRB     R0,[SP, #+72]
        LDR.W    R0,??DataTable22
        LDRB     R0,[R0, #+11]
        MOVS     R4,R0
        LDR.W    R0,??DataTable22
        LDRB     R0,[R0, #+9]
        MOVS     R5,R0
        ADDS     R0,R5,#+5
        STRB     R0,[SP, #+73]
        MOVS     R0,#+6
        MOVS     R7,R0
??System_Data_Parser_0:
        LDRB     R0,[SP, #+73]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,R0
        BCS.N    ??System_Data_Parser_1
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        ADD      R0,SP,#+80
        ADDS     R0,R7,R0
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R1,??DataTable22
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #+6]
        STRB     R1,[R0, #-6]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.W    R0,??DataTable22_1
        ADDS     R0,R7,R0
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        ADD      R1,SP,#+80
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #-6]
        STRB     R1,[R0, #-6]
        ADDS     R7,R7,#+1
        B.N      ??System_Data_Parser_0
??System_Data_Parser_1:
        LDRB     R0,[SP, #+72]
        CMP      R0,#+160
        BEQ.W    ??System_Data_Parser_2
        CMP      R0,#+176
        BEQ.W    ??System_Data_Parser_3
        CMP      R0,#+202
        BEQ.N    ??System_Data_Parser_4
        CMP      R0,#+224
        BEQ.W    ??System_Data_Parser_5
        B.N      ??System_Data_Parser_6
??System_Data_Parser_4:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,R4
        CMP      R0,#+17
        BEQ.N    ??System_Data_Parser_7
        CMP      R0,#+18
        BEQ.N    ??System_Data_Parser_8
        CMP      R0,#+19
        BEQ.N    ??System_Data_Parser_9
        CMP      R0,#+32
        BEQ.W    ??System_Data_Parser_10
        CMP      R0,#+146
        BEQ.W    ??System_Data_Parser_11
        CMP      R0,#+209
        BEQ.W    ??System_Data_Parser_12
        CMP      R0,#+210
        BEQ.W    ??System_Data_Parser_13
        CMP      R0,#+211
        BEQ.W    ??System_Data_Parser_14
        B.N      ??System_Data_Parser_15
??System_Data_Parser_7:
        LDR.W    R0,??DataTable22_2
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable22
        LDRB     R1,[R1, #+12]
        CMP      R0,R1
        BEQ.N    ??System_Data_Parser_16
        LDR.W    R0,??DataTable22
        LDRB     R0,[R0, #+12]
        LDR.W    R1,??DataTable22_2
        STRB     R0,[R1, #+0]
        LDR.W    R0,??DataTable22_2
        LDRB     R0,[R0, #+0]
        BL       OSD_Layer_Select
??System_Data_Parser_16:
        MOVS     R2,#+3
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+69
        BL       Send_MDIN_String_Data
        B.N      ??System_Data_Parser_17
??System_Data_Parser_8:
        LDR.W    R0,??DataTable22_2
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable22
        LDRB     R1,[R1, #+12]
        CMP      R0,R1
        BEQ.N    ??System_Data_Parser_18
        LDR.W    R0,??DataTable22
        LDRB     R0,[R0, #+12]
        LDR.W    R1,??DataTable22_2
        STRB     R0,[R1, #+0]
        LDR.W    R0,??DataTable22_2
        LDRB     R0,[R0, #+0]
        BL       OSD_Layer_Select
??System_Data_Parser_18:
        MOVS     R2,#+3
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+68
        BL       Send_MDIN_String_Data
        B.N      ??System_Data_Parser_17
??System_Data_Parser_9:
        LDR.W    R0,??DataTable22_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BEQ.N    ??System_Data_Parser_19
        LDR.W    R0,??DataTable22_2
        MOVS     R1,#+2
        STRB     R1,[R0, #+0]
        LDR.W    R0,??DataTable22_2
        LDRB     R0,[R0, #+0]
        BL       OSD_Layer_Select
??System_Data_Parser_19:
        LDRB     R0,[SP, #+81]
        LSLS     R0,R0,#+4
        MOV      R8,R0
        LDRB     R0,[SP, #+82]
        ORRS     R8,R0,R8
        LDRB     R0,[SP, #+83]
        LSLS     R0,R0,#+4
        MOV      R9,R0
        LDRB     R0,[SP, #+84]
        ORRS     R9,R0,R9
        LDRB     R0,[SP, #+85]
        CMP      R0,#+0
        BEQ.N    ??System_Data_Parser_20
        CMP      R0,#+1
        BEQ.N    ??System_Data_Parser_21
        B.N      ??System_Data_Parser_22
??System_Data_Parser_20:
        MOVS     R0,#+0
        STRB     R0,[SP, #+69]
        B.N      ??System_Data_Parser_23
??System_Data_Parser_21:
        MOVS     R0,#+45
        STRB     R0,[SP, #+69]
        B.N      ??System_Data_Parser_23
??System_Data_Parser_22:
??System_Data_Parser_23:
        LDRB     R0,[SP, #+86]
        LSLS     R0,R0,#+4
        MOV      R10,R0
        LDRB     R0,[SP, #+87]
        ORRS     R10,R0,R10
        LDRB     R0,[SP, #+88]
        LSLS     R0,R0,#+4
        MOV      R11,R0
        LDRB     R0,[SP, #+89]
        ORRS     R11,R0,R11
        MOVS     R0,#+2
        STRB     R0,[SP, #+68]
        MOVS     R0,#+1
        STRB     R0,[SP, #+71]
        MOVS     R0,#+0
        STRB     R0,[SP, #+70]
        MOVS     R0,#+0
        STRB     R0,[SP, #+80]
        MOVS     R0,#+100
        UDIV     R0,R8,R0
        ADDS     R0,R0,#+48
        STRB     R0,[SP, #+81]
        MOVS     R0,#+100
        UDIV     R1,R8,R0
        MLS      R0,R0,R1,R8
        MOVS     R1,#+10
        UDIV     R0,R0,R1
        ADDS     R0,R0,#+48
        STRB     R0,[SP, #+82]
        MOVS     R0,#+10
        UDIV     R1,R8,R0
        MLS      R0,R0,R1,R8
        ADDS     R0,R0,#+48
        STRB     R0,[SP, #+83]
        MOVS     R0,#+46
        STRB     R0,[SP, #+84]
        MOVS     R0,#+10
        UDIV     R0,R9,R0
        ADDS     R0,R0,#+48
        MOVS     R6,R0
        STRB     R6,[SP, #+85]
        MOVS     R0,#+10
        UDIV     R1,R9,R0
        MLS      R0,R0,R1,R9
        ADDS     R0,R0,#+48
        MOVS     R6,R0
        STRB     R6,[SP, #+86]
        MOVS     R0,#+0
        STRB     R0,[SP, #+87]
        LDRB     R0,[SP, #+69]
        STRB     R0,[SP, #+88]
        MOVS     R0,#+100
        UDIV     R0,R10,R0
        ADDS     R0,R0,#+48
        STRB     R0,[SP, #+89]
        MOVS     R0,#+100
        UDIV     R1,R10,R0
        MLS      R0,R0,R1,R10
        MOVS     R1,#+10
        UDIV     R0,R0,R1
        ADDS     R0,R0,#+48
        STRB     R0,[SP, #+90]
        MOVS     R0,#+10
        UDIV     R1,R10,R0
        MLS      R0,R0,R1,R10
        ADDS     R0,R0,#+48
        STRB     R0,[SP, #+91]
        MOVS     R0,#+46
        STRB     R0,[SP, #+92]
        MOVS     R0,#+10
        UDIV     R0,R11,R0
        ADDS     R0,R0,#+48
        MOVS     R6,R0
        STRB     R6,[SP, #+93]
        MOVS     R0,#+10
        UDIV     R1,R11,R0
        MLS      R0,R0,R1,R11
        ADDS     R0,R0,#+48
        MOVS     R6,R0
        STRB     R6,[SP, #+94]
        MOVS     R0,#+3
        STR      R0,[SP, #+64]
        LDRB     R0,[SP, #+94]
        STR      R0,[SP, #+60]
        LDRB     R0,[SP, #+93]
        STR      R0,[SP, #+56]
        LDRB     R0,[SP, #+92]
        STR      R0,[SP, #+52]
        LDRB     R0,[SP, #+91]
        STR      R0,[SP, #+48]
        LDRB     R0,[SP, #+90]
        STR      R0,[SP, #+44]
        LDRB     R0,[SP, #+89]
        STR      R0,[SP, #+40]
        LDRB     R0,[SP, #+88]
        STR      R0,[SP, #+36]
        LDRB     R0,[SP, #+87]
        STR      R0,[SP, #+32]
        LDRB     R0,[SP, #+86]
        STR      R0,[SP, #+28]
        LDRB     R0,[SP, #+85]
        STR      R0,[SP, #+24]
        LDRB     R0,[SP, #+84]
        STR      R0,[SP, #+20]
        LDRB     R0,[SP, #+83]
        STR      R0,[SP, #+16]
        LDRB     R0,[SP, #+82]
        STR      R0,[SP, #+12]
        LDRB     R0,[SP, #+81]
        STR      R0,[SP, #+8]
        LDRB     R0,[SP, #+80]
        STR      R0,[SP, #+4]
        LDRB     R0,[SP, #+70]
        STR      R0,[SP, #+0]
        LDRB     R3,[SP, #+71]
        LDRB     R2,[SP, #+68]
        MOVS     R1,#+18
        MOVS     R0,#+68
        BL       Send_MDIN_Data
        B.N      ??System_Data_Parser_17
??System_Data_Parser_10:
        LDRB     R0,[SP, #+80]
        STR      R0,[SP, #+76]
        LDR      R0,[SP, #+76]
        LDRB     R1,[SP, #+81]
        ORRS     R0,R0,R1, LSL #+8
        STR      R0,[SP, #+76]
        MOVS     R0,#+3
        STR      R0,[SP, #+64]
        LDRB     R0,[SP, #+100]
        STR      R0,[SP, #+60]
        LDRB     R0,[SP, #+99]
        STR      R0,[SP, #+56]
        LDRB     R0,[SP, #+98]
        STR      R0,[SP, #+52]
        LDRB     R0,[SP, #+97]
        STR      R0,[SP, #+48]
        LDRB     R0,[SP, #+96]
        STR      R0,[SP, #+44]
        LDRB     R0,[SP, #+95]
        STR      R0,[SP, #+40]
        LDRB     R0,[SP, #+94]
        STR      R0,[SP, #+36]
        LDRB     R0,[SP, #+93]
        STR      R0,[SP, #+32]
        LDRB     R0,[SP, #+92]
        STR      R0,[SP, #+28]
        LDRB     R0,[SP, #+91]
        STR      R0,[SP, #+24]
        LDRB     R0,[SP, #+90]
        STR      R0,[SP, #+20]
        LDRB     R0,[SP, #+89]
        STR      R0,[SP, #+16]
        LDRB     R0,[SP, #+88]
        STR      R0,[SP, #+12]
        LDRB     R0,[SP, #+87]
        STR      R0,[SP, #+8]
        LDRB     R0,[SP, #+86]
        STR      R0,[SP, #+4]
        LDRB     R0,[SP, #+85]
        STR      R0,[SP, #+0]
        LDRB     R3,[SP, #+84]
        LDRB     R2,[SP, #+83]
        LDRB     R1,[SP, #+82]
        LDR      R0,[SP, #+76]
        BL       Send_MDIN_Data
        B.N      ??System_Data_Parser_17
??System_Data_Parser_12:
        MOVS     R0,#+209
        MOVS     R4,R0
        MOVS     R0,#+4
        MOVS     R5,R0
        MOVS     R0,#+7
        STRB     R0,[SP, #+68]
        LDR.W    R0,??DataTable22_3
        MOVS     R1,#+202
        STRB     R1,[R0, #+31]
        LDR.W    R0,??DataTable22_3
        MOVS     R1,#+172
        STRB     R1,[R0, #+32]
        LDR.W    R0,??DataTable22_3
        STRB     R5,[R0, #+33]
        LDR.W    R0,??DataTable22_3
        LDRB     R1,[SP, #+68]
        STRB     R1,[R0, #+34]
        LDR.W    R0,??DataTable22_3
        STRB     R4,[R0, #+35]
        LDR.W    R0,??DataTable22_3
        MOVS     R1,#+1
        STRB     R1,[R0, #+36]
        LDR.W    R0,??DataTable22_3
        MOVS     R1,#+0
        STRB     R1,[R0, #+37]
        LDR.W    R0,??DataTable22_3
        MOVS     R1,#+0
        STRB     R1,[R0, #+38]
        LDR.W    R0,??DataTable22_3
        LDRB     R0,[R0, #+34]
        LDR.W    R1,??DataTable22_3
        LDRB     R1,[R1, #+35]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable22_3
        LDRB     R1,[R1, #+36]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable22_3
        LDRB     R1,[R1, #+37]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable22_3
        STRB     R0,[R1, #+38]
        LDR.W    R0,??DataTable22_3
        MOVS     R1,#+207
        STRB     R1,[R0, #+39]
        LDR.W    R0,??DataTable22_3
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        LDR.W    R0,??DataTable22_3
        ADDS     R1,R5,#+5
        STRB     R1,[R0, #+1]
        LDR.W    R0,??DataTable22_3
        LDRB     R0,[R0, #+0]
        ADDS     R1,R0,#+1
        LDR.W    R2,??DataTable22_3
        STRB     R1,[R2, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable22_3
        ADDS     R0,R0,R1
        LDRB     R1,[R0, #+31]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.W    R0,??DataTable22_4  ;; 0x40013800
        BL       USART_SendData
        B.N      ??System_Data_Parser_17
??System_Data_Parser_13:
        MOVS     R1,#+1
        MOV      R0,#+2048
        BL       RCC_APB1PeriphClockCmd
        MOV      R0,#+384
        BL       WWDG_SetPrescaler
        MOVS     R0,#+80
        BL       WWDG_SetWindowValue
        MOVS     R0,#+127
        BL       WWDG_Enable
        B.N      ??System_Data_Parser_17
??System_Data_Parser_14:
        LDR.W    R0,??DataTable21
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
??System_Data_Parser_24:
        LDR.W    R0,??DataTable21
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??System_Data_Parser_25
        BL       Module_Auto_Sync
        LDR.W    R0,??DataTable21
        LDRB     R0,[R0, #+8]
        CMP      R0,#+0
        BEQ.N    ??System_Data_Parser_24
        LDR.W    R0,??DataTable21
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        B.N      ??System_Data_Parser_24
??System_Data_Parser_25:
        LDR.N    R0,??DataTable21
        LDRB     R0,[R0, #+8]
        CMP      R0,#+129
        BEQ.N    ??System_Data_Parser_26
        CMP      R0,#+160
        BEQ.N    ??System_Data_Parser_27
        B.N      ??System_Data_Parser_28
??System_Data_Parser_26:
        MOV      R0,#+9600
        BL       UART4_Init
        MOVS     R0,#+200
        BL       Delay_1ms
        B.N      ??System_Data_Parser_29
??System_Data_Parser_27:
        MOV      R0,#+38400
        BL       UART4_Init
        MOVS     R0,#+2
        BL       VIDEO_Initialization
        MOVS     R0,#+200
        BL       Delay_1ms
        BL       MDIN_I550_Initialization
        LDR.N    R0,??DataTable21_2
        MOVS     R1,#+240
        STRB     R1,[R0, #+17]
        MOVS     R0,#+17
        STR      R0,[SP, #+4]
        MOVS     R0,#+6
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,#+240
        BL       Send_TSM_Data
        MOVS     R0,#+50
        BL       Delay_1ms
        LDR.N    R0,??DataTable21_2
        MOVS     R1,#+128
        STRB     R1,[R0, #+17]
        MOVS     R0,#+17
        STR      R0,[SP, #+4]
        MOVS     R0,#+6
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,#+128
        BL       Send_TSM_Data
        MOVS     R0,#+50
        BL       Delay_1ms
        LDR.N    R0,??DataTable21_2
        MOVS     R1,#+129
        STRB     R1,[R0, #+17]
        MOVS     R0,#+17
        STR      R0,[SP, #+4]
        MOVS     R0,#+6
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,#+129
        BL       Send_TSM_Data
        MOVS     R0,#+50
        BL       Delay_1ms
        B.N      ??System_Data_Parser_29
??System_Data_Parser_28:
        MOV      R0,#+38400
        BL       UART4_Init
        MOVS     R0,#+2
        BL       VIDEO_Initialization
        MOVS     R0,#+200
        BL       Delay_1ms
        BL       MDIN_I550_Initialization
        MOVS     R0,#+200
        BL       Delay_1ms
        MOVS     R0,#+3
        STR      R0,[SP, #+64]
        MOVS     R0,#+0
        STR      R0,[SP, #+60]
        MOVS     R0,#+0
        STR      R0,[SP, #+56]
        MOVS     R0,#+0
        STR      R0,[SP, #+52]
        MOVS     R0,#+0
        STR      R0,[SP, #+48]
        MOVS     R0,#+0
        STR      R0,[SP, #+44]
        MOVS     R0,#+0
        STR      R0,[SP, #+40]
        MOVS     R0,#+0
        STR      R0,[SP, #+36]
        MOVS     R0,#+0
        STR      R0,[SP, #+32]
        MOVS     R0,#+0
        STR      R0,[SP, #+28]
        MOVS     R0,#+0
        STR      R0,[SP, #+24]
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
        MOVS     R0,#+0
        STR      R0,[SP, #+16]
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+5
        MOVS     R2,#+13
        MOVS     R1,#+3
        MOVS     R0,#+34
        BL       Send_MDIN_Data
        MOVS     R0,#+3
        STR      R0,[SP, #+64]
        MOVS     R0,#+0
        STR      R0,[SP, #+60]
        MOVS     R0,#+0
        STR      R0,[SP, #+56]
        MOVS     R0,#+0
        STR      R0,[SP, #+52]
        MOVS     R0,#+0
        STR      R0,[SP, #+48]
        MOVS     R0,#+0
        STR      R0,[SP, #+44]
        MOVS     R0,#+0
        STR      R0,[SP, #+40]
        MOVS     R0,#+0
        STR      R0,[SP, #+36]
        MOVS     R0,#+0
        STR      R0,[SP, #+32]
        MOVS     R0,#+0
        STR      R0,[SP, #+28]
        MOVS     R0,#+0
        STR      R0,[SP, #+24]
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
        MOVS     R0,#+0
        STR      R0,[SP, #+16]
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+5
        MOVS     R2,#+13
        MOVS     R1,#+3
        MOVS     R0,#+34
        BL       Send_MDIN_Data
        MOVS     R0,#+3
        STR      R0,[SP, #+64]
        MOVS     R0,#+0
        STR      R0,[SP, #+60]
        MOVS     R0,#+0
        STR      R0,[SP, #+56]
        MOVS     R0,#+0
        STR      R0,[SP, #+52]
        MOVS     R0,#+0
        STR      R0,[SP, #+48]
        MOVS     R0,#+0
        STR      R0,[SP, #+44]
        MOVS     R0,#+0
        STR      R0,[SP, #+40]
        MOVS     R0,#+0
        STR      R0,[SP, #+36]
        MOVS     R0,#+0
        STR      R0,[SP, #+32]
        MOVS     R0,#+0
        STR      R0,[SP, #+28]
        MOVS     R0,#+0
        STR      R0,[SP, #+24]
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
        MOVS     R0,#+0
        STR      R0,[SP, #+16]
        MOVS     R0,#+0
        STR      R0,[SP, #+12]
        MOVS     R0,#+0
        STR      R0,[SP, #+8]
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+5
        MOVS     R2,#+13
        MOVS     R1,#+3
        MOVS     R0,#+34
        BL       Send_MDIN_Data
??System_Data_Parser_29:
        B.N      ??System_Data_Parser_17
??System_Data_Parser_11:
        MOVS     R0,#+146
        MOVS     R4,R0
        MOVS     R0,#+14
        MOVS     R5,R0
        MOVS     R0,#+1
        STRB     R0,[SP, #+68]
        LDR.W    R0,??DataTable22_3
        MOVS     R1,#+202
        STRB     R1,[R0, #+31]
        LDR.W    R0,??DataTable22_3
        MOVS     R1,#+172
        STRB     R1,[R0, #+32]
        LDR.W    R0,??DataTable22_3
        STRB     R5,[R0, #+33]
        LDR.W    R0,??DataTable22_3
        LDRB     R1,[SP, #+68]
        STRB     R1,[R0, #+34]
        LDR.W    R0,??DataTable22_3
        STRB     R4,[R0, #+35]
        LDR.W    R0,??DataTable22_3
        MOVS     R1,#+1
        STRB     R1,[R0, #+36]
        LDR.W    R0,??DataTable22_3
        MOVS     R1,#+26
        STRB     R1,[R0, #+37]
        LDR.W    R0,??DataTable22_3
        MOVS     R1,#+140
        STRB     R1,[R0, #+38]
        LDR.W    R0,??DataTable22_3
        MOVS     R1,#+3
        STRB     R1,[R0, #+39]
        LDR.W    R0,??DataTable22_3
        LDR.N    R1,??DataTable21
        LDRB     R1,[R1, #+8]
        STRB     R1,[R0, #+40]
        LDR.N    R0,??DataTable21
        LDRB     R0,[R0, #+8]
        CMP      R0,#+129
        BEQ.N    ??System_Data_Parser_30
        CMP      R0,#+160
        BEQ.N    ??System_Data_Parser_31
        B.N      ??System_Data_Parser_32
??System_Data_Parser_30:
        LDR.W    R0,??DataTable22_3
        MOVS     R1,#+0
        STRB     R1,[R0, #+41]
        LDR.W    R0,??DataTable22_3
        MOVS     R1,#+0
        STRB     R1,[R0, #+42]
        LDR.W    R0,??DataTable22_3
        MOVS     R1,#+0
        STRB     R1,[R0, #+43]
        LDR.W    R0,??DataTable22_3
        MOVS     R1,#+0
        STRB     R1,[R0, #+44]
        LDR.W    R0,??DataTable22_3
        MOVS     R1,#+0
        STRB     R1,[R0, #+45]
        LDR.W    R0,??DataTable22_3
        MOVS     R1,#+0
        STRB     R1,[R0, #+46]
        LDR.W    R0,??DataTable22_3
        MOVS     R1,#+0
        STRB     R1,[R0, #+47]
        B.N      ??System_Data_Parser_33
??System_Data_Parser_31:
        LDR.W    R0,??DataTable22_3
        LDR.N    R1,??DataTable21
        LDRB     R1,[R1, #+10]
        STRB     R1,[R0, #+41]
        LDR.W    R0,??DataTable22_3
        LDR.N    R1,??DataTable21
        LDRB     R1,[R1, #+11]
        STRB     R1,[R0, #+42]
        LDR.W    R0,??DataTable22_3
        LDR.N    R1,??DataTable21
        LDRB     R1,[R1, #+12]
        STRB     R1,[R0, #+43]
        LDR.W    R0,??DataTable22_3
        LDR.N    R1,??DataTable21
        LDRB     R1,[R1, #+13]
        STRB     R1,[R0, #+44]
        LDR.W    R0,??DataTable22_3
        LDR.N    R1,??DataTable21
        LDRB     R1,[R1, #+35]
        STRB     R1,[R0, #+45]
        LDR.W    R0,??DataTable22_3
        LDR.N    R1,??DataTable21
        LDRB     R1,[R1, #+34]
        STRB     R1,[R0, #+46]
        LDR.W    R0,??DataTable22_3
        LDR.N    R1,??DataTable21
        LDRB     R1,[R1, #+33]
        STRB     R1,[R0, #+47]
        B.N      ??System_Data_Parser_33
??System_Data_Parser_32:
??System_Data_Parser_33:
        LDR.W    R0,??DataTable22_3
        MOVS     R1,#+0
        STRB     R1,[R0, #+48]
        LDR.W    R0,??DataTable22_3
        LDRB     R0,[R0, #+34]
        LDR.W    R1,??DataTable22_3
        LDRB     R1,[R1, #+35]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable22_3
        LDRB     R1,[R1, #+36]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable22_3
        LDRB     R1,[R1, #+37]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable22_3
        STRB     R0,[R1, #+48]
        LDR.W    R0,??DataTable22_3
        MOVS     R1,#+207
        STRB     R1,[R0, #+49]
        LDR.W    R0,??DataTable22_3
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        LDR.W    R0,??DataTable22_3
        ADDS     R1,R5,#+5
        STRB     R1,[R0, #+1]
        LDR.W    R0,??DataTable22_3
        LDRB     R0,[R0, #+0]
        ADDS     R1,R0,#+1
        LDR.W    R2,??DataTable22_3
        STRB     R1,[R2, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable22_3
        ADDS     R0,R0,R1
        LDRB     R1,[R0, #+31]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.N    R0,??DataTable22_4  ;; 0x40013800
        BL       USART_SendData
        B.N      ??System_Data_Parser_17
??System_Data_Parser_15:
??System_Data_Parser_17:
        B.N      ??System_Data_Parser_34
??System_Data_Parser_2:
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+170
        BL       Sony_Data_Handing
        B.N      ??System_Data_Parser_34
??System_Data_Parser_3:
        LDR.N    R0,??DataTable21
        LDRB     R0,[R0, #+10]
        CMP      R0,#+0
        CMP      R0,#+1
        BLS.N    ??System_Data_Parser_35
        SUBS     R0,R0,#+2
        BEQ.N    ??System_Data_Parser_36
        SUBS     R0,R0,#+126
        CMP      R0,#+1
        BHI.N    ??System_Data_Parser_37
??System_Data_Parser_35:
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+170
        BL       TSM_Data_Handing
        B.N      ??System_Data_Parser_37
??System_Data_Parser_36:
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+170
        BL       TCM_Data_Handing
??System_Data_Parser_37:
        B.N      ??System_Data_Parser_34
??System_Data_Parser_5:
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+170
        BL       OPTION_Data_Handing
        B.N      ??System_Data_Parser_34
??System_Data_Parser_6:
??System_Data_Parser_34:
        ADD      SP,SP,#+132
        POP      {R4-R11,PC}      ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21:
        DC32     stINFO

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_1:
        DC32     stSONY

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable21_2:
        DC32     stUART4

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART1_Data_Parser:
        PUSH     {R4-R11,LR}
        SUB      SP,SP,#+132
        MOVS     R7,#+0
        MOVS     R0,#+0
        STRB     R0,[SP, #+72]
        MOVS     R4,#+0
        MOVS     R5,#+0
        MOVS     R0,#+0
        STRB     R0,[SP, #+71]
        MOVS     R0,#+0
        STRB     R0,[SP, #+70]
        MOVS     R0,#+0
        STRB     R0,[SP, #+69]
        MOVS     R0,#+0
        STRB     R0,[SP, #+73]
        MOVS     R0,#+0
        STRB     R0,[SP, #+68]
        MOVS     R8,#+0
        MOVS     R9,#+0
        MOVS     R10,#+0
        MOVS     R11,#+0
        MOVS     R6,#+0
        MOVS     R0,#+0
        STR      R0,[SP, #+128]
        LDR.N    R0,??DataTable22_3
        LDRB     R0,[R0, #+135]
        MOVS     R4,R0
        LDR.N    R0,??DataTable22_3
        LDRB     R0,[R0, #+133]
        MOVS     R5,R0
        ADDS     R0,R5,#+4
        STRB     R0,[SP, #+72]
        MOVS     R0,#+5
        MOVS     R7,R0
??USART1_Data_Parser_0:
        LDRB     R0,[SP, #+72]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,R0
        BCS.N    ??USART1_Data_Parser_1
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        ADD      R0,SP,#+76
        ADDS     R0,R7,R0
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        LDR.N    R1,??DataTable22_3
        ADDS     R1,R7,R1
        LDRB     R1,[R1, #+131]
        STRB     R1,[R0, #-5]
        ADDS     R7,R7,#+1
        B.N      ??USART1_Data_Parser_0
??USART1_Data_Parser_1:
        LDR.N    R0,??DataTable22_3
        LDRB     R0,[R0, #+131]
        CMP      R0,#+160
        BEQ.W    ??USART1_Data_Parser_2
        CMP      R0,#+176
        BEQ.W    ??USART1_Data_Parser_3
        CMP      R0,#+202
        BNE.W    ??USART1_Data_Parser_4
??USART1_Data_Parser_5:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+17
        BEQ.N    ??USART1_Data_Parser_6
        BCC.W    ??USART1_Data_Parser_7
        CMP      R4,#+19
        BEQ.N    ??USART1_Data_Parser_8
        BCC.N    ??USART1_Data_Parser_9
        B.N      ??USART1_Data_Parser_7
??USART1_Data_Parser_6:
        LDR.N    R0,??DataTable22_2
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable23
        LDRB     R1,[R1, #+25]
        CMP      R0,R1
        BEQ.N    ??USART1_Data_Parser_10
        LDR.W    R0,??DataTable23
        LDRB     R0,[R0, #+25]
        LDR.N    R1,??DataTable22_2
        STRB     R0,[R1, #+0]
        LDR.N    R0,??DataTable22_2
        LDRB     R0,[R0, #+0]
        BL       OSD_Layer_Select
??USART1_Data_Parser_10:
        MOVS     R2,#+3
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+69
        BL       Send_MDIN_String_Data
        B.N      ??USART1_Data_Parser_11
??USART1_Data_Parser_9:
        LDR.N    R0,??DataTable22_2
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable23
        LDRB     R1,[R1, #+25]
        CMP      R0,R1
        BEQ.N    ??USART1_Data_Parser_12
        LDR.W    R0,??DataTable23
        LDRB     R0,[R0, #+25]
        LDR.N    R1,??DataTable22_2
        STRB     R0,[R1, #+0]
        LDR.N    R0,??DataTable22_2
        LDRB     R0,[R0, #+0]
        BL       OSD_Layer_Select
??USART1_Data_Parser_12:
        MOVS     R2,#+3
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+68
        BL       Send_MDIN_String_Data
        B.N      ??USART1_Data_Parser_11
??USART1_Data_Parser_8:
        LDR.N    R0,??DataTable22_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BEQ.N    ??USART1_Data_Parser_13
        LDR.N    R0,??DataTable22_2
        MOVS     R1,#+2
        STRB     R1,[R0, #+0]
        LDR.N    R0,??DataTable22_2
        LDRB     R0,[R0, #+0]
        BL       OSD_Layer_Select
??USART1_Data_Parser_13:
        LDRB     R0,[SP, #+77]
        LSLS     R0,R0,#+4
        MOV      R8,R0
        LDRB     R0,[SP, #+78]
        ORRS     R8,R0,R8
        LDRB     R0,[SP, #+79]
        LSLS     R0,R0,#+4
        MOV      R9,R0
        LDRB     R0,[SP, #+80]
        ORRS     R9,R0,R9
        LDRB     R0,[SP, #+81]
        CMP      R0,#+0
        BEQ.N    ??USART1_Data_Parser_14
        CMP      R0,#+1
        BEQ.N    ??USART1_Data_Parser_15
        B.N      ??USART1_Data_Parser_16
??USART1_Data_Parser_14:
        MOVS     R0,#+0
        STRB     R0,[SP, #+68]
        B.N      ??USART1_Data_Parser_17
??USART1_Data_Parser_15:
        MOVS     R0,#+45
        STRB     R0,[SP, #+68]
        B.N      ??USART1_Data_Parser_17
??USART1_Data_Parser_16:
??USART1_Data_Parser_17:
        LDRB     R0,[SP, #+82]
        LSLS     R0,R0,#+4
        MOV      R10,R0
        LDRB     R0,[SP, #+83]
        ORRS     R10,R0,R10
        LDRB     R0,[SP, #+84]
        LSLS     R0,R0,#+4
        MOV      R11,R0
        LDRB     R0,[SP, #+85]
        ORRS     R11,R0,R11
        MOVS     R0,#+2
        STRB     R0,[SP, #+71]
        MOVS     R0,#+1
        STRB     R0,[SP, #+70]
        MOVS     R0,#+0
        STRB     R0,[SP, #+69]
        MOVS     R0,#+0
        STRB     R0,[SP, #+76]
        MOVS     R0,#+100
        UDIV     R0,R8,R0
        ADDS     R0,R0,#+48
        STRB     R0,[SP, #+77]
        MOVS     R0,#+100
        UDIV     R1,R8,R0
        MLS      R0,R0,R1,R8
        MOVS     R1,#+10
        UDIV     R0,R0,R1
        ADDS     R0,R0,#+48
        STRB     R0,[SP, #+78]
        MOVS     R0,#+10
        UDIV     R1,R8,R0
        MLS      R0,R0,R1,R8
        ADDS     R0,R0,#+48
        STRB     R0,[SP, #+79]
        MOVS     R0,#+46
        STRB     R0,[SP, #+80]
        MOVS     R0,#+10
        UDIV     R0,R9,R0
        ADDS     R0,R0,#+48
        MOVS     R6,R0
        STRB     R6,[SP, #+81]
        MOVS     R0,#+10
        UDIV     R1,R9,R0
        MLS      R0,R0,R1,R9
        ADDS     R0,R0,#+48
        MOVS     R6,R0
        STRB     R6,[SP, #+82]
        MOVS     R0,#+0
        STRB     R0,[SP, #+83]
        LDRB     R0,[SP, #+68]
        STRB     R0,[SP, #+84]
        MOVS     R0,#+100
        UDIV     R0,R10,R0
        ADDS     R0,R0,#+48
        STRB     R0,[SP, #+85]
        MOVS     R0,#+100
        UDIV     R1,R10,R0
        MLS      R0,R0,R1,R10
        MOVS     R1,#+10
        UDIV     R0,R0,R1
        ADDS     R0,R0,#+48
        STRB     R0,[SP, #+86]
        MOVS     R0,#+10
        UDIV     R1,R10,R0
        MLS      R0,R0,R1,R10
        ADDS     R0,R0,#+48
        STRB     R0,[SP, #+87]
        MOVS     R0,#+46
        STRB     R0,[SP, #+88]
        MOVS     R0,#+10
        UDIV     R0,R11,R0
        ADDS     R0,R0,#+48
        MOVS     R6,R0
        STRB     R6,[SP, #+89]
        MOVS     R0,#+10
        UDIV     R1,R11,R0
        MLS      R0,R0,R1,R11
        ADDS     R0,R0,#+48
        MOVS     R6,R0
        STRB     R6,[SP, #+90]
        MOVS     R0,#+3
        STR      R0,[SP, #+64]
        LDRB     R0,[SP, #+90]
        STR      R0,[SP, #+60]
        LDRB     R0,[SP, #+89]
        STR      R0,[SP, #+56]
        LDRB     R0,[SP, #+88]
        STR      R0,[SP, #+52]
        LDRB     R0,[SP, #+87]
        STR      R0,[SP, #+48]
        LDRB     R0,[SP, #+86]
        STR      R0,[SP, #+44]
        LDRB     R0,[SP, #+85]
        STR      R0,[SP, #+40]
        LDRB     R0,[SP, #+84]
        STR      R0,[SP, #+36]
        LDRB     R0,[SP, #+83]
        STR      R0,[SP, #+32]
        LDRB     R0,[SP, #+82]
        STR      R0,[SP, #+28]
        LDRB     R0,[SP, #+81]
        STR      R0,[SP, #+24]
        LDRB     R0,[SP, #+80]
        STR      R0,[SP, #+20]
        LDRB     R0,[SP, #+79]
        STR      R0,[SP, #+16]
        LDRB     R0,[SP, #+78]
        STR      R0,[SP, #+12]
        LDRB     R0,[SP, #+77]
        STR      R0,[SP, #+8]
        LDRB     R0,[SP, #+76]
        STR      R0,[SP, #+4]
        LDRB     R0,[SP, #+69]
        STR      R0,[SP, #+0]
        LDRB     R3,[SP, #+70]
        LDRB     R2,[SP, #+71]
        MOVS     R1,#+18
        MOVS     R0,#+68
        BL       Send_MDIN_Data
        B.N      ??USART1_Data_Parser_11
??USART1_Data_Parser_7:
??USART1_Data_Parser_11:
        B.N      ??USART1_Data_Parser_18
??USART1_Data_Parser_2:
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+1
        BL       Sony_Data_Handing
        B.N      ??USART1_Data_Parser_18
??USART1_Data_Parser_3:
        LDR.W    R0,??DataTable24
        LDRB     R0,[R0, #+10]
        CMP      R0,#+0
        CMP      R0,#+1
        BLS.N    ??USART1_Data_Parser_19
        SUBS     R0,R0,#+2
        BEQ.N    ??USART1_Data_Parser_20
        SUBS     R0,R0,#+126
        CMP      R0,#+1
        BHI.N    ??USART1_Data_Parser_21
??USART1_Data_Parser_19:
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,#+1
        BL       TSM_Data_Handing
        B.N      ??USART1_Data_Parser_21
??USART1_Data_Parser_20:
??USART1_Data_Parser_21:
        B.N      ??USART1_Data_Parser_18
??USART1_Data_Parser_4:
??USART1_Data_Parser_18:
        ADD      SP,SP,#+132
        POP      {R4-R11,PC}      ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22:
        DC32     stSYS

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_1:
        DC32     g_Po_Data

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_2:
        DC32     stOSD

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_3:
        DC32     stUSART1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable22_4:
        DC32     0x40013800

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Before_USART1_Data_Parser:
        PUSH     {R4-R11,LR}
        SUB      SP,SP,#+20
        MOVS     R4,#+0
        MOVS     R5,#+0
        MOVS     R11,#+0
        MOVS     R6,#+0
        MOVS     R9,#+0
        MOVS     R10,#+0
        MOVS     R8,#+0
        MOVS     R7,#+0
        LDR.W    R0,??DataTable24_1
        LDRB     R0,[R0, #+15]
        CMP      R0,#+1
        BNE.W    ??Before_USART1_Data_Parser_0
        LDR.W    R0,??DataTable24_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+15]
        LDR.W    R0,??DataTable24_1
        LDRB     R0,[R0, #+133]
        MOVS     R4,R0
        LDR.W    R0,??DataTable24_1
        LDRB     R0,[R0, #+134]
        MOVS     R5,R0
        LDR.W    R0,??DataTable24_1
        LDRB     R0,[R0, #+135]
        MOV      R11,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,R4
        CMP      R0,#+2
        BEQ.N    ??Before_USART1_Data_Parser_1
        CMP      R0,#+3
        BEQ.N    ??Before_USART1_Data_Parser_2
        CMP      R0,#+5
        BEQ.N    ??Before_USART1_Data_Parser_3
        CMP      R0,#+7
        BEQ.W    ??Before_USART1_Data_Parser_4
        CMP      R0,#+8
        BEQ.W    ??Before_USART1_Data_Parser_5
        CMP      R0,#+9
        BEQ.W    ??Before_USART1_Data_Parser_6
        CMP      R0,#+10
        BEQ.W    ??Before_USART1_Data_Parser_7
        CMP      R0,#+11
        BEQ.W    ??Before_USART1_Data_Parser_8
        CMP      R0,#+12
        BEQ.W    ??Before_USART1_Data_Parser_9
        CMP      R0,#+16
        BEQ.W    ??Before_USART1_Data_Parser_10
        CMP      R0,#+24
        BEQ.W    ??Before_USART1_Data_Parser_11
        CMP      R0,#+25
        BEQ.W    ??Before_USART1_Data_Parser_12
        CMP      R0,#+32
        BEQ.W    ??Before_USART1_Data_Parser_13
        CMP      R0,#+33
        BEQ.W    ??Before_USART1_Data_Parser_14
        CMP      R0,#+95
        BEQ.W    ??Before_USART1_Data_Parser_15
        CMP      R0,#+144
        BEQ.W    ??Before_USART1_Data_Parser_16
        CMP      R0,#+145
        BEQ.W    ??Before_USART1_Data_Parser_17
        CMP      R0,#+170
        BEQ.W    ??Before_USART1_Data_Parser_18
        B.N      ??Before_USART1_Data_Parser_19
??Before_USART1_Data_Parser_1:
        LDR.W    R0,??DataTable24_2
        STRB     R5,[R0, #+10]
        LDR.W    R0,??DataTable24_2
        STRB     R11,[R0, #+12]
        LDR.W    R0,??DataTable24_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+9]
        LDR.W    R0,??DataTable24_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+24]
        LDR.W    R0,??DataTable24_2
        MOVS     R1,#+2
        STRB     R1,[R0, #+3]
        LDR.W    R0,??DataTable24_2
        LDRB     R0,[R0, #+10]
        CMP      R0,#+15
        BCC.N    ??Before_USART1_Data_Parser_20
        LDR.W    R0,??DataTable24_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+18]
        LDR.W    R0,??DataTable24_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+19]
        LDR.W    R0,??DataTable24_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+20]
??Before_USART1_Data_Parser_20:
        B.N      ??Before_USART1_Data_Parser_0
??Before_USART1_Data_Parser_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??Before_USART1_Data_Parser_21
        CMP      R5,#+1
        BEQ.N    ??Before_USART1_Data_Parser_22
        B.N      ??Before_USART1_Data_Parser_23
??Before_USART1_Data_Parser_21:
        LDR.W    R0,??DataTable24_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+24]
        B.N      ??Before_USART1_Data_Parser_23
??Before_USART1_Data_Parser_22:
        LDR.W    R0,??DataTable24_2
        MOVS     R1,#+2
        STRB     R1,[R0, #+24]
??Before_USART1_Data_Parser_23:
        LDR.W    R0,??DataTable24_2
        LDRB     R0,[R0, #+13]
        CMP      R0,#+0
        BEQ.N    ??Before_USART1_Data_Parser_24
        LDR.W    R0,??DataTable24_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+13]
??Before_USART1_Data_Parser_24:
        LDR.W    R0,??DataTable24_2
        LDRB     R0,[R0, #+18]
        CMP      R0,#+1
        BNE.N    ??Before_USART1_Data_Parser_25
        LDR.W    R0,??DataTable24_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+18]
??Before_USART1_Data_Parser_25:
        B.N      ??Before_USART1_Data_Parser_0
??Before_USART1_Data_Parser_3:
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        CMP      R11,#+0
        BEQ.N    ??Before_USART1_Data_Parser_26
??Before_USART1_Data_Parser_27:
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        MOVS     R0,#+50
        MUL      R0,R0,R11
        LDR.W    R1,??DataTable24_3
        STR      R0,[R1, #+16]
??Before_USART1_Data_Parser_26:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BNE.N    ??Before_USART1_Data_Parser_28
        LDR.W    R0,??DataTable24_3
        MOVS     R1,#+1
        STRB     R1,[R0, #+9]
        B.N      ??Before_USART1_Data_Parser_29
??Before_USART1_Data_Parser_28:
        LDR.W    R0,??DataTable24_3
        MOVS     R1,#+0
        STRB     R1,[R0, #+9]
??Before_USART1_Data_Parser_29:
        B.N      ??Before_USART1_Data_Parser_0
??Before_USART1_Data_Parser_4:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??Before_USART1_Data_Parser_30
        CMP      R5,#+1
        BEQ.N    ??Before_USART1_Data_Parser_31
        B.N      ??Before_USART1_Data_Parser_32
??Before_USART1_Data_Parser_30:
        MOVS     R1,#+2
        LDR.W    R0,??DataTable24_4  ;; 0x40010800
        BL       GPIO_ResetBits
        LDR.W    R0,??DataTable24_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+1]
        B.N      ??Before_USART1_Data_Parser_33
??Before_USART1_Data_Parser_31:
        MOVS     R1,#+2
        LDR.W    R0,??DataTable24_4  ;; 0x40010800
        BL       GPIO_SetBits
        LDR.W    R0,??DataTable24_5
        MOVS     R1,#+1
        STRB     R1,[R0, #+1]
        B.N      ??Before_USART1_Data_Parser_33
??Before_USART1_Data_Parser_32:
??Before_USART1_Data_Parser_33:
        B.N      ??Before_USART1_Data_Parser_0
??Before_USART1_Data_Parser_5:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??Before_USART1_Data_Parser_34
        CMP      R5,#+1
        BEQ.N    ??Before_USART1_Data_Parser_35
        B.N      ??Before_USART1_Data_Parser_36
??Before_USART1_Data_Parser_34:
        MOVS     R0,#+20
        STR      R0,[SP, #+12]
        MOVS     R0,#+10
        STR      R0,[SP, #+8]
        MOVS     R0,#+48
        STR      R0,[SP, #+4]
        MOVS     R0,#+48
        STR      R0,[SP, #+0]
        MOVS     R3,#+48
        MOVS     R2,#+48
        MOVS     R1,#+48
        MOVS     R0,#+82
        BL       Send_Light_Data
        LDR.W    R0,??DataTable24_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        B.N      ??Before_USART1_Data_Parser_37
??Before_USART1_Data_Parser_35:
        MOVS     R0,#+20
        STR      R0,[SP, #+12]
        MOVS     R0,#+10
        STR      R0,[SP, #+8]
        MOVS     R0,#+49
        STR      R0,[SP, #+4]
        MOVS     R0,#+48
        STR      R0,[SP, #+0]
        MOVS     R3,#+48
        MOVS     R2,#+48
        MOVS     R1,#+48
        MOVS     R0,#+82
        BL       Send_Light_Data
        LDR.W    R0,??DataTable24_5
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
        B.N      ??Before_USART1_Data_Parser_37
??Before_USART1_Data_Parser_36:
??Before_USART1_Data_Parser_37:
        B.N      ??Before_USART1_Data_Parser_0
??Before_USART1_Data_Parser_6:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LSLS     R0,R5,#+8
        MOVS     R7,R0
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        ORRS     R7,R11,R7
        MOV      R0,#+1000
        UDIV     R0,R7,R0
        MOVS     R6,R0
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+9
        BCC.N    ??Before_USART1_Data_Parser_38
        MOVS     R0,#+9
        MOVS     R6,R0
??Before_USART1_Data_Parser_38:
        ADDS     R6,R6,#+48
        MOV      R0,#+1000
        UDIV     R1,R7,R0
        MLS      R7,R0,R1,R7
        MOVS     R0,#+100
        UDIV     R0,R7,R0
        MOV      R9,R0
        ADDS     R9,R9,#+48
        MOVS     R0,#+100
        UDIV     R1,R7,R0
        MLS      R7,R0,R1,R7
        MOVS     R0,#+10
        UDIV     R0,R7,R0
        MOV      R10,R0
        ADDS     R10,R10,#+48
        MOVS     R0,#+10
        UDIV     R1,R7,R0
        MLS      R0,R0,R1,R7
        MOV      R8,R0
        ADDS     R8,R8,#+48
        MOVS     R0,#+20
        STR      R0,[SP, #+12]
        MOVS     R0,#+10
        STR      R0,[SP, #+8]
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        STR      R8,[SP, #+4]
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        STR      R10,[SP, #+0]
        MOV      R3,R9
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+43
        MOVS     R0,#+109
        BL       Send_Light_Data
        B.N      ??Before_USART1_Data_Parser_0
??Before_USART1_Data_Parser_7:
        MOVS     R0,#+20
        STR      R0,[SP, #+12]
        MOVS     R0,#+10
        STR      R0,[SP, #+8]
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,#+80
        BL       Send_Light_Data
        B.N      ??Before_USART1_Data_Parser_0
??Before_USART1_Data_Parser_8:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??Before_USART1_Data_Parser_39
        CMP      R5,#+1
        BEQ.N    ??Before_USART1_Data_Parser_40
        B.N      ??Before_USART1_Data_Parser_41
??Before_USART1_Data_Parser_39:
        LDR.W    R0,??DataTable24_5
        MOVS     R1,#+43
        STRB     R1,[R0, #+3]
        MOVS     R0,#+48
        MOVS     R6,R0
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        MOVS     R0,#+100
        SDIV     R0,R11,R0
        MOV      R9,R0
        ADDS     R9,R9,#+48
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        MOVS     R0,#+100
        SDIV     R1,R11,R0
        MLS      R11,R0,R1,R11
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        MOVS     R0,#+10
        SDIV     R0,R11,R0
        MOV      R10,R0
        ADDS     R10,R10,#+48
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        MOVS     R0,#+10
        SDIV     R1,R11,R0
        MLS      R0,R0,R1,R11
        MOV      R8,R0
        ADDS     R8,R8,#+48
        MOVS     R0,#+20
        STR      R0,[SP, #+12]
        MOVS     R0,#+10
        STR      R0,[SP, #+8]
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        STR      R8,[SP, #+4]
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        STR      R10,[SP, #+0]
        MOV      R3,R9
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+43
        MOVS     R0,#+77
        BL       Send_Light_Data
        B.N      ??Before_USART1_Data_Parser_42
??Before_USART1_Data_Parser_40:
        LDR.W    R0,??DataTable24_5
        MOVS     R1,#+45
        STRB     R1,[R0, #+3]
        MOVS     R0,#+48
        MOVS     R6,R0
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        MOVS     R0,#+100
        SDIV     R0,R11,R0
        MOV      R9,R0
        ADDS     R9,R9,#+48
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        MOVS     R0,#+100
        SDIV     R1,R11,R0
        MLS      R11,R0,R1,R11
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        MOVS     R0,#+10
        SDIV     R0,R11,R0
        MOV      R10,R0
        ADDS     R10,R10,#+48
        UXTB     R11,R11          ;; ZeroExt  R11,R11,#+24,#+24
        MOVS     R0,#+10
        SDIV     R1,R11,R0
        MLS      R0,R0,R1,R11
        MOV      R8,R0
        ADDS     R8,R8,#+48
        MOVS     R0,#+20
        STR      R0,[SP, #+12]
        MOVS     R0,#+10
        STR      R0,[SP, #+8]
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        STR      R8,[SP, #+4]
        UXTB     R10,R10          ;; ZeroExt  R10,R10,#+24,#+24
        STR      R10,[SP, #+0]
        MOV      R3,R9
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+45
        MOVS     R0,#+77
        BL       Send_Light_Data
        B.N      ??Before_USART1_Data_Parser_42
??Before_USART1_Data_Parser_41:
??Before_USART1_Data_Parser_42:
        B.N      ??Before_USART1_Data_Parser_0
??Before_USART1_Data_Parser_9:
        MOVS     R0,#+20
        STR      R0,[SP, #+12]
        MOVS     R0,#+10
        STR      R0,[SP, #+8]
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,#+73
        BL       Send_Light_Data
        B.N      ??Before_USART1_Data_Parser_0
??Before_USART1_Data_Parser_10:
        LDR.W    R0,??DataTable24_3
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
        B.N      ??Before_USART1_Data_Parser_0
??Before_USART1_Data_Parser_11:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??Before_USART1_Data_Parser_43
        CMP      R5,#+2
        BEQ.N    ??Before_USART1_Data_Parser_44
        BCC.N    ??Before_USART1_Data_Parser_45
        B.N      ??Before_USART1_Data_Parser_46
??Before_USART1_Data_Parser_43:
        LDR.W    R0,??DataTable28
        MOVS     R1,#+1
        STRB     R1,[R0, #+19]
        LDR.W    R0,??DataTable28
        LDRB     R0,[R0, #+17]
        CMP      R0,#+0
        BEQ.N    ??Before_USART1_Data_Parser_47
        CMP      R0,#+1
        BEQ.N    ??Before_USART1_Data_Parser_48
        B.N      ??Before_USART1_Data_Parser_49
??Before_USART1_Data_Parser_47:
        MOVS     R1,#+2
        LDR.W    R0,??DataTable24_4  ;; 0x40010800
        BL       GPIO_ResetBits
        LDR.W    R0,??DataTable24_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+1]
        MOVS     R0,#+20
        STR      R0,[SP, #+12]
        MOVS     R0,#+10
        STR      R0,[SP, #+8]
        MOVS     R0,#+48
        STR      R0,[SP, #+4]
        MOVS     R0,#+48
        STR      R0,[SP, #+0]
        MOVS     R3,#+48
        MOVS     R2,#+48
        MOVS     R1,#+48
        MOVS     R0,#+82
        BL       Send_Light_Data
        LDR.W    R0,??DataTable24_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        B.N      ??Before_USART1_Data_Parser_49
??Before_USART1_Data_Parser_48:
        MOVS     R1,#+2
        LDR.W    R0,??DataTable24_4  ;; 0x40010800
        BL       GPIO_SetBits
        LDR.W    R0,??DataTable24_5
        MOVS     R1,#+1
        STRB     R1,[R0, #+1]
        MOVS     R0,#+20
        STR      R0,[SP, #+12]
        MOVS     R0,#+10
        STR      R0,[SP, #+8]
        MOVS     R0,#+49
        STR      R0,[SP, #+4]
        MOVS     R0,#+48
        STR      R0,[SP, #+0]
        MOVS     R3,#+48
        MOVS     R2,#+48
        MOVS     R1,#+48
        MOVS     R0,#+82
        BL       Send_Light_Data
        LDR.W    R0,??DataTable24_5
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
??Before_USART1_Data_Parser_49:
        B.N      ??Before_USART1_Data_Parser_50
??Before_USART1_Data_Parser_45:
        LDR.W    R0,??DataTable28
        MOVS     R1,#+0
        STRB     R1,[R0, #+19]
        MOVS     R1,#+2
        LDR.W    R0,??DataTable24_4  ;; 0x40010800
        BL       GPIO_SetBits
        LDR.W    R0,??DataTable24_5
        MOVS     R1,#+1
        STRB     R1,[R0, #+1]
        MOVS     R0,#+20
        STR      R0,[SP, #+12]
        MOVS     R0,#+10
        STR      R0,[SP, #+8]
        MOVS     R0,#+49
        STR      R0,[SP, #+4]
        MOVS     R0,#+48
        STR      R0,[SP, #+0]
        MOVS     R3,#+48
        MOVS     R2,#+48
        MOVS     R1,#+48
        MOVS     R0,#+82
        BL       Send_Light_Data
        LDR.W    R0,??DataTable24_5
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
        B.N      ??Before_USART1_Data_Parser_50
??Before_USART1_Data_Parser_44:
        LDR.W    R0,??DataTable28
        MOVS     R1,#+0
        STRB     R1,[R0, #+19]
        MOVS     R1,#+2
        LDR.W    R0,??DataTable24_4  ;; 0x40010800
        BL       GPIO_ResetBits
        LDR.W    R0,??DataTable24_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+1]
        MOVS     R0,#+20
        STR      R0,[SP, #+12]
        MOVS     R0,#+10
        STR      R0,[SP, #+8]
        MOVS     R0,#+48
        STR      R0,[SP, #+4]
        MOVS     R0,#+48
        STR      R0,[SP, #+0]
        MOVS     R3,#+48
        MOVS     R2,#+48
        MOVS     R1,#+48
        MOVS     R0,#+82
        BL       Send_Light_Data
        LDR.W    R0,??DataTable24_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        B.N      ??Before_USART1_Data_Parser_50
??Before_USART1_Data_Parser_46:
??Before_USART1_Data_Parser_50:
        B.N      ??Before_USART1_Data_Parser_0
??Before_USART1_Data_Parser_12:
        LDR.W    R0,??DataTable28
        STRB     R5,[R0, #+30]
        LDR.W    R0,??DataTable28
        LDRB     R0,[R0, #+30]
        CMP      R0,#+117
        BEQ.N    ??Before_USART1_Data_Parser_51
        CMP      R0,#+119
        BEQ.N    ??Before_USART1_Data_Parser_52
        CMP      R0,#+121
        BEQ.N    ??Before_USART1_Data_Parser_53
        CMP      R0,#+123
        BEQ.N    ??Before_USART1_Data_Parser_54
        CMP      R0,#+125
        BEQ.N    ??Before_USART1_Data_Parser_55
        CMP      R0,#+127
        BEQ.N    ??Before_USART1_Data_Parser_56
        CMP      R0,#+129
        BEQ.N    ??Before_USART1_Data_Parser_57
        CMP      R0,#+131
        BEQ.N    ??Before_USART1_Data_Parser_58
        CMP      R0,#+133
        BEQ.N    ??Before_USART1_Data_Parser_59
        CMP      R0,#+135
        BEQ.N    ??Before_USART1_Data_Parser_60
        CMP      R0,#+137
        BEQ.N    ??Before_USART1_Data_Parser_61
        B.N      ??Before_USART1_Data_Parser_62
??Before_USART1_Data_Parser_51:
        LDR.W    R0,??DataTable28
        MOVS     R1,#+10
        STRB     R1,[R0, #+16]
        B.N      ??Before_USART1_Data_Parser_62
??Before_USART1_Data_Parser_52:
        LDR.W    R0,??DataTable28
        MOVS     R1,#+9
        STRB     R1,[R0, #+16]
        B.N      ??Before_USART1_Data_Parser_62
??Before_USART1_Data_Parser_53:
        LDR.W    R0,??DataTable28
        MOVS     R1,#+8
        STRB     R1,[R0, #+16]
        B.N      ??Before_USART1_Data_Parser_62
??Before_USART1_Data_Parser_54:
        LDR.W    R0,??DataTable28
        MOVS     R1,#+7
        STRB     R1,[R0, #+16]
        B.N      ??Before_USART1_Data_Parser_62
??Before_USART1_Data_Parser_55:
        LDR.W    R0,??DataTable28
        MOVS     R1,#+6
        STRB     R1,[R0, #+16]
        B.N      ??Before_USART1_Data_Parser_62
??Before_USART1_Data_Parser_56:
        LDR.W    R0,??DataTable28
        MOVS     R1,#+5
        STRB     R1,[R0, #+16]
        B.N      ??Before_USART1_Data_Parser_62
??Before_USART1_Data_Parser_57:
        LDR.W    R0,??DataTable28
        MOVS     R1,#+4
        STRB     R1,[R0, #+16]
        B.N      ??Before_USART1_Data_Parser_62
??Before_USART1_Data_Parser_58:
        LDR.W    R0,??DataTable28
        MOVS     R1,#+3
        STRB     R1,[R0, #+16]
        B.N      ??Before_USART1_Data_Parser_62
??Before_USART1_Data_Parser_59:
        LDR.W    R0,??DataTable28
        MOVS     R1,#+2
        STRB     R1,[R0, #+16]
        B.N      ??Before_USART1_Data_Parser_62
??Before_USART1_Data_Parser_60:
        LDR.W    R0,??DataTable28
        MOVS     R1,#+1
        STRB     R1,[R0, #+16]
        B.N      ??Before_USART1_Data_Parser_62
??Before_USART1_Data_Parser_61:
        LDR.W    R0,??DataTable28
        MOVS     R1,#+0
        STRB     R1,[R0, #+16]
??Before_USART1_Data_Parser_62:
        B.N      ??Before_USART1_Data_Parser_0
??Before_USART1_Data_Parser_13:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOV      R0,#+1000
        MUL      R0,R0,R5
        LDR.W    R1,??DataTable28
        STR      R0,[R1, #+32]
        B.N      ??Before_USART1_Data_Parser_0
??Before_USART1_Data_Parser_14:
        LDR.W    R0,??DataTable24_2
        STRB     R5,[R0, #+17]
        B.N      ??Before_USART1_Data_Parser_0
??Before_USART1_Data_Parser_16:
        MOVS     R2,#+26
        MOVS     R1,#+1
        MOVS     R0,#+144
        BL       Reponse_Data_Send
        B.N      ??Before_USART1_Data_Parser_0
??Before_USART1_Data_Parser_17:
        MOVS     R2,#+3
        MOVS     R1,#+140
        MOVS     R0,#+145
        BL       Reponse_Data_Send
        B.N      ??Before_USART1_Data_Parser_0
??Before_USART1_Data_Parser_15:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??Before_USART1_Data_Parser_63
        CMP      R5,#+2
        BEQ.N    ??Before_USART1_Data_Parser_64
        BCC.N    ??Before_USART1_Data_Parser_65
        B.N      ??Before_USART1_Data_Parser_66
??Before_USART1_Data_Parser_63:
        LDR.W    R0,??DataTable28
        MOVS     R1,#+0
        STRB     R1,[R0, #+18]
        LDR.W    R0,??DataTable28
        MOVS     R1,#+1
        STRB     R1,[R0, #+17]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        MOVS     R2,#+0
        MOVS     R1,#+3
        MOVS     R0,#+81
        BL       Send_Sony_Data
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        MOVS     R2,#+0
        MOVS     R1,#+2
        MOVS     R0,#+1
        BL       Send_Sony_Data
        MOVS     R1,#+2
        LDR.W    R0,??DataTable24_4  ;; 0x40010800
        BL       GPIO_SetBits
        LDR.W    R0,??DataTable24_5
        MOVS     R1,#+1
        STRB     R1,[R0, #+1]
        MOVS     R0,#+20
        STR      R0,[SP, #+12]
        MOVS     R0,#+10
        STR      R0,[SP, #+8]
        MOVS     R0,#+49
        STR      R0,[SP, #+4]
        MOVS     R0,#+48
        STR      R0,[SP, #+0]
        MOVS     R3,#+48
        MOVS     R2,#+48
        MOVS     R1,#+48
        MOVS     R0,#+82
        BL       Send_Light_Data
        LDR.W    R0,??DataTable24_5
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
        B.N      ??Before_USART1_Data_Parser_66
??Before_USART1_Data_Parser_65:
        LDR.W    R0,??DataTable28
        MOVS     R1,#+0
        STRB     R1,[R0, #+18]
        LDR.W    R0,??DataTable28
        MOVS     R1,#+0
        STRB     R1,[R0, #+17]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        MOVS     R2,#+0
        MOVS     R1,#+3
        MOVS     R0,#+81
        BL       Send_Sony_Data
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        MOVS     R2,#+0
        MOVS     R1,#+3
        MOVS     R0,#+1
        BL       Send_Sony_Data
        MOVS     R1,#+2
        LDR.W    R0,??DataTable24_4  ;; 0x40010800
        BL       GPIO_ResetBits
        LDR.W    R0,??DataTable24_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+1]
        MOVS     R0,#+20
        STR      R0,[SP, #+12]
        MOVS     R0,#+10
        STR      R0,[SP, #+8]
        MOVS     R0,#+48
        STR      R0,[SP, #+4]
        MOVS     R0,#+48
        STR      R0,[SP, #+0]
        MOVS     R3,#+48
        MOVS     R2,#+48
        MOVS     R1,#+48
        MOVS     R0,#+82
        BL       Send_Light_Data
        LDR.W    R0,??DataTable24_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        B.N      ??Before_USART1_Data_Parser_66
??Before_USART1_Data_Parser_64:
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        MOVS     R2,#+0
        MOVS     R1,#+2
        MOVS     R0,#+81
        BL       Send_Sony_Data
        LDR.W    R0,??DataTable28
        MOVS     R1,#+1
        STRB     R1,[R0, #+18]
??Before_USART1_Data_Parser_66:
        B.N      ??Before_USART1_Data_Parser_0
??Before_USART1_Data_Parser_18:
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+6
        MOVS     R2,#+0
        MOVS     R1,#+39
        MOVS     R0,#+7
        BL       Send_Sony_Data
        LDR.W    R0,??DataTable29
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
        B.N      ??Before_USART1_Data_Parser_0
??Before_USART1_Data_Parser_19:
??Before_USART1_Data_Parser_0:
        ADD      SP,SP,#+20
        POP      {R4-R11,PC}      ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable23:
        DC32     stUSART2

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Zoom_Data_Sync:
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        CMP      R0,#+548
        BHI.N    ??Zoom_Data_Sync_0
        LDR.W    R0,??DataTable24_5
        MOVW     R1,#+1035
        STR      R1,[R0, #+8]
        B.N      ??Zoom_Data_Sync_1
??Zoom_Data_Sync_0:
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        MOVW     R1,#+550
        CMP      R0,R1
        BCC.N    ??Zoom_Data_Sync_2
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        CMP      R0,#+1096
        BCS.N    ??Zoom_Data_Sync_2
        LDR.W    R0,??DataTable24_5
        MOV      R1,#+1000
        STR      R1,[R0, #+8]
        B.N      ??Zoom_Data_Sync_1
??Zoom_Data_Sync_2:
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        CMP      R0,#+1096
        BCC.N    ??Zoom_Data_Sync_3
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        MOVW     R1,#+1642
        CMP      R0,R1
        BCS.N    ??Zoom_Data_Sync_3
        LDR.W    R0,??DataTable24_5
        MOV      R1,#+964
        STR      R1,[R0, #+8]
        B.N      ??Zoom_Data_Sync_1
??Zoom_Data_Sync_3:
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        MOVW     R1,#+1642
        CMP      R0,R1
        BCC.N    ??Zoom_Data_Sync_4
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        MOVW     R1,#+2188
        CMP      R0,R1
        BCS.N    ??Zoom_Data_Sync_4
        LDR.W    R0,??DataTable24_5
        MOV      R1,#+928
        STR      R1,[R0, #+8]
        B.N      ??Zoom_Data_Sync_1
??Zoom_Data_Sync_4:
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        MOVW     R1,#+2188
        CMP      R0,R1
        BCC.N    ??Zoom_Data_Sync_5
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        MOVW     R1,#+2734
        CMP      R0,R1
        BCS.N    ??Zoom_Data_Sync_5
        LDR.W    R0,??DataTable24_5
        MOVW     R1,#+893
        STR      R1,[R0, #+8]
        B.N      ??Zoom_Data_Sync_1
??Zoom_Data_Sync_5:
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        MOVW     R1,#+2734
        CMP      R0,R1
        BCC.N    ??Zoom_Data_Sync_6
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        CMP      R0,#+3280
        BCS.N    ??Zoom_Data_Sync_6
        LDR.W    R0,??DataTable24_5
        MOVW     R1,#+857
        STR      R1,[R0, #+8]
        B.N      ??Zoom_Data_Sync_1
??Zoom_Data_Sync_6:
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        CMP      R0,#+3280
        BCC.N    ??Zoom_Data_Sync_7
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        MOVW     R1,#+3826
        CMP      R0,R1
        BCS.N    ??Zoom_Data_Sync_7
        LDR.W    R0,??DataTable24_5
        MOVW     R1,#+821
        STR      R1,[R0, #+8]
        B.N      ??Zoom_Data_Sync_1
??Zoom_Data_Sync_7:
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        MOVW     R1,#+3826
        CMP      R0,R1
        BCC.N    ??Zoom_Data_Sync_8
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        MOVW     R1,#+4372
        CMP      R0,R1
        BCS.N    ??Zoom_Data_Sync_8
        LDR.W    R0,??DataTable24_5
        MOVW     R1,#+785
        STR      R1,[R0, #+8]
        B.N      ??Zoom_Data_Sync_1
??Zoom_Data_Sync_8:
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        MOVW     R1,#+4372
        CMP      R0,R1
        BCC.N    ??Zoom_Data_Sync_9
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        MOVW     R1,#+4918
        CMP      R0,R1
        BCS.N    ??Zoom_Data_Sync_9
        LDR.N    R0,??DataTable24_5
        MOVW     R1,#+750
        STR      R1,[R0, #+8]
        B.N      ??Zoom_Data_Sync_1
??Zoom_Data_Sync_9:
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        MOVW     R1,#+4918
        CMP      R0,R1
        BCC.N    ??Zoom_Data_Sync_10
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        MOVW     R1,#+5464
        CMP      R0,R1
        BCS.N    ??Zoom_Data_Sync_10
        LDR.N    R0,??DataTable24_5
        MOVW     R1,#+714
        STR      R1,[R0, #+8]
        B.N      ??Zoom_Data_Sync_1
??Zoom_Data_Sync_10:
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        MOVW     R1,#+5464
        CMP      R0,R1
        BCC.N    ??Zoom_Data_Sync_11
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        MOVW     R1,#+6010
        CMP      R0,R1
        BCS.N    ??Zoom_Data_Sync_11
        LDR.N    R0,??DataTable24_5
        MOVW     R1,#+678
        STR      R1,[R0, #+8]
        B.N      ??Zoom_Data_Sync_1
??Zoom_Data_Sync_11:
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        MOVW     R1,#+6010
        CMP      R0,R1
        BCC.N    ??Zoom_Data_Sync_12
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        MOVW     R1,#+6556
        CMP      R0,R1
        BCS.N    ??Zoom_Data_Sync_12
        LDR.N    R0,??DataTable24_5
        MOVW     R1,#+642
        STR      R1,[R0, #+8]
        B.N      ??Zoom_Data_Sync_1
??Zoom_Data_Sync_12:
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        MOVW     R1,#+6556
        CMP      R0,R1
        BCC.N    ??Zoom_Data_Sync_13
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        MOVW     R1,#+7102
        CMP      R0,R1
        BCS.N    ??Zoom_Data_Sync_13
        LDR.N    R0,??DataTable24_5
        MOVW     R1,#+607
        STR      R1,[R0, #+8]
        B.N      ??Zoom_Data_Sync_1
??Zoom_Data_Sync_13:
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        MOVW     R1,#+7102
        CMP      R0,R1
        BCC.N    ??Zoom_Data_Sync_14
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        CMP      R0,#+7648
        BCS.N    ??Zoom_Data_Sync_14
        LDR.N    R0,??DataTable24_5
        MOVW     R1,#+571
        STR      R1,[R0, #+8]
        B.N      ??Zoom_Data_Sync_1
??Zoom_Data_Sync_14:
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        CMP      R0,#+7648
        BCC.N    ??Zoom_Data_Sync_15
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        MOVW     R1,#+8194
        CMP      R0,R1
        BCS.N    ??Zoom_Data_Sync_15
        LDR.N    R0,??DataTable24_5
        MOVW     R1,#+535
        STR      R1,[R0, #+8]
        B.N      ??Zoom_Data_Sync_1
??Zoom_Data_Sync_15:
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        MOVW     R1,#+8194
        CMP      R0,R1
        BCC.N    ??Zoom_Data_Sync_16
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        MOVW     R1,#+8740
        CMP      R0,R1
        BCS.N    ??Zoom_Data_Sync_16
        LDR.N    R0,??DataTable24_5
        MOV      R1,#+500
        STR      R1,[R0, #+8]
        B.N      ??Zoom_Data_Sync_1
??Zoom_Data_Sync_16:
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        MOVW     R1,#+8740
        CMP      R0,R1
        BCC.N    ??Zoom_Data_Sync_17
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        MOVW     R1,#+9286
        CMP      R0,R1
        BCS.N    ??Zoom_Data_Sync_17
        LDR.N    R0,??DataTable24_5
        MOV      R1,#+464
        STR      R1,[R0, #+8]
        B.N      ??Zoom_Data_Sync_1
??Zoom_Data_Sync_17:
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        MOVW     R1,#+9286
        CMP      R0,R1
        BCC.N    ??Zoom_Data_Sync_18
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        MOVW     R1,#+9832
        CMP      R0,R1
        BCS.N    ??Zoom_Data_Sync_18
        LDR.N    R0,??DataTable24_5
        MOV      R1,#+428
        STR      R1,[R0, #+8]
        B.N      ??Zoom_Data_Sync_1
??Zoom_Data_Sync_18:
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        MOVW     R1,#+9832
        CMP      R0,R1
        BCC.N    ??Zoom_Data_Sync_19
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        MOVW     R1,#+10378
        CMP      R0,R1
        BCS.N    ??Zoom_Data_Sync_19
        LDR.N    R0,??DataTable24_5
        MOV      R1,#+392
        STR      R1,[R0, #+8]
        B.N      ??Zoom_Data_Sync_1
??Zoom_Data_Sync_19:
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        MOVW     R1,#+10378
        CMP      R0,R1
        BCC.N    ??Zoom_Data_Sync_20
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        MOVW     R1,#+10924
        CMP      R0,R1
        BCS.N    ??Zoom_Data_Sync_20
        LDR.N    R0,??DataTable24_5
        MOVW     R1,#+357
        STR      R1,[R0, #+8]
        B.N      ??Zoom_Data_Sync_1
??Zoom_Data_Sync_20:
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        MOVW     R1,#+10924
        CMP      R0,R1
        BCC.N    ??Zoom_Data_Sync_21
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        MOVW     R1,#+11470
        CMP      R0,R1
        BCS.N    ??Zoom_Data_Sync_21
        LDR.N    R0,??DataTable24_5
        MOVW     R1,#+321
        STR      R1,[R0, #+8]
        B.N      ??Zoom_Data_Sync_1
??Zoom_Data_Sync_21:
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        MOVW     R1,#+11470
        CMP      R0,R1
        BCC.N    ??Zoom_Data_Sync_22
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        MOVW     R1,#+12016
        CMP      R0,R1
        BCS.N    ??Zoom_Data_Sync_22
        LDR.N    R0,??DataTable24_5
        MOVW     R1,#+285
        STR      R1,[R0, #+8]
        B.N      ??Zoom_Data_Sync_1
??Zoom_Data_Sync_22:
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        MOVW     R1,#+12016
        CMP      R0,R1
        BCC.N    ??Zoom_Data_Sync_23
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        MOVW     R1,#+12562
        CMP      R0,R1
        BCS.N    ??Zoom_Data_Sync_23
        LDR.N    R0,??DataTable24_5
        MOVS     R1,#+250
        STR      R1,[R0, #+8]
        B.N      ??Zoom_Data_Sync_1
??Zoom_Data_Sync_23:
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        MOVW     R1,#+12562
        CMP      R0,R1
        BCC.N    ??Zoom_Data_Sync_24
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        MOVW     R1,#+13108
        CMP      R0,R1
        BCS.N    ??Zoom_Data_Sync_24
        LDR.N    R0,??DataTable24_5
        MOVS     R1,#+214
        STR      R1,[R0, #+8]
        B.N      ??Zoom_Data_Sync_1
??Zoom_Data_Sync_24:
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        MOVW     R1,#+13108
        CMP      R0,R1
        BCC.N    ??Zoom_Data_Sync_25
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        MOVW     R1,#+13654
        CMP      R0,R1
        BCS.N    ??Zoom_Data_Sync_25
        LDR.N    R0,??DataTable24_5
        MOVS     R1,#+178
        STR      R1,[R0, #+8]
        B.N      ??Zoom_Data_Sync_1
??Zoom_Data_Sync_25:
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        MOVW     R1,#+13654
        CMP      R0,R1
        BCC.N    ??Zoom_Data_Sync_26
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        MOVW     R1,#+14200
        CMP      R0,R1
        BCS.N    ??Zoom_Data_Sync_26
        LDR.N    R0,??DataTable24_5
        MOVS     R1,#+142
        STR      R1,[R0, #+8]
        B.N      ??Zoom_Data_Sync_1
??Zoom_Data_Sync_26:
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        MOVW     R1,#+14200
        CMP      R0,R1
        BCC.N    ??Zoom_Data_Sync_27
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        MOVW     R1,#+14746
        CMP      R0,R1
        BCS.N    ??Zoom_Data_Sync_27
        LDR.N    R0,??DataTable24_5
        MOVS     R1,#+107
        STR      R1,[R0, #+8]
        B.N      ??Zoom_Data_Sync_1
??Zoom_Data_Sync_27:
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        MOVW     R1,#+14746
        CMP      R0,R1
        BCC.N    ??Zoom_Data_Sync_28
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        MOVW     R1,#+15292
        CMP      R0,R1
        BCS.N    ??Zoom_Data_Sync_28
        LDR.N    R0,??DataTable24_5
        MOVS     R1,#+71
        STR      R1,[R0, #+8]
        B.N      ??Zoom_Data_Sync_1
??Zoom_Data_Sync_28:
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        MOVW     R1,#+15292
        CMP      R0,R1
        BCC.N    ??Zoom_Data_Sync_29
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        MOVW     R1,#+15838
        CMP      R0,R1
        BCS.N    ??Zoom_Data_Sync_29
        LDR.N    R0,??DataTable24_5
        MOVS     R1,#+35
        STR      R1,[R0, #+8]
        B.N      ??Zoom_Data_Sync_1
??Zoom_Data_Sync_29:
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        MOVW     R1,#+15838
        CMP      R0,R1
        BCC.N    ??Zoom_Data_Sync_1
        LDR.W    R0,??DataTable29_1
        LDR      R0,[R0, #+40]
        CMP      R0,#+16384
        BCS.N    ??Zoom_Data_Sync_1
        LDR.N    R0,??DataTable24_5
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
??Zoom_Data_Sync_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24:
        DC32     stINFO

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_1:
        DC32     stUSART1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_2:
        DC32     stWIPER2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_3:
        DC32     stLRF

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_4:
        DC32     0x40010800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_5:
        DC32     stLIGHT

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Temperature_Convert_Data:
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.W    ??Temperature_Convert_Data_0
        CMP      R1,#+2
        BEQ.W    ??Temperature_Convert_Data_1
        BCC.W    ??Temperature_Convert_Data_2
        CMP      R1,#+4
        BEQ.W    ??Temperature_Convert_Data_3
        BCC.W    ??Temperature_Convert_Data_4
        CMP      R1,#+6
        BEQ.W    ??Temperature_Convert_Data_5
        BCC.W    ??Temperature_Convert_Data_6
        CMP      R1,#+8
        BEQ.W    ??Temperature_Convert_Data_7
        BCC.W    ??Temperature_Convert_Data_8
        CMP      R1,#+10
        BEQ.W    ??Temperature_Convert_Data_9
        BCC.W    ??Temperature_Convert_Data_10
        CMP      R1,#+12
        BEQ.W    ??Temperature_Convert_Data_11
        BCC.W    ??Temperature_Convert_Data_12
        CMP      R1,#+14
        BEQ.W    ??Temperature_Convert_Data_13
        BCC.W    ??Temperature_Convert_Data_14
        CMP      R1,#+16
        BEQ.W    ??Temperature_Convert_Data_15
        BCC.W    ??Temperature_Convert_Data_16
        CMP      R1,#+18
        BEQ.W    ??Temperature_Convert_Data_17
        BCC.W    ??Temperature_Convert_Data_18
        CMP      R1,#+20
        BEQ.W    ??Temperature_Convert_Data_19
        BCC.W    ??Temperature_Convert_Data_20
        CMP      R1,#+22
        BEQ.W    ??Temperature_Convert_Data_21
        BCC.W    ??Temperature_Convert_Data_22
        CMP      R1,#+24
        BEQ.W    ??Temperature_Convert_Data_23
        BCC.W    ??Temperature_Convert_Data_24
        CMP      R1,#+26
        BEQ.W    ??Temperature_Convert_Data_25
        BCC.W    ??Temperature_Convert_Data_26
        CMP      R1,#+28
        BEQ.W    ??Temperature_Convert_Data_27
        BCC.W    ??Temperature_Convert_Data_28
        CMP      R1,#+30
        BEQ.W    ??Temperature_Convert_Data_29
        BCC.W    ??Temperature_Convert_Data_30
        CMP      R1,#+32
        BEQ.W    ??Temperature_Convert_Data_31
        BCC.W    ??Temperature_Convert_Data_32
        CMP      R1,#+34
        BEQ.W    ??Temperature_Convert_Data_33
        BCC.W    ??Temperature_Convert_Data_34
        CMP      R1,#+36
        BEQ.W    ??Temperature_Convert_Data_35
        BCC.W    ??Temperature_Convert_Data_36
        CMP      R1,#+38
        BEQ.W    ??Temperature_Convert_Data_37
        BCC.W    ??Temperature_Convert_Data_38
        CMP      R1,#+40
        BEQ.W    ??Temperature_Convert_Data_39
        BCC.W    ??Temperature_Convert_Data_40
        CMP      R1,#+42
        BEQ.W    ??Temperature_Convert_Data_41
        BCC.W    ??Temperature_Convert_Data_42
        CMP      R1,#+44
        BEQ.W    ??Temperature_Convert_Data_43
        BCC.W    ??Temperature_Convert_Data_44
        CMP      R1,#+46
        BEQ.W    ??Temperature_Convert_Data_45
        BCC.W    ??Temperature_Convert_Data_46
        CMP      R1,#+48
        BEQ.W    ??Temperature_Convert_Data_47
        BCC.W    ??Temperature_Convert_Data_48
        CMP      R1,#+50
        BEQ.W    ??Temperature_Convert_Data_49
        BCC.W    ??Temperature_Convert_Data_50
        CMP      R1,#+52
        BEQ.W    ??Temperature_Convert_Data_51
        BCC.W    ??Temperature_Convert_Data_52
        CMP      R1,#+54
        BEQ.W    ??Temperature_Convert_Data_53
        BCC.W    ??Temperature_Convert_Data_54
        CMP      R1,#+56
        BEQ.W    ??Temperature_Convert_Data_55
        BCC.W    ??Temperature_Convert_Data_56
        CMP      R1,#+58
        BEQ.W    ??Temperature_Convert_Data_57
        BCC.W    ??Temperature_Convert_Data_58
        CMP      R1,#+60
        BEQ.W    ??Temperature_Convert_Data_59
        BCC.W    ??Temperature_Convert_Data_60
        CMP      R1,#+62
        BEQ.W    ??Temperature_Convert_Data_61
        BCC.W    ??Temperature_Convert_Data_62
        CMP      R1,#+64
        BEQ.W    ??Temperature_Convert_Data_63
        BCC.W    ??Temperature_Convert_Data_64
        CMP      R1,#+66
        BEQ.W    ??Temperature_Convert_Data_65
        BCC.W    ??Temperature_Convert_Data_66
        CMP      R1,#+68
        BEQ.W    ??Temperature_Convert_Data_67
        BCC.W    ??Temperature_Convert_Data_68
        CMP      R1,#+70
        BEQ.W    ??Temperature_Convert_Data_69
        BCC.W    ??Temperature_Convert_Data_70
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_0:
        MOVW     R2,#+2875
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_2:
        MOVW     R2,#+2857
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_1:
        MOVW     R2,#+2838
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_4:
        MOVW     R2,#+2819
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_3:
        MOVW     R2,#+2799
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_6:
        MOVW     R2,#+2779
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_5:
        MOVW     R2,#+2758
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_8:
        MOVW     R2,#+2737
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_7:
        MOVW     R2,#+2715
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_10:
        MOVW     R2,#+2693
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_9:
        MOVW     R2,#+2670
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_12:
        MOVW     R2,#+2647
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_11:
        MOVW     R2,#+2623
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_14:
        MOVW     R2,#+2598
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_13:
        MOVW     R2,#+2574
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_16:
        MOVW     R2,#+2548
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_15:
        MOVW     R2,#+2522
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_18:
        MOV      R2,#+2496
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_17:
        MOVW     R2,#+2469
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_20:
        MOVW     R2,#+2442
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_19:
        MOVW     R2,#+2414
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_22:
        MOVW     R2,#+2386
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_21:
        MOVW     R2,#+2358
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_24:
        MOVW     R2,#+2329
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_23:
        MOVW     R2,#+2300
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_26:
        MOVW     R2,#+2271
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_25:
        MOVW     R2,#+2241
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_28:
        MOVW     R2,#+2211
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_27:
        MOVW     R2,#+2181
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_30:
        MOVW     R2,#+2150
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_29:
        MOVW     R2,#+2119
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_32:
        MOVW     R2,#+2088
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_31:
        MOVW     R2,#+2057
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_34:
        MOVW     R2,#+2026
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_33:
        MOVW     R2,#+1995
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_36:
        MOVW     R2,#+1963
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_35:
        MOVW     R2,#+1932
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_38:
        MOVW     R2,#+1900
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_37:
        MOVW     R2,#+1869
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_40:
        MOVW     R2,#+1837
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_39:
        MOVW     R2,#+1806
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_42:
        MOVW     R2,#+1774
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_41:
        MOVW     R2,#+1743
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_44:
        MOV      R2,#+1712
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_43:
        MOV      R2,#+1680
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_46:
        MOVW     R2,#+1650
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_45:
        MOVW     R2,#+1619
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_48:
        MOVW     R2,#+1588
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_47:
        MOVW     R2,#+1558
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_50:
        MOVW     R2,#+1527
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_49:
        MOVW     R2,#+1497
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_52:
        MOVW     R2,#+1468
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_51:
        MOVW     R2,#+1438
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_54:
        MOVW     R2,#+1409
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_53:
        MOVW     R2,#+1380
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_56:
        MOV      R2,#+1352
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_55:
        MOVW     R2,#+1324
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_58:
        MOV      R2,#+1296
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_57:
        MOVW     R2,#+1268
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_60:
        MOVW     R2,#+1241
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_59:
        MOVW     R2,#+1214
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_62:
        MOVW     R2,#+1188
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_61:
        MOVW     R2,#+1162
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_64:
        MOV      R2,#+1136
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_63:
        MOVW     R2,#+1111
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_66:
        MOVW     R2,#+1087
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_65:
        MOVW     R2,#+1062
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_68:
        MOVW     R2,#+1038
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_67:
        MOVW     R2,#+1015
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_70:
        MOV      R2,#+992
        MOVS     R0,R2
        B.N      ??Temperature_Convert_Data_71
??Temperature_Convert_Data_69:
        MOVW     R2,#+969
        MOVS     R0,R2
??Temperature_Convert_Data_71:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Temperature_Data_Check:
        LDR.W    R0,??DataTable36
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Temperature_Data_Check_0
        LDR.W    R0,??DataTable36
        LDRB     R0,[R0, #+1]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable36
        STRB     R0,[R1, #+1]
        LDR.W    R0,??DataTable36
        LDR      R0,[R0, #+4]
        LDR.W    R1,??DataTable36_1
        LDR      R1,[R1, #+0]
        MOVW     R2,#+3300
        MULS     R1,R2,R1
        ADDS     R0,R0,R1, LSR #+12
        LDR.W    R1,??DataTable36
        STR      R0,[R1, #+4]
        LDR.W    R0,??DataTable36
        LDRB     R0,[R0, #+1]
        CMP      R0,#+10
        BCC.N    ??Temperature_Data_Check_0
        LDR.W    R0,??DataTable36
        MOVS     R1,#+0
        STRB     R1,[R0, #+1]
        LDR.W    R0,??DataTable36
        LDRB     R0,[R0, #+2]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable36
        STRB     R0,[R1, #+2]
        LDR.W    R0,??DataTable36
        LDR      R0,[R0, #+8]
        LDR.W    R1,??DataTable36
        LDR      R1,[R1, #+4]
        MOVS     R2,#+10
        UDIV     R1,R1,R2
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable36
        STR      R0,[R1, #+8]
        LDR.W    R0,??DataTable36
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        LDR.W    R0,??DataTable36
        LDRB     R0,[R0, #+2]
        CMP      R0,#+10
        BCC.N    ??Temperature_Data_Check_0
        LDR.W    R0,??DataTable36
        MOVS     R1,#+0
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable36
        LDR      R0,[R0, #+8]
        MOVS     R1,#+10
        UDIV     R0,R0,R1
        LDR.W    R1,??DataTable36
        STR      R0,[R1, #+12]
        LDR.W    R0,??DataTable36
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
??Temperature_Data_Check_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CDS_Data_Check:
        LDR.N    R0,??DataTable28
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??CDS_Data_Check_0
        LDR.N    R0,??DataTable28
        LDRB     R0,[R0, #+1]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable28
        STRB     R0,[R1, #+1]
        LDR.N    R0,??DataTable28
        LDR      R0,[R0, #+4]
        LDR.W    R1,??DataTable36_1
        LDR      R1,[R1, #+4]
        MOVW     R2,#+3300
        MULS     R1,R2,R1
        ADDS     R0,R0,R1, LSR #+12
        LDR.N    R1,??DataTable28
        STR      R0,[R1, #+4]
        LDR.N    R0,??DataTable28
        LDRB     R0,[R0, #+1]
        CMP      R0,#+10
        BCC.N    ??CDS_Data_Check_0
        LDR.N    R0,??DataTable28
        MOVS     R1,#+0
        STRB     R1,[R0, #+1]
        LDR.N    R0,??DataTable28
        LDRB     R0,[R0, #+2]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable28
        STRB     R0,[R1, #+2]
        LDR.N    R0,??DataTable28
        LDR      R0,[R0, #+8]
        LDR.N    R1,??DataTable28
        LDR      R1,[R1, #+4]
        MOVS     R2,#+10
        UDIV     R1,R1,R2
        ADDS     R0,R1,R0
        LDR.N    R1,??DataTable28
        STR      R0,[R1, #+8]
        LDR.N    R0,??DataTable28
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        LDR.N    R0,??DataTable28
        LDRB     R0,[R0, #+2]
        CMP      R0,#+10
        BCC.N    ??CDS_Data_Check_0
        LDR.N    R0,??DataTable28
        MOVS     R1,#+0
        STRB     R1,[R0, #+2]
        LDR.N    R0,??DataTable28
        LDR      R0,[R0, #+8]
        MOVS     R1,#+10
        UDIV     R0,R0,R1
        LDR.N    R1,??DataTable28
        STR      R0,[R1, #+12]
        LDR.N    R0,??DataTable28
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
??CDS_Data_Check_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Temperature_Boot_Mode:
        LDR.W    R0,??DataTable36
        LDRB     R0,[R0, #+20]
        CMP      R0,#+0
        BEQ.N    ??Temperature_Boot_Mode_0
        LDR.W    R0,??DataTable36
        LDR      R0,[R0, #+24]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable36
        STR      R0,[R1, #+24]
        LDR.W    R0,??DataTable36
        LDR      R0,[R0, #+24]
        MOVW     R1,#+10000
        CMP      R0,R1
        BCC.N    ??Temperature_Boot_Mode_0
        LDR.W    R0,??DataTable36
        MOVS     R1,#+0
        STR      R1,[R0, #+24]
        LDR.W    R0,??DataTable36
        MOVS     R1,#+0
        STRB     R1,[R0, #+20]
        LDR.W    R0,??DataTable36
        MOVS     R1,#+1
        STRB     R1,[R0, #+19]
??Temperature_Boot_Mode_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Zoom_Light_Auto_Control:
        PUSH     {R0-R8,LR}
        MOVS     R4,#+0
        MOVS     R5,#+0
        MOVS     R6,#+0
        MOVS     R7,#+0
        MOVS     R8,#+0
        LDR.W    R0,??DataTable38
        LDR      R0,[R0, #+4]
        LDR.W    R1,??DataTable38
        LDR      R1,[R1, #+8]
        CMP      R0,R1
        BEQ.N    ??Zoom_Light_Auto_Control_0
        LDR.W    R0,??DataTable38
        LDR      R0,[R0, #+8]
        MOV      R8,R0
        MOVW     R0,#+1035
        CMP      R8,R0
        BCC.N    ??Zoom_Light_Auto_Control_1
        MOVW     R0,#+1035
        MOV      R8,R0
??Zoom_Light_Auto_Control_1:
        MOV      R0,#+1000
        UDIV     R0,R8,R0
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+9
        BCC.N    ??Zoom_Light_Auto_Control_2
        MOVS     R0,#+9
        MOVS     R4,R0
??Zoom_Light_Auto_Control_2:
        ADDS     R4,R4,#+48
        MOV      R0,#+1000
        UDIV     R1,R8,R0
        MLS      R8,R0,R1,R8
        MOVS     R0,#+100
        UDIV     R0,R8,R0
        MOVS     R5,R0
        ADDS     R5,R5,#+48
        MOVS     R0,#+100
        UDIV     R1,R8,R0
        MLS      R8,R0,R1,R8
        MOVS     R0,#+10
        UDIV     R0,R8,R0
        MOVS     R6,R0
        ADDS     R6,R6,#+48
        MOVS     R0,#+10
        UDIV     R1,R8,R0
        MLS      R0,R0,R1,R8
        MOVS     R7,R0
        ADDS     R7,R7,#+48
        MOVS     R0,#+20
        STR      R0,[SP, #+12]
        MOVS     R0,#+10
        STR      R0,[SP, #+8]
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        STR      R7,[SP, #+4]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        STR      R6,[SP, #+0]
        MOVS     R3,R5
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        MOVS     R2,R4
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+43
        MOVS     R0,#+109
        BL       Send_Light_Data
        LDR.W    R0,??DataTable38
        LDR.W    R1,??DataTable38
        LDR      R1,[R1, #+8]
        STR      R1,[R0, #+4]
??Zoom_Light_Auto_Control_0:
        POP      {R0-R8,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable28:
        DC32     stCDS

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Fan_Heater_Control:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??Fan_Heater_Control_0
        CMP      R4,#+2
        BEQ.N    ??Fan_Heater_Control_1
        BCC.N    ??Fan_Heater_Control_2
        B.N      ??Fan_Heater_Control_3
??Fan_Heater_Control_0:
        B.N      ??Fan_Heater_Control_4
??Fan_Heater_Control_2:
        LDR.W    R0,??DataTable36
        LDRB     R0,[R0, #+18]
        CMP      R0,#+0
        BNE.N    ??Fan_Heater_Control_5
        MOV      R1,#+8192
        LDR.W    R0,??DataTable38_1  ;; 0x40011000
        BL       GPIO_SetBits
        MOV      R1,#+32768
        LDR.W    R0,??DataTable38_1  ;; 0x40011000
        BL       GPIO_SetBits
        LDR.W    R0,??DataTable36
        MOVS     R1,#+1
        STRB     R1,[R0, #+18]
        LDR.W    R0,??DataTable36
        MOVS     R1,#+1
        STRB     R1,[R0, #+20]
        B.N      ??Fan_Heater_Control_6
??Fan_Heater_Control_5:
        LDR.W    R0,??DataTable36
        LDRB     R0,[R0, #+19]
        CMP      R0,#+1
        BNE.N    ??Fan_Heater_Control_6
        MOV      R1,#+8192
        LDR.W    R0,??DataTable38_1  ;; 0x40011000
        BL       GPIO_ResetBits
        MOV      R1,#+32768
        LDR.W    R0,??DataTable38_1  ;; 0x40011000
        BL       GPIO_ResetBits
        LDR.W    R0,??DataTable36
        MOVS     R1,#+0
        STRB     R1,[R0, #+19]
        LDR.W    R0,??DataTable36
        MOVS     R1,#+1
        STRB     R1,[R0, #+17]
        LDR.W    R0,??DataTable36
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
??Fan_Heater_Control_6:
        B.N      ??Fan_Heater_Control_4
??Fan_Heater_Control_1:
        LDR.W    R0,??DataTable38_2
        LDRB     R0,[R0, #+1]
        CMP      R0,#+0
        BEQ.N    ??Fan_Heater_Control_7
        MOV      R1,#+32768
        LDR.W    R0,??DataTable38_1  ;; 0x40011000
        BL       GPIO_ResetBits
        LDR.W    R0,??DataTable38_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        LDR.W    R0,??DataTable38_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+1]
        LDR.W    R0,??DataTable38_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+2]
        LDR.W    R0,??DataTable38_2
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        LDR.W    R0,??DataTable38_2
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
??Fan_Heater_Control_7:
        LDR.W    R0,??DataTable38_2
        LDRB     R0,[R0, #+1]
        CMP      R0,#+1
        BNE.N    ??Fan_Heater_Control_8
        MOVS     R0,#+10
        BL       Temperature_Convert_Data
        LDR.W    R1,??DataTable36
        LDR      R1,[R1, #+12]
        CMP      R1,R0
        BCC.N    ??Fan_Heater_Control_9
        MOV      R1,#+8192
        LDR.W    R0,??DataTable38_1  ;; 0x40011000
        BL       GPIO_SetBits
        LDR.W    R0,??DataTable38_3
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
        B.N      ??Fan_Heater_Control_4
??Fan_Heater_Control_9:
        MOVS     R0,#+20
        BL       Temperature_Convert_Data
        LDR.W    R1,??DataTable36
        LDR      R1,[R1, #+12]
        CMP      R1,R0
        BCS.W    ??Fan_Heater_Control_4
        MOV      R1,#+8192
        LDR.W    R0,??DataTable38_1  ;; 0x40011000
        BL       GPIO_ResetBits
        LDR.W    R0,??DataTable38_3
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        B.N      ??Fan_Heater_Control_4
??Fan_Heater_Control_8:
        MOVS     R0,#+70
        BL       Temperature_Convert_Data
        LDR.W    R1,??DataTable36
        LDR      R1,[R1, #+12]
        CMP      R1,R0
        BCS.N    ??Fan_Heater_Control_10
        MOV      R1,#+32768
        LDR.W    R0,??DataTable38_1  ;; 0x40011000
        BL       GPIO_SetBits
        LDR.W    R0,??DataTable38_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
        B.N      ??Fan_Heater_Control_11
??Fan_Heater_Control_10:
        MOVS     R0,#+60
        BL       Temperature_Convert_Data
        LDR.W    R1,??DataTable36
        LDR      R1,[R1, #+12]
        CMP      R1,R0
        BCS.N    ??Fan_Heater_Control_12
        MOVS     R0,#+70
        BL       Temperature_Convert_Data
        LDR.W    R1,??DataTable36
        LDR      R1,[R1, #+12]
        CMP      R1,R0
        BCC.N    ??Fan_Heater_Control_12
        LDR.W    R0,??DataTable38_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Fan_Heater_Control_13
        LDR.W    R0,??DataTable38
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Fan_Heater_Control_11
        LDR.W    R0,??DataTable38_4
        LDRB     R0,[R0, #+9]
        CMP      R0,#+0
        BNE.N    ??Fan_Heater_Control_11
        MOV      R1,#+32768
        LDR.W    R0,??DataTable38_1  ;; 0x40011000
        BL       GPIO_ResetBits
        LDR.W    R0,??DataTable38_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        B.N      ??Fan_Heater_Control_11
??Fan_Heater_Control_13:
        MOV      R1,#+32768
        LDR.W    R0,??DataTable38_1  ;; 0x40011000
        BL       GPIO_SetBits
        LDR.W    R0,??DataTable38_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
        B.N      ??Fan_Heater_Control_11
??Fan_Heater_Control_12:
        MOVS     R0,#+60
        BL       Temperature_Convert_Data
        LDR.W    R1,??DataTable36
        LDR      R1,[R1, #+12]
        CMP      R1,R0
        BCC.N    ??Fan_Heater_Control_11
        MOVS     R0,#+10
        BL       Temperature_Convert_Data
        LDR.W    R1,??DataTable36
        LDR      R1,[R1, #+12]
        CMP      R1,R0
        BCC.N    ??Fan_Heater_Control_14
        MOV      R1,#+8192
        LDR.W    R0,??DataTable38_1  ;; 0x40011000
        BL       GPIO_SetBits
        LDR.W    R0,??DataTable38_3
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
        LDR.W    R0,??DataTable38_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Fan_Heater_Control_11
        MOV      R1,#+32768
        LDR.W    R0,??DataTable38_1  ;; 0x40011000
        BL       GPIO_SetBits
        LDR.W    R0,??DataTable38_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
        B.N      ??Fan_Heater_Control_11
??Fan_Heater_Control_14:
        MOVS     R0,#+20
        BL       Temperature_Convert_Data
        LDR.W    R1,??DataTable36
        LDR      R1,[R1, #+12]
        CMP      R1,R0
        BCS.N    ??Fan_Heater_Control_11
        MOV      R1,#+8192
        LDR.W    R0,??DataTable38_1  ;; 0x40011000
        BL       GPIO_ResetBits
        LDR.W    R0,??DataTable38_3
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        LDR.W    R0,??DataTable38_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Fan_Heater_Control_11
        LDR.W    R0,??DataTable38
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Fan_Heater_Control_11
        LDR.W    R0,??DataTable38_4
        LDRB     R0,[R0, #+9]
        CMP      R0,#+0
        BNE.N    ??Fan_Heater_Control_11
        LDR.W    R0,??DataTable38_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+1]
??Fan_Heater_Control_11:
        B.N      ??Fan_Heater_Control_4
??Fan_Heater_Control_3:
??Fan_Heater_Control_4:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable29:
        DC32     stTEST

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable29_1:
        DC32     stSONY

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Auto_Day_And_Night_Control:
        MOVS     R0,#+0
        LDR.W    R1,??DataTable38_5
        LDRB     R1,[R1, #+0]
        CMP      R1,#+0
        BEQ.N    ??Auto_Day_And_Night_Control_0
        LDR.W    R1,??DataTable38_5
        LDR      R1,[R1, #+12]
        MOVS     R0,R1
        LDR.W    R1,??DataTable38_5
        LDRB     R1,[R1, #+18]
        CMP      R1,#+0
        BEQ.N    ??Auto_Day_And_Night_Control_0
        LDR.W    R1,??DataTable38_5
        LDRB     R1,[R1, #+16]
        MOVS     R2,#+20
        MULS     R1,R2,R1
        ADDW     R1,R1,#+930
        CMP      R1,R0
        BCS.N    ??Auto_Day_And_Night_Control_1
        LDR.W    R1,??DataTable38_5
        LDR      R1,[R1, #+20]
        ADDS     R1,R1,#+1
        LDR.W    R2,??DataTable38_5
        STR      R1,[R2, #+20]
        LDR.W    R1,??DataTable38_5
        LDR      R1,[R1, #+20]
        LDR.W    R2,??DataTable38_5
        LDR      R2,[R2, #+32]
        CMP      R1,R2
        BNE.N    ??Auto_Day_And_Night_Control_2
        LDR.W    R1,??DataTable38_5
        MOVS     R2,#+0
        STR      R2,[R1, #+20]
        LDR.W    R1,??DataTable38_5
        MOVS     R2,#+1
        STRB     R2,[R1, #+28]
        LDR.W    R1,??DataTable38_5
        MOVS     R2,#+1
        STRB     R2,[R1, #+29]
        B.N      ??Auto_Day_And_Night_Control_2
??Auto_Day_And_Night_Control_1:
        LDR.W    R1,??DataTable38_5
        LDRB     R1,[R1, #+16]
        MOVS     R2,#+20
        MULS     R1,R2,R1
        ADDW     R1,R1,#+850
        CMP      R0,R1
        BCS.N    ??Auto_Day_And_Night_Control_2
        LDR.W    R1,??DataTable38_5
        LDR      R1,[R1, #+24]
        ADDS     R1,R1,#+1
        LDR.W    R2,??DataTable38_5
        STR      R1,[R2, #+24]
        LDR.W    R1,??DataTable38_5
        LDR      R1,[R1, #+24]
        LDR.W    R2,??DataTable38_5
        LDR      R2,[R2, #+32]
        CMP      R1,R2
        BNE.N    ??Auto_Day_And_Night_Control_2
        LDR.W    R1,??DataTable38_5
        MOVS     R2,#+0
        STR      R2,[R1, #+24]
        LDR.W    R1,??DataTable38_5
        MOVS     R2,#+1
        STRB     R2,[R1, #+28]
        LDR.W    R1,??DataTable38_5
        MOVS     R2,#+0
        STRB     R2,[R1, #+29]
??Auto_Day_And_Night_Control_2:
        LDR.W    R1,??DataTable38_5
        LDR      R1,[R1, #+20]
        CMP      R1,#+0
        BEQ.N    ??Auto_Day_And_Night_Control_3
        LDR.W    R1,??DataTable38_5
        LDRB     R1,[R1, #+16]
        MOVS     R2,#+20
        MULS     R1,R2,R1
        ADDW     R1,R1,#+1100
        CMP      R1,R0
        BCC.N    ??Auto_Day_And_Night_Control_3
        LDR.W    R1,??DataTable38_5
        MOVS     R2,#+0
        STR      R2,[R1, #+20]
        B.N      ??Auto_Day_And_Night_Control_0
??Auto_Day_And_Night_Control_3:
        LDR.W    R1,??DataTable38_5
        LDR      R1,[R1, #+24]
        CMP      R1,#+0
        BEQ.N    ??Auto_Day_And_Night_Control_0
        LDR.W    R1,??DataTable38_5
        LDRB     R1,[R1, #+16]
        MOVS     R2,#+20
        MULS     R1,R2,R1
        ADDW     R1,R1,#+800
        CMP      R0,R1
        BCC.N    ??Auto_Day_And_Night_Control_0
        LDR.W    R1,??DataTable38_5
        MOVS     R2,#+0
        STR      R2,[R1, #+24]
??Auto_Day_And_Night_Control_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
AT24C256C_EEPROM_Write:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,R4
        MOVS     R0,#+160
        BL       I2C2_Write
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
AT24C256C_EEPROM_Read:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOVS     R1,R4
        MOVS     R0,#+160
        BL       I2C2_Read
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
MDIN_Sprite_Initialization:
        PUSH     {R4-R6,LR}
        SUB      SP,SP,#+120
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,R4
        CMP      R0,#+0
        BEQ.N    ??MDIN_Sprite_Initialization_0
        CMP      R0,#+1
        BEQ.W    ??MDIN_Sprite_Initialization_1
        CMP      R0,#+2
        BEQ.W    ??MDIN_Sprite_Initialization_2
        CMP      R0,#+7
        BEQ.W    ??MDIN_Sprite_Initialization_3
        B.N      ??MDIN_Sprite_Initialization_4
??MDIN_Sprite_Initialization_0:
        LDR.W    R0,??DataTable39
        STRB     R4,[R0, #+0]
        MOVS     R6,R4
        MOVS     R0,#+12
        STRB     R0,[SP, #+68]
        MOVS     R0,#+0
        STRB     R0,[SP, #+69]
        MOVS     R0,#+0
        STRB     R0,[SP, #+70]
        MOVS     R0,#+0
        STRB     R0,[SP, #+71]
        MOVS     R0,#+176
        STRB     R0,[SP, #+72]
        MOVS     R0,#+4
        STRB     R0,[SP, #+73]
        MOVS     R0,#+208
        STRB     R0,[SP, #+74]
        MOVS     R0,#+2
        STRB     R0,[SP, #+75]
        MOVS     R0,#+3
        STR      R0,[SP, #+64]
        LDRB     R0,[SP, #+84]
        STR      R0,[SP, #+60]
        LDRB     R0,[SP, #+83]
        STR      R0,[SP, #+56]
        LDRB     R0,[SP, #+82]
        STR      R0,[SP, #+52]
        LDRB     R0,[SP, #+81]
        STR      R0,[SP, #+48]
        LDRB     R0,[SP, #+80]
        STR      R0,[SP, #+44]
        LDRB     R0,[SP, #+79]
        STR      R0,[SP, #+40]
        LDRB     R0,[SP, #+78]
        STR      R0,[SP, #+36]
        LDRB     R0,[SP, #+77]
        STR      R0,[SP, #+32]
        LDRB     R0,[SP, #+76]
        STR      R0,[SP, #+28]
        LDRB     R0,[SP, #+75]
        STR      R0,[SP, #+24]
        LDRB     R0,[SP, #+74]
        STR      R0,[SP, #+20]
        LDRB     R0,[SP, #+73]
        STR      R0,[SP, #+16]
        LDRB     R0,[SP, #+72]
        STR      R0,[SP, #+12]
        LDRB     R0,[SP, #+71]
        STR      R0,[SP, #+8]
        LDRB     R0,[SP, #+70]
        STR      R0,[SP, #+4]
        LDRB     R0,[SP, #+69]
        STR      R0,[SP, #+0]
        LDRB     R3,[SP, #+68]
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+9
        MOVS     R0,#+66
        BL       Send_MDIN_Data
        MOVS     R6,R4
        STRB     R5,[SP, #+68]
        MOVS     R0,#+0
        STRB     R0,[SP, #+69]
        MOVS     R0,#+3
        STR      R0,[SP, #+64]
        LDRB     R0,[SP, #+84]
        STR      R0,[SP, #+60]
        LDRB     R0,[SP, #+83]
        STR      R0,[SP, #+56]
        LDRB     R0,[SP, #+82]
        STR      R0,[SP, #+52]
        LDRB     R0,[SP, #+81]
        STR      R0,[SP, #+48]
        LDRB     R0,[SP, #+80]
        STR      R0,[SP, #+44]
        LDRB     R0,[SP, #+79]
        STR      R0,[SP, #+40]
        LDRB     R0,[SP, #+78]
        STR      R0,[SP, #+36]
        LDRB     R0,[SP, #+77]
        STR      R0,[SP, #+32]
        LDRB     R0,[SP, #+76]
        STR      R0,[SP, #+28]
        LDRB     R0,[SP, #+75]
        STR      R0,[SP, #+24]
        LDRB     R0,[SP, #+74]
        STR      R0,[SP, #+20]
        LDRB     R0,[SP, #+73]
        STR      R0,[SP, #+16]
        LDRB     R0,[SP, #+72]
        STR      R0,[SP, #+12]
        LDRB     R0,[SP, #+71]
        STR      R0,[SP, #+8]
        LDRB     R0,[SP, #+70]
        STR      R0,[SP, #+4]
        LDRB     R0,[SP, #+69]
        STR      R0,[SP, #+0]
        LDRB     R3,[SP, #+68]
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+3
        MOVS     R0,#+65
        BL       Send_MDIN_Data
        B.N      ??MDIN_Sprite_Initialization_5
??MDIN_Sprite_Initialization_1:
        LDR.W    R0,??DataTable39
        STRB     R4,[R0, #+0]
        MOVS     R6,R4
        MOVS     R0,#+12
        STRB     R0,[SP, #+68]
        MOVS     R0,#+0
        STRB     R0,[SP, #+69]
        MOVS     R0,#+0
        STRB     R0,[SP, #+70]
        MOVS     R0,#+0
        STRB     R0,[SP, #+71]
        MOVS     R0,#+176
        STRB     R0,[SP, #+72]
        MOVS     R0,#+4
        STRB     R0,[SP, #+73]
        MOVS     R0,#+188
        STRB     R0,[SP, #+74]
        MOVS     R0,#+2
        STRB     R0,[SP, #+75]
        MOVS     R0,#+3
        STR      R0,[SP, #+64]
        LDRB     R0,[SP, #+84]
        STR      R0,[SP, #+60]
        LDRB     R0,[SP, #+83]
        STR      R0,[SP, #+56]
        LDRB     R0,[SP, #+82]
        STR      R0,[SP, #+52]
        LDRB     R0,[SP, #+81]
        STR      R0,[SP, #+48]
        LDRB     R0,[SP, #+80]
        STR      R0,[SP, #+44]
        LDRB     R0,[SP, #+79]
        STR      R0,[SP, #+40]
        LDRB     R0,[SP, #+78]
        STR      R0,[SP, #+36]
        LDRB     R0,[SP, #+77]
        STR      R0,[SP, #+32]
        LDRB     R0,[SP, #+76]
        STR      R0,[SP, #+28]
        LDRB     R0,[SP, #+75]
        STR      R0,[SP, #+24]
        LDRB     R0,[SP, #+74]
        STR      R0,[SP, #+20]
        LDRB     R0,[SP, #+73]
        STR      R0,[SP, #+16]
        LDRB     R0,[SP, #+72]
        STR      R0,[SP, #+12]
        LDRB     R0,[SP, #+71]
        STR      R0,[SP, #+8]
        LDRB     R0,[SP, #+70]
        STR      R0,[SP, #+4]
        LDRB     R0,[SP, #+69]
        STR      R0,[SP, #+0]
        LDRB     R3,[SP, #+68]
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+9
        MOVS     R0,#+66
        BL       Send_MDIN_Data
        MOVS     R6,R4
        STRB     R5,[SP, #+68]
        MOVS     R0,#+0
        STRB     R0,[SP, #+69]
        MOVS     R0,#+3
        STR      R0,[SP, #+64]
        LDRB     R0,[SP, #+84]
        STR      R0,[SP, #+60]
        LDRB     R0,[SP, #+83]
        STR      R0,[SP, #+56]
        LDRB     R0,[SP, #+82]
        STR      R0,[SP, #+52]
        LDRB     R0,[SP, #+81]
        STR      R0,[SP, #+48]
        LDRB     R0,[SP, #+80]
        STR      R0,[SP, #+44]
        LDRB     R0,[SP, #+79]
        STR      R0,[SP, #+40]
        LDRB     R0,[SP, #+78]
        STR      R0,[SP, #+36]
        LDRB     R0,[SP, #+77]
        STR      R0,[SP, #+32]
        LDRB     R0,[SP, #+76]
        STR      R0,[SP, #+28]
        LDRB     R0,[SP, #+75]
        STR      R0,[SP, #+24]
        LDRB     R0,[SP, #+74]
        STR      R0,[SP, #+20]
        LDRB     R0,[SP, #+73]
        STR      R0,[SP, #+16]
        LDRB     R0,[SP, #+72]
        STR      R0,[SP, #+12]
        LDRB     R0,[SP, #+71]
        STR      R0,[SP, #+8]
        LDRB     R0,[SP, #+70]
        STR      R0,[SP, #+4]
        LDRB     R0,[SP, #+69]
        STR      R0,[SP, #+0]
        LDRB     R3,[SP, #+68]
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+3
        MOVS     R0,#+65
        BL       Send_MDIN_Data
        B.N      ??MDIN_Sprite_Initialization_5
??MDIN_Sprite_Initialization_2:
        LDR.W    R0,??DataTable39
        STRB     R4,[R0, #+0]
        MOVS     R6,R4
        MOVS     R0,#+12
        STRB     R0,[SP, #+68]
        MOVS     R0,#+0
        STRB     R0,[SP, #+69]
        MOVS     R0,#+168
        STRB     R0,[SP, #+70]
        MOVS     R0,#+2
        STRB     R0,[SP, #+71]
        MOVS     R0,#+192
        STRB     R0,[SP, #+72]
        MOVS     R0,#+0
        STRB     R0,[SP, #+73]
        MOVS     R0,#+20
        STRB     R0,[SP, #+74]
        MOVS     R0,#+0
        STRB     R0,[SP, #+75]
        MOVS     R0,#+3
        STR      R0,[SP, #+64]
        LDRB     R0,[SP, #+84]
        STR      R0,[SP, #+60]
        LDRB     R0,[SP, #+83]
        STR      R0,[SP, #+56]
        LDRB     R0,[SP, #+82]
        STR      R0,[SP, #+52]
        LDRB     R0,[SP, #+81]
        STR      R0,[SP, #+48]
        LDRB     R0,[SP, #+80]
        STR      R0,[SP, #+44]
        LDRB     R0,[SP, #+79]
        STR      R0,[SP, #+40]
        LDRB     R0,[SP, #+78]
        STR      R0,[SP, #+36]
        LDRB     R0,[SP, #+77]
        STR      R0,[SP, #+32]
        LDRB     R0,[SP, #+76]
        STR      R0,[SP, #+28]
        LDRB     R0,[SP, #+75]
        STR      R0,[SP, #+24]
        LDRB     R0,[SP, #+74]
        STR      R0,[SP, #+20]
        LDRB     R0,[SP, #+73]
        STR      R0,[SP, #+16]
        LDRB     R0,[SP, #+72]
        STR      R0,[SP, #+12]
        LDRB     R0,[SP, #+71]
        STR      R0,[SP, #+8]
        LDRB     R0,[SP, #+70]
        STR      R0,[SP, #+4]
        LDRB     R0,[SP, #+69]
        STR      R0,[SP, #+0]
        LDRB     R3,[SP, #+68]
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+9
        MOVS     R0,#+66
        BL       Send_MDIN_Data
        MOVS     R6,R4
        STRB     R5,[SP, #+68]
        MOVS     R0,#+0
        STRB     R0,[SP, #+69]
        MOVS     R0,#+3
        STR      R0,[SP, #+64]
        LDRB     R0,[SP, #+84]
        STR      R0,[SP, #+60]
        LDRB     R0,[SP, #+83]
        STR      R0,[SP, #+56]
        LDRB     R0,[SP, #+82]
        STR      R0,[SP, #+52]
        LDRB     R0,[SP, #+81]
        STR      R0,[SP, #+48]
        LDRB     R0,[SP, #+80]
        STR      R0,[SP, #+44]
        LDRB     R0,[SP, #+79]
        STR      R0,[SP, #+40]
        LDRB     R0,[SP, #+78]
        STR      R0,[SP, #+36]
        LDRB     R0,[SP, #+77]
        STR      R0,[SP, #+32]
        LDRB     R0,[SP, #+76]
        STR      R0,[SP, #+28]
        LDRB     R0,[SP, #+75]
        STR      R0,[SP, #+24]
        LDRB     R0,[SP, #+74]
        STR      R0,[SP, #+20]
        LDRB     R0,[SP, #+73]
        STR      R0,[SP, #+16]
        LDRB     R0,[SP, #+72]
        STR      R0,[SP, #+12]
        LDRB     R0,[SP, #+71]
        STR      R0,[SP, #+8]
        LDRB     R0,[SP, #+70]
        STR      R0,[SP, #+4]
        LDRB     R0,[SP, #+69]
        STR      R0,[SP, #+0]
        LDRB     R3,[SP, #+68]
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+3
        MOVS     R0,#+65
        BL       Send_MDIN_Data
        B.N      ??MDIN_Sprite_Initialization_5
??MDIN_Sprite_Initialization_3:
        LDR.W    R0,??DataTable39
        STRB     R4,[R0, #+0]
        MOVS     R6,R4
        MOVS     R0,#+12
        STRB     R0,[SP, #+68]
        MOVS     R0,#+0
        STRB     R0,[SP, #+69]
        MOVS     R0,#+200
        STRB     R0,[SP, #+70]
        MOVS     R0,#+0
        STRB     R0,[SP, #+71]
        MOVS     R0,#+176
        STRB     R0,[SP, #+72]
        MOVS     R0,#+4
        STRB     R0,[SP, #+73]
        MOVS     R0,#+180
        STRB     R0,[SP, #+74]
        MOVS     R0,#+0
        STRB     R0,[SP, #+75]
        MOVS     R0,#+3
        STR      R0,[SP, #+64]
        LDRB     R0,[SP, #+84]
        STR      R0,[SP, #+60]
        LDRB     R0,[SP, #+83]
        STR      R0,[SP, #+56]
        LDRB     R0,[SP, #+82]
        STR      R0,[SP, #+52]
        LDRB     R0,[SP, #+81]
        STR      R0,[SP, #+48]
        LDRB     R0,[SP, #+80]
        STR      R0,[SP, #+44]
        LDRB     R0,[SP, #+79]
        STR      R0,[SP, #+40]
        LDRB     R0,[SP, #+78]
        STR      R0,[SP, #+36]
        LDRB     R0,[SP, #+77]
        STR      R0,[SP, #+32]
        LDRB     R0,[SP, #+76]
        STR      R0,[SP, #+28]
        LDRB     R0,[SP, #+75]
        STR      R0,[SP, #+24]
        LDRB     R0,[SP, #+74]
        STR      R0,[SP, #+20]
        LDRB     R0,[SP, #+73]
        STR      R0,[SP, #+16]
        LDRB     R0,[SP, #+72]
        STR      R0,[SP, #+12]
        LDRB     R0,[SP, #+71]
        STR      R0,[SP, #+8]
        LDRB     R0,[SP, #+70]
        STR      R0,[SP, #+4]
        LDRB     R0,[SP, #+69]
        STR      R0,[SP, #+0]
        LDRB     R3,[SP, #+68]
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+9
        MOVS     R0,#+66
        BL       Send_MDIN_Data
        MOVS     R6,R4
        STRB     R5,[SP, #+68]
        MOVS     R0,#+0
        STRB     R0,[SP, #+69]
        MOVS     R0,#+3
        STR      R0,[SP, #+64]
        LDRB     R0,[SP, #+84]
        STR      R0,[SP, #+60]
        LDRB     R0,[SP, #+83]
        STR      R0,[SP, #+56]
        LDRB     R0,[SP, #+82]
        STR      R0,[SP, #+52]
        LDRB     R0,[SP, #+81]
        STR      R0,[SP, #+48]
        LDRB     R0,[SP, #+80]
        STR      R0,[SP, #+44]
        LDRB     R0,[SP, #+79]
        STR      R0,[SP, #+40]
        LDRB     R0,[SP, #+78]
        STR      R0,[SP, #+36]
        LDRB     R0,[SP, #+77]
        STR      R0,[SP, #+32]
        LDRB     R0,[SP, #+76]
        STR      R0,[SP, #+28]
        LDRB     R0,[SP, #+75]
        STR      R0,[SP, #+24]
        LDRB     R0,[SP, #+74]
        STR      R0,[SP, #+20]
        LDRB     R0,[SP, #+73]
        STR      R0,[SP, #+16]
        LDRB     R0,[SP, #+72]
        STR      R0,[SP, #+12]
        LDRB     R0,[SP, #+71]
        STR      R0,[SP, #+8]
        LDRB     R0,[SP, #+70]
        STR      R0,[SP, #+4]
        LDRB     R0,[SP, #+69]
        STR      R0,[SP, #+0]
        LDRB     R3,[SP, #+68]
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R1,#+3
        MOVS     R0,#+65
        BL       Send_MDIN_Data
        B.N      ??MDIN_Sprite_Initialization_5
??MDIN_Sprite_Initialization_4:
??MDIN_Sprite_Initialization_5:
        ADD      SP,SP,#+120
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
MDIN_I550_Initialization:
        PUSH     {R4,LR}
        MOVS     R4,#+1
        MOVS     R1,#+4
        LDR.W    R0,??DataTable40  ;; 0x40010c00
        BL       GPIO_ResetBits
        MOVS     R0,#+20
        BL       Delay_ms
        MOVS     R1,#+4
        LDR.W    R0,??DataTable40  ;; 0x40010c00
        BL       GPIO_SetBits
        MOVS     R0,#+60
        BL       Delay_ms
??MDIN_I550_Initialization_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??MDIN_I550_Initialization_1
        MOVS     R1,#+2
        LDR.W    R0,??DataTable40_1  ;; 0x40010800
        BL       GPIO_ReadInputDataBit
        CMP      R0,#+1
        BNE.N    ??MDIN_I550_Initialization_0
        MOVS     R0,#+0
        MOVS     R4,R0
        B.N      ??MDIN_I550_Initialization_0
??MDIN_I550_Initialization_1:
        MOVS     R0,#+100
        BL       Delay_ms
        MOVS     R0,#+100
        BL       Delay_ms
        MOVS     R1,#+1
        MOVS     R0,#+7
        BL       MDIN_Sprite_Initialization
        MOVS     R0,#+100
        BL       Delay_ms
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TW9900_DECODER_RESET_Low:
        PUSH     {R7,LR}
        MOVS     R1,#+32
        LDR.W    R0,??DataTable38_1  ;; 0x40011000
        BL       GPIO_ResetBits
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TW9900_DECODER_RESET_High:
        PUSH     {R7,LR}
        MOVS     R1,#+32
        LDR.W    R0,??DataTable38_1  ;; 0x40011000
        BL       GPIO_SetBits
        POP      {R0,PC}          ;; return

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
defTW9900Sys:
        DATA
        DC8 0, 0, 64, 160, 0, 0, 0, 2, 20, 240, 17, 208, 220, 0, 17, 0, 254
        DC8 111, 49, 128, 128, 0, 0, 48, 68, 88, 10, 0, 7, 127, 8, 0, 80, 66
        DC8 240, 216, 188, 184, 68, 42, 0, 0, 120, 68, 48, 20, 165, 230, 0, 0
        DC8 0, 5, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 5, 64, 0, 0, 160, 34, 49, 128, 0, 16, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 36, 0, 0, 19, 0, 0
        DC8 64, 160, 0, 0, 0, 18, 23, 32, 12, 208, 220, 0, 17, 0, 12, 103, 32
        DC8 126, 124, 0, 0, 48, 68, 88, 10, 0, 7, 127, 8, 0, 80, 66, 240, 216
        DC8 188, 184, 68, 42, 0, 0, 120, 68, 48, 20, 165, 230, 0, 0, 0, 5, 30
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 5, 80, 0, 0, 160, 34, 49, 128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 36, 0, 0, 19

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
defTW9900Thermal:
        DATA
        DC8 0, 0, 64, 160, 0, 0, 0, 2, 21, 244, 0, 224, 220, 0, 17, 0, 254, 111
        DC8 49, 128, 128, 0, 0, 48, 68, 88, 10, 0, 7, 127, 8, 0, 80, 66, 240
        DC8 216, 188, 184, 68, 42, 0, 0, 120, 68, 48, 20, 165, 230, 0, 0, 0, 5
        DC8 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 5, 64, 0, 0, 160, 34, 49, 128, 0, 16, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 36, 0, 0, 19, 0, 0, 64
        DC8 160, 0, 0, 0, 18, 23, 32, 13, 224, 220, 0, 17, 0, 12, 103, 32, 126
        DC8 124, 0, 0, 48, 68, 88, 10, 0, 7, 127, 8, 0, 80, 66, 240, 216, 188
        DC8 184, 68, 42, 0, 0, 120, 68, 48, 20, 165, 230, 0, 0, 0, 5, 30, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5
        DC8 80, 0, 0, 160, 34, 49, 128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 36, 0, 0, 19

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TW9900_Initial:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        BL       TW9900_DECODER_RESET_High
        MOVS     R0,#+100
        BL       Delay_ms
        MOVS     R0,#+2
        MOVS     R5,R0
??TW9900_Initial_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+112
        BCS.N    ??TW9900_Initial_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,#+112
        LDR.W    R1,??DataTable40_2
        MLA      R0,R0,R4,R1
        ADDS     R0,R5,R0
        LDRB     R3,[R0, #-112]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R2,R5
        MOVS     R1,#+1
        MOVS     R0,#+136
        BL       TW9900_I2C1_ByteWrite
        ADDS     R5,R5,#+1
        B.N      ??TW9900_Initial_0
??TW9900_Initial_1:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
VIDEO_Initialization:
        PUSH     {R4,LR}
        MOVS     R4,R0
        BL       TW9900_DECODER_RESET_Low
        MOVS     R1,#+4
        LDR.W    R0,??DataTable40  ;; 0x40010c00
        BL       GPIO_ResetBits
        MOVS     R0,#+50
        BL       Delay_ms
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,R4
        CMP      R0,#+1
        BEQ.N    ??VIDEO_Initialization_0
        CMP      R0,#+2
        BEQ.N    ??VIDEO_Initialization_1
        B.N      ??VIDEO_Initialization_2
??VIDEO_Initialization_0:
        MOVS     R0,#+1
        BL       TW9900_Initial
        B.N      ??VIDEO_Initialization_3
??VIDEO_Initialization_1:
        MOVS     R0,#+2
        BL       TW9900_Initial
        B.N      ??VIDEO_Initialization_3
??VIDEO_Initialization_2:
        MOVS     R0,#+1
        BL       TW9900_Initial
??VIDEO_Initialization_3:
        MOVS     R0,#+50
        BL       Delay_ms
        MOVS     R0,#+10
        BL       Delay_1ms
        MOVS     R1,#+4
        LDR.W    R0,??DataTable40  ;; 0x40010c00
        BL       GPIO_SetBits
        MOV      R0,#+1000
        BL       Delay_1ms
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable36:
        DC32     stTEMP

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable36_1:
        DC32     stADC

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Send_Request_Data:
        PUSH     {R4-R6,LR}
        SUB      SP,SP,#+16
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.W    R0,??DataTable40_3
        LDRB     R0,[R0, #+8]
        CMP      R0,#+129
        BEQ.N    ??Send_Request_Data_0
        CMP      R0,#+160
        BEQ.W    ??Send_Request_Data_1
        B.N      ??Send_Request_Data_2
??Send_Request_Data_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,R4
        CMP      R0,#+71
        BEQ.N    ??Send_Request_Data_3
        CMP      R0,#+72
        BEQ.N    ??Send_Request_Data_4
        B.N      ??Send_Request_Data_5
??Send_Request_Data_3:
        LDR.W    R0,??DataTable40_4
        LDR      R0,[R0, #+48]
        MOVS     R6,R0
        LSRS     R0,R6,#+8
        STRB     R0,[SP, #+0]
        MOVS     R0,R6
        STRB     R0,[SP, #+1]
        LDR.W    R0,??DataTable40_5
        MOVS     R1,#+160
        STRB     R1,[R0, #+31]
        LDR.W    R0,??DataTable40_5
        MOVS     R1,#+10
        STRB     R1,[R0, #+32]
        LDR.W    R0,??DataTable40_5
        MOVS     R1,#+5
        STRB     R1,[R0, #+33]
        LDR.W    R0,??DataTable40_5
        MOVS     R1,#+1
        STRB     R1,[R0, #+34]
        LDR.W    R0,??DataTable40_5
        MOVS     R1,#+184
        STRB     R1,[R0, #+35]
        LDR.W    R0,??DataTable40_5
        LDRB     R1,[SP, #+0]
        STRB     R1,[R0, #+36]
        LDR.W    R0,??DataTable40_5
        LDRB     R1,[SP, #+1]
        STRB     R1,[R0, #+37]
        LDR.W    R0,??DataTable40_5
        LDRB     R1,[SP, #+2]
        STRB     R1,[R0, #+38]
        LDR.W    R0,??DataTable40_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+39]
        LDR.W    R0,??DataTable40_5
        LDRB     R0,[R0, #+34]
        LDR.W    R1,??DataTable40_5
        LDRB     R1,[R1, #+35]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable40_5
        LDRB     R1,[R1, #+36]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable40_5
        LDRB     R1,[R1, #+37]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable40_5
        LDRB     R1,[R1, #+38]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable40_5
        STRB     R0,[R1, #+39]
        LDR.W    R0,??DataTable40_5
        MOVS     R1,#+175
        STRB     R1,[R0, #+40]
        LDR.W    R0,??DataTable40_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        LDR.W    R0,??DataTable40_5
        MOVS     R1,#+10
        STRB     R1,[R0, #+1]
        LDR.W    R0,??DataTable40_5
        LDRB     R0,[R0, #+0]
        ADDS     R1,R0,#+1
        LDR.W    R2,??DataTable40_5
        STRB     R1,[R2, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable40_5
        ADDS     R0,R0,R1
        LDRB     R1,[R0, #+31]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.W    R0,??DataTable40_6  ;; 0x40013800
        BL       USART_SendData
        MOVS     R0,#+1
        BL       Delay_1ms
        B.N      ??Send_Request_Data_5
??Send_Request_Data_4:
        LDR.W    R0,??DataTable40_4
        LDR      R0,[R0, #+60]
        MOVS     R6,R0
        LSRS     R0,R6,#+8
        STRB     R0,[SP, #+0]
        MOVS     R0,R6
        STRB     R0,[SP, #+1]
        LDR.W    R0,??DataTable40_5
        MOVS     R1,#+160
        STRB     R1,[R0, #+31]
        LDR.W    R0,??DataTable40_5
        MOVS     R1,#+10
        STRB     R1,[R0, #+32]
        LDR.W    R0,??DataTable40_5
        MOVS     R1,#+5
        STRB     R1,[R0, #+33]
        LDR.W    R0,??DataTable40_5
        MOVS     R1,#+1
        STRB     R1,[R0, #+34]
        LDR.W    R0,??DataTable40_5
        STRB     R4,[R0, #+35]
        LDR.W    R0,??DataTable40_5
        LDRB     R1,[SP, #+0]
        STRB     R1,[R0, #+36]
        LDR.W    R0,??DataTable40_5
        LDRB     R1,[SP, #+1]
        STRB     R1,[R0, #+37]
        LDR.W    R0,??DataTable40_5
        LDRB     R1,[SP, #+2]
        STRB     R1,[R0, #+38]
        LDR.W    R0,??DataTable40_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+39]
        LDR.W    R0,??DataTable40_5
        LDRB     R0,[R0, #+34]
        LDR.W    R1,??DataTable40_5
        LDRB     R1,[R1, #+35]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable40_5
        LDRB     R1,[R1, #+36]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable40_5
        LDRB     R1,[R1, #+37]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable40_5
        LDRB     R1,[R1, #+38]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable40_5
        STRB     R0,[R1, #+39]
        LDR.W    R0,??DataTable40_5
        MOVS     R1,#+175
        STRB     R1,[R0, #+40]
        LDR.W    R0,??DataTable40_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        LDR.W    R0,??DataTable40_5
        MOVS     R1,#+10
        STRB     R1,[R0, #+1]
        LDR.W    R0,??DataTable40_5
        LDRB     R0,[R0, #+0]
        ADDS     R1,R0,#+1
        LDR.W    R2,??DataTable40_5
        STRB     R1,[R2, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable40_5
        ADDS     R0,R0,R1
        LDRB     R1,[R0, #+31]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.W    R0,??DataTable40_6  ;; 0x40013800
        BL       USART_SendData
        MOVS     R0,#+1
        BL       Delay_1ms
??Send_Request_Data_5:
        B.N      ??Send_Request_Data_2
??Send_Request_Data_1:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,R4
        CMP      R0,#+132
        BEQ.N    ??Send_Request_Data_6
        CMP      R0,#+133
        BNE.W    ??Send_Request_Data_7
??Send_Request_Data_8:
        LDR.W    R0,??DataTable40_7
        LDR      R0,[R0, #+16]
        MOVS     R6,R0
        LSRS     R0,R6,#+8
        STRB     R0,[SP, #+0]
        MOVS     R0,R6
        STRB     R0,[SP, #+1]
        LDR.W    R0,??DataTable40_5
        MOVS     R1,#+176
        STRB     R1,[R0, #+31]
        LDR.W    R0,??DataTable40_5
        MOVS     R1,#+11
        STRB     R1,[R0, #+32]
        LDR.W    R0,??DataTable40_5
        MOVS     R1,#+5
        STRB     R1,[R0, #+33]
        LDR.W    R0,??DataTable40_5
        MOVS     R1,#+1
        STRB     R1,[R0, #+34]
        LDR.W    R0,??DataTable40_5
        STRB     R4,[R0, #+35]
        LDR.W    R0,??DataTable40_5
        LDRB     R1,[SP, #+0]
        STRB     R1,[R0, #+36]
        LDR.W    R0,??DataTable40_5
        LDRB     R1,[SP, #+1]
        STRB     R1,[R0, #+37]
        LDR.W    R0,??DataTable40_5
        LDRB     R1,[SP, #+2]
        STRB     R1,[R0, #+38]
        LDR.W    R0,??DataTable40_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+39]
        LDR.W    R0,??DataTable40_5
        LDRB     R0,[R0, #+34]
        LDR.W    R1,??DataTable40_5
        LDRB     R1,[R1, #+35]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable40_5
        LDRB     R1,[R1, #+36]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable40_5
        LDRB     R1,[R1, #+37]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable40_5
        LDRB     R1,[R1, #+38]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable40_5
        STRB     R0,[R1, #+39]
        LDR.W    R0,??DataTable40_5
        MOVS     R1,#+191
        STRB     R1,[R0, #+40]
        LDR.W    R0,??DataTable40_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        LDR.W    R0,??DataTable40_5
        MOVS     R1,#+10
        STRB     R1,[R0, #+1]
        LDR.W    R0,??DataTable40_5
        LDRB     R0,[R0, #+0]
        ADDS     R1,R0,#+1
        LDR.W    R2,??DataTable40_5
        STRB     R1,[R2, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable40_5
        ADDS     R0,R0,R1
        LDRB     R1,[R0, #+31]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.W    R0,??DataTable40_6  ;; 0x40013800
        BL       USART_SendData
        MOVS     R0,#+1
        BL       Delay_1ms
        B.N      ??Send_Request_Data_9
??Send_Request_Data_6:
        LDR.W    R0,??DataTable40_7
        LDR      R0,[R0, #+24]
        MOVS     R6,R0
        LSRS     R0,R6,#+8
        STRB     R0,[SP, #+0]
        MOVS     R0,R6
        STRB     R0,[SP, #+1]
        LDR.W    R0,??DataTable40_5
        MOVS     R1,#+176
        STRB     R1,[R0, #+31]
        LDR.W    R0,??DataTable40_5
        MOVS     R1,#+11
        STRB     R1,[R0, #+32]
        LDR.W    R0,??DataTable40_5
        MOVS     R1,#+5
        STRB     R1,[R0, #+33]
        LDR.W    R0,??DataTable40_5
        MOVS     R1,#+1
        STRB     R1,[R0, #+34]
        LDR.W    R0,??DataTable40_5
        STRB     R4,[R0, #+35]
        LDR.W    R0,??DataTable40_5
        LDRB     R1,[SP, #+0]
        STRB     R1,[R0, #+36]
        LDR.W    R0,??DataTable40_5
        LDRB     R1,[SP, #+1]
        STRB     R1,[R0, #+37]
        LDR.W    R0,??DataTable40_5
        LDRB     R1,[SP, #+2]
        STRB     R1,[R0, #+38]
        LDR.W    R0,??DataTable40_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+39]
        LDR.W    R0,??DataTable40_5
        LDRB     R0,[R0, #+34]
        LDR.W    R1,??DataTable40_5
        LDRB     R1,[R1, #+35]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable40_5
        LDRB     R1,[R1, #+36]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable40_5
        LDRB     R1,[R1, #+37]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable40_5
        LDRB     R1,[R1, #+38]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable40_5
        STRB     R0,[R1, #+39]
        LDR.W    R0,??DataTable40_5
        MOVS     R1,#+191
        STRB     R1,[R0, #+40]
        LDR.W    R0,??DataTable40_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        LDR.W    R0,??DataTable40_5
        MOVS     R1,#+10
        STRB     R1,[R0, #+1]
        LDR.W    R0,??DataTable40_5
        LDRB     R0,[R0, #+0]
        ADDS     R1,R0,#+1
        LDR.W    R2,??DataTable40_5
        STRB     R1,[R2, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable40_5
        ADDS     R0,R0,R1
        LDRB     R1,[R0, #+31]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.W    R0,??DataTable40_6  ;; 0x40013800
        BL       USART_SendData
        MOVS     R0,#+1
        BL       Delay_1ms
        B.N      ??Send_Request_Data_9
??Send_Request_Data_7:
??Send_Request_Data_9:
??Send_Request_Data_2:
        POP      {R0-R6,PC}       ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
Data_Test:
        DS8 1

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Module_Auto_Sync:
        PUSH     {LR}
        SUB      SP,SP,#+12
        MOV      R0,#+9600
        BL       UART4_Init
        MOV      R0,#+500
        BL       Delay_1ms
        LDR.W    R0,??DataTable40_8
        MOVS     R1,#+1
        STRB     R1,[R0, #+17]
        MOVS     R0,#+12
        STR      R0,[SP, #+0]
        MOVS     R3,#+5
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       Send_Sony_Data
        MOVS     R0,#+40
        BL       Delay_1ms
        MOV      R0,#+500
        BL       Delay_1ms
        MOV      R0,#+38400
        BL       UART4_Init
        MOV      R0,#+500
        BL       Delay_1ms
        LDR.W    R0,??DataTable40_8
        MOVS     R1,#+48
        STRB     R1,[R0, #+17]
        MOVS     R0,#+17
        STR      R0,[SP, #+4]
        MOVS     R0,#+6
        STR      R0,[SP, #+0]
        MOVS     R3,#+0
        MOVS     R2,#+0
        MOVS     R1,#+0
        MOVS     R0,#+48
        BL       Send_TSM_Data
        MOVS     R0,#+50
        BL       Delay_1ms
        MOV      R0,#+500
        BL       Delay_1ms
        POP      {R0-R2,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable38:
        DC32     stLIGHT

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable38_1:
        DC32     0x40011000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable38_2:
        DC32     stFAN

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable38_3:
        DC32     stHEATER

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable38_4:
        DC32     stLRF

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable38_5:
        DC32     stCDS

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
EEPROM_Memory_Read:
        PUSH     {R4,LR}
        MOVS     R4,#+0
        MOVS     R0,#+2
        BL       AT24C256C_EEPROM_Read
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+160
        BNE.W    ??EEPROM_Memory_Read_0
        LDR.W    R0,??DataTable40_3
        LDRB     R0,[R0, #+8]
        CMP      R0,#+129
        BEQ.N    ??EEPROM_Memory_Read_1
        CMP      R0,#+160
        BEQ.W    ??EEPROM_Memory_Read_2
        B.N      ??EEPROM_Memory_Read_3
??EEPROM_Memory_Read_1:
        MOVS     R0,#+11
        BL       AT24C256C_EEPROM_Read
        LDR.W    R1,??DataTable40_4
        STRB     R0,[R1, #+0]
        MOVS     R0,#+12
        BL       AT24C256C_EEPROM_Read
        LDR.W    R1,??DataTable40_4
        STRB     R0,[R1, #+1]
        MOVS     R0,#+13
        BL       AT24C256C_EEPROM_Read
        LDR.W    R1,??DataTable40_4
        STRB     R0,[R1, #+7]
        MOVS     R0,#+14
        BL       AT24C256C_EEPROM_Read
        LDR.W    R1,??DataTable40_4
        STRB     R0,[R1, #+8]
        MOVS     R0,#+15
        BL       AT24C256C_EEPROM_Read
        LDR.W    R1,??DataTable40_4
        STRB     R0,[R1, #+9]
        MOVS     R0,#+16
        BL       AT24C256C_EEPROM_Read
        LDR.W    R1,??DataTable40_4
        STRB     R0,[R1, #+10]
        MOVS     R0,#+17
        BL       AT24C256C_EEPROM_Read
        LDR.W    R1,??DataTable40_4
        STRB     R0,[R1, #+11]
        MOVS     R0,#+18
        BL       AT24C256C_EEPROM_Read
        LDR.W    R1,??DataTable40_4
        STRB     R0,[R1, #+12]
        MOVS     R0,#+19
        BL       AT24C256C_EEPROM_Read
        LDR.W    R1,??DataTable40_4
        STRB     R0,[R1, #+13]
        MOVS     R0,#+20
        BL       AT24C256C_EEPROM_Read
        LDR.W    R1,??DataTable40_4
        STRB     R0,[R1, #+14]
        MOVS     R0,#+21
        BL       AT24C256C_EEPROM_Read
        LDR.W    R1,??DataTable40_4
        STRB     R0,[R1, #+15]
        MOVS     R0,#+22
        BL       AT24C256C_EEPROM_Read
        LDR.W    R1,??DataTable40_4
        STRB     R0,[R1, #+16]
        MOVS     R0,#+23
        BL       AT24C256C_EEPROM_Read
        LDR.W    R1,??DataTable40_4
        STRB     R0,[R1, #+17]
        MOVS     R0,#+24
        BL       AT24C256C_EEPROM_Read
        LDR.W    R1,??DataTable40_4
        STRB     R0,[R1, #+18]
        MOVS     R0,#+25
        BL       AT24C256C_EEPROM_Read
        LDR.W    R1,??DataTable40_4
        STRB     R0,[R1, #+19]
        MOVS     R0,#+47
        BL       AT24C256C_EEPROM_Read
        LDR.W    R1,??DataTable40_4
        STRB     R0,[R1, #+21]
        MOVS     R0,#+27
        BL       AT24C256C_EEPROM_Read
        LSLS     R0,R0,#+8
        LDR.W    R1,??DataTable40_4
        STR      R0,[R1, #+24]
        MOVS     R0,#+28
        BL       AT24C256C_EEPROM_Read
        LDR.W    R1,??DataTable40_4
        LDR      R1,[R1, #+24]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        ORRS     R0,R0,R1
        LDR.W    R1,??DataTable40_4
        STR      R0,[R1, #+24]
        MOVS     R0,#+48
        BL       AT24C256C_EEPROM_Read
        LDR.W    R1,??DataTable40_9
        STRB     R0,[R1, #+10]
        MOVS     R0,#+49
        BL       AT24C256C_EEPROM_Read
        LDR.W    R1,??DataTable40_9
        STRB     R0,[R1, #+11]
        MOVS     R0,#+62
        BL       AT24C256C_EEPROM_Read
        LDR.N    R1,??DataTable40_9
        STRB     R0,[R1, #+6]
        MOVS     R0,#+63
        BL       AT24C256C_EEPROM_Read
        LDR.N    R1,??DataTable40_9
        STRB     R0,[R1, #+8]
        MOVS     R0,#+64
        BL       AT24C256C_EEPROM_Read
        LDR.N    R1,??DataTable40_9
        STRB     R0,[R1, #+17]
        B.N      ??EEPROM_Memory_Read_3
??EEPROM_Memory_Read_2:
        MOVS     R0,#+29
        BL       AT24C256C_EEPROM_Read
        LDR.N    R1,??DataTable40_7
        STRB     R0,[R1, #+0]
        MOVS     R0,#+30
        BL       AT24C256C_EEPROM_Read
        LDR.N    R1,??DataTable40_7
        STRB     R0,[R1, #+1]
        MOVS     R0,#+31
        BL       AT24C256C_EEPROM_Read
        LDR.N    R1,??DataTable40_7
        STRB     R0,[R1, #+2]
        MOVS     R0,#+32
        BL       AT24C256C_EEPROM_Read
        LDR.N    R1,??DataTable40_7
        STRB     R0,[R1, #+3]
        MOVS     R0,#+33
        BL       AT24C256C_EEPROM_Read
        LDR.N    R1,??DataTable40_7
        STRB     R0,[R1, #+4]
        MOVS     R0,#+34
        BL       AT24C256C_EEPROM_Read
        LDR.N    R1,??DataTable40_7
        STRB     R0,[R1, #+5]
        MOVS     R0,#+35
        BL       AT24C256C_EEPROM_Read
        LDR.N    R1,??DataTable40_7
        STRB     R0,[R1, #+6]
        MOVS     R0,#+36
        BL       AT24C256C_EEPROM_Read
        LDR.N    R1,??DataTable40_7
        STRB     R0,[R1, #+7]
        MOVS     R0,#+37
        BL       AT24C256C_EEPROM_Read
        LDR.N    R1,??DataTable40_7
        STRB     R0,[R1, #+8]
        MOVS     R0,#+38
        BL       AT24C256C_EEPROM_Read
        LDR.N    R1,??DataTable40_7
        STRB     R0,[R1, #+9]
        MOVS     R0,#+39
        BL       AT24C256C_EEPROM_Read
        LDR.N    R1,??DataTable40_7
        STRB     R0,[R1, #+10]
        MOVS     R0,#+41
        BL       AT24C256C_EEPROM_Read
        LDR.N    R1,??DataTable40_7
        STRB     R0,[R1, #+11]
        B.N      ??EEPROM_Memory_Read_3
??EEPROM_Memory_Read_0:
        LDR.N    R0,??DataTable40_3
        LDRB     R0,[R0, #+8]
        CMP      R0,#+129
        BEQ.N    ??EEPROM_Memory_Read_4
        CMP      R0,#+160
        BEQ.W    ??EEPROM_Memory_Read_5
        B.N      ??EEPROM_Memory_Read_6
??EEPROM_Memory_Read_4:
        LDR.N    R0,??DataTable40_4
        MOVS     R1,#+1
        STRB     R1,[R0, #+21]
        LDR.N    R0,??DataTable40_4
        LDRB     R1,[R0, #+21]
        MOVS     R0,#+47
        BL       AT24C256C_EEPROM_Write
        LDR.N    R0,??DataTable40_4
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        LDR.N    R0,??DataTable40_4
        LDRB     R1,[R0, #+0]
        MOVS     R0,#+11
        BL       AT24C256C_EEPROM_Write
        LDR.N    R0,??DataTable40_4
        MOVS     R1,#+0
        STRB     R1,[R0, #+1]
        LDR.N    R0,??DataTable40_4
        LDRB     R1,[R0, #+1]
        MOVS     R0,#+12
        BL       AT24C256C_EEPROM_Write
        LDR.N    R0,??DataTable40_4
        MOVS     R1,#+0
        STRB     R1,[R0, #+7]
        LDR.N    R0,??DataTable40_4
        LDRB     R1,[R0, #+7]
        MOVS     R0,#+13
        BL       AT24C256C_EEPROM_Write
        LDR.N    R0,??DataTable40_4
        MOVS     R1,#+0
        STRB     R1,[R0, #+8]
        LDR.N    R0,??DataTable40_4
        LDRB     R1,[R0, #+8]
        MOVS     R0,#+14
        BL       AT24C256C_EEPROM_Write
        LDR.N    R0,??DataTable40_4
        MOVS     R1,#+0
        STRB     R1,[R0, #+9]
        LDR.N    R0,??DataTable40_4
        LDRB     R1,[R0, #+9]
        MOVS     R0,#+15
        BL       AT24C256C_EEPROM_Write
        LDR.N    R0,??DataTable40_4
        MOVS     R1,#+0
        STRB     R1,[R0, #+10]
        LDR.N    R0,??DataTable40_4
        LDRB     R1,[R0, #+10]
        MOVS     R0,#+16
        BL       AT24C256C_EEPROM_Write
        LDR.N    R0,??DataTable40_4
        MOVS     R1,#+0
        STRB     R1,[R0, #+11]
        LDR.N    R0,??DataTable40_4
        LDRB     R1,[R0, #+11]
        MOVS     R0,#+17
        BL       AT24C256C_EEPROM_Write
        LDR.N    R0,??DataTable40_4
        MOVS     R1,#+0
        STRB     R1,[R0, #+12]
        LDR.N    R0,??DataTable40_4
        LDRB     R1,[R0, #+12]
        MOVS     R0,#+18
        BL       AT24C256C_EEPROM_Write
        LDR.N    R0,??DataTable40_4
        MOVS     R1,#+0
        STRB     R1,[R0, #+13]
        LDR.N    R0,??DataTable40_4
        LDRB     R1,[R0, #+13]
        MOVS     R0,#+19
        BL       AT24C256C_EEPROM_Write
        LDR.N    R0,??DataTable40_4
        MOVS     R1,#+2
        STRB     R1,[R0, #+14]
        LDR.N    R0,??DataTable40_4
        LDRB     R1,[R0, #+14]
        MOVS     R0,#+20
        BL       AT24C256C_EEPROM_Write
        LDR.N    R0,??DataTable40_4
        MOVS     R1,#+0
        STRB     R1,[R0, #+15]
        LDR.N    R0,??DataTable40_4
        LDRB     R1,[R0, #+15]
        MOVS     R0,#+21
        BL       AT24C256C_EEPROM_Write
        LDR.N    R0,??DataTable40_4
        MOVS     R1,#+0
        STRB     R1,[R0, #+16]
        LDR.N    R0,??DataTable40_4
        LDRB     R1,[R0, #+16]
        MOVS     R0,#+22
        BL       AT24C256C_EEPROM_Write
        LDR.N    R0,??DataTable40_4
        MOVS     R1,#+0
        STRB     R1,[R0, #+17]
        LDR.N    R0,??DataTable40_4
        LDRB     R1,[R0, #+17]
        MOVS     R0,#+23
        BL       AT24C256C_EEPROM_Write
        LDR.N    R0,??DataTable40_4
        MOVS     R1,#+0
        STRB     R1,[R0, #+18]
        LDR.N    R0,??DataTable40_4
        LDRB     R1,[R0, #+18]
        MOVS     R0,#+24
        BL       AT24C256C_EEPROM_Write
        LDR.N    R0,??DataTable40_4
        MOVS     R1,#+0
        STRB     R1,[R0, #+19]
        LDR.N    R0,??DataTable40_4
        LDRB     R1,[R0, #+19]
        MOVS     R0,#+25
        BL       AT24C256C_EEPROM_Write
        LDR.N    R0,??DataTable40_9
        MOVS     R1,#+1
        STRB     R1,[R0, #+10]
        LDR.N    R0,??DataTable40_9
        LDRB     R1,[R0, #+10]
        MOVS     R0,#+48
        BL       AT24C256C_EEPROM_Write
        LDR.N    R0,??DataTable40_9
        MOVS     R1,#+0
        STRB     R1,[R0, #+11]
        LDR.N    R0,??DataTable40_9
        LDRB     R1,[R0, #+11]
        MOVS     R0,#+49
        BL       AT24C256C_EEPROM_Write
        LDR.N    R0,??DataTable40_9
        MOVS     R1,#+0
        STRB     R1,[R0, #+6]
        LDR.N    R0,??DataTable40_9
        LDRB     R1,[R0, #+6]
        MOVS     R0,#+62
        BL       AT24C256C_EEPROM_Write
        LDR.N    R0,??DataTable40_9
        MOVS     R1,#+0
        STRB     R1,[R0, #+8]
        LDR.N    R0,??DataTable40_9
        LDRB     R1,[R0, #+8]
        MOVS     R0,#+63
        BL       AT24C256C_EEPROM_Write
        LDR.N    R0,??DataTable40_9
        MOVS     R1,#+0
        STRB     R1,[R0, #+17]
        LDR.N    R0,??DataTable40_9
        LDRB     R1,[R0, #+17]
        MOVS     R0,#+64
        BL       AT24C256C_EEPROM_Write
        B.N      ??EEPROM_Memory_Read_6
??EEPROM_Memory_Read_5:
        LDR.N    R0,??DataTable40_7
        MOVS     R1,#+1
        STRB     R1,[R0, #+13]
        LDR.N    R0,??DataTable40_7
        LDRB     R1,[R0, #+13]
        MOVS     R0,#+47
        BL       AT24C256C_EEPROM_Write
        LDR.N    R0,??DataTable40_7
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        LDR.N    R0,??DataTable40_7
        LDRB     R1,[R0, #+0]
        MOVS     R0,#+29
        BL       AT24C256C_EEPROM_Write
        LDR.N    R0,??DataTable40_7
        MOVS     R1,#+0
        STRB     R1,[R0, #+1]
        LDR.N    R0,??DataTable40_7
        LDRB     R1,[R0, #+1]
        MOVS     R0,#+30
        BL       AT24C256C_EEPROM_Write
        LDR.N    R0,??DataTable40_7
        MOVS     R1,#+0
        STRB     R1,[R0, #+2]
        LDR.N    R0,??DataTable40_7
        LDRB     R1,[R0, #+2]
        MOVS     R0,#+31
        BL       AT24C256C_EEPROM_Write
        LDR.N    R0,??DataTable40_7
        MOVS     R1,#+0
        STRB     R1,[R0, #+3]
        LDR.N    R0,??DataTable40_7
        LDRB     R1,[R0, #+3]
        MOVS     R0,#+32
        BL       AT24C256C_EEPROM_Write
        LDR.N    R0,??DataTable40_7
        MOVS     R1,#+0
        STRB     R1,[R0, #+4]
        LDR.N    R0,??DataTable40_7
        LDRB     R1,[R0, #+4]
        MOVS     R0,#+33
        BL       AT24C256C_EEPROM_Write
        LDR.N    R0,??DataTable40_7
        MOVS     R1,#+127
        STRB     R1,[R0, #+5]
        LDR.N    R0,??DataTable40_7
        LDRB     R1,[R0, #+5]
        MOVS     R0,#+34
        BL       AT24C256C_EEPROM_Write
        LDR.N    R0,??DataTable40_7
        MOVS     R1,#+50
        STRB     R1,[R0, #+6]
        LDR.N    R0,??DataTable40_7
        LDRB     R1,[R0, #+6]
        MOVS     R0,#+35
        BL       AT24C256C_EEPROM_Write
        LDR.N    R0,??DataTable40_7
        MOVS     R1,#+4
        STRB     R1,[R0, #+7]
        LDR.N    R0,??DataTable40_7
        LDRB     R1,[R0, #+7]
        MOVS     R0,#+36
        BL       AT24C256C_EEPROM_Write
        LDR.N    R0,??DataTable40_7
        MOVS     R1,#+1
        STRB     R1,[R0, #+8]
        LDR.N    R0,??DataTable40_7
        LDRB     R1,[R0, #+8]
        MOVS     R0,#+37
        BL       AT24C256C_EEPROM_Write
        LDR.N    R0,??DataTable40_7
        MOVS     R1,#+0
        STRB     R1,[R0, #+9]
        LDR.N    R0,??DataTable40_7
        LDRB     R1,[R0, #+9]
        MOVS     R0,#+38
        BL       AT24C256C_EEPROM_Write
        LDR.N    R0,??DataTable40_7
        MOVS     R1,#+0
        STRB     R1,[R0, #+10]
        LDR.N    R0,??DataTable40_7
        LDRB     R1,[R0, #+10]
        MOVS     R0,#+39
        BL       AT24C256C_EEPROM_Write
        LDR.N    R0,??DataTable40_7
        MOVS     R1,#+0
        STRB     R1,[R0, #+11]
        LDR.N    R0,??DataTable40_7
        LDRB     R1,[R0, #+11]
        MOVS     R0,#+41
        BL       AT24C256C_EEPROM_Write
??EEPROM_Memory_Read_6:
        MOVS     R1,#+160
        MOVS     R0,#+2
        BL       AT24C256C_EEPROM_Write
??EEPROM_Memory_Read_3:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable39:
        DC32     stOSD

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
main:
        PUSH     {R4,LR}
        BL       Initial_Device
??main_0:
        MOVS     R0,#+0
        MOVS     R4,R0
??main_1:
        CMP      R4,#+100
        BCS.N    ??main_2
        LDR.N    R0,??DataTable40_10  ;; 0x40000834
        STRH     R4,[R0, #+0]
        MOVS     R0,#+100
        BL       delayR
        ADDS     R4,R4,#+1
        B.N      ??main_1
??main_2:
        MOVS     R0,#+98
        MOVS     R4,R0
??main_3:
        CMP      R4,#+0
        BEQ.N    ??main_0
        LDR.N    R0,??DataTable40_10  ;; 0x40000834
        STRH     R4,[R0, #+0]
        MOVS     R0,#+100
        BL       delayR
        SUBS     R4,R4,#+1
        B.N      ??main_3

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable40:
        DC32     0x40010c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable40_1:
        DC32     0x40010800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable40_2:
        DC32     defTW9900Thermal

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable40_3:
        DC32     stINFO

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable40_4:
        DC32     stSONY

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable40_5:
        DC32     stUSART1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable40_6:
        DC32     0x40013800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable40_7:
        DC32     stTSM

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable40_8:
        DC32     stUART4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable40_9:
        DC32     stWIPER2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable40_10:
        DC32     0x40000834

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 
//  1 062 bytes in section .bss
//    199 bytes in section .data
// 18 192 bytes in section .rodata
// 28 068 bytes in section .text
// 
// 28 068 bytes of CODE  memory
// 18 192 bytes of CONST memory
//  1 261 bytes of DATA  memory
//
//Errors: none
//Warnings: 17
