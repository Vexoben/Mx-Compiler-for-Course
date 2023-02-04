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
   li tmp, 0
   mv point, tmp
   la MAXK_addr, MAXK
   lw load_inst, 0(MAXK_addr)
   li tmp2, 4
   mul array_size, tmp2, load_inst
   li tmp3, 4
   add alloca_size, tmp3, array_size
   mv a0, alloca_size
   call __built_in_malloc
   mv function_call_inst, a0
   mv bit_cast_inst, function_call_inst
   sw load_inst, 0(bit_cast_inst)
   li tmp5, 1
   li tmp6, 4
   mul tmp4, tmp5, tmp6
   add get_element_ptr_inst, tmp4, bit_cast_inst
   mv arr_head, get_element_ptr_inst
   mv new_result, arr_head
   mv tmp7, new_result
   mv primes, tmp7
   la MAXK_addr2, MAXK
   lw load_inst2, 0(MAXK_addr2)
   li tmp8, 4
   mul array_size2, tmp8, load_inst2
   li tmp9, 4
   add alloca_size2, tmp9, array_size2
   mv a0, alloca_size2
   call __built_in_malloc
   mv function_call_inst2, a0
   mv bit_cast_inst2, function_call_inst2
   sw load_inst2, 0(bit_cast_inst2)
   li tmp11, 1
   li tmp12, 4
   mul tmp10, tmp11, tmp12
   add get_element_ptr_inst2, tmp10, bit_cast_inst2
   mv arr_head2, get_element_ptr_inst2
   mv new_result2, arr_head2
   mv tmp13, new_result2
   mv pindex, tmp13
   la MAXN_addr, MAXN
   lw load_inst3, 0(MAXN_addr)
   li tmp14, 4
   mul array_size3, tmp14, load_inst3
   li tmp15, 4
   add alloca_size3, tmp15, array_size3
   mv a0, alloca_size3
   call __built_in_malloc
   mv function_call_inst3, a0
   mv bit_cast_inst3, function_call_inst3
   sw load_inst3, 0(bit_cast_inst3)
   li tmp17, 1
   li tmp18, 4
   mul tmp16, tmp17, tmp18
   add get_element_ptr_inst3, tmp16, bit_cast_inst3
   mv arr_head3, get_element_ptr_inst3
   mv new_result3, arr_head3
   mv tmp19, new_result3
   mv ans, tmp19
   mv tmp20, K
   call getInt
   mv function_call_inst4, a0
   mv K, function_call_inst4
   mv tmp21, N
   call getInt
   mv function_call_inst5, a0
   mv N, function_call_inst5
   j .main.for_init
.main.for_init:
   mv tmp22, i
   li tmp23, 0
   mv i, tmp23
   j .main.for_condition
.main.for_condition:
   mv tmp24, i
   mv tmp25, K
   slt tmp26, tmp24, tmp25
   blt tmp24, tmp25, .main.for_repeat
   j .main.for_exit
.main.for_step:
   mv tmp27, i
   li tmp28, 1
   add add_inst, tmp28, tmp27
   mv i, add_inst
   j .main.for_condition
.main.for_repeat:
   mv tmp29, i
   mv tmp30, primes
   li tmp32, 4
   mul tmp31, tmp29, tmp32
   add get_element_ptr_inst4, tmp31, tmp30
   call getInt
   mv function_call_inst6, a0
   sw function_call_inst6, 0(get_element_ptr_inst4)
   mv tmp33, i
   mv tmp34, pindex
   li tmp36, 4
   mul tmp35, tmp33, tmp36
   add get_element_ptr_inst5, tmp35, tmp34
   li tmp37, 0
   sw tmp37, 0(get_element_ptr_inst5)
   j .main.for_step
.main.for_exit:
   mv tmp38, ans
   li tmp40, 0
   li tmp41, 4
   mul tmp39, tmp40, tmp41
   add get_element_ptr_inst6, tmp39, tmp38
   li tmp42, 1
   sw tmp42, 0(get_element_ptr_inst6)
   j .main.while_condition
.main.while_condition:
   mv tmp43, point
   mv tmp44, N
   slt tmp46, tmp44, tmp43
   xori tmp45, tmp46, 1
   ble tmp43, tmp44, .main.while_repeat
   j .main.while_exit
.main.while_repeat:
   mv tmp47, MIN
   li tmp48, 2139062143
   mv MIN, tmp48
   j .main.for_init2
.main.while_exit:
   mv tmp49, N
   mv tmp50, ans
   li tmp52, 4
   mul tmp51, tmp49, tmp52
   add get_element_ptr_inst7, tmp51, tmp50
   lw load_inst4, 0(get_element_ptr_inst7)
   mv a0, load_inst4
   call toString
   mv function_call_inst7, a0
   mv allo_inst, function_call_inst7
   mv tmp53, allo_inst
   mv a0, tmp53
   call print
   li tmp54, 0
   mv a0, tmp54
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
.main.for_init2:
   mv tmp55, i
   li tmp56, 0
   mv i, tmp56
   j .main.for_condition2
