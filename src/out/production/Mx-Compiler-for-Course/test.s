	.text
	.file	"test.mx"
.globl   __constructor__foo
   .p2align   2
   .type   __constructor__foo,@function
__constructor__foo:
.__constructor__foo.__constructor__fooentry:
   addi sp, sp, -36
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
   j .__constructor__foo.first_block____constructor__foo
.__constructor__foo.first_block____constructor__foo:
   lw s1, 12(sp)
   sw s1, 20(sp)
   li s0, 0
   sw s0, 24(sp)
   lw s0, 20(sp)
   lw s1, 24(sp)
   add s0, s0, s1
   sw s0, 28(sp)
   li s0, 2
   sw s0, 32(sp)
   lw s0, 32(sp)
   lw s1, 28(sp)
   sw s0, 0(s1)
   j .__constructor__foo.__constructor__fooexit
.__constructor__foo.__constructor__fooexit:
   lw s0, 4(sp)
   mv s0, s0
   lw s0, 0(sp)
   mv ra, s0
   addi sp, sp, 36
   ret
.Lfunc_end0:
   .size   __constructor__foo, .Lfunc_end0-__constructor__foo
.globl   main
   .p2align   2
   .type   main,@function
main:
.main.mainentry:
   addi sp, sp, -272
   mv s1, ra
   sw s1, 0(sp)
   mv s1, s0
   sw s1, 4(sp)
   call __init_function__
   j .main.first_block__main
.main.first_block__main:
   li s0, 8
   sw s0, 8(sp)
   li s0, 10
   sw s0, 12(sp)
   lw s0, 8(sp)
   lw s1, 12(sp)
   mul s0, s0, s1
   sw s0, 16(sp)
   li s0, 4
   sw s0, 20(sp)
   lw s0, 20(sp)
   lw s1, 16(sp)
   add s0, s0, s1
   sw s0, 24(sp)
   lw s0, 24(sp)
   mv a0, s0
   call __built_in_malloc
   mv s1, a0
   sw s1, 28(sp)
   lw s0, 28(sp)
   mv s1, s0
   sw s1, 32(sp)
   li s0, 10
   sw s0, 36(sp)
   lw s0, 36(sp)
   lw s1, 32(sp)
   sw s0, 0(s1)
   li s0, 1
   sw s0, 40(sp)
   lw s0, 40(sp)
   lw s1, 40(sp)
   add s0, s0, s1
   sw s0, 44(sp)
   lw s0, 44(sp)
   lw s1, 44(sp)
   add s0, s0, s1
   sw s0, 44(sp)
   lw s0, 44(sp)
   lw s1, 32(sp)
   add s0, s0, s1
   sw s0, 48(sp)
   lw s0, 48(sp)
   mv s1, s0
   sw s1, 52(sp)
   li s0, 10
   sw s0, 56(sp)
   lw s0, 56(sp)
   lw s1, 56(sp)
   add s0, s0, s1
   sw s0, 60(sp)
   lw s0, 60(sp)
   lw s1, 60(sp)
   add s0, s0, s1
   sw s0, 60(sp)
   lw s0, 60(sp)
   lw s1, 52(sp)
   add s0, s0, s1
   sw s0, 64(sp)
   lw s0, 52(sp)
   sw s0, 68(sp)
   j .main.while_condition
.main.while_condition:
   lw s1, 68(sp)
   sw s1, 72(sp)
   lw s0, 72(sp)
   lw s1, 64(sp)
   xor s0, s0, s1
   sw s0, 76(sp)
   lw s0, 76(sp)
   sltiu s0, s0, 1
   sw s0, 80(sp)
   lw s0, 72(sp)
   lw s1, 64(sp)
   beq s0, s1, .main.while_exit
   j .main.while_repeat
.main.while_repeat:
   lw s0, 84(sp)
   lw s1, 72(sp)
   sw s0, 0(s1)
   li s0, 1
   sw s0, 88(sp)
   lw s0, 88(sp)
   lw s1, 88(sp)
   add s0, s0, s1
   sw s0, 92(sp)
   lw s0, 92(sp)
   lw s1, 92(sp)
   add s0, s0, s1
   sw s0, 92(sp)
   lw s0, 92(sp)
   lw s1, 72(sp)
   add s0, s0, s1
   sw s0, 96(sp)
   lw s0, 96(sp)
   sw s0, 68(sp)
   j .main.while_condition
