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
	fmt db "The string is: %s", 0xa, 0

section .bss
	flist resb 11 ;; strlen +1 
section .text
	global main

main:
	push rbp
	mov rbp, rsp
	mov rdi, flist
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
	call lfunc
	; print
	mov rdi, fmt
	mov rsi, flist
	mov rax, 0
	call printf

	leave
	ret

lfunc:
	push rbp
	mov rbp, rsp
	xor rax, rax
	mov al, byte[rsi];; mov first arg to al
	mov [rdi], al ;; mov al to memory
	mov al, byte[rdx]
	mov [rdi+1], al
	mov al, byte[rcx]
	mov [rdi+2], al
	mov al, byte[r8]
	mov [rdi+3], al
	mov al, byte[r9]
	mov [rdi+4], al

	;; from stack
	push rbx ;; use rbx as tmp register
	xor rbx, rbx
	mov rax, qword [rbp+16]
	mov bl, byte[rax]
	mov [rdi+5], bl

	mov rax, qword [rbp+24]
	mov bl, byte[rax]
	mov [rdi+6], bl
	mov rax, qword [rbp+32]
	mov bl, byte[rax]
	mov [rdi+7], bl
	mov rax, qword [rbp+40]
	mov bl, byte[rax]
	mov [rdi+8], bl
	mov rax, qword [rbp+48]
	mov bl, byte[rax]
	mov [rdi+9], bl
	;; end zero
	mov bl, 0
	mov [rdi+10], bl

	pop rbx
	mov rsp, rbp
	pop rbp
	ret
