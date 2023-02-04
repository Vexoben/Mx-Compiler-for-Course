	.text
	.file	"test.mx"
.globl   main
   .p2align   2
   .type   main,@function
main:
.main.mainentry:
   addi sp, sp, -8
   sw ra, 4(sp)
   call __init_function__
   j .main.first_block__main
.main.first_block__main:
   la t6, b
   lw t6, 0(t6)
   la t6, b
   li t1, 2
   sw t1, 0(t6)
   la t6, a
   lw t6, 0(t6)
   la t1, b
   lw t1, 0(t1)
   add a0, t6, t1
   call printlnInt
   li a0, 0
   lw ra, 4(sp)
   ret
   j .main.mainexit
   addi sp, sp, 8
.main.mainexit:
   li a0, 0
   lw ra, 4(sp)
   ret
   lw a0, 0(sp)
   lw ra, 4(sp)
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
   la t6, a
   li t1, 1
   sw t1, 0(t6)
   la t6, b
   li t1, 0
   sw t1, 0(t6)
   j .__init_function__.__init_function__exit
.__init_function__.__init_function__exit:
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
   .type   b,@object
   .globl   b
   .p2align   2
b:
   .word   0
   .size   .b, 4
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
