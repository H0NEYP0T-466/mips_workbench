.data
msg1: .asciiz "fezan bin abdul rehman"
msg2: .asciiz "\nmy age is:19"
msg3: .asciiz "\nmy gender is:M"

.text
main:
li $v0, 4
la $a0, msg1
syscall

li $v0, 4
la $a0, msg2
syscall

li $v0, 4
la $a0, msg3
syscall

li $v0, 10
syscall
