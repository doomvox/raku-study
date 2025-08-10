#!/usr/bin/env raku
# 
# seq_exhaustion_change.raku            10 Aug 2025 

use v6;

## brian d foy example, p. 101 "Learning Perl 6":

{
    my $s := 1 ... 5;
    put $s.reverse;
    put $s;

## That second put now errors out, with helpful error message:

# The iterator of this Seq is already in use/consumed by another Seq (you
# might solve this by adding .cache on usages of the Seq, or by assigning
# the Seq into an array)

}
