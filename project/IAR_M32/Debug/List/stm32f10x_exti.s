///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    28/Jul/2022  15:47:27 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\TTT\Desktop\zz.STDFW\00.Study\Libraries\STM32F /
//                    10x_StdPeriph_Driver\src\stm32f10x_exti.c               /
//    Command line =  C:\Users\TTT\Desktop\zz.STDFW\00.Study\Libraries\STM32F /
//                    10x_StdPeriph_Driver\src\stm32f10x_exti.c -D            /
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
//                    Debug\List\stm32f10x_exti.s                             /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME stm32f10x_exti

        #define SHT_PROGBITS 0x1

        EXTERN assert_failed

        PUBLIC EXTI_ClearFlag
        PUBLIC EXTI_ClearITPendingBit
        PUBLIC EXTI_DeInit
        PUBLIC EXTI_GenerateSWInterrupt
        PUBLIC EXTI_GetFlagStatus
        PUBLIC EXTI_GetITStatus
        PUBLIC EXTI_Init
        PUBLIC EXTI_StructInit


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
EXTI_DeInit:
        LDR.N    R0,??DataTable6  ;; 0x40010400
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable6_1  ;; 0x40010404
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable6_2  ;; 0x40010408
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable6_3  ;; 0x4001040c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable6_4  ;; 0x40010414
        LDR.N    R1,??DataTable6_5  ;; 0xfffff
        STR      R1,[R0, #+0]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
EXTI_Init:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        LDRB     R0,[R4, #+4]
        CMP      R0,#+0
        BEQ.N    ??EXTI_Init_0
        LDRB     R0,[R4, #+4]
        CMP      R0,#+4
        BEQ.N    ??EXTI_Init_0
        MOVS     R1,#+105
        LDR.N    R0,??DataTable6_6
        BL       assert_failed
??EXTI_Init_0:
        LDRB     R0,[R4, #+5]
        CMP      R0,#+8
        BEQ.N    ??EXTI_Init_1
        LDRB     R0,[R4, #+5]
        CMP      R0,#+12
        BEQ.N    ??EXTI_Init_1
        LDRB     R0,[R4, #+5]
        CMP      R0,#+16
        BEQ.N    ??EXTI_Init_1
        MOVS     R1,#+106
        LDR.N    R0,??DataTable6_6
        BL       assert_failed
??EXTI_Init_1:
        LDR      R0,[R4, #+0]
        LSRS     R0,R0,#+20
        LSLS     R0,R0,#+20
        CMP      R0,#+0
        BNE.N    ??EXTI_Init_2
        LDR      R0,[R4, #+0]
        CMP      R0,#+0
        BNE.N    ??EXTI_Init_3
??EXTI_Init_2:
        MOVS     R1,#+107
        LDR.N    R0,??DataTable6_6
        BL       assert_failed
??EXTI_Init_3:
        LDRB     R0,[R4, #+6]
        CMP      R0,#+0
        BEQ.N    ??EXTI_Init_4
        LDRB     R0,[R4, #+6]
        CMP      R0,#+1
        BEQ.N    ??EXTI_Init_4
        MOVS     R1,#+108
        LDR.N    R0,??DataTable6_6
        BL       assert_failed
??EXTI_Init_4:
        LDR.N    R0,??DataTable6  ;; 0x40010400
        MOVS     R5,R0
        LDRB     R0,[R4, #+6]
        CMP      R0,#+0
        BEQ.N    ??EXTI_Init_5
        LDR.N    R0,??DataTable6  ;; 0x40010400
        LDR      R0,[R0, #+0]
        LDR      R1,[R4, #+0]
        BICS     R0,R0,R1
        LDR.N    R1,??DataTable6  ;; 0x40010400
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable6_1  ;; 0x40010404
        LDR      R0,[R0, #+0]
        LDR      R1,[R4, #+0]
        BICS     R0,R0,R1
        LDR.N    R1,??DataTable6_1  ;; 0x40010404
        STR      R0,[R1, #+0]
        LDRB     R0,[R4, #+4]
        ADDS     R5,R0,R5
        LDR      R0,[R5, #+0]
        LDR      R1,[R4, #+0]
        ORRS     R0,R1,R0
        STR      R0,[R5, #+0]
        LDR.N    R0,??DataTable6_2  ;; 0x40010408
        LDR      R0,[R0, #+0]
        LDR      R1,[R4, #+0]
        BICS     R0,R0,R1
        LDR.N    R1,??DataTable6_2  ;; 0x40010408
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable6_3  ;; 0x4001040c
        LDR      R0,[R0, #+0]
        LDR      R1,[R4, #+0]
        BICS     R0,R0,R1
        LDR.N    R1,??DataTable6_3  ;; 0x4001040c
        STR      R0,[R1, #+0]
        LDRB     R0,[R4, #+5]
        CMP      R0,#+16
        BNE.N    ??EXTI_Init_6
        LDR.N    R0,??DataTable6_2  ;; 0x40010408
        LDR      R0,[R0, #+0]
        LDR      R1,[R4, #+0]
        ORRS     R0,R1,R0
        LDR.N    R1,??DataTable6_2  ;; 0x40010408
        STR      R0,[R1, #+0]
        LDR.N    R0,??DataTable6_3  ;; 0x4001040c
        LDR      R0,[R0, #+0]
        LDR      R1,[R4, #+0]
        ORRS     R0,R1,R0
        LDR.N    R1,??DataTable6_3  ;; 0x4001040c
        STR      R0,[R1, #+0]
        B.N      ??EXTI_Init_7
??EXTI_Init_6:
        LDR.N    R0,??DataTable6  ;; 0x40010400
        MOVS     R5,R0
        LDRB     R0,[R4, #+5]
        ADDS     R5,R0,R5
        LDR      R0,[R5, #+0]
        LDR      R1,[R4, #+0]
        ORRS     R0,R1,R0
        STR      R0,[R5, #+0]
        B.N      ??EXTI_Init_7
??EXTI_Init_5:
        LDRB     R0,[R4, #+4]
        ADDS     R5,R0,R5
        LDR      R0,[R5, #+0]
        LDR      R1,[R4, #+0]
        BICS     R0,R0,R1
        STR      R0,[R5, #+0]
??EXTI_Init_7:
        POP      {R0,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
EXTI_StructInit:
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
        MOVS     R1,#+0
        STRB     R1,[R0, #+4]
        MOVS     R1,#+12
        STRB     R1,[R0, #+5]
        MOVS     R1,#+0
        STRB     R1,[R0, #+6]
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
EXTI_GenerateSWInterrupt:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LSRS     R0,R4,#+20
        LSLS     R0,R0,#+20
        CMP      R0,#+0
        BNE.N    ??EXTI_GenerateSWInterrupt_0
        CMP      R4,#+0
        BNE.N    ??EXTI_GenerateSWInterrupt_1
??EXTI_GenerateSWInterrupt_0:
        MOVS     R1,#+173
        LDR.N    R0,??DataTable6_6
        BL       assert_failed
??EXTI_GenerateSWInterrupt_1:
        LDR.N    R0,??DataTable6_7  ;; 0x40010410
        LDR      R0,[R0, #+0]
        ORRS     R0,R4,R0
        LDR.N    R1,??DataTable6_7  ;; 0x40010410
        STR      R0,[R1, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
EXTI_GetFlagStatus:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        CMP      R4,#+1
        BEQ.N    ??EXTI_GetFlagStatus_0
        CMP      R4,#+2
        BEQ.N    ??EXTI_GetFlagStatus_0
        CMP      R4,#+4
        BEQ.N    ??EXTI_GetFlagStatus_0
        CMP      R4,#+8
        BEQ.N    ??EXTI_GetFlagStatus_0
        CMP      R4,#+16
        BEQ.N    ??EXTI_GetFlagStatus_0
        CMP      R4,#+32
        BEQ.N    ??EXTI_GetFlagStatus_0
        CMP      R4,#+64
        BEQ.N    ??EXTI_GetFlagStatus_0
        CMP      R4,#+128
        BEQ.N    ??EXTI_GetFlagStatus_0
        MOV      R0,#+256
        CMP      R4,R0
        BEQ.N    ??EXTI_GetFlagStatus_0
        MOV      R0,#+512
        CMP      R4,R0
        BEQ.N    ??EXTI_GetFlagStatus_0
        CMP      R4,#+1024
        BEQ.N    ??EXTI_GetFlagStatus_0
        CMP      R4,#+2048
        BEQ.N    ??EXTI_GetFlagStatus_0
        CMP      R4,#+4096
        BEQ.N    ??EXTI_GetFlagStatus_0
        CMP      R4,#+8192
        BEQ.N    ??EXTI_GetFlagStatus_0
        CMP      R4,#+16384
        BEQ.N    ??EXTI_GetFlagStatus_0
        CMP      R4,#+32768
        BEQ.N    ??EXTI_GetFlagStatus_0
        CMP      R4,#+65536
        BEQ.N    ??EXTI_GetFlagStatus_0
        CMP      R4,#+131072
        BEQ.N    ??EXTI_GetFlagStatus_0
        CMP      R4,#+262144
        BEQ.N    ??EXTI_GetFlagStatus_0
        CMP      R4,#+524288
        BEQ.N    ??EXTI_GetFlagStatus_0
        MOVS     R1,#+189
        LDR.N    R0,??DataTable6_6
        BL       assert_failed
??EXTI_GetFlagStatus_0:
        LDR.N    R0,??DataTable6_4  ;; 0x40010414
        LDR      R0,[R0, #+0]
        TST      R0,R4
        BEQ.N    ??EXTI_GetFlagStatus_1
        MOVS     R0,#+1
        MOVS     R5,R0
        B.N      ??EXTI_GetFlagStatus_2
??EXTI_GetFlagStatus_1:
        MOVS     R0,#+0
        MOVS     R5,R0
??EXTI_GetFlagStatus_2:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
EXTI_ClearFlag:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LSRS     R0,R4,#+20
        LSLS     R0,R0,#+20
        CMP      R0,#+0
        BNE.N    ??EXTI_ClearFlag_0
        CMP      R4,#+0
        BNE.N    ??EXTI_ClearFlag_1
??EXTI_ClearFlag_0:
        MOVS     R1,#+211
        LDR.N    R0,??DataTable6_6
        BL       assert_failed
??EXTI_ClearFlag_1:
        LDR.N    R0,??DataTable6_4  ;; 0x40010414
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
EXTI_GetITStatus:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,#+0
        MOVS     R6,#+0
        CMP      R4,#+1
        BEQ.N    ??EXTI_GetITStatus_0
        CMP      R4,#+2
        BEQ.N    ??EXTI_GetITStatus_0
        CMP      R4,#+4
        BEQ.N    ??EXTI_GetITStatus_0
        CMP      R4,#+8
        BEQ.N    ??EXTI_GetITStatus_0
        CMP      R4,#+16
        BEQ.N    ??EXTI_GetITStatus_0
        CMP      R4,#+32
        BEQ.N    ??EXTI_GetITStatus_0
        CMP      R4,#+64
        BEQ.N    ??EXTI_GetITStatus_0
        CMP      R4,#+128
        BEQ.N    ??EXTI_GetITStatus_0
        MOV      R0,#+256
        CMP      R4,R0
        BEQ.N    ??EXTI_GetITStatus_0
        MOV      R0,#+512
        CMP      R4,R0
        BEQ.N    ??EXTI_GetITStatus_0
        CMP      R4,#+1024
        BEQ.N    ??EXTI_GetITStatus_0
        CMP      R4,#+2048
        BEQ.N    ??EXTI_GetITStatus_0
        CMP      R4,#+4096
        BEQ.N    ??EXTI_GetITStatus_0
        CMP      R4,#+8192
        BEQ.N    ??EXTI_GetITStatus_0
        CMP      R4,#+16384
        BEQ.N    ??EXTI_GetITStatus_0
        CMP      R4,#+32768
        BEQ.N    ??EXTI_GetITStatus_0
        CMP      R4,#+65536
        BEQ.N    ??EXTI_GetITStatus_0
        CMP      R4,#+131072
        BEQ.N    ??EXTI_GetITStatus_0
        CMP      R4,#+262144
        BEQ.N    ??EXTI_GetITStatus_0
        CMP      R4,#+524288
        BEQ.N    ??EXTI_GetITStatus_0
        MOVS     R1,#+228
        LDR.N    R0,??DataTable6_6
        BL       assert_failed
??EXTI_GetITStatus_0:
        LDR.N    R0,??DataTable6  ;; 0x40010400
        LDR      R0,[R0, #+0]
        ANDS     R0,R4,R0
        MOVS     R6,R0
        LDR.N    R0,??DataTable6_4  ;; 0x40010414
        LDR      R0,[R0, #+0]
        TST      R0,R4
        BEQ.N    ??EXTI_GetITStatus_1
        CMP      R6,#+0
        BEQ.N    ??EXTI_GetITStatus_1
        MOVS     R0,#+1
        MOVS     R5,R0
        B.N      ??EXTI_GetITStatus_2
??EXTI_GetITStatus_1:
        MOVS     R0,#+0
        MOVS     R5,R0
??EXTI_GetITStatus_2:
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
EXTI_ClearITPendingBit:
        PUSH     {R4,LR}
        MOVS     R4,R0
        LSRS     R0,R4,#+20
        LSLS     R0,R0,#+20
        CMP      R0,#+0
        BNE.N    ??EXTI_ClearITPendingBit_0
        CMP      R4,#+0
        BNE.N    ??EXTI_ClearITPendingBit_1
??EXTI_ClearITPendingBit_0:
        MOVS     R1,#+251
        LDR.N    R0,??DataTable6_6
        BL       assert_failed
??EXTI_ClearITPendingBit_1:
        LDR.N    R0,??DataTable6_4  ;; 0x40010414
        STR      R4,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6:
        DC32     0x40010400

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_1:
        DC32     0x40010404

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_2:
        DC32     0x40010408

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_3:
        DC32     0x4001040c

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_4:
        DC32     0x40010414

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_5:
        DC32     0xfffff

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_6:
        DC32     `?<Constant "C:\\\\Users\\\\TTT\\\\Desktop\\\\...">`

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable6_7:
        DC32     0x40010410

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
        DC8 78H, 5FH, 65H, 78H, 74H, 69H, 2EH, 63H
        DC8 0
        DC8 0, 0, 0

        END
// 
// 100 bytes in section .rodata
// 714 bytes in section .text
// 
// 714 bytes of CODE  memory
// 100 bytes of CONST memory
//
//Errors: none
//Warnings: none
