		.data

		.text
		.globl	polycalc
polycalc:

	# Codigo da função aqui

	# buscar a4
	lw $t6, 16($sp)

	add $t0, $a0, $a1
	mul $t1, $a3, $t6

	li $t2, 3
	mul $t1, $t2, $t1

	sub $t1, $a2, $t1

	mul $t0, $t0, $t1
	
	li $t1, 5

	mul $v0, $t1, $t0

	jr	$ra
