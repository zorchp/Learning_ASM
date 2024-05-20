extern printb
extern printf

section .data
	msg1 db "No bits are set:", 10, 0
	msg2 db 10, "Set bit #4, that is the 5th bit:", 10, 0
	msg3 db 10, "Set bit #7, that is the 8th bit:", 10, 0
	msg4 db 10, "Set bit #8, that is the 9th bit:", 10, 0
	msg5 db 10, "Set bit #61, that is the 62nd bit:", 10, 0
	msg6 db 10, "Clear bit #8, that is the 9th bit:", 10, 0
	msg7 db 10, "Test bit #61, and display rdi:", 10, 0
	bitflags dq 0

section .bss
section .text
	global main

main:
	push rbp 
	mov rbp, rsp

	;print title
	mov rdi, msg1
	xor rax, rax
	call printf

	;print bitflags
	mov rdi, [bitflags]
	call printb

	;set bit 4 (the 5th)
	mov rdi, msg2
	xor rax, rax
	call printf

	bts qword [bitflags], 4 
	mov rdi, [bitflags]
	call printb

	;set bit7
	mov rdi, msg3
	xor rax, rax
	call printf

	bts qword [bitflags], 7
	mov rdi, [bitflags]
	call printb

	;set bit8
	mov rdi, msg4
	xor rax, rax
	call printf

	bts qword [bitflags], 8
	mov rdi, [bitflags]
	call printb

	;set bit61
	mov rdi, msg5
	xor rax, rax
	call printf

	bts qword [bitflags], 61
	mov rdi, [bitflags]
	call printb

	;clear bit8
	mov rdi, msg6
	xor rax, rax
	call printf

	btr qword [bitflags], 8
	mov rdi, [bitflags]
	call printb

	;test bit61
	mov rdi, msg7
	xor rax, rax
	call printf
	xor rdi, rdi
	mov rax, 61
	xor rdi, rdi
	bt [bitflags], rax
	setc dil
	call printb


	leave 
	ret

