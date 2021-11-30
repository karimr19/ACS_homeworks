	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0	sdk_version 11, 3
	.globl	_ErrMessage1                    ## -- Begin function ErrMessage1
	.p2align	4, 0x90
_ErrMessage1:                           ## @ErrMessage1
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
	.globl	_ErrMessage2                    ## -- Begin function ErrMessage2
	.p2align	4, 0x90
_ErrMessage2:                           ## @ErrMessage2
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
	.globl	_CheckInt                       ## -- Begin function CheckInt
	.p2align	4, 0x90
_CheckInt:                              ## @CheckInt
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
	.globl	_IntRandom                      ## -- Begin function IntRandom
	.p2align	4, 0x90
_IntRandom:                             ## @IntRandom
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	_rand
	cltd
	movl	$100, %ecx
	idivl	%ecx
	movl	%edx, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ## -- Begin function DoubleRandom
LCPI4_0:
	.quad	0x41dfffffffc00000              ## double 2147483647
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_DoubleRandom
	.p2align	4, 0x90
_DoubleRandom:                          ## @DoubleRandom
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	_rand
	movsd	LCPI4_0(%rip), %xmm0            ## xmm0 = mem[0],zero
	cvtsi2sd	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_InFunctional                   ## -- Begin function InFunctional
	.p2align	4, 0x90
_InFunctional:                          ## @InFunctional
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
	leaq	L_.str.2(%rip), %rsi
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	leaq	-20(%rbp), %rdx
	callq	_fscanf
	movl	-20(%rbp), %ecx
	movl	%ecx, %r8d
	subl	$1, %r8d
	movl	%ecx, -28(%rbp)                 ## 4-byte Spill
	je	LBB5_1
	jmp	LBB5_8
LBB5_8:
	movl	-28(%rbp), %eax                 ## 4-byte Reload
	subl	$2, %eax
	je	LBB5_2
	jmp	LBB5_3
LBB5_1:
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
LBB5_2:
	movq	-8(%rbp), %rax
	movl	$1, (%rax)
LBB5_3:
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
## %bb.4:
	movq	-16(%rbp), %rdi
	leaq	L_.str.2(%rip), %rsi
	leaq	-24(%rbp), %rdx
	movb	$0, %al
	callq	_fscanf
	cmpl	$0, -24(%rbp)
	jle	LBB5_6
## %bb.5:
	movq	-8(%rbp), %rax
	movl	$1, 4(%rax)
	jmp	LBB5_7
LBB5_6:
	movq	-8(%rbp), %rax
	movl	$0, 4(%rax)
LBB5_7:
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_InRndFunctional                ## -- Begin function InRndFunctional
	.p2align	4, 0x90
_InRndFunctional:                       ## @InRndFunctional
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	_IntRandom
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
	je	LBB6_1
	jmp	LBB6_5
LBB6_5:
	movl	-16(%rbp), %eax                 ## 4-byte Reload
	subl	$2, %eax
	je	LBB6_2
	jmp	LBB6_3
LBB6_1:
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
LBB6_2:
	movq	-8(%rbp), %rax
	movl	$1, (%rax)
LBB6_3:
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
## %bb.4:
	callq	_IntRandom
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
	.globl	_OutFunctional                  ## -- Begin function OutFunctional
	.p2align	4, 0x90
_OutFunctional:                         ## @OutFunctional
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
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	testl	%ecx, %ecx
	movl	%ecx, -40(%rbp)                 ## 4-byte Spill
	je	LBB7_1
	jmp	LBB7_7
LBB7_7:
	movl	-40(%rbp), %eax                 ## 4-byte Reload
	subl	$1, %eax
	je	LBB7_2
	jmp	LBB7_3
LBB7_1:
	leaq	-16(%rbp), %rdi
	leaq	L_.str.3(%rip), %rsi
	movl	$8, %edx
	callq	___strcpy_chk
LBB7_2:
	leaq	-16(%rbp), %rdi
	leaq	L_.str.4(%rip), %rsi
	movl	$8, %edx
	callq	___strcpy_chk
