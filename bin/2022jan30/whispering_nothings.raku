#!/usr/bin/env perl6
# 
# whispering_nothings.raku            30 Jan 2022 

use v6;

my $var1 = Nil;

my $var2 = Mu;

say "1: ";
say $var1;  # (Any)
say "2: ";
say $var2;  # (Mu)

## say "var1: $var1, var2: $var2";

say "===";

sub jstuff_a ($thing) {
    print ".";
    if ($thing eq 'some') {
        say "looks truish: ";
        return True;
        }
    }

sub jstuff_b (Mu $thing) {
    print ".";
    if ($thing eq 'some') {
        say "looks truish: ";
        return True;
        }
    }

my $junction = any( 'some', 'another', 'not_really' );
say jstuff_a( $junction );  # any(True, (), ())

say jstuff_b( $junction );  # True



# ===
# Author:  doom@kzsu.stanford.edu

