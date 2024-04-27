assume cs:code

code segment 
    s:
    mov ax, bx ;2bytes
    mov si, offset s
    mov di, offset s0
    mov dx, cs:[si];;
    mov cs:[di], dx;;
    s0:
    nop
    nop
code ends
end s
