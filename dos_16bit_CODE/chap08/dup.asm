assume cs:code, ds:data

data segment 
    db 3 dup ('abc', 'ABC')
    db 3 dup (0,1,2)
data ends

code segment
    start:
    mov ax, 4c00h
    int 21h
code ends


end
