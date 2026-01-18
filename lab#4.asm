	.data
newline: .asciiz "\n"

.text
main:
    li $t0, 1
    li $t1, 5
loop:
    li $v0, 1
    move $a0, $t0
    syscall

    li $v0, 4
    la $a0, newline
    syscall

    addi $t0, $t0, 1
    ble $t0, $t1, loop

    li $v0, 10
    syscall
