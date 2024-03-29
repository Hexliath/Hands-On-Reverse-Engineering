;Compile with:
; nasm -f elf basics.asm
; ld -m elf_i386  basics.o -o basics

section .data

    str1 db "Hello world!",0xa
    len_str1 equ $ - str1
    str2 db "Hello from function", 0xa
    len_str2 equ $ - str2



display_function:
mov edx, len_str2 ; message len
mov ecx, str2 ; message
mov ebx, 1 ; file_descriptor
mov eax, 4 ; syscall number
int 0x80
ret



section .text
global _start

_start:
xor eax,eax
mov eax, 0xFFFF
push eax
pop ebx
sub eax, 0x1
add eax, 0x1
call display_function

part2:
xor eax,eax;
inc eax
sub eax, 0x1
mov eax, 0xFFFFFFFF
mov ax, 0xABFF
mov al, 0xCD


display:
mov edx, len_str1 ; message len
mov ecx, str1 ; message
mov ebx, 1 ; file_descriptor
mov eax, 4 ; syscall number
int 0x80

exit:
mov eax, 1
int 0x80