LBB7_3:
	leaq	-16(%rbp), %rdi
	leaq	L_.str.3(%rip), %rsi
	movl	$8, %edx
	callq	___strcpy_chk
## %bb.4:
	leaq	-36(%rbp), %rdi
	movq	-24(%rbp), %rax
	movl	4(%rax), %ecx
	cmpl	$0, %ecx
	leaq	L_.str.5(%rip), %rax
	leaq	L_.str.6(%rip), %rdx
	cmovneq	%rax, %rdx
	movq	%rdx, %rsi
	movl	$4, %edx
	callq	___strcpy_chk
	leaq	-16(%rbp), %rcx
	leaq	-36(%rbp), %rdx
	movq	-32(%rbp), %rdi
	leaq	L_.str.7(%rip), %rsi
	movq	%rax, -48(%rbp)                 ## 8-byte Spill
	movb	$0, %al
	callq	_fprintf
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	jne	LBB7_6
## %bb.5:
	addq	$48, %rsp
	popq	%rbp
	retq
LBB7_6:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_InProcedural                   ## -- Begin function InProcedural
	.p2align	4, 0x90
_InProcedural:                          ## @InProcedural
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
	leaq	L_.str.2(%rip), %rsi
	leaq	-20(%rbp), %rdx
	movb	$0, %al
	callq	_fscanf
	cmpl	$0, -20(%rbp)
	jle	LBB8_2
## %bb.1:
	movq	-8(%rbp), %rax
	movl	$1, (%rax)
	jmp	LBB8_3
LBB8_2:
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
LBB8_3:
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_InRndProcedural                ## -- Begin function InRndProcedural
	.p2align	4, 0x90
_InRndProcedural:                       ## @InRndProcedural
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	_IntRandom
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
	.globl	_OutProcedural                  ## -- Begin function OutProcedural
	.p2align	4, 0x90
_OutProcedural:                         ## @OutProcedural
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	leaq	-20(%rbp), %rax
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edx
	cmpl	$0, %edx
	leaq	L_.str.5(%rip), %rcx
	leaq	L_.str.6(%rip), %rsi
	cmovneq	%rcx, %rsi
	movq	%rax, %rdi
	movl	$4, %edx
	callq	___strcpy_chk
	leaq	-20(%rbp), %rdx
	movq	-16(%rbp), %rdi
	leaq	L_.str.8(%rip), %rsi
	movq	%rax, -32(%rbp)                 ## 8-byte Spill
	movb	$0, %al
	callq	_fprintf
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_InObjectOriented               ## -- Begin function InObjectOriented
	.p2align	4, 0x90
_InObjectOriented:                      ## @InObjectOriented
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
	leaq	L_.str.2(%rip), %rsi
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	leaq	-20(%rbp), %rdx
	callq	_fscanf
	movl	-20(%rbp), %ecx
	movl	%ecx, %r8d
	subl	$1, %r8d
	movl	%ecx, -24(%rbp)                 ## 4-byte Spill
	je	LBB11_1
	jmp	LBB11_6
LBB11_6:
	movl	-24(%rbp), %eax                 ## 4-byte Reload
	subl	$2, %eax
	je	LBB11_2
	jmp	LBB11_7
LBB11_7:
	movl	-24(%rbp), %eax                 ## 4-byte Reload
	subl	$3, %eax
	je	LBB11_3
	jmp	LBB11_4
LBB11_1:
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
LBB11_2:
	movq	-8(%rbp), %rax
	movl	$1, (%rax)
LBB11_3:
	movq	-8(%rbp), %rax
	movl	$2, (%rax)
LBB11_4:
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
## %bb.5:
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_InRndObjectOriented            ## -- Begin function InRndObjectOriented
	.p2align	4, 0x90
_InRndObjectOriented:                   ## @InRndObjectOriented
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	callq	_IntRandom
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
	je	LBB12_1
	jmp	LBB12_6
