
section .data
NUM db 13, 4, 7, 4, 6, 8, 1, 5, 6, 7, 8, 9, 0, 8


section .text
global _start

sumar:
    mov cx, byte [NUM] 
    mov ax, 0 
    add NUM, 1 


    suma_loop:
        add ax, word [NUM] 
        add NUM, 2 
        loop suma_loop 

    ret 


_start:

    call sumar

    mov bx, ax 
    mov ah, 0x0e 
    mov al, ' ' 
    int 0x10 
    mov ax, bx 
    add ax, 48 
    mov ah, 0x0e 
    int 0x10 
    mov ah, 0x4c 
    xor al, al 
    int 0x21 
