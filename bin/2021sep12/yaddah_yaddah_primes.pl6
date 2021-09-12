#!/usr/bin/env perl6
# 
# yaddah_yaddah_primes.pl6            12 Sep 2021 

use v6;


my @odd  = grep { ++$ !%% 2 }, grep &is-prime, 2 ..^ 1000;
my @sums = [\+] @odd;
 
say .fmt('%5d') for grep { .[2].is-prime }, ( (1,3…*) Z @odd Z @sums );

