///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    08/Jul/2022  11:57:31 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\TTT\Desktop\zz.STDFW\00.Study\src\I2c.c        /
//    Command line =  C:\Users\TTT\Desktop\zz.STDFW\00.Study\src\I2c.c -D     /
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
//                    Debug\List\I2c.s                                        /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME I2c

        #define SHT_PROGBITS 0x1

        EXTERN Delay_1ms
        EXTERN Delay_1us
        EXTERN Delay_Us
        EXTERN Delay_ms
        EXTERN GPIO_Init
        EXTERN GPIO_ReadInputDataBit
        EXTERN GPIO_ResetBits
        EXTERN GPIO_SetBits
        EXTERN I2C_AcknowledgeConfig
        EXTERN I2C_CheckEvent
        EXTERN I2C_Cmd
        EXTERN I2C_GenerateSTART
        EXTERN I2C_GenerateSTOP
        EXTERN I2C_ReceiveData
        EXTERN I2C_Send7bitAddress
        EXTERN I2C_SendData

        PUBLIC EpromRead
        PUBLIC EpromWrite
        PUBLIC I2C1_AckWait
        PUBLIC I2C1_NakSend
        PUBLIC I2C1_Read
        PUBLIC I2C1_Read_8bit
        PUBLIC I2C1_Send_8bit
        PUBLIC I2C1_Start
        PUBLIC I2C1_Stop
        PUBLIC I2C1_Write
        PUBLIC I2C2_AckWait
        PUBLIC I2C2_NakSend
        PUBLIC I2C2_Read
        PUBLIC I2C2_Read_8bit
        PUBLIC I2C2_Send_8bit
        PUBLIC I2C2_Start
        PUBLIC I2C2_Stop
        PUBLIC I2C2_Write
        PUBLIC SDA1_InputModeSet
        PUBLIC SDA1_OutputModeSet
        PUBLIC SDA2_InputModeSet
        PUBLIC SDA2_OutputModeSet
        PUBLIC TW9900_I2C1_ByteRead
        PUBLIC TW9900_I2C1_ByteWrite


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDA1_InputModeSet:
        PUSH     {R7,LR}
        MOVS     R0,#+128
        STRH     R0,[SP, #+0]
        MOVS     R0,#+4
        STRB     R0,[SP, #+3]
        MOVS     R0,#+3
        STRB     R0,[SP, #+2]
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable17  ;; 0x40010c00
        BL       GPIO_Init
        MOVS     R0,#+100
        BL       Delay_Us
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDA2_InputModeSet:
        PUSH     {R7,LR}
        MOV      R0,#+2048
        STRH     R0,[SP, #+0]
        MOVS     R0,#+4
        STRB     R0,[SP, #+3]
        MOVS     R0,#+3
        STRB     R0,[SP, #+2]
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable17  ;; 0x40010c00
        BL       GPIO_Init
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDA1_OutputModeSet:
        PUSH     {R7,LR}
        MOVS     R0,#+128
        STRH     R0,[SP, #+0]
        MOVS     R0,#+20
        STRB     R0,[SP, #+3]
        MOVS     R0,#+3
        STRB     R0,[SP, #+2]
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable17  ;; 0x40010c00
        BL       GPIO_Init
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SDA2_OutputModeSet:
        PUSH     {R7,LR}
        MOV      R0,#+2048
        STRH     R0,[SP, #+0]
        MOVS     R0,#+20
        STRB     R0,[SP, #+3]
        MOVS     R0,#+3
        STRB     R0,[SP, #+2]
        ADD      R1,SP,#+0
        LDR.W    R0,??DataTable17  ;; 0x40010c00
        BL       GPIO_Init
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C1_Start:
        PUSH     {R7,LR}
        MOVS     R1,#+128
        LDR.W    R0,??DataTable17  ;; 0x40010c00
        BL       GPIO_SetBits
        MOVS     R1,#+64
        LDR.W    R0,??DataTable17  ;; 0x40010c00
        BL       GPIO_SetBits
        MOVS     R0,#+10
        BL       Delay_Us
        MOVS     R1,#+128
        LDR.W    R0,??DataTable17  ;; 0x40010c00
        BL       GPIO_ResetBits
        MOVS     R0,#+10
        BL       Delay_Us
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C2_Start:
        PUSH     {R7,LR}
        MOV      R1,#+2048
        LDR.W    R0,??DataTable17  ;; 0x40010c00
        BL       GPIO_SetBits
        MOV      R1,#+1024
        LDR.W    R0,??DataTable17  ;; 0x40010c00
        BL       GPIO_SetBits
        MOVS     R0,#+10
        BL       Delay_Us
        MOV      R1,#+2048
        LDR.W    R0,??DataTable17  ;; 0x40010c00
        BL       GPIO_ResetBits
        MOVS     R0,#+10
        BL       Delay_Us
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C1_AckWait:
        PUSH     {R4,LR}
        MOVS     R1,#+128
        LDR.W    R0,??DataTable17  ;; 0x40010c00
        BL       GPIO_ResetBits
        BL       SDA1_InputModeSet
        MOVS     R0,#+10
        BL       Delay_Us
        MOVS     R1,#+64
        LDR.W    R0,??DataTable17  ;; 0x40010c00
        BL       GPIO_SetBits
        MOVS     R0,#+10
        BL       Delay_Us
        MOVS     R0,#+0
        MOVS     R4,R0
??I2C1_AckWait_0:
        MOVS     R1,#+128
        LDR.W    R0,??DataTable17  ;; 0x40010c00
        BL       GPIO_ReadInputDataBit
        CMP      R0,#+0
        BEQ.N    ??I2C1_AckWait_1
        ADDS     R4,R4,#+1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+21
        BCC.N    ??I2C1_AckWait_0
        MOVS     R0,#+0
        MOVS     R4,R0
??I2C1_AckWait_1:
        MOVS     R0,#+10
        BL       Delay_Us
        MOVS     R1,#+64
        LDR.W    R0,??DataTable17  ;; 0x40010c00
        BL       GPIO_ResetBits
        MOVS     R0,#+10
        BL       Delay_Us
        BL       SDA1_OutputModeSet
        MOVS     R1,#+128
        LDR.W    R0,??DataTable17  ;; 0x40010c00
        BL       GPIO_ResetBits
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C2_AckWait:
        PUSH     {R4,LR}
        MOV      R1,#+2048
        LDR.W    R0,??DataTable17  ;; 0x40010c00
        BL       GPIO_ResetBits
        BL       SDA2_InputModeSet
        MOVS     R0,#+10
        BL       Delay_Us
        MOV      R1,#+1024
        LDR.W    R0,??DataTable17  ;; 0x40010c00
        BL       GPIO_SetBits
        MOVS     R0,#+10
        BL       Delay_Us
        MOVS     R0,#+0
        MOVS     R4,R0
??I2C2_AckWait_0:
        MOV      R1,#+2048
        LDR.W    R0,??DataTable17  ;; 0x40010c00
        BL       GPIO_ReadInputDataBit
        CMP      R0,#+0
        BEQ.N    ??I2C2_AckWait_1
        ADDS     R4,R4,#+1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+21
        BCC.N    ??I2C2_AckWait_0
        MOVS     R0,#+0
        MOVS     R4,R0
??I2C2_AckWait_1:
        MOVS     R0,#+10
        BL       Delay_Us
        MOV      R1,#+1024
        LDR.W    R0,??DataTable17  ;; 0x40010c00
        BL       GPIO_ResetBits
        MOVS     R0,#+10
        BL       Delay_Us
        BL       SDA2_OutputModeSet
        MOV      R1,#+2048
        LDR.W    R0,??DataTable17  ;; 0x40010c00
        BL       GPIO_ResetBits
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C1_NakSend:
        PUSH     {R7,LR}
        MOVS     R1,#+128
        LDR.W    R0,??DataTable17  ;; 0x40010c00
        BL       GPIO_SetBits
        MOVS     R0,#+200
        BL       Delay_Us
        MOVS     R1,#+64
        LDR.W    R0,??DataTable17  ;; 0x40010c00
        BL       GPIO_SetBits
        MOVS     R0,#+200
        BL       Delay_Us
        MOVS     R1,#+64
        LDR.W    R0,??DataTable17  ;; 0x40010c00
        BL       GPIO_ResetBits
        MOVS     R0,#+200
        BL       Delay_Us
        MOVS     R1,#+128
        LDR.W    R0,??DataTable17  ;; 0x40010c00
        BL       GPIO_ResetBits
        MOVS     R0,#+200
        BL       Delay_Us
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C2_NakSend:
        PUSH     {R7,LR}
        MOV      R1,#+2048
        LDR.W    R0,??DataTable17  ;; 0x40010c00
        BL       GPIO_SetBits
        MOVS     R0,#+200
        BL       Delay_Us
        MOV      R1,#+1024
        LDR.W    R0,??DataTable17  ;; 0x40010c00
        BL       GPIO_SetBits
        MOVS     R0,#+200
        BL       Delay_Us
        MOV      R1,#+1024
        LDR.W    R0,??DataTable17  ;; 0x40010c00
        BL       GPIO_ResetBits
        MOVS     R0,#+200
        BL       Delay_Us
        MOV      R1,#+2048
        LDR.W    R0,??DataTable17  ;; 0x40010c00
        BL       GPIO_ResetBits
        MOVS     R0,#+200
        BL       Delay_Us
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C1_Stop:
        PUSH     {R7,LR}
        MOVS     R1,#+128
        LDR.W    R0,??DataTable17  ;; 0x40010c00
        BL       GPIO_ResetBits
        MOVS     R0,#+10
        BL       Delay_Us
        MOVS     R1,#+64
        LDR.W    R0,??DataTable17  ;; 0x40010c00
        BL       GPIO_SetBits
        MOVS     R0,#+10
        BL       Delay_Us
        MOVS     R1,#+128
        LDR.W    R0,??DataTable17  ;; 0x40010c00
        BL       GPIO_SetBits
        MOVS     R0,#+10
        BL       Delay_Us
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C2_Stop:
        PUSH     {R7,LR}
        MOV      R1,#+1024
        LDR.W    R0,??DataTable17  ;; 0x40010c00
        BL       GPIO_ResetBits
        MOV      R1,#+2048
        LDR.W    R0,??DataTable17  ;; 0x40010c00
        BL       GPIO_ResetBits
        MOVS     R0,#+10
        BL       Delay_Us
        MOV      R1,#+1024
        LDR.W    R0,??DataTable17  ;; 0x40010c00
        BL       GPIO_SetBits
        MOVS     R0,#+10
        BL       Delay_Us
        MOV      R1,#+2048
        LDR.W    R0,??DataTable17  ;; 0x40010c00
        BL       GPIO_SetBits
        MOVS     R0,#+10
        BL       Delay_Us
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C1_Send_8bit:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R1,#+64
        LDR.W    R0,??DataTable17  ;; 0x40010c00
        BL       GPIO_ResetBits
        MOVS     R0,#+10
        BL       Delay_Us
        MOVS     R0,#+0
        MOVS     R5,R0
??I2C1_Send_8bit_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+8
        BCS.N    ??I2C1_Send_8bit_1
        LSLS     R0,R4,#+24
        BPL.N    ??I2C1_Send_8bit_2
        MOVS     R1,#+128
        LDR.W    R0,??DataTable17  ;; 0x40010c00
        BL       GPIO_SetBits
        B.N      ??I2C1_Send_8bit_3
??I2C1_Send_8bit_2:
        MOVS     R1,#+128
        LDR.W    R0,??DataTable17  ;; 0x40010c00
        BL       GPIO_ResetBits
??I2C1_Send_8bit_3:
        MOVS     R0,#+5
        BL       Delay_Us
        MOVS     R1,#+64
        LDR.W    R0,??DataTable17  ;; 0x40010c00
        BL       GPIO_SetBits
        MOVS     R0,#+10
        BL       Delay_Us
        MOVS     R1,#+64
        LDR.W    R0,??DataTable17  ;; 0x40010c00
        BL       GPIO_ResetBits
        MOVS     R0,#+5
        BL       Delay_Us
        LSLS     R4,R4,#+1
        ADDS     R5,R5,#+1
        B.N      ??I2C1_Send_8bit_0
??I2C1_Send_8bit_1:
        MOVS     R1,#+128
        LDR.W    R0,??DataTable17  ;; 0x40010c00
        BL       GPIO_ResetBits
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C2_Send_8bit:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOV      R1,#+1024
        LDR.W    R0,??DataTable17  ;; 0x40010c00
        BL       GPIO_ResetBits
        MOVS     R0,#+10
        BL       Delay_Us
        MOVS     R0,#+0
        MOVS     R5,R0
??I2C2_Send_8bit_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+8
        BCS.N    ??I2C2_Send_8bit_1
        LSLS     R0,R4,#+24
        BPL.N    ??I2C2_Send_8bit_2
        MOV      R1,#+2048
        LDR.W    R0,??DataTable17  ;; 0x40010c00
        BL       GPIO_SetBits
        B.N      ??I2C2_Send_8bit_3
??I2C2_Send_8bit_2:
        MOV      R1,#+2048
        LDR.W    R0,??DataTable17  ;; 0x40010c00
        BL       GPIO_ResetBits
??I2C2_Send_8bit_3:
        MOVS     R0,#+5
        BL       Delay_Us
        MOV      R1,#+1024
        LDR.W    R0,??DataTable17  ;; 0x40010c00
        BL       GPIO_SetBits
        MOVS     R0,#+10
        BL       Delay_Us
        MOV      R1,#+1024
        LDR.W    R0,??DataTable17  ;; 0x40010c00
        BL       GPIO_ResetBits
        MOVS     R0,#+5
        BL       Delay_Us
        LSLS     R4,R4,#+1
        ADDS     R5,R5,#+1
        B.N      ??I2C2_Send_8bit_0
??I2C2_Send_8bit_1:
        MOV      R1,#+2048
        LDR.W    R0,??DataTable17  ;; 0x40010c00
        BL       GPIO_ResetBits
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C1_Read_8bit:
        PUSH     {R3-R5,LR}
        BL       SDA1_InputModeSet
        MOVS     R1,#+64
        LDR.W    R0,??DataTable17  ;; 0x40010c00
        BL       GPIO_ResetBits
        MOVS     R0,#+10
        BL       Delay_Us
        MOVS     R0,#+0
        MOVS     R5,R0
        MOVS     R0,#+0
        MOVS     R4,R0
??I2C1_Read_8bit_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+8
        BCS.N    ??I2C1_Read_8bit_1
        MOVS     R1,#+64
        LDR.W    R0,??DataTable17  ;; 0x40010c00
        BL       GPIO_SetBits
        MOVS     R0,#+10
        BL       Delay_Us
        MOVS     R1,#+128
        LDR.W    R0,??DataTable17  ;; 0x40010c00
        BL       GPIO_ReadInputDataBit
        CMP      R0,#+0
        BEQ.N    ??I2C1_Read_8bit_2
        MOVS     R0,#+128
        ASRS     R0,R0,R4
        ORRS     R5,R0,R5
??I2C1_Read_8bit_2:
        MOVS     R1,#+64
        LDR.W    R0,??DataTable17  ;; 0x40010c00
        BL       GPIO_ResetBits
        MOVS     R0,#+10
        BL       Delay_Us
        ADDS     R4,R4,#+1
        B.N      ??I2C1_Read_8bit_0
??I2C1_Read_8bit_1:
        BL       SDA1_OutputModeSet
        MOVS     R1,#+128
        LDR.W    R0,??DataTable17  ;; 0x40010c00
        BL       GPIO_ResetBits
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C2_Read_8bit:
        PUSH     {R3-R5,LR}
        BL       SDA2_InputModeSet
        MOV      R1,#+1024
        LDR.W    R0,??DataTable17  ;; 0x40010c00
        BL       GPIO_ResetBits
        MOVS     R0,#+10
        BL       Delay_Us
        MOVS     R0,#+0
        MOVS     R5,R0
        MOVS     R0,#+0
        MOVS     R4,R0
??I2C2_Read_8bit_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+8
        BCS.N    ??I2C2_Read_8bit_1
        MOV      R1,#+1024
        LDR.W    R0,??DataTable17  ;; 0x40010c00
        BL       GPIO_SetBits
        MOVS     R0,#+10
        BL       Delay_Us
        MOV      R1,#+2048
        LDR.W    R0,??DataTable17  ;; 0x40010c00
        BL       GPIO_ReadInputDataBit
        CMP      R0,#+0
        BEQ.N    ??I2C2_Read_8bit_2
        MOVS     R0,#+128
        ASRS     R0,R0,R4
        ORRS     R5,R0,R5
??I2C2_Read_8bit_2:
        MOV      R1,#+1024
        LDR.W    R0,??DataTable17  ;; 0x40010c00
        BL       GPIO_ResetBits
        MOVS     R0,#+10
        BL       Delay_Us
        ADDS     R4,R4,#+1
        B.N      ??I2C2_Read_8bit_0
??I2C2_Read_8bit_1:
        BL       SDA2_OutputModeSet
        MOV      R1,#+2048
        LDR.N    R0,??DataTable17  ;; 0x40010c00
        BL       GPIO_ResetBits
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C1_Write:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        BL       I2C1_Start
        MOVS     R7,R4
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       I2C1_Send_8bit
        BL       I2C1_AckWait
        LSRS     R0,R5,#+8
        MOV      R8,R0
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       I2C1_Send_8bit
        BL       I2C1_AckWait
        MOVS     R0,R5
        MOV      R8,R0
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       I2C1_Send_8bit
        BL       I2C1_AckWait
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       I2C1_Send_8bit
        BL       I2C1_AckWait
        BL       I2C1_Stop
        MOVS     R0,#+5
        BL       Delay_ms
        POP      {R4-R8,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C1_Read:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        BL       I2C1_Start
        MOVS     R6,R4
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       I2C1_Send_8bit
        BL       I2C1_AckWait
        LSRS     R0,R5,#+8
        MOVS     R7,R0
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       I2C1_Send_8bit
        BL       I2C1_AckWait
        MOVS     R0,R5
        MOVS     R7,R0
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       I2C1_Send_8bit
        BL       I2C1_AckWait
        BL       I2C1_Start
        ORRS     R0,R4,#0x1
        MOVS     R6,R0
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       I2C1_Send_8bit
        BL       I2C1_AckWait
        BL       I2C1_Read_8bit
        MOVS     R7,R0
        BL       I2C1_AckWait
        BL       I2C1_Stop
        MOVS     R0,#+100
        BL       Delay_1us
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C2_Write:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        BL       I2C2_Start
        MOVS     R7,R4
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       I2C2_Send_8bit
        BL       I2C2_AckWait
        LSRS     R0,R5,#+8
        MOV      R8,R0
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       I2C2_Send_8bit
        BL       I2C2_AckWait
        MOVS     R0,R5
        MOV      R8,R0
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       I2C2_Send_8bit
        BL       I2C2_AckWait
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       I2C2_Send_8bit
        BL       I2C2_AckWait
        BL       I2C2_Stop
        MOVS     R0,#+5
        BL       Delay_ms
        POP      {R4-R8,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C2_Read:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        BL       I2C2_Start
        MOVS     R6,R4
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       I2C2_Send_8bit
        BL       I2C2_AckWait
        LSRS     R0,R5,#+8
        MOVS     R7,R0
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       I2C2_Send_8bit
        BL       I2C2_AckWait
        MOVS     R0,R5
        MOVS     R7,R0
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       I2C2_Send_8bit
        BL       I2C2_AckWait
        BL       I2C2_Start
        ORRS     R0,R4,#0x1
        MOVS     R6,R0
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       I2C2_Send_8bit
        BL       I2C2_AckWait
        BL       I2C2_Read_8bit
        MOVS     R7,R0
        BL       I2C2_AckWait
        BL       I2C2_Stop
        MOVS     R0,#+100
        BL       Delay_1us
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
EpromWrite:
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
EpromRead:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOVS     R1,R4
        MOVS     R0,#+160
        BL       I2C2_Read
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TW9900_I2C1_ByteWrite:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,R3
        MOVS     R1,#+1
        LDR.N    R0,??DataTable17_1  ;; 0x40005400
        BL       I2C_Cmd
        MOVS     R1,#+1
        LDR.N    R0,??DataTable17_1  ;; 0x40005400
        BL       I2C_GenerateSTART
??TW9900_I2C1_ByteWrite_0:
        LDR.N    R1,??DataTable17_2  ;; 0x30001
        LDR.N    R0,??DataTable17_1  ;; 0x40005400
        BL       I2C_CheckEvent
        CMP      R0,#+0
        BEQ.N    ??TW9900_I2C1_ByteWrite_0
        CMN      R6,#+1
        BEQ.N    ??TW9900_I2C1_ByteWrite_1
        MOVS     R2,#+0
        ASRS     R0,R6,#+15
        ORRS     R1,R0,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable17_1  ;; 0x40005400
        BL       I2C_Send7bitAddress
??TW9900_I2C1_ByteWrite_2:
        LDR.N    R1,??DataTable17_3  ;; 0x70082
        LDR.N    R0,??DataTable17_1  ;; 0x40005400
        BL       I2C_CheckEvent
        CMP      R0,#+0
        BEQ.N    ??TW9900_I2C1_ByteWrite_2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+2
        BNE.N    ??TW9900_I2C1_ByteWrite_3
        ASRS     R1,R6,#+8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable17_1  ;; 0x40005400
        BL       I2C_SendData
??TW9900_I2C1_ByteWrite_4:
        LDR.N    R1,??DataTable17_4  ;; 0x70084
        LDR.N    R0,??DataTable17_1  ;; 0x40005400
        BL       I2C_CheckEvent
        CMP      R0,#+0
        BEQ.N    ??TW9900_I2C1_ByteWrite_4
??TW9900_I2C1_ByteWrite_3:
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable17_1  ;; 0x40005400
        BL       I2C_SendData
??TW9900_I2C1_ByteWrite_5:
        LDR.N    R1,??DataTable17_4  ;; 0x70084
        LDR.N    R0,??DataTable17_1  ;; 0x40005400
        BL       I2C_CheckEvent
        CMP      R0,#+0
        BNE.N    ??TW9900_I2C1_ByteWrite_6
        B.N      ??TW9900_I2C1_ByteWrite_5
??TW9900_I2C1_ByteWrite_1:
        MOVS     R2,#+0
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable17_1  ;; 0x40005400
        BL       I2C_Send7bitAddress
??TW9900_I2C1_ByteWrite_7:
        LDR.N    R1,??DataTable17_3  ;; 0x70082
        LDR.N    R0,??DataTable17_1  ;; 0x40005400
        BL       I2C_CheckEvent
        CMP      R0,#+0
        BEQ.N    ??TW9900_I2C1_ByteWrite_7
??TW9900_I2C1_ByteWrite_6:
        MOVS     R1,R7
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable17_1  ;; 0x40005400
        BL       I2C_SendData
??TW9900_I2C1_ByteWrite_8:
        LDR.N    R1,??DataTable17_4  ;; 0x70084
        LDR.N    R0,??DataTable17_1  ;; 0x40005400
        BL       I2C_CheckEvent
        CMP      R0,#+0
        BEQ.N    ??TW9900_I2C1_ByteWrite_8
        MOVS     R1,#+1
        LDR.N    R0,??DataTable17_1  ;; 0x40005400
        BL       I2C_GenerateSTOP
        MOVS     R0,#+0
        POP      {R1,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TW9900_I2C1_ByteRead:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R0,#+2
        BL       Delay_1ms
        MOVS     R1,#+1
        LDR.N    R0,??DataTable17_1  ;; 0x40005400
        BL       I2C_Cmd
        MOVS     R1,#+1
        LDR.N    R0,??DataTable17_1  ;; 0x40005400
        BL       I2C_GenerateSTART
??TW9900_I2C1_ByteRead_0:
        LDR.N    R1,??DataTable17_2  ;; 0x30001
        LDR.N    R0,??DataTable17_1  ;; 0x40005400
        BL       I2C_CheckEvent
        CMP      R0,#+0
        BEQ.N    ??TW9900_I2C1_ByteRead_0
        MOVS     R2,#+0
        LSRS     R0,R6,#+15
        ORRS     R1,R0,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable17_1  ;; 0x40005400
        BL       I2C_Send7bitAddress
??TW9900_I2C1_ByteRead_1:
        LDR.N    R1,??DataTable17_3  ;; 0x70082
        LDR.N    R0,??DataTable17_1  ;; 0x40005400
        BL       I2C_CheckEvent
        CMP      R0,#+0
        BEQ.N    ??TW9900_I2C1_ByteRead_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+2
        BNE.N    ??TW9900_I2C1_ByteRead_2
        LSRS     R1,R6,#+8
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable17_1  ;; 0x40005400
        BL       I2C_SendData
??TW9900_I2C1_ByteRead_3:
        LDR.N    R1,??DataTable17_4  ;; 0x70084
        LDR.N    R0,??DataTable17_1  ;; 0x40005400
        BL       I2C_CheckEvent
        CMP      R0,#+0
        BEQ.N    ??TW9900_I2C1_ByteRead_3
??TW9900_I2C1_ByteRead_2:
        MOVS     R1,R6
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable17_1  ;; 0x40005400
        BL       I2C_SendData
??TW9900_I2C1_ByteRead_4:
        LDR.N    R1,??DataTable17_4  ;; 0x70084
        LDR.N    R0,??DataTable17_1  ;; 0x40005400
        BL       I2C_CheckEvent
        CMP      R0,#+0
        BEQ.N    ??TW9900_I2C1_ByteRead_4
        MOVS     R1,#+0
        LDR.N    R0,??DataTable17_1  ;; 0x40005400
        BL       I2C_AcknowledgeConfig
        MOVS     R1,#+1
        LDR.N    R0,??DataTable17_1  ;; 0x40005400
        BL       I2C_GenerateSTART
??TW9900_I2C1_ByteRead_5:
        LDR.N    R1,??DataTable17_2  ;; 0x30001
        LDR.N    R0,??DataTable17_1  ;; 0x40005400
        BL       I2C_CheckEvent
        CMP      R0,#+0
        BEQ.N    ??TW9900_I2C1_ByteRead_5
        MOVS     R2,#+1
        LSRS     R0,R6,#+15
        ORRS     R1,R0,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.N    R0,??DataTable17_1  ;; 0x40005400
        BL       I2C_Send7bitAddress
??TW9900_I2C1_ByteRead_6:
        LDR.N    R1,??DataTable17_5  ;; 0x30002
        LDR.N    R0,??DataTable17_1  ;; 0x40005400
        BL       I2C_CheckEvent
        CMP      R0,#+0
        BEQ.N    ??TW9900_I2C1_ByteRead_6
        MOVS     R1,#+0
        LDR.N    R0,??DataTable17_1  ;; 0x40005400
        BL       I2C_AcknowledgeConfig
??TW9900_I2C1_ByteRead_7:
        LDR.N    R1,??DataTable17_6  ;; 0x30040
        LDR.N    R0,??DataTable17_1  ;; 0x40005400
        BL       I2C_CheckEvent
        CMP      R0,#+0
        BEQ.N    ??TW9900_I2C1_ByteRead_7
        LDR.N    R0,??DataTable17_1  ;; 0x40005400
        BL       I2C_ReceiveData
        MOVS     R7,R0
        MOVS     R1,#+1
        LDR.N    R0,??DataTable17_1  ;; 0x40005400
        BL       I2C_GenerateSTOP
        MOVS     R0,#+0
        MOV      R8,R0
??TW9900_I2C1_ByteRead_8:
        UXTH     R8,R8            ;; ZeroExt  R8,R8,#+16,#+16
        CMP      R8,#+50
        BCS.N    ??TW9900_I2C1_ByteRead_9
        ADDS     R8,R8,#+1
        B.N      ??TW9900_I2C1_ByteRead_8
??TW9900_I2C1_ByteRead_9:
        MOVS     R1,#+1
        LDR.N    R0,??DataTable17_1  ;; 0x40005400
        BL       I2C_AcknowledgeConfig
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R8,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17:
        DC32     0x40010c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_1:
        DC32     0x40005400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_2:
        DC32     0x30001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_3:
        DC32     0x70082

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_4:
        DC32     0x70084

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_5:
        DC32     0x30002

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_6:
        DC32     0x30040

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
// 2 066 bytes in section .text
// 
// 2 066 bytes of CODE memory
//
//Errors: none
//Warnings: none
