	.text
	.file	"test.mx"
.globl   main
   .p2align   2
   .type   main,@function
main:
.main.mainentry:
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
   call __init_function__
   j .main.first_block__main
.main.first_block__main:
   li tmp, 4
   mv a0, tmp
   call __built_in_malloc
   mv function_call_inst, a0
   mv bit_cast_inst, function_call_inst
   mv a0, bit_cast_inst
   call __constructor__older
   mv alloca_inst, bit_cast_inst
   mv tmp2, alloca_inst
   mv mrJiang, tmp2
   mv tmp3, mrJiang
   mv a0, tmp3
   call __in_class__older_solveAge
   mv tmp4, mrJiang
   li tmp5, 0
   add get_element_ptr_inst, tmp4, tmp5
   lw load_inst, 0(get_element_ptr_inst)
   li tmp7, 10000
   slt tmp6, tmp7, load_inst
   li tmp8, 10000
   bgt load_inst, tmp8, .main.if_true2
   j .main.if_false2
.main.if_true2:
   li tmp9, 0
   la str.addr, .const_str
   add get_element_ptr_inst2, str.addr, tmp9
   mv a0, get_element_ptr_inst2
   call println
   j .main.if_exit2
.main.if_false2:
   j .main.if_exit2
.main.if_exit2:
   li tmp10, 0
   mv a0, tmp10
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
   j .main.mainexit
.main.mainexit:
   li tmp11, 0
   mv a0, tmp11
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
   mv tmp12, allo
   mv a0, tmp12
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
   .size   main, .Lfunc_end0-main
.globl   __init_function__
   .p2align   2
   .type   __init_function__,@function
__init_function__:
.__init_function__.__init_function__entry:
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
   j .__init_function__.__init_function__exit
.__init_function__.__init_function__exit:
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
   .size   __init_function__, .Lfunc_end1-__init_function__
.globl   __in_class__older_solveAge
   .p2align   2
   .type   __in_class__older_solveAge,@function
__in_class__older_solveAge:
.__in_class__older_solveAge.__in_class__older_solveAgeentry:
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
   mv __in_class__older_solveAge_this, a0
   mv this_alloca, __in_class__older_solveAge_this
   j .__in_class__older_solveAge.first_block____in_class__older_solveAge
.__in_class__older_solveAge.first_block____in_class__older_solveAge:
   j .__in_class__older_solveAge.for_init
.__in_class__older_solveAge.for_init:
   mv tmp13, i
   li tmp14, 1
   mv i, tmp14
   j .__in_class__older_solveAge.for_condition
.__in_class__older_solveAge.for_condition:
   mv tmp15, i
   li tmp17, 100
   slt tmp16, tmp15, tmp17
   li tmp18, 100
   blt tmp15, tmp18, .__in_class__older_solveAge.for_repeat
   j .__in_class__older_solveAge.for_exit
.__in_class__older_solveAge.for_step:
   mv tmp19, i
   li tmp20, 1
   add add_inst, tmp20, tmp19
   mv i, add_inst
   j .__in_class__older_solveAge.for_condition
.__in_class__older_solveAge.for_repeat:
   j .__in_class__older_solveAge.for_init2
.__in_class__older_solveAge.for_exit:
   j .__in_class__older_solveAge.__in_class__older_solveAgeexit
.__in_class__older_solveAge.for_init2:
   mv tmp21, j
   mv tmp22, i
   li tmp24, 1
   add tmp23, tmp22, tmp24
   mv j, tmp23
   j .__in_class__older_solveAge.for_condition2
.__in_class__older_solveAge.for_condition2:
   mv tmp25, j
   li tmp27, 100
   slt tmp26, tmp25, tmp27
   li tmp28, 100
   blt tmp25, tmp28, .__in_class__older_solveAge.for_repeat2
   j .__in_class__older_solveAge.for_exit2
.__in_class__older_solveAge.for_step2:
   mv tmp29, j
   li tmp30, 1
   add add_inst2, tmp30, tmp29
   mv j, add_inst2
   j .__in_class__older_solveAge.for_condition2
.__in_class__older_solveAge.for_repeat2:
   j .__in_class__older_solveAge.for_init3
.__in_class__older_solveAge.for_exit2:
   j .__in_class__older_solveAge.for_step
.__in_class__older_solveAge.for_init3:
   mv tmp31, k
   mv tmp32, j
   li tmp34, 1
   add tmp33, tmp32, tmp34
   mv k, tmp33
   j .__in_class__older_solveAge.for_condition3
.__in_class__older_solveAge.for_condition3:
   mv tmp35, k
   li tmp37, 100
   slt tmp36, tmp35, tmp37
   li tmp38, 100
   blt tmp35, tmp38, .__in_class__older_solveAge.for_repeat3
   j .__in_class__older_solveAge.for_exit3
