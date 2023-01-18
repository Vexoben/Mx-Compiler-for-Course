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
.globl   __constructor__foo
   .p2align   2
   .type   __constructor__foo,@function
__constructor__foo:
.__constructor__foo.__constructor__fooentry:
   addi sp, sp, -36
   mv s1, ra
   sw s1, 0(sp)
   mv s1, s0
   sw s1, 4(sp)
   mv s1, a0
   sw s1, 8(sp)
   lw s0, 8(sp)
   sw s0, 12(sp)
   lw s1, 12(sp)
   sw s1, 16(sp)
   j .__constructor__foo.first_block____constructor__foo
.__constructor__foo.first_block____constructor__foo:
   lw s1, 12(sp)
   sw s1, 20(sp)
   li s0, 0
   sw s0, 24(sp)
   lw s0, 20(sp)
   lw s1, 24(sp)
   add s0, s0, s1
   sw s0, 28(sp)
   li s0, 2
   sw s0, 32(sp)
   lw s0, 32(sp)
   lw s1, 28(sp)
   sw s0, 0(s1)
   j .__constructor__foo.__constructor__fooexit
.__constructor__foo.__constructor__fooexit:
   lw s0, 4(sp)
   mv s0, s0
   lw s0, 0(sp)
   mv ra, s0
   addi sp, sp, 36
   ret
.Lfunc_end19:
   .size   __constructor__foo, .Lfunc_end19-__constructor__foo
.globl   main
   .p2align   2
   .type   main,@function
main:
.main.mainentry:
   addi sp, sp, -312
   mv s1, ra
   sw s1, 0(sp)
   mv s1, s0
   sw s1, 4(sp)
   call __init_function__
   j .main.first_block__main
.main.first_block__main:
   li s0, 8
   sw s0, 8(sp)
   li s0, 10
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
   li s0, 10
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
   li s0, 10
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
   la s0, b
   sw s0, 108(sp)
   lw s0, 104(sp)
   lw s1, 108(sp)
   sw s0, 0(s1)
   j .main.for_init
.main.for_init:
   li s0, 0
   sw s0, 112(sp)
   lw s0, 112(sp)
   sw s0, 116(sp)
   j .main.for_condition
.main.for_condition:
   lw s1, 116(sp)
   sw s1, 120(sp)
   li s0, 10
   sw s0, 124(sp)
   lw s0, 120(sp)
   lw s1, 124(sp)
   slt s0, s0, s1
   sw s0, 128(sp)
   li s0, 10
   sw s0, 132(sp)
   lw s0, 120(sp)
   lw s1, 132(sp)
   blt s0, s1, .main.for_repeat
   j .main.for_exit
.main.for_step:
   lw s1, 116(sp)
   sw s1, 136(sp)
   li s0, 1
   sw s0, 140(sp)
   lw s0, 140(sp)
   lw s1, 136(sp)
   add s0, s0, s1
   sw s0, 144(sp)
   lw s0, 144(sp)
   sw s0, 116(sp)
   j .main.for_condition
.main.for_repeat:
   lw s1, 116(sp)
   sw s1, 148(sp)
   la s0, b
   sw s0, 152(sp)
   lw s0, 152(sp)
   lw s1, 0(s0)
   sw s1, 156(sp)
   lw s0, 148(sp)
   lw s1, 148(sp)
   add s0, s0, s1
   sw s0, 160(sp)
   lw s0, 160(sp)
   lw s1, 160(sp)
   add s0, s0, s1
   sw s0, 160(sp)
   lw s0, 160(sp)
   lw s1, 156(sp)
   add s0, s0, s1
   sw s0, 164(sp)
   li s0, 4
   sw s0, 168(sp)
   lw s0, 168(sp)
   mv a0, s0
   call __built_in_malloc
   mv s1, a0
   sw s1, 172(sp)
   lw s0, 172(sp)
   mv s1, s0
   sw s1, 176(sp)
   lw s0, 176(sp)
   mv a0, s0
   call __constructor__foo
   lw s0, 176(sp)
   sw s0, 180(sp)
   lw s1, 180(sp)
   sw s1, 184(sp)
   lw s0, 184(sp)
   lw s1, 164(sp)
   sw s0, 0(s1)
   lw s1, 116(sp)
   sw s1, 188(sp)
   la s0, b
   sw s0, 192(sp)
   lw s0, 192(sp)
   lw s1, 0(s0)
   sw s1, 196(sp)
   lw s0, 188(sp)
   lw s1, 188(sp)
   add s0, s0, s1
   sw s0, 200(sp)
   lw s0, 200(sp)
   lw s1, 200(sp)
   add s0, s0, s1
   sw s0, 200(sp)
   lw s0, 200(sp)
   lw s1, 196(sp)
   add s0, s0, s1
   sw s0, 204(sp)
   lw s0, 204(sp)
   lw s1, 0(s0)
   sw s1, 208(sp)
   li s0, 0
   sw s0, 212(sp)
   lw s0, 208(sp)
   lw s1, 212(sp)
   add s0, s0, s1
   sw s0, 216(sp)
   lw s1, 116(sp)
   sw s1, 220(sp)
   lw s0, 220(sp)
   lw s1, 216(sp)
   sw s0, 0(s1)
   j .main.for_step
