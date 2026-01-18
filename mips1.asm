.data
newString: .asciiz "Honeypot"
.text
li $v0, 04
la $a0, newString
syscall
