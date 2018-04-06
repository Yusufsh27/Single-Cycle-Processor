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
static const char *ng0 = "//Mac/Dropbox/School/College/4.Senior/Spring Semester/CompE475/Spring 2017/HW2/MicroProccesor/ALU.v";
static int ng1[] = {0, 0};
static int ng2[] = {1, 0};
static int ng3[] = {2, 0};
static int ng4[] = {4, 0};
static int ng5[] = {5, 0};
static int ng6[] = {6, 0};
static int ng7[] = {7, 0};
static unsigned int ng8[] = {7U, 7U};
static unsigned int ng9[] = {1U, 0U};
static unsigned int ng10[] = {0U, 0U};



static void Always_27_0(char *t0)
{
    char t10[8];
    char t17[8];
    char t18[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    char *t28;

LAB0:    t1 = (t0 + 2848U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 3168);
    *((int *)t2) = 1;
    t3 = (t0 + 2880);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(27, ng0);

LAB5:    xsi_set_current_line(28, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t4, 32);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 32);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 32);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 32);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 32);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 32);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 3, t2, 32);
    if (t6 == 1)
        goto LAB19;

LAB20:
LAB22:
LAB21:    xsi_set_current_line(36, ng0);

LAB37:    xsi_set_current_line(37, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB23:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t7 = ((char*)((ng1)));
    memset(t18, 0, 8);
    xsi_vlog_signed_equal(t18, 32, t4, 32, t7, 32);
    memset(t17, 0, 8);
    t8 = (t18 + 4);
    t11 = *((unsigned int *)t8);
    t12 = (~(t11));
    t13 = *((unsigned int *)t18);
    t14 = (t13 & t12);
    t15 = (t14 & 1U);
    if (t15 != 0)
        goto LAB38;

LAB39:    if (*((unsigned int *)t8) != 0)
        goto LAB40;

LAB41:    t21 = (t17 + 4);
    t16 = *((unsigned int *)t17);
    t19 = *((unsigned int *)t21);
    t20 = (t16 || t19);
    if (t20 > 0)
        goto LAB42;

LAB43:    t22 = *((unsigned int *)t17);
    t23 = (~(t22));
    t24 = *((unsigned int *)t21);
    t25 = (t23 || t24);
    if (t25 > 0)
        goto LAB44;

LAB45:    if (*((unsigned int *)t21) > 0)
        goto LAB46;

LAB47:    if (*((unsigned int *)t17) > 0)
        goto LAB48;

LAB49:    memcpy(t10, t27, 8);

LAB50:    t28 = (t0 + 1928);
    xsi_vlogvar_assign_value(t28, t10, 0, 0, 1);
    goto LAB2;

LAB7:    xsi_set_current_line(29, ng0);
    t7 = (t0 + 1208U);
    t8 = *((char **)t7);
    t7 = (t0 + 1368U);
    t9 = *((char **)t7);
    memset(t10, 0, 8);
    xsi_vlog_signed_add(t10, 32, t8, 32, t9, 32);
    t7 = (t0 + 1768);
    xsi_vlogvar_assign_value(t7, t10, 0, 0, 32);
    goto LAB23;

LAB9:    xsi_set_current_line(30, ng0);
    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    t3 = (t0 + 1368U);
    t7 = *((char **)t3);
    memset(t10, 0, 8);
    xsi_vlog_signed_minus(t10, 32, t4, 32, t7, 32);
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t10, 0, 0, 32);
    goto LAB23;

LAB11:    xsi_set_current_line(31, ng0);
    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    t3 = (t0 + 1368U);
    t7 = *((char **)t3);
    memset(t10, 0, 8);
    xsi_vlog_signed_bit_and(t10, 32, t4, 32, t7, 32);
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t10, 0, 0, 32);
    goto LAB23;

LAB13:    xsi_set_current_line(32, ng0);
    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    t3 = (t0 + 1368U);
    t7 = *((char **)t3);
    memset(t10, 0, 8);
    xsi_vlog_signed_bit_or(t10, 32, t4, 32, t7, 32);
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t10, 0, 0, 32);
    goto LAB23;

