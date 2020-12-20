#!/usr/bin/env perl6
# 
# oop-tutorial.pl6            20 Dec 2020 

use v6;

## Make errors into warnings
CATCH { default { say "CAUGHT: ", .Str; .resume } }

class Point {
    has Int $.x;
    has Int $.y;
}
 
class Rectangle {
    has Point $.lower;
    has Point $.upper;
 
    method area(--> Int) {
        ($!upper.x - $!lower.x) * ( $!upper.y - $!lower.y);
    }
}
 
# Create a new Rectangle from two Points 
my $r = Rectangle.new(lower => Point.new(x => 0, y => 0),
                      upper => Point.new(x => 10, y => 10));
 
say $r.area(); # 100

