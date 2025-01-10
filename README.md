# Learning x86 with NASM

Pretty much what it says, just a compilation of my notes while learning x86 with NASM.

To run any assembly script:
```bash
nasm -felf32 l1.asm
ld -m elf_i386 l1.o
./a.out
```

Helpful GDB commands:
```bash
b _start
run
layout asm
layout regs
info registers eax/ebx/...
stepi
x/x 0x804a000
```