///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    13/Jul/2022  18:47:24 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\TTT\Desktop\zz.STDFW\00.Study\Libraries\STM32F /
//                    10x_StdPeriph_Driver\src\stm32f10x_dac.c                /
//    Command line =  C:\Users\TTT\Desktop\zz.STDFW\00.Study\Libraries\STM32F /
//                    10x_StdPeriph_Driver\src\stm32f10x_dac.c -D             /
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
//                    Debug\List\stm32f10x_dac.s                              /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm32f10x_dac

        #define SHT_PROGBITS 0x1

        EXTERN RCC_APB1PeriphResetCmd
        EXTERN assert_failed

        PUBLIC DAC_Cmd
        PUBLIC DAC_DMACmd
        PUBLIC DAC_DeInit
        PUBLIC DAC_DualSoftwareTriggerCmd
        PUBLIC DAC_GetDataOutputValue
        PUBLIC DAC_Init
        PUBLIC DAC_SetChannel1Data
        PUBLIC DAC_SetChannel2Data
        PUBLIC DAC_SetDualChannelData
        PUBLIC DAC_SoftwareTriggerCmd
        PUBLIC DAC_StructInit
        PUBLIC DAC_WaveGenerationCmd


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DAC_DeInit:
        PUSH     {R7,LR}
        MOVS     R1,#+1
        MOVS     R0,#+536870912
        BL       RCC_APB1PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+536870912
        BL       RCC_APB1PeriphResetCmd
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DAC_Init:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        MOVS     R7,#+0
        LDR      R0,[R5, #+0]
        CMP      R0,#+0
        BEQ.N    ??DAC_Init_0
        LDR      R0,[R5, #+0]
        CMP      R0,#+4
        BEQ.N    ??DAC_Init_0
        LDR      R0,[R5, #+0]
        CMP      R0,#+12
        BEQ.N    ??DAC_Init_0
        LDR      R0,[R5, #+0]
        CMP      R0,#+20
        BEQ.N    ??DAC_Init_0
        LDR      R0,[R5, #+0]
        CMP      R0,#+28
        BEQ.N    ??DAC_Init_0
        LDR      R0,[R5, #+0]
        CMP      R0,#+36
        BEQ.N    ??DAC_Init_0
        LDR      R0,[R5, #+0]
        CMP      R0,#+44
        BEQ.N    ??DAC_Init_0
        LDR      R0,[R5, #+0]
        CMP      R0,#+52
        BEQ.N    ??DAC_Init_0
        LDR      R0,[R5, #+0]
        CMP      R0,#+60
        BEQ.N    ??DAC_Init_0
        MOVS     R1,#+120
        LDR.W    R0,??DataTable9
        BL       assert_failed
??DAC_Init_0:
        LDR      R0,[R5, #+4]
        CMP      R0,#+0
        BEQ.N    ??DAC_Init_1
        LDR      R0,[R5, #+4]
        CMP      R0,#+64
        BEQ.N    ??DAC_Init_1
        LDR      R0,[R5, #+4]
        CMP      R0,#+128
        BEQ.N    ??DAC_Init_1
        MOVS     R1,#+121
        LDR.W    R0,??DataTable9
        BL       assert_failed
??DAC_Init_1:
        LDR      R0,[R5, #+8]
        CMP      R0,#+0
        BEQ.N    ??DAC_Init_2
        LDR      R0,[R5, #+8]
        MOV      R1,#+256
        CMP      R0,R1
        BEQ.N    ??DAC_Init_2
        LDR      R0,[R5, #+8]
        MOV      R1,#+512
        CMP      R0,R1
        BEQ.N    ??DAC_Init_2
        LDR      R0,[R5, #+8]
        MOV      R1,#+768
        CMP      R0,R1
        BEQ.N    ??DAC_Init_2
        LDR      R0,[R5, #+8]
        CMP      R0,#+1024
        BEQ.N    ??DAC_Init_2
        LDR      R0,[R5, #+8]
        CMP      R0,#+1280
        BEQ.N    ??DAC_Init_2
        LDR      R0,[R5, #+8]
        CMP      R0,#+1536
        BEQ.N    ??DAC_Init_2
        LDR      R0,[R5, #+8]
        CMP      R0,#+1792
        BEQ.N    ??DAC_Init_2
        LDR      R0,[R5, #+8]
        CMP      R0,#+2048
        BEQ.N    ??DAC_Init_2
        LDR      R0,[R5, #+8]
        CMP      R0,#+2304
        BEQ.N    ??DAC_Init_2
        LDR      R0,[R5, #+8]
        CMP      R0,#+2560
        BEQ.N    ??DAC_Init_2
        LDR      R0,[R5, #+8]
        CMP      R0,#+2816
        BEQ.N    ??DAC_Init_2
        LDR      R0,[R5, #+8]
        CMP      R0,#+0
        BEQ.N    ??DAC_Init_2
        LDR      R0,[R5, #+8]
        MOV      R1,#+256
        CMP      R0,R1
        BEQ.N    ??DAC_Init_2
        LDR      R0,[R5, #+8]
        MOV      R1,#+512
        CMP      R0,R1
        BEQ.N    ??DAC_Init_2
        LDR      R0,[R5, #+8]
        MOV      R1,#+768
        CMP      R0,R1
        BEQ.N    ??DAC_Init_2
        LDR      R0,[R5, #+8]
        CMP      R0,#+1024
        BEQ.N    ??DAC_Init_2
        LDR      R0,[R5, #+8]
        CMP      R0,#+1280
        BEQ.N    ??DAC_Init_2
        LDR      R0,[R5, #+8]
        CMP      R0,#+1536
        BEQ.N    ??DAC_Init_2
        LDR      R0,[R5, #+8]
        CMP      R0,#+1792
        BEQ.N    ??DAC_Init_2
        LDR      R0,[R5, #+8]
        CMP      R0,#+2048
        BEQ.N    ??DAC_Init_2
        LDR      R0,[R5, #+8]
        CMP      R0,#+2304
        BEQ.N    ??DAC_Init_2
        LDR      R0,[R5, #+8]
        CMP      R0,#+2560
        BEQ.N    ??DAC_Init_2
        LDR      R0,[R5, #+8]
        CMP      R0,#+2816
        BEQ.N    ??DAC_Init_2
        MOVS     R1,#+122
        LDR.W    R0,??DataTable9
        BL       assert_failed
??DAC_Init_2:
        LDR      R0,[R5, #+12]
        CMP      R0,#+0
        BEQ.N    ??DAC_Init_3
        LDR      R0,[R5, #+12]
        CMP      R0,#+2
        BEQ.N    ??DAC_Init_3
        MOVS     R1,#+123
        LDR.N    R0,??DataTable9
        BL       assert_failed
??DAC_Init_3:
        LDR.N    R0,??DataTable9_1  ;; 0x40007400
        LDR      R0,[R0, #+0]
        MOVS     R6,R0
        MOVW     R0,#+4094
        LSLS     R0,R0,R4
        BICS     R6,R6,R0
        LDR      R0,[R5, #+0]
        LDR      R1,[R5, #+4]
        ORRS     R0,R1,R0
        LDR      R1,[R5, #+8]
        ORRS     R0,R1,R0
        LDR      R1,[R5, #+12]
        ORRS     R0,R1,R0
        MOVS     R7,R0
        LSLS     R0,R7,R4
        ORRS     R6,R0,R6
        LDR.N    R0,??DataTable9_1  ;; 0x40007400
        STR      R6,[R0, #+0]
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DAC_StructInit:
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DAC_Cmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        CMP      R4,#+0
        BEQ.N    ??DAC_Cmd_0
        CMP      R4,#+16
        BEQ.N    ??DAC_Cmd_0
        MOVS     R1,#+175
        LDR.N    R0,??DataTable9
        BL       assert_failed
??DAC_Cmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??DAC_Cmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??DAC_Cmd_1
        MOVS     R1,#+176
        LDR.N    R0,??DataTable9
        BL       assert_failed
??DAC_Cmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??DAC_Cmd_2
        LDR.N    R0,??DataTable9_1  ;; 0x40007400
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        LSLS     R1,R1,R4
        ORRS     R0,R1,R0
        LDR.N    R1,??DataTable9_1  ;; 0x40007400
        STR      R0,[R1, #+0]
        B.N      ??DAC_Cmd_3
??DAC_Cmd_2:
        LDR.N    R0,??DataTable9_1  ;; 0x40007400
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        LSLS     R1,R1,R4
        BICS     R0,R0,R1
        LDR.N    R1,??DataTable9_1  ;; 0x40007400
        STR      R0,[R1, #+0]
??DAC_Cmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DAC_DMACmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        CMP      R4,#+0
        BEQ.N    ??DAC_DMACmd_0
        CMP      R4,#+16
        BEQ.N    ??DAC_DMACmd_0
        MOVS     R1,#+235
        LDR.N    R0,??DataTable9
        BL       assert_failed
??DAC_DMACmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??DAC_DMACmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??DAC_DMACmd_1
        MOVS     R1,#+236
        LDR.N    R0,??DataTable9
        BL       assert_failed
??DAC_DMACmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??DAC_DMACmd_2
        LDR.N    R0,??DataTable9_1  ;; 0x40007400
        LDR      R0,[R0, #+0]
        MOV      R1,#+4096
        LSLS     R1,R1,R4
        ORRS     R0,R1,R0
        LDR.N    R1,??DataTable9_1  ;; 0x40007400
        STR      R0,[R1, #+0]
        B.N      ??DAC_DMACmd_3
??DAC_DMACmd_2:
        LDR.N    R0,??DataTable9_1  ;; 0x40007400
        LDR      R0,[R0, #+0]
        MOV      R1,#+4096
        LSLS     R1,R1,R4
        BICS     R0,R0,R1
        LDR.N    R1,??DataTable9_1  ;; 0x40007400
        STR      R0,[R1, #+0]
??DAC_DMACmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DAC_SoftwareTriggerCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        CMP      R4,#+0
        BEQ.N    ??DAC_SoftwareTriggerCmd_0
        CMP      R4,#+16
        BEQ.N    ??DAC_SoftwareTriggerCmd_0
        MOV      R1,#+262
        LDR.N    R0,??DataTable9
        BL       assert_failed
??DAC_SoftwareTriggerCmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??DAC_SoftwareTriggerCmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??DAC_SoftwareTriggerCmd_1
        MOVW     R1,#+263
        LDR.N    R0,??DataTable9
        BL       assert_failed
??DAC_SoftwareTriggerCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??DAC_SoftwareTriggerCmd_2
        LDR.N    R0,??DataTable9_2  ;; 0x40007404
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        LSRS     R2,R4,#+4
        LSLS     R1,R1,R2
        ORRS     R0,R1,R0
        LDR.N    R1,??DataTable9_2  ;; 0x40007404
        STR      R0,[R1, #+0]
        B.N      ??DAC_SoftwareTriggerCmd_3
??DAC_SoftwareTriggerCmd_2:
        LDR.N    R0,??DataTable9_2  ;; 0x40007404
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        LSRS     R2,R4,#+4
        LSLS     R1,R1,R2
        BICS     R0,R0,R1
        LDR.N    R1,??DataTable9_2  ;; 0x40007404
        STR      R0,[R1, #+0]
??DAC_SoftwareTriggerCmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DAC_DualSoftwareTriggerCmd:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??DAC_DualSoftwareTriggerCmd_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??DAC_DualSoftwareTriggerCmd_0
        MOV      R1,#+286
        LDR.N    R0,??DataTable9
        BL       assert_failed
??DAC_DualSoftwareTriggerCmd_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??DAC_DualSoftwareTriggerCmd_1
        LDR.N    R0,??DataTable9_2  ;; 0x40007404
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x3
        LDR.N    R1,??DataTable9_2  ;; 0x40007404
        STR      R0,[R1, #+0]
        B.N      ??DAC_DualSoftwareTriggerCmd_2
??DAC_DualSoftwareTriggerCmd_1:
        LDR.N    R0,??DataTable9_2  ;; 0x40007404
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+2
        LSLS     R0,R0,#+2
        LDR.N    R1,??DataTable9_2  ;; 0x40007404
        STR      R0,[R1, #+0]
??DAC_DualSoftwareTriggerCmd_2:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DAC_WaveGenerationCmd:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        CMP      R4,#+0
        BEQ.N    ??DAC_WaveGenerationCmd_0
        CMP      R4,#+16
        BEQ.N    ??DAC_WaveGenerationCmd_0
        MOV      R1,#+316
        LDR.N    R0,??DataTable9
        BL       assert_failed
??DAC_WaveGenerationCmd_0:
        CMP      R5,#+64
        BEQ.N    ??DAC_WaveGenerationCmd_1
        CMP      R5,#+128
        BEQ.N    ??DAC_WaveGenerationCmd_1
        MOVW     R1,#+317
        LDR.N    R0,??DataTable9
        BL       assert_failed
??DAC_WaveGenerationCmd_1:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??DAC_WaveGenerationCmd_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BEQ.N    ??DAC_WaveGenerationCmd_2
        MOV      R1,#+318
        LDR.N    R0,??DataTable9
        BL       assert_failed
??DAC_WaveGenerationCmd_2:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??DAC_WaveGenerationCmd_3
        LDR.N    R0,??DataTable9_1  ;; 0x40007400
        LDR      R0,[R0, #+0]
        LSLS     R1,R5,R4
        ORRS     R0,R1,R0
        LDR.N    R1,??DataTable9_1  ;; 0x40007400
        STR      R0,[R1, #+0]
        B.N      ??DAC_WaveGenerationCmd_4
??DAC_WaveGenerationCmd_3:
        LDR.N    R0,??DataTable9_1  ;; 0x40007400
        LDR      R0,[R0, #+0]
        LSLS     R1,R5,R4
        BICS     R0,R0,R1
        LDR.N    R1,??DataTable9_1  ;; 0x40007400
        STR      R0,[R1, #+0]
??DAC_WaveGenerationCmd_4:
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DAC_SetChannel1Data:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        CMP      R4,#+0
        BEQ.N    ??DAC_SetChannel1Data_0
        CMP      R4,#+4
        BEQ.N    ??DAC_SetChannel1Data_0
        CMP      R4,#+8
        BEQ.N    ??DAC_SetChannel1Data_0
        MOV      R1,#+346
        LDR.N    R0,??DataTable9
        BL       assert_failed
??DAC_SetChannel1Data_0:
        MOVW     R0,#+65521
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BCC.N    ??DAC_SetChannel1Data_1
        MOVW     R1,#+347
        LDR.N    R0,??DataTable9
        BL       assert_failed
??DAC_SetChannel1Data_1:
        LDR.N    R0,??DataTable9_1  ;; 0x40007400
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
        ADDS     R1,R4,#+8
        ADDS     R0,R1,R0
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        STR      R5,[R0, #+0]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DAC_SetChannel2Data:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        CMP      R4,#+0
        BEQ.N    ??DAC_SetChannel2Data_0
        CMP      R4,#+4
        BEQ.N    ??DAC_SetChannel2Data_0
        CMP      R4,#+8
        BEQ.N    ??DAC_SetChannel2Data_0
        MOVW     R1,#+371
        LDR.N    R0,??DataTable9
        BL       assert_failed
??DAC_SetChannel2Data_0:
        MOVW     R0,#+65521
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BCC.N    ??DAC_SetChannel2Data_1
        MOV      R1,#+372
        LDR.N    R0,??DataTable9
        BL       assert_failed
??DAC_SetChannel2Data_1:
        LDR.N    R0,??DataTable9_1  ;; 0x40007400
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
        ADDS     R1,R4,#+20
        ADDS     R0,R1,R0
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        STR      R5,[R0, #+0]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DAC_SetDualChannelData:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,#+0
        MOVS     R8,#+0
        CMP      R4,#+0
        BEQ.N    ??DAC_SetDualChannelData_0
        CMP      R4,#+4
        BEQ.N    ??DAC_SetDualChannelData_0
        CMP      R4,#+8
        BEQ.N    ??DAC_SetDualChannelData_0
        MOV      R1,#+400
        LDR.N    R0,??DataTable9
        BL       assert_failed
??DAC_SetDualChannelData_0:
        MOVW     R0,#+65521
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,R0
        BCC.N    ??DAC_SetDualChannelData_1
        MOVW     R1,#+401
        LDR.N    R0,??DataTable9
        BL       assert_failed
??DAC_SetDualChannelData_1:
        MOVW     R0,#+65521
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BCC.N    ??DAC_SetDualChannelData_2
        MOV      R1,#+402
        LDR.N    R0,??DataTable9
        BL       assert_failed
??DAC_SetDualChannelData_2:
        CMP      R4,#+8
        BNE.N    ??DAC_SetDualChannelData_3
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        ORRS     R0,R6,R5, LSL #+8
        MOVS     R7,R0
        B.N      ??DAC_SetDualChannelData_4
??DAC_SetDualChannelData_3:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        ORRS     R0,R6,R5, LSL #+16
        MOVS     R7,R0
??DAC_SetDualChannelData_4:
        LDR.N    R0,??DataTable9_1  ;; 0x40007400
        MOV      R8,R0
        ADDS     R0,R4,#+32
        ADDS     R8,R0,R8
        STR      R7,[R8, #+0]
        POP      {R4-R8,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DAC_GetDataOutputValue:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        CMP      R4,#+0
        BEQ.N    ??DAC_GetDataOutputValue_0
        CMP      R4,#+16
        BEQ.N    ??DAC_GetDataOutputValue_0
        MOV      R1,#+434
        LDR.N    R0,??DataTable9
        BL       assert_failed
??DAC_GetDataOutputValue_0:
        LDR.N    R0,??DataTable9_1  ;; 0x40007400
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
        LSRS     R1,R4,#+2
        ADDS     R1,R1,#+44
        ADDS     R0,R1,R0
        STR      R0,[SP, #+0]
        LDR      R0,[SP, #+0]
        LDR      R0,[R0, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R1,R2,R4,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9:
        DC32     `?<Constant "C:\\\\Users\\\\TTT\\\\Desktop\\\\...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_1:
        DC32     0x40007400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable9_2:
        DC32     0x40007404

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
        DC8 78H, 5FH, 64H, 61H, 63H, 2EH, 63H, 0

        END
// 
//    96 bytes in section .rodata
// 1 166 bytes in section .text
// 
// 1 166 bytes of CODE  memory
//    96 bytes of CONST memory
//
//Errors: none
//Warnings: none
