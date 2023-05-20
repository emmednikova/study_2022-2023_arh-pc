%include 'in_out.asm'
section .data
msg1: db 'Введите x: ',0h
msg2: db 'Введите a: ',0h
msg3: db 'Функция равна: ',0h

section .bss
x: resb 10 
a: resb 10 
ans: resb 10 

section .text
global _start
_start:
    mov eax,msg1
    call sprint
    
    mov ecx,x
    mov edx,10
    call sread
    
    mov eax,x
    call atoi
    mov [x],eax
    
    mov eax,msg2
    call sprint
    
    mov ecx,a
    mov edx,10
    call sread
    
    mov eax, a
    call atoi
    mov [a],eax
    
    mov eax,[x]
    
    cmp eax,0
    
    je func1
    jne func2
    
func1:
    mov eax, x
    sub eax,[2]
    mov [ans], eax
    jmp final
    
func2:
    mov eax, 3
    mov ebx, [a]
    mul ebx
    mov [ans], eax
    jmp final
final:
    mov eax, msg3
    call sprint
    mov eax, [ans]
    call iprintLF
    call quit
    
