section .data

section .text
global _start

_start:
    mov eax, 5
    mov ebx, 3
    sub eax, ebx ; eax = eax - ebx
    ; eax = 2

    ; if we do 3 - 5,
    ; we will get eax = 0xfffffffe = -2 (in 2s complement number system)
    ; And 2 flags will get set:
        ; CF: Carry Flag is for both addition carry and subtraction borrow
        ; SF: Sign Flag is set when output is negative, this tells gdb its actually -2 and not a very large number

    ; Since we are using 2s complement number system,
    ; adding eax with a register containing 2 will result in 0.

    ; No special treatment is required, everything works as expected in subtraction
    