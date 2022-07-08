///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    08/Jul/2022  11:57:30 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\TTT\Desktop\zz.STDFW\00.Study\src\Device.c     /
//    Command line =  C:\Users\TTT\Desktop\zz.STDFW\00.Study\src\Device.c -D  /
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
//                    Debug\List\Device.s                                     /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME Device

        #define SHT_PROGBITS 0x1

        EXTERN ADC_Cmd
        EXTERN ADC_DMACmd
        EXTERN ADC_GetCalibrationStatus
        EXTERN ADC_GetResetCalibrationStatus
        EXTERN ADC_Init
        EXTERN ADC_RegularChannelConfig
        EXTERN ADC_ResetCalibration
        EXTERN ADC_SoftwareStartConvCmd
        EXTERN ADC_StartCalibration
        EXTERN ADC_TempSensorVrefintCmd
        EXTERN DMA_Cmd
        EXTERN DMA_DeInit
        EXTERN DMA_Init
        EXTERN Delay_1ms
        EXTERN EXTI_ClearITPendingBit
        EXTERN EXTI_Init
        EXTERN GPIO_EXTILineConfig
        EXTERN GPIO_Init
        EXTERN GPIO_ReadInputDataBit
        EXTERN GPIO_ResetBits
        EXTERN GPIO_SetBits
        EXTERN I2C_Cmd
        EXTERN I2C_Init
        EXTERN NVIC_Init
        EXTERN NVIC_PriorityGroupConfig
        EXTERN RCC_APB2PeriphClockCmd
        EXTERN RCC_GetClocksFreq
        EXTERN SystemCoreClock
        EXTERN SystemInit
        EXTERN TIM_Cmd
        EXTERN TIM_CtrlPWMOutputs
        EXTERN TIM_OC4Init
        EXTERN USART_Cmd
        EXTERN USART_ITConfig
        EXTERN USART_Init
        EXTERN Wiper_Active_Flag
        EXTERN Wiper_Error_Status_Flag
        EXTERN stADC
        EXTERN stDIP
        EXTERN stWIPER1
        EXTERN stWIPER2

        PUBLIC ADC_Configuration
        PUBLIC ADC_InitStructure
        PUBLIC DMA_Configuration
        PUBLIC DMA_InitStructure
        PUBLIC Dipswitch_Mode_Check
        PUBLIC EXTI_initStructure
        PUBLIC GPIO_Configuration
        PUBLIC GPIO_InitStructure
        PUBLIC I2C_Configuration
        PUBLIC I2C_InitStructure
        PUBLIC Initial_Device
        PUBLIC Initial_Wiper
        PUBLIC NVIC_Configuration
        PUBLIC NVIC_InitStructure
        PUBLIC PrescalerValue
        PUBLIC RCC_Configuration
        PUBLIC Run_Wiper
        PUBLIC TIMER1_CH4_DutyPeriod
        PUBLIC TIMER_Init
        PUBLIC TIM_OCInitStructure
        PUBLIC TIM_TimeBaseStructure
        PUBLIC UART4_Init
        PUBLIC UART5_Init
        PUBLIC USART1_Init
        PUBLIC USART2_Init
        PUBLIC USART3_Init
        PUBLIC USART_InitStructure
        PUBLIC Wiper_Active
        PUBLIC Wiper_Function
        PUBLIC rcc_clocks


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void NVIC_ClearPendingIRQ(IRQn_Type)
NVIC_ClearPendingIRQ:
        PUSH     {R4}
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LSRS     R1,R0,#+5
        LDR.W    R2,??DataTable20  ;; 0xe000e280
        MOVS     R3,#+1
        ANDS     R4,R0,#0x1F
        LSLS     R3,R3,R4
        STR      R3,[R2, R1, LSL #+2]
        POP      {R4}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp void NVIC_SetPriority(IRQn_Type, uint32_t)
NVIC_SetPriority:
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BPL.N    ??NVIC_SetPriority_0
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        ANDS     R2,R0,#0xF
        LDR.W    R3,??DataTable20_1  ;; 0xe000ed18
        ADDS     R2,R2,R3
        LSLS     R3,R1,#+4
        STRB     R3,[R2, #-4]
        B.N      ??NVIC_SetPriority_1
??NVIC_SetPriority_0:
        SXTB     R0,R0            ;; SignExt  R0,R0,#+24,#+24
        LDR.W    R2,??DataTable20_2  ;; 0xe000e400
        LSLS     R3,R1,#+4
        STRB     R3,[R0, R2]
??NVIC_SetPriority_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// static __interwork __softfp uint32_t SysTick_Config(uint32_t)
SysTick_Config:
        PUSH     {R4,LR}
        MOVS     R4,R0
        CMP      R4,#+16777216
        BCC.N    ??SysTick_Config_0
        MOVS     R0,#+1
        B.N      ??SysTick_Config_1
??SysTick_Config_0:
        LSLS     R0,R4,#+8        ;; ZeroExtS R0,R4,#+8,#+8
        LSRS     R0,R0,#+8
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable20_3  ;; 0xe000e014
        STR      R0,[R1, #+0]
        MOVS     R1,#+15
        MOVS     R0,#-1
        BL       NVIC_SetPriority
        LDR.W    R0,??DataTable20_4  ;; 0xe000e018
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable20_5  ;; 0xe000e010
        MOVS     R1,#+7
        STR      R1,[R0, #+0]
        MOVS     R0,#+0
??SysTick_Config_1:
        POP      {R4,PC}          ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
USART_InitStructure:
        DS8 16

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
NVIC_InitStructure:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
GPIO_InitStructure:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
TIM_TimeBaseStructure:
        DS8 12

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
TIM_OCInitStructure:
        DS8 16

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
DMA_InitStructure:
        DS8 44

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
ADC_InitStructure:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
rcc_clocks:
        DS8 20

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
I2C_InitStructure:
        DS8 16

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
EXTI_initStructure:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
PrescalerValue:
        DS8 2

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Dipswitch_Mode_Check:
        PUSH     {R7,LR}
        MOV      R1,#+4096
        LDR.W    R0,??DataTable20_6  ;; 0x40010c00
        BL       GPIO_ReadInputDataBit
        LDR.W    R1,??DataTable20_7
        STRB     R0,[R1, #+0]
        MOV      R1,#+8192
        LDR.W    R0,??DataTable20_6  ;; 0x40010c00
        BL       GPIO_ReadInputDataBit
        LDR.W    R1,??DataTable20_7
        STRB     R0,[R1, #+1]
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Initial_Device:
        PUSH     {R7,LR}
        BL       RCC_Configuration
        BL       NVIC_Configuration
        LDR.W    R0,??DataTable20_8
        BL       RCC_GetClocksFreq
        BL       GPIO_Configuration
        BL       TIMER_Init
        BL       Dipswitch_Mode_Check
        MOVS     R0,#+115200
        BL       USART1_Init
        MOVS     R0,#+115200
        BL       USART2_Init
        MOV      R0,#+38400
        BL       UART4_Init
        MOVS     R0,#+115200
        BL       UART5_Init
        LDR.W    R0,??DataTable20_8
        LDR      R0,[R0, #+0]
        MOV      R1,#+1000
        UDIV     R0,R0,R1
        BL       SysTick_Config
        CMP      R0,#+0
        BEQ.N    ??Initial_Device_0
??Initial_Device_1:
        B.N      ??Initial_Device_1
??Initial_Device_0:
        BL       NVIC_Configuration
        BL       DMA_Configuration
        BL       ADC_Configuration
        BL       I2C_Configuration
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART1_Init:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.W    R0,??DataTable20_9
        MOVS     R1,#+115200
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable20_9
        MOVS     R1,#+0
        STRH     R1,[R0, #+4]
        LDR.W    R0,??DataTable20_9
        MOVS     R1,#+0
        STRH     R1,[R0, #+6]
        LDR.W    R0,??DataTable20_9
        MOVS     R1,#+0
        STRH     R1,[R0, #+8]
        LDR.W    R0,??DataTable20_9
        MOVS     R1,#+0
        STRH     R1,[R0, #+12]
        LDR.W    R0,??DataTable20_9
        MOVS     R1,#+12
        STRH     R1,[R0, #+10]
        LDR.W    R1,??DataTable20_9
        LDR.W    R0,??DataTable20_10  ;; 0x40013800
        BL       USART_Init
        MOVS     R2,#+1
        MOVW     R1,#+1317
        LDR.W    R0,??DataTable20_10  ;; 0x40013800
        BL       USART_ITConfig
        MOVS     R2,#+1
        MOVW     R1,#+1574
        LDR.W    R0,??DataTable20_10  ;; 0x40013800
        BL       USART_ITConfig
        MOVS     R1,#+1
        LDR.W    R0,??DataTable20_10  ;; 0x40013800
        BL       USART_Cmd
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART2_Init:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.W    R0,??DataTable20_9
        STR      R4,[R0, #+0]
        LDR.W    R0,??DataTable20_9
        MOVS     R1,#+0
        STRH     R1,[R0, #+4]
        LDR.W    R0,??DataTable20_9
        MOVS     R1,#+0
        STRH     R1,[R0, #+6]
        LDR.W    R0,??DataTable20_9
        MOVS     R1,#+0
        STRH     R1,[R0, #+8]
        LDR.W    R0,??DataTable20_9
        MOVS     R1,#+0
        STRH     R1,[R0, #+12]
        LDR.W    R0,??DataTable20_9
        MOVS     R1,#+12
        STRH     R1,[R0, #+10]
        LDR.W    R1,??DataTable20_9
        LDR.W    R0,??DataTable20_11  ;; 0x40004400
        BL       USART_Init
        MOVS     R2,#+1
        MOVW     R1,#+1317
        LDR.W    R0,??DataTable20_11  ;; 0x40004400
        BL       USART_ITConfig
        MOVS     R2,#+1
        MOVW     R1,#+1574
        LDR.W    R0,??DataTable20_11  ;; 0x40004400
        BL       USART_ITConfig
        MOVS     R1,#+1
        LDR.W    R0,??DataTable20_11  ;; 0x40004400
        BL       USART_Cmd
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART3_Init:
        PUSH     {R7,LR}
        LDR.W    R0,??DataTable20_9
        MOV      R1,#+9600
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable20_9
        MOVS     R1,#+0
        STRH     R1,[R0, #+4]
        LDR.W    R0,??DataTable20_9
        MOVS     R1,#+0
        STRH     R1,[R0, #+6]
        LDR.W    R0,??DataTable20_9
        MOVS     R1,#+0
        STRH     R1,[R0, #+8]
        LDR.W    R0,??DataTable20_9
        MOVS     R1,#+0
        STRH     R1,[R0, #+12]
        LDR.W    R0,??DataTable20_9
        MOVS     R1,#+12
        STRH     R1,[R0, #+10]
        LDR.W    R1,??DataTable20_9
        LDR.W    R0,??DataTable20_12  ;; 0x40004800
        BL       USART_Init
        MOVS     R2,#+1
        MOVW     R1,#+1317
        LDR.W    R0,??DataTable20_12  ;; 0x40004800
        BL       USART_ITConfig
        MOVS     R2,#+1
        MOVW     R1,#+1574
        LDR.W    R0,??DataTable20_12  ;; 0x40004800
        BL       USART_ITConfig
        MOVS     R1,#+1
        LDR.W    R0,??DataTable20_12  ;; 0x40004800
        BL       USART_Cmd
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
UART4_Init:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.W    R0,??DataTable20_9
        STR      R4,[R0, #+0]
        LDR.W    R0,??DataTable20_9
        MOVS     R1,#+0
        STRH     R1,[R0, #+4]
        LDR.W    R0,??DataTable20_9
        MOVS     R1,#+0
        STRH     R1,[R0, #+6]
        LDR.W    R0,??DataTable20_9
        MOVS     R1,#+0
        STRH     R1,[R0, #+8]
        LDR.W    R0,??DataTable20_9
        MOVS     R1,#+0
        STRH     R1,[R0, #+12]
        LDR.W    R0,??DataTable20_9
        MOVS     R1,#+12
        STRH     R1,[R0, #+10]
        LDR.W    R1,??DataTable20_9
        LDR.W    R0,??DataTable20_13  ;; 0x40004c00
        BL       USART_Init
        MOVS     R2,#+1
        MOVW     R1,#+1317
        LDR.W    R0,??DataTable20_13  ;; 0x40004c00
        BL       USART_ITConfig
        MOVS     R2,#+1
        MOVW     R1,#+1574
        LDR.W    R0,??DataTable20_13  ;; 0x40004c00
        BL       USART_ITConfig
        MOVS     R1,#+1
        LDR.W    R0,??DataTable20_13  ;; 0x40004c00
        BL       USART_Cmd
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
UART5_Init:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.W    R0,??DataTable20_9
        STR      R4,[R0, #+0]
        LDR.W    R0,??DataTable20_9
        MOVS     R1,#+0
        STRH     R1,[R0, #+4]
        LDR.W    R0,??DataTable20_9
        MOVS     R1,#+0
        STRH     R1,[R0, #+6]
        LDR.W    R0,??DataTable20_9
        MOVS     R1,#+0
        STRH     R1,[R0, #+8]
        LDR.W    R0,??DataTable20_9
        MOVS     R1,#+0
        STRH     R1,[R0, #+12]
        LDR.W    R0,??DataTable20_9
        MOVS     R1,#+12
        STRH     R1,[R0, #+10]
        LDR.W    R1,??DataTable20_9
        LDR.W    R0,??DataTable20_14  ;; 0x40005000
        BL       USART_Init
        MOVS     R2,#+1
        MOVW     R1,#+1317
        LDR.W    R0,??DataTable20_14  ;; 0x40005000
        BL       USART_ITConfig
        MOVS     R2,#+1
        MOVW     R1,#+1574
        LDR.W    R0,??DataTable20_14  ;; 0x40005000
        BL       USART_ITConfig
        MOVS     R1,#+1
        LDR.W    R0,??DataTable20_14  ;; 0x40005000
        BL       USART_Cmd
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIMER1_CH4_DutyPeriod:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+0
        BNE.N    ??TIMER1_CH4_DutyPeriod_0
        LDR.W    R0,??DataTable20_15
        LDR      R0,[R0, #+0]
        MOV      R1,#+1200
        UDIV     R0,R0,R1
        SUBS     R0,R0,#+1
        MOVS     R5,R0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        SUBS     R0,R5,#+1
        MUL      R0,R0,R4
        MOVS     R1,#+100
        UDIV     R0,R0,R1
        MOVS     R6,R0
        LDR.W    R0,??DataTable20_16
        STRH     R6,[R0, #+6]
        LDR.W    R1,??DataTable20_16
        LDR.W    R0,??DataTable20_17  ;; 0x40012c00
        BL       TIM_OC4Init
        MOVS     R1,#+0
        LDR.W    R0,??DataTable20_17  ;; 0x40012c00
        BL       TIM_Cmd
        MOVS     R1,#+0
        LDR.W    R0,??DataTable20_17  ;; 0x40012c00
        BL       TIM_CtrlPWMOutputs
        B.N      ??TIMER1_CH4_DutyPeriod_1
??TIMER1_CH4_DutyPeriod_0:
        LDR.W    R0,??DataTable20_15
        LDR      R0,[R0, #+0]
        MOV      R1,#+1200
        UDIV     R0,R0,R1
        SUBS     R0,R0,#+1
        MOVS     R5,R0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        SUBS     R0,R5,#+1
        MUL      R0,R0,R4
        MOVS     R1,#+100
        UDIV     R0,R0,R1
        MOVS     R6,R0
        LDR.W    R0,??DataTable20_16
        STRH     R6,[R0, #+6]
        LDR.W    R1,??DataTable20_16
        LDR.W    R0,??DataTable20_17  ;; 0x40012c00
        BL       TIM_OC4Init
        MOVS     R1,#+1
        LDR.W    R0,??DataTable20_17  ;; 0x40012c00
        BL       TIM_Cmd
        MOVS     R1,#+1
        LDR.W    R0,??DataTable20_17  ;; 0x40012c00
        BL       TIM_CtrlPWMOutputs
??TIMER1_CH4_DutyPeriod_1:
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Wiper_Active:
        PUSH     {R7,LR}
        LDR.W    R0,??DataTable20_18
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.W    ??Wiper_Active_0
        LDR.W    R0,??DataTable20_18
        LDRB     R0,[R0, #+9]
        CMP      R0,#+1
        BNE.W    ??Wiper_Active_0
        LDR.W    R0,??DataTable20_18
        LDRB     R0,[R0, #+10]
        CMP      R0,#+0
        BEQ.W    ??Wiper_Active_1
        LDR.W    R0,??DataTable20_18
        MOVS     R1,#+1
        STRB     R1,[R0, #+1]
        LDR.W    R0,??DataTable20_18
        LDRB     R0,[R0, #+3]
        CMP      R0,#+2
        BEQ.N    ??Wiper_Active_2
        BCC.W    ??Wiper_Active_3
        CMP      R0,#+4
        BEQ.N    ??Wiper_Active_4
        BCC.N    ??Wiper_Active_5
        CMP      R0,#+6
        BEQ.N    ??Wiper_Active_6
        BCC.N    ??Wiper_Active_7
        CMP      R0,#+7
        BEQ.N    ??Wiper_Active_8
        B.N      ??Wiper_Active_3
??Wiper_Active_2:
        MOVS     R1,#+0
        MOVS     R0,#+1
        BL       Run_Wiper
        LDR.W    R0,??DataTable20_18
        MOVS     R1,#+3
        STRB     R1,[R0, #+3]
        B.N      ??Wiper_Active_0
??Wiper_Active_5:
        LDR.W    R0,??DataTable20_18
        LDRB     R0,[R0, #+4]
        CMP      R0,#+1
        BNE.N    ??Wiper_Active_9
        LDR.W    R0,??DataTable20_18
        MOVS     R1,#+4
        STRB     R1,[R0, #+3]
??Wiper_Active_9:
        B.N      ??Wiper_Active_0
??Wiper_Active_4:
        LDR.W    R0,??DataTable20_18
        LDRB     R0,[R0, #+5]
        CMP      R0,#+0
        BNE.N    ??Wiper_Active_10
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       Run_Wiper
        MOVS     R0,#+1
        BL       Delay_1ms
        MOVS     R1,#+1
        MOVS     R0,#+1
        BL       Run_Wiper
        LDR.W    R0,??DataTable20_18
        MOVS     R1,#+5
        STRB     R1,[R0, #+3]
??Wiper_Active_10:
        B.N      ??Wiper_Active_0
??Wiper_Active_7:
        LDR.W    R0,??DataTable20_18
        LDRB     R0,[R0, #+5]
        CMP      R0,#+1
        BNE.N    ??Wiper_Active_11
        LDR.W    R0,??DataTable20_18
        MOVS     R1,#+6
        STRB     R1,[R0, #+3]
??Wiper_Active_11:
        B.N      ??Wiper_Active_0
??Wiper_Active_6:
        LDR.W    R0,??DataTable20_18
        LDRB     R0,[R0, #+4]
        CMP      R0,#+0
        BNE.N    ??Wiper_Active_12
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       Run_Wiper
        LDR.W    R0,??DataTable20_18
        MOVS     R1,#+7
        STRB     R1,[R0, #+3]
        LDR.W    R0,??DataTable20_18
        MOVS     R1,#+1
        STRB     R1,[R0, #+13]
        LDR.W    R0,??DataTable20_18
        LDRB     R0,[R0, #+10]
        CMP      R0,#+15
        BCS.N    ??Wiper_Active_12
        LDR.W    R0,??DataTable20_18
        LDRB     R0,[R0, #+10]
        SUBS     R0,R0,#+1
        LDR.W    R1,??DataTable20_18
        STRB     R0,[R1, #+10]
??Wiper_Active_12:
        B.N      ??Wiper_Active_0
??Wiper_Active_8:
        LDR.W    R0,??DataTable20_18
        LDRB     R0,[R0, #+12]
        CMP      R0,#+0
        BEQ.N    ??Wiper_Active_13
        LDR.W    R0,??DataTable20_18
        LDRB     R0,[R0, #+24]
        CMP      R0,#+0
        BEQ.N    ??Wiper_Active_14
        CMP      R0,#+1
        BEQ.N    ??Wiper_Active_15
        B.N      ??Wiper_Active_16
??Wiper_Active_14:
        LDR.W    R0,??DataTable20_18
        LDRB     R0,[R0, #+16]
        CMP      R0,#+0
        BEQ.N    ??Wiper_Active_17
        LDR.W    R0,??DataTable20_18
        MOVS     R1,#+2
        STRB     R1,[R0, #+3]
        LDR.W    R0,??DataTable20_18
        MOVS     R1,#+0
        STRB     R1,[R0, #+16]
        LDR.W    R0,??DataTable20_18
        MOVS     R1,#+0
        STRB     R1,[R0, #+13]
??Wiper_Active_17:
        B.N      ??Wiper_Active_16
??Wiper_Active_15:
        LDR.W    R0,??DataTable20_18
        MOVS     R1,#+0
        STRB     R1,[R0, #+13]
        LDR.W    R0,??DataTable20_18
        LDRB     R0,[R0, #+14]
        CMP      R0,#+0
        BEQ.N    ??Wiper_Active_18
        LDR.W    R0,??DataTable20_18
        MOVS     R1,#+0
        STRB     R1,[R0, #+14]
??Wiper_Active_18:
        LDR.W    R0,??DataTable20_18
        LDRB     R0,[R0, #+15]
        CMP      R0,#+0
        BEQ.N    ??Wiper_Active_19
        LDR.W    R0,??DataTable20_18
        MOVS     R1,#+0
        STRB     R1,[R0, #+15]
??Wiper_Active_19:
        LDR.W    R0,??DataTable20_18
        LDRB     R0,[R0, #+10]
        CMP      R0,#+1
        BCC.N    ??Wiper_Active_20
        LDR.W    R0,??DataTable20_18
        MOVS     R1,#+0
        STRB     R1,[R0, #+10]
??Wiper_Active_20:
        B.N      ??Wiper_Active_16
??Wiper_Active_13:
        LDR.W    R0,??DataTable20_18
        MOVS     R1,#+2
        STRB     R1,[R0, #+3]
        LDR.W    R0,??DataTable20_18
        MOVS     R1,#+0
        STRB     R1,[R0, #+16]
        LDR.W    R0,??DataTable20_18
        MOVS     R1,#+0
        STRB     R1,[R0, #+13]
        LDR.W    R0,??DataTable20_18
        LDRB     R0,[R0, #+24]
        CMP      R0,#+1
        BNE.N    ??Wiper_Active_16
        LDR.W    R0,??DataTable20_18
        LDRB     R0,[R0, #+10]
        CMP      R0,#+1
        BCC.N    ??Wiper_Active_16
        LDR.W    R0,??DataTable20_18
        MOVS     R1,#+0
        STRB     R1,[R0, #+10]
??Wiper_Active_16:
        B.N      ??Wiper_Active_0
??Wiper_Active_3:
        B.N      ??Wiper_Active_0
??Wiper_Active_1:
        LDR.W    R0,??DataTable20_18
        MOVS     R1,#+0
        STRB     R1,[R0, #+1]
        LDR.W    R0,??DataTable20_18
        MOVS     R1,#+0
        STRB     R1,[R0, #+9]
        LDR.W    R0,??DataTable20_18
        MOVS     R1,#+0
        STRB     R1,[R0, #+10]
??Wiper_Active_0:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Wiper_Function:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??Wiper_Function_0
        CMP      R4,#+1
        BEQ.N    ??Wiper_Function_1
        B.N      ??Wiper_Function_2
??Wiper_Function_0:
        LDR.W    R0,??DataTable20_18
        LDRB     R0,[R0, #+24]
        CMP      R0,#+2
        BNE.N    ??Wiper_Function_3
        MOVS     R1,#+255
        MOVS     R0,#+0
        BL       Run_Wiper
        LDR.W    R0,??DataTable20_18
        MOVS     R1,#+0
        STRB     R1,[R0, #+1]
        LDR.W    R0,??DataTable20_18
        MOVS     R1,#+0
        STRB     R1,[R0, #+9]
        LDR.W    R0,??DataTable20_18
        MOVS     R1,#+0
        STRB     R1,[R0, #+10]
        B.N      ??Wiper_Function_4
??Wiper_Function_3:
        BL       Wiper_Active
??Wiper_Function_4:
        LDR.W    R0,??DataTable20_18
        LDRB     R0,[R0, #+23]
        CMP      R0,#+1
        BNE.N    ??Wiper_Function_5
        LDR.W    R0,??DataTable20_18
        MOVS     R1,#+0
        STRB     R1,[R0, #+23]
        LDR.W    R0,??DataTable20_18
        MOVS     R1,#+1
        STRB     R1,[R0, #+24]
        LDR.W    R0,??DataTable20_18
        LDRB     R0,[R0, #+13]
        CMP      R0,#+0
        BEQ.N    ??Wiper_Function_6
        LDR.W    R0,??DataTable20_18
        MOVS     R1,#+0
        STRB     R1,[R0, #+13]
??Wiper_Function_6:
        LDR.W    R0,??DataTable20_18
        LDRB     R0,[R0, #+18]
        CMP      R0,#+1
        BNE.N    ??Wiper_Function_5
        LDR.W    R0,??DataTable20_18
        MOVS     R1,#+0
        STRB     R1,[R0, #+18]
??Wiper_Function_5:
        B.N      ??Wiper_Function_7
??Wiper_Function_1:
        LDR.W    R0,??DataTable20_19
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??Wiper_Function_8
        LDR.W    R0,??DataTable20_19
        LDRB     R0,[R0, #+3]
        CMP      R0,#+0
        BEQ.N    ??Wiper_Function_8
        LDR.W    R0,??DataTable20_18
        LDRB     R0,[R0, #+4]
        CMP      R0,#+0
        BNE.N    ??Wiper_Function_8
        LDR.W    R0,??DataTable20_18
        LDRB     R0,[R0, #+1]
        CMP      R0,#+0
        BNE.N    ??Wiper_Function_8
        LDR.W    R0,??DataTable20_19
        LDRB     R0,[R0, #+4]
        CMP      R0,#+0
        BNE.N    ??Wiper_Function_8
        MOVS     R1,#+1
        MOVS     R0,#+1
        BL       Run_Wiper
??Wiper_Function_8:
        B.N      ??Wiper_Function_7
??Wiper_Function_2:
??Wiper_Function_7:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Initial_Wiper:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??Initial_Wiper_0
        CMP      R4,#+1
        BEQ.N    ??Initial_Wiper_1
        B.N      ??Initial_Wiper_2
??Initial_Wiper_0:
        LDR.W    R0,??DataTable20_18
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Initial_Wiper_3
        LDR.W    R0,??DataTable20_18
        LDRB     R0,[R0, #+3]
        CMP      R0,#+0
        BEQ.N    ??Initial_Wiper_4
        CMP      R0,#+1
        BEQ.N    ??Initial_Wiper_5
        CMP      R0,#+5
        BEQ.N    ??Initial_Wiper_6
        CMP      R0,#+6
        BEQ.N    ??Initial_Wiper_7
        B.N      ??Initial_Wiper_8
??Initial_Wiper_4:
        MOVS     R1,#+0
        MOVS     R0,#+1
        BL       Run_Wiper
        LDR.W    R0,??DataTable20_18
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        B.N      ??Initial_Wiper_3
??Initial_Wiper_5:
        LDR.W    R0,??DataTable20_18
        LDRB     R0,[R0, #+4]
        CMP      R0,#+0
        BNE.N    ??Initial_Wiper_9
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       Run_Wiper
        LDR.W    R0,??DataTable20_18
        MOVS     R1,#+2
        STRB     R1,[R0, #+3]
        LDR.W    R0,??DataTable20_18
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
??Initial_Wiper_9:
        LDR.W    R0,??DataTable20_18
        LDRB     R0,[R0, #+5]
        CMP      R0,#+0
        BNE.N    ??Initial_Wiper_10
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       Run_Wiper
        MOVS     R0,#+1
        BL       Delay_1ms
        MOVS     R1,#+1
        MOVS     R0,#+1
        BL       Run_Wiper
        LDR.W    R0,??DataTable20_18
        MOVS     R1,#+5
        STRB     R1,[R0, #+3]
??Initial_Wiper_10:
        B.N      ??Initial_Wiper_3
??Initial_Wiper_6:
        LDR.W    R0,??DataTable20_18
        LDRB     R0,[R0, #+5]
        CMP      R0,#+1
        BNE.N    ??Initial_Wiper_11
        LDR.W    R0,??DataTable20_18
        MOVS     R1,#+6
        STRB     R1,[R0, #+3]
??Initial_Wiper_11:
        B.N      ??Initial_Wiper_3
??Initial_Wiper_7:
        LDR.W    R0,??DataTable20_18
        LDRB     R0,[R0, #+4]
        CMP      R0,#+0
        BNE.N    ??Initial_Wiper_12
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       Run_Wiper
        LDR.W    R0,??DataTable20_18
        MOVS     R1,#+2
        STRB     R1,[R0, #+3]
        LDR.W    R0,??DataTable20_18
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
??Initial_Wiper_12:
        B.N      ??Initial_Wiper_3
??Initial_Wiper_8:
??Initial_Wiper_3:
        B.N      ??Initial_Wiper_13
??Initial_Wiper_1:
        LDR.W    R0,??DataTable20_19
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Initial_Wiper_14
        LDR.W    R0,??DataTable20_18
        LDRB     R0,[R0, #+4]
        CMP      R0,#+1
        BNE.N    ??Initial_Wiper_15
        MOVS     R1,#+1
        MOVS     R0,#+1
        BL       Run_Wiper
        B.N      ??Initial_Wiper_14
??Initial_Wiper_15:
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       Run_Wiper
        LDR.W    R0,??DataTable20_19
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
??Initial_Wiper_14:
        B.N      ??Initial_Wiper_13
??Initial_Wiper_2:
??Initial_Wiper_13:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Run_Wiper:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??Run_Wiper_0
        CMP      R4,#+1
        BEQ.N    ??Run_Wiper_1
        B.N      ??Run_Wiper_2
??Run_Wiper_0:
        MOVS     R1,#+64
        LDR.N    R0,??DataTable20_20  ;; 0x40011000
        BL       GPIO_ResetBits
        MOVS     R0,#+1
        BL       TIMER1_CH4_DutyPeriod
        LDR.N    R0,??DataTable20_18
        MOVS     R1,#+0
        STRB     R1,[R0, #+1]
        LDR.N    R0,??DataTable20_21
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        B.N      ??Run_Wiper_2
??Run_Wiper_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??Run_Wiper_3
        CMP      R5,#+1
        BEQ.N    ??Run_Wiper_4
        B.N      ??Run_Wiper_5
??Run_Wiper_3:
        MOV      R1,#+256
        LDR.N    R0,??DataTable20_20  ;; 0x40011000
        BL       GPIO_ResetBits
        LDR.N    R0,??DataTable20_18
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        B.N      ??Run_Wiper_6
??Run_Wiper_4:
        MOV      R1,#+256
        LDR.N    R0,??DataTable20_20  ;; 0x40011000
        BL       GPIO_SetBits
        LDR.N    R0,??DataTable20_18
        MOVS     R1,#+0
        STRB     R1,[R0, #+2]
        B.N      ??Run_Wiper_6
??Run_Wiper_5:
??Run_Wiper_6:
        MOVS     R1,#+64
        LDR.N    R0,??DataTable20_20  ;; 0x40011000
        BL       GPIO_SetBits
        MOVS     R0,#+100
        BL       TIMER1_CH4_DutyPeriod
        LDR.N    R0,??DataTable20_18
        MOVS     R1,#+1
        STRB     R1,[R0, #+1]
        LDR.N    R0,??DataTable20_22
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Run_Wiper_7
        LDR.N    R0,??DataTable20_21
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
??Run_Wiper_7:
??Run_Wiper_2:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIMER_Init:
        LDR.N    R1,??DataTable20_15
        LDR      R1,[R1, #+0]
        MOV      R2,#+1200
        UDIV     R1,R1,R2
        SUBS     R1,R1,#+1
        MOVS     R0,R1
        LDR.N    R1,??DataTable20_15
        LDR      R1,[R1, #+0]
        LDR.N    R2,??DataTable20_23  ;; 0x1d4c0
        UDIV     R1,R1,R2
        LDR.N    R2,??DataTable20_24
        STRH     R1,[R2, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_Configuration:
        PUSH     {R7,LR}
        BL       SystemInit
        MOVS     R1,#+1
        MOVS     R0,#+61
        BL       RCC_APB2PeriphClockCmd
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
NVIC_Configuration:
        PUSH     {R7,LR}
        MOV      R0,#+1280
        BL       NVIC_PriorityGroupConfig
        LDR.N    R0,??DataTable20_25
        MOVS     R1,#+6
        STRB     R1,[R0, #+0]
        LDR.N    R0,??DataTable20_25
        MOVS     R1,#+1
        STRB     R1,[R0, #+1]
        LDR.N    R0,??DataTable20_25
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
        LDR.N    R0,??DataTable20_25
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        LDR.N    R0,??DataTable20_25
        BL       NVIC_Init
        MOVS     R0,#+1
        BL       EXTI_ClearITPendingBit
        MOVS     R0,#+6
        BL       NVIC_ClearPendingIRQ
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
GPIO_Configuration:
        PUSH     {R7,LR}
        LDR.N    R0,??DataTable20_26
        MOVS     R1,#+1
        STRH     R1,[R0, #+0]
        LDR.N    R0,??DataTable20_26
        MOVS     R1,#+40
        STRB     R1,[R0, #+3]
        LDR.N    R0,??DataTable20_26
        MOVS     R1,#+2
        STRB     R1,[R0, #+2]
        LDR.N    R1,??DataTable20_26
        LDR.N    R0,??DataTable20_27  ;; 0x40010800
        BL       GPIO_Init
        LDR.N    R0,??DataTable20_26
        MOVS     R1,#+2
        STRH     R1,[R0, #+0]
        LDR.N    R0,??DataTable20_26
        MOVS     R1,#+40
        STRB     R1,[R0, #+3]
        LDR.N    R0,??DataTable20_26
        MOVS     R1,#+2
        STRB     R1,[R0, #+2]
        LDR.N    R1,??DataTable20_26
        LDR.N    R0,??DataTable20_27  ;; 0x40010800
        BL       GPIO_Init
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       GPIO_EXTILineConfig
        LDR.N    R0,??DataTable20_28
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable20_28
        MOVS     R1,#+0
        STRB     R1,[R0, #+4]
        LDR.N    R0,??DataTable20_28
        MOVS     R1,#+12
        STRB     R1,[R0, #+5]
        LDR.N    R0,??DataTable20_28
        MOVS     R1,#+1
        STRB     R1,[R0, #+6]
        LDR.N    R0,??DataTable20_28
        BL       EXTI_Init
        LDR.N    R0,??DataTable20_26
        MOV      R1,#+800
        STRH     R1,[R0, #+0]
        LDR.N    R0,??DataTable20_26
        MOVS     R1,#+16
        STRB     R1,[R0, #+3]
        LDR.N    R0,??DataTable20_26
        MOVS     R1,#+2
        STRB     R1,[R0, #+2]
        LDR.N    R1,??DataTable20_26
        LDR.N    R0,??DataTable20_6  ;; 0x40010c00
        BL       GPIO_Init
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DMA_Configuration:
        PUSH     {R7,LR}
        LDR.N    R0,??DataTable20_29  ;; 0x40020008
        BL       DMA_DeInit
        LDR.N    R0,??DataTable20_30
        LDR.N    R1,??DataTable20_31  ;; 0x4001244c
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable20_30
        LDR.N    R1,??DataTable20_32
        STR      R1,[R0, #+4]
        LDR.N    R0,??DataTable20_30
        MOVS     R1,#+0
        STR      R1,[R0, #+8]
        LDR.N    R0,??DataTable20_30
        MOVS     R1,#+2
        STR      R1,[R0, #+12]
        LDR.N    R0,??DataTable20_30
        MOVS     R1,#+0
        STR      R1,[R0, #+16]
        LDR.N    R0,??DataTable20_30
        MOVS     R1,#+128
        STR      R1,[R0, #+20]
        LDR.N    R0,??DataTable20_30
        MOV      R1,#+512
        STR      R1,[R0, #+24]
        LDR.N    R0,??DataTable20_30
        MOV      R1,#+2048
        STR      R1,[R0, #+28]
        LDR.N    R0,??DataTable20_30
        MOVS     R1,#+32
        STR      R1,[R0, #+32]
        LDR.N    R0,??DataTable20_30
        MOV      R1,#+8192
        STR      R1,[R0, #+36]
        LDR.N    R0,??DataTable20_30
        MOVS     R1,#+0
        STR      R1,[R0, #+40]
        LDR.N    R1,??DataTable20_30
        LDR.N    R0,??DataTable20_29  ;; 0x40020008
        BL       DMA_Init
        MOVS     R1,#+1
        LDR.N    R0,??DataTable20_29  ;; 0x40020008
        BL       DMA_Cmd
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC_Configuration:
        PUSH     {R7,LR}
        LDR.N    R0,??DataTable20_33
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable20_33
        MOVS     R1,#+1
        STRB     R1,[R0, #+4]
        LDR.N    R0,??DataTable20_33
        MOVS     R1,#+1
        STRB     R1,[R0, #+5]
        LDR.N    R0,??DataTable20_33
        MOVS     R1,#+917504
        STR      R1,[R0, #+8]
        LDR.N    R0,??DataTable20_33
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
        LDR.N    R0,??DataTable20_33
        MOVS     R1,#+2
        STRB     R1,[R0, #+16]
        LDR.N    R1,??DataTable20_33
        LDR.N    R0,??DataTable20_34  ;; 0x40012400
        BL       ADC_Init
        MOVS     R0,#+1
        BL       ADC_TempSensorVrefintCmd
        MOVS     R3,#+3
        MOVS     R2,#+1
        MOVS     R1,#+0
        LDR.N    R0,??DataTable20_34  ;; 0x40012400
        BL       ADC_RegularChannelConfig
        MOVS     R3,#+3
        MOVS     R2,#+2
        MOVS     R1,#+4
        LDR.N    R0,??DataTable20_34  ;; 0x40012400
        BL       ADC_RegularChannelConfig
        MOVS     R1,#+1
        LDR.N    R0,??DataTable20_34  ;; 0x40012400
        BL       ADC_Cmd
        MOVS     R1,#+1
        LDR.N    R0,??DataTable20_34  ;; 0x40012400
        BL       ADC_DMACmd
        LDR.N    R0,??DataTable20_34  ;; 0x40012400
        BL       ADC_ResetCalibration
??ADC_Configuration_0:
        LDR.N    R0,??DataTable20_34  ;; 0x40012400
        BL       ADC_GetResetCalibrationStatus
        CMP      R0,#+0
        BNE.N    ??ADC_Configuration_0
        LDR.N    R0,??DataTable20_34  ;; 0x40012400
        BL       ADC_StartCalibration
??ADC_Configuration_1:
        LDR.N    R0,??DataTable20_34  ;; 0x40012400
        BL       ADC_GetCalibrationStatus
        CMP      R0,#+0
        BNE.N    ??ADC_Configuration_1
        MOVS     R1,#+1
        LDR.N    R0,??DataTable20_34  ;; 0x40012400
        BL       ADC_SoftwareStartConvCmd
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C_Configuration:
        PUSH     {R7,LR}
        LDR.N    R0,??DataTable20_35
        LDR.N    R1,??DataTable20_36  ;; 0x186a0
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable20_35
        MOVS     R1,#+0
        STRH     R1,[R0, #+4]
        LDR.N    R0,??DataTable20_35
        MOVW     R1,#+49151
        STRH     R1,[R0, #+6]
        LDR.N    R0,??DataTable20_35
        MOVS     R1,#+136
        STRH     R1,[R0, #+8]
        LDR.N    R0,??DataTable20_35
        MOV      R1,#+1024
        STRH     R1,[R0, #+10]
        LDR.N    R0,??DataTable20_35
        MOV      R1,#+16384
        STRH     R1,[R0, #+12]
        MOVS     R1,#+1
        LDR.N    R0,??DataTable20_37  ;; 0x40005400
        BL       I2C_Cmd
        LDR.N    R1,??DataTable20_35
        LDR.N    R0,??DataTable20_37  ;; 0x40005400
        BL       I2C_Init
        LDR.N    R0,??DataTable20_35
        LDR.N    R1,??DataTable20_36  ;; 0x186a0
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable20_35
        MOVS     R1,#+0
        STRH     R1,[R0, #+4]
        LDR.N    R0,??DataTable20_35
        MOVW     R1,#+49151
        STRH     R1,[R0, #+6]
        LDR.N    R0,??DataTable20_35
        MOVS     R1,#+160
        STRH     R1,[R0, #+8]
        LDR.N    R0,??DataTable20_35
        MOV      R1,#+1024
        STRH     R1,[R0, #+10]
        LDR.N    R0,??DataTable20_35
        MOV      R1,#+16384
        STRH     R1,[R0, #+12]
        MOVS     R1,#+1
        LDR.N    R0,??DataTable20_38  ;; 0x40005800
        BL       I2C_Cmd
        LDR.N    R1,??DataTable20_35
        LDR.N    R0,??DataTable20_38  ;; 0x40005800
        BL       I2C_Init
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20:
        DC32     0xe000e280

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_1:
        DC32     0xe000ed18

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_2:
        DC32     0xe000e400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_3:
        DC32     0xe000e014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_4:
        DC32     0xe000e018

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_5:
        DC32     0xe000e010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_6:
        DC32     0x40010c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_7:
        DC32     stDIP

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_8:
        DC32     rcc_clocks

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_9:
        DC32     USART_InitStructure

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_10:
        DC32     0x40013800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_11:
        DC32     0x40004400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_12:
        DC32     0x40004800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_13:
        DC32     0x40004c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_14:
        DC32     0x40005000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_15:
        DC32     SystemCoreClock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_16:
        DC32     TIM_OCInitStructure

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_17:
        DC32     0x40012c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_18:
        DC32     stWIPER2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_19:
        DC32     stWIPER1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_20:
        DC32     0x40011000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_21:
        DC32     Wiper_Active_Flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_22:
        DC32     Wiper_Error_Status_Flag

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_23:
        DC32     0x1d4c0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_24:
        DC32     PrescalerValue

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_25:
        DC32     NVIC_InitStructure

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_26:
        DC32     GPIO_InitStructure

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_27:
        DC32     0x40010800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_28:
        DC32     EXTI_initStructure

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_29:
        DC32     0x40020008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_30:
        DC32     DMA_InitStructure

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_31:
        DC32     0x4001244c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_32:
        DC32     stADC

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_33:
        DC32     ADC_InitStructure

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_34:
        DC32     0x40012400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_35:
        DC32     I2C_InitStructure

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_36:
        DC32     0x186a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_37:
        DC32     0x40005400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable20_38:
        DC32     0x40005800

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
//   162 bytes in section .bss
// 2 694 bytes in section .text
// 
// 2 694 bytes of CODE memory
//   162 bytes of DATA memory
//
//Errors: none
//Warnings: 1
