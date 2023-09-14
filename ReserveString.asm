.text
.globl main

main:
li $v0, 4
la $a0, prompt
syscall

li $v0, 8
la $a0, StringBuffer
li $a1, 10
syscall

la $t0, StringBuffer
move $t7 , $t0		#beginning

find_end:
lb $t1, ($t0)
beq $t1, 10, terminate_find_end
addi $t0, $t0, 1
j find_end

terminate_find_end:
addi $t0, $t0, -1
la $s0, reversed

loop:
 lb $t1, ($t0)
 sb $t1, ($s0)
 beq $s0, $t7, terminate_loop
 addi $t0, $t0, -1
 addi $s0, $s0, 1
 j loop
 
 terminate_loop:
 li $v0, 4
 la $a0, reversed
 syscall
 
.data
prompt: .asciiz "enter String\n"
StringBuffer: .space 10
reversed: .space 10