.main.while_exit:
   lw s0, 52(sp)
   sw s0, 100(sp)
   lw s1, 100(sp)
   sw s1, 104(sp)
   la s0, b
   sw s0, 108(sp)
   lw s0, 104(sp)
   lw s1, 108(sp)
   sw s0, 0(s1)
   j .main.for_init
.main.for_init:
   li s0, 0
   sw s0, 112(sp)
   lw s0, 112(sp)
   sw s0, 116(sp)
   j .main.for_condition
.main.for_condition:
   lw s1, 116(sp)
   sw s1, 120(sp)
   li s0, 10
   sw s0, 124(sp)
   lw s0, 120(sp)
   lw s1, 124(sp)
   slt s0, s0, s1
   sw s0, 128(sp)
   li s0, 10
   sw s0, 132(sp)
   lw s0, 120(sp)
   lw s1, 132(sp)
   blt s0, s1, .main.for_repeat
   j .main.for_exit
.main.for_step:
   lw s1, 116(sp)
   sw s1, 136(sp)
   li s0, 1
   sw s0, 140(sp)
   lw s0, 140(sp)
   lw s1, 136(sp)
   add s0, s0, s1
   sw s0, 144(sp)
   lw s0, 144(sp)
   sw s0, 116(sp)
   j .main.for_condition
.main.for_repeat:
   lw s1, 116(sp)
   sw s1, 148(sp)
   la s0, b
   sw s0, 152(sp)
   lw s0, 152(sp)
   lw s1, 0(s0)
   sw s1, 156(sp)
   lw s0, 148(sp)
   lw s1, 148(sp)
   add s0, s0, s1
   sw s0, 160(sp)
   lw s0, 160(sp)
   lw s1, 160(sp)
   add s0, s0, s1
   sw s0, 160(sp)
   lw s0, 160(sp)
   lw s1, 156(sp)
   add s0, s0, s1
   sw s0, 164(sp)
   lw s0, 164(sp)
   lw s1, 0(s0)
   sw s1, 168(sp)
   li s0, 0
   sw s0, 172(sp)
   lw s0, 168(sp)
   lw s1, 172(sp)
   add s0, s0, s1
   sw s0, 176(sp)
   lw s1, 116(sp)
   sw s1, 180(sp)
   lw s0, 180(sp)
   lw s1, 176(sp)
   sw s0, 0(s1)
   j .main.for_step
.main.for_exit:
   j .main.for_init2
.main.for_init2:
   li s0, 0
   sw s0, 184(sp)
   lw s0, 184(sp)
   sw s0, 188(sp)
   j .main.for_condition2
.main.for_condition2:
   lw s1, 188(sp)
   sw s1, 192(sp)
   li s0, 10
   sw s0, 196(sp)
   lw s0, 192(sp)
   lw s1, 196(sp)
   slt s0, s0, s1
   sw s0, 200(sp)
   li s0, 10
   sw s0, 204(sp)
   lw s0, 192(sp)
   lw s1, 204(sp)
   blt s0, s1, .main.for_repeat2
   j .main.for_exit2
.main.for_step2:
   lw s1, 188(sp)
   sw s1, 208(sp)
   li s0, 1
   sw s0, 212(sp)
   lw s0, 212(sp)
   lw s1, 208(sp)
   add s0, s0, s1
   sw s0, 216(sp)
   lw s0, 216(sp)
   sw s0, 188(sp)
   j .main.for_condition2
