#include "Define.h"

String  LogoMsg[]		= {"TMV-SWM"};
String  VerMsg[]		= {"1.00a"};
String  UDateMsg[]	= {"20.01.15"};

String  TourMsg[3][19]       = {"TOUR SET","IMPOSTA TOUR","USTAWIENIA TRASY"};
String  TourIdMsg[3][12]     = {"TOUR TITLE ","NOME TOUR  ","NAZWA TRASY"};
String  TourNoMsg[3][17]     = {"TOUR NO.   ","NUMERO TOUR ","NUMER TRASY "};
String  TourStepMsg[3][17]   = {"TOUR  STEP ","STEP TOUR     ","KROK TRASY      "};
String  TourPreMsg[3][17]    = {"PRESET NO. ","NUMERO PRESET ","NUMER PRESETU   "};
String  TourDwellMsg[3][19]  = {"DWELL TIME ","TEMPO DI SOSTA","CZAS ZATRZYMANIA"};
String  SpeedMsg[3][17]      = {"SPEED      ","VELOCITA'     ","PREDKOSC        "};
String  BlkMsg[]             = {"BLK"};
//+4
String  SecMsg[3][20]        = {"SECTOR SET","IMPOSTA AREA","USTAWIENIA SEKTORA"};
String  SecIdMsg[3][17]      = {"SECTOR ID   ","NOME AREA   ","ID SEKTORA  "};
String  SecNoMsg[3][17]      = {"SECTOR NO.  ","NUMERO AREA ","NUMER SEKTORA   "};
String  SecStMsg[3][17]      = {"SECTOR START","INIZIO AREA ","POCZATEK SEKTORA"};
String  SecFnMsg[3][17]      = {"SECTOR END  ","FINE AREA   ","KONIEC SEKTORA  "};
//+3
String  PattMsg[3][17]       = {"PATTERN SET","IMPOSTA PATTERN","USTAWIENIA TRASY"};
String  PattIdMsg[3][17]     = {"PATT  TITLE   ","NOME PATTERN  ","NAZWA TRASY   "};
String  PattNoMsg[3][17]     = {"PATT  NO.     ","NUMERO PATTERN","NUMER TRASY   "};
String  PattTmMsg[3][17]     = {"DATA  FILL    ","DATI PATTERN  ","DANE          "};
//+4
String  PanTestMsg[3][23]    =  {"PAN  ORIGIN  CHECK","CONTROLLO ORIZZONTALE ","TEST PAN          "};
String  TiltTestMsg[3][23]   =  {"TILT ORIGIN  CHECK","CONTROLLO VERTICALE   ","TEST TILT         "};
String  TxTestMsg[3][23]     =  {"TX CONNECTION TEST","CONTROLLO TRASMISSIONE","TEST TX           "};
String  CamTestMsg[3][23]    =  {"CAMERA COMM   TEST","CONTROLLO CAMERA COMM ","TEST KOMUNIKACJI  "};

String  RdyMarkMsg[3][27]       =  {{0xcd,0xcd,0xcd,0xcd,0xcd,0xcd,0xcd,0xcd,0xcd,0xcd,0xcd,0xcd,0xcd,0xcd,0xcd,0xcd,0xcd,0xcd,0xcd,0xcd,0xcd,0x00},{0xcd,0xcd,0xcd,0xcd,0xcd,0xcd,0xcd,0xcd,0xcd,0xcd,0xcd,0xcd,0xcd,0xcd,0xcd,0xcd,0xcd,0xcd,0xcd,0xcd,0xcd,0xcd,0xcd,0xcd,0xcd,0x00},{0xcd,0xcd,0xcd,0xcd,0xcd,0xcd,0xcd,0xcd,0xcd,0xcd,0xcd,0xcd,0xcd,0xcd,0xcd,0xcd,0xcd,0xcd,0xcd,0xcd,0xcd,0x00}};
String  TestOkMsg[]          =  {"OK"};
String  TestFailMsg[3][13]   =  {"FAIL","FAIL","BLAD"};
String  HexCode[]            =  {"0123456789ABCDEF"};
String  Wait1Msg[3][16]      =  {"WAITING....","IN ATTESA....","CZEKAJ..."};

String  CamIdsMsg[]          = {"CAM ID:"};
//+3
String  CamDisMsg[3][15]     = {"CAMERA ID :","NUMERO CAMERA :","ID KAMERY :"};
String  BaudMsg[3][15]       = {"BAUD RATE :","BAUD RATE     :","PREDKOSC  :"};
String  VideoModeMsg[3][15]  = {"VIDEO MODE:","VIDEO MODO:","TRYB VIDEO:"};
String  TwoMsg[]             = {"2400 BPS"};
String  FourMsg[]            = {"4800 BPS"};
String  NineMsg[]            = {"9600 BPS"};
String  ErrMsg[3][19]        = {"SET ERROR","ERRORE IMPOSTAZIONE","BLAD"};
String  NoTestMsg[3][12]     = {"NO TESTED","NO TESTATO","BRAK TESTU"};
String  EngErrMsg[] = {"SET ERROR"};

//+5
String  AutoMsg[3][22]       = {"AUTO SCAN SET","IMPOSTA AUTO SCAN","USTAWIENIA AUTO SCAN"};
String  AutoStMsg[3][17]     = {"START ANGLE","ANGOLO INIZIALE ","POCZATEK        "};
String  AutoFnMsg[3][17]     = {"END   ANGLE","ANGOLO FINALE   ","KONIEC          "};
String  AutoDrMsg[3][17]     = {"DIRECTION  ","DIREZIONE       ","KIERUNEK        "};
String  AutoEdMsg[3][17]     = {"ENDLESS    ","SENZA FINE CORSA","RUCH CIAGLY     "};
String  AutoSpdMsg[3][17]    = {"SPEED      ","VELOCITA'       ","PREDKOSC        "};
String  AutoDwMsg[3][17]     = {"DWELL TIME ","TEMPO DI SOSTA  ","CZAS ZATRZYMANIA"};

//+6
String  AlmMsg[3][21]        = {"  ALARM SET  ","  IMPOSTA ALLARMI  "," USTAWIENIA ALARMU "};
String  AlmNoMsg[3][18]      = {"ALARM NO.  ","NUMERO ALLARME  ","NUMER ALARMU     "};

String  AlmActMsg[3][18]     = {"ALARM ACT  ","AZIONE ALLARME  ","CZYNNOSC ALARMOWA"};


String  AuxMsg[3][5] 		  = {"BLK ", "AUX1", "AUX2"};	// {2008.05.27} Addition


