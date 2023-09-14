.text
.globl main

main:
la $t0, regSpace 

la $t1, name1
sw $t1, ($t0)

la $t1, name2
sw $t1, 4($t0)
  #reserve t0 with 8 bytes




li $v0, 4
lw $a0, 4($t0)
syscall

.data
regSpace: .space 8  
name1: "hamza"
name2: "jenna"