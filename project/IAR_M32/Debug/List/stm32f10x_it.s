///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    05/Aug/2022  17:17:36 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\TTT\Desktop\zz.STDFW\00.Study\Libraries\STM32F /
//                    10x_StdPeriph_Driver\src\stm32f10x_it.c                 /
//    Command line =  C:\Users\TTT\Desktop\zz.STDFW\00.Study\Libraries\STM32F /
//                    10x_StdPeriph_Driver\src\stm32f10x_it.c -D              /
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
//                    Debug\List\stm32f10x_it.s                               /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm32f10x_it

        #define SHT_PROGBITS 0x1

        EXTERN Delay_Decrement
        EXTERN TIM_ClearITPendingBit
        EXTERN TIM_GetITStatus
        EXTERN TimingDelay_Decrement
        EXTERN USART_ClearITPendingBit
        EXTERN USART_GetITStatus
        EXTERN USART_ReceiveData
        EXTERN USART_SendData
        EXTERN counter
        EXTERN i2cDelay_Decrement
        EXTERN stBYPASS
        EXTERN stDIP
        EXTERN stERROR
        EXTERN stINFO
        EXTERN stLED_SET
        EXTERN stLRF
        EXTERN stSONY
        EXTERN stSYS
        EXTERN stTSM
        EXTERN stUART4
        EXTERN stUART5
        EXTERN stUSART1
        EXTERN stUSART2
        EXTERN stWIPER1
        EXTERN stWIPER2

        PUBLIC ADC1_2_IRQHandler
        PUBLIC Boot_Status_Check_Parser
        PUBLIC Boot_Status_Data_Trans
        PUBLIC BusFault_Handler
        PUBLIC CAN1_RX1_IRQHandler
        PUBLIC CAN1_SCE_IRQHandler
        PUBLIC DMA1_Channel2_IRQHandler
        PUBLIC DMA1_Channel3_IRQHandler
        PUBLIC DMA1_Channel4_IRQHandler
        PUBLIC DMA1_Channel5_IRQHandler
        PUBLIC DMA1_Channel6_IRQHandler
        PUBLIC DMA1_Channel7_IRQHandler
        PUBLIC DebugMon_Handler
        PUBLIC EXTI15_10_IRQHandler
        PUBLIC FLASH_IRQHandler
        PUBLIC HardFault_Handler
        PUBLIC I2C1_ER_IRQHandler
        PUBLIC I2C1_EV_IRQHandler
        PUBLIC I2C2_ER_IRQHandler
        PUBLIC I2C2_EV_IRQHandler
        PUBLIC LRF_Data_Clear
        PUBLIC LRF_Data_Pasher
        PUBLIC LRF_Trans_Data
        PUBLIC Main_Protocol_Data_Pasher
        PUBLIC MemManage_Handler
        PUBLIC NMI_Handler
        PUBLIC PVD_IRQHandler
        PUBLIC PendSV_Handler
        PUBLIC Protocol_Command_Check
        PUBLIC RCC_IRQHandler
        PUBLIC RTCAlarm_IRQHandler
        PUBLIC RTC_IRQHandler
        PUBLIC Rx_Main_Comm_Handling
        PUBLIC Rx_Main_Second_Comm_Check
        PUBLIC Rx_Pelco_Address_Check
        PUBLIC Rx_Pelco_Data_Check
        PUBLIC Rx_Second_Comm_Check
        PUBLIC Rx_Usart_Comm_Handling
        PUBLIC SONY_Data_Clear
        PUBLIC SONY_Data_Pasher
        PUBLIC SPI1_IRQHandler
        PUBLIC SPI2_IRQHandler
        PUBLIC SVC_Handler
        PUBLIC SYSTEM_Data_Buffer
        PUBLIC SYSTEM_Data_Handling
        PUBLIC SYSTEM_Data_Parser
        PUBLIC SYSTEM_Data_Reordering
        PUBLIC Sony_Data_Pasher
        PUBLIC SysTick_Handler
        PUBLIC TAMPER_IRQHandler
        PUBLIC TIM1_BRK_IRQHandler
        PUBLIC TIM1_CC_IRQHandler
        PUBLIC TIM1_TRG_COM_IRQHandler
        PUBLIC TIM1_UP_IRQHandler
        PUBLIC TIM2_IRQHandler
        PUBLIC TIM3_IRQHandler
        PUBLIC TIM4_IRQHandler
        PUBLIC TSM_Data_Pasher
        PUBLIC UART4_Data_Pasher
        PUBLIC UART4_IRQHandler
        PUBLIC UART5_IRQHandler
        PUBLIC USART1_IRQHandler
        PUBLIC USART2_IRQHandler
        PUBLIC USART3_IRQHandler
        PUBLIC USB_HP_CAN1_TX_IRQHandler
        PUBLIC UsageFault_Handler
        PUBLIC WWDG_IRQHandler
        PUBLIC assert_failed
        PUBLIC g_Tx_Buf


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
assert_failed:
??assert_failed_0:
        B.N      ??assert_failed_0

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
NMI_Handler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
HardFault_Handler:
??HardFault_Handler_0:
        B.N      ??HardFault_Handler_0

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
MemManage_Handler:
??MemManage_Handler_0:
        B.N      ??MemManage_Handler_0

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
BusFault_Handler:
??BusFault_Handler_0:
        B.N      ??BusFault_Handler_0

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
UsageFault_Handler:
??UsageFault_Handler_0:
        B.N      ??UsageFault_Handler_0

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SVC_Handler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DebugMon_Handler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
PendSV_Handler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SysTick_Handler:
        PUSH     {R7,LR}
        BL       TimingDelay_Decrement
        BL       Delay_Decrement
        BL       i2cDelay_Decrement
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
WWDG_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
PVD_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TAMPER_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DMA1_Channel2_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DMA1_Channel3_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DMA1_Channel4_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DMA1_Channel5_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DMA1_Channel6_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DMA1_Channel7_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
ADC1_2_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USB_HP_CAN1_TX_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CAN1_RX1_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CAN1_SCE_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM1_BRK_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM1_UP_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM1_TRG_COM_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM1_CC_IRQHandler:
        BX       LR               ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
