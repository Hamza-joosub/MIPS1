.data
    num1:   .word   12
    num2:   .word   13
    num3:   .word   0
.text
.globl     main

main:
    lw		$t1, num1
    lw      $t2,num2
    add		$t3,$t1,$t2
    sw		$t3, num3

exit:	# 
    li      $v0, 10
    syscall 		# $vo = 
    
    	# 
    