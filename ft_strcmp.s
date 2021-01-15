segment .text
		global _ft_strcmp

_ft_strcmp:
		mov		rax, 0					; initialize the return value to zero
		jmp		comp					; going to the comp fontion
comp:
		mov		rdx, [rdi + rax]
		mov		rbx, [rsi + rax]	; store the pointer soustraction in case of return
		sub		rdx, rbx
		cmp		rdx, 0					; compare the value of rax to zero
		jne		exit				; if rax is different to zero call the exit function
		inc		rax					; increment the second argument pointer
		jmp		comp
exit :
		mov		rax, rdx
		ret								; return the value stored un rax
