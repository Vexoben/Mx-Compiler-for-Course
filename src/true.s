	.text
	.file	"test.mx"
	.globl	test                    # -- Begin function test
	.p2align	2
	.type	test,@function
test:                                   # @test
	.cfi_startproc
# %bb.0:                                # %testentry
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	j	.LBB0_1
.LBB0_1:                                # %first_block__test
	addi	a0, zero, 4
	call	__built_in_malloc
	sw	a0, -16(s0)
	call	__constructor__foo
	mv	a0, sp
	addi	a1, a0, -16
	mv	sp, a1
	lw	a1, -16(s0)
	sw	a1, -16(a0)
	lw	a0, -16(a0)
	sw	a0, -12(s0)
	lw	a0, -12(s0)
	addi	a2, zero, 1
	sw	a2, 0(a0)
	addi	a0, s0, -12
	addi	sp, s0, -16
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end0:
	.size	test, .Lfunc_end0-test
	.cfi_endproc
                                        # -- End function
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
	j	.LBB1_1
.LBB1_1:                                # %first_block____constructor__foo
	mv	a0, sp
	addi	a0, a0, -16
	mv	sp, a0
	j	.LBB1_2
.LBB1_2:                                # %__constructor__fooexit
	addi	sp, s0, -16
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end1:
	.size	__constructor__foo, .Lfunc_end1-__constructor__foo
	.cfi_endproc
                                        # -- End function
	.globl	main                    # -- Begin function main
	.p2align	2
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %mainentry
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	call	__init_function__
	j	.LBB2_1
.LBB2_1:                                # %first_block__main
	call	test
	lw	a0, 0(a0)
	lw	a0, 0(a0)
	call	printlnInt
	j	.LBB2_2
.LBB2_2:                                # %mainexit
	mv	a0, zero
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
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
	j	.LBB3_1
.LBB3_1:                                # %__init_function__exit
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end3:
	.size	__init_function__, .Lfunc_end3-__init_function__
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
