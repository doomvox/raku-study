#!/usr/bin/env perl6
# 
# element_membership.raku            20 Jun 2021 

use v6;

my @numbers  = < wuhn tew thuree foah fahv sex sevhun >;

my $value = 'ate';

# Is the value in the @numbers array?
my $set = @numbers.Set;
say $set;

if ($value (elem) $set) {
    say "yes it is";
} else {
    say "no";  # no
}
