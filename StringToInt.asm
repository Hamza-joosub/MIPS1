.text
.globl main

main:
la $t0, StringNumber
li $s1, 10
lb $t2, ($t0)
lb $t1, 1($t0)
subi $t3, $t1, 48
subi $t4, $t2, 48
mul $t4, $t4, $s1
add $s0, $t4, $t3

li $v0, 1
move $a0, $s0
syscall


.data
StringNumber: .asciiz "72"