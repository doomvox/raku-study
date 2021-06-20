#!/usr/bin/env perl6
# 
# element_membership.raku            20 Jun 2021 

use v6;

my @numbers  = < wuhn tew thuree foah fahv sex sevhun >;

my $value = 'tew';

# Is the value in the @numbers array?
my $set = @numbers.Set;
say $set; # Set(fahv foah sevhun sex tew thuree wuhn)


if ($value (elem) $set) {
    say "yes it is";
} else {
    say "no";  # no
}
