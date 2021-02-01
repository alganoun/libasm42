segment .text
		global 	_ft_strdup
		extern 	_ft_strlen
		extern 	_ft_strcpy
		extern 	_malloc
_ft_strdup:
		call _ft_strlen			; calling ft_strlen
		add rax, 10				; moving 10 in rax for malloc after
		push rdi				; saving the value of rdi to use it after
		mov rdi, rax			; move rax (10) in rdi for malloc
		call _malloc			; call of malloc function
		mov rdi, rax			; the return value of malloc is in rax now, let's send it in rdi (first parameter)
		pop rsi					; getting the saved argument in rsi
		call _ft_strcpy			; calling ft_strcpy to copy in the duplicate
		ret
