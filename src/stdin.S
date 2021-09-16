# read one byte of stdin and write to stdout

.globl main

main:
    mov $0, %eax    # syscall 0
    mov $0, %edi    # fd 0
    mov %edi, %ecx  # read to bp
    mov $1, %edx    # one byte
    syscall

    mov $1, %eax    # syscall stream write
    mov $1, %edi    # fd for stdout = 1
    mov %edi, %ecx  # char address is bp
    mov $1, %edx    # size
    syscall

    mov $0, %eax
    ret
