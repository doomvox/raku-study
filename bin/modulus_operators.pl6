#!/usr/bin/env perl6
# 
# modulus_operators.pl6            13 Dec 2020 


use v6;

my $a = 12;
my $b = 4;

say $a % $b;   # 0 
say $a %% $b;  # True

say !( $a % $b );   # True

for 0..100 -> $i {
    say "hey $i" if $i %% 25;
}
# hey 0
# hey 25
# hey 50
# hey 75
# hey 100


# say 0 %% 0;
# Attempt to divide by zero using infix:<%%>
#   in block <unit> at /home/doom/End/Cave/Perl6/Wall/raku-study/bin/modulus_operators.pl6 line 23

for 0..5 -> $i {
    say "hey $i" if $i !%% 2;
}
# hey 1
# hey 3
# hey 5

