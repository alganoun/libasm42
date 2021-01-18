segment .text
        global _ft_write

_ft_write:
        mov r8, rdx         ; save the value of rdx (len) in r*
        mov rax, SYS_WRITE  ; set the call to write
        syscall             ; calling write
        jc exit_error       ; if write doesn't work carry flag will be set to 1, we need to jump to error process
        jmp exit            ; everything is fine let's exit properly
exit_error:
        mov rax, -1         ; an error as been made let's return -1
        ret
exit:
        mov rax, r8         ; the function act like it should be returning nb of char written
        ret