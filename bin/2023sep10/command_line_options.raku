#!/usr/bin/env raku
# 
# command_line_options.raku            10 Sep 2023 

use v6;


sub MAIN(Int :n(:$num)) {
    say "You passed: " ~ $num;
}

