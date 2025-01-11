section .data
    x dd 3.14
    y dd 2.1

section .text
global _start

_start:
    movss xmm0, [x]
    movss xmm1, [y]

    ; cannot use cmp
    ucomiss xmm0, xmm1 
    ; works like cmp, and used to compare and set the flags based on the comparision

    ; JB, JBE, JA, JAE (different jumps used for floating point numbers!! (since it needs to use IEEE format)), JE, JNE
    ja greater
    jmp end

greater:
    mov ecx, 1

end:
    mov eax, 1
    mov ebx, 1
    int 0x80

    