/*=================================================================================
Project Name 		:	TPV HD Type (HD IP THERMOGRAPHY PTZ CAMERA)
Author			:	phs@tbtsys.com
==================================================================================*/

/*******************************************************************************
* INCLUDE
*******************************************************************************/
#include "stm32f10x.h"
#include "Define.h"

/*******************************************************************************
* FUNCTION DEFINE
*******************************************************************************/
void Delay_1us(__IO uint16_t nTime);
void Delay_1ms(__IO uint16_t nTime);

void Zoom_Data_Sync(void);

void Temperature_Data_Check(void);
void Temperature_Boot_Mode(void);

void CDS_Data_Check(void);
void Auto_Day_And_Night_Control(void);

/*******************************************************************************/

/*
Function Extern
*/
extern void Set_DRS_57600(void);
extern void USART2_Init(u16 BRate);
extern void UART4_Init(u32 BRate);
extern void UART5_Init(u32 BRate);
extern void DRS_Logo_Disable(void);
extern void FocusReset(void);
extern void OSD_WriteChar(u16 com);
extern void NV_parameterSet(u8 ParameterID, u8 ParameterValue);
extern void SSDRStatusSet(void);
extern void TempCalibration(void);
extern void FanCheck(void);
extern void CheckTempCondition(void);
extern void ZoomSyncMove(u16 SyncData);
extern void OnePushAF(void);
extern void DRS_IdeEnable(u8 IdeEnable);
extern void DRS_IdeMode(u8 IdeMode);
extern void DRS_GainBiasSet(u8 Gvalue);
extern void DRS_LevelBiasSet(u8 LBvalue);
extern void DRS_GainLimitSet(u16 GLvalue);
extern void DRS_GainBiasSet(u8 Gvalue);
extern void OSD_Display(void);
extern void OSD_Display2(void);
extern void IR_Check(void);
extern void CDS_ADC_Test(u8 Position);
extern void CDS_Check(void);
extern void IR_Duty_Set(u8 num);
extern void Run_Wiper(u8 u_Cmd, u8 u_Direction);

extern void Wiper_Origin_Protocol(void);
extern void Wiper_Active_Protocol(void);
extern void Wiper_Sensor_Check(void);
extern void Wiper_Error_Origin_Check(void);
extern void Wiper_Continuous_Delay_Set(void);

extern void Wiper_Error_Check_Func(void);
extern void Wiper_Error_Display(void);

extern void Wiper_Timer_Check(void);
extern void Wiper_Delay_Timer_Check(void);

extern void Wiper_Continuous_Stop(void);
extern void Wiper_Repeat2(void);
extern void Wiper_Repeat2_Count_Check(void);

extern void DRS_BaudSet(u16 Baudvalue);
extern void CamSet(void);

extern void AlarmCheck(void);
extern void DRS_SetBaudrate(u8 BaudrateValue);
extern void DRS_NTPALSet(u8 ntvalue);
extern void CameraInit(void);
extern void DSSCamCont_SCM(void);
extern void DRS_InverseMode(u8 InverseMode);
extern void CamCont_SCM(const u8 *Ptr, u8 Leng);
extern void CamSetShutterSpd(u8 sSpdVal);
extern void CamSetIrisSet(u8 IrisVal);
extern void CamVZoomRun(u8 zTele);
extern void OnePushTrigger(void);
extern void ZoomPosSet(void);
extern void CamSetGainSet(u8 GainVal, u8 SsnrEn);
extern void DSSCamCont(void);
extern void FHVCont(void);
extern void CamContA(void);
extern void DNaAutoLevelSet(u8 TimeLevel);
extern void ColorSet(u16 ColorVal);
extern void CamContBlc(void);
extern void CamContWBRBGain(void);
extern void FocusModeSet(void); 
extern void FocusMode(u8 FocusVal);
extern void VSetArrowKey(u8 Current);
extern void VSetInit(void);
extern void VSetMainProc(void);
extern void VSetReadKey(void);
extern void CamSetProc(void);
extern void IVSetArrowKey(u8 Current);
extern void IVSetInit(void);
extern void IVSetMainProc(void);
extern void IVSetReadKey(void);
extern void ICamSetProc(void);
extern void WdrLimitDisplay(void);
extern void WdrLevelDisplay(void);
extern void SsdrRangeDisplay(void);
extern void SSDRLevelDisplay(void);
extern void BlcLevelDisplay(void);
extern void BlcAreaSelectDisplay(void);
extern void HlcLevelDisplay(void);
extern void HlcMaskColorDisplay(void);
extern void BlcSubMenuArrowKey(u8 Current);
extern void BlcSubMenuDisplay(void);
extern void BlcSetSubReadKey(void);
extern void BlcSetSubMenu(void);
extern void BlcStatusSet(u8 AreaOn);
extern void HlcStatusSet(void);



extern void Up_Key(void);
extern void Down_Key(void);
extern void Left_Key(void);
extern void Right_Key(void);
extern void Key_Stop(void);

extern void PROTOCOL_PROCESS(void);
extern void FAN_HEATER_FIRST_CONTROL(void);	// Fan, Haater 10초간 동작

extern void Wiper_Status_Request(u8 R1_data, u8 R2_data);
extern void Wiper_Error_Send(void);

extern void KeyCheck(void);
extern void SystemStart(void);
extern void FocusModeSet(void); 
extern void FocusMode(u8 FocusVal);
extern void FHVCont(void);
extern void ThermalSetInit(void);
extern void ThermalSetMainProc(void);
extern void ThermalSetReadKey(void);
extern void ThermalSetProc(void);
extern void DRS_ColorizationSet(u8 CLvalue);
extern void DRS_ColorizationEnable(u8 CLset);
extern void DRS_AgcModeSet(u8 AgcMode);
extern void Video_Colorization(u8 Colvalue);
extern void Video_VHModeSelect(u8 VHvalue);
extern void KeyCheck(void);
extern void i2c_Delay(__IO uint32_t nTime);
extern void i2cDelay_Decrement(void);
extern void Delay_Us(unsigned int time_us);
extern void Delay_ms(uint16_t time_ms);
extern void delayS(__IO uint32_t nTime);
extern void Delay_Decrement(void);
extern void delay(__IO uint16_t nTime);
extern void LongDelay(u8 Value);
extern void delay_100ms(void);
extern void i2c_Delay(__IO uint32_t nTime);
extern void Delay(__IO uint32_t nTime);
extern void TimingDelay_Decrement(void);

extern void OSD_Clear(void);
extern void OSD_Val_Display(u8 x, u8 y, u8 cval, u8 IsBlink);
extern void OSD_Val_Display2(u8 x, u8 y, u8 cval, u8 IsBlink);

