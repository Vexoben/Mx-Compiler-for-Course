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
.globl   qpow
   .p2align   2
   .type   qpow,@function
qpow:
.qpow.qpowentry:
   addi sp, sp, -168
   mv s1, ra
   sw s1, 0(sp)
   mv s1, s0
   sw s1, 4(sp)
   mv s1, a0
   sw s1, 8(sp)
   mv s1, a1
   sw s1, 12(sp)
   mv s1, a2
   sw s1, 16(sp)
   j .qpow.first_block__qpow
.qpow.first_block__qpow:
   lw s0, 8(sp)
   sw s0, 20(sp)
   lw s0, 12(sp)
   sw s0, 24(sp)
   lw s0, 16(sp)
   sw s0, 28(sp)
   li s0, 1
   sw s0, 32(sp)
   lw s0, 32(sp)
   sw s0, 36(sp)
   lw s1, 20(sp)
   sw s1, 40(sp)
   lw s0, 40(sp)
   sw s0, 44(sp)
   j .qpow.while_condition
.qpow.while_condition:
   lw s1, 24(sp)
   sw s1, 48(sp)
   li s0, 0
   sw s0, 52(sp)
   lw s0, 52(sp)
   lw s1, 48(sp)
   slt s0, s0, s1
   sw s0, 56(sp)
   li s0, 0
   sw s0, 60(sp)
   lw s0, 48(sp)
   lw s1, 60(sp)
   bgt s0, s1, .qpow.while_repeat
   j .qpow.while_exit
.qpow.while_repeat:
   lw s1, 24(sp)
   sw s1, 64(sp)
   li s0, 1
   sw s0, 68(sp)
   lw s0, 64(sp)
   lw s1, 68(sp)
   and s0, s0, s1
   sw s0, 72(sp)
   li s0, 1
   sw s0, 76(sp)
   lw s0, 72(sp)
   lw s1, 76(sp)
   xor s0, s0, s1
   sw s0, 80(sp)
   lw s0, 80(sp)
   sltiu s0, s0, 1
   sw s0, 84(sp)
   li s0, 1
   sw s0, 88(sp)
   lw s0, 72(sp)
   lw s1, 88(sp)
   beq s0, s1, .qpow.if_true
   j .qpow.if_false
.qpow.while_exit:
   lw s1, 36(sp)
   sw s1, 92(sp)
   lw s0, 92(sp)
   mv a0, s0
   lw s0, 4(sp)
   mv s0, s0
   lw s0, 0(sp)
   mv ra, s0
   addi sp, sp, 168
   ret
   j .qpow.qpowexit
.qpow.if_true:
   lw s1, 36(sp)
   sw s1, 96(sp)
   lw s1, 36(sp)
   sw s1, 100(sp)
   lw s1, 44(sp)
   sw s1, 104(sp)
   lw s0, 100(sp)
   lw s1, 104(sp)
   mul s0, s0, s1
   sw s0, 108(sp)
   lw s1, 28(sp)
   sw s1, 112(sp)
   lw s0, 108(sp)
   lw s1, 112(sp)
   rem s0, s0, s1
   sw s0, 116(sp)
   lw s0, 116(sp)
   sw s0, 36(sp)
   j .qpow.if_exit
.qpow.if_false:
   j .qpow.if_exit
.qpow.if_exit:
   lw s1, 44(sp)
   sw s1, 120(sp)
   lw s1, 44(sp)
   sw s1, 124(sp)
   lw s1, 44(sp)
   sw s1, 128(sp)
   lw s0, 124(sp)
   lw s1, 128(sp)
   mul s0, s0, s1
   sw s0, 132(sp)
   lw s1, 28(sp)
   sw s1, 136(sp)
   lw s0, 132(sp)
   lw s1, 136(sp)
   rem s0, s0, s1
   sw s0, 140(sp)
   lw s0, 140(sp)
   sw s0, 44(sp)
   lw s1, 24(sp)
   sw s1, 144(sp)
   lw s1, 24(sp)
   sw s1, 148(sp)
   li s0, 2
   sw s0, 152(sp)
   lw s0, 148(sp)
   lw s1, 152(sp)
   div s0, s0, s1
   sw s0, 156(sp)
   lw s0, 156(sp)
   sw s0, 24(sp)
   j .qpow.while_condition
.qpow.qpowexit:
   lw s1, 160(sp)
   sw s1, 164(sp)
   lw s0, 164(sp)
   mv a0, s0
   lw s0, 4(sp)
   mv s0, s0
   lw s0, 0(sp)
   mv ra, s0
   addi sp, sp, 168
   ret
.Lfunc_end19:
   .size   qpow, .Lfunc_end19-qpow
.globl   main
   .p2align   2
   .type   main,@function
main:
.main.mainentry:
   addi sp, sp, -48
   mv s1, ra
   sw s1, 0(sp)
   mv s1, s0
   sw s1, 4(sp)
   call __init_function__
   j .main.first_block__main
.main.first_block__main:
   li s0, 2
   sw s0, 8(sp)
   lw s0, 8(sp)
   mv a0, s0
   li s0, 10
   sw s0, 12(sp)
   lw s0, 12(sp)
   mv a1, s0
   li s0, 10000
   sw s0, 16(sp)
   lw s0, 16(sp)
   mv a2, s0
   call qpow
   mv s1, a0
   sw s1, 20(sp)
   lw s0, 20(sp)
   mv a0, s0
   call toString
   mv s1, a0
   sw s1, 24(sp)
   lw s0, 24(sp)
   lw s1, 0(s0)
   sw s1, 28(sp)
   lw s0, 28(sp)
   mv a0, s0
   call println
   li s0, 0
   sw s0, 32(sp)
   lw s0, 32(sp)
   mv a0, s0
   lw s0, 4(sp)
   mv s0, s0
   lw s0, 0(sp)
   mv ra, s0
   addi sp, sp, 48
   ret
   j .main.mainexit
.main.mainexit:
   li s0, 0
   sw s0, 36(sp)
   lw s0, 36(sp)
   mv a0, s0
   lw s0, 4(sp)
   mv s0, s0
   lw s0, 0(sp)
   mv ra, s0
   addi sp, sp, 48
   ret
   lw s1, 40(sp)
   sw s1, 44(sp)
   lw s0, 44(sp)
   mv a0, s0
   lw s0, 4(sp)
   mv s0, s0
   lw s0, 0(sp)
   mv ra, s0
   addi sp, sp, 48
   ret
.Lfunc_end20:
   .size   main, .Lfunc_end20-main
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
.Lfunc_end21:
   .size   __init_function__, .Lfunc_end21-__init_function__
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
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
