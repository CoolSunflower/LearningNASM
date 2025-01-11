extern test
extern exit

section .data
    a dd 0x00000004
    b dd 0x00000005

section .text
global main

main:
    ; test(a, b)
    ; Notice how you push data on stack that is stored in the data section
    ; you cannot do push b or push [b]
    mov eax, [b]    
    push eax
    mov eax, [a]
    push eax
    call test

    push eax ; Return value put in eax register
    call exit

    ; Run: nasm -felf32 l17.s && gcc -no-pie -m32 -z noexecstack l17.o l17.c && ./a.out && echo $?
