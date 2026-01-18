.data
A:       .word 12
B:       .word 7
C:       .word 3
RESULT:  .word 0

.text
    lw   $t0, A        # $t0 = A
    lw   $t1, B        # $t1 = B
    add  $t2, $t0, $t1 # $t2 = A + B
    lw   $t3, C        # $t3 = C
    sub  $t4, $t2, $t3 # $t4 = (A + B) - C
    sw   $t4, RESULT   # RESULT = (A + B) - C
    li $v0,1
    move $a0,$t4
    syscall