String  TestData[8]          = {0x01,0x02,0x04,0x08,0x10,0x20,0x40,0x80};
String  ChkMsg[3][22]        = {"NOW EEPROM CHECKING","NOW EEPROM CHECKING","TEST PAMI I EEPROM"};
String  ChkOkMsg[]           = {"    EEPROM OK      "};
String  InitMsg[3][23]       = {"ALL DATA INITIALIZING","ALL DATA INITIALIZING","INICJALIZACJA DANYCH"};
String  AutoPanMsg[]         = {"SCAN"};
String  RstMsg[3][15]         = {"CAMERA RESET","CAMERA RESET","RESET KAMERY"};
String  ReStartMsg[3][19]    = {"CAMERA RESTARTING","CAMERA RESTARTING","RESTART KAMERY"};
String  PStatusMsg[3][21]    = {"   PRESET STATUS   ","   STATO PRESET   ","   STATUS PRESETU   "};
//+3
String  PClearMsg[3][17]     = {"CLEAR NUMBER   :","CANCELLA NUMERO:","SKASUJ MUMER   :"};
String  FarMsg[3][27]        = {"PRESS FAR KEY","PREMI TASTO FAR (LONTANO)","UZYJ PRZYCISKU FAR"};
String  PSaveMsg[3][19]      = {"PRESET    SAVED","PRESET    SALVATO","PRESET    ZAPISANY"};

String  EraseMsg[3][26]      =    {"PRESET INITIALIZING","INIZIALIZZAZIONE PRESET","INICJALIZACJA PRESETU"};
String  EraseMsgClr[]        = {"                             "};
String  CodiMsg[3][11]       = {"POSITION : ","POSIZIONE: ","POZYCJA  :"};

String  TestMsg[] = {"CODE: "};
String  Speed[]   = {"SPEED:"};
String  RightMsg[]= {"CW "};
String  LeftMsg[] = {"CCW"};
String  ClrMsg[]  = {"                "};
String  DispCode[] = {"0123456789ABCDEF"};
String  BlankMsg[] = {"---------"};

String  OnMsg[3][5]      = {"ON ","ON ","ZAL."};
String  OffMsg[3][5]     = {"OFF","OFF","WYL."};
String  FreezeMsg[3][13]	 = {"FREEZE MODE","FERMO  MODE","TRYB ZEMROZ."};

String  FreezeAllMsg[3][13]	 = {"FREEZE ALL","FERMO  ALL","ALL ZEMROZ."}; //{2011.02.16}

String  PanTiltMsg[]  = {"PAN       TILT"};
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//      camera set massage
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//+9
String  MirrorMsg[3][18] = {"MIRROR   ","MIRROR   ","LUSTRZANE ODBICIE"};
String  FlkMsg[3][18]    = {"FLICKER  ","FLICKER  ","MIGOTANIE        "};
String  AptMsg[3][18]    = {"APERTURE ","APERTURE ","APERTURA         "};//0-15
String  DZoomMsg[3][18]  = {"D ZOOM   ","D ZOOM   ","CYFROWY ZOOM     "};
String  WBMsg[3][18]     = {"WB MODE  ","WB MODE  ","TRYB WB          "};//0-3
String  PicFlipMsg[3][18]= {"PIC FLIP ","PIC FLIP ","ODWROCENIE OBRAZU"};
String  BlcMsg[3][18]    = {"BLC      ","BLC      ","BLC              "};

String  WdrMsg[3][18]    = {"WDR      ","WDR      ","WDR              "};	// {2007.04.26} Addition

String  SubBlcMsg[]    = {"BLC"}; // New Addition
String  SubWdrMsg[]    = {"WDR"};	// New Addition

String  DnNMsg[3][18]    = {"D/N MODE ","MODO D/N ","TRYB DZIEN/NOC   "};

String  DN0Msg[3][12]    = {"NIGHT MODE","MODO NOTTE ","TRYB NOC  "};
String  DN1Msg[3][12]    = {"DAY MODE  ","MODO GIORNO","TRYB DZIEN"};
String  DN2Msg[3][12]    = {"AUTO MODE ","MODO AUTO  ","TRYB AUTO "};

String  WB0Msg[3][12]    = {"AWC MODE","MODO AWC","TRYB AWC   "};//0-3 {2011.02.16} 추가
String  WB1Msg[3][12]    = {"INDOOR  ","INTERNO ","WEWNATRZ   "};//0-3
String  WB2Msg[3][12]    = {"OUTDOOR ","ESTERNO ","NA ZEWNATRZ"};//0-3
String  WB3Msg[3][12]    = {"ATW MODE","MODO ATW","TRYB ATW   "};//0-3
String  WB4Msg[3][12]    = {"MANUAL  ","MANUALE ","RECZNA     "};	// {2007.05.07}
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

String  HrMsg[3][18]     = {"HR MODE  ","MODO HR  ","TRYB HR          "};
String  DnrMsg[3][18]    = {"DNR MODE ","MODO DNR ","TRYB DNR         "};
String  ISMsg[3][18]     = {"IS MODE  ","MODO IS  ","TRYB IS          "};

String  PreMsg[3][19]    = {"PRESET SET","IMPOSTA PRESET","USTAWIENIA PRESETU"};
String  PreNoMsg[3][14]  = {"PRESET   NO  ","NUMERO PRESET","NUMER PRESETU"};
String  PreIdMsg[3][14]  = {"PRESET   ID  ","NOME PRESET  ","ID PRESETU   "};
String  PanMsg[]  =  {"PAN"};
String  TiltMsg[]  = {"TILT"};
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
String  StatusMsg[3][21] = {"   STATUS REPORT   ","   STATO FUNZIONI   ","   RAPORT STATUSU   "};


String  DNNMsg[3][23]     = {"D/N NIGHT MODE","D/N MODO NOTTE","TRYB DZIEN/NOC"};
String  DNDMsg[3][23]     = {"D/N DAY MODE  ","D/N MODO GIORNO","TRYB DZIEN"};
String  DNAMsg[3][23]     = {"D/N AUTO MODE ","D/N MODO AUTO","TRYB AUTO"};
String  DNNAMsg[3][23]    = {"NOT AVAILABLE ","NON DISPONIBILE","PUSTE"};

String  DssOnMsg[3][23]   = {"DSS ON       ","DSS ON       ","DSS ZAL."};
String  DssOffMsg[3][23]  = {"DSS OFF      ","DSS OFF      ","DSS WYL."};
String  DssNAMsg[3][23]   = {"NOT AVAILABLE ","NON DISPONIBILE","PUSTE"};

String  BlcOnMsg[3][20]   = {"BLC ON  ","BLC ON  ","BLC ZAL."};
String  BlcOffMsg[3][20]  = {"BLC OFF ","BLC OFF ","BLC WYL."};

String  WdrOnMsg[3][20]   = {"WDR ON  ","WDR ON  ","WDR ZAL."};	// {2007.04.27} Addition
String  WdrOffMsg[3][20]  = {"WDR OFF ","WDR OFF ","WDR WYL."};	//

String  WdrBlcOffMsg[3][20]={"OFF     ","OFF     ","WYL.    "};	// New Addition

