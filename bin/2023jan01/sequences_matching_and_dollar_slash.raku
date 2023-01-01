#!/usr/bin/env perl6
# 
# sequences_matching_and_dollar_slash.raku            01 Jan 2023 

use v6;

{
  my $seq = 1 ... /9/;
 # (1 2 3 4 5 6 7 8 9)
 say $/
}


{
    say 1 ... /9/;  # (1 2 3 4 5 6 7 8 9)
    say $/;         # Nil
}
