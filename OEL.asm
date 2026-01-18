.data
msg1: .asciiz "Content of register 1 before swap:"
msg2: .asciiz "\nContent of register 2 before swap:"
msg3: .asciiz "\nContent of register 1 after swap:"
msg4: .asciiz "\nContent of register 2 after swap:"
.text
main:
##loading values into variables
li $t0,5
li $t1,10

## first string
li $v0,4
la $a0,msg1
syscall

##print first registers value
li $v0,1
move $a0,$t0
syscall

## first string
li $v0,4
la $a0,msg2
syscall

##print second registers value
li $v0,1
move $a0,$t1
syscall

##adding both values

add $t2,$t0,$t1

##subtracting form the total to get the swap functionality
sub $t0,$t2,$t0
##subtracting form the total to get the swap functionality
sub $t1,$t2,$t1

##printing third string
li $v0,4
la $a0,msg3
syscall
##print swaped value
li $v0,1
move $a0,$t0
syscall
##printing forth values
li $v0,4
la $a0,msg4
syscall
##printing swaped value
li $v0,1
move $a0,$t1
syscall

##exiting
li $v0,10
syscall