String  VibOnMsg[3][29]   = {"STABILIZER ON","STABILIZZATORE  ON  ","KOREKCJA DRGAN ZAL."};
String  VibOffMsg[3][29]  = {"STABILIZER OFF","STABILIZZATORE  OFF ","KOREKCJA DRGAN WYL."};
String  VibNAMsg[3][23]   = {"NOT AVAILABLE ","NON DISPONIBILE","PUSTE"};

String  FrzOnMsg[3][29]   = {"FREEZE ON     ","FERMO IMMAGINE ON ","ZAMROZENIE ZAL."};
String  FrzOffMsg[3][29]  = {"FREEZE OFF    ","FERMO IMMAGINE OFF","ZAMROZENIE WYL."};
String  FrzNAMsg[3][23]   = {"NOT AVAILABLE ","NON DISPONIBILE","PUSTE"};

String  AlmOnMsg[3][28]   = {"ALARM ENABLE  ","ALLARMI ABILITATI   ","ALARM ZAL."};
String  AlmOffMsg[3][28]  = {"ALARM DISABLE ","ALLARMI DISABILITATI","ALARM WYL."};

String  FlipOnMsg[3][26]  = {"AUTOFLIP ON ","AUTOFLIP ON ","Auto FLIP ZAL."};
String  FlipOffMsg[3][26] = {"AUTOFLIP OFF","AUTOFLIP OFF","Auto FLIP WYL."};

String  Aux1OnMsg[3][26]  = {"AUX1 TURN ON  ","AUX1 TURN ON  ","AUX1 ZAL."};
String  Aux1OffMsg[3][26] = {"AUX1 TURN OFF ","AUX1 TURN OFF ","AUX1 WYL."};

String  Aux2OnMsg[3][26]  = {"AUX2 TURN ON  ","AUX2 TURN ON  ","AUX2 ZAL."};
String  Aux2OffMsg[3][26] = {"AUX2 TURN OFF ","AUX2 TURN OFF ","AUX2 WYL."};
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


// ============================================================================================================
// {2007.05.02} Addition - Pelco-ExTended Command (ICanTek)
String  PClrMsg[3][19]     = {"PRESET    CLEAR","PRESET    CANCELLA","PRESET    PUSTA"};
String  RemoteRstMsg[3][19]= {"RESET WAITING...","RESET IN ATTESA...", "CZEKAJ RESET..."};		// {2007.05.02} Addition : REMOTE RESET MEssage

// {2007.05.04} Addition
String  FocusSSetMsg[3][29]= {"      FOCUS SPEED SET       ","   VELOCITA' FUOCO SETUP    ","USTAWIANIA PREDKOSC OSTROSCI"};
String  ZoomSSetMsg[3][25] = {"    ZOOM SPEED SET     ","  VELOCITA' ZOOM SETUP  ","USTAWIENIA PREDKOSC ZOOM"};

// {2007.05.07} Addition
//                          3456789012345678901234567
//                           "    ZOOM SPEED SET     "
String  FocuFarMsg[] 	= {"FOCUS FAR  : SAVE AND EXIT"};
String  FocuNearMsg[] 	= {"FOCUS NEAR : EXIT"};
String  CommErrMsg[] = {"CAMERA COMM ERROR!"};



//                   901234567890123
String  AFMsg[] 	= {"AF AUTO : "};		// "AF AUTO : ON/OFF" - OnMsg[]/OffMsg[]
String  IRISMsg[] = {"IRIS AUTO : "};	// "IRIS AUTO : ON/OFF" - 
String  AGCMsg[] 	= {"AGC AUTO : "};	// "IRIS AUTO : ON/OFF" - 

//                       0         1         2         3
//                       012345678901234567890123456789012
String  ZoomSValMsg[] 		= {  "ZOOM SPEED SET [ ]"};
String  FocusSValMsg[]		= { "FOCUS SPEED SET [ ]"};
//String  ShuttSValMsg[]   = {"SHUTTER SPEED SET  1/"};
String  ShuttSValMsg[]   = {"SHUTTER SPEED SET : "}; //{2011.08.18}



String  AWBModeMsg[]			  ={"WB MODE SET : "};	// MAN, AWB, ATW, INDOOR, OUTDOOR
String  MWbRGainMsg[]	    = {"WB R-GAIN SET [   ]"};  
String  MWbBGainMsg[]	    = {"WB B-GAIN SET [   ]"};  
String  VideoGainMsg[]	   = {"VIDEO GAIN SET [  ]dB"};  
String  IrisMaxLevelMsg[]  = {"IRIS MAX LEVEL [    ]"};

String  CamInitialMsg[]      = {"CAM INITIALIZE..."};

//                       0         1         2         3
//                       012345678901234567890123456789012
//                            "TOUR SET" : TourMsg[3]		// Line 1
String  TourSetNoMsg[]		= {"TOUR NO. [  ]"};				// Line 4
String  TourSetStepMsg[]	= {"STEP [  ]"};					// Line 5
String  TourSetPrstMsg[]	= {"PRESET NO. [   ] SAVED"};	// Line 6

String  GainValMsg[4][8] = {"OFF]   ", "LOW]   ","MIDDLE]", "HIGH]  "};	// {2011.02.09}
String  GainValMsg1[4][8]= {"OFF]   ", "BASSO] ","MEDIO] ", "ALTO]  "};	// {2011.02.09}



//String  GainValMsg[16][3] = {"-3", " 0", " 2", " 4", " 6", " 8", "10", "12", "14", "16", "18", "20", "22", "24", "26", "28"};


String  IrisCloseMsg[7] = {"CLOSE]"};


// {2007.05.14} Addition - TOUR/PATTERN Clear
//                  0         1         2         3
//                  012345678901234567890123456789012
String  TClrMsg[3][19]     = {"TOUR   CLEAR","TOUR   CANCELLA","TOUR   PUSTA"};
//                    0         1         2         3
//                    012345678901234567890123456789012
String  PatClrMsg[3][19]   = {"PATTERN    CLEAR","PATTERN    CANCELLA","PATTERN    PUSTA"};
//-----------{2010.10.10}----------------------------
String  HomeautoMsg[3][10]   = {"[AUTO ]","[AUTO ]","[AUTO ]"};
String  HomeprstMsg[3][10]   = {"[PRST ]","[PRST ]","[PRST ]"};
String  HometourMsg[3][10]   = {"[TOUR ]","[TOUR ]","[TURA ]"};
String  HomepattMsg[3][10]   = {"[PATT ]","[PATT ]","[PATT ]"};
String  HomescanMsg[3][10]   = {"[SCAN ]","[SCAN ]","[SCAN ]"};
String  HomeblankMsg[]       = {"       "};

//---------------------------------------------------
                               //   012345678901234567890123456789012
String  ScheduleTourDwellMsg[24] = {"TOUR[  /  ] : DWELL[  ]"};	// {2008.01.15}
String  ScheduleTourSpeedMsg[25] = {"TOUR[  /  ] : SPEED[   ]"};	// {2008.01.15}
String  RecoverTimeSetMsg[18] 	= {"RECOVER TIME [  ]"}; // {2008.01.15}

 //{2011.02.16}============================================================
