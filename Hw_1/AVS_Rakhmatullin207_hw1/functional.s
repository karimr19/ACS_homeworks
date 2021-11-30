	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0	sdk_version 11, 3
	.globl	__Z12InFunctionalP10functionalP7__sFILE ## -- Begin function _Z12InFunctionalP10functionalP7__sFILE
	.p2align	4, 0x90
__Z12InFunctionalP10functionalP7__sFILE: ## @_Z12InFunctionalP10functionalP7__sFILE
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
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	leaq	-20(%rbp), %rdx
	callq	_fscanf
	movl	-20(%rbp), %ecx
	movl	%ecx, %r8d
	subl	$1, %r8d
	movl	%ecx, -28(%rbp)                 ## 4-byte Spill
	je	LBB0_1
	jmp	LBB0_8
LBB0_8:
	movl	-28(%rbp), %eax                 ## 4-byte Reload
	subl	$2, %eax
	je	LBB0_2
	jmp	LBB0_3
LBB0_1:
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
LBB0_2:
	movq	-8(%rbp), %rax
	movl	$1, (%rax)
LBB0_3:
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
## %bb.4:
	movq	-16(%rbp), %rdi
	leaq	L_.str(%rip), %rsi
	leaq	-24(%rbp), %rdx
	movb	$0, %al
	callq	_fscanf
	cmpl	$0, -24(%rbp)
	jle	LBB0_6
## %bb.5:
	movq	-8(%rbp), %rax
	movl	$1, 4(%rax)
	jmp	LBB0_7
LBB0_6:
	movq	-8(%rbp), %rax
	movl	$0, 4(%rax)
LBB0_7:
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__Z5InRndP10functional          ## -- Begin function _Z5InRndP10functional
	.p2align	4, 0x90
__Z5InRndP10functional:                 ## @_Z5InRndP10functional
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
	movl	%eax, %ecx
	shrl	$31, %ecx
	movl	%eax, %edx
	addl	%ecx, %edx
	andl	$-2, %edx
                                        ## implicit-def: $rsi
	movl	%eax, %esi
	negl	%edx
                                        ## implicit-def: $rdi
	movl	%edx, %edi
	leal	1(%rsi,%rdi), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	subl	$1, %ecx
	movl	%eax, -16(%rbp)                 ## 4-byte Spill
	je	LBB1_1
	jmp	LBB1_5
LBB1_5:
	movl	-16(%rbp), %eax                 ## 4-byte Reload
	subl	$2, %eax
	je	LBB1_2
	jmp	LBB1_3
LBB1_1:
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
LBB1_2:
	movq	-8(%rbp), %rax
	movl	$1, (%rax)
LBB1_3:
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
## %bb.4:
	callq	__Z9IntRandomv
	cltd
	movl	$2, %ecx
	idivl	%ecx
	movq	-8(%rbp), %rsi
	movl	%edx, 4(%rsi)
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__Z3OutP10functionalP7__sFILE   ## -- Begin function _Z3OutP10functionalP7__sFILE
	.p2align	4, 0x90
__Z3OutP10functionalP7__sFILE:          ## @_Z3OutP10functionalP7__sFILE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$80, %rsp
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -40(%rbp)                 ## 4-byte Spill
	je	LBB2_1
	jmp	LBB2_7
LBB2_7:
	movl	-40(%rbp), %eax                 ## 4-byte Reload
	subl	$1, %eax
	je	LBB2_2
	jmp	LBB2_3
LBB2_1:
	leaq	-16(%rbp), %rdi
	leaq	L_.str.1(%rip), %rsi
	callq	_strcpy
LBB2_2:
	leaq	-16(%rbp), %rdi
	leaq	L_.str.2(%rip), %rsi
	callq	_strcpy
LBB2_3:
	leaq	-16(%rbp), %rdi
	leaq	L_.str.1(%rip), %rsi
	callq	_strcpy
## %bb.4:
	leaq	-16(%rbp), %rcx
	leaq	-36(%rbp), %rax
	movq	-24(%rbp), %rdx
	movl	4(%rdx), %esi
	cmpl	$0, %esi
	leaq	L_.str.3(%rip), %rdx
	leaq	L_.str.4(%rip), %rdi
	cmovneq	%rdx, %rdi
	movq	%rdi, -48(%rbp)                 ## 8-byte Spill
	movq	%rax, %rdi
	movq	-48(%rbp), %rsi                 ## 8-byte Reload
	movq	%rcx, -56(%rbp)                 ## 8-byte Spill
	movq	%rax, -64(%rbp)                 ## 8-byte Spill
	callq	_strcpy
	movq	-32(%rbp), %rdi
	leaq	L_.str.5(%rip), %rsi
	movq	-64(%rbp), %rdx                 ## 8-byte Reload
	movq	-56(%rbp), %rcx                 ## 8-byte Reload
	movq	%rax, -72(%rbp)                 ## 8-byte Spill
	movb	$0, %al
	callq	_fprintf
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	jne	LBB2_6
## %bb.5:
	addq	$80, %rsp
	popq	%rbp
	retq
LBB2_6:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d"

L_.str.1:                               ## @.str.1
	.asciz	"Strict"

L_.str.2:                               ## @.str.2
	.asciz	"Dynamic"

L_.str.3:                               ## @.str.3
	.asciz	"yes"

L_.str.4:                               ## @.str.4
	.asciz	"no"

L_.str.5:                               ## @.str.5
	.asciz	"Type: functional\tLazy: %s\tTypization - %s\n"

.subsections_via_symbols
