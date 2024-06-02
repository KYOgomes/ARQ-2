# Associacaoo
# a->$s0  b->$s1  c->$s2  d->$s3
# x->$s4  y->$s5
# a=2  b=3  c=4  d=5
# x = (a+b)-(c+d)   #y = a - b + x     #b = x - y

# inicio
ori $s0, $zero, 2    # a  = 2
ori $s1, $zero, 3    # b  = 3
ori $s2, $zero, 4    # c  = 4
ori $s3, $zero, 5    # d  = 5
add $t0,   $s0, $s1  # t0 = 2 + 3 = 5
add $t1,   $s2, $s3  # t1 = 4 + 5 = 9
sub $s4,   $t0, $t1  # x  = 5 - 9 = -4
add $t0,   $s1, $s4  # t0 = 3 + (-4) = -1
sub $s5,   $s0, $t0  # y  = 2 - (-1) = 3
sub $s1,   $s4, $s5  # b  = -4 - 3 = -7