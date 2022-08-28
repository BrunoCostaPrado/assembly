mov ah,0
int 0x16

char:
db 0
mov ah,0
int 0x16

mov al,[char]

buffer:
times 10 db 0
mov bx, buffer
mov [bx],al
inc bx


times 510-($-$$) db 0
db 0x55,0xa