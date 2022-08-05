///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    05/Aug/2022  15:12:52 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\TTT\Desktop\zz.STDFW\00.Study\Libraries\STM32F /
//                    10x_StdPeriph_Driver\src\stm32f10x_spi.c                /
//    Command line =  C:\Users\TTT\Desktop\zz.STDFW\00.Study\Libraries\STM32F /
//                    10x_StdPeriph_Driver\src\stm32f10x_spi.c -D             /
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
//                    Debug\List\stm32f10x_spi.s                              /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm32f10x_spi

        #define SHT_PROGBITS 0x1

        EXTERN RCC_APB1PeriphResetCmd
        EXTERN RCC_APB2PeriphResetCmd
        EXTERN RCC_GetClocksFreq
        EXTERN assert_failed

        PUBLIC I2S_Cmd
        PUBLIC I2S_Init
        PUBLIC I2S_StructInit
        PUBLIC SPI_BiDirectionalLineConfig
        PUBLIC SPI_CalculateCRC
        PUBLIC SPI_Cmd
        PUBLIC SPI_DataSizeConfig
        PUBLIC SPI_GetCRC
        PUBLIC SPI_GetCRCPolynomial
        PUBLIC SPI_I2S_ClearFlag
        PUBLIC SPI_I2S_ClearITPendingBit
        PUBLIC SPI_I2S_DMACmd
        PUBLIC SPI_I2S_DeInit
        PUBLIC SPI_I2S_GetFlagStatus
        PUBLIC SPI_I2S_GetITStatus
        PUBLIC SPI_I2S_ITConfig
        PUBLIC SPI_I2S_ReceiveData
        PUBLIC SPI_I2S_SendData
        PUBLIC SPI_Init
        PUBLIC SPI_NSSInternalSoftwareConfig
        PUBLIC SPI_SSOutputCmd
        PUBLIC SPI_StructInit
        PUBLIC SPI_TransmitCRC


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SPI_I2S_DeInit:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.W    R0,??DataTable20  ;; 0x40013000
        CMP      R4,R0
        BEQ.N    ??SPI_I2S_DeInit_0
        LDR.W    R0,??DataTable20_1  ;; 0x40003800
        CMP      R4,R0
        BEQ.N    ??SPI_I2S_DeInit_0
        LDR.W    R0,??DataTable20_2  ;; 0x40003c00
        CMP      R4,R0
        BEQ.N    ??SPI_I2S_DeInit_0
        MOVS     R1,#+121
        LDR.W    R0,??DataTable20_3
        BL       assert_failed
??SPI_I2S_DeInit_0:
        LDR.W    R0,??DataTable20  ;; 0x40013000
        CMP      R4,R0
        BNE.N    ??SPI_I2S_DeInit_1
        MOVS     R1,#+1
        MOV      R0,#+4096
        BL       RCC_APB2PeriphResetCmd
        MOVS     R1,#+0
        MOV      R0,#+4096
        BL       RCC_APB2PeriphResetCmd
        B.N      ??SPI_I2S_DeInit_2
??SPI_I2S_DeInit_1:
        LDR.W    R0,??DataTable20_1  ;; 0x40003800
        CMP      R4,R0
        BNE.N    ??SPI_I2S_DeInit_3
        MOVS     R1,#+1
        MOV      R0,#+16384
        BL       RCC_APB1PeriphResetCmd
        MOVS     R1,#+0
        MOV      R0,#+16384
        BL       RCC_APB1PeriphResetCmd
        B.N      ??SPI_I2S_DeInit_2
??SPI_I2S_DeInit_3:
        LDR.W    R0,??DataTable20_2  ;; 0x40003c00
        CMP      R4,R0
        BNE.N    ??SPI_I2S_DeInit_2
        MOVS     R1,#+1
        MOV      R0,#+32768
        BL       RCC_APB1PeriphResetCmd
        MOVS     R1,#+0
        MOV      R0,#+32768
        BL       RCC_APB1PeriphResetCmd
??SPI_I2S_DeInit_2:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SPI_Init:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.W    R0,??DataTable20  ;; 0x40013000
        CMP      R4,R0
        BEQ.N    ??SPI_Init_0
        LDR.W    R0,??DataTable20_1  ;; 0x40003800
        CMP      R4,R0
        BEQ.N    ??SPI_Init_0
        LDR.W    R0,??DataTable20_2  ;; 0x40003c00
        CMP      R4,R0
        BEQ.N    ??SPI_Init_0
        MOVS     R1,#+162
        LDR.W    R0,??DataTable20_3
        BL       assert_failed
