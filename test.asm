section .data
    ; Define your data section here

section .text
    global _start

_start:
    ; Your code starts here
    
    ; Add your assembly instructions
    
    ; Example: mov eax, 1 ; syscall number for sys_write
    ;          mov ebx, 1 ; file descriptor 1 is stdout
    ;          mov ecx, message ; address of the message
    ;          mov edx, message_len ; length of the message
    ;          int 0x80 ; call kernel

    ; Add more instructions as needed

    ; return TODO: is this right??
    mov eax, 1
    mov ebx, 0
    int 0x80

section .bss
    ; Define your uninitialized data section here

section .data
    ; Define your initialized data section here

; Add additional sections as needed
