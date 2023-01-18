	.text
	.file	"test.mx"
.globl   __constructor__foo
   .p2align   2
   .type   __constructor__foo,@function
__constructor__foo:
.__constructor__foo.__constructor__fooentry:
   mv virtual_ra, ra
   mv virtual_s0, s0
   mv __constructor__foo_this, a0
   sw __constructor__foo_this, 0(this_alloca)
   lw load_inst, 0(this_alloca)
   j .__constructor__foo.first_block____constructor__foo
.__constructor__foo.first_block____constructor__foo:
   lw load_inst, 0(this_alloca)
   li tmp, 0
   add get_element_ptr_inst, load_inst, tmp
   li tmp, 2
   sw tmp, 0(get_element_ptr_inst)
   j .__constructor__foo.__constructor__fooexit
.__constructor__foo.__constructor__fooexit:
   mv s0, virtual_s0
   mv ra, virtual_ra
   ret
.Lfunc_end0:
   .size   __constructor__foo, .Lfunc_end0-__constructor__foo
.globl   main
   .p2align   2
   .type   main,@function
main:
.main.mainentry:
   mv virtual_ra, ra
   mv virtual_s0, s0
   call __init_function__
   j .main.first_block__main
.main.first_block__main:
   li tmp, 8
   li tmp, 10
   mul array_size, tmp, tmp
   li tmp, 4
   add alloca_size, tmp, array_size
   mv a0, alloca_size
   call __built_in_malloc
   mv function_call_inst, a0
   mv bit_cast_inst, function_call_inst
   li tmp, 10
   sw tmp, 0(bit_cast_inst)
   li tmp, 1
   add tmp, tmp, tmp
   add tmp, tmp, tmp
   add get_element_ptr_inst, tmp, bit_cast_inst
   mv arr_head, get_element_ptr_inst
   li tmp, 10
   add tmp, tmp, tmp
   add tmp, tmp, tmp
   add arr_tail, tmp, arr_head
   sw arr_head, 0(arr_cur_ptr)
   j .main.while_condition
.main.while_condition:
   lw arr_cur, 0(arr_cur_ptr)
   xor tmp, arr_cur, arr_tail
   sltiu reach_end, tmp, 1
   beq arr_cur, arr_tail, .main.while_exit
   j .main.while_repeat
.main.while_repeat:
   sw null, 0(arr_cur)
   li tmp, 1
   add tmp, tmp, tmp
   add tmp, tmp, tmp
   add get_element_ptr_inst, tmp, arr_cur
   sw get_element_ptr_inst, 0(arr_cur_ptr)
   j .main.while_condition
.main.while_exit:
   sw arr_head, 0(new_result)
   lw load_inst, 0(new_result)
   la b_addr, b
   sw load_inst, 0(b_addr)
   j .main.for_init
.main.for_init:
   li tmp, 0
   sw tmp, 0(i)
   j .main.for_condition
.main.for_condition:
   lw load_inst, 0(i)
   li tmp, 10
   slt , load_inst, tmp
   li tmp, 10
   blt load_inst, tmp, .main.for_repeat
   j .main.for_exit
.main.for_step:
   lw load_inst, 0(i)
   li tmp, 1
   add add_inst, tmp, load_inst
   sw add_inst, 0(i)
   j .main.for_condition
.main.for_repeat:
   lw load_inst, 0(i)
   la b_addr, b
   lw load_inst, 0(b_addr)
   add tmp, load_inst, load_inst
   add tmp, tmp, tmp
   add get_element_ptr_inst, tmp, load_inst
   lw load_inst, 0(get_element_ptr_inst)
   li tmp, 0
   add get_element_ptr_inst, load_inst, tmp
   lw load_inst, 0(i)
   sw load_inst, 0(get_element_ptr_inst)
   j .main.for_step
.main.for_exit:
   j .main.for_init2
.main.for_init2:
   li tmp, 0
   sw tmp, 0(i)
   j .main.for_condition2
.main.for_condition2:
   lw load_inst, 0(i)
   li tmp, 10
   slt , load_inst, tmp
   li tmp, 10
   blt load_inst, tmp, .main.for_repeat2
   j .main.for_exit2
.main.for_step2:
   lw load_inst, 0(i)
   li tmp, 1
   add add_inst, tmp, load_inst
   sw add_inst, 0(i)
   j .main.for_condition2
.main.for_repeat2:
   lw load_inst, 0(i)
   la b_addr, b
   lw load_inst, 0(b_addr)
   add tmp, load_inst, load_inst
   add tmp, tmp, tmp
   add get_element_ptr_inst, tmp, load_inst
   lw load_inst, 0(get_element_ptr_inst)
   li tmp, 0
   add get_element_ptr_inst, load_inst, tmp
   lw load_inst, 0(get_element_ptr_inst)
   mv a0, load_inst
   call printlnInt
   j .main.for_step2
.main.for_exit2:
   li tmp, 0
   mv a0, tmp
   mv s0, virtual_s0
   mv ra, virtual_ra
   ret
   j .main.mainexit
.main.mainexit:
   li tmp, 0
   mv a0, tmp
   mv s0, virtual_s0
   mv ra, virtual_ra
   ret
   lw load_inst, 0(allo)
   mv a0, load_inst
   mv s0, virtual_s0
   mv ra, virtual_ra
   ret
.Lfunc_end1:
   .size   main, .Lfunc_end1-main
.globl   __init_function__
   .p2align   2
   .type   __init_function__,@function
__init_function__:
.__init_function__.__init_function__entry:
   mv virtual_ra, ra
   mv virtual_s0, s0
   li tmp, 4
   li tmp, 10
   mul array_size, tmp, tmp
   li tmp, 4
   add alloca_size, tmp, array_size
   mv a0, alloca_size
   call __built_in_malloc
   mv function_call_inst, a0
   mv bit_cast_inst, function_call_inst
   li tmp, 10
   sw tmp, 0(bit_cast_inst)
   li tmp, 1
   add tmp, tmp, tmp
   add tmp, tmp, tmp
   add get_element_ptr_inst, tmp, bit_cast_inst
   mv arr_head, get_element_ptr_inst
   sw arr_head, 0(new_result)
   lw load_inst, 0(new_result)
   la a_addr, a
   sw load_inst, 0(a_addr)
   j .__init_function__.__init_function__exit
.__init_function__.__init_function__exit:
   mv s0, virtual_s0
   mv ra, virtual_ra
   ret
.Lfunc_end2:
   .size   __init_function__, .Lfunc_end2-__init_function__
   .type   a,@object
   .section   .rodata.str1.1,"aMS",@progbits,1
   .globl   a
   .p2align   2
a:
   .word   0
   .size   .a, 4
   .type   b,@object
   .globl   b
   .p2align   2
b:
   .word   0
   .size   .b, 4
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
