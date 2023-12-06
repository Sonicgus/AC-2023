    .data

    .text
    .globl manipula_array

manipula_array:
    loop:
        beq		$a1, $0, final

        lw		$t0, 0($a0)		# 
        andi $t0, $t0, 1
        sw $t0, 0($a0)

        addi $a0, $a0, 4
        addi $a1, $a1, -1
        j loop
    final:
        jr      $ra
