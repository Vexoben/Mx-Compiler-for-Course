	.text
	.file	"test.mx"
.globl   main
   .p2align   2
   .type   main,@function
main:
.main.mainentry:
   addi sp, sp, -16
   sw ra, 8(sp)
   sw s7, 4(sp)
   call __init_function__
   j .main.first_block__main
.main.first_block__main:
   li a0, 4
   call __built_in_malloc
   mv s7, a0
   mv a0, s7
   call __constructor__older
   mv a0, s7
   call __in_class__older_solveAge
   li a3, 0
   add a3, s7, a3
   lw a6, 0(a3)
   li a3, 10000
   slt a3, a3, a6
   li a3, 10000
   bgt a6, a3, .main.if_true2
   j .main.if_false2
.main.if_true2:
   li a6, 0
   la a3, .const_str
   add a0, a3, a6
   call println
   j .main.if_exit2
.main.if_false2:
   j .main.if_exit2
.main.if_exit2:
   li a0, 0
   lw ra, 8(sp)
   lw s7, 4(sp)
   addi sp, sp, 16
   ret
   j .main.mainexit
.main.mainexit:
   li a0, 0
   lw ra, 8(sp)
   lw s7, 4(sp)
   addi sp, sp, 16
   ret
   lw a3, 12(sp)
   sw a3, 0(sp)
   lw a0, 0(sp)
   lw ra, 8(sp)
   lw s7, 4(sp)
   addi sp, sp, 16
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
.globl   __in_class__older_solveAge
   .p2align   2
   .type   __in_class__older_solveAge,@function
__in_class__older_solveAge:
.__in_class__older_solveAge.__in_class__older_solveAgeentry:
   j .__in_class__older_solveAge.first_block____in_class__older_solveAge
.__in_class__older_solveAge.first_block____in_class__older_solveAge:
   j .__in_class__older_solveAge.for_init
.__in_class__older_solveAge.for_init:
   li a3, 1
   j .__in_class__older_solveAge.for_condition
.__in_class__older_solveAge.for_condition:
   li t2, 100
   slt t2, a3, t2
   li t2, 100
   blt a3, t2, .__in_class__older_solveAge.for_repeat
   j .__in_class__older_solveAge.for_exit
.__in_class__older_solveAge.for_step:
   li t2, 1
   add a3, t2, a3
   j .__in_class__older_solveAge.for_condition
.__in_class__older_solveAge.for_repeat:
   j .__in_class__older_solveAge.for_init2
.__in_class__older_solveAge.for_exit:
   j .__in_class__older_solveAge.__in_class__older_solveAgeexit
.__in_class__older_solveAge.for_init2:
   li a6, 1
   add a6, a3, a6
   j .__in_class__older_solveAge.for_condition2
.__in_class__older_solveAge.for_condition2:
   li t2, 100
   slt t2, a6, t2
   li t2, 100
   blt a6, t2, .__in_class__older_solveAge.for_repeat2
   j .__in_class__older_solveAge.for_exit2
.__in_class__older_solveAge.for_step2:
   li t2, 1
   add a6, t2, a6
   j .__in_class__older_solveAge.for_condition2
.__in_class__older_solveAge.for_repeat2:
   j .__in_class__older_solveAge.for_init3
.__in_class__older_solveAge.for_exit2:
   j .__in_class__older_solveAge.for_step
.__in_class__older_solveAge.for_init3:
   li t5, 1
   add t5, a6, t5
   j .__in_class__older_solveAge.for_condition3
.__in_class__older_solveAge.for_condition3:
   li t2, 100
   slt t2, t5, t2
   li t2, 100
   blt t5, t2, .__in_class__older_solveAge.for_repeat3
   j .__in_class__older_solveAge.for_exit3
.__in_class__older_solveAge.for_step3:
   li t2, 1
   add t5, t2, t5
   j .__in_class__older_solveAge.for_condition3
.__in_class__older_solveAge.for_repeat3:
   mv t2, a3
   sub t2, t2, a3
   add t2, t2, a3
   add t2, t2, a6
   sub t2, t2, a6
   add t2, t2, a6
   add t2, t2, t5
   sub t2, t2, t5
   add a7, t2, t5
   li t2, 100
   mul t1, t2, a3
   li t2, 10
   mul t2, t2, a6
   add t2, t1, t2
   add t2, t2, t5
   mul t2, a7, t2
   li t1, 1926
   rem t1, t2, t1
   li t2, 0
   xor t2, t1, t2
   sltiu t2, t2, 1
   li t2, 0
   beq t1, t2, .__in_class__older_solveAge.if_true
   j .__in_class__older_solveAge.if_false
.__in_class__older_solveAge.for_exit3:
   j .__in_class__older_solveAge.for_step2
.__in_class__older_solveAge.if_true:
   li t2, 0
   add t1, a0, t2
   mv t2, a3
   sub t2, a3, t2
   add t2, t2, a3
   add t2, t2, a6
   sub t2, t2, a6
   add t2, t2, a6
   add t2, t2, t5
   sub t2, t2, t5
   add t6, t2, t5
   li t2, 100
   mul a7, t2, a3
   li t2, 10
   mul t2, t2, a6
   add t2, a7, t2
   add t2, t2, t5
   mul t2, t6, t2
   sw t2, 0(t1)
   j .__in_class__older_solveAge.if_exit
.__in_class__older_solveAge.if_false:
   j .__in_class__older_solveAge.if_exit
.__in_class__older_solveAge.if_exit:
   j .__in_class__older_solveAge.for_step3
.__in_class__older_solveAge.__in_class__older_solveAgeexit:
   ret
.Lfunc_end2:
   .size   __in_class__older_solveAge, .Lfunc_end2-__in_class__older_solveAge
.globl   __constructor__older
   .p2align   2
   .type   __constructor__older,@function
__constructor__older:
.__constructor__older.__constructor__olderentry:
   j .__constructor__older.first_block____constructor__older
.__constructor__older.first_block____constructor__older:
   j .__constructor__older.__constructor__olderexit
.__constructor__older.__constructor__olderexit:
   ret
.Lfunc_end3:
   .size   __constructor__older, .Lfunc_end3-__constructor__older
   .type   .const_str,@object
.section   .rodata.str1.1,"aMS",@progbits,1
.const_str:
   .asciz   "eternal!"
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
