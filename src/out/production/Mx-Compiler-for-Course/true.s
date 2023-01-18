	.text
	.file	"test.mx"
	.globl	__constructor__foo      # -- Begin function __constructor__foo
	.p2align	2
	.type	__constructor__foo,@function
__constructor__foo:                     # @__constructor__foo
	.cfi_startproc
# %bb.0:                                # %__constructor__fooentry
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	sw	a0, -12(s0)
	j	.LBB0_1
.LBB0_1:                                # %first_block____constructor__foo
	lw	a0, -12(s0)
	addi	a1, zero, 2
	sw	a1, 0(a0)
	j	.LBB0_2
.LBB0_2:                                # %__constructor__fooexit
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end0:
	.size	__constructor__foo, .Lfunc_end0-__constructor__foo
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %mainentry
	addi	sp, sp, -48
	.cfi_def_cfa_offset 48
	sw	ra, 44(sp)
	sw	s0, 40(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 48
	.cfi_def_cfa s0, 0
	call	__init_function__
	j	.LBB1_1
.LBB1_1:                                # %first_block__main
	mv	a0, sp
	addi	a0, a0, -16
	mv	sp, a0
	addi	a1, zero, 84
	sw	a0, -20(s0)
	mv	a0, a1
	call	__built_in_malloc
	addi	a1, zero, 10
	sw	a1, 0(a0)
	addi	a1, a0, 4
	addi	a0, a0, 44
	mv	a2, sp
	addi	a3, a2, -16
	mv	sp, a3
	sw	a1, -16(a2)
	sw	a1, -24(s0)
	sw	a0, -28(s0)
	sw	a3, -32(s0)
	j	.LBB1_2
.LBB1_2:                                # %while_condition
                                        # =>This Inner Loop Header: Depth=1
	lw	a0, -32(s0)
	lw	a1, 0(a0)
	lw	a2, -28(s0)
	sw	a1, -36(s0)
	beq	a1, a2, .LBB1_4
	j	.LBB1_3
.LBB1_3:                                # %while_repeat
                                        #   in Loop: Header=BB1_2 Depth=1
	mv	a0, zero
	lw	a1, -36(s0)
	sw	a0, 0(a1)
	addi	a0, a1, 4
	lw	a2, -32(s0)
	sw	a0, 0(a2)
	j	.LBB1_2
.LBB1_4:                                # %while_exit
	lw	a0, -24(s0)
	lw	a1, -20(s0)
	sw	a0, 0(a1)
	lw	a2, 0(a1)
	lui	a3, %hi(b)
	sw	a2, %lo(b)(a3)
	j	.LBB1_5
.LBB1_5:                                # %for_init
	mv	a0, zero
	sw	a0, -12(s0)
	j	.LBB1_6
.LBB1_6:                                # %for_condition
                                        # =>This Inner Loop Header: Depth=1
	lw	a0, -12(s0)
	addi	a1, zero, 10
	blt	a0, a1, .LBB1_8
	j	.LBB1_9
.LBB1_7:                                # %for_step
                                        #   in Loop: Header=BB1_6 Depth=1
	lw	a0, -12(s0)
	addi	a0, a0, 1
	sw	a0, -12(s0)
	j	.LBB1_6
.LBB1_8:                                # %for_repeat
                                        #   in Loop: Header=BB1_6 Depth=1
	lw	a0, -12(s0)
	lui	a1, %hi(b)
	lw	a2, %lo(b)(a1)
	slli	a0, a0, 2
	add	a0, a2, a0
	addi	a2, zero, 4
	sw	a0, -40(s0)
	mv	a0, a2
	sw	a1, -44(s0)
	call	__built_in_malloc
	sw	a0, -48(s0)
	call	__constructor__foo
	mv	a0, sp
	addi	a1, a0, -16
	mv	sp, a1
	lw	a1, -48(s0)
	sw	a1, -16(a0)
	lw	a0, -16(a0)
	lw	a2, -40(s0)
	sw	a0, 0(a2)
	lw	a0, -12(s0)
	lw	a2, -44(s0)
	lw	a3, %lo(b)(a2)
	slli	a4, a0, 2
	add	a3, a3, a4
	lw	a3, 0(a3)
	sw	a0, 0(a3)
	j	.LBB1_7
.LBB1_9:                                # %for_exit
	mv	a0, sp
	addi	a0, a0, -16
	mv	sp, a0
	j	.LBB1_10
.LBB1_10:                               # %for_init2
	mv	a0, zero
	sw	a0, -16(s0)
	j	.LBB1_11
.LBB1_11:                               # %for_condition2
                                        # =>This Inner Loop Header: Depth=1
	lw	a0, -16(s0)
	addi	a1, zero, 10
	blt	a0, a1, .LBB1_13
	j	.LBB1_14
.LBB1_12:                               # %for_step2
                                        #   in Loop: Header=BB1_11 Depth=1
	lw	a0, -16(s0)
	addi	a0, a0, 1
	sw	a0, -16(s0)
	j	.LBB1_11
.LBB1_13:                               # %for_repeat2
                                        #   in Loop: Header=BB1_11 Depth=1
	lw	a0, -16(s0)
	lui	a1, %hi(b)
	lw	a1, %lo(b)(a1)
	slli	a0, a0, 2
	add	a0, a1, a0
	lw	a0, 0(a0)
	lw	a0, 0(a0)
	call	printlnInt
	j	.LBB1_12
.LBB1_14:                               # %for_exit2
	mv	a0, zero
	addi	sp, s0, -48
	lw	s0, 40(sp)
	lw	ra, 44(sp)
	addi	sp, sp, 48
	ret
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
                                        # -- End function
	.globl	__init_function__       # -- Begin function __init_function__
	.p2align	2
	.type	__init_function__,@function
__init_function__:                      # @__init_function__
	.cfi_startproc
# %bb.0:                                # %__init_function__entry
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	addi	a0, zero, 44
	call	__built_in_malloc
	addi	a1, zero, 10
	sw	a1, 0(a0)
	addi	a0, a0, 4
	sw	a0, -12(s0)
	lw	a0, -12(s0)
	lui	a1, %hi(a)
	sw	a0, %lo(a)(a1)
	j	.LBB2_1
.LBB2_1:                                # %__init_function__exit
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end2:
	.size	__init_function__, .Lfunc_end2-__init_function__
	.cfi_endproc
                                        # -- End function
	.type	a,@object               # @a
	.section	.sbss,"aw",@nobits
	.globl	a
	.p2align	2
a:
	.word	0
	.size	a, 4

	.type	b,@object               # @b
	.globl	b
	.p2align	2
b:
	.word	0
	.size	b, 4

	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
