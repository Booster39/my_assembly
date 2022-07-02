section .text
BITS 64
global  strchr

strchr:
    XOR RAX, RAX
    JMP loop

loop:
    CMP BYTE [RDI], SIL
    JE success
    JNE incr
    JMP end

success:
    MOV RAX, RDI
    JMP end

incr:
    INC RAX
    INC RDI
    JMP loop

end :
    ret