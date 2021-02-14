#!/usr/bin/env perl6
# 
# creating_objects-variations_on_theme_by_lizmat.pl6            14 Feb 2021 

## Elizabeth Mattijsen (sp) 
## Deutscher Perl-/Raku-Workshop 2020

# comparison object creation and hash creation
#   time raku -e 'class Point { has $.x; has $.y }; for ^1_000_000 { Point.new( x => 42, y => 666) }'
#   time raku -e 'for ^1_000_000 { my %p = x => 42, y => 666 }'
# 0.5s vs 1.66s

use v6;

class Point {
    has $.x;
    has $.y };

for ^1_000_000 {
    Point.new( x => 42,
               y => 666)
    }

# time ./creating_objects-variations_on_theme_by_lizmat.pl6
## first run:
# real	0m3.345s
# user	0m1.752s
# sys	0m0.048s
## second run:
# real	0m1.577s
# user	0m1.676s
# sys	0m0.036s



# time ./creating_hashes-variations_on_theme_by_lizmat.pl6
# real	0m5.869s
# user	0m5.948s
# sys	0m0.036s
