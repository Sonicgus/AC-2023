    .data

    .text
    .globl codifica_string

codifica_string: 
    li $t0, $t0, 0
    loop:
        lb		$t1, 0($a0)		# 
        beq		$t1, $0, exit	# if $t0 == $t1 then goto target
        beq $t0, $0, par
    #impar
        addi	$t1, $t1, -2			# $t0 = $t1 + 0
        
        j final
    par:
        addi	$t1, $t1, 2
    final:
        sb $t1, 0($a0)
        xori	$t0, $t0, 1			# $t0 = $t1 ^ 0
        addiu $a0, $a0, 1
        j loop
        
    exit:
        jr      $ra
