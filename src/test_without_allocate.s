	.text
	.file	"test.mx"
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
   la a_addr, a
   lw load_inst, 0(a_addr)
   mv bit_cast_inst, load_inst
   li tmp, -1
   mul tmp, tmp, 4
   add get_element_ptr_inst, tmp, bit_cast_inst
   lw arr_size, 0(get_element_ptr_inst)
   li tmp, 4
   mul array_size, tmp, arr_size
   li tmp, 4
   add alloca_size, tmp, array_size
   mv a0, alloca_size
   call __built_in_malloc
   mv function_call_inst, a0
   mv bit_cast_inst, function_call_inst
   sw arr_size, 0(bit_cast_inst)
   li tmp, 1
   mul tmp, tmp, 4
   add get_element_ptr_inst, tmp, bit_cast_inst
   mv arr_head, get_element_ptr_inst
   sw arr_head, 0(new_result)
   lw load_inst, 0(new_result)
   sw load_inst, 0(b)
   j .main.for_init
.main.for_init:
   lw load_inst, 0(i)
   li tmp, 0
   sw tmp, 0(i)
   j .main.for_condition
.main.for_condition:
   lw load_inst, 0(i)
   la a_addr, a
   lw load_inst, 0(a_addr)
   mv bit_cast_inst, load_inst
   li tmp, -1
   mul tmp, tmp, 4
   add get_element_ptr_inst, tmp, bit_cast_inst
   lw arr_size, 0(get_element_ptr_inst)
   slt , load_inst, arr_size
   blt load_inst, arr_size, .main.for_repeat
   j .main.for_exit
.main.for_step:
   lw load_inst, 0(i)
   li tmp, 1
   add add_inst, tmp, load_inst
   sw add_inst, 0(i)
   j .main.for_condition
.main.for_repeat:
   lw load_inst, 0(i)
   la a_addr, a
   lw load_inst, 0(a_addr)
   mul tmp, load_inst, 4
   add get_element_ptr_inst, tmp, load_inst
   li tmp, 0
   sw tmp, 0(get_element_ptr_inst)
   lw load_inst, 0(i)
   lw load_inst, 0(b)
   mul tmp, load_inst, 4
   add get_element_ptr_inst, tmp, load_inst
   call getInt
   mv function_call_inst, a0
   sw function_call_inst, 0(get_element_ptr_inst)
   j .main.for_step
.main.for_exit:
   j .main.for_init2
.main.for_init2:
   lw load_inst, 0(i)
   li tmp, 0
   sw tmp, 0(i)
   j .main.for_condition2
.main.for_condition2:
   lw load_inst, 0(i)
   la a_addr, a
   lw load_inst, 0(a_addr)
   mv bit_cast_inst, load_inst
   li tmp, -1
   mul tmp, tmp, 4
   add get_element_ptr_inst, tmp, bit_cast_inst
   lw arr_size, 0(get_element_ptr_inst)
   slt , load_inst, arr_size
   blt load_inst, arr_size, .main.for_repeat2
   j .main.for_exit2
.main.for_step2:
   lw load_inst, 0(i)
   li tmp, 1
   add add_inst, tmp, load_inst
   sw add_inst, 0(i)
   j .main.for_condition2
.main.for_repeat2:
   lw load_inst, 0(i)
   la a_addr, a
   lw load_inst, 0(a_addr)
   mul tmp, load_inst, 4
   add get_element_ptr_inst, tmp, load_inst
   lw load_inst, 0(get_element_ptr_inst)
   mv a0, load_inst
   call toString
   mv function_call_inst, a0
   lw load_inst, 0(function_call_inst)
   mv a0, load_inst
   call print
   j .main.for_step2
.main.for_exit2:
   li tmp, 0
   la str.addr, .const_str
   add get_element_ptr_inst, str.addr, tmp
   mv a0, get_element_ptr_inst
   call println
   lw load_inst, 0(b)
   la a_addr, a
   sw load_inst, 0(a_addr)
   j .main.for_init3
.main.for_init3:
   lw load_inst, 0(i)
   li tmp, 0
   sw tmp, 0(i)
   j .main.for_condition3
.main.for_condition3:
   lw load_inst, 0(i)
   la a_addr, a
   lw load_inst, 0(a_addr)
   mv bit_cast_inst, load_inst
   li tmp, -1
   mul tmp, tmp, 4
   add get_element_ptr_inst, tmp, bit_cast_inst
   lw arr_size, 0(get_element_ptr_inst)
   slt , load_inst, arr_size
   blt load_inst, arr_size, .main.for_repeat3
   j .main.for_exit3
.main.for_step3:
   lw load_inst, 0(i)
   li tmp, 1
   add add_inst, tmp, load_inst
   sw add_inst, 0(i)
   j .main.for_condition3
.main.for_repeat3:
   lw load_inst, 0(i)
   la a_addr, a
   lw load_inst, 0(a_addr)
   mul tmp, load_inst, 4
   add get_element_ptr_inst, tmp, load_inst
   lw load_inst, 0(get_element_ptr_inst)
   mv a0, load_inst
   call toString
   mv function_call_inst, a0
   lw load_inst, 0(function_call_inst)
   mv a0, load_inst
   call print
   j .main.for_step3
.main.for_exit3:
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
.Lfunc_end0:
   .size   main, .Lfunc_end0-main
.globl   __init_function__
   .p2align   2
   .type   __init_function__,@function
__init_function__:
.__init_function__.__init_function__entry:
   mv virtual_ra, ra
   mv virtual_s0, s0
   li tmp, 4
   li tmp, 4
   mul array_size, tmp, tmp
   li tmp, 4
   add alloca_size, tmp, array_size
   mv a0, alloca_size
   call __built_in_malloc
   mv function_call_inst, a0
   mv bit_cast_inst, function_call_inst
   li tmp, 4
   sw tmp, 0(bit_cast_inst)
   li tmp, 1
   mul tmp, tmp, 4
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
.Lfunc_end1:
   .size   __init_function__, .Lfunc_end1-__init_function__
   .type   .const_str,@object
.section   .rodata.str1.1,"aMS",@progbits,1
.const_str:
   .asciz   "\00"   .size   .const_str, 4
   .type   a,@object
   .section   .rodata.str1.1,"aMS",@progbits,1
   .globl   a
   .p2align   2
a:
   .word   0
   .size   .a, 4
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
