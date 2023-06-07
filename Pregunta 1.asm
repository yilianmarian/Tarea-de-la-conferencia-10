
macro capturar_letra
    mov ah, 01h 
    int 21h 
endm


macro capturar_palabra
    mov ah, 0Ah 
    mov dx, buffer 
    int 21h 
endm


macro capturar_numero
    mov ah, 01h 
    int 21h 
    sub al, 30h 
endm


