#!/usr/bin/env perl6
# 
# B3-myriad_arg_passing_styles.raku            05 Jan 2022 
use v6;

sub say_three ($one, $two, $three) {    # sub with simple prototype
    say "1: $one,\t 2: $two,\t 3: $three";    
}
say_three( 'alpha', 'beta', 'gamma' );
# 1: alpha, 2: beta, 3: gamma

# perl5's sort args ($a and $b) have been generalized for raku
sub say_three_too {                    # sub without proto, using $^a args
    say "1: $^a, 2: $^b, 3: $^c";
}
say_three_too( 'one', 'two', 'three' );
# 1: one, 2: two, 3: three

sub say_three_three {                    # using variant placeholders
    say "3: $^k, 2: $^j, 1: $^i ";
}
say_three_three( 'able', 'baker', 'charlie' );
# 3: charlie, 2: baker, 1: able 

say "===";
my @monsters = < godzilla blob tingler garuda horta fenacrone wormface eighthman oogie-boogie kaido >;  

for @monsters ->  $first,  $second = '', $third = '' {   # for loop uses "pointy block", another style of proto
    say_three( $first, $second, $third );
}
# 1: godzilla, 2: blob, 3: tingler
# 1: garuda, 2: horta, 3: fenacrone
# 1: wormface, 2: eighthman, 3: oogie-boogie
# 1: kaido, 2: , 3: 

## having default values avoids an error:  "two few positionals passed" 

