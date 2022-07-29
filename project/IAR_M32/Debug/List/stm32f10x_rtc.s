///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    28/Jul/2022  15:47:29 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\TTT\Desktop\zz.STDFW\00.Study\Libraries\STM32F /
//                    10x_StdPeriph_Driver\src\stm32f10x_rtc.c                /
//    Command line =  C:\Users\TTT\Desktop\zz.STDFW\00.Study\Libraries\STM32F /
//                    10x_StdPeriph_Driver\src\stm32f10x_rtc.c -D             /
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
//                    Debug\List\stm32f10x_rtc.s                              /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm32f10x_rtc

        #define SHT_PROGBITS 0x1

        EXTERN assert_failed

        PUBLIC RTC_ClearFlag
        PUBLIC RTC_ClearITPendingBit
        PUBLIC RTC_EnterConfigMode
        PUBLIC RTC_ExitConfigMode
        PUBLIC RTC_GetCounter
        PUBLIC RTC_GetDivider
        PUBLIC RTC_GetFlagStatus
        PUBLIC RTC_GetITStatus
        PUBLIC RTC_ITConfig
        PUBLIC RTC_SetAlarm
        PUBLIC RTC_SetCounter
        PUBLIC RTC_SetPrescaler
        PUBLIC RTC_WaitForLastTask
        PUBLIC RTC_WaitForSynchro


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_ITConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVW     R0,#+65528
        TST      R4,R0
        BNE.N    ??RTC_ITConfig_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+0
        BNE.N    ??RTC_ITConfig_1
??RTC_ITConfig_0:
        MOVS     R1,#+92
        LDR.N    R0,??DataTable13
        BL       assert_failed
??RTC_ITConfig_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RTC_ITConfig_2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??RTC_ITConfig_2
        MOVS     R1,#+93
        LDR.N    R0,??DataTable13
        BL       assert_failed
