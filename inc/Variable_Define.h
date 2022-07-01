
#include "stm32f10x.h"
#include "Define.h"


u16	Time1ms;
u16	Time1sec;
u16	Led1BlinkTimeMs;
u16	Led2BlinkTimeMs;
u16	Led3BlinkTimeMs;
u8	CTxBuf[20];
u8	CTxTail;
u8	CTxMax;
u8	CRxBuf[20];
u8	CRxTail, CRxReceived;
u8  CodiRef;
unsigned char   pSTR[32];

// -------------------------------------------------------------
// --------------------- Variable Define --------------------------
// -------------------------------------------------------------
u8 Check_Byte = 0;

u8 USART1_RxCnt = 0;	// Head <- Main
u8 USART1_RxMaxCnt = 0;
u8 USART1_RxBuf[10];
u8 USART1_TempRxBuf[10];

u8 USART3_TxCnt = 0;
u8 USART3_TxBuf[10];
// -------------------------------------------------------------
u16 inter=0;
u16 intFlag=0;
u16  AdCDS = 0;
u16  AdFar = 0;
u16  AdNear = 0;
u16  AdCDSBuf = 0;
u16  AdFarBuf = 0;
u16  AdNearBuf = 0;
u16  AdDone = 0;
u16  AdDoneCnt = 0;
u8   AdBufCnt = 0;
u8   AdProCnt = 0;
u8   LimFlag = 0;
u8   LedCurFlag = 0;
u8   AdChkCnt = 250;
u16  ErrData = 0;
u8   CharLeng = 0;
u16   CntSetReq;
u8	  RUpYear;	
u8	  RUpMonth;	
u8	  RUpDay;	
u8   WBMode;
u8   RecoverF = 0;
u8   Recover = 0;
u8   Protocol;
u8   AIrisFlag;
u8   AFocusFlag;
u8   LedStatus;
u8   IrisMan;
u8   IrisFlag;
u8  ZoomChkCnt = 0;
u8  RxPoint=0;
u16 TemperCnt=0;
u8  TemperFlag=0;
u16 TEMPBuf=0;
u8  RefTemp = 0;
u8  MinusFlag = 0;
u8  FanFlag = 0;
u8  HeaterFlag = 0;	// {2013.03.20}
u8   TxBuf[18];
u8   CamTxBuf[18];
u8   TxCnt = 0;
u8   ChkFlag = 0;
u8   TxMax = 0;
u8   TxMaxRef = 0;
u8   ZoomFlag;
u8   FocusMan = 0;
u8   CheckSum;
u16  ZoomData=0;
u8  PassCode;
u8  TempDispVal = 0;
u8  AlmT = 0;
u8  AlmRecv = 0;
u8  AlmRx = 0;
u8  OkFlag = 0;

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
u8  NameBuf[16] = {0x42,0x40,0x4c,0x30,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00};	//CAM1
//u8  NameBuf[16] = {0x53,0x4C,0x55,0x2c,0x52,0x56,0x4c,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00};	//TMV-SWM

u8  ZoomSpd    = 0xff;
u8  ZoomRef = 200;	// {2012.07.23}
u8  AlmEnable = 0;
u8  Language   = 0;
u8  LockEn     = 0;
u8  PassWord   = 0;
u8  IdDisp     = 0x10;
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
u8  FlkEn      =  0;
u8	 ShutterSpdVal = 0;	// {2011.01.03} Addition
u8  MirrorDisp =  0; 
u8  AperVal    =  10;
u8  DZoom      =  0;
u8  PicFlip    =  0;
u8  WdrBlcEn      =  0;
u8  DNMode     =  2;
u8  DSSMode    =  0;

u8  AlmInput[4] = {0, 0, 0, 0};
u8  AlmAct[4]   = {1, 2, 3, 4};
u8  AlmNo;
u8  AlmBlk = 0x00;

//u8  Reset     = 0;
u16 TmCount    = 0;
u8  SMark     = 0;
u8  AdjFlag   = 0;
u8  SetFlag    = 0;
u8  Aux1Buf   = 0;
u8  Aux2Buf   = 0;
u8  AlmBuf    = 0;
u8  FocusFlag = 0;
u8  TimeFlag = 0;
u16 TimeCnt  = 0;

