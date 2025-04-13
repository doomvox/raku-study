#!/usr/bin/env raku
# 
# old_q_regexp_objects_built_from_list.raku            13 Apr 2025 

use v6;


my @numbers  = < wuhn tew thuree foah fahv sex sevhun >;

my $stringy = "You know wuhn of these days I'll figure that out.";


say $stringy ~~ /@numbers/;  # ｢wuhn｣

