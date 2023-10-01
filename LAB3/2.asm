.data
table:  .byte 63, 6, 91, 79, 102, 109, 125, 7, 127, 103, 119 , 124, 57, 94, 121, 113

.text
.globl main

main:
    li $t0, 0xFFFF0010
    li $v0, 0xFFFF0012
    li $v1, 0xFFFF0014
    la $t1, table
    li $t2, 0x0
        
    for:
    sb $zero, ($v0)
    
    lbu $t2, 0($v1)
    andi $t2, $t2, 0x0F
    
    add $t2, $t2, $t1
    lbu $t2, 0($t2)
    sb $t2, 0($t0)
        
    bne $zero 1, for
