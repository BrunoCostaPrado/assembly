[org 0x7c00]
mov ah,0x0e
mov bx,varialbleName

printString:
    mov al,[bx]
    cmp al,0
    je end
    int 0x10
    inc bx
    jmp printString
end:

jmp $

varialbleName:
    db " But the foll on the hill " ,0

times 510-($-$$) db 0
db 0x55,0xaa