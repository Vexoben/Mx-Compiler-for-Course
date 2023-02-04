	.text
	.file	"test.mx"
.globl   abs
   .p2align   2
   .type   abs,@function
abs:
.abs.absentry:
   mv virtual_ra, ra
   mv virtual_s0, s0
   mv virtual_s1, s1
   mv virtual_s2, s2
   mv virtual_s3, s3
   mv virtual_s4, s4
   mv virtual_s5, s5
   mv virtual_s6, s6
   mv virtual_s7, s7
   mv virtual_s8, s8
   mv virtual_s9, s9
   mv virtual_s10, s10
   mv virtual_s11, s11
   mv abs_c, a0
   j .abs.first_block__abs
.abs.first_block__abs:
   mv c, abs_c
   li tmp2, 0
   slt tmp, tmp2, c
   li tmp3, 0
   bgt c, tmp3, .abs.if_true
   j .abs.if_false
.abs.if_true:
   mv a0, c
   mv ra, virtual_ra
   mv s0, virtual_s0
   mv s1, virtual_s1
   mv s2, virtual_s2
   mv s3, virtual_s3
   mv s4, virtual_s4
   mv s5, virtual_s5
   mv s6, virtual_s6
   mv s7, virtual_s7
   mv s8, virtual_s8
   mv s9, virtual_s9
   mv s10, virtual_s10
   mv s11, virtual_s11
   ret
   j .abs.if_exit
.abs.if_false:
   j .abs.if_exit
.abs.if_exit:
   li tmp4, 0
   sub sub_inst, tmp4, c
   mv a0, sub_inst
   mv ra, virtual_ra
   mv s0, virtual_s0
   mv s1, virtual_s1
   mv s2, virtual_s2
   mv s3, virtual_s3
   mv s4, virtual_s4
   mv s5, virtual_s5
   mv s6, virtual_s6
   mv s7, virtual_s7
   mv s8, virtual_s8
   mv s9, virtual_s9
   mv s10, virtual_s10
   mv s11, virtual_s11
   ret
   j .abs.absexit
.abs.absexit:
   mv a0, allo
   mv ra, virtual_ra
   mv s0, virtual_s0
   mv s1, virtual_s1
   mv s2, virtual_s2
   mv s3, virtual_s3
   mv s4, virtual_s4
   mv s5, virtual_s5
   mv s6, virtual_s6
   mv s7, virtual_s7
   mv s8, virtual_s8
   mv s9, virtual_s9
   mv s10, virtual_s10
   mv s11, virtual_s11
   ret
.Lfunc_end0:
   .size   abs, .Lfunc_end0-abs
.globl   main
   .p2align   2
   .type   main,@function
main:
.main.mainentry:
   mv virtual_ra2, ra
   mv virtual_s02, s0
   mv virtual_s12, s1
   mv virtual_s22, s2
   mv virtual_s32, s3
   mv virtual_s42, s4
   mv virtual_s52, s5
   mv virtual_s62, s6
   mv virtual_s72, s7
   mv virtual_s82, s8
   mv virtual_s92, s9
   mv virtual_s102, s10
   mv virtual_s112, s11
   call __init_function__
   j .main.first_block__main
.main.first_block__main:
   j .main.for_init
.main.for_init:
   la i_addr, i
   lw load_inst, 0(i_addr)
   la i_addr2, i
   li tmp5, 0
   sw tmp5, 0(i_addr2)
   j .main.for_condition
.main.for_condition:
   la i_addr3, i
   lw load_inst2, 0(i_addr3)
   li tmp7, 5
   slt tmp6, load_inst2, tmp7
   li tmp8, 5
   blt load_inst2, tmp8, .main.for_repeat
   j .main.for_exit
.main.for_step:
   la i_addr4, i
   lw load_inst3, 0(i_addr4)
   li tmp9, 1
   add add_inst, tmp9, load_inst3
   la i_addr5, i
   sw add_inst, 0(i_addr5)
   j .main.for_condition
.main.for_repeat:
   j .main.for_init2
.main.for_exit:
   la r_addr, r
   lw load_inst4, 0(r_addr)
   li tmp11, 2
   sub tmp10, tmp11, load_inst4
   mv a0, tmp10
   call abs
   mv function_call_inst, a0
   la c_addr, c
   lw load_inst5, 0(c_addr)
   li tmp13, 2
   sub tmp12, tmp13, load_inst5
   mv a0, tmp12
   call abs
   mv function_call_inst2, a0
   add tmp14, function_call_inst, function_call_inst2
   mv a0, tmp14
   call printInt
   li tmp15, 0
   mv a0, tmp15
   mv ra, virtual_ra2
   mv s0, virtual_s02
   mv s1, virtual_s12
   mv s2, virtual_s22
   mv s3, virtual_s32
   mv s4, virtual_s42
   mv s5, virtual_s52
   mv s6, virtual_s62
   mv s7, virtual_s72
   mv s8, virtual_s82
   mv s9, virtual_s92
   mv s10, virtual_s102
   mv s11, virtual_s112
   ret
   j .main.mainexit
