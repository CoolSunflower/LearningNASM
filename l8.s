section .text
global _start

_start:
    ; mul for unsigned values and imul for signed values
    mov al, 2
    mov bl, 3
    mul bl ; only 1 argument, the value Not stored in the a register.
    ; this is because a is the default accumulator register
    ; gdb stepi and run info registers al

    ; if al = 0xFF
    ; The size of the registers will automatically be expanded
    ; so the final total result will actually be stored in ax
    ; different from concept of carry bit in addition
    ; Multiplication automatically expands the destination to fit the result 
    ; which is completely different behaviour as compared to addition where we need to do it ourselves using adc

    ; mov al, 0xff
    ; imul bl
    ; This will output -2 in the al register!

    ; mul and imul differently interpret 0xff, its essentially signed v/s unsigned.