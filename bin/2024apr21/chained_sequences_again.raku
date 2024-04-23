#!/usr/bin/env raku
# 
# chained_sequences_again.raku            22 Apr 2024 

use v6;


# /home/doom/End/Cave/RakuStudy/Wall/raku-study/notes/meeting_2024apr21.org
# *** comma-separated triple-dot
# **** https://github.com/Raku/problem-solving/issues/407

my $scalar = (3,7);
say $scalar; # (3 7)

my $s2 = (3,7).flat;
say $s2; # (3 7)

my $seq1 = (1..3,7..9);
say $seq1; # (1..3 7..9)
dd $seq1;  # List $seq1 = $(1..3, 7..9)
## A list of two ranges

## chained triple dot, why no 8?
my $seq2 = (1...3,7...9);
say $seq2; # (1 2 3 7 9)
dd $seq2;
# Seq $seq2 = $((1, 2, 3, 7, 9).Seq)  # But why no 8?

say "---";
my $seq2a = ((1...3),(7...9));
say $seq2a; 
dd $seq2a;
# ((1 2 3) (7 8 9))  # we get the 8, but with deeper structure
# List $seq2a = $((1, 2, 3).Seq, (7, 8, 9).Seq)



my $seq2b = ((1...3),(7...9));
say $seq2b; 
dd $seq2b;



my $seq3 = (1...(3,7)...9);
say $seq3; # (1 2 3 7 9)
dd $seq3;  
# Seq $seq3 = $((1, 2, 3, 7, 9).Seq)


# ===
# Author:  doom@kzsu.stanford.edu

