#!/usr/bin/env perl6
# 
# find_palindromes.raku            12 Mar 2021 

use v6;

## Make errors into warnings
# CATCH { default { say "CAUGHT: ", .Str; .resume } }

my $dict = "/usr/share/dict/american-english";
{
    for $dict.IO.open( :r ).lines  -> $word {
        if $word ~~ / $($word.flip) / {
            say $word if $word.chars > 1;
        }
    }
}