extern void OSD_Debug(u8 x, u8 y, u8 cval, u8 IsBlink);
extern void OSD_Debug2(u8 x, u8 y, u16 cval, u8 IsBlink);
extern void OSD_Debug3(u8 x, u8 y, u32 cval, u8 IsBlink);

extern void OSD_DebugStr(u8 x, u8 y, const u8 *str, u8 IsBlink);


extern void OSD_putc(u8 x, u8 y, u8 ch,  u8 IsBlink);
extern void OSD_putv(u8 x, u8 y, char *str, u8 IsBlink, u8 n);
extern void OSD_putv2(u8 x, u8 y, u8 *str, u8 IsBlink, u8 n);

extern void Set_IR_EN_DutyPeriod(uint16_t val);			// TIM1_CH1
extern void Set_IR2_EN_DutyPeriod(uint16_t val) ;		// TIM1_CH4
extern void TIMER1_CH4_DutyPeriod(uint16_t val);		// TIM1_CH4

extern void OSD_puts(u8 x, u8 y, uc8 *str, u8 IsBlink);
extern void OSD_Init(void);
extern void XOSD_Init(void);
extern void CamCont_DRS(const u8 *Ptr, u8 Leng);
extern void Send_DZoomPos(u8 DZoomPos);
extern void Send_InverseMode(u8 InverseMode);
extern void Send_AgcMode(u8 AgcMode);
extern void Send_IdeEnable(u8 IdeEnable);
extern void Send_IdeMode(u8 IdeMode);
extern void Send_PatternView(u8 PatternStat);
extern void OsdMainProc(void);
extern void Wiper_State_Save(void);
extern void OSD_putp(u8 x, u8 y, u16 ch,  u8 IsBlink);
extern void CamContP_SCM(void);
extern void CamSetProc(void);
extern void itoa(int n, char *str, char bytes);
extern void EpromWrite(u16 EepAddr, u8 EepData);
extern u8 EpromRead(u16 EepAddr);
extern u8 MenuKeyChk(void);
extern void MainMenuInit(void);
extern void OsdMainReadKey(void);
extern void MainMenuSelect(u8 Current);
extern u16 TempToADC(u8 TempVal);
extern void CheckTemp(void);
extern unsigned char strlen2(const unsigned char *pString); //수정 되야 할듯.

/* Variable Extern */

extern u8 Check_Byte;	// First Byte Check Flag
extern u8 USART1_RxCnt;
extern u8 USART1_RxMaxCnt;
extern u8 USART1_RxBuf[10];
extern u8 USART1_TempRxBuf[10];

extern u8 USART3_TxBuf[10];

/* Variable Extern End */



extern u8 ZOOMDATA_RECIVE_COMPLETE;
extern u8 ZoomPosCheckCount;
extern u8 IDEModeValFlag;
extern u8 IDEModeVal;
extern u8 ColdCondition;
extern u8 ColdCondition_Timer_Flag;		// Timer Start Flag : (0:Timer Off, 1: 90 Minite Timer Start, 2: 30 Minite Timer Start)
extern u32 ColdCondition_Check_Time;		// ColdCondition Check Time : 
extern u8 Cold_Module_Init_Check;		// ColdCondition Module Init Check

extern u8 LogoEnFlag;
extern u8 LogoModeVal;
extern u8 LensSetFlag;
extern u8 LensVal;
extern u8 TempMonitorting;
extern u16 CheckTempValue;
extern u16 ZoomSyncData75m[13];
extern u16 ZoomSyncData19m[13];
extern u16 ZoomSyncData35m[13];
extern u8 AFactFlag;
extern u16 AFmsTimer;
extern u8 AFsTimer;
extern u8 AFMTimer;
extern u16 InterCount;
extern u8	InterSCount;
extern u8	InterMCount;
extern u8	HeaterActFlag;

extern u16 GInterCount;
extern u8	GInterSCount;
extern u8	GInterMCount;
extern u8	GHeaterActFlag;  	

extern u16 ADC_Value;
extern u8 JoystickSW;
extern u8 Joy_Zoom;
extern u16 ZoomStopCount;
extern u16 FocusStopCount;

extern u8 InHeaterDispFlag;
extern u8 GHeaterDispFlag;
extern u8 minusFlag;
extern u8 OSD_Refresh;
extern u16 convertV;
// CDS Value -----------------
extern u16 CDS_convertV;
extern u16 CDS_Buffer_Cnt;
extern u32 CDS_Total_Value;
extern u16 CDS_Average_Value;
extern u32 Wiper_Repeat_Cnt;		// Wiper Repeat Count
extern u16 CDS_Day_Check_Cnt;
extern u16 CDS_Night_Check_Cnt;
extern u8 IR_Set_Check;
//---------------------------
extern u32 ADCConvertedData;
extern u8 TempCheckCount;
extern u8 TempCheckFlag;
extern u8 ConvertData;
extern u8 AlmOSD;
extern u8 AlarmDisplayFlag;
extern u16 AlarmCount;
extern u8 AlarmFlag;
extern u8 AlarmDetect;
extern u8 TherBaudSetFlag;
extern u8 TherBaudFlag;
extern u8 ColBaudFlag;
extern u8 NtPalSetFlag;
extern u8 ThermalBaudset;
extern u8 ColorBaud;
extern u8 ThermalBaud;
extern u8 TempFlag;
extern u8 TempCount;
extern u8 Temperature;
extern u16 ADCConvertedValue[2];
extern u16 convertV_Buffer;
extern u16 convertV_Buffer1;
extern u8 Temp_Count;
extern u8 Temp_Count_S;
extern u8 USART1_RECIVE_COMPLETE;
extern u8 SCM_RECIVE_COMPLETE;
extern u8 COMMAND_CODE;
extern u8 DATA1_CODE;
extern u8 DATA2_CODE;
extern u8 EXCUTE_CODE;
extern u8 KeyInputFlag;
extern u8 DZoomCount;
extern u8 MPVal;
extern u8 FocusModeVal;
extern u8 InverseMode;
//---------------------------
// Test Mode
extern u8 IR_Test_Mode;
extern u8 Wiper_Test_Mode;
extern u8 Washer_Fluid_Set;
extern u8 Wiper_Active_Save;
extern u8 Heater_Active_Save;

extern u8 IR_Duty_Step;
extern u8 Menu_IR_Set;
extern u8 ABB_Heater_Set;		// Heater 강제 조정
extern u8 Inner_Heater_State;		// Inner Heater State
extern u8 Fan_State;				// Fan State
extern u8 Heater_State;			// Heater State

extern u8 Wiper_Repeat_Active_Flag;	// Repeat Wiper Active 0:off, 1:on

