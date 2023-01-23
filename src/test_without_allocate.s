	.text
	.file	"test.mx"
.globl   qpow
   .p2align   2
   .type   qpow,@function
qpow:
.qpow.qpowentry:
   mv virtual_ra, ra
   mv virtual_s0, s0
   mv qpow_a, a0
   mv qpow_p, a1
   mv qpow_mod, a2
   j .qpow.first_block__qpow
.qpow.first_block__qpow:
   sw qpow_a, 0(a)
   sw qpow_p, 0(p)
   sw qpow_mod, 0(mod)
   li tmp, 1
   sw tmp, 0(t)
   lw load_inst, 0(a)
   sw load_inst, 0(y)
   j .qpow.while_condition
.qpow.while_condition:
   lw load_inst2, 0(p)
   li tmp2, 0
   slt , tmp2, load_inst2
   li tmp3, 0
   bgt load_inst2, tmp3, .qpow.while_repeat
   j .qpow.while_exit
.qpow.while_repeat:
   lw load_inst3, 0(p)
   li tmp4, 1
   and 2, load_inst3, tmp4
   li tmp5, 1
   xor tmp6, 2, tmp5
   sltiu 3, tmp6, 1
   li tmp7, 1
   beq 2, tmp7, .qpow.if_true
   j .qpow.if_false
.qpow.while_exit:
   lw load_inst4, 0(t)
   mv a0, load_inst4
   mv ra, virtual_ra
   mv s0, virtual_s0
   ret
   j .qpow.qpowexit
.qpow.if_true:
   lw load_inst5, 0(t)
   lw load_inst6, 0(t)
   lw load_inst7, 0(y)
   mul 4, load_inst6, load_inst7
   lw load_inst8, 0(mod)
   rem 5, 4, load_inst8
   sw 5, 0(t)
   j .qpow.if_exit
.qpow.if_false:
   j .qpow.if_exit
.qpow.if_exit:
   lw load_inst9, 0(y)
   lw load_inst10, 0(y)
   lw load_inst11, 0(y)
   mul 6, load_inst10, load_inst11
   lw load_inst12, 0(mod)
   rem 7, 6, load_inst12
   sw 7, 0(y)
   lw load_inst13, 0(p)
   lw load_inst14, 0(p)
   li tmp8, 2
   div 8, load_inst14, tmp8
   sw 8, 0(p)
   j .qpow.while_condition
.qpow.qpowexit:
   lw load_inst15, 0(allo)
   mv a0, load_inst15
   mv ra, virtual_ra
   mv s0, virtual_s0
   ret
.Lfunc_end0:
   .size   qpow, .Lfunc_end0-qpow
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
   li tmp9, 2
   mv a0, tmp9
   li tmp10, 10
   mv a1, tmp10
   li tmp11, 10000
   mv a2, tmp11
   call qpow
   mv function_call_inst, a0
   mv a0, function_call_inst
   call toString
   mv function_call_inst2, a0
   sw function_call_inst2, 0(allo_inst)
   lw load_inst16, 0(allo_inst)
   mv a0, load_inst16
   call println
   li tmp12, 0
   mv a0, tmp12
   mv ra, virtual_ra2
   mv s0, virtual_s02
   ret
   j .main.mainexit
.main.mainexit:
   li tmp13, 0
   mv a0, tmp13
   mv ra, virtual_ra2
   mv s0, virtual_s02
   ret
   lw load_inst17, 0(allo2)
   mv a0, load_inst17
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
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
