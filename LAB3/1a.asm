	.data
	
	.text
	.globl main
	
main:
	li $t0, 0xFFFF0010
	li $t1, 1
	for:
	sb $t1, ($t0)
	sll $t1, $t1, 1
	bne $t1, 256, for