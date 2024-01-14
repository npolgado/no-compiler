section .data
    ; Define your data section here

section .text
    global WinMain

WinMain:
    ; Your code starts here

    ; return exit code 
    ; TODO: is this right??
    
    ; eax sets the system call
    mov eax, 1

    ; ebx sets the exit code
    mov ebx, 0 

    ; int 80 is the system call
    int 0x80

section .bss
    ; Define your uninitialized data section here

section .data
    ; Define your initialized data section here

; Add additional sections as needed