.main.for_init2:
   la j_addr, j
   lw load_inst6, 0(j_addr)
   la j_addr2, j
   li tmp16, 0
   sw tmp16, 0(j_addr2)
   j .main.for_condition2
.main.for_condition2:
   la j_addr3, j
   lw load_inst7, 0(j_addr3)
   li tmp18, 5
   slt tmp17, load_inst7, tmp18
   li tmp19, 5
   blt load_inst7, tmp19, .main.for_repeat2
   j .main.for_exit2
.main.for_step2:
   la j_addr4, j
   lw load_inst8, 0(j_addr4)
   li tmp20, 1
   add add_inst2, tmp20, load_inst8
   la j_addr5, j
   sw add_inst2, 0(j_addr5)
   j .main.for_condition2
.main.for_repeat2:
   la n_addr, n
   lw load_inst9, 0(n_addr)
   call getInt
   mv function_call_inst3, a0
   la n_addr2, n
   sw function_call_inst3, 0(n_addr2)
   la n_addr3, n
   lw load_inst10, 0(n_addr3)
   li tmp22, 1
   xor tmp23, load_inst10, tmp22
   sltiu tmp21, tmp23, 1
   li tmp24, 1
   beq load_inst10, tmp24, .main.if_true2
   j .main.if_false2
.main.for_exit2:
   j .main.for_step
.main.if_true2:
   la r_addr2, r
   lw load_inst11, 0(r_addr2)
   la i_addr6, i
   lw load_inst12, 0(i_addr6)
   la r_addr3, r
   sw load_inst12, 0(r_addr3)
   la c_addr2, c
   lw load_inst13, 0(c_addr2)
   la j_addr6, j
   lw load_inst14, 0(j_addr6)
   la c_addr3, c
   sw load_inst14, 0(c_addr3)
   j .main.if_exit2
.main.if_false2:
   j .main.if_exit2
.main.if_exit2:
   j .main.for_step2
.main.mainexit:
   li tmp25, 0
   mv a0, tmp25
   mv ra, virtual_ra2
   mv s0, virtual_s02
   mv s1, virtual_s12
   mv s2, virtual_s22
   mv s3, virtual_s32
   mv s4, virtual_s42
   mv s5, virtual_s52
   mv s6, virtual_s62
   mv s7, virtual_s72
   mv s8, virtual_s82
   mv s9, virtual_s92
   mv s10, virtual_s102
   mv s11, virtual_s112
   ret
   mv a0, allo2
   mv ra, virtual_ra2
   mv s0, virtual_s02
   mv s1, virtual_s12
   mv s2, virtual_s22
   mv s3, virtual_s32
   mv s4, virtual_s42
   mv s5, virtual_s52
   mv s6, virtual_s62
   mv s7, virtual_s72
   mv s8, virtual_s82
   mv s9, virtual_s92
   mv s10, virtual_s102
   mv s11, virtual_s112
   ret
.Lfunc_end1:
   .size   main, .Lfunc_end1-main
.globl   __init_function__
   .p2align   2
   .type   __init_function__,@function
__init_function__:
.__init_function__.__init_function__entry:
   mv virtual_ra3, ra
   mv virtual_s03, s0
   mv virtual_s13, s1
   mv virtual_s23, s2
   mv virtual_s33, s3
   mv virtual_s43, s4
   mv virtual_s53, s5
   mv virtual_s63, s6
   mv virtual_s73, s7
   mv virtual_s83, s8
   mv virtual_s93, s9
   mv virtual_s103, s10
   mv virtual_s113, s11
   la n_addr4, n
   li tmp26, 0
   sw tmp26, 0(n_addr4)
   la r_addr4, r
   li tmp27, 0
   sw tmp27, 0(r_addr4)
   la c_addr4, c
   li tmp28, 0
   sw tmp28, 0(c_addr4)
   la i_addr7, i
   li tmp29, 0
   sw tmp29, 0(i_addr7)
   la j_addr7, j
   li tmp30, 0
   sw tmp30, 0(j_addr7)
   j .__init_function__.__init_function__exit
.__init_function__.__init_function__exit:
   mv ra, virtual_ra3
   mv s0, virtual_s03
   mv s1, virtual_s13
   mv s2, virtual_s23
   mv s3, virtual_s33
   mv s4, virtual_s43
   mv s5, virtual_s53
   mv s6, virtual_s63
   mv s7, virtual_s73
   mv s8, virtual_s83
   mv s9, virtual_s93
   mv s10, virtual_s103
   mv s11, virtual_s113
   ret
.Lfunc_end2:
   .size   __init_function__, .Lfunc_end2-__init_function__
   .type   n,@object
   .section   .rodata.str1.1,"aMS",@progbits,1
   .globl   n
   .p2align   2
n:
   .word   0
   .size   .n, 4
   .type   r,@object
   .globl   r
   .p2align   2
r:
   .word   0
   .size   .r, 4
   .type   c,@object
   .globl   c
   .p2align   2
c:
   .word   0
   .size   .c, 4
   .type   i,@object
   .globl   i
   .p2align   2
i:
   .word   0
   .size   .i, 4
   .type   j,@object
   .globl   j
   .p2align   2
j:
   .word   0
   .size   .j, 4
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
