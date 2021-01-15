segment .text
		global _ft_strcmp

_ft_strcmp:
		mov		rax, 0					; initialize the return value to zero
		jmp		comp					; going to the comp fontion
comp:
		mov		rdx, [rbp+4 + rax]
		mov		rbx, [rbp+8 + rax]	; store the pointer soustraction in case of return
		cmp		rdx, rbx			;
		jnz		exit				; if rax is different to zero call the exit function
		inc		rax					; increment the second argument pointer
		jmp		comp
exit :
		mov		rax, rdx
		ret								; return the value stored un rax
