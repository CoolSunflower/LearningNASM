section .data
    ; Name Type(db (declare byte) = 1 byte, dw (declare word) = 2 bytes, dd = 4 bytes, dq = 8 bytes, dt = 10 bytes) Value
    num dd 5 ; in the stack memory, 32 bits containing 5
    ; Note that num is the address in the stack!!!

section .text
global _start

_start:
    mov eax, 1
    mov ebx, [num] 
    int 80h   