g_Tx_Buf:
        DS8 1

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM2_IRQHandler:
        PUSH     {R7,LR}
        MOVS     R1,#+1
        MOVS     R0,#+1073741824
        BL       TIM_GetITStatus
        CMP      R0,#+0
        BEQ.W    ??TIM2_IRQHandler_0
        MOVS     R1,#+1
        MOVS     R0,#+1073741824
        BL       TIM_ClearITPendingBit
        LDR.W    R0,??DataTable14
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable14
        STRB     R0,[R1, #+0]
        LDR.W    R0,??DataTable14
        LDRB     R0,[R0, #+0]
        CMP      R0,#+100
        BCC.N    ??TIM2_IRQHandler_1
        LDR.W    R0,??DataTable14
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        LDR.W    R0,??DataTable14
        LDRB     R0,[R0, #+1]
        EORS     R0,R0,#0xFF
        LDR.W    R1,??DataTable14
        STRB     R0,[R1, #+1]
??TIM2_IRQHandler_1:
        LDR.W    R0,??DataTable15
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??TIM2_IRQHandler_2
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+4]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable15
        STR      R0,[R1, #+4]
        LDR.W    R0,??DataTable15
        LDR      R0,[R0, #+4]
        MOV      R1,#+1000
        CMP      R0,R1
        BCC.N    ??TIM2_IRQHandler_2
        LDR.W    R0,??DataTable15
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        LDR.W    R0,??DataTable15
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
??TIM2_IRQHandler_2:
        LDR.W    R0,??DataTable15_1
        LDRB     R0,[R0, #+4]
        CMP      R0,#+1
        BNE.N    ??TIM2_IRQHandler_3
        LDR.W    R0,??DataTable15_1
        LDRB     R0,[R0, #+6]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable15_1
        STRB     R0,[R1, #+6]
        LDR.W    R0,??DataTable15_1
        LDRB     R0,[R0, #+6]
        CMP      R0,#+101
        BCC.N    ??TIM2_IRQHandler_3
        LDR.W    R0,??DataTable15_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+6]
        LDR.W    R0,??DataTable15_1
        LDRB     R0,[R0, #+7]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable15_1
        STRB     R0,[R1, #+7]
        LDR.W    R0,??DataTable15_1
        LDRB     R0,[R0, #+7]
        LDR.W    R1,??DataTable15_1
        LDRB     R1,[R1, #+5]
        CMP      R0,R1
        BCC.N    ??TIM2_IRQHandler_3
        LDR.W    R0,??DataTable15_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+4]
        LDR.W    R0,??DataTable15_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+7]
??TIM2_IRQHandler_3:
        LDR.W    R0,??DataTable18
        LDRB     R0,[R0, #+13]
        CMP      R0,#+0
        BEQ.N    ??TIM2_IRQHandler_4
        LDR.W    R0,??DataTable18
        LDRB     R0,[R0, #+14]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable18
        STRB     R0,[R1, #+14]
        LDR.W    R0,??DataTable18
        LDRB     R0,[R0, #+14]
        CMP      R0,#+100
        BCC.N    ??TIM2_IRQHandler_4
        LDR.W    R0,??DataTable18
        LDRB     R0,[R0, #+15]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable18
        STRB     R0,[R1, #+15]
        LDR.W    R0,??DataTable18
        MOVS     R1,#+0
        STRB     R1,[R0, #+14]
        LDR.W    R0,??DataTable18
        LDRB     R0,[R0, #+15]
        LDR.W    R1,??DataTable18
        LDRB     R1,[R1, #+12]
        CMP      R0,R1
        BCC.N    ??TIM2_IRQHandler_4
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+16]
        LDR.W    R0,??DataTable18
        MOVS     R1,#+0
        STRB     R1,[R0, #+15]
        LDR.W    R0,??DataTable18
        MOVS     R1,#+0
        STRB     R1,[R0, #+13]
??TIM2_IRQHandler_4:
        LDR.W    R0,??DataTable18
        LDRB     R0,[R0, #+10]
        CMP      R0,#+0
        BNE.N    ??TIM2_IRQHandler_5
        LDR.W    R0,??DataTable18
        LDRB     R0,[R0, #+13]
        CMP      R0,#+0
        BEQ.N    ??TIM2_IRQHandler_5
        LDR.W    R0,??DataTable18
        MOVS     R1,#+0
        STRB     R1,[R0, #+13]
        LDR.W    R0,??DataTable18
        MOVS     R1,#+0
        STRB     R1,[R0, #+14]
        LDR.W    R0,??DataTable18
        MOVS     R1,#+0
        STRB     R1,[R0, #+15]
??TIM2_IRQHandler_5:
        LDR.W    R0,??DataTable18_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE.N    ??TIM2_IRQHandler_6
        LDR.W    R0,??DataTable18_1
        LDR      R0,[R0, #+4]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable18_1
        STR      R0,[R1, #+4]
        LDR.W    R0,??DataTable18_1
        LDR      R0,[R0, #+4]
        CMP      R0,#+200
        BCC.N    ??TIM2_IRQHandler_6
        LDR.W    R0,??DataTable18_1
        MOVS     R1,#+1
        STRB     R1,[R0, #+8]
        LDR.W    R0,??DataTable18_1
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
        LDR.W    R0,??DataTable18_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
??TIM2_IRQHandler_6:
        LDR.W    R0,??DataTable18_1
        LDRB     R0,[R0, #+9]
        CMP      R0,#+1
        BNE.N    ??TIM2_IRQHandler_7
        LDR.W    R0,??DataTable18_1
        LDR      R0,[R0, #+12]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable18_1
        STR      R0,[R1, #+12]
        LDR.W    R0,??DataTable18_1
        LDR      R0,[R0, #+16]
        LDR.W    R1,??DataTable18_1
        LDR      R1,[R1, #+12]
        CMP      R0,R1
        BCS.N    ??TIM2_IRQHandler_7
        LDR.W    R0,??DataTable18_1
        MOVS     R1,#+1
        STRB     R1,[R0, #+20]
        LDR.W    R0,??DataTable18_1
        MOVS     R1,#+0
        STR      R1,[R0, #+12]
??TIM2_IRQHandler_7:
        LDR.W    R0,??DataTable18_2
        LDRB     R0,[R0, #+2]
        CMP      R0,#+1
        BNE.N    ??TIM2_IRQHandler_8
        LDR.W    R0,??DataTable18_2
        LDRB     R0,[R0, #+3]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable18_2
        STRB     R0,[R1, #+3]
        LDR.W    R0,??DataTable18_2
        LDRB     R0,[R0, #+3]
        CMP      R0,#+50
        BCC.N    ??TIM2_IRQHandler_8
        LDR.W    R0,??DataTable18_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+3]
        LDR.W    R0,??DataTable18_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+2]
??TIM2_IRQHandler_8:
        LDR.W    R0,??DataTable18
        LDRB     R0,[R0, #+18]
        CMP      R0,#+0
        BNE.N    ??TIM2_IRQHandler_9
        LDR.W    R0,??DataTable18
        LDRB     R0,[R0, #+19]
        CMP      R0,#+0
        BNE.N    ??TIM2_IRQHandler_10
        LDR.W    R0,??DataTable18
        LDRB     R0,[R0, #+20]
        CMP      R0,#+0
        BNE.N    ??TIM2_IRQHandler_10
        LDR.W    R0,??DataTable18
        LDRB     R0,[R0, #+21]
        CMP      R0,#+0
        BNE.N    ??TIM2_IRQHandler_10
        LDR.W    R0,??DataTable18
        LDRB     R0,[R0, #+22]
        CMP      R0,#+0
        BEQ.N    ??TIM2_IRQHandler_9
??TIM2_IRQHandler_10:
        LDR.W    R0,??DataTable18
        MOVS     R1,#+0
        STRB     R1,[R0, #+19]
        LDR.W    R0,??DataTable18
        MOVS     R1,#+0
        STRB     R1,[R0, #+20]
        LDR.W    R0,??DataTable18
        MOVS     R1,#+0
        STRB     R1,[R0, #+21]
        LDR.W    R0,??DataTable18
        MOVS     R1,#+0
        STRB     R1,[R0, #+22]
??TIM2_IRQHandler_9:
        LDR.W    R0,??DataTable18
        LDRB     R0,[R0, #+18]
        CMP      R0,#+1
        BNE.N    ??TIM2_IRQHandler_0
        LDR.W    R0,??DataTable18
        LDRB     R0,[R0, #+19]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable18
        STRB     R0,[R1, #+19]
        LDR.W    R0,??DataTable18
        LDRB     R0,[R0, #+19]
        CMP      R0,#+100
        BCC.N    ??TIM2_IRQHandler_0
        LDR.W    R0,??DataTable18
        MOVS     R1,#+0
        STRB     R1,[R0, #+19]
        LDR.W    R0,??DataTable18
        LDRB     R0,[R0, #+20]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable18
        STRB     R0,[R1, #+20]
        LDR.W    R0,??DataTable18
        LDRB     R0,[R0, #+20]
        CMP      R0,#+60
        BCC.N    ??TIM2_IRQHandler_0
        LDR.W    R0,??DataTable18
        MOVS     R1,#+0
        STRB     R1,[R0, #+20]
        LDR.W    R0,??DataTable18
        LDRB     R0,[R0, #+21]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable18
        STRB     R0,[R1, #+21]
        LDR.W    R0,??DataTable18
        LDRB     R0,[R0, #+21]
        CMP      R0,#+60
        BCC.N    ??TIM2_IRQHandler_0
        LDR.W    R0,??DataTable18
        MOVS     R1,#+0
        STRB     R1,[R0, #+21]
        LDR.W    R0,??DataTable18
        LDRB     R0,[R0, #+22]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable18
        STRB     R0,[R1, #+22]
        LDR.W    R0,??DataTable18
        LDRB     R0,[R0, #+22]
        LDR.W    R1,??DataTable18
        LDRB     R1,[R1, #+17]
        CMP      R0,R1
        BCC.N    ??TIM2_IRQHandler_0
        LDR.W    R0,??DataTable18
        MOVS     R1,#+0
        STRB     R1,[R0, #+22]
        LDR.W    R0,??DataTable18
        MOVS     R1,#+0
        STRB     R1,[R0, #+18]
        LDR.W    R0,??DataTable18
        MOVS     R1,#+1
        STRB     R1,[R0, #+23]
??TIM2_IRQHandler_0:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM3_IRQHandler:
        PUSH     {R7,LR}
        MOVS     R1,#+1
        LDR.W    R0,??DataTable18_3  ;; 0x40000400
        BL       TIM_GetITStatus
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SYSTEM_Data_Reordering:
        PUSH     {R4-R7}
        MOVS     R0,#+0
        MOVS     R1,#+0
        MOVS     R2,#+0
        MOVS     R3,#+0
        MOVS     R4,#+0
        LDR.W    R5,??DataTable18_4
        LDRB     R5,[R5, #+4]
        CMP      R5,#+0
        BNE.W    ??SYSTEM_Data_Reordering_0
        LDR.W    R5,??DataTable18_4
        LDRB     R5,[R5, #+5]
        CMP      R5,#+1
        BNE.W    ??SYSTEM_Data_Reordering_0
        LDR.W    R5,??DataTable18_4
        LDRB     R5,[R5, #+2]
        CMP      R5,#+0
        BNE.N    ??SYSTEM_Data_Reordering_1
        LDR.W    R5,??DataTable18_4
        LDRB     R5,[R5, #+7]
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R5,R2
        CMP      R5,#+160
        BEQ.N    ??SYSTEM_Data_Reordering_2
        CMP      R5,#+176
        BEQ.N    ??SYSTEM_Data_Reordering_2
        CMP      R5,#+177
        BEQ.N    ??SYSTEM_Data_Reordering_2
        CMP      R5,#+192
        BEQ.N    ??SYSTEM_Data_Reordering_2
        CMP      R5,#+202
        BEQ.N    ??SYSTEM_Data_Reordering_2
        CMP      R5,#+208
        BEQ.N    ??SYSTEM_Data_Reordering_2
        CMP      R5,#+224
        BNE.N    ??SYSTEM_Data_Reordering_3
??SYSTEM_Data_Reordering_2:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R5,#+100
        LDR.W    R6,??DataTable18_4
        MLA      R5,R5,R0,R6
        LDRB     R5,[R5, #+9]
        MOVS     R3,R5
        ADDS     R5,R3,#+6
        MOVS     R4,R5
        MOVS     R5,#+0
        MOVS     R1,R5
??SYSTEM_Data_Reordering_4:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R1,R4
        BCS.N    ??SYSTEM_Data_Reordering_5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R5,??DataTable18_4
        ADDS     R5,R1,R5
        MOVS     R6,#+0
        STRB     R6,[R5, #+6]
        ADDS     R1,R1,#+1
        B.N      ??SYSTEM_Data_Reordering_4
??SYSTEM_Data_Reordering_5:
        LDR.W    R5,??DataTable18_4
        MOVS     R6,#+0
        STRB     R6,[R5, #+5]
        B.N      ??SYSTEM_Data_Reordering_6
??SYSTEM_Data_Reordering_3:
        B.N      ??SYSTEM_Data_Reordering_6
??SYSTEM_Data_Reordering_1:
        MOVS     R5,#+1
        MOVS     R0,R5
??SYSTEM_Data_Reordering_7:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+50
        BCS.N    ??SYSTEM_Data_Reordering_6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R5,#+100
        LDR.W    R6,??DataTable18_4
        MLA      R5,R5,R0,R6
        LDRB     R5,[R5, #+6]
        CMP      R5,#+0
        BEQ.N    ??SYSTEM_Data_Reordering_8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R5,#+100
        LDR.W    R6,??DataTable18_4
        MLA      R5,R5,R0,R6
        LDRB     R5,[R5, #+7]
        MOVS     R2,R5
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        MOVS     R5,R2
        CMP      R5,#+160
        BEQ.N    ??SYSTEM_Data_Reordering_9
        CMP      R5,#+176
        BEQ.N    ??SYSTEM_Data_Reordering_9
        CMP      R5,#+177
        BEQ.N    ??SYSTEM_Data_Reordering_9
        CMP      R5,#+192
        BEQ.N    ??SYSTEM_Data_Reordering_9
        CMP      R5,#+202
        BEQ.N    ??SYSTEM_Data_Reordering_9
        CMP      R5,#+208
        BEQ.N    ??SYSTEM_Data_Reordering_9
        CMP      R5,#+224
        BNE.N    ??SYSTEM_Data_Reordering_10
??SYSTEM_Data_Reordering_9:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R5,#+100
        LDR.W    R6,??DataTable18_4
        MLA      R5,R5,R0,R6
        LDRB     R5,[R5, #+9]
        MOVS     R3,R5
        ADDS     R5,R3,#+6
        MOVS     R4,R5
        MOVS     R5,#+0
        MOVS     R1,R5
??SYSTEM_Data_Reordering_11:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R1,R4
        BCS.N    ??SYSTEM_Data_Reordering_12
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R5,#+100
        LDR.W    R6,??DataTable18_4
        MLA      R5,R5,R0,R6
        ADDS     R5,R1,R5
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R6,#+100
        LDR.W    R7,??DataTable18_4
        MLA      R6,R6,R0,R7
        ADDS     R6,R1,R6
        LDRB     R6,[R6, #+6]
        STRB     R6,[R5, #-94]
        LDR.W    R5,??DataTable18_4
        LDRB     R5,[R5, #+2]
        CMP      R5,#+1
        BCC.N    ??SYSTEM_Data_Reordering_13
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R5,??DataTable18_4
        LDRB     R5,[R5, #+2]
        MOVS     R6,#+100
        LDR.W    R7,??DataTable18_4
        MLA      R5,R6,R5,R7
        ADDS     R5,R1,R5
        MOVS     R6,#+0
        STRB     R6,[R5, #-94]
??SYSTEM_Data_Reordering_13:
        ADDS     R1,R1,#+1
        B.N      ??SYSTEM_Data_Reordering_11
??SYSTEM_Data_Reordering_12:
        LDR.W    R5,??DataTable18_4
        MOVS     R6,#+0
        STRB     R6,[R5, #+5]
        B.N      ??SYSTEM_Data_Reordering_8
??SYSTEM_Data_Reordering_10:
??SYSTEM_Data_Reordering_8:
        ADDS     R0,R0,#+1
        B.N      ??SYSTEM_Data_Reordering_7
??SYSTEM_Data_Reordering_6:
        LDR.W    R5,??DataTable18_4
        MOVS     R6,#+0
        STRB     R6,[R5, #+3]
        LDR.W    R5,??DataTable18_4
        LDRB     R5,[R5, #+2]
        CMP      R5,#+1
        BCC.N    ??SYSTEM_Data_Reordering_0
        LDR.W    R5,??DataTable18_4
        LDRB     R5,[R5, #+2]
        SUBS     R5,R5,#+1
        LDR.W    R6,??DataTable18_4
        STRB     R5,[R6, #+2]
??SYSTEM_Data_Reordering_0:
        POP      {R4-R7}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SYSTEM_Data_Handling:
        LDR.W    R0,??DataTable18_4
        LDRB     R0,[R0, #+6]
        CMP      R0,#+0
        BEQ.N    ??SYSTEM_Data_Handling_0
        LDR.W    R0,??DataTable18_4
        LDRB     R0,[R0, #+3]
        CMP      R0,#+0
        BNE.N    ??SYSTEM_Data_Handling_0
        LDR.W    R0,??DataTable18_4
        LDRB     R0,[R0, #+4]
        CMP      R0,#+0
        BNE.N    ??SYSTEM_Data_Handling_0
        LDR.W    R0,??DataTable18_4
        LDRB     R0,[R0, #+5]
        CMP      R0,#+0
        BNE.N    ??SYSTEM_Data_Handling_0
        LDR.W    R0,??DataTable18_4
        MOVS     R1,#+1
        STRB     R1,[R0, #+4]
??SYSTEM_Data_Handling_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SYSTEM_Data_Buffer:
        PUSH     {R4-R6}
        MOVS     R0,#+0
        MOVS     R1,#+0
        MOVS     R2,#+0
        MOVS     R3,#+0
        LDR.W    R4,??DataTable18_5
        LDRB     R4,[R4, #+15]
        CMP      R4,#+1
        BNE.N    ??SYSTEM_Data_Buffer_0
        LDR.W    R4,??DataTable18_5
        LDRB     R4,[R4, #+131]
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R4,R1
        CMP      R4,#+160
        BEQ.N    ??SYSTEM_Data_Buffer_1
        CMP      R4,#+176
        BEQ.N    ??SYSTEM_Data_Buffer_1
        CMP      R4,#+177
        BEQ.N    ??SYSTEM_Data_Buffer_1
        CMP      R4,#+192
        BEQ.N    ??SYSTEM_Data_Buffer_1
        CMP      R4,#+202
        BEQ.N    ??SYSTEM_Data_Buffer_1
        CMP      R4,#+208
        BEQ.N    ??SYSTEM_Data_Buffer_1
        CMP      R4,#+224
        BNE.N    ??SYSTEM_Data_Buffer_2
??SYSTEM_Data_Buffer_1:
        LDR.W    R4,??DataTable18_5
        LDRB     R4,[R4, #+133]
        MOVS     R2,R4
        ADDS     R4,R2,#+5
        MOVS     R3,R4
        LDR.W    R4,??DataTable18_4
        LDRB     R4,[R4, #+2]
        MOVS     R5,#+100
        LDR.W    R6,??DataTable18_4
        MLA      R4,R5,R4,R6
        LDR.W    R5,??DataTable18_4
        LDRB     R5,[R5, #+2]
        ADDS     R5,R5,#+1
        STRB     R5,[R4, #+6]
        MOVS     R4,#+0
        MOVS     R0,R4
??SYSTEM_Data_Buffer_3:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        CMP      R0,R3
        BCS.N    ??SYSTEM_Data_Buffer_4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R4,??DataTable18_4
        LDRB     R4,[R4, #+2]
        MOVS     R5,#+100
        LDR.W    R6,??DataTable18_4
        MLA      R4,R5,R4,R6
        ADDS     R4,R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R5,??DataTable18_5
        ADDS     R5,R0,R5
        LDRB     R5,[R5, #+131]
        STRB     R5,[R4, #+7]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R4,??DataTable18_5
        ADDS     R4,R0,R4
        MOVS     R5,#+0
        STRB     R5,[R4, #+131]
        ADDS     R0,R0,#+1
        B.N      ??SYSTEM_Data_Buffer_3
??SYSTEM_Data_Buffer_4:
        LDR.W    R4,??DataTable18_4
        LDRB     R4,[R4, #+2]
        ADDS     R4,R4,#+1
        LDR.W    R5,??DataTable18_4
        STRB     R4,[R5, #+2]
        B.N      ??SYSTEM_Data_Buffer_5
??SYSTEM_Data_Buffer_2:
??SYSTEM_Data_Buffer_5:
        LDR.W    R4,??DataTable18_5
        MOVS     R5,#+0
        STRB     R5,[R4, #+15]
??SYSTEM_Data_Buffer_0:
        POP      {R4-R6}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SYSTEM_Data_Parser:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??SYSTEM_Data_Parser_0
        BL       SYSTEM_Data_Reordering
        BL       SYSTEM_Data_Handling
        BL       SYSTEM_Data_Buffer
        B.N      ??SYSTEM_Data_Parser_1
??SYSTEM_Data_Parser_0:
??SYSTEM_Data_Parser_1:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Boot_Status_Data_Trans:
        PUSH     {R4-R6,LR}
        MOVS     R4,#+209
        MOVS     R5,#+4
        MOVS     R6,#+7
        LDR.W    R0,??DataTable18_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Boot_Status_Data_Trans_0
        CMP      R0,#+2
        BEQ.N    ??Boot_Status_Data_Trans_1
        BCC.N    ??Boot_Status_Data_Trans_2
        B.N      ??Boot_Status_Data_Trans_3
??Boot_Status_Data_Trans_0:
        B.N      ??Boot_Status_Data_Trans_4
??Boot_Status_Data_Trans_2:
        LDR.W    R0,??DataTable18_5
        MOVS     R1,#+202
        STRB     R1,[R0, #+31]
        LDR.W    R0,??DataTable18_5
        MOVS     R1,#+172
        STRB     R1,[R0, #+32]
        LDR.W    R0,??DataTable18_5
        STRB     R5,[R0, #+33]
        LDR.W    R0,??DataTable18_5
        STRB     R6,[R0, #+34]
        LDR.W    R0,??DataTable18_5
        STRB     R4,[R0, #+35]
        LDR.W    R0,??DataTable18_5
        MOVS     R1,#+1
        STRB     R1,[R0, #+36]
        LDR.W    R0,??DataTable18_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+37]
        LDR.W    R0,??DataTable18_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+38]
        LDR.W    R0,??DataTable18_5
        LDRB     R0,[R0, #+34]
        LDR.W    R1,??DataTable18_5
        LDRB     R1,[R1, #+35]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable18_5
        LDRB     R1,[R1, #+36]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable18_5
        LDRB     R1,[R1, #+37]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable18_5
        STRB     R0,[R1, #+38]
        LDR.W    R0,??DataTable18_5
        MOVS     R1,#+207
        STRB     R1,[R0, #+39]
        LDR.W    R0,??DataTable18_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        LDR.W    R0,??DataTable18_5
        ADDS     R1,R5,#+5
        STRB     R1,[R0, #+1]
        LDR.W    R0,??DataTable18_5
        LDRB     R0,[R0, #+0]
        ADDS     R1,R0,#+1
        LDR.W    R2,??DataTable18_5
        STRB     R1,[R2, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable18_5
        ADDS     R0,R0,R1
        LDRB     R1,[R0, #+31]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.W    R0,??DataTable18_6  ;; 0x40013800
        BL       USART_SendData
        LDR.W    R0,??DataTable18_4
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        B.N      ??Boot_Status_Data_Trans_4
??Boot_Status_Data_Trans_1:
        LDR.W    R0,??DataTable18_5
        MOVS     R1,#+202
        STRB     R1,[R0, #+31]
        LDR.W    R0,??DataTable18_5
        MOVS     R1,#+172
        STRB     R1,[R0, #+32]
        LDR.W    R0,??DataTable18_5
        STRB     R5,[R0, #+33]
        LDR.W    R0,??DataTable18_5
        STRB     R6,[R0, #+34]
        LDR.W    R0,??DataTable18_5
        STRB     R4,[R0, #+35]
        LDR.W    R0,??DataTable18_5
        MOVS     R1,#+2
        STRB     R1,[R0, #+36]
        LDR.W    R0,??DataTable18_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+37]
        LDR.W    R0,??DataTable18_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+38]
        LDR.W    R0,??DataTable18_5
        LDRB     R0,[R0, #+34]
        LDR.W    R1,??DataTable18_5
        LDRB     R1,[R1, #+35]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable18_5
        LDRB     R1,[R1, #+36]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable18_5
        LDRB     R1,[R1, #+37]
        ADDS     R0,R1,R0
        LDR.W    R1,??DataTable18_5
        STRB     R0,[R1, #+38]
        LDR.W    R0,??DataTable18_5
        MOVS     R1,#+207
        STRB     R1,[R0, #+39]
        LDR.W    R0,??DataTable18_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        LDR.W    R0,??DataTable18_5
        ADDS     R1,R5,#+5
        STRB     R1,[R0, #+1]
        LDR.W    R0,??DataTable18_5
        LDRB     R0,[R0, #+0]
        ADDS     R1,R0,#+1
        LDR.W    R2,??DataTable18_5
        STRB     R1,[R2, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable18_5
        ADDS     R0,R0,R1
        LDRB     R1,[R0, #+31]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.W    R0,??DataTable18_6  ;; 0x40013800
        BL       USART_SendData
        LDR.W    R0,??DataTable18_4
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        B.N      ??Boot_Status_Data_Trans_4
??Boot_Status_Data_Trans_3:
??Boot_Status_Data_Trans_4:
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIM4_IRQHandler:
        PUSH     {R7,LR}
        MOVS     R1,#+1
        LDR.W    R0,??DataTable19  ;; 0x40000800
        BL       TIM_GetITStatus
        CMP      R0,#+0
        BEQ.N    ??TIM4_IRQHandler_0
        MOVS     R1,#+1
        LDR.W    R0,??DataTable19  ;; 0x40000800
        BL       TIM_ClearITPendingBit
        LDR.W    R0,??DataTable19_1
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable19_1
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable19_1
        LDR      R0,[R0, #+0]
        CMP      R0,#+3
        BLT.N    ??TIM4_IRQHandler_0
        LDR.W    R0,??DataTable19_2  ;; 0x40010c0c
        LDR      R0,[R0, #+0]
        MOV      R1,#+256
        EORS     R0,R1,R0
        LDR.W    R1,??DataTable19_2  ;; 0x40010c0c
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable19_1
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
??TIM4_IRQHandler_0:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C1_EV_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C1_ER_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C2_EV_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
I2C2_ER_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SPI1_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SPI2_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
EXTI15_10_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTCAlarm_IRQHandler:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Rx_Main_Second_Comm_Check:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R0,R1
        BNE.N    ??Rx_Main_Second_Comm_Check_0
        LDR.W    R2,??DataTable18_5
        STRB     R0,[R2, #+132]
        LDR.W    R2,??DataTable18_5
        LDRB     R2,[R2, #+28]
        ADDS     R2,R2,#+1
        LDR.W    R3,??DataTable18_5
        STRB     R2,[R3, #+28]
        LDR.W    R2,??DataTable18_5
        MOVS     R3,#+1
        STRB     R3,[R2, #+29]
        B.N      ??Rx_Main_Second_Comm_Check_1
??Rx_Main_Second_Comm_Check_0:
        LDR.W    R2,??DataTable18_5
        MOVS     R3,#+0
        STRB     R3,[R2, #+28]
        LDR.W    R2,??DataTable18_5
        MOVS     R3,#+0
        STRB     R3,[R2, #+131]
        LDR.W    R2,??DataTable18_5
        MOVS     R3,#+0
        STRB     R3,[R2, #+19]
??Rx_Main_Second_Comm_Check_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Boot_Status_Check_Parser:
        LDR.W    R0,??DataTable18_5
        LDRB     R0,[R0, #+131]
        CMP      R0,#+202
        BNE.N    ??Boot_Status_Check_Parser_0
        LDR.W    R0,??DataTable18_5
        LDRB     R0,[R0, #+135]
        CMP      R0,#+209
        BNE.N    ??Boot_Status_Check_Parser_0
        LDR.W    R0,??DataTable18_4
        LDRB     R0,[R0, #+1]
        CMP      R0,#+0
        BNE.N    ??Boot_Status_Check_Parser_0
        LDR.W    R0,??DataTable18_4
        MOVS     R1,#+2
        STRB     R1,[R0, #+0]
??Boot_Status_Check_Parser_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Rx_Main_Comm_Handling:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??Rx_Main_Comm_Handling_0
        LDR.W    R0,??DataTable18_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+28]
        LDR.W    R0,??DataTable18_5
        LDRB     R0,[R0, #+28]
        LDR.W    R1,??DataTable18_5
        ADDS     R0,R0,R1
        STRB     R5,[R0, #+131]
        LDR.W    R0,??DataTable18_5
        LDRB     R0,[R0, #+28]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable18_5
        STRB     R0,[R1, #+28]
        LDR.W    R0,??DataTable19_3
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable19_3
        ADDS     R0,R0,R1
        STRB     R5,[R0, #+4]
        LDR.W    R0,??DataTable19_3
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable19_3
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable19_3
        LDR      R0,[R0, #+0]
        MOV      R1,#+300
        CMP      R0,R1
        BCC.N    ??Rx_Main_Comm_Handling_0
        LDR.W    R0,??DataTable19_3
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
??Rx_Main_Comm_Handling_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??Rx_Main_Comm_Handling_1
        LDR.W    R0,??DataTable19_3
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable19_3
        ADDS     R0,R0,R1
        STRB     R5,[R0, #+4]
        LDR.W    R0,??DataTable19_3
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable19_3
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable19_3
        LDR      R0,[R0, #+0]
        MOV      R1,#+300
        CMP      R0,R1
        BCC.N    ??Rx_Main_Comm_Handling_2
        LDR.W    R0,??DataTable19_3
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
??Rx_Main_Comm_Handling_2:
        LDR.W    R0,??DataTable18_5
        LDRB     R0,[R0, #+28]
        CMP      R0,#+1
        BNE.N    ??Rx_Main_Comm_Handling_1
        LDR.W    R0,??DataTable18_5
        LDRB     R0,[R0, #+19]
        CMP      R0,#+10
        BEQ.N    ??Rx_Main_Comm_Handling_3
        CMP      R0,#+11
        BEQ.N    ??Rx_Main_Comm_Handling_4
        CMP      R0,#+172
        BNE.N    ??Rx_Main_Comm_Handling_5
??Rx_Main_Comm_Handling_6:
        MOVS     R1,#+172
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Rx_Main_Second_Comm_Check
        B.N      ??Rx_Main_Comm_Handling_1
??Rx_Main_Comm_Handling_3:
        MOVS     R1,#+10
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Rx_Main_Second_Comm_Check
        B.N      ??Rx_Main_Comm_Handling_1
??Rx_Main_Comm_Handling_4:
        MOVS     R1,#+11
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Rx_Main_Second_Comm_Check
        B.N      ??Rx_Main_Comm_Handling_1
??Rx_Main_Comm_Handling_5:
??Rx_Main_Comm_Handling_1:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BNE.N    ??Rx_Main_Comm_Handling_7
        LDR.W    R0,??DataTable19_3
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable19_3
        ADDS     R0,R0,R1
        STRB     R5,[R0, #+4]
        LDR.W    R0,??DataTable19_3
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable19_3
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable19_3
        LDR      R0,[R0, #+0]
        MOV      R1,#+300
        CMP      R0,R1
        BCC.N    ??Rx_Main_Comm_Handling_8
        LDR.W    R0,??DataTable19_3
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
??Rx_Main_Comm_Handling_8:
        LDR.W    R0,??DataTable18_5
        LDRB     R0,[R0, #+19]
        CMP      R0,#+255
        BNE.N    ??Rx_Main_Comm_Handling_9
        LDR.W    R0,??DataTable18_5
        LDRB     R0,[R0, #+28]
        CMP      R0,#+2
        BNE.N    ??Rx_Main_Comm_Handling_7
        LDR.W    R0,??DataTable18_5
        MOVS     R1,#+2
        STRB     R1,[R0, #+29]
        LDR.W    R0,??DataTable18_5
        LDRB     R0,[R0, #+29]
        ADDS     R0,R0,#+5
        LDR.W    R1,??DataTable18_5
        STRB     R0,[R1, #+30]
        LDR.W    R0,??DataTable18_5
        STRB     R5,[R0, #+133]
        LDR.W    R0,??DataTable18_5
        LDRB     R0,[R0, #+28]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable18_5
        STRB     R0,[R1, #+28]
        B.N      ??Rx_Main_Comm_Handling_7
??Rx_Main_Comm_Handling_9:
        LDR.W    R0,??DataTable18_5
        LDRB     R0,[R0, #+28]
        CMP      R0,#+2
        BNE.N    ??Rx_Main_Comm_Handling_7
        LDR.W    R0,??DataTable18_5
        STRB     R5,[R0, #+29]
        LDR.W    R0,??DataTable18_5
        LDRB     R0,[R0, #+29]
        ADDS     R0,R0,#+5
        LDR.W    R1,??DataTable18_5
        STRB     R0,[R1, #+30]
        LDR.W    R0,??DataTable18_5
        STRB     R5,[R0, #+133]
        LDR.W    R0,??DataTable18_5
        LDRB     R0,[R0, #+28]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable18_5
        STRB     R0,[R1, #+28]
??Rx_Main_Comm_Handling_7:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+3
        BNE.N    ??Rx_Main_Comm_Handling_10
        LDR.W    R0,??DataTable19_3
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable19_3
        ADDS     R0,R0,R1
        STRB     R5,[R0, #+4]
        LDR.W    R0,??DataTable19_3
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable19_3
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable19_3
        LDR      R0,[R0, #+0]
        MOV      R1,#+300
        CMP      R0,R1
        BCC.N    ??Rx_Main_Comm_Handling_11
        LDR.W    R0,??DataTable19_3
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
??Rx_Main_Comm_Handling_11:
        LDR.W    R0,??DataTable18_5
        LDRB     R0,[R0, #+28]
        LDR.W    R1,??DataTable18_5
        ADDS     R0,R0,R1
        STRB     R5,[R0, #+131]
        LDR.W    R0,??DataTable18_5
        LDRB     R0,[R0, #+28]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable18_5
        STRB     R0,[R1, #+28]
        LDR.W    R0,??DataTable18_5
        LDRB     R0,[R0, #+28]
        LDR.W    R1,??DataTable18_5
        LDRB     R1,[R1, #+30]
        CMP      R0,R1
        BNE.N    ??Rx_Main_Comm_Handling_10
        LDR.W    R0,??DataTable18_5
        LDRB     R0,[R0, #+19]
        CMP      R0,#+255
        BNE.N    ??Rx_Main_Comm_Handling_12
        BL       Rx_Pelco_Data_Check
        B.N      ??Rx_Main_Comm_Handling_13
??Rx_Main_Comm_Handling_12:
        LDR.W    R0,??DataTable18_5
        LDRB     R0,[R0, #+28]
        LDR.W    R1,??DataTable18_5
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+130]
        ANDS     R0,R0,#0xF
        CMP      R0,#+15
        BNE.N    ??Rx_Main_Comm_Handling_14
        LDR.W    R0,??DataTable18_4
        LDRB     R0,[R0, #+1]
        CMP      R0,#+1
        BNE.N    ??Rx_Main_Comm_Handling_15
        LDR.W    R0,??DataTable18_5
        MOVS     R1,#+1
        STRB     R1,[R0, #+15]
        LDR.W    R0,??DataTable18_5
        LDRB     R0,[R0, #+16]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable18_5
        STRB     R0,[R1, #+16]
        B.N      ??Rx_Main_Comm_Handling_16
??Rx_Main_Comm_Handling_15:
        BL       Boot_Status_Check_Parser
??Rx_Main_Comm_Handling_16:
        LDR.W    R0,??DataTable18_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+28]
        B.N      ??Rx_Main_Comm_Handling_13
??Rx_Main_Comm_Handling_14:
        LDR.W    R0,??DataTable18_5
        MOVS     R1,#+255
        STRB     R1,[R0, #+15]
        LDR.W    R0,??DataTable18_5
        LDRB     R0,[R0, #+26]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable18_5
        STRB     R0,[R1, #+26]
??Rx_Main_Comm_Handling_13:
        LDR.W    R0,??DataTable18_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+28]
        LDR.W    R0,??DataTable18_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+29]
        LDR.W    R0,??DataTable18_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+19]
??Rx_Main_Comm_Handling_10:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Main_Protocol_Data_Pasher:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        LDR.W    R0,??DataTable18_5
        LDRB     R0,[R0, #+19]
        CMP      R0,#+0
        BNE.N    ??Main_Protocol_Data_Pasher_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,R4
        CMP      R0,#+160
        BEQ.N    ??Main_Protocol_Data_Pasher_1
        CMP      R0,#+176
        BEQ.N    ??Main_Protocol_Data_Pasher_2
        CMP      R0,#+202
        BNE.N    ??Main_Protocol_Data_Pasher_3
??Main_Protocol_Data_Pasher_4:
        MOVS     R1,#+202
        MOVS     R0,#+0
        BL       Rx_Main_Comm_Handling
        LDR.W    R0,??DataTable18_5
        MOVS     R1,#+172
        STRB     R1,[R0, #+19]
        B.N      ??Main_Protocol_Data_Pasher_5
??Main_Protocol_Data_Pasher_1:
        MOVS     R1,#+160
        MOVS     R0,#+0
        BL       Rx_Main_Comm_Handling
        LDR.W    R0,??DataTable18_5
        MOVS     R1,#+10
        STRB     R1,[R0, #+19]
        B.N      ??Main_Protocol_Data_Pasher_5
??Main_Protocol_Data_Pasher_2:
        MOVS     R1,#+176
        MOVS     R0,#+0
        BL       Rx_Main_Comm_Handling
        LDR.W    R0,??DataTable18_5
        MOVS     R1,#+11
        STRB     R1,[R0, #+19]
        B.N      ??Main_Protocol_Data_Pasher_5
??Main_Protocol_Data_Pasher_3:
        B.N      ??Main_Protocol_Data_Pasher_5
??Main_Protocol_Data_Pasher_0:
        LDR.W    R0,??DataTable18_5
        LDRB     R0,[R0, #+29]
        CMP      R0,#+0
        BNE.N    ??Main_Protocol_Data_Pasher_6
        MOVS     R0,#+1
        MOVS     R5,R0
        B.N      ??Main_Protocol_Data_Pasher_7
??Main_Protocol_Data_Pasher_6:
        LDR.W    R0,??DataTable18_5
        LDRB     R0,[R0, #+28]
        CMP      R0,#+3
        BCC.N    ??Main_Protocol_Data_Pasher_8
        MOVS     R0,#+3
        MOVS     R5,R0
        B.N      ??Main_Protocol_Data_Pasher_7
??Main_Protocol_Data_Pasher_8:
        LDR.W    R0,??DataTable18_5
        LDRB     R0,[R0, #+24]
        CMP      R0,#+0
        BNE.N    ??Main_Protocol_Data_Pasher_7
        MOVS     R0,#+2
        MOVS     R5,R0
??Main_Protocol_Data_Pasher_7:
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Rx_Main_Comm_Handling
??Main_Protocol_Data_Pasher_5:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Sony_Data_Pasher:
        LDR.N    R1,??DataTable18_2
        LDRB     R1,[R1, #+5]
        CMP      R1,#+0
        BEQ.N    ??Sony_Data_Pasher_0
        LDR.N    R1,??DataTable18_2
        LDRB     R1,[R1, #+4]
        LDR.N    R2,??DataTable18_2
        ADDS     R1,R1,R2
        STRB     R0,[R1, #+107]
        LDR.N    R1,??DataTable18_2
        LDRB     R1,[R1, #+4]
        ADDS     R1,R1,#+1
        LDR.N    R2,??DataTable18_2
        STRB     R1,[R2, #+4]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+255
        BNE.N    ??Sony_Data_Pasher_1
        LDR.N    R1,??DataTable18_2
        MOVS     R2,#+0
        STRB     R2,[R1, #+5]
        LDR.N    R1,??DataTable18_2
        MOVS     R2,#+0
        STRB     R2,[R1, #+4]
        LDR.N    R1,??DataTable18_2
        MOVS     R2,#+1
        STRB     R2,[R1, #+6]
        B.N      ??Sony_Data_Pasher_1
??Sony_Data_Pasher_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+129
        BNE.N    ??Sony_Data_Pasher_1
        LDR.N    R1,??DataTable18_2
        MOVS     R2,#+1
        STRB     R2,[R1, #+5]
        LDR.N    R1,??DataTable18_2
        STRB     R0,[R1, #+107]
        LDR.N    R1,??DataTable18_2
        LDRB     R1,[R1, #+4]
        ADDS     R1,R1,#+1
        LDR.N    R2,??DataTable18_2
        STRB     R1,[R2, #+4]
??Sony_Data_Pasher_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART1_IRQHandler:
        PUSH     {R4,LR}
        MOVS     R4,#+0
        MOVW     R1,#+1574
        LDR.N    R0,??DataTable18_6  ;; 0x40013800
        BL       USART_GetITStatus
        CMP      R0,#+0
        BEQ.N    ??USART1_IRQHandler_0
        LDR.N    R0,??DataTable18_5
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable18_5
        LDRB     R1,[R1, #+1]
        CMP      R0,R1
        BCS.N    ??USART1_IRQHandler_1
        LDR.N    R0,??DataTable18_5
        LDRB     R0,[R0, #+0]
        ADDS     R1,R0,#+1
        LDR.N    R2,??DataTable18_5
        STRB     R1,[R2, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable18_5
        ADDS     R0,R0,R1
        LDRB     R1,[R0, #+31]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.N    R0,??DataTable18_6  ;; 0x40013800
        BL       USART_SendData
        B.N      ??USART1_IRQHandler_2
??USART1_IRQHandler_1:
        LDR.N    R0,??DataTable18_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+1]
        LDR.N    R0,??DataTable18_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
??USART1_IRQHandler_2:
        MOVW     R1,#+1574
        LDR.N    R0,??DataTable18_6  ;; 0x40013800
        BL       USART_ClearITPendingBit
??USART1_IRQHandler_0:
        MOVW     R1,#+1317
        LDR.N    R0,??DataTable18_6  ;; 0x40013800
        BL       USART_GetITStatus
        CMP      R0,#+0
        BEQ.N    ??USART1_IRQHandler_3
        LDR.N    R0,??DataTable18_6  ;; 0x40013800
        BL       USART_ReceiveData
        MOVS     R4,R0
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Main_Protocol_Data_Pasher
??USART1_IRQHandler_3:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
LRF_Data_Clear:
        MOVS     R1,#+0
        MOVS     R0,R1
??LRF_Data_Clear_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+22
        BCS.N    ??LRF_Data_Clear_1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable18_1
        ADDS     R1,R0,R1
        MOVS     R2,#+0
        STRB     R2,[R1, #+21]
        ADDS     R0,R0,#+1
        B.N      ??LRF_Data_Clear_0
??LRF_Data_Clear_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
LRF_Trans_Data:
        PUSH     {R4,LR}
        LDR.N    R0,??DataTable18_2
        LDRB     R0,[R0, #+2]
        CMP      R0,#+0
        BNE.N    ??LRF_Trans_Data_0
        MOVS     R0,#+0
        MOVS     R4,R0
??LRF_Trans_Data_1:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+22
        BCS.N    ??LRF_Trans_Data_2
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R0,??DataTable18_5
        ADDS     R0,R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        LDR.N    R1,??DataTable18_1
        ADDS     R1,R4,R1
        LDRB     R1,[R1, #+21]
        STRB     R1,[R0, #+31]
        ADDS     R4,R4,#+1
        B.N      ??LRF_Trans_Data_1
??LRF_Trans_Data_2:
        LDR.N    R0,??DataTable18_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        LDR.N    R0,??DataTable18_5
        MOVS     R1,#+21
        STRB     R1,[R0, #+1]
        LDR.N    R0,??DataTable18_5
        LDRB     R0,[R0, #+0]
        ADDS     R1,R0,#+1
        LDR.N    R2,??DataTable18_5
        STRB     R1,[R2, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.N    R1,??DataTable18_5
        ADDS     R0,R0,R1
        LDRB     R1,[R0, #+31]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.N    R0,??DataTable18_6  ;; 0x40013800
        BL       USART_SendData
??LRF_Trans_Data_0:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable14:
        DC32     stLED_SET

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
LRF_Data_Pasher:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LDR.W    R0,??DataTable24
        LDRB     R0,[R0, #+1]
        CMP      R0,#+1
        BNE.N    ??LRF_Data_Pasher_0
        LDR.N    R0,??DataTable18_1
        LDRB     R0,[R0, #+43]
        CMP      R0,#+20
        BNE.N    ??LRF_Data_Pasher_1
        LDR.N    R0,??DataTable18_1
        LDRB     R0,[R0, #+21]
        CMP      R0,#+68
        BNE.N    ??LRF_Data_Pasher_2
        LDR.N    R0,??DataTable18_1
        LDRB     R0,[R0, #+22]
        CMP      R0,#+77
        BNE.N    ??LRF_Data_Pasher_2
        LDR.N    R0,??DataTable18_1
        LDRB     R0,[R0, #+40]
        CMP      R0,#+13
        BNE.N    ??LRF_Data_Pasher_2
        BL       LRF_Trans_Data
??LRF_Data_Pasher_2:
        BL       LRF_Data_Clear
        LDR.N    R0,??DataTable18_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+43]
        LDR.N    R0,??DataTable18_1
        MOVS     R1,#+1
        STRB     R1,[R0, #+44]
??LRF_Data_Pasher_1:
        LDR.N    R0,??DataTable18_1
        LDRB     R0,[R0, #+43]
        CMP      R0,#+2
        BCC.N    ??LRF_Data_Pasher_3
        LDR.N    R0,??DataTable18_1
        LDRB     R0,[R0, #+43]
        LDR.N    R1,??DataTable18_1
        ADDS     R0,R0,R1
        STRB     R4,[R0, #+21]
        LDR.N    R0,??DataTable18_1
        LDRB     R0,[R0, #+43]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable18_1
        STRB     R0,[R1, #+43]
??LRF_Data_Pasher_3:
        LDR.N    R0,??DataTable18_1
        LDRB     R0,[R0, #+44]
        CMP      R0,#+0
        BNE.N    ??LRF_Data_Pasher_4
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+77
        BNE.N    ??LRF_Data_Pasher_5
        LDR.N    R0,??DataTable18_1
        LDRB     R0,[R0, #+43]
        CMP      R0,#+1
        BNE.N    ??LRF_Data_Pasher_5
        LDR.N    R0,??DataTable18_1
        MOVS     R1,#+77
        STRB     R1,[R0, #+22]
        LDR.N    R0,??DataTable18_1
        LDRB     R0,[R0, #+43]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable18_1
        STRB     R0,[R1, #+43]
??LRF_Data_Pasher_5:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+68
        BNE.N    ??LRF_Data_Pasher_6
        LDR.N    R0,??DataTable18_1
        LDRB     R0,[R0, #+43]
        CMP      R0,#+0
        BNE.N    ??LRF_Data_Pasher_6
        LDR.N    R0,??DataTable18_1
        MOVS     R1,#+68
        STRB     R1,[R0, #+21]
        LDR.N    R0,??DataTable18_1
        LDRB     R0,[R0, #+43]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable18_1
        STRB     R0,[R1, #+43]
        B.N      ??LRF_Data_Pasher_6
??LRF_Data_Pasher_4:
        LDR.N    R0,??DataTable18_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+44]
??LRF_Data_Pasher_6:
        LDR.N    R0,??DataTable18_1
        LDRB     R0,[R0, #+43]
        CMP      R0,#+22
        BCC.N    ??LRF_Data_Pasher_7
        LDR.N    R0,??DataTable18_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+43]
        BL       LRF_Data_Clear
??LRF_Data_Pasher_7:
??LRF_Data_Pasher_0:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15:
        DC32     stINFO

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable15_1:
        DC32     stWIPER1

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART2_IRQHandler:
        PUSH     {R3-R5,LR}
        MOVS     R4,#+0
        MOVS     R5,#+0
        MOVW     R1,#+1574
        LDR.W    R0,??DataTable25  ;; 0x40004400
        BL       USART_GetITStatus
        CMP      R0,#+0
        BEQ.N    ??USART2_IRQHandler_0
        LDR.W    R0,??DataTable24_1
        LDRB     R0,[R0, #+1]
        LDR.W    R1,??DataTable24_1
        LDRB     R1,[R1, #+2]
        CMP      R0,R1
        BCS.N    ??USART2_IRQHandler_1
        LDR.W    R0,??DataTable24_1
        LDRB     R0,[R0, #+1]
        LDR.W    R1,??DataTable24_1
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+20]
        MOVS     R5,R0
        LDR.W    R0,??DataTable24_1
        LDRB     R0,[R0, #+1]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable24_1
        STRB     R0,[R1, #+1]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R1,R5
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.W    R0,??DataTable25  ;; 0x40004400
        BL       USART_SendData
        B.N      ??USART2_IRQHandler_2
??USART2_IRQHandler_1:
        LDR.W    R0,??DataTable24_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+1]
        LDR.W    R0,??DataTable24_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+2]
??USART2_IRQHandler_2:
        MOVW     R1,#+1574
        LDR.W    R0,??DataTable25  ;; 0x40004400
        BL       USART_ClearITPendingBit
??USART2_IRQHandler_0:
        MOVW     R1,#+1317
        LDR.W    R0,??DataTable25  ;; 0x40004400
        BL       USART_GetITStatus
        CMP      R0,#+0
        BEQ.N    ??USART2_IRQHandler_3
        LDR.W    R0,??DataTable25  ;; 0x40004400
        BL       USART_ReceiveData
        MOVS     R4,R0
??USART2_IRQHandler_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
USART3_IRQHandler:
        PUSH     {R3-R5,LR}
        MOVS     R4,#+0
        MOVS     R5,#+0
        MOVW     R1,#+1574
        LDR.W    R0,??DataTable25_1  ;; 0x40004800
        BL       USART_GetITStatus
        CMP      R0,#+0
        BEQ.N    ??USART3_IRQHandler_0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R1,R5
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.W    R0,??DataTable25_1  ;; 0x40004800
        BL       USART_SendData
        MOVW     R1,#+1574
        LDR.W    R0,??DataTable25_1  ;; 0x40004800
        BL       USART_ClearITPendingBit
??USART3_IRQHandler_0:
        MOVW     R1,#+1317
        LDR.W    R0,??DataTable25_1  ;; 0x40004800
        BL       USART_GetITStatus
        CMP      R0,#+0
        BEQ.N    ??USART3_IRQHandler_1
        LDR.W    R0,??DataTable25_1  ;; 0x40004800
        BL       USART_ReceiveData
        MOVS     R4,R0
??USART3_IRQHandler_1:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SONY_Data_Clear:
        MOVS     R1,#+0
        MOVS     R0,R1
??SONY_Data_Clear_0:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+20
        BCS.N    ??SONY_Data_Clear_1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        LDR.W    R1,??DataTable25_2
        ADDS     R1,R0,R1
        MOVS     R2,#+0
        STRB     R2,[R1, #+71]
        ADDS     R0,R0,#+1
        B.N      ??SONY_Data_Clear_0
??SONY_Data_Clear_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18:
        DC32     stWIPER2

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_1:
        DC32     stLRF

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_2:
        DC32     stBYPASS

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_3:
        DC32     0x40000400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_4:
        DC32     stSYS

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_5:
        DC32     stUSART1

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable18_6:
        DC32     0x40013800

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TSM_Data_Pasher:
        PUSH     {R4-R7}
        MOVS     R1,#+0
        MOVS     R2,#+0
        MOVS     R3,#+0
        MOVS     R4,#+0
        MOVS     R5,#+0
        LDR.W    R6,??DataTable25_3
        LDRB     R6,[R6, #+20]
        CMP      R6,#+1
        BNE.W    ??TSM_Data_Pasher_0
        LDR.W    R6,??DataTable25_3
        LDRB     R6,[R6, #+21]
        LDR.W    R7,??DataTable25_3
        ADDS     R6,R6,R7
        STRB     R0,[R6, #+124]
        LDR.W    R6,??DataTable25_3
        LDRB     R6,[R6, #+21]
        ADDS     R6,R6,#+1
        LDR.W    R7,??DataTable25_3
        STRB     R6,[R7, #+21]
        LDR.W    R6,??DataTable25_3
        LDRB     R6,[R6, #+22]
        CMP      R6,#+0
        BNE.N    ??TSM_Data_Pasher_1
        LDR.W    R6,??DataTable25_3
        LDRB     R6,[R6, #+125]
        CMP      R6,#+129
        BEQ.N    ??TSM_Data_Pasher_2
        CMP      R6,#+135
        BEQ.N    ??TSM_Data_Pasher_3
        CMP      R6,#+202
        BEQ.N    ??TSM_Data_Pasher_4
        B.N      ??TSM_Data_Pasher_5
??TSM_Data_Pasher_3:
        LDR.W    R6,??DataTable25_3
        MOVS     R7,#+35
        STRB     R7,[R6, #+22]
        B.N      ??TSM_Data_Pasher_1
??TSM_Data_Pasher_2:
        LDR.W    R6,??DataTable25_3
        MOVS     R7,#+8
        STRB     R7,[R6, #+22]
        B.N      ??TSM_Data_Pasher_1
??TSM_Data_Pasher_4:
        LDR.W    R6,??DataTable26
        LDRB     R6,[R6, #+10]
        CMP      R6,#+2
        BNE.N    ??TSM_Data_Pasher_6
        LDR.W    R6,??DataTable25_3
        MOVS     R7,#+7
        STRB     R7,[R6, #+22]
??TSM_Data_Pasher_6:
        B.N      ??TSM_Data_Pasher_1
??TSM_Data_Pasher_5:
        LDR.W    R6,??DataTable25_3
        MOVS     R7,#+6
        STRB     R7,[R6, #+22]
??TSM_Data_Pasher_1:
        LDR.W    R6,??DataTable25_3
        LDRB     R6,[R6, #+21]
        LDR.W    R7,??DataTable25_3
        LDRB     R7,[R7, #+22]
        CMP      R6,R7
        BNE.W    ??TSM_Data_Pasher_7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+175
        BNE.W    ??TSM_Data_Pasher_7
        LDR.W    R6,??DataTable25_3
        LDRB     R6,[R6, #+22]
        CMP      R6,#+6
        BEQ.N    ??TSM_Data_Pasher_8
        CMP      R6,#+7
        BEQ.W    ??TSM_Data_Pasher_9
        CMP      R6,#+8
        BEQ.W    ??TSM_Data_Pasher_10
        CMP      R6,#+35
        BEQ.W    ??TSM_Data_Pasher_11
        B.N      ??TSM_Data_Pasher_12
??TSM_Data_Pasher_8:
        LDR.W    R6,??DataTable25_3
        LDRB     R6,[R6, #+17]
        CMP      R6,#+48
        BEQ.N    ??TSM_Data_Pasher_13
        CMP      R6,#+128
        BEQ.W    ??TSM_Data_Pasher_14
        CMP      R6,#+130
        BEQ.N    ??TSM_Data_Pasher_15
        CMP      R6,#+131
        BEQ.N    ??TSM_Data_Pasher_16
        CMP      R6,#+132
        BEQ.N    ??TSM_Data_Pasher_17
        CMP      R6,#+133
        BEQ.N    ??TSM_Data_Pasher_18
        CMP      R6,#+134
        BEQ.W    ??TSM_Data_Pasher_19
        CMP      R6,#+191
        BEQ.W    ??TSM_Data_Pasher_20
        CMP      R6,#+213
        BEQ.W    ??TSM_Data_Pasher_21
        CMP      R6,#+240
        BEQ.W    ??TSM_Data_Pasher_22
        CMP      R6,#+248
        BEQ.W    ??TSM_Data_Pasher_23
        CMP      R6,#+249
        BEQ.W    ??TSM_Data_Pasher_24
        CMP      R6,#+250
        BEQ.W    ??TSM_Data_Pasher_25
        B.N      ??TSM_Data_Pasher_26
??TSM_Data_Pasher_13:
        LDR.W    R6,??DataTable25_3
        LDRB     R6,[R6, #+125]
        CMP      R6,#+48
        BNE.N    ??TSM_Data_Pasher_27
        LDR.W    R6,??DataTable25_3
        LDRB     R6,[R6, #+126]
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        CMP      R2,#+0
        BEQ.N    ??TSM_Data_Pasher_28
        LDR.W    R6,??DataTable27
        MOVS     R7,#+1
        STRB     R7,[R6, #+32]
??TSM_Data_Pasher_28:
        LDR.W    R6,??DataTable27
        STRB     R2,[R6, #+33]
        LDR.W    R6,??DataTable26
        MOVS     R7,#+160
        STRB     R7,[R6, #+8]
        LDR.W    R6,??DataTable25_3
        MOVS     R7,#+0
        STRB     R7,[R6, #+17]
??TSM_Data_Pasher_27:
        B.N      ??TSM_Data_Pasher_29
??TSM_Data_Pasher_15:
        LDR.W    R6,??DataTable25_3
        LDRB     R6,[R6, #+125]
        CMP      R6,#+130
        BNE.N    ??TSM_Data_Pasher_30
        LDR.W    R6,??DataTable25_3
        LDRB     R6,[R6, #+128]
        MOVS     R2,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        ORRS     R4,R2,R4
        LDR.W    R6,??DataTable27
        STR      R4,[R6, #+20]
        LDR.W    R6,??DataTable27
        LDR.W    R7,??DataTable27
        LDR      R7,[R7, #+20]
        STR      R7,[R6, #+16]
        LDR.W    R6,??DataTable25_3
        MOVS     R7,#+0
        STRB     R7,[R6, #+17]
??TSM_Data_Pasher_30:
        B.N      ??TSM_Data_Pasher_29
??TSM_Data_Pasher_16:
        B.N      ??TSM_Data_Pasher_29
??TSM_Data_Pasher_18:
        LDR.W    R6,??DataTable25_3
        LDRB     R6,[R6, #+125]
        CMP      R6,#+133
        BNE.N    ??TSM_Data_Pasher_31
        LDR.W    R6,??DataTable25_3
        LDRB     R6,[R6, #+126]
        MOVS     R2,R6
        LDR.W    R6,??DataTable25_3
        LDRB     R6,[R6, #+127]
        MOVS     R3,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSLS     R6,R2,#+8
        MOVS     R4,R6
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ORRS     R4,R3,R4
        LDR.W    R6,??DataTable27
        STR      R4,[R6, #+16]
        LDR.W    R6,??DataTable25_3
        MOVS     R7,#+0
        STRB     R7,[R6, #+17]
        LDR.W    R6,??DataTable25_3
        MOVS     R7,#+133
        STRB     R7,[R6, #+19]
??TSM_Data_Pasher_31:
        B.N      ??TSM_Data_Pasher_29
??TSM_Data_Pasher_17:
        LDR.W    R6,??DataTable25_3
        LDRB     R6,[R6, #+125]
        CMP      R6,#+132
        BNE.N    ??TSM_Data_Pasher_32
        LDR.W    R6,??DataTable25_3
        LDRB     R6,[R6, #+126]
        MOVS     R2,R6
        LDR.W    R6,??DataTable25_3
        LDRB     R6,[R6, #+127]
        MOVS     R3,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSLS     R6,R2,#+8
        MOVS     R4,R6
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ORRS     R4,R3,R4
        LDR.W    R6,??DataTable27
        STR      R4,[R6, #+24]
        LDR.W    R6,??DataTable25_3
        MOVS     R7,#+0
        STRB     R7,[R6, #+17]
        LDR.W    R6,??DataTable25_3
        MOVS     R7,#+132
        STRB     R7,[R6, #+19]
??TSM_Data_Pasher_32:
        B.N      ??TSM_Data_Pasher_29
??TSM_Data_Pasher_22:
        LDR.W    R6,??DataTable25_3
        LDRB     R6,[R6, #+125]
        CMP      R6,#+240
        BNE.N    ??TSM_Data_Pasher_33
        LDR.W    R6,??DataTable26
        LDR.W    R7,??DataTable25_3
        LDRB     R7,[R7, #+126]
        STRB     R7,[R6, #+10]
        LDR.W    R6,??DataTable26
        LDR.W    R7,??DataTable25_3
        LDRB     R7,[R7, #+128]
        STRB     R7,[R6, #+11]
        LDR.W    R6,??DataTable25_3
        MOVS     R7,#+0
        STRB     R7,[R6, #+17]
??TSM_Data_Pasher_33:
        B.N      ??TSM_Data_Pasher_29
??TSM_Data_Pasher_14:
        LDR.W    R6,??DataTable25_3
        LDRB     R6,[R6, #+125]
        CMP      R6,#+128
        BNE.N    ??TSM_Data_Pasher_34
        LDR.W    R6,??DataTable26
        LDR.W    R7,??DataTable25_3
        LDRB     R7,[R7, #+127]
        STRB     R7,[R6, #+12]
        LDR.W    R6,??DataTable26
        LDR.W    R7,??DataTable25_3
        LDRB     R7,[R7, #+128]
        STRB     R7,[R6, #+13]
        LDR.W    R6,??DataTable25_3
        MOVS     R7,#+0
        STRB     R7,[R6, #+17]
??TSM_Data_Pasher_34:
        B.N      ??TSM_Data_Pasher_29
??TSM_Data_Pasher_23:
        LDR.W    R6,??DataTable25_3
        LDRB     R6,[R6, #+125]
        CMP      R6,#+248
        BNE.N    ??TSM_Data_Pasher_35
        LDR.W    R6,??DataTable26
        LDR.W    R7,??DataTable25_3
        LDRB     R7,[R7, #+126]
        STRB     R7,[R6, #+14]
        LDR.W    R6,??DataTable26
        LDR.W    R7,??DataTable25_3
        LDRB     R7,[R7, #+127]
        STRB     R7,[R6, #+15]
        LDR.W    R6,??DataTable25_3
        MOVS     R7,#+0
        STRB     R7,[R6, #+17]
??TSM_Data_Pasher_35:
        B.N      ??TSM_Data_Pasher_29
??TSM_Data_Pasher_19:
        LDR.W    R6,??DataTable25_3
        LDRB     R6,[R6, #+125]
        CMP      R6,#+134
        BNE.N    ??TSM_Data_Pasher_36
        LDR.W    R6,??DataTable26
        LDR.W    R7,??DataTable25_3
        LDRB     R7,[R7, #+126]
        STRB     R7,[R6, #+32]
        LDR.W    R6,??DataTable25_3
        MOVS     R7,#+0
        STRB     R7,[R6, #+17]
??TSM_Data_Pasher_36:
        B.N      ??TSM_Data_Pasher_29
??TSM_Data_Pasher_21:
        LDR.W    R6,??DataTable25_3
        LDRB     R6,[R6, #+125]
        CMP      R6,#+213
        BNE.N    ??TSM_Data_Pasher_37
        LDR.W    R6,??DataTable25_3
        LDRB     R6,[R6, #+126]
        MOVS     R2,R6
        LDR.W    R6,??DataTable25_3
        LDRB     R6,[R6, #+127]
        MOVS     R3,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSLS     R6,R2,#+8
        MOVS     R4,R6
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ORRS     R4,R3,R4
        LDR.W    R6,??DataTable27
        STR      R4,[R6, #+20]
        LDR.W    R6,??DataTable27
        LDR.W    R7,??DataTable27
        LDR      R7,[R7, #+20]
        STR      R7,[R6, #+16]
        LDR.W    R6,??DataTable25_3
        MOVS     R7,#+0
        STRB     R7,[R6, #+17]
??TSM_Data_Pasher_37:
        B.N      ??TSM_Data_Pasher_29
??TSM_Data_Pasher_25:
        LDR.W    R6,??DataTable25_3
        LDRB     R6,[R6, #+125]
        CMP      R6,#+250
        BNE.N    ??TSM_Data_Pasher_38
        LDR.W    R6,??DataTable26
        LDR.W    R7,??DataTable25_3
        LDRB     R7,[R7, #+126]
        STRB     R7,[R6, #+33]
        LDR.W    R6,??DataTable26
        LDR.W    R7,??DataTable25_3
        LDRB     R7,[R7, #+127]
        STRB     R7,[R6, #+34]
        LDR.W    R6,??DataTable26
        LDR.W    R7,??DataTable25_3
        LDRB     R7,[R7, #+128]
        STRB     R7,[R6, #+35]
        LDR.W    R6,??DataTable25_3
        MOVS     R7,#+0
        STRB     R7,[R6, #+17]
??TSM_Data_Pasher_38:
        B.N      ??TSM_Data_Pasher_29
??TSM_Data_Pasher_24:
        LDR.W    R6,??DataTable25_3
        LDRB     R6,[R6, #+125]
        CMP      R6,#+249
        BNE.N    ??TSM_Data_Pasher_39
        LDR.W    R6,??DataTable26
        LDR.W    R7,??DataTable25_3
        LDRB     R7,[R7, #+126]
        STRB     R7,[R6, #+16]
        LDR.W    R6,??DataTable26
        LDR.W    R7,??DataTable25_3
        LDRB     R7,[R7, #+127]
        STRB     R7,[R6, #+17]
        LDR.W    R6,??DataTable25_3
        MOVS     R7,#+0
        STRB     R7,[R6, #+17]
??TSM_Data_Pasher_39:
        B.N      ??TSM_Data_Pasher_29
??TSM_Data_Pasher_20:
        LDR.W    R6,??DataTable25_3
        LDRB     R6,[R6, #+125]
        CMP      R6,#+191
        BNE.N    ??TSM_Data_Pasher_40
        LDR.W    R6,??DataTable25_3
        LDRB     R6,[R6, #+126]
        MOVS     R2,R6
        LDR.W    R6,??DataTable25_3
        LDRB     R6,[R6, #+127]
        MOVS     R3,R6
        UXTB     R2,R2            ;; ZeroExt  R2,R2,#+24,#+24
        LSLS     R6,R2,#+8
        MOVS     R4,R6
        UXTB     R3,R3            ;; ZeroExt  R3,R3,#+24,#+24
        ORRS     R4,R3,R4
        LDR.W    R6,??DataTable27
        STR      R4,[R6, #+24]
        LDR.W    R6,??DataTable25_3
        MOVS     R7,#+0
        STRB     R7,[R6, #+17]
??TSM_Data_Pasher_40:
        B.N      ??TSM_Data_Pasher_29
??TSM_Data_Pasher_26:
??TSM_Data_Pasher_29:
        B.N      ??TSM_Data_Pasher_41
??TSM_Data_Pasher_9:
        LDR.W    R6,??DataTable25_3
        LDRB     R6,[R6, #+17]
        CMP      R6,#+202
        BNE.N    ??TSM_Data_Pasher_42
        LDR.W    R6,??DataTable26
        MOVS     R7,#+0
        STR      R7,[R6, #+20]
        LDR.W    R6,??DataTable26
        LDR      R6,[R6, #+20]
        LDR.W    R7,??DataTable25_3
        LDRB     R7,[R7, #+126]
        ORRS     R6,R6,R7, LSL #+8
        LDR.W    R7,??DataTable26
        STR      R6,[R7, #+20]
        LDR.W    R6,??DataTable26
        LDR      R6,[R6, #+20]
        LDR.W    R7,??DataTable25_3
        LDRB     R7,[R7, #+127]
        ORRS     R6,R7,R6
        LDR.W    R7,??DataTable26
        STR      R6,[R7, #+20]
        LDR.W    R6,??DataTable26
        MOVS     R7,#+0
        STR      R7,[R6, #+24]
        LDR.W    R6,??DataTable26
        LDR      R6,[R6, #+24]
        LDR.W    R7,??DataTable25_3
        LDRB     R7,[R7, #+128]
        ORRS     R6,R6,R7, LSL #+8
        LDR.W    R7,??DataTable26
        STR      R6,[R7, #+24]
        LDR.W    R6,??DataTable26
        LDR      R6,[R6, #+24]
        LDR.W    R7,??DataTable25_3
        LDRB     R7,[R7, #+129]
        ORRS     R6,R7,R6
        LDR.W    R7,??DataTable26
        STR      R6,[R7, #+24]
        LDR.W    R6,??DataTable26
        LDR.W    R7,??DataTable25_3
        LDRB     R7,[R7, #+126]
        STRB     R7,[R6, #+28]
        LDR.W    R6,??DataTable26
        LDR.W    R7,??DataTable25_3
        LDRB     R7,[R7, #+127]
        STRB     R7,[R6, #+29]
        LDR.W    R6,??DataTable26
        LDR.W    R7,??DataTable25_3
        LDRB     R7,[R7, #+128]
        STRB     R7,[R6, #+30]
        LDR.W    R6,??DataTable26
        LDR.W    R7,??DataTable25_3
        LDRB     R7,[R7, #+129]
        STRB     R7,[R6, #+31]
        LDR.W    R6,??DataTable26
        MOVS     R7,#+255
        STRB     R7,[R6, #+36]
        LDR.W    R6,??DataTable25_3
        MOVS     R7,#+0
        STRB     R7,[R6, #+17]
??TSM_Data_Pasher_42:
        B.N      ??TSM_Data_Pasher_41
??TSM_Data_Pasher_10:
        LDR.W    R6,??DataTable25_3
        LDRB     R6,[R6, #+17]
        CMP      R6,#+129
        BNE.N    ??TSM_Data_Pasher_43
        LDR.W    R6,??DataTable25_3
        LDRB     R6,[R6, #+125]
        CMP      R6,#+129
        BNE.N    ??TSM_Data_Pasher_44
        LDR.W    R6,??DataTable26
        LDR.W    R7,??DataTable25_3
        LDRB     R7,[R7, #+128]
        STRB     R7,[R6, #+35]
        LDR.W    R6,??DataTable26
        LDR.W    R7,??DataTable25_3
        LDRB     R7,[R7, #+129]
        STRB     R7,[R6, #+34]
        LDR.W    R6,??DataTable26
        LDR.W    R7,??DataTable25_3
        LDRB     R7,[R7, #+130]
        STRB     R7,[R6, #+33]
        LDR.W    R6,??DataTable25_3
        MOVS     R7,#+0
        STRB     R7,[R6, #+17]
??TSM_Data_Pasher_44:
        B.N      ??TSM_Data_Pasher_45
??TSM_Data_Pasher_43:
??TSM_Data_Pasher_45:
        B.N      ??TSM_Data_Pasher_41
??TSM_Data_Pasher_11:
        B.N      ??TSM_Data_Pasher_41
??TSM_Data_Pasher_12:
??TSM_Data_Pasher_41:
        MOVS     R6,#+0
        MOVS     R1,R6
??TSM_Data_Pasher_46:
        LDR.W    R6,??DataTable25_3
        LDRB     R6,[R6, #+22]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,R6
        BCS.N    ??TSM_Data_Pasher_47
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R6,??DataTable25_3
        ADDS     R6,R1,R6
        MOVS     R7,#+0
        STRB     R7,[R6, #+124]
        ADDS     R1,R1,#+1
        B.N      ??TSM_Data_Pasher_46
??TSM_Data_Pasher_47:
        LDR.W    R6,??DataTable25_3
        MOVS     R7,#+0
        STRB     R7,[R6, #+20]
        LDR.W    R6,??DataTable25_3
        MOVS     R7,#+0
        STRB     R7,[R6, #+21]
        LDR.W    R6,??DataTable25_3
        MOVS     R7,#+0
        STRB     R7,[R6, #+22]
        LDR.W    R6,??DataTable25_3
        MOVS     R7,#+1
        STRB     R7,[R6, #+23]
        B.N      ??TSM_Data_Pasher_0
??TSM_Data_Pasher_7:
        LDR.W    R6,??DataTable25_3
        LDRB     R6,[R6, #+21]
        LDR.W    R7,??DataTable25_3
        LDRB     R7,[R7, #+22]
        CMP      R6,R7
        BNE.N    ??TSM_Data_Pasher_0
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+175
        BEQ.N    ??TSM_Data_Pasher_0
        MOVS     R6,#+0
        MOVS     R1,R6
??TSM_Data_Pasher_48:
        LDR.W    R6,??DataTable25_3
        LDRB     R6,[R6, #+21]
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,R6
        BCS.N    ??TSM_Data_Pasher_49
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R6,??DataTable25_3
        ADDS     R6,R1,R6
        MOVS     R7,#+0
        STRB     R7,[R6, #+124]
        ADDS     R1,R1,#+1
        B.N      ??TSM_Data_Pasher_48
??TSM_Data_Pasher_49:
        LDR.W    R6,??DataTable25_3
        MOVS     R7,#+0
        STRB     R7,[R6, #+20]
        LDR.W    R6,??DataTable25_3
        MOVS     R7,#+0
        STRB     R7,[R6, #+21]
        LDR.W    R6,??DataTable25_3
        MOVS     R7,#+0
        STRB     R7,[R6, #+22]
        LDR.W    R6,??DataTable25_3
        MOVS     R7,#+1
        STRB     R7,[R6, #+18]
??TSM_Data_Pasher_0:
        LDR.W    R6,??DataTable25_3
        LDRB     R6,[R6, #+20]
        CMP      R6,#+0
        BNE.N    ??TSM_Data_Pasher_50
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+160
        BNE.N    ??TSM_Data_Pasher_50
        LDR.W    R6,??DataTable25_3
        STRB     R0,[R6, #+124]
        LDR.W    R6,??DataTable25_3
        LDRB     R6,[R6, #+21]
        ADDS     R6,R6,#+1
        LDR.W    R7,??DataTable25_3
        STRB     R6,[R7, #+21]
        LDR.W    R6,??DataTable25_3
        MOVS     R7,#+1
        STRB     R7,[R6, #+20]
??TSM_Data_Pasher_50:
        POP      {R4-R7}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19:
        DC32     0x40000800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_1:
        DC32     counter

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_2:
        DC32     0x40010c0c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable19_3:
        DC32     stERROR

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SONY_Data_Pasher:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        MOVS     R6,#+0
        LDR.W    R0,??DataTable25_2
        LDRB     R0,[R0, #+68]
        CMP      R0,#+2
        BCC.N    ??SONY_Data_Pasher_0
        LDR.W    R0,??DataTable25_2
        LDRB     R0,[R0, #+68]
        LDR.W    R1,??DataTable25_2
        ADDS     R0,R0,R1
        STRB     R4,[R0, #+71]
        LDR.W    R0,??DataTable25_2
        LDRB     R0,[R0, #+68]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable25_2
        STRB     R0,[R1, #+68]
??SONY_Data_Pasher_0:
        LDR.W    R0,??DataTable25_2
        LDRB     R0,[R0, #+68]
        CMP      R0,#+4
        BNE.N    ??SONY_Data_Pasher_1
        LDR.W    R0,??DataTable25_2
        LDRB     R0,[R0, #+71]
        CMP      R0,#+144
        BNE.N    ??SONY_Data_Pasher_1
        LDR.W    R0,??DataTable25_2
        LDRB     R0,[R0, #+72]
        CMP      R0,#+80
        BNE.N    ??SONY_Data_Pasher_1
        LDR.W    R0,??DataTable25_2
        LDRB     R0,[R0, #+74]
        CMP      R0,#+255
        BNE.N    ??SONY_Data_Pasher_1
        LDR.W    R0,??DataTable25_3
        LDRB     R0,[R0, #+17]
        CMP      R0,#+1
        BNE.N    ??SONY_Data_Pasher_2
        LDR.W    R0,??DataTable25_2
        LDR.W    R1,??DataTable25_2
        LDRB     R1,[R1, #+73]
        STRB     R1,[R0, #+35]
        LDR.W    R0,??DataTable25_2
        LDRB     R0,[R0, #+35]
        CMP      R0,#+2
        BEQ.N    ??SONY_Data_Pasher_3
        CMP      R0,#+3
        BEQ.N    ??SONY_Data_Pasher_4
        B.N      ??SONY_Data_Pasher_5
??SONY_Data_Pasher_3:
        LDR.W    R0,??DataTable25_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+36]
        B.N      ??SONY_Data_Pasher_6
??SONY_Data_Pasher_4:
        LDR.W    R0,??DataTable25_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+36]
        B.N      ??SONY_Data_Pasher_6
??SONY_Data_Pasher_5:
??SONY_Data_Pasher_6:
        LDR.W    R0,??DataTable26
        MOVS     R1,#+129
        STRB     R1,[R0, #+8]
        B.N      ??SONY_Data_Pasher_7
??SONY_Data_Pasher_2:
??SONY_Data_Pasher_7:
        BL       SONY_Data_Clear
        LDR.W    R0,??DataTable25_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+68]
        LDR.W    R0,??DataTable25_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+70]
??SONY_Data_Pasher_1:
        LDR.W    R0,??DataTable25_2
        LDRB     R0,[R0, #+68]
        CMP      R0,#+7
        BNE.W    ??SONY_Data_Pasher_8
        LDR.W    R0,??DataTable25_2
        LDRB     R0,[R0, #+71]
        CMP      R0,#+144
        BNE.W    ??SONY_Data_Pasher_8
        LDR.W    R0,??DataTable25_2
        LDRB     R0,[R0, #+72]
        CMP      R0,#+80
        BNE.W    ??SONY_Data_Pasher_8
        LDR.W    R0,??DataTable25_2
        LDRB     R0,[R0, #+77]
        CMP      R0,#+255
        BNE.W    ??SONY_Data_Pasher_8
        LDR.W    R0,??DataTable25_3
        LDRB     R0,[R0, #+17]
        CMP      R0,#+71
        BEQ.N    ??SONY_Data_Pasher_9
        CMP      R0,#+72
        BEQ.N    ??SONY_Data_Pasher_10
        B.N      ??SONY_Data_Pasher_11
??SONY_Data_Pasher_9:
        LDR.W    R0,??DataTable25_2
        LDRB     R0,[R0, #+73]
        MOVS     R5,R0
        LDR.W    R0,??DataTable25_2
        LSLS     R1,R5,#+12
        STR      R1,[R0, #+48]
        LDR.W    R0,??DataTable25_2
        LDRB     R0,[R0, #+74]
        MOVS     R5,R0
        LDR.W    R0,??DataTable25_2
        LDR      R0,[R0, #+48]
        ORRS     R0,R0,R5, LSL #+8
        LDR.W    R1,??DataTable25_2
        STR      R0,[R1, #+48]
        LDR.W    R0,??DataTable25_2
        LDRB     R0,[R0, #+75]
        MOVS     R5,R0
        LDR.W    R0,??DataTable25_2
        LDR      R0,[R0, #+48]
        ORRS     R0,R0,R5, LSL #+4
        LDR.W    R1,??DataTable25_2
        STR      R0,[R1, #+48]
        LDR.W    R0,??DataTable25_2
        LDRB     R0,[R0, #+76]
        MOVS     R5,R0
        LDR.W    R0,??DataTable25_2
        LDR      R0,[R0, #+48]
        ORRS     R0,R5,R0
        LDR.W    R1,??DataTable25_2
        STR      R0,[R1, #+48]
        LDR.W    R0,??DataTable25_2
        LDRB     R0,[R0, #+77]
        CMP      R0,#+0
        BNE.N    ??SONY_Data_Pasher_12
        LDR.W    R0,??DataTable25_3
        MOVS     R1,#+1
        STRB     R1,[R0, #+18]
        B.N      ??SONY_Data_Pasher_13
??SONY_Data_Pasher_12:
        LDR.W    R0,??DataTable25_3
        MOVS     R1,#+0
        STRB     R1,[R0, #+17]
        LDR.W    R0,??DataTable25_3
        MOVS     R1,#+71
        STRB     R1,[R0, #+19]
??SONY_Data_Pasher_13:
        B.N      ??SONY_Data_Pasher_14
??SONY_Data_Pasher_10:
        LDR.W    R0,??DataTable25_2
        LDRB     R0,[R0, #+73]
        MOVS     R6,R0
        LDR.W    R0,??DataTable25_2
        LSLS     R1,R6,#+12
        STR      R1,[R0, #+60]
        LDR.W    R0,??DataTable25_2
        LDRB     R0,[R0, #+74]
        MOVS     R6,R0
        LDR.W    R0,??DataTable25_2
        LDR      R0,[R0, #+60]
        ORRS     R0,R0,R6, LSL #+8
        LDR.W    R1,??DataTable25_2
        STR      R0,[R1, #+60]
        LDR.W    R0,??DataTable25_2
        LDRB     R0,[R0, #+75]
        MOVS     R6,R0
        LDR.W    R0,??DataTable25_2
        LDR      R0,[R0, #+60]
        ORRS     R0,R0,R6, LSL #+4
        LDR.W    R1,??DataTable25_2
        STR      R0,[R1, #+60]
        LDR.W    R0,??DataTable25_2
        LDRB     R0,[R0, #+76]
        MOVS     R6,R0
        LDR.W    R0,??DataTable25_2
        LDR      R0,[R0, #+60]
        ORRS     R0,R6,R0
        LDR.W    R1,??DataTable25_2
        STR      R0,[R1, #+60]
        LDR.W    R0,??DataTable25_2
        LDRB     R0,[R0, #+77]
        CMP      R0,#+0
        BNE.N    ??SONY_Data_Pasher_15
        LDR.W    R0,??DataTable25_3
        MOVS     R1,#+1
        STRB     R1,[R0, #+18]
        B.N      ??SONY_Data_Pasher_16
??SONY_Data_Pasher_15:
        LDR.W    R0,??DataTable25_3
        MOVS     R1,#+72
        STRB     R1,[R0, #+19]
        LDR.W    R0,??DataTable25_3
        MOVS     R1,#+0
        STRB     R1,[R0, #+17]
??SONY_Data_Pasher_16:
        B.N      ??SONY_Data_Pasher_14
??SONY_Data_Pasher_11:
        LDR.W    R0,??DataTable25_3
        MOVS     R1,#+0
        STRB     R1,[R0, #+20]
        LDR.W    R0,??DataTable25_3
        LDRB     R0,[R0, #+18]
        CMP      R0,#+0
        BEQ.N    ??SONY_Data_Pasher_17
        LDR.W    R0,??DataTable25_3
        MOVS     R1,#+0
        STRB     R1,[R0, #+18]
??SONY_Data_Pasher_17:
??SONY_Data_Pasher_14:
        BL       SONY_Data_Clear
        LDR.W    R0,??DataTable25_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+68]
        LDR.W    R0,??DataTable25_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+70]
??SONY_Data_Pasher_8:
        LDR.W    R0,??DataTable25_2
        LDRB     R0,[R0, #+70]
        CMP      R0,#+0
        BNE.N    ??SONY_Data_Pasher_18
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+80
        BNE.N    ??SONY_Data_Pasher_19
        LDR.W    R0,??DataTable25_2
        LDRB     R0,[R0, #+68]
        CMP      R0,#+1
        BNE.N    ??SONY_Data_Pasher_19
        LDR.W    R0,??DataTable25_2
        MOVS     R1,#+80
        STRB     R1,[R0, #+72]
        LDR.W    R0,??DataTable25_2
        LDRB     R0,[R0, #+68]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable25_2
        STRB     R0,[R1, #+68]
        B.N      ??SONY_Data_Pasher_20
??SONY_Data_Pasher_19:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+80
        BEQ.N    ??SONY_Data_Pasher_20
        LDR.W    R0,??DataTable25_2
        LDRB     R0,[R0, #+68]
        CMP      R0,#+1
        BNE.N    ??SONY_Data_Pasher_20
        LDR.W    R0,??DataTable25_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+71]
        LDR.W    R0,??DataTable25_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+68]
??SONY_Data_Pasher_20:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+144
        BNE.N    ??SONY_Data_Pasher_21
        LDR.W    R0,??DataTable25_2
        LDRB     R0,[R0, #+68]
        CMP      R0,#+0
        BNE.N    ??SONY_Data_Pasher_21
        LDR.W    R0,??DataTable25_2
        MOVS     R1,#+144
        STRB     R1,[R0, #+71]
        LDR.W    R0,??DataTable25_2
        LDRB     R0,[R0, #+68]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable25_2
        STRB     R0,[R1, #+68]
        B.N      ??SONY_Data_Pasher_21
??SONY_Data_Pasher_18:
        LDR.W    R0,??DataTable25_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+70]
??SONY_Data_Pasher_21:
        LDR.W    R0,??DataTable25_2
        LDRB     R0,[R0, #+68]
        CMP      R0,#+20
        BCC.N    ??SONY_Data_Pasher_22
        LDR.W    R0,??DataTable25_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+68]
        BL       SONY_Data_Clear
??SONY_Data_Pasher_22:
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
UART4_Data_Pasher:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??UART4_Data_Pasher_0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+160
        BNE.N    ??UART4_Data_Pasher_1
??UART4_Data_Pasher_0:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       TSM_Data_Pasher
??UART4_Data_Pasher_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??UART4_Data_Pasher_2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+129
        BNE.N    ??UART4_Data_Pasher_3
??UART4_Data_Pasher_2:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       SONY_Data_Pasher
??UART4_Data_Pasher_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
UART4_IRQHandler:
        PUSH     {R3-R5,LR}
        MOVS     R4,#+0
        MOVS     R5,#+0
        MOVW     R1,#+1574
        LDR.W    R0,??DataTable27_1  ;; 0x40004c00
        BL       USART_GetITStatus
        CMP      R0,#+0
        BEQ.N    ??UART4_IRQHandler_0
        LDR.W    R0,??DataTable25_3
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable25_3
        LDRB     R1,[R1, #+1]
        CMP      R0,R1
        BCS.N    ??UART4_IRQHandler_1
        LDR.W    R0,??DataTable25_3
        LDRB     R0,[R0, #+0]
        LDR.W    R1,??DataTable25_3
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+24]
        MOVS     R5,R0
        LDR.W    R0,??DataTable25_3
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable25_3
        STRB     R0,[R1, #+0]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R1,R5
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.W    R0,??DataTable27_1  ;; 0x40004c00
        BL       USART_SendData
        B.N      ??UART4_IRQHandler_2
??UART4_IRQHandler_1:
        LDR.W    R0,??DataTable25_3
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        LDR.W    R0,??DataTable25_3
        MOVS     R1,#+0
        STRB     R1,[R0, #+1]
??UART4_IRQHandler_2:
        MOVW     R1,#+1574
        LDR.W    R0,??DataTable27_1  ;; 0x40004c00
        BL       USART_ClearITPendingBit
??UART4_IRQHandler_0:
        MOVW     R1,#+1317
        LDR.W    R0,??DataTable27_1  ;; 0x40004c00
        BL       USART_GetITStatus
        CMP      R0,#+0
        BEQ.N    ??UART4_IRQHandler_3
        LDR.W    R0,??DataTable27_1  ;; 0x40004c00
        BL       USART_ReceiveData
        MOVS     R4,R0
        LDR.W    R0,??DataTable26
        LDRB     R1,[R0, #+8]
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       UART4_Data_Pasher
??UART4_IRQHandler_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Rx_Pelco_Address_Check:
        LDR.W    R1,??DataTable27_2
        STRB     R0,[R1, #+118]
        LDR.W    R1,??DataTable27_2
        LDRB     R1,[R1, #+13]
        ADDS     R1,R1,#+1
        LDR.W    R2,??DataTable27_2
        STRB     R1,[R2, #+13]
        LDR.W    R1,??DataTable27_2
        MOVS     R2,#+1
        STRB     R2,[R1, #+14]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Rx_Pelco_Data_Check:
        MOVS     R1,#+0
        MOVS     R0,#+0
        MOVS     R2,#+1
        MOVS     R1,R2
??Rx_Pelco_Data_Check_0:
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+6
        BCS.N    ??Rx_Pelco_Data_Check_1
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        LDR.W    R2,??DataTable27_2
        ADDS     R2,R1,R2
        LDRB     R2,[R2, #+117]
        ADDS     R0,R2,R0
        ADDS     R1,R1,#+1
        B.N      ??Rx_Pelco_Data_Check_0
??Rx_Pelco_Data_Check_1:
        LDR.W    R2,??DataTable27_2
        LDRB     R2,[R2, #+123]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R2,R0
        BNE.N    ??Rx_Pelco_Data_Check_2
        LDR.W    R2,??DataTable27_2
        MOVS     R3,#+1
        STRB     R3,[R2, #+8]
        LDR.W    R2,??DataTable27_2
        LDRB     R2,[R2, #+9]
        ADDS     R2,R2,#+1
        LDR.W    R3,??DataTable27_2
        STRB     R2,[R3, #+9]
        LDR.W    R2,??DataTable27_2
        MOVS     R3,#+0
        STRB     R3,[R2, #+13]
        B.N      ??Rx_Pelco_Data_Check_3
??Rx_Pelco_Data_Check_2:
        LDR.W    R2,??DataTable27_2
        MOVS     R3,#+255
        STRB     R3,[R2, #+8]
        LDR.W    R2,??DataTable27_2
        LDRB     R2,[R2, #+11]
        ADDS     R2,R2,#+1
        LDR.W    R3,??DataTable27_2
        STRB     R2,[R3, #+11]
??Rx_Pelco_Data_Check_3:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Rx_Second_Comm_Check:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R0,R1
        BNE.N    ??Rx_Second_Comm_Check_0
        LDR.W    R2,??DataTable27_2
        STRB     R0,[R2, #+118]
        LDR.W    R2,??DataTable27_2
        LDRB     R2,[R2, #+13]
        ADDS     R2,R2,#+1
        LDR.W    R3,??DataTable27_2
        STRB     R2,[R3, #+13]
        LDR.W    R2,??DataTable27_2
        MOVS     R3,#+1
        STRB     R3,[R2, #+14]
        B.N      ??Rx_Second_Comm_Check_1
??Rx_Second_Comm_Check_0:
        LDR.W    R2,??DataTable27_2
        MOVS     R3,#+0
        STRB     R3,[R2, #+13]
        LDR.W    R2,??DataTable27_2
        MOVS     R3,#+0
        STRB     R3,[R2, #+117]
        LDR.W    R2,??DataTable27_2
        MOVS     R3,#+0
        STRB     R3,[R2, #+2]
??Rx_Second_Comm_Check_1:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24:
        DC32     stDIP

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable24_1:
        DC32     stUSART2

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Rx_Usart_Comm_Handling:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??Rx_Usart_Comm_Handling_0
        LDR.W    R0,??DataTable27_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+13]
        LDR.W    R0,??DataTable27_2
        LDRB     R0,[R0, #+13]
        LDR.W    R1,??DataTable27_2
        ADDS     R0,R0,R1
        STRB     R5,[R0, #+117]
        LDR.W    R0,??DataTable27_2
        LDRB     R0,[R0, #+13]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable27_2
        STRB     R0,[R1, #+13]
        LDR.W    R0,??DataTable27_3
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable27_3
        ADDS     R0,R0,R1
        STRB     R5,[R0, #+4]
        LDR.W    R0,??DataTable27_3
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable27_3
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable27_3
        LDR      R0,[R0, #+0]
        MOV      R1,#+300
        CMP      R0,R1
        BCC.N    ??Rx_Usart_Comm_Handling_0
        LDR.W    R0,??DataTable27_3
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
??Rx_Usart_Comm_Handling_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BNE.N    ??Rx_Usart_Comm_Handling_1
        LDR.W    R0,??DataTable27_3
        LDR      R0,[R0, #+0]
        LDR.W    R1,??DataTable27_3
        ADDS     R0,R0,R1
        STRB     R5,[R0, #+4]
        LDR.W    R0,??DataTable27_3
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.W    R1,??DataTable27_3
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable27_3
        LDR      R0,[R0, #+0]
        MOV      R1,#+300
        CMP      R0,R1
        BCC.N    ??Rx_Usart_Comm_Handling_2
        LDR.W    R0,??DataTable27_3
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
??Rx_Usart_Comm_Handling_2:
        LDR.W    R0,??DataTable27_2
        LDRB     R0,[R0, #+13]
        CMP      R0,#+1
        BNE.N    ??Rx_Usart_Comm_Handling_1
        LDR.W    R0,??DataTable27_2
        LDRB     R0,[R0, #+2]
        CMP      R0,#+10
        BEQ.N    ??Rx_Usart_Comm_Handling_3
        CMP      R0,#+11
        BEQ.N    ??Rx_Usart_Comm_Handling_4
        CMP      R0,#+12
        BEQ.N    ??Rx_Usart_Comm_Handling_5
        CMP      R0,#+13
        BEQ.N    ??Rx_Usart_Comm_Handling_6
        CMP      R0,#+14
        BEQ.N    ??Rx_Usart_Comm_Handling_7
        CMP      R0,#+27
        BEQ.N    ??Rx_Usart_Comm_Handling_8
        CMP      R0,#+43
        BEQ.N    ??Rx_Usart_Comm_Handling_9
        CMP      R0,#+255
        BEQ.N    ??Rx_Usart_Comm_Handling_10
        B.N      ??Rx_Usart_Comm_Handling_11
??Rx_Usart_Comm_Handling_3:
        MOVS     R1,#+10
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Rx_Second_Comm_Check
        B.N      ??Rx_Usart_Comm_Handling_1
??Rx_Usart_Comm_Handling_4:
        MOVS     R1,#+11
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Rx_Second_Comm_Check
        B.N      ??Rx_Usart_Comm_Handling_1
??Rx_Usart_Comm_Handling_8:
        MOVS     R1,#+27
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Rx_Second_Comm_Check
        B.N      ??Rx_Usart_Comm_Handling_1
??Rx_Usart_Comm_Handling_9:
        MOVS     R1,#+43
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Rx_Second_Comm_Check
        B.N      ??Rx_Usart_Comm_Handling_1
??Rx_Usart_Comm_Handling_5:
        MOVS     R1,#+12
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Rx_Second_Comm_Check
        B.N      ??Rx_Usart_Comm_Handling_1
??Rx_Usart_Comm_Handling_6:
        MOVS     R1,#+13
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Rx_Second_Comm_Check
        B.N      ??Rx_Usart_Comm_Handling_1
??Rx_Usart_Comm_Handling_7:
        MOVS     R1,#+14
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Rx_Second_Comm_Check
        B.N      ??Rx_Usart_Comm_Handling_1
??Rx_Usart_Comm_Handling_10:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Rx_Pelco_Address_Check
        B.N      ??Rx_Usart_Comm_Handling_1
??Rx_Usart_Comm_Handling_11:
??Rx_Usart_Comm_Handling_1:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BNE.N    ??Rx_Usart_Comm_Handling_12
        LDR.N    R0,??DataTable27_3
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable27_3
        ADDS     R0,R0,R1
        STRB     R5,[R0, #+4]
        LDR.N    R0,??DataTable27_3
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable27_3
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable27_3
        LDR      R0,[R0, #+0]
        MOV      R1,#+300
        CMP      R0,R1
        BCC.N    ??Rx_Usart_Comm_Handling_13
        LDR.N    R0,??DataTable27_3
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
??Rx_Usart_Comm_Handling_13:
        LDR.N    R0,??DataTable27_2
        LDRB     R0,[R0, #+2]
        CMP      R0,#+255
        BNE.N    ??Rx_Usart_Comm_Handling_14
        LDR.N    R0,??DataTable27_2
        LDRB     R0,[R0, #+13]
        CMP      R0,#+2
        BNE.N    ??Rx_Usart_Comm_Handling_12
        LDR.N    R0,??DataTable27_2
        MOVS     R1,#+2
        STRB     R1,[R0, #+14]
        LDR.N    R0,??DataTable27_2
        LDRB     R0,[R0, #+14]
        ADDS     R0,R0,#+5
        LDR.N    R1,??DataTable27_2
        STRB     R0,[R1, #+15]
        LDR.N    R0,??DataTable27_2
        STRB     R5,[R0, #+119]
        LDR.N    R0,??DataTable27_2
        LDRB     R0,[R0, #+13]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable27_2
        STRB     R0,[R1, #+13]
        B.N      ??Rx_Usart_Comm_Handling_12
??Rx_Usart_Comm_Handling_14:
        LDR.N    R0,??DataTable27_2
        LDRB     R0,[R0, #+13]
        CMP      R0,#+2
        BNE.N    ??Rx_Usart_Comm_Handling_12
        LDR.N    R0,??DataTable27_2
        STRB     R5,[R0, #+14]
        LDR.N    R0,??DataTable27_2
        LDRB     R0,[R0, #+14]
        ADDS     R0,R0,#+5
        LDR.N    R1,??DataTable27_2
        STRB     R0,[R1, #+15]
        LDR.N    R0,??DataTable27_2
        STRB     R5,[R0, #+119]
        LDR.N    R0,??DataTable27_2
        LDRB     R0,[R0, #+13]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable27_2
        STRB     R0,[R1, #+13]
??Rx_Usart_Comm_Handling_12:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+3
        BNE.N    ??Rx_Usart_Comm_Handling_15
        LDR.N    R0,??DataTable27_3
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable27_3
        ADDS     R0,R0,R1
        STRB     R5,[R0, #+4]
        LDR.N    R0,??DataTable27_3
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable27_3
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable27_3
        LDR      R0,[R0, #+0]
        MOV      R1,#+300
        CMP      R0,R1
        BCC.N    ??Rx_Usart_Comm_Handling_16
        LDR.N    R0,??DataTable27_3
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
??Rx_Usart_Comm_Handling_16:
        LDR.N    R0,??DataTable27_2
        LDRB     R0,[R0, #+13]
        LDR.N    R1,??DataTable27_2
        ADDS     R0,R0,R1
        STRB     R5,[R0, #+117]
        LDR.N    R0,??DataTable27_2
        LDRB     R0,[R0, #+13]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable27_2
        STRB     R0,[R1, #+13]
        LDR.N    R0,??DataTable27_2
        LDRB     R0,[R0, #+13]
        LDR.N    R1,??DataTable27_2
        LDRB     R1,[R1, #+15]
        CMP      R0,R1
        BNE.N    ??Rx_Usart_Comm_Handling_15
        LDR.N    R0,??DataTable27_2
        LDRB     R0,[R0, #+2]
        CMP      R0,#+255
        BNE.N    ??Rx_Usart_Comm_Handling_17
        BL       Rx_Pelco_Data_Check
        B.N      ??Rx_Usart_Comm_Handling_18
??Rx_Usart_Comm_Handling_17:
        LDR.N    R0,??DataTable27_2
        LDRB     R0,[R0, #+13]
        LDR.N    R1,??DataTable27_2
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+116]
        ANDS     R0,R0,#0xF
        CMP      R0,#+15
        BNE.N    ??Rx_Usart_Comm_Handling_19
        LDR.N    R0,??DataTable27_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+8]
        LDR.N    R0,??DataTable27_2
        LDRB     R0,[R0, #+9]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable27_2
        STRB     R0,[R1, #+9]
        LDR.N    R0,??DataTable27_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+13]
        B.N      ??Rx_Usart_Comm_Handling_18
??Rx_Usart_Comm_Handling_19:
        LDR.N    R0,??DataTable27_2
        MOVS     R1,#+255
        STRB     R1,[R0, #+8]
        LDR.N    R0,??DataTable27_2
        LDRB     R0,[R0, #+11]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable27_2
        STRB     R0,[R1, #+11]
??Rx_Usart_Comm_Handling_18:
        LDR.N    R0,??DataTable27_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+13]
        LDR.N    R0,??DataTable27_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+14]
        LDR.N    R0,??DataTable27_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+2]
??Rx_Usart_Comm_Handling_15:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25:
        DC32     0x40004400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_1:
        DC32     0x40004800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_2:
        DC32     stSONY

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_3:
        DC32     stUART4

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Protocol_Command_Check:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        LDR.N    R0,??DataTable27_2
        LDRB     R0,[R0, #+2]
        CMP      R0,#+0
        BNE.N    ??Protocol_Command_Check_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        MOVS     R0,R4
        CMP      R0,#+160
        BEQ.N    ??Protocol_Command_Check_1
        CMP      R0,#+176
        BEQ.N    ??Protocol_Command_Check_2
        CMP      R0,#+177
        BEQ.N    ??Protocol_Command_Check_3
        CMP      R0,#+178
        BEQ.N    ??Protocol_Command_Check_4
        CMP      R0,#+192
        BEQ.N    ??Protocol_Command_Check_5
        CMP      R0,#+208
        BEQ.N    ??Protocol_Command_Check_6
        CMP      R0,#+224
        BEQ.N    ??Protocol_Command_Check_7
        CMP      R0,#+255
        BEQ.N    ??Protocol_Command_Check_8
        B.N      ??Protocol_Command_Check_9
??Protocol_Command_Check_1:
        MOVS     R1,#+160
        MOVS     R0,#+0
        BL       Rx_Usart_Comm_Handling
        LDR.N    R0,??DataTable27_2
        MOVS     R1,#+10
        STRB     R1,[R0, #+2]
        B.N      ??Protocol_Command_Check_10
??Protocol_Command_Check_2:
        MOVS     R1,#+176
        MOVS     R0,#+0
        BL       Rx_Usart_Comm_Handling
        LDR.N    R0,??DataTable27_2
        MOVS     R1,#+11
        STRB     R1,[R0, #+2]
        B.N      ??Protocol_Command_Check_10
??Protocol_Command_Check_3:
        MOVS     R1,#+177
        MOVS     R0,#+0
        BL       Rx_Usart_Comm_Handling
        LDR.N    R0,??DataTable27_2
        MOVS     R1,#+27
        STRB     R1,[R0, #+2]
        B.N      ??Protocol_Command_Check_10
??Protocol_Command_Check_4:
        MOVS     R1,#+178
        MOVS     R0,#+0
        BL       Rx_Usart_Comm_Handling
        LDR.N    R0,??DataTable27_2
        MOVS     R1,#+43
        STRB     R1,[R0, #+2]
        B.N      ??Protocol_Command_Check_10
??Protocol_Command_Check_5:
        MOVS     R1,#+192
        MOVS     R0,#+0
        BL       Rx_Usart_Comm_Handling
        LDR.N    R0,??DataTable27_2
        MOVS     R1,#+12
        STRB     R1,[R0, #+2]
        B.N      ??Protocol_Command_Check_10
??Protocol_Command_Check_6:
        MOVS     R1,#+208
        MOVS     R0,#+0
        BL       Rx_Usart_Comm_Handling
        LDR.N    R0,??DataTable27_2
        MOVS     R1,#+13
        STRB     R1,[R0, #+2]
        B.N      ??Protocol_Command_Check_10
??Protocol_Command_Check_7:
        MOVS     R1,#+224
        MOVS     R0,#+0
        BL       Rx_Usart_Comm_Handling
        LDR.N    R0,??DataTable27_2
        MOVS     R1,#+14
        STRB     R1,[R0, #+2]
        B.N      ??Protocol_Command_Check_10
??Protocol_Command_Check_8:
        MOVS     R1,#+255
        MOVS     R0,#+0
        BL       Rx_Usart_Comm_Handling
        LDR.N    R0,??DataTable27_2
        MOVS     R1,#+255
        STRB     R1,[R0, #+2]
        B.N      ??Protocol_Command_Check_10
??Protocol_Command_Check_9:
        B.N      ??Protocol_Command_Check_10
??Protocol_Command_Check_0:
        LDR.N    R0,??DataTable27_2
        LDRB     R0,[R0, #+14]
        CMP      R0,#+0
        BNE.N    ??Protocol_Command_Check_11
        MOVS     R0,#+1
        MOVS     R5,R0
        B.N      ??Protocol_Command_Check_12
??Protocol_Command_Check_11:
        LDR.N    R0,??DataTable27_2
        LDRB     R0,[R0, #+13]
        CMP      R0,#+3
        BCC.N    ??Protocol_Command_Check_13
        MOVS     R0,#+3
        MOVS     R5,R0
        B.N      ??Protocol_Command_Check_12
??Protocol_Command_Check_13:
        LDR.N    R0,??DataTable27_2
        LDRB     R0,[R0, #+7]
        CMP      R0,#+0
        BNE.N    ??Protocol_Command_Check_12
        MOVS     R0,#+2
        MOVS     R5,R0
??Protocol_Command_Check_12:
        MOVS     R1,R4
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Rx_Usart_Comm_Handling
??Protocol_Command_Check_10:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable26:
        DC32     stINFO

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
UART5_IRQHandler:
        PUSH     {R3-R5,LR}
        MOVS     R4,#+0
        MOVS     R5,#+0
        MOVW     R1,#+1574
        LDR.N    R0,??DataTable27_4  ;; 0x40005000
        BL       USART_GetITStatus
        CMP      R0,#+0
        BEQ.N    ??UART5_IRQHandler_0
        LDR.N    R0,??DataTable27_2
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable27_2
        LDRB     R1,[R1, #+1]
        CMP      R0,R1
        BCS.N    ??UART5_IRQHandler_1
        LDR.N    R0,??DataTable27_2
        LDRB     R0,[R0, #+0]
        LDR.N    R1,??DataTable27_2
        ADDS     R0,R0,R1
        LDRB     R0,[R0, #+17]
        MOVS     R5,R0
        LDR.N    R0,??DataTable27_2
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable27_2
        STRB     R0,[R1, #+0]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        MOVS     R1,R5
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        LDR.N    R0,??DataTable27_4  ;; 0x40005000
        BL       USART_SendData
        B.N      ??UART5_IRQHandler_2
??UART5_IRQHandler_1:
        LDR.N    R0,??DataTable27_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        LDR.N    R0,??DataTable27_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+1]
??UART5_IRQHandler_2:
        MOVW     R1,#+1574
        LDR.N    R0,??DataTable27_4  ;; 0x40005000
        BL       USART_ClearITPendingBit
??UART5_IRQHandler_0:
        MOVW     R1,#+1317
        LDR.N    R0,??DataTable27_4  ;; 0x40005000
        BL       USART_GetITStatus
        CMP      R0,#+0
        BEQ.N    ??UART5_IRQHandler_3
        LDR.N    R0,??DataTable27_4  ;; 0x40005000
        BL       USART_ReceiveData
        MOVS     R4,R0
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       Protocol_Command_Check
??UART5_IRQHandler_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable27:
        DC32     stTSM

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable27_1:
        DC32     0x40004c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable27_2:
        DC32     stUART5

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable27_3:
        DC32     stERROR

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable27_4:
        DC32     0x40005000

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
//     1 byte  in section .bss
// 7 364 bytes in section .text
// 
// 7 364 bytes of CODE memory
//     1 byte  of DATA memory
//
//Errors: none
//Warnings: 3
