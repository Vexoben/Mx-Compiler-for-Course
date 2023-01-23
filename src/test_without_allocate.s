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
   li tmp, 0
   la str.addr, .const_str
   add get_element_ptr_inst, str.addr, tmp
   li tmp2, 0
   la str.addr2, .const_str2
   add get_element_ptr_inst2, str.addr2, tmp2
   mv a0, get_element_ptr_inst
   mv a1, get_element_ptr_inst2
   call __build_in_str_add
   mv function_call_inst, a0
   sw function_call_inst, 0(allo_inst)
   lw load_inst, 0(allo_inst)
   mv a0, load_inst
   call println
   li tmp3, 0
   mv a0, tmp3
   mv ra, virtual_ra
   mv s0, virtual_s0
   ret
   j .main.mainexit
.main.mainexit:
   li tmp4, 0
   mv a0, tmp4
   mv ra, virtual_ra
   mv s0, virtual_s0
   ret
   lw load_inst2, 0(allo)
   mv a0, load_inst2
   mv ra, virtual_ra
   mv s0, virtual_s0
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
   j .__init_function__.__init_function__exit
.__init_function__.__init_function__exit:
   mv ra, virtual_ra2
   mv s0, virtual_s02
   ret
.Lfunc_end1:
   .size   __init_function__, .Lfunc_end1-__init_function__
   .type   .const_str2,@object
.section   .rodata.str1.1,"aMS",@progbits,1
.const_str2:
   .asciz   "B"
   .type   .const_str,@object
.const_str:
   .asciz   "a"
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
