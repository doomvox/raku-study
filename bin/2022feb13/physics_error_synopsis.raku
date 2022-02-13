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


#     1.1        +0.5
#     1.05             -0.5
#     ----
#     0.05       +/- 1.0


#    say $diff.WHAT;
# Cannot look up attributes in a Physics::Measure::Length type object

    say $diff.^name;       # Physics::Measure::Length

    say $diff.error.^name; # Physics::Measure::Error

    say $diff.error.absolute;  # 1

    say $diff.^methods;

    # (Submethod+{is-hidden-from-backtrace}.new norm pretty new make-same-unit subtract-const units error multiply multiply-const value subtract clone Numeric root Real sqrt negate add-error-rel value-r canonical divide-by-const TWEAK power defn-extract rebase add-error-abs add reciprocal Str add-const divide gist in cmp Submethod+{is-hidden-from-backtrace}.new)

#     say "relative: ";
#     say $diff.add-error-rel;
#     say "absolute: ";
#     say $diff.add-error-abs;


# # They can be accessed directly via the .error object
# say $x1.error.absolute;                         #1
# say $x1.error.relative;                         #0.08
# say $x1.error.relative.^name;                   #Rat
# say $x1.error.percent;                          #8%


}




{
    my $l1 = ♎️ '1.1  m ±0.5';                                              #libra prefix shorthand
    my $l2 = ♎️ '1.05 m ±0.5';                                              #libra prefix shorthand

    my $diff1  = $l2 - $l1;
    say $diff1;   # 0m ±1

    
    my $d1 = ♎️ '1.15 m ±0.5';                                              #libra prefix shorthand
    my $d2 = ♎️ '1.05 m ±0.5';                                              #libra prefix shorthand
    my $diff2  = $l2 - $l1;
    say $diff2;  # 0m ±1

    say so $diff2 > $diff1;

}
