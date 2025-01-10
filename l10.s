section .text
global _start

_start:
    mov eax, 0b1010
    mov ebx, 0b1100
    and eax, ebx ; eax = eax & ebx (bitwise)

    mov eax, 0b1010
    mov ebx, 0b1100
    or eax, ebx ; eax = eax | ebx (bitwise)

    not eax ; eax = ~eax (bitwise)

    int 0x80

    ; Problem with this is that Not will flip all the bits even beyond what we care
    ; You can do this but forcing the first however many bits you want to 0 by taking an and
    ; mov eax, 0b1010
    ; not eax
    ; and eax, 0x0000000F ; everything forced to 0 except last 4 bits (equivalent to and eax, 0xF)
    ; This is called Masking!

    ; xor eax, ebx