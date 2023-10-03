	.data
	
	.text
	.globl main
	
main:
	li $t0, 0xFFFF0010
	li $t1, 0
	li $t2, 1
	
	for:
	addi $t1, $t1, 1
	sb $t2, ($t0)
	sll $t2, $t2, 1
	
	
	
	bne $t1, 8, for
