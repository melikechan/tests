; AI generated code

section .bss
    input resb 2          ; Reserve space for input (1 byte + newline)
    output resb 2         ; Reserve space for output (1 byte + null terminator)

section .text
    global _start

_start:
    ; Read integer input
    mov eax, 3            ; sys_read
    mov ebx, 0            ; file descriptor 0 (stdin)
    mov ecx, input        ; buffer to read into
    mov edx, 2            ; buffer length (1 byte + newline)
    int 0x80              ; call kernel

    ; Convert input from ASCII to integer
    movzx eax, byte [input]
    sub eax, '0'          ; Convert ASCII digit to integer

    ; Convert result back to ASCII and prepare output
    add eax, '0'          ; Convert integer to ASCII
    mov [output], al      ; Store the ASCII character
    mov byte [output + 1], 0 ; Null-terminate the string

    ; Print the result
    mov eax, 4            ; sys_write
    mov ebx, 1            ; file descriptor 1 (stdout)
    mov ecx, output       ; buffer to write from
    mov edx, 2            ; length (1 byte + null terminator)
    int 0x80              ; call kernel

    ; Exit
    mov eax, 1            ; sys_exit
    xor ebx, ebx          ; exit code 0
    int 0x80