.main.for_repeat2:
   lw s1, 188(sp)
   sw s1, 220(sp)
   la s0, b
   sw s0, 224(sp)
   lw s0, 224(sp)
   lw s1, 0(s0)
   sw s1, 228(sp)
   lw s0, 220(sp)
   lw s1, 220(sp)
   add s0, s0, s1
   sw s0, 232(sp)
   lw s0, 232(sp)
   lw s1, 232(sp)
   add s0, s0, s1
   sw s0, 232(sp)
   lw s0, 232(sp)
   lw s1, 228(sp)
   add s0, s0, s1
   sw s0, 236(sp)
   lw s0, 236(sp)
   lw s1, 0(s0)
   sw s1, 240(sp)
   li s0, 0
   sw s0, 244(sp)
   lw s0, 240(sp)
   lw s1, 244(sp)
   add s0, s0, s1
   sw s0, 248(sp)
   lw s0, 248(sp)
   lw s1, 0(s0)
   sw s1, 252(sp)
   lw s0, 252(sp)
   mv a0, s0
   call printlnInt
   j .main.for_step2
.main.for_exit2:
   li s0, 0
   sw s0, 256(sp)
   lw s0, 256(sp)
   mv a0, s0
   lw s0, 4(sp)
   mv s0, s0
   lw s0, 0(sp)
   mv ra, s0
   addi sp, sp, 272
   ret
   j .main.mainexit
.main.mainexit:
   li s0, 0
   sw s0, 260(sp)
   lw s0, 260(sp)
   mv a0, s0
   lw s0, 4(sp)
   mv s0, s0
   lw s0, 0(sp)
   mv ra, s0
   addi sp, sp, 272
   ret
   lw s1, 264(sp)
   sw s1, 268(sp)
   lw s0, 268(sp)
   mv a0, s0
   lw s0, 4(sp)
   mv s0, s0
   lw s0, 0(sp)
   mv ra, s0
   addi sp, sp, 272
   ret
.Lfunc_end1:
   .size   main, .Lfunc_end1-main
.globl   __init_function__
   .p2align   2
   .type   __init_function__,@function
__init_function__:
.__init_function__.__init_function__entry:
   addi sp, sp, -68
   mv s1, ra
   sw s1, 0(sp)
   mv s1, s0
   sw s1, 4(sp)
   li s0, 4
   sw s0, 8(sp)
   li s0, 10
   sw s0, 12(sp)
   lw s0, 8(sp)
   lw s1, 12(sp)
   mul s0, s0, s1
   sw s0, 16(sp)
   li s0, 4
   sw s0, 20(sp)
   lw s0, 20(sp)
   lw s1, 16(sp)
   add s0, s0, s1
   sw s0, 24(sp)
   lw s0, 24(sp)
   mv a0, s0
   call __built_in_malloc
   mv s1, a0
   sw s1, 28(sp)
   lw s0, 28(sp)
   mv s1, s0
   sw s1, 32(sp)
   li s0, 10
   sw s0, 36(sp)
   lw s0, 36(sp)
   lw s1, 32(sp)
   sw s0, 0(s1)
   li s0, 1
   sw s0, 40(sp)
   lw s0, 40(sp)
   lw s1, 40(sp)
   add s0, s0, s1
   sw s0, 44(sp)
   lw s0, 44(sp)
   lw s1, 44(sp)
   add s0, s0, s1
   sw s0, 44(sp)
   lw s0, 44(sp)
   lw s1, 32(sp)
   add s0, s0, s1
   sw s0, 48(sp)
   lw s0, 48(sp)
   mv s1, s0
   sw s1, 52(sp)
   lw s0, 52(sp)
   sw s0, 56(sp)
   lw s1, 56(sp)
   sw s1, 60(sp)
   la s0, a
   sw s0, 64(sp)
   lw s0, 60(sp)
   lw s1, 64(sp)
   sw s0, 0(s1)
   j .__init_function__.__init_function__exit
.__init_function__.__init_function__exit:
   lw s0, 4(sp)
   mv s0, s0
   lw s0, 0(sp)
   mv ra, s0
   addi sp, sp, 68
   ret
.Lfunc_end2:
   .size   __init_function__, .Lfunc_end2-__init_function__
   .type   a,@object
   .section   .rodata.str1.1,"aMS",@progbits,1
   .globl   a
   .p2align   2
a:
   .word   0
   .size   .a, 4
   .type   b,@object
   .globl   b
   .p2align   2
b:
   .word   0
   .size   .b, 4
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
