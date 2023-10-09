	.data
numero:	.word 0x10203040

	.text
	.globl main

main:
	la $t0, numero
	lw $t1, ($t0)
	move $a0, $t1
	
	jal troca
	
	add $a0, $v0, $zero
	li  $v0, 34
    	syscall
    	
    	li $v0, 10
    	syscall

troca:
	li $s0, 0 # counter
	move $s1, $a0 # guardar valor numa variavel temporaria
	li $v0, 0 # guardar valor final
	
for:
	sll $v0, $v0, 8
	andi $s2, $s1, 0xFF
	add $v0, $v0, $s2
	
	srl $s1, $s1, 8
	
	addi $s0, $s0, 1
	
	bne $s0, 4, for
	
	jr $ra
