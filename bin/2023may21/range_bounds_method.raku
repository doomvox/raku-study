#!/usr/bin/env raku
# 
# range_bounds_method.raku            21 May 2023 

use v6;

my $r1 = 1 .. 5;  # 1 <= $x <= 5 
my $r2 = 1^.. 5;  # 1 <  $x <= 5 

say $r1.bounds;
say $r2.bounds;
# (1 5)
# (1 5)

# bruce gray points out that the Range is *continuous*, not discrete (integers):

#   raku -e 'my Range $r = 1 ^..^ 5; say $_ ~~ $r for 1, 5, 6'
#   raku -e 'my Range $r = 1 ^..^ 5; say $_ ~~ $r for 1, 1.5, 4.5, 5, 6'

say $r1.int-bounds; # (1 5)
say $r2.int-bounds; # (2 5)


say $r1.min, ' ', $r1.max;  # 1 5
say $r2.min, ' ', $r2.max;  # 1 5
