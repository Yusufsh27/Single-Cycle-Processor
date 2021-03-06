/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "//Mac/Dropbox/School/College/4.Senior/Spring Semester/CompE475/Spring 2017/HW2/MicroProccesor/InstructionMem.v";



static void Cont_32_0(char *t0)
{
    char t5[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    t1 = (t0 + 2800U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 1880);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t6 = (t0 + 1880);
    t7 = (t6 + 72U);
    t8 = *((char **)t7);
    t9 = (t0 + 1880);
    t10 = (t9 + 64U);
    t11 = *((char **)t10);
    t12 = (t0 + 1320U);
    t13 = *((char **)t12);
    xsi_vlog_generic_get_array_select_value(t5, 32, t4, t8, t11, 2, 1, t13, 6, 2);
    t12 = (t0 + 3200);
    t14 = (t12 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t5, 8);
    xsi_driver_vfirst_trans(t12, 0, 31);
    t18 = (t0 + 3120);
    *((int *)t18) = 1;

LAB1:    return;
}


extern void work_m_00000000002132959620_2133777247_init()
{
	static char *pe[] = {(void *)Cont_32_0};
	xsi_register_didat("work_m_00000000002132959620_2133777247", "isim/Top_TestBench_isim_beh.exe.sim/work/m_00000000002132959620_2133777247.didat");
	xsi_register_executes(pe);
}
