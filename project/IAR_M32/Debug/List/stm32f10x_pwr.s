///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    05/Aug/2022  15:12:52 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\TTT\Desktop\zz.STDFW\00.Study\Libraries\STM32F /
//                    10x_StdPeriph_Driver\src\stm32f10x_pwr.c                /
//    Command line =  C:\Users\TTT\Desktop\zz.STDFW\00.Study\Libraries\STM32F /
//                    10x_StdPeriph_Driver\src\stm32f10x_pwr.c -D             /
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
//                    Debug\List\stm32f10x_pwr.s                              /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm32f10x_pwr

        #define SHT_PROGBITS 0x1

        EXTERN RCC_APB1PeriphResetCmd
        EXTERN assert_failed

        PUBLIC PWR_BackupAccessCmd
        PUBLIC PWR_ClearFlag
        PUBLIC PWR_DeInit
        PUBLIC PWR_EnterSTANDBYMode
        PUBLIC PWR_EnterSTOPMode
        PUBLIC PWR_GetFlagStatus
        PUBLIC PWR_PVDCmd
        PUBLIC PWR_PVDLevelConfig
        PUBLIC PWR_WakeUpPinCmd


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
PWR_DeInit:
        PUSH     {R7,LR}
        MOVS     R1,#+1
        MOVS     R0,#+268435456
        BL       RCC_APB1PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+268435456
        BL       RCC_APB1PeriphResetCmd
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
PWR_BackupAccessCmd:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??PWR_BackupAccessCmd_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??PWR_BackupAccessCmd_0
        MOVS     R1,#+126
        LDR.N    R0,??DataTable7
        BL       assert_failed
??PWR_BackupAccessCmd_0:
        LDR.N    R0,??DataTable7_1  ;; 0x420e0020
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
PWR_PVDCmd:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??PWR_PVDCmd_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??PWR_PVDCmd_0
        MOVS     R1,#+139
        LDR.N    R0,??DataTable7
        BL       assert_failed
??PWR_PVDCmd_0:
        LDR.N    R0,??DataTable7_2  ;; 0x420e0010
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
PWR_PVDLevelConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        CMP      R4,#+0
        BEQ.N    ??PWR_PVDLevelConfig_0
        CMP      R4,#+32
        BEQ.N    ??PWR_PVDLevelConfig_0
        CMP      R4,#+64
        BEQ.N    ??PWR_PVDLevelConfig_0
        CMP      R4,#+96
        BEQ.N    ??PWR_PVDLevelConfig_0
        CMP      R4,#+128
        BEQ.N    ??PWR_PVDLevelConfig_0
        CMP      R4,#+160
        BEQ.N    ??PWR_PVDLevelConfig_0
        CMP      R4,#+192
        BEQ.N    ??PWR_PVDLevelConfig_0
        CMP      R4,#+224
        BEQ.N    ??PWR_PVDLevelConfig_0
        MOVS     R1,#+161
        LDR.N    R0,??DataTable7
        BL       assert_failed
