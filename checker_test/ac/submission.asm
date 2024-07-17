; AI generated code

section .bss
    array resb 256        ; Reserve space for the array (256 bytes)
    array_len resb 4      ; Reserve space for the array length
    max_index resb 4      ; Reserve space for the maximum index
    max_value resb 4      ; Reserve space for the maximum value

section .text
    extern printf, scanf  ; External functions
    global _start

_start:
    ; Read array length
    mov eax, 3            ; sys_read
    mov ebx, 0            ; file descriptor 0 (stdin)
    mov ecx, array_len    ; buffer to read into
    mov edx, 4            ; buffer length
    int 0x80              ; call kernel

    ; Convert array length from ASCII to integer
    movzx ecx, byte [array_len]
    sub ecx, '0'          ; Convert ASCII digit to integer
    mov [array_len], ecx  ; Store the length

    ; Read array elements
    mov eax, 3            ; sys_read
    mov ebx, 0            ; file descriptor 0 (stdin)
    mov ecx, array        ; buffer to read into
    mov edx, 256          ; buffer length
    int 0x80              ; call kernel

    ; Initialize registers
    mov ecx, [array_len]  ; Load array length
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
    ; Store the maximum index
    mov [max_index], edi

    ; Prepare to print the result
    mov eax, [max_index]
    add eax, '0'          ; Convert integer to ASCII
    mov [max_index], eax

    ; Print the result
    mov eax, 4            ; sys_write
    mov ebx, 1            ; file descriptor 1 (stdout)
    mov ecx, max_index
    mov edx, 1            ; length
    int 0x80              ; call kernel

    ; Exit
    mov eax, 1            ; sys_exit
    xor ebx, ebx          ; exit code 0
    int 0x80