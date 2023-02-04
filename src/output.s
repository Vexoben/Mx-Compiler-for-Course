	.text
	.file	"test.mx"
.globl   main
   .p2align   2
   .type   main,@function
main:
.main.mainentry:
   addi sp, sp, -12
   sw ra, 4(sp)
   sw s2, 8(sp)
   call __init_function__
   j .main.first_block__main
.main.first_block__main:
   la t3, m
   lw t3, 0(t3)
   call getInt
   la t3, m
   sw a0, 0(t3)
   la t3, k
   lw t3, 0(t3)
   call getInt
   la t3, k
   sw a0, 0(t3)
   j .main.for_init
.main.for_init:
   la t3, i
   lw t3, 0(t3)
   la t3, i
   li a0, 0
   sw a0, 0(t3)
   j .main.for_condition
.main.for_condition:
   la t3, i
   lw a0, 0(t3)
   la t3, m
   lw t3, 0(t3)
   slt a6, a0, t3
   blt a0, t3, .main.for_repeat
   j .main.for_exit
.main.for_step:
   la t3, i
   lw a0, 0(t3)
   li t3, 1
   add a0, t3, a0
   la t3, i
   sw a0, 0(t3)
   j .main.for_condition
.main.for_repeat:
   la t3, i
   lw a6, 0(t3)
   la t3, a
   lw a0, 0(t3)
   li t3, 4
   mul t3, a6, t3
   add s2, t3, a0
   call getInt
   sw a0, 0(s2)
   j .main.for_step
.main.for_exit:
   j .main.for_init2
.main.for_init2:
   la t3, i
   lw t3, 0(t3)
   la t3, i
   li a0, 0
   sw a0, 0(t3)
   j .main.for_condition2
.main.for_condition2:
   la t3, i
   lw a0, 0(t3)
   la t3, a
   lw a6, 0(t3)
   li t3, 4
   mul t3, a0, t3
   add s2, t3, a6
   la t3, k
   lw t3, 0(t3)
   li a0, 1
   sub t3, t3, a0
   la a0, a
   lw a0, 0(a0)
   li a6, 4
   mul t3, t3, a6
   add t3, t3, a0
   lw a6, 0(s2)
   lw a0, 0(t3)
   slt t3, a6, a0
   xori t3, t3, 1
   li t3, 0
   bge a6, a0, .main.logic_right
   j .main.logic_exit
.main.for_step2:
   la t3, i
   lw a0, 0(t3)
   li t3, 1
   add t3, t3, a0
   la a0, i
   sw t3, 0(a0)
   j .main.for_condition2
.main.for_repeat2:
   j .main.for_step2
.main.for_exit2:
   la t3, i
   lw a0, 0(t3)
   call printInt
   j .main.mainexit
.main.logic_right:
   la t3, i
   lw a0, 0(t3)
   la t3, a
   lw a6, 0(t3)
   li t3, 4
   mul t3, a0, t3
   add t3, t3, a6
   lw t3, 0(t3)
   li a0, 0
   slt t3, a0, t3
   j .main.logic_exit
.main.logic_exit:
   li a0, 0
   bne t3, zero, .main.logic_right2
   j .main.logic_exit2
.main.logic_right2:
   la t3, i
   lw t3, 0(t3)
   la a0, m
   lw a0, 0(a0)
   slt a0, t3, a0
   j .main.logic_exit2
.main.logic_exit2:
   bne a0, zero, .main.for_repeat2
   j .main.for_exit2
.main.mainexit:
   li a0, 0
   lw ra, 4(sp)
   lw s2, 8(sp)
   addi sp, sp, 12
   ret
   lw a0, 0(sp)
   lw ra, 4(sp)
   lw s2, 8(sp)
   addi sp, sp, 12
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
   li a0, 4
   li t3, 50
   mul t3, a0, t3
   li a0, 4
   add a0, a0, t3
   call __built_in_malloc
   li t3, 50
   sw t3, 0(a0)
   li a6, 1
   li t3, 4
   mul t3, a6, t3
   add t3, t3, a0
   la a0, a
   sw t3, 0(a0)
   la t3, m
   li a0, 0
   sw a0, 0(t3)
   la t3, k
   li a0, 0
   sw a0, 0(t3)
   la t3, i
   li a0, 0
   sw a0, 0(t3)
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
   .type   m,@object
   .globl   m
   .p2align   2
m:
   .word   0
   .size   .m, 4
   .type   k,@object
   .globl   k
   .p2align   2
k:
   .word   0
   .size   .k, 4
   .type   i,@object
   .globl   i
   .p2align   2
i:
   .word   0
   .size   .i, 4
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
