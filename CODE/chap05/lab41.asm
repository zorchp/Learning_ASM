assume cs:code

code segment 
    
    mov ax, 20h
    mov ds, ax
    mov bx, 0h
    mov cx, 40h

    s:
    mov ds:[bx], bl
    ; why not :
    ; mov ds:[ax], al
    ; inc ax
    inc bx
    loop s

    mov ax, 4c00h
    int 21h

code ends

end
