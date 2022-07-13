///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    13/Jul/2022  18:47:21 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\TTT\Desktop\zz.STDFW\00.Study\Libraries\STM32F /
//                    10x_StdPeriph_Driver\src\stm32f10x_flash.c              /
//    Command line =  C:\Users\TTT\Desktop\zz.STDFW\00.Study\Libraries\STM32F /
//                    10x_StdPeriph_Driver\src\stm32f10x_flash.c -D           /
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
//                    Debug\List\stm32f10x_flash.s                            /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm32f10x_flash

        #define SHT_PROGBITS 0x1

        EXTERN assert_failed

        PUBLIC FLASH_ClearFlag
        PUBLIC FLASH_EnableWriteProtection
        PUBLIC FLASH_EraseAllBank1Pages
        PUBLIC FLASH_EraseAllPages
        PUBLIC FLASH_EraseOptionBytes
        PUBLIC FLASH_ErasePage
        PUBLIC FLASH_GetBank1Status
        PUBLIC FLASH_GetFlagStatus
        PUBLIC FLASH_GetPrefetchBufferStatus
        PUBLIC FLASH_GetReadOutProtectionStatus
        PUBLIC FLASH_GetStatus
        PUBLIC FLASH_GetUserOptionByte
        PUBLIC FLASH_GetWriteProtectionOptionByte
        PUBLIC FLASH_HalfCycleAccessCmd
        PUBLIC FLASH_ITConfig
        PUBLIC FLASH_Lock
        PUBLIC FLASH_LockBank1
        PUBLIC FLASH_PrefetchBufferCmd
        PUBLIC FLASH_ProgramHalfWord
        PUBLIC FLASH_ProgramOptionByteData
        PUBLIC FLASH_ProgramWord
        PUBLIC FLASH_ReadOutProtection
        PUBLIC FLASH_SetLatency
        PUBLIC FLASH_Unlock
        PUBLIC FLASH_UnlockBank1
        PUBLIC FLASH_UserOptionByteConfig
        PUBLIC FLASH_WaitForLastBank1Operation
        PUBLIC FLASH_WaitForLastOperation


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_SetLatency:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        CMP      R4,#+0
        BEQ.N    ??FLASH_SetLatency_0
        CMP      R4,#+1
        BEQ.N    ??FLASH_SetLatency_0
        CMP      R4,#+2
        BEQ.N    ??FLASH_SetLatency_0
        MOV      R1,#+258
        LDR.W    R0,??DataTable25
        BL       assert_failed
