assume cs:code 
code segment 

    mov ax, cs ;1
    mov ds, ax
    mov ax, 20h
    mov es, ax
    mov bx, 0h
    mov cx, 17h ;2

    s:
    mov al, [bx]
    mov es:[bx], al
    inc bx
    loop s

    mov ax, 4c00h
    int 21h

code ends
end
