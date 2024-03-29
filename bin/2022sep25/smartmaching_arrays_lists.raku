#!/usr/bin/env perl6
# 
# smartmaching_arrays_lists.raku            25 Sep 2022 

use v6;

my @a = 1, 2, 3;
say @a; # [1 2 3]

say so @a eqv (1, 2, 3);
# False

say so @a ~~ (1, 2, 3);
# True


my @a = < alpha beta gamma >;
my @c = < whun tew thuree >;
my @b = < godzilla mothera rhodan >;

my $d = [ 'perl', 'raku', ]; 
say $d.WHAT; # (Array)
say $d;      # [perl raku]

my @array_of_arefs = ( @a, @b, @c, $d, @a, @b );

say @array_of_arefs;
# [[alpha beta gamma] [godzilla mothera rhodan] [whun tew thuree] [perl raku] [alpha beta gamma] [godzilla mothera rhodan]]

my @result = 
  @array_of_arefs.unique(with => &[eqv]);

say @result;
# [[alpha beta gamma] [godzilla mothera rhodan] [whun tew thuree] [perl raku]]

## So, eqv does the job in raku...
## though: what's an "arrayref"?
