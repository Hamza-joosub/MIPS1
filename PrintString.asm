.text
.globl main

main:
la $a0, greeting
la $t0, name

li $v0, 4
syscall

move $a0, $t0
li $v0, 4
syscall

li $v0, 10
syscall

.data
greeting: .asciiz "Hello "
name: .asciiz "Hamza"
