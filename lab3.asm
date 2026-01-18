.data
newString: .asciiz "YOU ARE TEENAGER"
newString1: .asciiz "YOU ARE NOT A TEENAGER"
.text
li $t0, 18
li $t1, 15
slt $t2,$t0,$t1 
bne $t2, $zero ,NTEEN


TEEN:
li $v0,4
la $a0,newString
syscall
j exit

NTEEN:
li $v0,4
la $a0,newString1
syscall


exit:
li $v0, 10
syscall
