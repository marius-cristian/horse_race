	.file	"time_tests.c++"
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.section	.text._ZnwmPv,"axG",@progbits,_ZnwmPv,comdat
	.weak	_ZnwmPv
	.type	_ZnwmPv, @function
_ZnwmPv:
.LFB659:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE659:
	.size	_ZnwmPv, .-_ZnwmPv
	.section	.text._ZNSt8ios_base9precisionEl,"axG",@progbits,_ZNSt8ios_base9precisionEl,comdat
	.align 2
	.weak	_ZNSt8ios_base9precisionEl
	.type	_ZNSt8ios_base9precisionEl, @function
_ZNSt8ios_base9precisionEl:
.LFB1276:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1276:
	.size	_ZNSt8ios_base9precisionEl, .-_ZNSt8ios_base9precisionEl
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.text._ZNSt13random_deviceC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,"axG",@progbits,_ZNSt13random_deviceC5ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,comdat
	.align 2
	.weak	_ZNSt13random_deviceC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.type	_ZNSt13random_deviceC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, @function
_ZNSt13random_deviceC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
.LFB2271:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2271:
	.size	_ZNSt13random_deviceC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .-_ZNSt13random_deviceC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.weak	_ZNSt13random_deviceC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.set	_ZNSt13random_deviceC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE,_ZNSt13random_deviceC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.section	.text._ZNSt13random_deviceD2Ev,"axG",@progbits,_ZNSt13random_deviceD5Ev,comdat
	.align 2
	.weak	_ZNSt13random_deviceD2Ev
	.type	_ZNSt13random_deviceD2Ev, @function
_ZNSt13random_deviceD2Ev:
.LFB2274:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA2274
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt13random_device7_M_finiEv
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2274:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZNSt13random_deviceD2Ev,"aG",@progbits,_ZNSt13random_deviceD5Ev,comdat
.LLSDA2274:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2274-.LLSDACSB2274
.LLSDACSB2274:
.LLSDACSE2274:
	.section	.text._ZNSt13random_deviceD2Ev,"axG",@progbits,_ZNSt13random_deviceD5Ev,comdat
	.size	_ZNSt13random_deviceD2Ev, .-_ZNSt13random_deviceD2Ev
	.weak	_ZNSt13random_deviceD1Ev
	.set	_ZNSt13random_deviceD1Ev,_ZNSt13random_deviceD2Ev
	.section	.text._ZNSt13random_deviceclEv,"axG",@progbits,_ZNSt13random_deviceclEv,comdat
	.align 2
	.weak	_ZNSt13random_deviceclEv
	.type	_ZNSt13random_deviceclEv, @function
_ZNSt13random_deviceclEv:
.LFB2279:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt13random_device9_M_getvalEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2279:
	.size	_ZNSt13random_deviceclEv, .-_ZNSt13random_deviceclEv
	.section	.rodata
	.type	_ZStL13allocator_arg, @object
	.size	_ZStL13allocator_arg, 1
_ZStL13allocator_arg:
	.zero	1
	.type	_ZStL6ignore, @object
	.size	_ZStL6ignore, 1
_ZStL6ignore:
	.zero	1
	.text
	.globl	_ZN3FFT5four1EPfmi
	.type	_ZN3FFT5four1EPfmi, @function
_ZN3FFT5four1EPfmi:
.LFB7004:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$144, %rsp
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movl	%edx, -132(%rbp)
	movq	-128(%rbp), %rax
	addq	%rax, %rax
	movq	%rax, -48(%rbp)
	movq	$1, -80(%rbp)
	movq	$1, -72(%rbp)