.__in_class__older_solveAge.for_step3:
   mv tmp39, k
   li tmp40, 1
   add add_inst3, tmp40, tmp39
   mv k, add_inst3
   j .__in_class__older_solveAge.for_condition3
.__in_class__older_solveAge.for_repeat3:
   mv tmp41, i
   mv tmp42, i
   sub tmp43, tmp41, tmp42
   mv tmp44, i
   add tmp45, tmp43, tmp44
   mv tmp46, j
   add tmp47, tmp45, tmp46
   mv tmp48, j
   sub tmp49, tmp47, tmp48
   mv tmp50, j
   add tmp51, tmp49, tmp50
   mv tmp52, k
   add tmp53, tmp51, tmp52
   mv tmp54, k
   sub tmp55, tmp53, tmp54
   mv tmp56, k
   add tmp57, tmp55, tmp56
   mv tmp58, i
   li tmp60, 100
   mul tmp59, tmp60, tmp58
   mv tmp61, j
   li tmp63, 10
   mul tmp62, tmp63, tmp61
   add tmp64, tmp59, tmp62
   mv tmp65, k
   add tmp66, tmp64, tmp65
   mul tmp67, tmp57, tmp66
   li tmp69, 1926
   rem tmp68, tmp67, tmp69
   li tmp71, 0
   xor tmp72, tmp68, tmp71
   sltiu tmp70, tmp72, 1
   li tmp73, 0
   beq tmp68, tmp73, .__in_class__older_solveAge.if_true
   j .__in_class__older_solveAge.if_false
.__in_class__older_solveAge.for_exit3:
   j .__in_class__older_solveAge.for_step2
.__in_class__older_solveAge.if_true:
   mv tmp74, this_alloca
   li tmp75, 0
   add get_element_ptr_inst3, tmp74, tmp75
   mv tmp76, i
   mv tmp77, i
   sub tmp78, tmp76, tmp77
   mv tmp79, i
   add tmp80, tmp78, tmp79
   mv tmp81, j
   add tmp82, tmp80, tmp81
   mv tmp83, j
   sub tmp84, tmp82, tmp83
   mv tmp85, j
   add tmp86, tmp84, tmp85
   mv tmp87, k
   add tmp88, tmp86, tmp87
   mv tmp89, k
   sub tmp90, tmp88, tmp89
   mv tmp91, k
   add tmp92, tmp90, tmp91
   mv tmp93, i
   li tmp95, 100
   mul tmp94, tmp95, tmp93
   mv tmp96, j
   li tmp98, 10
   mul tmp97, tmp98, tmp96
   add tmp99, tmp94, tmp97
   mv tmp100, k
   add tmp101, tmp99, tmp100
   mul tmp102, tmp92, tmp101
   sw tmp102, 0(get_element_ptr_inst3)
   j .__in_class__older_solveAge.if_exit
.__in_class__older_solveAge.if_false:
   j .__in_class__older_solveAge.if_exit
.__in_class__older_solveAge.if_exit:
   j .__in_class__older_solveAge.for_step3
.__in_class__older_solveAge.__in_class__older_solveAgeexit:
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
   .size   __in_class__older_solveAge, .Lfunc_end2-__in_class__older_solveAge
.globl   __constructor__older
   .p2align   2
   .type   __constructor__older,@function
__constructor__older:
.__constructor__older.__constructor__olderentry:
   mv virtual_ra4, ra
   mv virtual_s04, s0
   mv virtual_s14, s1
   mv virtual_s24, s2
   mv virtual_s34, s3
   mv virtual_s44, s4
   mv virtual_s54, s5
   mv virtual_s64, s6
   mv virtual_s74, s7
   mv virtual_s84, s8
   mv virtual_s94, s9
   mv virtual_s104, s10
   mv virtual_s114, s11
   mv __constructor__older_this, a0
   mv this_alloca2, __constructor__older_this
   mv tmp103, this_alloca2
   j .__constructor__older.first_block____constructor__older
.__constructor__older.first_block____constructor__older:
   j .__constructor__older.__constructor__olderexit
.__constructor__older.__constructor__olderexit:
   mv ra, virtual_ra4
   mv s0, virtual_s04
   mv s1, virtual_s14
   mv s2, virtual_s24
   mv s3, virtual_s34
   mv s4, virtual_s44
   mv s5, virtual_s54
   mv s6, virtual_s64
   mv s7, virtual_s74
   mv s8, virtual_s84
   mv s9, virtual_s94
   mv s10, virtual_s104
   mv s11, virtual_s114
   ret
.Lfunc_end3:
   .size   __constructor__older, .Lfunc_end3-__constructor__older
   .type   .const_str,@object
.section   .rodata.str1.1,"aMS",@progbits,1
.const_str:
   .asciz   "eternal!"
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
