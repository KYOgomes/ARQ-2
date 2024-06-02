# Associação
# x-> $s0
# y-> $s1
# z-> $s2

# ?

# inicio
.text
.globl main

main:
ori $t0, $zero, 0x7FFF  # t0 = 0 + 
sll $t0,       $t0, 16  # t0  =  *  = 
ori $s0, $t0,   0xFFFF  # x = 0 + 
ori $t1, $zero, 0x493E  # 
sll $t1,      $t1,   4  #
sll $t2,      $s1,   2  #
sub $s2,      $s0, $t2  #