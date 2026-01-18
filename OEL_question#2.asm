.data
array: .word 13,23,-32,-56,99,4
.text
main:

li $t1,6
move $t0,$zero
la $t2,array
startloop:
beq $t0,$t1,endloop
lw $t3,($t2)
blt $t3,$zero,count
add $t0,$t0,1
add $t2,$t2,4
j startloop
count:
add $s0,$s0,1
add $t0,$t0,1
add $t2,$t2,4
j startloop
endloop:
li $v0,1
move $a0,$s0
syscall
##exiting the program
li $v0,10
syscall