union {
   struct
   {
     	u8 High;
     	u8 Low;
	} Time0Byte;
   u16 Time0Word;
} Time0;

u8  MenuKey;
u8  RLFlag;
u8  UpDownFlag;
char  ThreeBuf[6];
u8  SubFlag;
u8  RLKey;
u8  IdPosBuf;
u8  DispBuf[3];
u8  SubCur      = 0;
u8  RlKey       = 0;
u8  PrevKey     = 0;
u8  UpDownKey   = 0;
u8  TiltRepeat  = 0;
u8  MainCur     = 0;
u8  HitFlag     = 0;
u8  SetUpFlag   = 0;
u8  CndFlag     = 0;
u8  PreIdPosBuf = 0;
u8  FRZMode     = 0;

u8  FailFlag     = 0;
u8  Temp = 0;
u8  RxBuf[8];				// {2006.11.17} 버퍼 길이 확인할것.
u8  URxBuf[6];
u8  RxCnt        = 0;
u8  CommAcc      = 0;
u8  RxTemp       = 0;

u8  PinFlag      = 0;
u8  MenuFlag     = 0;

u8  CamRxBuf[15];
u8  CamRxCnt     = 0;
u8  CamCodeRecv  = 0;
u8  ZoomPos[2];
u8  FocuPos[2];
u8  ZoomLed      = 0;
u8  ZoomCnt      = 0;
u8  PreZoomCnt   = 0;
u8  ZoomTCnt     = 0;

u8  DomeId       = 0;
u8  CommRate     = 0;


u8   SecondCnt;
u8   SecondBuf[6];

u8 TxBuf1[15]; 
u8 TxCnt1;
u8 RxMaxCnt;
u8 TxBufCnt1;	

u8 BackBuf[7];	
u8 PattRdyFlag;
u8 InitOpt;	
u8 OnAlarm;	
u8 FlagReqAlm;	
u8 CntReplyAlm;

u8 RxBuf1[15];
u8 RxStt1;
u8 CommAccA;
u8 CommAccB;
u8 TestUse;
u8 CamType;

u8 DirectPattFlag;	
u8 WbRGain, WbBGain, ZoomSpdVal, FocusSpdVal;
u8 ICanTek;	
u8 GainMode, IrisMode, IrisPeakVal;
u8 IrisMaxVal, AFManual;

u8 AlmFlag;
u8 TempRxBuf[10];
u8 AlmAuxAct[4] = {0, 0, 0, 0};
u16 AlmAuxCnt[2] = {0x0000, 0x0000};
u16 ZPosWaitTime = 0;	
u8 ZPosRetryCount = 0;


u8	HrMode = 0;
u8 DnrMode = 0;
u8 BlcSubEn;
u8 BlcMode=0;  
u8 WdrBlcMode;
u8 ISMode;

u8 ACTdCount=0; //{2011.09.05}
u8 ACTnCount=0; //{2011.09.05}
u8  txsendflag = 0; //{2011.11.14}
u8  tx_watch_count = 0; //{2011.11.14}


u16 	Time1ms;		// {2012.04.18} Addition
u8	 	Time1ms2;	//
u16 	Time50ms;	//
u16	DwellMs, DwellSec;
u8	DZoomPos = 0;
u8	TempDispFlag = 0;	// {2012.07.23} Addition
u8  ZCamRxBuf[20];
u8  ZTxBuf[20];
u8  ZCamRxCnt     = 0;
u8  ZCamCodeRecv  = 0;
u8  ZZoomPos[2];
u8  ZFocuPos[2];
u8  ZZoomLed      = 0;
u8  ZZoomCnt      = 0;
u8  ZPreZoomCnt   = 0;
u8  ZZoomTCnt     = 0;
u8	ZTxMax 			= 0;
u8	ZTxCnt 			= 0;
u8	ZTxMaxRef		= 0;
u8  Ztxsendflag 	= 0; 
u8 PreFlag = 0;
u16 msCount;
u8 IdDisp2;		// {2013.03.25}
u16 msIdleCnt;	// {2013.03.25}
u8 RxStt_BD; // {2013.08.28}
u8 MODULE_SELECT = 0;// {2013.09.30}
u8 CURRENT_STATUS = 0;// {2013.09.30}
u8	FlagReqSts = 0;//{2013.09.30}
u8 NT_PAL_MODE = 0;//{2013.10.22}
u8 SaveFlag = 0;//{2013.10.22}
u8 AbsFocusFlag = 0; //{2012.10.31}
u8 AFMode = 0; //{2012.10.31}
u8 Recive_Flag = 0;//{2012.11.05}
u8 Cold_Start_EnableFlag = 0;//{2013.11.18}
u8 ICRThreshold = 0;//{2013.11.26}
u8 DayNightSubMenu = 0;//{2013.11.26}

