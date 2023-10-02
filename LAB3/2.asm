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
    #começar pelas linhas
    andi $v0,$t1, 0xF0
    
    srl $v0, $v0,4
    
    li $t2, 0 #contar linhas
    contarl:
    beq $v0, 1 , terminarcl
    srl $v0, $v0, 1
    addi $t2, $t2, 1
    j contarl
    terminarcl:
    
    andi $v0,$t1, 0x0F
    
    contarc:#contar colunas
    beq $v0, 1 , terminarc
    srl $v0, $v0, 1
    addi $t2, $t2, 4
    j contarc
    terminarc:
    
    
    add $t2, $t2, $a3
    lbu $t2, ($t2)
    sb $t2, ($a0)
    
    j start

    
