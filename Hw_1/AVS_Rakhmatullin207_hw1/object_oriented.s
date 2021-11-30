	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0	sdk_version 11, 3
	.globl	__Z16InObjectOrientedP15object_orientedP7__sFILE ## -- Begin function _Z16InObjectOrientedP15object_orientedP7__sFILE
	.p2align	4, 0x90
__Z16InObjectOrientedP15object_orientedP7__sFILE: ## @_Z16InObjectOrientedP15object_orientedP7__sFILE
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
	movl	%ecx, -24(%rbp)                 ## 4-byte Spill
	je	LBB0_1
	jmp	LBB0_6
LBB0_6:
	movl	-24(%rbp), %eax                 ## 4-byte Reload
	subl	$2, %eax
	je	LBB0_2
	jmp	LBB0_7
LBB0_7:
	movl	-24(%rbp), %eax                 ## 4-byte Reload
	subl	$3, %eax
	je	LBB0_3
	jmp	LBB0_4
LBB0_1:
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
LBB0_2:
	movq	-8(%rbp), %rax
	movl	$1, (%rax)
LBB0_3:
	movq	-8(%rbp), %rax
	movl	$2, (%rax)
LBB0_4:
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
## %bb.5:
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__Z5InRndP15object_oriented     ## -- Begin function _Z5InRndP15object_oriented
	.p2align	4, 0x90
__Z5InRndP15object_oriented:            ## @_Z5InRndP15object_oriented
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
	movslq	%eax, %rcx
	imulq	$1431655766, %rcx, %rcx         ## imm = 0x55555556
	movq	%rcx, %rdx
	shrq	$63, %rdx
                                        ## kill: def $edx killed $edx killed $rdx
	shrq	$32, %rcx
                                        ## kill: def $ecx killed $ecx killed $rcx
	addl	%edx, %ecx
                                        ## implicit-def: $rsi
	movl	%ecx, %esi
	leal	(%rsi,%rsi,2), %ecx
                                        ## implicit-def: $rsi
	movl	%eax, %esi
	negl	%ecx
                                        ## implicit-def: $rdi
	movl	%ecx, %edi
	leal	1(%rsi,%rdi), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	subl	$1, %ecx
	movl	%eax, -16(%rbp)                 ## 4-byte Spill
	je	LBB1_1
	jmp	LBB1_6
LBB1_6:
	movl	-16(%rbp), %eax                 ## 4-byte Reload
	subl	$2, %eax
	je	LBB1_2
	jmp	LBB1_7
LBB1_7:
	movl	-16(%rbp), %eax                 ## 4-byte Reload
	subl	$3, %eax
	je	LBB1_3
	jmp	LBB1_4
LBB1_1:
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
LBB1_2:
	movq	-8(%rbp), %rax
	movl	$1, (%rax)
LBB1_3:
	movq	-8(%rbp), %rax
	movl	$2, (%rax)
LBB1_4:
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
## %bb.5:
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__Z3OutP15object_orientedP7__sFILE ## -- Begin function _Z3OutP15object_orientedP7__sFILE
	.p2align	4, 0x90
__Z3OutP15object_orientedP7__sFILE:     ## @_Z3OutP15object_orientedP7__sFILE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -32(%rbp)
	movq	%rsi, -40(%rbp)
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -44(%rbp)                 ## 4-byte Spill
	je	LBB2_1
	jmp	LBB2_8
LBB2_8:
	movl	-44(%rbp), %eax                 ## 4-byte Reload
	subl	$1, %eax
	je	LBB2_2
	jmp	LBB2_9
LBB2_9:
	movl	-44(%rbp), %eax                 ## 4-byte Reload
	subl	$2, %eax
	je	LBB2_3
	jmp	LBB2_4
LBB2_1:
	leaq	-18(%rbp), %rdi
	leaq	L_.str.1(%rip), %rsi
	callq	_strcpy
LBB2_2:
	leaq	-18(%rbp), %rdi
	leaq	L_.str.2(%rip), %rsi
	callq	_strcpy
LBB2_3:
	leaq	-18(%rbp), %rdi
	leaq	L_.str.3(%rip), %rsi
	callq	_strcpy
LBB2_4:
	leaq	-18(%rbp), %rdi
	leaq	L_.str.1(%rip), %rsi
	callq	_strcpy
## %bb.5:
	leaq	-18(%rbp), %rdx
	movq	-40(%rbp), %rdi
	leaq	L_.str.4(%rip), %rsi
	movb	$0, %al
	callq	_fprintf
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	jne	LBB2_7
## %bb.6:
	addq	$48, %rsp
	popq	%rbp
	retq
LBB2_7:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d"

L_.str.1:                               ## @.str.1
	.asciz	"Single"

L_.str.2:                               ## @.str.2
	.asciz	"Multiple"

L_.str.3:                               ## @.str.3
	.asciz	"Interface"

L_.str.4:                               ## @.str.4
	.asciz	"Type: object-oriented\tInheritance - %s\n"

.subsections_via_symbols
