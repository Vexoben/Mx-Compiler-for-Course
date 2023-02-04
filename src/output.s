	.text
	.file	"test.mx"
.globl   foo
   .p2align   2
   .type   foo,@function
foo:
.foo.fooentry:
   addi sp, sp, -60
   sw ra, 4(sp)
   j .foo.first_block__foo
.foo.first_block__foo:
   sw a0, 40(sp)
   sw a1, 56(sp)
   sw a2, 52(sp)
   lw t3, 40(sp)
   sw t3, 12(sp)
   li a5, 1000
   lw t3, 12(sp)
   mul t3, t3, a5
   lw a5, 56(sp)
   sw a5, 48(sp)
   li a5, 10
   lw a4, 48(sp)
   mul a5, a4, a5
   add t3, t3, a5
   lw a5, 52(sp)
   sw a5, 36(sp)
   lw a5, 36(sp)
   add a0, t3, a5
   call toString
   call println
   lw t3, 40(sp)
   sw t3, 20(sp)
   li a5, 1
   lw t3, 20(sp)
   xor t3, t3, a5
   sltiu t3, t3, 1
   li a5, 1
   lw t3, 20(sp)
   beq t3, a5, .foo.if_true
   j .foo.if_false
.foo.if_true:
   lw ra, 4(sp)
   addi sp, sp, 60
   ret
   j .foo.if_exit
.foo.if_false:
   j .foo.if_exit
.foo.if_exit:
   lw t3, 56(sp)
   lw a5, 56(sp)
   sw a5, 24(sp)
   lw a5, 52(sp)
   sw a5, 44(sp)
   lw a5, 44(sp)
   sw a5, 56(sp)
   lw a5, 52(sp)
   sw a5, 16(sp)
   sw t3, 52(sp)
   lw t3, 56(sp)
   sw t3, 28(sp)
   lw a2, 52(sp)
   li a0, 1
   lw a1, 28(sp)
   call foo
   lw t3, 40(sp)
   sw t3, 32(sp)
   li t3, 1000
   lw a5, 32(sp)
   mul a5, a5, t3
   lw t3, 56(sp)
   sw t3, 8(sp)
   li a4, 10
   lw t3, 8(sp)
   mul t3, t3, a4
   add a5, a5, t3
   lw t3, 52(sp)
   sw t3, 0(sp)
   lw t3, 0(sp)
   add a0, a5, t3
   call toString
   call println
   j .foo.fooexit
.foo.fooexit:
   lw ra, 4(sp)
   addi sp, sp, 60
   ret
.Lfunc_end0:
   .size   foo, .Lfunc_end0-foo
.globl   main
   .p2align   2
   .type   main,@function
main:
.main.mainentry:
   addi sp, sp, -12
   sw ra, 0(sp)
   call __init_function__
   j .main.first_block__main
.main.first_block__main:
   li a0, 7
   li a1, 5
   li a2, 3
   call foo
   li a0, 0
   lw ra, 0(sp)
   addi sp, sp, 12
   ret
   j .main.mainexit
.main.mainexit:
   li a0, 0
   lw ra, 0(sp)
   addi sp, sp, 12
   ret
   lw t3, 8(sp)
   sw t3, 4(sp)
   lw a0, 4(sp)
   lw ra, 0(sp)
   addi sp, sp, 12
   ret
.Lfunc_end1:
   .size   main, .Lfunc_end1-main
.globl   __init_function__
   .p2align   2
   .type   __init_function__,@function
__init_function__:
.__init_function__.__init_function__entry:
   j .__init_function__.__init_function__exit
.__init_function__.__init_function__exit:
   ret
.Lfunc_end2:
   .size   __init_function__, .Lfunc_end2-__init_function__
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
