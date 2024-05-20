extern printf
section .data
    radius dq 10.0

section .bss
section .text
    global main

area:
section .data
    .pi dq 3.1415926535 ;; local varible of circum
section .text
    push rbp 
    mov rbp, rsp
    movsd xmm0, [radius]
    mulsd xmm0, [radius]
    mulsd xmm0, [.pi]
    leave
    ret
    

circum:
section .data
    .pi dq 3.14 ;; local varible of circum
section .text
    push rbp
    mov rbp, rsp
    movsd xmm0, [radius]
    addsd xmm0, [radius]
    mulsd xmm0, [.pi]
    leave
    ret

circle:
section .data
    .fmt_area db "The area is %.2f", 10, 0
    .fmt_circum db "The circumference is %.2f", 10, 0
section .text
    push rbp
    mov rbp, rsp
    call area
    mov rdi, .fmt_area
    mov rax, 1 ;; area is in xmm0
    call printf
    call circum 
    mov rdi, .fmt_circum
    mov rax, 1
    call printf
    leave 
    ret


main:
    push rbp 
    mov rbp, rsp
    call circle
    leave 
    ret