extern u8 Wiper_Active_1;				// 90 preset
extern u8 Wiper_Active_Flag;			// Wiper Active 동작 상태 체크
extern u8 Wiper_Active_Cnt;			// Wiper Active 동작 회수 체크
extern u8 Wiper_Dwell_Time;			// Wiper 정지 시간

extern u16 Wiper_Error_Check_Time_ms;		// Wiper Encoder를 체크하기 위한 시간
extern u8 Wiper_Error_Status_Flag;			// Wiper Error Status Flag	0x00:Normal, 0x01:Error
extern u8 Wiper_Direction_Flag;				// Wiper Direction : CW=0x00, CCW=0x01

extern u8 Wiper_Sens_Check;			// Wiper Active 센서 인식 체크
extern u8 Wiper_Sens_Temp;			// Wiper Sensor가 Low에서 High로 변경 시 1 pulse 하기 위한 보조 Flag
extern u8 Wiper_Sens_Count;			// Wiper Sensor Count

extern u8 Wiper_Dwell_Flag;				// Wiper Dwell Timer Start Flag
extern u8 Wiper_Dwell_Timer_10ms;			// Wiper Dwell Timer 10ms
extern u8 Wiper_Dwell_Timer_1s;			// Wiper Dwell Timer 1s
extern u8 Wiper_Dwell_Timer_1minute;		// Wiper Dwell Timer 1minute
extern u8 Wiper_Dwell_Timer_1hour;		// Wiper Dwell Timer 1hour

extern u8 Motor_FG_Check;			// Motor Frequency Generator 인식 체크
extern u8 Motor_FG_Temp;			// Motor Frequency Generator Low에서 High로 변경 시 1 pulse 하기 위한 보조 Flag
extern u16 Motor_FG_Count;			// Motor Frequency Generator Count
extern u16 Motor_FG_Save_Buf;		// Motor Frequency Generator Count 임시저장
extern u16 Totol_Motor_FG_Count;		// Motor Frequency Generator Totol Count (위치 측정용)

extern u8 Wiper_Sens_Low;			// Wiper Active 왕복 체크 Sensor Low
extern u8 Wiper_Sens_High;			// Wiper Active 왕복 체크 Sensor High
extern u8 Washer_Spray_Flag;			// 워셔액 분무 동작 Check
extern u16 Washer_Spray_time;		// 워셔액 분무 시간 Check
extern u8 Washer_Time_Val;			// 워셔 분무 시간 선택 (0:0.5s, 1:1s, 2:1.5s, 3:2s, 4:2.5s, 5:3s)
extern u8 Wiper_Count_Val;			// Wiper 동작 횟수.
extern u16 Washer_Time_Set;		// 워셔액 분무 시간 설정 값.

extern u8 Wiper_Repeat_Active_Flag2;				// Repeat2 Wiper Active 0:off, 1:on
extern u16 Washer_Spray_time2;					// Repeat2 워셔액 분무 시간 Check
extern u16 Washer_Spray_time2_Delay;			// Repeat2 워셔액 분무 Delay 시간 Check - 20s

extern u8 Error_Repeat_Cnt;						// Error 동작 시 Repeat 3번 동작 실행.
extern u8 Error_Offset_Check;						// Error 발생 시 Display Off Timer Flag

extern u16 Wiper_Add_time;			// Wiper_Active_Add_Timer
extern u16 Wiper_Repear_delay_time;			// Wiper Repeat Delay Time

extern u8 Wiper_Origin_Chk;			// Wiper Origin Check
extern u8 Wiper_Origin_Reset_Chk;	// Wiper Origin 이 안되고 시작되었을 경우 예외처리

extern u8 Wiper_Manual_Set;

// Wiper TImer Check Flag
extern u8 Wiper_Timer_Set;			// Timer 설정 Flag (100+ABB 설정부분)
extern u8 Wiper_Timer_Flag;			// Timer 동작 설정 Flag
extern u32 Wiper_Timer_Chk_Val;		// Wiper 동작 후 가산되는 체크 시간
extern u32 Wiper_Timer_Set_Val;		// Wiper 동작 시간	// u32 -> 4,294,967,296

extern u8 Wiper_Continuous_flag;				// Wiper Continuous
extern u16 Wiper_Continuous_Delaytime;		// Wiper Continuous Delay Time
extern u8 Wiper_Continuous_Delay_Flag;		// Wiper Continuous Delay flag
extern u32 Wiper_Active_Checktime;			// Wiper Active Check Time


extern u8 Wiper_Error_Check;					// Wiper Error Check Flag 0:0ff, 1:On
extern u8 Wiper_Error_Sensor_Check;			// Wiper Error  Check 용 Sensor 확인
extern u8 Wiper_Error_Sensor_Check_Before;	// Wiper Error  Check 용 Sensor 이전 상태 확인용
extern u32 Wiper_Error_Check_Time;			// Wiper Error Time Check
extern u8 Wiper_Error_Msg;					// Wiper Error Msg 출력

extern u8 Wiper_Repeat2_Sensor_Check;		// Repeat2 Sensor Check

extern u8 Fan_Heater_First_On_Flag;			// Fan/Heater 를 시작 시 10초간 On/Off 하기 위한 Flag
extern u8 Fan_Heater_First_Check_Flag;		// Fan/Heater 를 시작 시 10초간 Timer On Flag
extern u16 Fan_Heater_First_Check_Time;		// Fan/Heater 를 시작 시 10초간 Count

extern u8 Fan_Dewell_Flag;					// Fan Dewell 동작
extern u8 Fan_Dewell_End_Flag;				// Fan Dewell 정지

extern u16 Fan_Dwell_Time_ms;				// Fan Dwell Timer - ms
extern u16 Fan_Dwell_Time_sec;				// Fan Dwell Timer - sec

