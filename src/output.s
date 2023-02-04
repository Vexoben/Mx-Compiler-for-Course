	.text
	.file	"test.mx"
.globl   main
   .p2align   2
   .type   main,@function
main:
.main.mainentry:
   addi sp, sp, -64
   sw ra, 20(sp)
   sw s0, 48(sp)
   sw s1, 0(sp)
   sw s2, 4(sp)
   sw s3, 44(sp)
   sw s4, 16(sp)
   sw s5, 52(sp)
   sw s7, 40(sp)
   sw s8, 60(sp)
   sw s9, 24(sp)
   sw s10, 32(sp)
   sw s11, 28(sp)
   call __init_function__
   j .main.first_block__main
.main.first_block__main:
   li s4, 0
   la s10, MAXK
   lw s10, 0(s10)
   li s7, 4
   mul s7, s7, s10
   li a0, 4
   add a0, a0, s7
   call __built_in_malloc
   sw s10, 0(a0)
   li s7, 1
   li s10, 4
   mul s10, s7, s10
   add s7, s10, a0
   la s10, MAXK
   lw s10, 0(s10)
   li a0, 4
   mul t0, a0, s10
   li a0, 4
   add a0, a0, t0
   call __built_in_malloc
   sw s10, 0(a0)
   li t0, 1
   li s10, 4
   mul s10, t0, s10
   add s10, s10, a0
   la a0, MAXN
   lw s0, 0(a0)
   li a0, 4
   mul a0, a0, s0
   li t0, 4
   add a0, t0, a0
   call __built_in_malloc
   sw s0, 0(a0)
   li t0, 1
   li t6, 4
   mul t0, t0, t6
   add s0, t0, a0
   call getInt
   mv s2, a0
   sw s1, 12(sp)
   call getInt
   mv s1, a0
   j .main.for_init
.main.for_init:
   li s8, 0
   j .main.for_condition
.main.for_condition:
   slt a0, s8, s2
   blt s8, s2, .main.for_repeat
   j .main.for_exit
.main.for_step:
   li a0, 1
   add s8, a0, s8
   j .main.for_condition
.main.for_repeat:
   li a0, 4
   mul a0, s8, a0
   add s3, a0, s7
   call getInt
   sw a0, 0(s3)
   li a0, 4
   mul a0, s8, a0
   add t0, a0, s10
   li a0, 0
   sw a0, 0(t0)
   j .main.for_step
.main.for_exit:
   li t0, 0
   li a0, 4
   mul a0, t0, a0
   add t0, a0, s0
   li a0, 1
   sw a0, 0(t0)
   j .main.while_condition
.main.while_condition:
   slt a0, s1, s4
   xori a0, a0, 1
   ble s4, s1, .main.while_repeat
   j .main.while_exit
.main.while_repeat:
   li s9, 2139062143
   j .main.for_init2
.main.while_exit:
   sw s0, 8(sp)
   li s8, 4
   mul s10, s1, s8
   lw s8, 8(sp)
   add s8, s10, s8
   lw a0, 0(s8)
   call toString
   call print
   li a0, 0
   lw ra, 20(sp)
   lw s0, 48(sp)
   lw s1, 0(sp)
   lw s2, 4(sp)
   lw s3, 44(sp)
   lw s4, 16(sp)
   lw s5, 52(sp)
   lw s7, 40(sp)
   lw s8, 60(sp)
   lw s9, 24(sp)
   lw s10, 32(sp)
   lw s11, 28(sp)
   addi sp, sp, 64
   ret
   j .main.mainexit
.main.for_init2:
   li s8, 0
   j .main.for_condition2
.main.for_condition2:
   slt a0, s8, s2
   blt s8, s2, .main.for_repeat2
   j .main.for_exit2
.main.for_step2:
   li a0, 1
   add s8, a0, s8
   j .main.for_condition2
.main.for_repeat2:
   j .main.while_condition2
