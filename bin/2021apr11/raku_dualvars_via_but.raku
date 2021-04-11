#!/usr/bin/env perl6
# 
# raku_dualvars_via_but.raku            07 Apr 2021 

use v6;

my $n = 3 but 'three';

say $n;   # three
say "$n"; # three

say $n + 1; # 4

say +$n; # three
# my $m = [$n++];
my $m = $n++;

## Seriously LTA:
$m = $m--;
# No such method 'pred' for invocant of type 'Array'.  Did you mean any
# of these: 'grep', 'ord', 'tree'?
#   in block <unit> at /home/doom/End/Cave/Perl6/bin/raku_dualvars_via_but.raku line 17
say $m;
