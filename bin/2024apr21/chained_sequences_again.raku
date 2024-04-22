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

my $seq2 = (1...3,7...9);
say $seq1;
dd $seq2;

# ===
# Author:  doom@kzsu.stanford.edu

