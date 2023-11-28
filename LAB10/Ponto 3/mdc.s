	.data
	
	.text
	.globl	mdc

mdc:
	addiu $sp, $sp, -4
	sw $ra, 0($sp)

	move $v0, $a0

	beq $a1, 0, final
	beq $a0, $a1, final

	move $t0, $a1

	div $t1, $a0, $a1

	mfhi $a1

	move $a0, $t0

	

	jal mdc

final:
	lw $ra, 0 ($sp)
	addiu $sp, $sp, 4
	
	jr	$ra