//---------------------------
extern u8 AGCMode;
extern u8 AGCGainBias;
extern u8 AGCLevelBias;
extern u8 AGCLimitLevel;
extern u8 CdZoomSet;
extern u8 ShutterSubMenu;
extern u8 IrisSubMenu;
extern u8 IrisVal;
extern u8 GHeaterBuf;
extern u8 inHeaterBuf;
extern u8 FanBuf;
extern u8  BlcEnI; 
extern u8 SSDREn;     
extern u8 SSDRrange;  
extern u16 SSDRLevel; 
extern u8 WDRnoInc;
extern u8 TimeLevel;
extern u8 SsnrEn;
extern u16 ColorVal;
extern u8 DisEn;
extern u8 AgcVal;
extern u8 BlcLevel;
extern u8 BlcAreaTop;	
extern u8 BlcAreaBottom;
extern u8 BlcAreaLeft;	
extern u8 BlcAreaRight;	
extern u8 HlcLevel;		
extern u8 HlcMaskColor;
extern u8 BlcAreaSel;	
extern u8 BlcSubCur;
extern u8 BlcAreaMode;
extern u8 BlcSubMenu;
extern u8 Mode;
extern u8 ShutterSpd;
extern u8 AuxMode;
extern u8 AlarmInMode;
extern u8 AlarmMode;
extern u8 InHeaterInter;
extern u8 GHeaterInter;
extern u8 InHeaterMode;
extern u8 GHeaterMode;
extern u8 InHeaterOnVal;
extern u8 InHeaterOffVal;
extern u8 GHeaterOnVal;
extern u8 GHeaterOffVal;
extern u8 CZoomSet;
extern u8 TZoomSet;
extern u8 ZoomModeSet;
extern u8 TModule;
extern u16 ZoomVal_SCM;
extern u8  ZoomPos_SCM[2];
extern u8  FocuPos_SCM[2];
extern u16 DRS_Zoom_Count;
extern u8 ZoomInFlag;
extern u8 ZoomOutFlag;
extern u8 ZoomReferanceSpeed;
extern u8 RS_ZOOM;
extern u16 ZoomVal;
extern u8  PreKey;
extern u16 PanContCnt;
extern u8 PreNoBuf;
extern u8 IdDispN;
extern u8 KeyFlag;
extern volatile uint32_t i2cDelay;
extern volatile uint32_t TimDelay;
extern u16 Time1sec;
extern u16	Led1BlinkTimeMs;
extern u16	Led2BlinkTimeMs;
extern u16	Led3BlinkTimeMs;
extern u8	CTxBuf[20];
extern u8	CTxTail;
extern u8	CTxMax;
extern u8	CRxBuf[20];
extern u8	CRxTail, CRxReceived;
extern u8  CodiRef;
extern unsigned char   pSTR[32];
extern u16 inter;
extern u16 intFlag;
extern u16  AdCDS;
extern u16  AdFar;
extern u16  AdNear;
extern u16  AdCDSBuf;
extern u16  AdFarBuf;
extern u16  AdNearBuf;
extern u16  AdDone;
extern u16  AdDoneCnt;
extern u8   AdBufCnt;
extern u8   AdProCnt;
extern u8   LimFlag;
extern u8   LedCurFlag;
extern u8   AdChkCnt;
extern u16  ErrData;
extern u8   CharLeng;
extern u16   CntSetReq;
extern u8	  RUpYear;
extern u8	  RUpMonth;
extern u8	  RUpDay;
extern u8   WBMode;
extern u8   RecoverF;
extern u8   Recover;
extern u8   Protocol;
extern u8   AIrisFlag;
extern u8   AFocusFlag;
extern u8   LedStatus;
extern u8   IrisMan;
extern u8   IrisFlag;
extern u8  ZoomChkCnt;
extern u8  RxPoint;
extern u16 TemperCnt;
extern u8  TemperFlag;
extern u16 TEMPBuf;
extern u8  RefTemp;
extern u8  MinusFlag;
extern u8  FanFlag;
extern u8  HeaterFlag;
extern u8   TxBuf[18];
extern u8   CamTxBuf[18];
extern u8   TxCnt;
extern u8   ChkFlag;
extern u8   TxMax;
extern u8   TxMaxRef;
extern u8   ZoomFlag;
extern u8   FocusMan;
extern u8   CheckSum;
extern u16  ZoomData;
extern u8  PassCode;
extern u8  TempDispVal;
extern u8  AlmT;
extern u8  AlmRecv;
extern u8  AlmRx;
extern u8  OkFlag;
extern u8  NameBuf[16];
extern u8  ZoomSpd;;
extern u8  ZoomRef;
extern u8  AlmEnable;
extern u8  Language;
extern u8  LockEn;
extern u8  PassWord;
extern u8  IdDisp;
extern u8  FlkEn;
extern u8	 ShutterSpdVal;
extern u8  AperVal;
extern u8  DZoom;
extern u8  PicFlip;
extern u8  WdrBlcEn;
extern u8  DNMode;
extern u8  DSSMode;

extern u8  AlmInput[4];
extern u8  AlmAct[4];
extern u8  AlmNo;
extern u8  AlmBlk;

extern u8  Reset;
extern u16 TmCount;
extern u8  SMark;
extern u8  AdjFlag;
extern u8  SetFlag;
extern u8  Aux1Buf;
extern u8  Aux2Buf;
extern u8  AlmBuf;
extern u8  FocusFlag;
extern u8  TimeFlag;
extern u16 TimeCnt;

extern u8  MenuKey;
extern u8  RLFlag;
extern u8  UpDownFlag;
extern char  ThreeBuf[6];
extern u8  SubFlag;
extern u8  RLKey;
extern u8  IdPosBuf;
extern u8  DispBuf[3];
extern u8  SubCur;
extern u8  RlKey;
extern u8  PrevKey;
extern u8  UpDownKey;
extern u8  TiltRepeat;
extern u8  MainCur;
extern u8  HitFlag;
extern u8  SetUpFlag;
extern u8  CndFlag;
extern u8  PreIdPosBuf;
extern u8  FRZMode;

extern u8  FailFlag;
extern u8  Temp;
extern u8  RxBuf[8];
extern u8  URxBuf[6];
extern u8  RxCnt;
extern u8  CommAcc;
extern u8  RxTemp;
extern u8  PinFlag;
extern u8  MenuFlag;
extern u8  CamRxBuf[15];
extern u8  CamRxCnt;
extern u8  CamCodeRecv;
extern u8  ZoomPos[2];
extern u8  FocuPos[2];
extern u8  ZoomLed;
extern u8  ZoomCnt;
extern u8  PreZoomCnt;
extern u8  ZoomTCnt;
extern u8  DomeId;
extern u8  CommRate;
extern u8   SecondCnt;
extern u8   SecondBuf[6];
extern u8 TxBuf1[15]; 
extern u8 TxCnt1;
extern u8 RxMaxCnt;
extern u8 TxBufCnt1;	

extern u8 BackBuf[7];	
extern u8 PattRdyFlag;
extern u8 InitOpt;	
extern u8 OnAlarm;	
extern u8 FlagReqAlm;	
extern u8 CntReplyAlm;

extern u8 RxBuf1[15];
extern u8 RxStt1;
extern u8 CommAccA;
extern u8 CommAccB;
extern u8 TestUse;
extern u8 CamType;

extern u8 DirectPattFlag;	
extern u8 WbRGain, WbBGain, ZoomSpdVal, FocusSpdVal;
extern u8 ICanTek;	
extern u8 GainMode, IrisMode, IrisPeakVal;
extern u8 IrisMaxVal, AFManual;