String  IrisLevelMsg[3][13]     = {"IRIS SET ","IRIS SET ","IRIS SET "}; 
String  ShutterModeMsg[3][13]   = {"SHUTTER  ","SHUTTER  ","SHUTTER  "};
String  FullAEMsg[]  =  {"FULL AUTO "};
String  FlickerMsg[]  = {"A.FLICKER "};
String  ShuttNTSpdMsg[28][13] = {"x512     ", "x256     ", "x128     ", "x64      ", "x32      ", "x24      ", "x16      ", "x14      ", 
	                    					 "x12      ", "x10      ", "x8       ", "x6       ", "x4       ", "x2       ", "1/60     ", "1/120    ", "1/250    ", 
	                    					 "1/500    ", "1/700    ", "1/1000   ", "1/1600   ", "1/2500   ", "1/5000   ", "1/7000   ", "1/10000  ", "1/30000  ", 
	                    					 "1/60000  ", "1/120000 " };
String  ShuttPALSpdMsg[28][13] ={"x512     ", "x256     ", "x128     ", "x64      ", "x32      ", "x24      ", "x16      ", "x14      ", 
	                    					 "x12      ", "x10      ", "x8       ", "x6       ", "x4       ", "x2       ", "1/50     ", "1/100    ", "1/250    ", 
	                    					 "1/500    ", "1/700    ", "1/1000   ", "1/1600   ", "1/2500   ", "1/5000   ", "1/7000   ", "1/10000  ", "1/30000  ", 
	                    					 "1/60000  ", "1/120000 " };	
String  IrisValMsg[18][8] = { "F1.6  ", "F2    ", "F2.4  ", "F2.8  ", "F3.4  ", 
															"F4    ", "F4.8  ", "F5.6  ", "F6.8  ", "F8    ",
															"F9.6  ", "F11   ", "F14   ", "F16   ", "F19   ",
															"F22   ", "F28   ", "CLOSE "	} ;	                    					 
String  IrisAutoMsg[]	= { "AUTO  "};
//{2011.02.16} 임시...루틴 정리후 삭제할것
String  ShutterSpdMsg[22][6] = {"1", "2", "4", "8", "15", "30", "60", "90", "100", "125", "180", "250",
										  "350", "500", "725", "1000", "1500", "2000", "3000", "4000", "6000", "10000" };
// =============================================================================================================
// Test OSD
String  External_Title_Msg[]  = {"  EXTERNAL SETUP  "};
String  New_Test_Msg[]  = {"[EXTERNAL SETUP]"};
String  IR_Set_Msg[]  = {"IR SET"};
String  Wiper_Set_Msg[]  = {"WIPER SET"};
String  Washer_Fluid_Msg[]  = {"WASHER FLUID"};
String  Washer_Time_Msg[]  = {"SPRAY TIME"};
String  Wiper_Count_Msg[]  = {"WIPER COUNT"};
String  Wiper_Continuous_Msg[]  = {"CONTINU.TIME"};
String  CDSMsg[] =    {"CDS :  "};
String  MOffMsg[3][7]    = {"OFF   ","OFF   ","OFF   "};
String  LowMsg[3][7]    = {"LOW   ","BASSO ","LOW   "};
String  MiddleMsg[3][7]    = {"MIDDLE","MEDIO ","MIDDLE"};
String  HighMsg[3][7]    = {"HIGH  ","ALTO  ","HIGH  "};
String  WasherTimeMsg[10][4]    = {"0.5","1  ","1.5","2  ","2.5","3  ","3.5","4  ","4.5","5  "};
String  ContinuousTimeMsg[9][10]    = {"OFF      ","15 Minute","30 Minute","1 Hour   ","2 Hour   ","3 Hour   ", "6 Hour   ", "12 Hour  ", "24 Hour  "};

String  NightFlagMsg[] =    {"N:"};
String  DayFlagMsg[] =   	{"D:"};
String  TCdsMsg[] =    		{"I:"};
String  WiperCntMsg[] = 	{"W:"};

String  WiperActiveMsg[] =    		{"WIPER ACTIVE"};
String  WiperRepeatOnMsg[] =    	{"WIPER REPEAT"};
String  WiperRepeatOn2Msg[] =    	{"WIPER REPEAT2"};
String  WiperRepeatOffMsg[] =   	{"WIPER REPEAT OFF"};
String  WiperErrorMsg[] =   		{"WIPER ERROR"};
// =============================================================================================================

String  AlarmMsg[]   = {"ALM"};
String  NTSCMsg[] = {"NTSC"};
String  PALMsg[]  = {"PAL "};

String  MainBarMsg[3][16]  = {"   MAIN MENU   ","MENU PRINCIPALE","  MENU GLOWNE  "};

String  MainDomMsg[3][20]  = {"DOME SETUP","DOME SETUP","USTAWIENIA GLOWICY"};
String  MainCamMsg[3][19]  = {"CAMERA SET","CAMERA SET","USTAWIENIA KAMERY"};
String  MainPreMsg[3][7]   = {"PRESET","PRESET","PRESET"};
String  MainScanMsg[3][10] = {"AUTO SCAN","AUTO SCAN","AUTO SCAN"};
String  MainTourMsg[3][5]  = {"TOUR","TOUR","TURA"};
String  MainPriMsg[3][21]  = {"PRIVACY","PRIVACY","STREFY PRYWATNOSCI"};
String  MainPatMsg[3][8]  	= {"PATTERN","PATTERN","TRASA"};

String  MainTitMsg[3][7]  	= {"SECTOR","AREE","SEKTOR"};
String  MainExtMsg[3][8]  	= {"EXIT","ESCI","WYJSCIE"};


//String  MainMsg8[]  = {"INSTALL DEFAULT"};
String  MainMsg9[3][8]  	= {"EXIT","ESCI","WYJSCIE"};
String  MainMsg10[3][8] 	= {"QUIT","ESCI","WYJSCIE"};
String  MainMsg2[3][18]  	= {" CAMERA SET "," CAMERA SETUP ","USTAWIENIA KAMERY"};
String  MainMsg3[3][17]  	= {"VIDEO SET","VIDEO SETUP","USTAWIENIA VIDEO"};
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//      dome set +6
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//String  CamSetMsg[3][21] = {"    DOME SET    ","   DOME SETUP   "," USTAWIENIA GLOWICY "};
String  CamIdMsg[3][21]  = {"CAMERA ID   ","NOME CAMERA ","ID KAMERY   "};
String  RecMsg[3][21]    = {"RECOVER     ","POSIZIONE DI DEFAULT","PRZYWROC       "};
String  HomeposMsg[3][21]    = {"HOME POS.","HOME POS.","HOME POS."};
String  ManMsg[3][21]    = {"MANUAL SPEED","VELOCITA' MANUALE   ","PREDKOSC RECZNA"};
String  SECMsg[]  = {"/S"};

