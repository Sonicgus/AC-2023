.data
	numero: .word 3
.text
.globl main
main:
	la $a0, numero
	lw $a0, ($a0)
	
	jal funcao
	
	move $a0, $v0
	li  $v0, 1
    	syscall
	
	li $v0, 10
    	syscall

funcao:
	li $v0, 0 #count
	move $s1, $a0
for:
	andi $s2, $s1, 1
	
	xor $v0, $v0, $s2
	
	srl $s1, $s1, 1
	
	bne $s1, 0, for
	
	jr $ra
