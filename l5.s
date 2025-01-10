section .data
    ; Initialising Repeatedly with default value
    num2 db 3 dup(2)

; data gets places before bss in memory

section .bss
; Unintialised data, used to reserve space in memory where later data will be put!
    num resb 3
    ; name reserve_bytes/word/double/q/t number

section .text
global _start

_start:
    ; mov [num], 1 --> WONT Work, you cant directly move data into memory like this
    ; The above instruction needs to include information about sizes and about how much data to move
    mov bl, 1 ; Now x86 knows we are working with byte sized data
    mov [num], bl
    mov [num+1], bl
    mov [num+2], bl
    ; See memory x/x 0x804a000
    ; mov [num+3], bl ; Each is 1 Byte, so +3 is 3 Bytes
 
    mov eax, 1
    int 0x80