String  FlipMsg[3][21]   = {"AUTO FLIP   ","AUTO FLIP           ","AUTO FLIP      "};
String  ZoomMsg[3][21]   = {"ZOOM SPEED  ","VELOCITA' ZOOM      ","PREDKOSC ZOOM  "};
String  AlmMMsg[3][21]   = {"ALARM       ","ALLARMI             ","ALARM          "};


String  LangMsg[3][21]   = {"LANGUAGE    ","LINGUA      ","JEZYK       "};
String  EnglishMsg[3][10]= {"ENGLISH ","ITALIANO","POLSKI "};
String  NextMsg[3][18]   = {"[NEXT PAGE]","[PROSSIMA PAGINA]","[NASTEPNA STRONA]"};
String  PrevMsg[3][20]   = {"[PREVIOUS PAGE]","[PAGINA PRECEDENTE]","[POPRZEDNIA STRONA]"};
  //+3
String  SysSetMsg[3][21] = {"  SYSTEM SETUP  ","  SYSTEM SETUP  ","  SYSTEM SETUP  "};
String  LockMsg[3][16]   = {"SYSTEM LOCK    ","BLOCCO SISTEMA ","BLOKADA SYSTEMU"};
String  PassMsg[3][13]   = {"[PASS WORD]","[PASS WORD]","[HASLO]"};
String  IdDispMsg[3][14] = {"[OSD DISPLAY]","[TITOLAZIONE]","[MENU OSD]"};
String  SysMsg[3][17]    = {"[SYSTEM STATUS]","[SYSTEM STATUS]","[STATUS SYSTEMU]"};
String  DefaultMsg[3][20]= {"[INITIALIZATION]","[INIZIALIZZAZIONE]","[INICJALIZACJA]"};
String  PreviMsg[3][23]  = {"[PREVIOUS PAGE]","[PAGINA PRECEDENTE]","[POPRZEDNIA STRONA]"};
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
String  Sys1SetMsg[3][21] = {"   SYSTEM SET   ","   SYSTEM SET   ","   SYSTEM SET   "};
String  FlipStMsg[3][13]  = {"FLIP STATUS","FLIP STATUS","FLIP STATUS"};
String  MotorTrqMsg[3][13] = {"MOTOR TORQUE","MOTOR TORQUE","MOTOR TORQUE"};
String  MotorLevL[3][7]  = {"LOW   ","LOW   ","LOW   "};
String  MotorLevM[3][9]  = {"MEDIUM","MEDIUM","MEDIUM"};
String  MotorLevH[3][9]  = {"HIGH  ","HIGH  ","HIGH  "};


String  IrBrtMsg[3][14]   = {"IR BRIGHTNESS","IR BRIGHTNESS","IR BRIGHTNESS"};
String  DNLevMsg[3][11]   = {"D/N LEVEL","D/N LEVEL","D/N LEVEL"};
String  NormalMsg[3][11]  = {"NORMAL ","NORMAL ","NORMAL "};
String  ReverseMsg[3][11] = {"REVERSE","REVERSE","REVERSE"};
String  TemperMsg[3][12]  = {"TEMPERATURE","TEMPERATURE","TEMPERATURE"};
String  CelsiMsg[3][11]   = {"CELSIUS   ","CELSIUS   ","CELSIUS   "};
String  FahreMsg[3][11]   = {"FAHRENHEIT","FAHRENHEIT","FAHRENHEIT"};
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

String  Init1Msg[3][21]  = {"  INITIALIZATION  ","  INIZIALIZZAZIONE  ","  INICJZLIZACJA  "};
String  Init2Msg[3][17]  = {"[TOUR CLEAR]","[CANCELLA TOUR]","[TURA PUSTA]"};
String  Init3Msg[3][19]  = {"[PRESET CLEAR]","[CANCELLA PRESET]","[PRESET PUSTY]"};
String  Init4Msg[3][16]  = {"[SECTOR CLEAR]","[CANCELLA AREA]","[SEKTOR PUSTY]"};
String  Init5Msg[3][25]  = {"[PRIVACY CLEAR]","[CANCELLA ZONA PRIVACY]","[STREFA PUSTA]"};
String  Init6Msg[3][20]  = {"[PATTERN CLEAR]","[CANCELLA PATTERN]","[TRASA PUSTA]"};
String  Init7Msg[3][28]  = {"[LOAD OPTIMIZED DEFAULT]","[CARICA PARAMETRI DEFAULT]","[USTAWIENIA DOMYSLNE]"};
String  Init21Msg[3][16] = {"TOUR CLEAR","CANCELLA TOUR","TURA PUSTA"};
String  Init31Msg[3][18] = {"PRESET CLEAR","CANCELLA PRESET","PRESET PUSTY"};
String  Init41Msg[3][17] = {"SECTOR CLEAR","CANCELLA AREA","SEKTOR PUSTY"};
String  Init51Msg[3][23] = {"PRIVACY CLEAR","CANCELLA ZONA PRIVACY","STREFA PUSTA"};
String  Init61Msg[3][20] = {"PATTERN CLEAR","CANCELLA PATTERN","TRASA PUSTA"};
String  Init71Msg[3][27] = {"LOAD OPTIMIZED DEFAULT","CARICA PARAMETRI DEFAULT","USTAWIENIA DOMYSLNE"};

 // + 2
String  OsdDispMsg[3][20]= {"  OSD DISPLAY  ","  TITOLAZIONE   ","  MENU OSD   "};
String  OsdIdMsg[3][13]  = {"CAMERA ID   ","NOME CAMERA ","ID KAMERY   "};
String  OsdPreMsg[3][13] = {"PRESET ID   ","NOME PRESET ","ID PRESETU  "};
String  OsdSecMsg[3][13] = {"SECTOR ID   ","NOME AREA   ","ID SEKTORA  "};
String  OsdTourMsg[3][13] ={"TOUR   ID   ","NOME TOUR   ","ID TURA     "};
String  OsdPattMsg[3][13] ={"PATT   ID   ","NOME PATT   ","ID PUSTA    "};
String  OsdScanMsg[3][13] ={"SCAN   ID   ","NOME SCAN   ","ID SCAN     "};
String  OsdCooMsg[3][13] = {"COORDINATE  ","COORDINATE  ","KOORDYNATY  "};
//+4
String  SysStsMsg[3][19] = {" SYSTEM STATUS "," SYSTEM STATUS "," STATUS SYSTEMU "};
String  SysBMsg[3][20]   = {"BAUD RATE        :","BAUD RATE        :","PREDKOSC         :"};
String  SysFMsg[3][20]   = {"FIRMWARE VER     :","FIRMWARE VER     :","WERSJA OPROG.    :"};
String  SysPMsg[3][20]   = {"PROTOCOL         :","PROTOCOL         :","PROTOKOL         :"};
String  SysUMsg[3][20]   = {"UPGRADED DATE    :","UPGRADED DATE    :","DATA AKTUALIZACJI:"};
String  SysCMsg[3][19]   = {"CAMERA MODULE    :","MODULO CAMERA    :","MODUL KAMERY     :"};
String  SysRUMsg[3][20]  = {"R/B UPGRADED DATE:","R/B UPGRADED DATE:","DATA AKTUALIZACJI:"};
String  SysColorMsg[]   = {"COLOR MODULE     :"};
String  SysThermalMsg[] = {"THERMAL MODULE   :"};
String  SysModelMsg[] = {"MODEL            :"};

