extern printf
section .data
    number1 dq 9.0
    number2 dq 73.0
    fmt db "The numbers are %f and %f", 0xa, 0
    fmtfloat db "%s %f", 0xa, 0
    f_sum db "The float sum of %f and %f is  %f", 0xa, 0
    f_dif db "The float difference of %f and %f is  %f", 0xa, 0
    f_mul db "The float product of %f and %f is  %f", 0xa, 0
    f_div db "The float division of %f and %f is  %f", 0xa, 0
    f_sqrt db "The float squareroot of %f is  %f", 0xa, 0

section .bss
section .text
    global main
main:
    push rbp
    mov rbp, rsp
    ;;print 
    movsd xmm0, [number1]
    movsd xmm1, [number2]
    mov rdi, fmt
    mov rax, 2 ;; two float numbers
    call printf
    ;;sum 
    movsd xmm2, [number1]
    addsd xmm2, [number2]
    ;; print result
    movsd xmm0, [number1]
    movsd xmm1, [number2]
    mov rdi, f_sum
    mov rax, 3 ;; 3 float numbers
    call printf

    ;; difference
    movsd xmm2, [number1]
    subsd xmm2, [number2]
    ;;
    movsd xmm0, [number1]
    movsd xmm1, [number2]
    mov rdi, f_dif
    mov rax, 3 ;; 3 float numbers
    call printf

    ;; product
    movsd xmm2, [number1]
    mulsd xmm2, [number2]
    ;;
    movsd xmm0, [number1]
    movsd xmm1, [number2]
    mov rdi, f_mul
    mov rax, 3 ;; 3 float numbers
    call printf


    ;; div
    movsd xmm2, [number1]
    divsd xmm2, [number2]
    ;;
    movsd xmm0, [number1]
    movsd xmm1, [number2]
    mov rdi, f_div
    mov rax, 3 ;; 3 float numbers
    call printf

    ;; sqrt
    sqrtsd xmm1, [number1]
    ;;
    movsd xmm0, [number1]
    mov rdi, f_sqrt
    mov rax, 2 ;; 2 float numbers
    call printf

    mov rsp, rbp
    pop rbp
    ret


    
