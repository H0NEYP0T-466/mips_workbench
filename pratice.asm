.data
msg: .asciiz "Enter a number: "
msg2: .asciiz "Reversed number is: "

.text
main:
    li $v0, 4
    la $a0, msg
    syscall

    li $v0, 5
    syscall
    move $t0, $v0
    
rem $t1, $t0, 10   # get last digit (9)
div $t0, $t0, 10   # t0 = 678

li $v0,1
move $a0,$t1
syscall

rem $t2, $t0, 10   # get next digit (8)
div $t0, $t0, 10   # t0 = 67

li $v0,1
move $a0,$t2
syscall

    
    addi $sp, $sp, -4  
    sw $t0, 0($sp)
    
    lw $t1, 0($sp)       
    addi $sp, $sp, 4 
    
    li $v0, 4
    la $a0, msg2
    syscall
    
     li $v0, 1
    move $a0, $t1
    syscall
    
    li $v0,10
    syscall