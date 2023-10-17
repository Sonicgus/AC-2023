	.data
str:	.asciiz "Uma Frase!"
	.text
	.globl main
main:
	la $a0, str
	
	jal funcao
	
	li  $v0, 4
    	syscall
	
	li $v0, 10
    	syscall

funcao:
	move $s0, $a0 #copia
for:
	lbu $s1, 0($s0)
	beq $s1, 0, sair
	blt $s1, 0x61, salta
	bgt $s1, 0x7A, salta
	
	addi $s1, $s1, -32
	sb $s1, 0($s0)
	
salta:
	addi $s0, $s0, 1
	j for
sair:
	jr $ra
