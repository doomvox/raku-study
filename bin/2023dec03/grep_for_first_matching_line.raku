#!/usr/bin/env raku
# 
# grep_for_first_matching_line.raku            29 Nov 2023 

use v6;

## An old line in my notes that looks sub-optimal:

my $file = "/home/doom/tmp/monster.dat";
my $dat = q:to/ENDDAT/;
  godzilla    9
  mothera     7
  ghidora    10
  gammera     5
  golem       3
  rhodan      4
ENDDAT
$file.IO.spurt($dat);





## untested example:
# my $first_match = $file.IO.open.readlines.map{ .lc }.grep({ m/$target_pattern/ });



