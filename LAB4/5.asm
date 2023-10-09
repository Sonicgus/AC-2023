.data
str: .asciiz "socorro"
ntrocas: .word 0
c1:	.byte 'o'
c2:	.byte 'u'
	
.text
.globl main
main:
	la $a0, str
	lbu $a1, c1
	lbu $a2, c2
	jal funcao
	
	li  $v0, 4
    	syscall
	
	sw $v0, ntrocas
	lw $a0, ntrocas
	li  $v0, 1
    	syscall
	
	
	
	li $v0, 10
    	syscall

funcao:
	li $v0, 0 # resultado
	move $s0, $a0 #copia
for:
	lbu $s1, ($s0)
	beq $s1, 0, sair
	
	bne $s1, $a1, naotrocar
	sb $a2, ($s0)
	addi $v0, $v0, 1
naotrocar:
	addi $s0, $s0, 1
	j for
sair:
	jr $ra