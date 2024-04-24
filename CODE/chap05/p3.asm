assume cs:code

code segment

    mov ax, 0ffffh
    mov ds, ax
    mov al, ds:[0006h]
    ; al=06, [0006h] as idata
    ; mov al, [0006h]
    mov ah, 0h
    mov cx, 3h
    mov dx, 0h

    s: add dx, ax
    loop s

    mov ax, 4c00h
    int 21h

code ends
end
