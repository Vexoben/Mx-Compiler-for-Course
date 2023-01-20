	.text
	.file	"test.mx"
.globl   work
   .p2align   2
   .type   work,@function
work:
.work.workentry:
   mv virtual_ra, ra
   mv virtual_s0, s0
   mv work_st, a0
   mv work_ta, a1
   j .work.first_block__work
.work.first_block__work:
   sw work_st, 0(st)
   sw work_ta, 0(ta)
   lw load_inst, 0(ta)
   li tmp, 8
   add get_element_ptr_inst, load_inst, tmp
   lw load_inst, 0(get_element_ptr_inst)
   li tmp, 100
   slt tmp, tmp, load_inst
   xori , tmp, 1
   li tmp, 100
   ble load_inst, tmp, .work.if_true
   j .work.if_false
.work.if_true:
   lw load_inst, 0(st)
   li tmp, 0
   la str.addr, .const_str
   add get_element_ptr_inst, str.addr, tmp
   mv a0, load_inst
   mv a1, get_element_ptr_inst
   call __build_in_str_add
   mv function_call_inst, a0
   lw load_inst, 0(ta)
   li tmp, 0
   add get_element_ptr_inst, load_inst, tmp
   lw load_inst, 0(function_call_inst)
   lw load_inst, 0(get_element_ptr_inst)
   mv a0, load_inst
   mv a1, load_inst
   call __build_in_str_add
   mv function_call_inst, a0
   lw load_inst, 0(function_call_inst)
   li tmp, 0
   la str.addr, .const_str2
   add get_element_ptr_inst, str.addr, tmp
   mv a0, load_inst
   mv a1, get_element_ptr_inst
   call __build_in_str_add
   mv function_call_inst, a0
   lw load_inst, 0(function_call_inst)
   mv a0, load_inst
   call println
   j .work.if_exit
.work.if_false:
   lw load_inst, 0(st)
   li tmp, 0
   la str.addr, .const_str
   add get_element_ptr_inst, str.addr, tmp
   mv a0, load_inst
   mv a1, get_element_ptr_inst
   call __build_in_str_add
   mv function_call_inst, a0
   lw load_inst, 0(ta)
   li tmp, 0
   add get_element_ptr_inst, load_inst, tmp
   lw load_inst, 0(function_call_inst)
   lw load_inst, 0(get_element_ptr_inst)
   mv a0, load_inst
   mv a1, load_inst
   call __build_in_str_add
   mv function_call_inst, a0
   lw load_inst, 0(function_call_inst)
   li tmp, 0
   la str.addr, .const_str3
   add get_element_ptr_inst, str.addr, tmp
   mv a0, load_inst
   mv a1, get_element_ptr_inst
   call __build_in_str_add
   mv function_call_inst, a0
   lw load_inst, 0(function_call_inst)
   mv a0, load_inst
   call println
   j .work.if_exit
.work.if_exit:
   lw load_inst, 0(ta)
   li tmp, 8
   add get_element_ptr_inst, load_inst, tmp
   lw load_inst, 0(ta)
   li tmp, 8
   add get_element_ptr_inst, load_inst, tmp
   la work_anger_addr, work_anger
   lw load_inst, 0(work_anger_addr)
   lw load_inst, 0(get_element_ptr_inst)
   add , load_inst, load_inst
   sw , 0(get_element_ptr_inst)
   j .work.workexit
.work.workexit:
   mv s0, virtual_s0
   mv ra, virtual_ra
   ret
.Lfunc_end0:
   .size   work, .Lfunc_end0-work
.globl   main
   .p2align   2
   .type   main,@function
main:
.main.mainentry:
   mv virtual_ra, ra
   mv virtual_s0, s0
   call __init_function__
   lw load_inst, 0(mr)
   mv a0, load_inst
   call __constructor__TA
   lw load_inst, 0(mars)
   mv a0, load_inst
   call __constructor__TA
   j .main.first_block__main
