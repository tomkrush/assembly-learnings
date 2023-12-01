section .data
    hello_msg db 'Hello, World!',0

section .text
    global _start

_start:
    mov rax, 1              ; system call number for sys_write
    mov rdi, 1              ; file descriptor 1 is stdout
    mov rsi, hello_msg      ; address of string to output
    mov rdx, 13             ; number of bytes
    syscall                 ; invoke operating system to do the write

    mov rax, 60             ; system call number for sys_exit
    xor rdi, rdi            ; exit code 0
    syscall                 ; invoke operating system to exit
