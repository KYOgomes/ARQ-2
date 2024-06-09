# Associacao
# x-> $s0
# y-> $s1
# z-> $s2

# x=100.000; y=100.000; z = x + y
#  0x186A0  0x30D40

# inicio
.text
.globl main

main:
ori $t0, $zero, 0x186A  # t0 = 0 + 6250
sll $s0,   $t0,      4  # x  = 6250 * 8 = 100.000
ori $t1, $zero, 0x30D4  # t1 = 0 + 12500
sll $s1,   $t1,      4  # y  = 12500* 8 = 200.000        
add $s2,   $s0,    $s1  # z = 100.00 + 200.000
