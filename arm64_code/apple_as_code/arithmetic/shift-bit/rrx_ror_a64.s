.text
.globl _main

_main:
    mov x0, #14
    asr x1, x0, #3
    lsl x1, x0, #3
    lsr x1, x0, #3
    ror x1, x0, #3

    sbfm x1, x0, #3, #63
    ubfm x1, x0, #61, #60
    ubfm x1, x0, #3, #63
    extr x1, x0, x0, #3
