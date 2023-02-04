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
   la a_addr, a
   lw load_inst, 0(a_addr)
   li tmp2, 0
   li tmp3, 4
   mul tmp, tmp2, tmp3
   add get_element_ptr_inst, tmp, load_inst
   li tmp4, 4
   li tmp5, 10
   mul array_size, tmp4, tmp5
   li tmp6, 4
   add alloca_size, tmp6, array_size
   mv a0, alloca_size
   call __built_in_malloc
   mv function_call_inst, a0
   mv bit_cast_inst, function_call_inst
   li tmp7, 10
   sw tmp7, 0(bit_cast_inst)
   li tmp9, 1
   li tmp10, 4
   mul tmp8, tmp9, tmp10
   add get_element_ptr_inst2, tmp8, bit_cast_inst
   mv arr_head, get_element_ptr_inst2
   mv new_result, arr_head
   mv tmp11, new_result
   sw tmp11, 0(get_element_ptr_inst)
   la a_addr2, a
   lw load_inst2, 0(a_addr2)
   li tmp13, 0
   li tmp14, 4
   mul tmp12, tmp13, tmp14
   add get_element_ptr_inst3, tmp12, load_inst2
   lw load_inst3, 0(get_element_ptr_inst3)
   li tmp16, 0
   li tmp17, 4
   mul tmp15, tmp16, tmp17
   add get_element_ptr_inst4, tmp15, load_inst3
   li tmp18, 1
   sw tmp18, 0(get_element_ptr_inst4)
   la a_addr3, a
   lw load_inst4, 0(a_addr3)
   li tmp20, 0
   li tmp21, 4
   mul tmp19, tmp20, tmp21
   add get_element_ptr_inst5, tmp19, load_inst4
   lw load_inst5, 0(get_element_ptr_inst5)
   li tmp23, 0
   li tmp24, 4
   mul tmp22, tmp23, tmp24
   add get_element_ptr_inst6, tmp22, load_inst5
   lw load_inst6, 0(get_element_ptr_inst6)
   mv a0, load_inst6
   call printlnInt
   li tmp25, 0
   mv a0, tmp25
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
   li tmp26, 0
   mv a0, tmp26
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
   mv tmp27, allo
   mv a0, tmp27
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
   li tmp28, 8
   li tmp29, 10
   mul array_size2, tmp28, tmp29
   li tmp30, 4
   add alloca_size2, tmp30, array_size2
   mv a0, alloca_size2
   call __built_in_malloc
   mv function_call_inst2, a0
   mv bit_cast_inst2, function_call_inst2
   li tmp31, 10
   sw tmp31, 0(bit_cast_inst2)
   li tmp33, 1
   li tmp34, 4
   mul tmp32, tmp33, tmp34
   add get_element_ptr_inst7, tmp32, bit_cast_inst2
   mv arr_head2, get_element_ptr_inst7
   li tmp36, 10
   li tmp37, 4
   mul tmp35, tmp36, tmp37
   add arr_tail, tmp35, arr_head2
   mv arr_cur_ptr, arr_head2
   j .__init_function__.while_condition
.__init_function__.while_condition:
   mv tmp38, arr_cur_ptr
   xor tmp39, tmp38, arr_tail
   sltiu reach_end, tmp39, 1
   beq tmp38, arr_tail, .__init_function__.while_exit
   j .__init_function__.while_repeat
.__init_function__.while_repeat:
   li tmp40, 0
   mv tmp38, tmp40
   li tmp42, 1
   li tmp43, 4
   mul tmp41, tmp42, tmp43
   add get_element_ptr_inst8, tmp41, tmp38
   mv arr_cur_ptr, get_element_ptr_inst8
   j .__init_function__.while_condition
.__init_function__.while_exit:
   mv new_result2, arr_head2
   mv tmp44, new_result2
   la a_addr4, a
   sw tmp44, 0(a_addr4)
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
   .type   a,@object
   .section   .rodata.str1.1,"aMS",@progbits,1
   .globl   a
   .p2align   2
a:
   .word   0
   .size   .a, 4
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