??PWR_PVDLevelConfig_0:
        LDR.N    R0,??DataTable7_3  ;; 0x40007000
        LDR      R0,[R0, #+0]
        MOVS     R5,R0
        BICS     R5,R5,#0xE0
        ORRS     R5,R4,R5
        LDR.N    R0,??DataTable7_3  ;; 0x40007000
        STR      R5,[R0, #+0]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
PWR_WakeUpPinCmd:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??PWR_WakeUpPinCmd_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??PWR_WakeUpPinCmd_0
        MOVS     R1,#+180
        LDR.N    R0,??DataTable7
        BL       assert_failed
??PWR_WakeUpPinCmd_0:
        LDR.N    R0,??DataTable7_4  ;; 0x420e00a0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
PWR_EnterSTOPMode:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+0
        CMP      R4,#+0
        BEQ.N    ??PWR_EnterSTOPMode_0
        CMP      R4,#+1
        BEQ.N    ??PWR_EnterSTOPMode_0
        MOVS     R1,#+200
        LDR.N    R0,??DataTable7
        BL       assert_failed
??PWR_EnterSTOPMode_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??PWR_EnterSTOPMode_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+2
        BEQ.N    ??PWR_EnterSTOPMode_1
        MOVS     R1,#+201
        LDR.N    R0,??DataTable7
        BL       assert_failed
??PWR_EnterSTOPMode_1:
        LDR.N    R0,??DataTable7_3  ;; 0x40007000
        LDR      R0,[R0, #+0]
        MOVS     R6,R0
        LSRS     R6,R6,#+2
        LSLS     R6,R6,#+2
        ORRS     R6,R4,R6
        LDR.N    R0,??DataTable7_3  ;; 0x40007000
        STR      R6,[R0, #+0]
        LDR.N    R0,??DataTable7_5  ;; 0xe000ed10
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.N    R1,??DataTable7_5  ;; 0xe000ed10
        STR      R0,[R1, #+0]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BNE.N    ??PWR_EnterSTOPMode_2
        WFI      
        B.N      ??PWR_EnterSTOPMode_3
??PWR_EnterSTOPMode_2:
        WFE      
??PWR_EnterSTOPMode_3:
        LDR.N    R0,??DataTable7_5  ;; 0xe000ed10
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x4
        LDR.N    R1,??DataTable7_5  ;; 0xe000ed10
        STR      R0,[R1, #+0]
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
PWR_EnterSTANDBYMode:
        LDR.N    R0,??DataTable7_3  ;; 0x40007000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.N    R1,??DataTable7_3  ;; 0x40007000
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable7_3  ;; 0x40007000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.N    R1,??DataTable7_3  ;; 0x40007000
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable7_5  ;; 0xe000ed10
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.N    R1,??DataTable7_5  ;; 0xe000ed10
        STR      R0,[R1, #+0]
        WFI      
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
PWR_GetFlagStatus:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        CMP      R4,#+1
        BEQ.N    ??PWR_GetFlagStatus_0
        CMP      R4,#+2
        BEQ.N    ??PWR_GetFlagStatus_0
        CMP      R4,#+4
        BEQ.N    ??PWR_GetFlagStatus_0
        MOV      R1,#+264
        LDR.N    R0,??DataTable7
        BL       assert_failed
??PWR_GetFlagStatus_0:
        LDR.N    R0,??DataTable7_6  ;; 0x40007004
        LDR      R0,[R0, #+0]
        TST      R0,R4
        BEQ.N    ??PWR_GetFlagStatus_1
        MOVS     R0,#+1
        MOVS     R5,R0
        B.N      ??PWR_GetFlagStatus_2
??PWR_GetFlagStatus_1:
        MOVS     R0,#+0
        MOVS     R5,R0
??PWR_GetFlagStatus_2:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
PWR_ClearFlag:
        PUSH     {R4,LR}
        MOVS     R4,R0
        CMP      R4,#+1
        BEQ.N    ??PWR_ClearFlag_0
        CMP      R4,#+2
        BEQ.N    ??PWR_ClearFlag_0
        MOVW     R1,#+289
        LDR.N    R0,??DataTable7
        BL       assert_failed
??PWR_ClearFlag_0:
        LDR.N    R0,??DataTable7_3  ;; 0x40007000
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,R4, LSL #+2
        LDR.N    R1,??DataTable7_3  ;; 0x40007000
        STR      R0,[R1, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC32     `?<Constant "C:\\\\Users\\\\TTT\\\\Desktop\\\\...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_1:
        DC32     0x420e0020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_2:
        DC32     0x420e0010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_3:
        DC32     0x40007000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_4:
        DC32     0x420e00a0

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_5:
        DC32     0xe000ed10

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_6:
        DC32     0x40007004

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
        DC8 78H, 5FH, 70H, 77H, 72H, 2EH, 63H, 0

        END
// 
//  96 bytes in section .rodata
// 438 bytes in section .text
// 
// 438 bytes of CODE  memory
//  96 bytes of CONST memory
//
//Errors: none
//Warnings: none