LBB12_6:
	movl	-16(%rbp), %eax                 ## 4-byte Reload
	subl	$2, %eax
	je	LBB12_2
	jmp	LBB12_7
LBB12_7:
	movl	-16(%rbp), %eax                 ## 4-byte Reload
	subl	$3, %eax
	je	LBB12_3
	jmp	LBB12_4
LBB12_1:
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
LBB12_2:
	movq	-8(%rbp), %rax
	movl	$1, (%rax)
LBB12_3:
	movq	-8(%rbp), %rax
	movl	$2, (%rax)
LBB12_4:
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
## %bb.5:
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_OutObjectOriented              ## -- Begin function OutObjectOriented
	.p2align	4, 0x90
_OutObjectOriented:                     ## @OutObjectOriented
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
	je	LBB13_1
	jmp	LBB13_8
LBB13_8:
	movl	-44(%rbp), %eax                 ## 4-byte Reload
	subl	$1, %eax
	je	LBB13_2
	jmp	LBB13_9
LBB13_9:
	movl	-44(%rbp), %eax                 ## 4-byte Reload
	subl	$2, %eax
	je	LBB13_3
	jmp	LBB13_4
LBB13_1:
	leaq	-18(%rbp), %rdi
	leaq	L_.str.9(%rip), %rsi
	movl	$10, %edx
	callq	___strcpy_chk
LBB13_2:
	leaq	-18(%rbp), %rdi
	leaq	L_.str.10(%rip), %rsi
	movl	$10, %edx
	callq	___strcpy_chk
LBB13_3:
	leaq	-18(%rbp), %rdi
	leaq	L_.str.11(%rip), %rsi
	movl	$10, %edx
	callq	___strcpy_chk
LBB13_4:
	leaq	-18(%rbp), %rdi
	leaq	L_.str.9(%rip), %rsi
	movl	$10, %edx
	callq	___strcpy_chk
## %bb.5:
	leaq	-18(%rbp), %rdx
	movq	-40(%rbp), %rdi
	leaq	L_.str.12(%rip), %rsi
	movb	$0, %al
	callq	_fprintf
	movq	___stack_chk_guard@GOTPCREL(%rip), %rcx
	movq	(%rcx), %rcx
	movq	-8(%rbp), %rdx
	cmpq	%rdx, %rcx
	jne	LBB13_7
## %bb.6:
	addq	$48, %rsp
	popq	%rbp
	retq
LBB13_7:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.globl	_Proportion                     ## -- Begin function Proportion
	.p2align	4, 0x90
_Proportion:                            ## @Proportion
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
	.globl	_OutFoundingYear                ## -- Begin function OutFoundingYear
	.p2align	4, 0x90
_OutFoundingYear:                       ## @OutFoundingYear
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
	leaq	L_.str.13(%rip), %rsi
	movb	$0, %al
	callq	_fprintf
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_OutPopularity                  ## -- Begin function OutPopularity
	.p2align	4, 0x90
_OutPopularity:                         ## @OutPopularity
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
	leaq	L_.str.14(%rip), %rsi
	movb	$1, %al
	callq	_fprintf
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_OutProportion                  ## -- Begin function OutProportion
	.p2align	4, 0x90
_OutProportion:                         ## @OutProportion
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
	callq	_Proportion
	movq	-24(%rbp), %rdi                 ## 8-byte Reload
	leaq	L_.str.15(%rip), %rsi
	movb	$1, %al
	callq	_fprintf
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_InLanguage                     ## -- Begin function InLanguage
	.p2align	4, 0x90
_InLanguage:                            ## @InLanguage
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
	callq	_malloc
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	leaq	-28(%rbp), %rsi
	callq	_CheckInt
	movl	%eax, -32(%rbp)
	cmpl	$0, -32(%rbp)
	jne	LBB18_2
## %bb.1:
	movq	$0, -8(%rbp)
	jmp	LBB18_7
LBB18_2:
	movq	-16(%rbp), %rdi
	leaq	L_.str.16(%rip), %rsi
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
	je	LBB18_3
	jmp	LBB18_8
