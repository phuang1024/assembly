# exit with status code 1

.globl main
main:
    movl $1, %eax   # set eax (status code) to 1
    ret
