///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    25/Jul/2022  17:14:46 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\TTT\Desktop\zz.STDFW\00.Study\Libraries\STM32F /
//                    10x_StdPeriph_Driver\src\stm32f10x_crc.c                /
//    Command line =  C:\Users\TTT\Desktop\zz.STDFW\00.Study\Libraries\STM32F /
//                    10x_StdPeriph_Driver\src\stm32f10x_crc.c -D             /
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
//                    Debug\List\stm32f10x_crc.s                              /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm32f10x_crc

        #define SHT_PROGBITS 0x1

        PUBLIC CRC_CalcBlockCRC
        PUBLIC CRC_CalcCRC
        PUBLIC CRC_GetCRC
        PUBLIC CRC_GetIDRegister
        PUBLIC CRC_ResetDR
        PUBLIC CRC_SetIDRegister


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CRC_ResetDR:
        LDR.N    R0,??DataTable5  ;; 0x40023008
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CRC_CalcCRC:
        MOVS     R1,R0
        LDR.N    R0,??DataTable5_1  ;; 0x40023000
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable5_1  ;; 0x40023000
        LDR      R0,[R0, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CRC_CalcBlockCRC:
        PUSH     {R4}
        MOVS     R2,R0
        MOVS     R3,#+0
        MOVS     R0,#+0
        MOVS     R3,R0
??CRC_CalcBlockCRC_0:
        CMP      R3,R1
        BCS.N    ??CRC_CalcBlockCRC_1
        LDR      R0,[R2, R3, LSL #+2]
        LDR.N    R4,??DataTable5_1  ;; 0x40023000
        STR      R0,[R4, #+0]
        ADDS     R3,R3,#+1
        B.N      ??CRC_CalcBlockCRC_0
??CRC_CalcBlockCRC_1:
        LDR.N    R0,??DataTable5_1  ;; 0x40023000
        LDR      R0,[R0, #+0]
        POP      {R4}
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CRC_GetCRC:
        LDR.N    R0,??DataTable5_1  ;; 0x40023000
        LDR      R0,[R0, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CRC_SetIDRegister:
        LDR.N    R1,??DataTable5_2  ;; 0x40023004
        STRB     R0,[R1, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CRC_GetIDRegister:
        LDR.N    R0,??DataTable5_2  ;; 0x40023004
        LDRB     R0,[R0, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     0x40023008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC32     0x40023000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_2:
        DC32     0x40023004

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
// 86 bytes in section .text
// 
// 86 bytes of CODE memory
//
//Errors: none
//Warnings: none
