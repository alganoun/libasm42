segment .text
        global _ft_read

_ft_read:
        mov rax, SYS_READ
        syscall
        jc exit_error
        jump eit

exit_error:
        mov rax, -1         ; if error return (-1)
        ret
exit:
        ret