//String  ProMsg[]         = {"PELCO-D, P"};
//String  ProUMsg[]        = {"Maxpro"};

String  ProMsg[]         = {"PELCO-D/P"}; //{2011.07.25}
String  ProMsg1[]        = {"VICON"};		 //{2011.07.25}
String  ProMsg2[]        = {"SAMSUNG"};	 //{2011.07.25}
String  ProMsg3[]			 = {"i3DVR-SD"};	 //{2011.07.25}
String  ProtoMsg[3][12]      = {"PROTOCOL  :", "PROTOCOL  :", "PROTOKOL  :"};	// {20
//{2011.02.09}=========================
String  CamType1Msg[]    = {"SCM2120"};	
String  CamType2Msg[]    = {"SCM3370"};	
String  TCamType1Msg[]    = {"DRS 7.5mm"};	
String  TCamType2Msg[]    = {"DRS 19mm"};	
String  TCamType3Msg[]    = {"DRS 35mm"};	

String  FastTMsg[]       = {"FAST  "}; 
String  SlowTMsg[]       = {"SLOW  "}; 
String  DssMsg[3][18]    = {"SENSE UP ","SENSE UP     ","SENSE UP        "};
String  SsnrMsg[3][18]   = {"SSNR MODE","MODALITA'SSNR","TRYB SSNR       "};// {2011.01.18}
String	ColorMsg[3][18]	 = {"COLOR    ","COLORE       ","TRYB COLOR      "};// {2011.01.18}
String	Dis1Msg[3][18]   = {"DIS MODE ","MODALITA'DIS ","TRYB DIS        "};// {2011.01.18}

String  SsnrFMsg[]       = {"SSNR : OFF   "};// {2011.01.18}
String  SsnrLMsg[]       = {"SSNR : LOW   "};// {2011.01.18}
String  SsnrMMsg[]       = {"SSNR : MIDDLE"};// {2011.01.18}
String  SsnrHMsg[]       = {"SSNR : HIGH  "};// {2011.01.18}
String  ColorTMsg[]      = {"COLOR:"};// {2011.01.18}
String  DisOnMsg[]       = {"DIS ON"};// {2011.01.18}
String  DisOffMsg[]      = {"DIS OFF"};// {2011.01.18}

String  AgcMsg[3][18]	   = {"AGC MODE ","MODALITA'AGC ","TRYB AGC         "};	// {2010.03.02}
String  AgcFMsg[3][7]    = {"OFF   ","OFF   ","OFF   "};	 // {2010.03.02}
String  AgcLMsg[3][7]    = {"LOW   ","BASSO ","LOW   "};	 // {2010.03.02}
String  AgcMMsg[3][7]    = {"MIDDLE","MEDIO ","MIDDLE"};	 // {2010.03.02}
String  AgcHMsg[3][7]    = {"HIGH  ","ALTO  ","HIGH  "};	 // {2010.03.02}

String  RangeWMsg[3][7]    = {"WIDE  ","WIDE  ","WIDE  "};
String  RangeNMsg[3][7]    = {"NARROW","NARROW","NARROW"};

String	BlcShortModeMsg[3][6] = {"[WDR]", "[BLC]", "[HLC]"};	// {2010.03.02}
String	BlcSubModeMsg[3][8] = {"[SSDR]", "[BLC]  ", "[HLC]  "};	// {2010.12.20}
String	BlcSetMsg[3][18]	= {"    BLC SET     ","IMPOSTA BLC","USTAWIENIA BLC  "};	// {2010.03.02}

String	ModeMsg[3][16] 	= {"BLC MODE       ","MODALITA' BLC ","BLC TRYB       "};		// MODE// {2010.03.02}
String	LimitMsg[3][16]	= {"LIMIT SET      ","IMPOSTA LIMIT ","LIMIT SET      "};		// LIMIT// {2010.03.02}
String	RangeMsg[3][16]	= {"RANGE SET      ","IMPOSTA RANGE ","RANGE SET      "};		// RANGE// {2010.12.20}

String	LevelMsg[3][16]	= {"LEVEL SET      ","IMPOSTA LIVELLO","LEVEL SET      "};		// LEVEL// {2010.03.02}
String	AreaMsg[3][16]	= {"AREA SET       ","IMPOSTA AREA   ","AREA SET       "};		// AREA// {2010.03.02}
String	MaskMsg[3][16]	= {"MASK COLOR     ","MASCHERA COLORE","MASK COLOR     "};		// MASK COLOR// {2010.03.02}

String	BlcModeMsg[3][4] 	=   {"WDR", "BLC", "HLC"};// {2010.03.02}
String	BlcMode1Msg[3][6] 	=   {"SSDR", "BLC ", "HLC "};// {2010.03.02}
String	LeftTopMsg[3][17]		=   {"LEFT/TOP        ","IN ALTO/SINISTRA","LEFT/TOP    "};// {2010.03.02}
String	RightBottomMsg[3][17]	= {"RIGHT/BOTTOM    ","IN BASSO/DESTRA ","RIGHT/BOTTOM"};// {2010.03.02

String  HlcOnMsg[3][20]   = {"HLC ON  ","HLC ON  ","HLC ZAL."};
String  HlcOffMsg[3][20]  = {"HLC OFF ","HLC OFF ","HLC WYL."};

String  SsdrOnMsg[3][20]   = {"SSDR ON ","SSDR ON ","SSDR ZAL."}; //{2011.01.13}
String  SsdrOffMsg[3][20]  = {"SSDR OFF","SSDR OFF","SSDR WYL."}; //{2011.01.13}

String  BlcModeSMsg[]    = {"BLC MODE"};// {2011.01.13} 
String  WdrModeSMsg[]    = {"WDR MODE"};	// {2011.01.13} 
String  HlcModeSMsg[]    = {"HLC MODE"};// {2011.01.13} 
String  SsdrModeSMsg[]   = {"SSDR MODE"};	// {2011.01.13} 

String  DSSValMsg[15][5] = { "OFF ", "X2  ", "X4  ", "X6  ", "X8  ", "X10 ", "X12 ", "X14 ", 
	                          "X16 ", "X24 ", "X32 ", "X64 ", "X128", "X256", "X512" };


//=====================================
String  NAMsg[]          = {"N/A"};
String  PromMsg[]         = {"Eprom Testing"};

