#!/usr/bin/env perl6
# 
# physics_error_synopsis.raku            13 Feb 2022 

use v6;

use Physics::Measure :ALL;

my $x1 = 12.5nm ± 1;                                                    #SI units as raku postfix operators
my $x2 = Length.new(value => 12.5, units => 'nm', error => '4.3%');     #standard raku .new syntax
# my $x3 = ♎️ '12.5 ft ±0.5';                                            #libra prefix shorthand

my $x3 = ♎️ '12.5 ft ±0.5';                                              #libra prefix shorthand

# Error values are included in Measures when output
say ~$x1;                                       #12.5nm ±4% or 12.5nm ±1

# They can be accessed directly via the .error object
say $x1.error.absolute;                         #1
say $x1.error.relative;                         #0.08
say $x1.error.relative.^name;                   #Rat
say $x1.error.percent;                          #8%


###

say "---";
{
    my $l1 = ♎️ '12.5 ft ±0.5';                                              #libra prefix shorthand
    my $l2 = ♎️ '12.5 m ±0.5';                                               #libra prefix shorthand

    my $diff = $l2 - $l1;
    say $diff;  # 8.69m ±0.65
}

say "---";

{
    my $l1 = ♎️ '1.1  m ±0.5';                                              #libra prefix shorthand
    my $l2 = ♎️ '1.05 m ±0.5';                                               #libra prefix shorthand

    my $diff  = $l2 - $l1;
    say $diff;  # 0m ±1


}