LBB18_8:
	movl	-48(%rbp), %eax                 ## 4-byte Reload
	subl	$2, %eax
	je	LBB18_4
	jmp	LBB18_9
LBB18_9:
	movl	-48(%rbp), %eax                 ## 4-byte Reload
	subl	$3, %eax
	je	LBB18_5
	jmp	LBB18_6
LBB18_3:
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	movq	-24(%rbp), %rax
	addq	$20, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	_InProcedural
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB18_7
LBB18_4:
	movq	-24(%rbp), %rax
	movl	$1, (%rax)
	movq	-24(%rbp), %rax
	addq	$20, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	_InObjectOriented
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB18_7
LBB18_5:
	movq	-24(%rbp), %rax
	movl	$2, (%rax)
	movq	-24(%rbp), %rax
	addq	$20, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	_InFunctional
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB18_7
LBB18_6:
	movq	$0, -8(%rbp)
LBB18_7:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ## -- Begin function InRndLanguage
LCPI19_0:
	.quad	0x4059000000000000              ## double 100
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_InRndLanguage
	.p2align	4, 0x90
_InRndLanguage:                         ## @InRndLanguage
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$32, %edi
	callq	_malloc
	movq	%rax, -16(%rbp)
	callq	_IntRandom
	addl	$1900, %eax                     ## imm = 0x76C
	movq	-16(%rbp), %rcx
	movl	%eax, 16(%rcx)
	callq	_DoubleRandom
	movsd	LCPI19_0(%rip), %xmm1           ## xmm1 = mem[0],zero
	mulsd	%xmm1, %xmm0
	movq	-16(%rbp), %rcx
	movsd	%xmm0, 8(%rcx)
	callq	_IntRandom
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
	je	LBB19_1
	jmp	LBB19_6
LBB19_6:
	movl	-24(%rbp), %eax                 ## 4-byte Reload
	subl	$2, %eax
	je	LBB19_2
	jmp	LBB19_7
LBB19_7:
	movl	-24(%rbp), %eax                 ## 4-byte Reload
	subl	$3, %eax
	je	LBB19_3
	jmp	LBB19_4
LBB19_1:
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	movq	-16(%rbp), %rax
	addq	$20, %rax
	movq	%rax, %rdi
	callq	_InRndProcedural
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB19_5
LBB19_2:
	movq	-16(%rbp), %rax
	movl	$1, (%rax)
	movq	-16(%rbp), %rax
	addq	$20, %rax
	movq	%rax, %rdi
	callq	_InRndObjectOriented
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB19_5
LBB19_3:
	movq	-16(%rbp), %rax
	movl	$2, (%rax)
	movq	-16(%rbp), %rax
	addq	$20, %rax
	movq	%rax, %rdi
	callq	_InRndFunctional
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB19_5
LBB19_4:
	movq	$0, -8(%rbp)
LBB19_5:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_OutLanguage                    ## -- Begin function OutLanguage
	.p2align	4, 0x90
_OutLanguage:                           ## @OutLanguage
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
	je	LBB20_1
	jmp	LBB20_6
LBB20_6:
	movl	-20(%rbp), %eax                 ## 4-byte Reload
	subl	$1, %eax
	je	LBB20_2
	jmp	LBB20_7
LBB20_7:
	movl	-20(%rbp), %eax                 ## 4-byte Reload
	subl	$2, %eax
	je	LBB20_3
	jmp	LBB20_4
LBB20_1:
	movq	-8(%rbp), %rax
	addq	$20, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	_OutProcedural
	jmp	LBB20_5
LBB20_2:
	movq	-8(%rbp), %rax
	addq	$20, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	_OutObjectOriented
	jmp	LBB20_5
LBB20_3:
	movq	-8(%rbp), %rax
	addq	$20, %rax
	movq	-16(%rbp), %rsi
	movq	%rax, %rdi
	callq	_OutFunctional
	jmp	LBB20_5
LBB20_4:
	leaq	L_.str.17(%rip), %rdi
	movb	$0, %al
	callq	_printf
