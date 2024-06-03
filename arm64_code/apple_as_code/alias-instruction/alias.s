.text
.globl _main
_main:
    neg w0, w1
    ;; is equal to :
    sub w0, wzr, w1
    ret
