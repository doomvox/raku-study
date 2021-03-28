#!/usr/bin/env perl6
# 
# regex_and_captures_again.raku            28 Mar 2021 

use v6;

## Make errors into warnings
## CATCH { default { say "CAUGHT: ", .Str; .resume } }

my regex Date { \d ** 4 '-' \d ** 2 '-' \d ** 2 } 
say $/ if "2021-03-23" ~~ / <Date> / 

say $/.Date;
