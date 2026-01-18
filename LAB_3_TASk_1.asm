.data
arr: .word 50,25,30,45
subject1: .asciiz "ENGLISH:"
subject2: .asciiz "URDU:"
subject3: .asciiz "COMPUTER:"
subject4: .asciiz "PHYSUCS:"
newline: .asciiz "\n"
.text
main:


li $v0, 4
la $a0, subject1
syscall

la $t0,arr
lw $t1, 0($t0)
move $a0,$t1
li $v0, 1
syscall

li $v0, 4
la $a0, newline
syscall

li $v0, 4
la $a0, subject2
syscall

la $t0,arr
lw $t1, 4($t0)
move $a0,$t1
li $v0, 1
syscall


li $v0, 4
la $a0, newline
syscall

li $v0, 4
la $a0, subject3
syscall

lw $t1, 8($t0)
move $a0,$t1
li $v0, 1
syscall

li $v0, 4
la $a0, newline
syscall

li $v0, 4
la $a0, subject4
syscall

lw $t1, 12($t0)
move $a0,$t1
li $v0, 1
syscall


