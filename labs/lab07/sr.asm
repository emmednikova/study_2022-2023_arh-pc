%include 'in_out.asm' 

SECTION .data
ur: DB '5(x+18)-28 = (5x+90)-28',0
per: DB 'Введите значение x: ',0
otv: DB 'Ответ: ',0

SECTION .bss
x: RESB 80

SECTION .text
GLOBAL _start
_start:

mov eax, ur
call sprintLF

mov ecx, x
mov edx, 80
call sread

mov eax,x 
call atoi 

mov ebx,5
mul ebx
add eax,90
xor edx,edx
mov edx,28
sub eax,edx

mov edi,eax

mov eax,otv
call sprint

mov eax,edi
call iprintLF

call quit
