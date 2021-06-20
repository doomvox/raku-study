#!/usr/bin/env perl6
# 
# element_membership.raku            20 Jun 2021 

use v6;

# "in"

# ∈ ∋ 
# (cont) (elem)

my @numbers  = < wuhn tew thuree foah fahv sex sevhun >;
my $value = 'tew';

# Is the value in the @numbers array?
my $set = @numbers.Set;
say $set; # Set(fahv foah sevhun sex tew thuree wuhn)
if ($value (elem) $set) {
    say "yes it is";        # yes it is
} else {
    say "no";  
}

# another way of checking:
if $value eq any( @numbers ) {
    say "meep";            # meep
}


