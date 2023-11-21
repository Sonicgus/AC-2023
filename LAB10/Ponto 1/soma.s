	.data
	
	.text
	.globl	soma

soma:
	move $v0, $a0

	beq $a0, 0, final

	addiu $sp, $sp, -8

	sw $ra, 0($sp)
	sw $a0, 4($sp)

	addi $a0, $a0, -1

	jal soma

	lw $a0, 4($sp)

	add $v0, $v0, $a0
	
	#---------------
	lw $ra, 0 ($sp)
	addiu $sp, $sp, 8

final:
	jr	$ra