u8 WiperSubMenu = 0;//{2013.11.26}
u8 WiperTimelSet = 0;
u8 DNLevelFlag = 0;
u8 DNLevelSet = 0;
u8 DayFlag = 0;
u8 NightFlag = 0;

u8 AlmTemp = 0;//{2013.12.03}
u8 Freeze_Data = 0;//{2014.01.20}
u8 rxTest2=0;
u8 rxTest3=0;
u8 TxCnt_485 = 0;
u8 TxBufCnt_485 = 0;
u8 TxMax_485 = 0;
u8 TxBuf_485[12];


u8 TxCnt_DRS = 0;
u8 TxBufCnt_DRS = 0;
u8 TxMax_DRS = 0;
u8 RxBuf_DRS[12];
u8 TxBuf_DRS[12];
u8 RxCnt_DRS = 0;
u8 RxMaxCnt_DRS = 0;
u8 DRS_RECIVE_COMPLETE = 0;
u8 txsendflag_DRS = 0;


u8 TxBufCnt_SCM = 0;
u8 TxMax_SCM = 0;
u8 TxMaxRef_SCM = 0;
u8 RxBuf_SCM[12];
u8 txsendflag_SCM = 0;
u8 RxCnt_SCM = 0;
u16 TMscount = 0;
u16 TScount = 0;
u16 TMcount = 0;
u8 LedFlag = 0;
u8 CamModuleInfo = 0;
u8 BlcEn = 0;
u8 IrisModeSet = 0;
u8 ShutterMode = 0;
u8  KeyFlag;
u8  PreKey = 0;
u16 PanContCnt;
u8 PreNoBuf = 0;
u8 USART1_RECIVE_COMPLETE = 0;
u8 SCM_RECIVE_COMPLETE = 0;
u8 COMMAND_CODE;
u8 DATA1_CODE;
u8 DATA2_CODE;
u8 EXCUTE_CODE;
u8 IrisVal;
u8 OSD_Flag = 0;
u8 ABB_255_Flag = 0;
u8 KeyInputFlag = 0;
u8 CamID_Buffer = 0;	
u8 Baud_Buffer = 0;
u8 BaudRate = 0;
u8 TxMaxRef_DRS = 0;
u16 ZoomVal = 0;
u8 DZoomCount = 0;
u8 RS_ZOOM = 0;
u8 ZoomInFlag = 0;
u8 ZoomOutFlag = 0;
u8 ZoomReferanceSpeed = 0;
u16 DRS_Zoom_Count = 0;
u8  ZoomPos_SCM[2];
u8  FocuPos_SCM[2];
u16 ZoomVal_SCM = 0;
u8 TModule = 0;
u8 CZoomSet = 1;
u8 CdZoomSet = 0;
u8 TZoomSet = 0;
u8 ZoomModeSet = 0;
u8 InHeaterMode = 2;
u8 GHeaterMode = 2;
u8 InHeaterOnVal = 20;
u8 InHeaterOffVal = 25;
u8 GHeaterOnVal = 30;
u8 GHeaterOffVal = 35;
u8 InHeaterInter = 10;
u8 GHeaterInter = 10;
u8 AlarmMode = 0;
u8 AlarmInMode = 0;
u8 AuxMode = 0;
u8 ShutterSpd = 0;
u8 Mode;

