extern printf 

section .data
	first db "A", 0
	second db "B", 0
	third db "C", 0
	fourth db "D", 0
	fifth db "E", 0
	sixth db "F", 0
	seventh db "G", 0
	eighth db "H", 0
	ninth db "I", 0
	tenth db "J", 0
	fmt1 db "The string is: %s%s%s%s%s%s%s%s%s%s", 0xa, 0
	fmt2 db "PI = %f", 0xa, 0
	pi dq 3.14

section .bss
section .text
	global main

main:
	push rbp
	mov rbp, rsp
	mov rdi, fmt1
	mov rsi, first
	mov rdx, second
	mov rcx, third
	mov r8, fourth
	mov r9, fifth

	push tenth
	push ninth
	push eighth
	push seventh
	push sixth

	mov rax, 0 ;; don t use xmm
	call printf
	;; for stack aligned
	;;and rsp, 0xfffffffffffffff0
	movsd xmm0, [pi]
	mov rax, 1
	mov rdi, fmt2
	call printf

	mov rsp, rbp
	pop rbp
	ret

