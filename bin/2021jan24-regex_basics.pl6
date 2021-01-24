#!/usr/bin/env perl6
# 
# 2021jan24-regex_basics.pl6            24 Jan 2021 

use v6;

## Make errors into warnings
CATCH { default { say "CAUGHT: ", .Str; .resume } }




my $pat = regex: { aaa };




