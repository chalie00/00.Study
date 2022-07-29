///////////////////////////////////////////////////////////////////////////////
//                                                                            /
// IAR ANSI C/C++ Compiler V6.30.1.53127/W32 for ARM    28/Jul/2022  15:47:30 /
// Copyright 1999-2011 IAR Systems AB.                                        /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Users\TTT\Desktop\zz.STDFW\00.Study\src\Temperature. /
//                    c                                                       /
//    Command line =  C:\Users\TTT\Desktop\zz.STDFW\00.Study\src\Temperature. /
//                    c -D USE_STDPERIPH_DRIVER -D STM32F10x_HD -D            /
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
//                    Debug\List\Temperature.s                                /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME Temperature

        #define SHT_PROGBITS 0x1

        EXTERN ConvertData
        EXTERN TempMonitorting
        EXTERN convertV

        PUBLIC CheckTemp
        PUBLIC TempCalibration
        PUBLIC TempToADC


        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TempToADC:
        MOVS     R1,R0
        UXTB     R1,R1            ;; ZeroExt  R1,R1,#+24,#+24
        CMP      R1,#+0
        BEQ.W    ??TempToADC_0
        CMP      R1,#+2
        BEQ.W    ??TempToADC_1
        BCC.W    ??TempToADC_2
        CMP      R1,#+4
        BEQ.W    ??TempToADC_3
        BCC.W    ??TempToADC_4
        CMP      R1,#+6
        BEQ.W    ??TempToADC_5
        BCC.W    ??TempToADC_6
        CMP      R1,#+8
        BEQ.W    ??TempToADC_7
        BCC.W    ??TempToADC_8
        CMP      R1,#+10
        BEQ.W    ??TempToADC_9
        BCC.W    ??TempToADC_10
        CMP      R1,#+12
        BEQ.W    ??TempToADC_11
        BCC.W    ??TempToADC_12
        CMP      R1,#+14
        BEQ.W    ??TempToADC_13
        BCC.W    ??TempToADC_14
        CMP      R1,#+16
        BEQ.W    ??TempToADC_15
        BCC.W    ??TempToADC_16
        CMP      R1,#+18
        BEQ.W    ??TempToADC_17
        BCC.W    ??TempToADC_18
        CMP      R1,#+20
        BEQ.W    ??TempToADC_19
        BCC.W    ??TempToADC_20
        CMP      R1,#+22
        BEQ.W    ??TempToADC_21
        BCC.W    ??TempToADC_22
        CMP      R1,#+24
        BEQ.W    ??TempToADC_23
        BCC.W    ??TempToADC_24
        CMP      R1,#+26
        BEQ.W    ??TempToADC_25
        BCC.W    ??TempToADC_26
        CMP      R1,#+28
        BEQ.W    ??TempToADC_27
        BCC.W    ??TempToADC_28
        CMP      R1,#+30
        BEQ.W    ??TempToADC_29
        BCC.W    ??TempToADC_30
        CMP      R1,#+32
        BEQ.W    ??TempToADC_31
        BCC.W    ??TempToADC_32
        CMP      R1,#+34
        BEQ.W    ??TempToADC_33
        BCC.W    ??TempToADC_34
        CMP      R1,#+36
        BEQ.W    ??TempToADC_35
        BCC.W    ??TempToADC_36
        CMP      R1,#+38
        BEQ.W    ??TempToADC_37
        BCC.W    ??TempToADC_38
        CMP      R1,#+40
        BEQ.W    ??TempToADC_39
        BCC.W    ??TempToADC_40
        CMP      R1,#+42
        BEQ.W    ??TempToADC_41
        BCC.W    ??TempToADC_42
        CMP      R1,#+44
        BEQ.W    ??TempToADC_43
        BCC.W    ??TempToADC_44
        CMP      R1,#+46
        BEQ.W    ??TempToADC_45
        BCC.W    ??TempToADC_46
        CMP      R1,#+48
        BEQ.W    ??TempToADC_47
        BCC.W    ??TempToADC_48
        CMP      R1,#+50
        BEQ.W    ??TempToADC_49
        BCC.W    ??TempToADC_50
        CMP      R1,#+52
        BEQ.W    ??TempToADC_51
        BCC.W    ??TempToADC_52
        CMP      R1,#+54
        BEQ.W    ??TempToADC_53
        BCC.W    ??TempToADC_54
        CMP      R1,#+56
        BEQ.W    ??TempToADC_55
        BCC.W    ??TempToADC_56
        CMP      R1,#+58
        BEQ.W    ??TempToADC_57
        BCC.W    ??TempToADC_58
        CMP      R1,#+60
        BEQ.W    ??TempToADC_59
        BCC.W    ??TempToADC_60
        CMP      R1,#+62
        BEQ.W    ??TempToADC_61
        BCC.W    ??TempToADC_62
        CMP      R1,#+64
        BEQ.W    ??TempToADC_63
        BCC.W    ??TempToADC_64
        CMP      R1,#+66
        BEQ.W    ??TempToADC_65
        BCC.W    ??TempToADC_66
        CMP      R1,#+68
        BEQ.W    ??TempToADC_67
        BCC.W    ??TempToADC_68
        CMP      R1,#+70
        BEQ.W    ??TempToADC_69
        BCC.W    ??TempToADC_70
        B.N      ??TempToADC_71
