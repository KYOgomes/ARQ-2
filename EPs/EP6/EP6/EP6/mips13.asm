#13
# $ de A: 0x1001.0000
.text
.globl main
main:
lui $t0,0x1001
lw  $s0,0($t0)  # s0 = A
srl $t1,$s0,31
beq $t1,$zero,fim
sub $s0,$zero,$s0   # A = 0 -(-A) = +A
sw $s0,0,($t0)

fim:

.data
a: .word -3