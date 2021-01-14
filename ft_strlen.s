segment .text
		global _ft_strlen

_ft_strlen:
		mov		rax, 0			; initializing a value to zero
		jmp		count			; going to the moment the count function will loop
	
count:
		cmp		BYTE [rdi + rax], 0	;  comp beetween str[rax] and 0
		je		exit			; if the conditon is met (== 0) ten exit
		inc		rax				; increment the value stored in rax
		jmp		count			; go back to count function -> loop done

exit:
		ret