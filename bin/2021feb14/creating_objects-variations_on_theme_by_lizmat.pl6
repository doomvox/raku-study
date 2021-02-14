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