??RTC_ITConfig_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RTC_ITConfig_3
        LDR.N    R0,??DataTable13_1  ;; 0x40002800
        LDRH     R0,[R0, #+0]
        ORRS     R0,R4,R0
        LDR.N    R1,??DataTable13_1  ;; 0x40002800
        STRH     R0,[R1, #+0]
        B.N      ??RTC_ITConfig_4
??RTC_ITConfig_3:
        LDR.N    R0,??DataTable13_1  ;; 0x40002800
        LDRH     R0,[R0, #+0]
        BICS     R0,R0,R4
        LDR.N    R1,??DataTable13_1  ;; 0x40002800
        STRH     R0,[R1, #+0]
??RTC_ITConfig_4:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_EnterConfigMode:
        LDR.N    R0,??DataTable13_2  ;; 0x40002804
        LDRH     R0,[R0, #+0]
        ORRS     R0,R0,#0x10
        LDR.N    R1,??DataTable13_2  ;; 0x40002804
        STRH     R0,[R1, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_ExitConfigMode:
        LDR.N    R0,??DataTable13_2  ;; 0x40002804
        LDRH     R0,[R0, #+0]
        MOVW     R1,#+65519
        ANDS     R0,R1,R0
        LDR.N    R1,??DataTable13_2  ;; 0x40002804
        STRH     R0,[R1, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_GetCounter:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable13_3  ;; 0x4000281c
        LDRH     R1,[R1, #+0]
        MOVS     R0,R1
        LDR.N    R1,??DataTable13_4  ;; 0x40002818
        LDRH     R1,[R1, #+0]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        ORRS     R0,R0,R1, LSL #+16
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_SetCounter:
        PUSH     {R4,LR}
        MOVS     R4,R0
        BL       RTC_EnterConfigMode
        LSRS     R0,R4,#+16
        LDR.N    R1,??DataTable13_4  ;; 0x40002818
        STRH     R0,[R1, #+0]
        LDR.N    R0,??DataTable13_3  ;; 0x4000281c
        STRH     R4,[R0, #+0]
        BL       RTC_ExitConfigMode
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_SetPrescaler:
        PUSH     {R4,LR}
        MOVS     R4,R0
        CMP      R4,#+1048576
        BCC.N    ??RTC_SetPrescaler_0
        MOVS     R1,#+162
        LDR.N    R0,??DataTable13
        BL       assert_failed
??RTC_SetPrescaler_0:
        BL       RTC_EnterConfigMode
        LSRS     R0,R4,#+16
        ANDS     R0,R0,#0xF
        LDR.N    R1,??DataTable13_5  ;; 0x40002808
        STRH     R0,[R1, #+0]
        LDR.N    R0,??DataTable13_6  ;; 0x4000280c
        STRH     R4,[R0, #+0]
        BL       RTC_ExitConfigMode
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_SetAlarm:
        PUSH     {R4,LR}
        MOVS     R4,R0
        BL       RTC_EnterConfigMode
        LSRS     R0,R4,#+16
        LDR.N    R1,??DataTable13_7  ;; 0x40002820
        STRH     R0,[R1, #+0]
        LDR.N    R0,??DataTable13_8  ;; 0x40002824
        STRH     R4,[R0, #+0]
        BL       RTC_ExitConfigMode
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_GetDivider:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable13_9  ;; 0x40002810
        LDRH     R1,[R1, #+0]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        ANDS     R1,R1,#0xF
        LSLS     R1,R1,#+16
        MOVS     R0,R1
        LDR.N    R1,??DataTable13_10  ;; 0x40002814
        LDRH     R1,[R1, #+0]
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        ORRS     R0,R1,R0
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_WaitForLastTask:
??RTC_WaitForLastTask_0:
        LDR.N    R0,??DataTable13_2  ;; 0x40002804
        LDRH     R0,[R0, #+0]
        LSLS     R0,R0,#+26
        BPL.N    ??RTC_WaitForLastTask_0
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_WaitForSynchro:
        LDR.N    R0,??DataTable13_2  ;; 0x40002804
        LDRH     R0,[R0, #+0]
        MOVW     R1,#+65527
        ANDS     R0,R1,R0
        LDR.N    R1,??DataTable13_2  ;; 0x40002804
        STRH     R0,[R1, #+0]
??RTC_WaitForSynchro_0:
        LDR.N    R0,??DataTable13_2  ;; 0x40002804
        LDRH     R0,[R0, #+0]
        LSLS     R0,R0,#+28
        BPL.N    ??RTC_WaitForSynchro_0
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_GetFlagStatus:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+32
        BEQ.N    ??RTC_GetFlagStatus_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+8
        BEQ.N    ??RTC_GetFlagStatus_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+4
        BEQ.N    ??RTC_GetFlagStatus_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+2
        BEQ.N    ??RTC_GetFlagStatus_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+1
        BEQ.N    ??RTC_GetFlagStatus_0
        MOVS     R1,#+248
        LDR.N    R0,??DataTable13
        BL       assert_failed
??RTC_GetFlagStatus_0:
        LDR.N    R0,??DataTable13_2  ;; 0x40002804
        LDRH     R0,[R0, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        TST      R0,R4
        BEQ.N    ??RTC_GetFlagStatus_1
        MOVS     R0,#+1
        MOVS     R5,R0
        B.N      ??RTC_GetFlagStatus_2
??RTC_GetFlagStatus_1:
        MOVS     R0,#+0
        MOVS     R5,R0
??RTC_GetFlagStatus_2:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_ClearFlag:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOVW     R0,#+65520
        TST      R4,R0
        BNE.N    ??RTC_ClearFlag_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+0
        BNE.N    ??RTC_ClearFlag_1
??RTC_ClearFlag_0:
        MOVW     R1,#+275
        LDR.N    R0,??DataTable13
        BL       assert_failed
??RTC_ClearFlag_1:
        LDR.N    R0,??DataTable13_2  ;; 0x40002804
        LDRH     R0,[R0, #+0]
        BICS     R0,R0,R4
        LDR.N    R1,??DataTable13_2  ;; 0x40002804
        STRH     R0,[R1, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_GetITStatus:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+4
        BEQ.N    ??RTC_GetITStatus_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+2
        BEQ.N    ??RTC_GetITStatus_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+1
        BEQ.N    ??RTC_GetITStatus_0
        MOV      R1,#+294
        LDR.N    R0,??DataTable13
        BL       assert_failed
??RTC_GetITStatus_0:
        LDR.N    R0,??DataTable13_2  ;; 0x40002804
        LDRH     R0,[R0, #+0]
        ANDS     R0,R4,R0
        MOVS     R5,R0
        LDR.N    R0,??DataTable13_1  ;; 0x40002800
        LDRH     R0,[R0, #+0]
        UXTH     R0,R0            ;; ZeroExt  R0,R0,#+16,#+16
        TST      R0,R4
        BEQ.N    ??RTC_GetITStatus_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??RTC_GetITStatus_1
        MOVS     R0,#+1
        MOVS     R5,R0
        B.N      ??RTC_GetITStatus_2
??RTC_GetITStatus_1:
        MOVS     R0,#+0
        MOVS     R5,R0
??RTC_GetITStatus_2:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
RTC_ClearITPendingBit:
        PUSH     {R4,LR}
        MOVS     R4,R0
        MOVW     R0,#+65528
        TST      R4,R0
        BNE.N    ??RTC_ClearITPendingBit_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+0
        BNE.N    ??RTC_ClearITPendingBit_1
??RTC_ClearITPendingBit_0:
        MOV      R1,#+320
        LDR.N    R0,??DataTable13
        BL       assert_failed
??RTC_ClearITPendingBit_1:
        LDR.N    R0,??DataTable13_2  ;; 0x40002804
        LDRH     R0,[R0, #+0]
        BICS     R0,R0,R4
        LDR.N    R1,??DataTable13_2  ;; 0x40002804
        STRH     R0,[R1, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13:
        DC32     `?<Constant "C:\\\\Users\\\\TTT\\\\Desktop\\\\...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_1:
        DC32     0x40002800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_2:
        DC32     0x40002804

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_3:
        DC32     0x4000281c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_4:
        DC32     0x40002818

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_5:
        DC32     0x40002808

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_6:
        DC32     0x4000280c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_7:
        DC32     0x40002820

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_8:
        DC32     0x40002824

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_9:
        DC32     0x40002810

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable13_10:
        DC32     0x40002814

        SECTION `.iar_vfe_header`:DATA:REORDER:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION `.rodata`:CONST:REORDER:NOROOT(2)
`?<Constant "C:\\\\Users\\\\TTT\\\\Desktop\\\\...">`:
        DATA
        DC8 43H, 3AH, 5CH, 55H, 73H, 65H, 72H, 73H
        DC8 5CH, 54H, 54H, 54H, 5CH, 44H, 65H, 73H
        DC8 6BH, 74H, 6FH, 70H, 5CH, 7AH, 7AH, 2EH
        DC8 53H, 54H, 44H, 46H, 57H, 5CH, 30H, 30H
        DC8 2EH, 53H, 74H, 75H, 64H, 79H, 5CH, 4CH
        DC8 69H, 62H, 72H, 61H, 72H, 69H, 65H, 73H
        DC8 5CH, 53H, 54H, 4DH, 33H, 32H, 46H, 31H
        DC8 30H, 78H, 5FH, 53H, 74H, 64H, 50H, 65H
        DC8 72H, 69H, 70H, 68H, 5FH, 44H, 72H, 69H
        DC8 76H, 65H, 72H, 5CH, 73H, 72H, 63H, 5CH
        DC8 73H, 74H, 6DH, 33H, 32H, 66H, 31H, 30H
        DC8 78H, 5FH, 72H, 74H, 63H, 2EH, 63H, 0

        END
// 
//  96 bytes in section .rodata
// 548 bytes in section .text
// 
// 548 bytes of CODE  memory
//  96 bytes of CONST memory
//
//Errors: none
//Warnings: none