extern u8 AlmFlag;
extern u8 TempRxBuf[10];
extern u8 AlmAuxAct[4];
extern u16 AlmAuxCnt[2];
extern u16 ZPosWaitTime;	
extern u8 ZPosRetryCount;

extern u8 NtPalMode;
extern u8 DRS_NtPalSet;
extern u8	HrMode;
extern u8 DnrMode;
extern u8 BlcSubEn;
extern u8 BlcMode;  
extern u8 WdrBlcMode;
extern u8 ISMode;

extern u8 ACTdCount;
extern u8 ACTnCount;
extern u8  txsendflag;
extern u8  tx_watch_count;


extern u16 	Time1ms;
extern u8	 	Time1ms2;
extern u16 	Time50ms;
extern u16	DwellMs, DwellSec;
extern u8	DZoomPos;
extern u8	TempDispFlag;
extern u8  ZCamRxBuf[20];
extern u8  ZTxBuf[20];
extern u8  ZCamRxCnt;
extern u8  ZCamCodeRecv;
extern u8  ZZoomPos[2];
extern u8  ZFocuPos[2];
extern u8  ZZoomLed;
extern u8  ZZoomCnt;
extern u8  ZPreZoomCnt;
extern u8  ZZoomTCnt;
extern u8 PreFlag;
extern u16 msCount;
extern u8 IdDisp2;
extern u16 msIdleCnt;


extern u8 RxStt_BD;

extern u8 MODULE_SELECT;
extern u8 CURRENT_STATUS;
extern u8	FlagReqSts;
extern u8 NT_PAL_MODE;
extern u8 SaveFlag;
extern u8 AbsFocusFlag;

extern u8 AFMode;
extern u8 Recive_Flag;
extern u8 Cold_Start_EnableFlag;

extern u8 ICRThreshold;
extern u8 DayNightSubMenu;
extern u8 DNLevelFlag;
extern u8 DNLevelSet;
extern u8 DayFlag;
extern u8 NightFlag;

extern u8 WiperSubMenu;
extern u8 WiperTimelSet;

extern u8 AlmTemp;
extern u8 Freeze_Data;
extern u8 TxCnt_485;
extern u8 TxBufCnt_485;
extern u8 TxMax_485;
extern u8 TxBuf_485[12];
extern u8 TxCnt_DRS;
extern u8 TxBufCnt_DRS;
extern u8 TxMax_DRS;
extern u8 RxBuf_DRS[12];
extern u8 TxBuf_DRS[12];
extern u8 RxCnt_DRS;
extern u8 RxMaxCnt_DRS;
extern u8 DRS_RECIVE_COMPLETE;
extern u8 txsendflag_DRS;
extern u8  MirrorDisp; 
extern u8 USART3_TxCnt;
extern u8 TxBufCnt_SCM;
extern u8 TxMax_SCM;
extern u8 TxMaxRef_SCM;
extern u8 RxBuf_SCM[12];
extern u8 txsendflag_SCM;
extern u8 RxCnt_SCM;
extern u16 TMscount;
extern u16 TScount;
extern u16 TMcount;
extern u8 LedFlag;
extern u8 CamModuleInfo;
extern u8 BlcEn;
extern u8 IrisModeSet;
extern u8 ShutterMode;
extern u8 SCM_RECIVE_COMPLETE;
extern u8 USART1_RECIVE_COMPLETE;
extern u8 OSD_Flag;
extern u8 ABB_255_Flag;
extern u8 CamID_Buffer;	
extern u8 Baud_Buffer;
extern u8 DomeId;
extern u8 BaudRate;
extern u8 TxMaxRef_DRS;

/*
extern String Extern
*/

extern String  TourMsg[3][19]       ;
extern String  TourIdMsg[3][12]     ;
extern String  TourNoMsg[3][17]     ;
extern String  TourStepMsg[3][17]   ;
extern String  TourPreMsg[3][17]    ;
extern String  TourDwellMsg[3][19]  ;
extern String  SpeedMsg[3][17]      ;
extern String  BlkMsg[]             ;
//+4
extern String  SecMsg[3][20]        ;
extern String  SecIdMsg[3][17]      ;
extern String  SecNoMsg[3][17]      ;
extern String  SecStMsg[3][17]      ;
extern String  SecFnMsg[3][17]      ;
//+3
extern String  PattMsg[3][17]       ;
extern String  PattIdMsg[3][17]     ;
extern String  PattNoMsg[3][17]     ;
extern String  PattTmMsg[3][17]     ;
//+4
extern String  PanTestMsg[3][23]    ;
extern String  TiltTestMsg[3][23]   ;
extern String  TxTestMsg[3][23]     ;
extern String  CamTestMsg[3][23]    ;

extern String  RdyMarkMsg[3][27]    ;
extern String  TestOkMsg[]          ;
extern String  TestFailMsg[3][13]   ;
extern String  HexCode[]            ;
extern String  Wait1Msg[3][16]      ;

extern String  CamIdsMsg[]          ;
//+3
extern String  CamDisMsg[3][15]     ;
extern String  BaudMsg[3][15]       ;
extern String  VideoModeMsg[3][15];

extern String  TwoMsg[]             ;
extern String  FourMsg[]            ;
extern String  NineMsg[]            ;
extern String  ErrMsg[3][19]        ;
extern String  NoTestMsg[3][12]     ;
extern String  EngErrMsg[];

//+5
extern String  AutoMsg[3][22]       ;
extern String  AutoStMsg[3][17]     ;
extern String  AutoFnMsg[3][17]     ;
extern String  AutoDrMsg[3][17]     ;
extern String  AutoEdMsg[3][17]     ;
extern String  AutoSpdMsg[3][17]    ;
extern String  AutoDwMsg[3][17]     ;

//+6
extern String  AlmMsg[3][21]        ;
extern String  AlmNoMsg[3][18]      ;
extern String  AlmInMsg[3][18]      ;
extern String  AlmActMsg[3][18]     ;

extern String  AuxActMsg[3][18]     ;
extern String  AuxMsg[3][5] 		  ;
extern String  NOMsg[]              ;
extern String  NCMsg[]              ;

extern String  TestData[8]          ;
extern String  ChkMsg[3][22]        ;
extern String  ChkOkMsg[]           ;
extern String  InitMsg[3][23]       ;
extern String  AutoPanMsg[]         ;
extern String  RstMsg[3][15]         ;
extern String  ReStartMsg[3][19]    ;
extern String  PStatusMsg[3][21]    ;
//+3
extern String  PClearMsg[3][17]     ;
extern String  FarMsg[3][27]        ;
extern String  PSaveMsg[3][19]      ;

extern String  EraseMsg[3][26]      ;
extern String  EraseMsgClr[]        ;
extern String  CodiMsg[3][11]       ;

