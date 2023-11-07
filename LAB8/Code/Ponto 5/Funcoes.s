	.data
	
	.text
	.globl	max
	.globl	min
	
max:

	#Codigo da função max aqui!

	beq $0, $a1, exit1

	li $t0, 0

	move $t1, $a0

	lw $v0, ($t1)
	addi $t1, $t1, 4
	addi $t0, $t0, 1

loop1:
	beq $t0, $a1, exit1

	lw $t2, ($t1)
	addi $t1, $t1, 4
	addi $t0, $t0, 1

	ble $t2, $v0, loop1
	move $v0, $t2

	j loop1
exit1:

	jr	$ra

min:

	#Codigo da função min aqui!

	beq $0, $a1, exit2

	li $t0, 0

	move $t1, $a0

	lw $v0, ($t1)
	addi $t1, $t1, 4
	addi $t0, $t0, 1

loop2:
	beq $t0, $a1, exit2

	lw $t2, ($t1)
	addi $t1, $t1, 4
	addi $t0, $t0, 1

	bge $t2, $v0, loop2
	move $v0, $t2

	j loop2
exit2:

	jr	$ra