u8  BlcEnI			=	 1; 
u8 SSDREn;     
u8 SSDRrange;  
u16 SSDRLevel; 
u8 WDRnoInc;
u8 TimeLevel;
u8 SsnrEn;
u16 ColorVal;
u8 DisEn;
u8 AgcVal;
u8 BlcLevel	= 0;
u8 BlcAreaTop = 0;	
u8 BlcAreaBottom = 0;// Area Sel 1
u8 BlcAreaLeft	= 0;	// Area Sel 2
u8 BlcAreaRight = 0;	// Area Sel 3
u8 HlcLevel	= 0;		//
u8 HlcMaskColor = 0;	//
u8 BlcAreaSel = 0;	
u8 BlcSubCur = 0;
u8 BlcAreaMode = 0;
u8 BlcSubMenu = 0;
u8 GHeaterBuf = 0;
u8 inHeaterBuf = 0;
u8 FanBuf = 0;
u8 IrisSubMenu = 0;
u8 ShutterSubMenu = 0;
u8 InverseMode = 0;
//----------------------------------------------
// Test Set
u8 IR_Test_Mode = 0;
u8 Wiper_Test_Mode = 0;
u8 Washer_Fluid_Set = 0;
u8 Wiper_Active_Save = 0; 	// ABB Menu 진입 시 임시 저장 변수:Wiper

u8 IR_Duty_Step = 0;			// IR 밝기 조정 Flag AUTO/LOW/MIDDLE/HIGH/OFF
u8 Menu_IR_Set = 0;			// Manual IR 강제 조정
u8 ABB_Heater_Set = 0;		// Heater 강제 조정
u8 Inner_Heater_State = 0;	// Inner Heater State

u8 Fan_State = 0;			// Fan State
u8 Heater_State = 0;			// Heater State

u8 Wiper_Repeat_Active_Flag = 0;	// Repeat Wiper Active 0:off, 1:on
u8 Wiper_Repeat_Active_Flag2 = 0;	// Repeat Wiper Active 0:off, 1:on

u8 Wiper_Active_1 = 0;		// 90 preset
u8 Wiper_Active_Flag = 0;	// Wiper Active 동작 상태 체크, 0x00:Stop, 0x01:Active, 0x02:Error
u8 Wiper_Active_Cnt = 0;		// Wiper Active 동작 회수 체크
u8 Wiper_Dwell_Time = 0;	// Wiper 정지 시간

u16 Wiper_Error_Check_Time_ms = 0;		// Wiper Encoder를 체크하기 위한 시간
u8 Wiper_Error_Status_Flag = 0;			// Wiper Error Status Flag	0x00:Normal, 0x01:Error
u8 Wiper_Direction_Flag = 0;				// Wiper Direction : CW=0x00, CCW=0x01

u8 Wiper_Sens_Temp = 0;	// Wiper Sensor가 Low에서 High로 변경 시 1 pulse 하기 위한 보조 Flag
u8 Wiper_Sens_Count = 0;	// Wiper Sensor Count

u8 Wiper_Dwell_Flag = 0;				// Wiper Dwell Timer Start Flag
u8 Wiper_Dwell_Timer_10ms = 0;		// Wiper Dwell Timer 10ms
u8 Wiper_Dwell_Timer_1s = 0;		// Wiper Dwell Timer 1s
u8 Wiper_Dwell_Timer_1minute = 0;	// Wiper Dwell Timer 1minute
u8 Wiper_Dwell_Timer_1hour = 0;		// Wiper Dwell Timer 1hour

u8 Motor_FG_Check = 0;			// Motor Frequency Generator 인식 체크	// 1 : sync signal, 0: no signal
u8 Motor_FG_Temp = 0;			// Motor Frequency Generator Low에서 High로 변경 시 1 pulse 하기 위한 보조 Flag
u16 Motor_FG_Count = 0;			// Motor Frequency Generator Count
u16 Totol_Motor_FG_Count = 0;	// Motor Frequency Generator Totol Count (위치 측정용)
u16 Motor_FG_Save_Buf = 0;		// Motor Frequency Generator Count 임시저장

// Sensor 가 High상태에서 Low->High 왕복 카우터 1증가.
u8 Wiper_Sens_Low = 0;		// Wiper Active 왕복 체크 Sensor Low
u8 Wiper_Sens_High = 0;		// Wiper Active 왕복 체크 Sensor High
u8 Washer_Spray_Flag = 0;		// 워셔액 분무 동작 check

