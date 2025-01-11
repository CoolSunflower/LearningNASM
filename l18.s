section .data

section .text
global main

addTwo:
    add eax, ebx
    ; ret just pops the value from the stack and sets it as the instruction pointer
    ; so you need to ensure you cleanup the stack always!
    ret

main:
    mov eax, 4
    mov ebx, 1
    ; call places on the stack the return address
    ; you can actually verify this by seeing the value at esp when addTwo begins execution
    ; you will find its exactly the address of instruction after call!
    call addTwo

    mov ebx, eax
    mov eax, 1
    int 0x80