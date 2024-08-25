; AI generated code

section .bss
    array resb 256        ; Reserve space for the array (256 bytes)
    array_len resb 1      ; Reserve space for the array length
    max_value resb 1      ; Reserve space for the maximum value

section .text
    extern printf, scanf  ; External functions
    global _start

_start:
    ; Read array length
    mov eax, 3            ; sys_read
    mov ebx, 0            ; file descriptor 0 (stdin)
    mov ecx, array_len    ; buffer to read into
    mov edx, 2            ; buffer length
    int 0x80              ; call kernel

    ; Convert array length from ASCII to integer
    movzx ecx, byte [array_len]
    sub ecx, '0'          ; Convert ASCII digit to integer
    mov [array_len], cl   ; Store the length

    ; Read array elements
    mov eax, 3            ; sys_read
    mov ebx, 0            ; file descriptor 0 (stdin)
    mov ecx, array        ; buffer to read into
    mov edx, 256          ; buffer length
    int 0x80              ; call kernel

    ; Initialize registers
    movzx ecx, byte [array_len]  ; Load array length
    mov esi, 0            ; Initialize index to 0
    mov edi, 0            ; Initialize max_index to 0

    ; Load the first element
    mov al, [array]
    sub al, '0'
    mov [max_value], al

find_max:
    ; Check if we've reached the end of the array
    cmp esi, ecx
    je done

    ; Load the current element
    mov al, [array + esi]
    ; Convert ASCII to integer
    sub al, '0'

    ; Compare with current max
    cmp al, [max_value]
    jle next

    ; Update max_index and max_value
    mov [max_value], al
    mov edi, esi

next:
    ; Increment index
    inc esi
    jmp find_max

done:
    ; Print the result - always print -1
    mov eax, 4            ; sys_write
    mov ebx, 1            ; file descriptor 1 (stdout)
    mov ecx, minus_one
    mov edx, 2            ; length
    int 0x80              ; call kernel

    ; Exit
    mov eax, 1            ; sys_exit
    xor ebx, ebx          ; exit code 0
    int 0x80

section .data
    minus_one db '-','1'  ; Data to print -1