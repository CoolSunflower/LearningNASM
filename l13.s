section .data
    list db 1, 2, 3, 4

section .text
global _start

_start:
    mov eax, 0 ; for iterating through the array
    mov cl, 0 ; for adding each element

loop:
    mov bl, [list + eax] ; This works!
    add cl, bl

    inc eax ; eax += 1
    cmp eax, 4  ; since we know the length otherwise we need to use a terminator
    
    je end
    jmp loop
    ; You can also replace these 2 with JNE loop (more easily understandable!)

end:
    mov eax, 1
    mov ebx, 0
    int 0x80