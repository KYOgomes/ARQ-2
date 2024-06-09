.data
x: .word 100000
z: .word 200000
y: .word 0

.text
.globl main
main:
    # Carregar os valores de x e z da memória
    la $t0, x          # Carregar o endereço de x
    lw $t1, 0($t0)     # Carregar o valor de x em $t1

    la $t0, z          # Carregar o endereço de z
    lw $t2, 0($t0)     # Carregar o valor de z em $t2

    # Calcular x - z
    sub $t3, $t1, $t2  # t3 = x - z

    # Adicionar 300000 ao resultado
    li $t4, 300000     # Carregar 300000 em $t4
    add $t5, $t3, $t4  # t5 = (x - z) + 300000

    # Armazenar o valor de y na memória
    la $t0, y          # Carregar o endereço de y
    sw $t5, 0($t0)     # Armazenar o valor de y em memória

    
