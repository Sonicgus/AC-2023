.data
	str: .asciiz "Uma frase!"
	comp: .word 0
.text
.globl main
main:
	la $a0, str
	
	jal funcao
	
	sw $v0, comp
	
	li  $v0, 1
	lw $a0, comp
    	syscall
	
	li $v0, 10
    	syscall

funcao:
	li $v0, 0 # resultado
	move $s0, $a0 #copia
for:
	lbu $s1, ($s0)
	beq $s1, 0, sair
	addi $s0, $s0, 1
	addi $v0, $v0, 1
	j for
sair:
	jr $ra