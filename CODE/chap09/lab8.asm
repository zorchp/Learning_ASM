assume cs:code
code segment 
    mov ax, 4c00h ;cs:0
    int 21h

    start: ; cs:5
    mov ax, 0
    s: ; cs:8
    nop; then be : jmp 0000,  which is EBF6
    nop ; F6 is -10, 
    ;;https://www.cnblogs.com/nojacky/p/9497660.html

    mov di, offset s
    mov si, offset s2
    mov ax, cs:[si]
    mov cs:[di], ax
    ; s2-> s, but jmp 0018 change to jmp 0000

    s0: ;cs:16
    jmp short s ;jmp 0008

    s1:;cs:18
    mov ax, 0
    int 21h
    mov ax, 0

    s2: 
    jmp short s1; jmp 0018
    nop
code ends
end start

