.data
string: .asciiz "Hello World"
int: .word 0
char: .byte 'P'
array: .word 5,4,3,2,1
sum: .word 0
.text
main:

li $t1,5
move $t0,$zero
la $t2,array
startloop:
beq $t0,$t1,endloop
lw $t3,($t2)
add $t6,$t6,$t3

add $t0,$t0,1
add $t2,$t2,4

j startloop

endloop:
li $v0,1
move $a0,$t6
syscall

li $v0,10
syscall