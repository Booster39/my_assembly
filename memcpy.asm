section .text
BITS 64
global memcpy
memcpy:
    XOR R8, R8
    XOR RCX, RCX
    JMP whiles

whiles:
    CMP RDX, RCX
    JE exit
    JNE main

main:
    mov R8B, [RSI + RCX]
 	mov [RDI + RCX], R8B
    INC RCX
    JMP whiles
exit:
    LEA RAX, [RDI]
    ret