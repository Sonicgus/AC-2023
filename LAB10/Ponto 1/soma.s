	.data
	
	.text
	.globl	soma

soma:
	addiu $sp, $sp, -8
	sw $ra, 0($sp)

	move $v0, $a0

	beq $a0, 0, final

	sw $a0, 4($sp)

	addi $a0, $a0, -1

	jal soma

	lw $a0, 4($sp)

	add $v0, $v0, $a0

final:
	lw $ra, 0 ($sp)
	addiu $sp, $sp, 8
	jr	$ra
