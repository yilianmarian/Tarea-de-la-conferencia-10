section .data
    name db "GPTie", 0 

section .text
    global main

main:
    
    mov ah, 09h 
    mov dx, name 
    int 21h 

    
    mov ah, 4Ch 
    mov al, 0 
    int 21h 