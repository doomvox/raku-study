#!/usr/bin/env perl6
# 
# bags_of_lists.raku            20 Nov 2022 

use v6;

my %bh = ( $(1,2), $(2,3), $(4,5) ).BagHash;
say %bh; 
# {1 2 => 1, 2 3 => 1, 4 5 => 1}

# say %bh.^methods;

%bh.append( $(1,2) );
say %bh;
# {1 => 2, 1 2 => 1, 2 3 => 1, 4 5 => 1}
# {1 2 => 1, 2 3 => 1, 4 5 => 1}


