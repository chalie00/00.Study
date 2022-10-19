///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    17/Oct/2022  17:08:23 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\TTT\Desktop\zz.STDFW\00.Study\src\SevenSeg.c   /
//    Command line =  C:\Users\TTT\Desktop\zz.STDFW\00.Study\src\SevenSeg.c   /
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
//                    Debug\List\SevenSeg.s                                   /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME SevenSeg

        #define SHT_PROGBITS 0x1

        EXTERN Delay_ms
        EXTERN GPIO_ResetBits
        EXTERN GPIO_SetBits

        PUBLIC DisplayName
        PUBLIC OutPutName
        PUBLIC SevenSegAllOff
        PUBLIC SevenSegAllOn


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SevenSegAllOn:
        PUSH     {R7,LR}
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2  ;; 0x40011000
        BL       GPIO_ResetBits
        MOVS     R1,#+2
        LDR.N    R0,??DataTable2  ;; 0x40011000
        BL       GPIO_ResetBits
        MOVS     R1,#+4
        LDR.N    R0,??DataTable2  ;; 0x40011000
        BL       GPIO_ResetBits
        MOVS     R1,#+8
        LDR.N    R0,??DataTable2  ;; 0x40011000
        BL       GPIO_ResetBits
        MOVS     R1,#+16
        LDR.N    R0,??DataTable2  ;; 0x40011000
        BL       GPIO_ResetBits
        MOVS     R1,#+32
        LDR.N    R0,??DataTable2  ;; 0x40011000
        BL       GPIO_ResetBits
        MOVS     R1,#+64
        LDR.N    R0,??DataTable2  ;; 0x40011000
        BL       GPIO_ResetBits
        MOVS     R1,#+128
        LDR.N    R0,??DataTable2  ;; 0x40011000
        BL       GPIO_ResetBits
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SevenSegAllOff:
        PUSH     {R7,LR}
        MOVS     R1,#+1
        LDR.N    R0,??DataTable2  ;; 0x40011000
        BL       GPIO_SetBits
        MOVS     R1,#+2
        LDR.N    R0,??DataTable2  ;; 0x40011000
        BL       GPIO_SetBits
        MOVS     R1,#+4
        LDR.N    R0,??DataTable2  ;; 0x40011000
        BL       GPIO_SetBits
        MOVS     R1,#+8
        LDR.N    R0,??DataTable2  ;; 0x40011000
        BL       GPIO_SetBits
        MOVS     R1,#+16
        LDR.N    R0,??DataTable2  ;; 0x40011000
        BL       GPIO_SetBits
        MOVS     R1,#+32
        LDR.N    R0,??DataTable2  ;; 0x40011000
        BL       GPIO_SetBits
        MOVS     R1,#+64
        LDR.N    R0,??DataTable2  ;; 0x40011000
        BL       GPIO_SetBits
        MOVS     R1,#+128
        LDR.N    R0,??DataTable2  ;; 0x40011000
        BL       GPIO_SetBits
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
OutPutName:
        PUSH     {R4,LR}
        MOVS     R4,R0
        CMP      R4,#+1
        BEQ.N    ??OutPutName_0
        BCC.N    ??OutPutName_1
        CMP      R4,#+3
        BEQ.N    ??OutPutName_2
        BCC.N    ??OutPutName_3
        CMP      R4,#+5
        BEQ.N    ??OutPutName_4
        BCC.N    ??OutPutName_5
        B.N      ??OutPutName_1
??OutPutName_0:
        MOVS     R1,#+56
        LDR.N    R0,??DataTable2  ;; 0x40011000
        BL       GPIO_ResetBits
        B.N      ??OutPutName_1
??OutPutName_3:
        MOVS     R1,#+185
        LDR.N    R0,??DataTable2  ;; 0x40011000
        BL       GPIO_ResetBits
        B.N      ??OutPutName_1
??OutPutName_2:
        MOVS     R1,#+56
        LDR.N    R0,??DataTable2  ;; 0x40011000
        BL       GPIO_ResetBits
        B.N      ??OutPutName_1
??OutPutName_5:
        MOVS     R1,#+56
        LDR.N    R0,??DataTable2  ;; 0x40011000
        BL       GPIO_ResetBits
        B.N      ??OutPutName_1
??OutPutName_4:
        MOVS     R1,#+56
        LDR.N    R0,??DataTable2  ;; 0x40011000
        BL       GPIO_ResetBits
??OutPutName_1:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable2:
        DC32     0x40011000

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
DisplayName:
        PUSH     {R7,LR}
        BL       SevenSegAllOff
        MOV      R0,#+1000
        BL       Delay_ms
        MOVS     R0,#+1
        BL       OutPutName
        MOV      R0,#+1000
        BL       Delay_ms
        BL       SevenSegAllOff
        MOV      R0,#+1000
        BL       Delay_ms
        MOVS     R0,#+2
        BL       OutPutName
        POP      {R0,PC}          ;; return

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
// 262 bytes in section .text
// 
// 262 bytes of CODE memory
//
//Errors: none
//Warnings: 1
