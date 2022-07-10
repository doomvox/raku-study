#!/usr/bin/env perl6
# 
# anonymous_hash_intermediary.raku            10 Jul 2022 

use v6;

{
 say my %h = % = %(:a(1)); 
 # {a => 1}
}

{
  say my %h =%= %(:a(1)); 
  # {a => 1}
}


{
  say my %h = %(:a(1)); 
  # {a => 1}
}


sub say_num ($str) {
    $n = $++;
    say "$n: $str";
    }


say_num();
say_num();
say_num();
