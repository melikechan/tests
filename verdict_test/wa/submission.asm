; AI generated code

section .bss
    n resd 1     ; reserve space for one integer

section .data
    format_in db "%d", 0
    format_out db "%d", 0

section .text
    global _start

extern scanf
extern printf

_start:
    ; Read integer n
    mov rdi, format_in      ; address of input format string
    lea rsi, [n]            ; address of n
    call scanf

    ; Subtract 1 from n
    mov eax, [n]            ; move the value of n into eax
    sub eax, 1              ; subtract 1 from eax
    mov [n], eax            ; store the result back in n

    ; Print integer n-1
    mov rdi, format_out     ; address of output format string
    mov rsi, [n]            ; value of n-1
    call printf

    ; Exit
    mov eax, 60             ; sys_exit
    xor edi, edi            ; exit code 0
    syscall