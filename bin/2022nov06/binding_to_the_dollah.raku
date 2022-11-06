#!/usr/bin/env perl6
# 
# binding_to_the_dollah.raku            06 Nov 2022 

use v6;

my $r;
for 0..10 {
    say "loop index: ", $_;
    say "the dollah: ", ($r := $)++;

    munge_things( $r );   ## we *can* use binding to do non-local munging of a $
    }


sub munge_things ( $r is rw ) {
    $r = 23; 
}


## Maron adds the $ vars aren't thread safe.
## Q: are any state vars thread safe?


## Bruce mentions this originally for:
##   my ($, $x, $, $y) = $foo.list;
##   sub replacement_for_bar($, $x, $, $y) {...}
