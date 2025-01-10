; section .data
;     char DB 'A'
; 
; section .text
; global _start
; 
; _start:
;     mov bl, [char]
;     mov eax, 1
;     int 0x80
; Output: Exit Code 65 (THINK)



; section .data
;     list db 1, 2, 3, 4
; 
; section .text
; global _start
; 
; _start:
;     mov bl, [list]
;     mov eax, 1
;     int 0x80
; 
; ; Run x/x 0x804a000 to see the memory content of the list and how exactly it is stored
; You always need some way to demonstrate the end of a list to help with iteration
; this is similar to using a NULL terminator with strings

