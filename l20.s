; Opening and Reading files

section .data
    pathname dd "README.md", 0

section .bss
    buffer resb 512

section .text
global _start

_start:
    ; open system call
    mov eax, 5
    mov ebx, pathname
    mov ecx, 0 ; Read Only
    int 0x80

    ; eax will have result of system call
    ; in this case its the file descriptor

    ; read system call
    mov ebx, eax ; fd
    mov eax, 3 ; read
    mov ecx, buffer ; char* where to read into
    mov edx, 1024 ; count
    int 0x80
    ; look at x/s followed by buffer address
    ; this will output whatever string was read

    ; Displaying the string read
    mov edx, eax ; number of characters read
    mov eax, 4
    mov ebx, 1 ; stdout
    mov ecx, buffer 
    int 0x80

    mov eax, 1
    mov ebx, 0
    int 0x80
