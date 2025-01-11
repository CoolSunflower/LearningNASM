; extern tells nasm that these functions will be linked later
extern printf
extern exit

section .data
    msg db "Hello World!", 0
    msg2 db "This is a test.", 0
    fmt db "Output is: %s %s", 0xA, 0

section .text
    global main

; We will use gcc when using std c library functions
main:
    ; we need to push the data on the stack!
    ; printf expects 2 arguments: fmt, arg and thus the order matters on the stack!
    ; so, we need first arg as fmt therefore it needs to be pushed last
    ; printf(fmt, msg, msg2)
    push msg2
    push msg
    push fmt
    call printf

    add esp, 2 ; 2 bytes of data was pushed on the stack

    push 1
    call exit

    ; Run: nasm -felf32 l16.s && gcc -no-pie -m32 -z noexecstack l16.o && ./a.out