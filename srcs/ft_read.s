segment .text
		global _ft_read
		extern ___error
_ft_read:
		mov rax, 0x2000003		; set the call to read
		syscall					; call of read
		jc exit_error			; if the file can't be read carry flag will be set to 1, so we need to jump to the error process
		jmp exit				; if everything went right just jump to the normal exit process

exit_error:
		push rax				; save the error code on the stack
		call ___error			; calling the pointer to errno
		pop qword[rax]			; setting the value or errno to the error code previously saved
		mov rax, -1				; an error as been detected, let's set ft_read return value to -1
		ret
exit:
		ret
