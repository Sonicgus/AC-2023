# O cabeçalho da função bin_img em C é
#
# void bin_img(unsigned char *ptr, int w, int h, unsigned char limiar);

	.data
	
	.text
	.globl	bin_img
	
bin_img:
	mul $t0, $a1, $a2

for1:
	beq $t0, $0, fim

	lb $t1, ($a0)

	bgt $t1, $a3, if1

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

