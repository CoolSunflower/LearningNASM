section .text
global _start

_start:
    mov eax, 11
    mov ecx, 2
    div ecx 
    int 80h

    ; eax --> quotient, edx --> remainder

    ; IDIV: Signed Division.