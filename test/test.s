	.text
	.file	"test.mx"
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:                                # %mainentry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	__init_function__
# %bb.1:                                # %first_block__main
	movabsq	$.Lstr_const_aa, %rax
	movq	%rsp, %rcx
	addq	$-16, %rcx
	movq	%rcx, %rsp
	movq	%rax, (%rcx)
	movq	(%rcx), %rdi
	callq	print
# %bb.2:                                # %mainexit
	xorl	%eax, %eax
	movq	%rbp, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.globl	__init_function__       # -- Begin function __init_function__
	.p2align	4, 0x90
	.type	__init_function__,@function
__init_function__:                      # @__init_function__
	.cfi_startproc
# %bb.0:                                # %__init_function__entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	jmp	.LBB1_1
.LBB1_1:                                # %__init_function__exit
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	__init_function__, .Lfunc_end1-__init_function__
	.cfi_endproc
                                        # -- End function
	.type	.Lstr_const_aa,@object  # @str_const_aa
	.section	.rodata.str1.1,"aMS",@progbits,1
.Lstr_const_aa:
	.asciz	"aa"
	.size	.Lstr_const_aa, 3

	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
