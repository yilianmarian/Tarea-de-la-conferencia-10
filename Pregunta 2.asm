section .data
    msg db "Ingrese una palabra: $"
    buffer db 20, 0 
section .text
    global _start

_start:
    
    mov ah, 09h 
    mov dx, msg 
    int 21h 


    capturar_palabra
    mov ah, 09h 
    mov dx, buffer+2 
    int 21h 
    mov ah, 4Ch 
    mov al, 0 
    int 21h 