??TempToADC_0:
        MOVW     R2,#+2875
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_2:
        MOVW     R2,#+2857
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_1:
        MOVW     R2,#+2838
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_4:
        MOVW     R2,#+2819
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_3:
        MOVW     R2,#+2799
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_6:
        MOVW     R2,#+2779
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_5:
        MOVW     R2,#+2758
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_8:
        MOVW     R2,#+2737
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_7:
        MOVW     R2,#+2715
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_10:
        MOVW     R2,#+2693
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_9:
        MOVW     R2,#+2670
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_12:
        MOVW     R2,#+2647
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_11:
        MOVW     R2,#+2623
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_14:
        MOVW     R2,#+2598
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_13:
        MOVW     R2,#+2574
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_16:
        MOVW     R2,#+2548
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_15:
        MOVW     R2,#+2522
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_18:
        MOV      R2,#+2496
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_17:
        MOVW     R2,#+2469
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_20:
        MOVW     R2,#+2442
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_19:
        MOVW     R2,#+2414
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_22:
        MOVW     R2,#+2386
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_21:
        MOVW     R2,#+2358
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_24:
        MOVW     R2,#+2329
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_23:
        MOVW     R2,#+2300
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_26:
        MOVW     R2,#+2271
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_25:
        MOVW     R2,#+2241
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_28:
        MOVW     R2,#+2211
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_27:
        MOVW     R2,#+2181
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_30:
        MOVW     R2,#+2150
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_29:
        MOVW     R2,#+2119
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_32:
        MOVW     R2,#+2088
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_31:
        MOVW     R2,#+2057
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_34:
        MOVW     R2,#+2026
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_33:
        MOVW     R2,#+1995
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_36:
        MOVW     R2,#+1963
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_35:
        MOVW     R2,#+1932
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_38:
        MOVW     R2,#+1900
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_37:
        MOVW     R2,#+1869
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_40:
        MOVW     R2,#+1837
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_39:
        MOVW     R2,#+1806
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_42:
        MOVW     R2,#+1774
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_41:
        MOVW     R2,#+1743
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_44:
        MOV      R2,#+1712
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_43:
        MOV      R2,#+1680
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_46:
        MOVW     R2,#+1650
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_45:
        MOVW     R2,#+1619
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_48:
        MOVW     R2,#+1588
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_47:
        MOVW     R2,#+1558
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_50:
        MOVW     R2,#+1527
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_49:
        MOVW     R2,#+1497
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_52:
        MOVW     R2,#+1468
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_51:
        MOVW     R2,#+1438
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_54:
        MOVW     R2,#+1409
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_53:
        MOVW     R2,#+1380
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_56:
        MOV      R2,#+1352
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_55:
        MOVW     R2,#+1324
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_58:
        MOV      R2,#+1296
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_57:
        MOVW     R2,#+1268
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_60:
        MOVW     R2,#+1241
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_59:
        MOVW     R2,#+1214
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_62:
        MOVW     R2,#+1188
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_61:
        MOVW     R2,#+1162
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_64:
        MOV      R2,#+1136
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_63:
        MOVW     R2,#+1111
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_66:
        MOVW     R2,#+1087
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_65:
        MOVW     R2,#+1062
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_68:
        MOVW     R2,#+1038
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_67:
        MOVW     R2,#+1015
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_70:
        MOV      R2,#+992
        MOVS     R0,R2
        B.N      ??TempToADC_71
