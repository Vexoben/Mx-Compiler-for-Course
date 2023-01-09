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
	addi	sp, sp, -16
	j	.LBB0_2
.LBB0_2:                                # %__constructor__fooexit
	addi	sp, s0, -16
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end0:
	.size	__constructor__foo, .Lfunc_end0-__constructor__foo
	.cfi_endproc
                                        # -- End function
	.globl	f                       # -- Begin function f
	.p2align	2
	.type	f,@function
f:                                      # @f
	.cfi_startproc
# %bb.0:                                # %fentry
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	j	.LBB1_1
.LBB1_1:                                # %first_block__f
	j	.LBB1_2
.LBB1_2:                                # %fexit
	addi	sp, sp, -16
	mv	a0, sp
	addi	sp, a0, -16
	lw	a0, -16(a0)
	addi	sp, s0, -16
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end1:
	.size	f, .Lfunc_end1-f
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
	j	.LBB2_1
.LBB2_1:                                # %first_block__main
	addi	sp, sp, -16
	j	.LBB2_2
.LBB2_2:                                # %mainexit
	mv	a0, zero
	addi	sp, s0, -48
	lw	s0, 40(sp)
	lw	ra, 44(sp)
	addi	sp, sp, 48
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
	sw	s1, 4(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	.cfi_offset s1, -12
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	lui	a0, %hi(a)
	sw	zero, %lo(a)(a0)
	lui	a0, %hi(b)
	sw	zero, %lo(b)(a0)
	lui	a0, %hi(c)
	sw	zero, %lo(c)(a0)
	addi	a0, zero, 4
	call	__built_in_malloc
	mv	s1, a0
	mv	a0, s1
	call	__constructor__foo
	sw	s1, -16(s0)
	lw	a0, -16(s0)
	lui	a1, %hi(tmp)
	sw	a0, %lo(tmp)(a1)
	j	.LBB3_1
.LBB3_1:                                # %__init_function__exit
	lw	s1, 4(sp)
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end3:
	.size	__init_function__, .Lfunc_end3-__init_function__
	.cfi_endproc
                                        # -- End function
	.type	a,@object               # @a
	.section	.sbss,"aw",@nobits
	.globl	a
	.p2align	2
a:
	.word	0                       # 0x0
	.size	a, 4

	.type	b,@object               # @b
	.globl	b
	.p2align	2
b:
	.word	0                       # 0x0
	.size	b, 4

	.type	c,@object               # @c
	.globl	c
	.p2align	2
c:
	.word	0                       # 0x0
	.size	c, 4

	.type	tmp,@object             # @tmp
	.globl	tmp
	.p2align	2
tmp:
	.word	0
	.size	tmp, 4

	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
