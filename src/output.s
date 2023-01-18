	.text
	.file	"test.mx"
.globl   jud
   .p2align   2
   .type   jud,@function
jud:
.jud.judentry:
   addi sp, sp, -244
   mv s1, ra
   sw s1, 0(sp)
   mv s1, s0
   sw s1, 4(sp)
   mv s1, a0
   sw s1, 8(sp)
   j .jud.first_block__jud
.jud.first_block__jud:
   lw s0, 8(sp)
   sw s0, 12(sp)
   j .jud.for_init
.jud.for_init:
   lw s1, 16(sp)
   sw s1, 20(sp)
   li s0, 0
   sw s0, 24(sp)
   lw s0, 24(sp)
   sw s0, 16(sp)
   j .jud.for_condition
.jud.for_condition:
   lw s1, 16(sp)
   sw s1, 28(sp)
   la s0, n
   sw s0, 32(sp)
   lw s0, 32(sp)
   lw s1, 0(s0)
   sw s1, 36(sp)
   lw s1, 12(sp)
   sw s1, 40(sp)
   lw s0, 36(sp)
   lw s1, 40(sp)
   div s0, s0, s1
   sw s0, 44(sp)
   lw s0, 28(sp)
   lw s1, 44(sp)
   slt s0, s0, s1
   sw s0, 48(sp)
   lw s0, 28(sp)
   lw s1, 44(sp)
   blt s0, s1, .jud.for_repeat
   j .jud.for_exit
.jud.for_step:
   lw s1, 16(sp)
   sw s1, 52(sp)
   li s0, 1
   sw s0, 56(sp)
   lw s0, 56(sp)
   lw s1, 52(sp)
   add s0, s0, s1
   sw s0, 60(sp)
   lw s0, 60(sp)
   sw s0, 16(sp)
   j .jud.for_condition
.jud.for_repeat:
   li s0, 0
   sw s0, 64(sp)
   lw s0, 64(sp)
   sw s0, 68(sp)
   j .jud.for_init2
.jud.for_exit:
   li s0, 0
   sw s0, 72(sp)
   lw s0, 72(sp)
   mv a0, s0
   lw s0, 4(sp)
   mv s0, s0
   lw s0, 0(sp)
   mv ra, s0
   addi sp, sp, 244
   ret
   j .jud.judexit
.jud.for_init2:
   lw s1, 76(sp)
   sw s1, 80(sp)
   li s0, 0
   sw s0, 84(sp)
   lw s0, 84(sp)
   sw s0, 76(sp)
   j .jud.for_condition2
.jud.for_condition2:
   lw s1, 76(sp)
   sw s1, 88(sp)
   lw s1, 12(sp)
   sw s1, 92(sp)
   li s0, 1
   sw s0, 96(sp)
   lw s0, 92(sp)
   lw s1, 96(sp)
   sub s0, s0, s1
   sw s0, 100(sp)
   lw s0, 88(sp)
   lw s1, 100(sp)
   slt s0, s0, s1
   sw s0, 104(sp)
   lw s0, 88(sp)
   lw s1, 100(sp)
   blt s0, s1, .jud.for_repeat2
   j .jud.for_exit2
.jud.for_step2:
   lw s1, 76(sp)
   sw s1, 108(sp)
   li s0, 1
   sw s0, 112(sp)
   lw s0, 112(sp)
   lw s1, 108(sp)
   add s0, s0, s1
   sw s0, 116(sp)
   lw s0, 116(sp)
   sw s0, 76(sp)
   j .jud.for_condition2
