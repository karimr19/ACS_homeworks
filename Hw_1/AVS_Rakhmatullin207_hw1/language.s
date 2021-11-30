	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0	sdk_version 11, 3
	.globl	__Z10ProportionP8language       ## -- Begin function _Z10ProportionP8language
	.p2align	4, 0x90
__Z10ProportionP8language:              ## @_Z10ProportionP8language
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	cvtsi2sdl	16(%rax), %xmm0
	movq	-8(%rbp), %rax
	divsd	8(%rax), %xmm0
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__Z15OutFoundingYearP8languageP7__sFILE ## -- Begin function _Z15OutFoundingYearP8languageP7__sFILE
	.p2align	4, 0x90
__Z15OutFoundingYearP8languageP7__sFILE: ## @_Z15OutFoundingYearP8languageP7__sFILE
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
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	16(%rax), %edx
	leaq	L_.str(%rip), %rsi
	movb	$0, %al
	callq	_fprintf
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__Z13OutPopularityP8languageP7__sFILE ## -- Begin function _Z13OutPopularityP8languageP7__sFILE
	.p2align	4, 0x90
__Z13OutPopularityP8languageP7__sFILE:  ## @_Z13OutPopularityP8languageP7__sFILE
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
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movsd	8(%rax), %xmm0                  ## xmm0 = mem[0],zero
	leaq	L_.str.1(%rip), %rsi
	movb	$1, %al
	callq	_fprintf
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__Z13OutProportionP8languageP7__sFILE ## -- Begin function _Z13OutProportionP8languageP7__sFILE
	.p2align	4, 0x90
__Z13OutProportionP8languageP7__sFILE:  ## @_Z13OutProportionP8languageP7__sFILE
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
	movq	%rdi, -24(%rbp)                 ## 8-byte Spill
	movq	%rax, %rdi
	callq	__Z10ProportionP8language
	movq	-24(%rbp), %rdi                 ## 8-byte Reload
	leaq	L_.str.2(%rip), %rsi
	movb	$1, %al
	callq	_fprintf
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__Z10InLanguageP7__sFILE        ## -- Begin function _Z10InLanguageP7__sFILE
	.p2align	4, 0x90
__Z10InLanguageP7__sFILE:               ## @_Z10InLanguageP7__sFILE
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$48, %rsp
	movq	%rdi, -16(%rbp)
	movl	$32, %edi
	callq	__Znwm
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	leaq	-28(%rbp), %rsi
	callq	__Z8CheckIntP7__sFILEPi
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	jne	LBB4_2
## %bb.1:
	movq	$0, -8(%rbp)
	jmp	LBB4_7
LBB4_2:
	movq	-16(%rbp), %rdi
	leaq	L_.str.3(%rip), %rsi
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	leaq	-40(%rbp), %rdx
	leaq	-44(%rbp), %rcx
	callq	_fscanf
	movsd	-40(%rbp), %xmm0                ## xmm0 = mem[0],zero
	movq	-24(%rbp), %rcx
	movsd	%xmm0, 8(%rcx)
	movl	-44(%rbp), %r8d
	movq	-24(%rbp), %rcx
	movl	%r8d, 16(%rcx)
	movl	-28(%rbp), %r8d
	movl	%r8d, %r9d
	subl	$1, %r9d
	movl	%r8d, -48(%rbp)                 ## 4-byte Spill
	je	LBB4_3
	jmp	LBB4_8
LBB4_8:
	movl	-48(%rbp), %eax                 ## 4-byte Reload
	subl	$2, %eax
	je	LBB4_4
	jmp	LBB4_9
LBB4_9:
	movl	-48(%rbp), %eax                 ## 4-byte Reload
	subl	$3, %eax
	je	LBB4_5
	jmp	LBB4_6
LBB4_3:
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	addq	$20, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	__Z12InProceduralP10proceduralP7__sFILE
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB4_7
LBB4_4:
	movq	-24(%rbp), %rax
	movl	$1, (%rax)
	movq	-24(%rbp), %rax
	addq	$20, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	__Z16InObjectOrientedP15object_orientedP7__sFILE
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB4_7
LBB4_5:
	movq	-24(%rbp), %rax
	movl	$2, (%rax)
	movq	-24(%rbp), %rax
	addq	$20, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	__Z12InFunctionalP10functionalP7__sFILE
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB4_7
LBB4_6:
	movq	$0, -8(%rbp)
