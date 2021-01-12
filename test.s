;section	.text
;   global _start     ;must be declared for linker (ld)
;
;_start:	            ;tells linker entry point
;   mov	rdx,len     ;message length
;   mov	rcx,msg     ;message to write
;   mov	rbx,1       ;file descriptor (stdout)
;   mov	rax, 0x2000004      ;system call number (sys_write)
;   syscall
;
;   mov	rax, 0x2000001       ;system call number (sys_exit)
;   mov   rdi,
;   syscall
;
;section	.data
;msg db 'Hello, world!', 0xa  ;string to be printed
;len equ $ - msg     ;length of the string


section .text
   global _start
_start:
    mov     rax, 0x2000004 ; write
    mov     rdi, 1 ; stdout
    mov     rsi, msg
    mov     rdx, msg.len
    syscall
    mov     rax, 0x2000001 ; exit
    mov     rdi, 0
    syscall
section .data
msg:    db      "Hello, world!", 0xa
.len:   equ     $ - msg
