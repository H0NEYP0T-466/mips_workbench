.data
X: .word 25
Y: .word 40

msg_beforeX: .asciiz "Before swap, X = "
msg_beforeY: .asciiz " and Y = "
msg_afterX:  .asciiz "\nAfter swap, X = "
msg_afterY:  .asciiz " and Y = "

.text
main:
    lw $t0, X
    lw $t1, Y

    li $v0, 4
    la $a0, msg_beforeX
    syscall

    li $v0, 1
    move $a0, $t0
    syscall

    li $v0, 4
    la $a0, msg_beforeY
    syscall

    li $v0, 1
    move $a0, $t1
    syscall

    sw $t1, X
    sw $t0, Y

    lw $t2, X
    lw $t3, Y

    li $v0, 4
    la $a0, msg_afterX
    syscall

    li $v0, 1
    move $a0, $t2
    syscall

    li $v0, 4
    la $a0, msg_afterY
    syscall

    li $v0, 1
    move $a0, $t3
    syscall

    li $v0, 10
    syscall
