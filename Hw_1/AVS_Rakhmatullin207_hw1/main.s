	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0	sdk_version 11, 3
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ## -- Begin function main
LCPI0_0:
	.quad	0x412e848000000000              ## double 1.0E+6
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4
LCPI0_1:
	.long	1127219200                      ## 0x43300000
	.long	1160773632                      ## 0x45300000
	.long	0                               ## 0x0
	.long	0                               ## 0x0
LCPI0_2:
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
	je	LBB0_2
## %bb.1:
	callq	__Z11ErrMessage1v
	movl	$1, -4(%rbp)
	jmp	LBB0_16
LBB0_2:
	leaq	L_.str(%rip), %rdi
	movb	$0, %al
	callq	_printf
	leaq	-80032(%rbp), %rdi
	movl	%eax, -80076(%rbp)              ## 4-byte Spill
	callq	__Z4InitP9container
	movq	-16(%rbp), %rcx
	movq	8(%rcx), %rdi
	leaq	L_.str.1(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB0_4
## %bb.3:
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	leaq	L_.str.2(%rip), %rsi
	callq	_fopen
	movq	%rax, -80040(%rbp)
	movq	-80040(%rbp), %rsi
	leaq	-80032(%rbp), %rdi
	callq	__Z2InP9containerP7__sFILE
	jmp	LBB0_11
LBB0_4:
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdi
	leaq	L_.str.3(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB0_9
## %bb.5:
	xorl	%edx, %edx
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdi
	movq	-16(%rbp), %rax
	addq	$16, %rax
	movq	%rax, %rsi
	callq	_strtol
	movq	%rax, -80048(%rbp)
	cmpq	$1, -80048(%rbp)
	jl	LBB0_7
## %bb.6:
	cmpq	$10000, -80048(%rbp)            ## imm = 0x2710
	jle	LBB0_8
LBB0_7:
	movq	-80048(%rbp), %rsi
	leaq	L_.str.4(%rip), %rdi
	movb	$0, %al
	callq	_printf
	movl	$3, -4(%rbp)
	jmp	LBB0_16
LBB0_8:
	xorl	%eax, %eax
	movl	%eax, %edi
	callq	_time
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, %edi
	callq	_srand
	movq	-80048(%rbp), %rcx
                                        ## kill: def $ecx killed $ecx killed $rcx
	leaq	-80032(%rbp), %rdi
	movl	%ecx, %esi
	callq	__Z5InRndP9containeri
	jmp	LBB0_10
LBB0_9:
	callq	__Z11ErrMessage2v
	movl	$2, -4(%rbp)
	jmp	LBB0_16
LBB0_10:
	jmp	LBB0_11
LBB0_11:
	movq	-16(%rbp), %rax
	movq	24(%rax), %rdi
	leaq	L_.str.5(%rip), %rsi
	callq	_fopen
	movq	%rax, -80056(%rbp)
	cmpq	$0, %rax
	jne	LBB0_13
## %bb.12:
	leaq	L_.str.6(%rip), %rdi
	callq	_perror
	movl	$1, %edi
	callq	_exit
LBB0_13:
	movq	-80056(%rbp), %rdi
	leaq	L_.str.7(%rip), %rsi
	movb	$0, %al
	callq	_fprintf
	movq	-80056(%rbp), %rsi
	leaq	-80032(%rbp), %rdi
	movl	%eax, -80080(%rbp)              ## 4-byte Spill
	callq	__Z3OutP9containerP7__sFILE
	movq	-80056(%rbp), %rdi
	callq	_fclose
	movq	-16(%rbp), %rcx
	movq	32(%rcx), %rdi
	leaq	L_.str.5(%rip), %rsi
	movl	%eax, -80084(%rbp)              ## 4-byte Spill
	callq	_fopen
	movq	%rax, -80064(%rbp)
	cmpq	$0, %rax
	jne	LBB0_15
## %bb.14:
	leaq	L_.str.6(%rip), %rdi
	callq	_perror
	movl	$1, %edi
	callq	_exit
LBB0_15:
	movsd	LCPI0_0(%rip), %xmm0            ## xmm0 = mem[0],zero
	leaq	-80032(%rbp), %rax
	movq	%rax, %rdi
	movsd	%xmm0, -80096(%rbp)             ## 8-byte Spill
	movq	%rax, -80104(%rbp)              ## 8-byte Spill
	callq	__Z14ProportionsSumP9container
	movsd	%xmm0, -80072(%rbp)
	movq	-80064(%rbp), %rdi
	movsd	-80072(%rbp), %xmm0             ## xmm0 = mem[0],zero
	leaq	L_.str.8(%rip), %rsi
	movb	$1, %cl
	movb	%cl, %al
	movb	%cl, -80105(%rbp)               ## 1-byte Spill
	callq	_fprintf
	movq	-80064(%rbp), %rdi
	movsd	-80072(%rbp), %xmm0             ## xmm0 = mem[0],zero
	cvtsi2sdl	-80032(%rbp), %xmm1
	divsd	%xmm1, %xmm0
	leaq	L_.str.9(%rip), %rsi
	movb	-80105(%rbp), %cl               ## 1-byte Reload
	movl	%eax, -80112(%rbp)              ## 4-byte Spill
	movb	%cl, %al
	callq	_fprintf
	movq	-80064(%rbp), %rdi
	leaq	L_.str.10(%rip), %rsi
	xorl	%edx, %edx
                                        ## kill: def $dl killed $dl killed $edx
	movl	%eax, -80116(%rbp)              ## 4-byte Spill
	movb	%dl, %al
	movb	%dl, -80117(%rbp)               ## 1-byte Spill
	callq	_fprintf
	movq	-80104(%rbp), %rdi              ## 8-byte Reload
	movl	%eax, -80124(%rbp)              ## 4-byte Spill
	callq	__Z31DeleteLessThenAverageProportionP9container
	movq	-80064(%rbp), %rsi
	movq	-80104(%rbp), %rdi              ## 8-byte Reload
	callq	__Z3OutP9containerP7__sFILE
	movq	-80064(%rbp), %rdi
	callq	_fclose
	movq	-80104(%rbp), %rdi              ## 8-byte Reload
	movl	%eax, -80128(%rbp)              ## 4-byte Spill
	callq	__Z5ClearP9container
	leaq	L_.str.11(%rip), %rdi
	movb	-80117(%rbp), %al               ## 1-byte Reload
	callq	_printf
	movl	%eax, -80132(%rbp)              ## 4-byte Spill
	callq	_clock
	movq	-24(%rbp), %rsi
	subq	%rsi, %rax
	movq	%rax, %xmm0
	movaps	LCPI0_1(%rip), %xmm1            ## xmm1 = [1127219200,1160773632,0,0]
	punpckldq	%xmm1, %xmm0            ## xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movapd	LCPI0_2(%rip), %xmm1            ## xmm1 = [4.503599627370496E+15,1.9342813113834067E+25]
	subpd	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm0                    ## xmm0 = xmm0[1,1]
	addsd	%xmm1, %xmm0
	movsd	-80096(%rbp), %xmm1             ## 8-byte Reload
                                        ## xmm1 = mem[0],zero
	divsd	%xmm1, %xmm0
	leaq	L_.str.12(%rip), %rdi
	movb	$1, %al
	callq	_printf
	movl	$0, -4(%rbp)
LBB0_16:
	movl	-4(%rbp), %eax
	addq	$80144, %rsp                    ## imm = 0x13910
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Start\n"

L_.str.1:                               ## @.str.1
	.asciz	"-f"

L_.str.2:                               ## @.str.2
	.asciz	"r"

L_.str.3:                               ## @.str.3
	.asciz	"-n"

L_.str.4:                               ## @.str.4
	.asciz	"incorrect number of languages = %d. Set 0 < number <= 10000\n"

L_.str.5:                               ## @.str.5
	.asciz	"w+"

L_.str.6:                               ## @.str.6
	.asciz	"\320\235\320\265\320\262\320\276\320\267\320\274\320\276\320\266\320\275\320\276 \320\276\321\202\320\272\321\200\321\213\321\202\321\214 \321\204\320\260\320\271\320\273!"

L_.str.7:                               ## @.str.7
	.asciz	"Filled container:\n"

L_.str.8:                               ## @.str.8
	.asciz	"Proportion sum = %lf\n"

L_.str.9:                               ## @.str.9
	.asciz	"Proportion average = %f\n"

L_.str.10:                              ## @.str.10
	.asciz	"Changed container:\n"

L_.str.11:                              ## @.str.11
	.asciz	"Stop\n"

L_.str.12:                              ## @.str.12
	.asciz	"Seconds: %f\n"

.subsections_via_symbols
