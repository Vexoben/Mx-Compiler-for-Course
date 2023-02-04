	.text
	.file	"test.mx"
.globl   main
   .p2align   2
   .type   main,@function
main:
.main.mainentry:
   addi sp, sp, -8
   sw ra, 0(sp)
   call __init_function__
   j .main.first_block__main
.main.first_block__main:
   la t1, n
   lw t1, 0(t1)
   call getInt
   la t1, n
   sw a0, 0(t1)
   j .main.for_init
.main.for_init:
   la t1, i
   lw t1, 0(t1)
   la a7, i
   li t1, 0
   sw t1, 0(a7)
   j .main.for_condition
.main.for_condition:
   la t1, i
   lw t1, 0(t1)
   la a7, n
   lw a7, 0(a7)
   slt a1, t1, a7
   blt t1, a7, .main.for_repeat
   j .main.for_exit
.main.for_step:
   la t1, i
   lw t1, 0(t1)
   li a7, 1
   add a7, a7, t1
   la t1, i
   sw a7, 0(t1)
   j .main.for_condition
.main.for_repeat:
   la t1, p
   lw t1, 0(t1)
   call getInt
   la t1, p
   sw a0, 0(t1)
   la t1, q
   lw t1, 0(t1)
   call getInt
   la t1, q
   sw a0, 0(t1)
   la t1, r
   lw t1, 0(t1)
   call getInt
   la t1, r
   sw a0, 0(t1)
   la t1, x
   lw t1, 0(t1)
   la t1, x
   lw a7, 0(t1)
   la t1, p
   lw t1, 0(t1)
   add t1, a7, t1
   la a7, x
   sw t1, 0(a7)
   la t1, y
   lw t1, 0(t1)
   la t1, y
   lw t1, 0(t1)
   la a7, q
   lw a7, 0(a7)
   add a7, t1, a7
   la t1, y
   sw a7, 0(t1)
   la t1, z
   lw t1, 0(t1)
   la t1, z
   lw a7, 0(t1)
   la t1, r
   lw t1, 0(t1)
   add a7, a7, t1
   la t1, z
   sw a7, 0(t1)
   j .main.for_step
.main.for_exit:
   la t1, x
   lw a1, 0(t1)
   li t1, 0
   xor t1, a1, t1
   sltiu t1, t1, 1
   li a7, 0
   li t1, 0
   beq a1, t1, .main.logic_right
   j .main.logic_exit
.main.if_true:
   li t1, 0
   la a7, .const_str
   add a0, a7, t1
   call print
   j .main.if_exit
.main.if_false:
   li t1, 0
   la a7, .const_str2
   add a0, a7, t1
   call print
   j .main.if_exit
.main.if_exit:
   j .main.mainexit
.main.logic_right:
   la t1, y
   lw a7, 0(t1)
   li t1, 0
   xor t1, a7, t1
   sltiu a7, t1, 1
   j .main.logic_exit
.main.logic_exit:
   li t1, 0
   bne a7, zero, .main.logic_right2
   j .main.logic_exit2
.main.logic_right2:
   la t1, z
   lw a7, 0(t1)
   li t1, 0
   xor t1, a7, t1
   sltiu t1, t1, 1
   j .main.logic_exit2
.main.logic_exit2:
   bne t1, zero, .main.if_true
   j .main.if_false
.main.mainexit:
   li a0, 0
   lw ra, 0(sp)
   ret
   lw a0, 4(sp)
   lw ra, 0(sp)
   ret
   addi sp, sp, 8
   addi sp, sp, 8
.Lfunc_end0:
   .size   main, .Lfunc_end0-main
.globl   __init_function__
   .p2align   2
   .type   __init_function__,@function
__init_function__:
.__init_function__.__init_function__entry:
   la t1, p
   li a7, 0
   sw a7, 0(t1)
   la a7, q
   li t1, 0
   sw t1, 0(a7)
   la a7, r
   li t1, 0
   sw t1, 0(a7)
   la t1, x
   li a7, 0
   sw a7, 0(t1)
   la a7, y
   li t1, 0
   sw t1, 0(a7)
   la t1, z
   li a7, 0
   sw a7, 0(t1)
   la a7, n
   li t1, 0
   sw t1, 0(a7)
   la t1, i
   li a7, 0
   sw a7, 0(t1)
   j .__init_function__.__init_function__exit
.__init_function__.__init_function__exit:
   ret
.Lfunc_end1:
   .size   __init_function__, .Lfunc_end1-__init_function__
   .type   .const_str,@object
.section   .rodata.str1.1,"aMS",@progbits,1
.const_str:
   .asciz   "YES"
   .type   .const_str2,@object
.const_str2:
   .asciz   "NO"
   .type   p,@object
   .section   .rodata.str1.1,"aMS",@progbits,1
   .globl   p
   .p2align   2
p:
   .word   0
   .size   .p, 4
   .type   q,@object
   .globl   q
   .p2align   2
q:
   .word   0
   .size   .q, 4
   .type   r,@object
   .globl   r
   .p2align   2
r:
   .word   0
   .size   .r, 4
   .type   x,@object
   .globl   x
   .p2align   2
x:
   .word   0
   .size   .x, 4
   .type   y,@object
   .globl   y
   .p2align   2
y:
   .word   0
   .size   .y, 4
   .type   z,@object
   .globl   z
   .p2align   2
z:
   .word   0
   .size   .z, 4
   .type   n,@object
   .globl   n
   .p2align   2
n:
   .word   0
   .size   .n, 4
   .type   i,@object
   .globl   i
   .p2align   2
i:
   .word   0
   .size   .i, 4
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
