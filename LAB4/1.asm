	.data
numero:	.word 0x10203040

	.text
	.globl main

main:
	la $a0, numero
	lw $a0, ($a0)
	
	jal troca
	
	move $a0, $v0
	li  $v0, 34
    	syscall
    	
    	li $v0, 10
    	syscall

troca:
	move $s1, $a0 # guardar valor numa variavel temporaria
	li $v0, 0 # guardar valor final
	
for:
	andi $s2, $s1, 0xFF
	srl $s1, $s1, 8
	
	sll $v0, $v0, 8
	add $v0, $v0, $s2
	
	bne $s1, 0, for
	
	jr $ra
