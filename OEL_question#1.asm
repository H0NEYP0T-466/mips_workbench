.data
msg1: .asciiz "Content of register 1 before swap:"
msg2: .asciiz "\nContent of register 2 before swap:"
msg3: .asciiz "\nContent of register 1 after swap:"
msg4: .asciiz "\nContent of register 2 after swap:"
.text
main:

li $t0,5
li $t1,10

li $v0,4
la $a0,msg1
syscall

li $v0,1
move $a0,$t0
syscall

li $v0,4
la $a0,msg2
syscall

li $v0,1
move $a0,$t1
syscall



add $t0,$t0,$t1


sub $t1,$t0,$t1

sub $t0,$t0,$t1

li $v0,4
la $a0,msg3
syscall

li $v0,1
move $a0,$t0
syscall

li $v0,4
la $a0,msg4
syscall

li $v0,1
move $a0,$t1
syscall


li $v0,10
syscall

