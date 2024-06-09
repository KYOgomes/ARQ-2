.data
A: .word 42          # Exemplo de valor. Pode ser qualquer número
result: .word 0      # Posição para armazenar o resultado (0 para par, 1 para ímpar)

.text
.globl main
main:
    # Carregar o valor de A da memória
    la $t0, A          # Carregar o endereço de A
    lw $t1, 0($t0)     # Carregar o valor de A em $t1

    # Verificar se o valor é par ou ímpar
    andi $t2, $t1, 1   # AND bit a bit entre $t1 e 1 (verifica o bit menos significativo)
    beq $t2, $zero, is_even  # Se $t2 == 0, pular para is_even

is_impar:
    # Se o valor é ímpar, armazenar 1
    li $t3, 1          # Carregar 1 em $t3
    la $t0, result     # Carregar o endereço de result
    sw $t3, 0($t0)     # Armazenar 1 em result
    j end              # Pular para a etiqueta de fim

is_par:
    # Se o valor é par, armazenar 0
    li $t3, 0          # Carregar 0 em $t3
    la $t0, result     # Carregar o endereço de result
    sw $t3, 0($t0)     # Armazenar 0 em result

