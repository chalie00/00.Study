///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    25/Jul/2022  17:14:45 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\TTT\Desktop\zz.STDFW\00.Study\Libraries\STM32F /
//                    10x_StdPeriph_Driver\src\stm32f10x_can.c                /
//    Command line =  C:\Users\TTT\Desktop\zz.STDFW\00.Study\Libraries\STM32F /
//                    10x_StdPeriph_Driver\src\stm32f10x_can.c -D             /
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
//                    Debug\List\stm32f10x_can.s                              /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm32f10x_can

        #define SHT_PROGBITS 0x1

        EXTERN RCC_APB1PeriphResetCmd
        EXTERN assert_failed

        PUBLIC CAN_CancelTransmit
        PUBLIC CAN_ClearFlag
        PUBLIC CAN_ClearITPendingBit
        PUBLIC CAN_DBGFreeze
        PUBLIC CAN_DeInit
        PUBLIC CAN_FIFORelease
        PUBLIC CAN_FilterInit
        PUBLIC CAN_GetFlagStatus
        PUBLIC CAN_GetITStatus
        PUBLIC CAN_ITConfig
        PUBLIC CAN_Init
        PUBLIC CAN_MessagePending
        PUBLIC CAN_Receive
        PUBLIC CAN_SlaveStartBank
        PUBLIC CAN_Sleep
        PUBLIC CAN_StructInit
        PUBLIC CAN_Transmit
        PUBLIC CAN_TransmitStatus
        PUBLIC CAN_WakeUp


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CAN_DeInit:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.W    R0,??DataTable14  ;; 0x40006400
        CMP      R4,R0
        BEQ.N    ??CAN_DeInit_0
        LDR.W    R0,??DataTable13  ;; 0x40006800
        CMP      R4,R0
        BEQ.N    ??CAN_DeInit_0
        MOVS     R1,#+117
        LDR.W    R0,??DataTable13_1
        BL       assert_failed
??CAN_DeInit_0:
        LDR.W    R0,??DataTable14  ;; 0x40006400
        CMP      R4,R0
        BNE.N    ??CAN_DeInit_1
        MOVS     R1,#+1
        MOVS     R0,#+33554432
        BL       RCC_APB1PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+33554432
        BL       RCC_APB1PeriphResetCmd
        B.N      ??CAN_DeInit_2
??CAN_DeInit_1:
        MOVS     R1,#+1
        MOVS     R0,#+67108864
        BL       RCC_APB1PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+67108864
        BL       RCC_APB1PeriphResetCmd
??CAN_DeInit_2:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CAN_Init:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        MOVS     R7,#+0
        LDR.W    R0,??DataTable14  ;; 0x40006400
        CMP      R4,R0
        BEQ.N    ??CAN_Init_0
        LDR.W    R0,??DataTable13  ;; 0x40006800
        CMP      R4,R0
        BEQ.N    ??CAN_Init_0
        MOVS     R1,#+149
        LDR.W    R0,??DataTable13_1
        BL       assert_failed
