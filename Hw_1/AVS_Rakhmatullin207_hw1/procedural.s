	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0	sdk_version 11, 3
	.globl	__Z12InProceduralP10proceduralP7__sFILE ## -- Begin function _Z12InProceduralP10proceduralP7__sFILE
	.p2align	4, 0x90
__Z12InProceduralP10proceduralP7__sFILE: ## @_Z12InProceduralP10proceduralP7__sFILE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdi
	leaq	L_.str(%rip), %rsi
	leaq	-20(%rbp), %rdx
	movb	$0, %al
	callq	_fscanf
	cmpl	$0, -20(%rbp)
	jle	LBB0_2
## %bb.1:
	movq	-8(%rbp), %rax
	movl	$1, (%rax)
	jmp	LBB0_3
LBB0_2:
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
LBB0_3:
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__Z5InRndP10procedural          ## -- Begin function _Z5InRndP10procedural
	.p2align	4, 0x90
__Z5InRndP10procedural:                 ## @_Z5InRndP10procedural
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	__Z9IntRandomv
	cltd
	movl	$2, %ecx
	idivl	%ecx
	movq	-8(%rbp), %rsi
	movl	%edx, (%rsi)
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__Z3OutP10proceduralP7__sFILE   ## -- Begin function _Z3OutP10proceduralP7__sFILE
	.p2align	4, 0x90
__Z3OutP10proceduralP7__sFILE:          ## @_Z3OutP10proceduralP7__sFILE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	leaq	-20(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edx
	cmpl	$0, %edx
	leaq	L_.str.1(%rip), %rcx
	leaq	L_.str.2(%rip), %rsi
	cmovneq	%rcx, %rsi
	movq	%rax, %rdi
	movq	%rax, -32(%rbp)                 ## 8-byte Spill
	callq	_strcpy
	movq	-16(%rbp), %rdi
	leaq	L_.str.3(%rip), %rsi
	movq	-32(%rbp), %rdx                 ## 8-byte Reload
	movq	%rax, -40(%rbp)                 ## 8-byte Spill
	movb	$0, %al
	callq	_fprintf
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d"

L_.str.1:                               ## @.str.1
	.asciz	"yes"

L_.str.2:                               ## @.str.2
	.asciz	"no"

L_.str.3:                               ## @.str.3
	.asciz	"Type: procedural\tContains abstract data types = %s\n"

.subsections_via_symbols
