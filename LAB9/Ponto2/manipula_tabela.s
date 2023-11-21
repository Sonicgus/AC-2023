		.data

		.text
		.globl	manipula_tabela

inverte_tabela:
	
	mul $t0, $a1, 4
	add $t0, $t0, $a0
	

for2:
	beq $a0, $t0, sair2
	
	addi $t0, $t0, -4

	lw $t1, ($a0)
	lw $t2, ($t0)

	sw $t2, ($a0)
	sw $t1, ($t0)
	

	addi $a0, $a0, 4
	
	j for2

sair2:
	jr	$ra


manipula_tabela:

	# Codigo da função aqui
	# a0 array / a1 tamanho
	move $t0, $a0
	move $t1, $a1
	

	addiu $sp, $sp, -4
	sw $ra, 0($sp)

for:
	beq $0, $t1, sair
	
	lw $t2, ($t0)

	mul $t2, $t2, 2

	sw $t2, ($t0)
	addi $t0, $t0, 4
	addi $t1, $t1, -1
	j for

sair:

	jal inverte_tabela

	lw $ra, 0 ($sp)
	addiu $sp, $sp, 4

	jr	$ra
