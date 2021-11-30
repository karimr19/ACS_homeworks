	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0	sdk_version 11, 3
	.globl	__Z4InitP9container             ## -- Begin function _Z4InitP9container
	.p2align	4, 0x90
__Z4InitP9container:                    ## @_Z4InitP9container
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__Z5ClearP9container            ## -- Begin function _Z5ClearP9container
	.p2align	4, 0x90
__Z5ClearP9container:                   ## @_Z5ClearP9container
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
LBB1_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	LBB1_6
## %bb.2:                               ##   in Loop: Header=BB1_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movq	8(%rax,%rcx,8), %rax
	cmpq	$0, %rax
	movq	%rax, -24(%rbp)                 ## 8-byte Spill
	je	LBB1_4
## %bb.3:                               ##   in Loop: Header=BB1_1 Depth=1
	movq	-24(%rbp), %rax                 ## 8-byte Reload
	movq	%rax, %rdi
	callq	__ZdlPv
LBB1_4:                                 ##   in Loop: Header=BB1_1 Depth=1
	jmp	LBB1_5
LBB1_5:                                 ##   in Loop: Header=BB1_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	LBB1_1
LBB1_6:
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__Z2InP9containerP7__sFILE      ## -- Begin function _Z2InP9containerP7__sFILE
	.p2align	4, 0x90
__Z2InP9containerP7__sFILE:             ## @_Z2InP9containerP7__sFILE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	callq	__Z10InLanguageP7__sFILE
	movq	-8(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movslq	(%rdx), %rdx
	movq	%rax, 8(%rcx,%rdx,8)
	cmpq	$0, %rax
	je	LBB2_3
## %bb.2:                               ##   in Loop: Header=BB2_1 Depth=1
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	jmp	LBB2_1
LBB2_3:
	movq	-16(%rbp), %rdi
	callq	_fclose
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__Z5InRndP9containeri           ## -- Begin function _Z5InRndP9containeri
	.p2align	4, 0x90
__Z5InRndP9containeri:                  ## @_Z5InRndP9containeri
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
LBB3_1:                                 ## =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	-12(%rbp), %ecx
	jge	LBB3_5
## %bb.2:                               ##   in Loop: Header=BB3_1 Depth=1
	callq	__Z5InRndv
	movq	-8(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movslq	(%rdx), %rdx
	movq	%rax, 8(%rcx,%rdx,8)
	cmpq	$0, %rax
	je	LBB3_4
## %bb.3:                               ##   in Loop: Header=BB3_1 Depth=1
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
LBB3_4:                                 ##   in Loop: Header=BB3_1 Depth=1
	jmp	LBB3_1
LBB3_5:
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__Z3OutP9containerP7__sFILE     ## -- Begin function _Z3OutP9containerP7__sFILE
	.p2align	4, 0x90
__Z3OutP9containerP7__sFILE:            ## @_Z3OutP9containerP7__sFILE
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
	movq	-8(%rbp), %rax
	movl	(%rax), %edx
	leaq	L_.str(%rip), %rsi
	movb	$0, %al
	callq	_fprintf
	movl	$0, -20(%rbp)
LBB4_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	LBB4_4
## %bb.2:                               ##   in Loop: Header=BB4_1 Depth=1
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %eax
	addl	$1, %eax
	leaq	L_.str.1(%rip), %rsi
	movl	%eax, %edx
	movb	$0, %al
	callq	_fprintf
	movq	-8(%rbp), %rcx
	movslq	-20(%rbp), %rsi
	movq	8(%rcx,%rsi,8), %rdi
	movq	-16(%rbp), %rsi
	movl	%eax, -24(%rbp)                 ## 4-byte Spill
	callq	__Z3OutP8languageP7__sFILE
## %bb.3:                               ##   in Loop: Header=BB4_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB4_1
LBB4_4:
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__Z14ProportionsSumP9container  ## -- Begin function _Z14ProportionsSumP9container
	.p2align	4, 0x90
__Z14ProportionsSumP9container:         ## @_Z14ProportionsSumP9container
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -16(%rbp)
	movl	$0, -20(%rbp)
LBB5_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	LBB5_4
## %bb.2:                               ##   in Loop: Header=BB5_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	8(%rax,%rcx,8), %rdi
	callq	__Z10ProportionP8language
	addsd	-16(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
## %bb.3:                               ##   in Loop: Header=BB5_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB5_1
LBB5_4:
	movsd	-16(%rbp), %xmm0                ## xmm0 = mem[0],zero
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__Z20DeleteElementByIndexP9containeri ## -- Begin function _Z20DeleteElementByIndexP9containeri
	.p2align	4, 0x90
__Z20DeleteElementByIndexP9containeri:  ## @_Z20DeleteElementByIndexP9containeri
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rax
	cmpl	$1, (%rax)
	jle	LBB6_6
## %bb.1:
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
LBB6_2:                                 ## =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jge	LBB6_5
## %bb.3:                               ##   in Loop: Header=BB6_2 Depth=1
	movq	-8(%rbp), %rax
	movl	-16(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	8(%rax,%rdx,8), %rax
	movq	-8(%rbp), %rdx
	movslq	-16(%rbp), %rsi
	movq	%rax, 8(%rdx,%rsi,8)
## %bb.4:                               ##   in Loop: Header=BB6_2 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	LBB6_2
LBB6_5:
	jmp	LBB6_6
LBB6_6:
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	addl	$-1, %ecx
	movl	%ecx, (%rax)
	movq	-8(%rbp), %rax
	movq	-8(%rbp), %rdx
	movslq	(%rdx), %rdx
	movq	$0, 8(%rax,%rdx,8)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__Z31DeleteLessThenAverageProportionP9container ## -- Begin function _Z31DeleteLessThenAverageProportionP9container
	.p2align	4, 0x90
__Z31DeleteLessThenAverageProportionP9container: ## @_Z31DeleteLessThenAverageProportionP9container
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
	movq	-8(%rbp), %rdi
	callq	__Z14ProportionsSumP9container
	movq	-8(%rbp), %rax
	cvtsi2sdl	(%rax), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -28(%rbp)
LBB7_1:                                 ## =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	cmpl	$0, -28(%rbp)
	movb	%al, -29(%rbp)                  ## 1-byte Spill
	jle	LBB7_3
## %bb.2:                               ##   in Loop: Header=BB7_1 Depth=1
	movl	-12(%rbp), %eax
	cmpl	-28(%rbp), %eax
	setl	%cl
	movb	%cl, -29(%rbp)                  ## 1-byte Spill
LBB7_3:                                 ##   in Loop: Header=BB7_1 Depth=1
	movb	-29(%rbp), %al                  ## 1-byte Reload
	testb	$1, %al
	jne	LBB7_4
	jmp	LBB7_7
LBB7_4:                                 ##   in Loop: Header=BB7_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movq	8(%rax,%rcx,8), %rdi
	callq	__Z10ProportionP8language
	movsd	-24(%rbp), %xmm1                ## xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	LBB7_6
## %bb.5:                               ##   in Loop: Header=BB7_1 Depth=1
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	__Z20DeleteElementByIndexP9containeri
	movl	-12(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -12(%rbp)
	movl	-28(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -28(%rbp)
LBB7_6:                                 ##   in Loop: Header=BB7_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	LBB7_1
LBB7_7:
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Container contains %d elements.\n"

L_.str.1:                               ## @.str.1
	.asciz	"%d: "

.subsections_via_symbols
