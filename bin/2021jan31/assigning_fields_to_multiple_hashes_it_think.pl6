#!/usr/bin/env perl6
# 
# assigning_fields_to_multiple_hashes_it_think.pl6            31 Jan 2021 

use v6;

## Make errors into warnings
CATCH { default { say "CAUGHT: ", .Str; .resume } }

for %!hash1, %!hash2, %!hash3 <-> %h { %h = Empty }
