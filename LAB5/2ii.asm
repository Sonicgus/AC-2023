	.data
tab: 	.word 1,2,3,4
n:	.word 4
resultado:	.word 0
	.text
	.globl main
main:
	la $a0, tab
	la $a1, n
	
	jal oddnumber
	
	la $t0, resultado
	sw $v0, 0($t0)
	
	la $t5, tab
	
	lw $t0, 0($a1)
for2:
	li $a0, 10 #print newline character
	li  $v0, 11
    	syscall

	lw $a0, 0($t5)
	
	li  $v0, 1
    	syscall
    	
    	addi $t0, $t0, -1
    	addi $t5, $t5, 4
    	bne $t0, 0, for2
    	
    	li $v0, 10
    	syscall

oddnumber:
	lw $s0, 0($a1)
	move $s1, $a0
	li $v0, 0
for:
	lw $s2, 0($s1)
	
	andi $s2, $s2, 0xFFFFFFFE
	sw $s2, 0($s1)
	addi $v0, $v0, 1
	
	addi $s1, $s1, 4
	addi $s0, $s0, -1
	bne $s0, 0, for
	jr $ra
