///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    13/Jul/2022  18:47:23 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\TTT\Desktop\zz.STDFW\00.Study\Libraries\STM32F /
//                    10x_StdPeriph_Driver\src\stm32f10x_cec.c                /
//    Command line =  C:\Users\TTT\Desktop\zz.STDFW\00.Study\Libraries\STM32F /
//                    10x_StdPeriph_Driver\src\stm32f10x_cec.c -D             /
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
//                    Debug\List\stm32f10x_cec.s                              /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm32f10x_cec

        #define SHT_PROGBITS 0x1

        EXTERN RCC_APB1PeriphResetCmd
        EXTERN assert_failed

        PUBLIC CEC_ClearFlag
        PUBLIC CEC_ClearITPendingBit
        PUBLIC CEC_Cmd
        PUBLIC CEC_DeInit
        PUBLIC CEC_EndOfMessageCmd
        PUBLIC CEC_GetFlagStatus
        PUBLIC CEC_GetITStatus
        PUBLIC CEC_ITConfig
        PUBLIC CEC_Init
        PUBLIC CEC_OwnAddressConfig
        PUBLIC CEC_ReceiveDataByte
        PUBLIC CEC_SendDataByte
        PUBLIC CEC_SetPrescaler
        PUBLIC CEC_StartOfMessage


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CEC_DeInit:
        PUSH     {R7,LR}
        MOVS     R1,#+1
        MOVS     R0,#+1073741824
        BL       RCC_APB1PeriphResetCmd
        MOVS     R1,#+0
        MOVS     R0,#+1073741824
        BL       RCC_APB1PeriphResetCmd
        POP      {R0,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CEC_Init:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        LDRH     R0,[R4, #+0]
        CMP      R0,#+0
        BEQ.N    ??CEC_Init_0
        LDRH     R0,[R4, #+0]
        CMP      R0,#+4
        BEQ.N    ??CEC_Init_0
        MOVS     R1,#+139
        LDR.N    R0,??DataTable12
        BL       assert_failed
??CEC_Init_0:
        LDRH     R0,[R4, #+2]
        CMP      R0,#+0
        BEQ.N    ??CEC_Init_1
        LDRH     R0,[R4, #+2]
        CMP      R0,#+8
        BEQ.N    ??CEC_Init_1
        MOVS     R1,#+140
        LDR.N    R0,??DataTable12
        BL       assert_failed
??CEC_Init_1:
        LDR.N    R0,??DataTable12_1  ;; 0x40007800
        LDR      R0,[R0, #+0]
        MOVS     R5,R0
        ANDS     R5,R5,#0xF3
        LDRH     R0,[R4, #+0]
        LDRH     R1,[R4, #+2]
        ORRS     R0,R1,R0
        ORRS     R5,R0,R5
        LDR.N    R0,??DataTable12_1  ;; 0x40007800
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        STR      R5,[R0, #+0]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CEC_Cmd:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??CEC_Cmd_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??CEC_Cmd_0
        MOVS     R1,#+166
        LDR.N    R0,??DataTable12
        BL       assert_failed
??CEC_Cmd_0:
        LDR.N    R0,??DataTable12_2  ;; 0x420f0000
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R4,[R0, #+0]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BNE.N    ??CEC_Cmd_1
??CEC_Cmd_2:
        LDR.N    R0,??DataTable12_1  ;; 0x40007800
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BMI.N    ??CEC_Cmd_2
??CEC_Cmd_1:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CEC_ITConfig:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??CEC_ITConfig_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??CEC_ITConfig_0
        MOVS     R1,#+188
        LDR.N    R0,??DataTable12
        BL       assert_failed
??CEC_ITConfig_0:
        LDR.N    R0,??DataTable12_3  ;; 0x420f0004
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CEC_OwnAddressConfig:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+16
        BCC.N    ??CEC_OwnAddressConfig_0
        MOVS     R1,#+201
        LDR.N    R0,??DataTable12
        BL       assert_failed
??CEC_OwnAddressConfig_0:
        LDR.N    R0,??DataTable12_4  ;; 0x40007804
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CEC_SetPrescaler:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+16384
        BCC.N    ??CEC_SetPrescaler_0
        MOVS     R1,#+215
        LDR.N    R0,??DataTable12
        BL       assert_failed
??CEC_SetPrescaler_0:
        LDR.N    R0,??DataTable12_5  ;; 0x40007808
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CEC_SendDataByte:
        LDR.N    R1,??DataTable12_6  ;; 0x40007814
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        STR      R0,[R1, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CEC_ReceiveDataByte:
        LDR.N    R0,??DataTable12_7  ;; 0x40007818
        LDR      R0,[R0, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CEC_StartOfMessage:
        LDR.N    R0,??DataTable12_8  ;; 0x420f0200
        MOVS     R1,#+1
        STR      R1,[R0, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CEC_EndOfMessageCmd:
        PUSH     {R4,LR}
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??CEC_EndOfMessageCmd_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??CEC_EndOfMessageCmd_0
        MOV      R1,#+264
        LDR.N    R0,??DataTable12
        BL       assert_failed
??CEC_EndOfMessageCmd_0:
        LDR.N    R0,??DataTable12_9  ;; 0x420f0204
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CEC_GetFlagStatus:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        MOVS     R6,#+0
        MOVS     R7,#+0
        LDR.N    R0,??DataTable12_10  ;; 0x10010000
        CMP      R4,R0
        BEQ.N    ??CEC_GetFlagStatus_0
        LDR.N    R0,??DataTable12_11  ;; 0x10020000
        CMP      R4,R0
        BEQ.N    ??CEC_GetFlagStatus_0
        LDR.N    R0,??DataTable12_12  ;; 0x10040000
        CMP      R4,R0
        BEQ.N    ??CEC_GetFlagStatus_0
        LDR.N    R0,??DataTable12_13  ;; 0x10080000
        CMP      R4,R0
        BEQ.N    ??CEC_GetFlagStatus_0
        LDR.N    R0,??DataTable12_14  ;; 0x10100000
        CMP      R4,R0
        BEQ.N    ??CEC_GetFlagStatus_0
        CMP      R4,#+270532608
        BEQ.N    ??CEC_GetFlagStatus_0
        CMP      R4,#+272629760
        BEQ.N    ??CEC_GetFlagStatus_0
        CMP      R4,#+2
        BEQ.N    ??CEC_GetFlagStatus_0
        CMP      R4,#+4
        BEQ.N    ??CEC_GetFlagStatus_0
        CMP      R4,#+8
        BEQ.N    ??CEC_GetFlagStatus_0
        CMP      R4,#+16
        BEQ.N    ??CEC_GetFlagStatus_0
        CMP      R4,#+32
        BEQ.N    ??CEC_GetFlagStatus_0
        CMP      R4,#+64
        BEQ.N    ??CEC_GetFlagStatus_0
        CMP      R4,#+128
        BEQ.N    ??CEC_GetFlagStatus_0
        MOV      R1,#+296
        LDR.N    R0,??DataTable12
        BL       assert_failed
??CEC_GetFlagStatus_0:
        LDR.N    R0,??DataTable12_1  ;; 0x40007800
        MOVS     R7,R0
        LSRS     R0,R4,#+28
        MOVS     R6,R0
        LSLS     R4,R4,#+8        ;; ZeroExtS R4,R4,#+8,#+8
        LSRS     R4,R4,#+8
        CMP      R6,#+0
        BEQ.N    ??CEC_GetFlagStatus_1
        LSRS     R4,R4,#+16
        ADDS     R7,R7,#+12
        B.N      ??CEC_GetFlagStatus_2
??CEC_GetFlagStatus_1:
        ADDS     R7,R7,#+16
??CEC_GetFlagStatus_2:
        LDR      R0,[R7, #+0]
        TST      R0,R4
        BEQ.N    ??CEC_GetFlagStatus_3
        MOVS     R0,#+1
        MOVS     R5,R0
        B.N      ??CEC_GetFlagStatus_4
??CEC_GetFlagStatus_3:
        MOVS     R0,#+0
        MOVS     R5,R0
??CEC_GetFlagStatus_4:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CEC_ClearFlag:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        BICS     R0,R4,#0xFC
        CMP      R0,#+0
        BNE.N    ??CEC_ClearFlag_0
        CMP      R4,#+0
        BNE.N    ??CEC_ClearFlag_1
??CEC_ClearFlag_0:
        MOVW     R1,#+353
        LDR.N    R0,??DataTable12
        BL       assert_failed
??CEC_ClearFlag_1:
        LDR.N    R0,??DataTable12_15  ;; 0x40007810
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x2
        MOVS     R5,R0
        LDR.N    R0,??DataTable12_15  ;; 0x40007810
        LDR      R0,[R0, #+0]
        MVNS     R1,R4
        LSRS     R1,R1,#+2
        LSLS     R1,R1,#+2
        ORRS     R1,R5,R1
        ANDS     R0,R1,R0
        LDR.N    R1,??DataTable12_15  ;; 0x40007810
        STR      R0,[R1, #+0]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CEC_GetITStatus:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        MOVS     R6,#+0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+4
        BEQ.N    ??CEC_GetITStatus_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+8
        BEQ.N    ??CEC_GetITStatus_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+64
        BEQ.N    ??CEC_GetITStatus_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+128
        BEQ.N    ??CEC_GetITStatus_0
        MOVW     R1,#+377
        LDR.N    R0,??DataTable12
        BL       assert_failed
??CEC_GetITStatus_0:
        LDR.N    R0,??DataTable12_1  ;; 0x40007800
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x2
        MOVS     R6,R0
        LDR.N    R0,??DataTable12_15  ;; 0x40007810
        LDR      R0,[R0, #+0]
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        TST      R0,R4
        BEQ.N    ??CEC_GetITStatus_1
        CMP      R6,#+0
        BEQ.N    ??CEC_GetITStatus_1
        MOVS     R0,#+1
        MOVS     R5,R0
        B.N      ??CEC_GetITStatus_2
??CEC_GetITStatus_1:
        MOVS     R0,#+0
        MOVS     R5,R0
??CEC_GetITStatus_2:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CEC_ClearITPendingBit:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+4
        BEQ.N    ??CEC_ClearITPendingBit_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+8
        BEQ.N    ??CEC_ClearITPendingBit_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+64
        BEQ.N    ??CEC_ClearITPendingBit_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+128
        BEQ.N    ??CEC_ClearITPendingBit_0
        MOV      R1,#+412
        LDR.N    R0,??DataTable12
        BL       assert_failed
??CEC_ClearITPendingBit_0:
        LDR.N    R0,??DataTable12_15  ;; 0x40007810
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x2
        MOVS     R5,R0
        LDR.N    R0,??DataTable12_15  ;; 0x40007810
        LDR      R0,[R0, #+0]
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        MVNS     R1,R4
        LSRS     R1,R1,#+2
        LSLS     R1,R1,#+2
        ORRS     R1,R5,R1
        ANDS     R0,R1,R0
        LDR.N    R1,??DataTable12_15  ;; 0x40007810
        STR      R0,[R1, #+0]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12:
        DC32     `?<Constant "C:\\\\Users\\\\TTT\\\\Desktop\\\\...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_1:
        DC32     0x40007800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_2:
        DC32     0x420f0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_3:
        DC32     0x420f0004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_4:
        DC32     0x40007804

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_5:
        DC32     0x40007808

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_6:
        DC32     0x40007814

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_7:
        DC32     0x40007818

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_8:
        DC32     0x420f0200

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_9:
        DC32     0x420f0204

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_10:
        DC32     0x10010000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_11:
        DC32     0x10020000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_12:
        DC32     0x10040000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_13:
        DC32     0x10080000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_14:
        DC32     0x10100000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable12_15:
        DC32     0x40007810

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
        DC8 78H, 5FH, 63H, 65H, 63H, 2EH, 63H, 0

        END
// 
//  96 bytes in section .rodata
// 698 bytes in section .text
// 
// 698 bytes of CODE  memory
//  96 bytes of CONST memory
//
//Errors: none
//Warnings: none
