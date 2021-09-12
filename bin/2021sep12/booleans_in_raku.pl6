#!/usr/bin/env perl6
# 
# booleans_in_raku.pl6            12 Sep 2021 

use v6;


my $flag = True;

my @items = ( True, False, 0, 1, "", " ", "yow" );

for @items -> $item { 
    say "item: |$item|";
    if ($item) {
        say "truthy!";
    } else {
        say "falsies!";
    }

}


# item: |True|
# truthy!
# item: |False|
# falsies!
# item: |0|
# falsies!
# item: |1|
# truthy!
# item: ||
# falsies!
# item: | |
# truthy!
# item: |yow|
# truthy!



# ====
#  sheet of cheats


# ===
# Author:  doom@kzsu.stanford.edu

