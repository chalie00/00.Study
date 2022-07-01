///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    01/Jul/2022  16:53:55 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\TTT\Desktop\zz.STDFW\00.Study\src\Delay.c      /
//    Command line =  C:\Users\TTT\Desktop\zz.STDFW\00.Study\src\Delay.c -D   /
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
//                    Debug\List\Delay.s                                      /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME Delay

        #define SHT_PROGBITS 0x1

        PUBLIC Delay
        PUBLIC Delay_1ms
        PUBLIC Delay_1us
        PUBLIC Delay_Decrement
        PUBLIC Delay_Us
        PUBLIC Delay_ms
        PUBLIC LongDelay
        PUBLIC TimDelay
        PUBLIC TimingDelay_Decrement
        PUBLIC delay
        PUBLIC delayS
        PUBLIC delay_100ms
        PUBLIC i2cDelay
        PUBLIC i2cDelay_Decrement
        PUBLIC i2c_Delay


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Delay_1us:
        PUSH     {R0}
        MOVS     R2,#+0
        MOVS     R0,R2
??Delay_1us_0:
        LDRH     R2,[SP, #+0]
        CMP      R0,R2
        BCS.N    ??Delay_1us_1
        MOVS     R2,#+0
        MOVS     R1,R2
??Delay_1us_2:
        CMP      R1,#+8
        BCS.N    ??Delay_1us_3
        ADDS     R1,R1,#+1
        B.N      ??Delay_1us_2
??Delay_1us_3:
        ADDS     R0,R0,#+1
        B.N      ??Delay_1us_0
??Delay_1us_1:
        ADD      SP,SP,#+4
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Delay_1ms:
        PUSH     {R0,R4,LR}
        SUB      SP,SP,#+4
        MOVS     R0,#+0
        MOVS     R4,R0
??Delay_1ms_0:
        LDRH     R0,[SP, #+4]
        CMP      R4,R0
        BCS.N    ??Delay_1ms_1
        MOV      R0,#+1000
        BL       Delay_1us
        ADDS     R4,R4,#+1
        B.N      ??Delay_1ms_0
??Delay_1ms_1:
        POP      {R0,R1,R4,PC}    ;; return

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
i2cDelay:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
TimDelay:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
TimingDelay:
        DS8 4

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
delay_100ms:
        PUSH     {R7,LR}
        MOVS     R0,#+100
        BL       Delay
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
i2c_Delay:
        PUSH     {R0}
        LDR.N    R0,??DataTable5
        LDR      R1,[SP, #+0]
        STR      R1,[R0, #+0]
??i2c_Delay_0:
        LDR.N    R0,??DataTable5
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??i2c_Delay_0
        ADD      SP,SP,#+4
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Delay:
        PUSH     {R0}
        LDR.N    R0,??DataTable5_1
        LDR      R1,[SP, #+0]
        STR      R1,[R0, #+0]
??Delay_0:
        LDR.N    R0,??DataTable5_1
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??Delay_0
        ADD      SP,SP,#+4
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TimingDelay_Decrement:
        LDR.N    R0,??DataTable5_1
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??TimingDelay_Decrement_0
        LDR.N    R0,??DataTable5_1
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.N    R1,??DataTable5_1
        STR      R0,[R1, #+0]
??TimingDelay_Decrement_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
i2cDelay_Decrement:
        LDR.N    R0,??DataTable5
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??i2cDelay_Decrement_0
        LDR.N    R0,??DataTable5
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.N    R1,??DataTable5
        STR      R0,[R1, #+0]
??i2cDelay_Decrement_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Delay_Us:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOVS     R0,R4
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        BL       Delay_1us
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Delay_ms:
        PUSH     {R4,LR}
        MOVS     R4,R0
??Delay_ms_0:
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+0
        BEQ.N    ??Delay_ms_1
        MOV      R0,#+1000
        BL       Delay_Us
        SUBS     R4,R4,#+1
        B.N      ??Delay_ms_0
??Delay_ms_1:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
delayS:
        PUSH     {R0}
        LDR.N    R0,??DataTable5_2
        LDR      R1,[SP, #+0]
        STR      R1,[R0, #+0]
??delayS_0:
        LDR.N    R0,??DataTable5_2
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE.N    ??delayS_0
        ADD      SP,SP,#+4
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
Delay_Decrement:
        LDR.N    R0,??DataTable5_2
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ.N    ??Delay_Decrement_0
        LDR.N    R0,??DataTable5_2
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.N    R1,??DataTable5_2
        STR      R0,[R1, #+0]
??Delay_Decrement_0:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5:
        DC32     i2cDelay

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_1:
        DC32     TimingDelay

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable5_2:
        DC32     TimDelay

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
delay:
        PUSH     {R0}
??delay_0:
        LDRH     R0,[SP, #+0]
        SUBS     R1,R0,#+1
        STRH     R1,[SP, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        CMP      R0,#+0
        BNE.N    ??delay_0
        ADD      SP,SP,#+4
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
LongDelay:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R0,#+0
        MOVS     R5,R0
??LongDelay_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R5,R4
        BCS.N    ??LongDelay_1
        MOVW     R0,#+50000
        BL       delay
        MOVW     R0,#+50000
        BL       delay
        MOVW     R0,#+50000
        BL       delay
        MOVW     R0,#+50000
        BL       delay
        ADDS     R5,R5,#+1
        B.N      ??LongDelay_0
??LongDelay_1:
        POP      {R0,R4,R5,PC}    ;; return

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
//  12 bytes in section .bss
// 320 bytes in section .text
// 
// 320 bytes of CODE memory
//  12 bytes of DATA memory
//
//Errors: none
//Warnings: none
