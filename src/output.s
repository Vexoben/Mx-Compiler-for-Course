	.text
	.file	"test.mx"
.globl   qpow
   .p2align   2
   .type   qpow,@function
qpow:
.qpow.qpowentry:
   addi sp, sp, -168
   mv s1, ra
   sw s1, 0(sp)
   mv s1, s0
   sw s1, 4(sp)
   mv s1, a0
   sw s1, 8(sp)
   mv s1, a1
   sw s1, 12(sp)
   mv s1, a2
   sw s1, 16(sp)
   j .qpow.first_block__qpow
.qpow.first_block__qpow:
   lw s0, 8(sp)
   sw s0, 20(sp)
   lw s0, 12(sp)
   sw s0, 24(sp)
   lw s0, 16(sp)
   sw s0, 28(sp)
   li s0, 1
   sw s0, 32(sp)
   lw s0, 32(sp)
   sw s0, 36(sp)
   lw s1, 20(sp)
   sw s1, 40(sp)
   lw s0, 40(sp)
   sw s0, 44(sp)
   j .qpow.while_condition
.qpow.while_condition:
   lw s1, 24(sp)
   sw s1, 48(sp)
   li s0, 0
   sw s0, 52(sp)
   lw s0, 52(sp)
   lw s1, 48(sp)
   slt s0, s0, s1
   sw s0, 56(sp)
   li s0, 0
   sw s0, 60(sp)
   lw s0, 48(sp)
   lw s1, 60(sp)
   bgt s0, s1, .qpow.while_repeat
   j .qpow.while_exit
.qpow.while_repeat:
   lw s1, 24(sp)
   sw s1, 64(sp)
   li s0, 1
   sw s0, 68(sp)
   lw s0, 64(sp)
   lw s1, 68(sp)
   and s0, s0, s1
   sw s0, 72(sp)
   li s0, 1
   sw s0, 76(sp)
   lw s0, 72(sp)
   lw s1, 76(sp)
   xor s0, s0, s1
   sw s0, 80(sp)
   lw s0, 80(sp)
   sltiu s0, s0, 1
   sw s0, 84(sp)
   li s0, 1
   sw s0, 88(sp)
   lw s0, 72(sp)
   lw s1, 88(sp)
   beq s0, s1, .qpow.if_true
   j .qpow.if_false
.qpow.while_exit:
   lw s1, 36(sp)
   sw s1, 92(sp)
   lw s0, 92(sp)
   mv a0, s0
   lw s0, 0(sp)
   mv ra, s0
   lw s0, 4(sp)
   mv s0, s0
   addi sp, sp, 168
   ret
   j .qpow.qpowexit
.qpow.if_true:
   lw s1, 36(sp)
   sw s1, 96(sp)
   lw s1, 36(sp)
   sw s1, 100(sp)
   lw s1, 44(sp)
   sw s1, 104(sp)
   lw s0, 100(sp)
   lw s1, 104(sp)
   mul s0, s0, s1
   sw s0, 108(sp)
   lw s1, 28(sp)
   sw s1, 112(sp)
   lw s0, 108(sp)
   lw s1, 112(sp)
   rem s0, s0, s1
   sw s0, 116(sp)
   lw s0, 116(sp)
   sw s0, 36(sp)
   j .qpow.if_exit
.qpow.if_false:
   j .qpow.if_exit
.qpow.if_exit:
   lw s1, 44(sp)
   sw s1, 120(sp)
   lw s1, 44(sp)
   sw s1, 124(sp)
   lw s1, 44(sp)
   sw s1, 128(sp)
   lw s0, 124(sp)
   lw s1, 128(sp)
   mul s0, s0, s1
   sw s0, 132(sp)
   lw s1, 28(sp)
   sw s1, 136(sp)
   lw s0, 132(sp)
   lw s1, 136(sp)
   rem s0, s0, s1
   sw s0, 140(sp)
   lw s0, 140(sp)
   sw s0, 44(sp)
   lw s1, 24(sp)
   sw s1, 144(sp)
   lw s1, 24(sp)
   sw s1, 148(sp)
   li s0, 2
   sw s0, 152(sp)
   lw s0, 148(sp)
   lw s1, 152(sp)
   div s0, s0, s1
   sw s0, 156(sp)
   lw s0, 156(sp)
   sw s0, 24(sp)
   j .qpow.while_condition
.qpow.qpowexit:
   lw s1, 160(sp)
   sw s1, 164(sp)
   lw s0, 164(sp)
   mv a0, s0
   lw s0, 0(sp)
   mv ra, s0
   lw s0, 4(sp)
   mv s0, s0
   addi sp, sp, 168
   ret
.Lfunc_end0:
   .size   qpow, .Lfunc_end0-qpow
.globl   main
   .p2align   2
   .type   main,@function
main:
.main.mainentry:
   addi sp, sp, -52
   mv s1, ra
   sw s1, 0(sp)
   mv s1, s0
   sw s1, 4(sp)
   call __init_function__
   j .main.first_block__main
.main.first_block__main:
   li s0, 2
   sw s0, 8(sp)
   lw s0, 8(sp)
   mv a0, s0
   li s0, 10
   sw s0, 12(sp)
   lw s0, 12(sp)
   mv a1, s0
   li s0, 10000
   sw s0, 16(sp)
   lw s0, 16(sp)
   mv a2, s0
   call qpow
   mv s1, a0
   sw s1, 20(sp)
   lw s0, 20(sp)
   mv a0, s0
   call toString
   mv s1, a0
   sw s1, 24(sp)
   lw s0, 24(sp)
   sw s0, 28(sp)
   lw s1, 28(sp)
   sw s1, 32(sp)
   lw s0, 32(sp)
   mv a0, s0
   call println
   li s0, 0
   sw s0, 36(sp)
   lw s0, 36(sp)
   mv a0, s0
   lw s0, 0(sp)
   mv ra, s0
   lw s0, 4(sp)
   mv s0, s0
   addi sp, sp, 52
   ret
   j .main.mainexit
.main.mainexit:
   li s0, 0
   sw s0, 40(sp)
   lw s0, 40(sp)
   mv a0, s0
   lw s0, 0(sp)
   mv ra, s0
   lw s0, 4(sp)
   mv s0, s0
   addi sp, sp, 52
   ret
   lw s1, 44(sp)
   sw s1, 48(sp)
   lw s0, 48(sp)
   mv a0, s0
   lw s0, 0(sp)
   mv ra, s0
   lw s0, 4(sp)
   mv s0, s0
   addi sp, sp, 52
   ret
.Lfunc_end1:
   .size   main, .Lfunc_end1-main
.globl   __init_function__
   .p2align   2
   .type   __init_function__,@function
__init_function__:
.__init_function__.__init_function__entry:
   addi sp, sp, -8
   mv s1, ra
   sw s1, 0(sp)
   mv s1, s0
   sw s1, 4(sp)
   j .__init_function__.__init_function__exit
.__init_function__.__init_function__exit:
   lw s0, 0(sp)
   mv ra, s0
   lw s0, 4(sp)
   mv s0, s0
   addi sp, sp, 8
   ret
.Lfunc_end2:
   .size   __init_function__, .Lfunc_end2-__init_function__
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
