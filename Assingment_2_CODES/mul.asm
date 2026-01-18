.data
a: .word 10         
b: .word 5         
msg: .asciiz "The Solution after Multiplication is = "
.text
main:

    lw  $t0, a     
    lw  $t1, b          
    mul $t2, $t0, $t1  
    
    li   $v0, 4
    la   $a0, msg
    syscall

    li   $v0, 1
    move $a0, $t2
    syscall

    li   $v0, 10
    syscall
