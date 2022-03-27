#!/usr/bin/env perl6
# 
# tr.raku            26 Mar 2022 

use v6;

{
    my $n = "123456";
    $n ~~ tr/36/63/;
    say $n; # 126453
}


{
    my $n = "123456";
    if ( $n ~~ tr/36/63/ ) {
        say "changed to: $n";
        # changed to: 126453
    } else {
        say "unchanged: $n";
    }
}
