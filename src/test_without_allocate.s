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
   sw get_element_ptr_inst, 0(a)
   lw load_inst, 0(a)
   mv a0, load_inst
   call println
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
   .asciz   "\"\\\n"
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
