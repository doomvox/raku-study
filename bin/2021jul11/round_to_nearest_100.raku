#!/usr/bin/env perl6
# 
# round_to_nearest_100.raku            11 Jul 2021 

use v6;

my $a = 179.37;

say $a.^methods;

say $a.round; # 179

my $A = $a / 10;
my $b = $A.round * 10;
say $b; # 180

my $n = 382.99;
my $r = ($n / 10).round * 10;
say $r; # 380

## Note: would not be surprised if .round has this feature built-in.


  # There's supposed to be an argument to round I could use to simplify this:
  #          my $r = ($n / 10).round * 10;
  #          my $r = $n.round(.1);  


{

# https://raku.finanalyst.org/type/Real.html#method_round

#   method round(Real:D: $scale = 1)

# Rounds the number to scale $scale. If $scale is 1, rounds to an
# integer. If scale is 0.1, rounds to one digit after the radix
# point (period or comma), etc.

    my $n  = 123.45;
    my $r1  = $n.round( 10 );  ## This works 

    say $r1;

    my $r2 = ($n / 10).round * 10;
    say $r2; # 120

    # This doesn't compile:
    # my $r3  = $n.round( scale = 10 );   # Preceding context expects a term, but found infix = instead.
    # say $r3;

    my $r4  = $n.round( scale => 10 );  ## This doesn't work
    say $r4;



}



# ===
# Author:  doom@kzsu.stanford.edu

