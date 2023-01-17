	.text
	.file	"test.mx"
	.globl	main
	.p2align	2
	.type	main,@function
main:
.main.mainentry:
	addi sp, sp, -76
	mv s1, ra
	sw s1, 0(sp)
	mv s1, s0
	sw s1, 0(sp)
	mv s1, s1
	sw s1, 0(sp)
	mv s1, s2
	sw s1, 0(sp)
	mv s1, s3
	sw s1, 0(sp)
	mv s1, s4
	sw s1, 0(sp)
	mv s1, s5
	sw s1, 0(sp)
	mv s1, s6
	sw s1, 0(sp)
	mv s1, s7
	sw s1, 0(sp)
	mv s1, s8
	sw s1, 0(sp)
	mv s1, s9
	sw s1, 0(sp)
	mv s1, s10
	sw s1, 0(sp)
	mv s1, s11
	sw s1, 0(sp)
	call __init_function__
	j .main.first_block__main
.main.first_block__main:
	lw s1, 52(sp)
	sw s1, 0(sp)
	li s0, 1
	sw s0, 0(sp)
	sw sp, 0(s1)
	sw s1, 0(sp)
	j .main.mainexit
.main.mainexit:
	li s0, 0
	sw s0, 0(sp)
	lw s0, 0(sp)
	mv a0, s0
	lw s0, 0(sp)
	mv s0, s0
	lw s0, 0(sp)
	mv s1, s0
	lw s0, 0(sp)
	mv s2, s0
	lw s0, 0(sp)
	mv s3, s0
	lw s0, 0(sp)
	mv s4, s0
	lw s0, 0(sp)
	mv s5, s0
	lw s0, 0(sp)
	mv s6, s0
	lw s0, 0(sp)
	mv s7, s0
	lw s0, 0(sp)
	mv s8, s0
	lw s0, 0(sp)
	mv s9, s0
	lw s0, 0(sp)
	mv s10, s0
	lw s0, 0(sp)
	mv s11, s0
	lw s0, 0(sp)
	mv ra, s0
	addi sp, sp, 76
	ret
	lw s1, 68(sp)
	sw s1, 0(sp)
	lw s0, 0(sp)
	mv a0, s0
	lw s0, 0(sp)
	mv s0, s0
	lw s0, 0(sp)
	mv s1, s0
	lw s0, 0(sp)
	mv s2, s0
	lw s0, 0(sp)
	mv s3, s0
	lw s0, 0(sp)
	mv s4, s0
	lw s0, 0(sp)
	mv s5, s0
	lw s0, 0(sp)
	mv s6, s0
	lw s0, 0(sp)
	mv s7, s0
	lw s0, 0(sp)
	mv s8, s0
	lw s0, 0(sp)
	mv s9, s0
	lw s0, 0(sp)
	mv s10, s0
	lw s0, 0(sp)
	mv s11, s0
	lw s0, 0(sp)
	mv ra, s0
	addi sp, sp, 76
	ret
	addi sp, sp, 76
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.globl	__init_function__
	.p2align	2
	.type	__init_function__,@function
__init_function__:
.__init_function__.__init_function__entry:
	addi sp, sp, -52
	mv s1, ra
	sw s1, 0(sp)
	mv s1, s0
	sw s1, 0(sp)
	mv s1, s1
	sw s1, 0(sp)
	mv s1, s2
	sw s1, 0(sp)
	mv s1, s3
	sw s1, 0(sp)
	mv s1, s4
	sw s1, 0(sp)
	mv s1, s5
	sw s1, 0(sp)
	mv s1, s6
	sw s1, 0(sp)
	mv s1, s7
	sw s1, 0(sp)
	mv s1, s8
	sw s1, 0(sp)
	mv s1, s9
	sw s1, 0(sp)
	mv s1, s10
	sw s1, 0(sp)
	mv s1, s11
	sw s1, 0(sp)
	j .__init_function__.__init_function__exit
.__init_function__.__init_function__exit:
	lw s0, 0(sp)
	mv s0, s0
	lw s0, 0(sp)
	mv s1, s0
	lw s0, 0(sp)
	mv s2, s0
	lw s0, 0(sp)
	mv s3, s0
	lw s0, 0(sp)
	mv s4, s0
	lw s0, 0(sp)
	mv s5, s0
	lw s0, 0(sp)
	mv s6, s0
	lw s0, 0(sp)
	mv s7, s0
	lw s0, 0(sp)
	mv s8, s0
	lw s0, 0(sp)
	mv s9, s0
	lw s0, 0(sp)
	mv s10, s0
	lw s0, 0(sp)
	mv s11, s0
	lw s0, 0(sp)
	mv ra, s0
	addi sp, sp, 52
	ret
	addi sp, sp, 52
.Lfunc_end1:
	.size	__init_function__, .Lfunc_end1-__init_function__
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
