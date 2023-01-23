	.text
	.file	"test.mx"
.globl   test
   .p2align   2
   .type   test,@function
test:
.test.testentry:
   mv virtual_ra, ra
   mv virtual_s0, s0
   j .test.first_block__test
.test.first_block__test:
   li tmp, 0
   la str.addr, .const_str
   add get_element_ptr_inst, str.addr, tmp
   sw get_element_ptr_inst, 0(allo)
   lw load_inst, 0(allo)
   mv a0, load_inst
   mv ra, virtual_ra
   mv s0, virtual_s0
   ret
   j .test.testexit
.test.testexit:
   lw load_inst2, 0(allo2)
   mv a0, load_inst2
   mv ra, virtual_ra
   mv s0, virtual_s0
   ret
.Lfunc_end0:
   .size   test, .Lfunc_end0-test
.globl   main
   .p2align   2
   .type   main,@function
main:
.main.mainentry:
   mv virtual_ra2, ra
   mv virtual_s02, s0
   call __init_function__
   j .main.first_block__main
.main.first_block__main:
   call test
   mv function_call_inst, a0
   sw function_call_inst, 0(allo_inst)
   lw load_inst3, 0(allo_inst)
   mv a0, load_inst3
   call println
   j .main.mainexit
.main.mainexit:
   li tmp2, 0
   mv a0, tmp2
   mv ra, virtual_ra2
   mv s0, virtual_s02
   ret
   lw load_inst4, 0(allo3)
   mv a0, load_inst4
   mv ra, virtual_ra2
   mv s0, virtual_s02
   ret
.Lfunc_end1:
   .size   main, .Lfunc_end1-main
.globl   __init_function__
   .p2align   2
   .type   __init_function__,@function
__init_function__:
.__init_function__.__init_function__entry:
   mv virtual_ra3, ra
   mv virtual_s03, s0
   j .__init_function__.__init_function__exit
.__init_function__.__init_function__exit:
   mv ra, virtual_ra3
   mv s0, virtual_s03
   ret
.Lfunc_end2:
   .size   __init_function__, .Lfunc_end2-__init_function__
   .type   .const_str,@object
.section   .rodata.str1.1,"aMS",@progbits,1
.const_str:
   .asciz   "aaa"
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
