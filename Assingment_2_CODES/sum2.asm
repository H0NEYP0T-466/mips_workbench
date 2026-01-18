.data
num1: .word 5
num2: .word 10
num3: .word 15
num4: .word 20
msg: .asciiz "Sum of multiple integers is = "

.text
.globl main
main:
    lw $t0, num1
    lw $t1, num2
    lw $t2, num3
    lw $t3, num4

    add $t4, $t0, $t1
    add $t4, $t4, $t2
    add $t4, $t4, $t3

    li $v0, 4
    la $a0, msg
    syscall

    li $v0, 1
    move $a0, $t4
    syscall
    
    li $v0, 10
    syscall
