#!/usr/bin/env perl6
# 
# scopes_and_the_topic.raku            09 Oct 2022 

use v6;


sub stuff ($_) {  # need $_ in signature
    return uc($_);
}

say stuff('hey');  # HEY

