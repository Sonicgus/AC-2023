	.data
	
	.text
	.globl	Mandelbrot

Square:
	
	mul $v0, $a0, $a0

	jr	$ra
	
Mandelbrot:
	addiu $sp, $sp, -8
	sw $ra, 0($sp)
	#z(0) = z0
	#z(n+1) = z^2(n) + z0
	
	#Codigo da função Mandelbrot aqui!	
	move $v0, $a0

	beq $a1, 0, final

	
	addi $a1, $a1, -1
	#---------------

	jal Mandelbrot

	sw $a0, 4($sp)

	move $a0, $v0
	
	jal Square
	
	lw $a0, 4($sp)

	add $v0, $v0, $t4
	
	

final:
	#---------------
	lw $ra, 0 ($sp)
	addiu $sp, $sp, 8
	jr	$ra
