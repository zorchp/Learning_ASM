assume cs:code

code segment 

    ; dw: define word
    dw 0123h, 0456h, 0789h, 0abch, 0defh, 0fedh, 0cbah, 0987h

    ;use start to mark the begining of code segment 
    ; cs:ip , ip neq 0
    start:
    mov bx, 0
    mov ax, 0

    mov cx, 8
    s:
    add ax, cs:[bx] ; read data (2bytes) from code segment head
    add bx, 2
    loop s

    mov ax, 4c00h
    int 21h

code ends 
end start
