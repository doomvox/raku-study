#!/usr/bin/env perl6
# 
# custom_operator_alternates_plus_and_minus.pl6            09 Nov 2020 

# Defining a custom operator that does addition or subtraction alternately,
# each time it's called.

use v6;

## picking a unicode character to use as an operator:
##  00B1;PLUS-MINUS SIGN;Sm;0;ET;;;;;N;PLUS-OR-MINUS SIGN;;;;
## ±

module PlusMine {
    enum Sign is export ( plus => 1, minus => -1 );
    state Sign $sign = plus;

    sub plusmine_reset ( $val = plus )  is export {
        $sign = $val;
    }

    sub plusmine ( Num(Cool) $a, Num(Cool) $b ) is export {
        my $result  = $a + ($sign * $b);
        $sign = plusmine_flip( $sign );
        return $result;
    }

    sub plusmine_flip ( Sign $flag ) is export {
        my $newflag = plus;
        $newflag = minus if $flag == plus;
        return $newflag;
    }

    multi infix:<±> ( Num(Cool) $a, Num(Cool) $b ) is export { plusmine( $a, $b ) };
    multi postfix:<±> ( Sign $a ) is export { plusmine_reset( $a ) };
}

# use PlusMine;  # 'use' is only for modules in files
import PlusMine;

use Test;

is( plusmine_flip( minus ), plus,  "plusmine_flip: input minus output plus");
is( plusmine_flip( plus ),  minus, "plusmine_flip: input plus output minus");

is( 2 ± 3, 5,  "First:   2 ± 3 = 5");
is( 2 ± 3, -1, "Second:  2 ± 3 = -1");
is( 2 ± 3, 5,  "Third:   2 ± 3 = 5");
plusmine_reset();
is( 2 ± 3, 5,  "Fourth:  2 ± 3 = 5,  after reset");
is( 2 ± 3, -1, "Fifth:   2 ± 3 = -1");
is( 2 ± 3, 5,  "Sixth:   2 ± 3 = 5");
plus±;
is( 2 ± 3, 5,  "Seventh: 2 ± 3 = 5, after postfix reset");
is( 2 ± 3, -1, "Eight:  2 ± 3 = -1");
minus±;
is( 2 ± 3, -1, "Nine:  2 ± 3 = -1, after postfix reset to minus");
is( 7 ± 5, 12, "Alpha: 7 ± 5 = 12");
is( 5 ± 7, -2, "Beta:  5 ± 7 = -2");

is( 2.5 ± 1.3, 3.8, "Gamma: 2.5 ± 1.3 = 3.8");

is( 3/2 ± 1/3, 1.1666666666666667, "Delta: 3/2 ± 1/3 = 1.1666666666666667");

plusmine_reset();
is( 2 ± 3,  5, "AAA: 2 ± 3 = 5, after reset");
is( 2 ± 3, -1, "BBB: 2 ± 3 = -1");
is( 7 ± 5, 12, "CCC: 7 ± 5 = 12");
is( 5 ± 7, -2, "DDD: 5 ± 7 = -2");

dies-ok( { 'I' ± 'U' }, "Non-numeric string dies with operator ± " );  

is( 13 ± 13, 26, "13 ± 13 = 26" );

# reseting to minus (not plus)
plusmine_reset( minus );

is( 4 ± 3, 1, "  i:  4 ± 3 = 1");
is( 4 ± 3, 7, " ii:  4 ± 3 = 7");
is( 4 ± 3, 1, "iii:  4 ± 3 = 1");
is( 4 ± 3, 7, " iv:  4 ± 3 = 7");


