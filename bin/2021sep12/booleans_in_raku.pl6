#!/usr/bin/env perl6
# 
# booleans_in_raku.pl6            12 Sep 2021 

use v6;


my $flag = True;

my @items = ( True, False, 0, 1 );

for @items -> $item { 
    say "item: $item";
    if ($item) {
        say "truthy!";
    } else {
        say "falsies!";
    }

}



# ====
#  sheet of cheats


# ===
# Author:  doom@kzsu.stanford.edu

