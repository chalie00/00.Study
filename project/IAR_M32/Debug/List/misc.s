///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    05/Aug/2022  15:12:53 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\TTT\Desktop\zz.STDFW\00.Study\Libraries\STM32F /
//                    10x_StdPeriph_Driver\src\misc.c                         /
//    Command line =  C:\Users\TTT\Desktop\zz.STDFW\00.Study\Libraries\STM32F /
//                    10x_StdPeriph_Driver\src\misc.c -D                      /
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
//                    Debug\List\misc.s                                       /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME misc

        #define SHT_PROGBITS 0x1

        EXTERN assert_failed

        PUBLIC NVIC_Init
        PUBLIC NVIC_PriorityGroupConfig
        PUBLIC NVIC_SetVectorTable
        PUBLIC NVIC_SystemLPConfig
        PUBLIC SysTick_CLKSourceConfig


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
NVIC_PriorityGroupConfig:
        PUSH     {R4,LR}
        MOVS     R4,R0
        CMP      R4,#+1792
        BEQ.N    ??NVIC_PriorityGroupConfig_0
        CMP      R4,#+1536
        BEQ.N    ??NVIC_PriorityGroupConfig_0
        CMP      R4,#+1280
        BEQ.N    ??NVIC_PriorityGroupConfig_0
        CMP      R4,#+1024
        BEQ.N    ??NVIC_PriorityGroupConfig_0
        MOV      R0,#+768
        CMP      R4,R0
        BEQ.N    ??NVIC_PriorityGroupConfig_0
        MOVS     R1,#+98
        LDR.N    R0,??DataTable4
        BL       assert_failed
