.data
table:  .byte 63, 6, 91, 79, 102, 109, 125, 7, 127, 103, 119 , 124, 57, 94, 121, 113

.text
.globl main

main:
    li $t0, 0xFFFF0010
    la $t1, table
    li $t2, 0x0
        
    for:
    
    andi $t3, $t2, 0x0F
    add $t3, $t3, $t1
    lbu $t3, 0($t3)
    sb $t3, 0($t0)
    
    andi $t3, $t2, 0xF0
    srl $t3, $t3, 4
    add $t3, $t3, $t1
    lbu $t3, 0($t3)
    sb $t3, 1($t0)

    
    addi $t2, $t2, 1
    bne $t2, 256, for