.main.for_exit:
   j .main.for_init2
.main.for_init2:
   li s0, 0
   sw s0, 224(sp)
   lw s0, 224(sp)
   sw s0, 228(sp)
   j .main.for_condition2
.main.for_condition2:
   lw s1, 228(sp)
   sw s1, 232(sp)
   li s0, 10
   sw s0, 236(sp)
   lw s0, 232(sp)
   lw s1, 236(sp)
   slt s0, s0, s1
   sw s0, 240(sp)
   li s0, 10
   sw s0, 244(sp)
   lw s0, 232(sp)
   lw s1, 244(sp)
   blt s0, s1, .main.for_repeat2
   j .main.for_exit2
.main.for_step2:
   lw s1, 228(sp)
   sw s1, 248(sp)
   li s0, 1
   sw s0, 252(sp)
   lw s0, 252(sp)
   lw s1, 248(sp)
   add s0, s0, s1
   sw s0, 256(sp)
   lw s0, 256(sp)
   sw s0, 228(sp)
   j .main.for_condition2
.main.for_repeat2:
   lw s1, 228(sp)
   sw s1, 260(sp)
   la s0, b
   sw s0, 264(sp)
   lw s0, 264(sp)
   lw s1, 0(s0)
   sw s1, 268(sp)
   lw s0, 260(sp)
   lw s1, 260(sp)
   add s0, s0, s1
   sw s0, 272(sp)
   lw s0, 272(sp)
   lw s1, 272(sp)
   add s0, s0, s1
   sw s0, 272(sp)
   lw s0, 272(sp)
   lw s1, 268(sp)
   add s0, s0, s1
   sw s0, 276(sp)
   lw s0, 276(sp)
   lw s1, 0(s0)
   sw s1, 280(sp)
   li s0, 0
   sw s0, 284(sp)
   lw s0, 280(sp)
   lw s1, 284(sp)
   add s0, s0, s1
   sw s0, 288(sp)
   lw s0, 288(sp)
   lw s1, 0(s0)
   sw s1, 292(sp)
   lw s0, 292(sp)
   mv a0, s0
   call printlnInt
   j .main.for_step2
.main.for_exit2:
   li s0, 0
   sw s0, 296(sp)
   lw s0, 296(sp)
   mv a0, s0
   lw s0, 4(sp)
   mv s0, s0
   lw s0, 0(sp)
   mv ra, s0
   addi sp, sp, 312
   ret
   j .main.mainexit
.main.mainexit:
   li s0, 0
   sw s0, 300(sp)
   lw s0, 300(sp)
   mv a0, s0
   lw s0, 4(sp)
   mv s0, s0
   lw s0, 0(sp)
   mv ra, s0
   addi sp, sp, 312
   ret
   lw s1, 304(sp)
   sw s1, 308(sp)
   lw s0, 308(sp)
   mv a0, s0
   lw s0, 4(sp)
   mv s0, s0
   lw s0, 0(sp)
   mv ra, s0
   addi sp, sp, 312
   ret
.Lfunc_end20:
   .size   main, .Lfunc_end20-main
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
   li s0, 10
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
   li s0, 10
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
   .type   a,@object
   .section   .rodata.str1.1,"aMS",@progbits,1
   .globl   a
   .p2align   2
a:
   .word   0
   .size   .a, 4
   .type   b,@object
   .globl   b
   .p2align   2
b:
   .word   0
   .size   .b, 4
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
