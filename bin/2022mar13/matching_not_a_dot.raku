#!/usr/bin/env perl6
# 
# matching_not_a_dot.raku            12 Mar 2022 

use v6;

{
    my $str1 = '.';
    my $str2 = 'a';

    my $pat1 = rx/  <-[\.]>  /;
    say so $str1 ~~ $pat1;  # False
    say so $str2 ~~ $pat1;  # True

    my $p = rx/\./;
    say so '.' ~~ $p;  # True
    say so 'a' ~~ $p ; # False

    $p = rx/a/;
    say so '.' ~~ $p;  # False
    say so 'a' ~~ $p ; # True


    $p = rx/<-[a]>/;
    say so '.' ~~ $p;  # True
    say so 'a' ~~ $p ; # False

    $p = rx/<-[.]>/;  # matches anything not-a-dot
    say so '.' ~~ $p;  # False
    say so 'a' ~~ $p ; # True

    $p = rx/<-[\.]>/; # also matches anything not-a-dot
    say so '.' ~~ $p;  # False
    say so 'a' ~~ $p ; # True

    ## double-checking it's not also not-a-backwhack
    say so '\\' ~~ $p;  # True
    say '\\'.elems;     # 1

}
