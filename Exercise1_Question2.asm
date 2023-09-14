.text
.globl main

main:
	#prompt
	la $a0, proompt
	li $v0, 4
	syscall
	
	#enter String 1
	li $v0, 8
	la $a0, buffer1
	li $a1, 10
	syscall
	move $t0, $a0
	
	#enter String 2
	li $v0, 8
	la $a0, buffer2
	li $a1, 10
	syscall
	move $t1, $a0
	
	#print Strings
	li $v0, 4
	move $a0, $t0
	syscall
	
	li $v0, 4
	move $a0, $t1
	syscall
	
	beq $t1, $t2, equal
	la $a0, noPrompt
	li $v0, 4
	syscall
	
	li $v0, 10
	syscall

equal:
	la $a0, yesPrompt
	li $v0, 4
	syscall
	
	li $v0, 10
	syscall

	

	
	
	
	

.data
proompt: .asciiz "Enter a dividend and divisor::"
yesPrompt: "yes"
noPrompt: "no"
buffer1: .space 64
buffer2: .space 64