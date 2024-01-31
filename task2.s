	.file	"task2.c"
	.text
	.globl	str
	.bss
	.align 32
	.type	str, @object
	.size	str, 50
str:
	.zero	50
	.globl	exit_
	.section	.rodata
.LC0:
	.string	"exit"
	.section	.data.rel.local,"aw"
	.align 8
	.type	exit_, @object
	.size	exit_, 8
exit_:
	.quad	.LC0
	.globl	flag
	.bss
	.type	flag, @object
	.size	flag, 1
flag:
	.zero	1
	.section	.rodata
.LC1:
	.string	"start my femto shell"
.LC2:
	.string	" i am ready>"
.LC3:
	.string	"%[^\n]%*c"
.LC4:
	.string	"you are wilcome"
.LC5:
	.string	"you said : %s\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L4:
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	leaq	str(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movq	exit_(%rip), %rax
	leaq	str(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	strcmp@PLT
	movb	%al, flag(%rip)
	movzbl	flag(%rip), %eax
	testb	%al, %al
	jne	.L2
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movb	$1, flag(%rip)
	jmp	.L6
.L2:
	leaq	str(%rip), %rax
	movq	%rax, %rsi
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L4
.L6:
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
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
