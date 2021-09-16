# do math and return result

.globl main
main:
    mov $2, %eax
    mov $3, %ebx
    mov $4, %ecx

    add %ebx, %eax
    sub %ecx, %eax

    ret
