#!/usr/bin/env raku
# 
# laziness.6.raku            30 Jun 2024 

use v6;

sub something {
#    my $a := (1..10000);  # script time  0m0.823s
#    my $a =   (1..10000);  # script time 0m0.921s
#    my @a =   (1..10000);  # script time 0m3.567s
    my @a :=   (1..10000);  # script time 0m3.567s

}

for 1..1000 {
    something();
}