u8 Washer_Time_Val = 0;		// 워셔 분무 시간 선택 (0:0.5s, 1:1s, 2:1.5s, 3:2s, 4:2.5s, 5:3s)
u16 Washer_Time_Set = 0;
u8 Wiper_Count_Val = 0;		// Wiper 동작 횟수. 3~20
u16 Washer_Spray_time = 0;		// 워셔액 분무 시간 Check
u16 Washer_Spray_time2 = 0;		// 워셔액 분무 시간 Check
u16 Washer_Spray_time2_Delay = 0;		// 워셔액 분무 시간 Check

u8 Error_Repeat_Cnt = 0;			// Error 동작 시 Repeat 3번 동작 실행.
u8 Error_Offset_Check = 0;		// Error 발생 시 Display Off Timer Flag

u16 Wiper_Add_time = 0;			// Wiper_Active_Add_Timer
u16 Wiper_Repear_delay_time = 0;			// Wiper_Active_Add_Timer
u8 Wiper_Origin_Chk = 0;						// Wiper Origin Check
u8 Wiper_Origin_Reset_Chk = 0;				// Wiper Origin 이 안되고 시작되었을 경우 예외처리

u8 Wiper_Manual_Set = 0;

// Wiper TImer Check Flag
u8 Wiper_Timer_Set = 1;			// Timer 설정 Flag (100+ABB 설정부분)
u8 Wiper_Timer_Flag = 0;			// Timer 동작 설정 Flag
u32 Wiper_Timer_Chk_Val = 0;	// Wiper 동작 후 가산되는 체크 시간
u32 Wiper_Timer_Set_Val = 0;		// Wiper 동작 시간	// u32 -> 4,294,967,296

u8 Wiper_Continuous_flag = 0;		// Wiper Continuous
u16 Wiper_Continuous_Delaytime = 0;	// Wiper Continuous Delay Time
u32 Wiper_Active_Checktime = 0;	// Wiper Continuous Delay Time

u8 Wiper_Continuous_Delay_Flag = 0;	// Wiper Continuous Delay flag

u8 Wiper_Error_Check = 0;			// Wiper Error Check Flag 0:0ff, 1:On
u8 Wiper_Error_Sensor_Check = 0;	// Wiper Error  Check 용 Sensor 확인, Sensor Check:Low, No Check:High
u32 Wiper_Error_Check_Time = 0;		// Wiper Error Time Check
u8 Wiper_Error_Sensor_Check_Before = 3;	// Wiper Error  Check 용 Sensor 이전 상태 확인용
u8 Wiper_Error_Msg = 0;				// Wiper Error Msg 출력

u8 Wiper_Repeat2_Sensor_Check = 0;	// Wiper Error Msg 출력
//----------------------------------------------

u8 Fan_Heater_First_On_Flag = 0;			// Fan/Heater 를 시작 시 10초간 On/Off 하기 위한 Flag
u8 Fan_Heater_First_Check_Flag = 0;		// Fan/Heater 를 시작 시 10초간 Timer On Flag
u16 Fan_Heater_First_Check_Time = 0;	// Fan/Heater 를 시작 시 10초간 Count

/*******************************************************************************
* FAN 동작 사양
① 50도 초과이면 : FAN ON
② 40도 초과 & 50 도 이하 이면 : 동작상태유지
③ 40도 이하이면 : FAN OFF

* HEATER 동작 사양
① 20도 이하 : HEATER ON
② 30도 이상 : HEATER OFF

* Fan_Dewell_Flag = 1 이면 FAN 30분동안 동작 함. (해당 기능은 FAN ON 으로 한번 동작하면 무조건 FLAG 상태로 진입함.)
* Fan_Dewell_Flag = 0 이면 FAN 정지.
*******************************************************************************/

u8 Fan_Dewell_Flag = 0;					// Fan Dewell 동작
u8 Fan_Dewell_End_Flag = 0;				// Fan Dewell 정지

u16 Fan_Dwell_Time_ms = 0;				// Fan Dwell Timer - ms
u16 Fan_Dwell_Time_sec = 0;				// Fan Dwell Timer - sec

//*****************************************************************************

u8 AGCMode = 0;
u8 AGCGainBias = 0;
u8 AGCLevelBias = 0;
u8 AGCLimitLevel = 0;
u8 FocusModeVal = 0;
u8 MPVal = 0;
u16 ADCConvertedValue[2];

