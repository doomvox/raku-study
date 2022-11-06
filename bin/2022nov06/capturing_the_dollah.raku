#!/usr/bin/env perl6
# 
# capturing_the_dollah.raku            06 Nov 2022 

use v6;


my $r;
for 0..10 {
    say "loop index: ", $_;
    say "the dollah: ", ($r = \$)++;

    munge_things( $r );   ## can't use a simple binding to a $ to munge it non-locally.  QED
    }


sub munge_things ( $r is rw ) {
    $r = 23;  ## Cannot assign to a readonly variable or a value
}