.main.first_block__main:
   li tmp, 12
   mv a0, tmp
   call __built_in_malloc
   mv function_call_inst, a0
   mv bit_cast_inst, function_call_inst
   mv a0, bit_cast_inst
   call __constructor__TA
   sw bit_cast_inst, 0(alloca_inst)
   lw load_inst, 0(alloca_inst)
   sw load_inst, 0(mr)
   lw load_inst, 0(mr)
   li tmp, 0
   add get_element_ptr_inst, load_inst, tmp
   li tmp, 0
   la str.addr, .const_str4
   add get_element_ptr_inst, str.addr, tmp
   sw get_element_ptr_inst, 0(get_element_ptr_inst)
   lw load_inst, 0(mr)
   li tmp, 8
   add get_element_ptr_inst, load_inst, tmp
   li tmp, 0
   sw tmp, 0(get_element_ptr_inst)
   li tmp, 12
   mv a0, tmp
   call __built_in_malloc
   mv function_call_inst, a0
   mv bit_cast_inst, function_call_inst
   mv a0, bit_cast_inst
   call __constructor__TA
   sw bit_cast_inst, 0(alloca_inst)
   lw load_inst, 0(alloca_inst)
   sw load_inst, 0(mars)
   lw load_inst, 0(mars)
   li tmp, 0
   add get_element_ptr_inst, load_inst, tmp
   li tmp, 0
   la str.addr, .const_str5
   add get_element_ptr_inst, str.addr, tmp
   sw get_element_ptr_inst, 0(get_element_ptr_inst)
   lw load_inst, 0(mars)
   li tmp, 8
   add get_element_ptr_inst, load_inst, tmp
   la init_anger_addr, init_anger
   lw load_inst, 0(init_anger_addr)
   sw load_inst, 0(get_element_ptr_inst)
   li tmp, 0
   la str.addr, .const_str6
   add get_element_ptr_inst, str.addr, tmp
   lw load_inst, 0(mr)
   mv a0, get_element_ptr_inst
   mv a1, load_inst
   call work
   li tmp, 0
   la str.addr, .const_str7
   add get_element_ptr_inst, str.addr, tmp
   lw load_inst, 0(mars)
   mv a0, get_element_ptr_inst
   mv a1, load_inst
   call work
   li tmp, 0
   la str.addr, .const_str7
   add get_element_ptr_inst, str.addr, tmp
   lw load_inst, 0(mars)
   mv a0, get_element_ptr_inst
   mv a1, load_inst
   call work
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
   la init_anger_addr, init_anger
   li tmp, 100
   sw tmp, 0(init_anger_addr)
   la work_anger_addr, work_anger
   li tmp, 10
   sw tmp, 0(work_anger_addr)
   j .__init_function__.__init_function__exit
.__init_function__.__init_function__exit:
   mv s0, virtual_s0
   mv ra, virtual_ra
   ret
.Lfunc_end2:
   .size   __init_function__, .Lfunc_end2-__init_function__
.globl   __constructor__TA
   .p2align   2
   .type   __constructor__TA,@function
__constructor__TA:
.__constructor__TA.__constructor__TAentry:
   mv virtual_ra, ra
   mv virtual_s0, s0
   mv __constructor__TA_this, a0
   sw __constructor__TA_this, 0(this_alloca)
   lw load_inst, 0(this_alloca)
   lw load_inst, 0(this_alloca)
   j .__constructor__TA.first_block____constructor__TA
.__constructor__TA.first_block____constructor__TA:
   j .__constructor__TA.__constructor__TAexit
.__constructor__TA.__constructor__TAexit:
   mv s0, virtual_s0
   mv ra, virtual_ra
   ret
.Lfunc_end3:
   .size   __constructor__TA, .Lfunc_end3-__constructor__TA
   .type   .const_str,@object
.section   .rodata.str1.1,"aMS",@progbits,1
.const_str:
   .asciz   ", \00"   .size   .const_str, 4
   .type   .const_str6,@object
.const_str6:
   .asciz   "MR\00"   .size   .const_str6, 4
   .type   .const_str3,@object
.const_str3:
   .asciz   " wants to give up!!!!!\00"   .size   .const_str3, 4
   .type   .const_str7,@object
.const_str7:
   .asciz   "Mars\00"   .size   .const_str7, 4
   .type   .const_str5,@object
.const_str5:
   .asciz   "the striking TA\00"   .size   .const_str5, 4
   .type   .const_str4,@object
.const_str4:
   .asciz   "the leading TA\00"   .size   .const_str4, 4
   .type   .const_str2,@object
.const_str2:
   .asciz   " enjoys this work. XD\00"   .size   .const_str2, 4
   .type   init_anger,@object
   .section   .rodata.str1.1,"aMS",@progbits,1
   .globl   init_anger
   .p2align   2
init_anger:
   .word   0
   .size   .init_anger, 4
   .type   work_anger,@object
   .globl   work_anger
   .p2align   2
work_anger:
   .word   0
   .size   .work_anger, 4
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
