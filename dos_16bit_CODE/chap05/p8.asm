assume cs:code

code segment 

    mov ax, 0ffffh
    mov ds, ax

    mov ax, 20h
    mov es, ax

    mov cx, 0ch
    mov bx, 0h

    s: 
    mov al, ds:[bx]
    mov es:[bx], al

    inc bx
    loop s

    mov ax, 4c00h
    int 21h

code ends

end
