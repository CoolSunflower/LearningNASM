section .data
    num db 1
    num2 db 1

section .text
global _start

_start:
    mov ebx, [num]
    ; ebx will load 0x201 instead of 0x1 as expected! since ebx wants to load 32 bytes
    ; and in the memory the 1 values are only seperated by a byte
    ; so taking the base address of the first one also includes the second num2
    ; run x/x 0x804a000 to see this
    ; Change this to mov bl, [num] --> Get byte at this location
    ; This is a v. v. imp problem since memory in data is stored contigously!!
    ; running mov bl, [num] will only interpret it as moving 8 bits from num address
    ; so ebx and bl both will have values 1

    ; So in essence ALWAYS BE CAUTIOUS WITH MOV INSTRUCTION
    ; AS TO HOW MANY BITS TO BRING AND WHERE TO BRING!!
    mov ecx, [num2]
    mov eax, 1
    int 0x80