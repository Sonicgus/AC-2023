	.data

A:	.word -2
B:	.word -1
	.text
	.globl main

main:
	la $a0, A
	la $a1, B
	
	lw $a0, ($a0)
	lw $a1, ($a1)
	
	jal absoluto
	
	add $a0, $v0, $zero
	li  $v0, 1
    	syscall
	
	li $v0, 10
    	syscall

absoluto:
	blt $a0, $a1, menor
	sub $v0, $a0, $a1
	jr $ra
menor:
	sub $v0, $a1, $a0
	jr $ra
