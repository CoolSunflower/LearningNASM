section .data

section .text
global _start

_start:
    mov eax, 1
    mov ebx, 2
    mov eax, ebx ; eax = eax + ebx

    ; eflags register has bits representing flags that are automatically set by operations
    ; These values can be used for direct operations and comparisions
    ; info registers eflags
    ; PF --> Set when the least-significant byte of the result has an even number of set bits
    ; IF --> Set when interrupts allowed on system
    ; CF --> Previous operations has a carry over
    ; AF --> 
    ; ZF --> (Zero Flag)

    ; return 1
    mov eax, 1
    mov ebx, 1
    int 0x80


    ; NOTE: al: 11111111 bl: 1, if you do add al, bl. You get 1 0000 0000
    ; But since x86 knows you are working with bytes it does NOT set this 1 in the eax!
    ; Instead it just sets the carry bit and eax is 0

    ; ADC Operation: ADC ah, 0: This does ah = ah + 0 + carry_bit (current value)
    ; In our case:
        ; add al, bl
        ; adc ah, 0
        ; This will set eax = 0x100