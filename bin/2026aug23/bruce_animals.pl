#!/usr/bin/env perl

use v5.36;
my $b1 = 100;           for my $c (1..int($b1/10   )) { 
my $b2 = $b1 - 10 * $c; for my $p (1..int($b2/ 3   )) { last if $c+$p     > 99;
my $b3 = $b2 -  3 * $p;     my $s =   int($b3/ 0.50); { last if $c+$p+$s != 100;
    say "$c $p $s" if ($c * 10 + $p * 3 + $s * 0.50) == 100;
}}}
# system 77% cpu 0.005
