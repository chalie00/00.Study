/*
AT24C256 memory define
*/


#define  NTPALMark     2
#define	 PInitOpt		   3
#define  PCamType      4
#define	 PTestUse		   5
#define  PromMark      10
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//       dome setup variable
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#define  PNameBuf      PromMark     + 1
#define  PZoomSpd      PNameBuf     + 16
#define  PLockEn       PZoomSpd     + 1
#define  PPassWord     PLockEn      + 1
#define  PIdDisp       PPassWord    + 1
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//       camera setup variable
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#define  PFlkEn        PIdDisp      + 1
#define  PMirrorDisp   PFlkEn       + 1
#define  PAperVal      PMirrorDisp  + 1
#define  PDZoom        PAperVal     + 1
#define  PPicFlip      PDZoom      + 1
#define  PWdrBlcEn     PPicFlip     + 1
#define  PDNMode       PWdrBlcEn    + 1
#define  PDSSMode      PDNMode      + 1



//       alarm set variable
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#define  PAlmInput     PDSSMode      + 1
#define  PAlmAct       PAlmInput     + 1
#define  PAlmAuxAct    PAlmAct     	 + 1
//       others......
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#define  PWDRMode      PAlmAuxAct   + 1
#define  PFRZMode      PWDRMode     + 1
#define  PVibFlag      PFRZMode     + 1
#define  PRecover      PVibFlag     + 1
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

#define  PICanTek		   PRecover     + 1
#define	 PZoomSpdVal	 PICanTek     + 1
#define  PFocusSpdVal  PZoomSpdVal  + 1
#define  PWbRGain		   PFocusSpdVal + 1
#define  PWbBGain		   PWbRGain     + 1
#define  PIrisPeakVal  PWbBGain     + 1
#define  PFlipVal  	   PIrisPeakVal + 1
#define  PTempDispVal  PFlipVal 	  + 1
#define  PIrBrtVal 	 	 PTempDispVal + 1
#define  PDNLevVal 		 PIrBrtVal 	  + 1
#define  PMotorVal 		 PDNLevVal    + 1

#define  PIdDispN      PMotorVal     + 1
#define  PFocusM	     PIdDispN       + 1
#define  PRotateMode   PFocusM        + 1
#define  PSSDRrange     PRotateMode    + 1 
#define  PSSDRLevel     PSSDRrange     + 1 
#define  PTimeLevel     PSSDRLevel     + 1 
#define  PSsnrEn        PTimeLevel     + 1 
#define  PColorVal      PSsnrEn        + 1 
#define  PDisEn         PColorVal      + 1 
#define  PBlcEn			    PDisEn  			 + 1	// 0x2B
#define  PBlcMode				PBlcEn				 + 1	// 0x2B
#define	 PWdrLimit			PBlcMode			 + 1
#define	 PWdrLevel			PWdrLimit			 + 1
#define	 PBlcLevel			PWdrLevel			 + 1
#define	 PBlcAreaLeft		PBlcLevel			 + 1
#define	 PBlcAreaRight	PBlcAreaLeft 	 + 1
#define	 PBlcAreaTop		PBlcAreaRight  + 1
#define	 PBlcAreaBottom PBlcAreaTop		 + 1
#define	 PHlcLevel			PBlcAreaBottom + 1
#define	 PHlcMaskColor	PHlcLevel			 + 1	// 0x34
#define	 PAgcVal		  	PHlcMaskColor	 + 1
#define	 PFreezeMode    PAgcVal		  	 + 1
#define  PShutterMode   PFreezeMode    + 1
#define  PShutterSpd    PShutterMode   + 1
#define  PIrisModeSet   PShutterSpd    + 1
#define  PIrisVal       PIrisModeSet   + 1
#define  PDNLevelSet    PIrisVal       + 1
#define  PDRSInverseMode PDNLevelSet   + 1
#define  PAGCMode    PDRSInverseMode   + 1
#define  PAGCGainBias      PAGCMode    + 1
#define  PAGCLevelBias  PAGCGainBias   + 1
#define  PAGCLimitLevel PAGCLevelBias  + 1
#define  PCZoomSet      PAGCLimitLevel + 1
#define  PCdZoomSet      PCZoomSet   	 + 1
#define  PTZoomSet       PCdZoomSet    + 1
#define  PZoomModeVal		 PTZoomSet     + 1
#define  PZoomModeSet    PZoomModeVal	 + 1
#define  PFocusModeVal   PZoomModeSet  + 1
#define  PAlarmMode			 PFocusModeVal + 1
#define  PAlarmInMode		 PAlarmMode		 + 1
#define  PAuxMode				 PAlarmInMode	 + 1
#define  PInHeaterMode	 PAuxMode			 + 1
#define  PInHeaterOnVal  PInHeaterMode + 1
#define  PInHeaterInter  PInHeaterOnVal+ 1
#define  PGHeaterMode    PInHeaterInter+ 1
#define  PGHeaterOnVal   PGHeaterMode	 + 1
#define  PGHeaterOffVal  PGHeaterOnVal + 1
#define  PGHeaterInter   PGHeaterOffVal+ 1
#define  PInverseMode    PGHeaterInter + 1
#define  PInHeaterOffVal PInverseMode  + 1
#define  PWBMode       PInHeaterOffVal + 1
#define  PTherUart 			 PWBMode  		 + 1
#define  PCamUart				 PTherUart 		 + 1
#define  PThermalBaudset PCamUart			 + 1
#define  PLensVal				 PThermalBaudset + 1
#define  PLogoModeVal		 PLensVal	 		 + 1
#define  PIDEModeVal  	 PLogoModeVal	 + 1

#define  PWasherTime  	 PIDEModeVal	 + 1
#define  PWiperCount  	 PWasherTime	 + 1
#define  PWiperContinuousTime  	 PWiperCount	 + 1

//32934
//======================================================================
