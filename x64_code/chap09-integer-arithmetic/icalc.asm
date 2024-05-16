extern printf
section .data
    number1 dq 128
    number2 dq  19
    neg_num dq -12
    fmt     db "The numbers are %ld and %ld", 10, 0
    fmtint  db "%s %ld", 10, 0
    sumi    db "The sum is", 0
    difi    db "The difference is ", 0
    inci    db "Number 1 Incremented:", 0
    deci    db "Number 1 Decremented:", 0
    sali    db "Number 1 Shift left 2(x4):", 0
    sari    db "Number 1 Shift right 2(/4):", 0
    sariex  db "Number 1 Shift right 2(/4) with "
            db "sign extension:", 0
    multi   db "The product is:", 0
    divi    db "The integer quotient is", 0
    remi    db "The modulo is :", 0

section .bss
    resulti resq 1
    modulo resq 1

section .text
    global main
main:
    push rbp
    mov rbp, rsp

    ;show number
    mov rdi, fmt
    mov rsi, [number1]
    mov rdx, [number2]
    mov rax, 0
    call printf
    
    ;; add:
    mov rax, [number1]
    add rax, [number2]
    mov [resulti], rax
    ; show result 
    mov rdi, fmtint
    mov rsi, sumi
    mov rdx, [resulti]
    mov rax, 0
    call printf

    ;; subtraction
    mov rax, [number1]
    sub rax, [number2]
    mov [resulti], rax
    ; show result 
    mov rdi, fmtint
    mov rsi, difi
    mov rdx, [resulti]
    mov rax, 0
    call printf

    ;; increment
    mov rax, [number1]
    inc rax
    mov [resulti], rax
    ; show result 
    mov rdi, fmtint
    mov rsi, inci
    mov rdx, [resulti]
    mov rax, 0
    call printf

    ;; decrement
    mov rax, [number1]
    dec rax
    mov [resulti], rax
    ; show result 
    mov rdi, fmtint
    mov rsi, deci
    mov rdx, [resulti]
    mov rax, 0
    call printf

    ;; shift left
    mov rax, [number1]
    sal rax, 2
    mov [resulti], rax
    ; show result 
    mov rdi, fmtint
    mov rsi, sali
    mov rdx, [resulti]
    mov rax, 0
    call printf

    ;; shift right 
    mov rax, [number1]
    sar rax, 2
    mov [resulti], rax
    ; show result 
    mov rdi, fmtint
    mov rsi, sari
    mov rdx, [resulti]
    mov rax, 0
    call printf

    ;; shift right with sign symbol extension
    mov rax, [neg_num]
    sar rax, 2
    mov [resulti], rax
    ; show result 
    mov rdi, fmtint
    mov rsi, sariex
    mov rdx, [resulti]
    mov rax, 0
    call printf


    ;; multiplication
    mov rax, [number1]
    imul qword [number2]
    mov [resulti], rax
    ; show result 
    mov rdi, fmtint
    mov rsi, multi
    mov rdx, [resulti]
    mov rax, 0
    call printf


    ;; division
    mov rax, [number1]
    mov rdx, 0
    idiv qword [number2]
    mov [resulti], rax
    mov [modulo], rdx
    ; show result 
    mov rdi, fmtint
    mov rsi, divi
    mov rdx, [resulti]
    mov rax, 0
    call printf

    mov rdi, fmtint
    mov rsi, remi
    mov rdx, [modulo]
    mov rax, 0
    call printf


    mov rsp, rbp
    pop rbp
    ret