.jud.for_repeat2:
   lw s1, 16(sp)
   sw s1, 120(sp)
   lw s1, 12(sp)
   sw s1, 124(sp)
   lw s0, 120(sp)
   lw s1, 124(sp)
   mul s0, s0, s1
   sw s0, 128(sp)
   lw s1, 76(sp)
   sw s1, 132(sp)
   lw s0, 128(sp)
   lw s1, 132(sp)
   add s0, s0, s1
   sw s0, 136(sp)
   la s0, a
   sw s0, 140(sp)
   lw s0, 140(sp)
   lw s1, 0(s0)
   sw s1, 144(sp)
   lw s0, 136(sp)
   lw s1, 136(sp)
   add s0, s0, s1
   sw s0, 148(sp)
   lw s0, 148(sp)
   lw s1, 148(sp)
   add s0, s0, s1
   sw s0, 148(sp)
   lw s0, 148(sp)
   lw s1, 144(sp)
   add s0, s0, s1
   sw s0, 152(sp)
   lw s1, 16(sp)
   sw s1, 156(sp)
   lw s1, 12(sp)
   sw s1, 160(sp)
   lw s0, 156(sp)
   lw s1, 160(sp)
   mul s0, s0, s1
   sw s0, 164(sp)
   lw s1, 76(sp)
   sw s1, 168(sp)
   lw s0, 164(sp)
   lw s1, 168(sp)
   add s0, s0, s1
   sw s0, 172(sp)
   li s0, 1
   sw s0, 176(sp)
   lw s0, 172(sp)
   lw s1, 176(sp)
   add s0, s0, s1
   sw s0, 180(sp)
   la s0, a
   sw s0, 184(sp)
   lw s0, 184(sp)
   lw s1, 0(s0)
   sw s1, 188(sp)
   lw s0, 180(sp)
   lw s1, 180(sp)
   add s0, s0, s1
   sw s0, 192(sp)
   lw s0, 192(sp)
   lw s1, 192(sp)
   add s0, s0, s1
   sw s0, 192(sp)
   lw s0, 192(sp)
   lw s1, 188(sp)
   add s0, s0, s1
   sw s0, 196(sp)
   lw s0, 152(sp)
   lw s1, 0(s0)
   sw s1, 200(sp)
   lw s0, 196(sp)
   lw s1, 0(s0)
   sw s1, 204(sp)
   lw s0, 204(sp)
   lw s1, 200(sp)
   slt s0, s0, s1
   sw s0, 208(sp)
   lw s0, 200(sp)
   lw s1, 204(sp)
   bgt s0, s1, .jud.if_true
   j .jud.if_false
.jud.for_exit2:
   lw s1, 68(sp)
   sw s1, 212(sp)
   li s0, 1
   sw s0, 216(sp)
   lw s0, 216(sp)
   lw s1, 212(sp)
   xor s0, s0, s1
   sw s0, 220(sp)
   lw s0, 220(sp)
   bne s0, zero, .jud.if_true2
   j .jud.if_false2
.jud.if_true:
   lw s1, 68(sp)
   sw s1, 224(sp)
   li s0, 1
   sw s0, 228(sp)
   lw s0, 228(sp)
   sw s0, 68(sp)
   j .jud.if_exit
.jud.if_false:
   j .jud.if_exit
.jud.if_exit:
   j .jud.for_step2
.jud.if_true2:
   li s0, 1
   sw s0, 232(sp)
   lw s0, 232(sp)
   mv a0, s0
   lw s0, 4(sp)
   mv s0, s0
   lw s0, 0(sp)
   mv ra, s0
   addi sp, sp, 244
   ret
   j .jud.if_exit2
.jud.if_false2:
   j .jud.if_exit2
.jud.if_exit2:
   j .jud.for_step
.jud.judexit:
   lw s1, 236(sp)
   sw s1, 240(sp)
   lw s0, 240(sp)
   mv a0, s0
   lw s0, 4(sp)
   mv s0, s0
   lw s0, 0(sp)
   mv ra, s0
   addi sp, sp, 244
   ret
.Lfunc_end0:
   .size   jud, .Lfunc_end0-jud
.globl   main
   .p2align   2
   .type   main,@function
main:
.main.mainentry:
   addi sp, sp, -236
   mv s1, ra
   sw s1, 0(sp)
   mv s1, s0
   sw s1, 4(sp)
   call __init_function__
   j .main.first_block__main
.main.first_block__main:
   la s0, n
   sw s0, 8(sp)
   lw s0, 8(sp)
   lw s1, 0(s0)
   sw s1, 12(sp)
   call getInt
   mv s1, a0
   sw s1, 16(sp)
   la s0, n
   sw s0, 20(sp)
   lw s0, 16(sp)
   lw s1, 20(sp)
   sw s0, 0(s1)
   j .main.for_init3
.main.for_init3:
   la s0, i
   sw s0, 24(sp)
   lw s0, 24(sp)
   lw s1, 0(s0)
   sw s1, 28(sp)
   la s0, i
   sw s0, 32(sp)
   li s0, 0
   sw s0, 36(sp)
   lw s0, 36(sp)
   lw s1, 32(sp)
   sw s0, 0(s1)
   j .main.for_condition3
