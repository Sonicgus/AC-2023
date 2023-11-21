# O cabeçalho da função bin_img em C é
#
# void bin_img(unsigned char *ptr, int w, int h);

	.data
	
	.text
	.globl	bin_img

media:
	li $v0, 0
	mul $t0, $a1, $a2
for2:
	beq $0, $2, sair2

	lb $t1, ($a0)

	add $v0, $v0, $t1

	addi $a0, $a0, 1
	addi $t0, $t0, -1
sair2:
	div $v0, $v0, $t0
	jr	$ra	

bin_img:

	addiu $sp, $sp, -16
	sw $ra, 0($sp)

	sw $a0, 4($sp)
	sw $a1, 8($sp)
	sw $a2, 12($sp)

	jal media

	lw $ra, 0($sp)
	lw $a0, 4($sp)
	lw $a1, 8($sp)
	lw $a2, 12($sp)

	addiu $sp, $sp, 16

	mul $t0, $a1, $a2

for1:
	beq $t0, $0, fim

	lb $t1, ($a0)

	bgt $t1, $v0, if1

	li $t7, 0
	j salta
if1:
	li $t7, 255
salta:
	sb $t7, ($a0)
	addi $a0, $a0, 1
	addi $t0, $t0, -1

	j for1	
	
fim:
		jr	$ra

