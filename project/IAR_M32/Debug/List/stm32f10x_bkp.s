///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    25/Jul/2022  17:14:45 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\TTT\Desktop\zz.STDFW\00.Study\Libraries\STM32F /
//                    10x_StdPeriph_Driver\src\stm32f10x_bkp.c                /
//    Command line =  C:\Users\TTT\Desktop\zz.STDFW\00.Study\Libraries\STM32F /
//                    10x_StdPeriph_Driver\src\stm32f10x_bkp.c -D             /
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
//                    Debug\List\stm32f10x_bkp.s                              /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm32f10x_bkp

        #define SHT_PROGBITS 0x1

        EXTERN RCC_BackupResetCmd
        EXTERN assert_failed

        PUBLIC BKP_ClearFlag
        PUBLIC BKP_ClearITPendingBit
        PUBLIC BKP_DeInit
        PUBLIC BKP_GetFlagStatus
        PUBLIC BKP_GetITStatus
        PUBLIC BKP_ITConfig
        PUBLIC BKP_RTCOutputConfig
        PUBLIC BKP_ReadBackupRegister
        PUBLIC BKP_SetRTCCalibrationValue
        PUBLIC BKP_TamperPinCmd
        PUBLIC BKP_TamperPinLevelConfig
        PUBLIC BKP_WriteBackupRegister


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
BKP_DeInit:
        PUSH     {R7,LR}
        MOVS     R0,#+1
        BL       RCC_BackupResetCmd
        MOVS     R0,#+0
        BL       RCC_BackupResetCmd
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
BKP_TamperPinLevelConfig:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+0
        BEQ.N    ??BKP_TamperPinLevelConfig_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+1
        BEQ.N    ??BKP_TamperPinLevelConfig_0
        MOVS     R1,#+136
        LDR.W    R0,??DataTable10
        BL       assert_failed
??BKP_TamperPinLevelConfig_0:
        LDR.W    R0,??DataTable10_1  ;; 0x420d8604
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
BKP_TamperPinCmd:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??BKP_TamperPinCmd_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??BKP_TamperPinCmd_0
        MOVS     R1,#+149
        LDR.W    R0,??DataTable10
        BL       assert_failed
??BKP_TamperPinCmd_0:
        LDR.W    R0,??DataTable10_2  ;; 0x420d8600
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
BKP_ITConfig:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??BKP_ITConfig_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??BKP_ITConfig_0
        MOVS     R1,#+162
        LDR.N    R0,??DataTable10
        BL       assert_failed
??BKP_ITConfig_0:
        LDR.N    R0,??DataTable10_3  ;; 0x420d8688
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
BKP_RTCOutputConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+0
        BEQ.N    ??BKP_RTCOutputConfig_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+128
        BEQ.N    ??BKP_RTCOutputConfig_0
        MOV      R0,#+256
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,R0
        BEQ.N    ??BKP_RTCOutputConfig_0
        MOV      R0,#+768
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,R0
        BEQ.N    ??BKP_RTCOutputConfig_0
        MOVS     R1,#+183
        LDR.N    R0,??DataTable10
        BL       assert_failed
