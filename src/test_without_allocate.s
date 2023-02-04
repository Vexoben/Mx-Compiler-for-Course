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
   sw arr_head, 0(arr_cur_ptr)
   j .main.while_condition
.main.while_condition:
   sw arr_cur_ptr, 0(tmp11)
   xor tmp12, tmp11, arr_tail
   sltiu reach_end, tmp12, 1
   beq tmp11, arr_tail, .main.while_exit
   j .main.while_repeat
.main.while_repeat:
   li tmp13, 0
   sw tmp13, 0(tmp11)
   li tmp15, 1
   li tmp16, 4
   mul tmp14, tmp15, tmp16
   add get_element_ptr_inst2, tmp14, tmp11
   sw get_element_ptr_inst2, 0(arr_cur_ptr)
   j .main.while_condition
.main.while_exit:
   sw arr_head, 0(new_result)
   j .main.mainexit
.main.mainexit:
   li tmp17, 0
   mv a0, tmp17
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
   sw allo, 0(tmp18)
   mv a0, tmp18
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
