#!/usr/bin/env perl6
# 
# custom_operator_alternates_plus_and_minus.pl6            09 Nov 2020 

# Defining a custom operator that does addition or subtraction alternately,
# each time it's called.

use v6;

#  Picking a unicode character to use as an operator:
#    0F17;TIBETAN ASTROLOGICAL SIGN SGRA GCAN -CHAR RTAGS;So;0;L;;;;;N;;;;;
#    ༗

sub plus_or_minus( Num(Cool) $a, Num(Cool) $b ) {
    state Int $sign = 1;
    my $result  = $a + ($sign * $b);
    $sign *= -1;
    return $result;
}


multi infix:<༗> ( Num(Cool) $a, Num(Cool) $b ) is export { plus_or_minus( $a, $b ) };

say "2 ༗ 3 = ", 2 ༗ 3;  # 2 ༗ 3 = 5
say "2 ༗ 3 = ", 2 ༗ 3;  # 2 ༗ 3 = -1
say "7 ༗ 5 = ", 7 ༗ 5;  # 7 ༗ 5 = 12
say "5 ༗ 7 = ", 5 ༗ 7;  # 5 ༗ 7 = -2

say "2.5 ༗ 1.3 = ", 2.5 ༗ 1.3;  # 2.5 ༗ 1.3 = 3.8

say "3/2 ༗ 1/3 = ", 3/2 ༗ 1/3;  # 3/2 ༗ 1/3 = 1.1666666666666667

# say "'I' ༗ 'U' = ", 'I' ༗ 'U';  
#  Cannot convert string to number: base-10 number must begin with valid digits or '.' in '⏏I' (indicated by ⏏)