??SPI_Init_0:
        LDRH     R0,[R5, #+0]
        CMP      R0,#+0
        BEQ.N    ??SPI_Init_1
        LDRH     R0,[R5, #+0]
        CMP      R0,#+1024
        BEQ.N    ??SPI_Init_1
        LDRH     R0,[R5, #+0]
        CMP      R0,#+32768
        BEQ.N    ??SPI_Init_1
        LDRH     R0,[R5, #+0]
        CMP      R0,#+49152
        BEQ.N    ??SPI_Init_1
        MOVS     R1,#+165
        LDR.W    R0,??DataTable20_3
        BL       assert_failed
??SPI_Init_1:
        LDRH     R0,[R5, #+2]
        MOV      R1,#+260
        CMP      R0,R1
        BEQ.N    ??SPI_Init_2
        LDRH     R0,[R5, #+2]
        CMP      R0,#+0
        BEQ.N    ??SPI_Init_2
        MOVS     R1,#+166
        LDR.W    R0,??DataTable20_3
        BL       assert_failed
??SPI_Init_2:
        LDRH     R0,[R5, #+4]
        CMP      R0,#+2048
        BEQ.N    ??SPI_Init_3
        LDRH     R0,[R5, #+4]
        CMP      R0,#+0
        BEQ.N    ??SPI_Init_3
        MOVS     R1,#+167
        LDR.W    R0,??DataTable20_3
        BL       assert_failed
??SPI_Init_3:
        LDRH     R0,[R5, #+6]
        CMP      R0,#+0
        BEQ.N    ??SPI_Init_4
        LDRH     R0,[R5, #+6]
        CMP      R0,#+2
        BEQ.N    ??SPI_Init_4
        MOVS     R1,#+168
        LDR.W    R0,??DataTable20_3
        BL       assert_failed
??SPI_Init_4:
        LDRH     R0,[R5, #+8]
        CMP      R0,#+0
        BEQ.N    ??SPI_Init_5
        LDRH     R0,[R5, #+8]
        CMP      R0,#+1
        BEQ.N    ??SPI_Init_5
        MOVS     R1,#+169
        LDR.W    R0,??DataTable20_3
        BL       assert_failed
??SPI_Init_5:
        LDRH     R0,[R5, #+10]
        MOV      R1,#+512
        CMP      R0,R1
        BEQ.N    ??SPI_Init_6
        LDRH     R0,[R5, #+10]
        CMP      R0,#+0
        BEQ.N    ??SPI_Init_6
        MOVS     R1,#+170
        LDR.W    R0,??DataTable20_3
        BL       assert_failed
??SPI_Init_6:
        LDRH     R0,[R5, #+12]
        CMP      R0,#+0
        BEQ.N    ??SPI_Init_7
        LDRH     R0,[R5, #+12]
        CMP      R0,#+8
        BEQ.N    ??SPI_Init_7
        LDRH     R0,[R5, #+12]
        CMP      R0,#+16
        BEQ.N    ??SPI_Init_7
        LDRH     R0,[R5, #+12]
        CMP      R0,#+24
        BEQ.N    ??SPI_Init_7
        LDRH     R0,[R5, #+12]
        CMP      R0,#+32
        BEQ.N    ??SPI_Init_7
        LDRH     R0,[R5, #+12]
        CMP      R0,#+40
        BEQ.N    ??SPI_Init_7
        LDRH     R0,[R5, #+12]
        CMP      R0,#+48
        BEQ.N    ??SPI_Init_7
        LDRH     R0,[R5, #+12]
        CMP      R0,#+56
        BEQ.N    ??SPI_Init_7
        MOVS     R1,#+171
        LDR.W    R0,??DataTable20_3
        BL       assert_failed
??SPI_Init_7:
        LDRH     R0,[R5, #+14]
        CMP      R0,#+0
        BEQ.N    ??SPI_Init_8
        LDRH     R0,[R5, #+14]
        CMP      R0,#+128
        BEQ.N    ??SPI_Init_8
        MOVS     R1,#+172
        LDR.W    R0,??DataTable20_3
        BL       assert_failed
??SPI_Init_8:
        LDRH     R0,[R5, #+16]
        CMP      R0,#+1
        BCS.N    ??SPI_Init_9
        MOVS     R1,#+173
        LDR.W    R0,??DataTable20_3
        BL       assert_failed
??SPI_Init_9:
        LDRH     R0,[R4, #+0]
        MOVS     R6,R0
        ANDS     R6,R6,#0x3040
        LDRH     R0,[R5, #+0]
        LDRH     R1,[R5, #+2]
        ORRS     R0,R1,R0
        LDRH     R1,[R5, #+4]
        ORRS     R0,R1,R0
        LDRH     R1,[R5, #+6]
        ORRS     R0,R1,R0
        LDRH     R1,[R5, #+8]
        ORRS     R0,R1,R0
        LDRH     R1,[R5, #+10]
        ORRS     R0,R1,R0
        LDRH     R1,[R5, #+12]
        ORRS     R0,R1,R0
        LDRH     R1,[R5, #+14]
        ORRS     R0,R1,R0
        ORRS     R6,R0,R6
        STRH     R6,[R4, #+0]
        LDRH     R0,[R4, #+28]
        MOVW     R1,#+63487
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+28]
        LDRH     R0,[R5, #+16]
        STRH     R0,[R4, #+16]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2S_Init:
        PUSH     {R4-R11,LR}
        SUB      SP,SP,#+20
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        MOVS     R7,#+2
        MOVS     R8,#+0
        MOVS     R9,#+1
        MOVS     R10,#+0
        MOVS     R11,#+0
        LDR.W    R0,??DataTable20_1  ;; 0x40003800
        CMP      R4,R0
        BEQ.N    ??I2S_Init_0
        LDR.W    R0,??DataTable20_2  ;; 0x40003c00
        CMP      R4,R0
        BEQ.N    ??I2S_Init_0
        MOVS     R1,#+226
        LDR.W    R0,??DataTable20_3
        BL       assert_failed
??I2S_Init_0:
        LDRH     R0,[R5, #+0]
        CMP      R0,#+0
        BEQ.N    ??I2S_Init_1
        LDRH     R0,[R5, #+0]
        MOV      R1,#+256
        CMP      R0,R1
        BEQ.N    ??I2S_Init_1
        LDRH     R0,[R5, #+0]
        MOV      R1,#+512
        CMP      R0,R1
        BEQ.N    ??I2S_Init_1
        LDRH     R0,[R5, #+0]
        MOV      R1,#+768
        CMP      R0,R1
        BEQ.N    ??I2S_Init_1
        MOVS     R1,#+227
        LDR.W    R0,??DataTable20_3
        BL       assert_failed
??I2S_Init_1:
        LDRH     R0,[R5, #+2]
        CMP      R0,#+0
        BEQ.N    ??I2S_Init_2
        LDRH     R0,[R5, #+2]
        CMP      R0,#+16
        BEQ.N    ??I2S_Init_2
        LDRH     R0,[R5, #+2]
        CMP      R0,#+32
        BEQ.N    ??I2S_Init_2
        LDRH     R0,[R5, #+2]
        CMP      R0,#+48
        BEQ.N    ??I2S_Init_2
        LDRH     R0,[R5, #+2]
        CMP      R0,#+176
        BEQ.N    ??I2S_Init_2
        MOVS     R1,#+228
        LDR.W    R0,??DataTable20_3
        BL       assert_failed
??I2S_Init_2:
        LDRH     R0,[R5, #+4]
        CMP      R0,#+0
        BEQ.N    ??I2S_Init_3
        LDRH     R0,[R5, #+4]
        CMP      R0,#+1
        BEQ.N    ??I2S_Init_3
        LDRH     R0,[R5, #+4]
        CMP      R0,#+3
        BEQ.N    ??I2S_Init_3
        LDRH     R0,[R5, #+4]
        CMP      R0,#+5
        BEQ.N    ??I2S_Init_3
        MOVS     R1,#+229
        LDR.W    R0,??DataTable20_3
        BL       assert_failed
??I2S_Init_3:
        LDRH     R0,[R5, #+6]
        MOV      R1,#+512
        CMP      R0,R1
        BEQ.N    ??I2S_Init_4
        LDRH     R0,[R5, #+6]
        CMP      R0,#+0
        BEQ.N    ??I2S_Init_4
        MOVS     R1,#+230
        LDR.W    R0,??DataTable20_3
        BL       assert_failed
??I2S_Init_4:
        LDR      R0,[R5, #+8]
        CMP      R0,#+8000
        BCC.N    ??I2S_Init_5
        LDR      R0,[R5, #+8]
        LDR.W    R1,??DataTable20_4  ;; 0x2ee01
        CMP      R0,R1
        BCC.N    ??I2S_Init_6
??I2S_Init_5:
        LDR      R0,[R5, #+8]
        CMP      R0,#+2
        BEQ.N    ??I2S_Init_6
        MOVS     R1,#+231
        LDR.W    R0,??DataTable20_3
        BL       assert_failed
??I2S_Init_6:
        LDRH     R0,[R5, #+12]
        CMP      R0,#+0
        BEQ.N    ??I2S_Init_7
        LDRH     R0,[R5, #+12]
        CMP      R0,#+8
        BEQ.N    ??I2S_Init_7
        MOVS     R1,#+232
        LDR.W    R0,??DataTable20_3
        BL       assert_failed
??I2S_Init_7:
        LDRH     R0,[R4, #+28]
        MOVW     R1,#+61504
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+28]
        MOVS     R0,#+2
        STRH     R0,[R4, #+32]
        LDRH     R0,[R4, #+28]
        MOVS     R6,R0
        LDR      R0,[R5, #+8]
        CMP      R0,#+2
        BNE.N    ??I2S_Init_8
        MOVS     R0,#+0
        MOV      R8,R0
        MOVS     R0,#+2
        MOVS     R7,R0
        B.N      ??I2S_Init_9
??I2S_Init_8:
        LDRH     R0,[R5, #+4]
        CMP      R0,#+0
        BNE.N    ??I2S_Init_10
        MOVS     R0,#+1
        MOV      R9,R0
        B.N      ??I2S_Init_11
??I2S_Init_10:
        MOVS     R0,#+2
        MOV      R9,R0
??I2S_Init_11:
        LDR.W    R0,??DataTable20_1  ;; 0x40003800
        CMP      R4,R0
        BNE.N    ??I2S_Init_12
        MOVS     R0,#+131072
        MOV      R10,R0
        B.N      ??I2S_Init_13
??I2S_Init_12:
        MOVS     R0,#+262144
        MOV      R10,R0
??I2S_Init_13:
        ADD      R0,SP,#+0
        BL       RCC_GetClocksFreq
        LDR      R0,[SP, #+0]
        MOV      R11,R0
        LDRH     R0,[R5, #+6]
        MOV      R1,#+512
        CMP      R0,R1
        BNE.N    ??I2S_Init_14
        LSRS     R0,R11,#+8
        MOVS     R1,#+10
        MULS     R0,R1,R0
        LDR      R1,[R5, #+8]
        UDIV     R0,R0,R1
        ADDS     R0,R0,#+5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOV      R10,R0
        B.N      ??I2S_Init_15
??I2S_Init_14:
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        LSLS     R0,R9,#+5
        UDIV     R0,R11,R0
        MOVS     R1,#+10
        MULS     R0,R1,R0
        LDR      R1,[R5, #+8]
        UDIV     R0,R0,R1
        ADDS     R0,R0,#+5
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        MOV      R10,R0
??I2S_Init_15:
        MOVS     R0,#+10
        UDIV     R10,R10,R0
        ANDS     R0,R10,#0x1
        MOV      R8,R0
        UXTH     R8,R8            ;; ZeroExt  R8,R8,#+16,#+16
        SUBS     R0,R10,R8
        LSRS     R0,R0,#+1
        MOVS     R7,R0
        LSLS     R8,R8,#+8
??I2S_Init_9:
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        CMP      R7,#+2
        BCC.N    ??I2S_Init_16
        MOV      R0,#+256
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        CMP      R7,R0
        BCC.N    ??I2S_Init_17
??I2S_Init_16:
        MOVS     R0,#+2
        MOVS     R7,R0
        MOVS     R0,#+0
        MOV      R8,R0
??I2S_Init_17:
        LDRH     R0,[R5, #+6]
        ORRS     R0,R0,R8
        ORRS     R0,R0,R7
        STRH     R0,[R4, #+32]
        LDRH     R0,[R5, #+0]
        LDRH     R1,[R5, #+2]
        LDRH     R2,[R5, #+4]
        LDRH     R3,[R5, #+12]
        ORRS     R2,R3,R2
        ORRS     R1,R2,R1
        ORRS     R0,R1,R0
        ORRS     R0,R0,#0x800
        ORRS     R6,R0,R6
        STRH     R6,[R4, #+28]
        ADD      SP,SP,#+20
        POP      {R4-R11,PC}      ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SPI_StructInit:
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
        MOVS     R1,#+0
        STRH     R1,[R0, #+2]
        MOVS     R1,#+0
        STRH     R1,[R0, #+4]
        MOVS     R1,#+0
        STRH     R1,[R0, #+6]
        MOVS     R1,#+0
        STRH     R1,[R0, #+8]
        MOVS     R1,#+0
        STRH     R1,[R0, #+10]
        MOVS     R1,#+0
        STRH     R1,[R0, #+12]
        MOVS     R1,#+0
        STRH     R1,[R0, #+14]
        MOVS     R1,#+7
        STRH     R1,[R0, #+16]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2S_StructInit:
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
        MOVS     R1,#+0
        STRH     R1,[R0, #+2]
        MOVS     R1,#+0
        STRH     R1,[R0, #+4]
        MOVS     R1,#+0
        STRH     R1,[R0, #+6]
        MOVS     R1,#+2
        STR      R1,[R0, #+8]
        MOVS     R1,#+0
        STRH     R1,[R0, #+12]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SPI_Cmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable20  ;; 0x40013000
        CMP      R4,R0
        BEQ.N    ??SPI_Cmd_0
        LDR.W    R0,??DataTable20_1  ;; 0x40003800
        CMP      R4,R0
        BEQ.N    ??SPI_Cmd_0
        LDR.W    R0,??DataTable20_2  ;; 0x40003c00
        CMP      R4,R0
        BEQ.N    ??SPI_Cmd_0
        MOVW     R1,#+429
        LDR.W    R0,??DataTable20_3
        BL       assert_failed
??SPI_Cmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??SPI_Cmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??SPI_Cmd_1
        MOV      R1,#+430
        LDR.W    R0,??DataTable20_3
        BL       assert_failed
??SPI_Cmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??SPI_Cmd_2
        LDRH     R0,[R4, #+0]
        ORRS     R0,R0,#0x40
        STRH     R0,[R4, #+0]
        B.N      ??SPI_Cmd_3
??SPI_Cmd_2:
        LDRH     R0,[R4, #+0]
        MOVW     R1,#+65471
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+0]
??SPI_Cmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2S_Cmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable20_1  ;; 0x40003800
        CMP      R4,R0
        BEQ.N    ??I2S_Cmd_0
        LDR.W    R0,??DataTable20_2  ;; 0x40003c00
        CMP      R4,R0
        BEQ.N    ??I2S_Cmd_0
        MOVW     R1,#+453
        LDR.W    R0,??DataTable20_3
        BL       assert_failed
??I2S_Cmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??I2S_Cmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??I2S_Cmd_1
        MOV      R1,#+454
        LDR.W    R0,??DataTable20_3
        BL       assert_failed
??I2S_Cmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??I2S_Cmd_2
        LDRH     R0,[R4, #+28]
        ORRS     R0,R0,#0x400
        STRH     R0,[R4, #+28]
        B.N      ??I2S_Cmd_3
??I2S_Cmd_2:
        LDRH     R0,[R4, #+28]
        MOVW     R1,#+64511
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+28]
??I2S_Cmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SPI_I2S_ITConfig:
        PUSH     {R4-R8,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,#+0
        MOVS     R8,#+0
        LDR.W    R0,??DataTable20  ;; 0x40013000
        CMP      R4,R0
        BEQ.N    ??SPI_I2S_ITConfig_0
        LDR.W    R0,??DataTable20_1  ;; 0x40003800
        CMP      R4,R0
        BEQ.N    ??SPI_I2S_ITConfig_0
        LDR.W    R0,??DataTable20_2  ;; 0x40003c00
        CMP      R4,R0
        BEQ.N    ??SPI_I2S_ITConfig_0
        MOVW     R1,#+485
        LDR.W    R0,??DataTable20_3
        BL       assert_failed
??SPI_I2S_ITConfig_0:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??SPI_I2S_ITConfig_1
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BEQ.N    ??SPI_I2S_ITConfig_1
        MOV      R1,#+486
        LDR.W    R0,??DataTable20_3
        BL       assert_failed
??SPI_I2S_ITConfig_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+113
        BEQ.N    ??SPI_I2S_ITConfig_2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+96
        BEQ.N    ??SPI_I2S_ITConfig_2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+80
        BEQ.N    ??SPI_I2S_ITConfig_2
        MOVW     R1,#+487
        LDR.W    R0,??DataTable20_3
        BL       assert_failed
??SPI_I2S_ITConfig_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LSRS     R0,R5,#+4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R7,R0
        MOVS     R0,#+1
        LSLS     R0,R0,R7
        MOV      R8,R0
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??SPI_I2S_ITConfig_3
        LDRH     R0,[R4, #+4]
        ORRS     R0,R8,R0
        STRH     R0,[R4, #+4]
        B.N      ??SPI_I2S_ITConfig_4
??SPI_I2S_ITConfig_3:
        LDRH     R0,[R4, #+4]
        BICS     R0,R0,R8
        STRH     R0,[R4, #+4]
??SPI_I2S_ITConfig_4:
        POP      {R4-R8,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SPI_I2S_DMACmd:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        LDR.W    R0,??DataTable20  ;; 0x40013000
        CMP      R4,R0
        BEQ.N    ??SPI_I2S_DMACmd_0
        LDR.W    R0,??DataTable20_1  ;; 0x40003800
        CMP      R4,R0
        BEQ.N    ??SPI_I2S_DMACmd_0
        LDR.W    R0,??DataTable20_2  ;; 0x40003c00
        CMP      R4,R0
        BEQ.N    ??SPI_I2S_DMACmd_0
        MOVW     R1,#+523
        LDR.W    R0,??DataTable20_3
        BL       assert_failed
??SPI_I2S_DMACmd_0:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??SPI_I2S_DMACmd_1
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BEQ.N    ??SPI_I2S_DMACmd_1
        MOV      R1,#+524
        LDR.W    R0,??DataTable20_3
        BL       assert_failed
??SPI_I2S_DMACmd_1:
        MOVW     R0,#+65532
        TST      R5,R0
        BNE.N    ??SPI_I2S_DMACmd_2
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BNE.N    ??SPI_I2S_DMACmd_3
??SPI_I2S_DMACmd_2:
        MOVW     R1,#+525
        LDR.W    R0,??DataTable20_3
        BL       assert_failed
??SPI_I2S_DMACmd_3:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??SPI_I2S_DMACmd_4
        LDRH     R0,[R4, #+4]
        ORRS     R0,R5,R0
        STRH     R0,[R4, #+4]
        B.N      ??SPI_I2S_DMACmd_5
??SPI_I2S_DMACmd_4:
        LDRH     R0,[R4, #+4]
        BICS     R0,R0,R5
        STRH     R0,[R4, #+4]
??SPI_I2S_DMACmd_5:
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SPI_I2S_SendData:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable20  ;; 0x40013000
        CMP      R4,R0
        BEQ.N    ??SPI_I2S_SendData_0
        LDR.W    R0,??DataTable20_1  ;; 0x40003800
        CMP      R4,R0
        BEQ.N    ??SPI_I2S_SendData_0
        LDR.W    R0,??DataTable20_2  ;; 0x40003c00
        CMP      R4,R0
        BEQ.N    ??SPI_I2S_SendData_0
        MOVW     R1,#+549
        LDR.W    R0,??DataTable20_3
        BL       assert_failed
??SPI_I2S_SendData_0:
        STRH     R5,[R4, #+12]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SPI_I2S_ReceiveData:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.W    R0,??DataTable20  ;; 0x40013000
        CMP      R4,R0
        BEQ.N    ??SPI_I2S_ReceiveData_0
        LDR.W    R0,??DataTable20_1  ;; 0x40003800
        CMP      R4,R0
        BEQ.N    ??SPI_I2S_ReceiveData_0
        LDR.W    R0,??DataTable20_2  ;; 0x40003c00
        CMP      R4,R0
        BEQ.N    ??SPI_I2S_ReceiveData_0
        MOVW     R1,#+565
        LDR.W    R0,??DataTable20_3
        BL       assert_failed
??SPI_I2S_ReceiveData_0:
        LDRH     R0,[R4, #+12]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SPI_NSSInternalSoftwareConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable20  ;; 0x40013000
        CMP      R4,R0
        BEQ.N    ??SPI_NSSInternalSoftwareConfig_0
        LDR.W    R0,??DataTable20_1  ;; 0x40003800
        CMP      R4,R0
        BEQ.N    ??SPI_NSSInternalSoftwareConfig_0
        LDR.W    R0,??DataTable20_2  ;; 0x40003c00
        CMP      R4,R0
        BEQ.N    ??SPI_NSSInternalSoftwareConfig_0
        MOVW     R1,#+583
        LDR.W    R0,??DataTable20_3
        BL       assert_failed
??SPI_NSSInternalSoftwareConfig_0:
        MOV      R0,#+256
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??SPI_NSSInternalSoftwareConfig_1
        MOVW     R0,#+65279
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??SPI_NSSInternalSoftwareConfig_1
        MOV      R1,#+584
        LDR.W    R0,??DataTable20_3
        BL       assert_failed
??SPI_NSSInternalSoftwareConfig_1:
        MOVW     R0,#+65279
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??SPI_NSSInternalSoftwareConfig_2
        LDRH     R0,[R4, #+0]
        MOV      R1,#+256
        ORRS     R0,R1,R0
        STRH     R0,[R4, #+0]
        B.N      ??SPI_NSSInternalSoftwareConfig_3
??SPI_NSSInternalSoftwareConfig_2:
        LDRH     R0,[R4, #+0]
        MOVW     R1,#+65279
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+0]
??SPI_NSSInternalSoftwareConfig_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SPI_SSOutputCmd:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable20  ;; 0x40013000
        CMP      R4,R0
        BEQ.N    ??SPI_SSOutputCmd_0
        LDR.W    R0,??DataTable20_1  ;; 0x40003800
        CMP      R4,R0
        BEQ.N    ??SPI_SSOutputCmd_0
        LDR.W    R0,??DataTable20_2  ;; 0x40003c00
        CMP      R4,R0
        BEQ.N    ??SPI_SSOutputCmd_0
        MOVW     R1,#+607
        LDR.W    R0,??DataTable20_3
        BL       assert_failed
??SPI_SSOutputCmd_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??SPI_SSOutputCmd_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??SPI_SSOutputCmd_1
        MOV      R1,#+608
        LDR.W    R0,??DataTable20_3
        BL       assert_failed
??SPI_SSOutputCmd_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??SPI_SSOutputCmd_2
        LDRH     R0,[R4, #+4]
        ORRS     R0,R0,#0x4
        STRH     R0,[R4, #+4]
        B.N      ??SPI_SSOutputCmd_3
??SPI_SSOutputCmd_2:
        LDRH     R0,[R4, #+4]
        MOVW     R1,#+65531
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+4]
??SPI_SSOutputCmd_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SPI_DataSizeConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable20  ;; 0x40013000
        CMP      R4,R0
        BEQ.N    ??SPI_DataSizeConfig_0
        LDR.W    R0,??DataTable20_1  ;; 0x40003800
        CMP      R4,R0
        BEQ.N    ??SPI_DataSizeConfig_0
        LDR.W    R0,??DataTable20_2  ;; 0x40003c00
        CMP      R4,R0
        BEQ.N    ??SPI_DataSizeConfig_0
        MOVW     R1,#+633
        LDR.W    R0,??DataTable20_3
        BL       assert_failed
??SPI_DataSizeConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+2048
        BEQ.N    ??SPI_DataSizeConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??SPI_DataSizeConfig_1
        MOVW     R1,#+634
        LDR.N    R0,??DataTable20_3
        BL       assert_failed
??SPI_DataSizeConfig_1:
        LDRH     R0,[R4, #+0]
        MOVW     R1,#+63487
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+0]
        LDRH     R0,[R4, #+0]
        ORRS     R0,R5,R0
        STRH     R0,[R4, #+0]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SPI_TransmitCRC:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.N    R0,??DataTable20  ;; 0x40013000
        CMP      R4,R0
        BEQ.N    ??SPI_TransmitCRC_0
        LDR.N    R0,??DataTable20_1  ;; 0x40003800
        CMP      R4,R0
        BEQ.N    ??SPI_TransmitCRC_0
        LDR.N    R0,??DataTable20_2  ;; 0x40003c00
        CMP      R4,R0
        BEQ.N    ??SPI_TransmitCRC_0
        MOVW     R1,#+649
        LDR.N    R0,??DataTable20_3
        BL       assert_failed
??SPI_TransmitCRC_0:
        LDRH     R0,[R4, #+0]
        ORRS     R0,R0,#0x1000
        STRH     R0,[R4, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SPI_CalculateCRC:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable20  ;; 0x40013000
        CMP      R4,R0
        BEQ.N    ??SPI_CalculateCRC_0
        LDR.N    R0,??DataTable20_1  ;; 0x40003800
        CMP      R4,R0
        BEQ.N    ??SPI_CalculateCRC_0
        LDR.N    R0,??DataTable20_2  ;; 0x40003c00
        CMP      R4,R0
        BEQ.N    ??SPI_CalculateCRC_0
        MOVW     R1,#+665
        LDR.N    R0,??DataTable20_3
        BL       assert_failed
??SPI_CalculateCRC_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??SPI_CalculateCRC_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??SPI_CalculateCRC_1
        MOVW     R1,#+666
        LDR.N    R0,??DataTable20_3
        BL       assert_failed
??SPI_CalculateCRC_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??SPI_CalculateCRC_2
        LDRH     R0,[R4, #+0]
        ORRS     R0,R0,#0x2000
        STRH     R0,[R4, #+0]
        B.N      ??SPI_CalculateCRC_3
??SPI_CalculateCRC_2:
        LDRH     R0,[R4, #+0]
        MOVW     R1,#+57343
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+0]
??SPI_CalculateCRC_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SPI_GetCRC:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.N    R0,??DataTable20  ;; 0x40013000
        CMP      R4,R0
        BEQ.N    ??SPI_GetCRC_0
        LDR.N    R0,??DataTable20_1  ;; 0x40003800
        CMP      R4,R0
        BEQ.N    ??SPI_GetCRC_0
        LDR.N    R0,??DataTable20_2  ;; 0x40003c00
        CMP      R4,R0
        BEQ.N    ??SPI_GetCRC_0
        MOV      R1,#+692
        LDR.N    R0,??DataTable20_3
        BL       assert_failed
??SPI_GetCRC_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??SPI_GetCRC_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??SPI_GetCRC_1
        MOVW     R1,#+693
        LDR.N    R0,??DataTable20_3
        BL       assert_failed
??SPI_GetCRC_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??SPI_GetCRC_2
        LDRH     R0,[R4, #+24]
        MOVS     R6,R0
        B.N      ??SPI_GetCRC_3
??SPI_GetCRC_2:
        LDRH     R0,[R4, #+20]
        MOVS     R6,R0
??SPI_GetCRC_3:
        MOVS     R0,R6
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SPI_GetCRCPolynomial:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.N    R0,??DataTable20  ;; 0x40013000
        CMP      R4,R0
        BEQ.N    ??SPI_GetCRCPolynomial_0
        LDR.N    R0,??DataTable20_1  ;; 0x40003800
        CMP      R4,R0
        BEQ.N    ??SPI_GetCRCPolynomial_0
        LDR.N    R0,??DataTable20_2  ;; 0x40003c00
        CMP      R4,R0
        BEQ.N    ??SPI_GetCRCPolynomial_0
        MOV      R1,#+716
        LDR.N    R0,??DataTable20_3
        BL       assert_failed
??SPI_GetCRCPolynomial_0:
        LDRH     R0,[R4, #+16]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SPI_BiDirectionalLineConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable20  ;; 0x40013000
        CMP      R4,R0
        BEQ.N    ??SPI_BiDirectionalLineConfig_0
        LDR.N    R0,??DataTable20_1  ;; 0x40003800
        CMP      R4,R0
        BEQ.N    ??SPI_BiDirectionalLineConfig_0
        LDR.N    R0,??DataTable20_2  ;; 0x40003c00
        CMP      R4,R0
        BEQ.N    ??SPI_BiDirectionalLineConfig_0
        MOVW     R1,#+734
        LDR.N    R0,??DataTable20_3
        BL       assert_failed
??SPI_BiDirectionalLineConfig_0:
        MOVW     R0,#+49151
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,R0
        BEQ.N    ??SPI_BiDirectionalLineConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+16384
        BEQ.N    ??SPI_BiDirectionalLineConfig_1
        MOVW     R1,#+735
        LDR.N    R0,??DataTable20_3
        BL       assert_failed
??SPI_BiDirectionalLineConfig_1:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+16384
        BNE.N    ??SPI_BiDirectionalLineConfig_2
        LDRH     R0,[R4, #+0]
        ORRS     R0,R0,#0x4000
        STRH     R0,[R4, #+0]
        B.N      ??SPI_BiDirectionalLineConfig_3
??SPI_BiDirectionalLineConfig_2:
        LDRH     R0,[R4, #+0]
        MOVW     R1,#+49151
        ANDS     R0,R1,R0
        STRH     R0,[R4, #+0]
??SPI_BiDirectionalLineConfig_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SPI_I2S_GetFlagStatus:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.N    R0,??DataTable20  ;; 0x40013000
        CMP      R4,R0
        BEQ.N    ??SPI_I2S_GetFlagStatus_0
        LDR.N    R0,??DataTable20_1  ;; 0x40003800
        CMP      R4,R0
        BEQ.N    ??SPI_I2S_GetFlagStatus_0
        LDR.N    R0,??DataTable20_2  ;; 0x40003c00
        CMP      R4,R0
        BEQ.N    ??SPI_I2S_GetFlagStatus_0
        MOVW     R1,#+769
        LDR.N    R0,??DataTable20_3
        BL       assert_failed
??SPI_I2S_GetFlagStatus_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+128
        BEQ.N    ??SPI_I2S_GetFlagStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+64
        BEQ.N    ??SPI_I2S_GetFlagStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+32
        BEQ.N    ??SPI_I2S_GetFlagStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+16
        BEQ.N    ??SPI_I2S_GetFlagStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+8
        BEQ.N    ??SPI_I2S_GetFlagStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+4
        BEQ.N    ??SPI_I2S_GetFlagStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+2
        BEQ.N    ??SPI_I2S_GetFlagStatus_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+1
        BEQ.N    ??SPI_I2S_GetFlagStatus_1
        MOVW     R1,#+770
        LDR.N    R0,??DataTable20_3
        BL       assert_failed
??SPI_I2S_GetFlagStatus_1:
        LDRH     R0,[R4, #+8]
        TST      R0,R5
        BEQ.N    ??SPI_I2S_GetFlagStatus_2
        MOVS     R0,#+1
        MOVS     R6,R0
        B.N      ??SPI_I2S_GetFlagStatus_3
??SPI_I2S_GetFlagStatus_2:
        MOVS     R0,#+0
        MOVS     R6,R0
??SPI_I2S_GetFlagStatus_3:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SPI_I2S_ClearFlag:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable20  ;; 0x40013000
        CMP      R4,R0
        BEQ.N    ??SPI_I2S_ClearFlag_0
        LDR.N    R0,??DataTable20_1  ;; 0x40003800
        CMP      R4,R0
        BEQ.N    ??SPI_I2S_ClearFlag_0
        LDR.N    R0,??DataTable20_2  ;; 0x40003c00
        CMP      R4,R0
        BEQ.N    ??SPI_I2S_ClearFlag_0
        MOVW     R1,#+806
        LDR.N    R0,??DataTable20_3
        BL       assert_failed
??SPI_I2S_ClearFlag_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+16
        BEQ.N    ??SPI_I2S_ClearFlag_1
        MOVW     R1,#+807
        LDR.N    R0,??DataTable20_3
        BL       assert_failed
??SPI_I2S_ClearFlag_1:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        MVNS     R0,R5
        STRH     R0,[R4, #+8]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SPI_I2S_GetITStatus:
        PUSH     {R3-R9,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        MOVS     R7,#+0
        MOVS     R8,#+0
        MOVS     R9,#+0
        LDR.N    R0,??DataTable20  ;; 0x40013000
        CMP      R4,R0
        BEQ.N    ??SPI_I2S_GetITStatus_0
        LDR.N    R0,??DataTable20_1  ;; 0x40003800
        CMP      R4,R0
        BEQ.N    ??SPI_I2S_GetITStatus_0
        LDR.N    R0,??DataTable20_2  ;; 0x40003c00
        CMP      R4,R0
        BEQ.N    ??SPI_I2S_GetITStatus_0
        MOVW     R1,#+834
        LDR.N    R0,??DataTable20_3
        BL       assert_failed
??SPI_I2S_GetITStatus_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+96
        BEQ.N    ??SPI_I2S_GetITStatus_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+113
        BEQ.N    ??SPI_I2S_GetITStatus_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+83
        BEQ.N    ??SPI_I2S_GetITStatus_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+84
        BEQ.N    ??SPI_I2S_GetITStatus_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+85
        BEQ.N    ??SPI_I2S_GetITStatus_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+86
        BEQ.N    ??SPI_I2S_GetITStatus_1
        MOVW     R1,#+835
        LDR.N    R0,??DataTable20_3
        BL       assert_failed
??SPI_I2S_GetITStatus_1:
        MOVS     R0,#+1
        ANDS     R1,R5,#0xF
        LSLS     R0,R0,R1
        MOVS     R7,R0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        LSRS     R0,R5,#+4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOV      R8,R0
        MOVS     R0,#+1
        LSLS     R8,R0,R8
        LDRH     R0,[R4, #+4]
        ANDS     R0,R8,R0
        MOV      R9,R0
        LDRH     R0,[R4, #+8]
        TST      R0,R7
        BEQ.N    ??SPI_I2S_GetITStatus_2
        UXTH     R9,R9            ;; ZeroExt  R9,R9,#+16,#+16
        CMP      R9,#+0
        BEQ.N    ??SPI_I2S_GetITStatus_2
        MOVS     R0,#+1
        MOVS     R6,R0
        B.N      ??SPI_I2S_GetITStatus_3
??SPI_I2S_GetITStatus_2:
        MOVS     R0,#+0
        MOVS     R6,R0
??SPI_I2S_GetITStatus_3:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4-R9,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SPI_I2S_ClearITPendingBit:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.N    R0,??DataTable20  ;; 0x40013000
        CMP      R4,R0
        BEQ.N    ??SPI_I2S_ClearITPendingBit_0
        LDR.N    R0,??DataTable20_1  ;; 0x40003800
        CMP      R4,R0
        BEQ.N    ??SPI_I2S_ClearITPendingBit_0
        LDR.N    R0,??DataTable20_2  ;; 0x40003c00
        CMP      R4,R0
        BEQ.N    ??SPI_I2S_ClearITPendingBit_0
        MOVW     R1,#+886
        LDR.N    R0,??DataTable20_3
        BL       assert_failed
??SPI_I2S_ClearITPendingBit_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+84
        BEQ.N    ??SPI_I2S_ClearITPendingBit_1
        MOVW     R1,#+887
        LDR.N    R0,??DataTable20_3
        BL       assert_failed
??SPI_I2S_ClearITPendingBit_1:
        MOVS     R0,#+1
        ANDS     R1,R5,#0xF
        LSLS     R0,R0,R1
        MOVS     R6,R0
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        MVNS     R0,R6
        STRH     R0,[R4, #+8]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20:
        DC32     0x40013000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_1:
        DC32     0x40003800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_2:
        DC32     0x40003c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_3:
        DC32     `?<Constant "C:\\\\Users\\\\TTT\\\\Desktop\\\\...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_4:
        DC32     0x2ee01

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
        DC8 78H, 5FH, 73H, 70H, 69H, 2EH, 63H, 0

        END
// 
//    96 bytes in section .rodata
// 2 616 bytes in section .text
// 
// 2 616 bytes of CODE  memory
//    96 bytes of CONST memory
//
//Errors: none
//Warnings: none
