.text
.globl main

main:
	
	
	
	#prompt
	la $a0, prompt
	li $v0, 4
	syscall
	
	li $a1, 10
	la $a0, string1
	li $v0, 8
	syscall
	move $t0, $a0
	
	li $a1, 10
	la $a0, string2
	li $v0, 8
	syscall
	move $t1, $a0
	
	li $a1, 10
	la $a0, string3
	li $v0, 8
	syscall
	move $t2, $a0
	
	li $v0, 4
	move $a0, $t2
	syscall
	
	li $v0, 4
	move $a0, $t1
	syscall
	
	li $v0, 4
	move $a0, $t0
	syscall
	
	
	
	li $v0, 10
	syscall
	
.data
array: .space 100
string1: .space 100
string2: .space 100
string3: .space 100
prompt: .asciiz "Enter 3 Lines of Text: "
