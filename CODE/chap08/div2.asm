assume cs:code, ds:data
data segment 
    dd 100001 ;32bits
    dw 100 ;16bits
    dw 0 ;16bits
data ends

code segment
    start:
    mov ax, data
    mov ds, ax
    mov ax, ds:[0]
    mov dx, ds:[2]
    div word ptr ds:[4]
    mov ds:[6], ax

    mov ax, 4c00h
    int 21h

code ends
end start
