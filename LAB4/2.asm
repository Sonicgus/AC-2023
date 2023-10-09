	.data
	.text
	.globl main

main:
	li $a0, -2
	li $a1, -1
	
	
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