.data
	numero: .word 3
.text
.globl main
main:
	lw $a0, numero
	
	jal funcao
	
	add $a0, $v0, $zero
	li  $v0, 1
    	syscall
	
	li $v0, 10
    	syscall

funcao:
	li $s0, 0 #count
	move $s1, $a0
for:
	beq $s1, 0, sair	
	andi $s2,$s1, 1
	srl $s1, $s1, 1
	
	bne $s2, 1, for
	addi $s0, $s0, 1
	j for
sair:
	andi $v0, $s0, 1
	jr $ra