.L14:
	movq	-72(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jnb	.L10
	movq	-80(%rbp), %rax
	cmpq	-72(%rbp), %rax
	jbe	.L11
	movq	-80(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -104(%rbp)
	movq	-80(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	-72(%rbp), %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-120(%rbp), %rdx
	addq	%rcx, %rdx
	movss	(%rdx), %xmm0
	movss	%xmm0, (%rax)
	movq	-72(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movss	-104(%rbp), %xmm0
	movss	%xmm0, (%rax)
	movq	-80(%rbp), %rax
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	movss	%xmm0, -104(%rbp)
	movq	-80(%rbp), %rax
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	-72(%rbp), %rdx
	addq	$1, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-120(%rbp), %rdx
	addq	%rcx, %rdx
	movss	(%rdx), %xmm0
	movss	%xmm0, (%rax)
	movq	-72(%rbp), %rax
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movss	-104(%rbp), %xmm0
	movss	%xmm0, (%rax)
.L11:
	movq	-48(%rbp), %rax
	shrq	%rax
	movq	%rax, -88(%rbp)
.L13:
	cmpq	$1, -88(%rbp)
	jbe	.L12
	movq	-80(%rbp), %rax
	cmpq	-88(%rbp), %rax
	jbe	.L12
	movq	-88(%rbp), %rax
	subq	%rax, -80(%rbp)
	shrq	-88(%rbp)
	jmp	.L13
.L12:
	movq	-88(%rbp), %rax
	addq	%rax, -80(%rbp)
	addq	$2, -72(%rbp)
	jmp	.L14
.L10:
	movq	$2, -96(%rbp)
.L22:
	movq	-48(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jbe	.L23
	movq	-96(%rbp), %rax
	addq	%rax, %rax
	movq	%rax, -40(%rbp)
	pxor	%xmm1, %xmm1
	cvtsi2sd	-132(%rbp), %xmm1
	movq	-96(%rbp), %rax
	testq	%rax, %rax
	js	.L16
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L17
.L16:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L17:
	movsd	.LC0(%rip), %xmm2
	divsd	%xmm0, %xmm2
	movapd	%xmm2, %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-32(%rbp), %xmm1
	movsd	.LC1(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	call	sin
	movq	%xmm0, %rax
	movq	%rax, -24(%rbp)
	movsd	-24(%rbp), %xmm1
	movsd	.LC2(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	mulsd	-24(%rbp), %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -144(%rbp)
	movsd	-144(%rbp), %xmm0
	call	sin
	movq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movsd	.LC3(%rip), %xmm0
	movsd	%xmm0, -64(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -56(%rbp)
	movq	$1, -88(%rbp)
.L21:
	movq	-88(%rbp), %rax
	cmpq	-96(%rbp), %rax
	jnb	.L18
	movq	-88(%rbp), %rax
	movq	%rax, -72(%rbp)
.L20:
	movq	-72(%rbp), %rax
	cmpq	-48(%rbp), %rax
	ja	.L19
	movq	-72(%rbp), %rdx
	movq	-96(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -80(%rbp)
	movq	-80(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	-64(%rbp), %xmm0
	movq	-80(%rbp), %rax
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm1
	cvtss2sd	%xmm1, %xmm1
	mulsd	-56(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm3
	movss	%xmm3, -104(%rbp)
	movq	-80(%rbp), %rax
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-64(%rbp), %xmm1
	movq	-80(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movss	(%rax), %xmm0
	cvtss2sd	%xmm0, %xmm0
	mulsd	-56(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm4
	movss	%xmm4, -100(%rbp)
	movq	-80(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	-72(%rbp), %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-120(%rbp), %rdx
	addq	%rcx, %rdx
	movss	(%rdx), %xmm0
	subss	-104(%rbp), %xmm0
	movss	%xmm0, (%rax)
	movq	-80(%rbp), %rax
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	-72(%rbp), %rdx
	addq	$1, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-120(%rbp), %rdx
	addq	%rcx, %rdx
	movss	(%rdx), %xmm0
	subss	-100(%rbp), %xmm0
	movss	%xmm0, (%rax)
	movq	-72(%rbp), %rax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	-72(%rbp), %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-120(%rbp), %rdx
	addq	%rcx, %rdx
	movss	(%rdx), %xmm0
	addss	-104(%rbp), %xmm0
	movss	%xmm0, (%rax)
	movq	-72(%rbp), %rax
	addq	$1, %rax
	leaq	0(,%rax,4), %rdx
	movq	-120(%rbp), %rax
	addq	%rdx, %rax
	movq	-72(%rbp), %rdx
	addq	$1, %rdx
	leaq	0(,%rdx,4), %rcx
	movq	-120(%rbp), %rdx
	addq	%rcx, %rdx
	movss	(%rdx), %xmm0
	addss	-100(%rbp), %xmm0
	movss	%xmm0, (%rax)
	movq	-40(%rbp), %rax
	addq	%rax, -72(%rbp)
	jmp	.L20
.L19:
	movsd	-64(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	-24(%rbp), %xmm0
	mulsd	-16(%rbp), %xmm0
	movsd	-56(%rbp), %xmm1
	mulsd	-8(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	-64(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movsd	-56(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	-16(%rbp), %xmm1
	movsd	-24(%rbp), %xmm0
	mulsd	-8(%rbp), %xmm0
	addsd	%xmm1, %xmm0
	movsd	-56(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	addq	$2, -88(%rbp)
	jmp	.L21
.L18:
	movq	-40(%rbp), %rax
	movq	%rax, -96(%rbp)
	jmp	.L22
.L23:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7004:
	.size	_ZN3FFT5four1EPfmi, .-_ZN3FFT5four1EPfmi
	.globl	_Z3numNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.type	_Z3numNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, @function
_Z3numNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
.LFB7183:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	movzbl	(%rax), %eax
	cbtw
	subl	$48, %eax
	sall	$12, %eax
	movl	%eax, %ebx
	movq	-40(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	movzbl	(%rax), %eax
	cbtw
	subl	$48, %eax
	sall	$8, %eax
	addl	%eax, %ebx
	movq	-40(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	movzbl	(%rax), %eax
	cbtw
	subl	$48, %eax
	sall	$4, %eax
	addl	%eax, %ebx
	movq	-40(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	movzbl	(%rax), %eax
	cbtw
	addl	%ebx, %eax
	subl	$48, %eax
	movw	%ax, -18(%rbp)
	movzwl	-18(%rbp), %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7183:
	.size	_Z3numNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .-_Z3numNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.globl	_Z12display_cellB5cxx11t
	.type	_Z12display_cellB5cxx11t, @function
_Z12display_cellB5cxx11t:
.LFB7184:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA7184
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$176, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -200(%rbp)
	movl	%esi, %eax
	movw	%ax, -204(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	movw	$15, -182(%rbp)
	movw	$240, -180(%rbp)
	movw	$3840, -178(%rbp)
	movzwl	-204(%rbp), %eax
	sarl	$12, %eax
	addl	$48, %eax
	movb	%al, -186(%rbp)
	movzwl	-204(%rbp), %eax
	andw	-178(%rbp), %ax
	movzwl	%ax, %eax
	sarl	$8, %eax
	addl	$48, %eax
	movb	%al, -185(%rbp)
	movzwl	-204(%rbp), %eax
	andw	-180(%rbp), %ax
	movzwl	%ax, %eax
	sarl	$4, %eax
	addl	$48, %eax
	movb	%al, -184(%rbp)
	movzwl	-204(%rbp), %eax
	movl	%eax, %edx
	movzwl	-182(%rbp), %eax
	andl	%edx, %eax
	addl	$48, %eax
	movb	%al, -183(%rbp)
	movzbl	-186(%rbp), %eax
	movb	%al, -48(%rbp)
	movzbl	-185(%rbp), %eax
	movb	%al, -47(%rbp)
	movzbl	-184(%rbp), %eax
	movb	%al, -46(%rbp)
	movzbl	-183(%rbp), %eax
	movb	%al, -45(%rbp)
	movsbl	-183(%rbp), %ebx
	movsbl	-184(%rbp), %r12d
	movsbl	-185(%rbp), %r13d
	movsbl	-186(%rbp), %r14d
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	leaq	-144(%rbp), %rax
	leaq	-176(%rbp), %rcx
	movl	%r14d, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB0:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_
.LEHE0:
	leaq	-112(%rbp), %rax
	leaq	-144(%rbp), %rcx
	movl	%r13d, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB1:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_
.LEHE1:
	leaq	-80(%rbp), %rax
	leaq	-112(%rbp), %rcx
	movl	%r12d, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB2:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_
.LEHE2:
	movq	-200(%rbp), %rax
	leaq	-80(%rbp), %rcx
	movl	%ebx, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB3:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_
.LEHE3:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	nop
	movq	-200(%rbp), %rax
	movq	-40(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L32
	jmp	.L37
.L36:
	movq	%rax, %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L29
.L35:
	movq	%rax, %rbx
.L29:
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L30
.L34:
	movq	%rax, %rbx
.L30:
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L31
.L33:
	movq	%rax, %rbx
.L31:
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB4:
	call	_Unwind_Resume
.LEHE4:
.L37:
	call	__stack_chk_fail
.L32:
	addq	$176, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7184:
	.section	.gcc_except_table,"a",@progbits
.LLSDA7184:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7184-.LLSDACSB7184
.LLSDACSB7184:
	.uleb128 .LEHB0-.LFB7184
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L33-.LFB7184
	.uleb128 0
	.uleb128 .LEHB1-.LFB7184
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L34-.LFB7184
	.uleb128 0
	.uleb128 .LEHB2-.LFB7184
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L35-.LFB7184
	.uleb128 0
	.uleb128 .LEHB3-.LFB7184
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L36-.LFB7184
	.uleb128 0
	.uleb128 .LEHB4-.LFB7184
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE7184:
	.text
	.size	_Z12display_cellB5cxx11t, .-_Z12display_cellB5cxx11t
	.globl	_Z9mod_digitRt
	.type	_Z9mod_digitRt, @function
_Z9mod_digitRt:
.LFB7185:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	andl	$15, %eax
	cmpl	$9, %eax
	jg	.L39
	movq	-24(%rbp), %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	imull	$52429, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	shrw	$3, %dx
	movq	-24(%rbp), %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	sarl	$4, %eax
	andl	$15, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	movw	%ax, -2(%rbp)
	movq	-24(%rbp), %rax
	movzwl	(%rax), %eax
	andl	$15, %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movw	%dx, (%rax)
	jmp	.L40
.L39:
	movq	-24(%rbp), %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	imull	$52429, %eax, %eax
	shrl	$16, %eax
	movl	%eax, %edx
	shrw	$3, %dx
	movq	-24(%rbp), %rax
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	sarl	$4, %eax
	andl	$15, %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$1, %eax
	movw	%ax, -2(%rbp)
	movq	-24(%rbp), %rax
	movzwl	(%rax), %eax
	andl	$15, %eax
	leal	-10(%rax), %edx
	movq	-24(%rbp), %rax
	movw	%dx, (%rax)
.L40:
	movzwl	-2(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7185:
	.size	_Z9mod_digitRt, .-_Z9mod_digitRt
	.globl	_Z17encoded_naive_multttRt
	.type	_Z17encoded_naive_multttRt, @function
_Z17encoded_naive_multttRt:
.LFB7186:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movl	%edx, %eax
	movq	%rcx, -104(%rbp)
	movw	%di, -84(%rbp)
	movw	%si, -88(%rbp)
	movw	%ax, -92(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movzwl	-84(%rbp), %eax
	sarl	$12, %eax
	movw	%ax, -32(%rbp)
	movzwl	-84(%rbp), %eax
	andl	$3840, %eax
	sarl	$8, %eax
	movw	%ax, -30(%rbp)
	movzwl	-84(%rbp), %eax
	andl	$240, %eax
	sarl	$4, %eax
	movw	%ax, -28(%rbp)
	movzwl	-84(%rbp), %eax
	andl	$15, %eax
	movw	%ax, -26(%rbp)
	movzwl	-88(%rbp), %eax
	sarl	$12, %eax
	movw	%ax, -24(%rbp)
	movzwl	-88(%rbp), %eax
	andl	$3840, %eax
	sarl	$8, %eax
	movw	%ax, -22(%rbp)
	movzwl	-88(%rbp), %eax
	andl	$240, %eax
	sarl	$4, %eax
	movw	%ax, -20(%rbp)
	movzwl	-88(%rbp), %eax
	andl	$15, %eax
	movw	%ax, -18(%rbp)
	movzwl	-26(%rbp), %eax
	imulw	-18(%rbp), %ax
	movw	%ax, -64(%rbp)
	movzwl	-64(%rbp), %eax
	movw	%ax, -16(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_Z9mod_digitRt
	movw	%ax, -14(%rbp)
	movzwl	-14(%rbp), %eax
	movw	%ax, -12(%rbp)
	movzwl	-26(%rbp), %eax
	imulw	-20(%rbp), %ax
	movl	%eax, %edx
	movzwl	-12(%rbp), %eax
	addl	%edx, %eax
	movw	%ax, -62(%rbp)
	movzwl	-62(%rbp), %eax
	movw	%ax, -16(%rbp)
	leaq	-62(%rbp), %rax
	movq	%rax, %rdi
	call	_Z9mod_digitRt
	movw	%ax, -14(%rbp)
	movzwl	-14(%rbp), %eax
	movw	%ax, -12(%rbp)
	movzwl	-26(%rbp), %eax
	imulw	-22(%rbp), %ax
	movl	%eax, %edx
	movzwl	-12(%rbp), %eax
	addl	%edx, %eax
	movw	%ax, -60(%rbp)
	movzwl	-60(%rbp), %eax
	movw	%ax, -16(%rbp)
	leaq	-60(%rbp), %rax
	movq	%rax, %rdi
	call	_Z9mod_digitRt
	movw	%ax, -14(%rbp)
	movzwl	-14(%rbp), %eax
	movw	%ax, -12(%rbp)
	movzwl	-26(%rbp), %eax
	imulw	-24(%rbp), %ax
	movl	%eax, %edx
	movzwl	-12(%rbp), %eax
	addl	%edx, %eax
	movw	%ax, -58(%rbp)
	movzwl	-58(%rbp), %eax
	movw	%ax, -16(%rbp)
	leaq	-58(%rbp), %rax
	movq	%rax, %rdi
	call	_Z9mod_digitRt
	movw	%ax, -14(%rbp)
	movzwl	-14(%rbp), %eax
	movw	%ax, -12(%rbp)
	movzwl	-12(%rbp), %eax
	movw	%ax, -10(%rbp)
	movzwl	-28(%rbp), %eax
	imulw	-18(%rbp), %ax
	movw	%ax, -56(%rbp)
	movzwl	-56(%rbp), %eax
	movw	%ax, -16(%rbp)
	leaq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_Z9mod_digitRt
	movw	%ax, -14(%rbp)
	movzwl	-14(%rbp), %eax
	movw	%ax, -12(%rbp)
	movzwl	-28(%rbp), %eax
	imulw	-20(%rbp), %ax
	movl	%eax, %edx
	movzwl	-12(%rbp), %eax
	addl	%edx, %eax
	movw	%ax, -54(%rbp)
	movzwl	-54(%rbp), %eax
	movw	%ax, -16(%rbp)
	leaq	-54(%rbp), %rax
	movq	%rax, %rdi
	call	_Z9mod_digitRt
	movw	%ax, -14(%rbp)
	movzwl	-14(%rbp), %eax
	movw	%ax, -12(%rbp)
	movzwl	-28(%rbp), %eax
	imulw	-22(%rbp), %ax
	movl	%eax, %edx
	movzwl	-12(%rbp), %eax
	addl	%edx, %eax
	movw	%ax, -52(%rbp)
	movzwl	-52(%rbp), %eax
	movw	%ax, -16(%rbp)
	leaq	-52(%rbp), %rax
	movq	%rax, %rdi
	call	_Z9mod_digitRt
	movw	%ax, -14(%rbp)
	movzwl	-14(%rbp), %eax
	movw	%ax, -12(%rbp)
	movzwl	-28(%rbp), %eax
	imulw	-24(%rbp), %ax
	movl	%eax, %edx
	movzwl	-12(%rbp), %eax
	addl	%eax, %edx
	movzwl	-10(%rbp), %eax
	addl	%edx, %eax
	movw	%ax, -50(%rbp)
	movzwl	-50(%rbp), %eax
	movw	%ax, -16(%rbp)
	leaq	-50(%rbp), %rax
	movq	%rax, %rdi
	call	_Z9mod_digitRt
	movw	%ax, -14(%rbp)
	movzwl	-14(%rbp), %eax
	movw	%ax, -12(%rbp)
	movzwl	-12(%rbp), %eax
	movw	%ax, -10(%rbp)
	movzwl	-30(%rbp), %eax
	imulw	-18(%rbp), %ax
	movw	%ax, -48(%rbp)
	movzwl	-48(%rbp), %eax
	movw	%ax, -16(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_Z9mod_digitRt
	movw	%ax, -14(%rbp)
	movzwl	-14(%rbp), %eax
	movw	%ax, -12(%rbp)
	movzwl	-30(%rbp), %eax
	imulw	-20(%rbp), %ax
	movl	%eax, %edx
	movzwl	-12(%rbp), %eax
	addl	%edx, %eax
	movw	%ax, -46(%rbp)
	movzwl	-46(%rbp), %eax
	movw	%ax, -16(%rbp)
	leaq	-46(%rbp), %rax
	movq	%rax, %rdi
	call	_Z9mod_digitRt
	movw	%ax, -14(%rbp)
	movzwl	-14(%rbp), %eax
	movw	%ax, -12(%rbp)
	movzwl	-30(%rbp), %eax
	imulw	-22(%rbp), %ax
	movl	%eax, %edx
	movzwl	-12(%rbp), %eax
	addl	%edx, %eax
	movw	%ax, -44(%rbp)
	movzwl	-44(%rbp), %eax
	movw	%ax, -16(%rbp)
	leaq	-44(%rbp), %rax
	movq	%rax, %rdi
	call	_Z9mod_digitRt
	movw	%ax, -14(%rbp)
	movzwl	-14(%rbp), %eax
	movw	%ax, -12(%rbp)
	movzwl	-30(%rbp), %eax
	imulw	-24(%rbp), %ax
	movl	%eax, %edx
	movzwl	-12(%rbp), %eax
	addl	%eax, %edx
	movzwl	-10(%rbp), %eax
	addl	%edx, %eax
	movw	%ax, -42(%rbp)
	movzwl	-42(%rbp), %eax
	movw	%ax, -16(%rbp)
	leaq	-42(%rbp), %rax
	movq	%rax, %rdi
	call	_Z9mod_digitRt
	movw	%ax, -14(%rbp)
	movzwl	-14(%rbp), %eax
	movw	%ax, -12(%rbp)
	movzwl	-12(%rbp), %eax
	movw	%ax, -10(%rbp)
	movzwl	-32(%rbp), %eax
	imulw	-18(%rbp), %ax
	movw	%ax, -40(%rbp)
	movzwl	-40(%rbp), %eax
	movw	%ax, -16(%rbp)
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_Z9mod_digitRt
	movw	%ax, -14(%rbp)
	movzwl	-14(%rbp), %eax
	movw	%ax, -12(%rbp)
	movzwl	-32(%rbp), %eax
	imulw	-20(%rbp), %ax
	movl	%eax, %edx
	movzwl	-12(%rbp), %eax
	addl	%edx, %eax
	movw	%ax, -38(%rbp)
	movzwl	-38(%rbp), %eax
	movw	%ax, -16(%rbp)
	leaq	-38(%rbp), %rax
	movq	%rax, %rdi
	call	_Z9mod_digitRt
	movw	%ax, -14(%rbp)
	movzwl	-14(%rbp), %eax
	movw	%ax, -12(%rbp)
	movzwl	-32(%rbp), %eax
	imulw	-22(%rbp), %ax
	movl	%eax, %edx
	movzwl	-12(%rbp), %eax
	addl	%edx, %eax
	movw	%ax, -36(%rbp)
	movzwl	-36(%rbp), %eax
	movw	%ax, -16(%rbp)
	leaq	-36(%rbp), %rax
	movq	%rax, %rdi
	call	_Z9mod_digitRt
	movw	%ax, -14(%rbp)
	movzwl	-14(%rbp), %eax
	movw	%ax, -12(%rbp)
	movzwl	-32(%rbp), %eax
	imulw	-24(%rbp), %ax
	movl	%eax, %edx
	movzwl	-12(%rbp), %eax
	addl	%eax, %edx
	movzwl	-10(%rbp), %eax
	addl	%edx, %eax
	movw	%ax, -34(%rbp)
	movzwl	-34(%rbp), %eax
	movw	%ax, -16(%rbp)
	leaq	-34(%rbp), %rax
	movq	%rax, %rdi
	call	_Z9mod_digitRt
	movw	%ax, -14(%rbp)
	movzwl	-14(%rbp), %eax
	movw	%ax, -12(%rbp)
	movzwl	-12(%rbp), %eax
	movw	%ax, -10(%rbp)
	movzwl	-64(%rbp), %edx
	movq	-104(%rbp), %rax
	movw	%dx, (%rax)
	movzwl	-62(%rbp), %edx
	movzwl	-56(%rbp), %eax
	addl	%edx, %eax
	movw	%ax, -64(%rbp)
	movzwl	-64(%rbp), %eax
	movw	%ax, -16(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_Z9mod_digitRt
	movw	%ax, -14(%rbp)
	movzwl	-14(%rbp), %eax
	movw	%ax, -12(%rbp)
	movq	-104(%rbp), %rax
	movzwl	(%rax), %eax
	movzwl	-64(%rbp), %edx
	sall	$4, %edx
	addl	%eax, %edx
	movq	-104(%rbp), %rax
	movw	%dx, (%rax)
	movzwl	-60(%rbp), %edx
	movzwl	-54(%rbp), %eax
	addl	%eax, %edx
	movzwl	-48(%rbp), %eax
	addl	%eax, %edx
	movzwl	-12(%rbp), %eax
	addl	%edx, %eax
	movw	%ax, -64(%rbp)
	movzwl	-64(%rbp), %eax
	movw	%ax, -16(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_Z9mod_digitRt
	movw	%ax, -14(%rbp)
	movzwl	-14(%rbp), %eax
	movw	%ax, -12(%rbp)
	movq	-104(%rbp), %rax
	movzwl	(%rax), %eax
	movzwl	-64(%rbp), %edx
	sall	$8, %edx
	addl	%eax, %edx
	movq	-104(%rbp), %rax
	movw	%dx, (%rax)
	movzwl	-58(%rbp), %edx
	movzwl	-52(%rbp), %eax
	addl	%eax, %edx
	movzwl	-46(%rbp), %eax
	addl	%eax, %edx
	movzwl	-40(%rbp), %eax
	addl	%eax, %edx
	movzwl	-12(%rbp), %eax
	addl	%edx, %eax
	movw	%ax, -64(%rbp)
	movzwl	-64(%rbp), %eax
	movw	%ax, -16(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_Z9mod_digitRt
	movw	%ax, -14(%rbp)
	movzwl	-14(%rbp), %eax
	movw	%ax, -12(%rbp)
	movq	-104(%rbp), %rax
	movzwl	(%rax), %eax
	movzwl	-64(%rbp), %edx
	sall	$12, %edx
	addl	%eax, %edx
	movq	-104(%rbp), %rax
	movw	%dx, (%rax)
	movzwl	-50(%rbp), %edx
	movzwl	-44(%rbp), %eax
	addl	%eax, %edx
	movzwl	-38(%rbp), %eax
	addl	%eax, %edx
	movzwl	-12(%rbp), %eax
	addl	%edx, %eax
	movw	%ax, -66(%rbp)
	movzwl	-66(%rbp), %eax
	movw	%ax, -16(%rbp)
	leaq	-66(%rbp), %rax
	movq	%rax, %rdi
	call	_Z9mod_digitRt
	movw	%ax, -14(%rbp)
	movzwl	-14(%rbp), %eax
	movw	%ax, -12(%rbp)
	movzwl	-42(%rbp), %edx
	movzwl	-36(%rbp), %eax
	addl	%eax, %edx
	movzwl	-12(%rbp), %eax
	addl	%edx, %eax
	movw	%ax, -50(%rbp)
	movzwl	-50(%rbp), %eax
	movw	%ax, -16(%rbp)
	leaq	-50(%rbp), %rax
	movq	%rax, %rdi
	call	_Z9mod_digitRt
	movw	%ax, -14(%rbp)
	movzwl	-14(%rbp), %eax
	movw	%ax, -12(%rbp)
	movzwl	-50(%rbp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movzwl	-66(%rbp), %eax
	addl	%edx, %eax
	movw	%ax, -66(%rbp)
	movzwl	-34(%rbp), %edx
	movzwl	-12(%rbp), %eax
	addl	%edx, %eax
	movw	%ax, -50(%rbp)
	movzwl	-50(%rbp), %eax
	movw	%ax, -16(%rbp)
	leaq	-50(%rbp), %rax
	movq	%rax, %rdi
	call	_Z9mod_digitRt
	movw	%ax, -14(%rbp)
	movzwl	-16(%rbp), %eax
	sarl	$4, %eax
	movl	%eax, %edx
	movzwl	-14(%rbp), %eax
	addl	%edx, %eax
	movw	%ax, -12(%rbp)
	movzwl	-50(%rbp), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movzwl	-66(%rbp), %eax
	addl	%edx, %eax
	movw	%ax, -66(%rbp)
	movzwl	-10(%rbp), %edx
	movzwl	-12(%rbp), %eax
	addl	%edx, %eax
	movw	%ax, -50(%rbp)
	movzwl	-50(%rbp), %eax
	movw	%ax, -16(%rbp)
	leaq	-50(%rbp), %rax
	movq	%rax, %rdi
	call	_Z9mod_digitRt
	movw	%ax, -14(%rbp)
	movzwl	-50(%rbp), %eax
	sall	$12, %eax
	movl	%eax, %edx
	movzwl	-66(%rbp), %eax
	addl	%edx, %eax
	movw	%ax, -66(%rbp)
	movzwl	-66(%rbp), %eax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L44
	call	__stack_chk_fail
.L44:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7186:
	.size	_Z17encoded_naive_multttRt, .-_Z17encoded_naive_multttRt
	.globl	_Z11digit_checkRt
	.type	_Z11digit_checkRt, @function
_Z11digit_checkRt:
.LFB7187:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzwl	(%rax), %eax
	cmpw	$9, %ax
	ja	.L46
	movl	$0, %eax
	jmp	.L47
.L46:
	movq	-8(%rbp), %rax
	movzwl	(%rax), %eax
	leal	-10(%rax), %edx
	movq	-8(%rbp), %rax
	movw	%dx, (%rax)
	movl	$1, %eax
.L47:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7187:
	.size	_Z11digit_checkRt, .-_Z11digit_checkRt
	.globl	_Z8cell_addttbRt
	.type	_Z8cell_addttbRt, @function
_Z8cell_addttbRt:
.LFB7188:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edx, %eax
	movq	%rcx, -56(%rbp)
	movw	%di, -36(%rbp)
	movw	%si, -40(%rbp)
	movb	%al, -44(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movw	$0, (%rax)
	movzwl	-36(%rbp), %eax
	sarl	$12, %eax
	movw	%ax, -26(%rbp)
	movzwl	-36(%rbp), %eax
	andl	$3840, %eax
	sarl	$8, %eax
	movw	%ax, -24(%rbp)
	movzwl	-36(%rbp), %eax
	andl	$240, %eax
	sarl	$4, %eax
	movw	%ax, -22(%rbp)
	movzwl	-36(%rbp), %eax
	andl	$15, %eax
	movw	%ax, -20(%rbp)
	movzwl	-40(%rbp), %eax
	sarl	$12, %eax
	movw	%ax, -18(%rbp)
	movzwl	-40(%rbp), %eax
	andl	$3840, %eax
	sarl	$8, %eax
	movw	%ax, -16(%rbp)
	movzwl	-40(%rbp), %eax
	andl	$240, %eax
	sarl	$4, %eax
	movw	%ax, -14(%rbp)
	movzwl	-40(%rbp), %eax
	andl	$15, %eax
	movw	%ax, -12(%rbp)
	cmpb	$0, -44(%rbp)
	je	.L49
	movl	$1, %edx
	jmp	.L50
.L49:
	movl	$0, %edx
.L50:
	movzwl	-12(%rbp), %eax
	addl	%eax, %edx
	movzwl	-20(%rbp), %eax
	addl	%edx, %eax
	movw	%ax, -20(%rbp)
	leaq	-20(%rbp), %rax
	movq	%rax, %rdi
	call	_Z11digit_checkRt
	movw	%ax, -10(%rbp)
	movzwl	-14(%rbp), %edx
	movzwl	-10(%rbp), %eax
	addl	%eax, %edx
	movzwl	-22(%rbp), %eax
	addl	%edx, %eax
	movw	%ax, -22(%rbp)
	leaq	-22(%rbp), %rax
	movq	%rax, %rdi
	call	_Z11digit_checkRt
	movw	%ax, -10(%rbp)
	movzwl	-16(%rbp), %edx
	movzwl	-10(%rbp), %eax
	addl	%eax, %edx
	movzwl	-24(%rbp), %eax
	addl	%edx, %eax
	movw	%ax, -24(%rbp)
	leaq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_Z11digit_checkRt
	movw	%ax, -10(%rbp)
	movzwl	-18(%rbp), %edx
	movzwl	-10(%rbp), %eax
	addl	%eax, %edx
	movzwl	-26(%rbp), %eax
	addl	%edx, %eax
	movw	%ax, -26(%rbp)
	leaq	-26(%rbp), %rax
	movq	%rax, %rdi
	call	_Z11digit_checkRt
	movw	%ax, -10(%rbp)
	movzwl	-22(%rbp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movzwl	-20(%rbp), %eax
	addl	%eax, %edx
	movzwl	-24(%rbp), %eax
	sall	$8, %eax
	addl	%eax, %edx
	movzwl	-26(%rbp), %eax
	sall	$12, %eax
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movw	%dx, (%rax)
	cmpw	$0, -10(%rbp)
	setne	%al
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L52
	call	__stack_chk_fail
.L52:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7188:
	.size	_Z8cell_addttbRt, .-_Z8cell_addttbRt
	.globl	_Z14negative_checkRttb
	.type	_Z14negative_checkRttb, @function
_Z14negative_checkRttb:
.LFB7189:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, %ecx
	movl	%edx, %eax
	movw	%cx, -12(%rbp)
	movb	%al, -16(%rbp)
	cmpb	$0, -16(%rbp)
	je	.L54
	movl	$1, %eax
	jmp	.L55
.L54:
	movl	$0, %eax
.L55:
	addw	%ax, -12(%rbp)
	movq	-8(%rbp), %rax
	movzwl	(%rax), %eax
	cmpw	-12(%rbp), %ax
	jb	.L56
	movq	-8(%rbp), %rax
	movzwl	(%rax), %eax
	subw	-12(%rbp), %ax
	movl	%eax, %edx
	movq	-8(%rbp), %rax
	movw	%dx, (%rax)
	movl	$0, %eax
	jmp	.L57
.L56:
	movq	-8(%rbp), %rax
	movzwl	(%rax), %eax
	subw	-12(%rbp), %ax
	leal	10(%rax), %edx
	movq	-8(%rbp), %rax
	movw	%dx, (%rax)
	movl	$1, %eax
.L57:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7189:
	.size	_Z14negative_checkRttb, .-_Z14negative_checkRttb
	.globl	_Z14cell_substractttbRt
	.type	_Z14cell_substractttbRt, @function
_Z14cell_substractttbRt:
.LFB7190:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	%edx, %eax
	movq	%rcx, -56(%rbp)
	movw	%di, -36(%rbp)
	movw	%si, -40(%rbp)
	movb	%al, -44(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movzwl	-36(%rbp), %eax
	sarl	$12, %eax
	movw	%ax, -24(%rbp)
	movzwl	-36(%rbp), %eax
	andl	$3840, %eax
	sarl	$8, %eax
	movw	%ax, -22(%rbp)
	movzwl	-36(%rbp), %eax
	andl	$240, %eax
	sarl	$4, %eax
	movw	%ax, -20(%rbp)
	movzwl	-36(%rbp), %eax
	andl	$15, %eax
	movw	%ax, -18(%rbp)
	movzwl	-40(%rbp), %eax
	sarl	$12, %eax
	movw	%ax, -16(%rbp)
	movzwl	-40(%rbp), %eax
	andl	$3840, %eax
	sarl	$8, %eax
	movw	%ax, -14(%rbp)
	movzwl	-40(%rbp), %eax
	andl	$240, %eax
	sarl	$4, %eax
	movw	%ax, -12(%rbp)
	movzwl	-40(%rbp), %eax
	andl	$15, %eax
	movw	%ax, -10(%rbp)
	movzbl	-44(%rbp), %edx
	movzwl	-10(%rbp), %ecx
	leaq	-18(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_Z14negative_checkRttb
	movb	%al, -25(%rbp)
	movzbl	-25(%rbp), %edx
	movzwl	-12(%rbp), %ecx
	leaq	-20(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_Z14negative_checkRttb
	movb	%al, -25(%rbp)
	movzbl	-25(%rbp), %edx
	movzwl	-14(%rbp), %ecx
	leaq	-22(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_Z14negative_checkRttb
	movb	%al, -25(%rbp)
	movzbl	-25(%rbp), %edx
	movzwl	-16(%rbp), %ecx
	leaq	-24(%rbp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_Z14negative_checkRttb
	movb	%al, -25(%rbp)
	movzwl	-20(%rbp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movzwl	-18(%rbp), %eax
	addl	%eax, %edx
	movzwl	-22(%rbp), %eax
	sall	$8, %eax
	addl	%eax, %edx
	movzwl	-24(%rbp), %eax
	sall	$12, %eax
	addl	%eax, %edx
	movq	-56(%rbp), %rax
	movw	%dx, (%rax)
	movzbl	-25(%rbp), %eax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L60
	call	__stack_chk_fail
.L60:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7190:
	.size	_Z14cell_substractttbRt, .-_Z14cell_substractttbRt
	.section	.rodata
.LC5:
	.string	"00"
.LC6:
	.string	"000"
.LC7:
	.string	"first debug: "
	.text
	.globl	_Z13inputToVectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.type	_Z13inputToVectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, @function
_Z13inputToVectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:
.LFB7191:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA7191
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$688, %rsp
	.cfi_offset 14, -24
	.cfi_offset 13, -32
	.cfi_offset 12, -40
	.cfi_offset 3, -48
	movq	%rdi, -712(%rbp)
	movq	%rsi, -720(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	movq	-720(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv
	andl	$3, %eax
	movl	%eax, -696(%rbp)
	leaq	-688(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	movl	-696(%rbp), %eax
	cmpl	$1, %eax
	je	.L63
	cmpl	$1, %eax
	jg	.L64
	testl	%eax, %eax
	je	.L65
	jmp	.L68
.L64:
	cmpl	$2, %eax
	je	.L66
	cmpl	$3, %eax
	je	.L67
	jmp	.L68
.L65:
	movq	-720(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
.LEHB5:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	movzbl	(%rax), %eax
	movsbl	%al, %ebx
	movq	-720(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	movzbl	(%rax), %eax
	movsbl	%al, %r12d
	movq	-720(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	movzbl	(%rax), %eax
	movsbl	%al, %r13d
	movq	-720(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
.LEHE5:
	movzbl	(%rax), %eax
	movsbl	%al, %r14d
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	leaq	-656(%rbp), %rax
	leaq	-80(%rbp), %rcx
	movl	%r14d, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB6:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_
.LEHE6:
	leaq	-624(%rbp), %rax
	leaq	-656(%rbp), %rcx
	movl	%r13d, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB7:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_
.LEHE7:
	leaq	-592(%rbp), %rax
	leaq	-624(%rbp), %rcx
	movl	%r12d, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB8:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_
.LEHE8:
	leaq	-560(%rbp), %rax
	leaq	-592(%rbp), %rcx
	movl	%ebx, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB9:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_
.LEHE9:
	leaq	-560(%rbp), %rdx
	leaq	-688(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB10:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_
.LEHE10:
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	-624(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	movl	$4, -700(%rbp)
	jmp	.L68
.L63:
	movq	-720(%rbp), %rax
	movl	$2, %esi
	movq	%rax, %rdi
.LEHB11:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	movzbl	(%rax), %eax
	movsbl	%al, %ebx
	movq	-720(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	movzbl	(%rax), %eax
	movsbl	%al, %r12d
	movq	-720(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
.LEHE11:
	movzbl	(%rax), %eax
	movsbl	%al, %r13d
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	leaq	-528(%rbp), %rax
	leaq	-80(%rbp), %rcx
	movl	$48, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB12:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_
.LEHE12:
	leaq	-496(%rbp), %rax
	leaq	-528(%rbp), %rcx
	movl	%r13d, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB13:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_
.LEHE13:
	leaq	-464(%rbp), %rax
	leaq	-496(%rbp), %rcx
	movl	%r12d, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB14:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_
.LEHE14:
	leaq	-432(%rbp), %rax
	leaq	-464(%rbp), %rcx
	movl	%ebx, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB15:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_
.LEHE15:
	leaq	-432(%rbp), %rdx
	leaq	-688(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB16:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_
.LEHE16:
	leaq	-432(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	-464(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	-496(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	movl	$3, -700(%rbp)
	jmp	.L68
.L66:
	movq	-720(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
.LEHB17:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	movzbl	(%rax), %eax
	movsbl	%al, %ebx
	movq	-720(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
.LEHE17:
	movzbl	(%rax), %eax
	movsbl	%al, %r12d
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	leaq	-400(%rbp), %rax
	leaq	-80(%rbp), %rcx
	movl	$.LC5, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB18:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_
.LEHE18:
	leaq	-368(%rbp), %rax
	leaq	-400(%rbp), %rcx
	movl	%r12d, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB19:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_
.LEHE19:
	leaq	-336(%rbp), %rax
	leaq	-368(%rbp), %rcx
	movl	%ebx, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB20:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_
.LEHE20:
	leaq	-336(%rbp), %rdx
	leaq	-688(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB21:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_
.LEHE21:
	leaq	-336(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	-368(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	-400(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	movl	$2, -700(%rbp)
	jmp	.L68
.L67:
	movq	-720(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
.LEHB22:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
.LEHE22:
	movzbl	(%rax), %eax
	movsbl	%al, %ebx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	leaq	-304(%rbp), %rax
	leaq	-80(%rbp), %rcx
	movl	$.LC6, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB23:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_
.LEHE23:
	leaq	-272(%rbp), %rax
	leaq	-304(%rbp), %rcx
	movl	%ebx, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB24:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_
.LEHE24:
	leaq	-272(%rbp), %rdx
	leaq	-688(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB25:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_
.LEHE25:
	leaq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	movl	$1, -700(%rbp)
	nop
.L68:
	movl	$.LC7, %esi
	movl	$_ZSt4cout, %edi
.LEHB26:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdx
	leaq	-688(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE
	movl	$10, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
.LEHE26:
	movq	-720(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv
	shrq	$2, %rax
	movl	%eax, -692(%rbp)
	movq	-712(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorItSaItEEC1Ev
	leaq	-688(%rbp), %rdx
	leaq	-240(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB27:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_
.LEHE27:
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
.LEHB28:
	call	_Z3numNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	movw	%ax, -702(%rbp)
	leaq	-702(%rbp), %rdx
	movq	-712(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorItSaItEE9push_backEOt
.LEHE28:
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
.L70:
	movl	-700(%rbp), %eax
	cmpl	-692(%rbp), %eax
	jge	.L127
	movl	-700(%rbp), %eax
	addl	$3, %eax
	movslq	%eax, %rdx
	movq	-720(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB29:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	movzbl	(%rax), %eax
	movsbl	%al, %ebx
	movl	-700(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdx
	movq	-720(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	movzbl	(%rax), %eax
	movsbl	%al, %r12d
	movl	-700(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdx
	movq	-720(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
	movzbl	(%rax), %eax
	movsbl	%al, %r13d
	movl	-700(%rbp), %eax
	movslq	%eax, %rdx
	movq	-720(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm
.LEHE29:
	movzbl	(%rax), %eax
	movsbl	%al, %r14d
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	leaq	-208(%rbp), %rax
	leaq	-80(%rbp), %rcx
	movl	%r14d, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB30:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_
.LEHE30:
	leaq	-176(%rbp), %rax
	leaq	-208(%rbp), %rcx
	movl	%r13d, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB31:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_
.LEHE31:
	leaq	-144(%rbp), %rax
	leaq	-176(%rbp), %rcx
	movl	%r12d, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB32:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_
.LEHE32:
	leaq	-112(%rbp), %rax
	leaq	-144(%rbp), %rcx
	movl	%ebx, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB33:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_
.LEHE33:
	leaq	-112(%rbp), %rdx
	leaq	-688(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB34:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_
.LEHE34:
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	-688(%rbp), %rdx
	leaq	-80(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB35:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_
.LEHE35:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
.LEHB36:
	call	_Z3numNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	movw	%ax, -702(%rbp)
	leaq	-702(%rbp), %rdx
	movq	-712(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorItSaItEE9push_backEOt
.LEHE36:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	addl	$4, -700(%rbp)
	jmp	.L70
.L127:
	nop
	leaq	-688(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	nop
	movq	-712(%rbp), %rax
	movq	-40(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L98
	jmp	.L126
.L104:
	movq	%rax, %rbx
	leaq	-560(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L73
.L103:
	movq	%rax, %rbx
.L73:
	leaq	-592(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L74
.L102:
	movq	%rax, %rbx
.L74:
	leaq	-624(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L75
.L101:
	movq	%rax, %rbx
.L75:
	leaq	-656(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L76
.L100:
	movq	%rax, %rbx
.L76:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L77
.L109:
	movq	%rax, %rbx
	leaq	-432(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L79
.L108:
	movq	%rax, %rbx
.L79:
	leaq	-464(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L80
.L107:
	movq	%rax, %rbx
.L80:
	leaq	-496(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L81
.L106:
	movq	%rax, %rbx
.L81:
	leaq	-528(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L82
.L105:
	movq	%rax, %rbx
.L82:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L77
.L113:
	movq	%rax, %rbx
	leaq	-336(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L84
.L112:
	movq	%rax, %rbx
.L84:
	leaq	-368(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L85
.L111:
	movq	%rax, %rbx
.L85:
	leaq	-400(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L86
.L110:
	movq	%rax, %rbx
.L86:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L77
.L116:
	movq	%rax, %rbx
	leaq	-272(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L88
.L115:
	movq	%rax, %rbx
.L88:
	leaq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L89
.L114:
	movq	%rax, %rbx
.L89:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L77
.L118:
	movq	%rax, %rbx
	leaq	-240(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L91
.L123:
	movq	%rax, %rbx
	leaq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L93
.L122:
	movq	%rax, %rbx
.L93:
	leaq	-144(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L94
.L121:
	movq	%rax, %rbx
.L94:
	leaq	-176(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L95
.L120:
	movq	%rax, %rbx
.L95:
	leaq	-208(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L96
.L119:
	movq	%rax, %rbx
.L96:
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L91
.L124:
	movq	%rax, %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L91
.L117:
	movq	%rax, %rbx
.L91:
	movq	-712(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorItSaItEED1Ev
	jmp	.L77
.L99:
	movq	%rax, %rbx
.L77:
	leaq	-688(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB37:
	call	_Unwind_Resume
.LEHE37:
.L126:
	call	__stack_chk_fail
.L98:
	addq	$688, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7191:
	.section	.gcc_except_table
.LLSDA7191:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7191-.LLSDACSB7191
.LLSDACSB7191:
	.uleb128 .LEHB5-.LFB7191
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L99-.LFB7191
	.uleb128 0
	.uleb128 .LEHB6-.LFB7191
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L100-.LFB7191
	.uleb128 0
	.uleb128 .LEHB7-.LFB7191
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L101-.LFB7191
	.uleb128 0
	.uleb128 .LEHB8-.LFB7191
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L102-.LFB7191
	.uleb128 0
	.uleb128 .LEHB9-.LFB7191
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L103-.LFB7191
	.uleb128 0
	.uleb128 .LEHB10-.LFB7191
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L104-.LFB7191
	.uleb128 0
	.uleb128 .LEHB11-.LFB7191
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L99-.LFB7191
	.uleb128 0
	.uleb128 .LEHB12-.LFB7191
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L105-.LFB7191
	.uleb128 0
	.uleb128 .LEHB13-.LFB7191
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L106-.LFB7191
	.uleb128 0
	.uleb128 .LEHB14-.LFB7191
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L107-.LFB7191
	.uleb128 0
	.uleb128 .LEHB15-.LFB7191
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L108-.LFB7191
	.uleb128 0
	.uleb128 .LEHB16-.LFB7191
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L109-.LFB7191
	.uleb128 0
	.uleb128 .LEHB17-.LFB7191
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L99-.LFB7191
	.uleb128 0
	.uleb128 .LEHB18-.LFB7191
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L110-.LFB7191
	.uleb128 0
	.uleb128 .LEHB19-.LFB7191
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L111-.LFB7191
	.uleb128 0
	.uleb128 .LEHB20-.LFB7191
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L112-.LFB7191
	.uleb128 0
	.uleb128 .LEHB21-.LFB7191
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L113-.LFB7191
	.uleb128 0
	.uleb128 .LEHB22-.LFB7191
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L99-.LFB7191
	.uleb128 0
	.uleb128 .LEHB23-.LFB7191
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L114-.LFB7191
	.uleb128 0
	.uleb128 .LEHB24-.LFB7191
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L115-.LFB7191
	.uleb128 0
	.uleb128 .LEHB25-.LFB7191
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L116-.LFB7191
	.uleb128 0
	.uleb128 .LEHB26-.LFB7191
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L99-.LFB7191
	.uleb128 0
	.uleb128 .LEHB27-.LFB7191
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L117-.LFB7191
	.uleb128 0
	.uleb128 .LEHB28-.LFB7191
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L118-.LFB7191
	.uleb128 0
	.uleb128 .LEHB29-.LFB7191
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L117-.LFB7191
	.uleb128 0
	.uleb128 .LEHB30-.LFB7191
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L119-.LFB7191
	.uleb128 0
	.uleb128 .LEHB31-.LFB7191
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L120-.LFB7191
	.uleb128 0
	.uleb128 .LEHB32-.LFB7191
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L121-.LFB7191
	.uleb128 0
	.uleb128 .LEHB33-.LFB7191
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L122-.LFB7191
	.uleb128 0
	.uleb128 .LEHB34-.LFB7191
	.uleb128 .LEHE34-.LEHB34
	.uleb128 .L123-.LFB7191
	.uleb128 0
	.uleb128 .LEHB35-.LFB7191
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L117-.LFB7191
	.uleb128 0
	.uleb128 .LEHB36-.LFB7191
	.uleb128 .LEHE36-.LEHB36
	.uleb128 .L124-.LFB7191
	.uleb128 0
	.uleb128 .LEHB37-.LFB7191
	.uleb128 .LEHE37-.LEHB37
	.uleb128 0
	.uleb128 0
.LLSDACSE7191:
	.text
	.size	_Z13inputToVectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, .-_Z13inputToVectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
	.globl	_Z5mul_1St6vectorItSaItEES1_
	.type	_Z5mul_1St6vectorItSaItEES1_, @function
_Z5mul_1St6vectorItSaItEES1_:
.LFB7192:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA7192
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorItSaItEEC1Ev
	movq	$0, -40(%rbp)
.L132:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorItSaItEE4sizeEv
	cmpq	-40(%rbp), %rax
	seta	%al
	testb	%al, %al
	je	.L137
	movw	$0, -42(%rbp)
	movq	$0, -32(%rbp)
.L131:
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorItSaItEE4sizeEv
	cmpq	-32(%rbp), %rax
	seta	%al
	testb	%al, %al
	je	.L130
	movzwl	-42(%rbp), %r12d
	movq	-32(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorItSaItEEixEm
	movzwl	(%rax), %eax
	movzwl	%ax, %ebx
	movq	-40(%rbp), %rdx
	movq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorItSaItEEixEm
	movzwl	(%rax), %eax
	movzwl	%ax, %eax
	leaq	-44(%rbp), %rdx
	movq	%rdx, %rcx
	movl	%r12d, %edx
	movl	%ebx, %esi
	movl	%eax, %edi
	call	_Z17encoded_naive_multttRt
	movw	%ax, -42(%rbp)
	leaq	-44(%rbp), %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB38:
	call	_ZNSt6vectorItSaItEE9push_backERKt
.LEHE38:
	addq	$1, -32(%rbp)
	jmp	.L131
.L130:
	addq	$1, -40(%rbp)
	jmp	.L132
.L136:
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorItSaItEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB39:
	call	_Unwind_Resume
.LEHE39:
.L137:
	nop
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L135
	call	__stack_chk_fail
.L135:
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7192:
	.section	.gcc_except_table
.LLSDA7192:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7192-.LLSDACSB7192
.LLSDACSB7192:
	.uleb128 .LEHB38-.LFB7192
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L136-.LFB7192
	.uleb128 0
	.uleb128 .LEHB39-.LFB7192
	.uleb128 .LEHE39-.LEHB39
	.uleb128 0
	.uleb128 0
.LLSDACSE7192:
	.text
	.size	_Z5mul_1St6vectorItSaItEES1_, .-_Z5mul_1St6vectorItSaItEES1_
	.section	.rodata
.LC8:
	.string	""
	.text
	.globl	_Z13vector_decodeB5cxx11St6vectorItSaItEE
	.type	_Z13vector_decodeB5cxx11St6vectorItSaItEE, @function
_Z13vector_decodeB5cxx11St6vectorItSaItEE:
.LFB7193:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA7193
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -88(%rbp)
	movq	%rsi, -96(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-73(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-73(%rbp), %rdx
	movq	-88(%rbp), %rax
	movl	$.LC8, %esi
	movq	%rax, %rdi
.LEHB40:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
.LEHE40:
	leaq	-73(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	movq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorItSaItEE4sizeEv
	subq	$1, %rax
	movq	%rax, -72(%rbp)
.L140:
	cmpq	$0, -72(%rbp)
	js	.L149
	movq	-72(%rbp), %rdx
	movq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorItSaItEEixEm
	movzwl	(%rax), %eax
	movzwl	%ax, %edx
	leaq	-64(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
.LEHB41:
	call	_Z12display_cellB5cxx11t
.LEHE41:
	leaq	-64(%rbp), %rdx
	movq	-88(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB42:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_
.LEHE42:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	subq	$1, -72(%rbp)
	jmp	.L140
.L146:
	movq	%rax, %rbx
	leaq	-73(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB43:
	call	_Unwind_Resume
.L148:
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L144
.L147:
	movq	%rax, %rbx
.L144:
	movq	-88(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume
.LEHE43:
.L149:
	nop
	movq	-88(%rbp), %rax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L145
	call	__stack_chk_fail
.L145:
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7193:
	.section	.gcc_except_table
.LLSDA7193:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7193-.LLSDACSB7193
.LLSDACSB7193:
	.uleb128 .LEHB40-.LFB7193
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L146-.LFB7193
	.uleb128 0
	.uleb128 .LEHB41-.LFB7193
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L147-.LFB7193
	.uleb128 0
	.uleb128 .LEHB42-.LFB7193
	.uleb128 .LEHE42-.LEHB42
	.uleb128 .L148-.LFB7193
	.uleb128 0
	.uleb128 .LEHB43-.LFB7193
	.uleb128 .LEHE43-.LEHB43
	.uleb128 0
	.uleb128 0
.LLSDACSE7193:
	.text
	.size	_Z13vector_decodeB5cxx11St6vectorItSaItEE, .-_Z13vector_decodeB5cxx11St6vectorItSaItEE
	.globl	_Z10getCarry_2j
	.type	_Z10getCarry_2j, @function
_Z10getCarry_2j:
.LFB7194:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -20(%rbp)
	movl	-20(%rbp), %eax
	shrl	$16, %eax
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	movw	%ax, -6(%rbp)
	movzwl	-6(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7194:
	.size	_Z10getCarry_2j, .-_Z10getCarry_2j
	.section	.rodata
.LC9:
	.string	"default"
	.text
	.globl	_Z8generateB5cxx11i
	.type	_Z8generateB5cxx11i, @function
_Z8generateB5cxx11i:
.LFB7195:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA7195
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$10136, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -10136(%rbp)
	movl	%esi, -10140(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-10112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev
	leaq	-10112(%rbp), %rdx
	leaq	-5024(%rbp), %rax
	movl	$.LC9, %esi
	movq	%rax, %rdi
.LEHB44:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
.LEHE44:
	leaq	-5024(%rbp), %rdx
	leaq	-10032(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB45:
	call	_ZNSt13random_deviceC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE45:
	leaq	-5024(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	-10112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	leaq	-10032(%rbp), %rax
	movq	%rax, %rdi
.LEHB46:
	call	_ZNSt13random_deviceclEv
	movl	%eax, %edx
	leaq	-5024(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC1Em
	leaq	-10112(%rbp), %rax
	movl	$9, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt24uniform_int_distributionIiEC1Eii
	leaq	-5024(%rbp), %rdx
	leaq	-10112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_
.LEHE46:
	movl	%eax, -10120(%rbp)
	movq	-10136(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	movl	-10120(%rbp), %eax
	addl	$48, %eax
	movb	%al, -10121(%rbp)
	movsbl	-10121(%rbp), %ebx
	leaq	-10096(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	leaq	-10064(%rbp), %rax
	leaq	-10096(%rbp), %rcx
	movl	%ebx, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB47:
	call	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_
.LEHE47:
	leaq	-10064(%rbp), %rdx
	movq	-10136(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB48:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_
.LEHE48:
	leaq	-10064(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	-10096(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	movl	$0, -10116(%rbp)
.L154:
	movl	-10116(%rbp), %eax
	cmpl	-10140(%rbp), %eax
	jge	.L171
	leaq	-5024(%rbp), %rdx
	leaq	-10112(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB49:
	call	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_
	movl	%eax, -10120(%rbp)
	movl	-10120(%rbp), %eax
	addl	$48, %eax
	movb	%al, -10121(%rbp)
	movsbl	-10121(%rbp), %edx
	movq	-10136(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEc
.LEHE49:
	addl	$1, -10116(%rbp)
	jmp	.L154
.L171:
	nop
	leaq	-10032(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt13random_deviceD1Ev
	nop
	movq	-10136(%rbp), %rax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L162
	jmp	.L170
.L164:
	movq	%rax, %rbx
	leaq	-5024(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L157
.L163:
	movq	%rax, %rbx
.L157:
	leaq	-10112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB50:
	call	_Unwind_Resume
.L167:
	movq	%rax, %rbx
	leaq	-10064(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L159
.L166:
	movq	%rax, %rbx
.L159:
	leaq	-10096(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L160
.L168:
	movq	%rax, %rbx
.L160:
	movq	-10136(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L161
.L165:
	movq	%rax, %rbx
.L161:
	leaq	-10032(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt13random_deviceD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume
.LEHE50:
.L170:
	call	__stack_chk_fail
.L162:
	addq	$10136, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7195:
	.section	.gcc_except_table
.LLSDA7195:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7195-.LLSDACSB7195
.LLSDACSB7195:
	.uleb128 .LEHB44-.LFB7195
	.uleb128 .LEHE44-.LEHB44
	.uleb128 .L163-.LFB7195
	.uleb128 0
	.uleb128 .LEHB45-.LFB7195
	.uleb128 .LEHE45-.LEHB45
	.uleb128 .L164-.LFB7195
	.uleb128 0
	.uleb128 .LEHB46-.LFB7195
	.uleb128 .LEHE46-.LEHB46
	.uleb128 .L165-.LFB7195
	.uleb128 0
	.uleb128 .LEHB47-.LFB7195
	.uleb128 .LEHE47-.LEHB47
	.uleb128 .L166-.LFB7195
	.uleb128 0
	.uleb128 .LEHB48-.LFB7195
	.uleb128 .LEHE48-.LEHB48
	.uleb128 .L167-.LFB7195
	.uleb128 0
	.uleb128 .LEHB49-.LFB7195
	.uleb128 .LEHE49-.LEHB49
	.uleb128 .L168-.LFB7195
	.uleb128 0
	.uleb128 .LEHB50-.LFB7195
	.uleb128 .LEHE50-.LEHB50
	.uleb128 0
	.uleb128 0
.LLSDACSE7195:
	.text
	.size	_Z8generateB5cxx11i, .-_Z8generateB5cxx11i
	.section	.rodata
.LC10:
	.string	"Usage: "
.LC11:
	.string	" <N>\n"
	.text
	.globl	_Z5usagePKc
	.type	_Z5usagePKc, @function
_Z5usagePKc:
.LFB7196:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$.LC10, %esi
	movl	$_ZSt4cerr, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$.LC11, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$1, %edi
	call	exit
	.cfi_endproc
.LFE7196:
	.size	_Z5usagePKc, .-_Z5usagePKc
	.section	.rodata
.LC12:
	.string	"N out of bounds [0.."
.LC13:
	.string	"]\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB7197:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA7197
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$472, %rsp
	.cfi_offset 3, -24
	movl	%edi, -452(%rbp)
	movq	%rsi, -464(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	$15, -432(%rbp)
	cmpl	$2, -452(%rbp)
	jne	.L174
	movq	-464(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoi
	cltq
	movq	%rax, -432(%rbp)
	jmp	.L175
.L174:
	movq	-464(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
.LEHB51:
	call	_Z5usagePKc
.L175:
	cmpq	$120000, -432(%rbp)
	jbe	.L176
	movl	$.LC12, %esi
	movl	$_ZSt4cerr, %edi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$120000, %esi
	movq	%rax, %rdi
	call	_ZNSolsEi
	movl	$.LC13, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movq	-464(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_Z5usagePKc
.LEHE51:
.L176:
	movq	$3, -424(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
	movl	$0, -444(%rbp)
.L180:
	cmpl	$119999, -444(%rbp)
	jg	.L177
	leaq	-160(%rbp), %rax
	movl	-444(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
.LEHB52:
	call	_Z8generateB5cxx11i
.LEHE52:
	leaq	-160(%rbp), %rdx
	leaq	-224(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB53:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_
.LEHE53:
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	-128(%rbp), %rax
	movl	-444(%rbp), %edx
	movl	%edx, %esi
	movq	%rax, %rdi
.LEHB54:
	call	_Z8generateB5cxx11i
.LEHE54:
	leaq	-128(%rbp), %rdx
	leaq	-192(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB55:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_
.LEHE55:
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	call	clock
	movq	%rax, -416(%rbp)
	movq	$0, -440(%rbp)
.L179:
	movq	-440(%rbp), %rax
	cmpq	$2, %rax
	setbe	%al
	testb	%al, %al
	je	.L178
	leaq	-224(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB56:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_
.LEHE56:
	leaq	-384(%rbp), %rax
	leaq	-96(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB57:
	call	_Z13inputToVectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE57:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	-192(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB58:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_
.LEHE58:
	leaq	-352(%rbp), %rax
	leaq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB59:
	call	_Z13inputToVectorNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE
.LEHE59:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	-352(%rbp), %rdx
	leaq	-256(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB60:
	call	_ZNSt6vectorItSaItEEC1ERKS1_
.LEHE60:
	leaq	-384(%rbp), %rdx
	leaq	-288(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB61:
	call	_ZNSt6vectorItSaItEEC1ERKS1_
.LEHE61:
	leaq	-320(%rbp), %rax
	leaq	-256(%rbp), %rdx
	leaq	-288(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB62:
	call	_Z5mul_1St6vectorItSaItEES1_
.LEHE62:
	leaq	-288(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorItSaItEED1Ev
	leaq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorItSaItEED1Ev
	leaq	-320(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorItSaItEED1Ev
	leaq	-352(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorItSaItEED1Ev
	leaq	-384(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorItSaItEED1Ev
	movq	-440(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -440(%rbp)
	jmp	.L179
.L178:
	call	clock
	movq	%rax, -408(%rbp)
	pxor	%xmm0, %xmm0
	cvtsi2sd	-444(%rbp), %xmm0
	movsd	.LC14(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -400(%rbp)
	movq	-408(%rbp), %rax
	subq	-416(%rbp), %rax
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC15(%rip), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	.LC16(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -392(%rbp)
	movl	$4, %esi
	movl	$_ZSt4cout+8, %edi
	call	_ZNSt8ios_base9precisionEl
	movsd	-392(%rbp), %xmm0
	divsd	-400(%rbp), %xmm0
	movsd	%xmm0, -472(%rbp)
	movl	-444(%rbp), %eax
	movl	%eax, %esi
	movl	$_ZSt4cout, %edi
.LEHB63:
	call	_ZNSolsEi
	movl	$9, %esi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c
	movsd	-472(%rbp), %xmm0
	movq	%rax, %rdi
	call	_ZNSolsEd
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, %esi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E
.LEHE63:
	addl	$1000, -444(%rbp)
	jmp	.L180
.L177:
	movl	$0, %ebx
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	movl	%ebx, %eax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L191
	jmp	.L201
.L193:
	movq	%rax, %rbx
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L183
.L194:
	movq	%rax, %rbx
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L183
.L195:
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L183
.L197:
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	jmp	.L187
.L200:
	movq	%rax, %rbx
	leaq	-288(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorItSaItEED1Ev
	jmp	.L189
.L199:
	movq	%rax, %rbx
.L189:
	leaq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorItSaItEED1Ev
	jmp	.L190
.L198:
	movq	%rax, %rbx
.L190:
	leaq	-352(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorItSaItEED1Ev
	jmp	.L187
.L196:
	movq	%rax, %rbx
.L187:
	leaq	-384(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorItSaItEED1Ev
	jmp	.L183
.L192:
	movq	%rax, %rbx
.L183:
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB64:
	call	_Unwind_Resume
.LEHE64:
.L201:
	call	__stack_chk_fail
.L191:
	addq	$472, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7197:
	.section	.gcc_except_table
.LLSDA7197:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7197-.LLSDACSB7197
.LLSDACSB7197:
	.uleb128 .LEHB51-.LFB7197
	.uleb128 .LEHE51-.LEHB51
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB52-.LFB7197
	.uleb128 .LEHE52-.LEHB52
	.uleb128 .L192-.LFB7197
	.uleb128 0
	.uleb128 .LEHB53-.LFB7197
	.uleb128 .LEHE53-.LEHB53
	.uleb128 .L193-.LFB7197
	.uleb128 0
	.uleb128 .LEHB54-.LFB7197
	.uleb128 .LEHE54-.LEHB54
	.uleb128 .L192-.LFB7197
	.uleb128 0
	.uleb128 .LEHB55-.LFB7197
	.uleb128 .LEHE55-.LEHB55
	.uleb128 .L194-.LFB7197
	.uleb128 0
	.uleb128 .LEHB56-.LFB7197
	.uleb128 .LEHE56-.LEHB56
	.uleb128 .L192-.LFB7197
	.uleb128 0
	.uleb128 .LEHB57-.LFB7197
	.uleb128 .LEHE57-.LEHB57
	.uleb128 .L195-.LFB7197
	.uleb128 0
	.uleb128 .LEHB58-.LFB7197
	.uleb128 .LEHE58-.LEHB58
	.uleb128 .L196-.LFB7197
	.uleb128 0
	.uleb128 .LEHB59-.LFB7197
	.uleb128 .LEHE59-.LEHB59
	.uleb128 .L197-.LFB7197
	.uleb128 0
	.uleb128 .LEHB60-.LFB7197
	.uleb128 .LEHE60-.LEHB60
	.uleb128 .L198-.LFB7197
	.uleb128 0
	.uleb128 .LEHB61-.LFB7197
	.uleb128 .LEHE61-.LEHB61
	.uleb128 .L199-.LFB7197
	.uleb128 0
	.uleb128 .LEHB62-.LFB7197
	.uleb128 .LEHE62-.LEHB62
	.uleb128 .L200-.LFB7197
	.uleb128 0
	.uleb128 .LEHB63-.LFB7197
	.uleb128 .LEHE63-.LEHB63
	.uleb128 .L192-.LFB7197
	.uleb128 0
	.uleb128 .LEHB64-.LFB7197
	.uleb128 .LEHE64-.LEHB64
	.uleb128 0
	.uleb128 0
.LLSDACSE7197:
	.text
	.size	main, .-main
	.section	.text._ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_,"axG",@progbits,_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_,comdat
	.weak	_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_
	.type	_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_, @function
_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_:
.LFB7306:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7306:
	.size	_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_, .-_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_
	.section	.text._ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_,"axG",@progbits,_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_,comdat
	.weak	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_
	.type	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_, @function
_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_:
.LFB7339:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	%edx, %eax
	movb	%al, -20(%rbp)
	movsbl	-20(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEmc
	movq	%rax, %rdi
	call	_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7339:
	.size	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_, .-_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_
	.section	.text._ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_,"axG",@progbits,_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_,comdat
	.weak	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_
	.type	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_, @function
_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_:
.LFB7341:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc
	movq	%rax, %rdi
	call	_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7341:
	.size	_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_, .-_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_
	.section	.text._ZNSt6vectorItSaItEEC2Ev,"axG",@progbits,_ZNSt6vectorItSaItEEC5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorItSaItEEC2Ev
	.type	_ZNSt6vectorItSaItEEC2Ev, @function
_ZNSt6vectorItSaItEEC2Ev:
.LFB7346:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA7346
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseItSaItEEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7346:
	.section	.gcc_except_table
.LLSDA7346:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7346-.LLSDACSB7346
.LLSDACSB7346:
.LLSDACSE7346:
	.section	.text._ZNSt6vectorItSaItEEC2Ev,"axG",@progbits,_ZNSt6vectorItSaItEEC5Ev,comdat
	.size	_ZNSt6vectorItSaItEEC2Ev, .-_ZNSt6vectorItSaItEEC2Ev
	.weak	_ZNSt6vectorItSaItEEC1Ev
	.set	_ZNSt6vectorItSaItEEC1Ev,_ZNSt6vectorItSaItEEC2Ev
	.section	.text._ZNSt6vectorItSaItEED2Ev,"axG",@progbits,_ZNSt6vectorItSaItEED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorItSaItEED2Ev
	.type	_ZNSt6vectorItSaItEED2Ev, @function
_ZNSt6vectorItSaItEED2Ev:
.LFB7349:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA7349
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseItSaItEE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPttEvT_S1_RSaIT0_E
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseItSaItEED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7349:
	.section	.gcc_except_table
.LLSDA7349:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7349-.LLSDACSB7349
.LLSDACSB7349:
.LLSDACSE7349:
	.section	.text._ZNSt6vectorItSaItEED2Ev,"axG",@progbits,_ZNSt6vectorItSaItEED5Ev,comdat
	.size	_ZNSt6vectorItSaItEED2Ev, .-_ZNSt6vectorItSaItEED2Ev
	.weak	_ZNSt6vectorItSaItEED1Ev
	.set	_ZNSt6vectorItSaItEED1Ev,_ZNSt6vectorItSaItEED2Ev
	.section	.text._ZSt4moveIRtEONSt16remove_referenceIT_E4typeEOS2_,"axG",@progbits,_ZSt4moveIRtEONSt16remove_referenceIT_E4typeEOS2_,comdat
	.weak	_ZSt4moveIRtEONSt16remove_referenceIT_E4typeEOS2_
	.type	_ZSt4moveIRtEONSt16remove_referenceIT_E4typeEOS2_, @function
_ZSt4moveIRtEONSt16remove_referenceIT_E4typeEOS2_:
.LFB7355:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7355:
	.size	_ZSt4moveIRtEONSt16remove_referenceIT_E4typeEOS2_, .-_ZSt4moveIRtEONSt16remove_referenceIT_E4typeEOS2_
	.section	.text._ZNSt6vectorItSaItEE9push_backEOt,"axG",@progbits,_ZNSt6vectorItSaItEE9push_backEOt,comdat
	.align 2
	.weak	_ZNSt6vectorItSaItEE9push_backEOt
	.type	_ZNSt6vectorItSaItEE9push_backEOt, @function
_ZNSt6vectorItSaItEE9push_backEOt:
.LFB7354:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRtEONSt16remove_referenceIT_E4typeEOS2_
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorItSaItEE12emplace_backIJtEEEvDpOT_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7354:
	.size	_ZNSt6vectorItSaItEE9push_backEOt, .-_ZNSt6vectorItSaItEE9push_backEOt
	.section	.text._ZNKSt6vectorItSaItEE4sizeEv,"axG",@progbits,_ZNKSt6vectorItSaItEE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorItSaItEE4sizeEv
	.type	_ZNKSt6vectorItSaItEE4sizeEv, @function
_ZNKSt6vectorItSaItEE4sizeEv:
.LFB7360:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	%rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7360:
	.size	_ZNKSt6vectorItSaItEE4sizeEv, .-_ZNKSt6vectorItSaItEE4sizeEv
	.section	.text._ZNSt6vectorItSaItEEixEm,"axG",@progbits,_ZNSt6vectorItSaItEEixEm,comdat
	.align 2
	.weak	_ZNSt6vectorItSaItEEixEm
	.type	_ZNSt6vectorItSaItEEixEm, @function
_ZNSt6vectorItSaItEEixEm:
.LFB7361:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7361:
	.size	_ZNSt6vectorItSaItEEixEm, .-_ZNSt6vectorItSaItEEixEm
	.section	.text._ZNSt6vectorItSaItEE9push_backERKt,"axG",@progbits,_ZNSt6vectorItSaItEE9push_backERKt,comdat
	.align 2
	.weak	_ZNSt6vectorItSaItEE9push_backERKt
	.type	_ZNSt6vectorItSaItEE9push_backERKt, @function
_ZNSt6vectorItSaItEE9push_backERKt:
.LFB7362:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	je	.L218
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaItEE9constructItJRKtEEEvRS0_PT_DpOT0_
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	2(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L220
.L218:
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorItSaItEE19_M_emplace_back_auxIJRKtEEEvDpOT_
.L220:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7362:
	.size	_ZNSt6vectorItSaItEE9push_backERKt, .-_ZNSt6vectorItSaItEE9push_backERKt
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC5Em,comdat
	.align 2
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em, @function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em:
.LFB7368:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7368:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em, .-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC1Em
	.set	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC1Em,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEC2Em
	.section	.text._ZNSt24uniform_int_distributionIiEC2Eii,"axG",@progbits,_ZNSt24uniform_int_distributionIiEC5Eii,comdat
	.align 2
	.weak	_ZNSt24uniform_int_distributionIiEC2Eii
	.type	_ZNSt24uniform_int_distributionIiEC2Eii, @function
_ZNSt24uniform_int_distributionIiEC2Eii:
.LFB7371:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
	call	_ZNSt24uniform_int_distributionIiE10param_typeC1Eii
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7371:
	.size	_ZNSt24uniform_int_distributionIiEC2Eii, .-_ZNSt24uniform_int_distributionIiEC2Eii
	.weak	_ZNSt24uniform_int_distributionIiEC1Eii
	.set	_ZNSt24uniform_int_distributionIiEC1Eii,_ZNSt24uniform_int_distributionIiEC2Eii
	.section	.text._ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_,"axG",@progbits,_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_,comdat
	.align 2
	.weak	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_
	.type	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_, @function
_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_:
.LFB7373:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7373:
	.size	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_, .-_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_
	.section	.text._ZNSt6vectorItSaItEEC2ERKS1_,"axG",@progbits,_ZNSt6vectorItSaItEEC5ERKS1_,comdat
	.align 2
	.weak	_ZNSt6vectorItSaItEEC2ERKS1_
	.type	_ZNSt6vectorItSaItEEC2ERKS1_, @function
_ZNSt6vectorItSaItEEC2ERKS1_:
.LFB7376:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA7376
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt12_Vector_baseItSaItEE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	leaq	-41(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB65:
	call	_ZN9__gnu_cxx14__alloc_traitsISaItEE17_S_select_on_copyERKS1_
.LEHE65:
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorItSaItEE4sizeEv
	movq	%rax, %rcx
	movq	-56(%rbp), %rax
	leaq	-41(%rbp), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB66:
	call	_ZNSt12_Vector_baseItSaItEEC2EmRKS0_
.LEHE66:
	leaq	-41(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaItED1Ev
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseItSaItEE19_M_get_Tp_allocatorEv
	movq	%rax, %r13
	movq	-56(%rbp), %rax
	movq	(%rax), %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorItSaItEE3endEv
	movq	%rax, %r12
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorItSaItEE5beginEv
	movq	%r13, %rcx
	movq	%rbx, %rdx
	movq	%r12, %rsi
	movq	%rax, %rdi
.LEHB67:
	call	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEPttET0_T_SA_S9_RSaIT1_E
.LEHE67:
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 8(%rax)
	nop
	movq	-40(%rbp), %rax
	xorq	%fs:40, %rax
	je	.L228
	jmp	.L231
.L229:
	movq	%rax, %rbx
	leaq	-41(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaItED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB68:
	call	_Unwind_Resume
.L230:
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseItSaItEED2Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume
.LEHE68:
.L231:
	call	__stack_chk_fail
.L228:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7376:
	.section	.gcc_except_table
.LLSDA7376:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7376-.LLSDACSB7376
.LLSDACSB7376:
	.uleb128 .LEHB65-.LFB7376
	.uleb128 .LEHE65-.LEHB65
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB66-.LFB7376
	.uleb128 .LEHE66-.LEHB66
	.uleb128 .L229-.LFB7376
	.uleb128 0
	.uleb128 .LEHB67-.LFB7376
	.uleb128 .LEHE67-.LEHB67
	.uleb128 .L230-.LFB7376
	.uleb128 0
	.uleb128 .LEHB68-.LFB7376
	.uleb128 .LEHE68-.LEHB68
	.uleb128 0
	.uleb128 0
.LLSDACSE7376:
	.section	.text._ZNSt6vectorItSaItEEC2ERKS1_,"axG",@progbits,_ZNSt6vectorItSaItEEC5ERKS1_,comdat
	.size	_ZNSt6vectorItSaItEEC2ERKS1_, .-_ZNSt6vectorItSaItEEC2ERKS1_
	.weak	_ZNSt6vectorItSaItEEC1ERKS1_
	.set	_ZNSt6vectorItSaItEEC1ERKS1_,_ZNSt6vectorItSaItEEC2ERKS1_
	.section	.text._ZNSt12_Vector_baseItSaItEE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseItSaItEE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseItSaItEE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseItSaItEE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseItSaItEE12_Vector_implD2Ev:
.LFB7486:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaItED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7486:
	.size	_ZNSt12_Vector_baseItSaItEE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseItSaItEE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseItSaItEE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseItSaItEE12_Vector_implD1Ev,_ZNSt12_Vector_baseItSaItEE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseItSaItEEC2Ev,"axG",@progbits,_ZNSt12_Vector_baseItSaItEEC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseItSaItEEC2Ev
	.type	_ZNSt12_Vector_baseItSaItEEC2Ev, @function
_ZNSt12_Vector_baseItSaItEEC2Ev:
.LFB7488:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseItSaItEE12_Vector_implC1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7488:
	.size	_ZNSt12_Vector_baseItSaItEEC2Ev, .-_ZNSt12_Vector_baseItSaItEEC2Ev
	.weak	_ZNSt12_Vector_baseItSaItEEC1Ev
	.set	_ZNSt12_Vector_baseItSaItEEC1Ev,_ZNSt12_Vector_baseItSaItEEC2Ev
	.section	.text._ZNSt12_Vector_baseItSaItEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseItSaItEED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseItSaItEED2Ev
	.type	_ZNSt12_Vector_baseItSaItEED2Ev, @function
_ZNSt12_Vector_baseItSaItEED2Ev:
.LFB7491:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA7491
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	%rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseItSaItEE12_Vector_implD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7491:
	.section	.gcc_except_table
.LLSDA7491:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7491-.LLSDACSB7491
.LLSDACSB7491:
.LLSDACSE7491:
	.section	.text._ZNSt12_Vector_baseItSaItEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseItSaItEED5Ev,comdat
	.size	_ZNSt12_Vector_baseItSaItEED2Ev, .-_ZNSt12_Vector_baseItSaItEED2Ev
	.weak	_ZNSt12_Vector_baseItSaItEED1Ev
	.set	_ZNSt12_Vector_baseItSaItEED1Ev,_ZNSt12_Vector_baseItSaItEED2Ev
	.section	.text._ZNSt12_Vector_baseItSaItEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseItSaItEE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseItSaItEE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseItSaItEE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseItSaItEE19_M_get_Tp_allocatorEv:
.LFB7493:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7493:
	.size	_ZNSt12_Vector_baseItSaItEE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseItSaItEE19_M_get_Tp_allocatorEv
	.section	.text._ZSt8_DestroyIPttEvT_S1_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPttEvT_S1_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIPttEvT_S1_RSaIT0_E
	.type	_ZSt8_DestroyIPttEvT_S1_RSaIT0_E, @function
_ZSt8_DestroyIPttEvT_S1_RSaIT0_E:
.LFB7494:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPtEvT_S1_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7494:
	.size	_ZSt8_DestroyIPttEvT_S1_RSaIT0_E, .-_ZSt8_DestroyIPttEvT_S1_RSaIT0_E
	.section	.text._ZSt7forwardItEOT_RNSt16remove_referenceIS0_E4typeE,"axG",@progbits,_ZSt7forwardItEOT_RNSt16remove_referenceIS0_E4typeE,comdat
	.weak	_ZSt7forwardItEOT_RNSt16remove_referenceIS0_E4typeE
	.type	_ZSt7forwardItEOT_RNSt16remove_referenceIS0_E4typeE, @function
_ZSt7forwardItEOT_RNSt16remove_referenceIS0_E4typeE:
.LFB7498:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7498:
	.size	_ZSt7forwardItEOT_RNSt16remove_referenceIS0_E4typeE, .-_ZSt7forwardItEOT_RNSt16remove_referenceIS0_E4typeE
	.section	.text._ZNSt6vectorItSaItEE12emplace_backIJtEEEvDpOT_,"axG",@progbits,_ZNSt6vectorItSaItEE12emplace_backIJtEEEvDpOT_,comdat
	.align 2
	.weak	_ZNSt6vectorItSaItEE12emplace_backIJtEEEvDpOT_
	.type	_ZNSt6vectorItSaItEE12emplace_backIJtEEEvDpOT_, @function
_ZNSt6vectorItSaItEE12emplace_backIJtEEEvDpOT_:
.LFB7497:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	16(%rax), %rax
	cmpq	%rax, %rdx
	je	.L241
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardItEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaItEE9constructItJtEEEvRS0_PT_DpOT0_
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	leaq	2(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	jmp	.L243
.L241:
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardItEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorItSaItEE19_M_emplace_back_auxIJtEEEvDpOT_
.L243:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7497:
	.size	_ZNSt6vectorItSaItEE12emplace_backIJtEEEvDpOT_, .-_ZNSt6vectorItSaItEE12emplace_backIJtEEEvDpOT_
	.weak	_ZNSt6vectorItSaItEE12emplace_backIItEEEvDpOT_
	.set	_ZNSt6vectorItSaItEE12emplace_backIItEEEvDpOT_,_ZNSt6vectorItSaItEE12emplace_backIJtEEEvDpOT_
	.section	.text._ZSt7forwardIRKtEOT_RNSt16remove_referenceIS2_E4typeE,"axG",@progbits,_ZSt7forwardIRKtEOT_RNSt16remove_referenceIS2_E4typeE,comdat
	.weak	_ZSt7forwardIRKtEOT_RNSt16remove_referenceIS2_E4typeE
	.type	_ZSt7forwardIRKtEOT_RNSt16remove_referenceIS2_E4typeE, @function
_ZSt7forwardIRKtEOT_RNSt16remove_referenceIS2_E4typeE:
.LFB7504:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7504:
	.size	_ZSt7forwardIRKtEOT_RNSt16remove_referenceIS2_E4typeE, .-_ZSt7forwardIRKtEOT_RNSt16remove_referenceIS2_E4typeE
	.section	.text._ZNSt16allocator_traitsISaItEE9constructItJRKtEEEvRS0_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaItEE9constructItJRKtEEEvRS0_PT_DpOT0_,comdat
	.weak	_ZNSt16allocator_traitsISaItEE9constructItJRKtEEEvRS0_PT_DpOT0_
	.type	_ZNSt16allocator_traitsISaItEE9constructItJRKtEEEvRS0_PT_DpOT0_, @function
_ZNSt16allocator_traitsISaItEE9constructItJRKtEEEvRS0_PT_DpOT0_:
.LFB7503:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRKtEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorItE9constructItJRKtEEEvPT_DpOT0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7503:
	.size	_ZNSt16allocator_traitsISaItEE9constructItJRKtEEEvRS0_PT_DpOT0_, .-_ZNSt16allocator_traitsISaItEE9constructItJRKtEEEvRS0_PT_DpOT0_
	.weak	_ZNSt16allocator_traitsISaItEE9constructItIRKtEEEvRS0_PT_DpOT0_
	.set	_ZNSt16allocator_traitsISaItEE9constructItIRKtEEEvRS0_PT_DpOT0_,_ZNSt16allocator_traitsISaItEE9constructItJRKtEEEvRS0_PT_DpOT0_
	.section	.rodata
.LC17:
	.string	"vector::_M_emplace_back_aux"
	.section	.text._ZNSt6vectorItSaItEE19_M_emplace_back_auxIJRKtEEEvDpOT_,"axG",@progbits,_ZNSt6vectorItSaItEE19_M_emplace_back_auxIJRKtEEEvDpOT_,comdat
	.align 2
	.weak	_ZNSt6vectorItSaItEE19_M_emplace_back_auxIJRKtEEEvDpOT_
	.type	_ZNSt6vectorItSaItEE19_M_emplace_back_auxIJRKtEEEvDpOT_, @function
_ZNSt6vectorItSaItEE19_M_emplace_back_auxIJRKtEEEvDpOT_:
.LFB7505:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA7505
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-56(%rbp), %rax
	movl	$.LC17, %edx
	movl	$1, %esi
	movq	%rax, %rdi
.LEHB69:
	call	_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseItSaItEE11_M_allocateEm
.LEHE69:
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRKtEOT_RNSt16remove_referenceIS2_E4typeE
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorItSaItEE4sizeEv
	leaq	(%rax,%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaItEE9constructItJRKtEEEvRS0_PT_DpOT0_
	movq	$0, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseItSaItEE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
.LEHB70:
	call	_ZSt34__uninitialized_move_if_noexcept_aIPtS0_SaItEET0_T_S3_S2_RT1_
.LEHE70:
	movq	%rax, -40(%rbp)
	addq	$2, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseItSaItEE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB71:
	call	_ZSt8_DestroyIPttEvT_S1_RSaIT0_E
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	%rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm
.LEHE71:
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-32(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 16(%rax)
	jmp	.L254
.L252:
	movq	%rax, %rdi
	call	__cxa_begin_catch
	cmpq	$0, -40(%rbp)
	jne	.L249
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorItSaItEE4sizeEv
	leaq	(%rax,%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB72:
	call	_ZNSt16allocator_traitsISaItEE7destroyItEEvRS0_PT_
	jmp	.L250
.L249:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseItSaItEE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPttEvT_S1_RSaIT0_E
.L250:
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm
	call	__cxa_rethrow
.LEHE72:
.L253:
	movq	%rax, %rbx
	call	__cxa_end_catch
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB73:
	call	_Unwind_Resume
.LEHE73:
.L254:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7505:
	.section	.gcc_except_table
	.align 4
.LLSDA7505:
	.byte	0xff
	.byte	0x3
	.uleb128 .LLSDATT7505-.LLSDATTD7505
.LLSDATTD7505:
	.byte	0x1
	.uleb128 .LLSDACSE7505-.LLSDACSB7505
.LLSDACSB7505:
	.uleb128 .LEHB69-.LFB7505
	.uleb128 .LEHE69-.LEHB69
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB70-.LFB7505
	.uleb128 .LEHE70-.LEHB70
	.uleb128 .L252-.LFB7505
	.uleb128 0x1
	.uleb128 .LEHB71-.LFB7505
	.uleb128 .LEHE71-.LEHB71
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB72-.LFB7505
	.uleb128 .LEHE72-.LEHB72
	.uleb128 .L253-.LFB7505
	.uleb128 0
	.uleb128 .LEHB73-.LFB7505
	.uleb128 .LEHE73-.LEHB73
	.uleb128 0
	.uleb128 0
.LLSDACSE7505:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT7505:
	.section	.text._ZNSt6vectorItSaItEE19_M_emplace_back_auxIJRKtEEEvDpOT_,"axG",@progbits,_ZNSt6vectorItSaItEE19_M_emplace_back_auxIJRKtEEEvDpOT_,comdat
	.size	_ZNSt6vectorItSaItEE19_M_emplace_back_auxIJRKtEEEvDpOT_, .-_ZNSt6vectorItSaItEE19_M_emplace_back_auxIJRKtEEEvDpOT_
	.weak	_ZNSt6vectorItSaItEE19_M_emplace_back_auxIIRKtEEEvDpOT_
	.set	_ZNSt6vectorItSaItEE19_M_emplace_back_auxIIRKtEEEvDpOT_,_ZNSt6vectorItSaItEE19_M_emplace_back_auxIJRKtEEEvDpOT_
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm,comdat
	.align 2
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm, @function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm:
.LFB7506:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	$1, -16(%rbp)
.L257:
	cmpq	$623, -16(%rbp)
	ja	.L256
	movq	-16(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	(%rax,%rdx,8), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	shrq	$30, %rax
	xorq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	imulq	$1812433253, %rax, %rax
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_
	addq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rcx, (%rax,%rdx,8)
	addq	$1, -16(%rbp)
	jmp	.L257
.L256:
	movq	-24(%rbp), %rax
	movq	$624, 4992(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7506:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm, .-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE4seedEm
	.section	.text._ZNSt24uniform_int_distributionIiE10param_typeC2Eii,"axG",@progbits,_ZNSt24uniform_int_distributionIiE10param_typeC5Eii,comdat
	.align 2
	.weak	_ZNSt24uniform_int_distributionIiE10param_typeC2Eii
	.type	_ZNSt24uniform_int_distributionIiE10param_typeC2Eii, @function
_ZNSt24uniform_int_distributionIiE10param_typeC2Eii:
.LFB7508:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	-8(%rbp), %rax
	movl	-12(%rbp), %edx
	movl	%edx, (%rax)
	movq	-8(%rbp), %rax
	movl	-16(%rbp), %edx
	movl	%edx, 4(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7508:
	.size	_ZNSt24uniform_int_distributionIiE10param_typeC2Eii, .-_ZNSt24uniform_int_distributionIiE10param_typeC2Eii
	.weak	_ZNSt24uniform_int_distributionIiE10param_typeC1Eii
	.set	_ZNSt24uniform_int_distributionIiE10param_typeC1Eii,_ZNSt24uniform_int_distributionIiE10param_typeC2Eii
	.section	.text._ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE,"axG",@progbits,_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE,comdat
	.align 2
	.weak	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE
	.type	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE, @function
_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE:
.LFB7510:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$136, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -120(%rbp)
	movq	%rsi, -128(%rbp)
	movq	%rdx, -136(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	$0, -96(%rbp)
	movl	$4294967295, %eax
	movq	%rax, -88(%rbp)
	movl	$4294967295, %eax
	movq	%rax, -80(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt24uniform_int_distributionIiE10param_type1bEv
	movslq	%eax, %rbx
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt24uniform_int_distributionIiE10param_type1aEv
	cltq
	subq	%rax, %rbx
	movq	%rbx, %rax
	movq	%rax, -72(%rbp)
	movl	$4294967294, %eax
	cmpq	%rax, -72(%rbp)
	ja	.L260
	movq	-72(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -64(%rbp)
	movl	$4294967295, %eax
	movl	$0, %edx
	divq	-64(%rbp)
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax
	imulq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)
.L262:
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	cmpq	-48(%rbp), %rax
	jb	.L261
	jmp	.L262
.L261:
	movq	-104(%rbp), %rax
	movl	$0, %edx
	divq	-56(%rbp)
	movq	%rax, -104(%rbp)
	jmp	.L263
.L260:
	movl	$4294967295, %eax
	cmpq	%rax, -72(%rbp)
	jbe	.L264
.L267:
	movabsq	$4294967296, %rax
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rax
	shrq	$32, %rax
	movl	%eax, %edx
	leaq	-112(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	_ZNSt24uniform_int_distributionIiE10param_typeC1Eii
	leaq	-112(%rbp), %rdx
	movq	-128(%rbp), %rcx
	movq	-120(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE
	cltq
	salq	$32, %rax
	movq	%rax, -32(%rbp)
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	addq	%rdx, %rax
	movq	%rax, -104(%rbp)
	movq	-104(%rbp), %rax
	cmpq	-72(%rbp), %rax
	ja	.L267
	movq	-104(%rbp), %rax
	cmpq	-32(%rbp), %rax
	jnb	.L263
	jmp	.L267
.L264:
	movq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	movq	%rax, -104(%rbp)
.L263:
	movq	-136(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt24uniform_int_distributionIiE10param_type1aEv
	movl	%eax, %edx
	movq	-104(%rbp), %rax
	addl	%edx, %eax
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L269
	call	__stack_chk_fail
.L269:
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7510:
	.size	_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE, .-_ZNSt24uniform_int_distributionIiEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEiRT_RKNS0_10param_typeE
	.section	.text._ZN9__gnu_cxx14__alloc_traitsISaItEE17_S_select_on_copyERKS1_,"axG",@progbits,_ZN9__gnu_cxx14__alloc_traitsISaItEE17_S_select_on_copyERKS1_,comdat
	.weak	_ZN9__gnu_cxx14__alloc_traitsISaItEE17_S_select_on_copyERKS1_
	.type	_ZN9__gnu_cxx14__alloc_traitsISaItEE17_S_select_on_copyERKS1_, @function
_ZN9__gnu_cxx14__alloc_traitsISaItEE17_S_select_on_copyERKS1_:
.LFB7514:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaItEE37select_on_container_copy_constructionERKS0_
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L272
	call	__stack_chk_fail
.L272:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7514:
	.size	_ZN9__gnu_cxx14__alloc_traitsISaItEE17_S_select_on_copyERKS1_, .-_ZN9__gnu_cxx14__alloc_traitsISaItEE17_S_select_on_copyERKS1_
	.section	.text._ZNKSt12_Vector_baseItSaItEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseItSaItEE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt12_Vector_baseItSaItEE19_M_get_Tp_allocatorEv
	.type	_ZNKSt12_Vector_baseItSaItEE19_M_get_Tp_allocatorEv, @function
_ZNKSt12_Vector_baseItSaItEE19_M_get_Tp_allocatorEv:
.LFB7515:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7515:
	.size	_ZNKSt12_Vector_baseItSaItEE19_M_get_Tp_allocatorEv, .-_ZNKSt12_Vector_baseItSaItEE19_M_get_Tp_allocatorEv
	.section	.text._ZNSaItED2Ev,"axG",@progbits,_ZNSaItED5Ev,comdat
	.align 2
	.weak	_ZNSaItED2Ev
	.type	_ZNSaItED2Ev, @function
_ZNSaItED2Ev:
.LFB7517:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorItED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7517:
	.size	_ZNSaItED2Ev, .-_ZNSaItED2Ev
	.weak	_ZNSaItED1Ev
	.set	_ZNSaItED1Ev,_ZNSaItED2Ev
	.section	.text._ZNSt12_Vector_baseItSaItEEC2EmRKS0_,"axG",@progbits,_ZNSt12_Vector_baseItSaItEEC5EmRKS0_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseItSaItEEC2EmRKS0_
	.type	_ZNSt12_Vector_baseItSaItEEC2EmRKS0_, @function
_ZNSt12_Vector_baseItSaItEEC2EmRKS0_:
.LFB7520:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA7520
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseItSaItEE12_Vector_implC1ERKS0_
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB74:
	call	_ZNSt12_Vector_baseItSaItEE17_M_create_storageEm
.LEHE74:
	jmp	.L279
.L278:
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseItSaItEE12_Vector_implD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB75:
	call	_Unwind_Resume
.LEHE75:
.L279:
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7520:
	.section	.gcc_except_table
.LLSDA7520:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE7520-.LLSDACSB7520
.LLSDACSB7520:
	.uleb128 .LEHB74-.LFB7520
	.uleb128 .LEHE74-.LEHB74
	.uleb128 .L278-.LFB7520
	.uleb128 0
	.uleb128 .LEHB75-.LFB7520
	.uleb128 .LEHE75-.LEHB75
	.uleb128 0
	.uleb128 0
.LLSDACSE7520:
	.section	.text._ZNSt12_Vector_baseItSaItEEC2EmRKS0_,"axG",@progbits,_ZNSt12_Vector_baseItSaItEEC5EmRKS0_,comdat
	.size	_ZNSt12_Vector_baseItSaItEEC2EmRKS0_, .-_ZNSt12_Vector_baseItSaItEEC2EmRKS0_
	.weak	_ZNSt12_Vector_baseItSaItEEC1EmRKS0_
	.set	_ZNSt12_Vector_baseItSaItEEC1EmRKS0_,_ZNSt12_Vector_baseItSaItEEC2EmRKS0_
	.section	.text._ZNKSt6vectorItSaItEE5beginEv,"axG",@progbits,_ZNKSt6vectorItSaItEE5beginEv,comdat
	.align 2
	.weak	_ZNKSt6vectorItSaItEE5beginEv
	.type	_ZNKSt6vectorItSaItEE5beginEv, @function
_ZNKSt6vectorItSaItEE5beginEv:
.LFB7522:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEC1ERKS2_
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L282
	call	__stack_chk_fail
.L282:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7522:
	.size	_ZNKSt6vectorItSaItEE5beginEv, .-_ZNKSt6vectorItSaItEE5beginEv
	.section	.text._ZNKSt6vectorItSaItEE3endEv,"axG",@progbits,_ZNKSt6vectorItSaItEE3endEv,comdat
	.align 2
	.weak	_ZNKSt6vectorItSaItEE3endEv
	.type	_ZNKSt6vectorItSaItEE3endEv, @function
_ZNKSt6vectorItSaItEE3endEv:
.LFB7523:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEC1ERKS2_
	movq	-32(%rbp), %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L285
	call	__stack_chk_fail
.L285:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7523:
	.size	_ZNKSt6vectorItSaItEE3endEv, .-_ZNKSt6vectorItSaItEE3endEv
	.section	.text._ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEPttET0_T_SA_S9_RSaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEPttET0_T_SA_S9_RSaIT1_E,comdat
	.weak	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEPttET0_T_SA_S9_RSaIT1_E
	.type	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEPttET0_T_SA_S9_RSaIT1_E, @function
_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEPttET0_T_SA_S9_RSaIT1_E:
.LFB7524:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -8(%rbp)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEPtET0_T_SA_S9_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7524:
	.size	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEPttET0_T_SA_S9_RSaIT1_E, .-_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEPttET0_T_SA_S9_RSaIT1_E
	.section	.text._ZNSt12_Vector_baseItSaItEE12_Vector_implC2Ev,"axG",@progbits,_ZNSt12_Vector_baseItSaItEE12_Vector_implC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseItSaItEE12_Vector_implC2Ev
	.type	_ZNSt12_Vector_baseItSaItEE12_Vector_implC2Ev, @function
_ZNSt12_Vector_baseItSaItEE12_Vector_implC2Ev:
.LFB7569:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaItEC2Ev
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7569:
	.size	_ZNSt12_Vector_baseItSaItEE12_Vector_implC2Ev, .-_ZNSt12_Vector_baseItSaItEE12_Vector_implC2Ev
	.weak	_ZNSt12_Vector_baseItSaItEE12_Vector_implC1Ev
	.set	_ZNSt12_Vector_baseItSaItEE12_Vector_implC1Ev,_ZNSt12_Vector_baseItSaItEE12_Vector_implC2Ev
	.section	.text._ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm,"axG",@progbits,_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm
	.type	_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm, @function
_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm:
.LFB7571:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L291
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaItEE10deallocateERS0_Ptm
.L291:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7571:
	.size	_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm, .-_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm
	.section	.text._ZSt8_DestroyIPtEvT_S1_,"axG",@progbits,_ZSt8_DestroyIPtEvT_S1_,comdat
	.weak	_ZSt8_DestroyIPtEvT_S1_
	.type	_ZSt8_DestroyIPtEvT_S1_, @function
_ZSt8_DestroyIPtEvT_S1_:
.LFB7572:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIPtEEvT_S3_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7572:
	.size	_ZSt8_DestroyIPtEvT_S1_, .-_ZSt8_DestroyIPtEvT_S1_
	.section	.text._ZNSt16allocator_traitsISaItEE9constructItJtEEEvRS0_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaItEE9constructItJtEEEvRS0_PT_DpOT0_,comdat
	.weak	_ZNSt16allocator_traitsISaItEE9constructItJtEEEvRS0_PT_DpOT0_
	.type	_ZNSt16allocator_traitsISaItEE9constructItJtEEEvRS0_PT_DpOT0_, @function
_ZNSt16allocator_traitsISaItEE9constructItJtEEEvRS0_PT_DpOT0_:
.LFB7574:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardItEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorItE9constructItJtEEEvPT_DpOT0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7574:
	.size	_ZNSt16allocator_traitsISaItEE9constructItJtEEEvRS0_PT_DpOT0_, .-_ZNSt16allocator_traitsISaItEE9constructItJtEEEvRS0_PT_DpOT0_
	.weak	_ZNSt16allocator_traitsISaItEE9constructItItEEEvRS0_PT_DpOT0_
	.set	_ZNSt16allocator_traitsISaItEE9constructItItEEEvRS0_PT_DpOT0_,_ZNSt16allocator_traitsISaItEE9constructItJtEEEvRS0_PT_DpOT0_
	.section	.text._ZNSt6vectorItSaItEE19_M_emplace_back_auxIJtEEEvDpOT_,"axG",@progbits,_ZNSt6vectorItSaItEE19_M_emplace_back_auxIJtEEEvDpOT_,comdat
	.align 2
	.weak	_ZNSt6vectorItSaItEE19_M_emplace_back_auxIJtEEEvDpOT_
	.type	_ZNSt6vectorItSaItEE19_M_emplace_back_auxIJtEEEvDpOT_, @function
_ZNSt6vectorItSaItEE19_M_emplace_back_auxIJtEEEvDpOT_:
.LFB7575:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA7575
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-56(%rbp), %rax
	movl	$.LC17, %edx
	movl	$1, %esi
	movq	%rax, %rdi
.LEHB76:
	call	_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseItSaItEE11_M_allocateEm
.LEHE76:
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardItEOT_RNSt16remove_referenceIS0_E4typeE
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorItSaItEE4sizeEv
	leaq	(%rax,%rax), %rdx
	movq	-24(%rbp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaItEE9constructItJtEEEvRS0_PT_DpOT0_
	movq	$0, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseItSaItEE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rsi
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rdx
	movq	%rax, %rdi
.LEHB77:
	call	_ZSt34__uninitialized_move_if_noexcept_aIPtS0_SaItEET0_T_S3_S2_RT1_
.LEHE77:
	movq	%rax, -40(%rbp)
	addq	$2, -40(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseItSaItEE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB78:
	call	_ZSt8_DestroyIPttEvT_S1_RSaIT0_E
	movq	-56(%rbp), %rax
	movq	16(%rax), %rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	%rax
	movq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	(%rax), %rcx
	movq	-56(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm
.LEHE78:
	movq	-56(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	%rdx, (%rax)
	movq	-56(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-32(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, 16(%rax)
	jmp	.L301
.L299:
	movq	%rax, %rdi
	call	__cxa_begin_catch
	cmpq	$0, -40(%rbp)
	jne	.L296
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorItSaItEE4sizeEv
	leaq	(%rax,%rax), %rdx
	movq	-24(%rbp), %rax
	addq	%rax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB79:
	call	_ZNSt16allocator_traitsISaItEE7destroyItEEvRS0_PT_
	jmp	.L297
.L296:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseItSaItEE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-40(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPttEvT_S1_RSaIT0_E
.L297:
	movq	-56(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm
	call	__cxa_rethrow
.LEHE79:
.L300:
	movq	%rax, %rbx
	call	__cxa_end_catch
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB80:
	call	_Unwind_Resume
.LEHE80:
.L301:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7575:
	.section	.gcc_except_table
	.align 4
.LLSDA7575:
	.byte	0xff
	.byte	0x3
	.uleb128 .LLSDATT7575-.LLSDATTD7575
.LLSDATTD7575:
	.byte	0x1
	.uleb128 .LLSDACSE7575-.LLSDACSB7575
.LLSDACSB7575:
	.uleb128 .LEHB76-.LFB7575
	.uleb128 .LEHE76-.LEHB76
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB77-.LFB7575
	.uleb128 .LEHE77-.LEHB77
	.uleb128 .L299-.LFB7575
	.uleb128 0x1
	.uleb128 .LEHB78-.LFB7575
	.uleb128 .LEHE78-.LEHB78
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB79-.LFB7575
	.uleb128 .LEHE79-.LEHB79
	.uleb128 .L300-.LFB7575
	.uleb128 0
	.uleb128 .LEHB80-.LFB7575
	.uleb128 .LEHE80-.LEHB80
	.uleb128 0
	.uleb128 0
.LLSDACSE7575:
	.byte	0x1
	.byte	0
	.align 4
	.long	0

.LLSDATT7575:
	.section	.text._ZNSt6vectorItSaItEE19_M_emplace_back_auxIJtEEEvDpOT_,"axG",@progbits,_ZNSt6vectorItSaItEE19_M_emplace_back_auxIJtEEEvDpOT_,comdat
	.size	_ZNSt6vectorItSaItEE19_M_emplace_back_auxIJtEEEvDpOT_, .-_ZNSt6vectorItSaItEE19_M_emplace_back_auxIJtEEEvDpOT_
	.weak	_ZNSt6vectorItSaItEE19_M_emplace_back_auxIItEEEvDpOT_
	.set	_ZNSt6vectorItSaItEE19_M_emplace_back_auxIItEEEvDpOT_,_ZNSt6vectorItSaItEE19_M_emplace_back_auxIJtEEEvDpOT_
	.section	.text._ZN9__gnu_cxx13new_allocatorItE9constructItJRKtEEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorItE9constructItJRKtEEEvPT_DpOT0_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorItE9constructItJRKtEEEvPT_DpOT0_
	.type	_ZN9__gnu_cxx13new_allocatorItE9constructItJRKtEEEvPT_DpOT0_, @function
_ZN9__gnu_cxx13new_allocatorItE9constructItJRKtEEEvPT_DpOT0_:
.LFB7580:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRKtEOT_RNSt16remove_referenceIS2_E4typeE
	movzwl	(%rax), %ebx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$2, %edi
	call	_ZnwmPv
	testq	%rax, %rax
	je	.L305
	movw	%bx, (%rax)
.L305:
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7580:
	.size	_ZN9__gnu_cxx13new_allocatorItE9constructItJRKtEEEvPT_DpOT0_, .-_ZN9__gnu_cxx13new_allocatorItE9constructItJRKtEEEvPT_DpOT0_
	.weak	_ZN9__gnu_cxx13new_allocatorItE9constructItIRKtEEEvPT_DpOT0_
	.set	_ZN9__gnu_cxx13new_allocatorItE9constructItIRKtEEEvPT_DpOT0_,_ZN9__gnu_cxx13new_allocatorItE9constructItJRKtEEEvPT_DpOT0_
	.section	.text._ZSt3maxImERKT_S2_S2_,"axG",@progbits,_ZSt3maxImERKT_S2_S2_,comdat
	.weak	_ZSt3maxImERKT_S2_S2_
	.type	_ZSt3maxImERKT_S2_S2_, @function
_ZSt3maxImERKT_S2_S2_:
.LFB7582:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L307
	movq	-16(%rbp), %rax
	jmp	.L308
.L307:
	movq	-8(%rbp), %rax
.L308:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7582:
	.size	_ZSt3maxImERKT_S2_S2_, .-_ZSt3maxImERKT_S2_S2_
	.section	.text._ZNKSt6vectorItSaItEE12_M_check_lenEmPKc,"axG",@progbits,_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc,comdat
	.align 2
	.weak	_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc
	.type	_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc, @function
_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc:
.LFB7581:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	%rdx, -72(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorItSaItEE8max_sizeEv
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorItSaItEE4sizeEv
	subq	%rax, %rbx
	movq	%rbx, %rdx
	movq	-64(%rbp), %rax
	cmpq	%rax, %rdx
	setb	%al
	testb	%al, %al
	je	.L310
	movq	-72(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt20__throw_length_errorPKc
.L310:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorItSaItEE4sizeEv
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorItSaItEE4sizeEv
	movq	%rax, -40(%rbp)
	leaq	-64(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3maxImERKT_S2_S2_
	movq	(%rax), %rax
	addq	%rbx, %rax
	movq	%rax, -32(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorItSaItEE4sizeEv
	cmpq	-32(%rbp), %rax
	ja	.L311
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorItSaItEE8max_sizeEv
	cmpq	-32(%rbp), %rax
	jnb	.L312
.L311:
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorItSaItEE8max_sizeEv
	jmp	.L314
.L312:
	movq	-32(%rbp), %rax
.L314:
	movq	-24(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L315
	call	__stack_chk_fail
.L315:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7581:
	.size	_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc, .-_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc
	.section	.text._ZNSt12_Vector_baseItSaItEE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseItSaItEE11_M_allocateEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseItSaItEE11_M_allocateEm
	.type	_ZNSt12_Vector_baseItSaItEE11_M_allocateEm, @function
_ZNSt12_Vector_baseItSaItEE11_M_allocateEm:
.LFB7583:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L317
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaItEE8allocateERS0_m
	jmp	.L319
.L317:
	movl	$0, %eax
.L319:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7583:
	.size	_ZNSt12_Vector_baseItSaItEE11_M_allocateEm, .-_ZNSt12_Vector_baseItSaItEE11_M_allocateEm
	.section	.text._ZSt34__uninitialized_move_if_noexcept_aIPtS0_SaItEET0_T_S3_S2_RT1_,"axG",@progbits,_ZSt34__uninitialized_move_if_noexcept_aIPtS0_SaItEET0_T_S3_S2_RT1_,comdat
	.weak	_ZSt34__uninitialized_move_if_noexcept_aIPtS0_SaItEET0_T_S3_S2_RT1_
	.type	_ZSt34__uninitialized_move_if_noexcept_aIPtS0_SaItEET0_T_S3_S2_RT1_, @function
_ZSt34__uninitialized_move_if_noexcept_aIPtS0_SaItEET0_T_S3_S2_RT1_:
.LFB7584:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt32__make_move_if_noexcept_iteratorIPtSt13move_iteratorIS0_EET0_T_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt32__make_move_if_noexcept_iteratorIPtSt13move_iteratorIS0_EET0_T_
	movq	%rax, %rdi
	movq	-48(%rbp), %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rax, %rdx
	movq	%rbx, %rsi
	call	_ZSt22__uninitialized_copy_aISt13move_iteratorIPtES1_tET0_T_S4_S3_RSaIT1_E
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7584:
	.size	_ZSt34__uninitialized_move_if_noexcept_aIPtS0_SaItEET0_T_S3_S2_RT1_, .-_ZSt34__uninitialized_move_if_noexcept_aIPtS0_SaItEET0_T_S3_S2_RT1_
	.section	.text._ZNSt16allocator_traitsISaItEE7destroyItEEvRS0_PT_,"axG",@progbits,_ZNSt16allocator_traitsISaItEE7destroyItEEvRS0_PT_,comdat
	.weak	_ZNSt16allocator_traitsISaItEE7destroyItEEvRS0_PT_
	.type	_ZNSt16allocator_traitsISaItEE7destroyItEEvRS0_PT_, @function
_ZNSt16allocator_traitsISaItEE7destroyItEEvRS0_PT_:
.LFB7585:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorItE7destroyItEEvPT_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7585:
	.size	_ZNSt16allocator_traitsISaItEE7destroyItEEvRS0_PT_, .-_ZNSt16allocator_traitsISaItEE7destroyItEEvRS0_PT_
	.section	.text._ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_,"axG",@progbits,_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_,comdat
	.weak	_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_
	.type	_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_, @function
_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_:
.LFB7586:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb1ELb1EE6__calcEm
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7586:
	.size	_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_, .-_ZNSt8__detail5__modImLm4294967296ELm1ELm0EEET_S1_
	.section	.text._ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_,"axG",@progbits,_ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_,comdat
	.weak	_ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_
	.type	_ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_, @function
_ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_:
.LFB7587:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt8__detail4_ModImLm624ELm1ELm0ELb1ELb1EE6__calcEm
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7587:
	.size	_ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_, .-_ZNSt8__detail5__modImLm624ELm1ELm0EEET_S1_
	.section	.text._ZNKSt24uniform_int_distributionIiE10param_type1bEv,"axG",@progbits,_ZNKSt24uniform_int_distributionIiE10param_type1bEv,comdat
	.align 2
	.weak	_ZNKSt24uniform_int_distributionIiE10param_type1bEv
	.type	_ZNKSt24uniform_int_distributionIiE10param_type1bEv, @function
_ZNKSt24uniform_int_distributionIiE10param_type1bEv:
.LFB7588:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	4(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7588:
	.size	_ZNKSt24uniform_int_distributionIiE10param_type1bEv, .-_ZNKSt24uniform_int_distributionIiE10param_type1bEv
	.section	.text._ZNKSt24uniform_int_distributionIiE10param_type1aEv,"axG",@progbits,_ZNKSt24uniform_int_distributionIiE10param_type1aEv,comdat
	.align 2
	.weak	_ZNKSt24uniform_int_distributionIiE10param_type1aEv
	.type	_ZNKSt24uniform_int_distributionIiE10param_type1aEv, @function
_ZNKSt24uniform_int_distributionIiE10param_type1aEv:
.LFB7589:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7589:
	.size	_ZNKSt24uniform_int_distributionIiE10param_type1aEv, .-_ZNKSt24uniform_int_distributionIiE10param_type1aEv
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv,comdat
	.align 2
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv, @function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv:
.LFB7590:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	4992(%rax), %rax
	cmpq	$623, %rax
	jbe	.L332
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
.L332:
	movq	-24(%rbp), %rax
	movq	4992(%rax), %rax
	leaq	1(%rax), %rcx
	movq	-24(%rbp), %rdx
	movq	%rcx, 4992(%rdx)
	movq	-24(%rbp), %rdx
	movq	(%rdx,%rax,8), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	shrq	$11, %rax
	movl	%eax, %eax
	xorq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	salq	$7, %rax
	andl	$2636928640, %eax
	xorq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	salq	$15, %rax
	andl	$4022730752, %eax
	xorq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	shrq	$18, %rax
	xorq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7590:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv, .-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEclEv
	.section	.text._ZNSt16allocator_traitsISaItEE37select_on_container_copy_constructionERKS0_,"axG",@progbits,_ZNSt16allocator_traitsISaItEE37select_on_container_copy_constructionERKS0_,comdat
	.weak	_ZNSt16allocator_traitsISaItEE37select_on_container_copy_constructionERKS0_
	.type	_ZNSt16allocator_traitsISaItEE37select_on_container_copy_constructionERKS0_, @function
_ZNSt16allocator_traitsISaItEE37select_on_container_copy_constructionERKS0_:
.LFB7591:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaItEC1ERKS_
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7591:
	.size	_ZNSt16allocator_traitsISaItEE37select_on_container_copy_constructionERKS0_, .-_ZNSt16allocator_traitsISaItEE37select_on_container_copy_constructionERKS0_
	.section	.text._ZNSaItEC2ERKS_,"axG",@progbits,_ZNSaItEC5ERKS_,comdat
	.align 2
	.weak	_ZNSaItEC2ERKS_
	.type	_ZNSaItEC2ERKS_, @function
_ZNSaItEC2ERKS_:
.LFB7593:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorItEC2ERKS1_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7593:
	.size	_ZNSaItEC2ERKS_, .-_ZNSaItEC2ERKS_
	.weak	_ZNSaItEC1ERKS_
	.set	_ZNSaItEC1ERKS_,_ZNSaItEC2ERKS_
	.section	.text._ZN9__gnu_cxx13new_allocatorItED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorItED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorItED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorItED2Ev, @function
_ZN9__gnu_cxx13new_allocatorItED2Ev:
.LFB7596:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7596:
	.size	_ZN9__gnu_cxx13new_allocatorItED2Ev, .-_ZN9__gnu_cxx13new_allocatorItED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorItED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorItED1Ev,_ZN9__gnu_cxx13new_allocatorItED2Ev
	.section	.text._ZNSt12_Vector_baseItSaItEE12_Vector_implC2ERKS0_,"axG",@progbits,_ZNSt12_Vector_baseItSaItEE12_Vector_implC5ERKS0_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseItSaItEE12_Vector_implC2ERKS0_
	.type	_ZNSt12_Vector_baseItSaItEE12_Vector_implC2ERKS0_, @function
_ZNSt12_Vector_baseItSaItEE12_Vector_implC2ERKS0_:
.LFB7599:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaItEC2ERKS_
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7599:
	.size	_ZNSt12_Vector_baseItSaItEE12_Vector_implC2ERKS0_, .-_ZNSt12_Vector_baseItSaItEE12_Vector_implC2ERKS0_
	.weak	_ZNSt12_Vector_baseItSaItEE12_Vector_implC1ERKS0_
	.set	_ZNSt12_Vector_baseItSaItEE12_Vector_implC1ERKS0_,_ZNSt12_Vector_baseItSaItEE12_Vector_implC2ERKS0_
	.section	.text._ZNSt12_Vector_baseItSaItEE17_M_create_storageEm,"axG",@progbits,_ZNSt12_Vector_baseItSaItEE17_M_create_storageEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseItSaItEE17_M_create_storageEm
	.type	_ZNSt12_Vector_baseItSaItEE17_M_create_storageEm, @function
_ZNSt12_Vector_baseItSaItEE17_M_create_storageEm:
.LFB7601:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseItSaItEE11_M_allocateEm
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	-16(%rbp), %rdx
	addq	%rdx, %rdx
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7601:
	.size	_ZNSt12_Vector_baseItSaItEE17_M_create_storageEm, .-_ZNSt12_Vector_baseItSaItEE17_M_create_storageEm
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEC2ERKS2_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEC5ERKS2_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEC2ERKS2_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEC2ERKS2_, @function
_ZN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEC2ERKS2_:
.LFB7603:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7603:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEC2ERKS2_, .-_ZN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEC2ERKS2_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEC1ERKS2_
	.set	_ZN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEC1ERKS2_,_ZN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEC2ERKS2_
	.section	.text._ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEPtET0_T_SA_S9_,"axG",@progbits,_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEPtET0_T_SA_S9_,comdat
	.weak	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEPtET0_T_SA_S9_
	.type	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEPtET0_T_SA_S9_, @function
_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEPtET0_T_SA_S9_:
.LFB7605:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -32(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movb	$1, -1(%rbp)
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEPtEET0_T_SC_SB_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7605:
	.size	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEPtET0_T_SA_S9_, .-_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEPtET0_T_SA_S9_
	.section	.text._ZNSaItEC2Ev,"axG",@progbits,_ZNSaItEC5Ev,comdat
	.align 2
	.weak	_ZNSaItEC2Ev
	.type	_ZNSaItEC2Ev, @function
_ZNSaItEC2Ev:
.LFB7648:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorItEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7648:
	.size	_ZNSaItEC2Ev, .-_ZNSaItEC2Ev
	.weak	_ZNSaItEC1Ev
	.set	_ZNSaItEC1Ev,_ZNSaItEC2Ev
	.section	.text._ZNSt16allocator_traitsISaItEE10deallocateERS0_Ptm,"axG",@progbits,_ZNSt16allocator_traitsISaItEE10deallocateERS0_Ptm,comdat
	.weak	_ZNSt16allocator_traitsISaItEE10deallocateERS0_Ptm
	.type	_ZNSt16allocator_traitsISaItEE10deallocateERS0_Ptm, @function
_ZNSt16allocator_traitsISaItEE10deallocateERS0_Ptm:
.LFB7650:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorItE10deallocateEPtm
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7650:
	.size	_ZNSt16allocator_traitsISaItEE10deallocateERS0_Ptm, .-_ZNSt16allocator_traitsISaItEE10deallocateERS0_Ptm
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPtEEvT_S3_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIPtEEvT_S3_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPtEEvT_S3_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIPtEEvT_S3_, @function
_ZNSt12_Destroy_auxILb1EE9__destroyIPtEEvT_S3_:
.LFB7651:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7651:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPtEEvT_S3_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIPtEEvT_S3_
	.section	.text._ZN9__gnu_cxx13new_allocatorItE9constructItJtEEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorItE9constructItJtEEEvPT_DpOT0_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorItE9constructItJtEEEvPT_DpOT0_
	.type	_ZN9__gnu_cxx13new_allocatorItE9constructItJtEEEvPT_DpOT0_, @function
_ZN9__gnu_cxx13new_allocatorItE9constructItJtEEEvPT_DpOT0_:
.LFB7653:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardItEOT_RNSt16remove_referenceIS0_E4typeE
	movzwl	(%rax), %ebx
	movq	-32(%rbp), %rax
	movq	%rax, %rsi
	movl	$2, %edi
	call	_ZnwmPv
	testq	%rax, %rax
	je	.L349
	movw	%bx, (%rax)
.L349:
	nop
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7653:
	.size	_ZN9__gnu_cxx13new_allocatorItE9constructItJtEEEvPT_DpOT0_, .-_ZN9__gnu_cxx13new_allocatorItE9constructItJtEEEvPT_DpOT0_
	.weak	_ZN9__gnu_cxx13new_allocatorItE9constructItItEEEvPT_DpOT0_
	.set	_ZN9__gnu_cxx13new_allocatorItE9constructItItEEEvPT_DpOT0_,_ZN9__gnu_cxx13new_allocatorItE9constructItJtEEEvPT_DpOT0_
	.section	.text._ZNKSt6vectorItSaItEE8max_sizeEv,"axG",@progbits,_ZNKSt6vectorItSaItEE8max_sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorItSaItEE8max_sizeEv
	.type	_ZNKSt6vectorItSaItEE8max_sizeEv, @function
_ZNKSt6vectorItSaItEE8max_sizeEv:
.LFB7656:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt12_Vector_baseItSaItEE19_M_get_Tp_allocatorEv
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaItEE8max_sizeERKS0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7656:
	.size	_ZNKSt6vectorItSaItEE8max_sizeEv, .-_ZNKSt6vectorItSaItEE8max_sizeEv
	.section	.text._ZNSt16allocator_traitsISaItEE8allocateERS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaItEE8allocateERS0_m,comdat
	.weak	_ZNSt16allocator_traitsISaItEE8allocateERS0_m
	.type	_ZNSt16allocator_traitsISaItEE8allocateERS0_m, @function
_ZNSt16allocator_traitsISaItEE8allocateERS0_m:
.LFB7657:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorItE8allocateEmPKv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7657:
	.size	_ZNSt16allocator_traitsISaItEE8allocateERS0_m, .-_ZNSt16allocator_traitsISaItEE8allocateERS0_m
	.section	.text._ZSt32__make_move_if_noexcept_iteratorIPtSt13move_iteratorIS0_EET0_T_,"axG",@progbits,_ZSt32__make_move_if_noexcept_iteratorIPtSt13move_iteratorIS0_EET0_T_,comdat
	.weak	_ZSt32__make_move_if_noexcept_iteratorIPtSt13move_iteratorIS0_EET0_T_
	.type	_ZSt32__make_move_if_noexcept_iteratorIPtSt13move_iteratorIS0_EET0_T_, @function
_ZSt32__make_move_if_noexcept_iteratorIPtSt13move_iteratorIS0_EET0_T_:
.LFB7658:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt13move_iteratorIPtEC1ES0_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rcx
	xorq	%fs:40, %rcx
	je	.L356
	call	__stack_chk_fail
.L356:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7658:
	.size	_ZSt32__make_move_if_noexcept_iteratorIPtSt13move_iteratorIS0_EET0_T_, .-_ZSt32__make_move_if_noexcept_iteratorIPtSt13move_iteratorIS0_EET0_T_
	.section	.text._ZSt22__uninitialized_copy_aISt13move_iteratorIPtES1_tET0_T_S4_S3_RSaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aISt13move_iteratorIPtES1_tET0_T_S4_S3_RSaIT1_E,comdat
	.weak	_ZSt22__uninitialized_copy_aISt13move_iteratorIPtES1_tET0_T_S4_S3_RSaIT1_E
	.type	_ZSt22__uninitialized_copy_aISt13move_iteratorIPtES1_tET0_T_S4_S3_RSaIT1_E, @function
_ZSt22__uninitialized_copy_aISt13move_iteratorIPtES1_tET0_T_S4_S3_RSaIT1_E:
.LFB7659:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -8(%rbp)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt18uninitialized_copyISt13move_iteratorIPtES1_ET0_T_S4_S3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7659:
	.size	_ZSt22__uninitialized_copy_aISt13move_iteratorIPtES1_tET0_T_S4_S3_RSaIT1_E, .-_ZSt22__uninitialized_copy_aISt13move_iteratorIPtES1_tET0_T_S4_S3_RSaIT1_E
	.section	.text._ZN9__gnu_cxx13new_allocatorItE7destroyItEEvPT_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorItE7destroyItEEvPT_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorItE7destroyItEEvPT_
	.type	_ZN9__gnu_cxx13new_allocatorItE7destroyItEEvPT_, @function
_ZN9__gnu_cxx13new_allocatorItE7destroyItEEvPT_:
.LFB7660:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7660:
	.size	_ZN9__gnu_cxx13new_allocatorItE7destroyItEEvPT_, .-_ZN9__gnu_cxx13new_allocatorItE7destroyItEEvPT_
	.section	.text._ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb1ELb1EE6__calcEm,"axG",@progbits,_ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb1ELb1EE6__calcEm,comdat
	.weak	_ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb1ELb1EE6__calcEm
	.type	_ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb1ELb1EE6__calcEm, @function
_ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb1ELb1EE6__calcEm:
.LFB7661:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movl	$4294967295, %eax
	andq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7661:
	.size	_ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb1ELb1EE6__calcEm, .-_ZNSt8__detail4_ModImLm4294967296ELm1ELm0ELb1ELb1EE6__calcEm
	.section	.text._ZNSt8__detail4_ModImLm624ELm1ELm0ELb1ELb1EE6__calcEm,"axG",@progbits,_ZNSt8__detail4_ModImLm624ELm1ELm0ELb1ELb1EE6__calcEm,comdat
	.weak	_ZNSt8__detail4_ModImLm624ELm1ELm0ELb1ELb1EE6__calcEm
	.type	_ZNSt8__detail4_ModImLm624ELm1ELm0ELb1ELb1EE6__calcEm, @function
_ZNSt8__detail4_ModImLm624ELm1ELm0ELb1ELb1EE6__calcEm:
.LFB7662:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rcx
	movq	%rcx, %rax
	shrq	$4, %rax
	movabsq	$945986875574848801, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	%rax
	imulq	$624, %rax, %rax
	subq	%rax, %rcx
	movq	%rcx, %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7662:
	.size	_ZNSt8__detail4_ModImLm624ELm1ELm0ELb1ELb1EE6__calcEm, .-_ZNSt8__detail4_ModImLm624ELm1ELm0ELb1ELb1EE6__calcEm
	.section	.text._ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,"axG",@progbits,_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv,comdat
	.align 2
	.weak	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.type	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, @function
_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv:
.LFB7663:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -72(%rbp)
	movq	$-2147483648, -40(%rbp)
	movq	$2147483647, -32(%rbp)
	movq	$0, -56(%rbp)
.L368:
	cmpq	$226, -56(%rbp)
	ja	.L365
	movq	-72(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	(%rax,%rdx,8), %rax
	andq	$-2147483648, %rax
	movq	%rax, %rcx
	movq	-56(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax,%rdx,8), %rax
	andl	$2147483647, %eax
	orq	%rcx, %rax
	movq	%rax, -24(%rbp)
	movq	-56(%rbp), %rax
	leaq	397(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax,%rdx,8), %rax
	movq	-24(%rbp), %rdx
	shrq	%rdx
	xorq	%rax, %rdx
	movq	-24(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L366
	movl	$2567483615, %eax
	jmp	.L367
.L366:
	movl	$0, %eax
.L367:
	movq	%rdx, %rcx
	xorq	%rax, %rcx
	movq	-72(%rbp), %rax
	movq	-56(%rbp), %rdx
	movq	%rcx, (%rax,%rdx,8)
	addq	$1, -56(%rbp)
	jmp	.L368
.L365:
	movq	$227, -48(%rbp)
.L372:
	cmpq	$622, -48(%rbp)
	ja	.L369
	movq	-72(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	(%rax,%rdx,8), %rax
	andq	$-2147483648, %rax
	movq	%rax, %rcx
	movq	-48(%rbp), %rax
	leaq	1(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax,%rdx,8), %rax
	andl	$2147483647, %eax
	orq	%rcx, %rax
	movq	%rax, -16(%rbp)
	movq	-48(%rbp), %rax
	leaq	-227(%rax), %rdx
	movq	-72(%rbp), %rax
	movq	(%rax,%rdx,8), %rax
	movq	-16(%rbp), %rdx
	shrq	%rdx
	xorq	%rax, %rdx
	movq	-16(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L370
	movl	$2567483615, %eax
	jmp	.L371
.L370:
	movl	$0, %eax
.L371:
	movq	%rdx, %rcx
	xorq	%rax, %rcx
	movq	-72(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rcx, (%rax,%rdx,8)
	addq	$1, -48(%rbp)
	jmp	.L372
.L369:
	movq	-72(%rbp), %rax
	movq	4984(%rax), %rax
	andq	$-2147483648, %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	andl	$2147483647, %eax
	orq	%rdx, %rax
	movq	%rax, -8(%rbp)
	movq	-72(%rbp), %rax
	movq	3168(%rax), %rax
	movq	-8(%rbp), %rdx
	shrq	%rdx
	xorq	%rax, %rdx
	movq	-8(%rbp), %rax
	andl	$1, %eax
	testq	%rax, %rax
	je	.L373
	movl	$2567483615, %eax
	jmp	.L374
.L373:
	movl	$0, %eax
.L374:
	xorq	%rax, %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, 4984(%rax)
	movq	-72(%rbp), %rax
	movq	$0, 4992(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7663:
	.size	_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv, .-_ZNSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE11_M_gen_randEv
	.section	.text._ZN9__gnu_cxx13new_allocatorItEC2ERKS1_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorItEC5ERKS1_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorItEC2ERKS1_
	.type	_ZN9__gnu_cxx13new_allocatorItEC2ERKS1_, @function
_ZN9__gnu_cxx13new_allocatorItEC2ERKS1_:
.LFB7665:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7665:
	.size	_ZN9__gnu_cxx13new_allocatorItEC2ERKS1_, .-_ZN9__gnu_cxx13new_allocatorItEC2ERKS1_
	.weak	_ZN9__gnu_cxx13new_allocatorItEC1ERKS1_
	.set	_ZN9__gnu_cxx13new_allocatorItEC1ERKS1_,_ZN9__gnu_cxx13new_allocatorItEC2ERKS1_
	.section	.text._ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEPtEET0_T_SC_SB_,"axG",@progbits,_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEPtEET0_T_SC_SB_,comdat
	.weak	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEPtEET0_T_SC_SB_
	.type	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEPtEET0_T_SC_SB_, @function
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEPtEET0_T_SC_SB_:
.LFB7667:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEPtET0_T_SA_S9_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7667:
	.size	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEPtEET0_T_SC_SB_, .-_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEPtEET0_T_SC_SB_
	.section	.text._ZN9__gnu_cxx13new_allocatorItEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorItEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorItEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorItEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorItEC2Ev:
.LFB7701:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7701:
	.size	_ZN9__gnu_cxx13new_allocatorItEC2Ev, .-_ZN9__gnu_cxx13new_allocatorItEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorItEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorItEC1Ev,_ZN9__gnu_cxx13new_allocatorItEC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorItE10deallocateEPtm,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorItE10deallocateEPtm,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorItE10deallocateEPtm
	.type	_ZN9__gnu_cxx13new_allocatorItE10deallocateEPtm, @function
_ZN9__gnu_cxx13new_allocatorItE10deallocateEPtm:
.LFB7703:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdlPv
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7703:
	.size	_ZN9__gnu_cxx13new_allocatorItE10deallocateEPtm, .-_ZN9__gnu_cxx13new_allocatorItE10deallocateEPtm
	.section	.text._ZNSt16allocator_traitsISaItEE8max_sizeERKS0_,"axG",@progbits,_ZNSt16allocator_traitsISaItEE8max_sizeERKS0_,comdat
	.weak	_ZNSt16allocator_traitsISaItEE8max_sizeERKS0_
	.type	_ZNSt16allocator_traitsISaItEE8max_sizeERKS0_, @function
_ZNSt16allocator_traitsISaItEE8max_sizeERKS0_:
.LFB7707:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorItE8max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7707:
	.size	_ZNSt16allocator_traitsISaItEE8max_sizeERKS0_, .-_ZNSt16allocator_traitsISaItEE8max_sizeERKS0_
	.section	.text._ZN9__gnu_cxx13new_allocatorItE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorItE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorItE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorItE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorItE8allocateEmPKv:
.LFB7708:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorItE8max_sizeEv
	cmpq	-16(%rbp), %rax
	setb	%al
	testb	%al, %al
	je	.L383
	call	_ZSt17__throw_bad_allocv
.L383:
	movq	-16(%rbp), %rax
	addq	%rax, %rax
	movq	%rax, %rdi
	call	_Znwm
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7708:
	.size	_ZN9__gnu_cxx13new_allocatorItE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorItE8allocateEmPKv
	.section	.text._ZNSt13move_iteratorIPtEC2ES0_,"axG",@progbits,_ZNSt13move_iteratorIPtEC5ES0_,comdat
	.align 2
	.weak	_ZNSt13move_iteratorIPtEC2ES0_
	.type	_ZNSt13move_iteratorIPtEC2ES0_, @function
_ZNSt13move_iteratorIPtEC2ES0_:
.LFB7710:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7710:
	.size	_ZNSt13move_iteratorIPtEC2ES0_, .-_ZNSt13move_iteratorIPtEC2ES0_
	.weak	_ZNSt13move_iteratorIPtEC1ES0_
	.set	_ZNSt13move_iteratorIPtEC1ES0_,_ZNSt13move_iteratorIPtEC2ES0_
	.section	.text._ZSt18uninitialized_copyISt13move_iteratorIPtES1_ET0_T_S4_S3_,"axG",@progbits,_ZSt18uninitialized_copyISt13move_iteratorIPtES1_ET0_T_S4_S3_,comdat
	.weak	_ZSt18uninitialized_copyISt13move_iteratorIPtES1_ET0_T_S4_S3_
	.type	_ZSt18uninitialized_copyISt13move_iteratorIPtES1_ET0_T_S4_S3_, @function
_ZSt18uninitialized_copyISt13move_iteratorIPtES1_ET0_T_S4_S3_:
.LFB7712:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -32(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movb	$1, -1(%rbp)
	movq	-40(%rbp), %rdx
	movq	-48(%rbp), %rcx
	movq	-32(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPtES3_EET0_T_S6_S5_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7712:
	.size	_ZSt18uninitialized_copyISt13move_iteratorIPtES1_ET0_T_S4_S3_, .-_ZSt18uninitialized_copyISt13move_iteratorIPtES1_ET0_T_S4_S3_
	.section	.text._ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEPtET0_T_SA_S9_,"axG",@progbits,_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEPtET0_T_SA_S9_,comdat
	.weak	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEPtET0_T_SA_S9_
	.type	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEPtET0_T_SA_S9_, @function
_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEPtET0_T_SA_S9_:
.LFB7713:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEENSt11_Miter_baseIT_E13iterator_typeES9_
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEENSt11_Miter_baseIT_E13iterator_typeES9_
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEPtET1_T0_SA_S9_
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7713:
	.size	_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEPtET0_T_SA_S9_, .-_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEPtET0_T_SA_S9_
	.section	.text._ZNK9__gnu_cxx13new_allocatorItE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorItE8max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorItE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorItE8max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorItE8max_sizeEv:
.LFB7740:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movabsq	$9223372036854775807, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7740:
	.size	_ZNK9__gnu_cxx13new_allocatorItE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorItE8max_sizeEv
	.section	.text._ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPtES3_EET0_T_S6_S5_,"axG",@progbits,_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPtES3_EET0_T_S6_S5_,comdat
	.weak	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPtES3_EET0_T_S6_S5_
	.type	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPtES3_EET0_T_S6_S5_, @function
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPtES3_EET0_T_S6_S5_:
.LFB7741:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-16(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt4copyISt13move_iteratorIPtES1_ET0_T_S4_S3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7741:
	.size	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPtES3_EET0_T_S6_S5_, .-_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPtES3_EET0_T_S6_S5_
	.section	.text._ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEENSt11_Miter_baseIT_E13iterator_typeES9_,"axG",@progbits,_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEENSt11_Miter_baseIT_E13iterator_typeES9_,comdat
	.weak	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEENSt11_Miter_baseIT_E13iterator_typeES9_
	.type	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEENSt11_Miter_baseIT_E13iterator_typeES9_, @function
_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEENSt11_Miter_baseIT_E13iterator_typeES9_:
.LFB7742:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEELb0EE7_S_baseES7_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7742:
	.size	_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEENSt11_Miter_baseIT_E13iterator_typeES9_, .-_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEENSt11_Miter_baseIT_E13iterator_typeES9_
	.section	.text._ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEPtET1_T0_SA_S9_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEPtET1_T0_SA_S9_,comdat
	.weak	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEPtET1_T0_SA_S9_
	.type	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEPtET1_T0_SA_S9_, @function
_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEPtET1_T0_SA_S9_:
.LFB7743:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -32(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPtENSt11_Niter_baseIT_E13iterator_typeES2_
	movq	%rax, %r12
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEENSt11_Niter_baseIT_E13iterator_typeES9_
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEENSt11_Niter_baseIT_E13iterator_typeES9_
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7743:
	.size	_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEPtET1_T0_SA_S9_, .-_ZSt14__copy_move_a2ILb0EN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEPtET1_T0_SA_S9_
	.section	.text._ZSt4copyISt13move_iteratorIPtES1_ET0_T_S4_S3_,"axG",@progbits,_ZSt4copyISt13move_iteratorIPtES1_ET0_T_S4_S3_,comdat
	.weak	_ZSt4copyISt13move_iteratorIPtES1_ET0_T_S4_S3_
	.type	_ZSt4copyISt13move_iteratorIPtES1_ET0_T_S4_S3_, @function
_ZSt4copyISt13move_iteratorIPtES1_ET0_T_S4_S3_:
.LFB7752:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -32(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseISt13move_iteratorIPtEENSt11_Miter_baseIT_E13iterator_typeES4_
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseISt13move_iteratorIPtEENSt11_Miter_baseIT_E13iterator_typeES4_
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	_ZSt14__copy_move_a2ILb1EPtS0_ET1_T0_S2_S1_
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7752:
	.size	_ZSt4copyISt13move_iteratorIPtES1_ET0_T_S4_S3_, .-_ZSt4copyISt13move_iteratorIPtES1_ET0_T_S4_S3_
	.section	.text._ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEELb0EE7_S_baseES7_,"axG",@progbits,_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEELb0EE7_S_baseES7_,comdat
	.weak	_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEELb0EE7_S_baseES7_
	.type	_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEELb0EE7_S_baseES7_, @function
_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEELb0EE7_S_baseES7_:
.LFB7753:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7753:
	.size	_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEELb0EE7_S_baseES7_, .-_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEELb0EE7_S_baseES7_
	.section	.text._ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEENSt11_Niter_baseIT_E13iterator_typeES9_,"axG",@progbits,_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEENSt11_Niter_baseIT_E13iterator_typeES9_,comdat
	.weak	_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEENSt11_Niter_baseIT_E13iterator_typeES9_
	.type	_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEENSt11_Niter_baseIT_E13iterator_typeES9_, @function
_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEENSt11_Niter_baseIT_E13iterator_typeES9_:
.LFB7754:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEELb1EE7_S_baseES7_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7754:
	.size	_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEENSt11_Niter_baseIT_E13iterator_typeES9_, .-_ZSt12__niter_baseIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEEENSt11_Niter_baseIT_E13iterator_typeES9_
	.section	.text._ZSt12__niter_baseIPtENSt11_Niter_baseIT_E13iterator_typeES2_,"axG",@progbits,_ZSt12__niter_baseIPtENSt11_Niter_baseIT_E13iterator_typeES2_,comdat
	.weak	_ZSt12__niter_baseIPtENSt11_Niter_baseIT_E13iterator_typeES2_
	.type	_ZSt12__niter_baseIPtENSt11_Niter_baseIT_E13iterator_typeES2_, @function
_ZSt12__niter_baseIPtENSt11_Niter_baseIT_E13iterator_typeES2_:
.LFB7755:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10_Iter_baseIPtLb0EE7_S_baseES0_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7755:
	.size	_ZSt12__niter_baseIPtENSt11_Niter_baseIT_E13iterator_typeES2_, .-_ZSt12__niter_baseIPtENSt11_Niter_baseIT_E13iterator_typeES2_
	.section	.text._ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_,"axG",@progbits,_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_,comdat
	.weak	_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_
	.type	_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, @function
_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_:
.LFB7756:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movb	$1, -1(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7756:
	.size	_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, .-_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_
	.section	.text._ZSt12__miter_baseISt13move_iteratorIPtEENSt11_Miter_baseIT_E13iterator_typeES4_,"axG",@progbits,_ZSt12__miter_baseISt13move_iteratorIPtEENSt11_Miter_baseIT_E13iterator_typeES4_,comdat
	.weak	_ZSt12__miter_baseISt13move_iteratorIPtEENSt11_Miter_baseIT_E13iterator_typeES4_
	.type	_ZSt12__miter_baseISt13move_iteratorIPtEENSt11_Miter_baseIT_E13iterator_typeES4_, @function
_ZSt12__miter_baseISt13move_iteratorIPtEENSt11_Miter_baseIT_E13iterator_typeES4_:
.LFB7759:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt10_Iter_baseISt13move_iteratorIPtELb1EE7_S_baseES2_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7759:
	.size	_ZSt12__miter_baseISt13move_iteratorIPtEENSt11_Miter_baseIT_E13iterator_typeES4_, .-_ZSt12__miter_baseISt13move_iteratorIPtEENSt11_Miter_baseIT_E13iterator_typeES4_
	.section	.text._ZSt14__copy_move_a2ILb1EPtS0_ET1_T0_S2_S1_,"axG",@progbits,_ZSt14__copy_move_a2ILb1EPtS0_ET1_T0_S2_S1_,comdat
	.weak	_ZSt14__copy_move_a2ILb1EPtS0_ET1_T0_S2_S1_
	.type	_ZSt14__copy_move_a2ILb1EPtS0_ET1_T0_S2_S1_, @function
_ZSt14__copy_move_a2ILb1EPtS0_ET1_T0_S2_S1_:
.LFB7760:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPtENSt11_Niter_baseIT_E13iterator_typeES2_
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPtENSt11_Niter_baseIT_E13iterator_typeES2_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPtENSt11_Niter_baseIT_E13iterator_typeES2_
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt13__copy_move_aILb1EPtS0_ET1_T0_S2_S1_
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7760:
	.size	_ZSt14__copy_move_a2ILb1EPtS0_ET1_T0_S2_S1_, .-_ZSt14__copy_move_a2ILb1EPtS0_ET1_T0_S2_S1_
	.section	.text._ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEELb1EE7_S_baseES7_,"axG",@progbits,_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEELb1EE7_S_baseES7_,comdat
	.weak	_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEELb1EE7_S_baseES7_
	.type	_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEELb1EE7_S_baseES7_, @function
_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEELb1EE7_S_baseES7_:
.LFB7761:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEE4baseEv
	movq	(%rax), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7761:
	.size	_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEELb1EE7_S_baseES7_, .-_ZNSt10_Iter_baseIN9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEEELb1EE7_S_baseES7_
	.section	.text._ZNSt10_Iter_baseIPtLb0EE7_S_baseES0_,"axG",@progbits,_ZNSt10_Iter_baseIPtLb0EE7_S_baseES0_,comdat
	.weak	_ZNSt10_Iter_baseIPtLb0EE7_S_baseES0_
	.type	_ZNSt10_Iter_baseIPtLb0EE7_S_baseES0_, @function
_ZNSt10_Iter_baseIPtLb0EE7_S_baseES0_:
.LFB7762:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7762:
	.size	_ZNSt10_Iter_baseIPtLb0EE7_S_baseES0_, .-_ZNSt10_Iter_baseIPtLb0EE7_S_baseES0_
	.section	.text._ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_,comdat
	.weak	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_
	.type	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_, @function
_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_:
.LFB7763:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	%rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L417
	movq	-8(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove
.L417:
	movq	-8(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7763:
	.size	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_, .-_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_
	.section	.text._ZNSt10_Iter_baseISt13move_iteratorIPtELb1EE7_S_baseES2_,"axG",@progbits,_ZNSt10_Iter_baseISt13move_iteratorIPtELb1EE7_S_baseES2_,comdat
	.weak	_ZNSt10_Iter_baseISt13move_iteratorIPtELb1EE7_S_baseES2_
	.type	_ZNSt10_Iter_baseISt13move_iteratorIPtELb1EE7_S_baseES2_, @function
_ZNSt10_Iter_baseISt13move_iteratorIPtELb1EE7_S_baseES2_:
.LFB7764:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt13move_iteratorIPtE4baseEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7764:
	.size	_ZNSt10_Iter_baseISt13move_iteratorIPtELb1EE7_S_baseES2_, .-_ZNSt10_Iter_baseISt13move_iteratorIPtELb1EE7_S_baseES2_
	.section	.text._ZSt13__copy_move_aILb1EPtS0_ET1_T0_S2_S1_,"axG",@progbits,_ZSt13__copy_move_aILb1EPtS0_ET1_T0_S2_S1_,comdat
	.weak	_ZSt13__copy_move_aILb1EPtS0_ET1_T0_S2_S1_
	.type	_ZSt13__copy_move_aILb1EPtS0_ET1_T0_S2_S1_, @function
_ZSt13__copy_move_aILb1EPtS0_ET1_T0_S2_S1_:
.LFB7765:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movb	$1, -1(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7765:
	.size	_ZSt13__copy_move_aILb1EPtS0_ET1_T0_S2_S1_, .-_ZSt13__copy_move_aILb1EPtS0_ET1_T0_S2_S1_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEE4baseEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEE4baseEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEE4baseEv:
.LFB7766:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7766:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPKtSt6vectorItSaItEEE4baseEv
	.section	.text._ZNKSt13move_iteratorIPtE4baseEv,"axG",@progbits,_ZNKSt13move_iteratorIPtE4baseEv,comdat
	.align 2
	.weak	_ZNKSt13move_iteratorIPtE4baseEv
	.type	_ZNKSt13move_iteratorIPtE4baseEv, @function
_ZNKSt13move_iteratorIPtE4baseEv:
.LFB7767:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7767:
	.size	_ZNKSt13move_iteratorIPtE4baseEv, .-_ZNKSt13move_iteratorIPtE4baseEv
	.section	.text._ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_,"axG",@progbits,_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_,comdat
	.weak	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_
	.type	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_, @function
_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_:
.LFB7768:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	subq	%rax, %rdx
	movq	%rdx, %rax
	sarq	%rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L428
	movq	-8(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove
.L428:
	movq	-8(%rbp), %rax
	leaq	(%rax,%rax), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7768:
	.size	_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_, .-_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB7769:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L432
	cmpl	$65535, -8(%rbp)
	jne	.L432
	movl	$_ZStL8__ioinit, %edi
	call	_ZNSt8ios_base4InitC1Ev
	movl	$__dso_handle, %edx
	movl	$_ZStL8__ioinit, %esi
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	call	__cxa_atexit
.L432:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7769:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I__ZN3FFT5four1EPfmi, @function
_GLOBAL__sub_I__ZN3FFT5four1EPfmi:
.LFB7770:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7770:
	.size	_GLOBAL__sub_I__ZN3FFT5four1EPfmi, .-_GLOBAL__sub_I__ZN3FFT5four1EPfmi
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__ZN3FFT5four1EPfmi
	.section	.rodata
	.align 8
.LC0:
	.long	1413754140
	.long	1075388923
	.align 8
.LC1:
	.long	0
	.long	1071644672
	.align 8
.LC2:
	.long	0
	.long	-1073741824
	.align 8
.LC3:
	.long	0
	.long	1072693248
	.align 8
.LC14:
	.long	0
	.long	1074266112
	.align 8
.LC15:
	.long	0
	.long	1104006501
	.align 8
.LC16:
	.long	0
	.long	1093567616
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
