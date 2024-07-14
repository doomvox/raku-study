#!/usr/bin/env raku
# 
# quoting_error.raku            14 Jul 2024 

use v6;

# Rob:

my $x = Q{ hello there };
# Error while compiling /home/rir/q.raku
# Strange text after block (missing semicolon or comma?)
say $x;
