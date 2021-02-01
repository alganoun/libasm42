segment .text
		global _ft_strcmp

_ft_strcmp:
		mov		al, BYTE [rdi]  ; al <- rdi[0] the char pointed by rdi
		mov		bl, BYTE [rsi]	; bl <- rsi[0] the char pointed by rsi
		cmp		al, 0			; if we got to the end of the rdi string we exit
		je		exit
		cmp		bl, 0			; same here for rsi
		je		exit
		cmp		al, bl			; compare al with bl
		jne		exit			; if the 2 char (al & bl) are not equals
		inc		rdi				; rdi++
		inc		rsi				; rsi++
		jmp		_ft_strcmp

exit:
		movzx	rax, al			; movzx add extension with 0 to dest
		movzx	r8, bl
		sub		rax, r8			; rax = rax - r8
		ret
