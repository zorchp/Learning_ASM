assume cs:code, ds:data

data segment 
    db 'welcome to masm!'
    db '................'
data ends

code segment 
    start:
    mov ax, data
    mov ds, ax

    mov cx, 8
    mov bx, 0
    s:
    mov dx, [bx]
    mov 16[bx], dx
    inc bx
    inc bx
    loop s

    mov ax, 4c00h
    int 21h

code ends

end start
