	.data
	
	.text
	.globl	potencia

potencia:
	addiu $sp, $sp, -4
	sw $ra, 0($sp)

	li $v0, 1

	beq $a1, 0, final

	addi $a1, $a1, -1

	jal potencia

	mul $v0, $v0, $a0

final:
	lw $ra, 0($sp)
	addiu $sp, $sp, 4

	jr	$ra