String  SlowMsg[3][9]    = {"SLOW  ","LENTO   ","WOLNO  "};
String  FastMsg[3][9]    = {"FAST  ","VELOCE  ","SZYBKO "};
String  MediMsg[3][9]    = {"MEDIUM","MEDIO   ","SREDNIO"};
String  TourNMsg[3][5]   = {"TOUR","TOUR","TURA"};


String  SaveExitMsg[3][16] = {"SAVE AND EXIT","SALVA ED ESCI","ZAPISZ I WYJDZ"};
String  SaveMsg[3][7] 		= {"SAVE","SALVA","ZAPISZ"};
String  ExitMsg[3][8] 		= {"EXIT","ESCI","WYJSCIE"};

//String  IdPosMsg[]  		= {"ID POS     :"};
String  PattNMsg[]   		= {"PATT"};
String  OrCode[8]    		=  {0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80};

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
// privacy zone set msg
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
String  PMainMsg[3][20] 		= {"PRIVACY SET","IMPOSTA PRIVACY","STREFY PRYWATNOSCI"};
//+ 6
String  PriNumMsg[3][15]		= {"PRIVACY NUMBER","NUMERO PRIVACY","NUMER STREFY  "};
String  PriStrMsg[3][15]		= {"DISPLAY       ","MOSTRA        ","WYSWIETL      "};
String  PriActMsg[3][15]		= {"ACTION        ","AZIONE        ","USTAWIANIE    "};
String  PriTLMsg[3][9]  		= {"ADJUST","MODIFICA","DOPASUJ"};
String  PriMoveMsg[3][9]		= {"MOVE  ","SPOSTA  ","PRZESUN"};
String  FocusAdjMsg[3][25] 	= {"FOCUS ADJUSTING....","MODIFICA FUOCO....","USTAWIANIE OSTROSCI..."};
//+1
String  PassWordIn1Msg[3][20] = {"ENTER PASSWORD","INSERISCI PASSWORD","PODAJ HASLO"};
String  PassWordIn2Msg[3][26] = {"BY ENTERING PRESET CODE !","TRAMITE NUMERO PRESET !","ZA POMOCA KODU PRESETU !"};
String  PassWordIn3Msg[3][15] = {"PASSWORD  ***","PASSWORD  ***","HASLO     ***"};
String  PassWordIn4Msg[3][15] = {"CONFIRM   ***","CONFERMA  ***","POTWIERDZ ***"};
String  PassWordIn5Msg[] 		= {"***"};
String  PassWordIn6Msg[3][16] = {"CONFIRMED !","CONFERMATO !","POTWIERDZONO !"};
String  PassWordIn7Msg[3][16] = {"NOT CORRECT !","ERRATO !","NIEPOPRAWNE !"};
String  PassWordIn8Msg[3][17] = {"CANCELED ...","CANCELLATO ...","ANULOWANO..."};
String  DefaultInitMsg[3][27] = {"LOAD OPTIMIZED DEFAULTS","CARICA PARAMETRI DEFAULT","USTAWJENIA DOMYSLNE"};
String  AllEraseMsg[3][27]    = {"ALL DATA INITIALIZING","DATI INIZIALIZZATI","INICJALIZACJA DANYCH"};
String  SureMsg[3][15]        = {"ARE YOU SURE","SEI SICURO","JESTES PEWIEN"};
String  AllMsg[3][30]         = {"ALL PRESET CLEAR","CANCELLATI TUTTI I PRESET","WSZYSTKIE PRESETY WYCZYSZCZONE"};
String  YesMsg[3][4]          = {"YES","SI ","TAK"};
String  NoMsg[3][4]           = {"NO ","NO ","NIE"};
String  NonData[3][24] 			= {"NO DATA AVAILABLE","NESSUN DATO DISPONIBILE","BRAK DANYCH"};
String  NonDataClr[] 			= {"                                "};
String  SClrMsg[] 				= {"      "};
String  LedOnMsg[] 				= {"IR LED On "};
String  LedOffMsg[] 			= {"IR LED Off"};
String  TiltInitMsg[] 			= {"TILT INITIALIZING"};
String  WiperStateMsg[] 			= {"CHECK THE WIPER STATE!"};


String  MainMsg[]  = {"   MAIN MENU   "};
String  MainCameraMsg[]  = {"CAMERA SETUP"};
//String  ColorCamMsg[]  =   {"DAYLIGHT CAMERA SET"};//"CAM(DAY) SET"
String  ColorCamMsg[]  =   {"CAM(DAY) SETUP"};//"CAM(DAY) SET"
//String  ThermalCamMsg[]  = {"THERMAL CAMERA SET"};
String  ThermalCamMsg[]  = {"CAM(THERM) SET"};
String  CamSetMsg[3][21] = {"  CAMERA SETUP  ","  CAMERA SETUP  "," USTAWIENIA GLOWICY "};
String  ConfigMsg[]  = {" CONFIGURATION "};
String  WiperSetMsg[] = {"  WIPER SETUP  "};

String  ZoomStatusMsg[]  =  {"[ZOOM   SETUP]"};
String  AlarmStatusMsg[]  = {"[ALARM  SETUP]"};
String  HeaterStatusMsg[] = {"[HEATER SETUP]"};
String  SystemStatusMsg[] = {"[SYSTEM SETUP]"};
String  OsdStatusMsg[]  =   {"[OSD SETUP    ]"};
String  OsdHeaterMsg[]  =    {"INNER HEATER"};
String  OsdGHeaterMsg[]  =   {"GLASS HEATER"};
String  OsdGTempMsg[]  =     {"TEMPERATURE "};
String  OsdCamIDMsg[]  =     {"CAM ID      "};
String  OsdWiperMsg[]  =   {"WIPER"};
String  CheckLockMsg[]  =    {"Please Check SYSTEM LOCK Status!"};


String  TZoomModeMsg[]  =    {"THERMAL DIGITAL ZOOM"};
String  CZoomModeMsg[]  =    {"COLOR OPTICAL ZOOM  "};
String  CdZoomModeMsg[]  =   {"COLOR DIGITAL ZOOM  "};
String  ZoomModeMsg[]  =     {"ZOOM MODE   "};
String  ZoomSpeedMsg[]  =    {"ZOOM SPEED  "};
String  ZoomBothMsg[]  =    {"BOTH"};
String  ZoomSyncMsg[]  =    {"SYNC"};
String  ZoomNAMsg[]  =      {"N/A "};
String  ZoomSetMsg[]  =      {"   ZOOM SETUP   "};

String  HeaterSetMsg[]  =      {"  HEATER SETUP  "};
String  InnerHeaterMsg[]  =    {"INNER HEATER"};
String  GlassHeaterMsg[]  =    {"GLASS HEATER"};
String  InnerHeaterOnMsg[]  =  {"- HEATER ON TEMP."};
String  InnerHeaterOffMsg[]  = {"- HEATER OFF TEMP."};
String  HeaterOnMsg[]     =    {"ON      "};
String  HeaterOffMsg[]     =   {"OFF     "};
String  HeaterAutoMsg[]  =     {"AUTO    "};
String  HeaterIntervalMsg[]  = {"INTERVAL"};
String  InterTimeMsg[]  =      {"- INTERVAL TIME"};
String  NotAvailableMsg[]  =      {"---"};
String  MinuteMsg[]  =      {"Minute"};

