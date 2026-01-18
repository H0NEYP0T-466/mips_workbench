.data
nums: .word 1,2,3,4,5,6,7,8,9,10
msg: .asciiz "Table of 5:\n"
msg2: .asciiz "-"

.text
main:
li $v0, 4
la $a0, msg
syscall

lw $t0, nums
li $t1, 5
mul $t2, $t0, $t1
li $v0, 1
move $a0, $t2
syscall

li $v0, 4
la $a0, msg2
syscall

lw $t0, nums+4
mul $t2, $t0, $t1
li $v0, 1
move $a0, $t2
syscall

li $v0, 4
la $a0, msg2
syscall

lw $t0, nums+8
mul $t2, $t0, $t1
li $v0, 1
move $a0, $t2
syscall

li $v0, 4
la $a0, msg2
syscall

lw $t0, nums+12
mul $t2, $t0, $t1
li $v0, 1
move $a0, $t2
syscall
li $v0, 4
la $a0, msg2
syscall

lw $t0, nums+16
mul $t2, $t0, $t1
li $v0, 1
move $a0, $t2
syscall

li $v0, 4
la $a0, msg2
syscall

lw $t0, nums+20
mul $t2, $t0, $t1
li $v0, 1
move $a0, $t2
syscall
li $v0, 4
la $a0, msg2
syscall

lw $t0, nums+24
mul $t2, $t0, $t1
li $v0, 1
move $a0, $t2
syscall

li $v0, 4
la $a0, msg2
syscall

lw $t0, nums+28
mul $t2, $t0, $t1
li $v0, 1
move $a0, $t2
syscall
li $v0, 4
la $a0, msg2
syscall

lw $t0, nums+32
mul $t2, $t0, $t1
li $v0, 1
move $a0, $t2
syscall
li $v0, 4
la $a0, msg2
syscall

lw $t0, nums+36
mul $t2, $t0, $t1
li $v0, 1
move $a0, $t2
syscall

li $v0, 10
syscall
