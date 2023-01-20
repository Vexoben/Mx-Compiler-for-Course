	.text
	.file	"test.mx"
.globl   main
   .p2align   2
   .type   main,@function
main:
.main.mainentry:
   addi sp, sp, -44
   mv s1, ra
   sw s1, 0(sp)
   mv s1, s0
   sw s1, 4(sp)
   call __init_function__
   j .main.first_block__main
.main.first_block__main:
   li s0, 0
   sw s0, 8(sp)
   la s0, .const_str
   sw s0, 12(sp)
   lw s0, 12(sp)
   lw s1, 8(sp)
   add s0, s0, s1
   sw s0, 16(sp)
   lw s0, 16(sp)
   sw s0, 20(sp)
   lw s1, 20(sp)
   sw s1, 24(sp)
   lw s0, 24(sp)
   mv a0, s0
   call println
   li s0, 0
   sw s0, 28(sp)
   lw s0, 28(sp)
   mv a0, s0
   lw s0, 4(sp)
   mv s0, s0
   lw s0, 0(sp)
   mv ra, s0
   addi sp, sp, 44
   ret
   j .main.mainexit
.main.mainexit:
   li s0, 0
   sw s0, 32(sp)
   lw s0, 32(sp)
   mv a0, s0
   lw s0, 4(sp)
   mv s0, s0
   lw s0, 0(sp)
   mv ra, s0
   addi sp, sp, 44
   ret
   lw s1, 36(sp)
   sw s1, 40(sp)
   lw s0, 40(sp)
   mv a0, s0
   lw s0, 4(sp)
   mv s0, s0
   lw s0, 0(sp)
   mv ra, s0
   addi sp, sp, 44
   ret
.Lfunc_end0:
   .size   main, .Lfunc_end0-main
.globl   __init_function__
   .p2align   2
   .type   __init_function__,@function
__init_function__:
.__init_function__.__init_function__entry:
   addi sp, sp, -8
   mv s1, ra
   sw s1, 0(sp)
   mv s1, s0
   sw s1, 4(sp)
   j .__init_function__.__init_function__exit
.__init_function__.__init_function__exit:
   lw s0, 4(sp)
   mv s0, s0
   lw s0, 0(sp)
   mv ra, s0
   addi sp, sp, 8
   ret
.Lfunc_end1:
   .size   __init_function__, .Lfunc_end1-__init_function__
   .type   .const_str,@object
.section   .rodata.str1.1,"aMS",@progbits,1
.const_str:
   .asciz   "\"\\\n"
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
