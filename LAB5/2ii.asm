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
	sw $v0, ($t0)
	
	la $t5, tab
	
	lw $t0, ($a1)
for2:
	lw $a0, ($t5)
	
	li  $v0, 34
    	syscall
    	
    	addi $t0, $t0, -1
    	addi $t5, $t5, 4
    	bne $t0 , 0, for2
    	
    	li $v0, 10
    	syscall

oddnumber:
	lw $s0, ($a1)
	move $s1, $a0
	li $v0, 0
for:
	lw $s2, ($s1)
	
	andi $s3, $s2, 1
	bne $s3, 1, salta
	xori $s2, $s2, 1
	sw $s2, ($s1)
	addi $v0, $v0, 1
salta:
	addi $s1, $s1, 4
	addi $s0, $s0, -1
	bne $s0, 0, for
	jr $ra
