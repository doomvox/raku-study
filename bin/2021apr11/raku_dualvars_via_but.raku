#!/usr/bin/env perl6
# 
# raku_dualvars_via_but.raku            07 Apr 2021 

use v6;

my $n = 3 but 'three';

say $n;   # three
say "$n"; # three

say $n + 1; # 4

say +$n; # three

my $m = $n++;

# my $m = [$n++];  ## ... but what were the square brackets for?
## Seriously LTA:
# $m = $m--;
# No such method 'pred' for invocant of type 'Array'.  Did you mean any
# of these: 'grep', 'ord', 'tree'?

say $m; # three
