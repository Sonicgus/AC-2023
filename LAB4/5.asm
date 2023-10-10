.data
str: .asciiz "socorro"
ntrocas: .word 0
c1:	.byte 'o'
c2:	.byte 'u'
	
.text
.globl main
main:
	la $a0, str
	la $t1, c1
	la $t2, c2
	
	lbu $a1, 0($t1)
	lbu $a2, 0($t2)
	
	jal funcao
	
	la $t0, ntrocas
	sw $v0, 0($t0)
	
	li  $v0, 4
    	syscall
    	
	lw $a0, 0($t0)
	li  $v0, 1
    	syscall
	
	li $v0, 10
    	syscall

funcao:
	li $v0, 0 # resultado
	move $s0, $a0 #copia
for:
	lbu $s1, 0($s0)
	beq $s1, 0, sair
	
	bne $s1, $a1, naotrocar
	sb $a2, 0($s0)
	addi $v0, $v0, 1
naotrocar:
	addi $s0, $s0, 1
	j for
sair:
	jr $ra
