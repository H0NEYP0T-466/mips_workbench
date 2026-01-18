.data
msg1: .asciiz "Enter a number: "
newline: .asciiz "\n"
times: .asciiz " x "
equal: .asciiz " = "
.text
main:
    li $v0, 4
    la $a0, msg1
    syscall

    li $v0, 5
    syscall
    move $a0, $v0
    jal printTable

    li $v0, 10
    syscall

printTable:
    move $s0, $a0
    li $t1, 1
loop:
    bgt $t1, 10, done
    mul $t2, $s0, $t1

    li $v0, 1
    move $a0, $s0
    syscall

    li $v0, 4
    la $a0, times
    syscall

    li $v0, 1
    move $a0, $t1
    syscall

    li $v0, 4
    la $a0, equal
    syscall

    li $v0, 1
    move $a0, $t2
    syscall

    li $v0, 4
    la $a0, newline
    syscall

    addi $t1, $t1, 1
    j loop
done:
    jr $ra
