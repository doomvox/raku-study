#!/usr/bin/env raku
# 
# sub_as_method.raku            05 Oct 2025 

use v6;

sub spy {
    say $_;
    return $_;
    }


my @numbers  = < wuhn tew thuree foah fahv sex sevhun >;


say @numbers.map({uc}).map($_.Int);
