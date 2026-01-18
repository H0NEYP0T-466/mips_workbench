.data
msg1: .asciiz "Enter first number: "
msg2: .asciiz "\nEnter second number: "
msg3: .asciiz "\nResult (Division): "

.text
main:
li $v0, 4
la $a0, msg1
syscall
li $v0, 5
syscall
move $t0, $v0

li $v0, 4
la $a0, msg2
syscall
li $v0, 5
syscall
move $t1, $v0

div $t0, $t1
mflo $t2

li $v0, 4
la $a0, msg3
syscall
li $v0, 1
move $a0, $t2
syscall

li $v0, 10
syscall
