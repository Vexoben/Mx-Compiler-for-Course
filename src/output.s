	.text
	.file	"test.mx"
.globl   main
   .p2align   2
   .type   main,@function
main:
.main.mainentry:
   addi sp, sp, -16
   sw ra, 0(sp)
   sw s3, 8(sp)
   call __init_function__
   j .main.first_block__main
.main.first_block__main:
   la a3, a
   lw a7, 0(a3)
   li t5, 0
   li a3, 4
   mul a3, t5, a3
   add s3, a3, a7
   li a3, 4
   li t5, 10
   mul a3, a3, t5
   li t5, 4
   add a0, t5, a3
   call __built_in_malloc
   li a3, 10
   sw a3, 0(a0)
   li a3, 1
   li t5, 4
   mul a3, a3, t5
   add a3, a3, a0
   sw a3, 0(s3)
   la a3, a
   lw t5, 0(a3)
   li a3, 0
   li a7, 4
   mul a3, a3, a7
   add a3, a3, t5
   lw a7, 0(a3)
   li t5, 0
   li a3, 4
   mul a3, t5, a3
   add t5, a3, a7
   li a3, 1
   sw a3, 0(t5)
   la a3, a
   lw a7, 0(a3)
   li t5, 0
   li a3, 4
   mul a3, t5, a3
   add a3, a3, a7
   lw t5, 0(a3)
   li a3, 0
   li a7, 4
   mul a3, a3, a7
   add a3, a3, t5
   lw a0, 0(a3)
   call printlnInt
   li a0, 0
   lw ra, 0(sp)
   lw s3, 8(sp)
   addi sp, sp, 16
   ret
   j .main.mainexit
.main.mainexit:
   li a0, 0
   lw ra, 0(sp)
   lw s3, 8(sp)
   addi sp, sp, 16
   ret
   lw a3, 12(sp)
   sw a3, 4(sp)
   lw a0, 4(sp)
   lw ra, 0(sp)
   lw s3, 8(sp)
   addi sp, sp, 16
   ret
.Lfunc_end0:
   .size   main, .Lfunc_end0-main
.globl   __init_function__
   .p2align   2
   .type   __init_function__,@function
__init_function__:
.__init_function__.__init_function__entry:
   addi sp, sp, -4
   sw ra, 0(sp)
   li t5, 8
   li a3, 10
   mul t5, t5, a3
   li a3, 4
   add a0, a3, t5
   call __built_in_malloc
   li a3, 10
   sw a3, 0(a0)
   li a3, 1
   li t5, 4
   mul a3, a3, t5
   add t5, a3, a0
   li a3, 10
   li a7, 4
   mul a3, a3, a7
   add a0, a3, t5
   mv a3, t5
   j .__init_function__.while_condition
.__init_function__.while_condition:
   xor a7, a3, a0
   sltiu a7, a7, 1
   beq a3, a0, .__init_function__.while_exit
   j .__init_function__.while_repeat
.__init_function__.while_repeat:
   li a3, 0
   li a2, 1
   li a7, 4
   mul a7, a2, a7
   add a3, a7, a3
   j .__init_function__.while_condition
.__init_function__.while_exit:
   la a3, a
   sw t5, 0(a3)
   j .__init_function__.__init_function__exit
.__init_function__.__init_function__exit:
   lw ra, 0(sp)
   addi sp, sp, 4
   ret
.Lfunc_end1:
   .size   __init_function__, .Lfunc_end1-__init_function__
   .type   a,@object
   .section   .rodata.str1.1,"aMS",@progbits,1
   .globl   a
   .p2align   2
a:
   .word   0
   .size   .a, 4
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
