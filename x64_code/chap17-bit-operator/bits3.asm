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





	leave 
	ret

