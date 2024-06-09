.data
A: .word -42   # Exemplo de valor negativo. Pode ser qualquer número

.text
.globl main
main:
    # Carregar o valor de A da memória
    la $t0, A          # Carregar o endereço de A
    lw $t1, 0($t0)     # Carregar o valor de A em $t1

    # Verificar se o valor é negativo
    bltz $t1, make_positive  # Se $t1 < 0, pular para make_positive

    # Se o valor não é negativo, simplesmente armazenar novamente
    j end              # Pular para a etiqueta de fim

make_positive:
    # Tornar o valor positivo
    sub $t1, $zero, $t1  # $t1 = -$t1 (tornar $t1 positivo)

end:
    # Armazenar o valor absoluto de volta na memória
    sw $t1, 0($t0)     # Armazenar o valor de A em memória