u16 convertV_Buffer = 0;
u16 convertV_Buffer1 = 0;
u8 Temp_Count = 0;
u8 Temp_Count_S = 0;

u8 InheaterCount_Ms = 0;
u8 InheaterCount_S = 0;
u8 InheaterCount_M = 0;
u8 Temperature;
u8 TempFlag = 0;
u8 TempCount = 0;
u8 ColorBaud = 0;
u8 ThermalBaud = 0;
u8 ThermalBaudset = 0;
u8 NtPalMode = 0;;
u8 DRS_NtPalSet = 0;
u8 TherBaudSetFlag = 0;
u8 TherBaudFlag = 0;
u8 ColBaudFlag = 0;
u8 NtPalSetFlag = 0;
u8 AlarmDetect = 0;
u8 AlarmFlag = 0;
u16 AlarmCount = 0;
u8 AlarmDisplayFlag = 0;
u8 AlmOSD = 0;
u8 ConvertData;

u32 ADCConvertedData;
u8 TempCheckCount = 0;
u8 TempCheckFlag = 0;
u16 convertV;		// TEMP

// CDS Value -----------------
u16 CDS_convertV;			// CDS
u16 CDS_Buffer_Cnt;			// CDS ADC Average 를 위한 개수
u32 CDS_Total_Value;		// CDS ADC Total
u16 CDS_Average_Value;		// CDS ADC Average

u32 Wiper_Repeat_Cnt;		// Wiper Repeat Count

u16 CDS_Day_Check_Cnt;		// CDS Day 전환을 위한 체크 카운터
u16 CDS_Night_Check_Cnt;	// CDS Night 전환을 위한 체크 카운터
u8 IR_Set_Check;			// IR Setting을 한번만 하도록 하기 위한 Flag
//---------------------------
u8 OSD_Refresh = 0;
u8 minusFlag = 0;
u8 InHeaterDispFlag = 0;
u8 GHeaterDispFlag = 0;
u16 ADC_Value;

u8 JoystickSW = 0;
u8 Joy_Zoom = 0;
u16 ZoomStopCount=0;
u16 FocusStopCount=0;

u16 InterCount = 0;
u8	InterSCount = 0;
u8	InterMCount = 0;
u8	HeaterActFlag = 0;

u16 GInterCount = 0;
u8	GInterSCount = 0;
u8	GInterMCount = 0;
u8	GHeaterActFlag = 0;  	
u16 AFmsTimer = 0;
u8 AFsTimer = 0;
u8 AFMTimer = 0;
u8 AFactFlag = 0;
u16 CheckTempValue = 3000;
u8 TempMonitorting = 0;
u8 LensVal = 0;
u8 LensSetFlag = 0;
u8 LogoModeVal = 0;
u8 LogoEnFlag = 0;

u8 ColdCondition = 0xff;
u8 ColdCondition_Timer_Flag = 0;			// Timer Start Flag : (0:Timer Off, 1: 90 Minite Timer Start, 2: 30 Minite Timer Start)
u32 ColdCondition_Check_Time = 0;		// ColdCondition Check Time : 
u8 Cold_Module_Init_Check = 0;			// ColdCondition Module Init Check

u8 IDEModeVal = 0;
u8 IDEModeValFlag = 0;
u8 ZoomPosCheckCount = 0;
u8 ZOOMDATA_RECIVE_COMPLETE = 0;

u16 ZoomSyncData75m[13] = {0x0069, 0x00e1, 0x0132, 0x0180, 0x01db, 0x01ff, 0x021e, 0x024b, 0x0267, 0x027c,  0x0289,  0x0292, 0x02b7};
u16 ZoomSyncData19m[13] = {0x022d, 0x0273, 0x02b5, 0x02f2, 0x030b, 0x0335, 0x0358, 0x0373, 0x0384, 0x0390, 0x0399,  0x0399,  0x0399};
u16 ZoomSyncData35m[13] = {0x02db, 0x031b, 0x0359, 0x037b, 0x038c, 0x0399, 0x0399, 0x0399, 0x0399, 0x0399,  0x0399,  0x0399, 0x0399};
