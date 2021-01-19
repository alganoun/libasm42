segment .text
		global _ft_read

_ft_read:
		mov rax, 0x2000003		; set the call to read
		syscall					; call of read
		jc exit_error			; if the file can't be read carry flag will be set to 1, so we need to jump to the error process
		jmp exit				; if everything went right just jump to the normal exit process

exit_error:
		mov rax, -1				; if error return (-1)
		ret
exit:
		ret
