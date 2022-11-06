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

## 
## Actually, this case is covered by the docs already:

##  https://docs.raku.org/language/variables#index-entry-$_(variable)
#
#   "That is why, if you need to reference the same $ variable (or, for
#   that matter, any of the other anon state variables @ and %) more
#   than once, a possible solution is to bind another variable to it,
#   ..."


## Marton adds the $ vars aren't thread safe.
## Q: are any state vars thread safe?
##    docs say they're shared through all threads, 
##    not thread safe, "results can be unexpected"

##     state $this;

## Bruce suggests you can use Sequences instead of state, can let you access the last value

## Bruce mentions this originally for:
##   my ($, $x, $, $y) = $foo.list;
##   sub replacement_for_bar($, $x, $, $y) {...}

