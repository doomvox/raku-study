#!/usr/bin/env perl6
# 
# find_palindromes.raku            12 Mar 2021 

use v6;

## I had:
##    for $dict.IO.open( :r ).lines  -> $word {
## but .open is just done implicitly, and read-only is the default

my $dict = "/usr/share/dict/american-english";
{
    my @words = gather 
    for $dict.IO.lines -> $word {
        if $word ~~ / $($word.flip) / {
            take $word if $word.chars > 1;  
        }
    }

    say "count: ", @words.elems;
    # find the longest word:
    say @words.sort(*.chars).tail;   #  deified

    say "---";
    # list all in order of length
    .say for @words.sort(- *.chars);   
}


# Observations:
# (1) there are no two character palindrome words, e.g. 'ee' or 'oo'.
# (2) there's no 'zzz' in the dictionary?  (one of my favorite words.)

