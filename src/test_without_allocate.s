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
   li tmp, 8
   li tmp2, 999
   mul array_size, tmp, tmp2
   li tmp3, 4
   add alloca_size, tmp3, array_size
   mv a0, alloca_size
   call __built_in_malloc
   mv function_call_inst, a0
   mv bit_cast_inst, function_call_inst
   li tmp4, 999
   sw tmp4, 0(bit_cast_inst)
   li tmp6, 1
   li tmp7, 4
   mul tmp5, tmp6, tmp7
   add get_element_ptr_inst, tmp5, bit_cast_inst
   mv arr_head, get_element_ptr_inst
   li tmp9, 999
   li tmp10, 4
   mul tmp8, tmp9, tmp10
   add arr_tail, tmp8, arr_head
   mv arr_cur_ptr, arr_head
   j .main.while_condition
.main.while_condition:
   mv tmp11, arr_cur_ptr
   xor tmp12, tmp11, arr_tail
   sltiu reach_end, tmp12, 1
   beq tmp11, arr_tail, .main.while_exit
   j .main.while_repeat
.main.while_repeat:
   li tmp14, 0
   li tmp15, 4
   mul tmp13, tmp14, tmp15
   add get_element_ptr_inst2, tmp13, tmp11
   li tmp16, 0
   sw tmp16, 0(get_element_ptr_inst2)
   li tmp18, 1
   li tmp19, 4
   mul tmp17, tmp18, tmp19
   add get_element_ptr_inst3, tmp17, tmp11
   mv arr_cur_ptr, get_element_ptr_inst3
   j .main.while_condition
.main.while_exit:
   mv new_result, arr_head
   mv tmp20, new_result
   mv a, tmp20
   mv tmp21, a
   li tmp23, 1
   li tmp24, 4
   mul tmp22, tmp23, tmp24
   add get_element_ptr_inst4, tmp22, tmp21
   li tmp25, 4
   li tmp26, 10
   mul array_size2, tmp25, tmp26
   li tmp27, 4
   add alloca_size2, tmp27, array_size2
   mv a0, alloca_size2
   call __built_in_malloc
   mv function_call_inst2, a0
   mv bit_cast_inst2, function_call_inst2
   li tmp28, 10
   sw tmp28, 0(bit_cast_inst2)
   li tmp30, 1
   li tmp31, 4
   mul tmp29, tmp30, tmp31
   add get_element_ptr_inst5, tmp29, bit_cast_inst2
   mv arr_head2, get_element_ptr_inst5
   mv new_result2, arr_head2
   mv tmp32, new_result2
   sw tmp32, 0(get_element_ptr_inst4)
   mv tmp33, a
   li tmp35, 1
   li tmp36, 4
   mul tmp34, tmp35, tmp36
   add get_element_ptr_inst6, tmp34, tmp33
   lw load_inst, 0(get_element_ptr_inst6)
   li tmp38, 1
   li tmp39, 4
   mul tmp37, tmp38, tmp39
   add get_element_ptr_inst7, tmp37, load_inst
   li tmp40, 1
   sw tmp40, 0(get_element_ptr_inst7)
   mv tmp41, a
   li tmp43, 1
   li tmp44, 4
   mul tmp42, tmp43, tmp44
   add get_element_ptr_inst8, tmp42, tmp41
   lw load_inst2, 0(get_element_ptr_inst8)
   li tmp46, 1
   li tmp47, 4
   mul tmp45, tmp46, tmp47
   add get_element_ptr_inst9, tmp45, load_inst2
   lw load_inst3, 0(get_element_ptr_inst9)
   mv a0, load_inst3
   call printlnInt
   j .main.mainexit
.main.mainexit:
   li tmp48, 0
   mv a0, tmp48
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
   mv tmp49, allo
   mv a0, tmp49
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
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