LBB4_7:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ## -- Begin function _Z5InRndv
LCPI5_0:
	.quad	0x4059000000000000              ## double 100
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z5InRndv
	.p2align	4, 0x90
__Z5InRndv:                             ## @_Z5InRndv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$32, %edi
	callq	__Znwm
	movq	%rax, -16(%rbp)
	callq	__Z9IntRandomv
	addl	$1900, %eax                     ## imm = 0x76C
	movq	-16(%rbp), %rcx
	movl	%eax, 16(%rcx)
	callq	__Z12DoubleRandomv
	movsd	LCPI5_0(%rip), %xmm1            ## xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movq	-16(%rbp), %rcx
	movsd	%xmm0, 8(%rcx)
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
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	subl	$1, %ecx
	movl	%eax, -24(%rbp)                 ## 4-byte Spill
	je	LBB5_1
	jmp	LBB5_6
LBB5_6:
	movl	-24(%rbp), %eax                 ## 4-byte Reload
	subl	$2, %eax
	je	LBB5_2
	jmp	LBB5_7
LBB5_7:
	movl	-24(%rbp), %eax                 ## 4-byte Reload
	subl	$3, %eax
	je	LBB5_3
	jmp	LBB5_4
LBB5_1:
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	movq	-16(%rbp), %rax
	addq	$20, %rax
	movq	%rax, %rdi
	callq	__Z5InRndP10procedural
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB5_5
LBB5_2:
	movq	-16(%rbp), %rax
	movl	$1, (%rax)
	movq	-16(%rbp), %rax
	addq	$20, %rax
	movq	%rax, %rdi
	callq	__Z5InRndP15object_oriented
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB5_5
LBB5_3:
	movq	-16(%rbp), %rax
	movl	$2, (%rax)
	movq	-16(%rbp), %rax
	addq	$20, %rax
	movq	%rax, %rdi
	callq	__Z5InRndP10functional
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB5_5
LBB5_4:
	movq	$0, -8(%rbp)
LBB5_5:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	__Z3OutP8languageP7__sFILE      ## -- Begin function _Z3OutP8languageP7__sFILE
	.p2align	4, 0x90
__Z3OutP8languageP7__sFILE:             ## @_Z3OutP8languageP7__sFILE
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
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -20(%rbp)                 ## 4-byte Spill
	je	LBB6_1
	jmp	LBB6_6
LBB6_6:
	movl	-20(%rbp), %eax                 ## 4-byte Reload
	subl	$1, %eax
	je	LBB6_2
	jmp	LBB6_7
LBB6_7:
	movl	-20(%rbp), %eax                 ## 4-byte Reload
	subl	$2, %eax
	je	LBB6_3
	jmp	LBB6_4
LBB6_1:
	movq	-8(%rbp), %rax
	addq	$20, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	__Z3OutP10proceduralP7__sFILE
	jmp	LBB6_5
LBB6_2:
	movq	-8(%rbp), %rax
	addq	$20, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	__Z3OutP15object_orientedP7__sFILE
	jmp	LBB6_5
LBB6_3:
	movq	-8(%rbp), %rax
	addq	$20, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	__Z3OutP10functionalP7__sFILE
	jmp	LBB6_5
LBB6_4:
	leaq	L_.str.4(%rip), %rdi
	movb	$0, %al
	callq	_printf
LBB6_5:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	__Z15OutFoundingYearP8languageP7__sFILE
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	__Z13OutPopularityP8languageP7__sFILE
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	__Z13OutProportionP8languageP7__sFILE
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Year of founding: %d"

L_.str.1:                               ## @.str.1
	.asciz	"\tPopularity: %lf %%\n"

L_.str.2:                               ## @.str.2
	.asciz	"Ratio of founding year to name length: %lf\n"

L_.str.3:                               ## @.str.3
	.asciz	"%lf %d"

L_.str.4:                               ## @.str.4
	.asciz	"Incorrect language!\n"

.subsections_via_symbols
