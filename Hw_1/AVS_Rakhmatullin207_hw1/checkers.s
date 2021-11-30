	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0	sdk_version 11, 3
	.globl	__Z11ErrMessage1v               ## -- Begin function _Z11ErrMessage1v
	.p2align	4, 0x90
__Z11ErrMessage1v:                      ## @_Z11ErrMessage1v
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	L_.str(%rip), %rdi
	movb	$0, %al
	callq	_printf
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__Z11ErrMessage2v               ## -- Begin function _Z11ErrMessage2v
	.p2align	4, 0x90
__Z11ErrMessage2v:                      ## @_Z11ErrMessage2v
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	leaq	L_.str.1(%rip), %rdi
	movb	$0, %al
	callq	_printf
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__Z8CheckIntP7__sFILEPi         ## -- Begin function _Z8CheckIntP7__sFILEPi
	.p2align	4, 0x90
__Z8CheckIntP7__sFILEPi:                ## @_Z8CheckIntP7__sFILEPi
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	movq	-24(%rbp), %rdx
	leaq	L_.str.2(%rip), %rsi
	movb	$0, %al
	callq	_fscanf
	movl	%eax, -28(%rbp)
	cmpl	$-1, -28(%rbp)
	je	LBB2_2
## %bb.1:
	cmpl	$0, -28(%rbp)
	jne	LBB2_3
LBB2_2:
	movq	$0, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	LBB2_4
LBB2_3:
	movl	$1, -4(%rbp)
LBB2_4:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"incorrect command line!\n  Waited:\n     command -f infile outfile01 outfile02\n  Or:\n     command -n number outfile01 outfile02\n"

L_.str.1:                               ## @.str.1
	.asciz	"incorrect qualifier value!\n  Waited:\n     command -f infile outfile01 outfile02\n  Or:\n     command -n number outfile01 outfile02\n"

L_.str.2:                               ## @.str.2
	.asciz	"%d"

.subsections_via_symbols
