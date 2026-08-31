#!/usr/bin/env perl
# $Id: dpchrist-benchmark,v 1.13 2026/08/26 01:11:05 dpchrist Exp $
#
# A farmer goes to the fair.  Cows cost $10.00 each, pigs cost $3.00
# each, and sheep cost $0.50 each.  If the farmer wants to buy
# at least one cow, at least one pig, at least one sheep, and exactly
# 100 animals total, and wants to spend exactly $100.00, how many cows,
# pigs, and sheep should the farmer buy?  Find all solutions.
#
# Perl program by David Paul Christensen <dpchrist@holgerdanske.com>
#
# Public Domain

use strict;
use warnings;

use constant animals            => 100;

use constant cow_cost           =>  10.00;
use constant pig_cost           =>   3.00;
use constant sheep_cost         =>   0.50;
use constant budget             => 100.00;

sub buy_fair_animals
{
     my @r;
     my $max_cows = (budget - pig_cost - sheep_cost)/cow_cost;
     foreach my $c (1 .. $max_cows) {
         my $max_pigs = (budget - $c * cow_cost - sheep_cost)
                       / pig_cost;
        foreach my $p (1 .. $max_pigs) {
            my $s = (budget - $c * cow_cost - $p * pig_cost)
                    / sheep_cost;
            my $a = $c + $p + $s;
            last if $a  > animals;
            next if $a != animals;
            my $b = $c * cow_cost + $p * pig_cost + $s * sheep_cost;
            last if $b  > budget;
            next if $b != budget;
            push @r, [$c, $p, $s];
        }
     }
     return @r;
}

my $n = @ARGV ? shift : 100_000;
buy_fair_animals() for 1 .. $n - 1;

my @r = buy_fair_animals();
foreach (@r) {
     my ($c, $p, $s) = @$_;
     my $a = $c + $p + $s;
     my $b = $c * 10.00 + $p *  3.00 + $s *  0.50;
     print "cows $c pigs $p sheep $s animals $a cost $b\n";
}

2026-08-25 18:11:15 dpchrist@laalaa ~/sandbox/perl/farmer-puzzle
$ time perl dpchrist-benchmark
cows 5 pigs 1 sheep 94 animals 100 cost 100

real    0m1.122s
user    0m1.122s
sys     0m0.000s

2026-08-25 18:11:22 dpchrist@laalaa ~/sandbox/perl/farmer-puzzle
$ time perl dpchrist-benchmark
cows 5 pigs 1 sheep 94 animals 100 cost 100

real    0m1.122s
user    0m1.122s
sys     0m0.000s

2026-08-25 18:11:24 dpchrist@laalaa ~/sandbox/perl/farmer-puzzle
$ time perl dpchrist-benchmark
cows 5 pigs 1 sheep 94 animals 100 cost 100

real    0m1.127s
user    0m1.127s
sys     0m0.000s

