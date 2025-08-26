	.file	"sommapari.c"
	.text
	.globl	a
	.data
	.align 32
	.type	a, @object
	.size	a, 48
a:
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.long	8
	.long	9
	.long	20
	.long	31
	.long	42
	.globl	risultato
	.bss
	.align 4
	.type	risultato, @object
	.size	risultato, 4
risultato:
	.zero	4
	.text
	.globl	AggiungiNodo
	.type	AggiungiNodo, @function
AggiungiNodo:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movl	%edi, %eax
	movq	%rax, %rcx
	movq	%rdx, %rbx
	movq	%rsi, %rbx
	movq	%rcx, -64(%rbp)
	movq	%rbx, -56(%rbp)
	movl	%edx, -68(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	-68(%rbp), %eax
	movl	%eax, -48(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, -40(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, -56(%rbp)
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L2
	call	__stack_chk_fail@PLT
.L2:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	AggiungiNodo, .-AggiungiNodo
	.globl	SommaPari
	.type	SommaPari, @function
SommaPari:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L4
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	addl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
.L4:
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.L6
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SommaPari
.L6:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	SommaPari, .-SommaPari
	.section	.rodata
.LC0:
	.string	"i to l: %ld\n"
.LC1:
	.string	"l to i: %d %d\n"
.LC2:
	.string	"c to s: %hX %hX\n"
.LC3:
	.string	"i to ui: %u\n"
.LC4:
	.string	"i to s: %hd\n"
.LC5:
	.string	"%5s"
.LC6:
	.string	"La somma da lista \303\250: %d\n"
.LC7:
	.string	"La somma da array \303\250: "
.LC8:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$288, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$100, -232(%rbp)
	movl	$1, -228(%rbp)
	leaq	-232(%rbp), %rax
	movq	%rax, -256(%rbp)
	movq	-256(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rsi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movabsq	$4294967396, %rax
	movq	%rax, -264(%rbp)
	leaq	-264(%rbp), %rax
	movq	%rax, -248(%rbp)
	movq	-248(%rbp), %rax
	addq	$4, %rax
	movl	(%rax), %edx
	movq	-248(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$1329678659, -19(%rbp)
	movb	$0, -15(%rbp)
	leaq	-19(%rbp), %rax
	movq	%rax, -240(%rbp)
	movq	-240(%rbp), %rax
	addq	$2, %rax
	movzwl	(%rax), %eax
	movswl	%ax, %edx
	movq	-240(%rbp), %rax
	movzwl	(%rax), %eax
	cwtl
	movl	%eax, %esi
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$-1, -272(%rbp)
	movl	-272(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$32769, -268(%rbp)
	movl	-268(%rbp), %eax
	movw	%ax, -282(%rbp)
	movswl	-282(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-14(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	leaq	-14(%rbp), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, -280(%rbp)
	jmp	.L8
.L10:
	movl	-280(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	a(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	-280(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rbp, %rdx
	subq	$224, %rdx
	movl	%eax, (%rdx)
	movl	-280(%rbp), %eax
	cltq
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$216, %rax
	movq	$0, (%rax)
	cmpl	$0, -280(%rbp)
	je	.L9
	movl	-280(%rbp), %eax
	leal	-1(%rax), %ecx
	leaq	-224(%rbp), %rax
	movl	-280(%rbp), %edx
	movslq	%edx, %rdx
	salq	$4, %rdx
	addq	%rax, %rdx
	movslq	%ecx, %rax
	salq	$4, %rax
	addq	%rbp, %rax
	subq	$216, %rax
	movq	%rdx, (%rax)
.L9:
	addl	$1, -280(%rbp)
.L8:
	cmpl	$11, -280(%rbp)
	jle	.L10
	leaq	-224(%rbp), %rax
	leaq	risultato(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	SommaPari
	movl	risultato(%rip), %eax
	movl	%eax, %esi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, risultato(%rip)
	leaq	.LC7(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -276(%rbp)
	jmp	.L11
.L13:
	movl	-276(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	a(%rip), %rax
	movl	(%rdx,%rax), %eax
	andl	$1, %eax
	testl	%eax, %eax
	jne	.L12
	movl	-276(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	a(%rip), %rax
	movl	(%rdx,%rax), %edx
	movl	risultato(%rip), %eax
	addl	%edx, %eax
	movl	%eax, risultato(%rip)
.L12:
	addl	$1, -276(%rbp)
.L11:
	cmpl	$11, -276(%rbp)
	jle	.L13
	movl	risultato(%rip), %eax
	movl	%eax, %esi
	leaq	.LC8(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L15
	call	__stack_chk_fail@PLT
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
