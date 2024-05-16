section .data
    msg db "hello, world" , 0 ;msg is just a symbol for locate
    ; msg db "hello, world" , 0xa, 0 ;or add 0xa to add newline, strlen  = 13
section .bss
section .text
    global main
main:
    mov rax, 1
    mov rdi, 1
    mov rsi, msg
    mov rdx, 12 ; len(string)

    syscall ; show string
    mov rax, 60
    mov rdi, 0
    syscall; exit