extern String  TestMsg[] ;
extern String  Speed[]   ;
extern String  RightMsg[];
extern String  LeftMsg[] ;
extern String  ClrMsg[]  ;
extern String  DispCode[] ;
extern String  BlankMsg[] ;

extern String  OnMsg[3][5]      ;
extern String  OffMsg[3][5]     ;
extern String  FreezeMsg[3][13]	 ;

extern String  FreezeAllMsg[3][13]	 ;

extern String  PanTiltMsg[]  ;
//+9
extern String  MirrorMsg[3][18] ;
extern String  FlkMsg[3][18]    ;
extern String  AptMsg[3][18]    ;
extern String  DZoomMsg[3][18]  ;
extern String  WBMsg[3][18]     ;
extern String  PicFlipMsg[3][18];
extern String  BlcMsg[3][18]    ;

extern String  WdrMsg[3][18]    ;

extern String  SubBlcMsg[]    ;
extern String  SubWdrMsg[]    ;

extern String  DnNMsg[3][18]    ;

extern String  DN0Msg[3][12]    ;
extern String  DN1Msg[3][12]    ;
extern String  DN2Msg[3][12]    ;

extern String  WB0Msg[3][12]    ;
extern String  WB1Msg[3][12]    ;
extern String  WB2Msg[3][12]    ;
extern String  WB3Msg[3][12]    ;
extern String  WB4Msg[3][12]    ;

extern String  HrMsg[3][18]     ;
extern String  DnrMsg[3][18]    ;
extern String  ISMsg[3][18]     ;

extern String  PreMsg[3][19]    ;
extern String  PreNoMsg[3][14]  ;
extern String  PreIdMsg[3][14]  ;
extern String  PanMsg[]  ;
extern String  TiltMsg[]  ;
extern String  StatusMsg[3][21] ;


extern String  DNNMsg[3][23]     ;
extern String  DNDMsg[3][23]     ;
extern String  DNAMsg[3][23]     ;
extern String  DNNAMsg[3][23]    ;

extern String  DssOnMsg[3][23]   ;
extern String  DssOffMsg[3][23]  ;
extern String  DssNAMsg[3][23]   ;

extern String  BlcOnMsg[3][20]   ;
extern String  BlcOffMsg[3][20]  ;

extern String  WdrOnMsg[3][20]   ;
extern String  WdrOffMsg[3][20]  ;

extern String  WdrBlcOffMsg[3][20];

extern String  VibOnMsg[3][29]   ;
extern String  VibOffMsg[3][29]  ;
extern String  VibNAMsg[3][23]   ;

extern String  FrzOnMsg[3][29]   ;
extern String  FrzOffMsg[3][29]  ;
extern String  FrzNAMsg[3][23]   ;

extern String  AlmOnMsg[3][28]   ;
extern String  AlmOffMsg[3][28]  ;

extern String  FlipOnMsg[3][26]  ;
extern String  FlipOffMsg[3][26] ;

extern String  Aux1OnMsg[3][26]  ;
extern String  Aux1OffMsg[3][26] ;

extern String  Aux2OnMsg[3][26]  ;
extern String  Aux2OffMsg[3][26] ;

extern String  PClrMsg[3][19]     ;
extern String  RemoteRstMsg[3][19];

extern String  FocusSSetMsg[3][29];
extern String  ZoomSSetMsg[3][25] ;

extern String  FocuFarMsg[] 	;
extern String  FocuNearMsg[] 	;
extern String  CommErrMsg[] ;

extern String  AFMsg[] 	;
extern String  IRISMsg[] ;
extern String  AGCMsg[] 	;
extern String  ZoomSValMsg[] 		; 
extern String  FocusSValMsg[]		; 
extern String  ShuttSValMsg[]   ;

extern String  AWBModeMsg[]	;
extern String  MWbRGainMsg[]	    ;
extern String  MWbBGainMsg[]	    ;
extern String  VideoGainMsg[]	   ;
extern String  IrisMaxLevelMsg[]  ;

extern String  CamInitialMsg[]      ;
extern String  TourSetNoMsg[]		;
extern String  TourSetStepMsg[]	;
extern String  TourSetPrstMsg[]	;
extern String  GainValMsg[4][8] ;
extern String  GainValMsg1[4][8];
extern String  IrisCloseMsg[7] ;

extern String  TClrMsg[3][19]     ;
extern String  PatClrMsg[3][19]   ;
extern String  HomeautoMsg[3][10]   ;
extern String  HomeprstMsg[3][10]   ;
extern String  HometourMsg[3][10]   ;
extern String  HomepattMsg[3][10]   ;
extern String  HomescanMsg[3][10]   ;
extern String  HomeblankMsg[]       ;
extern String  ScheduleTourDwellMsg[24] ;
extern String  ScheduleTourSpeedMsg[25] ;
extern String  RecoverTimeSetMsg[18] 	;
extern String  IrisLevelMsg[3][13]     ;
extern String  ShutterModeMsg[3][13]   ;
extern String  FullAEMsg[];
extern String  FlickerMsg[]  ;
extern String  ShuttNTSpdMsg[28][13] ;
extern String  ShuttPALSpdMsg[28][13];
extern String  IrisValMsg[18][8] ; 
extern String  IrisAutoMsg[]	;
extern String  ShutterSpdMsg[22][6] ;
//---------------------------------------------
// TEST String
extern String  External_Title_Msg[];
extern String  New_Test_Msg[];
extern String  IR_Set_Msg[];
extern String  Wiper_Set_Msg[];
extern String  Washer_Fluid_Msg[];
extern String  Washer_Time_Msg[];
extern String  Wiper_Count_Msg[];
extern String  Wiper_Continuous_Msg[];

extern String  CDSMsg[];
extern String  MOffMsg[3][7];
extern String  LowMsg[3][7];
extern String  MiddleMsg[3][7];
extern String  HighMsg[3][7];
extern String  WasherTimeMsg[10][4];
extern String  ContinuousTimeMsg[9][10];

extern String  NightFlagMsg[];
extern String  DayFlagMsg[];
extern String  TCdsMsg[];
extern String  WiperCntMsg[];
extern String  WiperActiveMsg[];
extern String  WiperRepeatOnMsg[];
extern String  WiperRepeatOn2Msg[];
extern String  WiperRepeatOffMsg[];
extern String  WiperErrorMsg[];

