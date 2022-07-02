section .text
BITS 64
global strcmp

strcmp:
    XOR RCX, RCX
    XOR RAX, RAX
    JMP cdi

cdi:
    CMP BYTE [RDI + RCX], 0
    JE exit
    JNE csi

csi:
    CMP BYTE [RSI + RCX], 0
    JE exit
    JNE whiles
whiles:
    MOV R8B, [RSI + RCX]
    CMP BYTE [RDI + RCX], R8B
    JNE exit
    INC RCX
    JMP cdi


exit:
    MOV AL, [RDI + RCX]
    SUB AL, [RSI + RCX]
    ret