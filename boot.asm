xor ax, ax
mov ds, ax
mov es, ax
mov ss, ax

mov ah, 0x13
mov al, 0x01
mov bh, 0x00
mov bl, 0xB
mov cx, 0x13
mov dh, 0
mov dl, 0
mov bp, frase
add bp, 0x7c00
int 0x10

jmp $

frase: db 'Meu nome eh Vitor! =D'	
times 510 - ($ - $$) db 0
dw 0xAA55