.main.for_condition3:
   la s0, i
   sw s0, 40(sp)
   lw s0, 40(sp)
   lw s1, 0(s0)
   sw s1, 44(sp)
   la s0, n
   sw s0, 48(sp)
   lw s0, 48(sp)
   lw s1, 0(s0)
   sw s1, 52(sp)
   lw s0, 44(sp)
   lw s1, 52(sp)
   slt s0, s0, s1
   sw s0, 56(sp)
   lw s0, 44(sp)
   lw s1, 52(sp)
   blt s0, s1, .main.for_repeat3
   j .main.for_exit3
.main.for_step3:
   la s0, i
   sw s0, 60(sp)
   lw s0, 60(sp)
   lw s1, 0(s0)
   sw s1, 64(sp)
   li s0, 1
   sw s0, 68(sp)
   lw s0, 68(sp)
   lw s1, 64(sp)
   add s0, s0, s1
   sw s0, 72(sp)
   la s0, i
   sw s0, 76(sp)
   lw s0, 72(sp)
   lw s1, 76(sp)
   sw s0, 0(s1)
   j .main.for_condition3
.main.for_repeat3:
   la s0, i
   sw s0, 80(sp)
   lw s0, 80(sp)
   lw s1, 0(s0)
   sw s1, 84(sp)
   la s0, a
   sw s0, 88(sp)
   lw s0, 88(sp)
   lw s1, 0(s0)
   sw s1, 92(sp)
   lw s0, 84(sp)
   lw s1, 84(sp)
   add s0, s0, s1
   sw s0, 96(sp)
   lw s0, 96(sp)
   lw s1, 96(sp)
   add s0, s0, s1
   sw s0, 96(sp)
   lw s0, 96(sp)
   lw s1, 92(sp)
   add s0, s0, s1
   sw s0, 100(sp)
   call getInt
   mv s1, a0
   sw s1, 104(sp)
   lw s0, 104(sp)
   lw s1, 100(sp)
   sw s0, 0(s1)
   j .main.for_step3
.main.for_exit3:
   j .main.for_init4
.main.for_init4:
   la s0, i
   sw s0, 108(sp)
   lw s0, 108(sp)
   lw s1, 0(s0)
   sw s1, 112(sp)
   la s0, n
   sw s0, 116(sp)
   lw s0, 116(sp)
   lw s1, 0(s0)
   sw s1, 120(sp)
   la s0, i
   sw s0, 124(sp)
   lw s0, 120(sp)
   lw s1, 124(sp)
   sw s0, 0(s1)
   j .main.for_condition4
.main.for_condition4:
   la s0, i
   sw s0, 128(sp)
   lw s0, 128(sp)
   lw s1, 0(s0)
   sw s1, 132(sp)
   li s0, 0
   sw s0, 136(sp)
   lw s0, 136(sp)
   lw s1, 132(sp)
   slt s0, s0, s1
   sw s0, 140(sp)
   li s0, 0
   sw s0, 144(sp)
   lw s0, 132(sp)
   lw s1, 144(sp)
   bgt s0, s1, .main.for_repeat4
   j .main.for_exit4
.main.for_step4:
   la s0, i
   sw s0, 148(sp)
   lw s0, 148(sp)
   lw s1, 0(s0)
   sw s1, 152(sp)
   la s0, i
   sw s0, 156(sp)
   lw s0, 156(sp)
   lw s1, 0(s0)
   sw s1, 160(sp)
   li s0, 2
   sw s0, 164(sp)
   lw s0, 160(sp)
   lw s1, 164(sp)
   div s0, s0, s1
   sw s0, 168(sp)
   la s0, i
   sw s0, 172(sp)
   lw s0, 168(sp)
   lw s1, 172(sp)
   sw s0, 0(s1)
   j .main.for_condition4
.main.for_repeat4:
   la s0, i
   sw s0, 176(sp)
   lw s0, 176(sp)
   lw s1, 0(s0)
   sw s1, 180(sp)
   lw s0, 180(sp)
   mv a0, s0
   call jud
   mv s1, a0
   sw s1, 184(sp)
   li s0, 0
   sw s0, 188(sp)
   lw s0, 188(sp)
   lw s1, 184(sp)
   slt s0, s0, s1
   sw s0, 192(sp)
   li s0, 0
   sw s0, 196(sp)
   lw s0, 184(sp)
   lw s1, 196(sp)
   bgt s0, s1, .main.if_true3
   j .main.if_false3
.main.for_exit4:
   li s0, 0
   sw s0, 200(sp)
   lw s0, 200(sp)
   mv a0, s0
   lw s0, 4(sp)
   mv s0, s0
   lw s0, 0(sp)
   mv ra, s0
   addi sp, sp, 236
   ret
   j .main.mainexit
