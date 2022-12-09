	.text
	.file	"built_in.c"
	.globl	__built_in_malloc       # -- Begin function __built_in_malloc
	.p2align	4, 0x90
	.type	__built_in_malloc,@function
__built_in_malloc:                      # @__built_in_malloc
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movslq	-4(%rbp), %rdi
	callq	malloc
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	__built_in_malloc, .Lfunc_end0-__built_in_malloc
	.cfi_endproc
                                        # -- End function
	.globl	__built_in_length       # -- Begin function __built_in_length
	.p2align	4, 0x90
	.type	__built_in_length,@function
__built_in_length:                      # @__built_in_length
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	callq	strlen
                                        # kill: def $eax killed $eax killed $rax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	__built_in_length, .Lfunc_end1-__built_in_length
	.cfi_endproc
                                        # -- End function
	.globl	__built_in_substring    # -- Begin function __built_in_substring
	.p2align	4, 0x90
	.type	__built_in_substring,@function
__built_in_substring:                   # @__built_in_substring
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movl	-16(%rbp), %eax
	subl	-12(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	shlq	$0, %rcx
	movq	%rcx, %rdi
	callq	malloc
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rdi
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	addq	%rcx, %rax
	movl	-16(%rbp), %edx
	subl	-12(%rbp), %edx
	movslq	%edx, %rdx
	movq	%rax, %rsi
	callq	memcpy
	movq	-24(%rbp), %rax
	movl	-16(%rbp), %r8d
	subl	-12(%rbp), %r8d
	movslq	%r8d, %rcx
	movb	$0, (%rax,%rcx)
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end2:
	.size	__built_in_substring, .Lfunc_end2-__built_in_substring
	.cfi_endproc
                                        # -- End function
	.globl	__built_in_parseInt     # -- Begin function __built_in_parseInt
	.p2align	4, 0x90
	.type	__built_in_parseInt,@function
__built_in_parseInt:                    # @__built_in_parseInt
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movabsq	$.L.str, %rsi
	leaq	-12(%rbp), %rdx
	movb	$0, %al
	callq	__isoc99_sscanf
	movl	-12(%rbp), %ecx
	movl	%eax, -16(%rbp)         # 4-byte Spill
	movl	%ecx, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end3:
	.size	__built_in_parseInt, .Lfunc_end3-__built_in_parseInt
	.cfi_endproc
                                        # -- End function
	.globl	__built_in_ord          # -- Begin function __built_in_ord
	.p2align	4, 0x90
	.type	__built_in_ord,@function
__built_in_ord:                         # @__built_in_ord
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end4:
	.size	__built_in_ord, .Lfunc_end4-__built_in_ord
	.cfi_endproc
                                        # -- End function
	.globl	__build_in_str_add      # -- Begin function __build_in_str_add
	.p2align	4, 0x90
	.type	__build_in_str_add,@function
__build_in_str_add:                     # @__build_in_str_add
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	strlen
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -20(%rbp)
	movq	-16(%rbp), %rdi
	callq	strlen
                                        # kill: def $eax killed $eax killed $rax
	movl	%eax, -24(%rbp)
	movl	-20(%rbp), %eax
	addl	-24(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rcx
	shlq	$0, %rcx
	movq	%rcx, %rdi
	callq	malloc
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movslq	-20(%rbp), %rdx
	callq	memcpy
	movq	-32(%rbp), %rax
	movslq	-20(%rbp), %rcx
	addq	%rcx, %rax
	movq	-16(%rbp), %rsi
	movslq	-24(%rbp), %rdx
	movq	%rax, %rdi
	callq	memcpy
	movq	-32(%rbp), %rax
	movl	-20(%rbp), %r8d
	addl	-24(%rbp), %r8d
	movslq	%r8d, %rcx
	movb	$0, (%rax,%rcx)
	movq	-32(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end5:
	.size	__build_in_str_add, .Lfunc_end5-__build_in_str_add
	.cfi_endproc
                                        # -- End function
	.globl	__build_in_str_eq       # -- Begin function __build_in_str_eq
	.p2align	4, 0x90
	.type	__build_in_str_eq,@function
__build_in_str_eq:                      # @__build_in_str_eq
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end6:
	.size	__build_in_str_eq, .Lfunc_end6-__build_in_str_eq
	.cfi_endproc
                                        # -- End function
	.globl	__build_in_str_neq      # -- Begin function __build_in_str_neq
	.p2align	4, 0x90
	.type	__build_in_str_neq,@function
__build_in_str_neq:                     # @__build_in_str_neq
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	setne	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end7:
	.size	__build_in_str_neq, .Lfunc_end7-__build_in_str_neq
	.cfi_endproc
                                        # -- End function
	.globl	__build_in_str_slt      # -- Begin function __build_in_str_slt
	.p2align	4, 0x90
	.type	__build_in_str_slt,@function
__build_in_str_slt:                     # @__build_in_str_slt
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	setl	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end8:
	.size	__build_in_str_slt, .Lfunc_end8-__build_in_str_slt
	.cfi_endproc
                                        # -- End function
	.globl	__build_in_str_sle      # -- Begin function __build_in_str_sle
	.p2align	4, 0x90
	.type	__build_in_str_sle,@function
__build_in_str_sle:                     # @__build_in_str_sle
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	setle	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end9:
	.size	__build_in_str_sle, .Lfunc_end9-__build_in_str_sle
	.cfi_endproc
                                        # -- End function
	.globl	__build_in_str_sgt      # -- Begin function __build_in_str_sgt
	.p2align	4, 0x90
	.type	__build_in_str_sgt,@function
__build_in_str_sgt:                     # @__build_in_str_sgt
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	setg	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end10:
	.size	__build_in_str_sgt, .Lfunc_end10-__build_in_str_sgt
	.cfi_endproc
                                        # -- End function
	.globl	__build_in_str_sge      # -- Begin function __build_in_str_sge
	.p2align	4, 0x90
	.type	__build_in_str_sge,@function
__build_in_str_sge:                     # @__build_in_str_sge
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	strcmp
	cmpl	$0, %eax
	sete	%cl
	andb	$1, %cl
	movzbl	%cl, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end11:
	.size	__build_in_str_sge, .Lfunc_end11-__build_in_str_sge
	.cfi_endproc
                                        # -- End function
	.globl	print                   # -- Begin function print
	.p2align	4, 0x90
	.type	print,@function
print:                                  # @print
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end12:
	.size	print, .Lfunc_end12-print
	.cfi_endproc
                                        # -- End function
	.globl	println                 # -- Begin function println
	.p2align	4, 0x90
	.type	println,@function
println:                                # @println
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rsi
	movabsq	$.L.str.2, %rdi
	movb	$0, %al
	callq	printf
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end13:
	.size	println, .Lfunc_end13-println
	.cfi_endproc
                                        # -- End function
	.globl	printInt                # -- Begin function printInt
	.p2align	4, 0x90
	.type	printInt,@function
printInt:                               # @printInt
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %esi
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	printf
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end14:
	.size	printInt, .Lfunc_end14-printInt
	.cfi_endproc
                                        # -- End function
	.globl	printlnInt              # -- Begin function printlnInt
	.p2align	4, 0x90
	.type	printlnInt,@function
printlnInt:                             # @printlnInt
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	-4(%rbp), %esi
	movabsq	$.L.str.3, %rdi
	movb	$0, %al
	callq	printf
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end15:
	.size	printlnInt, .Lfunc_end15-printlnInt
	.cfi_endproc
                                        # -- End function
	.globl	getString               # -- Begin function getString
	.p2align	4, 0x90
	.type	getString,@function
getString:                              # @getString
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$256, %edi              # imm = 0x100
	callq	malloc
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rsi
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	__isoc99_scanf
	movq	-8(%rbp), %rcx
	movl	%eax, -12(%rbp)         # 4-byte Spill
	movq	%rcx, %rax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end16:
	.size	getString, .Lfunc_end16-getString
	.cfi_endproc
                                        # -- End function
	.globl	getInt                  # -- Begin function getInt
	.p2align	4, 0x90
	.type	getInt,@function
getInt:                                 # @getInt
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movabsq	$.L.str, %rdi
	leaq	-4(%rbp), %rsi
	movb	$0, %al
	callq	__isoc99_scanf
	movl	-4(%rbp), %ecx
	movl	%eax, -8(%rbp)          # 4-byte Spill
	movl	%ecx, %eax
	addq	$16, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end17:
	.size	getInt, .Lfunc_end17-getInt
	.cfi_endproc
                                        # -- End function
	.globl	toString                # -- Begin function toString
	.p2align	4, 0x90
	.type	toString,@function
toString:                               # @toString
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movl	$256, %edi              # imm = 0x100
	callq	malloc
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	movl	-4(%rbp), %edx
	movabsq	$.L.str, %rsi
	movb	$0, %al
	callq	sprintf
	movq	-16(%rbp), %rcx
	movl	%eax, -20(%rbp)         # 4-byte Spill
	movq	%rcx, %rax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end18:
	.size	toString, .Lfunc_end18-toString
	.cfi_endproc
                                        # -- End function
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
	.addrsig
	.addrsig_sym malloc
	.addrsig_sym strlen
	.addrsig_sym __isoc99_sscanf
	.addrsig_sym strcmp
	.addrsig_sym printf
	.addrsig_sym __isoc99_scanf
	.addrsig_sym sprintf
