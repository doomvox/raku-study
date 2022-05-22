#!/usr/bin/env perl6
# 
# sigma_more_general.raku            22 May 2022 

use v6;

# The mathematical sigma *is* a summation notation, but not the same as "sum".
# The raku equivalent is more like looping over an integer range.

#    U (upper bound, integer)
#    ___
#    \        x            
#    /__       i    x-sub-i is a "sum term", a function of i

#    i=L (lower bound, integer)

# https://docs.raku.org/language/control#index-entry-control_flow__loop-loop
##  loop (my $i = $L; $i <= $U; $i++) {    

{ 
    sub summation ($L, $U) {
        my $sum = 0;
        loop (my $i = $L; $i <= $U; $i++) {    
            $sum += term($i);
        }
        return $sum;    
    }

    sub term ($i) {
        # say $i, ": ", $i * 2;
        return $i * 2;
    }

    say summation(0, 3); # 12 
}
 

{ 

    my $term =  {
        # say $^i, ": ", $^i * 2;
        # return $^i * 2;
        $^i * 2;
    }

    sub summation ($L, $U, $term) {
        my $sum = 0;
        loop (my $i = $L; $i <= $U; $i++) {    
            $sum += $term($i);
        }
        return $sum;    
    }

    say summation(0, 3, $term); # 12 
}




# ===
# Author:  doom@kzsu.stanford.edu

