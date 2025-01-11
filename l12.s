section .data

section .text
global _start

_start:
    mov eax, 3
    mov ebx, 2

    cmp eax, ebx 
    ; cmp subtracts eax - ebx and uses the result to set the EFLAGS
    ; eax - ebx > 0 : so (eax > ebx) : so by looking at the sign of the subtraction
    ; we can determine a comparision between the values of eax and ebx.
    ; This is just an idea, actually a bit different since it needs to accomodate for negative numbers as well
    ; overall it is used in conjuction with the jump instructions

    ; jl (jump less than), (See Extra/jumps.pdf for different kinds of conditional and unconditional jump instr.)
    ; je, jne, jg, jl, jle, jge, jz, jnz
    jl lesser
    jmp exit

lesser:
    mov ecx, 1

end:
    mov eax, 1
    mov ebx, 1
    int 0x8
        
    ; cmp automatically handles negative logic since we use 2s complement number system