??TempToADC_69:
        MOVW     R2,#+969
        MOVS     R0,R2
??TempToADC_71:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
CheckTemp:
        LDR.W    R0,??DataTable1
        LDR      R0,[R0, #+0]
        MOVW     R1,#+371
        SUBS     R0,R0,R1
        BEQ.W    ??CheckTemp_0
        SUBS     R0,R0,#+8
        BEQ.W    ??CheckTemp_1
        SUBS     R0,R0,#+10
        BEQ.W    ??CheckTemp_2
        SUBS     R0,R0,#+9
        BEQ.W    ??CheckTemp_3
        SUBS     R0,R0,#+10
        BEQ.W    ??CheckTemp_4
        SUBS     R0,R0,#+10
        BEQ.W    ??CheckTemp_5
        SUBS     R0,R0,#+10
        BEQ.W    ??CheckTemp_6
        SUBS     R0,R0,#+10
        BEQ.W    ??CheckTemp_7
        SUBS     R0,R0,#+11
        BEQ.W    ??CheckTemp_8
        SUBS     R0,R0,#+11
        BEQ.W    ??CheckTemp_9
        SUBS     R0,R0,#+11
        BEQ.W    ??CheckTemp_10
        SUBS     R0,R0,#+12
        BEQ.W    ??CheckTemp_11
        SUBS     R0,R0,#+12
        BEQ.W    ??CheckTemp_12
        SUBS     R0,R0,#+12
        BEQ.W    ??CheckTemp_13
        SUBS     R0,R0,#+12
        BEQ.W    ??CheckTemp_14
        SUBS     R0,R0,#+13
        BEQ.W    ??CheckTemp_15
        SUBS     R0,R0,#+13
        BEQ.W    ??CheckTemp_16
        SUBS     R0,R0,#+14
        BEQ.W    ??CheckTemp_17
        SUBS     R0,R0,#+13
        BEQ.W    ??CheckTemp_18
        SUBS     R0,R0,#+14
        BEQ.W    ??CheckTemp_19
        SUBS     R0,R0,#+15
        BEQ.W    ??CheckTemp_20
        SUBS     R0,R0,#+15
        BEQ.W    ??CheckTemp_21
        SUBS     R0,R0,#+15
        BEQ.W    ??CheckTemp_22
        SUBS     R0,R0,#+15
        BEQ.W    ??CheckTemp_23
        SUBS     R0,R0,#+16
        BEQ.W    ??CheckTemp_24
        SUBS     R0,R0,#+16
        BEQ.W    ??CheckTemp_25
        SUBS     R0,R0,#+17
        BEQ.W    ??CheckTemp_26
        SUBS     R0,R0,#+17
        BEQ.W    ??CheckTemp_27
        SUBS     R0,R0,#+17
        BEQ.W    ??CheckTemp_28
        SUBS     R0,R0,#+18
        BEQ.W    ??CheckTemp_29
        SUBS     R0,R0,#+18
        BEQ.W    ??CheckTemp_30
        SUBS     R0,R0,#+19
        BEQ.W    ??CheckTemp_31
        SUBS     R0,R0,#+18
        BEQ.W    ??CheckTemp_32
        SUBS     R0,R0,#+20
        BEQ.W    ??CheckTemp_33
        SUBS     R0,R0,#+20
        BEQ.W    ??CheckTemp_34
        SUBS     R0,R0,#+20
        BEQ.W    ??CheckTemp_35
        SUBS     R0,R0,#+20
        BEQ.W    ??CheckTemp_36
        SUBS     R0,R0,#+21
        BEQ.W    ??CheckTemp_37
        SUBS     R0,R0,#+22
        BEQ.W    ??CheckTemp_38
        SUBS     R0,R0,#+22
        BEQ.W    ??CheckTemp_39
        SUBS     R0,R0,#+22
        BEQ.W    ??CheckTemp_40
        SUBS     R0,R0,#+23
        BEQ.W    ??CheckTemp_41
        SUBS     R0,R0,#+23
        BEQ.W    ??CheckTemp_42
        SUBS     R0,R0,#+23
        BEQ.W    ??CheckTemp_43
        SUBS     R0,R0,#+24
        BEQ.W    ??CheckTemp_44
        SUBS     R0,R0,#+25
        BEQ.W    ??CheckTemp_45
        SUBS     R0,R0,#+24
        BEQ.W    ??CheckTemp_46
        SUBS     R0,R0,#+25
        BEQ.W    ??CheckTemp_47
        SUBS     R0,R0,#+26
        BEQ.W    ??CheckTemp_48
        SUBS     R0,R0,#+26
        BEQ.W    ??CheckTemp_49
        SUBS     R0,R0,#+26
        BEQ.W    ??CheckTemp_50
        SUBS     R0,R0,#+27
        BEQ.W    ??CheckTemp_51
        SUBS     R0,R0,#+27
        BEQ.W    ??CheckTemp_52
        SUBS     R0,R0,#+28
        BEQ.W    ??CheckTemp_53
        SUBS     R0,R0,#+28
        BEQ.W    ??CheckTemp_54
        SUBS     R0,R0,#+28
        BEQ.W    ??CheckTemp_55
        SUBS     R0,R0,#+28
        BEQ.W    ??CheckTemp_56
        SUBS     R0,R0,#+29
        BEQ.W    ??CheckTemp_57
        SUBS     R0,R0,#+29
        BEQ.W    ??CheckTemp_58
        SUBS     R0,R0,#+30
        BEQ.W    ??CheckTemp_59
        SUBS     R0,R0,#+29
        BEQ.W    ??CheckTemp_60
        SUBS     R0,R0,#+30
        BEQ.W    ??CheckTemp_61
        SUBS     R0,R0,#+31
        BEQ.W    ??CheckTemp_62
        SUBS     R0,R0,#+30
        BEQ.W    ??CheckTemp_63
        SUBS     R0,R0,#+31
        BEQ.W    ??CheckTemp_64
        SUBS     R0,R0,#+31
        BEQ.W    ??CheckTemp_65
        SUBS     R0,R0,#+30
        BEQ.W    ??CheckTemp_66
        SUBS     R0,R0,#+32
        BEQ.W    ??CheckTemp_67
        SUBS     R0,R0,#+31
        BEQ.W    ??CheckTemp_68
        SUBS     R0,R0,#+31
        BEQ.W    ??CheckTemp_69
        SUBS     R0,R0,#+32
        BEQ.W    ??CheckTemp_70
        SUBS     R0,R0,#+31
        BEQ.W    ??CheckTemp_71
        SUBS     R0,R0,#+32
        BEQ.W    ??CheckTemp_72
        SUBS     R0,R0,#+31
        BEQ.W    ??CheckTemp_73
        SUBS     R0,R0,#+32
        BEQ.W    ??CheckTemp_74
        SUBS     R0,R0,#+31
        BEQ.W    ??CheckTemp_75
        SUBS     R0,R0,#+32
        BEQ.W    ??CheckTemp_76
        SUBS     R0,R0,#+31
        BEQ.W    ??CheckTemp_77
        SUBS     R0,R0,#+31
        BEQ.W    ??CheckTemp_78
        SUBS     R0,R0,#+31
        BEQ.W    ??CheckTemp_79
        SUBS     R0,R0,#+31
        BEQ.W    ??CheckTemp_80
        SUBS     R0,R0,#+31
        BEQ.W    ??CheckTemp_81
        SUBS     R0,R0,#+31
        BEQ.W    ??CheckTemp_82
        SUBS     R0,R0,#+30
        BEQ.W    ??CheckTemp_83
        SUBS     R0,R0,#+30
        BEQ.W    ??CheckTemp_84
        SUBS     R0,R0,#+30
        BEQ.W    ??CheckTemp_85
        SUBS     R0,R0,#+29
        BEQ.W    ??CheckTemp_86
        SUBS     R0,R0,#+29
        BEQ.W    ??CheckTemp_87
        SUBS     R0,R0,#+29
        BEQ.W    ??CheckTemp_88
        SUBS     R0,R0,#+28
        BEQ.W    ??CheckTemp_89
        SUBS     R0,R0,#+28
        BEQ.W    ??CheckTemp_90
        SUBS     R0,R0,#+28
        BEQ.W    ??CheckTemp_91
        SUBS     R0,R0,#+27
        BEQ.W    ??CheckTemp_92
        SUBS     R0,R0,#+27
        BEQ.W    ??CheckTemp_93
        SUBS     R0,R0,#+26
        BEQ.W    ??CheckTemp_94
        SUBS     R0,R0,#+26
        BEQ.W    ??CheckTemp_95
        SUBS     R0,R0,#+26
        BEQ.W    ??CheckTemp_96
        SUBS     R0,R0,#+24
        BEQ.W    ??CheckTemp_97
        SUBS     R0,R0,#+25
        BEQ.W    ??CheckTemp_98
        SUBS     R0,R0,#+24
        BEQ.W    ??CheckTemp_99
        SUBS     R0,R0,#+23
        BEQ.W    ??CheckTemp_100
        SUBS     R0,R0,#+23
        BEQ.W    ??CheckTemp_101
        SUBS     R0,R0,#+22
        BEQ.W    ??CheckTemp_102
        SUBS     R0,R0,#+22
        BEQ.N    ??CheckTemp_103
        SUBS     R0,R0,#+21
        BEQ.N    ??CheckTemp_104
        SUBS     R0,R0,#+21
        BEQ.N    ??CheckTemp_105
        SUBS     R0,R0,#+20
        BEQ.N    ??CheckTemp_106
        SUBS     R0,R0,#+20
        BEQ.N    ??CheckTemp_107
        SUBS     R0,R0,#+19
        BEQ.N    ??CheckTemp_108
        SUBS     R0,R0,#+19
        BEQ.N    ??CheckTemp_109
        SUBS     R0,R0,#+18
        BEQ.N    ??CheckTemp_110
        SUBS     R0,R0,#+17
        BEQ.N    ??CheckTemp_111
        SUBS     R0,R0,#+17
        BEQ.N    ??CheckTemp_112
        SUBS     R0,R0,#+17
        BEQ.N    ??CheckTemp_113
        SUBS     R0,R0,#+16
        BEQ.N    ??CheckTemp_114
        SUBS     R0,R0,#+15
        BEQ.N    ??CheckTemp_115
        SUBS     R0,R0,#+15
        BEQ.N    ??CheckTemp_116
        SUBS     R0,R0,#+14
        BEQ.N    ??CheckTemp_117
        SUBS     R0,R0,#+14
        BEQ.N    ??CheckTemp_118
        SUBS     R0,R0,#+14
        BEQ.N    ??CheckTemp_119
        SUBS     R0,R0,#+13
        BNE.W    ??CheckTemp_120
??CheckTemp_121:
        LDR.W    R0,??DataTable1_1
        MOVS     R1,#+30
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_119:
        LDR.W    R0,??DataTable1_1
        MOVS     R1,#+29
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_118:
        LDR.W    R0,??DataTable1_1
        MOVS     R1,#+28
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_117:
        LDR.W    R0,??DataTable1_1
        MOVS     R1,#+27
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_116:
        LDR.W    R0,??DataTable1_1
        MOVS     R1,#+26
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_115:
        LDR.W    R0,??DataTable1_1
        MOVS     R1,#+25
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_114:
        LDR.W    R0,??DataTable1_1
        MOVS     R1,#+24
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_113:
        LDR.W    R0,??DataTable1_1
        MOVS     R1,#+23
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_112:
        LDR.W    R0,??DataTable1_1
        MOVS     R1,#+22
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_111:
        LDR.W    R0,??DataTable1_1
        MOVS     R1,#+21
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_110:
        LDR.W    R0,??DataTable1_1
        MOVS     R1,#+20
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_109:
        LDR.W    R0,??DataTable1_1
        MOVS     R1,#+19
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_108:
        LDR.W    R0,??DataTable1_1
        MOVS     R1,#+18
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_107:
        LDR.W    R0,??DataTable1_1
        MOVS     R1,#+17
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_106:
        LDR.W    R0,??DataTable1_1
        MOVS     R1,#+16
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_105:
        LDR.W    R0,??DataTable1_1
        MOVS     R1,#+15
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_104:
        LDR.W    R0,??DataTable1_1
        MOVS     R1,#+14
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_103:
        LDR.W    R0,??DataTable1_1
        MOVS     R1,#+13
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_102:
        LDR.W    R0,??DataTable1_1
        MOVS     R1,#+12
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_101:
        LDR.W    R0,??DataTable1_1
        MOVS     R1,#+11
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_100:
        LDR.W    R0,??DataTable1_1
        MOVS     R1,#+10
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_99:
        LDR.W    R0,??DataTable1_1
        MOVS     R1,#+9
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_98:
        LDR.W    R0,??DataTable1_1
        MOVS     R1,#+8
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_97:
        LDR.W    R0,??DataTable1_1
        MOVS     R1,#+7
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_96:
        LDR.W    R0,??DataTable1_1
        MOVS     R1,#+6
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_95:
        LDR.W    R0,??DataTable1_1
        MOVS     R1,#+5
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_94:
        LDR.W    R0,??DataTable1_1
        MOVS     R1,#+4
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_93:
        LDR.W    R0,??DataTable1_1
        MOVS     R1,#+3
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_92:
        LDR.W    R0,??DataTable1_1
        MOVS     R1,#+2
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_91:
        LDR.W    R0,??DataTable1_1
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_90:
        LDR.W    R0,??DataTable1_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_89:
        LDR.W    R0,??DataTable1_1
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_88:
        LDR.W    R0,??DataTable1_1
        MOVS     R1,#+2
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_87:
        LDR.W    R0,??DataTable1_1
        MOVS     R1,#+3
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_86:
        LDR.W    R0,??DataTable1_1
        MOVS     R1,#+4
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_85:
        LDR.W    R0,??DataTable1_1
        MOVS     R1,#+5
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_84:
        LDR.W    R0,??DataTable1_1
        MOVS     R1,#+6
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_83:
        LDR.W    R0,??DataTable1_1
        MOVS     R1,#+7
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_82:
        LDR.W    R0,??DataTable1_1
        MOVS     R1,#+8
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_81:
        LDR.W    R0,??DataTable1_1
        MOVS     R1,#+9
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_80:
        LDR.W    R0,??DataTable1_1
        MOVS     R1,#+10
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_79:
        LDR.W    R0,??DataTable1_1
        MOVS     R1,#+11
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_78:
        LDR.W    R0,??DataTable1_1
        MOVS     R1,#+12
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_77:
        LDR.W    R0,??DataTable1_1
        MOVS     R1,#+13
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_76:
        LDR.W    R0,??DataTable1_1
        MOVS     R1,#+14
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_75:
        LDR.W    R0,??DataTable1_1
        MOVS     R1,#+15
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_74:
        LDR.W    R0,??DataTable1_1
        MOVS     R1,#+16
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_73:
        LDR.W    R0,??DataTable1_1
        MOVS     R1,#+17
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_72:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+18
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_71:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+19
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_70:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+20
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_69:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+21
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_68:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+22
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_67:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+23
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_66:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+24
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_65:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+25
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_64:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+26
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_63:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+27
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_62:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+28
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_61:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+29
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_60:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+30
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_59:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+31
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_58:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+32
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_57:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+33
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_56:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+34
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_55:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+35
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_54:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+36
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_53:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+37
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_52:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+38
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_51:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+39
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_50:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+40
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_49:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+41
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_48:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+42
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_47:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+43
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_46:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+44
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_45:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+45
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_44:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+46
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_43:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+47
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_42:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+48
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_41:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+49
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_40:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+50
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_39:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+51
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_38:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+52
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_37:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+53
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_36:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+54
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_35:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+55
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_34:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+56
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_33:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+57
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_32:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+58
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_31:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+59
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_30:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+60
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_29:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+61
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_28:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+62
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_27:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+63
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_26:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+64
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_25:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+65
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_24:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+66
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_23:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+67
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_22:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+68
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_21:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+69
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_20:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+70
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_19:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+71
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_18:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+72
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_17:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+73
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_16:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+74
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_15:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+75
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_14:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+76
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_13:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+77
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_12:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+78
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_11:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+79
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_10:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+80
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_9:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+81
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_8:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+82
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_7:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+83
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_6:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+84
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_5:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+85
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_4:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+86
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_3:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+87
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_2:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+88
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_1:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+89
        STRB     R1,[R0, #+0]
        B.N      ??CheckTemp_120
??CheckTemp_0:
        LDR.N    R0,??DataTable1_1
        MOVS     R1,#+90
        STRB     R1,[R0, #+0]
??CheckTemp_120:
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
TempCalibration:
        PUSH     {R4,LR}
        LDR.N    R0,??DataTable1_2
        MOVS     R1,#+255
        STRB     R1,[R0, #+0]
        MOVS     R0,#+0
        MOVS     R4,R0
??TempCalibration_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+100
        BCS.N    ??TempCalibration_1
        BL       CheckTemp
        LDR.N    R0,??DataTable1
        LDR.N    R1,??DataTable1
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable1
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR.N    R1,??DataTable1
        STR      R0,[R1, #+0]
        ADDS     R4,R4,#+1
        B.N      ??TempCalibration_0
??TempCalibration_1:
        MOVS     R0,#+0
        MOVS     R4,R0
??TempCalibration_2:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+100
        BCS.N    ??TempCalibration_3
        BL       CheckTemp
        LDR.N    R0,??DataTable1
        LDR.N    R1,??DataTable1
        LDR      R1,[R1, #+0]
        STR      R1,[R0, #+0]
        LDR.N    R0,??DataTable1
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR.N    R1,??DataTable1
        STR      R0,[R1, #+0]
        ADDS     R4,R4,#+1
        B.N      ??TempCalibration_2
??TempCalibration_3:
        LDR.N    R0,??DataTable1_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        POP      {R4,PC}          ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     convertV

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     ConvertData

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     TempMonitorting

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
// 2 796 bytes in section .text
// 
// 2 796 bytes of CODE memory
//
//Errors: none
//Warnings: 2