LAB15:    xsi_set_current_line(33, ng0);
    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    t3 = (t0 + 1368U);
    t7 = *((char **)t3);
    memset(t10, 0, 8);
    t3 = (t10 + 4);
    t8 = (t7 + 4);
    memcpy(t10, t7, 8);
    t11 = *((unsigned int *)t10);
    t12 = (~(t11));
    t13 = *((unsigned int *)t3);
    t14 = (t12 | t13);
    *((unsigned int *)t10) = t14;
    t15 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t15 & 4294967295U);
    t16 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t16 & 4294967295U);
    memset(t17, 0, 8);
    xsi_vlog_signed_bit_and(t17, 32, t4, 32, t10, 32);
    t9 = (t0 + 1768);
    xsi_vlogvar_assign_value(t9, t17, 0, 0, 32);
    goto LAB23;

LAB17:    xsi_set_current_line(34, ng0);
    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    t3 = (t0 + 1368U);
    t7 = *((char **)t3);
    memset(t10, 0, 8);
    t3 = (t10 + 4);
    t8 = (t7 + 4);
    memcpy(t10, t7, 8);
    t11 = *((unsigned int *)t10);
    t12 = (~(t11));
    t13 = *((unsigned int *)t3);
    t14 = (t12 | t13);
    *((unsigned int *)t10) = t14;
    t15 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t15 & 4294967295U);
    t16 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t16 & 4294967295U);
    memset(t17, 0, 8);
    xsi_vlog_signed_bit_or(t17, 32, t4, 32, t10, 32);
    t9 = (t0 + 1768);
    xsi_vlogvar_assign_value(t9, t17, 0, 0, 32);
    goto LAB23;

LAB19:    xsi_set_current_line(35, ng0);
    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    t3 = (t0 + 1368U);
    t7 = *((char **)t3);
    memset(t18, 0, 8);
    xsi_vlog_signed_less(t18, 32, t4, 32, t7, 32);
    memset(t17, 0, 8);
    t3 = (t18 + 4);
    t11 = *((unsigned int *)t3);
    t12 = (~(t11));
    t13 = *((unsigned int *)t18);
    t14 = (t13 & t12);
    t15 = (t14 & 1U);
    if (t15 != 0)
        goto LAB24;

LAB25:    if (*((unsigned int *)t3) != 0)
        goto LAB26;

LAB27:    t9 = (t17 + 4);
    t16 = *((unsigned int *)t17);
    t19 = *((unsigned int *)t9);
    t20 = (t16 || t19);
    if (t20 > 0)
        goto LAB28;

LAB29:    t22 = *((unsigned int *)t17);
    t23 = (~(t22));
    t24 = *((unsigned int *)t9);
    t25 = (t23 || t24);
    if (t25 > 0)
        goto LAB30;

LAB31:    if (*((unsigned int *)t9) > 0)
        goto LAB32;

LAB33:    if (*((unsigned int *)t17) > 0)
        goto LAB34;

LAB35:    memcpy(t10, t26, 8);

LAB36:    t27 = (t0 + 1768);
    xsi_vlogvar_assign_value(t27, t10, 0, 0, 32);
    goto LAB23;

LAB24:    *((unsigned int *)t17) = 1;
    goto LAB27;

LAB26:    t8 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB27;

LAB28:    t21 = ((char*)((ng2)));
    goto LAB29;

LAB30:    t26 = ((char*)((ng1)));
    goto LAB31;

LAB32:    xsi_vlog_unsigned_bit_combine(t10, 32, t21, 32, t26, 32);
    goto LAB36;

LAB34:    memcpy(t10, t21, 8);
    goto LAB36;

LAB38:    *((unsigned int *)t17) = 1;
    goto LAB41;

LAB40:    t9 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB41;

LAB42:    t26 = ((char*)((ng9)));
    goto LAB43;

LAB44:    t27 = ((char*)((ng10)));
    goto LAB45;

LAB46:    xsi_vlog_unsigned_bit_combine(t10, 1, t26, 1, t27, 1);
    goto LAB50;

LAB48:    memcpy(t10, t26, 8);
    goto LAB50;

}


extern void work_m_00000000003676265130_0886308060_init()
{
	static char *pe[] = {(void *)Always_27_0};
	xsi_register_didat("work_m_00000000003676265130_0886308060", "isim/Top_TestBench_isim_beh.exe.sim/work/m_00000000003676265130_0886308060.didat");
	xsi_register_executes(pe);
}
