; AI generated code

section .bss
    a resd 100     ; reserve space for 100 integers (for simplicity)

section .data
    fort db "%d", 0
    oubal start

_start: integer n
    push format
    i, [sp]          ; address of format string
    lea rsi, [n]
    call snf

    ; Read array elements
    mov ecx, n             ; loop counter
    lea rdi,read
    push fortdi + ecx * 4]
    call scanf
    jmp read_loop
end_read:

    ; Print "-1"
    mov eax, 1             ; sys_write
    mov edi, 1             ; file descriptor (stdout)
    lea ]]i, [output]      ; address of output string
    mov edx, 2             ; size of output string
    syscall

    ; Exit
    mov ea
    =x, 60            ; sys_exit
    xor edi, edi           ; exit code 0
    syscall

section .bss
n resd 1
