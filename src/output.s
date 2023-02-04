	.text
	.file	"test.mx"
.globl   abs
   .p2align   2
   .type   abs,@function
abs:
.abs.absentry:
   j .abs.first_block__abs
.abs.first_block__abs:
   li a2, 0
   slt a2, a2, a0
   li a2, 0
   bgt a0, a2, .abs.if_true
   j .abs.if_false
.abs.if_true:
   ret
   j .abs.if_exit
.abs.if_false:
   j .abs.if_exit
.abs.if_exit:
   li t4, 0
   sub a0, t4, a0
   ret
   j .abs.absexit
.abs.absexit:
   mv a0, a2
   ret
.Lfunc_end0:
   .size   abs, .Lfunc_end0-abs
.globl   main
   .p2align   2
   .type   main,@function
main:
.main.mainentry:
   addi sp, sp, -16
   sw ra, 0(sp)
   sw s3, 12(sp)
   sw s5, 4(sp)
   call __init_function__
   j .main.first_block__main
.main.first_block__main:
   j .main.for_init
.main.for_init:
   la a2, i
   lw a2, 0(a2)
   la a2, i
   li ra, 0
   sw ra, 0(a2)
   j .main.for_condition
.main.for_condition:
   la a2, i
   lw ra, 0(a2)
   li a2, 5
   slt a2, ra, a2
   li a2, 5
   blt ra, a2, .main.for_repeat
   j .main.for_exit
.main.for_step:
   la a2, i
   lw ra, 0(a2)
   li a2, 1
   add a2, a2, ra
   la ra, i
   sw a2, 0(ra)
   j .main.for_condition
.main.for_repeat:
   j .main.for_init2
.main.for_exit:
   la a2, r
   lw a2, 0(a2)
   li ra, 2
   sub a0, ra, a2
   call abs
   mv s3, a0
   la a2, c
   lw a2, 0(a2)
   li ra, 2
   sub a0, ra, a2
   call abs
   add a0, s3, a0
   call printInt
   li a0, 0
   lw ra, 0(sp)
   lw s3, 12(sp)
   lw s5, 4(sp)
   ret
   j .main.mainexit
   addi sp, sp, 16
.main.for_init2:
   la a2, j
   lw a2, 0(a2)
   la a2, j
   li ra, 0
   sw ra, 0(a2)
   j .main.for_condition2
.main.for_condition2:
   la a2, j
   lw ra, 0(a2)
   li a2, 5
   slt a2, ra, a2
   li a2, 5
   blt ra, a2, .main.for_repeat2
   j .main.for_exit2
.main.for_step2:
   la a2, j
   lw a2, 0(a2)
   li ra, 1
   add a2, ra, a2
   la ra, j
   sw a2, 0(ra)
   j .main.for_condition2
.main.for_repeat2:
   la a2, n
   lw a2, 0(a2)
   call getInt
   la a2, n
   sw a0, 0(a2)
   la a2, n
   lw ra, 0(a2)
   li a2, 1
   xor a2, ra, a2
   sltiu a2, a2, 1
   li a2, 1
   beq ra, a2, .main.if_true2
   j .main.if_false2
.main.for_exit2:
   j .main.for_step
.main.if_true2:
   la a2, r
   lw a2, 0(a2)
   la a2, i
   lw ra, 0(a2)
   la a2, r
   sw ra, 0(a2)
   la a2, c
   lw a2, 0(a2)
   la a2, j
   lw a2, 0(a2)
   la ra, c
   sw a2, 0(ra)
   j .main.if_exit2
.main.if_false2:
   j .main.if_exit2
.main.if_exit2:
   j .main.for_step2
.main.mainexit:
   li a0, 0
   lw ra, 0(sp)
   lw s3, 12(sp)
   lw s5, 4(sp)
   ret
   lw a0, 8(sp)
   lw ra, 0(sp)
   lw s3, 12(sp)
   lw s5, 4(sp)
   ret
   addi sp, sp, 16
   addi sp, sp, 16
.Lfunc_end1:
   .size   main, .Lfunc_end1-main
.globl   __init_function__
   .p2align   2
   .type   __init_function__,@function
__init_function__:
.__init_function__.__init_function__entry:
   la t4, n
   li a2, 0
   sw a2, 0(t4)
   la t4, r
   li a2, 0
   sw a2, 0(t4)
   la t4, c
   li a2, 0
   sw a2, 0(t4)
   la t4, i
   li a2, 0
   sw a2, 0(t4)
   la a2, j
   li t4, 0
   sw t4, 0(a2)
   j .__init_function__.__init_function__exit
.__init_function__.__init_function__exit:
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
   .type   r,@object
   .globl   r
   .p2align   2
r:
   .word   0
   .size   .r, 4
   .type   c,@object
   .globl   c
   .p2align   2
c:
   .word   0
   .size   .c, 4
   .type   i,@object
   .globl   i
   .p2align   2
i:
   .word   0
   .size   .i, 4
   .type   j,@object
   .globl   j
   .p2align   2
j:
   .word   0
   .size   .j, 4
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
