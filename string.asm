data segment
abc db 'Hello$'
def db 'World$'
data ends

code segment
assume cs:code, ds:data
start:
mov ax, data
mov ds, ax
mov dx, offset abc
mov ah, 09h
int 21h
mov dx, offset def
mov ah, 09h
int 21h
mov ah, 4ch
int 21h
code ends
end start
