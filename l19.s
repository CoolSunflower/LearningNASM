; Passing data to functions on the stack
; This needs to be done because registers are few and precious

section .data
    num1 dd 1
    num2 dd 4

section .text
global main

addTwo:
    ; So my stack looks like: ReturnAddr. | num2 | num1 |
    ; Now there are 2 methods of getting these arguments:

    ; push ebp
    ; mov ebp, esp
    ; This method seperates the execution scope of functions
    ; ebp + 4 is return address, ebp + 8 is num2 and ebp + 12 is num1
    ; any pushing on the stack is only gonna change the esp now and have no effect on the ebp
    push ebp
    mov ebp, esp
    ; run x/4x $esp to understand more

    mov eax, [ebp + 8]
    mov ebx, [ebp + 12]
    add eax, ebx

    ; now to return
    ; we have just pushed ebp extra so just restore its value
    pop ebp
    ret

main:
    ; First load data into registers and into the stack
    mov eax, [num1]
    push eax

    mov eax, [num2]
    push eax

    call addTwo

    mov ebx, eax
    mov eax, 1
    int 0x80