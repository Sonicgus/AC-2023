		.data

		.text
		.globl	manipula_tabela

inverte_tabela:
	# t0 inicio $t5 fim 
	#
	move $t0, $a1
	move $t2, $a0
	mul $t3, $a1, 4
	add $t3, $t3, $a0

	li $t5, 0

	addiu $sp, $sp, -4
	sw $ra, 0($sp)	

for2:
	beq $0, $t0, sair2
	
	lw $t2, ($t1)
	lw $t4, ($t3)


	sw $t4, ($t1)
	sw $t2, ($t3)

	addi $t1, $t1, 4
	addi $t3, $t3, -4

	addi $t0, $t0, -1
	addi $t5, $t5, 1
	j for2

sair2:

	lw $ra, 0 ($sp)
	addiu $sp, $sp, 4

	jr	$ra

manipula_tabela:

	# Codigo da função aqui

	move $t0, $a1
	move $t1, $a0

	addiu $sp, $sp, -4
	sw $ra, 0($sp)

for:
	beq $0, $t0, sair
	
	lw $t2, ($t1)

	mul $t2, $t2, 2

	sw $t2, ($t1)
	addi $t1, $t1, 4
	addi $t0, $t0, -1
	j for

sair:

	jal inverte_tabela

	lw $ra, 0 ($sp)
	addiu $sp, $sp, 4

	jr	$ra
