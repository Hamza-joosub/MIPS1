.text 
.globl main

main:

la $t0, num1
la $t1, num2
la $t3, num3
add $t3, $t1, $t2
sw $t3, num3

li $v0, 10
syscall

.data
num1: .word 3
num2: .word 3
num3: .word 0

