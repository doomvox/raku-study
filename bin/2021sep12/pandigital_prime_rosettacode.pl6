#!/usr/bin/env perl6
# 
# pandigital_prime_rosettacode.pl6            12 Sep 2021 

use v6;

# Bruce Gray solution:
say max (1..7).map: -> $size {
    |(1..$size).permutations».join.grep(&is-prime);
}  #  7652413



say max (1..7).map( -> $size {
                           | (1..$size).permutations».join.grep(&is-prime);
                        }
                    );      # 7652413

say max (1..7).map( {
                    my $size = $_;
                    (1..$size).permutations».join.grep(&is-prime);
                    }
                  ).flat;   # 7652413

