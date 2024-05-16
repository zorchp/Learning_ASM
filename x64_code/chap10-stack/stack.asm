extern printf
section .data
    strng   db  "ABCDE", 0
    strngLen   equ $ - strng -1 ; len of string (without the end zero)
    fmt1    db  "The original string: %s", 10, 0
    fmt2    db "The reversed string: %s", 10, 0

section .bss
section .text
    global main

main:
    push rbp
    mov rbp, rsp

    ;; print origin string
    mov rdi, fmt1
    mov rsi, strng
    mov rax, 0
    call printf

    ;; push to stack char-wise
    xor rax, rax ;; clear rax
    mov rbx, strng
    mov rcx, strngLen 
    mov r12, 0 ;; make r12 as pointer
    pushLoop:
        mov al, byte [rbx+r12] ;mov string to rax
        push rax
        inc r12
        loop pushLoop

    ;; pop 
    mov rbx, strng 
    mov rcx, strngLen
    mov r12, 0
    popLoop:
        pop rax
        mov byte [rbx+r12], al
        inc r12
        loop popLoop
        mov byte [rbx+r12], 0

    mov rdi, fmt2
    mov rsi, strng
    mov rax, 0
    call printf
    mov rsp, rbp
    pop rbp
    ret
