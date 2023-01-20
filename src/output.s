	.text
	.file	"test.mx"
.globl   __constructor__C2
   .p2align   2
   .type   __constructor__C2,@function
__constructor__C2:
.__constructor__C2.__constructor__C2entry:
   addi sp, sp, -32
   mv s1, ra
   sw s1, 0(sp)
   mv s1, s0
   sw s1, 4(sp)
   mv s1, a0
   sw s1, 8(sp)
   lw s0, 8(sp)
   sw s0, 12(sp)
   lw s1, 12(sp)
   sw s1, 16(sp)
   lw s1, 12(sp)
   sw s1, 20(sp)
   lw s1, 12(sp)
   sw s1, 24(sp)
   lw s1, 12(sp)
   sw s1, 28(sp)
   j .__constructor__C2.first_block____constructor__C2
.__constructor__C2.first_block____constructor__C2:
   j .__constructor__C2.__constructor__C2exit
.__constructor__C2.__constructor__C2exit:
   lw s0, 4(sp)
   mv s0, s0
   lw s0, 0(sp)
   mv ra, s0
   addi sp, sp, 32
   ret
.Lfunc_end0:
   .size   __constructor__C2, .Lfunc_end0-__constructor__C2
.globl   main
   .p2align   2
   .type   main,@function
main:
.main.mainentry:
   addi sp, sp, -228
   mv s1, ra
   sw s1, 0(sp)
   mv s1, s0
   sw s1, 4(sp)
   call __init_function__
   j .main.first_block__main
.main.first_block__main:
   li s0, 16
   sw s0, 8(sp)
   lw s0, 8(sp)
   mv a0, s0
   call __built_in_malloc
   mv s1, a0
   sw s1, 12(sp)
   lw s0, 12(sp)
   mv s1, s0
   sw s1, 16(sp)
   lw s0, 16(sp)
   mv a0, s0
   call __constructor__C2
   lw s0, 16(sp)
   sw s0, 20(sp)
   lw s1, 20(sp)
   sw s1, 24(sp)
   lw s0, 24(sp)
   sw s0, 28(sp)
   lw s1, 28(sp)
   sw s1, 32(sp)
   li s0, 4
   sw s0, 36(sp)
   lw s0, 32(sp)
   lw s1, 36(sp)
   add s0, s0, s1
   sw s0, 40(sp)
   li s0, 10
   sw s0, 44(sp)
   lw s0, 44(sp)
   lw s1, 40(sp)
   sw s0, 0(s1)
   lw s1, 28(sp)
   sw s1, 48(sp)
   li s0, 8
   sw s0, 52(sp)
   lw s0, 48(sp)
   lw s1, 52(sp)
   add s0, s0, s1
   sw s0, 56(sp)
   li s0, 20
   sw s0, 60(sp)
   lw s0, 60(sp)
   lw s1, 56(sp)
   sw s0, 0(s1)
   lw s1, 28(sp)
   sw s1, 64(sp)
   li s0, 0
   sw s0, 68(sp)
   lw s0, 64(sp)
   lw s1, 68(sp)
   add s0, s0, s1
   sw s0, 72(sp)
   lw s1, 28(sp)
   sw s1, 76(sp)
   li s0, 4
   sw s0, 80(sp)
   lw s0, 76(sp)
   lw s1, 80(sp)
   add s0, s0, s1
   sw s0, 84(sp)
   lw s1, 28(sp)
   sw s1, 88(sp)
   li s0, 8
   sw s0, 92(sp)
   lw s0, 88(sp)
   lw s1, 92(sp)
   add s0, s0, s1
   sw s0, 96(sp)
   lw s0, 84(sp)
   lw s1, 0(s0)
   sw s1, 100(sp)
   lw s0, 96(sp)
   lw s1, 0(s0)
   sw s1, 104(sp)
   lw s0, 104(sp)
   lw s1, 100(sp)
   slt s0, s0, s1
   sw s0, 108(sp)
   lw s0, 108(sp)
   lw s1, 72(sp)
   sw s0, 0(s1)
   lw s1, 28(sp)
   sw s1, 112(sp)
   li s0, 0
   sw s0, 116(sp)
   lw s0, 112(sp)
   lw s1, 116(sp)
   add s0, s0, s1
   sw s0, 120(sp)
   lw s0, 120(sp)
   lw s1, 0(s0)
   sw s1, 124(sp)
   lw s0, 124(sp)
   bne s0, zero, .main.if_true
   j .main.if_false
.main.if_true:
   lw s1, 28(sp)
   sw s1, 128(sp)
   li s0, 12
   sw s0, 132(sp)
   lw s0, 128(sp)
   lw s1, 132(sp)
   add s0, s0, s1
   sw s0, 136(sp)
   li s0, 40
   sw s0, 140(sp)
   lw s0, 140(sp)
   lw s1, 136(sp)
   sw s0, 0(s1)
   j .main.if_exit
.main.if_false:
   lw s1, 28(sp)
   sw s1, 144(sp)
   li s0, 12
   sw s0, 148(sp)
   lw s0, 144(sp)
   lw s1, 148(sp)
   add s0, s0, s1
   sw s0, 152(sp)
   li s0, 80
   sw s0, 156(sp)
   lw s0, 156(sp)
   lw s1, 152(sp)
   sw s0, 0(s1)
   j .main.if_exit
.main.if_exit:
   lw s1, 28(sp)
   sw s1, 160(sp)
   li s0, 4
   sw s0, 164(sp)
   lw s0, 160(sp)
   lw s1, 164(sp)
   add s0, s0, s1
   sw s0, 168(sp)
   lw s1, 28(sp)
   sw s1, 172(sp)
   li s0, 8
   sw s0, 176(sp)
   lw s0, 172(sp)
   lw s1, 176(sp)
   add s0, s0, s1
   sw s0, 180(sp)
   lw s0, 168(sp)
   lw s1, 0(s0)
   sw s1, 184(sp)
   lw s0, 180(sp)
   lw s1, 0(s0)
   sw s1, 188(sp)
   lw s0, 184(sp)
   lw s1, 188(sp)
   add s0, s0, s1
   sw s0, 192(sp)
   lw s1, 28(sp)
   sw s1, 196(sp)
   li s0, 12
   sw s0, 200(sp)
   lw s0, 196(sp)
   lw s1, 200(sp)
   add s0, s0, s1
   sw s0, 204(sp)
   lw s0, 204(sp)
   lw s1, 0(s0)
   sw s1, 208(sp)
   lw s0, 192(sp)
   lw s1, 208(sp)
   add s0, s0, s1
   sw s0, 212(sp)
   lw s0, 212(sp)
   mv a0, s0
   call printlnInt
   j .main.mainexit
.main.mainexit:
   li s0, 0
   sw s0, 216(sp)
   lw s0, 216(sp)
   mv a0, s0
   lw s0, 4(sp)
   mv s0, s0
   lw s0, 0(sp)
   mv ra, s0
   addi sp, sp, 228
   ret
   lw s1, 220(sp)
   sw s1, 224(sp)
   lw s0, 224(sp)
   mv a0, s0
   lw s0, 4(sp)
   mv s0, s0
   lw s0, 0(sp)
   mv ra, s0
   addi sp, sp, 228
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
   lw s0, 4(sp)
   mv s0, s0
   lw s0, 0(sp)
   mv ra, s0
   addi sp, sp, 8
   ret
.Lfunc_end2:
   .size   __init_function__, .Lfunc_end2-__init_function__
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