LBB20_5:
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_OutFoundingYear
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_OutPopularity
	movq	-8(%rbp), %rdi
	movq	-16(%rbp), %rsi
	callq	_OutProportion
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_Init                           ## -- Begin function Init
	.p2align	4, 0x90
_Init:                                  ## @Init
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
	.globl	_Clear                          ## -- Begin function Clear
	.p2align	4, 0x90
_Clear:                                 ## @Clear
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$0, -12(%rbp)
LBB22_1:                                ## =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	LBB22_4
## %bb.2:                               ##   in Loop: Header=BB22_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movq	8(%rax,%rcx,8), %rax
	movq	%rax, %rdi
	callq	_free
## %bb.3:                               ##   in Loop: Header=BB22_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	LBB22_1
LBB22_4:
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_In                             ## -- Begin function In
	.p2align	4, 0x90
_In:                                    ## @In
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
LBB23_1:                                ## =>This Inner Loop Header: Depth=1
	movq	-16(%rbp), %rdi
	callq	_InLanguage
	movq	-8(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movslq	(%rdx), %rdx
	movq	%rax, 8(%rcx,%rdx,8)
	cmpq	$0, %rax
	je	LBB23_3
## %bb.2:                               ##   in Loop: Header=BB23_1 Depth=1
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
	jmp	LBB23_1
LBB23_3:
	movq	-16(%rbp), %rdi
	callq	_fclose
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_InRnd                          ## -- Begin function InRnd
	.p2align	4, 0x90
_InRnd:                                 ## @InRnd
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
LBB24_1:                                ## =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	-12(%rbp), %ecx
	jge	LBB24_5
## %bb.2:                               ##   in Loop: Header=BB24_1 Depth=1
	callq	_InRndLanguage
	movq	-8(%rbp), %rcx
	movq	-8(%rbp), %rdx
	movslq	(%rdx), %rdx
	movq	%rax, 8(%rcx,%rdx,8)
	cmpq	$0, %rax
	je	LBB24_4
## %bb.3:                               ##   in Loop: Header=BB24_1 Depth=1
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
LBB24_4:                                ##   in Loop: Header=BB24_1 Depth=1
	jmp	LBB24_1
LBB24_5:
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_Out                            ## -- Begin function Out
	.p2align	4, 0x90
_Out:                                   ## @Out
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
	leaq	L_.str.18(%rip), %rsi
	movb	$0, %al
	callq	_fprintf
	movl	$0, -20(%rbp)
LBB25_1:                                ## =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	LBB25_4
## %bb.2:                               ##   in Loop: Header=BB25_1 Depth=1
	movq	-16(%rbp), %rdi
	movl	-20(%rbp), %eax
	addl	$1, %eax
	leaq	L_.str.19(%rip), %rsi
	movl	%eax, %edx
	movb	$0, %al
	callq	_fprintf
	movq	-8(%rbp), %rcx
	movslq	-20(%rbp), %rsi
	movq	8(%rcx,%rsi,8), %rcx
	movq	-16(%rbp), %rsi
	movq	%rcx, %rdi
	movl	%eax, -24(%rbp)                 ## 4-byte Spill
	callq	_Out
## %bb.3:                               ##   in Loop: Header=BB25_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB25_1
LBB25_4:
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_ProportionsSum                 ## -- Begin function ProportionsSum
	.p2align	4, 0x90
_ProportionsSum:                        ## @ProportionsSum
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
LBB26_1:                                ## =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movq	-8(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	LBB26_4
## %bb.2:                               ##   in Loop: Header=BB26_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movq	8(%rax,%rcx,8), %rdi
	callq	_Proportion
	addsd	-16(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
## %bb.3:                               ##   in Loop: Header=BB26_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB26_1
LBB26_4:
	movsd	-16(%rbp), %xmm0                ## xmm0 = mem[0],zero
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_DeleteElementByIndex           ## -- Begin function DeleteElementByIndex
	.p2align	4, 0x90
_DeleteElementByIndex:                  ## @DeleteElementByIndex
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
	jle	LBB27_6
## %bb.1:
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
LBB27_2:                                ## =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	movq	-8(%rbp), %rcx
	movl	(%rcx), %edx
	subl	$1, %edx
	cmpl	%edx, %eax
	jge	LBB27_5
## %bb.3:                               ##   in Loop: Header=BB27_2 Depth=1
	movq	-8(%rbp), %rax
	movl	-16(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdx
	movq	8(%rax,%rdx,8), %rax
	movq	-8(%rbp), %rdx
	movslq	-16(%rbp), %rsi
	movq	%rax, 8(%rdx,%rsi,8)
## %bb.4:                               ##   in Loop: Header=BB27_2 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	LBB27_2
LBB27_5:
	jmp	LBB27_6
LBB27_6:
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
	.globl	_DeleteLessThenAverageProportion ## -- Begin function DeleteLessThenAverageProportion
	.p2align	4, 0x90
_DeleteLessThenAverageProportion:       ## @DeleteLessThenAverageProportion
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
	callq	_ProportionsSum
	movq	-8(%rbp), %rax
	cvtsi2sdl	(%rax), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, -28(%rbp)
LBB28_1:                                ## =>This Inner Loop Header: Depth=1
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	cmpl	$0, -28(%rbp)
	movb	%al, -29(%rbp)                  ## 1-byte Spill
	jle	LBB28_3
## %bb.2:                               ##   in Loop: Header=BB28_1 Depth=1
	movl	-12(%rbp), %eax
	cmpl	-28(%rbp), %eax
	setl	%cl
	movb	%cl, -29(%rbp)                  ## 1-byte Spill
LBB28_3:                                ##   in Loop: Header=BB28_1 Depth=1
	movb	-29(%rbp), %al                  ## 1-byte Reload
	testb	$1, %al
	jne	LBB28_4
	jmp	LBB28_7
LBB28_4:                                ##   in Loop: Header=BB28_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movq	8(%rax,%rcx,8), %rdi
	callq	_Proportion
	movsd	-24(%rbp), %xmm1                ## xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	jbe	LBB28_6
## %bb.5:                               ##   in Loop: Header=BB28_1 Depth=1
	movq	-8(%rbp), %rdi
	movl	-12(%rbp), %esi
	callq	_DeleteElementByIndex
	movl	-12(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -12(%rbp)
	movl	-28(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -28(%rbp)
LBB28_6:                                ##   in Loop: Header=BB28_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	LBB28_1
LBB28_7:
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ## -- Begin function main
LCPI29_0:
	.quad	0x412e848000000000              ## double 1.0E+6
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4
LCPI29_1:
	.long	1127219200                      ## 0x43300000
	.long	1160773632                      ## 0x45300000
	.long	0                               ## 0x0
	.long	0                               ## 0x0
LCPI29_2:
	.quad	0x4330000000000000              ## double 4503599627370496
	.quad	0x4530000000000000              ## double 1.9342813113834067E+25
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	$80144, %eax                    ## imm = 0x13910
	callq	____chkstk_darwin
	subq	%rax, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	callq	_clock
	movq	%rax, -24(%rbp)
	cmpl	$5, -8(%rbp)
	je	LBB29_2
## %bb.1:
	callq	_ErrMessage1
	movl	$1, -4(%rbp)
	jmp	LBB29_16
LBB29_2:
	leaq	L_.str.20(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	-80032(%rbp), %rdi
	movl	%eax, -80076(%rbp)              ## 4-byte Spill
	callq	_Init
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rdi
	leaq	L_.str.21(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB29_4
## %bb.3:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.22(%rip), %rsi
	callq	_fopen
	movq	%rax, -80040(%rbp)
	movq	-80040(%rbp), %rsi
	leaq	-80032(%rbp), %rdi
	callq	_In
	jmp	LBB29_11
LBB29_4:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.23(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB29_9
## %bb.5:
	xorl	%edx, %edx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rsi
	callq	_strtol
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, -80044(%rbp)
	cmpl	$1, -80044(%rbp)
	jl	LBB29_7
## %bb.6:
	cmpl	$10000, -80044(%rbp)            ## imm = 0x2710
	jle	LBB29_8
LBB29_7:
	movl	-80044(%rbp), %esi
	leaq	L_.str.24(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	$3, -4(%rbp)
	jmp	LBB29_16
LBB29_8:
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	_time
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, %edi
	callq	_srand
	movl	-80044(%rbp), %esi
	leaq	-80032(%rbp), %rdi
	callq	_InRnd
	jmp	LBB29_10
LBB29_9:
	callq	_ErrMessage2
	movl	$2, -4(%rbp)
	jmp	LBB29_16
LBB29_10:
	jmp	LBB29_11
LBB29_11:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	leaq	L_.str.25(%rip), %rsi
	callq	_fopen
	movq	%rax, -80056(%rbp)
	cmpq	$0, %rax
	jne	LBB29_13
## %bb.12:
	leaq	L_.str.26(%rip), %rdi
	callq	_perror
	movl	$1, %edi
	callq	_exit
LBB29_13:
	movq	-80056(%rbp), %rdi
	leaq	L_.str.27(%rip), %rsi
	movb	$0, %al
	callq	_fprintf
	movq	-80056(%rbp), %rsi
	leaq	-80032(%rbp), %rdi
	movl	%eax, -80080(%rbp)              ## 4-byte Spill
	callq	_Out
	movq	-80056(%rbp), %rdi
	callq	_fclose
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rdi
	leaq	L_.str.25(%rip), %rsi
	movl	%eax, -80084(%rbp)              ## 4-byte Spill
	callq	_fopen
	movq	%rax, -80064(%rbp)
	cmpq	$0, %rax
	jne	LBB29_15
## %bb.14:
	leaq	L_.str.26(%rip), %rdi
	callq	_perror
	movl	$1, %edi
	callq	_exit
LBB29_15:
	movsd	LCPI29_0(%rip), %xmm0           ## xmm0 = mem[0],zero
	leaq	-80032(%rbp), %rax
	movq	%rax, %rdi
	movsd	%xmm0, -80096(%rbp)             ## 8-byte Spill
	movq	%rax, -80104(%rbp)              ## 8-byte Spill
	callq	_ProportionsSum
	movsd	%xmm0, -80072(%rbp)
	movq	-80064(%rbp), %rdi
	movsd	-80072(%rbp), %xmm0             ## xmm0 = mem[0],zero
	leaq	L_.str.28(%rip), %rsi
	movb	$1, %cl
	movb	%cl, %al
	movb	%cl, -80105(%rbp)               ## 1-byte Spill
	callq	_fprintf
	movq	-80064(%rbp), %rdi
	movsd	-80072(%rbp), %xmm0             ## xmm0 = mem[0],zero
	cvtsi2sdl	-80032(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	leaq	L_.str.29(%rip), %rsi
	movb	-80105(%rbp), %cl               ## 1-byte Reload
	movl	%eax, -80112(%rbp)              ## 4-byte Spill
	movb	%cl, %al
	callq	_fprintf
	movq	-80064(%rbp), %rdi
	leaq	L_.str.30(%rip), %rsi
	xorl	%edx, %edx
                                        ## kill: def $dl killed $dl killed $edx
	movl	%eax, -80116(%rbp)              ## 4-byte Spill
	movb	%dl, %al
	movb	%dl, -80117(%rbp)               ## 1-byte Spill
	callq	_fprintf
	movq	-80104(%rbp), %rdi              ## 8-byte Reload
	movl	%eax, -80124(%rbp)              ## 4-byte Spill
	callq	_DeleteLessThenAverageProportion
	movq	-80064(%rbp), %rsi
	movq	-80104(%rbp), %rdi              ## 8-byte Reload
	callq	_Out
	movq	-80064(%rbp), %rdi
	callq	_fclose
	movq	-80104(%rbp), %rdi              ## 8-byte Reload
	movl	%eax, -80128(%rbp)              ## 4-byte Spill
	callq	_Clear
	leaq	L_.str.31(%rip), %rdi
	movb	-80117(%rbp), %al               ## 1-byte Reload
	callq	_printf
	movl	%eax, -80132(%rbp)              ## 4-byte Spill
	callq	_clock
	movq	-24(%rbp), %rsi
	subq	%rsi, %rax
	movq	%rax, %xmm0
	movaps	LCPI29_1(%rip), %xmm1           ## xmm1 = [1127219200,1160773632,0,0]
	punpckldq	%xmm1, %xmm0            ## xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movapd	LCPI29_2(%rip), %xmm1           ## xmm1 = [4.503599627370496E+15,1.9342813113834067E+25]
	subpd	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm0                    ## xmm0 = xmm0[1,1]
	addsd	%xmm1, %xmm0
	movsd	-80096(%rbp), %xmm1             ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	leaq	L_.str.32(%rip), %rdi
	movb	$1, %al
	callq	_printf
	movl	$0, -4(%rbp)
LBB29_16:
	movl	-4(%rbp), %eax
	addq	$80144, %rsp                    ## imm = 0x13910
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

L_.str.3:                               ## @.str.3
	.asciz	"Strict"

L_.str.4:                               ## @.str.4
	.asciz	"Dynamic"

L_.str.5:                               ## @.str.5
	.asciz	"yes"

L_.str.6:                               ## @.str.6
	.asciz	"no"

L_.str.7:                               ## @.str.7
	.asciz	"Type: functional\tLazy: %s\tTypization - %s\n"

L_.str.8:                               ## @.str.8
	.asciz	"Type: procedural\tContains abstract data types = %s\n"

L_.str.9:                               ## @.str.9
	.asciz	"Single"

L_.str.10:                              ## @.str.10
	.asciz	"Multiple"

L_.str.11:                              ## @.str.11
	.asciz	"Interface"

L_.str.12:                              ## @.str.12
	.asciz	"Type: object-oriented\tInheritance - %s\n"

L_.str.13:                              ## @.str.13
	.asciz	"Year of founding: %d"

L_.str.14:                              ## @.str.14
	.asciz	"\tPopularity: %lf %%\n"

L_.str.15:                              ## @.str.15
	.asciz	"Ratio of founding year to name length: %lf\n"

L_.str.16:                              ## @.str.16
	.asciz	"%lf %d"

L_.str.17:                              ## @.str.17
	.asciz	"Incorrect language!\n"

L_.str.18:                              ## @.str.18
	.asciz	"Container contains %d elements.\n"

L_.str.19:                              ## @.str.19
	.asciz	"%d: "

L_.str.20:                              ## @.str.20
	.asciz	"Start\n"

L_.str.21:                              ## @.str.21
	.asciz	"-f"

L_.str.22:                              ## @.str.22
	.asciz	"a+"

L_.str.23:                              ## @.str.23
	.asciz	"-n"

L_.str.24:                              ## @.str.24
	.asciz	"incorrect number of languages = %d. Set 0 < number <= 10000\n"

L_.str.25:                              ## @.str.25
	.asciz	"w+"

L_.str.26:                              ## @.str.26
	.asciz	"\320\235\320\265\320\262\320\276\320\267\320\274\320\276\320\266\320\275\320\276 \320\276\321\202\320\272\321\200\321\213\321\202\321\214 \321\204\320\260\320\271\320\273!"

L_.str.27:                              ## @.str.27
	.asciz	"Filled container:\n"

L_.str.28:                              ## @.str.28
	.asciz	"Proportion sum = %lf\n"

L_.str.29:                              ## @.str.29
	.asciz	"Proportion average = %f\n"

L_.str.30:                              ## @.str.30
	.asciz	"Changed container:\n"

L_.str.31:                              ## @.str.31
	.asciz	"Stop\n"

L_.str.32:                              ## @.str.32
	.asciz	"Seconds: %f\n"

.subsections_via_symbols
