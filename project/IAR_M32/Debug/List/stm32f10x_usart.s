///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    01/Jul/2022  16:54:03 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\TTT\Desktop\zz.STDFW\00.Study\Libraries\STM32F /
//                    10x_StdPeriph_Driver\src\stm32f10x_usart.c              /
//    Command line =  C:\Users\TTT\Desktop\zz.STDFW\00.Study\Libraries\STM32F /
//                    10x_StdPeriph_Driver\src\stm32f10x_usart.c -D           /
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
//                    Debug\List\stm32f10x_usart.s                            /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm32f10x_usart

        #define SHT_PROGBITS 0x1

        EXTERN RCC_APB1PeriphResetCmd
        EXTERN RCC_APB2PeriphResetCmd
        EXTERN RCC_GetClocksFreq
        EXTERN assert_failed

        PUBLIC USART_ClearFlag
        PUBLIC USART_ClearITPendingBit
        PUBLIC USART_ClockInit
        PUBLIC USART_ClockStructInit
        PUBLIC USART_Cmd
        PUBLIC USART_DMACmd
        PUBLIC USART_DeInit
        PUBLIC USART_GetFlagStatus
        PUBLIC USART_GetITStatus
        PUBLIC USART_HalfDuplexCmd
        PUBLIC USART_ITConfig
        PUBLIC USART_Init
        PUBLIC USART_IrDACmd
        PUBLIC USART_IrDAConfig
        PUBLIC USART_LINBreakDetectLengthConfig
        PUBLIC USART_LINCmd
        PUBLIC USART_OneBitMethodCmd
        PUBLIC USART_OverSampling8Cmd
        PUBLIC USART_ReceiveData
        PUBLIC USART_ReceiverWakeUpCmd
        PUBLIC USART_SendBreak
        PUBLIC USART_SendData
        PUBLIC USART_SetAddress
        PUBLIC USART_SetGuardTime
        PUBLIC USART_SetPrescaler
        PUBLIC USART_SmartCardCmd
        PUBLIC USART_SmartCardNACKCmd
        PUBLIC USART_StructInit
        PUBLIC USART_WakeUpConfig


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART_DeInit:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.W    R0,??DataTable17  ;; 0x40013800
        CMP      R4,R0
        BEQ.N    ??USART_DeInit_0
        LDR.W    R0,??DataTable17_1  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_DeInit_0
        LDR.W    R0,??DataTable17_2  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_DeInit_0
        LDR.W    R0,??DataTable18  ;; 0x40004c00
        CMP      R4,R0
        BEQ.N    ??USART_DeInit_0
        LDR.W    R0,??DataTable19  ;; 0x40005000
        CMP      R4,R0
        BEQ.N    ??USART_DeInit_0
        MOVS     R1,#+131
        LDR.W    R0,??DataTable18_1
        BL       assert_failed
??USART_DeInit_0:
        LDR.W    R0,??DataTable17  ;; 0x40013800
        CMP      R4,R0
        BNE.N    ??USART_DeInit_1
        MOVS     R1,#+1
        MOV      R0,#+16384
        BL       RCC_APB2PeriphResetCmd
        MOVS     R1,#+0
        MOV      R0,#+16384
        BL       RCC_APB2PeriphResetCmd
        B.N      ??USART_DeInit_2
??USART_DeInit_1:
        LDR.W    R0,??DataTable17_1  ;; 0x40004400
        CMP      R4,R0
        BNE.N    ??USART_DeInit_3
        MOVS     R1,#+1
        MOVS     R0,#+131072
        BL       RCC_APB1PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+131072
        BL       RCC_APB1PeriphResetCmd
        B.N      ??USART_DeInit_2
??USART_DeInit_3:
        LDR.W    R0,??DataTable17_2  ;; 0x40004800
        CMP      R4,R0
        BNE.N    ??USART_DeInit_4
        MOVS     R1,#+1
        MOVS     R0,#+262144
        BL       RCC_APB1PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+262144
        BL       RCC_APB1PeriphResetCmd
        B.N      ??USART_DeInit_2
??USART_DeInit_4:
        LDR.W    R0,??DataTable18  ;; 0x40004c00
        CMP      R4,R0
        BNE.N    ??USART_DeInit_5
        MOVS     R1,#+1
        MOVS     R0,#+524288
        BL       RCC_APB1PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+524288
        BL       RCC_APB1PeriphResetCmd
        B.N      ??USART_DeInit_2
??USART_DeInit_5:
        LDR.W    R0,??DataTable19  ;; 0x40005000
        CMP      R4,R0
        BNE.N    ??USART_DeInit_2
        MOVS     R1,#+1
        MOVS     R0,#+1048576
        BL       RCC_APB1PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+1048576
        BL       RCC_APB1PeriphResetCmd
??USART_DeInit_2:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART_Init:
        PUSH     {R4-R10,LR}
        SUB      SP,SP,#+24
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        MOVS     R7,#+0
        MOVS     R8,#+0
        MOVS     R9,#+0
        MOVS     R10,#+0
        LDR.W    R0,??DataTable17  ;; 0x40013800
        CMP      R4,R0
        BEQ.N    ??USART_Init_0
        LDR.W    R0,??DataTable17_1  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_Init_0
        LDR.W    R0,??DataTable17_2  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_Init_0
        LDR.W    R0,??DataTable18  ;; 0x40004c00
        CMP      R4,R0
        BEQ.N    ??USART_Init_0
        LDR.W    R0,??DataTable19  ;; 0x40005000
        CMP      R4,R0
        BEQ.N    ??USART_Init_0
        MOVS     R1,#+181
        LDR.W    R0,??DataTable18_1
        BL       assert_failed
