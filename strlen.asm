section .text

BITS 64
global  strlen
strlen:
    XOR RAX, RAX
    JMP .loop

.loop:
    CMP BYTE [RDI], 0
    JE end
    JNE .incr
    JMP end

.incr:
    INC RAX
    INC RDI
    JMP .loop

end :
    ret