.data
array: .word 10,20,30,40,50
size: .word 5
string: .asciiz "Enter number to search"
newline: .asciiz "\n"
string1: .asciiz "you entered:"
string2: .asciiz "Element not in the array"
string3: .asciiz "Element found in the array"
string4: .asciiz "Enter number for fac"
.text
main:


li $v0,4
la $a0,string4
syscall

li $v0,5
syscall
move $t0,$v0

li $t1,1
li $t2,1

loop:
mul $t2,$t2,$t1
addi $t1,$t1,1
bgt $t1,$t0,exit
j loop
exit:
li $v0,1
move $a0,$t2
syscall