??NVIC_PriorityGroupConfig_0:
        LDR.N    R0,??DataTable4_1  ;; 0x5fa0000
        ORRS     R0,R0,R4
        LDR.N    R1,??DataTable4_2  ;; 0xe000ed0c
        STR      R0,[R1, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
NVIC_Init:
        PUSH     {R3-R7,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        MOVS     R6,#+0
        MOVS     R7,#+15
        LDRB     R0,[R4, #+3]
        CMP      R0,#+0
        BEQ.N    ??NVIC_Init_0
        LDRB     R0,[R4, #+3]
        CMP      R0,#+1
        BEQ.N    ??NVIC_Init_0
        MOVS     R1,#+116
        LDR.N    R0,??DataTable4
        BL       assert_failed
??NVIC_Init_0:
        LDRB     R0,[R4, #+1]
        CMP      R0,#+16
        BCC.N    ??NVIC_Init_1
        MOVS     R1,#+117
        LDR.N    R0,??DataTable4
        BL       assert_failed
??NVIC_Init_1:
        LDRB     R0,[R4, #+2]
        CMP      R0,#+16
        BCC.N    ??NVIC_Init_2
        MOVS     R1,#+118
        LDR.N    R0,??DataTable4
        BL       assert_failed
??NVIC_Init_2:
        LDRB     R0,[R4, #+3]
        CMP      R0,#+0
        BEQ.N    ??NVIC_Init_3
        LDR.N    R0,??DataTable4_2  ;; 0xe000ed0c
        LDR      R0,[R0, #+0]
        ANDS     R0,R0,#0x700
        RSBS     R0,R0,#+1792
        LSRS     R0,R0,#+8
        MOVS     R5,R0
        RSBS     R0,R5,#+4
        MOVS     R6,R0
        LSRS     R7,R7,R5
        LDRB     R0,[R4, #+1]
        LSLS     R0,R0,R6
        MOVS     R5,R0
        LDRB     R0,[R4, #+2]
        ANDS     R0,R7,R0
        ORRS     R5,R0,R5
        LSLS     R5,R5,#+4
        LDRB     R0,[R4, #+0]
        LDR.N    R1,??DataTable4_3  ;; 0xe000e400
        STRB     R5,[R0, R1]
        LDRB     R0,[R4, #+0]
        ASRS     R0,R0,#+5
        LDR.N    R1,??DataTable4_4  ;; 0xe000e100
        MOVS     R2,#+1
        LDRB     R3,[R4, #+0]
        ANDS     R3,R3,#0x1F
        LSLS     R2,R2,R3
        STR      R2,[R1, R0, LSL #+2]
        B.N      ??NVIC_Init_4
??NVIC_Init_3:
        LDRB     R0,[R4, #+0]
        ASRS     R0,R0,#+5
        LDR.N    R1,??DataTable4_5  ;; 0xe000e180
        MOVS     R2,#+1
        LDRB     R3,[R4, #+0]
        ANDS     R3,R3,#0x1F
        LSLS     R2,R2,R3
        STR      R2,[R1, R0, LSL #+2]
??NVIC_Init_4:
        POP      {R0,R4-R7,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
NVIC_SetVectorTable:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        CMP      R4,#+536870912
        BEQ.N    ??NVIC_SetVectorTable_0
        CMP      R4,#+134217728
        BEQ.N    ??NVIC_SetVectorTable_0
        MOVS     R1,#+157
        LDR.N    R0,??DataTable4
        BL       assert_failed
??NVIC_SetVectorTable_0:
        LDR.N    R0,??DataTable4_6  ;; 0xfffff
        CMP      R5,R0
        BCC.N    ??NVIC_SetVectorTable_1
        MOVS     R1,#+158
        LDR.N    R0,??DataTable4
        BL       assert_failed
??NVIC_SetVectorTable_1:
        LDR.N    R0,??DataTable4_7  ;; 0x1fffff80
        ANDS     R0,R0,R5
        ORRS     R0,R0,R4
        LDR.N    R1,??DataTable4_8  ;; 0xe000ed08
        STR      R0,[R1, #+0]
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
NVIC_SystemLPConfig:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+16
        BEQ.N    ??NVIC_SystemLPConfig_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+4
        BEQ.N    ??NVIC_SystemLPConfig_0
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+2
        BEQ.N    ??NVIC_SystemLPConfig_0
        MOVS     R1,#+176
        LDR.N    R0,??DataTable4
        BL       assert_failed
??NVIC_SystemLPConfig_0:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??NVIC_SystemLPConfig_1
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+1
        BEQ.N    ??NVIC_SystemLPConfig_1
        MOVS     R1,#+177
        LDR.N    R0,??DataTable4
        BL       assert_failed
??NVIC_SystemLPConfig_1:
        UXTB     R5,R5            ;; ZeroExt  R5,R5,#+24,#+24
        CMP      R5,#+0
        BEQ.N    ??NVIC_SystemLPConfig_2
        LDR.N    R0,??DataTable4_9  ;; 0xe000ed10
        LDR      R0,[R0, #+0]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        ORRS     R0,R4,R0
        LDR.N    R1,??DataTable4_9  ;; 0xe000ed10
        STR      R0,[R1, #+0]
        B.N      ??NVIC_SystemLPConfig_3
??NVIC_SystemLPConfig_2:
        LDR.N    R0,??DataTable4_9  ;; 0xe000ed10
        LDR      R0,[R0, #+0]
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        BICS     R0,R0,R4
        LDR.N    R1,??DataTable4_9  ;; 0xe000ed10
        STR      R0,[R1, #+0]
??NVIC_SystemLPConfig_3:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
SysTick_CLKSourceConfig:
        PUSH     {R4,LR}
        MOVS     R4,R0
        CMP      R4,#+4
        BEQ.N    ??SysTick_CLKSourceConfig_0
        CMN      R4,#+5
        BEQ.N    ??SysTick_CLKSourceConfig_0
        MOVS     R1,#+200
        LDR.N    R0,??DataTable4
        BL       assert_failed
??SysTick_CLKSourceConfig_0:
        CMP      R4,#+4
        BNE.N    ??SysTick_CLKSourceConfig_1
        LDR.N    R0,??DataTable4_10  ;; 0xe000e010
        LDR      R0,[R0, #+0]
        ORRS     R0,R0,#0x4
        LDR.N    R1,??DataTable4_10  ;; 0xe000e010
        STR      R0,[R1, #+0]
        B.N      ??SysTick_CLKSourceConfig_2
??SysTick_CLKSourceConfig_1:
        LDR.N    R0,??DataTable4_10  ;; 0xe000e010
        LDR      R0,[R0, #+0]
        BICS     R0,R0,#0x4
        LDR.N    R1,??DataTable4_10  ;; 0xe000e010
        STR      R0,[R1, #+0]
??SysTick_CLKSourceConfig_2:
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4:
        DC32     `?<Constant "C:\\\\Users\\\\TTT\\\\Desktop\\\\...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_1:
        DC32     0x5fa0000

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_2:
        DC32     0xe000ed0c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_3:
        DC32     0xe000e400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_4:
        DC32     0xe000e100

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_5:
        DC32     0xe000e180

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_6:
        DC32     0xfffff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_7:
        DC32     0x1fffff80

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_8:
        DC32     0xe000ed08

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_9:
        DC32     0xe000ed10

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable4_10:
        DC32     0xe000e010

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
        DC8 6DH, 69H, 73H, 63H, 2EH, 63H, 0
        DC8 0

        END
// 
//  88 bytes in section .rodata
// 442 bytes in section .text
// 
// 442 bytes of CODE  memory
//  88 bytes of CONST memory
//
//Errors: none
//Warnings: none
