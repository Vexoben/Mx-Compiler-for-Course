	.text
	.file	"test.mx"
.globl   __constructor__C2
   .p2align   2
   .type   __constructor__C2,@function
__constructor__C2:
.__constructor__C2.__constructor__C2entry:
   mv virtual_ra, ra
   mv virtual_s0, s0
   mv __constructor__C2_this, a0
   sw __constructor__C2_this, 0(this_alloca)
   lw load_inst, 0(this_alloca)
   lw load_inst, 0(this_alloca)
   lw load_inst, 0(this_alloca)
   lw load_inst, 0(this_alloca)
   j .__constructor__C2.first_block____constructor__C2
.__constructor__C2.first_block____constructor__C2:
   j .__constructor__C2.__constructor__C2exit
.__constructor__C2.__constructor__C2exit:
   mv s0, virtual_s0
   mv ra, virtual_ra
   ret
.Lfunc_end0:
   .size   __constructor__C2, .Lfunc_end0-__constructor__C2
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
   li tmp, 16
   mv a0, tmp
   call __built_in_malloc
   mv function_call_inst, a0
   mv bit_cast_inst, function_call_inst
   mv a0, bit_cast_inst
   call __constructor__C2
   sw bit_cast_inst, 0(alloca_inst)
   lw load_inst, 0(alloca_inst)
   sw load_inst, 0(obj)
   lw load_inst, 0(obj)
   li tmp, 4
   add get_element_ptr_inst, load_inst, tmp
   li tmp, 10
   sw tmp, 0(get_element_ptr_inst)
   lw load_inst, 0(obj)
   li tmp, 8
   add get_element_ptr_inst, load_inst, tmp
   li tmp, 20
   sw tmp, 0(get_element_ptr_inst)
   lw load_inst, 0(obj)
   li tmp, 0
   add get_element_ptr_inst, load_inst, tmp
   lw load_inst, 0(obj)
   li tmp, 4
   add get_element_ptr_inst, load_inst, tmp
   lw load_inst, 0(obj)
   li tmp, 8
   add get_element_ptr_inst, load_inst, tmp
   lw load_inst, 0(get_element_ptr_inst)
   lw load_inst, 0(get_element_ptr_inst)
   slt , load_inst, load_inst
   sw , 0(get_element_ptr_inst)
   lw load_inst, 0(obj)
   li tmp, 0
   add get_element_ptr_inst, load_inst, tmp
   lw load_inst, 0(get_element_ptr_inst)
   bne load_inst, zero, .main.if_true
   j .main.if_false
.main.if_true:
   lw load_inst, 0(obj)
   li tmp, 12
   add get_element_ptr_inst, load_inst, tmp
   li tmp, 40
   sw tmp, 0(get_element_ptr_inst)
   j .main.if_exit
.main.if_false:
   lw load_inst, 0(obj)
   li tmp, 12
   add get_element_ptr_inst, load_inst, tmp
   li tmp, 80
   sw tmp, 0(get_element_ptr_inst)
   j .main.if_exit
.main.if_exit:
   lw load_inst, 0(obj)
   li tmp, 4
   add get_element_ptr_inst, load_inst, tmp
   lw load_inst, 0(obj)
   li tmp, 8
   add get_element_ptr_inst, load_inst, tmp
   lw load_inst, 0(get_element_ptr_inst)
   lw load_inst, 0(get_element_ptr_inst)
   add , load_inst, load_inst
   lw load_inst, 0(obj)
   li tmp, 12
   add get_element_ptr_inst, load_inst, tmp
   lw load_inst, 0(get_element_ptr_inst)
   add , , load_inst
   mv a0, 
   call printlnInt
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
   j .__init_function__.__init_function__exit
.__init_function__.__init_function__exit:
   mv s0, virtual_s0
   mv ra, virtual_ra
   ret
.Lfunc_end2:
   .size   __init_function__, .Lfunc_end2-__init_function__
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
