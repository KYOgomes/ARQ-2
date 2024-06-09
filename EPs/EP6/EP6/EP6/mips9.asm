.globl main
main:
ori $t0, $zero, 0x1001 
sll $t0, $t0, 16

lw $s0, 0($t0)
lw $s1, 4($t0)
lw $s2, 8($t0)
lw $s3, 12($t0)

add $t1, $s0, $s1 # t1 = x1 + x2
add $t1, $t1, $s2 # t1 = x1 + x2 + x3
add $s4, $t1, $s3 # soma = t1 + x4
sw $s4, 16($t0)
#verificar se a soma 
lw $t2, 16($t0)
nop

.data
x1:.word 15 #$s0
x2:.word 25 #$s1
x3:.word 13 #$s2
x4:.word 17 #$s3
soma:.word -1 #$s4