#!/usr/bin/env perl6
# 
# map_brackets.raku            05 Dec 2021 

use v6;


## perl5 syntax
##  my @doubled =  grep { $_ > 30 } map { $_*2 } @numbers;

my @numbers = 13, 15, 16;
my @doubled = @numbers.map( {$_*2} );
say @doubled; # [26 30 32]

my @quad = @doubled.map: {$_*2};
say @quad;  # [52 60 64]

my @bigger_doubles = @numbers.map( {$_*2} ).grep({ $_ > 30 });
say @bigger_doubles;  # [32]

## my @bigger_doubles = @numbers.map: {$_*2} .grep({ $_ > 30 });
# Cannot map a Array using a Seq
# Did a * (Whatever) get absorbed by a comma, range, series, or list repetition?

say "---";
my @mo_stuff =  grep { $_ > 30 }, map { $_*2 }, @numbers;
say @mo_stuff; # [32]


my @xxx = @doubled.map: {$^a*2};
say @xxx; # [52 60 64]

my @yyy = @doubled.map: * * 2;
say @yyy; # [52 60 64]

my @mo_x_and_whatever = @numbers.map: * × 2 ;  ## unicode multiplication operator
say  @mo_x_and_whatever ; # [26 30 32]


my @www_but_not_that_one = @doubled.map( * *2 );
say  @www_but_not_that_one; # [52 60 64]

