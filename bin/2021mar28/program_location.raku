#!/usr/bin/env perl6
# 
# program_location.raku            29 Mar 2021 

use v6;

## Make errors into warnings
# CATCH { default { say "CAUGHT: ", .Str; .resume } }

say $*PROGRAM;
