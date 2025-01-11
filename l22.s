; Creating and writing to files

section .data 
    pathname dd "test.txt", 0
    toWrite dd "Hi My name is Adarsh!", 0xA
    toWriteLen equ $ - toWrite

section .text
global _start

_start:
    ; open system call but with the following flags: Create and Write
    mov eax, 5
    mov ebx, pathname
    ; flags
    mov ecx, 101o ; octal value or'd
    ; permission flags
    mov edx, 700o
    int 80h

    ; write
    mov ebx, eax ; fd
    mov eax, 4
    mov ecx, toWrite
    mov edx, toWriteLen
    int 0x80

    ; exit
    mov eax, 1
    mov ebx, 0
    int 80h

