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
        # return $^i * 2;  ## Attempt to return outside of any Routine  (?)
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

    say summation(3,7, {$^i/3}); # 8.333333

    # prefix:
    sub Σ (  $L, $U, $term  ) {
        return summation( $L, $U, $term );
    }

    say Σ  0, 3, {$^1} ; #

# Too few positionals passed; expected 3 arguments but got 1
#   in sub prefix:<Σ> at /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022may22/sigma_more_general.raku line 58
#   in block <unit> at /home/doom/End/Cave/RakuStudy/Wall/raku-study/bin/2022may22/sigma_more_general.raku line 62


## Maybe (but this has even weirder behavior):

#     sub prefix:<Σ>( *@stuff ) {
#         return summation( @stuff[0], @stuff[1], @stuff[2] );
#     }


}

# sub prefix:<Σ>( *@number-list ) {
#     [+] @number-list
# }
 
# say Σ (13, 16, 1); # OUTPUT: 30

