.data
num1: .word 5
num2: .word 10
msgB1: .asciiz "Before swap: num1 = "
msgB2: .asciiz ", num2 = "
msgA1: .asciiz "\nAfter swap: num1 = "
msgA2: .asciiz ", num2 = "
.text
main:
    lw $t0, num1
    lw $t1, num2

    li $v0, 4
    la $a0, msgB1
    syscall
    li $v0, 1
    move $a0, $t0
    syscall
    li $v0, 4
    la $a0, msgB2
    syscall
    li $v0, 1
    move $a0, $t1
    syscall

    move $t2, $t0
    move $t0, $t1
    move $t1, $t2

    li $v0, 4
    la $a0, msgA1
    syscall
    li $v0, 1
    move $a0, $t0
    syscall
    li $v0, 4
    la $a0, msgA2
    syscall
    li $v0, 1
    move $a0, $t1
    syscall
    
    li $v0, 10
    syscall
