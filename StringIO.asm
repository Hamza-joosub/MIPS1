.text
.globl main

main:
la $a0, word1
li $a1, 12

li $v0, 8
syscall

li $v0, 4
syscall

li $v0, 10
syscall


.data
word1: .space 20 
