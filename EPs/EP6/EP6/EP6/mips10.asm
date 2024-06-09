.data
x: .word 5
z: .word 7
y: .word 0

.text
.globl main
main:
    # Carregar os valores de x e z da memória
    la $t0, x          # Carregar o endereço de x
    lw $t1, 0($t0)     # Carregar o valor de x em $t1

    la $t0, z          # Carregar o endereço de z
    lw $t2, 0($t0)     # Carregar o valor de z em $t2

    # Calcular 127x
    li $t3, 127        # Carregar 127 em $t3
    mul $t4, $t1, $t3  # t4 = 127 * x

    # Calcular 65z
    li $t5, 65         # Carregar 65 em $t5
    mul $t6, $t2, $t5  # t6 = 65 * z

    # Calcular 127x - 65z
    sub $t7, $t4, $t6  # t7 = 127x - 65z

    # Calcular y = 127x - 65z + 1
    addi $t8, $t7, 1   # t8 = 127x - 65z + 1

    # Armazenar o valor de y na memória
    la $t0, y          # Carregar o endereço de y
    sw $t8, 0($t0)     # Armazenar o valor de y em memória

    