//---------------------------------------------
extern String  AlarmMsg[]   ;
extern String  NTSCMsg[] ;
extern String  PALMsg[]  ;
extern String  MainBarMsg[3][16]  ;
extern String  MainDomMsg[3][20]  ;
extern String  MainCamMsg[3][19]  ;
extern String  MainPreMsg[3][7]   ;
extern String  MainScanMsg[3][10] ;
extern String  MainTourMsg[3][5]  ;
extern String  MainPriMsg[3][21]  ;
extern String  MainPatMsg[3][8]  	;
extern String  MainAlmMsg[3][8]  	;
extern String  MainTitMsg[3][7]  	;
extern String  MainExtMsg[3][8]  	;
extern String  MainMsg9[3][8]  	;
extern String  MainMsg10[3][8] 	;
extern String  MainMsg2[3][18]  	;
extern String  MainMsg3[3][17]  	;
extern String  CamSetMsg[3][21] ;
extern String  ConfigMsg[];
extern String  WiperSetMsg[];
extern String  CamIdMsg[3][21]  ;
extern String  RecMsg[3][21]    ;
extern String  HomeposMsg[3][21]    ;
extern String  ManMsg[3][21]    ;
extern String  SECMsg[]  ;
extern String  FlipMsg[3][21]   ;
extern String  ZoomMsg[3][21]   ;
extern String  AlmMMsg[3][21]   ;
extern String  EnMsg[3][11]   	 ;
extern String  DisMsg[3][11]  	 ;
extern String  LangMsg[3][21]   ;
extern String  EnglishMsg[3][10];
extern String  NextMsg[3][18]   ;
extern String  PrevMsg[3][20]   ;
extern String  SysSetMsg[3][21] ;
extern String  LockMsg[3][16]   ;
extern String  PassMsg[3][13]   ;
extern String  IdDispMsg[3][14] ;
extern String  SysMsg[3][17]    ;
extern String  DefaultMsg[3][20];
extern String  PreviMsg[3][23]  ;
extern String  Sys1SetMsg[3][21] ;
extern String  FlipStMsg[3][13]  ;
extern String  MotorTrqMsg[3][13] ;
extern String  MotorLevL[3][7]  ;
extern String  MotorLevM[3][9]  ;
extern String  MotorLevH[3][9]  ;
extern String  IrBrtMsg[3][14]   ;
extern String  DNLevMsg[3][11]   ;
extern String  NormalMsg[3][11]  ;
extern String  ReverseMsg[3][11] ;
extern String  TemperMsg[3][12]  ;
extern String  CelsiMsg[3][11]   ;
extern String  FahreMsg[3][11]   ;
extern String  Init1Msg[3][21]  ;
extern String  Init2Msg[3][17]  ;
extern String  Init3Msg[3][19]  ;
extern String  Init4Msg[3][16]  ;
extern String  Init5Msg[3][25]  ;
extern String  Init6Msg[3][20]  ;
extern String  Init7Msg[3][28]  ;
extern String  Init21Msg[3][16] ;
extern String  Init31Msg[3][18] ;
extern String  Init41Msg[3][17] ;
extern String  Init51Msg[3][23] ;
extern String  Init61Msg[3][20] ;
extern String  Init71Msg[3][27] ;
extern String  OsdDispMsg[3][20];
extern String  OsdIdMsg[3][13]  ;
extern String  OsdPreMsg[3][13] ;
extern String  OsdSecMsg[3][13] ;
extern String  OsdTourMsg[3][13] ;
extern String  OsdPattMsg[3][13] ;
extern String  OsdScanMsg[3][13] ;
extern String  OsdCooMsg[3][13] ;
extern String  SysStsMsg[3][19] ;
extern String  SysBMsg[3][20]   ;
extern String  SysFMsg[3][20]   ;
extern String  SysPMsg[3][20]   ;
extern String  SysUMsg[3][20]   ;
extern String  SysCMsg[3][19]   ;
extern String  SysRUMsg[3][20]  ;
extern String  ProMsg[]         ;
extern String  ProMsg1[]        ;
extern String  ProMsg2[]        ;
extern String  ProMsg3[]			 ;
extern String  ProtoMsg[3][12]      ;
extern String  CamType1Msg[]    ;
extern String  CamType2Msg[]    ;
extern String  CamType3Msg[]    ;
extern String  CamType4Msg[]    ;
extern String  CamType5Msg[]    ;
extern String  CamType6Msg[]    ;
extern String  FastTMsg[]       ;
extern String  SlowTMsg[]       ;
extern String  DssMsg[3][18]    ;
extern String  SsnrMsg[3][18]   ;
extern String	ColorMsg[3][18]	 ;
extern String	Dis1Msg[3][18]   ;
extern String  SsnrFMsg[]       ;
extern String  SsnrLMsg[]       ;
extern String  SsnrMMsg[]       ;
extern String  SsnrHMsg[]       ;
extern String  ColorTMsg[]      ;
extern String  DisOnMsg[]       ;
extern String  DisOffMsg[]      ;
extern String  AgcMsg[3][18]	   ;
extern String  AgcFMsg[3][7]    ;
extern String  AgcLMsg[3][7]    ;
extern String  AgcMMsg[3][7]    ;
extern String  PassWordIn1Msg[3][20];
extern String  PassWordIn2Msg[3][26];
extern String  PassWordIn3Msg[3][15];
extern String  PassWordIn4Msg[3][15];
extern String  PassWordIn5Msg[] 		;
extern String  PassWordIn6Msg[3][16];
extern String  PassWordIn7Msg[3][16];
extern String  PassWordIn8Msg[3][17];
extern String  NonDataClr[];
extern String  MainMsg[];
extern String  MainCameraMsg[];
extern String  ColorCamMsg[];
extern String  ThermalCamMsg[];
extern String  ZoomStatusMsg[];
extern String  AlarmStatusMsg[];
extern String  HeaterStatusMsg[];
extern String  SystemStatusMsg[];
extern String  OsdStatusMsg[];
extern String  SaveExitMsg[3][16];
extern String  SaveMsg[3][7];
extern String  ExitMsg[3][8];
extern String  DefaultInitMsg[3][27];

extern String  AllEraseMsg[3][27];
extern String  SureMsg[3][15];
extern String  AllMsg[3][30];
extern String  YesMsg[3][4];
extern String  NoMsg[3][4];
extern String  WiperStateMsg[];

extern String  UDateMsg[];
extern String  VerMsg[];

extern String  ZoomStatusMsg[];
extern String  AlarmStatusMsg[];
extern String  HeaterStatusMsg[];
extern String  SystemStatusMsg[];
extern String  OsdStatusMsg[];
extern String  OsdHeaterMsg[];
extern String  OsdGHeaterMsg[];
extern String  OsdGTempMsg[];
extern String  OsdCamIDMsg[];
extern String  OsdWiperMsg[];
extern String  SysColorMsg[];
extern String  SysThermalMsg[];
extern String  CheckLockMsg[];

