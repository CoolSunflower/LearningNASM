; lseek system call
; useful with fixed size records in files
; need to consider the newline character at the end in the length of each line

; look at manpage of lseek system call to understand how it works

section .data
    pathname dd "records.txt"

section .bss
    buffer resb 1024

section .text
global _start

_start:
    mov eax, 5
    mov ebx, pathname
    mov ecx, 0 ; read
    int 80h
    ; now i have read the file with fd: eax

    mov ebx, eax ; fd
    mov eax, 19
    mov ecx, 20 ; number of offset bytes (say each record is 10 bytes (incl. newline) and we want third record)
    mov edx, 0 ; SEEK_SET lseek should seek from start of the file
    int 80h
    ; eax now contains how much you actually moved in the file
    ; this updates the read pointer in the file

    ; if you do a read system call now you will get the third record
    mov eax, 3
    mov ecx, buffer
    mov edx, 10 ; read 10 bytes, ebx already has fd from above
    int 0x80

    mov eax, 1
    mov ebx, 0
    int 0x80