??CAN_Init_0:
        LDRB     R0,[R5, #+6]
        CMP      R0,#+0
        BEQ.N    ??CAN_Init_1
        LDRB     R0,[R5, #+6]
        CMP      R0,#+1
        BEQ.N    ??CAN_Init_1
        MOVS     R1,#+150
        LDR.W    R0,??DataTable13_1
        BL       assert_failed
??CAN_Init_1:
        LDRB     R0,[R5, #+7]
        CMP      R0,#+0
        BEQ.N    ??CAN_Init_2
        LDRB     R0,[R5, #+7]
        CMP      R0,#+1
        BEQ.N    ??CAN_Init_2
        MOVS     R1,#+151
        LDR.W    R0,??DataTable13_1
        BL       assert_failed
??CAN_Init_2:
        LDRB     R0,[R5, #+8]
        CMP      R0,#+0
        BEQ.N    ??CAN_Init_3
        LDRB     R0,[R5, #+8]
        CMP      R0,#+1
        BEQ.N    ??CAN_Init_3
        MOVS     R1,#+152
        LDR.W    R0,??DataTable13_1
        BL       assert_failed
??CAN_Init_3:
        LDRB     R0,[R5, #+9]
        CMP      R0,#+0
        BEQ.N    ??CAN_Init_4
        LDRB     R0,[R5, #+9]
        CMP      R0,#+1
        BEQ.N    ??CAN_Init_4
        MOVS     R1,#+153
        LDR.W    R0,??DataTable13_1
        BL       assert_failed
??CAN_Init_4:
        LDRB     R0,[R5, #+10]
        CMP      R0,#+0
        BEQ.N    ??CAN_Init_5
        LDRB     R0,[R5, #+10]
        CMP      R0,#+1
        BEQ.N    ??CAN_Init_5
        MOVS     R1,#+154
        LDR.W    R0,??DataTable13_1
        BL       assert_failed
??CAN_Init_5:
        LDRB     R0,[R5, #+11]
        CMP      R0,#+0
        BEQ.N    ??CAN_Init_6
        LDRB     R0,[R5, #+11]
        CMP      R0,#+1
        BEQ.N    ??CAN_Init_6
        MOVS     R1,#+155
        LDR.W    R0,??DataTable13_1
        BL       assert_failed
??CAN_Init_6:
        LDRB     R0,[R5, #+2]
        CMP      R0,#+0
        BEQ.N    ??CAN_Init_7
        LDRB     R0,[R5, #+2]
        CMP      R0,#+1
        BEQ.N    ??CAN_Init_7
        LDRB     R0,[R5, #+2]
        CMP      R0,#+2
        BEQ.N    ??CAN_Init_7
        LDRB     R0,[R5, #+2]
        CMP      R0,#+3
        BEQ.N    ??CAN_Init_7
        MOVS     R1,#+156
        LDR.W    R0,??DataTable13_1
        BL       assert_failed
??CAN_Init_7:
        LDRB     R0,[R5, #+3]
        CMP      R0,#+0
        BEQ.N    ??CAN_Init_8
        LDRB     R0,[R5, #+3]
        CMP      R0,#+1
        BEQ.N    ??CAN_Init_8
        LDRB     R0,[R5, #+3]
        CMP      R0,#+2
        BEQ.N    ??CAN_Init_8
        LDRB     R0,[R5, #+3]
        CMP      R0,#+3
        BEQ.N    ??CAN_Init_8
        MOVS     R1,#+157
        LDR.W    R0,??DataTable13_1
        BL       assert_failed
??CAN_Init_8:
        LDRB     R0,[R5, #+4]
        CMP      R0,#+16
        BCC.N    ??CAN_Init_9
        MOVS     R1,#+158
        LDR.W    R0,??DataTable13_1
        BL       assert_failed
??CAN_Init_9:
        LDRB     R0,[R5, #+5]
        CMP      R0,#+8
        BCC.N    ??CAN_Init_10
        MOVS     R1,#+159
        LDR.W    R0,??DataTable13_1
        BL       assert_failed
??CAN_Init_10:
        LDRH     R0,[R5, #+0]
        CMP      R0,#+1
        BCC.N    ??CAN_Init_11
        LDRH     R0,[R5, #+0]
        MOVW     R1,#+1025
        CMP      R0,R1
        BCC.N    ??CAN_Init_12
??CAN_Init_11:
        MOVS     R1,#+160
        LDR.W    R0,??DataTable13_1
        BL       assert_failed
??CAN_Init_12:
        LDR      R0,[R4, #+0]
        BICS     R0,R0,#0x2
        STR      R0,[R4, #+0]
        LDR      R0,[R4, #+0]
        ORRS     R0,R0,#0x1
        STR      R0,[R4, #+0]
??CAN_Init_13:
        LDR      R0,[R4, #+4]
        LSLS     R0,R0,#+31
        BMI.N    ??CAN_Init_14
        MOVW     R0,#+65535
        CMP      R7,R0
        BEQ.N    ??CAN_Init_14
        ADDS     R7,R7,#+1
        B.N      ??CAN_Init_13
??CAN_Init_14:
        LDR      R0,[R4, #+4]
        LSLS     R0,R0,#+31
        BMI.N    ??CAN_Init_15
        MOVS     R0,#+0
        MOVS     R6,R0
        B.N      ??CAN_Init_16
??CAN_Init_15:
        LDRB     R0,[R5, #+6]
        CMP      R0,#+1
        BNE.N    ??CAN_Init_17
        LDR      R0,[R4, #+0]
        ORRS     R0,R0,#0x80
        STR      R0,[R4, #+0]
        B.N      ??CAN_Init_18
??CAN_Init_17:
        LDR      R0,[R4, #+0]
        BICS     R0,R0,#0x80
        STR      R0,[R4, #+0]
??CAN_Init_18:
        LDRB     R0,[R5, #+7]
        CMP      R0,#+1
        BNE.N    ??CAN_Init_19
        LDR      R0,[R4, #+0]
        ORRS     R0,R0,#0x40
        STR      R0,[R4, #+0]
        B.N      ??CAN_Init_20
??CAN_Init_19:
        LDR      R0,[R4, #+0]
        BICS     R0,R0,#0x40
        STR      R0,[R4, #+0]
??CAN_Init_20:
        LDRB     R0,[R5, #+8]
        CMP      R0,#+1
        BNE.N    ??CAN_Init_21
        LDR      R0,[R4, #+0]
        ORRS     R0,R0,#0x20
        STR      R0,[R4, #+0]
        B.N      ??CAN_Init_22
??CAN_Init_21:
        LDR      R0,[R4, #+0]
        BICS     R0,R0,#0x20
        STR      R0,[R4, #+0]
??CAN_Init_22:
        LDRB     R0,[R5, #+9]
        CMP      R0,#+1
        BNE.N    ??CAN_Init_23
        LDR      R0,[R4, #+0]
        ORRS     R0,R0,#0x10
        STR      R0,[R4, #+0]
        B.N      ??CAN_Init_24
??CAN_Init_23:
        LDR      R0,[R4, #+0]
        BICS     R0,R0,#0x10
        STR      R0,[R4, #+0]
??CAN_Init_24:
        LDRB     R0,[R5, #+10]
        CMP      R0,#+1
        BNE.N    ??CAN_Init_25
        LDR      R0,[R4, #+0]
        ORRS     R0,R0,#0x8
        STR      R0,[R4, #+0]
        B.N      ??CAN_Init_26
??CAN_Init_25:
        LDR      R0,[R4, #+0]
        BICS     R0,R0,#0x8
        STR      R0,[R4, #+0]
??CAN_Init_26:
        LDRB     R0,[R5, #+11]
        CMP      R0,#+1
        BNE.N    ??CAN_Init_27
        LDR      R0,[R4, #+0]
        ORRS     R0,R0,#0x4
        STR      R0,[R4, #+0]
        B.N      ??CAN_Init_28
??CAN_Init_27:
        LDR      R0,[R4, #+0]
        BICS     R0,R0,#0x4
        STR      R0,[R4, #+0]
??CAN_Init_28:
        LDRB     R0,[R5, #+2]
        LDRB     R1,[R5, #+3]
        LSLS     R1,R1,#+24
        ORRS     R0,R1,R0, LSL #+30
        LDRB     R1,[R5, #+4]
        ORRS     R0,R0,R1, LSL #+16
        LDRB     R1,[R5, #+5]
        ORRS     R0,R0,R1, LSL #+20
        LDRH     R1,[R5, #+0]
        SUBS     R1,R1,#+1
        ORRS     R0,R1,R0
        STR      R0,[R4, #+28]
        LDR      R0,[R4, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        STR      R0,[R4, #+0]
        MOVS     R0,#+0
        MOVS     R7,R0
??CAN_Init_29:
        LDR      R0,[R4, #+4]
        LSLS     R0,R0,#+31
        BPL.N    ??CAN_Init_30
        MOVW     R0,#+65535
        CMP      R7,R0
        BEQ.N    ??CAN_Init_30
        ADDS     R7,R7,#+1
        B.N      ??CAN_Init_29
??CAN_Init_30:
        LDR      R0,[R4, #+4]
        LSLS     R0,R0,#+31
        BPL.N    ??CAN_Init_31
        MOVS     R0,#+0
        MOVS     R6,R0
        B.N      ??CAN_Init_16
??CAN_Init_31:
        MOVS     R0,#+1
        MOVS     R6,R0
??CAN_Init_16:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CAN_FilterInit:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        LDRB     R0,[R4, #+10]
        CMP      R0,#+14
        BCC.N    ??CAN_FilterInit_0
        MOVW     R1,#+283
        LDR.W    R0,??DataTable13_1
        BL       assert_failed
??CAN_FilterInit_0:
        LDRB     R0,[R4, #+11]
        CMP      R0,#+0
        BEQ.N    ??CAN_FilterInit_1
        LDRB     R0,[R4, #+11]
        CMP      R0,#+1
        BEQ.N    ??CAN_FilterInit_1
        MOV      R1,#+284
        LDR.W    R0,??DataTable13_1
        BL       assert_failed
??CAN_FilterInit_1:
        LDRB     R0,[R4, #+12]
        CMP      R0,#+0
        BEQ.N    ??CAN_FilterInit_2
        LDRB     R0,[R4, #+12]
        CMP      R0,#+1
        BEQ.N    ??CAN_FilterInit_2
        MOVW     R1,#+285
        LDR.W    R0,??DataTable13_1
        BL       assert_failed
??CAN_FilterInit_2:
        LDRH     R0,[R4, #+8]
        CMP      R0,#+0
        BEQ.N    ??CAN_FilterInit_3
        LDRH     R0,[R4, #+8]
        CMP      R0,#+1
        BEQ.N    ??CAN_FilterInit_3
        MOV      R1,#+286
        LDR.W    R0,??DataTable13_1
        BL       assert_failed
??CAN_FilterInit_3:
        LDRB     R0,[R4, #+13]
        CMP      R0,#+0
        BEQ.N    ??CAN_FilterInit_4
        LDRB     R0,[R4, #+13]
        CMP      R0,#+1
        BEQ.N    ??CAN_FilterInit_4
        MOVW     R1,#+287
        LDR.W    R0,??DataTable13_1
        BL       assert_failed
??CAN_FilterInit_4:
        MOVS     R0,#+1
        LDRB     R1,[R4, #+10]
        LSLS     R0,R0,R1
        MOVS     R5,R0
        LDR.W    R0,??DataTable17  ;; 0x40006600
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.W    R1,??DataTable17  ;; 0x40006600
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable16  ;; 0x4000661c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,R5
        LDR.W    R1,??DataTable16  ;; 0x4000661c
        STR      R0,[R1, #+0]
        LDRB     R0,[R4, #+12]
        CMP      R0,#+0
        BNE.N    ??CAN_FilterInit_5
        LDR.W    R0,??DataTable16_1  ;; 0x4000660c
        LDR      R0,[R0, #+0]
        BICS     R0,R0,R5
        LDR.W    R1,??DataTable16_1  ;; 0x4000660c
        STR      R0,[R1, #+0]
        LDRH     R0,[R4, #+6]
        LDRH     R1,[R4, #+2]
        ORRS     R0,R1,R0, LSL #+16
        LDRB     R1,[R4, #+10]
        LDR.W    R2,??DataTable16_2  ;; 0x40006640
        STR      R0,[R2, R1, LSL #+3]
        LDRB     R0,[R4, #+10]
        LDR.W    R1,??DataTable16_2  ;; 0x40006640
        ADDS     R0,R1,R0, LSL #+3
        LDRH     R1,[R4, #+4]
        LDRH     R2,[R4, #+0]
        ORRS     R1,R2,R1, LSL #+16
        STR      R1,[R0, #+4]
??CAN_FilterInit_5:
        LDRB     R0,[R4, #+12]
        CMP      R0,#+1
        BNE.N    ??CAN_FilterInit_6
        LDR.W    R0,??DataTable16_1  ;; 0x4000660c
        LDR      R0,[R0, #+0]
        ORRS     R0,R5,R0
        LDR.W    R1,??DataTable16_1  ;; 0x4000660c
        STR      R0,[R1, #+0]
        LDRH     R0,[R4, #+0]
        LDRH     R1,[R4, #+2]
        ORRS     R0,R1,R0, LSL #+16
        LDRB     R1,[R4, #+10]
        LDR.W    R2,??DataTable16_2  ;; 0x40006640
        STR      R0,[R2, R1, LSL #+3]
        LDRB     R0,[R4, #+10]
        LDR.W    R1,??DataTable16_2  ;; 0x40006640
        ADDS     R0,R1,R0, LSL #+3
        LDRH     R1,[R4, #+4]
        LDRH     R2,[R4, #+6]
        ORRS     R1,R2,R1, LSL #+16
        STR      R1,[R0, #+4]
??CAN_FilterInit_6:
        LDRB     R0,[R4, #+11]
        CMP      R0,#+0
        BNE.N    ??CAN_FilterInit_7
        LDR.W    R0,??DataTable16_3  ;; 0x40006604
        LDR      R0,[R0, #+0]
        BICS     R0,R0,R5
        LDR.W    R1,??DataTable16_3  ;; 0x40006604
        STR      R0,[R1, #+0]
        B.N      ??CAN_FilterInit_8
??CAN_FilterInit_7:
        LDR.W    R0,??DataTable16_3  ;; 0x40006604
        LDR      R0,[R0, #+0]
        ORRS     R0,R5,R0
        LDR.W    R1,??DataTable16_3  ;; 0x40006604
        STR      R0,[R1, #+0]
??CAN_FilterInit_8:
        LDRH     R0,[R4, #+8]
        CMP      R0,#+0
        BNE.N    ??CAN_FilterInit_9
        LDR.W    R0,??DataTable16_4  ;; 0x40006614
        LDR      R0,[R0, #+0]
        BICS     R0,R0,R5
        LDR.W    R1,??DataTable16_4  ;; 0x40006614
        STR      R0,[R1, #+0]
??CAN_FilterInit_9:
        LDRH     R0,[R4, #+8]
        CMP      R0,#+1
        BNE.N    ??CAN_FilterInit_10
        LDR.W    R0,??DataTable16_4  ;; 0x40006614
        LDR      R0,[R0, #+0]
        ORRS     R0,R5,R0
        LDR.W    R1,??DataTable16_4  ;; 0x40006614
        STR      R0,[R1, #+0]
??CAN_FilterInit_10:
        LDRB     R0,[R4, #+13]
        CMP      R0,#+1
        BNE.N    ??CAN_FilterInit_11
        LDR.W    R0,??DataTable16  ;; 0x4000661c
        LDR      R0,[R0, #+0]
        ORRS     R0,R5,R0
        LDR.W    R1,??DataTable16  ;; 0x4000661c
        STR      R0,[R1, #+0]
??CAN_FilterInit_11:
        LDR.W    R0,??DataTable17  ;; 0x40006600
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.W    R1,??DataTable17  ;; 0x40006600
        STR      R0,[R1, #+0]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CAN_StructInit:
        MOVS     R1,#+0
        STRB     R1,[R0, #+6]
        MOVS     R1,#+0
        STRB     R1,[R0, #+7]
        MOVS     R1,#+0
        STRB     R1,[R0, #+8]
        MOVS     R1,#+0
        STRB     R1,[R0, #+9]
        MOVS     R1,#+0
        STRB     R1,[R0, #+10]
        MOVS     R1,#+0
        STRB     R1,[R0, #+11]
        MOVS     R1,#+0
        STRB     R1,[R0, #+2]
        MOVS     R1,#+0
        STRB     R1,[R0, #+3]
        MOVS     R1,#+3
        STRB     R1,[R0, #+4]
        MOVS     R1,#+2
        STRB     R1,[R0, #+5]
        MOVS     R1,#+1
        STRH     R1,[R0, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CAN_SlaveStartBank:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BCC.N    ??CAN_SlaveStartBank_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+28
        BCC.N    ??CAN_SlaveStartBank_1
??CAN_SlaveStartBank_0:
        MOVW     R1,#+407
        LDR.W    R0,??DataTable13_1
        BL       assert_failed
??CAN_SlaveStartBank_1:
        LDR.W    R0,??DataTable17  ;; 0x40006600
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.W    R1,??DataTable17  ;; 0x40006600
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable17  ;; 0x40006600
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable17_1  ;; 0xffffc0f1
        ANDS     R0,R1,R0
        LDR.W    R1,??DataTable17  ;; 0x40006600
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable17  ;; 0x40006600
        LDR      R0,[R0, #+0]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ORRS     R0,R0,R4, LSL #+8
        LDR.W    R1,??DataTable17  ;; 0x40006600
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable17  ;; 0x40006600
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        LDR.W    R1,??DataTable17  ;; 0x40006600
        STR      R0,[R1, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CAN_ITConfig:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        LDR.W    R0,??DataTable14  ;; 0x40006400
        CMP      R4,R0
        BEQ.N    ??CAN_ITConfig_0
        LDR.W    R0,??DataTable13  ;; 0x40006800
        CMP      R4,R0
        BEQ.N    ??CAN_ITConfig_0
        MOV      R1,#+442
        LDR.W    R0,??DataTable17_2
        BL       assert_failed
??CAN_ITConfig_0:
        CMP      R5,#+1
        BEQ.N    ??CAN_ITConfig_1
        CMP      R5,#+2
        BEQ.N    ??CAN_ITConfig_1
        CMP      R5,#+4
        BEQ.N    ??CAN_ITConfig_1
        CMP      R5,#+8
        BEQ.N    ??CAN_ITConfig_1
        CMP      R5,#+16
        BEQ.N    ??CAN_ITConfig_1
        CMP      R5,#+32
        BEQ.N    ??CAN_ITConfig_1
        CMP      R5,#+64
        BEQ.N    ??CAN_ITConfig_1
        MOV      R0,#+256
        CMP      R5,R0
        BEQ.N    ??CAN_ITConfig_1
        MOV      R0,#+512
        CMP      R5,R0
        BEQ.N    ??CAN_ITConfig_1
        CMP      R5,#+1024
        BEQ.N    ??CAN_ITConfig_1
        CMP      R5,#+2048
        BEQ.N    ??CAN_ITConfig_1
        CMP      R5,#+32768
        BEQ.N    ??CAN_ITConfig_1
        CMP      R5,#+65536
        BEQ.N    ??CAN_ITConfig_1
        CMP      R5,#+131072
        BEQ.N    ??CAN_ITConfig_1
        MOVW     R1,#+443
        LDR.W    R0,??DataTable17_2
        BL       assert_failed
??CAN_ITConfig_1:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??CAN_ITConfig_2
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BEQ.N    ??CAN_ITConfig_2
        MOV      R1,#+444
        LDR.W    R0,??DataTable17_2
        BL       assert_failed
??CAN_ITConfig_2:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+0
        BEQ.N    ??CAN_ITConfig_3
        LDR      R0,[R4, #+20]
        ORRS     R0,R5,R0
        STR      R0,[R4, #+20]
        B.N      ??CAN_ITConfig_4
??CAN_ITConfig_3:
        LDR      R0,[R4, #+20]
        BICS     R0,R0,R5
        STR      R0,[R4, #+20]
??CAN_ITConfig_4:
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CAN_Transmit:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.W    R0,??DataTable14  ;; 0x40006400
        CMP      R4,R0
        BEQ.N    ??CAN_Transmit_0
        LDR.W    R0,??DataTable13  ;; 0x40006800
        CMP      R4,R0
        BEQ.N    ??CAN_Transmit_0
        MOV      R1,#+470
        LDR.W    R0,??DataTable17_2
        BL       assert_failed
??CAN_Transmit_0:
        LDRB     R0,[R5, #+8]
        CMP      R0,#+0
        BEQ.N    ??CAN_Transmit_1
        LDRB     R0,[R5, #+8]
        CMP      R0,#+4
        BEQ.N    ??CAN_Transmit_1
        MOVW     R1,#+471
        LDR.W    R0,??DataTable17_2
        BL       assert_failed
??CAN_Transmit_1:
        LDRB     R0,[R5, #+9]
        CMP      R0,#+0
        BEQ.N    ??CAN_Transmit_2
        LDRB     R0,[R5, #+9]
        CMP      R0,#+2
        BEQ.N    ??CAN_Transmit_2
        MOV      R1,#+472
        LDR.W    R0,??DataTable17_2
        BL       assert_failed
??CAN_Transmit_2:
        LDRB     R0,[R5, #+10]
        CMP      R0,#+9
        BCC.N    ??CAN_Transmit_3
        MOVW     R1,#+473
        LDR.W    R0,??DataTable17_2
        BL       assert_failed
??CAN_Transmit_3:
        LDR      R0,[R4, #+8]
        LSLS     R0,R0,#+5
        BPL.N    ??CAN_Transmit_4
        MOVS     R0,#+0
        MOVS     R6,R0
        B.N      ??CAN_Transmit_5
??CAN_Transmit_4:
        LDR      R0,[R4, #+8]
        LSLS     R0,R0,#+4
        BPL.N    ??CAN_Transmit_6
        MOVS     R0,#+1
        MOVS     R6,R0
        B.N      ??CAN_Transmit_5
??CAN_Transmit_6:
        LDR      R0,[R4, #+8]
        LSLS     R0,R0,#+3
        BPL.N    ??CAN_Transmit_7
        MOVS     R0,#+2
        MOVS     R6,R0
        B.N      ??CAN_Transmit_5
??CAN_Transmit_7:
        MOVS     R0,#+4
        MOVS     R6,R0
??CAN_Transmit_5:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+4
        BEQ.W    ??CAN_Transmit_8
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADDS     R0,R4,R6, LSL #+4
        LDR      R0,[R0, #+384]
        ANDS     R0,R0,#0x1
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADDS     R1,R4,R6, LSL #+4
        STR      R0,[R1, #+384]
        LDRB     R0,[R5, #+8]
        CMP      R0,#+0
        BNE.N    ??CAN_Transmit_9
        LDR      R0,[R5, #+0]
        CMP      R0,#+2048
        BCC.N    ??CAN_Transmit_10
        MOVW     R1,#+499
        LDR.W    R0,??DataTable17_2
        BL       assert_failed
??CAN_Transmit_10:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADDS     R0,R4,R6, LSL #+4
        LDR      R0,[R0, #+384]
        LDR      R1,[R5, #+0]
        LDRB     R2,[R5, #+9]
        ORRS     R1,R2,R1, LSL #+21
        ORRS     R0,R1,R0
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADDS     R1,R4,R6, LSL #+4
        STR      R0,[R1, #+384]
        B.N      ??CAN_Transmit_11
??CAN_Transmit_9:
        LDR      R0,[R5, #+4]
        CMP      R0,#+536870912
        BCC.N    ??CAN_Transmit_12
        MOV      R1,#+504
        LDR.W    R0,??DataTable17_2
        BL       assert_failed
??CAN_Transmit_12:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADDS     R0,R4,R6, LSL #+4
        LDR      R0,[R0, #+384]
        LDR      R1,[R5, #+4]
        LDRB     R2,[R5, #+8]
        ORRS     R1,R2,R1, LSL #+3
        LDRB     R2,[R5, #+9]
        ORRS     R1,R2,R1
        ORRS     R0,R1,R0
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADDS     R1,R4,R6, LSL #+4
        STR      R0,[R1, #+384]
??CAN_Transmit_11:
        LDRB     R0,[R5, #+10]
        ANDS     R0,R0,#0xF
        STRB     R0,[R5, #+10]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADDS     R0,R4,R6, LSL #+4
        LDR      R0,[R0, #+388]
        LSRS     R0,R0,#+4
        LSLS     R0,R0,#+4
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADDS     R1,R4,R6, LSL #+4
        STR      R0,[R1, #+388]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADDS     R0,R4,R6, LSL #+4
        LDR      R0,[R0, #+388]
        LDRB     R1,[R5, #+10]
        ORRS     R0,R1,R0
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADDS     R1,R4,R6, LSL #+4
        STR      R0,[R1, #+388]
        LDRB     R0,[R5, #+14]
        LDRB     R1,[R5, #+13]
        LSLS     R1,R1,#+16
        ORRS     R0,R1,R0, LSL #+24
        LDRB     R1,[R5, #+12]
        ORRS     R0,R0,R1, LSL #+8
        LDRB     R1,[R5, #+11]
        ORRS     R0,R1,R0
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADDS     R1,R4,R6, LSL #+4
        STR      R0,[R1, #+392]
        LDRB     R0,[R5, #+18]
        LDRB     R1,[R5, #+17]
        LSLS     R1,R1,#+16
        ORRS     R0,R1,R0, LSL #+24
        LDRB     R1,[R5, #+16]
        ORRS     R0,R0,R1, LSL #+8
        LDRB     R1,[R5, #+15]
        ORRS     R0,R1,R0
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADDS     R1,R4,R6, LSL #+4
        STR      R0,[R1, #+396]
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADDS     R0,R4,R6, LSL #+4
        LDR      R0,[R0, #+384]
        ORRS     R0,R0,#0x1
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        ADDS     R1,R4,R6, LSL #+4
        STR      R0,[R1, #+384]
??CAN_Transmit_8:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CAN_TransmitStatus:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.W    R0,??DataTable14  ;; 0x40006400
        CMP      R4,R0
        BEQ.N    ??CAN_TransmitStatus_0
        LDR.W    R0,??DataTable13  ;; 0x40006800
        CMP      R4,R0
        BEQ.N    ??CAN_TransmitStatus_0
        MOVW     R1,#+541
        LDR.W    R0,??DataTable17_2
        BL       assert_failed
??CAN_TransmitStatus_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+3
        BCC.N    ??CAN_TransmitStatus_1
        MOVW     R1,#+542
        LDR.W    R0,??DataTable17_2
        BL       assert_failed
??CAN_TransmitStatus_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??CAN_TransmitStatus_2
        CMP      R5,#+2
        BEQ.N    ??CAN_TransmitStatus_3
        BCC.N    ??CAN_TransmitStatus_4
        B.N      ??CAN_TransmitStatus_5
??CAN_TransmitStatus_2:
        LDR      R0,[R4, #+8]
        ANDS     R0,R0,#0x1
        ORRS     R6,R6,R0, LSL #+2
        LDR      R0,[R4, #+8]
        ANDS     R0,R0,#0x2
        ORRS     R6,R0,R6
        LDR      R0,[R4, #+8]
        LSRS     R0,R0,#+26
        ANDS     R0,R0,#0x1
        ORRS     R6,R0,R6
        B.N      ??CAN_TransmitStatus_6
??CAN_TransmitStatus_4:
        LDR      R0,[R4, #+8]
        LSRS     R0,R0,#+6
        ANDS     R0,R0,#0x4
        ORRS     R6,R0,R6
        LDR      R0,[R4, #+8]
        LSRS     R0,R0,#+8
        ANDS     R0,R0,#0x2
        ORRS     R6,R0,R6
        LDR      R0,[R4, #+8]
        LSRS     R0,R0,#+27
        ANDS     R0,R0,#0x1
        ORRS     R6,R0,R6
        B.N      ??CAN_TransmitStatus_6
??CAN_TransmitStatus_3:
        LDR      R0,[R4, #+8]
        LSRS     R0,R0,#+14
        ANDS     R0,R0,#0x4
        ORRS     R6,R0,R6
        LDR      R0,[R4, #+8]
        LSRS     R0,R0,#+16
        ANDS     R0,R0,#0x2
        ORRS     R6,R0,R6
        LDR      R0,[R4, #+8]
        LSRS     R0,R0,#+28
        ANDS     R0,R0,#0x1
        ORRS     R6,R0,R6
        B.N      ??CAN_TransmitStatus_6
??CAN_TransmitStatus_5:
        MOVS     R0,#+0
        MOVS     R6,R0
??CAN_TransmitStatus_6:
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        MOVS     R0,R6
        CMP      R0,#+0
        BEQ.N    ??CAN_TransmitStatus_7
        CMP      R0,#+5
        BEQ.N    ??CAN_TransmitStatus_8
        CMP      R0,#+7
        BEQ.N    ??CAN_TransmitStatus_9
        B.N      ??CAN_TransmitStatus_10
??CAN_TransmitStatus_7:
        MOVS     R0,#+2
        MOVS     R6,R0
        B.N      ??CAN_TransmitStatus_11
??CAN_TransmitStatus_8:
        MOVS     R0,#+0
        MOVS     R6,R0
        B.N      ??CAN_TransmitStatus_11
??CAN_TransmitStatus_9:
        MOVS     R0,#+1
        MOVS     R6,R0
        B.N      ??CAN_TransmitStatus_11
??CAN_TransmitStatus_10:
        MOVS     R0,#+0
        MOVS     R6,R0
??CAN_TransmitStatus_11:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CAN_CancelTransmit:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable14  ;; 0x40006400
        CMP      R4,R0
        BEQ.N    ??CAN_CancelTransmit_0
        LDR.N    R0,??DataTable13  ;; 0x40006800
        CMP      R4,R0
        BEQ.N    ??CAN_CancelTransmit_0
        MOV      R1,#+588
        LDR.W    R0,??DataTable17_2
        BL       assert_failed
??CAN_CancelTransmit_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+3
        BCC.N    ??CAN_CancelTransmit_1
        MOVW     R1,#+589
        LDR.W    R0,??DataTable17_2
        BL       assert_failed
??CAN_CancelTransmit_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??CAN_CancelTransmit_2
        CMP      R5,#+2
        BEQ.N    ??CAN_CancelTransmit_3
        BCC.N    ??CAN_CancelTransmit_4
        B.N      ??CAN_CancelTransmit_5
??CAN_CancelTransmit_2:
        LDR      R0,[R4, #+8]
        ORRS     R0,R0,#0x80
        STR      R0,[R4, #+8]
        B.N      ??CAN_CancelTransmit_6
??CAN_CancelTransmit_4:
        LDR      R0,[R4, #+8]
        ORRS     R0,R0,#0x8000
        STR      R0,[R4, #+8]
        B.N      ??CAN_CancelTransmit_6
??CAN_CancelTransmit_3:
        LDR      R0,[R4, #+8]
        ORRS     R0,R0,#0x800000
        STR      R0,[R4, #+8]
        B.N      ??CAN_CancelTransmit_6
??CAN_CancelTransmit_5:
??CAN_CancelTransmit_6:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CAN_FIFORelease:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.W    R0,??DataTable14  ;; 0x40006400
        CMP      R4,R0
        BEQ.N    ??CAN_FIFORelease_0
        LDR.N    R0,??DataTable13  ;; 0x40006800
        CMP      R4,R0
        BEQ.N    ??CAN_FIFORelease_0
        MOVW     R1,#+613
        LDR.W    R0,??DataTable17_2
        BL       assert_failed
??CAN_FIFORelease_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??CAN_FIFORelease_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??CAN_FIFORelease_1
        MOVW     R1,#+614
        LDR.W    R0,??DataTable17_2
        BL       assert_failed
??CAN_FIFORelease_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??CAN_FIFORelease_2
        LDR      R0,[R4, #+12]
        ORRS     R0,R0,#0x20
        STR      R0,[R4, #+12]
        B.N      ??CAN_FIFORelease_3
??CAN_FIFORelease_2:
        LDR      R0,[R4, #+16]
        ORRS     R0,R0,#0x20
        STR      R0,[R4, #+16]
??CAN_FIFORelease_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CAN_MessagePending:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.W    R0,??DataTable14  ;; 0x40006400
        CMP      R4,R0
        BEQ.N    ??CAN_MessagePending_0
        LDR.N    R0,??DataTable13  ;; 0x40006800
        CMP      R4,R0
        BEQ.N    ??CAN_MessagePending_0
        MOVW     R1,#+637
        LDR.W    R0,??DataTable17_2
        BL       assert_failed
??CAN_MessagePending_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??CAN_MessagePending_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??CAN_MessagePending_1
        MOVW     R1,#+638
        LDR.W    R0,??DataTable17_2
        BL       assert_failed
??CAN_MessagePending_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BNE.N    ??CAN_MessagePending_2
        LDR      R0,[R4, #+12]
        ANDS     R0,R0,#0x3
        MOVS     R6,R0
        B.N      ??CAN_MessagePending_3
??CAN_MessagePending_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BNE.N    ??CAN_MessagePending_4
        LDR      R0,[R4, #+16]
        ANDS     R0,R0,#0x3
        MOVS     R6,R0
        B.N      ??CAN_MessagePending_3
??CAN_MessagePending_4:
        MOVS     R0,#+0
        MOVS     R6,R0
??CAN_MessagePending_3:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CAN_Receive:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        LDR.N    R0,??DataTable14  ;; 0x40006400
        CMP      R4,R0
        BEQ.N    ??CAN_Receive_0
        LDR.N    R0,??DataTable13  ;; 0x40006800
        CMP      R4,R0
        BEQ.N    ??CAN_Receive_0
        MOVW     R1,#+665
        LDR.W    R0,??DataTable17_2
        BL       assert_failed
??CAN_Receive_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??CAN_Receive_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??CAN_Receive_1
        MOVW     R1,#+666
        LDR.W    R0,??DataTable17_2
        BL       assert_failed
??CAN_Receive_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R0,R4,R5, LSL #+4
        LDR      R0,[R0, #+432]
        ANDS     R0,R0,#0x4
        STRB     R0,[R6, #+8]
        LDRB     R0,[R6, #+8]
        CMP      R0,#+0
        BNE.N    ??CAN_Receive_2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R0,R4,R5, LSL #+4
        LDR      R0,[R0, #+432]
        LSRS     R0,R0,#+21
        STR      R0,[R6, #+0]
        B.N      ??CAN_Receive_3
??CAN_Receive_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R0,R4,R5, LSL #+4
        LDR      R0,[R0, #+432]
        LSRS     R0,R0,#+3
        STR      R0,[R6, #+4]
??CAN_Receive_3:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R0,R4,R5, LSL #+4
        LDR      R0,[R0, #+432]
        ANDS     R0,R0,#0x2
        STRB     R0,[R6, #+9]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R0,R4,R5, LSL #+4
        LDR      R0,[R0, #+436]
        ANDS     R0,R0,#0xF
        STRB     R0,[R6, #+10]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R0,R4,R5, LSL #+4
        LDR      R0,[R0, #+436]
        LSRS     R0,R0,#+8
        STRB     R0,[R6, #+19]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R0,R4,R5, LSL #+4
        LDR      R0,[R0, #+440]
        STRB     R0,[R6, #+11]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R0,R4,R5, LSL #+4
        LDR      R0,[R0, #+440]
        LSRS     R0,R0,#+8
        STRB     R0,[R6, #+12]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R0,R4,R5, LSL #+4
        LDR      R0,[R0, #+440]
        LSRS     R0,R0,#+16
        STRB     R0,[R6, #+13]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R0,R4,R5, LSL #+4
        LDR      R0,[R0, #+440]
        LSRS     R0,R0,#+24
        STRB     R0,[R6, #+14]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R0,R4,R5, LSL #+4
        LDR      R0,[R0, #+444]
        STRB     R0,[R6, #+15]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R0,R4,R5, LSL #+4
        LDR      R0,[R0, #+444]
        LSRS     R0,R0,#+8
        STRB     R0,[R6, #+16]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R0,R4,R5, LSL #+4
        LDR      R0,[R0, #+444]
        LSRS     R0,R0,#+16
        STRB     R0,[R6, #+17]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        ADDS     R0,R4,R5, LSL #+4
        LDR      R0,[R0, #+444]
        LSRS     R0,R0,#+24
        STRB     R0,[R6, #+18]
        MOVS     R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R4
        BL       CAN_FIFORelease
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CAN_DBGFreeze:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable14  ;; 0x40006400
        CMP      R4,R0
        BEQ.N    ??CAN_DBGFreeze_0
        LDR.N    R0,??DataTable13  ;; 0x40006800
        CMP      R4,R0
        BEQ.N    ??CAN_DBGFreeze_0
        MOVW     R1,#+706
        LDR.W    R0,??DataTable17_2
        BL       assert_failed
??CAN_DBGFreeze_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??CAN_DBGFreeze_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??CAN_DBGFreeze_1
        MOVW     R1,#+707
        LDR.W    R0,??DataTable17_2
        BL       assert_failed
??CAN_DBGFreeze_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??CAN_DBGFreeze_2
        LDR      R0,[R4, #+0]
        ORRS     R0,R0,#0x10000
        STR      R0,[R4, #+0]
        B.N      ??CAN_DBGFreeze_3
??CAN_DBGFreeze_2:
        LDR      R0,[R4, #+0]
        BICS     R0,R0,#0x10000
        STR      R0,[R4, #+0]
??CAN_DBGFreeze_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CAN_Sleep:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        LDR.N    R0,??DataTable14  ;; 0x40006400
        CMP      R4,R0
        BEQ.N    ??CAN_Sleep_0
        LDR.N    R0,??DataTable13  ;; 0x40006800
        CMP      R4,R0
        BEQ.N    ??CAN_Sleep_0
        MOVW     R1,#+731
        LDR.W    R0,??DataTable17_2
        BL       assert_failed
??CAN_Sleep_0:
        LDR      R0,[R4, #+0]
        LSRS     R0,R0,#+1
        LSLS     R0,R0,#+1
        ORRS     R0,R0,#0x2
        STR      R0,[R4, #+0]
        LDR      R0,[R4, #+4]
        ANDS     R0,R0,#0x3
        CMP      R0,#+2
        BNE.N    ??CAN_Sleep_1
        MOVS     R0,#+1
        MOVS     R5,R0
??CAN_Sleep_1:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CAN_WakeUp:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVW     R5,#+65535
        MOVS     R6,#+0
        LDR.N    R0,??DataTable14  ;; 0x40006400
        CMP      R4,R0
        BEQ.N    ??CAN_WakeUp_0
        LDR.N    R0,??DataTable13  ;; 0x40006800
        CMP      R4,R0
        BEQ.N    ??CAN_WakeUp_0
        MOVW     R1,#+757
        LDR.W    R0,??DataTable17_2
        BL       assert_failed
??CAN_WakeUp_0:
        LDR      R0,[R4, #+0]
        BICS     R0,R0,#0x2
        STR      R0,[R4, #+0]
??CAN_WakeUp_1:
        LDR      R0,[R4, #+4]
        LSLS     R0,R0,#+30
        BPL.N    ??CAN_WakeUp_2
        CMP      R5,#+0
        BEQ.N    ??CAN_WakeUp_2
        SUBS     R5,R5,#+1
        B.N      ??CAN_WakeUp_1
??CAN_WakeUp_2:
        LDR      R0,[R4, #+4]
        LSLS     R0,R0,#+30
        BMI.N    ??CAN_WakeUp_3
        MOVS     R0,#+1
        MOVS     R6,R0
??CAN_WakeUp_3:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13:
        DC32     0x40006800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_1:
        DC32     `?<Constant "C:\\\\Users\\\\TTT\\\\Desktop\\\\...">`

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CAN_GetFlagStatus:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.N    R0,??DataTable14  ;; 0x40006400
        CMP      R4,R0
        BEQ.N    ??CAN_GetFlagStatus_0
        LDR.W    R0,??DataTable17_3  ;; 0x40006800
        CMP      R4,R0
        BEQ.N    ??CAN_GetFlagStatus_0
        MOVW     R1,#+803
        LDR.W    R0,??DataTable17_2
        BL       assert_failed
??CAN_GetFlagStatus_0:
        LDR.W    R0,??DataTable17_4  ;; 0x30f00070
        CMP      R5,R0
        BEQ.N    ??CAN_GetFlagStatus_1
        LDR.W    R0,??DataTable17_5  ;; 0x10f00004
        CMP      R5,R0
        BEQ.N    ??CAN_GetFlagStatus_1
        LDR.W    R0,??DataTable17_6  ;; 0x10f00002
        CMP      R5,R0
        BEQ.N    ??CAN_GetFlagStatus_1
        LDR.W    R0,??DataTable17_7  ;; 0x10f00001
        CMP      R5,R0
        BEQ.N    ??CAN_GetFlagStatus_1
        LDR.W    R0,??DataTable17_8  ;; 0x31000008
        CMP      R5,R0
        BEQ.N    ??CAN_GetFlagStatus_1
        LDR.W    R0,??DataTable17_9  ;; 0x32000010
        CMP      R5,R0
        BEQ.N    ??CAN_GetFlagStatus_1
        LDR.W    R0,??DataTable17_10  ;; 0x32000008
        CMP      R5,R0
        BEQ.N    ??CAN_GetFlagStatus_1
        LDR.W    R0,??DataTable17_11  ;; 0x12000003
        CMP      R5,R0
        BEQ.N    ??CAN_GetFlagStatus_1
        LDR.W    R0,??DataTable17_12  ;; 0x34000010
        CMP      R5,R0
        BEQ.N    ??CAN_GetFlagStatus_1
        LDR.W    R0,??DataTable17_13  ;; 0x34000008
        CMP      R5,R0
        BEQ.N    ??CAN_GetFlagStatus_1
        LDR.W    R0,??DataTable17_14  ;; 0x14000003
        CMP      R5,R0
        BEQ.N    ??CAN_GetFlagStatus_1
        LDR.W    R0,??DataTable17_15  ;; 0x38010000
        CMP      R5,R0
        BEQ.N    ??CAN_GetFlagStatus_1
        LDR.W    R0,??DataTable17_16  ;; 0x38000100
        CMP      R5,R0
        BEQ.N    ??CAN_GetFlagStatus_1
        LDR.W    R0,??DataTable17_17  ;; 0x38000001
        CMP      R5,R0
        BEQ.N    ??CAN_GetFlagStatus_1
        LDR.W    R0,??DataTable17_18  ;; 0x31000012
        CMP      R5,R0
        BEQ.N    ??CAN_GetFlagStatus_1
        MOV      R1,#+804
        LDR.W    R0,??DataTable17_2
        BL       assert_failed
??CAN_GetFlagStatus_1:
        TST      R5,#0xF00000
        BEQ.N    ??CAN_GetFlagStatus_2
        LDR      R0,[R4, #+24]
        ANDS     R0,R5,R0
        LSLS     R0,R0,#+12
        BEQ.N    ??CAN_GetFlagStatus_3
        MOVS     R0,#+1
        MOVS     R6,R0
        B.N      ??CAN_GetFlagStatus_4
??CAN_GetFlagStatus_3:
        MOVS     R0,#+0
        MOVS     R6,R0
        B.N      ??CAN_GetFlagStatus_4
??CAN_GetFlagStatus_2:
        LSLS     R0,R5,#+7
        BPL.N    ??CAN_GetFlagStatus_5
        LDR      R0,[R4, #+4]
        ANDS     R0,R5,R0
        LSLS     R0,R0,#+12
        BEQ.N    ??CAN_GetFlagStatus_6
        MOVS     R0,#+1
        MOVS     R6,R0
        B.N      ??CAN_GetFlagStatus_4
??CAN_GetFlagStatus_6:
        MOVS     R0,#+0
        MOVS     R6,R0
        B.N      ??CAN_GetFlagStatus_4
??CAN_GetFlagStatus_5:
        LSLS     R0,R5,#+4
        BPL.N    ??CAN_GetFlagStatus_7
        LDR      R0,[R4, #+8]
        ANDS     R0,R5,R0
        LSLS     R0,R0,#+12
        BEQ.N    ??CAN_GetFlagStatus_8
        MOVS     R0,#+1
        MOVS     R6,R0
        B.N      ??CAN_GetFlagStatus_4
??CAN_GetFlagStatus_8:
        MOVS     R0,#+0
        MOVS     R6,R0
        B.N      ??CAN_GetFlagStatus_4
??CAN_GetFlagStatus_7:
        LSLS     R0,R5,#+6
        BPL.N    ??CAN_GetFlagStatus_9
        LDR      R0,[R4, #+12]
        ANDS     R0,R5,R0
        LSLS     R0,R0,#+12
        BEQ.N    ??CAN_GetFlagStatus_10
        MOVS     R0,#+1
        MOVS     R6,R0
        B.N      ??CAN_GetFlagStatus_4
??CAN_GetFlagStatus_10:
        MOVS     R0,#+0
        MOVS     R6,R0
        B.N      ??CAN_GetFlagStatus_4
??CAN_GetFlagStatus_9:
        LDR      R0,[R4, #+16]
        ANDS     R0,R5,R0
        LSLS     R0,R0,#+12
        BEQ.N    ??CAN_GetFlagStatus_11
        MOVS     R0,#+1
        MOVS     R6,R0
        B.N      ??CAN_GetFlagStatus_4
??CAN_GetFlagStatus_11:
        MOVS     R0,#+0
        MOVS     R6,R0
??CAN_GetFlagStatus_4:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14:
        DC32     0x40006400

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CAN_ClearFlag:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        LDR.W    R0,??DataTable17_19  ;; 0x40006400
        CMP      R4,R0
        BEQ.N    ??CAN_ClearFlag_0
        LDR.W    R0,??DataTable17_3  ;; 0x40006800
        CMP      R4,R0
        BEQ.N    ??CAN_ClearFlag_0
        MOVW     R1,#+902
        LDR.W    R0,??DataTable17_2
        BL       assert_failed
??CAN_ClearFlag_0:
        LDR.W    R0,??DataTable17_4  ;; 0x30f00070
        CMP      R5,R0
        BEQ.N    ??CAN_ClearFlag_1
        LDR.W    R0,??DataTable17_15  ;; 0x38010000
        CMP      R5,R0
        BEQ.N    ??CAN_ClearFlag_1
        LDR.W    R0,??DataTable17_16  ;; 0x38000100
        CMP      R5,R0
        BEQ.N    ??CAN_ClearFlag_1
        LDR.W    R0,??DataTable17_17  ;; 0x38000001
        CMP      R5,R0
        BEQ.N    ??CAN_ClearFlag_1
        LDR.W    R0,??DataTable17_10  ;; 0x32000008
        CMP      R5,R0
        BEQ.N    ??CAN_ClearFlag_1
        LDR.W    R0,??DataTable17_9  ;; 0x32000010
        CMP      R5,R0
        BEQ.N    ??CAN_ClearFlag_1
        LDR.W    R0,??DataTable17_13  ;; 0x34000008
        CMP      R5,R0
        BEQ.N    ??CAN_ClearFlag_1
        LDR.W    R0,??DataTable17_12  ;; 0x34000010
        CMP      R5,R0
        BEQ.N    ??CAN_ClearFlag_1
        LDR.N    R0,??DataTable17_8  ;; 0x31000008
        CMP      R5,R0
        BEQ.N    ??CAN_ClearFlag_1
        LDR.W    R0,??DataTable17_18  ;; 0x31000012
        CMP      R5,R0
        BEQ.N    ??CAN_ClearFlag_1
        MOVW     R1,#+903
        LDR.N    R0,??DataTable17_2
        BL       assert_failed
??CAN_ClearFlag_1:
        LDR.N    R0,??DataTable17_4  ;; 0x30f00070
        CMP      R5,R0
        BNE.N    ??CAN_ClearFlag_2
        MOVS     R0,#+0
        STR      R0,[R4, #+24]
        B.N      ??CAN_ClearFlag_3
??CAN_ClearFlag_2:
        LSLS     R0,R5,#+12       ;; ZeroExtS R0,R5,#+12,#+12
        LSRS     R0,R0,#+12
        MOVS     R6,R0
        LSLS     R0,R5,#+6
        BPL.N    ??CAN_ClearFlag_4
        STR      R6,[R4, #+12]
        B.N      ??CAN_ClearFlag_3
??CAN_ClearFlag_4:
        LSLS     R0,R5,#+5
        BPL.N    ??CAN_ClearFlag_5
        STR      R6,[R4, #+16]
        B.N      ??CAN_ClearFlag_3
??CAN_ClearFlag_5:
        LSLS     R0,R5,#+4
        BPL.N    ??CAN_ClearFlag_6
        STR      R6,[R4, #+8]
        B.N      ??CAN_ClearFlag_3
??CAN_ClearFlag_6:
        STR      R6,[R4, #+4]
??CAN_ClearFlag_3:
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CAN_GetITStatus:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R6,R1
        MOVS     R5,#+0
        LDR.N    R0,??DataTable17_19  ;; 0x40006400
        CMP      R4,R0
        BEQ.N    ??CAN_GetITStatus_0
        LDR.N    R0,??DataTable17_3  ;; 0x40006800
        CMP      R4,R0
        BEQ.N    ??CAN_GetITStatus_0
        MOVW     R1,#+962
        LDR.N    R0,??DataTable17_2
        BL       assert_failed
??CAN_GetITStatus_0:
        CMP      R6,#+1
        BEQ.N    ??CAN_GetITStatus_1
        CMP      R6,#+2
        BEQ.N    ??CAN_GetITStatus_1
        CMP      R6,#+4
        BEQ.N    ??CAN_GetITStatus_1
        CMP      R6,#+8
        BEQ.N    ??CAN_GetITStatus_1
        CMP      R6,#+16
        BEQ.N    ??CAN_GetITStatus_1
        CMP      R6,#+32
        BEQ.N    ??CAN_GetITStatus_1
        CMP      R6,#+64
        BEQ.N    ??CAN_GetITStatus_1
        MOV      R0,#+256
        CMP      R6,R0
        BEQ.N    ??CAN_GetITStatus_1
        MOV      R0,#+512
        CMP      R6,R0
        BEQ.N    ??CAN_GetITStatus_1
        CMP      R6,#+1024
        BEQ.N    ??CAN_GetITStatus_1
        CMP      R6,#+2048
        BEQ.N    ??CAN_GetITStatus_1
        CMP      R6,#+32768
        BEQ.N    ??CAN_GetITStatus_1
        CMP      R6,#+65536
        BEQ.N    ??CAN_GetITStatus_1
        CMP      R6,#+131072
        BEQ.N    ??CAN_GetITStatus_1
        MOVW     R1,#+963
        LDR.N    R0,??DataTable17_2
        BL       assert_failed
??CAN_GetITStatus_1:
        LDR      R0,[R4, #+20]
        TST      R0,R6
        BEQ.W    ??CAN_GetITStatus_2
        MOVS     R0,R6
        CMP      R0,#+1
        BEQ.N    ??CAN_GetITStatus_3
        CMP      R0,#+2
        BEQ.N    ??CAN_GetITStatus_4
        CMP      R0,#+4
        BEQ.N    ??CAN_GetITStatus_5
        CMP      R0,#+8
        BEQ.N    ??CAN_GetITStatus_6
        CMP      R0,#+16
        BEQ.N    ??CAN_GetITStatus_7
        CMP      R0,#+32
        BEQ.N    ??CAN_GetITStatus_8
        CMP      R0,#+64
        BEQ.N    ??CAN_GetITStatus_9
        CMP      R0,#+256
        BEQ.N    ??CAN_GetITStatus_10
        CMP      R0,#+512
        BEQ.N    ??CAN_GetITStatus_11
        CMP      R0,#+1024
        BEQ.N    ??CAN_GetITStatus_12
        CMP      R0,#+2048
        BEQ.N    ??CAN_GetITStatus_13
        CMP      R0,#+32768
        BEQ.N    ??CAN_GetITStatus_14
        CMP      R0,#+65536
        BEQ.N    ??CAN_GetITStatus_15
        CMP      R0,#+131072
        BEQ.N    ??CAN_GetITStatus_16
        B.N      ??CAN_GetITStatus_17
??CAN_GetITStatus_3:
        LDR.N    R1,??DataTable17_20  ;; 0x10101
        LDR      R0,[R4, #+8]
        BL       CheckITStatus
        MOVS     R5,R0
        B.N      ??CAN_GetITStatus_18
??CAN_GetITStatus_4:
        MOVS     R1,#+3
        LDR      R0,[R4, #+12]
        BL       CheckITStatus
        MOVS     R5,R0
        B.N      ??CAN_GetITStatus_18
??CAN_GetITStatus_5:
        MOVS     R1,#+8
        LDR      R0,[R4, #+12]
        BL       CheckITStatus
        MOVS     R5,R0
        B.N      ??CAN_GetITStatus_18
??CAN_GetITStatus_6:
        MOVS     R1,#+16
        LDR      R0,[R4, #+12]
        BL       CheckITStatus
        MOVS     R5,R0
        B.N      ??CAN_GetITStatus_18
??CAN_GetITStatus_7:
        MOVS     R1,#+3
        LDR      R0,[R4, #+16]
        BL       CheckITStatus
        MOVS     R5,R0
        B.N      ??CAN_GetITStatus_18
??CAN_GetITStatus_8:
        MOVS     R1,#+8
        LDR      R0,[R4, #+16]
        BL       CheckITStatus
        MOVS     R5,R0
        B.N      ??CAN_GetITStatus_18
??CAN_GetITStatus_9:
        MOVS     R1,#+16
        LDR      R0,[R4, #+16]
        BL       CheckITStatus
        MOVS     R5,R0
        B.N      ??CAN_GetITStatus_18
??CAN_GetITStatus_15:
        MOVS     R1,#+8
        LDR      R0,[R4, #+4]
        BL       CheckITStatus
        MOVS     R5,R0
        B.N      ??CAN_GetITStatus_18
??CAN_GetITStatus_16:
        MOVS     R1,#+16
        LDR      R0,[R4, #+4]
        BL       CheckITStatus
        MOVS     R5,R0
        B.N      ??CAN_GetITStatus_18
??CAN_GetITStatus_10:
        MOVS     R1,#+1
        LDR      R0,[R4, #+24]
        BL       CheckITStatus
        MOVS     R5,R0
        B.N      ??CAN_GetITStatus_18
??CAN_GetITStatus_11:
        MOVS     R1,#+2
        LDR      R0,[R4, #+24]
        BL       CheckITStatus
        MOVS     R5,R0
        B.N      ??CAN_GetITStatus_18
??CAN_GetITStatus_12:
        MOVS     R1,#+4
        LDR      R0,[R4, #+24]
        BL       CheckITStatus
        MOVS     R5,R0
        B.N      ??CAN_GetITStatus_18
??CAN_GetITStatus_13:
        MOVS     R1,#+112
        LDR      R0,[R4, #+24]
        BL       CheckITStatus
        MOVS     R5,R0
        B.N      ??CAN_GetITStatus_18
??CAN_GetITStatus_14:
        MOVS     R1,#+119
        LDR      R0,[R4, #+24]
        BL       CheckITStatus
        MOVS     R5,R0
        MOVS     R1,#+4
        LDR      R0,[R4, #+4]
        BL       CheckITStatus
        ORRS     R0,R0,R5
        MOVS     R5,R0
        B.N      ??CAN_GetITStatus_18
??CAN_GetITStatus_17:
        MOVS     R0,#+0
        MOVS     R5,R0
        B.N      ??CAN_GetITStatus_18
??CAN_GetITStatus_2:
        MOVS     R0,#+0
        MOVS     R5,R0
??CAN_GetITStatus_18:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16:
        DC32     0x4000661c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_1:
        DC32     0x4000660c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_2:
        DC32     0x40006640

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_3:
        DC32     0x40006604

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable16_4:
        DC32     0x40006614

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CAN_ClearITPendingBit:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        LDR.N    R0,??DataTable17_19  ;; 0x40006400
        CMP      R4,R0
        BEQ.N    ??CAN_ClearITPendingBit_0
        LDR.N    R0,??DataTable17_3  ;; 0x40006800
        CMP      R4,R0
        BEQ.N    ??CAN_ClearITPendingBit_0
        MOVW     R1,#+1065
        LDR.N    R0,??DataTable17_2
        BL       assert_failed
??CAN_ClearITPendingBit_0:
        CMP      R5,#+1
        BEQ.N    ??CAN_ClearITPendingBit_1
        CMP      R5,#+4
        BEQ.N    ??CAN_ClearITPendingBit_1
        CMP      R5,#+8
        BEQ.N    ??CAN_ClearITPendingBit_1
        CMP      R5,#+32
        BEQ.N    ??CAN_ClearITPendingBit_1
        CMP      R5,#+64
        BEQ.N    ??CAN_ClearITPendingBit_1
        MOV      R0,#+256
        CMP      R5,R0
        BEQ.N    ??CAN_ClearITPendingBit_1
        MOV      R0,#+512
        CMP      R5,R0
        BEQ.N    ??CAN_ClearITPendingBit_1
        CMP      R5,#+1024
        BEQ.N    ??CAN_ClearITPendingBit_1
        CMP      R5,#+2048
        BEQ.N    ??CAN_ClearITPendingBit_1
        CMP      R5,#+32768
        BEQ.N    ??CAN_ClearITPendingBit_1
        CMP      R5,#+65536
        BEQ.N    ??CAN_ClearITPendingBit_1
        CMP      R5,#+131072
        BEQ.N    ??CAN_ClearITPendingBit_1
        MOVW     R1,#+1066
        LDR.N    R0,??DataTable17_2
        BL       assert_failed
??CAN_ClearITPendingBit_1:
        MOVS     R0,R5
        CMP      R0,#+1
        BEQ.N    ??CAN_ClearITPendingBit_2
        CMP      R0,#+4
        BEQ.N    ??CAN_ClearITPendingBit_3
        CMP      R0,#+8
        BEQ.N    ??CAN_ClearITPendingBit_4
        CMP      R0,#+32
        BEQ.N    ??CAN_ClearITPendingBit_5
        CMP      R0,#+64
        BEQ.N    ??CAN_ClearITPendingBit_6
        CMP      R0,#+256
        BEQ.N    ??CAN_ClearITPendingBit_7
        CMP      R0,#+512
        BEQ.N    ??CAN_ClearITPendingBit_8
        CMP      R0,#+1024
        BEQ.N    ??CAN_ClearITPendingBit_9
        CMP      R0,#+2048
        BEQ.N    ??CAN_ClearITPendingBit_10
        CMP      R0,#+32768
        BEQ.N    ??CAN_ClearITPendingBit_11
        CMP      R0,#+65536
        BEQ.N    ??CAN_ClearITPendingBit_12
        CMP      R0,#+131072
        BEQ.N    ??CAN_ClearITPendingBit_13
        B.N      ??CAN_ClearITPendingBit_14
??CAN_ClearITPendingBit_2:
        LDR.N    R0,??DataTable17_20  ;; 0x10101
        STR      R0,[R4, #+8]
        B.N      ??CAN_ClearITPendingBit_15
??CAN_ClearITPendingBit_3:
        MOVS     R0,#+8
        STR      R0,[R4, #+12]
        B.N      ??CAN_ClearITPendingBit_15
??CAN_ClearITPendingBit_4:
        MOVS     R0,#+16
        STR      R0,[R4, #+12]
        B.N      ??CAN_ClearITPendingBit_15
??CAN_ClearITPendingBit_5:
        MOVS     R0,#+8
        STR      R0,[R4, #+16]
        B.N      ??CAN_ClearITPendingBit_15
??CAN_ClearITPendingBit_6:
        MOVS     R0,#+16
        STR      R0,[R4, #+16]
        B.N      ??CAN_ClearITPendingBit_15
??CAN_ClearITPendingBit_12:
        MOVS     R0,#+8
        STR      R0,[R4, #+4]
        B.N      ??CAN_ClearITPendingBit_15
??CAN_ClearITPendingBit_13:
        MOVS     R0,#+16
        STR      R0,[R4, #+4]
        B.N      ??CAN_ClearITPendingBit_15
??CAN_ClearITPendingBit_7:
        MOVS     R0,#+4
        STR      R0,[R4, #+4]
        B.N      ??CAN_ClearITPendingBit_15
??CAN_ClearITPendingBit_8:
        MOVS     R0,#+4
        STR      R0,[R4, #+4]
        B.N      ??CAN_ClearITPendingBit_15
??CAN_ClearITPendingBit_9:
        MOVS     R0,#+4
        STR      R0,[R4, #+4]
        B.N      ??CAN_ClearITPendingBit_15
??CAN_ClearITPendingBit_10:
        MOVS     R0,#+0
        STR      R0,[R4, #+24]
        MOVS     R0,#+4
        STR      R0,[R4, #+4]
        B.N      ??CAN_ClearITPendingBit_15
??CAN_ClearITPendingBit_11:
        MOVS     R0,#+0
        STR      R0,[R4, #+24]
        MOVS     R0,#+4
        STR      R0,[R4, #+4]
        B.N      ??CAN_ClearITPendingBit_15
??CAN_ClearITPendingBit_14:
??CAN_ClearITPendingBit_15:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17:
        DC32     0x40006600

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_1:
        DC32     0xffffc0f1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_2:
        DC32     `?<Constant "C:\\\\Users\\\\TTT\\\\Desktop\\\\...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_3:
        DC32     0x40006800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_4:
        DC32     0x30f00070

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_5:
        DC32     0x10f00004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_6:
        DC32     0x10f00002

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_7:
        DC32     0x10f00001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_8:
        DC32     0x31000008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_9:
        DC32     0x32000010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_10:
        DC32     0x32000008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_11:
        DC32     0x12000003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_12:
        DC32     0x34000010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_13:
        DC32     0x34000008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_14:
        DC32     0x14000003

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_15:
        DC32     0x38010000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_16:
        DC32     0x38000100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_17:
        DC32     0x38000001

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_18:
        DC32     0x31000012

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_19:
        DC32     0x40006400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable17_20:
        DC32     0x10101

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CheckITStatus:
        MOVS     R2,R0
        MOVS     R0,#+0
        TST      R2,R1
        BEQ.N    ??CheckITStatus_0
        MOVS     R3,#+1
        MOVS     R0,R3
        B.N      ??CheckITStatus_1
??CheckITStatus_0:
        MOVS     R3,#+0
        MOVS     R0,R3
??CheckITStatus_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return

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
        DC8 78H, 5FH, 63H, 61H, 6EH, 2EH, 63H, 0

        END
// 
//    96 bytes in section .rodata
// 3 998 bytes in section .text
// 
// 3 998 bytes of CODE  memory
//    96 bytes of CONST memory
//
//Errors: none
//Warnings: none
