两种类型的函数:
leaf : 仅执行一些命令, 然后返回到父函数而不必调用任何其他函数 , 可以忽略栈对齐
branch: 包含对其他函数的调用

原则上, 每次调用函数, 都需要构建一个栈帧(frame), 操作为:
1. 在被调用的函数中, 在 16 字节的边界上对齐栈, 即 push rbp
2. 将栈指针 rsp 保存到 rbp 中(mov rbp, rsp)  (intel syntax, <-)
3. 退出函数时, 还原 rsp 并弹出 rbp 以还原 rbp (mov rsp, rbp | pop rbp)

在函数内部, 寄存器 rbp 充当原始栈位置的锚点, 每当一个函数调用另一个函数时, 新函数应构建自己的栈帧. 


a function :
```asm
push rbp    ;;; -----------------|
mov rbp, rsp ;; ---|             |
                   |             |
; function         |=for build   |-> for stack
; content          |=stack frame |-> aligned
                   |             |
mov rsp, rbp ;; ---|             |
pop rbp     ;;; -----------------|
```
