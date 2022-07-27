///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    27/Jul/2022  18:07:00 /
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

        EXTERN EXTI_Init
        EXTERN GPIO_Init
        EXTERN NVIC_Init
        EXTERN RCC_APB1PeriphClockCmd
        EXTERN RCC_APB2PeriphClockCmd
        EXTERN RCC_GetClocksFreq
        EXTERN SystemCoreClock
        EXTERN SystemInit
        EXTERN TIM_Cmd
        EXTERN TIM_OC1Init
        EXTERN TIM_OC2Init
        EXTERN TIM_OC3Init
        EXTERN TIM_OC4Init
        EXTERN TIM_TimeBaseInit

        PUBLIC ADC_InitStructure
        PUBLIC DMA_InitStructure
        PUBLIC EXTI_Configuration
        PUBLIC EXTI_InitStructure
        PUBLIC GPIO_Configuration
        PUBLIC GPIO_InitStructure
        PUBLIC I2C_InitStructure
        PUBLIC Initial_Device
        PUBLIC NVIC_Configuration
        PUBLIC NVIC_InitStructure
        PUBLIC PrescalerValue
        PUBLIC RCC_Configuration
        PUBLIC TIMER_Init
        PUBLIC TIM_OCInitStructure
        PUBLIC TIM_TimeBaseStructure
        PUBLIC USART_InitStructure
        PUBLIC rcc_clocks


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
EXTI_InitStructure:
        DS8 8

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

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
PrescalerValue:
        DS8 2

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Initial_Device:
        PUSH     {R7,LR}
        BL       RCC_Configuration
        LDR.N    R0,??DataTable4
        BL       RCC_GetClocksFreq
        BL       GPIO_Configuration
        BL       NVIC_Configuration
        BL       EXTI_Configuration
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TIMER_Init:
        PUSH     {R4,LR}
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        MOV      R1,#+1200
        UDIV     R0,R0,R1
        SUBS     R0,R0,#+1
        MOVS     R4,R0
        LDR.N    R0,??DataTable4_1
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable4_2  ;; 0x1d4c0
        UDIV     R0,R0,R1
        LDR.N    R1,??DataTable4_3
        STRH     R0,[R1, #+0]
        LDR.N    R0,??DataTable4_4
        MOVW     R1,#+3599
        STRH     R1,[R0, #+4]
        LDR.N    R0,??DataTable4_4
        MOVW     R1,#+59999
        STRH     R1,[R0, #+0]
        LDR.N    R0,??DataTable4_4
        MOVS     R1,#+0
        STRH     R1,[R0, #+6]
        LDR.N    R0,??DataTable4_4
        MOVS     R1,#+0
        STRH     R1,[R0, #+2]
        LDR.N    R1,??DataTable4_4
        LDR.N    R0,??DataTable4_5  ;; 0x40000800
        BL       TIM_TimeBaseInit
        LDR.N    R0,??DataTable4_6
        MOVS     R1,#+0
        STRH     R1,[R0, #+2]
        LDR.N    R1,??DataTable4_6
        LDR.N    R0,??DataTable4_5  ;; 0x40000800
        BL       TIM_OC1Init
        LDR.N    R1,??DataTable4_6
        LDR.N    R0,??DataTable4_5  ;; 0x40000800
        BL       TIM_OC2Init
        LDR.N    R0,??DataTable4_6
        MOVS     R1,#+1
        STRH     R1,[R0, #+2]
        LDR.N    R0,??DataTable4_6
        MOVS     R1,#+1
        STRH     R1,[R0, #+6]
        LDR.N    R0,??DataTable4_6
        MOVS     R1,#+0
        STRH     R1,[R0, #+8]
        LDR.N    R0,??DataTable4_6
        MOVS     R1,#+48
        STRH     R1,[R0, #+0]
        LDR.N    R1,??DataTable4_6
        LDR.N    R0,??DataTable4_5  ;; 0x40000800
        BL       TIM_OC3Init
        MOVS     R1,#+1
        LDR.N    R0,??DataTable4_5  ;; 0x40000800
        BL       TIM_Cmd
        LDR.N    R0,??DataTable4_6
        MOVS     R1,#+1
        STRH     R1,[R0, #+2]
        LDR.N    R0,??DataTable4_6
        MOVS     R1,#+1
        STRH     R1,[R0, #+6]
        LDR.N    R0,??DataTable4_6
        MOVS     R1,#+2
        STRH     R1,[R0, #+8]
        LDR.N    R0,??DataTable4_6
        MOVS     R1,#+48
        STRH     R1,[R0, #+0]
        LDR.N    R1,??DataTable4_6
        LDR.N    R0,??DataTable4_5  ;; 0x40000800
        BL       TIM_OC4Init
        MOVS     R1,#+1
        LDR.N    R0,??DataTable4_5  ;; 0x40000800
        BL       TIM_Cmd
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RCC_Configuration:
        PUSH     {R7,LR}
        BL       SystemInit
        MOVS     R1,#+1
        MOVS     R0,#+61
        BL       RCC_APB2PeriphClockCmd
        MOVS     R1,#+1
        MOVS     R0,#+4
        BL       RCC_APB1PeriphClockCmd
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
NVIC_Configuration:
        PUSH     {R7,LR}
        LDR.N    R0,??DataTable4_7
        MOVS     R1,#+6
        STRB     R1,[R0, #+0]
        LDR.N    R0,??DataTable4_7
        MOVS     R1,#+0
        STRB     R1,[R0, #+1]
        LDR.N    R0,??DataTable4_7
        MOVS     R1,#+0
        STRB     R1,[R0, #+2]
        LDR.N    R0,??DataTable4_7
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        LDR.N    R0,??DataTable4_7
        BL       NVIC_Init
        LDR.N    R0,??DataTable4_7
        MOVS     R1,#+7
        STRB     R1,[R0, #+0]
        LDR.N    R0,??DataTable4_7
        MOVS     R1,#+0
        STRB     R1,[R0, #+1]
        LDR.N    R0,??DataTable4_7
        MOVS     R1,#+0
        STRB     R1,[R0, #+2]
        LDR.N    R0,??DataTable4_7
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
        LDR.N    R0,??DataTable4_7
        BL       NVIC_Init
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
GPIO_Configuration:
        PUSH     {R7,LR}
        LDR.N    R0,??DataTable4_8
        MOVS     R1,#+1
        STRH     R1,[R0, #+0]
        LDR.N    R0,??DataTable4_8
        MOVS     R1,#+40
        STRB     R1,[R0, #+3]
        LDR.N    R0,??DataTable4_8
        MOVS     R1,#+2
        STRB     R1,[R0, #+2]
        LDR.N    R1,??DataTable4_8
        LDR.N    R0,??DataTable4_9  ;; 0x40010800
        BL       GPIO_Init
        LDR.N    R0,??DataTable4_8
        MOVS     R1,#+2
        STRH     R1,[R0, #+0]
        LDR.N    R0,??DataTable4_8
        MOVS     R1,#+40
        STRB     R1,[R0, #+3]
        LDR.N    R0,??DataTable4_8
        MOVS     R1,#+2
        STRB     R1,[R0, #+2]
        LDR.N    R1,??DataTable4_8
        LDR.N    R0,??DataTable4_9  ;; 0x40010800
        BL       GPIO_Init
        LDR.N    R0,??DataTable4_8
        MOV      R1,#+800
        STRH     R1,[R0, #+0]
        LDR.N    R0,??DataTable4_8
        MOVS     R1,#+16
        STRB     R1,[R0, #+3]
        LDR.N    R0,??DataTable4_8
        MOVS     R1,#+2
        STRB     R1,[R0, #+2]
        LDR.N    R1,??DataTable4_8
        LDR.N    R0,??DataTable4_10  ;; 0x40010c00
        BL       GPIO_Init
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
EXTI_Configuration:
        PUSH     {R7,LR}
        LDR.N    R0,??DataTable4_11
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable4_11
        MOVS     R1,#+0
        STRB     R1,[R0, #+4]
        LDR.N    R0,??DataTable4_11
        MOVS     R1,#+12
        STRB     R1,[R0, #+5]
        LDR.N    R0,??DataTable4_11
        MOVS     R1,#+1
        STRB     R1,[R0, #+6]
        LDR.N    R0,??DataTable4_11
        BL       EXTI_Init
        LDR.N    R0,??DataTable4_11
        MOVS     R1,#+2
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable4_11
        MOVS     R1,#+0
        STRB     R1,[R0, #+4]
        LDR.N    R0,??DataTable4_11
        MOVS     R1,#+12
        STRB     R1,[R0, #+5]
        LDR.N    R0,??DataTable4_11
        MOVS     R1,#+1
        STRB     R1,[R0, #+6]
        LDR.N    R0,??DataTable4_11
        BL       EXTI_Init
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     rcc_clocks

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     SystemCoreClock

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     0x1d4c0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     PrescalerValue

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     TIM_TimeBaseStructure

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     0x40000800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DC32     TIM_OCInitStructure

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_7:
        DC32     NVIC_InitStructure

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_8:
        DC32     GPIO_InitStructure

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_9:
        DC32     0x40010800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_10:
        DC32     0x40010c00

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_11:
        DC32     EXTI_InitStructure

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
// 162 bytes in section .bss
// 482 bytes in section .text
// 
// 482 bytes of CODE memory
// 162 bytes of DATA memory
//
//Errors: none
//Warnings: 1