.main.for_condition2:
   mv tmp57, i
   mv tmp58, K
   slt tmp59, tmp57, tmp58
   blt tmp57, tmp58, .main.for_repeat2
   j .main.for_exit2
.main.for_step2:
   mv tmp60, i
   li tmp61, 1
   add add_inst2, tmp61, tmp60
   mv i, add_inst2
   j .main.for_condition2
.main.for_repeat2:
   j .main.while_condition2
.main.for_exit2:
   mv tmp62, point
   li tmp63, 1
   add add_inst3, tmp63, tmp62
   mv point, add_inst3
   mv tmp64, ans
   li tmp66, 4
   mul tmp65, add_inst3, tmp66
   add get_element_ptr_inst8, tmp65, tmp64
   mv tmp67, MIN
   sw tmp67, 0(get_element_ptr_inst8)
   j .main.while_condition
.main.while_condition2:
   mv tmp68, point
   mv tmp69, ans
   li tmp71, 4
   mul tmp70, tmp68, tmp71
   add get_element_ptr_inst9, tmp70, tmp69
   mv tmp72, i
   mv tmp73, primes
   li tmp75, 4
   mul tmp74, tmp72, tmp75
   add get_element_ptr_inst10, tmp74, tmp73
   mv tmp76, i
   mv tmp77, pindex
   li tmp79, 4
   mul tmp78, tmp76, tmp79
   add get_element_ptr_inst11, tmp78, tmp77
   lw load_inst5, 0(get_element_ptr_inst11)
   mv tmp80, ans
   li tmp82, 4
   mul tmp81, load_inst5, tmp82
   add get_element_ptr_inst12, tmp81, tmp80
   lw load_inst6, 0(get_element_ptr_inst10)
   lw load_inst7, 0(get_element_ptr_inst12)
   mul tmp83, load_inst6, load_inst7
   lw load_inst8, 0(get_element_ptr_inst9)
   slt tmp85, load_inst8, tmp83
   xori tmp84, tmp85, 1
   bge load_inst8, tmp83, .main.while_repeat2
   j .main.while_exit2
.main.while_repeat2:
   mv tmp86, i
   mv tmp87, pindex
   li tmp89, 4
   mul tmp88, tmp86, tmp89
   add get_element_ptr_inst13, tmp88, tmp87
   lw load_inst9, 0(get_element_ptr_inst13)
   li tmp90, 1
   add add_inst4, tmp90, load_inst9
   sw add_inst4, 0(get_element_ptr_inst13)
   j .main.while_condition2
.main.while_exit2:
   mv tmp91, i
   mv tmp92, primes
   li tmp94, 4
   mul tmp93, tmp91, tmp94
   add get_element_ptr_inst14, tmp93, tmp92
   mv tmp95, i
   mv tmp96, pindex
   li tmp98, 4
   mul tmp97, tmp95, tmp98
   add get_element_ptr_inst15, tmp97, tmp96
   lw load_inst10, 0(get_element_ptr_inst15)
   mv tmp99, ans
   li tmp101, 4
   mul tmp100, load_inst10, tmp101
   add get_element_ptr_inst16, tmp100, tmp99
   lw load_inst11, 0(get_element_ptr_inst14)
   lw load_inst12, 0(get_element_ptr_inst16)
   mul tmp102, load_inst11, load_inst12
   mv tmp103, MIN
   slt tmp104, tmp102, tmp103
   blt tmp102, tmp103, .main.if_true
   j .main.if_false
.main.if_true:
   mv tmp105, MIN
   mv tmp106, i
   mv tmp107, primes
   li tmp109, 4
   mul tmp108, tmp106, tmp109
   add get_element_ptr_inst17, tmp108, tmp107
   mv tmp110, i
   mv tmp111, pindex
   li tmp113, 4
   mul tmp112, tmp110, tmp113
   add get_element_ptr_inst18, tmp112, tmp111
   lw load_inst13, 0(get_element_ptr_inst18)
   mv tmp114, ans
   li tmp116, 4
   mul tmp115, load_inst13, tmp116
   add get_element_ptr_inst19, tmp115, tmp114
   lw load_inst14, 0(get_element_ptr_inst17)
   lw load_inst15, 0(get_element_ptr_inst19)
   mul tmp117, load_inst14, load_inst15
   mv MIN, tmp117
   mv tmp118, k
   mv tmp119, i
   mv k, tmp119
   j .main.if_exit
.main.if_false:
   j .main.if_exit
.main.if_exit:
   j .main.for_step2
.main.mainexit:
   li tmp120, 0
   mv a0, tmp120
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
   mv tmp121, allo
   mv a0, tmp121
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
   la MAXK_addr3, MAXK
   li tmp122, 105
   sw tmp122, 0(MAXK_addr3)
   la MAXN_addr2, MAXN
   li tmp123, 100005
   sw tmp123, 0(MAXN_addr2)
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
   .type   MAXK,@object
   .section   .rodata.str1.1,"aMS",@progbits,1
   .globl   MAXK
   .p2align   2
MAXK:
   .word   0
   .size   .MAXK, 4
   .type   MAXN,@object
   .globl   MAXN
   .p2align   2
MAXN:
   .word   0
   .size   .MAXN, 4
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