??USART_Init_0:
        LDR      R0,[R5, #+0]
        CMP      R0,#+0
        BEQ.N    ??USART_Init_1
        LDR      R0,[R5, #+0]
        LDR.W    R1,??DataTable19_1  ;; 0x44aa21
        CMP      R0,R1
        BCC.N    ??USART_Init_2
??USART_Init_1:
        MOVS     R1,#+182
        LDR.W    R0,??DataTable18_1
        BL       assert_failed
??USART_Init_2:
        LDRH     R0,[R5, #+4]
        CMP      R0,#+0
        BEQ.N    ??USART_Init_3
        LDRH     R0,[R5, #+4]
        CMP      R0,#+4096
        BEQ.N    ??USART_Init_3
        MOVS     R1,#+183
        LDR.W    R0,??DataTable18_1
        BL       assert_failed
??USART_Init_3:
        LDRH     R0,[R5, #+6]
        CMP      R0,#+0
        BEQ.N    ??USART_Init_4
        LDRH     R0,[R5, #+6]
        CMP      R0,#+4096
        BEQ.N    ??USART_Init_4
        LDRH     R0,[R5, #+6]
        CMP      R0,#+8192
        BEQ.N    ??USART_Init_4
        LDRH     R0,[R5, #+6]
        CMP      R0,#+12288
        BEQ.N    ??USART_Init_4
        MOVS     R1,#+184
        LDR.W    R0,??DataTable18_1
        BL       assert_failed
??USART_Init_4:
        LDRH     R0,[R5, #+8]
        CMP      R0,#+0
        BEQ.N    ??USART_Init_5
        LDRH     R0,[R5, #+8]
        CMP      R0,#+1024
        BEQ.N    ??USART_Init_5
        LDRH     R0,[R5, #+8]
        CMP      R0,#+1536
        BEQ.N    ??USART_Init_5
        MOVS     R1,#+185
        LDR.W    R0,??DataTable18_1
        BL       assert_failed
??USART_Init_5:
        LDRH     R0,[R5, #+10]
        MOVW     R1,#+65523
        TST      R0,R1
        BNE.N    ??USART_Init_6
        LDRH     R0,[R5, #+10]
        CMP      R0,#+0
        BNE.N    ??USART_Init_7
??USART_Init_6:
        MOVS     R1,#+186
        LDR.W    R0,??DataTable18_1
        BL       assert_failed
??USART_Init_7:
        LDRH     R0,[R5, #+12]
        CMP      R0,#+0
        BEQ.N    ??USART_Init_8
        LDRH     R0,[R5, #+12]
        MOV      R1,#+256
        CMP      R0,R1
        BEQ.N    ??USART_Init_8
        LDRH     R0,[R5, #+12]
        MOV      R1,#+512
        CMP      R0,R1
        BEQ.N    ??USART_Init_8
        LDRH     R0,[R5, #+12]
        MOV      R1,#+768
        CMP      R0,R1
        BEQ.N    ??USART_Init_8
        MOVS     R1,#+187
        LDR.W    R0,??DataTable18_1
        BL       assert_failed
??USART_Init_8:
        LDRH     R0,[R5, #+12]
        CMP      R0,#+0
        BEQ.N    ??USART_Init_9
        LDR.W    R0,??DataTable17  ;; 0x40013800
        CMP      R4,R0
        BEQ.N    ??USART_Init_9
        LDR.W    R0,??DataTable17_1  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_Init_9
        LDR.W    R0,??DataTable17_2  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_Init_9
        MOVS     R1,#+191
        LDR.W    R0,??DataTable18_1
        BL       assert_failed
??USART_Init_9:
        MOV      R10,R4
        LDRH     R0,[R4, #+16]
        MOVS     R6,R0
        MOVW     R0,#+53247
        ANDS     R6,R0,R6
        LDRH     R0,[R5, #+6]
        ORRS     R6,R0,R6
        STRH     R6,[R4, #+16]
        LDRH     R0,[R4, #+12]
        MOVS     R6,R0
        MOVW     R0,#+59891
        ANDS     R6,R0,R6
        LDRH     R0,[R5, #+4]
        LDRH     R1,[R5, #+8]
        ORRS     R0,R1,R0
        LDRH     R1,[R5, #+10]
        ORRS     R0,R1,R0
        ORRS     R6,R0,R6
        STRH     R6,[R4, #+12]
        LDRH     R0,[R4, #+20]
        MOVS     R6,R0
        MOVW     R0,#+64767
        ANDS     R6,R0,R6
        LDRH     R0,[R5, #+12]
        ORRS     R6,R0,R6
        STRH     R6,[R4, #+20]
        ADD      R0,SP,#+0
        BL       RCC_GetClocksFreq
        LDR.W    R0,??DataTable17  ;; 0x40013800
        CMP      R10,R0
        BNE.N    ??USART_Init_10
        LDR      R0,[SP, #+12]
        MOVS     R7,R0
        B.N      ??USART_Init_11
??USART_Init_10:
        LDR      R0,[SP, #+8]
        MOVS     R7,R0
??USART_Init_11:
        LDRH     R0,[R4, #+12]
        LSLS     R0,R0,#+16
        BPL.N    ??USART_Init_12
        MOVS     R0,#+25
        MUL      R0,R0,R7
        LDR      R1,[R5, #+0]
        LSLS     R1,R1,#+1
        UDIV     R0,R0,R1
        MOV      R8,R0
        B.N      ??USART_Init_13
??USART_Init_12:
        MOVS     R0,#+25
        MUL      R0,R0,R7
        LDR      R1,[R5, #+0]
        LSLS     R1,R1,#+2
        UDIV     R0,R0,R1
        MOV      R8,R0
??USART_Init_13:
        MOVS     R0,#+100
        UDIV     R0,R8,R0
        LSLS     R0,R0,#+4
        MOVS     R6,R0
        LSRS     R0,R6,#+4
        MOVS     R1,#+100
        MLS      R0,R1,R0,R8
        MOV      R9,R0
        LDRH     R0,[R4, #+12]
        LSLS     R0,R0,#+16
        BPL.N    ??USART_Init_14
        LSLS     R0,R9,#+3
        ADDS     R0,R0,#+50
        MOVS     R1,#+100
        UDIV     R0,R0,R1
        ANDS     R0,R0,#0x7
        ORRS     R6,R0,R6
        B.N      ??USART_Init_15
??USART_Init_14:
        LSLS     R0,R9,#+4
        ADDS     R0,R0,#+50
        MOVS     R1,#+100
        UDIV     R0,R0,R1
        ANDS     R0,R0,#0xF
        ORRS     R6,R0,R6
??USART_Init_15:
        STRH     R6,[R4, #+8]
        ADD      SP,SP,#+24
        POP      {R4-R10,PC}      ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART_StructInit:
        MOV      R1,#+9600
        STR      R1,[R0, #+0]
        MOVS     R1,#+0
        STRH     R1,[R0, #+4]
        MOVS     R1,#+0
        STRH     R1,[R0, #+6]
        MOVS     R1,#+0
        STRH     R1,[R0, #+8]
        MOVS     R1,#+12
        STRH     R1,[R0, #+10]
        MOVS     R1,#+0
        STRH     R1,[R0, #+12]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART_ClockInit:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.W    R0,??DataTable17  ;; 0x40013800
        CMP      R4,R0
        BEQ.N    ??USART_ClockInit_0
        LDR.W    R0,??DataTable17_1  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_ClockInit_0
        LDR.W    R0,??DataTable17_2  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_ClockInit_0
        MOVW     R1,#+303
        LDR.W    R0,??DataTable18_1
        BL       assert_failed
??USART_ClockInit_0:
        LDRH     R0,[R5, #+0]
        CMP      R0,#+0
        BEQ.N    ??USART_ClockInit_1
        LDRH     R0,[R5, #+0]
        CMP      R0,#+2048
        BEQ.N    ??USART_ClockInit_1
        MOV      R1,#+304
        LDR.W    R0,??DataTable18_1
        BL       assert_failed
??USART_ClockInit_1:
        LDRH     R0,[R5, #+2]
        CMP      R0,#+0
        BEQ.N    ??USART_ClockInit_2
        LDRH     R0,[R5, #+2]
        CMP      R0,#+1024
        BEQ.N    ??USART_ClockInit_2
        MOVW     R1,#+305
        LDR.W    R0,??DataTable18_1
        BL       assert_failed
??USART_ClockInit_2:
        LDRH     R0,[R5, #+4]
        CMP      R0,#+0
        BEQ.N    ??USART_ClockInit_3
        LDRH     R0,[R5, #+4]
        MOV      R1,#+512
        CMP      R0,R1
        BEQ.N    ??USART_ClockInit_3
        MOV      R1,#+306
        LDR.W    R0,??DataTable18_1
        BL       assert_failed
??USART_ClockInit_3:
        LDRH     R0,[R5, #+6]
        CMP      R0,#+0
        BEQ.N    ??USART_ClockInit_4
        LDRH     R0,[R5, #+6]
        MOV      R1,#+256
        CMP      R0,R1
        BEQ.N    ??USART_ClockInit_4
        MOVW     R1,#+307
        LDR.W    R0,??DataTable18_1
        BL       assert_failed
??USART_ClockInit_4:
        LDRH     R0,[R4, #+16]
        MOVS     R6,R0
        MOVW     R0,#+61695
        ANDS     R6,R0,R6
        LDRH     R0,[R5, #+0]
        LDRH     R1,[R5, #+2]
        ORRS     R0,R1,R0
        LDRH     R1,[R5, #+4]
        ORRS     R0,R1,R0
        LDRH     R1,[R5, #+6]
        ORRS     R0,R1,R0
        ORRS     R6,R0,R6
        STRH     R6,[R4, #+16]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART_ClockStructInit:
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
        MOVS     R1,#+0
        STRH     R1,[R0, #+2]
        MOVS     R1,#+0
        STRH     R1,[R0, #+4]
        MOVS     R1,#+0
        STRH     R1,[R0, #+6]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART_Cmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable17  ;; 0x40013800
        CMP      R4,R0
        BEQ.N    ??USART_Cmd_0
        LDR.W    R0,??DataTable17_1  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_Cmd_0
        LDR.W    R0,??DataTable17_2  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_Cmd_0
        LDR.W    R0,??DataTable18  ;; 0x40004c00
        CMP      R4,R0
        BEQ.N    ??USART_Cmd_0
        LDR.W    R0,??DataTable19  ;; 0x40005000
        CMP      R4,R0
        BEQ.N    ??USART_Cmd_0
        MOVW     R1,#+351
        LDR.W    R0,??DataTable18_1
        BL       assert_failed
??USART_Cmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??USART_Cmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??USART_Cmd_1
        MOV      R1,#+352
        LDR.W    R0,??DataTable18_1
        BL       assert_failed
??USART_Cmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??USART_Cmd_2
        LDRH     R0,[R4, #+12]
        ORRS     R0,R0,#0x2000
        STRH     R0,[R4, #+12]
        B.N      ??USART_Cmd_3
??USART_Cmd_2:
        LDRH     R0,[R4, #+12]
        MOVW     R1,#+57343
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+12]
??USART_Cmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART_ITConfig:
        PUSH     {R4-R10,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,#+0
        MOVS     R8,#+0
        MOVS     R9,#+0
        MOVS     R10,#+0
        LDR.W    R0,??DataTable17  ;; 0x40013800
        CMP      R4,R0
        BEQ.N    ??USART_ITConfig_0
        LDR.W    R0,??DataTable17_1  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_ITConfig_0
        LDR.W    R0,??DataTable17_2  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_ITConfig_0
        LDR.W    R0,??DataTable18  ;; 0x40004c00
        CMP      R4,R0
        BEQ.N    ??USART_ITConfig_0
        LDR.W    R0,??DataTable19  ;; 0x40005000
        CMP      R4,R0
        BEQ.N    ??USART_ITConfig_0
        MOV      R1,#+390
        LDR.W    R0,??DataTable18_1
        BL       assert_failed
??USART_ITConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+40
        BEQ.N    ??USART_ITConfig_1
        MOVW     R0,#+1831
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??USART_ITConfig_1
        MOVW     R0,#+1574
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??USART_ITConfig_1
        MOVW     R0,#+1317
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??USART_ITConfig_1
        MOVW     R0,#+1060
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??USART_ITConfig_1
        MOVW     R0,#+2118
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??USART_ITConfig_1
        MOVW     R0,#+2410
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??USART_ITConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+96
        BEQ.N    ??USART_ITConfig_1
        MOVW     R1,#+391
        LDR.W    R0,??DataTable18_1
        BL       assert_failed
??USART_ITConfig_1:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??USART_ITConfig_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BEQ.N    ??USART_ITConfig_2
        MOV      R1,#+392
        LDR.W    R0,??DataTable18_1
        BL       assert_failed
??USART_ITConfig_2:
        MOVW     R0,#+2410
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BNE.N    ??USART_ITConfig_3
        LDR.W    R0,??DataTable17  ;; 0x40013800
        CMP      R4,R0
        BEQ.N    ??USART_ITConfig_3
        LDR.W    R0,??DataTable17_1  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_ITConfig_3
        LDR.W    R0,??DataTable17_2  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_ITConfig_3
        MOV      R1,#+396
        LDR.W    R0,??DataTable18_1
        BL       assert_failed
??USART_ITConfig_3:
        MOV      R10,R4
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R7,R0
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        ANDS     R0,R5,#0x1F
        MOV      R8,R0
        MOVS     R0,#+1
        LSLS     R0,R0,R8
        MOV      R9,R0
        CMP      R7,#+1
        BNE.N    ??USART_ITConfig_4
        ADDS     R10,R10,#+12
        B.N      ??USART_ITConfig_5
??USART_ITConfig_4:
        CMP      R7,#+2
        BNE.N    ??USART_ITConfig_6
        ADDS     R10,R10,#+16
        B.N      ??USART_ITConfig_5
??USART_ITConfig_6:
        ADDS     R10,R10,#+20
??USART_ITConfig_5:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??USART_ITConfig_7
        LDR      R0,[R10, #+0]
        ORRS     R0,R9,R0
        STR      R0,[R10, #+0]
        B.N      ??USART_ITConfig_8
??USART_ITConfig_7:
        LDR      R0,[R10, #+0]
        BICS     R0,R0,R9
        STR      R0,[R10, #+0]
??USART_ITConfig_8:
        POP      {R4-R10,PC}      ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART_DMACmd:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        LDR.W    R0,??DataTable17  ;; 0x40013800
        CMP      R4,R0
        BEQ.N    ??USART_DMACmd_0
        LDR.W    R0,??DataTable17_1  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_DMACmd_0
        LDR.W    R0,??DataTable17_2  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_DMACmd_0
        LDR.W    R0,??DataTable18  ;; 0x40004c00
        CMP      R4,R0
        BEQ.N    ??USART_DMACmd_0
        LDR.W    R0,??DataTable19  ;; 0x40005000
        CMP      R4,R0
        BEQ.N    ??USART_DMACmd_0
        MOV      R1,#+448
        LDR.W    R0,??DataTable18_1
        BL       assert_failed
??USART_DMACmd_0:
        MOVW     R0,#+65343
        TST      R5,R0
        BNE.N    ??USART_DMACmd_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BNE.N    ??USART_DMACmd_2
??USART_DMACmd_1:
        MOVW     R1,#+449
        LDR.W    R0,??DataTable18_1
        BL       assert_failed
??USART_DMACmd_2:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??USART_DMACmd_3
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BEQ.N    ??USART_DMACmd_3
        MOV      R1,#+450
        LDR.W    R0,??DataTable18_1
        BL       assert_failed
??USART_DMACmd_3:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??USART_DMACmd_4
        LDRH     R0,[R4, #+20]
        ORRS     R0,R5,R0
        STRH     R0,[R4, #+20]
        B.N      ??USART_DMACmd_5
??USART_DMACmd_4:
        LDRH     R0,[R4, #+20]
        BICS     R0,R0,R5
        STRH     R0,[R4, #+20]
??USART_DMACmd_5:
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART_SetAddress:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable17  ;; 0x40013800
        CMP      R4,R0
        BEQ.N    ??USART_SetAddress_0
        LDR.W    R0,??DataTable17_1  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_SetAddress_0
        LDR.W    R0,??DataTable17_2  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_SetAddress_0
        LDR.W    R0,??DataTable18  ;; 0x40004c00
        CMP      R4,R0
        BEQ.N    ??USART_SetAddress_0
        LDR.W    R0,??DataTable19  ;; 0x40005000
        CMP      R4,R0
        BEQ.N    ??USART_SetAddress_0
        MOV      R1,#+476
        LDR.W    R0,??DataTable18_1
        BL       assert_failed
??USART_SetAddress_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+16
        BCC.N    ??USART_SetAddress_1
        MOVW     R1,#+477
        LDR.W    R0,??DataTable18_1
        BL       assert_failed
??USART_SetAddress_1:
        LDRH     R0,[R4, #+16]
        MOVW     R1,#+65520
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+16]
        LDRH     R0,[R4, #+16]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ORRS     R0,R5,R0
        STRH     R0,[R4, #+16]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART_WakeUpConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable17  ;; 0x40013800
        CMP      R4,R0
        BEQ.N    ??USART_WakeUpConfig_0
        LDR.W    R0,??DataTable17_1  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_WakeUpConfig_0
        LDR.W    R0,??DataTable17_2  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_WakeUpConfig_0
        LDR.W    R0,??DataTable18  ;; 0x40004c00
        CMP      R4,R0
        BEQ.N    ??USART_WakeUpConfig_0
        LDR.W    R0,??DataTable19  ;; 0x40005000
        CMP      R4,R0
        BEQ.N    ??USART_WakeUpConfig_0
        MOVW     R1,#+499
        LDR.W    R0,??DataTable18_1
        BL       assert_failed
??USART_WakeUpConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??USART_WakeUpConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+2048
        BEQ.N    ??USART_WakeUpConfig_1
        MOV      R1,#+500
        LDR.W    R0,??DataTable18_1
        BL       assert_failed
??USART_WakeUpConfig_1:
        LDRH     R0,[R4, #+12]
        MOVW     R1,#+63487
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+12]
        LDRH     R0,[R4, #+12]
        ORRS     R0,R5,R0
        STRH     R0,[R4, #+12]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART_ReceiverWakeUpCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable17  ;; 0x40013800
        CMP      R4,R0
        BEQ.N    ??USART_ReceiverWakeUpCmd_0
        LDR.N    R0,??DataTable17_1  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_ReceiverWakeUpCmd_0
        LDR.N    R0,??DataTable17_2  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_ReceiverWakeUpCmd_0
        LDR.W    R0,??DataTable18  ;; 0x40004c00
        CMP      R4,R0
        BEQ.N    ??USART_ReceiverWakeUpCmd_0
        LDR.W    R0,??DataTable19  ;; 0x40005000
        CMP      R4,R0
        BEQ.N    ??USART_ReceiverWakeUpCmd_0
        MOVW     R1,#+518
        LDR.W    R0,??DataTable18_1
        BL       assert_failed
??USART_ReceiverWakeUpCmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??USART_ReceiverWakeUpCmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??USART_ReceiverWakeUpCmd_1
        MOVW     R1,#+519
        LDR.W    R0,??DataTable18_1
        BL       assert_failed
??USART_ReceiverWakeUpCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??USART_ReceiverWakeUpCmd_2
        LDRH     R0,[R4, #+12]
        ORRS     R0,R0,#0x2
        STRH     R0,[R4, #+12]
        B.N      ??USART_ReceiverWakeUpCmd_3
??USART_ReceiverWakeUpCmd_2:
        LDRH     R0,[R4, #+12]
        MOVW     R1,#+65533
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+12]
??USART_ReceiverWakeUpCmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART_LINBreakDetectLengthConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable17  ;; 0x40013800
        CMP      R4,R0
        BEQ.N    ??USART_LINBreakDetectLengthConfig_0
        LDR.N    R0,??DataTable17_1  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_LINBreakDetectLengthConfig_0
        LDR.N    R0,??DataTable17_2  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_LINBreakDetectLengthConfig_0
        LDR.N    R0,??DataTable18  ;; 0x40004c00
        CMP      R4,R0
        BEQ.N    ??USART_LINBreakDetectLengthConfig_0
        LDR.W    R0,??DataTable19  ;; 0x40005000
        CMP      R4,R0
        BEQ.N    ??USART_LINBreakDetectLengthConfig_0
        MOVW     R1,#+547
        LDR.N    R0,??DataTable18_1
        BL       assert_failed
??USART_LINBreakDetectLengthConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??USART_LINBreakDetectLengthConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+32
        BEQ.N    ??USART_LINBreakDetectLengthConfig_1
        MOV      R1,#+548
        LDR.N    R0,??DataTable18_1
        BL       assert_failed
??USART_LINBreakDetectLengthConfig_1:
        LDRH     R0,[R4, #+16]
        MOVW     R1,#+65503
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+16]
        LDRH     R0,[R4, #+16]
        ORRS     R0,R5,R0
        STRH     R0,[R4, #+16]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART_LINCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable17  ;; 0x40013800
        CMP      R4,R0
        BEQ.N    ??USART_LINCmd_0
        LDR.N    R0,??DataTable17_1  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_LINCmd_0
        LDR.N    R0,??DataTable17_2  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_LINCmd_0
        LDR.N    R0,??DataTable18  ;; 0x40004c00
        CMP      R4,R0
        BEQ.N    ??USART_LINCmd_0
        LDR.N    R0,??DataTable19  ;; 0x40005000
        CMP      R4,R0
        BEQ.N    ??USART_LINCmd_0
        MOVW     R1,#+566
        LDR.N    R0,??DataTable18_1
        BL       assert_failed
??USART_LINCmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??USART_LINCmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??USART_LINCmd_1
        MOVW     R1,#+567
        LDR.N    R0,??DataTable18_1
        BL       assert_failed
??USART_LINCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??USART_LINCmd_2
        LDRH     R0,[R4, #+16]
        ORRS     R0,R0,#0x4000
        STRH     R0,[R4, #+16]
        B.N      ??USART_LINCmd_3
??USART_LINCmd_2:
        LDRH     R0,[R4, #+16]
        MOVW     R1,#+49151
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+16]
??USART_LINCmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART_SendData:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable17  ;; 0x40013800
        CMP      R4,R0
        BEQ.N    ??USART_SendData_0
        LDR.N    R0,??DataTable17_1  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_SendData_0
        LDR.N    R0,??DataTable17_2  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_SendData_0
        LDR.N    R0,??DataTable18  ;; 0x40004c00
        CMP      R4,R0
        BEQ.N    ??USART_SendData_0
        LDR.N    R0,??DataTable19  ;; 0x40005000
        CMP      R4,R0
        BEQ.N    ??USART_SendData_0
        MOV      R1,#+592
        LDR.N    R0,??DataTable18_1
        BL       assert_failed
??USART_SendData_0:
        MOV      R0,#+512
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BCC.N    ??USART_SendData_1
        MOVW     R1,#+593
        LDR.N    R0,??DataTable18_1
        BL       assert_failed
??USART_SendData_1:
        LSLS     R0,R5,#+23       ;; ZeroExtS R0,R5,#+23,#+23
        LSRS     R0,R0,#+23
        STRH     R0,[R4, #+4]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART_ReceiveData:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.N    R0,??DataTable17  ;; 0x40013800
        CMP      R4,R0
        BEQ.N    ??USART_ReceiveData_0
        LDR.N    R0,??DataTable17_1  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_ReceiveData_0
        LDR.N    R0,??DataTable17_2  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_ReceiveData_0
        LDR.N    R0,??DataTable18  ;; 0x40004c00
        CMP      R4,R0
        BEQ.N    ??USART_ReceiveData_0
        LDR.N    R0,??DataTable19  ;; 0x40005000
        CMP      R4,R0
        BEQ.N    ??USART_ReceiveData_0
        MOVW     R1,#+609
        LDR.N    R0,??DataTable18_1
        BL       assert_failed
??USART_ReceiveData_0:
        LDRH     R0,[R4, #+4]
        LSLS     R0,R0,#+23       ;; ZeroExtS R0,R0,#+23,#+23
        LSRS     R0,R0,#+23
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART_SendBreak:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.N    R0,??DataTable17  ;; 0x40013800
        CMP      R4,R0
        BEQ.N    ??USART_SendBreak_0
        LDR.N    R0,??DataTable17_1  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_SendBreak_0
        LDR.N    R0,??DataTable17_2  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_SendBreak_0
        LDR.N    R0,??DataTable18  ;; 0x40004c00
        CMP      R4,R0
        BEQ.N    ??USART_SendBreak_0
        LDR.N    R0,??DataTable19  ;; 0x40005000
        CMP      R4,R0
        BEQ.N    ??USART_SendBreak_0
        MOVW     R1,#+625
        LDR.N    R0,??DataTable18_1
        BL       assert_failed
??USART_SendBreak_0:
        LDRH     R0,[R4, #+12]
        ORRS     R0,R0,#0x1
        STRH     R0,[R4, #+12]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART_SetGuardTime:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable17  ;; 0x40013800
        CMP      R4,R0
        BEQ.N    ??USART_SetGuardTime_0
        LDR.N    R0,??DataTable17_1  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_SetGuardTime_0
        LDR.N    R0,??DataTable17_2  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_SetGuardTime_0
        MOVW     R1,#+641
        LDR.N    R0,??DataTable18_1
        BL       assert_failed
??USART_SetGuardTime_0:
        LDRH     R0,[R4, #+24]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STRH     R0,[R4, #+24]
        LDRH     R0,[R4, #+24]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ORRS     R0,R0,R5, LSL #+8
        STRH     R0,[R4, #+24]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART_SetPrescaler:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable17  ;; 0x40013800
        CMP      R4,R0
        BEQ.N    ??USART_SetPrescaler_0
        LDR.N    R0,??DataTable17_1  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_SetPrescaler_0
        LDR.N    R0,??DataTable17_2  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_SetPrescaler_0
        LDR.N    R0,??DataTable18  ;; 0x40004c00
        CMP      R4,R0
        BEQ.N    ??USART_SetPrescaler_0
        LDR.N    R0,??DataTable19  ;; 0x40005000
        CMP      R4,R0
        BEQ.N    ??USART_SetPrescaler_0
        MOVW     R1,#+661
        LDR.N    R0,??DataTable18_1
        BL       assert_failed
??USART_SetPrescaler_0:
        LDRH     R0,[R4, #+24]
        ANDS     R0,R0,#0xFF00
        STRH     R0,[R4, #+24]
        LDRH     R0,[R4, #+24]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ORRS     R0,R5,R0
        STRH     R0,[R4, #+24]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART_SmartCardCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable17  ;; 0x40013800
        CMP      R4,R0
        BEQ.N    ??USART_SmartCardCmd_0
        LDR.N    R0,??DataTable17_1  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_SmartCardCmd_0
        LDR.N    R0,??DataTable17_2  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_SmartCardCmd_0
        MOV      R1,#+680
        LDR.N    R0,??DataTable18_1
        BL       assert_failed
??USART_SmartCardCmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??USART_SmartCardCmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??USART_SmartCardCmd_1
        MOVW     R1,#+681
        LDR.N    R0,??DataTable18_1
        BL       assert_failed
??USART_SmartCardCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??USART_SmartCardCmd_2
        LDRH     R0,[R4, #+20]
        ORRS     R0,R0,#0x20
        STRH     R0,[R4, #+20]
        B.N      ??USART_SmartCardCmd_3
??USART_SmartCardCmd_2:
        LDRH     R0,[R4, #+20]
        MOVW     R1,#+65503
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+20]
??USART_SmartCardCmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART_SmartCardNACKCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable17  ;; 0x40013800
        CMP      R4,R0
        BEQ.N    ??USART_SmartCardNACKCmd_0
        LDR.N    R0,??DataTable17_1  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_SmartCardNACKCmd_0
        LDR.N    R0,??DataTable17_2  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_SmartCardNACKCmd_0
        MOVW     R1,#+705
        LDR.N    R0,??DataTable18_1
        BL       assert_failed
??USART_SmartCardNACKCmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??USART_SmartCardNACKCmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??USART_SmartCardNACKCmd_1
        MOVW     R1,#+706
        LDR.N    R0,??DataTable18_1
        BL       assert_failed
??USART_SmartCardNACKCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??USART_SmartCardNACKCmd_2
        LDRH     R0,[R4, #+20]
        ORRS     R0,R0,#0x10
        STRH     R0,[R4, #+20]
        B.N      ??USART_SmartCardNACKCmd_3
??USART_SmartCardNACKCmd_2:
        LDRH     R0,[R4, #+20]
        MOVW     R1,#+65519
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+20]
??USART_SmartCardNACKCmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17:
        DC32     0x40013800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_1:
        DC32     0x40004400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_2:
        DC32     0x40004800

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART_HalfDuplexCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable26  ;; 0x40013800
        CMP      R4,R0
        BEQ.N    ??USART_HalfDuplexCmd_0
        LDR.W    R0,??DataTable26_1  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_HalfDuplexCmd_0
        LDR.W    R0,??DataTable26_2  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_HalfDuplexCmd_0
        LDR.N    R0,??DataTable18  ;; 0x40004c00
        CMP      R4,R0
        BEQ.N    ??USART_HalfDuplexCmd_0
        LDR.N    R0,??DataTable19  ;; 0x40005000
        CMP      R4,R0
        BEQ.N    ??USART_HalfDuplexCmd_0
        MOVW     R1,#+731
        LDR.N    R0,??DataTable18_1
        BL       assert_failed
??USART_HalfDuplexCmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??USART_HalfDuplexCmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??USART_HalfDuplexCmd_1
        MOV      R1,#+732
        LDR.N    R0,??DataTable18_1
        BL       assert_failed
??USART_HalfDuplexCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??USART_HalfDuplexCmd_2
        LDRH     R0,[R4, #+20]
        ORRS     R0,R0,#0x8
        STRH     R0,[R4, #+20]
        B.N      ??USART_HalfDuplexCmd_3
??USART_HalfDuplexCmd_2:
        LDRH     R0,[R4, #+20]
        MOVW     R1,#+65527
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+20]
??USART_HalfDuplexCmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18:
        DC32     0x40004c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_1:
        DC32     `?<Constant "C:\\\\Users\\\\TTT\\\\Desktop\\\\...">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART_OverSampling8Cmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable26  ;; 0x40013800
        CMP      R4,R0
        BEQ.N    ??USART_OverSampling8Cmd_0
        LDR.W    R0,??DataTable26_1  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_OverSampling8Cmd_0
        LDR.W    R0,??DataTable26_2  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_OverSampling8Cmd_0
        LDR.W    R0,??DataTable26_3  ;; 0x40004c00
        CMP      R4,R0
        BEQ.N    ??USART_OverSampling8Cmd_0
        LDR.N    R0,??DataTable19  ;; 0x40005000
        CMP      R4,R0
        BEQ.N    ??USART_OverSampling8Cmd_0
        MOVW     R1,#+762
        LDR.W    R0,??DataTable26_4
        BL       assert_failed
??USART_OverSampling8Cmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??USART_OverSampling8Cmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??USART_OverSampling8Cmd_1
        MOVW     R1,#+763
        LDR.W    R0,??DataTable26_4
        BL       assert_failed
??USART_OverSampling8Cmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??USART_OverSampling8Cmd_2
        LDRH     R0,[R4, #+12]
        ORRS     R0,R0,#0x8000
        STRH     R0,[R4, #+12]
        B.N      ??USART_OverSampling8Cmd_3
??USART_OverSampling8Cmd_2:
        LDRH     R0,[R4, #+12]
        LSLS     R0,R0,#+17       ;; ZeroExtS R0,R0,#+17,#+17
        LSRS     R0,R0,#+17
        STRH     R0,[R4, #+12]
??USART_OverSampling8Cmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19:
        DC32     0x40005000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_1:
        DC32     0x44aa21

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART_OneBitMethodCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable26  ;; 0x40013800
        CMP      R4,R0
        BEQ.N    ??USART_OneBitMethodCmd_0
        LDR.W    R0,??DataTable26_1  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_OneBitMethodCmd_0
        LDR.W    R0,??DataTable26_2  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_OneBitMethodCmd_0
        LDR.W    R0,??DataTable26_3  ;; 0x40004c00
        CMP      R4,R0
        BEQ.N    ??USART_OneBitMethodCmd_0
        LDR.W    R0,??DataTable26_5  ;; 0x40005000
        CMP      R4,R0
        BEQ.N    ??USART_OneBitMethodCmd_0
        MOVW     R1,#+789
        LDR.W    R0,??DataTable26_4
        BL       assert_failed
??USART_OneBitMethodCmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??USART_OneBitMethodCmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??USART_OneBitMethodCmd_1
        MOVW     R1,#+790
        LDR.W    R0,??DataTable26_4
        BL       assert_failed
??USART_OneBitMethodCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??USART_OneBitMethodCmd_2
        LDRH     R0,[R4, #+20]
        ORRS     R0,R0,#0x800
        STRH     R0,[R4, #+20]
        B.N      ??USART_OneBitMethodCmd_3
??USART_OneBitMethodCmd_2:
        LDRH     R0,[R4, #+20]
        MOVW     R1,#+63487
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+20]
??USART_OneBitMethodCmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART_IrDAConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable26  ;; 0x40013800
        CMP      R4,R0
        BEQ.N    ??USART_IrDAConfig_0
        LDR.W    R0,??DataTable26_1  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_IrDAConfig_0
        LDR.W    R0,??DataTable26_2  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_IrDAConfig_0
        LDR.W    R0,??DataTable26_3  ;; 0x40004c00
        CMP      R4,R0
        BEQ.N    ??USART_IrDAConfig_0
        LDR.W    R0,??DataTable26_5  ;; 0x40005000
        CMP      R4,R0
        BEQ.N    ??USART_IrDAConfig_0
        MOVW     R1,#+818
        LDR.W    R0,??DataTable26_4
        BL       assert_failed
??USART_IrDAConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4
        BEQ.N    ??USART_IrDAConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??USART_IrDAConfig_1
        MOVW     R1,#+819
        LDR.W    R0,??DataTable26_4
        BL       assert_failed
??USART_IrDAConfig_1:
        LDRH     R0,[R4, #+20]
        MOVW     R1,#+65531
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+20]
        LDRH     R0,[R4, #+20]
        ORRS     R0,R5,R0
        STRH     R0,[R4, #+20]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART_IrDACmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable26  ;; 0x40013800
        CMP      R4,R0
        BEQ.N    ??USART_IrDACmd_0
        LDR.W    R0,??DataTable26_1  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_IrDACmd_0
        LDR.W    R0,??DataTable26_2  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_IrDACmd_0
        LDR.W    R0,??DataTable26_3  ;; 0x40004c00
        CMP      R4,R0
        BEQ.N    ??USART_IrDACmd_0
        LDR.W    R0,??DataTable26_5  ;; 0x40005000
        CMP      R4,R0
        BEQ.N    ??USART_IrDACmd_0
        MOVW     R1,#+837
        LDR.W    R0,??DataTable26_4
        BL       assert_failed
??USART_IrDACmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??USART_IrDACmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??USART_IrDACmd_1
        MOVW     R1,#+838
        LDR.W    R0,??DataTable26_4
        BL       assert_failed
??USART_IrDACmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??USART_IrDACmd_2
        LDRH     R0,[R4, #+20]
        ORRS     R0,R0,#0x2
        STRH     R0,[R4, #+20]
        B.N      ??USART_IrDACmd_3
??USART_IrDACmd_2:
        LDRH     R0,[R4, #+20]
        MOVW     R1,#+65533
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+20]
??USART_IrDACmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART_GetFlagStatus:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.N    R0,??DataTable26  ;; 0x40013800
        CMP      R4,R0
        BEQ.N    ??USART_GetFlagStatus_0
        LDR.N    R0,??DataTable26_1  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_GetFlagStatus_0
        LDR.N    R0,??DataTable26_2  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_GetFlagStatus_0
        LDR.N    R0,??DataTable26_3  ;; 0x40004c00
        CMP      R4,R0
        BEQ.N    ??USART_GetFlagStatus_0
        LDR.N    R0,??DataTable26_5  ;; 0x40005000
        CMP      R4,R0
        BEQ.N    ??USART_GetFlagStatus_0
        MOVW     R1,#+875
        LDR.N    R0,??DataTable26_4
        BL       assert_failed
??USART_GetFlagStatus_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+1
        BEQ.N    ??USART_GetFlagStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+128
        BEQ.N    ??USART_GetFlagStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+64
        BEQ.N    ??USART_GetFlagStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+32
        BEQ.N    ??USART_GetFlagStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+16
        BEQ.N    ??USART_GetFlagStatus_1
        MOV      R0,#+256
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??USART_GetFlagStatus_1
        MOV      R0,#+512
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??USART_GetFlagStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8
        BEQ.N    ??USART_GetFlagStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4
        BEQ.N    ??USART_GetFlagStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+2
        BEQ.N    ??USART_GetFlagStatus_1
        MOV      R1,#+876
        LDR.N    R0,??DataTable26_4
        BL       assert_failed
??USART_GetFlagStatus_1:
        MOV      R0,#+512
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BNE.N    ??USART_GetFlagStatus_2
        LDR.N    R0,??DataTable26  ;; 0x40013800
        CMP      R4,R0
        BEQ.N    ??USART_GetFlagStatus_2
        LDR.N    R0,??DataTable26_1  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_GetFlagStatus_2
        LDR.N    R0,??DataTable26_2  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_GetFlagStatus_2
        MOV      R1,#+880
        LDR.N    R0,??DataTable26_4
        BL       assert_failed
??USART_GetFlagStatus_2:
        LDRH     R0,[R4, #+0]
        TST      R0,R5
        BEQ.N    ??USART_GetFlagStatus_3
        MOVS     R0,#+1
        MOVS     R6,R0
        B.N      ??USART_GetFlagStatus_4
??USART_GetFlagStatus_3:
        MOVS     R0,#+0
        MOVS     R6,R0
??USART_GetFlagStatus_4:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART_ClearFlag:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable26  ;; 0x40013800
        CMP      R4,R0
        BEQ.N    ??USART_ClearFlag_0
        LDR.N    R0,??DataTable26_1  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_ClearFlag_0
        LDR.N    R0,??DataTable26_2  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_ClearFlag_0
        LDR.N    R0,??DataTable26_3  ;; 0x40004c00
        CMP      R4,R0
        BEQ.N    ??USART_ClearFlag_0
        LDR.N    R0,??DataTable26_5  ;; 0x40005000
        CMP      R4,R0
        BEQ.N    ??USART_ClearFlag_0
        MOVW     R1,#+923
        LDR.N    R0,??DataTable26_4
        BL       assert_failed
??USART_ClearFlag_0:
        MOVW     R0,#+64671
        TST      R5,R0
        BNE.N    ??USART_ClearFlag_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BNE.N    ??USART_ClearFlag_2
??USART_ClearFlag_1:
        MOV      R1,#+924
        LDR.N    R0,??DataTable26_4
        BL       assert_failed
??USART_ClearFlag_2:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        LSLS     R0,R5,#+22
        BPL.N    ??USART_ClearFlag_3
        LDR.N    R0,??DataTable26  ;; 0x40013800
        CMP      R4,R0
        BEQ.N    ??USART_ClearFlag_3
        LDR.N    R0,??DataTable26_1  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_ClearFlag_3
        LDR.N    R0,??DataTable26_2  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_ClearFlag_3
        MOV      R1,#+928
        LDR.N    R0,??DataTable26_4
        BL       assert_failed
??USART_ClearFlag_3:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        MVNS     R0,R5
        STRH     R0,[R4, #+0]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART_GetITStatus:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        MOVS     R7,#+0
        MOVS     R8,#+0
        MOVS     R9,#+0
        LDR.N    R0,??DataTable26  ;; 0x40013800
        CMP      R4,R0
        BEQ.N    ??USART_GetITStatus_0
        LDR.N    R0,??DataTable26_1  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_GetITStatus_0
        LDR.N    R0,??DataTable26_2  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_GetITStatus_0
        LDR.N    R0,??DataTable26_3  ;; 0x40004c00
        CMP      R4,R0
        BEQ.N    ??USART_GetITStatus_0
        LDR.N    R0,??DataTable26_5  ;; 0x40005000
        CMP      R4,R0
        BEQ.N    ??USART_GetITStatus_0
        MOVW     R1,#+958
        LDR.N    R0,??DataTable26_4
        BL       assert_failed
??USART_GetITStatus_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+40
        BEQ.N    ??USART_GetITStatus_1
        MOVW     R0,#+1831
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??USART_GetITStatus_1
        MOVW     R0,#+1574
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??USART_GetITStatus_1
        MOVW     R0,#+1317
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??USART_GetITStatus_1
        MOVW     R0,#+1060
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??USART_GetITStatus_1
        MOVW     R0,#+2118
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??USART_GetITStatus_1
        MOVW     R0,#+2410
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??USART_GetITStatus_1
        MOV      R0,#+864
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??USART_GetITStatus_1
        MOV      R0,#+608
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??USART_GetITStatus_1
        MOV      R0,#+352
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??USART_GetITStatus_1
        MOVW     R1,#+959
        LDR.N    R0,??DataTable26_4
        BL       assert_failed
??USART_GetITStatus_1:
        MOVW     R0,#+2410
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BNE.N    ??USART_GetITStatus_2
        LDR.N    R0,??DataTable26  ;; 0x40013800
        CMP      R4,R0
        BEQ.N    ??USART_GetITStatus_2
        LDR.N    R0,??DataTable26_1  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_GetITStatus_2
        LDR.N    R0,??DataTable26_2  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_GetITStatus_2
        MOVW     R1,#+963
        LDR.N    R0,??DataTable26_4
        BL       assert_failed
??USART_GetITStatus_2:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LSRS     R0,R0,#+5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOV      R8,R0
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        ANDS     R0,R5,#0x1F
        MOVS     R7,R0
        MOVS     R0,#+1
        LSLS     R7,R0,R7
        CMP      R8,#+1
        BNE.N    ??USART_GetITStatus_3
        LDRH     R0,[R4, #+12]
        ANDS     R7,R0,R7
        B.N      ??USART_GetITStatus_4
??USART_GetITStatus_3:
        CMP      R8,#+2
        BNE.N    ??USART_GetITStatus_5
        LDRH     R0,[R4, #+16]
        ANDS     R7,R0,R7
        B.N      ??USART_GetITStatus_4
??USART_GetITStatus_5:
        LDRH     R0,[R4, #+20]
        ANDS     R7,R0,R7
??USART_GetITStatus_4:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        LSRS     R0,R5,#+8
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOVS     R6,R0
        MOVS     R0,#+1
        LSLS     R6,R0,R6
        LDRH     R0,[R4, #+0]
        ANDS     R6,R0,R6
        CMP      R7,#+0
        BEQ.N    ??USART_GetITStatus_6
        CMP      R6,#+0
        BEQ.N    ??USART_GetITStatus_6
        MOVS     R0,#+1
        MOV      R9,R0
        B.N      ??USART_GetITStatus_7
??USART_GetITStatus_6:
        MOVS     R0,#+0
        MOV      R9,R0
??USART_GetITStatus_7:
        MOV      R0,R9
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4-R9,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART_ClearITPendingBit:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        MOVS     R7,#+0
        LDR.N    R0,??DataTable26  ;; 0x40013800
        CMP      R4,R0
        BEQ.N    ??USART_ClearITPendingBit_0
        LDR.N    R0,??DataTable26_1  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_ClearITPendingBit_0
        LDR.N    R0,??DataTable26_2  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_ClearITPendingBit_0
        LDR.N    R0,??DataTable26_3  ;; 0x40004c00
        CMP      R4,R0
        BEQ.N    ??USART_ClearITPendingBit_0
        LDR.N    R0,??DataTable26_5  ;; 0x40005000
        CMP      R4,R0
        BEQ.N    ??USART_ClearITPendingBit_0
        MOVW     R1,#+1031
        LDR.N    R0,??DataTable26_4
        BL       assert_failed
??USART_ClearITPendingBit_0:
        MOVW     R0,#+1574
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??USART_ClearITPendingBit_1
        MOVW     R0,#+1317
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??USART_ClearITPendingBit_1
        MOVW     R0,#+2118
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??USART_ClearITPendingBit_1
        MOVW     R0,#+2410
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??USART_ClearITPendingBit_1
        MOV      R1,#+1032
        LDR.N    R0,??DataTable26_4
        BL       assert_failed
??USART_ClearITPendingBit_1:
        MOVW     R0,#+2410
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BNE.N    ??USART_ClearITPendingBit_2
        LDR.N    R0,??DataTable26  ;; 0x40013800
        CMP      R4,R0
        BEQ.N    ??USART_ClearITPendingBit_2
        LDR.N    R0,??DataTable26_1  ;; 0x40004400
        CMP      R4,R0
        BEQ.N    ??USART_ClearITPendingBit_2
        LDR.N    R0,??DataTable26_2  ;; 0x40004800
        CMP      R4,R0
        BEQ.N    ??USART_ClearITPendingBit_2
        MOVW     R1,#+1036
        LDR.N    R0,??DataTable26_4
        BL       assert_failed
??USART_ClearITPendingBit_2:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        LSRS     R0,R5,#+8
        MOVS     R6,R0
        MOVS     R0,#+1
        LSLS     R0,R0,R6
        MOVS     R7,R0
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        MVNS     R0,R7
        STRH     R0,[R4, #+0]
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26:
        DC32     0x40013800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_1:
        DC32     0x40004400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_2:
        DC32     0x40004800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_3:
        DC32     0x40004c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_4:
        DC32     `?<Constant "C:\\\\Users\\\\TTT\\\\Desktop\\\\...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26_5:
        DC32     0x40005000

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
        DC8 78H, 5FH, 75H, 73H, 61H, 72H, 74H, 2EH
        DC8 63H, 0
        DC8 0, 0

        END
// 
//   100 bytes in section .rodata
// 3 782 bytes in section .text
// 
// 3 782 bytes of CODE  memory
//   100 bytes of CONST memory
//
//Errors: none
//Warnings: none
