#!/usr/bin/env raku
# 
# ranges_of_points_kindof.raku            21 Apr 2024 

use v6;


my $s = ( (0,1) ... (3,7) );

say $s;  # (0 1 2 3 7)


my $r = (3+7i .. 9+13i);
# Complex objects are not valid endpoints for Ranges
