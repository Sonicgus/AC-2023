.data
table:  .byte 63, 6, 91, 79, 102, 109, 125, 7, 127, 103, 119 , 124, 57, 94, 121, 113

.text
.globl main

main:
    li $a0, 0xFFFF0010 # endereço do display direito
    li $a1, 0xFFFF0012 # inserir bit a 1 no em qual das linhas queremos ler
    li $a2, 0xFFFF0014 # ler qual linha e coluna na qual foi obtida
    la $a3, table # endereço de memoria da tabela de simbolos
    
          
    start:
    li $t0, 1 #começar na primeira linha index 0
    
    for:
    sb $t0, ($a1) # mediar a linha t0
    lbu $t1, ($a2) # guardar informaçao de teclas pressionadas
    bne $t1, $zero, draw # encontrou uma tecla pressionada
    sll $t0, $t0, 1 # avançar para a proxima linha
    bne $t0, 16, for # enquanto nao percorremos todas as linhas, continuar o ciclo
    sb $zero, ($a0) # caso nao tenha sido pressionado nenhuma tecla, desligar o ecra
    j start # verificar se alguma tecla foi pressionada desde o começo
    draw:
    #começar pelas colunas   
    srl $t2, $v0,5
    
    bne $t2, 4, salta
    addi $t2, $t2,-1
    salta:
    
    andi $v0,$t1, 0x0F
    srl $v0, $v0, 1
    
    bne $v0, 4, salta2
    addi $v0, $v0,-1
    salta2:
    
    sll $v0, $v0, 2
    
    add $t2,$v0, $t2
    
    add $t2, $t2, $a3
    lbu $t2, ($t2)
    sb $t2, ($a0)
    
    j start
