#!/usr/bin/env perl6
# 
# oop-tutorial.pl6            20 Dec 2020 

use v6;

## Make errors into warnings
CATCH { default { say "CAUGHT: ", .Str; .resume } }

# Working through the first example in the OOP tutorial in the documentation:
#   https://docs.raku.org/language/classtut

class Point {
    has Int $.x is rw = 0;
    has Int $.y is rw = 0;
}
 
class Rectangle {
    has Point $.lower;
    has Point $.upper;

    method area(--> Int) {
#        ($!upper.x - $!lower.x) * ( $!upper.y - $!lower.y);  # faster, maybe recommended
        ($.upper.x - $.lower.x) * ( $.upper.y - $.lower.y);   # works, but slower (?), bruce gray: recommended now
                                                              # "low hanging fruit for the optimizer"
    }

    method perimeter(--> Int) {
        2 * (abs($!upper.x - $!lower.x) + abs($!upper.y - $!lower.y));        
    }

    method describe() {
        say "upper left:  ( " ~ $!upper.x ~ ', ' ~ $!upper.y ~ " )";
        say "lower right: ( " ~ $!lower.x ~ ', ' ~ $!lower.y ~ " )";
                }
}
 
# Create a new Rectangle from two Points 
my $r = Rectangle.new(upper => Point.new(x => 0, y => 0),
                      lower => Point.new(x => 10, y => 10));
 
say $r.area();      # 100
say $r.perimeter(); #  40
$r.describe(); 
# 10
# 0
# 10
# 0

say '===';

my $mah_point = Point.new(x => 113, y => 267);
dd $mah_point;

say $mah_point.x; # 113
say $mah_point.y; # 267

my $mah_point_2 = Point.new(x => 666, y => 9);
say $mah_point_2.x; # 666
say $mah_point_2.y; # 9

my $mah_point_3 = Point.new(y => 13);
dd $mah_point_3;
# Point $mah_point_3 = Point.new(x => Int, y => 13)

## has to be rw to be able to assign
say $mah_point_3.x;   # (Int)
$mah_point_3.x = 77;
say $mah_point_3.x;   # 77 



## Fin

