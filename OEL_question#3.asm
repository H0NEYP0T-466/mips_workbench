.data
msg: .asciiz "Sum of digits = "
msg2: .asciiz "Enter a number: "

.text
main:
    li $v0, 4
    la $a0, msg2
    syscall
    
    li $v0, 5
    syscall
    move $a0, $v0     
    jal sumDigits
    
    move $t0, $v0 
    
    li $v0, 4
    la $a0, msg
    syscall
    
    li $v0, 1
    move $a0, $t0     
    syscall
    
    li $v0, 10
    syscall

sumDigits:
    addi $sp, $sp, -8  
    sw $ra, 4($sp)       
    sw $t0, 0($sp)       
    li $v0, 0         

sum_loop:
    beq $a0, $zero, finish   
    li $t0, 10
    div $a0, $t0
    mfhi $t0               
    mflo $a0              
    add $v0, $v0, $t0       
    j sum_loop           

finish:
    lw $t0, 0($sp)
    lw $ra, 4($sp)
    addi $sp, $sp, 8
    jr $ra