extern String  TCamType1Msg[];	
extern String  TCamType2Msg[];	
extern String  TCamType3Msg[];	

extern String  TZoomModeMsg[];
extern String  CZoomModeMsg[];
extern String  ZoomModeMsg[];
extern String  ZoomSpeedMsg[];
extern String  ZoomBothMsg[];
extern String  ZoomSyncMsg[];
extern String  ZoomNAMsg[];

extern String  InnerHeaterMsg[];
extern String  GlassHeaterMsg[];
extern String  InnerHeaterOnMsg[];
extern String  InnerHeaterOffMsg[];
extern String  HeaterOnMsg[];
extern String  HeaterOffMsg[];
extern String  HeaterAutoMsg[];
extern String  HeaterIntervalMsg[];
extern String  InterTimeMsg[];
extern String  NotAvailableMsg[];
extern String  MinuteMsg[];
extern String  AlarmSetMsg[];
extern String  HeaterSetMsg[];
extern String  ZoomSetMsg[];
extern String	 BlcSubModeMsg[3][8];
extern String FlkOnMsg[];
extern String FlkOffMsg[];
extern String CamAwbMsg[];
extern String CamAtwMsg[];
extern String CamWInMsg[];
extern String CamWOutMsg[];
extern String CamManWbMsg[];
extern String DZoomOnMsg[];
extern String DZoomOffMsg[];
extern String DNnMsg[];
extern String DNdMsg[];
extern String DNaOnMsg[];
extern String  DSSValMsg[15][5];
extern String  AgcHMsg[3][7];
extern String VibnMsg[];
extern String VibfMsg[];
extern String RangeWMsg[3][7];
extern String RangeNMsg[3][7];
extern String	LeftTopMsg[3][17];
extern String	RightBottomMsg[3][17];
extern String	ModeMsg[3][16];
extern String	RangeMsg[3][16];
extern String	LevelMsg[3][16];
extern String	AreaMsg[3][16];
extern String	MaskMsg[3][16];
extern String	BlcSetMsg[3][18];
extern String	BlcMode1Msg[3][6];
extern String ColorModuleMsg[];
extern String CdZoomModeMsg[];
extern String EnMsg[3][11];
extern String DisMsg[3][11];
extern String  CheckHeaterMsg[];
extern String  CheckHeater1Msg[];
extern String  ThermalMainCamMsg[];
extern String  InverseModeMsg[];
extern String  TAGCModeMsg[];
extern String  TAGCGainBiasMsg[];
extern String  TAGCLevelBiasMsg[];
extern String  TAGCLimitMsg[];
extern String  AGCstatusMsg[4][11];
extern String  TAGCLimitValMsg[5][11];
extern String  FocusModeMsg[];
extern String  AutoFocusMsg[];
extern String  OnePushMsg[];



extern String  SystemStartMsg[];
extern String  TestStartMsg[];

extern String  LogoMsg[];
extern String  EpromCheckMsg[];



extern String ZoomQOutMsg[];
extern String ZoomQInMsg[];
extern String KeyOutMsg[];
extern String ZoomSOutMsg[];
extern String ZoomSInMsg[];
extern String FocusFarMsg[];
extern String FocusNearMsg[];
extern String FKeyOutMsg[];
extern String FocusManMsg[];
extern String FocusManDMsg[];
extern String FocusAutoMsg[];
extern String FocusMMsg[];	
extern String VibnMsg[];
extern String VibfMsg[];
extern String CamLensMsg[];
extern String BlcnMsg[];	
extern String BlcfMsg[];
extern String BlcOptionMsg[];	
extern String FRZOnMsg[];
extern String FRZOffMsg[];
extern String MirOffMsg[];
extern String MirOnMsg[];
extern String DNnMsg[];
extern String DNdMsg[];
extern String DNaOnMsg[];
extern String DSSOnMsg[];
extern String DSSOffMsg[];
extern String FlkOnMsg[];
extern String FlkOffMsg[];
extern String MotOffMsg[];
extern String DZoomOnMsg[];
extern String DZoomOffMsg[];
extern String SensOffMsg[];
extern String ZoomPosRead[];
extern String FocuPosRead[];
extern String CamAwbMsg[];
extern String CamAtwMsg[];
extern String CamWInMsg[];
extern String CamWOutMsg[];
extern String CamManWbMsg[];
extern String IrisUpMsg[];
extern String IrisDnMsg[];
extern String IrisOnMsg[];
extern String IrisOffMsg[];
extern String inHeaterOnMsg[];
extern String inHeaterOffMsg[];
extern String GHeaterOnMsg[];
extern String GHeaterOffMsg[];
extern String FanSetMsg[];
extern String FanOnMsg[];
extern String FanOffMsg[];
extern String  WiperSetOnMsg[];
extern String  WiperSetOffMsg[];
extern String AlarmDetectMsg[];
extern String ColorModuleMsg[];
extern String TempMsg[];
extern String  TempBlankMsg[];
extern String  ntpalsetMsg[];
extern String  ThermalbaudMsg[];
extern String  ColorbaudMsg[];
extern String  ntpalsetMsg[];
extern String  ThermalbaudMsg[];
extern String  ColorbaudMsg[];
extern String  BaudrateMsg[4][11];
extern String  NTPALMsg[2][11];
extern String  ThermalbaudsetMsg[];
extern String  LoadingMsg[];
extern String  SavingMsg[];
extern String  Heater1OnMsg[];
extern String  Heater2OnMsg[];
extern String  WiperOnMsg[];
extern String  HeatOffMsg[];
extern String  InterValOnePushMsg[];
extern String  ColdStartMsg[];
extern String  ColdStart1Msg[];
extern String  ColdStartMsg[];
extern String  ColdStart1Msg[];
extern String  LensSetMsg[];
extern String  LensMsg[3][11];
extern String  MirrorOnMsg[];
extern String  MirrorOffMsg[];
extern String  PicFlipOnMsg[];
extern String  PicFlipOffMsg[];
extern String  CheckZoomMsg[];
extern String  CheckSyncMsg[];
extern String  CZoomOnMsg[];
extern String  CZoomOffMsg[];
extern String  CdZoomOnMsg[];
extern String  CdZoomOffMsg[];
extern String  TZoomOnMsg[];
extern String  TZoomOffMsg[];
extern String  InverseOnMsg[];
extern String  InverseOffMsg[];
extern String  SsdrOnMsg[3][20];
extern String  SsdrOffMsg[3][20];
extern String  HlcOnMsg[3][20];
extern String  HlcOffMsg[3][20];
extern String  FocusAdjMsg[3][25];
extern String  DRSLogoDisplayMsg[];
extern String  IDElowInfoMsg[];
extern String  IDEHighInfoMsg[];
extern String  IDEModeMsg[];
