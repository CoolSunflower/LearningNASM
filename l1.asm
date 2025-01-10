; nasm is a syntax based on intel syntax for x86

section .data
; Stores Variables

section .text
; Actual Code of Program
global _start

_start:
    mov eax, 1
    mov ebx, 69
    int 80h  