??FLASH_SetLatency_0:
        LDR.W    R0,??DataTable25_1  ;; 0x40022000
        LDR      R0,[R0, #+0]
        MOVS     R5,R0
        ANDS     R5,R5,#0x38
        ORRS     R5,R4,R5
        LDR.W    R0,??DataTable25_1  ;; 0x40022000
        STR      R5,[R0, #+0]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_HalfCycleAccessCmd:
        PUSH     {R4,LR}
        MOVS     R4,R0
        CMP      R4,#+8
        BEQ.N    ??FLASH_HalfCycleAccessCmd_0
        CMP      R4,#+0
        BEQ.N    ??FLASH_HalfCycleAccessCmd_0
        MOVW     R1,#+283
        LDR.W    R0,??DataTable25
        BL       assert_failed
??FLASH_HalfCycleAccessCmd_0:
        LDR.W    R0,??DataTable25_1  ;; 0x40022000
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x8
        LDR.W    R1,??DataTable25_1  ;; 0x40022000
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable25_1  ;; 0x40022000
        LDR      R0,[R0, #+0]
        ORRS     R0,R4,R0
        LDR.W    R1,??DataTable25_1  ;; 0x40022000
        STR      R0,[R1, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_PrefetchBufferCmd:
        PUSH     {R4,LR}
        MOVS     R4,R0
        CMP      R4,#+16
        BEQ.N    ??FLASH_PrefetchBufferCmd_0
        CMP      R4,#+0
        BEQ.N    ??FLASH_PrefetchBufferCmd_0
        MOV      R1,#+302
        LDR.W    R0,??DataTable25
        BL       assert_failed
??FLASH_PrefetchBufferCmd_0:
        LDR.W    R0,??DataTable25_1  ;; 0x40022000
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x10
        LDR.W    R1,??DataTable25_1  ;; 0x40022000
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable25_1  ;; 0x40022000
        LDR      R0,[R0, #+0]
        ORRS     R0,R4,R0
        LDR.W    R1,??DataTable25_1  ;; 0x40022000
        STR      R0,[R1, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_Unlock:
        LDR.W    R0,??DataTable25_2  ;; 0x40022004
        LDR.W    R1,??DataTable25_3  ;; 0x45670123
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable25_2  ;; 0x40022004
        LDR.W    R1,??DataTable25_4  ;; 0xcdef89ab
        STR      R1,[R0, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_UnlockBank1:
        LDR.W    R0,??DataTable25_2  ;; 0x40022004
        LDR.W    R1,??DataTable25_3  ;; 0x45670123
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable25_2  ;; 0x40022004
        LDR.W    R1,??DataTable25_4  ;; 0xcdef89ab
        STR      R1,[R0, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_Lock:
        LDR.W    R0,??DataTable25_5  ;; 0x40022010
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.W    R1,??DataTable25_5  ;; 0x40022010
        STR      R0,[R1, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_LockBank1:
        LDR.W    R0,??DataTable25_5  ;; 0x40022010
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x80
        LDR.W    R1,??DataTable25_5  ;; 0x40022010
        STR      R0,[R1, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_ErasePage:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+4
        CMP      R4,#+134217728
        BCC.N    ??FLASH_ErasePage_0
        LDR.W    R0,??DataTable25_6  ;; 0x80fffff
        CMP      R4,R0
        BCC.N    ??FLASH_ErasePage_1
??FLASH_ErasePage_0:
        MOV      R1,#+422
        LDR.W    R0,??DataTable25
        BL       assert_failed
??FLASH_ErasePage_1:
        MOVS     R0,#+720896
        BL       FLASH_WaitForLastOperation
        MOVS     R5,R0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+4
        BNE.N    ??FLASH_ErasePage_2
        LDR.W    R0,??DataTable25_5  ;; 0x40022010
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x2
        LDR.W    R1,??DataTable25_5  ;; 0x40022010
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable25_7  ;; 0x40022014
        STR      R4,[R0, #+0]
        LDR.W    R0,??DataTable25_5  ;; 0x40022010
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40
        LDR.W    R1,??DataTable25_5  ;; 0x40022010
        STR      R0,[R1, #+0]
        MOVS     R0,#+720896
        BL       FLASH_WaitForLastOperation
        MOVS     R5,R0
        LDR.W    R0,??DataTable25_5  ;; 0x40022010
        LDR      R0,[R0, #+0]
        MOVW     R1,#+8189
        ANDS     R0,R1,R0
        LDR.W    R1,??DataTable25_5  ;; 0x40022010
        STR      R0,[R1, #+0]
??FLASH_ErasePage_2:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_EraseAllPages:
        PUSH     {R4,LR}
        MOVS     R4,#+4
        MOVS     R0,#+720896
        BL       FLASH_WaitForLastOperation
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+4
        BNE.N    ??FLASH_EraseAllPages_0
        LDR.W    R0,??DataTable25_5  ;; 0x40022010
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.W    R1,??DataTable25_5  ;; 0x40022010
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable25_5  ;; 0x40022010
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40
        LDR.W    R1,??DataTable25_5  ;; 0x40022010
        STR      R0,[R1, #+0]
        MOVS     R0,#+720896
        BL       FLASH_WaitForLastOperation
        MOVS     R4,R0
        LDR.W    R0,??DataTable25_5  ;; 0x40022010
        LDR      R0,[R0, #+0]
        MOVW     R1,#+8187
        ANDS     R0,R1,R0
        LDR.W    R1,??DataTable25_5  ;; 0x40022010
        STR      R0,[R1, #+0]
??FLASH_EraseAllPages_0:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_EraseAllBank1Pages:
        PUSH     {R4,LR}
        MOVS     R4,#+4
        MOVS     R0,#+720896
        BL       FLASH_WaitForLastBank1Operation
        MOVS     R4,R0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+4
        BNE.N    ??FLASH_EraseAllBank1Pages_0
        LDR.W    R0,??DataTable25_5  ;; 0x40022010
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.W    R1,??DataTable25_5  ;; 0x40022010
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable25_5  ;; 0x40022010
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40
        LDR.W    R1,??DataTable25_5  ;; 0x40022010
        STR      R0,[R1, #+0]
        MOVS     R0,#+720896
        BL       FLASH_WaitForLastBank1Operation
        MOVS     R4,R0
        LDR.W    R0,??DataTable25_5  ;; 0x40022010
        LDR      R0,[R0, #+0]
        MOVW     R1,#+8187
        ANDS     R0,R1,R0
        LDR.W    R1,??DataTable25_5  ;; 0x40022010
        STR      R0,[R1, #+0]
??FLASH_EraseAllBank1Pages_0:
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_EraseOptionBytes:
        PUSH     {R3-R5,LR}
        MOVS     R4,#+165
        MOVS     R5,#+4
        BL       FLASH_GetReadOutProtectionStatus
        CMP      R0,#+0
        BEQ.N    ??FLASH_EraseOptionBytes_0
        MOVS     R0,#+0
        MOVS     R4,R0
??FLASH_EraseOptionBytes_0:
        MOVS     R0,#+720896
        BL       FLASH_WaitForLastOperation
        MOVS     R5,R0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+4
        BNE.N    ??FLASH_EraseOptionBytes_1
        LDR.W    R0,??DataTable25_8  ;; 0x40022008
        LDR.W    R1,??DataTable25_3  ;; 0x45670123
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable25_8  ;; 0x40022008
        LDR.W    R1,??DataTable25_4  ;; 0xcdef89ab
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable25_5  ;; 0x40022010
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x20
        LDR.W    R1,??DataTable25_5  ;; 0x40022010
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable25_5  ;; 0x40022010
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40
        LDR.W    R1,??DataTable25_5  ;; 0x40022010
        STR      R0,[R1, #+0]
        MOVS     R0,#+720896
        BL       FLASH_WaitForLastOperation
        MOVS     R5,R0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+4
        BNE.N    ??FLASH_EraseOptionBytes_2
        LDR.W    R0,??DataTable25_5  ;; 0x40022010
        LDR      R0,[R0, #+0]
        MOVW     R1,#+8159
        ANDS     R0,R1,R0
        LDR.W    R1,??DataTable25_5  ;; 0x40022010
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable25_5  ;; 0x40022010
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10
        LDR.W    R1,??DataTable25_5  ;; 0x40022010
        STR      R0,[R1, #+0]
        LDR.W    R0,??DataTable25_9  ;; 0x1ffff800
        STRH     R4,[R0, #+0]
        MOV      R0,#+8192
        BL       FLASH_WaitForLastOperation
        MOVS     R5,R0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+5
        BEQ.N    ??FLASH_EraseOptionBytes_1
        LDR.W    R0,??DataTable25_5  ;; 0x40022010
        LDR      R0,[R0, #+0]
        MOVW     R1,#+8175
        ANDS     R0,R1,R0
        LDR.W    R1,??DataTable25_5  ;; 0x40022010
        STR      R0,[R1, #+0]
        B.N      ??FLASH_EraseOptionBytes_1
??FLASH_EraseOptionBytes_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+5
        BEQ.N    ??FLASH_EraseOptionBytes_1
        LDR.W    R0,??DataTable25_5  ;; 0x40022010
        LDR      R0,[R0, #+0]
        MOVW     R1,#+8175
        ANDS     R0,R1,R0
        LDR.W    R1,??DataTable25_5  ;; 0x40022010
        STR      R0,[R1, #+0]
??FLASH_EraseOptionBytes_1:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_ProgramWord:
        PUSH     {R4-R6,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+4
        MOVS     R0,#+0
        STR      R0,[SP, #+0]
        CMP      R4,#+134217728
        BCC.N    ??FLASH_ProgramWord_0
        LDR.W    R0,??DataTable25_6  ;; 0x80fffff
        CMP      R4,R0
        BCC.N    ??FLASH_ProgramWord_1
??FLASH_ProgramWord_0:
        MOVW     R1,#+686
        LDR.W    R0,??DataTable25
        BL       assert_failed
??FLASH_ProgramWord_1:
        MOV      R0,#+8192
        BL       FLASH_WaitForLastOperation
        MOVS     R6,R0
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+4
        BNE.N    ??FLASH_ProgramWord_2
        LDR.W    R0,??DataTable25_5  ;; 0x40022010
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.W    R1,??DataTable25_5  ;; 0x40022010
        STR      R0,[R1, #+0]
        STRH     R5,[R4, #+0]
        MOV      R0,#+8192
        BL       FLASH_WaitForLastOperation
        MOVS     R6,R0
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+4
        BNE.N    ??FLASH_ProgramWord_3
        ADDS     R0,R4,#+2
        STR      R0,[SP, #+0]
        LSRS     R0,R5,#+16
        LDR      R1,[SP, #+0]
        STRH     R0,[R1, #+0]
        MOV      R0,#+8192
        BL       FLASH_WaitForLastOperation
        MOVS     R6,R0
        LDR.W    R0,??DataTable25_5  ;; 0x40022010
        LDR      R0,[R0, #+0]
        MOVW     R1,#+8190
        ANDS     R0,R1,R0
        LDR.W    R1,??DataTable25_5  ;; 0x40022010
        STR      R0,[R1, #+0]
        B.N      ??FLASH_ProgramWord_2
??FLASH_ProgramWord_3:
        LDR.W    R0,??DataTable25_5  ;; 0x40022010
        LDR      R0,[R0, #+0]
        MOVW     R1,#+8190
        ANDS     R0,R1,R0
        LDR.W    R1,??DataTable25_5  ;; 0x40022010
        STR      R0,[R1, #+0]
??FLASH_ProgramWord_2:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R2,R4-R6,PC}  ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_ProgramHalfWord:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+4
        CMP      R4,#+134217728
        BCC.N    ??FLASH_ProgramHalfWord_0
        LDR.W    R0,??DataTable25_6  ;; 0x80fffff
        CMP      R4,R0
        BCC.N    ??FLASH_ProgramHalfWord_1
??FLASH_ProgramHalfWord_0:
        MOVW     R1,#+861
        LDR.W    R0,??DataTable25
        BL       assert_failed
??FLASH_ProgramHalfWord_1:
        MOV      R0,#+8192
        BL       FLASH_WaitForLastOperation
        MOVS     R6,R0
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+4
        BNE.N    ??FLASH_ProgramHalfWord_2
        LDR.W    R0,??DataTable25_5  ;; 0x40022010
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x1
        LDR.W    R1,??DataTable25_5  ;; 0x40022010
        STR      R0,[R1, #+0]
        STRH     R5,[R4, #+0]
        MOV      R0,#+8192
        BL       FLASH_WaitForLastOperation
        MOVS     R6,R0
        LDR.W    R0,??DataTable25_5  ;; 0x40022010
        LDR      R0,[R0, #+0]
        MOVW     R1,#+8190
        ANDS     R0,R1,R0
        LDR.W    R1,??DataTable25_5  ;; 0x40022010
        STR      R0,[R1, #+0]
??FLASH_ProgramHalfWord_2:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_ProgramOptionByteData:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,#+4
        LDR.W    R0,??DataTable25_10  ;; 0x1ffff804
        CMP      R4,R0
        BEQ.N    ??FLASH_ProgramOptionByteData_0
        LDR.W    R0,??DataTable25_11  ;; 0x1ffff806
        CMP      R4,R0
        BEQ.N    ??FLASH_ProgramOptionByteData_0
        MOV      R1,#+932
        LDR.W    R0,??DataTable25
        BL       assert_failed
??FLASH_ProgramOptionByteData_0:
        MOV      R0,#+8192
        BL       FLASH_WaitForLastOperation
        MOVS     R6,R0
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+4
        BNE.N    ??FLASH_ProgramOptionByteData_1
        LDR.W    R0,??DataTable25_8  ;; 0x40022008
        LDR.W    R1,??DataTable25_3  ;; 0x45670123
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable25_8  ;; 0x40022008
        LDR.W    R1,??DataTable25_4  ;; 0xcdef89ab
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable25_5  ;; 0x40022010
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10
        LDR.W    R1,??DataTable25_5  ;; 0x40022010
        STR      R0,[R1, #+0]
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        STRH     R5,[R4, #+0]
        MOV      R0,#+8192
        BL       FLASH_WaitForLastOperation
        MOVS     R6,R0
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+5
        BEQ.N    ??FLASH_ProgramOptionByteData_1
        LDR.W    R0,??DataTable25_5  ;; 0x40022010
        LDR      R0,[R0, #+0]
        MOVW     R1,#+8175
        ANDS     R0,R1,R0
        LDR.W    R1,??DataTable25_5  ;; 0x40022010
        STR      R0,[R1, #+0]
??FLASH_ProgramOptionByteData_1:
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_EnableWriteProtection:
        PUSH     {R3-R9,LR}
        MOV      R9,R0
        MOVW     R4,#+65535
        MOVW     R5,#+65535
        MOVW     R6,#+65535
        MOVW     R7,#+65535
        MOVS     R8,#+4
        CMP      R9,#+0
        BNE.N    ??FLASH_EnableWriteProtection_0
        MOVW     R1,#+981
        LDR.W    R0,??DataTable25
        BL       assert_failed
??FLASH_EnableWriteProtection_0:
        MVNS     R9,R9
        ANDS     R0,R9,#0xFF
        MOVS     R4,R0
        UBFX     R0,R9,#+8,#+8
        MOVS     R5,R0
        LSRS     R0,R9,#+16
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        MOVS     R6,R0
        LSRS     R0,R9,#+24
        MOVS     R7,R0
        MOV      R0,#+8192
        BL       FLASH_WaitForLastOperation
        MOV      R8,R0
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+4
        BNE.N    ??FLASH_EnableWriteProtection_1
        LDR.W    R0,??DataTable25_8  ;; 0x40022008
        LDR.W    R1,??DataTable25_3  ;; 0x45670123
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable25_8  ;; 0x40022008
        LDR.W    R1,??DataTable25_4  ;; 0xcdef89ab
        STR      R1,[R0, #+0]
        LDR.W    R0,??DataTable25_5  ;; 0x40022010
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10
        LDR.W    R1,??DataTable25_5  ;; 0x40022010
        STR      R0,[R1, #+0]
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+255
        BEQ.N    ??FLASH_EnableWriteProtection_2
        LDR.W    R0,??DataTable25_12  ;; 0x1ffff808
        STRH     R4,[R0, #+0]
        MOV      R0,#+8192
        BL       FLASH_WaitForLastOperation
        MOV      R8,R0
??FLASH_EnableWriteProtection_2:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+4
        BNE.N    ??FLASH_EnableWriteProtection_3
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+255
        BEQ.N    ??FLASH_EnableWriteProtection_3
        LDR.W    R0,??DataTable25_13  ;; 0x1ffff80a
        STRH     R5,[R0, #+0]
        MOV      R0,#+8192
        BL       FLASH_WaitForLastOperation
        MOV      R8,R0
??FLASH_EnableWriteProtection_3:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+4
        BNE.N    ??FLASH_EnableWriteProtection_4
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+255
        BEQ.N    ??FLASH_EnableWriteProtection_4
        LDR.W    R0,??DataTable25_14  ;; 0x1ffff80c
        STRH     R6,[R0, #+0]
        MOV      R0,#+8192
        BL       FLASH_WaitForLastOperation
        MOV      R8,R0
??FLASH_EnableWriteProtection_4:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+4
        BNE.N    ??FLASH_EnableWriteProtection_5
        UXTH     R7,R7            ;; ZeroExt  R7,R7,#+16,#+16
        CMP      R7,#+255
        BEQ.N    ??FLASH_EnableWriteProtection_5
        LDR.W    R0,??DataTable25_15  ;; 0x1ffff80e
        STRH     R7,[R0, #+0]
        MOV      R0,#+8192
        BL       FLASH_WaitForLastOperation
        MOV      R8,R0
??FLASH_EnableWriteProtection_5:
        UXTB     R8,R8            ;; ZeroExt  R8,R8,#+24,#+24
        CMP      R8,#+5
        BEQ.N    ??FLASH_EnableWriteProtection_1
        LDR.W    R0,??DataTable25_5  ;; 0x40022010
        LDR      R0,[R0, #+0]
        MOVW     R1,#+8175
        ANDS     R0,R1,R0
        LDR.N    R1,??DataTable25_5  ;; 0x40022010
        STR      R0,[R1, #+0]
??FLASH_EnableWriteProtection_1:
        MOV      R0,R8
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4-R9,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_ReadOutProtection:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+4
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??FLASH_ReadOutProtection_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+1
        BEQ.N    ??FLASH_ReadOutProtection_0
        MOVW     R1,#+1052
        LDR.N    R0,??DataTable25
        BL       assert_failed
??FLASH_ReadOutProtection_0:
        MOVS     R0,#+720896
        BL       FLASH_WaitForLastOperation
        MOVS     R5,R0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+4
        BNE.N    ??FLASH_ReadOutProtection_1
        LDR.N    R0,??DataTable25_8  ;; 0x40022008
        LDR.N    R1,??DataTable25_3  ;; 0x45670123
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable25_8  ;; 0x40022008
        LDR.N    R1,??DataTable25_4  ;; 0xcdef89ab
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable25_5  ;; 0x40022010
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x20
        LDR.N    R1,??DataTable25_5  ;; 0x40022010
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable25_5  ;; 0x40022010
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x40
        LDR.N    R1,??DataTable25_5  ;; 0x40022010
        STR      R0,[R1, #+0]
        MOVS     R0,#+720896
        BL       FLASH_WaitForLastOperation
        MOVS     R5,R0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+4
        BNE.N    ??FLASH_ReadOutProtection_2
        LDR.N    R0,??DataTable25_5  ;; 0x40022010
        LDR      R0,[R0, #+0]
        MOVW     R1,#+8159
        ANDS     R0,R1,R0
        LDR.N    R1,??DataTable25_5  ;; 0x40022010
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable25_5  ;; 0x40022010
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10
        LDR.N    R1,??DataTable25_5  ;; 0x40022010
        STR      R0,[R1, #+0]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??FLASH_ReadOutProtection_3
        LDR.N    R0,??DataTable25_9  ;; 0x1ffff800
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
        B.N      ??FLASH_ReadOutProtection_4
??FLASH_ReadOutProtection_3:
        LDR.N    R0,??DataTable25_9  ;; 0x1ffff800
        MOVS     R1,#+165
        STRH     R1,[R0, #+0]
??FLASH_ReadOutProtection_4:
        MOVS     R0,#+720896
        BL       FLASH_WaitForLastOperation
        MOVS     R5,R0
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+5
        BEQ.N    ??FLASH_ReadOutProtection_1
        LDR.N    R0,??DataTable25_5  ;; 0x40022010
        LDR      R0,[R0, #+0]
        MOVW     R1,#+8175
        ANDS     R0,R1,R0
        LDR.N    R1,??DataTable25_5  ;; 0x40022010
        STR      R0,[R1, #+0]
        B.N      ??FLASH_ReadOutProtection_1
??FLASH_ReadOutProtection_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+5
        BEQ.N    ??FLASH_ReadOutProtection_1
        LDR.N    R0,??DataTable25_5  ;; 0x40022010
        LDR      R0,[R0, #+0]
        MOVW     R1,#+8159
        ANDS     R0,R1,R0
        LDR.N    R1,??DataTable25_5  ;; 0x40022010
        STR      R0,[R1, #+0]
??FLASH_ReadOutProtection_1:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_UserOptionByteConfig:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
        MOVS     R7,#+4
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+1
        BEQ.N    ??FLASH_UserOptionByteConfig_0
        UXTH     R4,R4            ;; ZeroExt  R4,R4,#+16,#+16
        CMP      R4,#+0
        BEQ.N    ??FLASH_UserOptionByteConfig_0
        MOVW     R1,#+1122
        LDR.N    R0,??DataTable25
        BL       assert_failed
??FLASH_UserOptionByteConfig_0:
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+2
        BEQ.N    ??FLASH_UserOptionByteConfig_1
        UXTH     R5,R5            ;; ZeroExt  R5,R5,#+16,#+16
        CMP      R5,#+0
        BEQ.N    ??FLASH_UserOptionByteConfig_1
        MOVW     R1,#+1123
        LDR.N    R0,??DataTable25
        BL       assert_failed
??FLASH_UserOptionByteConfig_1:
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+4
        BEQ.N    ??FLASH_UserOptionByteConfig_2
        UXTH     R6,R6            ;; ZeroExt  R6,R6,#+16,#+16
        CMP      R6,#+0
        BEQ.N    ??FLASH_UserOptionByteConfig_2
        MOVW     R1,#+1124
        LDR.N    R0,??DataTable25
        BL       assert_failed
??FLASH_UserOptionByteConfig_2:
        LDR.N    R0,??DataTable25_8  ;; 0x40022008
        LDR.N    R1,??DataTable25_3  ;; 0x45670123
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable25_8  ;; 0x40022008
        LDR.N    R1,??DataTable25_4  ;; 0xcdef89ab
        STR      R1,[R0, #+0]
        MOV      R0,#+8192
        BL       FLASH_WaitForLastOperation
        MOVS     R7,R0
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+4
        BNE.N    ??FLASH_UserOptionByteConfig_3
        LDR.N    R0,??DataTable25_5  ;; 0x40022010
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x10
        LDR.N    R1,??DataTable25_5  ;; 0x40022010
        STR      R0,[R1, #+0]
        ORRS     R0,R6,#0xF8
        ORRS     R0,R0,R5
        ORRS     R0,R0,R4
        LDR.N    R1,??DataTable25_16  ;; 0x1ffff802
        STRH     R0,[R1, #+0]
        MOV      R0,#+8192
        BL       FLASH_WaitForLastOperation
        MOVS     R7,R0
        UXTB     R7,R7            ;; ZeroExt  R7,R7,#+24,#+24
        CMP      R7,#+5
        BEQ.N    ??FLASH_UserOptionByteConfig_3
        LDR.N    R0,??DataTable25_5  ;; 0x40022010
        LDR      R0,[R0, #+0]
        MOVW     R1,#+8175
        ANDS     R0,R1,R0
        LDR.N    R1,??DataTable25_5  ;; 0x40022010
        STR      R0,[R1, #+0]
??FLASH_UserOptionByteConfig_3:
        MOVS     R0,R7
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_GetUserOptionByte:
        LDR.N    R0,??DataTable25_17  ;; 0x4002201c
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+2
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_GetWriteProtectionOptionByte:
        LDR.N    R0,??DataTable25_18  ;; 0x40022020
        LDR      R0,[R0, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_GetReadOutProtectionStatus:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable25_17  ;; 0x4002201c
        LDR      R1,[R1, #+0]
        LSLS     R1,R1,#+30
        BPL.N    ??FLASH_GetReadOutProtectionStatus_0
        MOVS     R1,#+1
        MOVS     R0,R1
        B.N      ??FLASH_GetReadOutProtectionStatus_1
??FLASH_GetReadOutProtectionStatus_0:
        MOVS     R1,#+0
        MOVS     R0,R1
??FLASH_GetReadOutProtectionStatus_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_GetPrefetchBufferStatus:
        MOVS     R0,#+0
        LDR.N    R1,??DataTable25_1  ;; 0x40022000
        LDR      R1,[R1, #+0]
        LSLS     R1,R1,#+26
        BPL.N    ??FLASH_GetPrefetchBufferStatus_0
        MOVS     R1,#+1
        MOVS     R0,R1
        B.N      ??FLASH_GetPrefetchBufferStatus_1
??FLASH_GetPrefetchBufferStatus_0:
        MOVS     R1,#+0
        MOVS     R0,R1
??FLASH_GetPrefetchBufferStatus_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_ITConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        BICS     R0,R4,#0x1400
        CMP      R0,#+0
        BNE.N    ??FLASH_ITConfig_0
        CMP      R4,#+0
        BNE.N    ??FLASH_ITConfig_1
??FLASH_ITConfig_0:
        MOVW     R1,#+1324
        LDR.N    R0,??DataTable25
        BL       assert_failed
??FLASH_ITConfig_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??FLASH_ITConfig_2
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??FLASH_ITConfig_2
        MOVW     R1,#+1325
        LDR.N    R0,??DataTable25
        BL       assert_failed
??FLASH_ITConfig_2:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??FLASH_ITConfig_3
        LDR.N    R0,??DataTable25_5  ;; 0x40022010
        LDR      R0,[R0, #+0]
        ORRS     R0,R4,R0
        LDR.N    R1,??DataTable25_5  ;; 0x40022010
        STR      R0,[R1, #+0]
        B.N      ??FLASH_ITConfig_4
??FLASH_ITConfig_3:
        LDR.N    R0,??DataTable25_5  ;; 0x40022010
        LDR      R0,[R0, #+0]
        BICS     R0,R0,R4
        LDR.N    R1,??DataTable25_5  ;; 0x40022010
        STR      R0,[R1, #+0]
??FLASH_ITConfig_4:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_GetFlagStatus:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        CMP      R4,#+1
        BEQ.N    ??FLASH_GetFlagStatus_0
        CMP      R4,#+32
        BEQ.N    ??FLASH_GetFlagStatus_0
        CMP      R4,#+4
        BEQ.N    ??FLASH_GetFlagStatus_0
        CMP      R4,#+16
        BEQ.N    ??FLASH_GetFlagStatus_0
        CMP      R4,#+1
        BEQ.N    ??FLASH_GetFlagStatus_0
        CMP      R4,#+32
        BEQ.N    ??FLASH_GetFlagStatus_0
        CMP      R4,#+4
        BEQ.N    ??FLASH_GetFlagStatus_0
        CMP      R4,#+16
        BEQ.N    ??FLASH_GetFlagStatus_0
        CMP      R4,#+1
        BEQ.N    ??FLASH_GetFlagStatus_0
        MOVW     R1,#+1401
        LDR.N    R0,??DataTable25
        BL       assert_failed
??FLASH_GetFlagStatus_0:
        CMP      R4,#+1
        BNE.N    ??FLASH_GetFlagStatus_1
        LDR.N    R0,??DataTable25_17  ;; 0x4002201c
        LDR      R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL.N    ??FLASH_GetFlagStatus_2
        MOVS     R0,#+1
        MOVS     R5,R0
        B.N      ??FLASH_GetFlagStatus_3
??FLASH_GetFlagStatus_2:
        MOVS     R0,#+0
        MOVS     R5,R0
        B.N      ??FLASH_GetFlagStatus_3
??FLASH_GetFlagStatus_1:
        LDR.N    R0,??DataTable25_19  ;; 0x4002200c
        LDR      R0,[R0, #+0]
        TST      R0,R4
        BEQ.N    ??FLASH_GetFlagStatus_4
        MOVS     R0,#+1
        MOVS     R5,R0
        B.N      ??FLASH_GetFlagStatus_3
??FLASH_GetFlagStatus_4:
        MOVS     R0,#+0
        MOVS     R5,R0
??FLASH_GetFlagStatus_3:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_ClearFlag:
        PUSH     {R4,LR}
        MOVS     R4,R0
        BICS     R0,R4,#0x35
        CMP      R0,#+0
        BNE.N    ??FLASH_ClearFlag_0
        CMP      R4,#+0
        BNE.N    ??FLASH_ClearFlag_1
??FLASH_ClearFlag_0:
        MOVW     R1,#+1461
        LDR.N    R0,??DataTable25
        BL       assert_failed
??FLASH_ClearFlag_1:
        LDR.N    R0,??DataTable25_19  ;; 0x4002200c
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_GetStatus:
        MOVS     R0,#+4
        LDR.N    R1,??DataTable25_19  ;; 0x4002200c
        LDR      R1,[R1, #+0]
        LSLS     R1,R1,#+31
        BPL.N    ??FLASH_GetStatus_0
        MOVS     R1,#+1
        MOVS     R0,R1
        B.N      ??FLASH_GetStatus_1
??FLASH_GetStatus_0:
        LDR.N    R1,??DataTable25_19  ;; 0x4002200c
        LDR      R1,[R1, #+0]
        LSLS     R1,R1,#+29
        BPL.N    ??FLASH_GetStatus_2
        MOVS     R1,#+2
        MOVS     R0,R1
        B.N      ??FLASH_GetStatus_1
??FLASH_GetStatus_2:
        LDR.N    R1,??DataTable25_19  ;; 0x4002200c
        LDR      R1,[R1, #+0]
        LSLS     R1,R1,#+27
        BPL.N    ??FLASH_GetStatus_3
        MOVS     R1,#+3
        MOVS     R0,R1
        B.N      ??FLASH_GetStatus_1
??FLASH_GetStatus_3:
        MOVS     R1,#+4
        MOVS     R0,R1
??FLASH_GetStatus_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_GetBank1Status:
        MOVS     R0,#+4
        LDR.N    R1,??DataTable25_19  ;; 0x4002200c
        LDR      R1,[R1, #+0]
        LSLS     R1,R1,#+31
        BPL.N    ??FLASH_GetBank1Status_0
        MOVS     R1,#+1
        MOVS     R0,R1
        B.N      ??FLASH_GetBank1Status_1
??FLASH_GetBank1Status_0:
        LDR.N    R1,??DataTable25_19  ;; 0x4002200c
        LDR      R1,[R1, #+0]
        LSLS     R1,R1,#+29
        BPL.N    ??FLASH_GetBank1Status_2
        MOVS     R1,#+2
        MOVS     R0,R1
        B.N      ??FLASH_GetBank1Status_1
??FLASH_GetBank1Status_2:
        LDR.N    R1,??DataTable25_19  ;; 0x4002200c
        LDR      R1,[R1, #+0]
        LSLS     R1,R1,#+27
        BPL.N    ??FLASH_GetBank1Status_3
        MOVS     R1,#+3
        MOVS     R0,R1
        B.N      ??FLASH_GetBank1Status_1
??FLASH_GetBank1Status_3:
        MOVS     R1,#+4
        MOVS     R0,R1
??FLASH_GetBank1Status_1:
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25:
        DC32     `?<Constant "C:\\\\Users\\\\TTT\\\\Desktop\\\\...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_1:
        DC32     0x40022000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_2:
        DC32     0x40022004

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_3:
        DC32     0x45670123

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_4:
        DC32     0xcdef89ab

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_5:
        DC32     0x40022010

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_6:
        DC32     0x80fffff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_7:
        DC32     0x40022014

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_8:
        DC32     0x40022008

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_9:
        DC32     0x1ffff800

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_10:
        DC32     0x1ffff804

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_11:
        DC32     0x1ffff806

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_12:
        DC32     0x1ffff808

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_13:
        DC32     0x1ffff80a

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_14:
        DC32     0x1ffff80c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_15:
        DC32     0x1ffff80e

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_16:
        DC32     0x1ffff802

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_17:
        DC32     0x4002201c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_18:
        DC32     0x40022020

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable25_19:
        DC32     0x4002200c

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_WaitForLastOperation:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+4
        BL       FLASH_GetBank1Status
        MOVS     R5,R0
??FLASH_WaitForLastOperation_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BNE.N    ??FLASH_WaitForLastOperation_1
        CMP      R4,#+0
        BEQ.N    ??FLASH_WaitForLastOperation_1
        BL       FLASH_GetBank1Status
        MOVS     R5,R0
        SUBS     R4,R4,#+1
        B.N      ??FLASH_WaitForLastOperation_0
??FLASH_WaitForLastOperation_1:
        CMP      R4,#+0
        BNE.N    ??FLASH_WaitForLastOperation_2
        MOVS     R0,#+5
        MOVS     R5,R0
??FLASH_WaitForLastOperation_2:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
FLASH_WaitForLastBank1Operation:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+4
        BL       FLASH_GetBank1Status
        MOVS     R5,R0
??FLASH_WaitForLastBank1Operation_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BNE.N    ??FLASH_WaitForLastBank1Operation_1
        CMP      R4,#+0
        BEQ.N    ??FLASH_WaitForLastBank1Operation_1
        BL       FLASH_GetBank1Status
        MOVS     R5,R0
        SUBS     R4,R4,#+1
        B.N      ??FLASH_WaitForLastBank1Operation_0
??FLASH_WaitForLastBank1Operation_1:
        CMP      R4,#+0
        BNE.N    ??FLASH_WaitForLastBank1Operation_2
        MOVS     R0,#+5
        MOVS     R5,R0
??FLASH_WaitForLastBank1Operation_2:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return

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
        DC8 78H, 5FH, 66H, 6CH, 61H, 73H, 68H, 2EH
        DC8 63H, 0
        DC8 0, 0

        END
// 
//   100 bytes in section .rodata
// 2 328 bytes in section .text
// 
// 2 328 bytes of CODE  memory
//   100 bytes of CONST memory
//
//Errors: none
//Warnings: none
