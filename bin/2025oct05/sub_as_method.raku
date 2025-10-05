#!/usr/bin/env raku
# 
# sub_as_method.raku            05 Oct 2025 

use v6;

sub spy {
    say $^a;
    return $^a;
    }


my @numbers  = < wuhn tew thuree foah fahv sex sevhun >;


@numbers.map({ uc($_) }).map({ substr($_,1,1) }).say;
# (U E H O A E E)

@numbers.map({ uc($_) }).&spy.map({ substr($_,1,1) }).say;
