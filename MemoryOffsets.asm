.text
.globl main

main:
#loads words from list into memory
la $t0, list
lw $t1, ($t0) #loads 1st word
lw $t2, 4($t0) #loads value 4 bits later(2nd word)
lw $t3, 8($t0)
lw $t4, 12($t0)
lw $t5, 16($t0)

#adds 1 to each word
addi $t1, $t1, 1
addi $t2, $t2, 1
addi $t3, $t3, 1
addi $t4, $t4, 1
addi $t5, $t5, 1


li $v0, 10
syscall


.data
list: .word 3, 2, 1, 0, 1
reg: .space 20
