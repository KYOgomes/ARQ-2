# Associacao
# x-> $s0    y-> $s1   z-> $s2
# x=3; y=4; z=(15*x+67*y)*4

# inicio
.text
.globl main
main:
ori $s0,$zero, 3  # x  = 0 + 3 = 3
ori $s1,$zero, 4  # y  = 0 + 4 = 4
sll $t0,$s0,   4  # t0 = 16x
sub $t0,$t0, $s0  # t0 = 16x - x = 15x
sll $t1,$s1,   6  # t1 = 64y
sll $t2,$s1,   1  # t2 = 2y
add $t2,$t2, $s1  # t2 = 2y + y = 3y
add $t1,$t1, $t2  # t1 = 64y+3y = 67y
add $t0,$t0, $t1  # t0 = 15x + 67y
sll $s2,$t0,   2  # z = (15x+67y) * 4
# fim
