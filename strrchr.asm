section .text
BITS 64
global  strrchr

strrchr:
    XOR RAX, RAX
    XOR RCX, RCX
    JMP .loop

.loop:
    CMP BYTE [RDI + RCX], 0
    JE suc
    INC RCX
    JMP .loop

str:
    CMP RAX, 0
    JE end
    DEC RAX
    CMP BYTE [RDI + RAX], SIL
    JE end
    JMP str

suc:
    MOV RAX, RCX
    JMP str

end:
    LEA RAX, [RDI + RAX]
    ret
