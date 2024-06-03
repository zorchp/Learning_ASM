.text
.p2align 2
.globl _main

_main:
    mov x0, #1
    adr x1, mystr
    ldr x2, len
    mov x8, #64
    svc #0
    mov x0, #0
    ret

; _exit:
;     mov x0, #0
;     ; mov x8, #93
;     ; svc #0
;     ret

mystr:
    .ascii "Hi\n"
    .p2align 2

len:
    .word 4
