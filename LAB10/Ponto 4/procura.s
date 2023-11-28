	.data
	
	.text
	.globl	procura

# procura(int *tab, int low, int high, int num)

# t0 mid
# t1 elemento mid
procura:
	addiu $sp, $sp, -4
	sw $ra, 0($sp)	

	add $t0, $a1, $a2
	sra $t0, $t0, 1
	sll $t2, $t0, 2
	
	addu $t1, $t2, $a0

	lw $t1, 0($t1)

	beq $a3, $t1, igual
	beq $a1, $a2, naoexiste

	blt $a3, $t1, menor

	#else: maior
	addi $t0, $t0, 1
	move $a1, $t0

	jal procura
	
	j final
igual:
	move $v0, $t0
	j final
menor:
	addi $t0, $t0, -1
	move $a2, $t0
	
	jal procura
	
	j final

naoexiste:
	li $v0, -1

final:
	lw $ra, 0 ($sp)
	addiu $sp, $sp, 4
	jr	$ra
