	.data
	
	.text
	.globl	mdc

mdc:
	move $v0, $a0

	beq $a1, 0, final
	beq $a0, $a1, final

	addiu $sp, $sp, -4
	sw $ra, 0($sp)

	move $t0, $a0

	div $t1, $a0, $a1

	mflo $a1

	move $a0, $t0

	jal mdc

	#---------------
	lw $ra, 0 ($sp)
	addiu $sp, $sp, 4

final:
	jr	$ra
