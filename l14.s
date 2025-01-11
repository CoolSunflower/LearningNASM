section .data
    ; floating point are 32 bits so using dd
    x dd 3.14
    y dd 2.1

section .text
global _start

_start:
    ; mov scalar single-precision (move a single 32 bit floating point number)
    ; use xmm registers instead of the general purpose ones xmm0 --> xmm15
    movss xmm0, [x]
    ; to see the value in gdb: p $xmm0.v4_float[0]
    movss xmm1, [y]
    addss xmm0, xmm1 ; xmm0 = xmm0 + xmm1
    ; doing this has a LOT of imprecision because of IEEE!
    ; checking equality is now (a - b) < epsilon = 0.00001

    mov eax, 1
    mov ebx, 1
    int 0x80
