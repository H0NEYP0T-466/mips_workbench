.data
newline:          .asciiz "\n"
banner:           .asciiz "Traffic Light Controller (One-Way) - MIPS\n"
tick_msg:         .asciiz "State: "
line_sep:         .asciiz "---------------------------------------\n"
sig_hdr:          .asciiz "signal info\n"
ow_hdr:           .asciiz "One-Way:\n"
red_lbl:          .asciiz "  red light: "
yellow_lbl:       .asciiz "  yellow light: "
green_lbl:        .asciiz "  green light: "
rem_sfx:          .asciiz " s remaining:"
cr:               .asciiz "\r"
pad:              .asciiz "   "

name0: .asciiz "Green"
name1: .asciiz "Yellow"
name2: .asciiz "Red"

state_name_ptrs:
    # Order: Green, Yellow, Red, Yellow
    .word name0, name1, name2, name1

durations_ms:
    # Match the order above; add duration for the second Yellow
    .word 15000, 5000, 15000, 5000

num_states: .word 4

state_masks:
    .word 1, 2, 4, 2

.text
.globl main

main:
    li   $v0, 4
    la   $a0, banner
    syscall

    la   $s0, durations_ms
    la   $s1, state_masks
    la   $s2, state_name_ptrs
    lw   $s3, num_states
    move $s4, $zero

loop_states:
    li   $v0, 4
    la   $a0, tick_msg
    syscall

    sll  $t0, $s4, 2
    addu $t1, $s2, $t0
    lw   $a0, 0($t1)
    li   $v0, 4
    syscall

    li   $v0, 4
    la   $a0, newline
    syscall

    sll  $t0, $s4, 2
    addu $t1, $s1, $t0
    lw   $a0, 0($t1)
    jal  print_lights

    sll  $t0, $s4, 2
    addu $t1, $s0, $t0
    lw   $a0, 0($t1)
    jal  countdown_ms

    addiu $s4, $s4, 1
    bne  $s4, $s3, cont_ok
    move $s4, $zero
cont_ok:
    j    loop_states

print_lights:
    addiu $sp, $sp, -8
    sw   $ra, 4($sp)
    sw   $a0, 0($sp)

    li   $v0, 4
    la   $a0, line_sep
    syscall
    li   $v0, 4
    la   $a0, sig_hdr
    syscall
    li   $v0, 4
    la   $a0, line_sep
    syscall

    lw   $t6, 0($sp)

    srl  $t0, $t6, 2
    andi $t0, $t0, 1
    srl  $t1, $t6, 1
    andi $t1, $t1, 1
    andi $t2, $t6, 1

    li   $v0, 4
    la   $a0, ow_hdr
    syscall
    li   $v0, 4
    la   $a0, red_lbl
    syscall
    li   $v0, 1
    move $a0, $t0
    syscall
    li   $v0, 4
    la   $a0, newline
    syscall
    li   $v0, 4
    la   $a0, yellow_lbl
    syscall
    li   $v0, 1
    move $a0, $t1
    syscall
    li   $v0, 4
    la   $a0, newline
    syscall
    li   $v0, 4
    la   $a0, green_lbl
    syscall
    li   $v0, 1
    move $a0, $t2
    syscall
    li   $v0, 4
    la   $a0, newline
    syscall

    lw   $ra, 4($sp)
    addiu $sp, $sp, 8
    jr   $ra

countdown_ms:
    addiu $sp, $sp, -8
    sw   $ra, 4($sp)
    sw   $a0, 0($sp)

    lw   $t0, 0($sp)
    addiu $t5, $t0, 999
    li   $t6, 1000
    divu $t5, $t6
    mflo $t1

    li   $v0, 1
    move $a0, $t1
    syscall
    li   $v0, 4
    la   $a0, rem_sfx
    syscall
    li   $v0, 4
    la   $a0, pad
    syscall

cd_loop:
    blez $t0, cd_done
    sltiu $t2, $t0, 1000
    beq   $t2, $zero, step_1000
    move  $a0, $t0
    j     have_step
step_1000:
    li    $a0, 1000
have_step:
    li   $v0, 32
    syscall
    subu $t0, $t0, $a0
    addiu $t5, $t0, 999
    li   $t6, 1000
    divu $t5, $t6
    mflo $t1
    li   $v0, 4
    la   $a0, cr
    syscall
    li   $v0, 1
    move $a0, $t1
    syscall
    li   $v0, 4
    la   $a0, pad
    syscall
    j    cd_loop

cd_done:
    # Print only the newline to end the line; avoid printing 0 again
    li   $v0, 4
    la   $a0, newline
    syscall
    lw   $ra, 4($sp)
    addiu $sp, $sp, 8
    jr    $ra