String  AlarmSetMsg[]  =      {"  ALARM SETUP  "};
String  AlmInMsg[3][18]      = {"ALARM INPUT","INGRESSO ALLARME","WEJSCIE ALARMOWE "};
String  AuxActMsg[3][18]     = {"AUX ACT    ","AZIONE AUX      ","CZYNNOSC AUX     "};
String  MainAlmMsg[3][8]  	= {"ALARM","ALLARMI","ALARM"};
String  NOMsg[]              = {"NORMAL OPEN "};
String  NCMsg[]              = {"NORMAL CLOSE"};
String  inHeaterOnMsg[]  = {"INNER HEATER ON "};
String  inHeaterOffMsg[] = {"INNER HEATER OFF"};
String  GHeaterOnMsg[]  = {"GLASS HEATER ON "};
String  GHeaterOffMsg[] = {"GLASS HEATER OFF"};
String  FanSetMsg[]  = {"FAN SET"};
String  FanOnMsg[]  = {"FAN ON "};
String  FanOffMsg[] = {"FAN OFF"};
String  WiperSetOnMsg[]  = {"WIPER CONTINUOUS ON "};
String  WiperSetOffMsg[] = {"WIPER CONTINUOUS OFF"};

//String  AlarmDetectMsg[] = {"ALARM DETECT!!!!!!"};
//String  ColorModuleMsg[] = {"COLOR MODULE SET"};
String  ColorModuleMsg[] = {"   CAM(DAY) SET   "};


String  EnMsg[3][11]   	 = {"ENABLE ","ABILITA   ","ZAL."};
String  DisMsg[3][11]  	 = {"DISABLE","DISABILITA","WYL."};

String  CheckHeaterMsg[]  =    {"Use Only 'INTERVAL' Mode!"};
String  CheckHeater1Msg[]  =    {"Use Only 'AUTO' Mode!"};

//String  ThermalMainCamMsg[]  = {"THERMAL MODULE SET"};"CAM(THERM) SET"
String  ThermalMainCamMsg[]  = {"CAM(THERM) SET"};
String  InverseModeMsg[] 		=  {"INVERSE MODE"};
String  TAGCModeMsg[] =   		 {"AGC MODE"};
String  TAGCGainBiasMsg[] =    {"AGC CONTRAST"};
String  TAGCLevelBiasMsg[] =   {"AGC BRIGHTNESS"};
String  TAGCLimitMsg[] =       {"AGC LIMIT LEVEL"};
String  AGCstatusMsg[4][11] =   {"FREEZE  ","AUTO    ","IDE LOW ","IDE HIGH"};
String  TAGCLimitValMsg[5][11] = {"OFF","1X ","2X ","3X ","4X "};
String  SystemStartMsg[] = {"SYSTEM START"};
String  TestStartMsg[] = {"WIPER TEST"};
String  EpromCheckMsg[] =  {"DATA LODAING"};

String  FocusModeMsg[] =  {"FOCUS MODE"};
String  AutoFocusMsg[] =  			  {"AUTO FOCUS "};
String  InterValOnePushMsg[] =    {"INTERVAL AF"};
String  OnePushMsg[] =    				{"ONE PUSH AF"};
String  TempMsg[] =    {"TEMP:  "};
String  TempBlankMsg[] =    {"---"};

String  ntpalsetMsg[] =    		{"VIDEO MODE"};
//String  ThermalbaudMsg[] =    {"Thermal Baudrate"};
String  ThermalbaudMsg[] =    {"THERMAL BAUDRATE"};//{2014.06.19}Q.A ISSU
String  ColorbaudMsg[] =      {"COLOR BAUDRATE"};//{2014.06.19}Q.A ISSU
String  BaudrateMsg[4][11] = {"9600 ","19200","38400","57600"};
String  NTPALMsg[2][11] = {"NTSC","PAL "};
String  ThermalbaudsetMsg[] =    {"THERMAL BAUDSET"};
String  LoadingMsg[] =	{"LOADING PLEASE WAIT..."};
String  SavingMsg[] =		{"SAVING PLEASE WAIT....."};
String  AlarmDetectMsg[] =    {"ALM"};
String  Heater1OnMsg[] =    {"HT"};
String  Heater2OnMsg[] =    {"GHT"};
String  WiperOnMsg[] =    {"WP "};
String  HeatOffMsg[] =    {"   "};

String  ColdStartMsg[] =       {"COLD START"};
String  ColdStart1Msg[] =    {"SYSTEM HEATING"};
String  LensSetMsg[] =    		{"SELECT LENS"};
String  LensMsg[3][11] = {"7.5mm","19mm ","35mm "};
//String  CheckZoomMsg[]  =    {"Please Check SYSTEM LOCK Status!"};
//String  CheckZoomMsg[]  =      {"Color/Thermal Zoom Must 'ENABLE'"};
String  CheckZoomMsg[]  =      {"Color Zoom Must 'ENABLE'"};
String  CheckSyncMsg[]  =      {"Please Set Zoom Mode 'BOTH'     "};
String  MirrorOnMsg[]   = {"MIRROR ON "};
String  MirrorOffMsg[]  = {"MIRROR OFF"};
String  PicFlipOnMsg[]   = {"PIC FLIP ON "};
String  PicFlipOffMsg[]  = {"PIC FLIP OFF"};
String  CZoomOnMsg[]   = {"COLOR OPT. ZOOM ON "};
String  CZoomOffMsg[]  = {"COLOR OPT. ZOOM OFF"};
String  CdZoomOnMsg[]   = {"COLOR D. ZOOM ON "};
String  CdZoomOffMsg[]  = {"COLOR D. ZOOM OFF"};
String  TZoomOnMsg[]   = {"THERMAL D. ZOOM ON "};
String  TZoomOffMsg[]  = {"THERMAL D. ZOOM OFF"};
String  InverseOnMsg[]   = {"THER. INVERSE ON "};
String  InverseOffMsg[]  = {"THER. INVERSE OFF"};
String  DRSLogoDisplayMsg[]  = {"DRS LOGO DISPLAY"};
String  AGCFreezeMsg[]  = {"DRS LOGO DISPLAY"};
//String  IDElowInfoMsg[] ={"Please Set Zoom Mode 'BOTH'     "};
String  IDElowInfoMsg[]  = {"IMAGE DIGITAL ENHANCEMENT IS LOW "};
String  IDEHighInfoMsg[]  = {"IMAGE DIGITAL ENHANCEMENT IS HIGH"};
String  IDEModeMsg[]  = {"IDE MODE SET"};
