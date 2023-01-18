	.text
	.file	"test.mx"
	.globl	__built_in_malloc       # -- Begin function __built_in_malloc
	.p2align	2
	.type	__built_in_malloc,@function
__built_in_malloc:                      # @__built_in_malloc
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	sw	a0, -12(s0)
	lw	a0, -12(s0)
	srai	a1, a0, 31
	call	malloc
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end0:
	.size	__built_in_malloc, .Lfunc_end0-__built_in_malloc
	.cfi_endproc
                                        # -- End function
	.globl	__built_in_length       # -- Begin function __built_in_length
	.p2align	2
	.type	__built_in_length,@function
__built_in_length:                      # @__built_in_length
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	sw	a0, -16(s0)
	lw	a0, -16(s0)
	call	strlen
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end1:
	.size	__built_in_length, .Lfunc_end1-__built_in_length
	.cfi_endproc
                                        # -- End function
	.globl	__built_in_substring    # -- Begin function __built_in_substring
	.p2align	2
	.type	__built_in_substring,@function
__built_in_substring:                   # @__built_in_substring
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -48
	.cfi_def_cfa_offset 48
	sw	ra, 44(sp)
	sw	s0, 40(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 48
	.cfi_def_cfa s0, 0
	sw	a0, -16(s0)
	sw	a1, -20(s0)
	sw	a2, -24(s0)
	addi	a0, zero, 8
	mv	a1, zero
	sw	a1, -36(s0)
	call	malloc
	sw	a0, -32(s0)
	lw	a0, -24(s0)
	lw	a1, -20(s0)
	sub	a0, a0, a1
	addi	a0, a0, 1
	srai	a1, a0, 31
	call	malloc
	lw	a1, -32(s0)
	sw	a0, 0(a1)
	lw	a0, -32(s0)
	lw	a0, 0(a0)
	lw	a1, -16(s0)
	lw	a2, -20(s0)
	add	a1, a1, a2
	lw	a3, -24(s0)
	sub	a2, a3, a2
	call	memcpy
	lw	a1, -32(s0)
	lw	a1, 0(a1)
	lw	a2, -24(s0)
	lw	a3, -20(s0)
	sub	a2, a2, a3
	add	a1, a1, a2
	lw	a2, -36(s0)
	sb	a2, 0(a1)
	lw	a1, -32(s0)
	sw	a0, -40(s0)
	mv	a0, a1
	lw	s0, 40(sp)
	lw	ra, 44(sp)
	addi	sp, sp, 48
	ret
.Lfunc_end2:
	.size	__built_in_substring, .Lfunc_end2-__built_in_substring
	.cfi_endproc
                                        # -- End function
	.globl	__built_in_parseInt     # -- Begin function __built_in_parseInt
	.p2align	2
	.type	__built_in_parseInt,@function
__built_in_parseInt:                    # @__built_in_parseInt
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
	sw	a0, -16(s0)
	lw	a0, -16(s0)
	lui	a1, %hi(.L.str)
	addi	a1, a1, %lo(.L.str)
	addi	a2, s0, -20
	call	__isoc99_sscanf
	lw	a1, -20(s0)
	sw	a0, -24(s0)
	mv	a0, a1
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end3:
	.size	__built_in_parseInt, .Lfunc_end3-__built_in_parseInt
	.cfi_endproc
                                        # -- End function
	.globl	__built_in_ord          # -- Begin function __built_in_ord
	.p2align	2
	.type	__built_in_ord,@function
__built_in_ord:                         # @__built_in_ord
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
	sw	a0, -16(s0)
	sw	a1, -20(s0)
	lw	a0, -16(s0)
	lw	a1, -20(s0)
	add	a0, a0, a1
	lb	a0, 0(a0)
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end4:
	.size	__built_in_ord, .Lfunc_end4-__built_in_ord
	.cfi_endproc
                                        # -- End function
	.globl	__build_in_str_add      # -- Begin function __build_in_str_add
	.p2align	2
	.type	__build_in_str_add,@function
__build_in_str_add:                     # @__build_in_str_add
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -64
	.cfi_def_cfa_offset 64
	sw	ra, 60(sp)
	sw	s0, 56(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 64
	.cfi_def_cfa s0, 0
	sw	a0, -16(s0)
	sw	a1, -24(s0)
	lw	a0, -16(s0)
	call	strlen
	sw	a0, -28(s0)
	lw	a0, -24(s0)
	sw	a1, -44(s0)
	call	strlen
	sw	a0, -32(s0)
	addi	a0, zero, 8
	mv	a2, zero
	sw	a1, -48(s0)
	mv	a1, a2
	sw	a2, -52(s0)
	call	malloc
	sw	a0, -40(s0)
	lw	a0, -28(s0)
	lw	a1, -32(s0)
	add	a0, a0, a1
	addi	a0, a0, 1
	srai	a1, a0, 31
	call	malloc
	lw	a1, -40(s0)
	sw	a0, 0(a1)
	lw	a0, -40(s0)
	lw	a0, 0(a0)
	lw	a1, -16(s0)
	lw	a2, -28(s0)
	call	memcpy
	lw	a1, -40(s0)
	lw	a1, 0(a1)
	lw	a2, -28(s0)
	add	a1, a1, a2
	lw	a2, -24(s0)
	lw	a3, -32(s0)
	sw	a0, -56(s0)
	mv	a0, a1
	mv	a1, a2
	mv	a2, a3
	call	memcpy
	lw	a1, -40(s0)
	lw	a1, 0(a1)
	lw	a2, -28(s0)
	lw	a3, -32(s0)
	add	a2, a2, a3
	add	a1, a1, a2
	lw	a2, -52(s0)
	sb	a2, 0(a1)
	lw	a1, -40(s0)
	sw	a0, -60(s0)
	mv	a0, a1
	lw	s0, 56(sp)
	lw	ra, 60(sp)
	addi	sp, sp, 64
	ret
.Lfunc_end5:
	.size	__build_in_str_add, .Lfunc_end5-__build_in_str_add
	.cfi_endproc
                                        # -- End function
	.globl	__build_in_str_eq       # -- Begin function __build_in_str_eq
	.p2align	2
	.type	__build_in_str_eq,@function
__build_in_str_eq:                      # @__build_in_str_eq
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
	sw	a0, -16(s0)
	sw	a1, -24(s0)
	lw	a0, -16(s0)
	lw	a1, -24(s0)
	call	strcmp
	seqz	a0, a0
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end6:
	.size	__build_in_str_eq, .Lfunc_end6-__build_in_str_eq
	.cfi_endproc
                                        # -- End function
	.globl	__build_in_str_neq      # -- Begin function __build_in_str_neq
	.p2align	2
	.type	__build_in_str_neq,@function
__build_in_str_neq:                     # @__build_in_str_neq
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
	sw	a0, -16(s0)
	sw	a1, -24(s0)
	lw	a0, -16(s0)
	lw	a1, -24(s0)
	call	strcmp
	snez	a0, a0
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end7:
	.size	__build_in_str_neq, .Lfunc_end7-__build_in_str_neq
	.cfi_endproc
                                        # -- End function
	.globl	__build_in_str_slt      # -- Begin function __build_in_str_slt
	.p2align	2
	.type	__build_in_str_slt,@function
__build_in_str_slt:                     # @__build_in_str_slt
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
	sw	a0, -16(s0)
	sw	a1, -24(s0)
	lw	a0, -16(s0)
	lw	a1, -24(s0)
	call	strcmp
	srli	a0, a0, 31
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end8:
	.size	__build_in_str_slt, .Lfunc_end8-__build_in_str_slt
	.cfi_endproc
                                        # -- End function
	.globl	__build_in_str_sle      # -- Begin function __build_in_str_sle
	.p2align	2
	.type	__build_in_str_sle,@function
__build_in_str_sle:                     # @__build_in_str_sle
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
	sw	a0, -16(s0)
	sw	a1, -24(s0)
	lw	a0, -16(s0)
	lw	a1, -24(s0)
	call	strcmp
	slti	a0, a0, 1
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end9:
	.size	__build_in_str_sle, .Lfunc_end9-__build_in_str_sle
	.cfi_endproc
                                        # -- End function
	.globl	__build_in_str_sgt      # -- Begin function __build_in_str_sgt
	.p2align	2
	.type	__build_in_str_sgt,@function
__build_in_str_sgt:                     # @__build_in_str_sgt
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
	sw	a0, -16(s0)
	sw	a1, -24(s0)
	lw	a0, -16(s0)
	lw	a1, -24(s0)
	call	strcmp
	mv	a1, zero
	slt	a0, a1, a0
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end10:
	.size	__build_in_str_sgt, .Lfunc_end10-__build_in_str_sgt
	.cfi_endproc
                                        # -- End function
	.globl	__build_in_str_sge      # -- Begin function __build_in_str_sge
	.p2align	2
	.type	__build_in_str_sge,@function
__build_in_str_sge:                     # @__build_in_str_sge
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
	sw	a0, -16(s0)
	sw	a1, -24(s0)
	lw	a0, -16(s0)
	lw	a1, -24(s0)
	call	strcmp
	seqz	a0, a0
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end11:
	.size	__build_in_str_sge, .Lfunc_end11-__build_in_str_sge
	.cfi_endproc
                                        # -- End function
	.globl	print                   # -- Begin function print
	.p2align	2
	.type	print,@function
print:                                  # @print
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	sw	a0, -16(s0)
	lw	a1, -16(s0)
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	call	printf
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end12:
	.size	print, .Lfunc_end12-print
	.cfi_endproc
                                        # -- End function
	.globl	println                 # -- Begin function println
	.p2align	2
	.type	println,@function
println:                                # @println
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	sw	a0, -16(s0)
	lw	a1, -16(s0)
	lui	a0, %hi(.L.str.2)
	addi	a0, a0, %lo(.L.str.2)
	call	printf
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end13:
	.size	println, .Lfunc_end13-println
	.cfi_endproc
                                        # -- End function
	.globl	printInt                # -- Begin function printInt
	.p2align	2
	.type	printInt,@function
printInt:                               # @printInt
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	sw	a0, -12(s0)
	lw	a1, -12(s0)
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	call	printf
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end14:
	.size	printInt, .Lfunc_end14-printInt
	.cfi_endproc
                                        # -- End function
	.globl	printlnInt              # -- Begin function printlnInt
	.p2align	2
	.type	printlnInt,@function
printlnInt:                             # @printlnInt
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	sw	a0, -12(s0)
	lw	a1, -12(s0)
	lui	a0, %hi(.L.str.3)
	addi	a0, a0, %lo(.L.str.3)
	call	printf
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end15:
	.size	printlnInt, .Lfunc_end15-printlnInt
	.cfi_endproc
                                        # -- End function
	.globl	getString               # -- Begin function getString
	.p2align	2
	.type	getString,@function
getString:                              # @getString
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
	addi	a0, zero, 8
	mv	a1, zero
	sw	a1, -20(s0)
	call	malloc
	sw	a0, -16(s0)
	addi	a0, zero, 256
	lw	a1, -20(s0)
	call	malloc
	lw	a1, -16(s0)
	sw	a0, 0(a1)
	lw	a0, -16(s0)
	lw	a1, 0(a0)
	lui	a0, %hi(.L.str.1)
	addi	a0, a0, %lo(.L.str.1)
	call	__isoc99_scanf
	lw	a1, -16(s0)
	sw	a0, -24(s0)
	mv	a0, a1
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end16:
	.size	getString, .Lfunc_end16-getString
	.cfi_endproc
                                        # -- End function
	.globl	getInt                  # -- Begin function getInt
	.p2align	2
	.type	getInt,@function
getInt:                                 # @getInt
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -16
	.cfi_def_cfa_offset 16
	sw	ra, 12(sp)
	sw	s0, 8(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 16
	.cfi_def_cfa s0, 0
	lui	a0, %hi(.L.str)
	addi	a0, a0, %lo(.L.str)
	addi	a1, s0, -12
	call	__isoc99_scanf
	lw	a1, -12(s0)
	sw	a0, -16(s0)
	mv	a0, a1
	lw	s0, 8(sp)
	lw	ra, 12(sp)
	addi	sp, sp, 16
	ret
.Lfunc_end17:
	.size	getInt, .Lfunc_end17-getInt
	.cfi_endproc
                                        # -- End function
	.globl	toString                # -- Begin function toString
	.p2align	2
	.type	toString,@function
toString:                               # @toString
	.cfi_startproc
# %bb.0:
	addi	sp, sp, -32
	.cfi_def_cfa_offset 32
	sw	ra, 28(sp)
	sw	s0, 24(sp)
	.cfi_offset ra, -4
	.cfi_offset s0, -8
	addi	s0, sp, 32
	.cfi_def_cfa s0, 0
	sw	a0, -12(s0)
	addi	a0, zero, 8
	mv	a1, zero
	sw	a1, -20(s0)
	call	malloc
	sw	a0, -16(s0)
	addi	a0, zero, 256
	lw	a1, -20(s0)
	call	malloc
	lw	a1, -16(s0)
	sw	a0, 0(a1)
	lw	a0, -16(s0)
	lw	a0, 0(a0)
	lw	a2, -12(s0)
	lui	a1, %hi(.L.str)
	addi	a1, a1, %lo(.L.str)
	call	sprintf
	lw	a1, -16(s0)
	sw	a0, -24(s0)
	mv	a0, a1
	lw	s0, 24(sp)
	lw	ra, 28(sp)
	addi	sp, sp, 32
	ret
.Lfunc_end18:
	.size	toString, .Lfunc_end18-toString
	.cfi_endproc
                                        # -- End function
.globl   main
   .p2align   2
   .type   main,@function
main:
.main.mainentry:
   addi sp, sp, -704
   mv s1, ra
   sw s1, 0(sp)
   mv s1, s0
   sw s1, 4(sp)
   call __init_function__
   j .main.first_block__main
.main.first_block__main:
   li s0, 8
   sw s0, 8(sp)
   li s0, 4
   sw s0, 12(sp)
   lw s0, 8(sp)
   lw s1, 12(sp)
   mul s0, s0, s1
   sw s0, 16(sp)
   li s0, 4
   sw s0, 20(sp)
   lw s0, 20(sp)
   lw s1, 16(sp)
   add s0, s0, s1
   sw s0, 24(sp)
   lw s0, 24(sp)
   mv a0, s0
   call __built_in_malloc
   mv s1, a0
   sw s1, 28(sp)
   lw s0, 28(sp)
   mv s1, s0
   sw s1, 32(sp)
   li s0, 4
   sw s0, 36(sp)
   lw s0, 36(sp)
   lw s1, 32(sp)
   sw s0, 0(s1)
   li s0, 1
   sw s0, 40(sp)
   lw s0, 40(sp)
   lw s1, 40(sp)
   add s0, s0, s1
   sw s0, 44(sp)
   lw s0, 44(sp)
   lw s1, 44(sp)
   add s0, s0, s1
   sw s0, 44(sp)
   lw s0, 44(sp)
   lw s1, 32(sp)
   add s0, s0, s1
   sw s0, 48(sp)
   lw s0, 48(sp)
   mv s1, s0
   sw s1, 52(sp)
   li s0, 4
   sw s0, 56(sp)
   lw s0, 56(sp)
   lw s1, 56(sp)
   add s0, s0, s1
   sw s0, 60(sp)
   lw s0, 60(sp)
   lw s1, 60(sp)
   add s0, s0, s1
   sw s0, 60(sp)
   lw s0, 60(sp)
   lw s1, 52(sp)
   add s0, s0, s1
   sw s0, 64(sp)
   lw s0, 52(sp)
   sw s0, 68(sp)
   j .main.while_condition
.main.while_condition:
   lw s1, 68(sp)
   sw s1, 72(sp)
   lw s0, 72(sp)
   lw s1, 64(sp)
   xor s0, s0, s1
   sw s0, 76(sp)
   lw s0, 76(sp)
   sltiu s0, s0, 1
   sw s0, 80(sp)
   lw s0, 72(sp)
   lw s1, 64(sp)
   beq s0, s1, .main.while_exit
   j .main.while_repeat
.main.while_repeat:
   lw s0, 84(sp)
   lw s1, 72(sp)
   sw s0, 0(s1)
   li s0, 1
   sw s0, 88(sp)
   lw s0, 88(sp)
   lw s1, 88(sp)
   add s0, s0, s1
   sw s0, 92(sp)
   lw s0, 92(sp)
   lw s1, 92(sp)
   add s0, s0, s1
   sw s0, 92(sp)
   lw s0, 92(sp)
   lw s1, 72(sp)
   add s0, s0, s1
   sw s0, 96(sp)
   lw s0, 96(sp)
   sw s0, 68(sp)
   j .main.while_condition
.main.while_exit:
   lw s0, 52(sp)
   sw s0, 100(sp)
   lw s1, 100(sp)
   sw s1, 104(sp)
   lw s0, 104(sp)
   sw s0, 108(sp)
   lw s1, 108(sp)
   sw s1, 112(sp)
   li s0, 0
   sw s0, 116(sp)
   lw s0, 116(sp)
   lw s1, 116(sp)
   add s0, s0, s1
   sw s0, 120(sp)
   lw s0, 120(sp)
   lw s1, 120(sp)
   add s0, s0, s1
   sw s0, 120(sp)
   lw s0, 120(sp)
   lw s1, 112(sp)
   add s0, s0, s1
   sw s0, 124(sp)
   la s0, a
   sw s0, 128(sp)
   lw s0, 128(sp)
   lw s1, 0(s0)
   sw s1, 132(sp)
   lw s0, 132(sp)
   lw s1, 124(sp)
   sw s0, 0(s1)
   lw s1, 108(sp)
   sw s1, 136(sp)
   li s0, 1
   sw s0, 140(sp)
   lw s0, 140(sp)
   lw s1, 140(sp)
   add s0, s0, s1
   sw s0, 144(sp)
   lw s0, 144(sp)
   lw s1, 144(sp)
   add s0, s0, s1
   sw s0, 144(sp)
   lw s0, 144(sp)
   lw s1, 136(sp)
   add s0, s0, s1
   sw s0, 148(sp)
   la s0, a
   sw s0, 152(sp)
   lw s0, 152(sp)
   lw s1, 0(s0)
   sw s1, 156(sp)
   lw s0, 156(sp)
   lw s1, 148(sp)
   sw s0, 0(s1)
   lw s1, 108(sp)
   sw s1, 160(sp)
   li s0, 2
   sw s0, 164(sp)
   lw s0, 164(sp)
   lw s1, 164(sp)
   add s0, s0, s1
   sw s0, 168(sp)
   lw s0, 168(sp)
   lw s1, 168(sp)
   add s0, s0, s1
   sw s0, 168(sp)
   lw s0, 168(sp)
   lw s1, 160(sp)
   add s0, s0, s1
   sw s0, 172(sp)
   la s0, a
   sw s0, 176(sp)
   lw s0, 176(sp)
   lw s1, 0(s0)
   sw s1, 180(sp)
   lw s0, 180(sp)
   lw s1, 172(sp)
   sw s0, 0(s1)
   lw s1, 108(sp)
   sw s1, 184(sp)
   li s0, 3
   sw s0, 188(sp)
   lw s0, 188(sp)
   lw s1, 188(sp)
   add s0, s0, s1
   sw s0, 192(sp)
   lw s0, 192(sp)
   lw s1, 192(sp)
   add s0, s0, s1
   sw s0, 192(sp)
   lw s0, 192(sp)
   lw s1, 184(sp)
   add s0, s0, s1
   sw s0, 196(sp)
   la s0, a
   sw s0, 200(sp)
   lw s0, 200(sp)
   lw s1, 0(s0)
   sw s1, 204(sp)
   lw s0, 204(sp)
   lw s1, 196(sp)
   sw s0, 0(s1)
   lw s1, 108(sp)
   sw s1, 208(sp)
   lw s0, 208(sp)
   mv s1, s0
   sw s1, 212(sp)
   li s0, -1
   sw s0, 216(sp)
   lw s0, 216(sp)
   lw s1, 216(sp)
   add s0, s0, s1
   sw s0, 220(sp)
   lw s0, 220(sp)
   lw s1, 220(sp)
   add s0, s0, s1
   sw s0, 220(sp)
   lw s0, 220(sp)
   lw s1, 212(sp)
   add s0, s0, s1
   sw s0, 224(sp)
   lw s0, 224(sp)
   lw s1, 0(s0)
   sw s1, 228(sp)
   lw s0, 228(sp)
   mv a0, s0
   call toString
   mv s1, a0
   sw s1, 232(sp)
   lw s0, 232(sp)
   lw s1, 0(s0)
   sw s1, 236(sp)
   lw s0, 236(sp)
   mv a0, s0
   call println
   j .main.for_init
.main.for_init:
   lw s1, 240(sp)
   sw s1, 244(sp)
   li s0, 0
   sw s0, 248(sp)
   lw s0, 248(sp)
   sw s0, 240(sp)
   j .main.for_condition
.main.for_condition:
   lw s1, 240(sp)
   sw s1, 252(sp)
   lw s1, 108(sp)
   sw s1, 256(sp)
   li s0, 0
   sw s0, 260(sp)
   lw s0, 260(sp)
   lw s1, 260(sp)
   add s0, s0, s1
   sw s0, 264(sp)
   lw s0, 264(sp)
   lw s1, 264(sp)
   add s0, s0, s1
   sw s0, 264(sp)
   lw s0, 264(sp)
   lw s1, 256(sp)
   add s0, s0, s1
   sw s0, 268(sp)
   lw s0, 268(sp)
   lw s1, 0(s0)
   sw s1, 272(sp)
   lw s0, 272(sp)
   mv s1, s0
   sw s1, 276(sp)
   li s0, -1
   sw s0, 280(sp)
   lw s0, 280(sp)
   lw s1, 280(sp)
   add s0, s0, s1
   sw s0, 284(sp)
   lw s0, 284(sp)
   lw s1, 284(sp)
   add s0, s0, s1
   sw s0, 284(sp)
   lw s0, 284(sp)
   lw s1, 276(sp)
   add s0, s0, s1
   sw s0, 288(sp)
   lw s0, 288(sp)
   lw s1, 0(s0)
   sw s1, 292(sp)
   lw s0, 252(sp)
   lw s1, 292(sp)
   slt s0, s0, s1
   sw s0, 296(sp)
   lw s0, 252(sp)
   lw s1, 292(sp)
   blt s0, s1, .main.for_repeat
   j .main.for_exit
.main.for_step:
   lw s1, 240(sp)
   sw s1, 300(sp)
   li s0, 1
   sw s0, 304(sp)
   lw s0, 304(sp)
   lw s1, 300(sp)
   add s0, s0, s1
   sw s0, 308(sp)
   lw s0, 308(sp)
   sw s0, 240(sp)
   j .main.for_condition
.main.for_repeat:
   lw s1, 108(sp)
   sw s1, 312(sp)
   li s0, 0
   sw s0, 316(sp)
   lw s0, 316(sp)
   lw s1, 316(sp)
   add s0, s0, s1
   sw s0, 320(sp)
   lw s0, 320(sp)
   lw s1, 320(sp)
   add s0, s0, s1
   sw s0, 320(sp)
   lw s0, 320(sp)
   lw s1, 312(sp)
   add s0, s0, s1
   sw s0, 324(sp)
   lw s1, 240(sp)
   sw s1, 328(sp)
   lw s0, 324(sp)
   lw s1, 0(s0)
   sw s1, 332(sp)
   lw s0, 328(sp)
   lw s1, 328(sp)
   add s0, s0, s1
   sw s0, 336(sp)
   lw s0, 336(sp)
   lw s1, 336(sp)
   add s0, s0, s1
   sw s0, 336(sp)
   lw s0, 336(sp)
   lw s1, 332(sp)
   add s0, s0, s1
   sw s0, 340(sp)
   call getInt
   mv s1, a0
   sw s1, 344(sp)
   lw s0, 344(sp)
   lw s1, 340(sp)
   sw s0, 0(s1)
   j .main.for_step
.main.for_exit:
   j .main.for_init2
.main.for_init2:
   lw s1, 240(sp)
   sw s1, 348(sp)
   li s0, 0
   sw s0, 352(sp)
   lw s0, 352(sp)
   sw s0, 240(sp)
   j .main.for_condition2
.main.for_condition2:
   lw s1, 240(sp)
   sw s1, 356(sp)
   lw s1, 108(sp)
   sw s1, 360(sp)
   li s0, 1
   sw s0, 364(sp)
   lw s0, 364(sp)
   lw s1, 364(sp)
   add s0, s0, s1
   sw s0, 368(sp)
   lw s0, 368(sp)
   lw s1, 368(sp)
   add s0, s0, s1
   sw s0, 368(sp)
   lw s0, 368(sp)
   lw s1, 360(sp)
   add s0, s0, s1
   sw s0, 372(sp)
   lw s0, 372(sp)
   lw s1, 0(s0)
   sw s1, 376(sp)
   lw s0, 376(sp)
   mv s1, s0
   sw s1, 380(sp)
   li s0, -1
   sw s0, 384(sp)
   lw s0, 384(sp)
   lw s1, 384(sp)
   add s0, s0, s1
   sw s0, 388(sp)
   lw s0, 388(sp)
   lw s1, 388(sp)
   add s0, s0, s1
   sw s0, 388(sp)
   lw s0, 388(sp)
   lw s1, 380(sp)
   add s0, s0, s1
   sw s0, 392(sp)
   lw s0, 392(sp)
   lw s1, 0(s0)
   sw s1, 396(sp)
   lw s0, 356(sp)
   lw s1, 396(sp)
   slt s0, s0, s1
   sw s0, 400(sp)
   lw s0, 356(sp)
   lw s1, 396(sp)
   blt s0, s1, .main.for_repeat2
   j .main.for_exit2
.main.for_step2:
   lw s1, 240(sp)
   sw s1, 404(sp)
   li s0, 1
   sw s0, 408(sp)
   lw s0, 408(sp)
   lw s1, 404(sp)
   add s0, s0, s1
   sw s0, 412(sp)
   lw s0, 412(sp)
   sw s0, 240(sp)
   j .main.for_condition2
.main.for_repeat2:
   lw s1, 108(sp)
   sw s1, 416(sp)
   li s0, 1
   sw s0, 420(sp)
   lw s0, 420(sp)
   lw s1, 420(sp)
   add s0, s0, s1
   sw s0, 424(sp)
   lw s0, 424(sp)
   lw s1, 424(sp)
   add s0, s0, s1
   sw s0, 424(sp)
   lw s0, 424(sp)
   lw s1, 416(sp)
   add s0, s0, s1
   sw s0, 428(sp)
   lw s1, 240(sp)
   sw s1, 432(sp)
   lw s0, 428(sp)
   lw s1, 0(s0)
   sw s1, 436(sp)
   lw s0, 432(sp)
   lw s1, 432(sp)
   add s0, s0, s1
   sw s0, 440(sp)
   lw s0, 440(sp)
   lw s1, 440(sp)
   add s0, s0, s1
   sw s0, 440(sp)
   lw s0, 440(sp)
   lw s1, 436(sp)
   add s0, s0, s1
   sw s0, 444(sp)
   lw s0, 444(sp)
   lw s1, 0(s0)
   sw s1, 448(sp)
   lw s0, 448(sp)
   mv a0, s0
   call toString
   mv s1, a0
   sw s1, 452(sp)
   lw s0, 452(sp)
   lw s1, 0(s0)
   sw s1, 456(sp)
   lw s0, 456(sp)
   mv a0, s0
   call print
   j .main.for_step2
.main.for_exit2:
   li s0, 0
   sw s0, 460(sp)
   la s0, .const_str
   sw s0, 464(sp)
   lw s0, 464(sp)
   lw s1, 460(sp)
   add s0, s0, s1
   sw s0, 468(sp)
   lw s0, 468(sp)
   mv a0, s0
   call println
   j .main.for_init3
.main.for_init3:
   lw s1, 240(sp)
   sw s1, 472(sp)
   li s0, 0
   sw s0, 476(sp)
   lw s0, 476(sp)
   sw s0, 240(sp)
   j .main.for_condition3
.main.for_condition3:
   lw s1, 240(sp)
   sw s1, 480(sp)
   lw s1, 108(sp)
   sw s1, 484(sp)
   li s0, 2
   sw s0, 488(sp)
   lw s0, 488(sp)
   lw s1, 488(sp)
   add s0, s0, s1
   sw s0, 492(sp)
   lw s0, 492(sp)
   lw s1, 492(sp)
   add s0, s0, s1
   sw s0, 492(sp)
   lw s0, 492(sp)
   lw s1, 484(sp)
   add s0, s0, s1
   sw s0, 496(sp)
   lw s0, 496(sp)
   lw s1, 0(s0)
   sw s1, 500(sp)
   lw s0, 500(sp)
   mv s1, s0
   sw s1, 504(sp)
   li s0, -1
   sw s0, 508(sp)
   lw s0, 508(sp)
   lw s1, 508(sp)
   add s0, s0, s1
   sw s0, 512(sp)
   lw s0, 512(sp)
   lw s1, 512(sp)
   add s0, s0, s1
   sw s0, 512(sp)
   lw s0, 512(sp)
   lw s1, 504(sp)
   add s0, s0, s1
   sw s0, 516(sp)
   lw s0, 516(sp)
   lw s1, 0(s0)
   sw s1, 520(sp)
   lw s0, 480(sp)
   lw s1, 520(sp)
   slt s0, s0, s1
   sw s0, 524(sp)
   lw s0, 480(sp)
   lw s1, 520(sp)
   blt s0, s1, .main.for_repeat3
   j .main.for_exit3
.main.for_step3:
   lw s1, 240(sp)
   sw s1, 528(sp)
   li s0, 1
   sw s0, 532(sp)
   lw s0, 532(sp)
   lw s1, 528(sp)
   add s0, s0, s1
   sw s0, 536(sp)
   lw s0, 536(sp)
   sw s0, 240(sp)
   j .main.for_condition3
.main.for_repeat3:
   lw s1, 108(sp)
   sw s1, 540(sp)
   li s0, 2
   sw s0, 544(sp)
   lw s0, 544(sp)
   lw s1, 544(sp)
   add s0, s0, s1
   sw s0, 548(sp)
   lw s0, 548(sp)
   lw s1, 548(sp)
   add s0, s0, s1
   sw s0, 548(sp)
   lw s0, 548(sp)
   lw s1, 540(sp)
   add s0, s0, s1
   sw s0, 552(sp)
   lw s1, 240(sp)
   sw s1, 556(sp)
   lw s0, 552(sp)
   lw s1, 0(s0)
   sw s1, 560(sp)
   lw s0, 556(sp)
   lw s1, 556(sp)
   add s0, s0, s1
   sw s0, 564(sp)
   lw s0, 564(sp)
   lw s1, 564(sp)
   add s0, s0, s1
   sw s0, 564(sp)
   lw s0, 564(sp)
   lw s1, 560(sp)
   add s0, s0, s1
   sw s0, 568(sp)
   li s0, 0
   sw s0, 572(sp)
   lw s0, 572(sp)
   lw s1, 568(sp)
   sw s0, 0(s1)
   j .main.for_step3
.main.for_exit3:
   j .main.for_init4
.main.for_init4:
   lw s1, 240(sp)
   sw s1, 576(sp)
   li s0, 0
   sw s0, 580(sp)
   lw s0, 580(sp)
   sw s0, 240(sp)
   j .main.for_condition4
.main.for_condition4:
   lw s1, 240(sp)
   sw s1, 584(sp)
   lw s1, 108(sp)
   sw s1, 588(sp)
   li s0, 3
   sw s0, 592(sp)
   lw s0, 592(sp)
   lw s1, 592(sp)
   add s0, s0, s1
   sw s0, 596(sp)
   lw s0, 596(sp)
   lw s1, 596(sp)
   add s0, s0, s1
   sw s0, 596(sp)
   lw s0, 596(sp)
   lw s1, 588(sp)
   add s0, s0, s1
   sw s0, 600(sp)
   lw s0, 600(sp)
   lw s1, 0(s0)
   sw s1, 604(sp)
   lw s0, 604(sp)
   mv s1, s0
   sw s1, 608(sp)
   li s0, -1
   sw s0, 612(sp)
   lw s0, 612(sp)
   lw s1, 612(sp)
   add s0, s0, s1
   sw s0, 616(sp)
   lw s0, 616(sp)
   lw s1, 616(sp)
   add s0, s0, s1
   sw s0, 616(sp)
   lw s0, 616(sp)
   lw s1, 608(sp)
   add s0, s0, s1
   sw s0, 620(sp)
   lw s0, 620(sp)
   lw s1, 0(s0)
   sw s1, 624(sp)
   lw s0, 584(sp)
   lw s1, 624(sp)
   slt s0, s0, s1
   sw s0, 628(sp)
   lw s0, 584(sp)
   lw s1, 624(sp)
   blt s0, s1, .main.for_repeat4
   j .main.for_exit4
.main.for_step4:
   lw s1, 240(sp)
   sw s1, 632(sp)
   li s0, 1
   sw s0, 636(sp)
   lw s0, 636(sp)
   lw s1, 632(sp)
   add s0, s0, s1
   sw s0, 640(sp)
   lw s0, 640(sp)
   sw s0, 240(sp)
   j .main.for_condition4
.main.for_repeat4:
   lw s1, 108(sp)
   sw s1, 644(sp)
   li s0, 3
   sw s0, 648(sp)
   lw s0, 648(sp)
   lw s1, 648(sp)
   add s0, s0, s1
   sw s0, 652(sp)
   lw s0, 652(sp)
   lw s1, 652(sp)
   add s0, s0, s1
   sw s0, 652(sp)
   lw s0, 652(sp)
   lw s1, 644(sp)
   add s0, s0, s1
   sw s0, 656(sp)
   lw s1, 240(sp)
   sw s1, 660(sp)
   lw s0, 656(sp)
   lw s1, 0(s0)
   sw s1, 664(sp)
   lw s0, 660(sp)
   lw s1, 660(sp)
   add s0, s0, s1
   sw s0, 668(sp)
   lw s0, 668(sp)
   lw s1, 668(sp)
   add s0, s0, s1
   sw s0, 668(sp)
   lw s0, 668(sp)
   lw s1, 664(sp)
   add s0, s0, s1
   sw s0, 672(sp)
   lw s0, 672(sp)
   lw s1, 0(s0)
   sw s1, 676(sp)
   lw s0, 676(sp)
   mv a0, s0
   call toString
   mv s1, a0
   sw s1, 680(sp)
   lw s0, 680(sp)
   lw s1, 0(s0)
   sw s1, 684(sp)
   lw s0, 684(sp)
   mv a0, s0
   call print
   j .main.for_step4
.main.for_exit4:
   li s0, 0
   sw s0, 688(sp)
   lw s0, 688(sp)
   mv a0, s0
   lw s0, 4(sp)
   mv s0, s0
   lw s0, 0(sp)
   mv ra, s0
   addi sp, sp, 704
   ret
   j .main.mainexit
.main.mainexit:
   li s0, 0
   sw s0, 692(sp)
   lw s0, 692(sp)
   mv a0, s0
   lw s0, 4(sp)
   mv s0, s0
   lw s0, 0(sp)
   mv ra, s0
   addi sp, sp, 704
   ret
   lw s1, 696(sp)
   sw s1, 700(sp)
   lw s0, 700(sp)
   mv a0, s0
   lw s0, 4(sp)
   mv s0, s0
   lw s0, 0(sp)
   mv ra, s0
   addi sp, sp, 704
   ret
.Lfunc_end19:
   .size   main, .Lfunc_end19-main
.globl   __init_function__
   .p2align   2
   .type   __init_function__,@function
__init_function__:
.__init_function__.__init_function__entry:
   addi sp, sp, -68
   mv s1, ra
   sw s1, 0(sp)
   mv s1, s0
   sw s1, 4(sp)
   li s0, 4
   sw s0, 8(sp)
   li s0, 4
   sw s0, 12(sp)
   lw s0, 8(sp)
   lw s1, 12(sp)
   mul s0, s0, s1
   sw s0, 16(sp)
   li s0, 4
   sw s0, 20(sp)
   lw s0, 20(sp)
   lw s1, 16(sp)
   add s0, s0, s1
   sw s0, 24(sp)
   lw s0, 24(sp)
   mv a0, s0
   call __built_in_malloc
   mv s1, a0
   sw s1, 28(sp)
   lw s0, 28(sp)
   mv s1, s0
   sw s1, 32(sp)
   li s0, 4
   sw s0, 36(sp)
   lw s0, 36(sp)
   lw s1, 32(sp)
   sw s0, 0(s1)
   li s0, 1
   sw s0, 40(sp)
   lw s0, 40(sp)
   lw s1, 40(sp)
   add s0, s0, s1
   sw s0, 44(sp)
   lw s0, 44(sp)
   lw s1, 44(sp)
   add s0, s0, s1
   sw s0, 44(sp)
   lw s0, 44(sp)
   lw s1, 32(sp)
   add s0, s0, s1
   sw s0, 48(sp)
   lw s0, 48(sp)
   mv s1, s0
   sw s1, 52(sp)
   lw s0, 52(sp)
   sw s0, 56(sp)
   lw s1, 56(sp)
   sw s1, 60(sp)
   la s0, a
   sw s0, 64(sp)
   lw s0, 60(sp)
   lw s1, 64(sp)
   sw s0, 0(s1)
   j .__init_function__.__init_function__exit
.__init_function__.__init_function__exit:
   lw s0, 4(sp)
   mv s0, s0
   lw s0, 0(sp)
   mv ra, s0
   addi sp, sp, 68
   ret
.Lfunc_end20:
   .size   __init_function__, .Lfunc_end20-__init_function__
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d"
	.size	.L.str, 3

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"%s"
	.size	.L.str.1, 3

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"%s\n"
	.size	.L.str.2, 4

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"%d\n"
	.size	.L.str.3, 4
   .type   .const_str,@object
.const_str:
   .asciz   "\00"   .size   .const_str, 4
   .type   a,@object
   .section   .rodata.str1.1,"aMS",@progbits,1
   .globl   a
   .p2align   2
a:
   .word   0
   .size   .a, 4
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
