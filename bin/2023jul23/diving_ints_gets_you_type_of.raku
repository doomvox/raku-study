#!/usr/bin/env raku
# 
# diving_ints_gets_you_type_of.raku            23 Jul 2023 

use v6;

{
    my $a = 7;
    my $b = 5;
    my $ratio = $a/$b;

    say $ratio.WHAT;
}


{
    my $a = 6;
    my $b = 3;
    my $ratio = $a/$b;

    say $ratio.WHAT;
}
