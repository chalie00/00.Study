///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    20/Jul/2022  18:34:53 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\TTT\Desktop\zz.STDFW\00.Study\src\Switch_Contr /
//                    ol.c                                                    /
//    Command line =  C:\Users\TTT\Desktop\zz.STDFW\00.Study\src\Switch_Contr /
//                    ol.c -D USE_STDPERIPH_DRIVER -D STM32F10x_HD -D         /
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
//                    Debug\List\Switch_Control.s                             /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME Switch_Control

        #define SHT_PROGBITS 0x1

        EXTERN GPIO_ReadInputDataBit
        EXTERN LED_Off_Green
        EXTERN LED_Off_Red
        EXTERN LED_Off_Yellow
        EXTERN LED_On_Green
        EXTERN LED_On_Red
        EXTERN LED_On_Yellow

        PUBLIC User_SW_On_LED_Green_On
        PUBLIC User_SW_On_LED_Ren_On
        PUBLIC User_SW_On_LED_Yellow_On


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
User_SW_On_LED_Ren_On:
        PUSH     {R7,LR}
        MOVS     R1,#+2
        LDR.N    R0,??DataTable2  ;; 0x40010800
        BL       GPIO_ReadInputDataBit
        CMP      R0,#+1
        BNE.N    ??User_SW_On_LED_Ren_On_0
        BL       LED_On_Red
        B.N      ??User_SW_On_LED_Ren_On_1
??User_SW_On_LED_Ren_On_0:
        BL       LED_Off_Red
??User_SW_On_LED_Ren_On_1:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
User_SW_On_LED_Green_On:
        PUSH     {R7,LR}
        MOVS     R1,#+2
        LDR.N    R0,??DataTable2  ;; 0x40010800
        BL       GPIO_ReadInputDataBit
        CMP      R0,#+1
        BNE.N    ??User_SW_On_LED_Green_On_0
        BL       LED_On_Green
        B.N      ??User_SW_On_LED_Green_On_1
??User_SW_On_LED_Green_On_0:
        BL       LED_Off_Green
??User_SW_On_LED_Green_On_1:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
User_SW_On_LED_Yellow_On:
        PUSH     {R7,LR}
        MOVS     R1,#+2
        LDR.N    R0,??DataTable2  ;; 0x40010800
        BL       GPIO_ReadInputDataBit
        CMP      R0,#+1
        BNE.N    ??User_SW_On_LED_Yellow_On_0
        BL       LED_On_Yellow
        B.N      ??User_SW_On_LED_Yellow_On_1
??User_SW_On_LED_Yellow_On_0:
        BL       LED_Off_Yellow
??User_SW_On_LED_Yellow_On_1:
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0x40010800

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
// 82 bytes in section .text
// 
// 82 bytes of CODE memory
//
//Errors: none
//Warnings: 6
