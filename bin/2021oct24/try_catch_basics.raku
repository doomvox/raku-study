#!/usr/bin/env perl6
# 
# try_catch_basics.raku            24 Oct 2021 

use v6;

try {
    my $not_really_sensible = 1/0;  
    say $not_really_sensible;

    CATCH { say "just forget about that problem"; .resume };  # This exception is not resumable
#   CATCH { default { say "CAUGHT: ", .Str; .resume } }
}

## Would really like:
##   .resume_really_and_truly_no_fooling

say "won't get here"; ## doesn't happen



# ===
# Author:  doom@kzsu.stanford.edu

