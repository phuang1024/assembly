# call a function and use its return value

.globl main

main:
    mov $5, %eax
    jmp addfour

    jmp main2   # this line not run ...

main2:
    mov $2, %eax
    ret

addfour:
    add $4, %eax
    ret    # ... unless this line commented
    jmp main2
