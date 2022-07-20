///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    20/Jul/2022  18:34:55 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\TTT\Desktop\zz.STDFW\00.Study\Libraries\STM32F /
//                    10x_StdPeriph_Driver\src\stm32f10x_sdio.c               /
//    Command line =  C:\Users\TTT\Desktop\zz.STDFW\00.Study\Libraries\STM32F /
//                    10x_StdPeriph_Driver\src\stm32f10x_sdio.c -D            /
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
//                    Debug\List\stm32f10x_sdio.s                             /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm32f10x_sdio

        #define SHT_PROGBITS 0x1

        EXTERN assert_failed

        PUBLIC SDIO_CEATAITCmd
        PUBLIC SDIO_ClearFlag
        PUBLIC SDIO_ClearITPendingBit
        PUBLIC SDIO_ClockCmd
        PUBLIC SDIO_CmdStructInit
        PUBLIC SDIO_CommandCompletionCmd
        PUBLIC SDIO_DMACmd
        PUBLIC SDIO_DataConfig
        PUBLIC SDIO_DataStructInit
        PUBLIC SDIO_DeInit
        PUBLIC SDIO_GetCommandResponse
        PUBLIC SDIO_GetDataCounter
        PUBLIC SDIO_GetFIFOCount
        PUBLIC SDIO_GetFlagStatus
        PUBLIC SDIO_GetITStatus
        PUBLIC SDIO_GetPowerState
        PUBLIC SDIO_GetResponse
        PUBLIC SDIO_ITConfig
        PUBLIC SDIO_Init
        PUBLIC SDIO_ReadData
        PUBLIC SDIO_SendCEATACmd
        PUBLIC SDIO_SendCommand
        PUBLIC SDIO_SendSDIOSuspendCmd
        PUBLIC SDIO_SetPowerState
        PUBLIC SDIO_SetSDIOOperation
        PUBLIC SDIO_SetSDIOReadWaitMode
        PUBLIC SDIO_StartSDIOReadWait
        PUBLIC SDIO_StopSDIOReadWait
        PUBLIC SDIO_StructInit
        PUBLIC SDIO_WriteData


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_DeInit:
        LDR.W    R0,??DataTable26  ;; 0x40018000
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable26_1  ;; 0x40018004
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable26_2  ;; 0x40018008
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable26_3  ;; 0x4001800c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable26_4  ;; 0x40018024
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable26_5  ;; 0x40018028
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable26_6  ;; 0x4001802c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable26_7  ;; 0x40018038
        LDR.W    R1,??DataTable26_8  ;; 0xc007ff
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable26_9  ;; 0x4001803c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_Init:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        LDR      R0,[R4, #+0]
        CMP      R0,#+0
        BEQ.N    ??SDIO_Init_0
        LDR      R0,[R4, #+0]
        CMP      R0,#+8192
        BEQ.N    ??SDIO_Init_0
        MOVS     R1,#+185
        LDR.W    R0,??DataTable26_10
        BL       assert_failed
??SDIO_Init_0:
        LDR      R0,[R4, #+4]
        CMP      R0,#+0
        BEQ.N    ??SDIO_Init_1
        LDR      R0,[R4, #+4]
        CMP      R0,#+1024
        BEQ.N    ??SDIO_Init_1
        MOVS     R1,#+186
        LDR.W    R0,??DataTable26_10
        BL       assert_failed
??SDIO_Init_1:
        LDR      R0,[R4, #+8]
        CMP      R0,#+0
        BEQ.N    ??SDIO_Init_2
        LDR      R0,[R4, #+8]
        MOV      R1,#+512
        CMP      R0,R1
        BEQ.N    ??SDIO_Init_2
        MOVS     R1,#+187
        LDR.W    R0,??DataTable26_10
        BL       assert_failed
??SDIO_Init_2:
        LDR      R0,[R4, #+12]
        CMP      R0,#+0
        BEQ.N    ??SDIO_Init_3
        LDR      R0,[R4, #+12]
        CMP      R0,#+2048
        BEQ.N    ??SDIO_Init_3
        LDR      R0,[R4, #+12]
        CMP      R0,#+4096
        BEQ.N    ??SDIO_Init_3
        MOVS     R1,#+188
        LDR.W    R0,??DataTable26_10
        BL       assert_failed
??SDIO_Init_3:
        LDR      R0,[R4, #+16]
        CMP      R0,#+0
        BEQ.N    ??SDIO_Init_4
        LDR      R0,[R4, #+16]
        CMP      R0,#+16384
        BEQ.N    ??SDIO_Init_4
        MOVS     R1,#+189
        LDR.W    R0,??DataTable26_10
        BL       assert_failed
??SDIO_Init_4:
        LDR.W    R0,??DataTable26_1  ;; 0x40018004
        LDR      R0,[R0, #+0]
        MOVS     R5,R0
        LDR.W    R0,??DataTable26_11  ;; 0xffff8100
        ANDS     R5,R0,R5
        LDRB     R0,[R4, #+20]
        LDR      R1,[R4, #+8]
        ORRS     R0,R1,R0
        LDR      R1,[R4, #+4]
        ORRS     R0,R1,R0
        LDR      R1,[R4, #+12]
        ORRS     R0,R1,R0
        LDR      R1,[R4, #+0]
        ORRS     R0,R1,R0
        LDR      R1,[R4, #+16]
        ORRS     R0,R1,R0
        ORRS     R5,R0,R5
        LDR.W    R0,??DataTable26_1  ;; 0x40018004
        STR      R5,[R0, #+0]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_StructInit:
        MOVS     R1,#+0
        STRB     R1,[R0, #+20]
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_ClockCmd:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??SDIO_ClockCmd_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??SDIO_ClockCmd_0
        MOVS     R1,#+237
        LDR.W    R0,??DataTable26_10
        BL       assert_failed
??SDIO_ClockCmd_0:
        LDR.W    R0,??DataTable26_12  ;; 0x423000a0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_SetPowerState:
        PUSH     {R4,LR}
        MOVS     R4,R0
        CMP      R4,#+0
        BEQ.N    ??SDIO_SetPowerState_0
        CMP      R4,#+3
        BEQ.N    ??SDIO_SetPowerState_0
        MOVS     R1,#+253
        LDR.W    R0,??DataTable26_10
        BL       assert_failed
??SDIO_SetPowerState_0:
        LDR.W    R0,??DataTable26  ;; 0x40018000
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+2
        LSLS     R0,R0,#+2
        LDR.W    R1,??DataTable26  ;; 0x40018000
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable26  ;; 0x40018000
        LDR      R0,[R0, #+0]
        ORRS     R0,R4,R0
        LDR.W    R1,??DataTable26  ;; 0x40018000
        STR      R0,[R1, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_GetPowerState:
        LDR.W    R0,??DataTable26  ;; 0x40018000
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x3
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_ITConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        TST      R4,#0xFF000000
        BNE.N    ??SDIO_ITConfig_0
        CMP      R4,#+0
        BNE.N    ??SDIO_ITConfig_1
??SDIO_ITConfig_0:
        MOVW     R1,#+309
        LDR.W    R0,??DataTable26_10
        BL       assert_failed
??SDIO_ITConfig_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??SDIO_ITConfig_2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??SDIO_ITConfig_2
        MOV      R1,#+310
        LDR.W    R0,??DataTable26_10
        BL       assert_failed
??SDIO_ITConfig_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??SDIO_ITConfig_3
        LDR.W    R0,??DataTable26_9  ;; 0x4001803c
        LDR      R0,[R0, #+0]
        ORRS     R0,R4,R0
        LDR.W    R1,??DataTable26_9  ;; 0x4001803c
        STR      R0,[R1, #+0]
        B.N      ??SDIO_ITConfig_4
??SDIO_ITConfig_3:
        LDR.W    R0,??DataTable26_9  ;; 0x4001803c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,R4
        LDR.W    R1,??DataTable26_9  ;; 0x4001803c
        STR      R0,[R1, #+0]
??SDIO_ITConfig_4:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_DMACmd:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??SDIO_DMACmd_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??SDIO_DMACmd_0
        MOVW     R1,#+333
        LDR.W    R0,??DataTable26_10
        BL       assert_failed
??SDIO_DMACmd_0:
        LDR.W    R0,??DataTable26_13  ;; 0x4230058c
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_SendCommand:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        LDR      R0,[R4, #+4]
        CMP      R0,#+64
        BCC.N    ??SDIO_SendCommand_0
        MOV      R1,#+350
        LDR.W    R0,??DataTable26_10
        BL       assert_failed
??SDIO_SendCommand_0:
        LDR      R0,[R4, #+8]
        CMP      R0,#+0
        BEQ.N    ??SDIO_SendCommand_1
        LDR      R0,[R4, #+8]
        CMP      R0,#+64
        BEQ.N    ??SDIO_SendCommand_1
        LDR      R0,[R4, #+8]
        CMP      R0,#+192
        BEQ.N    ??SDIO_SendCommand_1
        MOVW     R1,#+351
        LDR.W    R0,??DataTable26_10
        BL       assert_failed
??SDIO_SendCommand_1:
        LDR      R0,[R4, #+12]
        CMP      R0,#+0
        BEQ.N    ??SDIO_SendCommand_2
        LDR      R0,[R4, #+12]
        MOV      R1,#+256
        CMP      R0,R1
        BEQ.N    ??SDIO_SendCommand_2
        LDR      R0,[R4, #+12]
        MOV      R1,#+512
        CMP      R0,R1
        BEQ.N    ??SDIO_SendCommand_2
        MOV      R1,#+352
        LDR.W    R0,??DataTable26_10
        BL       assert_failed
??SDIO_SendCommand_2:
        LDR      R0,[R4, #+16]
        CMP      R0,#+1024
        BEQ.N    ??SDIO_SendCommand_3
        LDR      R0,[R4, #+16]
        CMP      R0,#+0
        BEQ.N    ??SDIO_SendCommand_3
        MOVW     R1,#+353
        LDR.W    R0,??DataTable26_10
        BL       assert_failed
??SDIO_SendCommand_3:
        LDR.W    R0,??DataTable26_2  ;; 0x40018008
        LDR      R1,[R4, #+0]
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable26_3  ;; 0x4001800c
        LDR      R0,[R0, #+0]
        MOVS     R5,R0
        LSRS     R5,R5,#+11
        LSLS     R5,R5,#+11
        LDR      R0,[R4, #+4]
        LDR      R1,[R4, #+8]
        ORRS     R0,R1,R0
        LDR      R1,[R4, #+12]
        ORRS     R0,R1,R0
        LDR      R1,[R4, #+16]
        ORRS     R0,R1,R0
        ORRS     R5,R0,R5
        LDR.W    R0,??DataTable26_3  ;; 0x4001800c
        STR      R5,[R0, #+0]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_CmdStructInit:
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_GetCommandResponse:
        LDR.W    R0,??DataTable26_14  ;; 0x40018010
        LDR      R0,[R0, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_GetResponse:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        CMP      R4,#+0
        BEQ.N    ??SDIO_GetResponse_0
        CMP      R4,#+4
        BEQ.N    ??SDIO_GetResponse_0
        CMP      R4,#+8
        BEQ.N    ??SDIO_GetResponse_0
        CMP      R4,#+12
        BEQ.N    ??SDIO_GetResponse_0
        MOV      R1,#+416
        LDR.W    R0,??DataTable26_10
        BL       assert_failed
??SDIO_GetResponse_0:
        LDR.W    R0,??DataTable26_15  ;; 0x40018014
        ADDS     R0,R0,R4
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
        LDR      R0,[R0, #+0]
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_DataConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        LDR      R0,[R4, #+4]
        CMP      R0,#+33554432
        BCC.N    ??SDIO_DataConfig_0
        MOVW     R1,#+435
        LDR.W    R0,??DataTable26_10
        BL       assert_failed
??SDIO_DataConfig_0:
        LDR      R0,[R4, #+8]
        CMP      R0,#+0
        BEQ.N    ??SDIO_DataConfig_1
        LDR      R0,[R4, #+8]
        CMP      R0,#+16
        BEQ.N    ??SDIO_DataConfig_1
        LDR      R0,[R4, #+8]
        CMP      R0,#+32
        BEQ.N    ??SDIO_DataConfig_1
        LDR      R0,[R4, #+8]
        CMP      R0,#+48
        BEQ.N    ??SDIO_DataConfig_1
        LDR      R0,[R4, #+8]
        CMP      R0,#+64
        BEQ.N    ??SDIO_DataConfig_1
        LDR      R0,[R4, #+8]
        CMP      R0,#+80
        BEQ.N    ??SDIO_DataConfig_1
        LDR      R0,[R4, #+8]
        CMP      R0,#+96
        BEQ.N    ??SDIO_DataConfig_1
        LDR      R0,[R4, #+8]
        CMP      R0,#+112
        BEQ.N    ??SDIO_DataConfig_1
        LDR      R0,[R4, #+8]
        CMP      R0,#+128
        BEQ.N    ??SDIO_DataConfig_1
        LDR      R0,[R4, #+8]
        CMP      R0,#+144
        BEQ.N    ??SDIO_DataConfig_1
        LDR      R0,[R4, #+8]
        CMP      R0,#+160
        BEQ.N    ??SDIO_DataConfig_1
        LDR      R0,[R4, #+8]
        CMP      R0,#+176
        BEQ.N    ??SDIO_DataConfig_1
        LDR      R0,[R4, #+8]
        CMP      R0,#+192
        BEQ.N    ??SDIO_DataConfig_1
        LDR      R0,[R4, #+8]
        CMP      R0,#+208
        BEQ.N    ??SDIO_DataConfig_1
        LDR      R0,[R4, #+8]
        CMP      R0,#+224
        BEQ.N    ??SDIO_DataConfig_1
        MOV      R1,#+436
        LDR.W    R0,??DataTable26_10
        BL       assert_failed
??SDIO_DataConfig_1:
        LDR      R0,[R4, #+12]
        CMP      R0,#+0
        BEQ.N    ??SDIO_DataConfig_2
        LDR      R0,[R4, #+12]
        CMP      R0,#+2
        BEQ.N    ??SDIO_DataConfig_2
        MOVW     R1,#+437
        LDR.W    R0,??DataTable26_10
        BL       assert_failed
??SDIO_DataConfig_2:
        LDR      R0,[R4, #+16]
        CMP      R0,#+4
        BEQ.N    ??SDIO_DataConfig_3
        LDR      R0,[R4, #+16]
        CMP      R0,#+0
        BEQ.N    ??SDIO_DataConfig_3
        MOV      R1,#+438
        LDR.W    R0,??DataTable26_10
        BL       assert_failed
??SDIO_DataConfig_3:
        LDR      R0,[R4, #+20]
        CMP      R0,#+1
        BEQ.N    ??SDIO_DataConfig_4
        LDR      R0,[R4, #+20]
        CMP      R0,#+0
        BEQ.N    ??SDIO_DataConfig_4
        MOVW     R1,#+439
        LDR.W    R0,??DataTable26_10
        BL       assert_failed
??SDIO_DataConfig_4:
        LDR.W    R0,??DataTable26_4  ;; 0x40018024
        LDR      R1,[R4, #+0]
        STR      R1,[R0, #+0]
        LDR      R0,[R4, #+4]
        LDR.W    R1,??DataTable26_5  ;; 0x40018028
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable26_6  ;; 0x4001802c
        LDR      R0,[R0, #+0]
        MOVS     R5,R0
        BICS     R5,R5,#0xF7
        LDR      R0,[R4, #+8]
        LDR      R1,[R4, #+12]
        ORRS     R0,R1,R0
        LDR      R1,[R4, #+16]
        ORRS     R0,R1,R0
        LDR      R1,[R4, #+20]
        ORRS     R0,R1,R0
        ORRS     R5,R0,R5
        LDR.N    R0,??DataTable26_6  ;; 0x4001802c
        STR      R5,[R0, #+0]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_DataStructInit:
        MOVS     R1,#-1
        STR      R1,[R0, #+0]
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
        MOVS     R1,#+0
        STR      R1,[R0, #+20]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_GetDataCounter:
        LDR.N    R0,??DataTable26_16  ;; 0x40018030
        LDR      R0,[R0, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_ReadData:
        LDR.N    R0,??DataTable26_17  ;; 0x40018080
        LDR      R0,[R0, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_WriteData:
        LDR.N    R1,??DataTable26_17  ;; 0x40018080
        STR      R0,[R1, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_GetFIFOCount:
        LDR.N    R0,??DataTable26_18  ;; 0x40018048
        LDR      R0,[R0, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_StartSDIOReadWait:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??SDIO_StartSDIOReadWait_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??SDIO_StartSDIOReadWait_0
        MOVW     R1,#+531
        LDR.N    R0,??DataTable26_10
        BL       assert_failed
??SDIO_StartSDIOReadWait_0:
        LDR.N    R0,??DataTable26_19  ;; 0x423005a0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_StopSDIOReadWait:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??SDIO_StopSDIOReadWait_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??SDIO_StopSDIOReadWait_0
        MOVW     R1,#+545
        LDR.N    R0,??DataTable26_10
        BL       assert_failed
??SDIO_StopSDIOReadWait_0:
        LDR.N    R0,??DataTable26_20  ;; 0x423005a4
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_SetSDIOReadWaitMode:
        PUSH     {R4,LR}
        MOVS     R4,R0
        CMP      R4,#+1
        BEQ.N    ??SDIO_SetSDIOReadWaitMode_0
        CMP      R4,#+0
        BEQ.N    ??SDIO_SetSDIOReadWaitMode_0
        MOVW     R1,#+561
        LDR.N    R0,??DataTable26_10
        BL       assert_failed
??SDIO_SetSDIOReadWaitMode_0:
        LDR.N    R0,??DataTable26_21  ;; 0x423005a8
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_SetSDIOOperation:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??SDIO_SetSDIOOperation_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??SDIO_SetSDIOOperation_0
        MOVW     R1,#+575
        LDR.N    R0,??DataTable26_10
        BL       assert_failed
??SDIO_SetSDIOOperation_0:
        LDR.N    R0,??DataTable26_22  ;; 0x423005ac
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_SendSDIOSuspendCmd:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??SDIO_SendSDIOSuspendCmd_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??SDIO_SendSDIOSuspendCmd_0
        MOVW     R1,#+589
        LDR.N    R0,??DataTable26_10
        BL       assert_failed
??SDIO_SendSDIOSuspendCmd_0:
        LDR.N    R0,??DataTable26_23  ;; 0x423001ac
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_CommandCompletionCmd:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??SDIO_CommandCompletionCmd_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??SDIO_CommandCompletionCmd_0
        MOVW     R1,#+603
        LDR.N    R0,??DataTable26_10
        BL       assert_failed
??SDIO_CommandCompletionCmd_0:
        LDR.N    R0,??DataTable26_24  ;; 0x423001b0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_CEATAITCmd:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??SDIO_CEATAITCmd_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??SDIO_CEATAITCmd_0
        MOV      R1,#+616
        LDR.N    R0,??DataTable26_10
        BL       assert_failed
??SDIO_CEATAITCmd_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MVNS     R0,R4
        ANDS     R0,R0,#0x1
        LDR.N    R1,??DataTable26_25  ;; 0x423001b4
        STR      R0,[R1, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_SendCEATACmd:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??SDIO_SendCEATACmd_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??SDIO_SendCEATACmd_0
        MOVW     R1,#+629
        LDR.N    R0,??DataTable26_10
        BL       assert_failed
??SDIO_SendCEATACmd_0:
        LDR.N    R0,??DataTable26_26  ;; 0x423001b8
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_GetFlagStatus:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        CMP      R4,#+1
        BEQ.N    ??SDIO_GetFlagStatus_0
        CMP      R4,#+2
        BEQ.N    ??SDIO_GetFlagStatus_0
        CMP      R4,#+4
        BEQ.N    ??SDIO_GetFlagStatus_0
        CMP      R4,#+8
        BEQ.N    ??SDIO_GetFlagStatus_0
        CMP      R4,#+16
        BEQ.N    ??SDIO_GetFlagStatus_0
        CMP      R4,#+32
        BEQ.N    ??SDIO_GetFlagStatus_0
        CMP      R4,#+64
        BEQ.N    ??SDIO_GetFlagStatus_0
        CMP      R4,#+128
        BEQ.N    ??SDIO_GetFlagStatus_0
        MOV      R0,#+256
        CMP      R4,R0
        BEQ.N    ??SDIO_GetFlagStatus_0
        MOV      R0,#+512
        CMP      R4,R0
        BEQ.N    ??SDIO_GetFlagStatus_0
        CMP      R4,#+1024
        BEQ.N    ??SDIO_GetFlagStatus_0
        CMP      R4,#+2048
        BEQ.N    ??SDIO_GetFlagStatus_0
        CMP      R4,#+4096
        BEQ.N    ??SDIO_GetFlagStatus_0
        CMP      R4,#+8192
        BEQ.N    ??SDIO_GetFlagStatus_0
        CMP      R4,#+16384
        BEQ.N    ??SDIO_GetFlagStatus_0
        CMP      R4,#+32768
        BEQ.N    ??SDIO_GetFlagStatus_0
        CMP      R4,#+65536
        BEQ.N    ??SDIO_GetFlagStatus_0
        CMP      R4,#+131072
        BEQ.N    ??SDIO_GetFlagStatus_0
        CMP      R4,#+262144
        BEQ.N    ??SDIO_GetFlagStatus_0
        CMP      R4,#+524288
        BEQ.N    ??SDIO_GetFlagStatus_0
        CMP      R4,#+1048576
        BEQ.N    ??SDIO_GetFlagStatus_0
        CMP      R4,#+2097152
        BEQ.N    ??SDIO_GetFlagStatus_0
        CMP      R4,#+4194304
        BEQ.N    ??SDIO_GetFlagStatus_0
        CMP      R4,#+8388608
        BEQ.N    ??SDIO_GetFlagStatus_0
        MOVW     R1,#+670
        LDR.N    R0,??DataTable26_10
        BL       assert_failed
??SDIO_GetFlagStatus_0:
        LDR.N    R0,??DataTable26_27  ;; 0x40018034
        LDR      R0,[R0, #+0]
        TST      R0,R4
        BEQ.N    ??SDIO_GetFlagStatus_1
        MOVS     R0,#+1
        MOVS     R5,R0
        B.N      ??SDIO_GetFlagStatus_2
??SDIO_GetFlagStatus_1:
        MOVS     R0,#+0
        MOVS     R5,R0
??SDIO_GetFlagStatus_2:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_ClearFlag:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.N    R0,??DataTable26_28  ;; 0xff3ff800
        TST      R4,R0
        BNE.N    ??SDIO_ClearFlag_0
        CMP      R4,#+0
        BNE.N    ??SDIO_ClearFlag_1
??SDIO_ClearFlag_0:
        MOVW     R1,#+706
        LDR.N    R0,??DataTable26_10
        BL       assert_failed
??SDIO_ClearFlag_1:
        LDR.N    R0,??DataTable26_7  ;; 0x40018038
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_GetITStatus:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        CMP      R4,#+1
        BEQ.N    ??SDIO_GetITStatus_0
        CMP      R4,#+2
        BEQ.N    ??SDIO_GetITStatus_0
        CMP      R4,#+4
        BEQ.N    ??SDIO_GetITStatus_0
        CMP      R4,#+8
        BEQ.N    ??SDIO_GetITStatus_0
        CMP      R4,#+16
        BEQ.N    ??SDIO_GetITStatus_0
        CMP      R4,#+32
        BEQ.N    ??SDIO_GetITStatus_0
        CMP      R4,#+64
        BEQ.N    ??SDIO_GetITStatus_0
        CMP      R4,#+128
        BEQ.N    ??SDIO_GetITStatus_0
        MOV      R0,#+256
        CMP      R4,R0
        BEQ.N    ??SDIO_GetITStatus_0
        MOV      R0,#+512
        CMP      R4,R0
        BEQ.N    ??SDIO_GetITStatus_0
        CMP      R4,#+1024
        BEQ.N    ??SDIO_GetITStatus_0
        CMP      R4,#+2048
        BEQ.N    ??SDIO_GetITStatus_0
        CMP      R4,#+4096
        BEQ.N    ??SDIO_GetITStatus_0
        CMP      R4,#+8192
        BEQ.N    ??SDIO_GetITStatus_0
        CMP      R4,#+16384
        BEQ.N    ??SDIO_GetITStatus_0
        CMP      R4,#+32768
        BEQ.N    ??SDIO_GetITStatus_0
        CMP      R4,#+65536
        BEQ.N    ??SDIO_GetITStatus_0
        CMP      R4,#+131072
        BEQ.N    ??SDIO_GetITStatus_0
        CMP      R4,#+262144
        BEQ.N    ??SDIO_GetITStatus_0
        CMP      R4,#+524288
        BEQ.N    ??SDIO_GetITStatus_0
        CMP      R4,#+1048576
        BEQ.N    ??SDIO_GetITStatus_0
        CMP      R4,#+2097152
        BEQ.N    ??SDIO_GetITStatus_0
        CMP      R4,#+4194304
        BEQ.N    ??SDIO_GetITStatus_0
        CMP      R4,#+8388608
        BEQ.N    ??SDIO_GetITStatus_0
        MOVW     R1,#+747
        LDR.N    R0,??DataTable26_10
        BL       assert_failed
??SDIO_GetITStatus_0:
        LDR.N    R0,??DataTable26_27  ;; 0x40018034
        LDR      R0,[R0, #+0]
        TST      R0,R4
        BEQ.N    ??SDIO_GetITStatus_1
        MOVS     R0,#+1
        MOVS     R5,R0
        B.N      ??SDIO_GetITStatus_2
??SDIO_GetITStatus_1:
        MOVS     R0,#+0
        MOVS     R5,R0
??SDIO_GetITStatus_2:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDIO_ClearITPendingBit:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.N    R0,??DataTable26_28  ;; 0xff3ff800
        TST      R4,R0
        BNE.N    ??SDIO_ClearITPendingBit_0
        CMP      R4,#+0
        BNE.N    ??SDIO_ClearITPendingBit_1
??SDIO_ClearITPendingBit_0:
        MOVW     R1,#+781
        LDR.N    R0,??DataTable26_10
        BL       assert_failed
??SDIO_ClearITPendingBit_1:
        LDR.N    R0,??DataTable26_7  ;; 0x40018038
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26:
        DC32     0x40018000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_1:
        DC32     0x40018004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_2:
        DC32     0x40018008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_3:
        DC32     0x4001800c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_4:
        DC32     0x40018024

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_5:
        DC32     0x40018028

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_6:
        DC32     0x4001802c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_7:
        DC32     0x40018038

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_8:
        DC32     0xc007ff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_9:
        DC32     0x4001803c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_10:
        DC32     `?<Constant "C:\\\\Users\\\\TTT\\\\Desktop\\\\...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_11:
        DC32     0xffff8100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_12:
        DC32     0x423000a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_13:
        DC32     0x4230058c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_14:
        DC32     0x40018010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_15:
        DC32     0x40018014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_16:
        DC32     0x40018030

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_17:
        DC32     0x40018080

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_18:
        DC32     0x40018048

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_19:
        DC32     0x423005a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_20:
        DC32     0x423005a4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_21:
        DC32     0x423005a8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_22:
        DC32     0x423005ac

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_23:
        DC32     0x423001ac

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_24:
        DC32     0x423001b0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_25:
        DC32     0x423001b4

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_26:
        DC32     0x423001b8

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_27:
        DC32     0x40018034

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_28:
        DC32     0xff3ff800

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
        DC8 78H, 5FH, 73H, 64H, 69H, 6FH, 2EH, 63H
        DC8 0
        DC8 0, 0, 0

        END
// 
//   100 bytes in section .rodata
// 1 852 bytes in section .text
// 
// 1 852 bytes of CODE  memory
//   100 bytes of CONST memory
//
//Errors: none
//Warnings: none
