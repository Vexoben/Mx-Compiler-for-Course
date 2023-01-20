	.text
	.file	"test.mx"
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
	j	.LBB0_1
.LBB0_1:                                # %first_block__main
	addi	a0, zero, 8
	call	__built_in_malloc
	sw	a0, -16(s0)
	call	__constructor__TA
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
	lw	a0, -12(s0)
	addi	a2, zero, 2
	sw	a2, 4(a0)
	lw	a0, -12(s0)
	lw	a0, 0(a0)
	call	printlnInt
	mv	a0, zero
	addi	sp, s0, -16
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
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
	j	.LBB1_1
.LBB1_1:                                # %__init_function__exit
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end1:
	.size	__init_function__, .Lfunc_end1-__init_function__
	.cfi_endproc
                                        # -- End function
	.globl	__constructor__TA       # -- Begin function __constructor__TA
	.p2align	2
	.type	__constructor__TA,@function
__constructor__TA:                      # @__constructor__TA
	.cfi_startproc
# %bb.0:                                # %__constructor__TAentry
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	sw	a0, -12(s0)
	j	.LBB2_1
.LBB2_1:                                # %first_block____constructor__TA
	mv	a0, sp
	addi	a0, a0, -16
	mv	sp, a0
	j	.LBB2_2
.LBB2_2:                                # %__constructor__TAexit
	addi	sp, s0, -16
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end2:
	.size	__constructor__TA, .Lfunc_end2-__constructor__TA
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
