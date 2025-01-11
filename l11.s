section .text
global _start

_start:
    mov eax, 2
    shr eax, 1 ; 0010 --> 0001 and the last bit (in this case 0) goes into the carry flag
    ; shr with 1 is equivalent to dividing by 2 and remainder goes into the carry flag!
    shl eax, 2 ; 0001 --> 0100 
    ; shl with 1 is equivalent to multiplying by 2
    ; sal (shift arithmetic left) and sar (shift arithmetic right) preserve the sign bit