#!/usr/bin/env raku
# 
# sub_as_method.raku            05 Oct 2025 

use v6;

sub spy {
    say $_;
    return $_;
    }


my @numbers  = < wuhn tew thuree foah fahv sex sevhun >;


@numbers.map({ uc($_) }).map({ substr($_,1,1) }).say;
