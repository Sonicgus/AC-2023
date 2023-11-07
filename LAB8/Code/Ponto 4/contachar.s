	.data
	
	.text
	.globl	conta_char
	
conta_char:

	#Codigo da função aqui!

	li $v0, 0 # resultado
	move $t0, $a0 #copia
for:
	lbu $t1, 0($t0)
	beq $t1, 0, sair
	
	bne $t1, $a1, diferente
	addi $v0, $v0, 1
diferente:
	addi $t0, $t0, 1
	j for
sair:

	jr	$ra