.main.if_true3:
   la s0, i
   sw s0, 204(sp)
   lw s0, 204(sp)
   lw s1, 0(s0)
   sw s1, 208(sp)
   lw s0, 208(sp)
   mv a0, s0
   call toString
   mv s1, a0
   sw s1, 212(sp)
   lw s0, 212(sp)
   lw s1, 0(s0)
   sw s1, 216(sp)
   lw s0, 216(sp)
   mv a0, s0
   call print
   li s0, 0
   sw s0, 220(sp)
   lw s0, 220(sp)
   mv a0, s0
   lw s0, 4(sp)
   mv s0, s0
   lw s0, 0(sp)
   mv ra, s0
   addi sp, sp, 236
   ret
   j .main.if_exit3
.main.if_false3:
   j .main.if_exit3
.main.if_exit3:
   j .main.for_step4
.main.mainexit:
   li s0, 0
   sw s0, 224(sp)
   lw s0, 224(sp)
   mv a0, s0
   lw s0, 4(sp)
   mv s0, s0
   lw s0, 0(sp)
   mv ra, s0
   addi sp, sp, 236
   ret
   lw s1, 228(sp)
   sw s1, 232(sp)
   lw s0, 232(sp)
   mv a0, s0
   lw s0, 4(sp)
   mv s0, s0
   lw s0, 0(sp)
   mv ra, s0
   addi sp, sp, 236
   ret
.Lfunc_end1:
   .size   main, .Lfunc_end1-main
.globl   __init_function__
   .p2align   2
   .type   __init_function__,@function
__init_function__:
.__init_function__.__init_function__entry:
   addi sp, sp, -84
   mv s1, ra
   sw s1, 0(sp)
   mv s1, s0
   sw s1, 4(sp)
   la s0, n
   sw s0, 8(sp)
   li s0, 0
   sw s0, 12(sp)
   lw s0, 12(sp)
   lw s1, 8(sp)
   sw s0, 0(s1)
   li s0, 4
   sw s0, 16(sp)
   li s0, 20
   sw s0, 20(sp)
   lw s0, 16(sp)
   lw s1, 20(sp)
   mul s0, s0, s1
   sw s0, 24(sp)
   li s0, 4
   sw s0, 28(sp)
   lw s0, 28(sp)
   lw s1, 24(sp)
   add s0, s0, s1
   sw s0, 32(sp)
   lw s0, 32(sp)
   mv a0, s0
   call __built_in_malloc
   mv s1, a0
   sw s1, 36(sp)
   lw s0, 36(sp)
   mv s1, s0
   sw s1, 40(sp)
   li s0, 20
   sw s0, 44(sp)
   lw s0, 44(sp)
   lw s1, 40(sp)
   sw s0, 0(s1)
   li s0, 1
   sw s0, 48(sp)
   lw s0, 48(sp)
   lw s1, 48(sp)
   add s0, s0, s1
   sw s0, 52(sp)
   lw s0, 52(sp)
   lw s1, 52(sp)
   add s0, s0, s1
   sw s0, 52(sp)
   lw s0, 52(sp)
   lw s1, 40(sp)
   add s0, s0, s1
   sw s0, 56(sp)
   lw s0, 56(sp)
   mv s1, s0
   sw s1, 60(sp)
   lw s0, 60(sp)
   sw s0, 64(sp)
   lw s1, 64(sp)
   sw s1, 68(sp)
   la s0, a
   sw s0, 72(sp)
   lw s0, 68(sp)
   lw s1, 72(sp)
   sw s0, 0(s1)
   la s0, i
   sw s0, 76(sp)
   li s0, 0
   sw s0, 80(sp)
   lw s0, 80(sp)
   lw s1, 76(sp)
   sw s0, 0(s1)
   j .__init_function__.__init_function__exit
.__init_function__.__init_function__exit:
   lw s0, 4(sp)
   mv s0, s0
   lw s0, 0(sp)
   mv ra, s0
   addi sp, sp, 84
   ret
.Lfunc_end2:
   .size   __init_function__, .Lfunc_end2-__init_function__
   .type   n,@object
   .section   .rodata.str1.1,"aMS",@progbits,1
   .globl   n
   .p2align   2
n:
   .word   0
   .size   .n, 4
   .type   a,@object
   .globl   a
   .p2align   2
a:
   .word   0
   .size   .a, 4
   .type   i,@object
   .globl   i
   .p2align   2
i:
   .word   0
   .size   .i, 4
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
