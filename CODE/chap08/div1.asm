assume cs:code

code segment
    start:
    mov ax, 1001
    mov bx, 100
    div bl

    mov ax, 4c00h
    int 21h

code ends
end start
