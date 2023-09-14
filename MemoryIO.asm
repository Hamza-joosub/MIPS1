.text 
.globl main

main:

la $t0, num1
lb $t1, ($t0)
subi $t1, $t1, 48
mul $t1, $t1, 10
addi $t0, $t0, 1
lb $t2, ($t0)
subi $t2, $t2, 48
add $t1, $t1, $t2

la $t0, num2
lb $t2, ($t0)
subi $t2, $t2, 48
mul $t2,$t2, 10
addi $t0, $t0, 1
lb $t3, ($t0)
subi $t3, $t3, 48
add $t2, $t2, $t3


add $t1, $t1, $t2
sw $t1, num3

li $v0, 1
lw $a0, num3
syscall

li $v0, 10
syscall

.data
num1: .asciiz "32"
num2: .asciiz "48"
num3: .word 0

