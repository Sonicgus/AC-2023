	.data
	
	.text
	.globl	max
	.globl	min
	
max:

	#Codigo da função max aqui!

	move $v0, $a0

	ble $v0, $a1, jump1
	move $v0, $a1
jump1:
	ble $v0, $a2, jump2
	move $v0, $a2
jump2:
	ble $v0, $a3, jump3
	move $v0, $a3
jump3:
	

	jr	$ra

min:

	#Codigo da função min aqui!

	move $v0, $a0

	bge $v0, $a1, jump4
	move $v0, $a1
jump4:
	bge $v0, $a2, jump5
	move $v0, $a2
jump5:
	bge $v0, $a3, jump6
	move $v0, $a3
jump6:

	jr	$ra
