segment .text
		global _ft_write
		extern ___error

_ft_write:
		mov r8, rdx			; save the value of rdx (len) in r8
		mov rax, 0x2000004	; set the call to write
		syscall				; calling write
		jc exit_error		; if write doesn't work carry flag will be set to 1, we need to jump to error process
		jmp exit			; everything is fine let's exit properly
exit_error:
		push rax			; save the error code on the stack
		call ___error		; calling the pointer to errno
		pop qword[rax]		; setting the value or errno to the error code previously saved
		mov rax, -1			; ft_write return value is set to -1
		ret
exit:
		mov rax, r8			; the function act like it should be returning nb of char written
		ret
