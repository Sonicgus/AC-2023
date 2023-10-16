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
	
	move $a0, $v0
	li  $v0, 34
    	syscall
    	
    	li $v0, 10
    	syscall

oddnumber:
	lw $s0, ($a1)
	move $s1, $a0
	li $v0, 0
for:
	lw $s2, ($s1)
	
	andi $s2, $s2, 1
	bne $s2, 1, salta
	addi $v0, $v0, 1
salta:
	addi $s1, $s1, 4
	addi $s0, $s0, -1
	bne $s0, 0, for
	jr $ra