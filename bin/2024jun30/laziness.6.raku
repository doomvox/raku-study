#!/usr/bin/env raku
# 
# laziness.6.raku            30 Jun 2024 

use v6;

sub something {
#    my $a := (1..10000);  # script time  0m0.823s
#    my $a =   (1..10000);  # script time 0m0.921s
#    my @a =   (1..10000);  # script time 0m3.567s
    my @a :=   (1..10000);  # script time real	0m0.811s
    say @a.WHAT;  # (Range)
    say @a[99];  # 100

    @a[99] = 666;
}

for 1..1000 {
    something();
}
