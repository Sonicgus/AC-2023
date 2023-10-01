.data
table:  .byte 63, 6, 91, 79, 102, 109, 125, 7, 127, 103, 119 , 124, 57, 94, 121, 113

.text
.globl main

main:
    li $t0, 0xFFFF0010
    li $t1, 0xFFFF0012
    li $t2, 0xFFFF0014
    la $t3, table
        
    start:
    li $t4, 1
    
    for:
    
    sb $t4, ($t1)
    
    lh $t5, ($t2)
    
    bne $t5, $zero, draw
    
    sll $t4, $t4, 1
    
    bne $t4, 16, for
    
    sb $zero, ($t0)
    
    j start
    
    draw:
        
    add $v0, $v0, $t3
    
    lb $v0, ($v0)
    
    sb $v0, ($t0)
    
    j start