??BKP_RTCOutputConfig_0:
        LDR.N    R0,??DataTable10_4  ;; 0x40006c2c
        LDRH     R0,[R0, #+0]
        MOVS     R5,R0
        MOVW     R0,#+64639
        ANDS     R5,R0,R5
        ORRS     R5,R4,R5
        LDR.N    R0,??DataTable10_4  ;; 0x40006c2c
        STRH     R5,[R0, #+0]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
BKP_SetRTCCalibrationValue:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+128
        BCC.N    ??BKP_SetRTCCalibrationValue_0
        MOVS     R1,#+204
        LDR.N    R0,??DataTable10
        BL       assert_failed
??BKP_SetRTCCalibrationValue_0:
        LDR.N    R0,??DataTable10_4  ;; 0x40006c2c
        LDRH     R0,[R0, #+0]
        MOVS     R5,R0
        MOVW     R0,#+65408
        ANDS     R5,R0,R5
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ORRS     R5,R4,R5
        LDR.N    R0,??DataTable10_4  ;; 0x40006c2c
        STRH     R5,[R0, #+0]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
BKP_WriteBackupRegister:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+4
        BEQ.W    ??BKP_WriteBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+8
        BEQ.N    ??BKP_WriteBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+12
        BEQ.N    ??BKP_WriteBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+16
        BEQ.N    ??BKP_WriteBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+20
        BEQ.N    ??BKP_WriteBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+24
        BEQ.N    ??BKP_WriteBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+28
        BEQ.N    ??BKP_WriteBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+32
        BEQ.N    ??BKP_WriteBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+36
        BEQ.N    ??BKP_WriteBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+40
        BEQ.N    ??BKP_WriteBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+64
        BEQ.N    ??BKP_WriteBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+68
        BEQ.N    ??BKP_WriteBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+72
        BEQ.N    ??BKP_WriteBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+76
        BEQ.N    ??BKP_WriteBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+80
        BEQ.N    ??BKP_WriteBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+84
        BEQ.N    ??BKP_WriteBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+88
        BEQ.N    ??BKP_WriteBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+92
        BEQ.N    ??BKP_WriteBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+96
        BEQ.N    ??BKP_WriteBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+100
        BEQ.N    ??BKP_WriteBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+104
        BEQ.N    ??BKP_WriteBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+108
        BEQ.N    ??BKP_WriteBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+112
        BEQ.N    ??BKP_WriteBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+116
        BEQ.N    ??BKP_WriteBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+120
        BEQ.N    ??BKP_WriteBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+124
        BEQ.N    ??BKP_WriteBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+128
        BEQ.N    ??BKP_WriteBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+132
        BEQ.N    ??BKP_WriteBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+136
        BEQ.N    ??BKP_WriteBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+140
        BEQ.N    ??BKP_WriteBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+144
        BEQ.N    ??BKP_WriteBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+148
        BEQ.N    ??BKP_WriteBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+152
        BEQ.N    ??BKP_WriteBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+156
        BEQ.N    ??BKP_WriteBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+160
        BEQ.N    ??BKP_WriteBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+164
        BEQ.N    ??BKP_WriteBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+168
        BEQ.N    ??BKP_WriteBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+172
        BEQ.N    ??BKP_WriteBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+176
        BEQ.N    ??BKP_WriteBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+180
        BEQ.N    ??BKP_WriteBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+184
        BEQ.N    ??BKP_WriteBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+188
        BEQ.N    ??BKP_WriteBackupRegister_0
        MOVS     R1,#+226
        LDR.N    R0,??DataTable10
        BL       assert_failed
??BKP_WriteBackupRegister_0:
        LDR.N    R0,??DataTable10_5  ;; 0x40006c00
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        ADDS     R0,R4,R0
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        STR      R5,[R0, #+0]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
BKP_ReadBackupRegister:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+4
        BEQ.W    ??BKP_ReadBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+8
        BEQ.N    ??BKP_ReadBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+12
        BEQ.N    ??BKP_ReadBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+16
        BEQ.N    ??BKP_ReadBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+20
        BEQ.N    ??BKP_ReadBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+24
        BEQ.N    ??BKP_ReadBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+28
        BEQ.N    ??BKP_ReadBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+32
        BEQ.N    ??BKP_ReadBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+36
        BEQ.N    ??BKP_ReadBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+40
        BEQ.N    ??BKP_ReadBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+64
        BEQ.N    ??BKP_ReadBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+68
        BEQ.N    ??BKP_ReadBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+72
        BEQ.N    ??BKP_ReadBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+76
        BEQ.N    ??BKP_ReadBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+80
        BEQ.N    ??BKP_ReadBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+84
        BEQ.N    ??BKP_ReadBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+88
        BEQ.N    ??BKP_ReadBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+92
        BEQ.N    ??BKP_ReadBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+96
        BEQ.N    ??BKP_ReadBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+100
        BEQ.N    ??BKP_ReadBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+104
        BEQ.N    ??BKP_ReadBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+108
        BEQ.N    ??BKP_ReadBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+112
        BEQ.N    ??BKP_ReadBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+116
        BEQ.N    ??BKP_ReadBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+120
        BEQ.N    ??BKP_ReadBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+124
        BEQ.N    ??BKP_ReadBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+128
        BEQ.N    ??BKP_ReadBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+132
        BEQ.N    ??BKP_ReadBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+136
        BEQ.N    ??BKP_ReadBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+140
        BEQ.N    ??BKP_ReadBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+144
        BEQ.N    ??BKP_ReadBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+148
        BEQ.N    ??BKP_ReadBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+152
        BEQ.N    ??BKP_ReadBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+156
        BEQ.N    ??BKP_ReadBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+160
        BEQ.N    ??BKP_ReadBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+164
        BEQ.N    ??BKP_ReadBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+168
        BEQ.N    ??BKP_ReadBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+172
        BEQ.N    ??BKP_ReadBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+176
        BEQ.N    ??BKP_ReadBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+180
        BEQ.N    ??BKP_ReadBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+184
        BEQ.N    ??BKP_ReadBackupRegister_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+188
        BEQ.N    ??BKP_ReadBackupRegister_0
        MOVS     R1,#+245
        LDR.N    R0,??DataTable10
        BL       assert_failed
??BKP_ReadBackupRegister_0:
        LDR.N    R0,??DataTable10_5  ;; 0x40006c00
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        ADDS     R0,R4,R0
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
        LDRH     R0,[R0, #+0]
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
BKP_GetFlagStatus:
        LDR.N    R0,??DataTable10_6  ;; 0x420d86a0
        LDR      R0,[R0, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
BKP_ClearFlag:
        LDR.N    R0,??DataTable10_7  ;; 0x40006c34
        LDRH     R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.N    R1,??DataTable10_7  ;; 0x40006c34
        STRH     R0,[R1, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
BKP_GetITStatus:
        LDR.N    R0,??DataTable10_8  ;; 0x420d86a4
        LDR      R0,[R0, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
BKP_ClearITPendingBit:
        LDR.N    R0,??DataTable10_7  ;; 0x40006c34
        LDRH     R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable10_7  ;; 0x40006c34
        STRH     R0,[R1, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10:
        DC32     `?<Constant "C:\\\\Users\\\\TTT\\\\Desktop\\\\...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_1:
        DC32     0x420d8604

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_2:
        DC32     0x420d8600

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_3:
        DC32     0x420d8688

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_4:
        DC32     0x40006c2c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_5:
        DC32     0x40006c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_6:
        DC32     0x420d86a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_7:
        DC32     0x40006c34

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable10_8:
        DC32     0x420d86a4

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "C:\\\\Users\\\\TTT\\\\Desktop\\\\...">`:
        DATA
        DC8 43H, 3AH, 5CH, 55H, 73H, 65H, 72H, 73H
        DC8 5CH, 54H, 54H, 54H, 5CH, 44H, 65H, 73H
        DC8 6BH, 74H, 6FH, 70H, 5CH, 7AH, 7AH, 2EH
        DC8 53H, 54H, 44H, 46H, 57H, 5CH, 30H, 30H
        DC8 2EH, 53H, 74H, 75H, 64H, 79H, 5CH, 4CH
        DC8 69H, 62H, 72H, 61H, 72H, 69H, 65H, 73H
        DC8 5CH, 53H, 54H, 4DH, 33H, 32H, 46H, 31H
        DC8 30H, 78H, 5FH, 53H, 74H, 64H, 50H, 65H
        DC8 72H, 69H, 70H, 68H, 5FH, 44H, 72H, 69H
        DC8 76H, 65H, 72H, 5CH, 73H, 72H, 63H, 5CH
        DC8 73H, 74H, 6DH, 33H, 32H, 66H, 31H, 30H
        DC8 78H, 5FH, 62H, 6BH, 70H, 2EH, 63H, 0

        END
// 
//  96 bytes in section .rodata
// 890 bytes in section .text
// 
// 890 bytes of CODE  memory
//  96 bytes of CONST memory
//
//Errors: none
//Warnings: none
