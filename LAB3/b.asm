.data
table:  .byte 0, 6, 91, 79, 102, 109, 125, 7, 127, 103

.text
.globl main

main:
    li $t0, 0xFFFF0010
    li $t1, 0x9
    la $t4, table
    
    add $t4, $t4, $t1

    lbu $t2, 0($t4)

    sb $t2, 0($t0)
