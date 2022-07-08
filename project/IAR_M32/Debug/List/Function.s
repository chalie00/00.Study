///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    08/Jul/2022  11:57:33 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\TTT\Desktop\zz.STDFW\00.Study\src\Function.c   /
//    Command line =  C:\Users\TTT\Desktop\zz.STDFW\00.Study\src\Function.c   /
//                    -D USE_STDPERIPH_DRIVER -D STM32F10x_HD -D              /
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
//                    Debug\List\Function.s                                   /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME Function

        #define SHT_PROGBITS 0x1

        EXTERN Delay
        EXTERN Delay_1ms
        EXTERN Initial_Device
        EXTERN TempCalibration
        EXTERN TempMonitorting

        PUBLIC SystemStart


        SECTION `.text`:CODE:NOROOT(2)
        THUMB
SystemStart:
        PUSH     {R7,LR}
        BL       Initial_Device
        MOV      R0,#+500
        BL       Delay
        LDR.N    R0,??SystemStart_0
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        MOV      R0,#+1000
        BL       Delay_1ms
        BL       TempCalibration
        LDR.N    R0,??SystemStart_0
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
        POP      {R0,PC}          ;; return
        DATA
??SystemStart_0:
        DC32     TempMonitorting

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
// 44 bytes in section .text
// 
// 44 bytes of CODE memory
//
//Errors: none
//Warnings: none
