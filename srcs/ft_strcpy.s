segment .text
		global _ft_strcpy

_ft_strcpy:
		mov rax, 0					; moving zero to rax
		jmp copy					; jumping to the copy process
copy:
		cmp BYTE [rsi + rax], 0		; comparing rdi[rax] to zero
		je exit						; if its true exit the copy process to terminate the function
		mov rcx, [rsi + rax]		; moving the char pointed by rsi[rax] in rcx
		mov [rdi + rax], rcx		; moving the char previously pointed by rsi[rax] in rdi[rax]
		inc rax						; rax++
		jmp copy					; looping if no exit condition

exit:
		mov rcx, 0					; moving zero to rcx for the last '\0'
		mov [rdi + rax], rcx		; moving the last byte '\0' o the copy
		mov rax, rdi				; moving the copy to rax to return it
		ret
