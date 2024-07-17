; AI generated code

section .bss
    n resd 1               ; reserve space for one integer
    arr resq 1             ; reserve space for a pointer to long long array

section .data
    format_in db "%d", 0
    msg db "memory allocated", 0
    calloc_size dq 400000000 ; size to allocate (in bytes)

section .text
    global _start

extern printf
extern scanf
extern calloc

_start:
    ; Read integer n
    mov rdi, format_in      ; address of input format string
    lea rsi, [n]            ; address of n
    call scanf

    ; Allocate memory using calloc
    mov rdi, 50000000       ; number of elements (5 * 10000000)
    mov rsi, 8              ; size of each element (sizeof(long long))
    call calloc
    mov [arr], rax          ; store the pointer to the allocated memory

    ; Initialize array
    xor rcx, rcx            ; initialize loop counter i = 0
initialize_loop:
    cmp rcx, 50000000       ; compare i with 5 * 10000000
    jge allocation_done     ; if i >= 5 * 10000000, jump to allocation_done
    mov rax, rcx            ; rax = i
    mov rbx, [arr]          ; rbx = pointer to arr
    mov [rbx + rcx * 8], rax; arr[i] = i
    inc rcx                 ; i++
    jmp initialize_loop     ; repeat the loop

allocation_done:
    ; Print "memory allocated"
    mov rdi, msg            ; address of message string
    call printf

    ; Exit
    mov eax, 60             ; sys_exit
    xor edi, edi            ; exit code 0
    syscall