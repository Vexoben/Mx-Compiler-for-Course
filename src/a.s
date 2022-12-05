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
	movq	%rsp, %rax
	movq	%rax, %rcx
	addq	$-16, %rcx
	movq	%rcx, %rsp
	movl	$1, -16(%rax)
	movq	%rsp, %rax
	addq	$-16, %rax
	movq	%rax, %rsp
	movl	$2, (%rax)
	cmpl	$1, (%rcx)
	jle	.LBB0_3
# %bb.2:                                # %if_true
	jmp	.LBB0_4
.LBB0_3:                                # %if_false
	jmp	.LBB0_4
.LBB0_4:                                # %if_exit
	movl	(%rax), %eax
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
# %bb.0:                                # %__init_function__exit
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	__init_function__, .Lfunc_end1-__init_function__
	.cfi_endproc
                                        # -- End function
	.ident	"clang version 10.0.0-4ubuntu1 "
	.section	".note.GNU-stack","",@progbits
