	.data
str:	.asciiz "Uma Frase!"
	.text
	.globl main
main:
	la $a0, str
	li $a1, 'c'
	
	li  $v0, 4
    	syscall
    	
    	li $a0, 10 #print newline character
	li  $v0, 11
    	syscall
	
	la $a0, str	
	jal codificaString
	
	li  $v0, 4
    	syscall
    	
    	li $a0, 10 #print newline character
	li  $v0, 11
    	syscall
    	
    	la $a0, str
    	jal codificaString
	
	li  $v0, 4
    	syscall
	
	li $v0, 10
    	syscall

codificaString:
	move $s0, $a0 #copia
for:
	lbu $s1, 0($s0)
	beq $s1, 0, sair
	
	xor $s1, $s1, $a1
	sb $s1, 0($s0)
	
salta:
	addi $s0, $s0, 1
	j for
sair:
	jr $ra
