%include 'in_out.asm'

SECTION .data

msg_x: DB 'Введите x: ', 0
msg_a: DB 'Введите a: ', 0
res: DB 'Результат: ', 0

SECTION .bss

x: RESB 80
a: RESB 80
result: RESB 80

SECTION .text

GLOBAL _start

_start:

    mov eax, msg_x
    call sprint
    mov ecx, x
    mov edx, 80
    call sread
    mov eax, x
    call atoi
    mov edi, eax 

    mov eax, msg_a
    call sprint
    mov ecx, a
    mov edx, 80
    call sread
    mov eax, a
    call atoi
    mov esi, eax 

    cmp edi, 3
    je x_equals_3

    add esi, 1
    mov eax, esi
    jmp print_result

x_equals_3:
    mov eax, edi
    mov ebx, 3
    imul eax, ebx

print_result:
    mov ebx, eax
    mov eax, res
    call sprint
    mov eax, ebx
    call iprintLF

    call quit
