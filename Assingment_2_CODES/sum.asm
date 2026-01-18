.data
a: .word 7         
b: .word 5         
msg: .asciiz "The Sum is = "
.text
main:

    lw  $t0, a     
    lw  $t1, b          
    sub  $t2, $t0, $t1  
    
    li   $v0, 4
    la   $a0, msg
    syscall

    li   $v0, 1
    move $a0, $t2
    syscall

    li   $v0, 10
    syscall
