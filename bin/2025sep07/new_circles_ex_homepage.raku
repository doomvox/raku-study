#!/usr/bin/env raku
# 
# new_circles_ex_homepage.raku            07 Sep 2025 

use v6;


class Circle {
    has $.radius;
    method area { π * $.radius² }
}

my @radii = 1,2,4...256;

my @circles = map { Circle.new(:$^radius) }, @radii;

my $total-area = [+] @circles».area;


say "Total area: $total-area";
