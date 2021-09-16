# write 'a' to stdout

.globl main

main:
    push $97  # 'a'

    mov $1, %rax    # syscall stream write
    mov $1, %rdi    # fd for stdout = 1
    mov %rsp, %rsi  # char address is sp
    mov $2, %rdx    # size
    syscall

    add $8, %rsp  # reset sp

    mov $0, %eax
    ret
