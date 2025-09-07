#!/usr/bin/env raku
# 
# silly_ex.raku            07 Sep 2025 

use v6;

my $a = 3;
my $b = 4;
## my $c = sqrt( $a**2 + $b**2 );
## my $c = sqrt( $a² + $b² );
my $c = ( $a**2 + $b**2 )**0.5;
say $c; # 5

if ($c == 5) { say "yup, really five"; }
# yup, really five
