///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    29/Jun/2022  17:06:10 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\TTT\Desktop\zz.STDFW\00.Study\src\LED_Control. /
//                    c                                                       /
//    Command line =  C:\Users\TTT\Desktop\zz.STDFW\00.Study\src\LED_Control. /
//                    c -D USE_STDPERIPH_DRIVER -D STM32F10x_HD -D            /
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
//                    Debug\List\LED_Control.s                                /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME LED_Control

        #define SHT_PROGBITS 0x1

        EXTERN GPIO_ResetBits
        EXTERN GPIO_SetBits

        PUBLIC LED_Off_Green
        PUBLIC LED_Off_Red
        PUBLIC LED_Off_Yellow
        PUBLIC LED_On_Green
        PUBLIC LED_On_Red
        PUBLIC LED_On_Yellow


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
LED_On_Red:
        PUSH     {R7,LR}
        MOV      R1,#+512
        LDR.N    R0,??DataTable5  ;; 0x40010c00
        BL       GPIO_SetBits
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
LED_Off_Red:
        PUSH     {R7,LR}
        MOV      R1,#+512
        LDR.N    R0,??DataTable5  ;; 0x40010c00
        BL       GPIO_ResetBits
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
LED_On_Green:
        PUSH     {R7,LR}
        MOV      R1,#+256
        LDR.N    R0,??DataTable5  ;; 0x40010c00
        BL       GPIO_SetBits
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
LED_Off_Green:
        PUSH     {R7,LR}
        MOV      R1,#+256
        LDR.N    R0,??DataTable5  ;; 0x40010c00
        BL       GPIO_ResetBits
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
LED_On_Yellow:
        PUSH     {R7,LR}
        MOVS     R1,#+32
        LDR.N    R0,??DataTable5  ;; 0x40010c00
        BL       GPIO_SetBits
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
LED_Off_Yellow:
        PUSH     {R7,LR}
        MOVS     R1,#+32
        LDR.N    R0,??DataTable5  ;; 0x40010c00
        BL       GPIO_ResetBits
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     0x40010c00

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
// 84 bytes in section .text
// 
// 84 bytes of CODE memory
//
//Errors: none
//Warnings: none
