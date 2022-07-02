section .text
BITS 64
global memset
memset:
    XOR RCX, RCX
    JMP main

main:
    CMP RDX, RCX
    JE exit
    JNE modb

modb:
    MOV [RDI + RCX], SIL
    INC RCX
    JMP main
exit:
    MOV RAX, RDI
    ret