#!/usr/bin/env perl6
# 
# hendrix_numbers-02-bruce_gray.raku            27 Mar 2022 

use v6;

say .key, " ", .value.elems
      for classify { !/<[69]>/ ?? "trivial" !! $_ eq .trans(<6 9> => <9 6>) ?? "hendrix" !! "none" },
      1..1000; 

