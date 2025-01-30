%include 'in_out.asm'

SECTION .data
msg: DB 'введите x: ',0
rem: DB 'результат: ',0

SECTION .bss
x: RESB 80

SECTION .text
GLOBAL _start

_start:
    mov eax, msg
    call sprint

    mov ecx, x
    mov edx, 80
    call sread

    mov eax, x
    call atoi  

    add eax, 2 

    mov ebx, eax
    mul ebx  

    mov edi, eax

    mov eax, rem
    call sprint

    mov eax, edi
    call iprintLF

    call quit

