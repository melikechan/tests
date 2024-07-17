; AI generated code

section .bss
    n resd 1     ; reserve space for one integer

section .data
    format_in db "%d", 0
    format_out db "%d", 0

section .text
    global _start

extern printf
extern scanf

_start:
    ; Read integer n
    mov rdi, format_in      ; address of input format string
    lea rsi, [n]            ; address of n
    call scanf

infinite_loop:
    ; Print integer n
    mov rdi, format_out     ; address of output format string
    mov eax, [n]            ; value of n
    mov rsi, rax            ; pass the value of n to rsi for printf
    call printf
    jmp infinite_loop       ; jump back to the start of the loop

exit:
    ; Exit
    mov eax, 60             ; sys_exit
    xor edi, edi            ; exit code 0
    syscall