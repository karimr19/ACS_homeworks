	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0	sdk_version 11, 3
	.globl	__Z9IntRandomv                  ## -- Begin function _Z9IntRandomv
	.p2align	4, 0x90
__Z9IntRandomv:                         ## @_Z9IntRandomv
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
	.p2align	3                               ## -- Begin function _Z12DoubleRandomv
LCPI1_0:
	.quad	0x41dfffffffc00000              ## double 2147483647
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z12DoubleRandomv
	.p2align	4, 0x90
__Z12DoubleRandomv:                     ## @_Z12DoubleRandomv
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	callq	_rand
	movsd	LCPI1_0(%rip), %xmm0            ## xmm0 = mem[0],zero
	cvtsi2sd	%eax, %xmm1
	divsd	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
