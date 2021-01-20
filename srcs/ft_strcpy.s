segment .text
		global _ft_strcpy

_ft_strcpy:
		mov rax, 0
		jmp copy
copy:
		cmp BYTE [rsi + rax], 0
		je	exit
		mov rcx, [rsi + rax]
		mov [rdi + rax], rcx
		inc rax
		jmp copy

exit:
		mov rcx, 0
		mov [rdi + rax], rcx
		mov rax, rdi
		ret
