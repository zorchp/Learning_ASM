.text
.globl _main
_main:
    mov r0, #14

    ror r2, r0, #1
    mov r2, r0, RRX
    mov r2, r0, ROR #1
    rrx r2, r0
