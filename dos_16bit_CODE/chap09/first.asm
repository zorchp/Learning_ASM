; test.asm
assume cs:codesg    ; 设 cs 寄存器 与 codesg 段关联 (伪指令)

codesg segment      ; 段开始(伪指令)
    mov ax,0123H
    mov bx,0456H
    add ax,bx
    add ax,ax

    mov ax,4c00H    ; 退出程序指令，规定要写
    int 21H
codesg ends         ; codesg 段结束
end                 ; 汇编代码结束(伪指令)
