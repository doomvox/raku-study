#!/usr/bin/env perl6
# 
# find_palindromes.raku            12 Mar 2021 

use v6;

## I had:
##    for $dict.IO.open( :r ).lines  -> $word {
## but .open can be left implicit, and read-only is the default

my $dict = "/usr/share/dict/american-english";
{
    my @words = gather 
    for $dict.IO.lines -> $word {
        if $word ~~ / $($word.flip) / {
            # say $word if $word.chars > 1;  # no zzz?!
            take $word if $word.chars > 1;  # no zzz?!
        }
    }

    say "count: ", @words.elems;
#    say @words.sort(*.chars);   # longest: deified
    say @words.sort(*.chars).tail;   #  deified
}



