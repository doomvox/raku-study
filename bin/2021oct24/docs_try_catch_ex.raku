#!/usr/bin/env perl6
# 
# docs_try_catch_ex.raku            24 Oct 2021 

use v6;

my $error-code = "333";
sub bad-sub {
    die "Something bad happened";
}
try {
    my $error-code = "111";
    bad-sub;
 
    CATCH {
        default {
            say "Error $error-code ", .^name, ': ',.Str
        }
    }
}
# OUTPUT: «Error 111 X::AdHoc: Something bad happened␤» 
# ===
# Author:  doom@kzsu.stanford.edu

