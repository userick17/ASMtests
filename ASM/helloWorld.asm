section .data
    msg db 'Hello, World!',1   ; Define a string 'Hello, World!' com um caractere nulo de terminação

section .text
    global _start              ; Ponto de entrada para o linker

_start:
    ; Escreve a string na saída padrão (stdout)
    mov eax, 4                 ; syscall write
    mov ebx, 1                 ; file descriptor 1 (stdout)
    mov ecx, msg               ; ponteiro para a string
    mov edx, 13                ; tamanho da string
    int 0x80                   ; chama o sistema operacional

    ; Termina o programa
    mov eax, 1                 ; syscall exit
    xor ebx, ebx               ; código de saída 0
    int 0x80                   ; chama o sistema operacional
