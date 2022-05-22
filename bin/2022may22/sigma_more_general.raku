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
   ## Can get something working by dropping the "prefix:"
    sub  Σ ($L, $U, $term) {
        say "L: $L, U: $U, term: ", $term.gist;  # 
        #  L: 0, U: 3, term: -> ;; $_? is raw = OUTER::<$_> { #`(Block|94700811330360) ... }

        my $sum = 0;
        loop (my $i = $L; $i <= $U; $i++) {    
            $sum += $term($i);
        }
        return $sum;    
    }

    say Σ  0, 3, {$^i} ; #    $^i is okay,  $^1 is definitely not.
    # 6 = 0 + 1 + 2 + 3

    say Σ  0, 7, {$^i/3} ;  # 9.333333


# summations of summations (some day maybe)
#     say Σ  0, 7, Σ 1, 7, {$^i/3}, {$^j*3} ;  # 9.333333

    say Σ  0, 7,  &[-];  # 28
    # effectively runs over "$i minus 0"

    # 28
    # L: 0, U: 7, term: &infix:<->

    ## using "infix" here is weird, of course...

}


say "===";
{
    ## bruce gray:
    sub summation ($L, $U, $term) {
        return sum gather loop ( my $i = $L ; $i <= $U ; $i++ ) {
            take $term($i);
        }
    }

    # sub Σ ($L, $U, &term) { sum map &term, $L .. $U } 
    sub Σ ($L, $U, &term) { sum map &term(*), $L .. $U } 
    say Σ  0, 7, {$^i/3} ;  # 8.333333

}
{
    my @nums = (1, 2, 3, 4, 5, 6, 7);
    my $result = map( { $_*2 }, @nums );
    say "result: $result";

    my $func = { $^a + 1 };

    my $result2 = map( $func, @nums );
    say "result2: $result2";
    # result2: 2 3 4 5 6 7 8

    my $result3 = map $func, @nums;
    say "result3: $result3";
    # result3: 2 3 4 5 6 7 8


# map({}, @stuff);
}
 

exit;

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



    # dropping prefix:
    sub Σ (  $L, $U, $term  ) {
        return summation( $L, $U, $term );
    }

##    say Σ  0, 3, {$^1} ; #
## yaddah, yaddah: 
##  one(one(one(one(0, 1), one(1, 2)), one(one(1, 2), one(2, 3))), one(one(one(1, 2), one(2, 3)), one(one(2, 3), one(3, 4))))


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




