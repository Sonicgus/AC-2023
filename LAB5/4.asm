	.data
Tab:	.word 10, 24, 32, 40, 64, 128
tam:	.word 6
resultado:	.word 0
	.text
	.globl main
main:
	la $a0, Tab
	la $a1, tam
	
	jal Polycalc
	
	la $t0, resultado
	sw $v0, 0($t0)
	
	move $a0, $v0
	
	li  $v0, 1
    	syscall
    	
    	li $v0, 10
    	syscall

Polycalc:
	move $s1, $a0
	li $v0, 0
	li $s0, 0
	lw $s7, 0($a1)
for:
	lw $s2, 0($s1)
	
	srlv $s2, $s2, $s0
	
	add $v0, $s2, $v0
		
	addi $s1, $s1, 4
	addi $s0, $s0, 1
	bne $s0, $s7, for
	jr $ra
