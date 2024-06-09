# Associacao
# x-> $s0
# y-> $s1
# z-> $s2

# x=maior int possivel; y=300.000; z = 4 - y
#                       0x493E0

# inicio
.text
.globl main

main:
ori $t0, $zero, 0x7FFF  # t0 = 0 + 0x7FFF
sll $t0,       $t0, 16  # t0  = 0x7FFF * 16      | 0x7FFF0000 
ori $s0, $t0,   0xFFFF  # x = 7FFF00000 + 0xFFFF | 0x7FFFFFFF
ori $t1, $zero, 0x493E  # t1 = 0 + 0x000493E
sll $t1,      $t1,   4  # t1 = 0x000493E * 4     | 0x000493E0
sll $t2,      $t1,   2  # t2 = 0x00493E0 * 2     | 0x00124F80
sub $s2,      $s0, $t2  # z  = 0x7FFFFFFF - 0    | 0x7fedb07f
