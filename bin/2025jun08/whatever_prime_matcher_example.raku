#!/usr/bin/env raku
# 
# whatever_prime_matcher_example.raku            08 Jun 2025 

use v6;

sub find-constraint {
    return 23;
}

{
    my $constraint           = find-constraint() // *;
    my $maybe-always-matcher = * ~~ $constraint;

    say $maybe-always-matcher('ha!');   # False
    say $maybe-always-matcher(7);       # False
    say $maybe-always-matcher(23);      # True
    say $maybe-always-matcher('23');    #

}

