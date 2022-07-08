///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    08/Jul/2022  11:57:30 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\TTT\Desktop\zz.STDFW\00.Study\src\Common.c     /
//    Command line =  C:\Users\TTT\Desktop\zz.STDFW\00.Study\src\Common.c -D  /
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
//                    Debug\List\Common.s                                     /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME Common

        #define SHT_PROGBITS 0x1

        PUBLIC stADC
        PUBLIC stBYPASS
        PUBLIC stCDS
        PUBLIC stCOOR
        PUBLIC stDIP
        PUBLIC stERROR
        PUBLIC stFAN
        PUBLIC stHEATER
        PUBLIC stINFO
        PUBLIC stLED_SET
        PUBLIC stLIGHT
        PUBLIC stLRF
        PUBLIC stOSD
        PUBLIC stSONY
        PUBLIC stSYS
        PUBLIC stTCM
        PUBLIC stTEMP
        PUBLIC stTEST
        PUBLIC stTSM
        PUBLIC stUART4
        PUBLIC stUART5
        PUBLIC stUSART1
        PUBLIC stUSART2
        PUBLIC stUSART_CLEAR
        PUBLIC stUSART_ERROR
        PUBLIC stWIPER1
        PUBLIC stWIPER2


        SECTION `.bss`:DATA:REORDER:NOROOT(2)
stOSD:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
stLED_SET:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
stLIGHT:
        DS8 12

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
stLRF:
        DS8 48

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
stWIPER1:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
stWIPER2:
        DS8 28

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
stSONY:
        DS8 92

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
stTEMP:
        DS8 28

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
stFAN:
        DS8 12

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
stHEATER:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
stADC:
        DS8 8

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
stINFO:
        DS8 40

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
stTSM:
        DS8 224

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
stTCM:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
stCDS:
        DS8 36

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
stCOOR:
        DS8 2504

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
stSYS:
        DS8 5008

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
stUSART_CLEAR:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
stUSART1:
        DS8 232

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
stUSART2:
        DS8 220

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
stUART4:
        DS8 224

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
stUART5:
        DS8 720

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
stBYPASS:
        DS8 208

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
stDIP:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
stTEST:
        DS8 16

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
stUSART_ERROR:
        DS8 224

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
stERROR:
        DS8 304

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
// 10 220 bytes in section .bss
// 
// 10 220 bytes of DATA memory
//
//Errors: none
//Warnings: none
