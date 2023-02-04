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
   la m_addr, m
   lw load_inst, 0(m_addr)
   call getInt
   mv function_call_inst, a0
   la m_addr2, m
   sw function_call_inst, 0(m_addr2)
   la k_addr, k
   lw load_inst2, 0(k_addr)
   call getInt
   mv function_call_inst2, a0
   la k_addr2, k
   sw function_call_inst2, 0(k_addr2)
   j .main.for_init
.main.for_init:
   la i_addr, i
   lw load_inst3, 0(i_addr)
   la i_addr2, i
   li tmp, 0
   sw tmp, 0(i_addr2)
   j .main.for_condition
.main.for_condition:
   la i_addr3, i
   lw load_inst4, 0(i_addr3)
   la m_addr3, m
   lw load_inst5, 0(m_addr3)
   slt tmp2, load_inst4, load_inst5
   blt load_inst4, load_inst5, .main.for_repeat
   j .main.for_exit
.main.for_step:
   la i_addr4, i
   lw load_inst6, 0(i_addr4)
   li tmp3, 1
   add add_inst, tmp3, load_inst6
   la i_addr5, i
   sw add_inst, 0(i_addr5)
   j .main.for_condition
.main.for_repeat:
   la i_addr6, i
   lw load_inst7, 0(i_addr6)
   la a_addr, a
   lw load_inst8, 0(a_addr)
   li tmp5, 4
   mul tmp4, load_inst7, tmp5
   add get_element_ptr_inst, tmp4, load_inst8
   call getInt
   mv function_call_inst3, a0
   sw function_call_inst3, 0(get_element_ptr_inst)
   j .main.for_step
.main.for_exit:
   j .main.for_init2
.main.for_init2:
   la i_addr7, i
   lw load_inst9, 0(i_addr7)
   la i_addr8, i
   li tmp6, 0
   sw tmp6, 0(i_addr8)
   j .main.for_condition2
.main.for_condition2:
   la i_addr9, i
   lw load_inst10, 0(i_addr9)
   la a_addr2, a
   lw load_inst11, 0(a_addr2)
   li tmp8, 4
   mul tmp7, load_inst10, tmp8
   add get_element_ptr_inst2, tmp7, load_inst11
   la k_addr3, k
   lw load_inst12, 0(k_addr3)
   li tmp10, 1
   sub tmp9, load_inst12, tmp10
   la a_addr3, a
   lw load_inst13, 0(a_addr3)
   li tmp12, 4
   mul tmp11, tmp9, tmp12
   add get_element_ptr_inst3, tmp11, load_inst13
   lw load_inst14, 0(get_element_ptr_inst2)
   lw load_inst15, 0(get_element_ptr_inst3)
   slt tmp14, load_inst14, load_inst15
   xori tmp13, tmp14, 1
   li tmp15, 0
   mv allo, tmp15
   bge load_inst14, load_inst15, .main.logic_right
   j .main.logic_exit
.main.for_step2:
   la i_addr10, i
   lw load_inst16, 0(i_addr10)
   li tmp16, 1
   add add_inst2, tmp16, load_inst16
   la i_addr11, i
   sw add_inst2, 0(i_addr11)
   j .main.for_condition2
.main.for_repeat2:
   j .main.for_step2
.main.for_exit2:
   la i_addr12, i
   lw load_inst17, 0(i_addr12)
   mv a0, load_inst17
   call printInt
   j .main.mainexit
.main.logic_right:
   la i_addr13, i
   lw load_inst18, 0(i_addr13)
   la a_addr4, a
   lw load_inst19, 0(a_addr4)
   li tmp18, 4
   mul tmp17, load_inst18, tmp18
   add get_element_ptr_inst4, tmp17, load_inst19
   lw load_inst20, 0(get_element_ptr_inst4)
   li tmp20, 0
   slt tmp19, tmp20, load_inst20
   mv allo, tmp19
   j .main.logic_exit
.main.logic_exit:
   li tmp21, 0
   mv allo2, tmp21
   bne allo, zero, .main.logic_right2
   j .main.logic_exit2
.main.logic_right2:
   la i_addr14, i
   lw load_inst21, 0(i_addr14)
   la m_addr4, m
   lw load_inst22, 0(m_addr4)
   slt tmp22, load_inst21, load_inst22
   mv allo2, tmp22
   j .main.logic_exit2
.main.logic_exit2:
   bne allo2, zero, .main.for_repeat2
   j .main.for_exit2
.main.mainexit:
   li tmp23, 0
   mv a0, tmp23
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
   mv a0, allo3
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
   li tmp24, 4
   li tmp25, 50
   mul array_size, tmp24, tmp25
   li tmp26, 4
   add alloca_size, tmp26, array_size
   mv a0, alloca_size
   call __built_in_malloc
   mv function_call_inst4, a0
   mv bit_cast_inst, function_call_inst4
   li tmp27, 50
   sw tmp27, 0(bit_cast_inst)
   li tmp29, 1
   li tmp30, 4
   mul tmp28, tmp29, tmp30
   add get_element_ptr_inst5, tmp28, bit_cast_inst
   mv arr_head, get_element_ptr_inst5
   mv new_result, arr_head
   la a_addr5, a
   sw new_result, 0(a_addr5)
   la m_addr5, m
   li tmp31, 0
   sw tmp31, 0(m_addr5)
   la k_addr4, k
   li tmp32, 0
   sw tmp32, 0(k_addr4)
   la i_addr15, i
   li tmp33, 0
   sw tmp33, 0(i_addr15)
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
   .type   m,@object
   .globl   m
   .p2align   2
m:
   .word   0
   .size   .m, 4
   .type   k,@object
   .globl   k
   .p2align   2
k:
   .word   0
   .size   .k, 4
   .type   i,@object
   .globl   i
   .p2align   2
i:
   .word   0
   .size   .i, 4
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
