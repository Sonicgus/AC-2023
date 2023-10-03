.data
table:  .byte 63, 6, 91, 79, 102, 109, 125, 7, 127, 103, 119 , 124, 57, 94, 121, 113

.text
.globl main

main:
    li $t0, 0xFFFF0010
    la $t4, table
    li $t8 0
    
    for:
    lbu $t2, 0($t4)

    sb $t2, 0($t0)
    
    add $t4, $t4, 1
    add $t8, $t8, 1
    bne $t8, 16, for
