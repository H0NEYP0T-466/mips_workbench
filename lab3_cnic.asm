.data
newString: .asciiz "you are eigible for cnic"
newString1: .asciiz "you are not eigible for cnic"
.text
li $t0, 18
li $t1,18
beq $t0, $t1 ,eligible

noteligible:
li $v0,4
la $a0,newString1
syscall
j exit
eligible:
li $v0,4
la $a0,newString
syscall

exit:
li $v0, 10
syscall