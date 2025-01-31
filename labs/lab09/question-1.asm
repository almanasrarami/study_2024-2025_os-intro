%include 'in_out.asm'

SECTION .data
    msg_result db "Результат: ", 0
    sum dd 0  

SECTION .text
    GLOBAL _start

_start:
    pop ecx
    pop edx
    sub ecx, 1

next:
    cmp ecx, 0h
    jz _end

    pop eax
    call atoi

    call calculate_function

    add [sum], eax

    loop next

_end:
    mov eax, msg_result
    call sprint
    mov eax, [sum]
    call iprintLF

    call quit

calculate_function:
    mov ebx, 10
    mul ebx
    sub eax, 5
    ret
