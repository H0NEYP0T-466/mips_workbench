.data
newL: .asciiz "\n"
.text
main:
    li $t0, 1
    li $t1, 20
loop:
    li $v0, 1
    move $a0, $t0
    syscall
    li $v0, 4
    la $a0, newL
    syscall
    addi $t0, $t0, 2
    ble $t0, $t1, loop
    li $v0, 10
    syscall