.main.for_exit2:
   li a0, 1
   add s4, a0, s4
   li a0, 4
   mul a0, s4, a0
   add a0, a0, s0
   sw s9, 0(a0)
   j .main.while_condition
.main.while_condition2:
   li a0, 4
   mul a0, s4, a0
   add t0, a0, s0
   li a0, 4
   mul a0, s8, a0
   add t6, a0, s7
   li a0, 4
   mul a0, s8, a0
   add a0, a0, s10
   lw a0, 0(a0)
   li ra, 4
   mul a0, a0, ra
   add ra, a0, s0
   lw a0, 0(t6)
   lw t6, 0(ra)
   mul t6, a0, t6
   lw a0, 0(t0)
   slt t0, a0, t6
   xori t0, t0, 1
   bge a0, t6, .main.while_repeat2
   j .main.while_exit2
.main.while_repeat2:
   li a0, 4
   mul a0, s8, a0
   add a0, a0, s10
   lw t0, 0(a0)
   li t6, 1
   add t0, t6, t0
   sw t0, 0(a0)
   j .main.while_condition2
.main.while_exit2:
   li a0, 4
   mul a0, s8, a0
   add t0, a0, s7
   li a0, 4
   mul a0, s8, a0
   add a0, a0, s10
   lw a0, 0(a0)
   li t6, 4
   mul a0, a0, t6
   add a0, a0, s0
   lw t0, 0(t0)
   lw a0, 0(a0)
   mul a0, t0, a0
   slt t0, a0, s9
   blt a0, s9, .main.if_true
   j .main.if_false
.main.if_true:
   li a0, 4
   mul a0, s8, a0
   add t0, a0, s7
   li a0, 4
   mul a0, s8, a0
   add a0, a0, s10
   lw a0, 0(a0)
   li t6, 4
   mul a0, a0, t6
   add a0, a0, s0
   lw t0, 0(t0)
   lw a0, 0(a0)
   mul s9, t0, a0
   mv s5, s8
   j .main.if_exit
.main.if_false:
   j .main.if_exit
.main.if_exit:
   j .main.for_step2
.main.mainexit:
   li a0, 0
   lw ra, 20(sp)
   lw s0, 48(sp)
   lw s1, 0(sp)
   lw s2, 4(sp)
   lw s3, 44(sp)
   lw s4, 16(sp)
   lw s5, 52(sp)
   lw s7, 40(sp)
   lw s8, 60(sp)
   lw s9, 24(sp)
   lw s10, 32(sp)
   lw s11, 28(sp)
   addi sp, sp, 64
   ret
   lw s8, 56(sp)
   sw s8, 36(sp)
   lw a0, 36(sp)
   lw ra, 20(sp)
   lw s0, 48(sp)
   lw s1, 0(sp)
   lw s2, 4(sp)
   lw s3, 44(sp)
   lw s4, 16(sp)
   lw s5, 52(sp)
   lw s7, 40(sp)
   lw s8, 60(sp)
   lw s9, 24(sp)
   lw s10, 32(sp)
   lw s11, 28(sp)
   addi sp, sp, 64
   ret
.Lfunc_end0:
   .size   main, .Lfunc_end0-main
.globl   __init_function__
   .p2align   2
   .type   __init_function__,@function
__init_function__:
.__init_function__.__init_function__entry:
   la t0, MAXK
   li a0, 105
   sw a0, 0(t0)
   la a0, MAXN
   li t0, 100005
   sw t0, 0(a0)
   j .__init_function__.__init_function__exit
.__init_function__.__init_function__exit:
   ret
.Lfunc_end1:
   .size   __init_function__, .Lfunc_end1-__init_function__
   .type   MAXK,@object
   .section   .rodata.str1.1,"aMS",@progbits,1
   .globl   MAXK
   .p2align   2
MAXK:
   .word   0
   .size   .MAXK, 4
   .type   MAXN,@object
   .globl   MAXN
   .p2align   2
MAXN:
   .word   0
   .size   .MAXN, 4
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
