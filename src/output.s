	.text
	.file	"test.mx"
.globl   main
   .p2align   2
   .type   main,@function
main:
.main.mainentry:
   addi sp, sp, -28
   sw ra, 12(sp)
   sw s4, 8(sp)
   sw s5, 24(sp)
   sw s11, 20(sp)
   call __init_function__
   j .main.first_block__main
.main.first_block__main:
   li t2, 8
   li a7, 999
   mul a7, t2, a7
   li t2, 4
   add a0, t2, a7
   call __built_in_malloc
   li t2, 999
   sw t2, 0(a0)
   li a7, 1
   li t2, 4
   mul t2, a7, t2
   add s11, t2, a0
   li t2, 999
   li a7, 4
   mul t2, t2, a7
   add a5, t2, s11
   mv t2, s11
   j .main.while_condition
.main.while_condition:
   xor a7, t2, a5
   sltiu a7, a7, 1
   beq t2, a5, .main.while_exit
   j .main.while_repeat
.main.while_repeat:
   li t5, 0
   li a7, 4
   mul a7, t5, a7
   add t5, a7, t2
   li a7, 0
   sw a7, 0(t5)
   li a7, 1
   li t5, 4
   mul a7, a7, t5
   add t2, a7, t2
   j .main.while_condition
.main.while_exit:
   sw s11, 4(sp)
   li t2, 1
   li a7, 4
   mul a7, t2, a7
   lw t2, 4(sp)
   add s5, a7, t2
   li t2, 4
   li a7, 10
   mul t2, t2, a7
   li a7, 4
   add a0, a7, t2
   call __built_in_malloc
   li t2, 10
   sw t2, 0(a0)
   li t2, 1
   li a7, 4
   mul t2, t2, a7
   add t2, t2, a0
   sw t2, 0(s5)
   li t2, 1
   li a7, 4
   mul t2, t2, a7
   add t2, t2, s11
   lw t2, 0(t2)
   li t5, 1
   li a7, 4
   mul a7, t5, a7
   add t2, a7, t2
   li a7, 1
   sw a7, 0(t2)
   li t2, 1
   li a7, 4
   mul t2, t2, a7
   add t2, t2, s11
   lw t5, 0(t2)
   li t2, 1
   li a7, 4
   mul t2, t2, a7
   add t2, t2, t5
   lw a0, 0(t2)
   call printlnInt
   j .main.mainexit
.main.mainexit:
   li a0, 0
   lw ra, 12(sp)
   lw s4, 8(sp)
   lw s5, 24(sp)
   lw s11, 20(sp)
   addi sp, sp, 28
   ret
   lw t2, 16(sp)
   sw t2, 0(sp)
   lw a0, 0(sp)
   lw ra, 12(sp)
   lw s4, 8(sp)
   lw s5, 24(sp)
   lw s11, 20(sp)
   addi sp, sp, 28
   ret
.Lfunc_end0:
   .size   main, .Lfunc_end0-main
.globl   __init_function__
   .p2align   2
   .type   __init_function__,@function
__init_function__:
.__init_function__.__init_function__entry:
   j .__init_function__.__init_function__exit
.__init_function__.__init_function__exit:
   ret
.Lfunc_end1:
   .size   __init_function__, .Lfunc_end1-__init_function__
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
