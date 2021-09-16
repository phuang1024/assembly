# do nothing for 1e9 iterations

.globl main

main:
    mov $0, %rax
    mov $1000000000, %rbx
    jmp loop

exit:
    mov $0, %eax
    ret

loop:
    cmp %rax, %rbx
    jne addone
    jmp exit

addone:
    add $1, %rax
    jmp loop
