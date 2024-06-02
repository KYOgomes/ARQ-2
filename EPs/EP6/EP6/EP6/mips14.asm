#14
# $ de A: 0x1001.0000
# $ de flag: 0x1001.0004
.text
.globl main
main:
lui  $t0,0x1001
lw   $s0,0($t0)  # s0 = A
andi $s1,$s0,1  
sw   $s1,4($t0) 

fim:

.data
a: .word 3
flag: .word -1

#   termina em
#pos -> 0
#neg -> 1