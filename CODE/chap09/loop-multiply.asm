assume cs:code

code segment 
    mov ax, 0
    mov cx, 236

mul:
    add ax, 123
    loop mul


    mov ax, 4c00h
    int 21h
code ends 
end
