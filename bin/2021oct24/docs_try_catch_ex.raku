#!/usr/bin/env perl6
# 
# docs_try_catch_ex.raku            24 Oct 2021 

use v6;

my $error-code = "333";
sub bad-sub {  # always throws an error
    die "Something bad happened";
}
try {
    my $error-code = "111";
    bad-sub;
    $error-code = "666"; # we won't see this change
 
    CATCH {
        default {
            say "Error $error-code ", .^name, ': ',.Str
        }
#        .resume;
    }
}
say $error-code;  # back to the beginning, I think: 333


# OUTPUT: «Error 111 X::AdHoc: Something bad happened␤» 
# ===
# Author:  doom@kzsu.stanford.edu



